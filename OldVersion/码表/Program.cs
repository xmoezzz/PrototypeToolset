using System;
using System.Collections.Generic;
using System.Text;

namespace 码表
{
    class Program
    {
        static char[] sp = {
            '\0','。','「','」','、','・','を','ぁ','ぃ','ぅ','ぇ','ぉ','ゃ','ゅ','ょ','っ',
            'ー','あ','い','う','え','お','か','き','く','け','こ','さ','し','す','さ','そ',
            'た','ち','つ','て','と','な','に','ぬ','ね','の','は','ひ','ふ','へ','ほ','ま',
            'み','む','め','も','や','ゆ','よ','ら','り','る','れ','ろ','わ','ん','″','°',
        };
        static void Main(string[] args)
        {
            System.IO.FileStream fs = new System.IO.FileStream("LB_A.txt", System.IO.FileMode.Create, System.IO.FileAccess.Write);
            System.IO.StreamWriter sw = new System.IO.StreamWriter(fs, Encoding.Unicode);

            System.IO.FileStream fs2 = new System.IO.FileStream("LB_B.txt", System.IO.FileMode.Create, System.IO.FileAccess.Write);
            System.IO.StreamWriter sw2 = new System.IO.StreamWriter(fs2, Encoding.Unicode);

            for (int i = 1; i < sp.Length; i++)
            {
                sw.WriteLine("{0:X2}={1}", (0xA0 + i), sp[i]);
                sw2.WriteLine("{0:X2}={1}", 0xFF - (0xA0 + i), sp[i]);
            }

            for (int i = 0x20; i < 0x7F; i++)
            {
                sw.WriteLine("{0:X2}={1}",  i, (char)i);
                sw2.WriteLine("{0:X2}={1}", 0xFF - i, (char)i);
            }

            CODETABLE.CodeTable ct = new CODETABLE.CodeTable(CODETABLE.CodeTable.InitType.DftJIS);

            for (int i = 1; i <= ct.Num; i++)
                if (ct[i] != 0)
                {
                    if (ct.I2JIS(i) >= 0x939F && ct.I2JIS(i) <= 0x879E)
                        continue;
                    sw.WriteLine("{0:X4}={1}", ct.I2JIS(i), (char)ct[i]);
                    sw2.WriteLine("{0:X4}={1}", 0xFFFF - ct.I2JIS(i), (char)ct[i]);
                }

            sw.Close();
            sw2.Close();
        }
    }
}
