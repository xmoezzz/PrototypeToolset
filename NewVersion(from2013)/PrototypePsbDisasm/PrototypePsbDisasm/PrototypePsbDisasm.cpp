#include <stdio.h>
#include <string>
#include <stdint.h>
#include <vector>
#include <Windows.h>
#include <map>

#pragma warning(disable : 4996)

#pragma pack(1)
typedef struct _PsbHeader
{
	uint16_t  EntryPoint;
	uint16_t  SizeOfStruct; //0x10
	uint32_t  Crc32; //seem not checked?
	uint32_t  Unk;
	uint32_t  TalkCount;
} PsbHeader;
#pragma pack()



typedef void(*CmdParseRoutine)(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size);

void cmdSetTitle(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdSetTitle\r\n", cur_pos);
}

void cmdSetChapter(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdSetChapter\r\n", cur_pos);
}

void cmdGetPrefont(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdGetPrefont\r\n", cur_pos);
}


void cmdGetPreLoad(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdGetPrefont\r\n", cur_pos);
}

void cmdFarcall(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdFarcall\r\n", cur_pos);
}

void cmdFarreturn(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdFarreturn\r\n", cur_pos);
}

void cmdWaitBgm(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdWaitBgm\r\n", cur_pos);
}

void cmdSyscall(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdSyscall\r\n", cur_pos);
}

void cmdJmp(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdJmp\r\n", cur_pos);
}

void cmdFarJmp(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdFarJmp\r\n", cur_pos);
}

void cmdWait(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdWait\r\n", cur_pos);
}

void cmdMsg(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdMsg\r\n", cur_pos);
}

void cmdMsgStart(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdMsgStart\r\n", cur_pos);
}

void cmdMsgWaitButton(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdMsgWaitButton\r\n", cur_pos);
}

void cmdMsgClear(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdMsgClear\r\n", cur_pos);
}

void cmdMsgColor(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdMsgColor\r\n", cur_pos);
}

void cmdMsgClose(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdMsgClose\r\n", cur_pos);
}

void cmdMsgSize(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdMsgSize\r\n", cur_pos);
}

void cmdMsgFrameType(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdMsgFrameType\r\n", cur_pos);
}

void cmdMsgSel(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdMsgSel\r\n", cur_pos);
}

void cmdCGLoad(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdCGLoad\r\n", cur_pos);
}

void cmdCGAttibute(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdCGAttibute\r\n", cur_pos);
}

void cmdCGFade(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdCGFade\r\n", cur_pos);
}

void cmdCGDel(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdCGDel\r\n", cur_pos);
}


void cmdCGSprite(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdCGSprite\r\n", cur_pos);
}

void cmdCGScroll(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdCGScroll\r\n", cur_pos);
}

void cmdBGMPlay(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdBGMPlay\r\n", cur_pos);
}

void cmdBGMStop(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdBGMStop\r\n", cur_pos);
}

void cmdBGMVolume(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdBGMVolume\r\n", cur_pos);
}

void cmdPCMPlay(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdPCMPlay\r\n", cur_pos);
}

void cmdPCMStop(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdPCMStop\r\n", cur_pos);
}

void cmdPCMVolume(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdPCMVolume\r\n", cur_pos);
}


void cmdWaitPCM(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdWaitPCM\r\n", cur_pos);
}


void cmdShake(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdShake\r\n", cur_pos);
}

void cmdVibration(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdVibration\r\n", cur_pos);
}

void cmdAchievement(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdAchievement\r\n", cur_pos);
}

void cmdMoviePlay(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdMoviePlay\r\n", cur_pos);
}

void cmdAnmClear(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdAnmClear\r\n", cur_pos);
}

void cmdAnmAdd(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdAnmAdd\r\n", cur_pos);
}

void cmdAnmStart(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdAnmStart\r\n", cur_pos);
}

void cmdAnmStop(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdAnmStop\r\n", cur_pos);
}

void cmdEventRead(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdEventRead\r\n", cur_pos);
}

void cmdEventWrite(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdEventWrite\r\n", cur_pos);
}

void cmdEventExec(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdEventExec\r\n", cur_pos);
}

void cmdGetStrPosToIntArray(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdGetStrPosToIntArray\r\n", cur_pos);
}

void cmdGetStrlenToIntArray(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdGetStrlenToIntArray\r\n", cur_pos);
}

void cmdGetSystemStr(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdGetSystemStr\r\n", cur_pos);
}

void cmdAdd(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdAdd\r\n", cur_pos);
}

void cmdSub(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdSub\r\n", cur_pos);
}

void cmdMul(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdMul\r\n", cur_pos);
}

void cmdDiv(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdDiv\r\n", cur_pos);
}

void cmdMod(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdMod\r\n", cur_pos);
}

void cmdAnd(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdAnd\r\n", cur_pos);
}

void cmdOr(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdOr\r\n", cur_pos);
}

void cmdNot(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdNot\r\n", cur_pos);
}

void cmdEQ(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdEQ\r\n", cur_pos);
}

void cmdNEQ(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdNEQ\r\n", cur_pos);
}

void cmdLEQ(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdLEQ\r\n", cur_pos);
}

void cmdREQ(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdREQ\r\n", cur_pos);
}

void cmdLCM(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdLCM\r\n", cur_pos);
}

void cmdRCM(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdRCM\r\n", cur_pos);
}

void cmdLAND(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdLAND\r\n", cur_pos);
}

void cmdLOR(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdLOR\r\n", cur_pos);
}

void cmdPOP(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdPOP\r\n", cur_pos);
}

void cmdIf(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "0x%08x cmdIf\r\n", cur_pos);
}

std::string base_name;
size_t label_idx = 0;

//new label/function
void cmdLMK(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	cur_size = 1;
	fprintf(file, "\r\n\r\n#--------------------\r\n");
	fprintf(file, "#label start : label_%s_%u\r\n", base_name.c_str(), label_idx);
	fprintf(file, "0x%08x cmdLMK #new label\r\n", cur_pos);

	label_idx++;
}

uint32_t read_be_int32(uint8_t* p)
{
	uint32_t v = *((uint32_t*)p);
	return _byteswap_ulong(v);
}

uint16_t read_be_int16(uint8_t* p)
{
	uint16_t v = *((uint16_t*)p);
	return _byteswap_ushort(v);
}

std::string ConvertSJISToUTF8(const char* str, size_t len)
{
	wchar_t widestr[0x1000] = { 0 };
	char    utf8str[0x1500] = { 0 };

	MultiByteToWideChar(932, 0, str, len, widestr, _countof(widestr));
	WideCharToMultiByte(CP_UTF8, 0, widestr, lstrlenW(widestr), utf8str, _countof(utf8str), 0, 0);

	return std::string(utf8str);
}

void cmdPush(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	uint8_t  type;
	size_t   len;
	size_t   v;
	std::string str;

	cur_size = 1;
	p++; //cmd code itself
	p += 2; //len
	cur_size += 2;
	type = *p;
	p++;
	cur_size++;
	
	switch (type)
	{
	case 1:
		v = read_be_int32(p);
		p += 4;
		cur_size += 4;
		fprintf(file, "0x%08x cmdPushInt 0x%08x\r\n", cur_pos, v);
		break;

	case 2:
		len = read_be_int16(p);
		p += 2;
		cur_size += 2;
		str = ConvertSJISToUTF8((const char*)p, len);
		p += (len + 1);
		cur_size += (len + 1);
		fprintf(file, "0x%08x cmdPushStr \"%s\"\r\n", cur_pos, str.c_str());
		break;

	case 3:
		fprintf(file, "0x%08x cmdPushIntFromIntArray\r\n", cur_pos);
		break;

	case 4:
		fprintf(file, "0x%08x cmdPushStrFromStrArray\r\n", cur_pos);
		break;

	case 5:
		fprintf(file, "0x%08x cmdPushIntFromGlobalFlags\r\n", cur_pos);
		break;
	}
	
}


void cmdShowText(FILE* file, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	size_t  idx;

	cur_size = 1;
	p++;
	cur_size += 2; //len
	p += 2;

	idx = read_be_int32(p);
	cur_size += 4;
	fprintf(file, "0x%08x cmdShowText 0x%08x\r\n", cur_pos, idx);
}

std::string GetBaseName(std::string name)
{
	size_t pos = name.find_last_of('.');
	if (pos != name.npos)
		return name.substr(0, pos);

	return name;
}

void RegisterCallBack(std::map<uint8_t, CmdParseRoutine>& CallBackList)
{
#define REG_CALLBACK(code, fn) CallBackList[code] = fn

	REG_CALLBACK(0x01, cmdSetTitle);
	REG_CALLBACK(0x02, cmdSetChapter);
	REG_CALLBACK(0x07, cmdGetPrefont);
	REG_CALLBACK(0x08, cmdGetPreLoad);
	REG_CALLBACK(0x09, cmdFarcall);
	REG_CALLBACK(0x0A, cmdFarreturn);
	REG_CALLBACK(0x0B, cmdWaitBgm);
	REG_CALLBACK(0x0C, cmdSyscall);
	REG_CALLBACK(0x0D, cmdJmp);
	REG_CALLBACK(0x0E, cmdFarJmp);
	REG_CALLBACK(0x0F, cmdWait);
	REG_CALLBACK(0x10, cmdMsg);
	REG_CALLBACK(0x11, cmdMsgStart);
	REG_CALLBACK(0x12, cmdMsgWaitButton);
	REG_CALLBACK(0x14, cmdMsgClear);
	REG_CALLBACK(0x15, cmdMsgColor);
	REG_CALLBACK(0x16, cmdMsgClose);
	REG_CALLBACK(0x17, cmdMsgSize);
	REG_CALLBACK(0x18, cmdMsgFrameType);
	REG_CALLBACK(0x1F, cmdMsgSel);
	REG_CALLBACK(0x20, cmdCGLoad);
	REG_CALLBACK(0x21, cmdCGAttibute);
	REG_CALLBACK(0x23, cmdCGFade);
	REG_CALLBACK(0x24, cmdCGDel);
	REG_CALLBACK(0x25, cmdCGSprite);
	REG_CALLBACK(0x26, cmdCGScroll);
	REG_CALLBACK(0x30, cmdBGMPlay);
	REG_CALLBACK(0x31, cmdBGMStop);
	REG_CALLBACK(0x32, cmdBGMVolume);
	REG_CALLBACK(0x38, cmdPCMPlay);
	REG_CALLBACK(0x39, cmdPCMStop);
	REG_CALLBACK(0x3A, cmdPCMVolume);
	REG_CALLBACK(0x3B, cmdWaitPCM);

	REG_CALLBACK(0x40, cmdShake);
	REG_CALLBACK(0x41, cmdVibration); //PS3, PS4
	REG_CALLBACK(0x42, cmdAchievement);
	REG_CALLBACK(0x44, cmdMoviePlay);
	REG_CALLBACK(0x45, cmdAnmClear);
	REG_CALLBACK(0x46, cmdAnmAdd);
	REG_CALLBACK(0x47, cmdAnmStart);
	REG_CALLBACK(0x48, cmdAnmStop);
	REG_CALLBACK(0x49, cmdEventRead);
	REG_CALLBACK(0x4A, cmdEventWrite);
	REG_CALLBACK(0x4B, cmdEventExec);
	REG_CALLBACK(0x50, cmdGetStrPosToIntArray);
	REG_CALLBACK(0x51, cmdGetStrlenToIntArray);
	REG_CALLBACK(0x52, cmdGetSystemStr);
	REG_CALLBACK(0xB0, cmdAdd);
	REG_CALLBACK(0xB1, cmdSub);
	REG_CALLBACK(0xB2, cmdMul);
	REG_CALLBACK(0xB3, cmdDiv);
	REG_CALLBACK(0xB4, cmdMod);
	REG_CALLBACK(0xB5, cmdAnd);
	REG_CALLBACK(0xB6, cmdOr);
	REG_CALLBACK(0xB7, cmdNot);
	REG_CALLBACK(0xB8, cmdEQ);
	REG_CALLBACK(0xB9, cmdNEQ);
	REG_CALLBACK(0xBA, cmdLEQ);
	REG_CALLBACK(0xBB, cmdREQ);
	REG_CALLBACK(0xBC, cmdLCM);
	REG_CALLBACK(0xBD, cmdRCM);
	REG_CALLBACK(0xBE, cmdLAND);
	REG_CALLBACK(0xBF, cmdLOR);
	REG_CALLBACK(0xA2, cmdPOP);
	REG_CALLBACK(0xA3, cmdIf);
	REG_CALLBACK(0xA4, cmdLMK);
	REG_CALLBACK(0xF0, cmdPush);
	REG_CALLBACK(0xF1, cmdShowText);

#undef REG_CALLBACK
}

int main(int argc, char** argv)
{
	FILE*      Reader;
	FILE*      Writer;
	size_t     size, cur_pos, cur_size;
	uint8_t*   data;
	PsbHeader* phdr;

	if (argc < 2)
		return 0;

	Reader = fopen(argv[1], "rb");
	if (!Reader)
		return 0;

	fseek(Reader, 0, SEEK_END);
	size = ftell(Reader);
	fseek(Reader, 0, SEEK_SET);
	data = (uint8_t*)malloc(size);
	fread(data, 1, size, Reader);
	fclose(Reader);

	phdr = (PsbHeader*)data;

	std::string basename = GetBaseName(argv[1]);
	base_name = basename;

	auto extract_name = [](std::string& name)->void
	{
		std::string temp = name;
		for (auto& ch : temp)
			if (ch == '/')
				ch = '\\';

		size_t pos = temp.find_last_of('\\');
		if (pos == temp.npos)
			name = temp;
		else
			name = temp.substr(pos + 1, temp.npos);
	};

	extract_name(base_name);

	auto disasm_name = basename + ".asm";

	Writer = fopen(disasm_name.c_str(), "wb");

	std::map<uint8_t, CmdParseRoutine> CallBackList;
	
	//register all callbacks...
	RegisterCallBack(CallBackList);

	cur_size = 0;
	cur_pos = _byteswap_ushort(phdr->EntryPoint);
	while (cur_pos < size)
	{
		auto Entry = CallBackList.find(data[cur_pos]);
		if (Entry == CallBackList.end())
		{
			fflush(Writer);
			fprintf(stderr, "Unsupport instruction = 0x%02x, pos = 0x%08x\n", data[cur_pos], cur_pos);
			//fprintf(stderr, "Press any key to exit\n");
			//getchar();

			//only few commands are larger than one byte..
			fprintf(Writer, "0x%08x cmdUnknown(0x%02x)\r\n", cur_pos, data[cur_pos]);
			cur_pos++;
			//break;
		}
		else
		{
			Entry->second(Writer, &data[cur_pos], cur_pos, cur_size);
			cur_pos += cur_size;
		}
	}
	
	free(data);
	fclose(Writer);
    return 0;
}

