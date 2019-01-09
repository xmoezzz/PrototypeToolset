#include "stdafx.h"
#include <stdint.h>
#include <windows.h>
#include <string>
#include <my.h>
#include <map>

namespace CRC32
{
uint32_t poly8_lookup[256] =
{
 0, 0x77073096, 0xEE0E612C, 0x990951BA,
 0x076DC419, 0x706AF48F, 0xE963A535, 0x9E6495A3,
 0x0EDB8832, 0x79DCB8A4, 0xE0D5E91E, 0x97D2D988,
 0x09B64C2B, 0x7EB17CBD, 0xE7B82D07, 0x90BF1D91,
 0x1DB71064, 0x6AB020F2, 0xF3B97148, 0x84BE41DE,
 0x1ADAD47D, 0x6DDDE4EB, 0xF4D4B551, 0x83D385C7,
 0x136C9856, 0x646BA8C0, 0xFD62F97A, 0x8A65C9EC,
 0x14015C4F, 0x63066CD9, 0xFA0F3D63, 0x8D080DF5,
 0x3B6E20C8, 0x4C69105E, 0xD56041E4, 0xA2677172,
 0x3C03E4D1, 0x4B04D447, 0xD20D85FD, 0xA50AB56B,
 0x35B5A8FA, 0x42B2986C, 0xDBBBC9D6, 0xACBCF940,
 0x32D86CE3, 0x45DF5C75, 0xDCD60DCF, 0xABD13D59,
 0x26D930AC, 0x51DE003A, 0xC8D75180, 0xBFD06116,
 0x21B4F4B5, 0x56B3C423, 0xCFBA9599, 0xB8BDA50F,
 0x2802B89E, 0x5F058808, 0xC60CD9B2, 0xB10BE924,
 0x2F6F7C87, 0x58684C11, 0xC1611DAB, 0xB6662D3D,
 0x76DC4190, 0x01DB7106, 0x98D220BC, 0xEFD5102A,
 0x71B18589, 0x06B6B51F, 0x9FBFE4A5, 0xE8B8D433,
 0x7807C9A2, 0x0F00F934, 0x9609A88E, 0xE10E9818,
 0x7F6A0DBB, 0x086D3D2D, 0x91646C97, 0xE6635C01,
 0x6B6B51F4, 0x1C6C6162, 0x856530D8, 0xF262004E,
 0x6C0695ED, 0x1B01A57B, 0x8208F4C1, 0xF50FC457,
 0x65B0D9C6, 0x12B7E950, 0x8BBEB8EA, 0xFCB9887C,
 0x62DD1DDF, 0x15DA2D49, 0x8CD37CF3, 0xFBD44C65,
 0x4DB26158, 0x3AB551CE, 0xA3BC0074, 0xD4BB30E2,
 0x4ADFA541, 0x3DD895D7, 0xA4D1C46D, 0xD3D6F4FB,
 0x4369E96A, 0x346ED9FC, 0xAD678846, 0xDA60B8D0,
 0x44042D73, 0x33031DE5, 0xAA0A4C5F, 0xDD0D7CC9,
 0x5005713C, 0x270241AA, 0xBE0B1010, 0xC90C2086,
 0x5768B525, 0x206F85B3, 0xB966D409, 0xCE61E49F,
 0x5EDEF90E, 0x29D9C998, 0xB0D09822, 0xC7D7A8B4,
 0x59B33D17, 0x2EB40D81, 0xB7BD5C3B, 0xC0BA6CAD,
 0xEDB88320, 0x9ABFB3B6, 0x03B6E20C, 0x74B1D29A,
 0xEAD54739, 0x9DD277AF, 0x04DB2615, 0x73DC1683,
 0xE3630B12, 0x94643B84, 0x0D6D6A3E, 0x7A6A5AA8,
 0xE40ECF0B, 0x9309FF9D, 0x0A00AE27, 0x7D079EB1,
 0xF00F9344, 0x8708A3D2, 0x1E01F268, 0x6906C2FE,
 0xF762575D, 0x806567CB, 0x196C3671, 0x6E6B06E7,
 0xFED41B76, 0x89D32BE0, 0x10DA7A5A, 0x67DD4ACC,
 0xF9B9DF6F, 0x8EBEEFF9, 0x17B7BE43, 0x60B08ED5,
 0xD6D6A3E8, 0xA1D1937E, 0x38D8C2C4, 0x4FDFF252,
 0xD1BB67F1, 0xA6BC5767, 0x3FB506DD, 0x48B2364B,
 0xD80D2BDA, 0xAF0A1B4C, 0x36034AF6, 0x41047A60,
 0xDF60EFC3, 0xA867DF55, 0x316E8EEF, 0x4669BE79,
 0xCB61B38C, 0xBC66831A, 0x256FD2A0, 0x5268E236,
 0xCC0C7795, 0xBB0B4703, 0x220216B9, 0x5505262F,
 0xC5BA3BBE, 0xB2BD0B28, 0x2BB45A92, 0x5CB36A04,
 0xC2D7FFA7, 0xB5D0CF31, 0x2CD99E8B, 0x5BDEAE1D,
 0x9B64C2B0, 0xEC63F226, 0x756AA39C, 0x026D930A,
 0x9C0906A9, 0xEB0E363F, 0x72076785, 0x05005713,
 0x95BF4A82, 0xE2B87A14, 0x7BB12BAE, 0x0CB61B38,
 0x92D28E9B, 0xE5D5BE0D, 0x7CDCEFB7, 0x0BDBDF21,
 0x86D3D2D4, 0xF1D4E242, 0x68DDB3F8, 0x1FDA836E,
 0x81BE16CD, 0xF6B9265B, 0x6FB077E1, 0x18B74777,
 0x88085AE6, 0xFF0F6A70, 0x66063BCA, 0x11010B5C,
 0x8F659EFF, 0xF862AE69, 0x616BFFD3, 0x166CCF45,
 0xA00AE278, 0xD70DD2EE, 0x4E048354, 0x3903B3C2,
 0xA7672661, 0xD06016F7, 0x4969474D, 0x3E6E77DB,
 0xAED16A4A, 0xD9D65ADC, 0x40DF0B66, 0x37D83BF0,
 0xA9BCAE53, 0xDEBB9EC5, 0x47B2CF7F, 0x30B5FFE9,
 0xBDBDF21C, 0xCABAC28A, 0x53B39330, 0x24B4A3A6,
 0xBAD03605, 0xCDD70693, 0x54DE5729, 0x23D967BF,
 0xB3667A2E, 0xC4614AB8, 0x5D681B02, 0x2A6F2B94,
 0xB40BBE37, 0xC30C8EA1, 0x5A05DF1B, 0x2D02EF8D
};

ULONG GetFileNameHash(std::string str, ULONG j) 
{
	for (auto& ch : str)
	{
		if (ch == '\\')
			ch = '/';
		else
			ch = CHAR_UPPER(ch);
	}

	size_t length = str.length();
	size_t i = 0;
	ULONG crc = j;
	while (i < length)
	{
		i++;
		crc = poly8_lookup[((uint8_t)crc ^ (str[i] & 0xFF))] ^ (crc >> 8);
	}
	return crc;
}
};

//0x10
#pragma pack(1)
typedef struct _TblHeader
{
	USHORT TblMagic;
	USHORT TblBase; //sizeof header
	DWORD  EntryCount;
	USHORT TblUnknown;
	USHORT TblNameShifter;
	DWORD  TblHashSeed;
	//DWORD TblHashCheck;
	//DWORD Padding[3];
}TblHeader;
#pragma pack()

bool FASTCALL initTblHeader(TblHeader* header, PBYTE Buffer)
{
	memcpy(header, Buffer, sizeof(TblHeader));

	//return header->TblMagic == 20560; //sometimes only check the 1st byte...
	return true;
}


ULONG FASTCALL getEntryInfo(PBYTE paramArrayOfByte, int paramInt1, int paramInt2)
{
		int i1 = 0;
		int i3 = paramInt1 >> 3;
		int i2 = paramInt1 & 0x7;
		paramInt1 = paramInt2;
		paramInt2 = i3;
		
		LOOP_FOREVER
		{
			if (paramInt1 <= 0) 
				return i1;

			int i4 = 8 - i2;
			i3 = i4;

			if (i4 > paramInt1) 
				i3 = paramInt1;

			i1 |= (paramArrayOfByte[paramInt2] & 0xFF & (1 << 8 - i2) - 1) >> 8 - i2 - i3 << paramInt1 - i3;
			paramInt1 -= i3;
			paramInt2 += 1;
			i2 = 0;
		}
}


ULONG FASTCALL getNameHashByIndex(PBYTE Buffer, TblHeader* header, ULONG i)
{
	return getEntryInfo(Buffer, ((header->TblBase * 8) + (i * 77)) + 0, 28);
}


static std::map<std::string, FILE*> pckList;

bool FASTCALL getFileBufferInternal(std::string& packName, ULONG Offset, ULONG Size, PBYTE& FileBuffer, ULONG& FileSize)
{
	FileBuffer = NULL;
	FileSize = 0;

	FILE* file;

	auto Item = pckList.find(packName);
	if (Item == pckList.end())
	{
		auto fileHandle = fopen(packName.c_str(), "rb");
		if (fileHandle == NULL)
			return false;
		
		pckList[packName] = fileHandle;
		file = fileHandle;
	}
	else
	{
		file = Item->second;
	}

	printf("Offset = %08x, Size = %08x\n", Offset, Size);

	fseek(file, Offset, SEEK_SET);
	FileBuffer = (PBYTE)HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, Size);
	if (FileBuffer == NULL)
		return false;
	
	fread(FileBuffer, 1, Size, file);
	FileSize = Size;
	return true;
}

bool FASTCALL getFileBuffer(std::string& tblstr, std::string& str, PBYTE Buffer, TblHeader* header, PBYTE& FileBuffer, ULONG& FileSize)
{

	//sub_81037466
	ULONG namehash = CRC32::GetFileNameHash(str, header->TblHashSeed); //get name hash(upper case, start from '\')
	ULONG i = (header->TblNameShifter >> 1) & 31;
	ULONG i2 = (((namehash >> i) | (namehash << (32 - i))) & 0xFFFFFFF);


	ULONG i3 = header->EntryCount - 1;
	ULONG i4 = 0;

	//sub_81036F16 hash binary search
	//entry was sorted by hash
	while (i4 != i3 && getNameHashByIndex(Buffer, header, i4) != i2)
	{	
		i = (i4 + i3) / 2;
		if (i4 == i)
			break;
		else if (getNameHashByIndex(Buffer, header, i) > i2)
			i3 = i;
		else 
			i4 = i;
	}
			
	if (getNameHashByIndex(Buffer, header, i4) == i2) 
	{
		i3 = i4;
	}
	else if (getNameHashByIndex(Buffer, header, i3) != i2) 
	{
		FileBuffer = NULL;
		FileSize = 0;
		return false;
	}

	BYTE FileIdx = (BYTE)getEntryInfo(Buffer, ((header->TblBase * 8) + (i3 * 77)) + 28, 4);
	ULONG Offset = getEntryInfo(Buffer, ((header->TblBase * 8) + (i3 * 77)) + 32, 20) * 2048; //2048 = one sector
	ULONG Size   = getEntryInfo(Buffer, ((i3 * 77) + (header->TblBase * 8)) + 52, 25);

	std::string baseName = tblstr.substr(0, tblstr.length() - 4);
	char baseNameNum[4] = { 0 };
	sprintf_s(baseNameNum, countof(baseNameNum), "%02d", FileIdx);
	std::string PackName = baseName + baseNameNum;
	PackName += ".pak";

	return getFileBufferInternal(PackName, Offset, Size, FileBuffer, FileSize);
}


bool getFileBufferForExtract(ULONG i3 /*index*/, std::string& str, PBYTE Buffer, TblHeader* header, PBYTE& FileBuffer, ULONG& FileSize)
{
	BYTE FileIdx = (BYTE)getEntryInfo(Buffer, ((header->TblBase * 8) + (i3 * 77)) + 28, 4);
	ULONG Offset = getEntryInfo(Buffer, ((header->TblBase * 8) + (i3 * 77)) + 32, 20) * 2048; //2048 = one sector
	ULONG Size = getEntryInfo(Buffer, ((i3 * 77) + (header->TblBase * 8)) + 52, 25);

	std::string baseName = str.substr(0, str.length() - 4);
	char baseNameNum[4] = { 0 };
	sprintf_s(baseNameNum, countof(baseNameNum), "%02d", FileIdx);
	std::string PackName = baseName + baseNameNum;
	PackName += ".pak";

	if (Size == 0)
	{
		FileBuffer = 0;
		Size = 0;
		return false;
	}

	return getFileBufferInternal(PackName, Offset, Size, FileBuffer, FileSize);
}


static PBYTE TblBuffer = NULL;
static ULONG TblSize = 0;
static TblHeader Header = {0};

void finalizeExtract()
{
	for (auto& Entry : pckList)
	{
		if (Entry.second)
		{
			fclose(Entry.second);
			Entry.second = NULL;
		}
	}
	pckList.clear();
	if (TblBuffer)
	{
		HeapFree(GetProcessHeap(), 0, TblBuffer);
		TblBuffer = NULL;
	}
	TblSize = 0;
}

bool initializeExtract(LPCWSTR TblName)
{
	if (!TblName || !TblName[0])
		return false;

	auto file = _wfopen(TblName, L"rb");
	if (!file)
		return false;

	fseek(file, 0, SEEK_END);
	TblSize = ftell(file);
	rewind(file);
	TblBuffer = (PBYTE)HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, TblSize);
	if (TblBuffer == NULL)
	{
		TblSize = 0;
		return false;
	}
	fread(TblBuffer, 1, TblSize, file);
	fclose(file);
	return true;
}


std::string FASTCALL getExtensionNameFromBuffer(PBYTE Buffer, ULONG Size)
{
	if (!Buffer || !Size)
		return std::string("");

	DWORD dwTag = *(PDWORD)Buffer;

	if (Size > 4 && !memcmp(Buffer, "OggS", 4))
		return "ogg";
	else if (Size > 4 && !memcmp(Buffer, "RIFF", 4))
		return "wav";
	else if (Size > 4 && dwTag == 0x00011804)
		return "psb";

	return std::string("");
}

int _tmain(int argc, _TCHAR* argv[])
{
	if (argc != 2)
		return 0;
	
	if (!initializeExtract(argv[1]))
		return 0;

	LOOP_ONCE
	{
		if (!initTblHeader(&Header, TblBuffer))
			break;

		PBYTE Buffer = 0;
		ULONG Size = 0;

		CreateDirectoryW(L"./extract", NULL);

		char _TblName[260] = {0};
		WideCharToMultiByte(0, 0, argv[1], wcslen(argv[1]), _TblName, countof(_TblName), 0, 0);
		std::string TblName = _TblName;

		printf("File count : %d\n", Header.EntryCount);
		for (ULONG idx = 0; idx < Header.EntryCount; idx++)
		{
			if (!getFileBufferForExtract(idx, TblName, TblBuffer, &Header, Buffer, Size))
				continue;
			
			if (!Buffer || !Size)
				continue;

			char FileName[260] = { 0 };
			auto ExtName = getExtensionNameFromBuffer(Buffer, Size);

			if (ExtName.length())
				sprintf(FileName, "%08x.%s", getNameHashByIndex(TblBuffer, &Header, idx), ExtName.c_str());
			else
				sprintf(FileName, "%08x.bin", getNameHashByIndex(TblBuffer, &Header, idx));

			std::string FullPath = std::string("./extract/") + FileName;

			printf("writing %s\n", FullPath.c_str());
			FILE* writer = fopen(FullPath.c_str(), "wb");
			fwrite(Buffer, 1, Size, writer);
			fclose(writer);

			if (Buffer)
				HeapFree(GetProcessHeap(), 0, Buffer);

			Buffer = NULL;
		}

	}
	
	finalizeExtract();
	return 0;
}

