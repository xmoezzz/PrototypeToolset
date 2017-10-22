using System;
using System.Collections.Generic;
using System.Text;

namespace 汉化补丁
{
    public class Pak : IEnumerable<Pak.Sub>
    {
        public struct Sub
        {
            public int id;
            public int off;
            public int size;

            public System.IO.Stream stream;
            public int stream_off;
            public int stream_size;

            public string name;
        }

        int start_pak;
        int off_firstsub;
        int size;
        Sub[] subs;
        int num = 0;
        System.IO.Stream stream = null;

        /// <summary>
        /// 子文件数目
        /// </summary>
        public int Num { get { return num; } }

        /// <summary>
        /// 包大小
        /// </summary>
        public int Size { get { return size; } }

        /// <summary>
        /// 关闭
        /// </summary>
        public void Close()
        {
            for (int i = 0; i < num; i++)
                subs[i].stream.Close();
            if (stream != null)
                stream.Close();
        }

        /// <summary>
        /// 第i个子文件
        /// </summary>
        /// <param name="i"></param>
        /// <returns></returns>
        public Sub this[int i] { get { return subs[i]; } }


        /// <summary>
        /// 用字节数组中的数据，替换一个子文件
        /// </summary>
        /// <param name="id">子文件ID</param>
        /// <param name="b">数据源数组</param>
        /// <param name="off">数据起始</param>
        /// <param name="count">字节数</param>
        /// <returns></returns>
        public bool Replace(int id, byte[] b, int off, int count)
        {
            System.IO.MemoryStream ms = new System.IO.MemoryStream();
            ms.Write(b, off, count);

            Replace(id, ms, count);

            return true;
        }

        /// <summary>
        /// 用一个文件中的数据替换
        /// </summary>
        /// <param name="id">子文件ID</param>
        /// <param name="filename">数据源文件</param>
        public bool Replace(int id, string filename)
        {
            System.IO.FileStream fs = System.IO.File.OpenRead(filename);
            byte[] t = new byte[(int)fs.Length];
            fs.Read(t, 0, t.Length);
            fs.Close();

            return Replace(id, t, 0, t.Length);
        }

        /// <summary>
        /// 用流中的数据替换
        /// </summary>
        /// <param name="id">子文件ID</param>
        /// <param name="stream">源流</param>
        /// <param name="count">字节数目</param>
        public bool Replace(int id, System.IO.Stream stream, int count)
        {
            if (id < 0 || id > num)
                return false;

            subs[id].stream = stream;
            subs[id].stream_off = (int)stream.Position;
            subs[id].stream_size = count;

            return true;
        }

        /// <summary>
        /// 重建
        /// </summary>
        public void Rebuild()
        {
            int off_new = off_firstsub;

            for (int i = 0; i < num; i++)
            {
                subs[i].off = off_new;
                subs[i].size = subs[i].stream_size;

                off_new = subs[i].off + subs[i].size;

                off_new = (off_new + 0x7FF) / 0x800 * 0x800;
            }

            size = off_new;
        }

        /// <summary>
        /// 新包写入到流
        /// </summary>
        /// <param name="stream">目标流</param>
        public void WriteTo(System.IO.Stream stream)
        {
            Rebuild();

            System.IO.BinaryWriter bw = new System.IO.BinaryWriter(stream);
            int start_new = (int)stream.Position;

            ///写入头
            byte[] t = new byte[off_firstsub];
            this.stream.Seek(start_pak, 0);
            this.stream.Read(t, 0, t.Length);

            stream.Write(t, 0, t.Length);
            stream.Seek(start_new + 4, 0);
            bw.Write(size);

            for (int i = 0; i < num; i++)
            {
                bw.Write(subs[i].off);
                bw.Write(subs[i].size);
            }

            for (int i = 0; i < num; i++)
            {
                byte[] t2 = new byte[(subs[i].size + 0x7FF) / 0x800 * 0x800];
                subs[i].stream.Seek(subs[i].stream_off, 0);
                subs[i].stream.Read(t2, 0, subs[i].size);

                stream.Seek(subs[i].off + start_new, 0);
                stream.Write(t2, 0, t2.Length);
            }

            stream.Flush();
        }

        /// <summary>
        /// 新包写入文件
        /// </summary>
        /// <param name="filename"></param>
        public void WriteTo(string filename)
        {
            System.IO.FileStream fs = System.IO.File.Create(filename);
            WriteTo(fs);
            fs.Close();
        }


        /// <summary>
        /// 从流中创建
        /// </summary>
        /// <param name="stream"></param>
        public Pak(System.IO.Stream stream)
        {
            CreatFromStream(stream);
        }

        private void CreatFromStream(System.IO.Stream stream)
        {
            System.IO.BinaryReader br = new System.IO.BinaryReader(stream);

            start_pak = (int)stream.Position;
            this.stream = stream;

            num = br.ReadInt32();
            size = br.ReadInt32();
            subs = new Sub[num];

            for (int i = 0; i < num; i++)
            {
                subs[i].id = i;
                subs[i].off = br.ReadInt32();
                subs[i].size = br.ReadInt32();
                subs[i].stream = stream;

                subs[i].stream_size = subs[i].size;
                subs[i].stream_off = subs[i].off + start_pak;
            }

            for (int i = 0; i < num; i++)
            {
                subs[i].name = "";
                char c;
                while ((c = (char)br.ReadByte()) != '\0')
                    subs[i].name += c;

                if (i == 0 && subs[i].name == "")
                {
                    for (int j = 1; j < num; j++)
                        subs[j].name = "";
                    break;
                }
            }

            off_firstsub = subs[0].off;
        }

        /// <summary>
        /// 从文件中创建
        /// </summary>
        /// <param name="name"></param>
        public Pak(string name)
        {
            System.IO.FileStream fs = new System.IO.FileStream(name,System.IO.FileMode.Open,System.IO.FileAccess.ReadWrite);
            CreatFromStream(fs);
        }


        #region IEnumerable<Sub> 成员

        public IEnumerator<Pak.Sub> GetEnumerator()
        {
            foreach (Sub sub in subs)
                yield return sub;
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
