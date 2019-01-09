using System;
using System.Collections.Generic;
using System.Text;

namespace 补丁准备
{
    class Program
    {
        static void Main(string[] args)
        {
            if (args.Length < 2)
            {
                Console.WriteLine("补丁准备.exe PSP_GAME的父目录 输出文件");
                return;
            }

            string dir = args[0];
            string bin = args[1];

            if (dir[dir.Length - 1] != '\\')
                dir += '\\';

            System.IO.MemoryStream ms = new System.IO.MemoryStream(补丁准备.Properties.Resources.data0);
            System.IO.BinaryReader br = new System.IO.BinaryReader(ms);

            int num = br.ReadInt32();

            int[] off_S = new int[files.Length];
            int[] size_S = new int[files.Length];
            uint[] crc32_S = new uint[files.Length];

            for (int i = 0; i < files.Length; i++)
            {
                string name = br.ReadString();
                if (name != files[i])
                    throw new Exception("程序损坏！");

                off_S[i] = br.ReadInt32();
                size_S[i] = br.ReadInt32();
                crc32_S[i] = br.ReadUInt32();
            }

            br.Close();
            ms.Close();


            System.IO.FileStream fs = System.IO.File.Create(bin);
            System.IO.BinaryWriter bw = new System.IO.BinaryWriter(fs);

            bw.Write(files.Length);
            fs.Seek(4, System.IO.SeekOrigin.Current);

            int off_A = 0;

            int off_boot = 0;
            int size_boot = 0;
            uint crc32_boot = 0;

            ms = new System.IO.MemoryStream();

            for (int i = 0; i < files.Length; i++)
            {
                string file_name = files[i];
                bw.Write(file_name);

                if (file_name == BOOT || file_name == EBOOT)
                {
                    file_name = EBOOT;
                    if (off_boot != 0)
                    {
                        bw.Write((byte)1);
                        bw.Write(off_boot);
                        bw.Write(size_boot);
                        bw.Write(crc32_boot);
                        continue;
                    }
                }

                string file_d = dir + file_name.Replace('/', '\\');

                if (System.IO.File.Exists(file_d) || file_name == EBOOT)
                {
                    int off = off_A;
                    System.IO.FileStream fs_t = System.IO.File.OpenRead(file_d);
                    int size = (int)fs_t.Length;

                    byte[] t = new byte[size];
                    fs_t.Read(t, 0, t.Length);
                    fs_t.Close();

                    uint crc32 = Crc32.GetCrc32FromByteArray(t);

                    if (file_name.IndexOf(pa) == 0 && file_name.Substring(file_name.LastIndexOf('.') + 1).ToUpper() == "PAK")
                    {
                        bw.Write((byte)2);
                        bw.Write(crc32);
                    }
                    else
                    {
                        bw.Write((byte)1);
                        bw.Write(off);
                        bw.Write(size);
                        bw.Write(crc32);

                        ms.Write(t, 0, t.Length);
                        off_A = off + size;
                    }

                    if (file_name == EBOOT)
                    {
                        off_boot = off;
                        size_boot = size;
                        crc32_boot = crc32;
                    }
                }
                else
                {
                    bw.Write((byte)0);
                    bw.Write(crc32_S[i]);
                }
            }

            int off_base = (int)fs.Position;

            ms.Seek(0, 0);
            CopyStream(ms, fs);

            fs.Seek(4, 0);
            bw.Write(off_base);

            bw.Close();
            fs.Close();
            ms.Close();
        }

        static string pa = @"\PSP_GAME\USRDIR\X0DATA\";
        //static string pb = @"\PSP_GAME\INSDIR\";
        static string BOOT = @"\PSP_GAME\SYSDIR\BOOT.BIN";
        static string EBOOT = @"\PSP_GAME\SYSDIR\EBOOT.OLD";

        static string[] files = {
            @"\UMD_DATA.BIN",
            @"\PSP_GAME\ICON0.PNG",
            @"\PSP_GAME\PARAM.SFO",
            @"\PSP_GAME\SYSDIR\BOOT.BIN",
            @"\PSP_GAME\SYSDIR\EBOOT.BIN",
            @"\PSP_GAME\SYSDIR\EBOOT.OLD",
            @"\PSP_GAME\SYSDIR\OPNSSMP.BIN",
            @"\PSP_GAME\SYSDIR\prometheus.prx",
            @"\PSP_GAME\USRDIR\oldfont.prx",
            @"\PSP_GAME\USRDIR\fonts.pgf",
            @"\PSP_GAME\USRDIR\VOICE.PAK",
            @"\PSP_GAME\USRDIR\X0DATA\000.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\001.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\002.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\003.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\004.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\005.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\006.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\007.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\008.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\009.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\010.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\011.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\012.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\013.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\014.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\015.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\016.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\017.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\018.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\019.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\020.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\021.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\022.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\023.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\024.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\025.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\026.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\027.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\028.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\029.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\030.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\031.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\032.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\033.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\034.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\035.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\036.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\037.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\038.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\039.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\040.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\041.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\042.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\043.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\044.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\045.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\046.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\047.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\048.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\049.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\050.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\051.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\052.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\053.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\054.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\055.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\056.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\057.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\058.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\059.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\060.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\061.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\062.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\063.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\064.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\065.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\066.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\067.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\068.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\069.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\070.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\071.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\072.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\073.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\074.AT3",
            @"\PSP_GAME\USRDIR\X0DATA\BATTLE.PAK",
            @"\PSP_GAME\USRDIR\X0DATA\BGCG.PAK",
            @"\PSP_GAME\USRDIR\X0DATA\CG.PAK",
            @"\PSP_GAME\USRDIR\X0DATA\EVENTCG.PAK",
            @"\PSP_GAME\USRDIR\X0DATA\GM.PAK",
            @"\PSP_GAME\USRDIR\X0DATA\ICON0.PNG",
            @"\PSP_GAME\USRDIR\X0DATA\OTHCG.PAK",
            @"\PSP_GAME\USRDIR\X0DATA\OTHCG2.PAK",
            @"\PSP_GAME\USRDIR\X0DATA\PARTS.PAK",
            @"\PSP_GAME\USRDIR\X0DATA\PT1.PAK",
            @"\PSP_GAME\USRDIR\X0DATA\PT2.PAK",
            @"\PSP_GAME\USRDIR\X0DATA\SCRIPT.PAK",
            @"\PSP_GAME\USRDIR\X0DATA\SE.PAK",
            @"\PSP_GAME\USRDIR\X0DATA\VOICE2.PAK",
            @"\PSP_GAME\USRDIR\X0DATA\VOICE3.PAK",
            @"\PSP_GAME\USRDIR\X1BGM\000.AT3",
            @"\PSP_GAME\USRDIR\X5PARTS\ICON0.png",
            @"\PSP_GAME\USRDIR\X5PARTS\ICON1.png",
            @"\PSP_GAME\USRDIR\X5PARTS\ICON2.png",
            @"\PSP_GAME\USRDIR\X5PARTS\ICON3.png",
            @"\PSP_GAME\USRDIR\X5PARTS\TITLE01X.gim",
            @"\PSP_GAME\USRDIR\X5PARTS\disc.txt",
            @"\PSP_GAME\USRDIR\X5PARTS\jis2ucs.bin",
            @"\PSP_GAME\USRDIR\X6MOVIE\AYA.pmf",
            @"\PSP_GAME\USRDIR\X6MOVIE\BOOT.pmf",
            @"\PSP_GAME\USRDIR\X6MOVIE\ED05.pmf",
            @"\PSP_GAME\USRDIR\X6MOVIE\EDAL.pmf",
            @"\PSP_GAME\USRDIR\X6MOVIE\OP00.pmf",
            @"\PSP_GAME\USRDIR\X7SYSSE\CAN.vag",
            @"\PSP_GAME\USRDIR\X7SYSSE\CUR.vag",
            @"\PSP_GAME\USRDIR\X7SYSSE\ENT.vag",
            @"\PSP_GAME\USRDIR\X9DULE\000.gim",
            @"\PSP_GAME\USRDIR\X9DULE\001.gim",
            @"\PSP_GAME\USRDIR\X9DULE\libfont.prx",
            @"\PSP_GAME\USRDIR\X9DULE\libpsmfplayer.prx",
            @"\PSP_GAME\USRDIR\X9DULE\psmf.prx",
        };

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
