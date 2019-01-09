using System;
using System.Collections.Generic;
using System.Text;

namespace 子文件导入
{
    class Program
    {
        static void Main(string[] args)
        {
            if (args.Length < 4)
            {
                Console.WriteLine("子文件导入.exe PAK目录 子文件目录 新PAK目录 补丁数据输出");
                return;
            }
            string dir_subs = args[1];
            string dir_pak = args[0];
            string dir_pak_new = args[2];
            string data1 = args[3];

            const string pa = @"\PSP_GAME\USRDIR\X0DATA\";

            if (!System.IO.Directory.Exists(dir_pak) || !System.IO.Directory.Exists(dir_subs))
            {
                Console.WriteLine("文件夹不存在！");
                return;
            }

            System.IO.Directory.CreateDirectory(dir_pak_new);

            PAK.Pak pak = null;
            string pak_name = null;
            int count = 0;
            int count_p = 0;
            int off_subs = 4;

            System.IO.MemoryStream ms = new System.IO.MemoryStream();

            System.IO.FileStream fs_data1 = new System.IO.FileStream(data1, System.IO.FileMode.Create, System.IO.FileAccess.Write);
            System.IO.BinaryWriter bw = new System.IO.BinaryWriter(fs_data1);

            fs_data1.Seek(8, 0);

            string[] subs = System.IO.Directory.GetFiles(dir_subs);

            foreach (string sub in subs)
            {
                Console.WriteLine("导入{0}...", sub.Substring(sub.LastIndexOf('\\') + 1));
                string subname = sub.Substring(sub.LastIndexOf('\\') + 1).ToUpper();

                string father;
                int id;
                bool zip;

                if (subname[0] >= '0' && subname[0] <= '9')
                    father = "SCRIPT.PAK";
                else
                {
                    father = subname.Substring(0, subname.IndexOf('#'));
                    father = father.Replace('_', '.');

                    subname = subname.Substring(subname.IndexOf('#') + 1);
                }

                string[] ts = subname.Split('.', '_','#');
                id = int.Parse(ts[0]);

                zip = subname.ToLower().IndexOf("_dat_gim") != -1 || subname.IndexOf(".dat.gim") != -1;

                if (pak_name != father)
                {
                    if (pak != null)
                    {
                        pak.WriteTo(dir_pak_new + "\\" + pak_name);
                        pak.Close();

                        fs_data1.Seek(off_subs, 0);
                        bw.Write(pak.Num);
                        bw.Write(count);
                        fs_data1.Seek(count * 12, System.IO.SeekOrigin.Current);
                    }
                    pak_name = father;
                    pak = new PAK.Pak(dir_pak + "\\" + pak_name);

                    bw.Write(pa + father);
                    off_subs = (int)fs_data1.Position;
                    fs_data1.Seek(8, System.IO.SeekOrigin.Current);

                    count = 0;
                    count_p++;
                }

                System.IO.FileStream fs = System.IO.File.OpenRead(sub);
                byte[] t = new byte[(int)fs.Length];
                fs.Read(t, 0, t.Length);
                fs.Close();

                if (zip)
                {
                    t = LB_ZIP.LB_ZIP.Zip(t, 0, t.Length);
                }

                pak.Replace(id, t, 0, t.Length);

                bw.Write(id);
                bw.Write((int)ms.Position);
                bw.Write(t.Length);

                ms.Write(t, 0, t.Length);

                count++;
            }

            if (pak != null)
            {
                pak.WriteTo(dir_pak_new + "\\" + pak_name);
                pak.Close();
            }

            fs_data1.Seek(off_subs, 0);
            bw.Write(pak.Num);
            bw.Write(count);
            

            fs_data1.Seek(0, 0);
            bw.Write(count_p);
            bw.Write((int)fs_data1.Length);

            fs_data1.Seek(fs_data1.Length, 0);
            byte[] t2 = new byte[(int)ms.Length];
            ms.Seek(0, 0);
            ms.Read(t2, 0, t2.Length);
            fs_data1.Write(t2, 0, t2.Length);
            ms.Close();
            bw.Close();
            fs_data1.Close();


        }
    }
}
