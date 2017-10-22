using System;
using System.Collections.Generic;
using System.Text;

namespace 补丁准备
{
    /// <summary>
    /// CRC32
    /// </summary>
    public static class Crc32
    {
        private static uint[] crc32table;

        static void GetCrc32Table()
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

        static Crc32()
        {
            GetCrc32Table();
        }

        /// <summary>
        /// 获取字节数组的CRC32
        /// </summary>
        /// <param name="b">需要计算CRC32的字节数组</param>
        /// <param name="start">起点</param>
        /// <param name="count">字节数</param>
        /// <returns></returns>
        public static uint GetCrc32FromByteArray(byte[] b, int start, int count)
        {
            uint value = 0xFFFFFFFF;
            for (int i = 0; i < count; i++)
            {
                value = (value >> 8) ^ crc32table[(value ^ b[start + i]) & 0xFF];
            }

            value ^= 0xFFFFFFFF;
            return value;
        }

        /// <summary>
        /// 获取字节数组的CRC32
        /// </summary>
        /// <param name="b">需要计算CRC32的字节数组</param>
        /// <returns></returns>
        public static uint GetCrc32FromByteArray(byte[] b)
        {
            return GetCrc32FromByteArray(b, 0, b.Length);
        }

        /// <summary>
        /// 计算流中指定字节数的CRC32
        /// </summary>
        /// <param name="stream">需要计算CRC32的流</param>
        /// <param name="count">需要计算的字节数</param>
        /// <returns></returns>
        public static uint GetCrc32FromStream(System.IO.Stream stream, int count)
        {
            //缓冲大小
            const int buffsize = 4 * 1024;

            uint value = 0xFFFFFFFF;
            while (count > 0)
            {
                int size = count > buffsize ? buffsize : count;
                byte[] buff = new byte[size];
                stream.Read(buff, 0, size);
                for (int i = 0; i < size; i++)
                {
                    value = (value >> 8) ^ crc32table[(value ^ buff[i]) & 0xFF];
                }
                count -= buffsize;
            }

            value ^= 0xFFFFFFFF;
            return value;
        }
    }
}
