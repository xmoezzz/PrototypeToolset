#include <my.h>
#include <ft2build.h>
#include <string>
#include <vector>
#include <map>
#include "codepage.h"

#include FT_FREETYPE_H
#include FT_BITMAP_H 
#include FT_OUTLINE_H

#pragma comment(lib, "freetype28ST.lib")
#pragma comment(lib, "Opengl32.lib")
#pragma comment(lib, "Glu32.lib")

struct UniPair
{
	WCHAR Mbs;
	WCHAR Uni;

	UniPair() :
		Mbs(0), Uni(0)
	{
	}

	UniPair& operator = (const UniPair& o)
	{
		this->Mbs = o.Mbs;
		this->Uni = o.Uni;

		return *this;
	}
};

int FT_PosToInt(int x) { return (((x)+(1 << 5)) >> 6); }

int GetCharBitmap(int iCharSize, std::vector<UniPair>& CharCodeList, std::vector<BYTE>& OutBuffer, std::map<ULONG, BOOL>& CacheTable)
{
	FT_Library ftLibrary;
	FT_Error ftError = FT_Init_FreeType(&ftLibrary);
	if (ftError)
	{
		printf("Init freetype library fail!\n");
		return -1;
	}

	UINT cellW = 0;
	UINT cellH = 0;
	int maxBearing = 0;
	int minHang = 0;


	auto createPixels8 = [](UINT imgWidth, UINT imgHeight)->PBYTE
	{
		//Valid dimensions
		if (imgWidth > 0 && imgHeight > 0)
		{
			//Create pixels
			auto size = imgWidth * imgHeight;
			auto mPixels8 = new BYTE[size];
			memset(mPixels8, 0, size);

			return mPixels8;
		}
		return NULL;
	};


	auto copyPixels8 = [](BYTE* pixels, UINT imgWidth, UINT imgHeight)->PBYTE
	{
		//Pixels have valid dimensions
		if (imgWidth > 0 && imgHeight > 0)
		{
			//Copy pixels
			auto size = imgWidth * imgHeight;
			auto mPixels8 = new BYTE[size];
			memcpy(mPixels8, pixels, size);
			
			return mPixels8;
		}
		return NULL;
	};


	bool isEmptyTexture = false;

	//Load face
	FT_Face face = NULL;
	FT_Error error = FT_New_Face(ftLibrary, "simhei.ttf", 0, &face);
	if (!error)
	{
		//Set face size
		error = FT_Set_Pixel_Sizes(face, iCharSize, iCharSize);
		if (!error)
		{
			//Go through extended ASCII to get glyph data
			for (auto& Code : CharCodeList)
			{
				PBYTE currentData = NULL;
				//Load and render glyph
				error = FT_Load_Char(face, Code.Uni, FT_LOAD_RENDER);
				if (!error)
				{
					FT_Outline_Embolden(&face->glyph->outline, 2);
					//FT_Bitmap_Embolden(ftLibrary, &face->glyph->bitmap, 5, 5);  //for mono

					//Copy glyph bitmap
					currentData = copyPixels8(face->glyph->bitmap.buffer, face->glyph->bitmap.width, face->glyph->bitmap.rows);

					if (face->glyph->metrics.horiBearingY / 64 > maxBearing)
					{
						maxBearing = face->glyph->metrics.horiBearingY / 64;
					}

					//Calculate max width
					if (face->glyph->metrics.width / 64 > cellW)
					{
						cellW = face->glyph->metrics.width / 64;
					}

					//Calculate gylph hang
					int glyphHang = (face->glyph->metrics.horiBearingY - face->glyph->metrics.height) / 64;
					if (glyphHang < minHang)
					{
						minHang = glyphHang;
					}
				}
				else
				{
					printf("emtry texture -> %04x\n", Code.Uni);
					///getchar();
					///build emtry texture

					CacheTable[Code.Mbs] = false;
					currentData = createPixels8(iCharSize, iCharSize);
					isEmptyTexture = true;
				}

				auto texture = createPixels8(iCharSize, iCharSize);

				if (face->glyph->format != FT_GLYPH_FORMAT_BITMAP)
				{
					FT_Render_Glyph(face->glyph, FT_RENDER_MODE_NORMAL);
				}


				if (!isEmptyTexture)
				{
					int baseline = (int)(face->ascender) * face->size->metrics.y_ppem / face->units_per_EM;

					//int x = face->glyph->metrics.horiBearingX / 64;
					int x = (iCharSize - (face->glyph->metrics.width / 64)) / 2;
					//int y = face->glyph->bitmap_top;
					int y = face->size->metrics.ascender / 64 - face->glyph->bitmap_top;
					int w = face->glyph->bitmap.pitch;
					int h = face->glyph->bitmap.rows;

					if (y < 0)
						y = 0;
					if (h > iCharSize)
						h = iCharSize;

					if (y + h > iCharSize)
						y -= y + h - iCharSize;


					//printf("x = %d, y = %d, w = %d, h = %d\n", x, y, w, h);

					for (auto line = 0; line < h; line++)
					{
						for (auto col = 0; col < min(w, iCharSize); col++)
						{
							texture[iCharSize * y + x + col] = face->glyph->bitmap.buffer[line * w + col];
						}
						y++;
					}
				}

				delete[] currentData;

				std::vector<BYTE> Buffer(texture, texture + iCharSize * iCharSize);
				OutBuffer.insert(OutBuffer.end(), Buffer.begin(), Buffer.end());
				delete[] texture;
			}
		}
		else
		{
			printf("Unable to set font size. FreeType error:%X\n", error);
		}
		FT_Done_Face(face);
	}
	else
	{
		printf("Unable to load load font face. FreeType error:%X\n", error);
		return false;
	}

	FT_Done_FreeType(ftLibrary);
	return true;
}


#pragma pack(1)
struct FntHeader
{
	WORD  Width;
	WORD  Height;
	DWORD CharCnt;
	BYTE  BitType; //see "Reverse/font/font.c"
	BYTE Padding[7];
};

//profile
struct ProHeader
{
	ULONG Count;
	ULONG Unused[3];
};

struct ProEntry
{
	BYTE x;
	BYTE y;
	BYTE Size;
};
#pragma pack()


__inline std::wstring GenFileName(LPCWSTR FileName, int Size, bool IsFont = true)
{
	std::wstring name(FileName);
	std::wstring result;

	WCHAR SizeString[16] = { 0 };
	
	auto index = name.find_last_of(L'.');
	if (index != std::wstring::npos)
		result = name.substr(0, index);
	else
		result = name;

	wsprintfW(SizeString, L"%u", Size);
	result.append(SizeString);
	
	if (IsFont)
		result.append(L".fnt");
	else
		result.append(L".pro");

	return result;
}


////this program is useless for English and some other western languages,
////because sjis holds the all (or mostly) characters you need.
////the data structure of *.fnt file is very sample, so I won't write any extra documents about it.
int _tmain(int argc, _TCHAR* argv[])
{
	std::vector<BYTE> OutBuffer;
	std::vector<UniPair> PairList;
	
	std::map<ULONG, BOOL> CacheTable;

	std::wstring FntName, ProName;

	///create binary file
	///on psp, the size is 16
	///on psv, the size is 32
	///...
	for (auto idx = 0x20; idx < 0x7F; idx++)
	{
		UniPair Pair;
		Pair.Uni = idx;
		Pair.Mbs = idx;

		CacheTable.insert(std::make_pair(Pair.Mbs, true));
		PairList.push_back(Pair);
	}

	ULONG i = 0;
	while (gbk_2_utf16_org[i][0] && gbk_2_utf16_org[i][1])
	{
		if (gbk_2_utf16_org[i][1] != 0 && gbk_2_utf16_org[i][1] != 0xffffu)
		{
			UniPair Pair;
			Pair.Mbs = gbk_2_utf16_org[i][0];
			Pair.Uni = gbk_2_utf16_org[i][1];

			CacheTable.insert(std::make_pair(Pair.Mbs, true));
			PairList.push_back(Pair);
		}
		i++;
	}

	if (argc > 2)
	{
		GetCharBitmap(32, PairList, OutBuffer, CacheTable);  //psv
		FntName = GenFileName(L"gothp.ttf", 32);
		ProName = GenFileName(L"gothp.ttf", 32, false);
	}
	else
	{
		GetCharBitmap(16, PairList, OutBuffer, CacheTable);
		FntName = GenFileName(L"gothp.ttf", 16);
		ProName = GenFileName(L"gothp.ttf", 16, false);
	}

	auto file = _wfopen(FntName.c_str(), L"wb");
	if (!file)
		return 0;
	
	//24 bit : byte value = (byte)(0.299 * R + 0.587 * G + 0.114 * B);

	//Down Quantization
	//works fine with font bitmap...
	auto pixel_idx = 0;
	for (auto idx = 0; idx < OutBuffer.size(); idx += 2)
	{
		BYTE TargetPixel;
		TargetPixel   = OutBuffer[idx + 0] / 16;
		TargetPixel  |= (OutBuffer[idx + 1] / 16) << 4;

		OutBuffer[pixel_idx] = TargetPixel;
		pixel_idx++;
	}

	FntHeader Header = {0};

	if (argc > 2)
		Header.Height = Header.Width = 32;
	else
		Header.Height = Header.Width = 16;


	///font data field = Header.CharCnt * sizeof(UINT16) + sizeof(Header)
	Header.CharCnt = PairList.size();
	fwrite(&Header, 1, sizeof(Header), file);

	for (auto& Item : PairList)
		fwrite(&Item.Mbs, 1, sizeof(Item.Mbs), file);
	
	///is too big for PSP? 
	///I never do ANY research about PSP kernel.
	fwrite(OutBuffer.data(), 1, OutBuffer.size() / 2, file);
	fclose(file);


	///create profile data
	file = _wfopen(ProName.c_str(), L"wb");
	if (!file)
		return 0;

	ProHeader pro_hd = { 0 };
	fwrite(&pro_hd, 1, sizeof(pro_hd), file);

	ProEntry entry = { 0 };
	for (auto i = 0; i < 0x100; i++)
	{
		fwrite(&entry.x, 1, sizeof(entry.x), file);
		fwrite(&entry.y, 1, sizeof(entry.y), file);

		entry.Size = 0;
		auto item = CacheTable.find(i);
		if (item == CacheTable.end())
			entry.Size = 0;
		else if (item->second == false)
			entry.Size = 0;
		else if (item->second)
			entry.Size = Header.Width;

		fwrite(&entry.Size, 1, sizeof(entry.Size), file);
		pro_hd.Count++;
	}

	for (auto i = 0x8140; i < 0xFEFE; i++)
	{
		fwrite(&entry.x, 1, sizeof(entry.x), file);
		fwrite(&entry.y, 1, sizeof(entry.y), file);

		entry.Size = 0;
		auto item = CacheTable.find(i);
		if (item == CacheTable.end())
			entry.Size = 0;
		else if (item->second == false)
			entry.Size = 0;
		else if (item->second)
			entry.Size = Header.Width;

		fwrite(&entry.Size, 1, sizeof(entry.Size), file);
		pro_hd.Count++;
	}
	rewind(file);
	fwrite(&pro_hd, 1, sizeof(pro_hd), file);
	fclose(file);

	return 0;
}

