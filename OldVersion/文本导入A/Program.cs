using System;
using System.Collections.Generic;
using System.Text;

namespace 文本导入A
{
    class Program
    {
        static void Main(string[] args)
        {
            if (args.Length < 4)
                return;

            string dir_bin = args[0];
            string dir_txt = args[1];
            string bin_cod = args[2];

            string dir_bin_new = args[3];

            

            //System.IO.Directory.SetCurrentDirectory(@"D:\Downloads\PSP\PSP_Game\LB\导入程序");

            System.IO.Directory.CreateDirectory(dir_bin_new);

            CODETABLE.CodeTable ct;

            if (System.IO.File.Exists(bin_cod))
                ct = new CODETABLE.CodeTable(bin_cod);
            else
            {
                //ct = new CODETABLE.CodeTable(CODETABLE.CodeTable.InitType.DftJIS);
                ct = new CODETABLE.CodeTable(CODETABLE.CodeTable.InitType.DftJIS_HeadPart);
            }

            string[] names = System.IO.Directory.GetFiles(dir_txt);

            

            foreach (string name_txt in names)
                if (name_txt.Substring(name_txt.LastIndexOf('.') + 1).ToLower() == "txt")
                {
                    string name_bin = name_txt.Substring(name_txt.LastIndexOf('\\') + 1).ToLower();
                    if (name_txt.ToLower().IndexOf(".l.txt") == -1)
                    {
                        name_bin = dir_bin + "\\" + name_bin.Substring(0, name_bin.ToLower().LastIndexOf(".txt"));
                    }
                    else
                    {
                        name_bin = dir_bin + "\\" + name_bin.Substring(0, name_bin.ToLower().LastIndexOf(".l.txt"));
                    }

                    if (name_txt.ToLower().IndexOf("eboot.bin") != -1)
                        name_bin = dir_bin + "\\EBOOT.OLD";

                    if (!System.IO.File.Exists(name_bin))
                        continue;

                    string name_bin_short = name_bin.Substring(name_bin.LastIndexOf('\\') + 1).ToLower();
                    string name_bin_new = dir_bin_new + "\\" + name_bin_short;

                    if (System.IO.File.Exists(name_bin_new))
                        name_bin = name_bin_new;

                    if (name_txt.ToLower().IndexOf(".l.txt") == -1)
                    {
                        导入文本_不限长(ct, name_txt, name_bin, name_bin_new);
                    }
                    else
                    {
                        导入文本_限长(ct, name_txt, name_bin, name_bin_new);
                    }
                }

            ct.WriteToFile(bin_cod);
        }

        private static void 导入文本_限长(CODETABLE.CodeTable ct, string name_txt, string name_bin, string name_bin_new)
        {
            System.IO.FileStream fs = System.IO.File.OpenRead(name_bin);
            byte[] data = new byte[(int)fs.Length];
            fs.Read(data, 0, data.Length);
            fs.Close();

            System.IO.FileStream fs_txt = System.IO.File.OpenRead(name_txt);
            System.IO.StreamReader sr = new System.IO.StreamReader(fs_txt, Encoding.Unicode);

            while (!sr.EndOfStream)
            {
                string s = sr.ReadLine();

                if (s.Trim().Length == 0 || s[0] == '*')
                    continue;

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
                text = Fix(text);
                

                byte[] temp = new byte[length];
                int it = 0;

                if (name_bin.ToLower().IndexOf(".utf8") == -1)
                {
                    foreach (char c in text)
                    {
                        if (c < 0x7F)
                        {
                            temp[it++] = (byte)c;
                        }
                        else
                        {
                            int jis = ct.Add((int)c);
                            temp[it++] = (byte)(jis >> 8);
                            temp[it++] = (byte)(jis & 0xFF);
                        }
                    }

                    if (name_bin.ToLower().IndexOf(".eboot.bin") == -1)
                    {
                        while (it + 1< temp.Length)
                        {
                            temp[it++] = 0x80;
                            temp[it++] = 0x40;
                        }
                        while (it < temp.Length)
                        {
                            temp[it++] = 0x20;
                        }
                    }
                }
                else
                {
                    Encoding.UTF8.GetBytes(text).CopyTo(temp, 0);
                }

                temp.CopyTo(data, offset);
            }

            sr.Close();
            fs_txt.Close();

            fs = System.IO.File.Create(name_bin_new);
            fs.Write(data, 0, data.Length);
            fs.Close();

        }

        private static void 导入文本_不限长(CODETABLE.CodeTable ct, string name_txt, string name_bin, string name_bin_new)
        {
            System.IO.FileStream fs = System.IO.File.OpenRead(name_bin);
            byte[] data = new byte[(int)fs.Length];
            fs.Read(data, 0, data.Length);
            fs.Close();

            int index = 0;
            Dictionary<int, BitSCR> scr = new Dictionary<int, BitSCR>();

            while (index < data.Length)
            {
                BitSCR bs = new BitSCR();
                bs.off = index;

                bs.type = data[index];
                bs.length = data[index + 1];

                if (bs.type >= 0x8E)
                    bs.length += (bs.type - 0x8E) * 0x100;

                bs.data = new byte[bs.length * 2];

                for (int j = 0; j < bs.data.Length; j++)
                    bs.data[j] = data[index + j];

                scr.Add(index, bs);
                index += bs.length * 2;
            }

            fs = System.IO.File.OpenRead(name_txt);
            System.IO.StreamReader sr = new System.IO.StreamReader(fs, Encoding.Unicode);

            #region 读取文本
            while (!sr.EndOfStream)
            {
                string s = sr.ReadLine();

                if (s.Trim().Length == 0 || s[0] == '*')
                    continue;

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

                string text = Fix(s.Substring(k2 + 1));

                BitSCR bs = scr[offset];

                byte[] temp = new byte[text.Length * 2];
                int it = 0;

                foreach (char c in text)
                {
                    if (c == '龘')
                    {
                        temp[it++] = 0;
                    }
                    else if (c < 0x7F)
                    {
                        temp[it++] = (byte)c;
                    }
                    else
                    {
                        int jis = ct.Add((int)c);
                        temp[it++] = (byte)(jis >> 8);
                        temp[it++] = (byte)(jis & 0xFF);
                    }
                }

                int start;
                bool not;

                switch (bs.type)
                {
                    case 0x18:
                        start = 6;
                        not = true;
                        if (bs.data[start] == 0x9F)
                            start++;
                        break;
                    case 0x19:
                        start = 4;
                        not = true;
                        if (bs.data[start] == 0x9F)
                            start++;
                        break;
                    case 0x1C:
                        start = 8;
                        not = false;
                        break;
                    case 0x2D:
                        not = false;
                        if (bs.data[2] == 0x66)
                            start = 4;
                        else if (bs.data[2] == 0x65)
                            start = 6;
                        else
                            goto default;
                        break;
                    default:
                        throw new Exception("非法文本！");
                }

                int add_s = start;
                while (bs.data[add_s] != 0)
                    add_s++;
                add_s++;

                int add_e = add_s;

                while (add_e < bs.data.Length && bs.data[add_e] != 0)
                    add_e++;

                int newlength = start + it + 1 + add_e - add_s;
                if (newlength % 2 != 0)
                    newlength++;

                bs.length = newlength / 2;

                byte[] data_new = new byte[newlength];
                for (int i = 0; i < start; i++)
                    data_new[i] = bs.data[i];

                data_new[1] = (byte)bs.length;

                for (int i = 0; i < it; i++)
                {
                    byte bt;
                    if (not)
                        bt = (byte)(0xFF - temp[i]);
                    else
                        bt = temp[i];
                    data_new[start + i] = bt;
                }

                for (int i = add_s; i < add_e; i++)
                {
                    data_new[start + it + i - add_s + 1] = bs.data[i];
                }

                bs.data = data_new;
            }
            #endregion

            sr.Close();
            fs.Close();

            int off_new = 0;

            foreach (KeyValuePair<int, BitSCR> KVP_bs in scr)
            {
                KVP_bs.Value.off = off_new;
                off_new = KVP_bs.Value.off + KVP_bs.Value.length * 2;
            }

            foreach (KeyValuePair<int, BitSCR> KVP_bs in scr)
            {
                BitSCR bs = KVP_bs.Value;
                byte type = bs.type;
                if (type == 0x0E || type == 0x0D)
                {
                    int it = 2;
                    while (bs.data[it] != 0)
                        it++;

                    int joff = bs.data[it + 1] | (bs.data[it + 2] << 8) | (bs.data[it + 3] << 16) | (bs.data[it + 4] << 24);

                    BitSCR jbs = scr[joff];
                    joff = jbs.off;

                    for (int j = 0; j < 4; j++)
                    {
                        bs.data[it + j + 1] = (byte)(joff >> (8 * j));
                    }
                }
                else if (type == 0x0B)
                {

                    if (bs.length == 2)
                    {
                        int joff = bs.data[2] | (bs.data[3] << 8);
                        BitSCR jbs = scr[joff];
                        joff = jbs.off;

                        for (int j = 0; j < 2; j++)
                        {
                            bs.data[j + 2] = (byte)(joff >> (8 * j));
                        }

                        if (joff > 0xFFFF)
                        {
                            throw new Exception("跳转长度不够！");
                        }
                    }
                    else if (bs.length >= 3)
                    {
                        int joff = bs.data[2] | (bs.data[3] << 8) | (bs.data[4] << 16) | (bs.data[5] << 24);
                        BitSCR jbs = scr[joff];
                        joff = jbs.off;

                        for (int j = 0; j < 4; j++)
                        {
                            bs.data[j + 2] = (byte)(joff >> (8 * j));
                        }
                    }
                }
                else if (type >= 0x8E)
                {
                    int ibs = 2;
                    while (bs.data[ibs] != 0)
                        ibs++;
                    ibs++;

                    while (ibs + 3 < bs.data.Length)
                    {
                        int joff = bs.data[ibs] | (bs.data[ibs + 1] << 8) | (bs.data[ibs + 2] << 16) | (bs.data[ibs + 3] << 24);
                        BitSCR jbs = scr[joff];
                        joff = jbs.off;

                        for (int j = 0; j < 4; j++)
                        {
                            bs.data[ibs + j] = (byte)(joff >> (8 * j));
                        }

                        ibs += 4;
                    }
                }
            }

            fs = System.IO.File.Create(name_bin_new);
            foreach (KeyValuePair<int, BitSCR> KVP_bs in scr)
            {
                byte[] t = KVP_bs.Value.data;
                fs.Write(t, 0, t.Length);
            }
            fs.Close();
        }

        private static string Fix(string p)
        {
            string rst = p.Replace("{换行}", "\n");
            rst = rst.Replace("{回车}", "\r");
            rst = rst.Replace("{00}", "龘");

            return rst;
        }
    }

    public class BitSCR : IComparable<BitSCR>
    {
        public int off;

        public byte type;
        public int length;
        public byte[] data;


        #region IComparable<BitSCR> 成员

        public int CompareTo(BitSCR other)
        {
            return this.off.CompareTo(other.off);
        }

        #endregion
    }
}
