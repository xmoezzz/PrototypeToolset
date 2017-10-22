using System;
using System.Collections.Generic;
using System.Text;

namespace ZIP
{
    class Program
    {
        static void Main(string[] args)
        {
            if (args.Length < 2)
                return;

            System.IO.FileStream fs = System.IO.File.OpenRead(args[0]);
            byte[] t = LB_ZIP.LB_ZIP.Zip(fs, (int)fs.Length);
            fs.Close();

            System.IO.FileStream fs_out = System.IO.File.Create(args[1]);
            fs_out.Write(t, 0, t.Length);
            fs_out.Close();
        }
    }
}
