using System;
using System.Collections.Generic;
using System.Text;
using System.IO;

namespace 图片转换
{
    class Program
    {
        //exe dir_gim dir_png gimconv dir_failed

        static List<string> failed;
        static string gimconv;

        static void Main(string[] args)
        {
            if (args.Length < 4)
            {
                Console.WriteLine("参数错误！");
                return;
            }
            string dir_png = args[1];
            string dir_gim = args[0];
            gimconv = args[2];
            string dir_failed = args[3];

            if (!Directory.Exists(dir_png) || !File.Exists(gimconv))
            {
                Console.WriteLine("文件或文件夹不存在！");
                return;
            }
            

            if (dir_gim[dir_gim.Length - 1] != '\\')
                dir_gim += '\\';

            Directory.CreateDirectory(dir_gim);
            failed = new List<string>();

            图片导入(dir_png, dir_gim);

            if (failed.Count != 0)
            {
                Directory.CreateDirectory(dir_failed);
                foreach (string nf in failed)
                {
                    string shortname = nf.Substring(nf.LastIndexOf('\\') + 1);
                    string name_new = dir_failed + '\\' + shortname;

                    File.Copy(nf, name_new, true);
                }
                Console.WriteLine("部分文件未能导入，已将这些文件复制到：");
                Console.WriteLine(dir_failed);

                Console.WriteLine("结束，任意键推出！");
                Console.ReadKey(true);
                return;
            }

            Console.WriteLine("结束！");
        }

        private static void 图片导入(string dir_png, string dir_gim)
        {
            string[] pngs = Directory.GetFiles(dir_png);

            foreach (string png in pngs)
                if (png.Substring(png.LastIndexOf('.') + 1).ToLower() == "png")
                {
                    string name_png = png.Substring(png.LastIndexOf('\\') + 1).ToLower();
                    string name_gim = name_png + ".gim";

                    Console.Write("转换{0}...", name_png);

                    string gim = dir_gim + "\\" + name_gim;
                    if (name_png.IndexOf("_gim") == -1)
                    {
                        File.Copy(png, dir_gim + name_png, true);
                        Console.WriteLine("成功！");
                    }
                    else
                    {
                        if (!CheckPNG(png))
                        {
                            Console.WriteLine("失败！文件结构不符！");
                            failed.Add(png);
                        }
                        else
                        {
                            string arg = string.Format("{0}{1}{0} -IFindex8 -o {0}{2}{0}", '\"', png, gim);
                            arg.Replace(@"\", @"\\");

                            System.Diagnostics.ProcessStartInfo PrcStInfo = new System.Diagnostics.ProcessStartInfo(gimconv, arg);
                            PrcStInfo.WindowStyle = System.Diagnostics.ProcessWindowStyle.Hidden;
                            System.Diagnostics.Process proc = System.Diagnostics.Process.Start(PrcStInfo);
                            proc.WaitForExit();

                            Console.WriteLine("成功！");
                        }
                    }
                }

            string[] dirs = System.IO.Directory.GetDirectories(dir_png);
            foreach(string dir in dirs)
            {
                图片导入(dir, dir_gim);
            }
        }

        private static bool CheckPNG(string png)
        {
            FileStream fs = File.OpenRead(png);
            BinaryReader br = new BinaryReader(fs);

            if (br.ReadUInt32() != 0x474E5089)
                goto F;

            fs.Seek(0x0C, 0);
            if (br.ReadUInt32() != 0x52444849)
                goto F;

            fs.Seek(0x18, 0);
            int n = br.ReadUInt16();

            if ((n & 0xFF00) != 0x0300)
                goto F;

            br.Close();
            fs.Close();
            return true;

        F:
            br.Close();
            fs.Close();
            return false;
        }
    }
}
