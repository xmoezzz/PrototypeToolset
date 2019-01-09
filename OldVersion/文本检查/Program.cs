using System;
using System.Collections.Generic;
using System.Text;
using System.IO;

namespace 文本检查
{
    class Program
    {
        static StreamWriter sw = null;
        static string log;
        static int count_A;

        static string[] tp = {
            "{换行}", "\n",
            "{回车}", "\r",
        };

        //exe textdir [report.txt]
        public static void Main(string[] args)
        {
            string dir = Directory.GetCurrentDirectory();
            if (dir[dir.Length - 1] != '\\')
                dir += '\\';
            log = dir + "文本检查问题报告.txt";

            count_A = 0;

            string[] names;
            if (args.Length == 0)
                names = Directory.GetFiles(@".\");
            else
            {
                if (Directory.Exists(args[0]))
                    names = Directory.GetFiles(args[0]);
                else
                {
                    Console.WriteLine("文件夹不存在！");
                    return;
                }
            }

            if (args.Length > 1)
                log = args[1];

            File.Delete(log);
            Console.WriteLine("检查中，请等待...");
            foreach (string namefull in names)
                if (namefull.Substring(namefull.LastIndexOf('.') + 1).ToLower() == "txt")
                {
                    if (args.Length <= 2)
                    {
                        Console.WriteLine("检查{0}...", namefull.Substring(namefull.LastIndexOf('\\') + 1));
                    }
                    string name = namefull.Substring(namefull.LastIndexOf('\\') + 1).ToLower();

                    if (name == log.Substring(log.LastIndexOf('\\') + 1).ToLower())
                        continue;

                    bool first = true;
                    bool limit = name.ToLower().IndexOf(".l.txt") != -1;

                    FileStream fs = File.OpenRead(namefull);
                    StreamReader sr;

                    Encoding EC = Encoding.Unicode;

                    if (name.ToLower().IndexOf(".utf8") != -1)
                        EC = Encoding.UTF8;

                    fs.Seek(0, 0);
                    sr = new StreamReader(fs, EC);

                    while (!sr.EndOfStream)
                    {
                        string s = sr.ReadLine();

                        if (s.Length == 0 || s[0] == '*')
                            continue;

                        int k1;
                        if (s.Length < 11 || (k1 = s.IndexOf(',')) != 8)
                        {
                            Error(name, s, ref first);
                            continue;
                        }

                        int k2;
                        if ((k2 = s.IndexOf(',', 9)) == -1)
                        {
                            Error(name, s, ref first);
                            continue;
                        }

                        int offset, length;
                        if (!int.TryParse(s.Substring(0, k1), System.Globalization.NumberStyles.HexNumber, System.Globalization.NumberFormatInfo.CurrentInfo, out offset))
                        {
                            Error(name, s, ref first);
                            continue;
                        }
                        if (!int.TryParse(s.Substring(k1 + 1, k2 - k1 - 1), out length))
                        {
                            Error(name, s, ref first);
                            continue;
                        }

                        

                        string text = Fix(s.Substring(k2 + 1));

                        count_A += text.Length;

                        if (!limit)
                            continue;

                        int length_in = 0;

                        if (EC == Encoding.UTF8)
                        {
                            length_in = Encoding.UTF8.GetByteCount(text);
                        }
                        else
                        {
                            foreach (char c in text)
                                if (c < 0x7F)
                                    length_in++;
                                else
                                    length_in += 2;
                        }

                        if (length_in > length && limit)
                        {
                            Error(name, s, ref first, length_in, length);
                            continue;
                        }
                    }

                    if (!first)
                    {
                        sw.WriteLine("************************************************************************");
                        sw.WriteLine();
                        sw.WriteLine();
                    }
                }

            Console.WriteLine("文字总数:{0:N0}", count_A);
            if (sw != null)
            {
                sw.Close();
                Console.WriteLine("部分文本存在问题，请查看问题报告：");
                Console.WriteLine("\t{0}", log);
            }

            Console.WriteLine("任意键退出...");
            if (args.Length <= 2)
                Console.ReadKey(true);
        }

        private static string Fix(string p)
        {
            for (int i = 0; i < tp.Length; i += 2)
                p = p.Replace(tp[i], tp[i + 1]);

            return p;
        }

        private static void Error(string name, string s, ref bool first)
        {
            if (sw == null)
                sw = new StreamWriter(log);

            if (first)
            {
                first = false;
                sw.WriteLine("************************************************************************");
                sw.WriteLine("*　");
                sw.WriteLine("*　{0}中的以下文本可能存在问题:", name);
                sw.WriteLine("*　");
            }

            sw.WriteLine("*　　　" + s);
            sw.WriteLine("*　　　");
        }

        private static void Error(string name, string s, ref bool first, int p, int length)
        {


            if (sw == null)
                sw = new StreamWriter(log);

            if (first)
            {
                first = false;
                sw.WriteLine("************************************************************************");
                sw.WriteLine("*　");
                sw.WriteLine("*　{0}中的以下文本可能存在问题:", name);
                sw.WriteLine("*　");
            }

            sw.WriteLine("*　　　" + s);
            sw.WriteLine("*　　　导入文本长度：{0}，限制长度:{1}", p, length);
            sw.WriteLine("*　　　");
        }
    }
}
