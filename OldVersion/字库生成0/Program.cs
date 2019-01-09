using System;
using System.Collections.Generic;
using System.Text;
using 字库生成0.Properties;

namespace 字库生成0
{
    class Program
    {
        static char[] sp = {
        };

        static void Main(string[] args)
        {
            if (args.Length < 3)
                return;

            string bin = args[0];
            string txt = args[1];
            string jis2ucs_new = args[2];

            System.IO.FileStream fs = System.IO.File.OpenRead(bin);
            System.IO.BinaryReader br = new System.IO.BinaryReader(fs);

            System.IO.FileStream fs_new = System.IO.File.Create(jis2ucs_new);
            System.IO.BinaryWriter bw = new System.IO.BinaryWriter(fs_new);

            System.IO.StreamWriter sw = new System.IO.StreamWriter(txt);

            for (int i = 0x20; i < 0x7F; i++)
            {
                sw.WriteLine("{0:X4}", i);
            }

            for (int i = 0xFF01; i < 0xFF5F; i++)
            {
                sw.WriteLine("{0:X4}", i);
            }

            for (int i = 0; i < sp.Length; i += 2)
            {
                sw.WriteLine("{0:X4}={1:X4}", (UInt16)sp[i], (UInt16)sp[i + 1]);
            }

            fs_new.Write(Resources.jis2ucs, 0, Resources.jis2ucs.Length);

            int num = br.ReadInt32();

            for (int i = 0; i < num; i++)
            {
                int jis = br.ReadUInt16();
                UInt16 ucs = br.ReadUInt16();

                int off = jis2ucs_bin.JIS2Offset(jis);
                fs_new.Seek(off, 0);
                bw.Write(ucs);

                if (ucs >= 0x4000 && ucs < 0xF000)
                    sw.WriteLine("{0:X4}", ucs);
            }

            bw.Close();
            fs_new.Close();

            br.Close();
            fs.Close();

            sw.Close();
        }
    }
}
