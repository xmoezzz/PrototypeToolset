using System;
using System.Collections.Generic;
using System.Text;

namespace 文本导出B
{
    class Program
    {
        static char[] sp = {
            '\0','。','「','」','、','・','を','ぁ','ぃ','ぅ','ぇ','ぉ','ゃ','ゅ','ょ','っ',
            'ー','あ','い','う','え','お','か','き','く','け','こ','さ','し','す','さ','そ',
            'た','ち','つ','て','と','な','に','ぬ','ね','の','は','ひ','ふ','へ','ほ','ま',
            'み','む','め','も','や','ゆ','よ','ら','り','る','れ','ろ','わ','ん','″','°',
        };

        static CODETABLE.CodeTable ct = new CODETABLE.CodeTable(CODETABLE.CodeTable.InitType.DftJIS);

        static void Main(string[] args)
        {
            int[] tttt = new int[256];

            string[] names;
            if (args.Length == 0)
                names = System.IO.Directory.GetFiles(@".\");
            else if (System.IO.Directory.Exists(args[0]))
            {
                names = System.IO.Directory.GetFiles(args[0]);
            }
            else
            {
                names = args;
            }

            System.IO.Directory.CreateDirectory(@".\NOTS\");

            foreach (string namefull in names)
                if (namefull.Substring(namefull.LastIndexOf('.') + 1).ToLower() == "dat")
                {
                    System.IO.FileStream fs = System.IO.File.OpenRead(namefull);
                    byte[] b = new byte[(int)fs.Length];
                    fs.Read(b, 0, b.Length);
                    fs.Close();


                    //System.IO.BinaryReader br = new System.IO.BinaryReader(fs);
                    System.IO.FileStream fs_out = System.IO.File.Create(namefull + ".txt");
                    System.IO.StreamWriter sw = new System.IO.StreamWriter(fs_out, Encoding.Unicode);

                    bool not = true;
                    bool writen = false;

                    int index = 0;
                    while (index + 1 < b.Length)
                    {


                        string s = "";
                        int length = 0;

                        try
                        {
                            s = GetText(b, index, false, out length);
                        }
                        catch (Exception)
                        {
                            s = "";
                        }

                        bool hasjis = false;
                        foreach (char c in s)
                            if (c >= 0xFF)
                                hasjis = true;

                        if (hasjis)
                        {
                            sw.WriteLine("{0:X8},{1},{2}", index, length, s);
                            sw.WriteLine();

                            writen = true;
                            index += length;
                        }
                        else
                            index++;

                    }

                    sw.Close();

                    if (!writen)
                    {
                        System.IO.File.Delete(namefull + ".txt");
                        System.IO.Directory.CreateDirectory(".\\NoTEXT2");
                        System.IO.File.Copy(namefull, ".\\NoTEXT2\\" + namefull.Substring(namefull.LastIndexOf('\\') + 1), true);
                    }
                }
        }

        private static string GetText(byte[] data, int ts, bool not, out int length)
        {
            string rst = "";
            int i = ts;
            bool hasjis = false;
            bool hasc = false;

            while (i < data.Length)
            {
                if (data[i] == 0)
                    break;

                int b1 = not ? 0xFF - data[i++] : data[i++];

                if (b1 < 0x20 && b1 != 0x0A && b1 != 0x0D)
                {
                    break;
                }
                else if (b1 < 0x80)
                {
                    if (b1 == 0x0A)
                        rst += "{换行}";
                    else if (b1 == 0x0D)
                        rst += "{回车}";
                    else
                        rst += (char)b1;
                }
                else if (b1 >= 0xA0 && b1 <= 0xDF && not)
                {
                    if (b1 == 0xA0)
                        rst += "{结束}";
                    else
                        rst += sp[b1 - 0xA0];
                }
                else
                {
                    int b2 = not ? 0xFF - data[i++] : data[i++];
                    int jis = (b1 << 8) | b2;


                    if (!ct.IsJIS(jis))
                        throw new Exception();

                    int ucs = ct.JIS2UCS(jis);

                    rst += (char)ucs;

                    if (ucs > 0x3000 && ucs < 0xFF00)
                        hasc = true;

                    hasjis = true;
                }
            }

            length = i - ts;

            if (!hasjis || !hasc)
                rst = "";

            return rst;

        }
    }
}
