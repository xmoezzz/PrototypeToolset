#include <my.h>
#include <string>
#include <vector>


#pragma comment(lib, "MyLibrary_x86_static.lib")

//!Byte Order = BE
//F0 (1 BYTE) Command Mark
//|--(2 BYTE) Cmd Length
//|--(1 BYTE) Sub Command Mark
//             |-- 01 Normal
//             |-- 02 Push String
//                  |-- (2 BYTE) Length
//                  |-- (? BYTE) Raw Data
//
//F1 (1 BYTE) ShowText                                 F1 00 04 <- search pattern
//|-- (2 BYTE) Cmd Length(4 BYTEs, refers to index)
//
//E0 (1 BYTE) End of script


using std::wstring;
using std::vector;


class SeenTextPair
{
public:
	wstring Name;
	wstring Text;

	SeenTextPair& operator = (const SeenTextPair& o)
	{
		this->Name = o.Name;
		this->Text = o.Text;

		return *this;
	}
};

int wmain(int argc, WCHAR* argv[])
{
	NtFileDisk File;
	NTSTATUS   Status;
	PBYTE      Buffer;
	ULONG      Size, iPos, Index;
	wstring    FileName;
	FILE*      Writer;
	WCHAR      TextBuffer[4000];



	vector<SeenTextPair> TextList;

	ml::MlInitialize();

	LOOP_ONCE
	{
		if (argc != 2)
			break;

		Status = File.Open(argv[1]);
		if (NT_FAILED(Status))
			break;

		Size = File.GetSize32();
		Buffer = (PBYTE)AllocateMemoryP(Size);
		if (!Buffer)
			break;

		File.Read(Buffer, Size);
		iPos = 0x410; //ignore header...
		Index = 0;

		FileName = argv[1];
		FileName += L".txt";

		while (iPos < Size)
		{
			if (iPos + 6 < Size &&
				Buffer[iPos + 0] == 0xF1 &&
				Buffer[iPos + 1] == 0x00 &&
				Buffer[iPos + 2] == 0x04)
			{
				iPos += 3;
				DWORD CurIndex = *(PDWORD)&Buffer[iPos];
				CurIndex = _byteswap_ulong(CurIndex);
				iPos += 4;
				if (/*CurIndex == Index && */
					Buffer[iPos] == 0xF0)
				{
					Index++;
					iPos += 1;
					USHORT CmdLength = *(PUSHORT)&Buffer[iPos];
					CmdLength = _byteswap_ushort(CmdLength);
					iPos += 2;
					
					if (Buffer[iPos] == 0x02) //push string, sub cmd
					{
						iPos += 1;
						
						USHORT StrLength = *(PUSHORT)&Buffer[iPos];
						StrLength = _byteswap_ushort(StrLength);
						iPos += 2;

						SeenTextPair Pair;

						RtlZeroMemory(TextBuffer, sizeof(TextBuffer));
						MultiByteToWideChar(932, 0, (PSTR)&Buffer[iPos], StrLengthA((PSTR)&Buffer[iPos]), TextBuffer, countof(TextBuffer) - 1);

						iPos -= 3;
						iPos += CmdLength;

						Pair.Text = TextBuffer;
						RtlZeroMemory(TextBuffer, sizeof(TextBuffer));

						static BYTE NoneNamePattern[] = { 0xF0, 0x00, 0x04, 0x02, 0x00, 0x00, 0x00 };
						if (!memcmp(&Buffer[iPos], NoneNamePattern, 7))
						{
							iPos += 7;
						}
						else
						{
							//read name...
							iPos += 6; //too lazy to check...just skip it
							LONG Len = StrLengthA((PSTR)&Buffer[iPos]);
							MultiByteToWideChar(932, 0, (PSTR)&Buffer[iPos], StrLengthA((PSTR)&Buffer[iPos]), TextBuffer, countof(TextBuffer) - 1);
							
							Pair.Name = TextBuffer;
							iPos += (Len + 1);
						}

						TextList.push_back(Pair);
						
					}
					else
					{
						iPos += CmdLength;
					}
				}
			}
			else
			{
				iPos++;
			}
		}

		if (TextList.size())
		{
			Writer = _wfopen(FileName.c_str(), L"wb");
			Index = 0;
			for (auto& Item : TextList)
			{
				CHAR UTF8Buffer[4000] = { 0 };
				if (Item.Name.length())
				{
					WideCharToMultiByte(CP_UTF8, 0, Item.Name.c_str(), Item.Name.length(), UTF8Buffer, countof(UTF8Buffer) - 1, 0, 0);
					fprintf(Writer, "[%08x.Name]%s\r\n", Index, UTF8Buffer);
				}
				RtlZeroMemory(UTF8Buffer, sizeof(UTF8Buffer));
				WideCharToMultiByte(CP_UTF8, 0, Item.Text.c_str(), Item.Text.length(), UTF8Buffer, countof(UTF8Buffer) - 1, 0, 0);
				fprintf(Writer, "[%08x.Text]%s\r\n", Index, UTF8Buffer);

				Index++;
			}
			fclose(Writer);
		}
		FreeMemoryP(Buffer);
	}
	File.Close();
	return 0;
}

