using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.IO;
using 汉化补丁.Properties;
using PSP_LBA;

namespace 汉化补丁
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

#if DEBUG
        const bool debug = true;
#else
        const bool debug = false;
#endif
        const string ver = "0.01.602";
        

        const string title = debug ? "LB汉化＆合盘补丁（测试版）" : "Little Busters! CE 汉化＆合盘补丁";
        const string text_ver = (debug ? "测试版 ver " : "ver ") + ver;

        const double reporttime = 0.2;
        const double Size_min = 2.0 * 1024 * 1024 * 1024;
        const string DftnewFileName = "Little_Busters_cn_" + ver + ".iso";
        const string Name_RES = @"\PSP_GAME\USRDIR\ev.afs";
        const string Name_BOOT = @"\PSP_GAME\SYSDIR\BOOT.BIN";
        const string Name_OLDBOOT = @"\PSP_GAME\SYSDIR\EBOOT.OLD";

        const string pgfFont = @"\PSP_GAME\USRDIR\fonts.pgf";
        const int SizeFont = 2 * 1024 * 1024;

        static string pa = @"\PSP_GAME\USRDIR\X0DATA\";
        static string pb = @"\PSP_GAME\INSDIR\";

        const string UMD_DATA = @"\UMD_DATA.BIN";
        const string id_A = "ULJM-05789";
        const string id_B = "ULJM-05790";

        const int FirstLBA = 34;
        const int off_sizeinfo = 0x8050;
        const int buffsize = 256 * 1024;

        const int off_version_path = 0x1124;

        int[] PositionP = { 33, 184, 265, 184, 265, 236, 33, 236 };
        int[] PositionA = { 0, 0, 0, 0 };
        int[] PositionB = { 0, 0, 0, 0 };

        List<string> CheckFiles_A;
        List<string> CheckFiles_B;
        SubFileInfo[] sfis;
        PAK_subs[] pak_subs;
        LBA lba;

        string path_iso_a = null;
        string path_iso_b = null;
        string path_iso_new = null;

        FileStream fs_a = null;
        FileStream fs_b = null;
        FileStream fs_out = null;
        MemoryStream ms0 = null;
        MemoryStream ms1 = null;

        int i_boot = 0;
        int i_oldboot = 0;

        //Form2 form2 = new Form2();

        List<string> crc32_failed_b = new List<string>();

        DateTime dt = DateTime.Now;
        //进度改变
        void backgroundWorker1_ProgressChanged(object sender, ProgressChangedEventArgs e)
        {
            TimeSpan ts = DateTime.Now - dt;

            if (e.ProgressPercentage >= 999 || ts.TotalSeconds > reporttime)
            {
                dt = DateTime.Now;
                progressBar1.Value = e.ProgressPercentage;

                this.Text = string.Format("{0} - 进度：{1:F1}%", title, 0.1 * e.ProgressPercentage);
            }
        }

        //完成
        void backgroundWorker1_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {
            if (fs_a != null)
                fs_a.Close();

            if (fs_b != null)
                fs_b.Close();

            if (fs_out != null)
                fs_out.Close();

            if (ms0 != null)
                ms0.Close();

            if (ms1 != null)
                ms1.Close();

            fs_a = fs_b = fs_out = null;
            ms0 = ms1 = null;

            this.BringToFront();
            this.Activate();

            if (e.Cancelled)
            {
                return;
            }
            
            if (e.Error != null)
            {
                label_text.Text = "生成汉化版镜像时出错";
                MessageBox.Show("生成汉化版镜像时出错。\n\n错误：\n" + e.Error.Message, "错误", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {
                path_iso_a = null;
                path_iso_b = null;

                if (crc32_failed_b.Count != 0)
                {
                    label_text.Text = "已生成汉化版镜像，部分文件未能通过校验";
                    MessageBox.Show("已生成汉化版镜像。但部分文件未能通过校验，生成的镜像可能不可用。\n建议选择原版镜像重试。", "提示",
                        MessageBoxButtons.OK, MessageBoxIcon.Information);

                    if (debug)
                    {
                        string files = "";
                        foreach (string errorcrc32 in crc32_failed_b)
                        {
                            files += errorcrc32 + '\n';
                        }
                        MessageBox.Show("以下文件未通过校验：\n\n" + files, "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }

                    //form2.ShowDialog();
                    this.BringToFront();
                }
                else
                {
                    label_text.Text = "成功生成汉化版镜像";
                    MessageBox.Show("成功生成汉化版镜像，全部文件通过校验！", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);

                    //form2.ShowDialog();
                    this.BringToFront();
                }
            }

            this.Text = title;
            progressBar1.Visible = false;
            pictureBox1.AllowDrop = true;
        }

        //Do
        void backgroundWorker1_DoWork(object sender, DoWorkEventArgs e)
        {
            BackgroundWorker work = sender as BackgroundWorker;

            e.Result = WriteNewISO((string)e.Argument, work, e);
        }

        private object WriteNewISO(string p, BackgroundWorker work, DoWorkEventArgs e)
        {
            LBA lba_a, lba_b;
            long size_a, size_b;

            FileInfo info_b = new FileInfo(path_iso_b);

            size_b = info_b.Length;

            if (path_iso_a == null)
            {
                size_a = size_b;
            }
            else
            {
                FileInfo info_a = new FileInfo(path_iso_a);
                size_a = info_a.Length;
            }

            int pro;

            crc32_failed_b.Clear();

            if (work.CancellationPending)
            {
                e.Cancel = true;
                return false;
            }
            pro = 0;
            work.ReportProgress(pro);

            #region 打开
            try
            {
                if (path_iso_a != null)
                {
                    lba_a = new LBA(path_iso_a);
                    fs_a = File.OpenRead(path_iso_a);
                }
                else
                {
                    lba_a = null;
                    fs_a = null;
                }
                
            }
            catch (Exception)
            {
                throw new Exception("无法正确作为ISO镜像打开:\n  " + path_iso_a);
            }

            try
            {
                lba_b = new LBA(path_iso_b);
                fs_b = File.OpenRead(path_iso_b);
            }
            catch (Exception)
            {
                throw new Exception("无法正确作为ISO镜像打开:\n  " + path_iso_b);
            }

            ms0 = new MemoryStream(Resources.data0);
            ms1 = new MemoryStream(Resources.data1);

            #endregion

            if (work.CancellationPending)
            {
                e.Cancel = true;
                return false;
            }
            pro = 1;
            work.ReportProgress(pro);

            #region 设置新LBA信息

            int off_new = FirstLBA;

            for (int i = 0; i < sfis.Length; i++)
            {
                sfis[i].off = off_new;

                if(sfis[i].type == 0)//文件完全来自镜像
                {
                    sfis[i].Source_Stream = fs_b;

                    LBA lbat = lba_b[sfis[i].name];
                    long size_check = size_b;
                    if (lbat == null)
                    {
                        size_check = size_a;
                        sfis[i].Source_Stream = fs_a;

                        if (lba_a == null || (lbat = lba_a[sfis[i].name.Replace(pa,pb)]) == null)
                            throw new Exception("未能在日版镜像中找到相应文件!");
                    }

                    sfis[i].off_source = lbat.Off * LBA.ISOBlockSize;
                    sfis[i].size = lbat.Size;

                    if (size_check < sfis[i].off_source + sfis[i].size)
                        throw new Exception("读取日版镜像中文件时出错！可能是该镜像文件无法被支持！");
                }
                else if (sfis[i].type == 1)//文件来自补丁
                {
                    sfis[i].Source_Stream = ms0;
                }
                else//文件来自双方
                {
                    sfis[i].Source_Stream = fs_b;

                    LBA lbat = lba_b[sfis[i].name];
                    long size_check = size_b;
                    if (lbat == null)
                    {
                        size_check = size_a;
                        sfis[i].Source_Stream = fs_a;

                        if (lba_a == null || (lbat = lba_a[sfis[i].name.Replace(pa, pb)]) == null)
                            throw new Exception("未能在日版镜像中找到相应文件!");
                    }

                    try
                    {
                        sfis[i].Source_Stream.Seek(lbat.Off * LBA.ISOBlockSize, 0);
                        sfis[i].pak_subs.pak = new Pak(sfis[i].Source_Stream);
                    }
                    catch (Exception)
                    {
                        throw new Exception("读取日版镜像中文件时出错！可能是该镜像文件无法被支持！");
                    }

                    if (size_check < lbat.Off * LBA.ISOBlockSize + sfis[i].pak_subs.pak.Size)
                        throw new Exception("读取日版镜像中文件时出错！可能是该镜像文件无法被支持！");

                    if (sfis[i].pak_subs.pak.Num != sfis[i].pak_subs.num)
                    {
                        throw new Exception("读取日版镜像中文件时出错！可能是该镜像文件无法被支持！");
                    }

                    for (int j = 0; j < sfis[i].pak_subs.subs.Length; j++)
                    {
                        ms1.Seek(sfis[i].pak_subs.subs[j].off, 0);
                        sfis[i].pak_subs.pak.Replace(sfis[i].pak_subs.subs[j].id, ms1, sfis[i].pak_subs.subs[j].size);
                    }

                    sfis[i].pak_subs.pak.Rebuild();

                    sfis[i].size = sfis[i].pak_subs.pak.Size;
                }

                if (sfis[i].name != pgfFont)
                {
                    off_new = sfis[i].off + sfis[i].size / LBA.ISOBlockSize;

                    if (sfis[i].size % LBA.ISOBlockSize != 0)
                        off_new++;
                }
                else
                {
                    off_new = sfis[i].off + SizeFont / LBA.ISOBlockSize;
                }
            }
            int SizeISO = off_new;
            long Size = (long)off_new * LBA.ISOBlockSize;

            if (Size > int.MaxValue)
            {
                throw new Exception("生成的镜像将大于2G，不支持！");
            }

            #endregion

            if (work.CancellationPending)
            {
                e.Cancel = true;
                return false;
            }
            pro = 4;
            work.ReportProgress(pro);

            #region 创建新镜像，写入头

            fs_out = new FileStream(path_iso_new, FileMode.Create, FileAccess.ReadWrite);
            fs_out.SetLength(Size);

            fs_out.Write(Resources.HEAD, 0, Resources.HEAD.Length);

            fs_out.Seek(off_sizeinfo, 0);
            WriteLB(fs_out, SizeISO);

            for (int i = 0; i < sfis.Length; i++)
            {
                fs_out.Seek(sfis[i].lba.Off_Info + 2, 0);
                WriteLB(fs_out, sfis[i].off);
                WriteLB(fs_out, sfis[i].size);
            }

            #endregion

            if (work.CancellationPending)
            {
                e.Cancel = true;
                return false;
            }
            pro = 5;
            work.ReportProgress(pro);

            #region 写入文件

            Stream stream;

            for (int i = 0; i < sfis.Length; i++)
            {
                if (work.CancellationPending)
                {
                    e.Cancel = true;
                    return false;
                }

                fs_out.Seek(sfis[i].off * LBA.ISOBlockSize, 0);


                if (sfis[i].type != 2)
                {
                    stream = sfis[i].Source_Stream;

                    stream.Seek(sfis[i].off_source, 0);
                    int count = sfis[i].size;

                    uint value = 0xFFFFFFFF;
                    while (count > 0)
                    {
                        int size = count > buffsize ? buffsize : count;
                        byte[] buff = new byte[size];
                        stream.Read(buff, 0, size);
                        for (int j = 0; j < size; j++)
                        {
                            value = (value >> 8) ^ crc32table[(value ^ buff[j]) & 0xFF];
                        }
                        count -= buffsize;

                        fs_out.Write(buff, 0, buff.Length);

                        pro = (int)(5 + 994 * fs_out.Position / fs_out.Length);
                        if (pro > 999)
                            pro = 999;

                        if (work.CancellationPending)
                        {
                            e.Cancel = true;
                            return false;
                        }
                        work.ReportProgress(pro);
                    }
                    value ^= 0xFFFFFFFF;

                    if (value != sfis[i].crc32)
                    {
                        if (sfis[i].type != 0)
                            crc32_failed_b.Add(sfis[i].name);
                        else
                            throw new Exception("读取资源文件出错！可能是补丁程序已损坏！");
                    }
                }
                else
                {
                    sfis[i].pak_subs.pak.WriteTo(fs_out);
                    fs_out.Flush();
                    fs_out.Seek(sfis[i].off * LBA.ISOBlockSize, 0);

                    int count = sfis[i].size;

                    uint value = 0xFFFFFFFF;
                    while (count > 0)
                    {
                        int size = count > buffsize ? buffsize : count;
                        byte[] buff = new byte[size];
                        fs_out.Read(buff, 0, size);
                        for (int j = 0; j < size; j++)
                        {
                            value = (value >> 8) ^ crc32table[(value ^ buff[j]) & 0xFF];
                        }
                        count -= size;

                        pro = (int)(5 + 994 *
                            ((long)sfis[i].off * LBA.ISOBlockSize + ((long)(sfis[i].size - count) * 3 + (long)sfis[i].size * 7) / 10)
                            / fs_out.Length);

                        if (pro < 100)
                            throw new Exception();

                        if (pro > 999)
                            pro = 999;

                        if (work.CancellationPending)
                        {
                            e.Cancel = true;
                            return false;
                        }
                        work.ReportProgress(pro);
                    }
                    value ^= 0xFFFFFFFF;

                    if (value != sfis[i].crc32)
                    {
                        crc32_failed_b.Add(sfis[i].name);
                    }
                }
            }

            #endregion

            #region BOOT.BIN 和 EBOOT.OLD的版本补丁

            fs_out.Seek(sfis[i_boot].off * LBA.ISOBlockSize + off_version_path, 0);
            fs_out.WriteByte(0x02);
            fs_out.WriteByte(0x06);

            fs_out.Seek(sfis[i_oldboot].off * LBA.ISOBlockSize + off_version_path, 0);
            //fs_out.WriteByte(0x00);
            //fs_out.WriteByte(0x05);
            fs_out.WriteByte(0x02);
            fs_out.WriteByte(0x06);

            #endregion

            if (work.CancellationPending)
            {
                e.Cancel = true;
                return false;
            }
            pro = 999;
            work.ReportProgress(pro);

            fs_out.Close(); fs_out = null;

            ms0.Close(); ms0 = null;
            ms1.Close(); ms1 = null;

            if (fs_a != null)
            {
                fs_a.Close(); fs_a = null;
            }
            fs_b.Close(); fs_b = null;

            work.ReportProgress(1000);

            return true;
        }

        uint[] crc32table = null;
        void GetCrc32Table()
        {
            crc32table = new uint[256];
            for (int i = 0; i < crc32table.Length; i++)
            {
                uint crc = (uint)i;
                for (int j = 8; j > 0; j--)
                {
                    if ((crc & 1) == 1)
                        crc = (crc >> 1) ^ 0xEDB88320;
                    else
                        crc >>= 1;
                }
                crc32table[i] = crc;
            }
        }

        void WriteLB(Stream stream, int n)
        {
            byte[] b = new byte[4];
            for (int i = 0; i < b.Length; i++)
            {
                b[i] = (byte)(n >> (8 * i));
                stream.WriteByte(b[i]);
            }
            for (int i = b.Length - 1; i >= 0; i--)
            {
                stream.WriteByte(b[i]);
            }
        }

        //窗口载入
        private void Form1_Load(object sender, EventArgs e)
        {
            label_ver.Text = text_ver;
            this.Text = title;

            progressBar1.Visible = false;

            pictureBox1.AllowDrop = true;

            GetCrc32Table();
            GetCheckFile();

            this.BringToFront();
            this.Activate();
        }

        private void GetCheckFile()
        {
            try
            {
                lba = new LBA(Resources.HEAD);
            }
            catch (Exception)
            {
                MessageBox.Show("读取数据出错！补丁已损坏！退出！", "错误", MessageBoxButtons.OK, MessageBoxIcon.Error);
                this.Close();
            }

            MemoryStream ms = new MemoryStream(Resources.data1);
            BinaryReader br = new BinaryReader(ms);
            int num = br.ReadInt32();
            int off_base = br.ReadInt32();

            pak_subs = new PAK_subs[num];
            for (int i = 0; i < num; i++)
            {
                pak_subs[i] = new PAK_subs();

                pak_subs[i].PAKname = br.ReadString();
                pak_subs[i].num = br.ReadInt32();

                int pak_subs_num = br.ReadInt32();
                pak_subs[i].subs = new PAK_subs.Sub[pak_subs_num];

                for (int j = 0; j < pak_subs_num; j++)
                {
                    pak_subs[i].subs[j].id = br.ReadInt32();
                    pak_subs[i].subs[j].off = br.ReadInt32() + off_base;
                    pak_subs[i].subs[j].size = br.ReadInt32();
                }
            }

            br.Close();
            ms.Close();


            CheckFiles_A = new List<string>();
            CheckFiles_B = new List<string>();

            ms = new MemoryStream(Resources.data0);
            br = new BinaryReader(ms);

            num = br.ReadInt32();
            off_base = br.ReadInt32();

            sfis = new SubFileInfo[num];

            for (int i = 0; i < num; i++)
            {
                sfis[i] = new SubFileInfo();

                sfis[i].name = br.ReadString();
                sfis[i].type = br.ReadByte();

                if (sfis[i].type == 1)//完全来自补丁
                {
                    sfis[i].off_source = br.ReadInt32() + off_base;
                    sfis[i].size = br.ReadInt32();
                    sfis[i].pak_subs = null;
                }
                else if (sfis[i].type == 2)//来自双方
                {
                    int j;
                    for (j = 0; j < pak_subs.Length; j++)
                    {
                        if (pak_subs[j].PAKname.ToLower() == sfis[i].name.ToLower())
                        {
                            sfis[i].pak_subs = pak_subs[j];
                            break;
                        }
                    }

                    if (j == pak_subs.Length)
                    {
                        ms.Close();
                        MessageBox.Show("读取数据出错！补丁已损坏！退出！", "错误", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        this.Close();
                    }
                }
                else//完全来自文件
                {
                    sfis[i].pak_subs = null;
                }

                sfis[i].crc32 = br.ReadUInt32();

                if (sfis[i].name == Name_BOOT)
                {
                    i_boot = i;
                }

                if (sfis[i].name == Name_OLDBOOT)
                {
                    i_oldboot = i;
                }

                sfis[i].lba = lba[sfis[i].name];
                if (sfis[i].lba == null)
                {
                    MessageBox.Show("读取数据出错！补丁已损坏！退出！", "错误", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    this.Close();
                }

                if (sfis[i].type != 1)
                {
                    if (sfis[i].name.IndexOf(pa) == 0)
                    {
                        CheckFiles_A.Add(sfis[i].name);
                    }
                    else
                    {
                        CheckFiles_B.Add(sfis[i].name);
                    }
                }
            }

            ms.Close();
        }

        //关闭窗口确认
        void Form1_FormClosing(object sender, System.Windows.Forms.FormClosingEventArgs e)
        {
            if (!backgroundWorker1.IsBusy 
                || MessageBox.Show("正在生成新镜像，中断并退出？", "询问", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                backgroundWorker1.CancelAsync();

                if (backgroundWorker1.IsBusy)
                    System.Threading.Thread.Sleep(100);

                backgroundWorker1.Dispose();

                e.Cancel = false;
            }
            else
            {
                e.Cancel = true;
            }
        }

        //拖放
        void pictureBox1_DragEnter(object sender, System.Windows.Forms.DragEventArgs e)
        {
            this.BringToFront();
            if (e.Data.GetDataPresent(DataFormats.FileDrop, false))
            {
                e.Effect = DragDropEffects.All;
            }
        }
        //拖放
        void pictureBox1_DragDrop(object sender, System.Windows.Forms.DragEventArgs e)
        {
            path_iso_a = path_iso_b = null;

            string[] fileNames = (string[])e.Data.GetData(DataFormats.FileDrop);

            this.BringToFront();
            this.Activate();

            if (fileNames.Length > 2)
            {
                MessageBox.Show("拖放的文件数目多于2个！", "错误", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            int[] rst = new int[2];

            for (int i = 0; i < fileNames.Length; i++)
            {
                rst[i] = CheckISO(fileNames[i]);

                if (rst[i] == 0)
                {
                    MessageBox.Show("拖放的文件无法被支持！", "错误", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
            }

            string[] msgs = {
                "合盘版的镜像只能单独拖放！",
                "没有拖放B盘的镜像！请同时拖放两个盘的镜像！",
                "没有拖放A盘的镜像！请同时拖放两个盘的镜像！",
            };

            int t_rst = rst[0] + rst[1];
            int i_msgs;

            if (fileNames.Length == 1)
            {
                if (rst[0] == 3)
                {
                    FileInfo info = new FileInfo(fileNames[0]);
                    path_iso_a = null;
                    path_iso_b = info.FullName.ToLower();

                    i_msgs = 3;
                }
                else
                {
                    i_msgs = rst[0];
                }
            }
            else
            {
                if (rst[0] == 3 || rst[1] == 3)
                {
                    i_msgs = 0;
                }
                else
                {
                    for (int i = 0; i < fileNames.Length; i++)
                    {
                        FileInfo info = new FileInfo(fileNames[i]);
                        if (rst[i] == 1)
                        {
                            path_iso_a = info.FullName.ToLower();
                        }
                        else
                        {
                            path_iso_b = info.FullName.ToLower();
                        }
                    }

                    if (path_iso_a == null)
                    {
                        i_msgs = 2;
                    }
                    else if (path_iso_b == null)
                    {
                        i_msgs = 1;
                    }
                    else
                    {
                        i_msgs = 3;
                    }
                }
            }

            if (i_msgs < msgs.Length)
            {
                MessageBox.Show(msgs[i_msgs], "错误", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            OpenNewISO();
        }

        private void OpenNewISO()
        {
            string dir_f = Directory.GetParent(path_iso_b).FullName;

            label_text.Text = "请选择汉化版镜像的路径";

        Retry:
            SaveFileDialog sfd = new SaveFileDialog();
            sfd.Filter = "汉化版镜像(*.iso)|*.iso";
            sfd.Title = "选择汉化版镜像的保存路径...";
            sfd.FileName = DftnewFileName;
            sfd.InitialDirectory = dir_f;

            if (sfd.ShowDialog() == DialogResult.OK)
            {
                FileInfo info_new = new FileInfo(sfd.FileName);
                path_iso_new = info_new.FullName;

                if (path_iso_a == path_iso_new.ToLower() || path_iso_b == path_iso_new.ToLower())
                {
                    MessageBox.Show("请选择与日版镜像不同的文件名！", "错误", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    goto Retry;
                }
                else
                {
                    DriveInfo di = new DriveInfo(sfd.FileName.Substring(0, 3));
                    if (di.TotalFreeSpace < Size_min)
                    {
                        MessageBox.Show(string.Format("磁盘空间不足，请选择一个至少有{0:F1}GB剩余空间的分区！", Size_min / 1024 / 1024 / 1024),
                            "错误", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        goto Retry;
                    }
                }

                label_text.Text = "正在生成汉化版镜像，请耐心等待...";
                pictureBox1.AllowDrop = false;
                progressBar1.Visible = true;

                backgroundWorker1.RunWorkerAsync();
            }
            else
            {
                label_text.Text = "请将两个日版镜像一起拖放到上方的图片中";
            }
        }

        private int CheckISO(string fileName)
        {
            if (fileName.Substring(fileName.LastIndexOf('.') + 1).ToLower() != "iso")
                return 0;

            if (!File.Exists(fileName))
                return 0;

            try
            {
                LBA lba_t = new LBA(fileName);
                LBA umd = lba_t[UMD_DATA];
                if (umd == null)
                    return 0;

                System.IO.FileStream fs = System.IO.File.OpenRead(fileName);
                fs.Seek(umd.Off * LBA.ISOBlockSize, 0);
                byte[] t = new byte[id_A.Length];
                fs.Read(t, 0, t.Length);
                fs.Close();

                string s = "";
                for (int i = 0; i < t.Length; i++)
                    s += (char)t[i];

                if (s.ToUpper() == id_A)
                {
                    foreach (string cf in CheckFiles_A)
                    {
                        if (lba_t[cf.Replace(pa,pb)] == null)
                            return 0;
                    }
                    return 1;
                }
                else if (s.ToUpper() == id_B)
                {
                    foreach (string cf in CheckFiles_B)
                    {
                        if (lba_t[cf] == null)
                            return 0;
                    }

                    foreach (string cf in CheckFiles_A)
                    {
                        if (lba_t[cf] == null)
                            return 2;
                    }
                    return 3;
                }
                else
                    return 0;
            }
            catch (Exception)
            {
                return 0;
            }
        }

        void pictureBox1_MouseClick(object sender, System.Windows.Forms.MouseEventArgs e)
        {
            int p = GetPosition(e.X, e.Y);
            switch (p)
            {
                case 1:
                    OpenLink(@"http://tieba.baidu.com/f?kw=psp");
                    break;
                case 2:
                    //OpenLink(@"");
                    break;
                case 3:
                    //OpenLink(@"");
                    break;
                default:
                    break;
            }
        }

        void pictureBox1_MouseMove(object sender, System.Windows.Forms.MouseEventArgs e)
        {
            int p = GetPosition(e.X, e.Y);
            if (p > 0)
            {
                pictureBox1.Cursor = Cursors.Hand;
            }
            else
            {
                pictureBox1.Cursor = Cursors.Default;
            }
        }

        bool IsInRange(int[] range, int x, int y)
        {
            int num = range.Length / 2;
            int[] range_copy = new int[(num + 1) * 2];
            for (int i = 0; i < num; ++i)
            {
                range_copy[i * 2] = range[i * 2] - x;
                range_copy[i * 2 + 1] = range[i * 2 + 1] - y;
            }
            range_copy[2 * num] = range_copy[0];
            range_copy[2 * num + 1] = range_copy[1];

            int rant = range_copy[0] >= 0 ?
                (range_copy[1] >= 0 ? 0 : 3) :
                (range_copy[1] >= 0 ? 1 : 2);

            int result = 0;
            int j = 1;
            for (/*empty*/; j < num + 1; ++j)
            {
                if (range_copy[j * 2] == 0 && range_copy[j * 2 + 1] == 0)
                {
                    break;
                }
                int diff = range_copy[j * 2 + 1] * range_copy[j * 2 - 2]
                - range_copy[j * 2] * range_copy[j * 2 - 1];
                if (diff == 0
                    && range_copy[j * 2 - 2] * range_copy[j * 2] <= 0
                    && range_copy[j * 2 - 1] * range_copy[j * 2 + 1] <= 0)
                {
                    break;
                }

                int rant2 = range_copy[j * 2] >= 0 ?
                    (range_copy[j * 2 + 1] >= 0 ? 0 : 3) :
                    (range_copy[j * 2 + 1] >= 0 ? 1 : 2);

                if (rant2 == (rant + 1) % 4)
                {
                    result++;
                }
                else if (rant2 == (rant + 3) % 4)
                {
                    result--;
                }
                else if (rant2 == (rant + 2) % 4)
                {
                    if (diff > 0)
                    {
                        result += 2;
                    }
                    else
                    {
                        result -= 2;
                    }
                }
                rant = rant2;
            }

            if (j >= num + 1 && result == 0)
                return false;
            else
                return true;
        }

        int GetPosition(int x, int y)
        {
            if (IsInRange(PositionP, x , y))
                return 1;
            else if (IsInRange(PositionA, x, y))
                return 2;
            else if (IsInRange(PositionB, x , y))
                return 3;
            else
                return 0;
        }

        void OpenLink(string link)
        {
            try
            {
                System.Diagnostics.Process.Start(link);
            }
            catch (System.ComponentModel.Win32Exception noBrowser)
            {
                if (noBrowser.ErrorCode == -2147467259)
                    MessageBox.Show(noBrowser.Message);
            }
            catch (System.Exception other)
            {
                MessageBox.Show(other.Message);
            }
        }
    }
}