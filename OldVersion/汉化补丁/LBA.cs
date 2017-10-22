using System;
using System.Collections.Generic;
using System.Text;
using System.IO;

namespace PSP_LBA
{
    /// <summary>
    /// 获取PSP的LBA信息
    /// </summary>
    public class LBA : IEnumerable<LBA>
    {
        /// <summary>
        /// 子项类型
        /// </summary>
        public enum SubType
        {
            /// <summary>
            /// 文件
            /// </summary>
            File,

            /// <summary>
            /// 文件夹
            /// </summary>
            Directory
        }

        const int off_dirinfo = 0x9000;
        /// <summary>
        /// ISO分块大小
        /// </summary>
        public const int ISOBlockSize = 0x800;
        const int MaxHeadLength = 128 * 1024;

        int off;
        int size;
        int off_info;

        SubType type;

        string name;

        List<LBA> subs;

        LBA father;

        /// <summary>
        /// 获取文件或文件夹信息(仅根可以使用该方法）
        /// </summary>
        /// <param name="FullName">完整的路径</param>
        /// <returns></returns>
        public LBA this[string FullName]
        {
            get
            {
                if (name != "")
                    throw new Exception("只有根可以使用该方法！");

                FullName = FullName.ToLower().Replace('\\', '/').Trim('/');
                while (FullName.IndexOf("//") != -1)
                    FullName.Replace("//", "/");

                LBA lba = GetFromFullName(FullName);

                return lba;
            }
        }

        /// <summary>
        /// 该目录下的子文件和子文件夹总数
        /// </summary>
        public int NumOfSubs { get { return subs.Count; } }
        /// <summary>
        /// 该目录下的文件总数
        /// </summary>
        public int NumOfFiles
        {
            get
            {
                return NumOfSubs - NumOfDirectories;
            }
        }
        /// <summary>
        /// 该目录下的文件夹总数
        /// </summary>
        public int NumOfDirectories
        {
            get
            {
                int rst = 0;
                foreach (LBA lba in subs)
                    if (lba.type == SubType.Directory)
                        rst++;

                return rst;
            }
        }

        /// <summary>
        /// 获取父路径
        /// </summary>
        public LBA Father { get { return father; } }

        /// <summary>
        ///偏移地址
        /// </summary>
        public int Off { get { return off; } }
        /// <summary>
        /// 大小
        /// </summary>
        public int Size { get { return size; } }
        /// <summary>
        /// 信息所在位置
        /// </summary>
        public int Off_Info { get { return off_info; } }

        /// <summary>
        /// 类型（文件或文件夹）
        /// </summary>
        public SubType Type { get { return type; } }
        /// <summary>
        /// 名字
        /// </summary>
        public string Name { get { return name; } }

        /// <summary>
        /// 相对于根的全名
        /// </summary>
        string FullName
        {
            get
            {
                if (father == null)
                    return "/";

                string rst = father.FullName + name;

                if (type == SubType.Directory)
                    rst += "/";

                return rst;
            }
        }
        /// <summary>
        /// 通过OFF值获取文件或文件夹
        /// </summary>
        /// <param name="off"></param>
        /// <returns></returns>
        LBA GetFromOff(int off)
        {
            LBA res;

            if (this.off == off)
                return this;

            foreach (LBA lba in subs)
            {
                if (lba.off == off)
                    return lba;

                if (lba.type == SubType.Directory)
                {
                    res = lba.GetFromOff(off);
                    if (res != null)
                        return res;
                }
            }

            return null;
        }
        /// <summary>
        /// 获取指定相对路径的文件或文件夹信息
        /// </summary>
        /// <param name="FullName">相对路径</param>
        /// <returns></returns>
        LBA GetFromFullName(string FullName)
        {
            if (FullName == "")
                return this;
            else
            {
                LBA res = null;

                string[] marks = FullName.Split('/');

                foreach (LBA lba in subs)
                    if (lba.name.ToLower() == marks[0])
                    {
                        res = lba;
                        break;
                    }

                if (res == null)
                    return null;
                else if (marks.Length == 1)
                    return res;
                else
                    return res.GetFromFullName(FullName.Substring(FullName.IndexOf('/') + 1));
            }
        }

        /// <summary>
        /// 打开新ISO文件，生成根的信息
        /// </summary>
        /// <param name="ISOname"></param>
        public LBA(string ISOname, int headLength = MaxHeadLength)
        {
            FileStream fs = File.OpenRead(ISOname);
            byte[] t = new byte[headLength];
            fs.Read(t, 0, t.Length);
            fs.Close();

            try
            {
                CreatNewLBA(t);
            }
            catch (Exception)
            {
                throw new Exception("无法支持的格式！");
            }
        }

        /// <summary>
        /// 从字节数组中创建
        /// </summary>
        /// <param name="b"></param>
        public LBA(byte[] b)
        {
            try
            {
                CreatNewLBA(b);
            }
            catch (Exception)
            {
                throw new Exception("无法支持的格式！");
            }
        }

        private void CreatNewLBA(byte[] t)
        {
            subs = new List<LBA>();

            MemoryStream ms = new MemoryStream(t);
            BinaryReader br = new BinaryReader(ms);

            ms.Seek(off_dirinfo, 0);

            int namelength;

            Dictionary<int, string> ipts = new Dictionary<int, string>();
            while (ms.Position < 0x800 + off_dirinfo)
            {
                namelength = br.ReadUInt16();

                if (namelength == 0)
                    continue;

                int off = br.ReadInt32();
                int level = br.ReadInt16();

                string namet = "";
                {
                    for (int i = 0; i < namelength; i++ )
                    {
                        char c = (char)br.ReadByte();
                        if (c != '\0')
                            namet += c;
                    }
                    if(namelength % 2 != 0)
                        br.ReadByte();
                }
                ipts.Add(off, namet);
            }

            foreach (KeyValuePair<int, string> ipt in ipts)
            {
                ms.Seek(ipt.Key * ISOBlockSize, 0);
                int blocksize;

                LBA lba = null;
                LBA father = null;

                int size_d = 0x800;

                while (ms.Position < ipt.Key * ISOBlockSize + size_d)
                {
                    if (ms.Position >= 0x1527E)
                    {
                        ;
                    }
                    blocksize = br.ReadInt16();
                    if (blocksize != 0x3a && blocksize != 0)
                    {
                        ;
                    }

                    if (blocksize == 0)
                    {
                        continue;
                    }

                    int offinfo = (int)ms.Position - 2;

                    int off = br.ReadInt32();
                    ms.Seek(0x04, SeekOrigin.Current);
                    int size = br.ReadInt32();
                    ms.Seek(0x12, SeekOrigin.Current);

                    namelength = br.ReadByte();

                    if (namelength == 1 && br.PeekChar() <= 1)
                    {
                        if (br.PeekChar() == 0)
                        {
                            string namet = ipts[off];

                            if (namet == "")
                            {
                                lba = this;
                                this.size = size;
                                this.type = SubType.Directory;
                                this.name = "";
                                this.father = null;
                                this.off = off;
                                this.off_info = offinfo;
                            }
                            else
                            {
                                lba = new LBA(off, size, offinfo, namet, null, SubType.Directory);
                            }

                            size_d = size;
                            ms.Seek(0x0F, SeekOrigin.Current);
                        }
                        else//if (br.PeekChar() == 1)
                        {
                            father = GetFromOff(off);
                            if (lba != this)
                                father.Add(lba);
                            ms.Seek(0x0F, SeekOrigin.Current);
                        }
                    }
                    else
                    {
                        string namett = "";
                        for (int j = 0; j < namelength; j++)
                        {
                            char c = (char)br.ReadByte();
                            if (c != '\0')
                                namett += c;
                        }

                        ms.Seek(0x04, SeekOrigin.Current);
                        if (ms.Position % 2 != 0)
                            ms.Seek(0x01, SeekOrigin.Current);
                        int typemark = br.ReadByte();

                        if (typemark == 0x0D)
                        {
                            LBA newFile = new LBA(off, size, offinfo, namett, lba, SubType.File);
                            lba.Add(newFile);
                        }
                        ms.Seek(0x09, SeekOrigin.Current);
                    }
                }
            }

            ms.Close();
        }

        void Add(LBA son)
        {
            this.subs.Add(son);
            son.father = this;
        }

        LBA(int off, int size, int off_info, string name, LBA father, SubType type)
        {
            this.off = off;
            this.size = size;
            this.name = name;
            this.father = father;
            this.off_info = off_info;

            this.type = type;
            this.subs = new List<LBA>();
        }

        /// <summary>
        /// 转化为完整的名字
        /// </summary>
        /// <returns></returns>
        public override string ToString()
        {
            string rst = FullName;

            //if (type == SubType.Directory && rst.Length > 1)
            //    rst += '/';

            return rst;
        }

        #region IEnumerable<LBA> 成员
        /// <summary>
        /// 遍历子文件和子文件夹
        /// </summary>
        /// <returns></returns>
        public IEnumerator<LBA> GetEnumerator()
        {
            foreach (LBA lba in subs)
                yield return lba;
        }

        #endregion

        #region IEnumerable 成员

        System.Collections.IEnumerator System.Collections.IEnumerable.GetEnumerator()
        {
            return this.GetEnumerator();
        }

        #endregion
    }
}
