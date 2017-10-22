using System;
using System.Collections.Generic;
using System.Text;

namespace Unpak
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
                if (namefull.Substring(namefull.LastIndexOf('.') + 1).ToLower() == "pak")
                {
                    string nameshort = namefull.Substring(namefull.LastIndexOf('\\'));
                    PAK.Pak pak = new PAK.Pak(namefull);

                    Console.WriteLine("½â¿ª{0}...", namefull.Substring(namefull.LastIndexOf('\\') + 1));

                    System.IO.Directory.CreateDirectory(namefull + ".unpak");

                    foreach (PAK.Pak.Sub sub in pak)
                    {
                        string name = sub.name;
                        if (name != "")
                            name = "#" + name;

                        string name_out = string.Format("{0}#{1:D6}{2}.dat",nameshort, sub.id, name);

                        System.IO.FileStream fs_out = System.IO.File.Create(namefull + ".unpak\\" + name_out);
                        sub.stream.Seek(sub.stream_off, 0);
                        byte[] head = CopyStream(sub.stream, fs_out, sub.stream_size);
                        fs_out.Close();

                        if (head[0] == 0x4D)
                        {
                            string name_out2 = string.Format("{0}#{1:D6}{2}.gim", nameshort, sub.id, name);
                            System.IO.File.Move(namefull + ".unpak\\" + name_out, namefull + ".unpak\\" + name_out2);
                        }

                        
                    }

                    pak.Close();
                }
        }

        const int buffsize = 256 * 1024;
        private static byte[] CopyStream(System.IO.Stream input, System.IO.Stream output, long count)
        {
            bool first = true;
            byte[] ret = new byte[4];
            while (count > 0)
            {
                int len = count > buffsize ? buffsize : (int)count;
                byte[] buffer = new byte[len];
                input.Read(buffer, 0, len);
                output.Write(buffer, 0, len);
                count -= buffsize;

                if (first)
                {
                    for (int j = 0; j < ret.Length && j < buffer.Length; j++)
                        ret[j] = buffer[j];
                    first = false;
                }
            }
            output.Flush();

            return ret;
        }
        private static byte[] CopyStream(System.IO.Stream input, System.IO.Stream output)
        {
            long count = input.Length - input.Position;
            return CopyStream(input, output, count);
        }
    }
}
