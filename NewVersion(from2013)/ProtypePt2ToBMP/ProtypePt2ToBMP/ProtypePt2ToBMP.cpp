#include "stdafx.h"
#include <my.h>
#include <vector>
#include <string>
#include "json/json.h"

#pragma comment(lib, "lib_json.lib")

#pragma pack(1)
typedef struct _PT2_TEXTURE
{
	WORD  Type;
	WORD  Offset;
	WORD  Width;
	WORD  Height;
	BYTE  X;  
	BYTE  Y;
	BYTE  Unknown[6];
}PT2_TEXTURE, *PPT2_TEXTURE;

typedef struct _PT2_SPRITE
{
	DWORD cbSize; //structure size
	DWORD BitCount;
	DWORD DataSize;
	WORD  Width;
	WORD  Height;
}PT2_SPRITE, *PPT2_SPRITE;
#pragma pack()

struct TexturePart
{
	void assgin(const PT2_SPRITE* texture)
	{
		cbSize = texture->cbSize;
		BitCount = texture->BitCount;
		DataSize = texture->DataSize;
		Width = texture->Width;
		Height = texture->Height;
	}

	TexturePart& operator = (const TexturePart& O)
	{
		cbSize = O.cbSize;
		BitCount = O.BitCount;
		DataSize = O.DataSize;
		Width = O.Width;
		Height = O.Height;

		return *this;
	}

	DWORD cbSize;
	DWORD BitCount;
	DWORD DataSize;
	WORD  Width;
	WORD  Height;

	ULONG x, y;
};


BYTE* decompress_type1(BYTE *InBuffer, BYTE *out_buffer)
{
	BYTE *v2; 
	BYTE CtrlByte; 
	BYTE *compress_cur; 
	int size; 
	int v6;
	unsigned int flag; 
	BYTE *curByte; 
	BYTE tmp; 
	int v10;
	int v11;
	int v12; 
	int v13;
	BYTE *CopyData;
	int v15;
	int TotalSize;
	BYTE tmp_1; 
	int v18;
	BYTE v19;
	int v20;

	v2 = InBuffer;
	CtrlByte = InBuffer[3];
	compress_cur = InBuffer + 4;
	v19 = CtrlByte & 0xF;
	size = (*(PDWORD)InBuffer) & 0xFFFFFF;
	v18 = (1 << (CtrlByte & 0xF)) - 1;
	v6 = -1;
	if (CtrlByte & 0x40)
		v6 = (1 << (CtrlByte & 0xF)) - 1;
	flag = 0xFFFF;
	if (size > 0)
	{
		v20 = v6;
		do
		{
			if (flag == 0xFFFF)
			{
				flag = (*compress_cur | 0xFFFF0000) & 0xFFFF00FF | (compress_cur[1] << 8);
				compress_cur += 2;
			}
			curByte = compress_cur;
			if (flag & 1)
			{
				tmp = *compress_cur++;
				*out_buffer++ = tmp;
				--size;
			}
			else
			{
				v10 = *compress_cur | (compress_cur[1] << 8);
				v12 = v10 >> v19;
				v11 = v10 >> v19 == 0;
				v13 = v10 & v18;
				compress_cur += 2;
				if (v11)
				{
					compress_cur = curByte + 4;
					v12 = curByte[2] | (curByte[3] << 8);
				}
				CopyData = &out_buffer[-v12];
				if (v13 == v20)
				{
					v15 = *compress_cur++;
					v13 = v15 + v20;
				}
				TotalSize = v13 + 3;
				for (size -= TotalSize; TotalSize > 0; ++out_buffer)
				{
					tmp_1 = *CopyData++;
					--TotalSize;
					*out_buffer = tmp_1;
				}
			}
			flag >>= 1;
		} while (size > 0);
	}
	return compress_cur;
}


std::wstring GenFileName(std::wstring basename, ULONG x, ULONG y, ULONG w, ULONG h, bool IsJson = false)
{
	std::wstring base;
	WCHAR        fullname[MAX_PATH] = { 0 };

	auto idx = basename.find_last_of(L'.');
	if (idx != basename.npos)
		base = basename.substr(0, idx);
	else
		base = basename;

	if (!IsJson)
	{
		wsprintfW(fullname, L"%s_%i_%i_%i_%i.bmp",
			base.c_str(),
			x,
			y,
			w,
			h);
	}
	else
	{
		wsprintfW(fullname, L"%s.json", base.c_str());
	}

	return fullname;
}

std::wstring GenBaseName(std::wstring name)
{
	for (auto& ch : name)
		if (ch == L'/')
			ch = L'\\';

	auto idx = name.find_last_of(L'\\');
	if (idx != name.npos)
		return name.substr(idx + 1, name.npos);

	return name;
}

void AlphaBlend(BYTE* dib, int width, int height)
{
	auto p = dib;
	for (int i = 0; i < width*height; i++)
	{
		p[0] = p[0] * p[3] / 255 + 255 - p[3];
		p[1] = p[1] * p[3] / 255 + 255 - p[3];
		p[2] = p[2] * p[3] / 255 + 255 - p[3];
		p += 4;
	}
}


std::string tostring(ULONG i)
{
	CHAR        fullname[MAX_PATH] = { 0 };

	wsprintfA(fullname, "%u", i);
	return fullname;
}

//8104939A decode_pt2_image
int _tmain(int argc, _TCHAR* argv[])
{
	if (argc < 2)
		return 0;

	FILE* file = _wfopen(argv[1], L"rb");
	if (!file)
		return 0;

	PT2_TEXTURE Header = { 0 };
	fread(&Header, 1, sizeof(Header), file);
	fseek(file, Header.Offset, SEEK_SET);

	std::vector<TexturePart> PartList;
	ULONG TotalOffset = 0;

	///load parts...
	///optimization for low memory device(PSP)
	for (int y = 0; y < Header.Y; y++)
	{
		for (int x = 0; x < Header.X; x++)
		{
			PT2_SPRITE Part = { 0 };
			TexturePart Entry;
			fread(&Part, 1, sizeof(Part), file);
			Entry.assgin(&Part);

			Entry.x = x;
			Entry.y = y;
			PartList.push_back(Entry);
			TotalOffset += Part.cbSize;
		}
	}
	TotalOffset += Header.Offset;
	fseek(file, TotalOffset, SEEK_SET);

	Json::Value root;
	for (auto& Entry : PartList)
	{
		PBYTE Buffer = new BYTE[Entry.DataSize];
		fread(Buffer, 1, Entry.DataSize, file);

		PBYTE NewBuffer = new BYTE[Entry.Width * Entry.Height * 2 * Entry.BitCount / 8];
		
		printf("Entry (%u - %u) : %u, %u\n", Entry.x, Entry.y, Entry.Width, Entry.Height);
		switch (Header.Type)
		{
		case 256:
			decompress_type1(Buffer, NewBuffer);
			break;

		//related to CG...
		case 257:
			printf("Unsupported type. (257)\n");
			return 0;
		case 258:
			printf("Unsupported type. (258)\n");
			return 0;
		default:
			printf("Unsupported type.\n");
			return 0;
		}

		delete[] Buffer;
		
		Json::Value entry;

		entry["x"] = tostring(Entry.x);
		entry["y"] = tostring(Entry.y);
		entry["width"] = tostring(Entry.Width);
		entry["height"] = tostring(Entry.Height);
		entry["bit"] = tostring(Entry.BitCount);

		std::wstring name = GenFileName(argv[1], Entry.x, Entry.y, Entry.Width, Entry.Height);
		std::wstring basename = GenBaseName(name);
		CHAR utf8name[400] = { 0 };
		WideCharToMultiByte(CP_UTF8, 0, basename.c_str(), basename.length(), utf8name, _countof(utf8name) - 1, 0, 0);
		entry["name"] = utf8name;
		root.append(entry);

		FILE* writer = _wfopen(name.c_str(), L"wb");
		if (writer == NULL)
			return 0;

		BITMAPFILEHEADER bmp = {0};
		if (Entry.BitCount == 8)
			bmp.bfOffBits = 0x436;
		else
			bmp.bfOffBits = 0x36;
		bmp.bfSize = ((Entry.Width *(Entry.BitCount / 8) + 3)&~3) * Entry.Height + bmp.bfOffBits;
		bmp.bfType = 'MB';

		fwrite(&bmp, 1, sizeof(bmp), writer);

		BITMAPINFOHEADER Info = { 0 };
		Info.biBitCount = Entry.BitCount;
		Info.biHeight = -Entry.Height;
		Info.biWidth = Entry.Width;
		Info.biPlanes = 1;
		Info.biSize = 0x28;
		Info.biSizeImage = bmp.bfSize - bmp.bfOffBits;

		fwrite(&Info, 1, sizeof(Info), writer);

		BYTE grey[0x400];
		PBYTE p = &grey[0];
		for (int i = 0; i < 0x100; i++)
		{
			p[0] = p[1] = p[2] = i;
			p[3] = 0;
			p += 4;
		}

		if (Entry.BitCount == 8)
			fwrite(grey, 1, sizeof(grey), writer);

		if (Entry.BitCount == 32)
			AlphaBlend(NewBuffer, Entry.Width, Entry.Height);

		fwrite(NewBuffer, 1, Entry.Width * Entry.Height * Entry.BitCount / 8, writer);
		fclose(writer);

		delete[] NewBuffer;
	}

	auto jsonname = GenFileName(argv[1], 0, 0, 0, 0, true);
	FILE* json = _wfopen(jsonname.c_str(), L"wb");
	auto jsonstr = root.toStyledString();
	fwrite(jsonstr.data(), 1, jsonstr.length(), json);
	fclose(json);
	return 0;
}

