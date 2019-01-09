using System;
using System.Collections.Generic;
using System.Text;
using CODETABLE.Properties;

namespace CODETABLE
{
    /// <summary>
    /// JIS码表
    /// </summary>
    public class CodeTable
    {
        /// <summary>
        /// 初始化类型
        /// </summary>
        public enum InitType
        {
            /// <summary>
            /// 空码表
            /// </summary>
            Empty,
            /// <summary>
            /// 默认的JIS码表
            /// </summary>
            DftJIS,
            /// <summary>
            /// 默认的JIS码表（只有开头部分）
            /// </summary>
            DftJIS_HeadPart,
        }
        int[] i2jis;
        int[] jis2i;

        int[] i2ucs;
        int[] ucs2i;

        /// <summary>
        /// 码表最大容量
        /// </summary>
        public const int MaxNum = 0x1E80;
        int _index;

        /// <summary>
        /// 码表当前所含字符数
        /// </summary>
        public int Num
        {
            get
            {
                int rst = 0;
                for (int i = 1; i <= MaxNum; i++)
                    if (i2ucs[i] != 0)
                        rst++;
                return rst;
            }
        }

        /// <summary>
        /// 获取或设置添加的位置
        /// </summary>
        public int Index
        {
            get
            {
                return _index;
            }
            set
            {
                if (1 <= _index && _index <= MaxNum)
                    _index = value;
                else
                    throw new IndexOutOfRangeException("标号超出！");
            }
        }

        /// <summary>
        /// 码表前部的容量
        /// </summary>
        public const int NumOfHead = 1410;

        /// <summary>
        /// 获取第i个编码的UCS值
        /// </summary>
        /// <param name="i"></param>
        /// <returns></returns>
        public int this[int i]
        {
            get { return i2ucs[i]; }
        }

        /// <summary>
        /// 初始化为空码表
        /// </summary>
        public CodeTable()
        {
            Init(InitType.Empty);
        }

        /// <summary>
        /// 从文件中创建码表
        /// </summary>
        /// <param name="name">文件名</param>
        public CodeTable(string name)
        {
            Init(InitType.Empty);

            System.IO.FileStream fs = System.IO.File.OpenRead(name);
            System.IO.BinaryReader br = new System.IO.BinaryReader(fs);

            int n = br.ReadInt32();

            for (int i = 1; i <= n; i++)
            {
                int jis = br.ReadUInt16();
                int ucs = br.ReadUInt16();


                int j = jis2i[jis];

                {
                    i2ucs[j] = ucs;
                    ucs2i[ucs] = j;
                }

                if (j > _index)
                    _index = j;
            }

            br.Close();
            fs.Close();
        }

        /// <summary>
        /// 码表初始化
        /// </summary>
        /// <param name="initType">初始化的类型</param>
        public CodeTable(InitType initType)
        {
            Init(initType);
        }

        private void Init(InitType initType)
        {
            i2jis = new int[MaxNum + 1];
            i2ucs = new int[MaxNum + 1];

            jis2i = new int[0x10000];
            ucs2i = new int[0x10000];

            System.IO.MemoryStream ms = new System.IO.MemoryStream(Resources.jis2ucs);
            System.IO.BinaryReader br = new System.IO.BinaryReader(ms);

            int n = br.ReadInt32();

            for (int i = 1; i <= n; i++)
            {
                int jis = br.ReadUInt16();
                int ucs = br.ReadUInt16();

                i2jis[i] = jis;
                jis2i[jis] = i;

                if (initType != InitType.Empty && (initType == InitType.DftJIS ||  i <= NumOfHead))
                {
                    int j = jis2i[jis];
                    i2ucs[j] = ucs;
                    ucs2i[ucs] = j;
                }
            }

            br.Close();
            ms.Close();

            switch (initType)
            {
                case InitType.DftJIS:
                    _index = MaxNum + 1;
                    break;
                case InitType.DftJIS_HeadPart:
                    _index = NumOfHead + 1;
                    break;
                default:
                    _index = 1;
                    break;
            }
        }

        /// <summary>
        /// 由JIS查UCS
        /// </summary>
        /// <param name="jis"></param>
        /// <returns></returns>
        public int JIS2UCS(int jis)
        {
            if (!IsJIS(jis))
                throw new IndexOutOfRangeException("非法的JIS！");

            return i2ucs[jis2i[jis]];
        }

        /// <summary>
        /// 由UCS查JIS
        /// </summary>
        /// <param name="ucs"></param>
        /// <returns></returns>
        public int UCS2JIS(int ucs)
        {
            if (ucs < 0 || ucs > 0x10000)
                throw new IndexOutOfRangeException("非法的UCS！");

            if (ucs2i[ucs] != 0)
                return i2jis[ucs2i[ucs]];
            else
                return 0;
        }

        /// <summary>
        /// 由i查jis
        /// </summary>
        /// <param name="i"></param>
        /// <returns></returns>
        public int I2JIS(int i)
        {
            return i2jis[i];
        }
        /// <summary>
        /// 由jis查i
        /// </summary>
        /// <param name="jis"></param>
        /// <returns></returns>
        public int JIS2I(int jis)
        {
            return jis2i[jis];
        }

        /// <summary>
        /// 添加一个UCS到码表
        /// 若该UCS已存在或添加成功，返回该UCS对应的JIS
        /// </summary>
        /// <param name="ucs"></param>
        /// <returns></returns>
        public int Add(int ucs)
        {
            if (ucs < 0 || ucs > 0x10000)
                throw new IndexOutOfRangeException("非法的UCS！");
            if (ucs2i[ucs] != 0)
                return i2jis[ucs2i[ucs]];

            if (ucs < 0x7F)
                return ucs;

            while (_index <= MaxNum && i2ucs[_index] != 0)
                _index++;

            if (_index <= MaxNum)
            {
                int jis = i2jis[_index];

                i2ucs[_index] = ucs;
                ucs2i[ucs] = _index;
                _index++;

                return jis;
            }
            else
                throw new Exception("码表容量不足！ ");
        }

        /// <summary>
        /// 判断一个值是否为JIS
        /// </summary>
        /// <param name="jis"></param>
        /// <returns></returns>
        public bool IsJIS(int jis)
        {
            if (jis < 0x100)
            {
                if (jis >= 0x81 && jis <= 0x9F
                    || jis >= 0xE0 && jis <= 0xEA)
                    return true;
                else
                    return false;
            }
            return jis2i[jis] != 0;
        }

        /// <summary>
        /// 将码表写到文件
        /// </summary>
        /// <param name="name"></param>
        public void WriteToFile(string name)
        {
            System.IO.FileStream fs = System.IO.File.Create(name);
            System.IO.BinaryWriter bw = new System.IO.BinaryWriter(fs);

            int num = Num;
            bw.Write(num);
            for (int i = 1; i <= MaxNum; i++)
                if (i2ucs[i] != 0)
                {
                    bw.Write((UInt16)i2jis[i]);
                    bw.Write((UInt16)i2ucs[i]);
                }

            bw.Close();
            fs.Close();
        }
    }
}
