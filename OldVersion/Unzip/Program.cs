using System;
using System.Collections.Generic;
using System.Text;

namespace Unzip
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
                if (namefull.Substring(namefull.LastIndexOf('.') + 1).ToLower() == "dat")
                {
                    System.IO.FileStream fs = System.IO.File.OpenRead(namefull);
                    System.IO.FileStream fs_out = System.IO.File.Create(namefull + ".gim");

                    LB_ZIP.LB_ZIP.UnzipTo(fs, fs_out, (int)fs.Length);

                    fs.Close();
                    fs_out.Close();
                }

        }
    }
}
