using System;
using System.Collections.Generic;
using System.Text;
using PSP_LBA;

namespace 汉化补丁
{
    class SubFileInfo
    {
        public string name;

        public int off;
        public int size;

        public uint crc32;

        public int off_source;

        public LBA lba;

        public byte type;

        public PAK_subs pak_subs;

        public System.IO.Stream Source_Stream;
    }

    class PAK_subs
    {
        public string PAKname;
        public Pak pak;
        public int num;

        public Sub[] subs;

        public struct Sub
        {
            public int id;
            public int off;
            public int size;
        }
    }
}
