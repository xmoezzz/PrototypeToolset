using System;
using System.Collections.Generic;
using System.Text;
using CODETABLE;

namespace 文本导出
{
    class Program
    {

        static char[] sp = {
            '\0','。','「','」','、','・','を','ぁ','ぃ','ぅ','ぇ','ぉ','ゃ','ゅ','ょ','っ',
            'ー','あ','い','う','え','お','か','き','く','け','こ','さ','し','す','さ','そ',
            'た','ち','つ','て','と','な','に','ぬ','ね','の','は','ひ','ふ','へ','ほ','ま',
            'み','む','め','も','や','ゆ','よ','ら','り','る','れ','ろ','わ','ん','″','°',
        };

        static string[] sp_names = {
            "理樹","鈴","クド","葉留佳","真人","恭介","小毬","来ヶ谷","二木","西園",
            "謙吾","佐々美","朱鷺戸","沙耶","三枝","美鳥","佳奈多","寮長","小次郎","神北",
            "美魚","時風","担任","教師","？？？","相川","女性","ニュース番組","葉留佳の母","杉並",
            "女生徒","？？","女子","議員","風紀委員１","拓也","生徒","少年","黒猫","男子生徒",
            "女子生徒１","葉留佳の父","男子","田中","女子寮長","高宮","マスクザ斉藤","おばさん","祖父","古式",
            "風紀委員２","ドルジ","男子寮長","先生","老人","店員","声１","風紀委員","ソフト部員","女子１",
            "風紀委員４","お父さん","用務員","声２","女子生徒","保健室の先生","鈴木","母親","風紀委員３","三年女子２",
            "三年女子１","宮沢","科学部","図書委員","じいさん","勝沢","男の子","生徒Ａ","女子生徒Ａ","女の子",
            "事務員","後見人","警官","クラスの女子","寮母","男子Ａ","女子の主将","女子２","三年女子３","おばあさん",
            "生徒会役員","ソフト部Ａ","お婆さん",
        };

        static CodeTable ct = new CodeTable(CodeTable.InitType.DftJIS);

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
                    bool more = false;

                    int index = 0;
                    while (index + 1 < b.Length)
                    {
                        int off = index;

                        byte type = b[index];
                        int length = b[index + 1];

                        more = false;

                        if (length == 0)
                        {
                            System.IO.File.Copy(namefull, @".\NOTS\" + namefull.Substring(namefull.LastIndexOf('\\') + 1), true);
                            writen = false;
                            break;
                        }

                        int m;
                        switch (type)
                        {
                            case 0x18:
                                m = 6;
                                not = true;
                                break;
                            case 0x19:
                                m = 4;
                                not = true;
                                break;
                            case 0x2D:
                                not = false;
                                more = true;
                                if (b[off + 2] == 0x66)
                                    m = 4;
                                else if (b[off + 2] == 0x65)
                                    m = 6;
                                else
                                    m = -1;
                                break;
                            case 0x1C:
                                m = 8;
                                not = false;
                                break;
                            default:
                                if (type > 0x8E)
                                {
                                    length += (type - 0x8E) * 0x100;
                                }
                                m = -1;
                                break;
                        }

                        if (m > 0 && length * 2 > m)
                        {
                            string s;

                            try
                            {
                                s = GetText(b, off + m, length * 2 - m, not,more);
                            }
                            catch (Exception)
                            {
                                writen = false;
                                System.IO.File.Copy(namefull, @".\NOTS\" + namefull.Substring(namefull.LastIndexOf('\\') + 1), true);
                                break;
                            }

                            if (Check(s))
                            {
                                sw.WriteLine("{0:X8},{1},{2}", off, length, s);
                                sw.WriteLine();


                                writen = true;
                            }
                        }

                                index += length * 2;
                        }

                    sw.Close();

                    if (!writen)
                    {
                        System.IO.File.Delete(namefull + ".txt");
                        System.IO.Directory.CreateDirectory(".\\NoTEXT");
                        System.IO.File.Copy(namefull, ".\\NoTEXT\\" + namefull.Substring(namefull.LastIndexOf('\\') + 1), true);
                    }
                }
        }

        private static bool Check(string s)
        {
            if (s == null || s.Length == 0 || s == "　")
                return false;

            foreach (char c in s)
                if (c > 0xFF)
                    return true;

            return false;
        }

        private static string GetText(byte[] data, int ts, int length, bool not, bool more)
        {
            string rst = "";
            int i = ts;

            while (i < ts + length)
            {
                if (data[i] == 0 && !more)
                    break;

                int b1 = not ? 0xFF - data[i++] : data[i++];

                if (b1 == 0)
                {
                    rst += '龘';
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
                else if (b1 >= 0xA0 && b1 <= 0xDF)
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
                }
            }

            {
                while (rst[rst.Length - 1] == '龘')
                    rst = rst.Substring(0, rst.Length - 1);
                rst = rst.Replace("龘", "{00}");
            }


            if (rst.Length > 0 && rst[0] == '`')
            {
                rst = rst.Substring(1);
                int kkk = rst.IndexOf('「');
                if (kkk == -1)
                    return rst;

                string numS = rst.Substring(0, kkk);

                int num;
                if (int.TryParse(numS, out num))
                {
                    rst = sp_names[num - 1] + rst.Substring(kkk);
                }
            }
            return rst;
        }
    }
}
