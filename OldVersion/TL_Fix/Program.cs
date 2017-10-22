using System;
using System.Collections.Generic;
using System.Text;

namespace TL_Fix
{
    class Program
    {
        static void Main(string[] args)
        {
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

            foreach (string namefull in names)
                if (namefull.Substring(namefull.LastIndexOf('.') + 1).ToLower() == "txt")
                {
                    System.IO.FileStream fs = System.IO.File.OpenRead(namefull);
                    System.IO.StreamReader sr = new System.IO.StreamReader(fs, Encoding.Unicode);

                    List<string> ss = new List<string>();

                    while (!sr.EndOfStream)
                    {
                        string s = sr.ReadLine();

                        if (s.Length == 0)
                            continue;

                        ss.Add(s);
                    }

                    sr.Close();
                    fs.Close();

                    fs = System.IO.File.Create(namefull);
                    System.IO.StreamWriter sw = new System.IO.StreamWriter(fs, Encoding.Unicode);

                    foreach (string s in ss)
                    {
                        int k1;
                        if (s.Length < 11 || (k1 = s.IndexOf(',')) != 8)
                            throw new FormatException("非正确文本文件");

                        int k2;
                        if ((k2 = s.IndexOf(',', 9)) == -1)
                            throw new FormatException("非正确文本文件");

                        int offset, length;
                        if (!int.TryParse(s.Substring(0, k1), System.Globalization.NumberStyles.HexNumber, System.Globalization.NumberFormatInfo.CurrentInfo, out offset))
                            throw new FormatException("非正确文本文件");
                        if (!int.TryParse(s.Substring(k1 + 1, k2 - k1 - 1), out length))
                            throw new FormatException("非正确文本文件");

                        string text = s.Substring(k2 + 1);

                        if (offset < 0x001F8000)
                        {
                            length = (length / 4 + 1) * 4 - 1;
                        }
                        else
                            length = 12;

                        sw.WriteLine("{0:X8},{1},{2}", offset, length, text);
                        sw.WriteLine();
                    }

                    sw.Close();
                    fs.Close();

                }
        }
    }
}
