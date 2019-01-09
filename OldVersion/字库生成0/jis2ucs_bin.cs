using System;
using System.Collections.Generic;
using System.Text;

namespace 字库生成0
{
    /// <summary>
    /// jis2ucs.bin文件信息
    /// </summary>
    public class jis2ucs_bin
    {
        //这两个方法的offset是相对jis2uni这个文件的

        /// <summary>
        /// 某JIS在文件中的偏移
        /// </summary>
        /// <param name="JIS"></param>
        /// <returns></returns>
        public static int JIS2Offset(int JIS)
        {
            int JIS_h = JIS >> 8;
            int JIS_l = JIS & 0xFF;

            int offset;

            if (JIS_h < 0x81 || JIS_h > 0xFC || (JIS_h > 0x9F && JIS_h < 0xE0) || JIS_l < 0x40 || JIS_l == 0x7F || JIS_l > 0xFC || JIS > 0xEAA4)
                throw new Exception("Not a Shift-JIS code!");

            if (JIS_h >= 0xE0)
                JIS_h -= (0xE0 - 0xA0);

            JIS_h -= 0x81;

            if (JIS_l >= 0x9F)
                offset = ((0x44 + JIS_h * 4) << 8) + 0x42;
            else
                offset = ((0x42 + JIS_h * 4) << 8) + 0x42;

            if (JIS_l >= 0x9F)
                JIS_l -= 0x9F;
            else if (JIS_l > 0x7F)
                JIS_l -= 0x41;
            else
                JIS_l -= 0x40;

            offset += JIS_l * 2;

            return offset;
        }

        /// <summary>
        /// 某偏移对应的JIS值
        /// </summary>
        /// <param name="offset"></param>
        /// <returns></returns>
        public static int Offset2JIS(int offset) //从offset到jis
        {
            if (offset < 0x4242 || offset >= 0xE84E || (offset & 0xFF) >= 0xFE || (offset & 0xFF) < 0x42 || (offset >> 8) % 2 != 0)
                throw new Exception("Wrong Offset!");

            int JIS_h, JIS_l;

            JIS_h = 0x81 + ((offset - 0x4242) / 0x400);
            if (JIS_h >= 0xA0)
                JIS_h += 0xE0 - 0xA0;

            JIS_l = ((offset & 0xFF) - 0x42) / 2;
            if ((offset >> 8) % 4 == 0)
                JIS_l += 0x9F;
            else
            {
                JIS_l += 0x40;
                if (JIS_l >= 0x7F)
                    JIS_l += 1;
            }

            return (JIS_h << 8) + JIS_l;
        }
    }
}
