#include <stdio.h>
#include <string>
#include <stdint.h>
#include <vector>
#include <Windows.h>
#include <map>
#include <fstream>
#include "json/json.h"

#pragma warning(disable : 4996)

#pragma comment(lib, "jsoncpp.lib")

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

class IByteCode
{
public:
	virtual std::string GetType() = 0; //get cmd name, eg : cmdIf
	virtual void        Set(uint8_t* data, size_t size, uint32_t Pos) = 0; //including cmd code
	virtual void        ResetString(std::string str) = 0; //only vaild for pushStr cmd
	virtual void        ResetAddr(uint32_t addr) = 0; //only valid for pushInt32, and this bytecode belongs to jmp, call, ...
	virtual void        SetLink(uint32_t link) = 0;
	virtual uint32_t    linkTo() = 0; //get jmp label addr(ori), only vaild for jmp, if ...
	virtual uint32_t    GetByteCodeSize() = 0;
	virtual void        WriteToBuffer(uint8_t* data) = 0;

	uint32_t GetPos() { return m_Pos;  }

protected:
	uint32_t m_Pos;
};

#define MAKE_ONE_BYTE_CLASS(classname, cmdname)    \
	class classname : public IByteCode             \
	{                                              \
	public:                                        \
		std::string GetType() { return cmdname; }  \
		void Set(uint8_t* data, size_t size, uint32_t Pos)       \
		{                                          \
			m_ByteCode = *data;                    \
			m_Pos = Pos;                           \
		}                                          \
		void ResetString(std::string str){return;} \
		void ResetAddr(uint32_t addr){return;}     \
		void SetLink(uint32_t link){return;}       \
		uint32_t linkTo(){return 0;}               \
		uint32_t GetByteCodeSize(){return 1;}      \
		void WriteToBuffer(uint8_t* data)          \
		{                                          \
			data[0] = m_ByteCode;                  \
		}                                          \
	                                               \
	private:                                       \
		uint8_t m_ByteCode;                        \
	};                                             \


//one byte... no modify
MAKE_ONE_BYTE_CLASS(CByteCodeSetTitle, "cmdSetTitle")
MAKE_ONE_BYTE_CLASS(CByteCodeSetChapter, "cmdSetChapter")
MAKE_ONE_BYTE_CLASS(CByteCodeGetPrefont, "cmdGetPrefontr")
MAKE_ONE_BYTE_CLASS(CByteCodeGetPreLoad, "cmdGetPreLoad")
MAKE_ONE_BYTE_CLASS(CByteCodeFarcall, "cmdFarcall")
MAKE_ONE_BYTE_CLASS(CByteCodeFarreturn, "cmdFarreturn")
MAKE_ONE_BYTE_CLASS(CByteCodeWaitBgm, "cmdWaitBgm")
MAKE_ONE_BYTE_CLASS(CByteCodeSyscall, "cmdSyscall")
MAKE_ONE_BYTE_CLASS(CByteCodeFarJmp, "cmdFarJmp")
MAKE_ONE_BYTE_CLASS(CByteCodeWait, "cmdWait")
MAKE_ONE_BYTE_CLASS(CByteCodeMsg, "cmdMsg")
MAKE_ONE_BYTE_CLASS(CByteCodeMsgStart, "cmdMsgStart")
MAKE_ONE_BYTE_CLASS(CByteCodeMsgWaitButton, "cmdMsgWaitButton")
MAKE_ONE_BYTE_CLASS(CByteCodeMsgClear, "cmdMsgClear")
MAKE_ONE_BYTE_CLASS(CByteCodeMsgColor, "cmdMsgColor")
MAKE_ONE_BYTE_CLASS(CByteCodeMsgClose, "cmdMsgClose")
MAKE_ONE_BYTE_CLASS(CByteCodeMsgSize, "cmdMsgSize")
MAKE_ONE_BYTE_CLASS(CByteCodeMsgFrameType, "cmdMsgFrameType")
MAKE_ONE_BYTE_CLASS(CByteCodeMsgSel, "cmdMsgSel")
MAKE_ONE_BYTE_CLASS(CByteCodeCGLoad, "cmdCGLoad")
MAKE_ONE_BYTE_CLASS(CByteCodeCGAttibute, "cmdCGAttibute")
MAKE_ONE_BYTE_CLASS(CByteCodeCGFade, "cmdCGFade")
MAKE_ONE_BYTE_CLASS(CByteCodeCGDel, "cmdCGDel")
MAKE_ONE_BYTE_CLASS(CByteCodeCGSprite, "cmdCGSprite")
MAKE_ONE_BYTE_CLASS(CByteCodeCGScroll, "cmdCGScroll")
MAKE_ONE_BYTE_CLASS(CByteCodeBGMPlay, "cmdBGMPlay")
MAKE_ONE_BYTE_CLASS(CByteCodeBGMStop, "cmdBGMStop")
MAKE_ONE_BYTE_CLASS(CByteCodeBGMVolume, "cmdBGMVolume")
MAKE_ONE_BYTE_CLASS(CByteCodePCMPlay, "cmdPCMPlay")
MAKE_ONE_BYTE_CLASS(CByteCodePCMStop, "cmdPCMStop")
MAKE_ONE_BYTE_CLASS(CByteCodePCMVolume, "cmdPCMVolume")
MAKE_ONE_BYTE_CLASS(CByteCodeWaitPCM, "cmdWaitPCM")
MAKE_ONE_BYTE_CLASS(CByteCodeShake, "cmdShake")
MAKE_ONE_BYTE_CLASS(CByteCodeVibration, "cmdVibration")
MAKE_ONE_BYTE_CLASS(CByteCodeAchievement, "cmdAchievement")
MAKE_ONE_BYTE_CLASS(CByteCodeMoviePlay, "cmdMoviePlay")
MAKE_ONE_BYTE_CLASS(CByteCodeAnmClear, "cmdAnmClear")
MAKE_ONE_BYTE_CLASS(CByteCodeAnmAdd, "cmdAnmAdd")
MAKE_ONE_BYTE_CLASS(CByteCodeAnmStart, "cmdAnmStart")
MAKE_ONE_BYTE_CLASS(CByteCodeAnmStop, "cmdAnmStop")
MAKE_ONE_BYTE_CLASS(CByteCodeEventRead, "cmdEventRead")
MAKE_ONE_BYTE_CLASS(CByteCodeEventWrite, "cmdEventWrite")
MAKE_ONE_BYTE_CLASS(CByteCodeEventExec, "cmdEventExec")
MAKE_ONE_BYTE_CLASS(CByteCodeGetStrPosToIntArray, "cmdGetStrPosToIntArray")
MAKE_ONE_BYTE_CLASS(CByteCodeGetStrlenToIntArray, "cmdGetStrlenToIntArray")
MAKE_ONE_BYTE_CLASS(CByteCodeGetSystemStr, "cmdGetSystemStr")
MAKE_ONE_BYTE_CLASS(CByteCodeAdd, "cmdAdd")
MAKE_ONE_BYTE_CLASS(CByteCodeSub, "cmdSub")
MAKE_ONE_BYTE_CLASS(CByteCodeMul, "cmdMul")
MAKE_ONE_BYTE_CLASS(CByteCodeDiv, "cmdDiv")
MAKE_ONE_BYTE_CLASS(CByteCodeMod, "cmdMod")
MAKE_ONE_BYTE_CLASS(CByteCodeAnd, "cmdAnd")
MAKE_ONE_BYTE_CLASS(CByteCodeOr, "cmdOr")
MAKE_ONE_BYTE_CLASS(CByteCodeNot, "cmdNot")
MAKE_ONE_BYTE_CLASS(CByteCodeEQ, "cmdEQ")
MAKE_ONE_BYTE_CLASS(CByteCodeNEQ, "cmdNEQ")
MAKE_ONE_BYTE_CLASS(CByteCodeLEQ, "cmdLEQ")
MAKE_ONE_BYTE_CLASS(CByteCodeREQ, "cmdREQ")
MAKE_ONE_BYTE_CLASS(CByteCodeLCM, "cmdLCM")
MAKE_ONE_BYTE_CLASS(CByteCodeRCM, "cmdRCM")
MAKE_ONE_BYTE_CLASS(CByteCodeLAND, "cmdLAND")
MAKE_ONE_BYTE_CLASS(CByteCodeLOR, "cmdLOR")
MAKE_ONE_BYTE_CLASS(CByteCodePOP, "cmdPOP")
MAKE_ONE_BYTE_CLASS(CByteCodeLMK, "cmdLMK")

MAKE_ONE_BYTE_CLASS(CByteCodeUnknown, "cmdUnknown")

#undef MAKE_ONE_BYTE_CLASS


#define MAKE_MULTI_BYTES_CLASS(classname, cmdname) \
	class classname : public IByteCode             \
	{                                              \
	public:                                        \
		std::string GetType() { return cmdname; }  \
		void Set(uint8_t* data, size_t size, uint32_t Pos)       \
		{                                          \
			for(size_t i = 0; i < size; i++)       \
				m_ByteCode.push_back(data[i]);     \
			m_Pos = Pos;                           \
		}                                          \
		void ResetString(std::string str){return;} \
		void ResetAddr(uint32_t addr){return;}     \
		void SetLink(uint32_t link){return;}       \
		uint32_t linkTo(){return 0;}               \
		uint32_t GetByteCodeSize()                 \
		{                                          \
			return m_ByteCode.size();              \
		}                                          \
		void WriteToBuffer(uint8_t* data)          \
		{                                          \
			memcpy(data, &m_ByteCode[0], m_ByteCode.size());  \
		}                                          \
	                                               \
	private:                                       \
		std::vector<uint8_t> m_ByteCode;           \
	};      


//multi-bytes, also no modify
MAKE_MULTI_BYTES_CLASS(CByteCodeShowText, "cmdShowText")

#undef MAKE_MULTI_BYTES_CLASS

//
class CByteCodePush : public IByteCode
{                         
public:
	CByteCodePush()
	{
		m_CurrentType = iPushType::VM_OTHER;
		m_NewInt      = 0;
		m_CodePage    = 936;
	}

	//fake name...
	std::string GetType() 
	{
		switch (m_CurrentType)
		{
		case iPushType::VM_INT:
			return "cmdPush#Int"; 

		case iPushType::VM_STRING:
			return "cmdPush#String";
		}

		return "cmdPush"; 
	} 

	typedef enum iPushType { VM_INT, VM_STRING, VM_OTHER };

	//parse data
	void Set(uint8_t* data, size_t size, uint32_t Pos)
	{                                          
		for(size_t i = 0; i < size; i++)
			m_ByteCode.push_back(data[i]); //set original data

		m_Pos = Pos;

		switch (data[3])
		{
		case 0x01: //push int
			m_NewInt = *((uint32_t*)(data + 4));
			m_CurrentType = iPushType::VM_INT;
			break;

		case 0x02:
			m_NewString = (const char*)(data + 6);
			m_CurrentType = iPushType::VM_STRING;
			break;

		default:
			m_CurrentType = iPushType::VM_OTHER;
			break;
		}
	} 

	void SetCodePage(uint32_t CodePage)
	{
		if(IsValidCodePage(CodePage))
			m_CodePage = CodePage;
	}

	static std::string Utf8ToMultiByte(std::string& str, uint32_t CodePage)
	{
		WCHAR*      UnicodeBuf   = NULL;
		CHAR*       MultiByteBuf = NULL;
		std::string MultiByteString;

		int UnicodeLen = MultiByteToWideChar(CP_UTF8, 0, str.c_str(), str.length(), 0, 0);
		UnicodeBuf = new WCHAR[UnicodeLen + 1];
		memset(UnicodeBuf, 0, (UnicodeLen + 1) * sizeof(UnicodeBuf[0]));
		MultiByteToWideChar(CP_UTF8, 0, str.c_str(), str.length(), UnicodeBuf, UnicodeLen);
		MultiByteBuf = new CHAR[(UnicodeLen + 1) * 2];
		memset(MultiByteBuf, 0, (UnicodeLen + 1) * 2);
		WideCharToMultiByte(CodePage, 0, UnicodeBuf, UnicodeLen, MultiByteBuf, UnicodeLen * 2, 0, 0); //may lost some chars...
		
		MultiByteString = MultiByteBuf;
		delete[] MultiByteBuf;
		delete[] UnicodeBuf;

		return MultiByteString;
	}
	
	void ResetString(std::string str) 
	{
		m_NewString = Utf8ToMultiByte(str, m_CodePage);
	} 
	
	void ResetAddr(uint32_t addr)
	{
		m_NewInt = addr;
	}

	void SetLink(uint32_t link)
	{
		return;
	}
	
	uint32_t linkTo()
	{
		if (m_CurrentType == iPushType::VM_INT)
			return m_NewInt;

		return 0;
	} 
	
	uint32_t GetByteCodeSize()
	{
		if(m_CurrentType != iPushType::VM_STRING)
			return m_ByteCode.size();

		return (m_NewString.length() + 1) + 1 + 2 + 3;
	}
	
	void WriteToBuffer(uint8_t* data)
	{      
		if (m_CurrentType == iPushType::VM_OTHER)
		{
			memcpy(data, &m_ByteCode[0], m_ByteCode.size());
		}
		else if (m_CurrentType == iPushType::VM_INT)
		{
			memcpy(data, &m_ByteCode[0], m_ByteCode.size());
			memcpy(data + 4, &m_NewInt,  4);
		}
		else //string
		{
			memcpy(data, &m_ByteCode[0], 1); //copy type code

			uint16_t ByteCodeSize = m_NewString.length() + 1 + 3;
			ByteCodeSize = _byteswap_ushort(ByteCodeSize);
			memcpy(data + 1, &ByteCodeSize, sizeof(ByteCodeSize));
			data[3] = 0x02;
			uint16_t RawStringLen = m_NewString.length(); //ending zero is not included.
			RawStringLen = _byteswap_ushort(RawStringLen);
			memcpy(data + 4, &RawStringLen, sizeof(RawStringLen));
			memcpy(data + 6, m_NewString.c_str(), m_NewString.length() + 1); //
		}
	} 

private: 
	std::vector<uint8_t> m_ByteCode;
	iPushType            m_CurrentType;
	std::string          m_NewString;
	uint32_t             m_NewInt;
	uint32_t             m_CodePage;
};

//cmdIf and cmdJmp are one byte opcode
//BUT the offset in previous opcode(pushInt) is very improtant...

//If
class CByteCodeIf : public IByteCode
{
public:
	CByteCodeIf()
	{
		m_TypeCode = 0; //not valid 
		m_CurrentOffset = 0;
		m_NewOffset = 0;
	}

	std::string GetType()
	{
		return "cmdIf";
	}

	void Set(uint8_t* data, size_t size, uint32_t Pos)
	{
		m_TypeCode = data[0];
		m_Pos = Pos;
	}

	void ResetString(std::string str) { return; }

	//new offset
	void ResetAddr(uint32_t addr)
	{
		m_NewOffset = addr;
	}

	//old offset
	void SetLink(uint32_t link)
	{
		m_CurrentOffset = 0;
	}

	uint32_t linkTo()
	{
		return 0;
	}

	uint32_t GetByteCodeSize()
	{
		return 1;
	}

	void WriteToBuffer(uint8_t* data)
	{
		data[0] = m_TypeCode;
	}

private:
	uint8_t  m_TypeCode;
	uint32_t m_CurrentOffset;
	uint32_t m_NewOffset;
};

//JMP
class CByteCodeJmp : public IByteCode
{
public:
	CByteCodeJmp()
	{
		m_TypeCode = 0; //not valid 
		m_CurrentOffset = 0;
		m_NewOffset = 0;
	}

	std::string GetType()
	{
		return "cmdJmp";
	}

	void Set(uint8_t* data, size_t size, uint32_t Pos)
	{
		m_TypeCode = data[0];
		m_Pos = Pos;
	}

	void ResetString(std::string str) { return; }

	//new offset
	void ResetAddr(uint32_t addr)
	{
		m_NewOffset = addr;
	}

	//old offset
	void SetLink(uint32_t link)
	{
		m_CurrentOffset = 0;
	}

	uint32_t linkTo()
	{
		return m_CurrentOffset; //old offset...
	}

	uint32_t GetByteCodeSize()
	{
		return 1;
	}

	void WriteToBuffer(uint8_t* data)
	{
		data[0] = m_TypeCode;
	}

private:
	uint8_t  m_TypeCode;
	uint32_t m_CurrentOffset;
	uint32_t m_NewOffset;
};

class CByteCodeScript;

class CByteCodeLabel
{
public: 

	typedef enum NodeType{NODE_NORMAL, NODE_DUMMY};

	CByteCodeLabel(CByteCodeScript* Root, size_t Offset) :
		m_Root(Root),
		m_Offset(Offset),
		m_NodeType(NodeType::NODE_NORMAL)
	{

	}

	~CByteCodeLabel()
	{
		for (auto Entry : m_CodeList)
			if (Entry)
				delete Entry;

		m_CodeList.clear();
	}

	size_t GetPushStrCnt()
	{
		size_t cnt = 0;
		for (auto Entry : m_CodeList)
			if (Entry->GetType() == "cmdPush#String")
				cnt++;

		return cnt;
	}

	void Push(IByteCode* Code)
	{
		if (Code) m_CodeList.push_back(Code);
	}

	uint32_t GetOldOffset()
	{
		return m_Offset;
	}

	IByteCode* Get(size_t Index)
	{
		if (Index < m_CodeList.size())
			return m_CodeList[Index];

		return nullptr;
	}

	IByteCode* operator[](size_t Index) { return Get(Index); }

	size_t Count()
	{
		return m_CodeList.size();
	}

	void SetNodeType(NodeType node)
	{
		m_NodeType = node;
	}

	bool IsDummyLabel()
	{
		return m_NodeType == NodeType::NODE_DUMMY;
	}
	
	CByteCodeScript* GetRoot() { return m_Root; }

private:
	std::vector<IByteCode*> m_CodeList;
	NodeType                m_NodeType;
	CByteCodeScript*        m_Root;
	size_t                  m_Offset;
};


//this script object 
class CByteCodeScript
{
public:
	CByteCodeScript() :
		m_DataIsParsed(false),
		m_CurrentNode(nullptr),
		m_CodePage(936)
	{
		memset(m_Header, 0, sizeof(m_Header));
		m_EntryOffset = 0;
	}

	~CByteCodeScript()
	{
		for (auto Entry : m_LinkData)
			if (Entry.second)
				delete Entry.second;

		m_LinkData.clear();
	}

	//parse header and EAT
	//i'm not prepare to do too many secure check...
	bool Parse(uint8_t* data, uint32_t size)
	{
		if (data == nullptr || size == 0)
			return false;

		m_Data = data;
		m_Size = size;

		memcpy(m_Header, data, 0x10);
		m_EntryOffset = *((uint16_t*)data);
		m_EntryOffset = _byteswap_ushort(m_EntryOffset);
		memcpy(m_InfoHeader, data + m_EntryOffset - 8, 8);

		uint32_t*  EatData = (uint32_t*)(data + 0x10);

		for (size_t i = 0; i < m_EntryOffset - 0x18; i += sizeof(uint32_t))
		{
			uint32_t Entry = EatData[i / sizeof(uint32_t)];
			if (Entry)
				m_VaildEAT.insert(std::make_pair(i / sizeof(uint32_t), Entry));

			m_EAT.push_back(Entry);
		}
		
		m_DataIsParsed = true;
		return true;
	}

	bool SetCodePage(uint32_t CodePage)
	{
		if (IsValidCodePage(CodePage))
		{
			m_CodePage = CodePage;
			return true;
		}

		return false;
	}

	bool GetCodePage()
	{
		return m_CodePage;
	}

	//must be UTF-8 without bom
	bool LoadNewText(std::wstring FileName)
	{
		size_t       OldPushStrCnt = 0;
		std::string  ReadLine;
		std::fstream Reader(FileName);
		Json::CharReaderBuilder builder;
		Json::Value  root;

		if (!Reader.is_open())
		{
			wprintf(L"Couldn't open %s\n", FileName.c_str());
			return false;
		}

		m_NewStrMap.clear();
		JSONCPP_STRING errs;
		if (Json::parseFromStream(builder, Reader, &root, &errs))
		{
			printf("loading new strings -> %u\n", root.size());
			if (m_StringOffsets.size() != root.size())
			{
				fprintf(stderr, "Different string size -> old : %u -- new : %u\n", m_StringOffsets.size(), root.size());
				return false;
			}
			for (auto i = 0; i < root.size(); i++)
				m_NewStrMap[m_StringOffsets[i]] = root[i]["cn"].asString();
		}
		else
		{
			return false;
		}
		Reader.close();
		
		for (auto& LabelEntry : m_LinkData)
			OldPushStrCnt += LabelEntry.second->GetPushStrCnt();

		return true;
	}


	struct NodeOffsetWarpper
	{
		uint32_t m_NewOffset;
		uint32_t m_LabelIndex;

		NodeOffsetWarpper& operator = (const NodeOffsetWarpper& Other)
		{
			memcpy(this, &Other, sizeof(*this));
			return *this;
		}
	};
	
	bool Link(std::wstring FileName)
	{
		if (!m_DataIsParsed)
		{
			printf("Engine is not initialized\n");
			return false;
		}

		if (!m_NewStrMap.size())
		{
			printf("No new string data\n");
			return false;
		}

		//replace string with original offset
		for (auto Node : m_LinkData)
		{
			for (size_t i = 0; i < Node.second->Count(); i++)
			{
				auto ByteCode = Node.second->Get(i);
				if (ByteCode->GetType() == "cmdPush#String")
				{
					size_t Offset = ByteCode->GetPos();
					auto   Entry  = m_NewStrMap.find(Offset);

					if (Entry != m_NewStrMap.end())
						ByteCode->ResetString(Entry->second);
				}
			}
		}

		size_t CurrentOffset = m_EntryOffset;
		size_t LabelIndex = 0;

		std::map<uint32_t, NodeOffsetWarpper>  OffsetMap; //old offset -> new offset

		for (auto Node : m_LinkData)
		{
			NodeOffsetWarpper OffsetWarpper;

			OffsetWarpper.m_LabelIndex = LabelIndex;
			OffsetWarpper.m_NewOffset  = 0; //unknown
			OffsetMap[Node.second->GetOldOffset()] = OffsetWarpper;
			LabelIndex++;
		}

		//generate offsets, rewrite EAT offsets...
		for (auto Node : m_LinkData)
		{
			OffsetMap[Node.second->GetOldOffset()].m_NewOffset = CurrentOffset;
			
			//fix EAT entry offset
			for (auto& EatEntry : m_EAT)
				if (EatEntry == Node.second->GetOldOffset())
					EatEntry = CurrentOffset;

			for (size_t i = 0; i < Node.second->Count(); i++)
			{
				auto        ByteCode    = Node.second->Get(i);
				CurrentOffset += ByteCode->GetByteCodeSize();
			}
		}

		for (auto Node : m_LinkData)
		{
			for (size_t i = 0; i < Node.second->Count(); i++)
			{
				auto        ByteCode = Node.second->Get(i);
				std::string CurrentType = ByteCode->GetType();
				if (CurrentType == "cmdIf" || CurrentType == "cmdJmp")
				{
					size_t PreIndex = i - 1;
					auto   PreByteCode = Node.second->Get(i);
					auto   OldOffset = PreByteCode->linkTo();
					
					PreByteCode->ResetAddr(OffsetMap[Node.second->GetOldOffset()].m_NewOffset);
				}
			}
		}

		//generate binary data
		std::vector<uint8_t> NewData;
		for (size_t i = 0; i < sizeof(m_Header); i++)
		{
			NewData.push_back(m_Header[i]);
		}

		for (auto Entry : m_EAT)
		{
			uint8_t data[4];
			memcpy(data, &Entry, sizeof(Entry));
			for (size_t i = 0; i < sizeof(Entry); i++)
				NewData.push_back(data[i]);
		}

		for (size_t i = 0; i < sizeof(m_InfoHeader); i++)
			NewData.push_back(m_InfoHeader[i]);

		uint8_t* MarshalData = new uint8_t[0x1000];

		for (auto Node : m_LinkData)
		{
			if (Node.second->IsDummyLabel())
				break;

			for (size_t i = 0; i < Node.second->Count(); i++)
			{
				auto ByteCode = Node.second->Get(i);
				auto CurrentCodeSize = ByteCode->GetByteCodeSize();
				
				ByteCode->WriteToBuffer(MarshalData);
				for (size_t j = 0; j < CurrentCodeSize; j++)
					NewData.push_back(MarshalData[j]);
			}
		}
		delete[] MarshalData;

		//write to file
		FILE* file = _wfopen(FileName.c_str(), L"wb");
		if (file)
		{
			fwrite(&NewData[0], 1, NewData.size(), file);
			fclose(file);
		}
		
		return true;
	}

	void InsertLabel(size_t Offset, CByteCodeLabel* Label)
	{
		SetCurrentNode(Label);
		m_LinkData[Offset] = Label;
	}

	CByteCodeLabel* GetCurrentNode()
	{
		return m_CurrentNode;
	}

	void InsertStringOffset(uint32_t Offset)
	{
		m_StringOffsets.push_back(Offset);
	}

private:
	void SetCurrentNode(CByteCodeLabel* Node)
	{
		m_CurrentNode = Node;
	}

private:
	uint8_t                           m_Header[0x10]; //should never change
	uint8_t                           m_InfoHeader[0x8];  //unknown data
	uint16_t                          m_EntryOffset; //overwrite this member will not affect header data
	uint8_t*                          m_Data;
	uint32_t                          m_Size;
	CByteCodeLabel*                   m_CurrentNode;
	std::vector<uint32_t>             m_EAT;
	std::map<uint32_t, uint32_t>      m_VaildEAT; //index, offset
	std::map<size_t, CByteCodeLabel*> m_LinkData;
	bool                              m_DataIsParsed;
	std::map<size_t, std::string>     m_NewStrMap;
	std::vector<IByteCode*>           m_StringLink; //index to string opcode
	std::vector<uint32_t>             m_StringOffsets; //old offset
	uint32_t                          m_CodePage;
};



//return true if current bytecode is LMK
typedef bool (*CmdParseRoutine)(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size);

bool cmdSetTitle(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeSetTitle* Code;

	cur_size = 1;
	Code = new CByteCodeSetTitle();
	Code->Set(p, 1, cur_pos);
	
	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdSetChapter(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeSetChapter* Code;

	cur_size = 1;
	Code = new CByteCodeSetChapter();
	Code->Set(p, 1, cur_pos);

	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdGetPrefont(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeGetPrefont* Code;

	cur_size = 1;
	Code = new CByteCodeGetPrefont();
	Code->Set(p, 1, cur_pos);

	host->GetCurrentNode()->Push(Code);
	return false;
}


bool cmdGetPreLoad(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeGetPreLoad* Code;

	cur_size = 1;
	Code = new CByteCodeGetPreLoad();
	Code->Set(p, 1, cur_pos);
	
	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdFarcall(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeFarcall* Code;

	cur_size = 1;
	Code = new CByteCodeFarcall();
	Code->Set(p, 1, cur_pos);

	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdFarreturn(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeFarreturn* Code;

	cur_size = 1;
	Code = new CByteCodeFarreturn();
	Code->Set(p, 1, cur_pos);
	
	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdWaitBgm(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeWaitBgm* Code;

	cur_size = 1;
	Code = new CByteCodeWaitBgm();
	Code->Set(p, 1, cur_pos);
	
	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdSyscall(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeSyscall* Code;

	cur_size = 1;
	Code = new CByteCodeSyscall();
	Code->Set(p, 1, cur_pos);

	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdJmp(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeJmp* Code;

	cur_size = 1;
	Code = new CByteCodeJmp();
	Code->Set(p, 1, cur_pos);

	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdFarJmp(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeFarJmp* Code;

	cur_size = 1;
	Code = new CByteCodeFarJmp();
	Code->Set(p, 1, cur_pos);

	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdWait(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeWait* Code;

	cur_size = 1;
	Code = new CByteCodeWait();
	Code->Set(p, 1, cur_pos);

	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdMsg(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeMsg* Code;

	cur_size = 1;
	Code = new CByteCodeMsg();
	Code->Set(p, 1, cur_pos);

	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdMsgStart(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeMsgStart* Code;

	cur_size = 1;
	Code = new CByteCodeMsgStart();
	Code->Set(p, 1, cur_pos);

	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdMsgWaitButton(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeMsgWaitButton* Code;

	cur_size = 1;
	Code = new CByteCodeMsgWaitButton();
	Code->Set(p, 1, cur_pos);

	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdMsgClear(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeMsgClear* Code;

	cur_size = 1;
	Code = new CByteCodeMsgClear();
	Code->Set(p, 1, cur_pos);

	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdMsgColor(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeMsgColor* Code;

	cur_size = 1;
	Code = new CByteCodeMsgColor();
	Code->Set(p, 1, cur_pos);

	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdMsgClose(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeMsgClose* Code;

	cur_size = 1;
	Code = new CByteCodeMsgClose();
	Code->Set(p, 1, cur_pos);

	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdMsgSize(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeMsgSize* Code;

	cur_size = 1;
	Code = new CByteCodeMsgSize();
	Code->Set(p, 1, cur_pos);

	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdMsgFrameType(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeMsgFrameType* Code;

	cur_size = 1;
	Code = new CByteCodeMsgFrameType();
	Code->Set(p, 1, cur_pos);

	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdMsgSel(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeMsgSel* Code;

	cur_size = 1;
	Code = new CByteCodeMsgSel();
	Code->Set(p, 1, cur_pos);

	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdCGLoad(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeCGLoad* Code;

	cur_size = 1;
	Code = new CByteCodeCGLoad();
	Code->Set(p, 1, cur_pos);
	
	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdCGAttibute(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeCGAttibute* Code;

	cur_size = 1;
	Code = new CByteCodeCGAttibute();
	Code->Set(p, 1, cur_pos);

	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdCGFade(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeCGFade* Code;

	cur_size = 1;
	Code = new CByteCodeCGFade();
	Code->Set(p, 1, cur_pos);
	
	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdCGDel(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeCGDel* Code;

	cur_size = 1;
	Code = new CByteCodeCGDel();
	Code->Set(p, 1, cur_pos);

	host->GetCurrentNode()->Push(Code);
	return false;
}


bool cmdCGSprite(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeCGSprite* Code;

	cur_size = 1;
	Code = new CByteCodeCGSprite();
	Code->Set(p, 1, cur_pos);

	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdCGScroll(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeCGScroll* Code;

	cur_size = 1;
	Code = new CByteCodeCGScroll();
	Code->Set(p, 1, cur_pos);

	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdBGMPlay(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeBGMPlay* Code;

	cur_size = 1;
	Code = new CByteCodeBGMPlay();
	Code->Set(p, 1, cur_pos);

	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdBGMStop(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeBGMStop* Code;

	cur_size = 1;
	Code = new CByteCodeBGMStop();
	Code->Set(p, 1, cur_pos);

	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdBGMVolume(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeBGMVolume* Code;

	cur_size = 1;
	Code = new CByteCodeBGMVolume();
	Code->Set(p, 1, cur_pos);
	
	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdPCMPlay(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodePCMPlay* Code;

	cur_size = 1;
	Code = new CByteCodePCMPlay();
	Code->Set(p, 1, cur_pos);
	
	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdPCMStop(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodePCMStop* Code;

	cur_size = 1;
	Code = new CByteCodePCMStop();
	Code->Set(p, 1, cur_pos);

	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdPCMVolume(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodePCMVolume* Code;

	cur_size = 1;
	Code = new CByteCodePCMVolume();
	Code->Set(p, 1, cur_pos);

	host->GetCurrentNode()->Push(Code);
	return false;
}


bool cmdWaitPCM(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeWaitPCM* Code;

	cur_size = 1;
	Code = new CByteCodeWaitPCM();
	Code->Set(p, 1, cur_pos);

	host->GetCurrentNode()->Push(Code);
	return false;
}


bool cmdShake(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeShake* Code;

	cur_size = 1;
	Code = new CByteCodeShake();
	Code->Set(p, 1, cur_pos);

	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdVibration(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeVibration* Code;

	cur_size = 1;
	Code = new CByteCodeVibration();
	Code->Set(p, 1, cur_pos);

	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdAchievement(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeAchievement* Code;

	cur_size = 1;
	Code = new CByteCodeAchievement();
	Code->Set(p, 1, cur_pos);
	
	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdMoviePlay(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeMoviePlay* Code;

	cur_size = 1;
	Code = new CByteCodeMoviePlay();
	Code->Set(p, 1, cur_pos);

	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdAnmClear(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeAnmClear* Code;

	cur_size = 1;
	Code = new CByteCodeAnmClear();
	Code->Set(p, 1, cur_pos);
	
	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdAnmAdd(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeAnmAdd* Code;

	cur_size = 1;
	Code = new CByteCodeAnmAdd();
	Code->Set(p, 1, cur_pos);

	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdAnmStart(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeAnmStart* Code;

	cur_size = 1;
	Code = new CByteCodeAnmStart();
	Code->Set(p, 1, cur_size);

	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdAnmStop(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeAnmStop* Code;

	cur_size = 1;
	Code = new CByteCodeAnmStop();
	Code->Set(p, 1, cur_pos);

	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdEventRead(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeEventRead* Code;

	cur_size = 1;
	Code = new CByteCodeEventRead();
	Code->Set(p, 1, cur_pos);

	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdEventWrite(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeEventWrite* Code;

	cur_size = 1;
	Code = new CByteCodeEventWrite();
	Code->Set(p, 1, cur_pos);

	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdEventExec(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeEventExec* Code;

	cur_size = 1;
	Code = new CByteCodeEventExec();
	Code->Set(p, 1, cur_pos);
	
	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdGetStrPosToIntArray(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeGetStrPosToIntArray* Code;

	cur_size = 1;
	Code = new CByteCodeGetStrPosToIntArray();
	Code->Set(p, 1, cur_pos);

	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdGetStrlenToIntArray(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeGetStrlenToIntArray* Code;

	cur_size = 1;
	Code = new CByteCodeGetStrlenToIntArray();
	Code->Set(p, 1, cur_pos);

	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdGetSystemStr(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeGetSystemStr* Code;

	cur_size = 1;
	Code = new CByteCodeGetSystemStr();
	Code->Set(p, 1, cur_pos);

	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdAdd(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeAdd* Code;

	cur_size = 1;
	Code = new CByteCodeAdd();
	Code->Set(p, 1, cur_pos);

	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdSub(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeSub* Code;

	cur_size = 1;
	Code = new CByteCodeSub();
	Code->Set(p, 1, cur_pos);

	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdMul(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeMul* Code;

	cur_size = 1;
	Code = new CByteCodeMul();
	Code->Set(p, 1, cur_pos);
	
	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdDiv(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeDiv* Code;

	cur_size = 1;
	Code = new CByteCodeDiv();
	Code->Set(p, 1, cur_pos);

	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdMod(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeMod* Code;

	cur_size = 1;
	Code = new CByteCodeMod();
	Code->Set(p, 1, cur_pos);
	
	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdAnd(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeAnd* Code;

	cur_size = 1;
	Code = new CByteCodeAnd();
	Code->Set(p, 1, cur_pos);

	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdOr(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeOr* Code;

	cur_size = 1;
	Code = new CByteCodeOr();
	Code->Set(p, 1, cur_pos);

	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdNot(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeNot* Code;

	cur_size = 1;
	Code = new CByteCodeNot();
	Code->Set(p, 1, cur_pos);

	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdEQ(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeEQ* Code;

	cur_size = 1;
	Code = new CByteCodeEQ();
	Code->Set(p, 1, cur_pos);

	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdNEQ(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeNEQ* Code;

	cur_size = 1;
	Code = new CByteCodeNEQ();
	Code->Set(p, 1, cur_pos);

	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdLEQ(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeLEQ* Code;

	cur_size = 1;
	Code = new CByteCodeLEQ();
	Code->Set(p, 1, cur_pos);
	
	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdREQ(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeREQ* Code;

	cur_size = 1;
	Code = new CByteCodeREQ();
	Code->Set(p, 1, cur_pos);

	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdLCM(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeLCM* Code;

	cur_size = 1;
	Code = new CByteCodeLCM();
	Code->Set(p, 1, cur_pos);

	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdRCM(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeRCM* Code;

	cur_size = 1;
	Code = new CByteCodeRCM();
	Code->Set(p, 1, cur_pos);

	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdLAND(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeLAND* Code;

	cur_size = 1;
	Code = new CByteCodeLAND();
	Code->Set(p, 1, cur_pos);

	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdLOR(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeLOR* Code;

	cur_size = 1;
	Code = new CByteCodeLOR();
	Code->Set(p, 1, cur_pos);

	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdPOP(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodePOP* Code;

	cur_size = 1;
	Code = new CByteCodePOP();
	Code->Set(p, 1, cur_pos);

	host->GetCurrentNode()->Push(Code);
	return false;
}

bool cmdIf(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeIf* Code;

	cur_size = 1;
	Code = new CByteCodeIf();
	Code->Set(p, 1, cur_pos);
	
	host->GetCurrentNode()->Push(Code);
	return false;
}


//new label/function
bool cmdLMK(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeLMK*   Code;
	CByteCodeLabel* Next;

	cur_size = 1;
	Code = new CByteCodeLMK();
	Code->Set(p, 1, cur_pos);

	Next = new CByteCodeLabel(host, cur_pos);
	Next->Push(Code);
	host->InsertLabel(cur_pos, Next);

	return true;
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

bool cmdPush(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	uint8_t        type;
	size_t         len;
	size_t         v;
	uint8_t*       pStart;
	std::string    str;
	CByteCodePush* Code;

	pStart = p;
	cur_size = 1;
	p++; //cmd code itself
	p += 2; //len
	cur_size += 2;
	type = *p;
	p++;
	cur_size++;

	Code = new CByteCodePush();

	switch (type)
	{
	case 1:
		v = read_be_int32(p);
		p += 4;
		cur_size += 4;
		Code->Set(pStart, cur_size, cur_pos);
		break;

	case 2:
		len = read_be_int16(p);
		p += 2;
		cur_size += 2;
		str = ConvertSJISToUTF8((const char*)p, len);
		p += (len + 1);
		cur_size += (len + 1);
		
		Code->Set(pStart, cur_size, cur_pos);
		Code->SetCodePage(host->GetCodePage());
		host->InsertStringOffset(cur_pos);
		break;

	case 3:
	case 4:
	case 5:
		Code->Set(pStart, cur_size, cur_pos);
		break;
	}

	host->GetCurrentNode()->Push(Code);

	return false;
}


bool cmdShowText(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	size_t  idx;
	CByteCodeShowText* Code;

	Code = new CByteCodeShowText();
	Code->Set(p, 7, cur_pos);

	cur_size = 7;
	host->GetCurrentNode()->Push(Code);
	
	return false;
}

bool cmdUnknown(CByteCodeScript* host, uint8_t* p, size_t cur_pos, size_t& cur_size)
{
	CByteCodeUnknown* Code;

	cur_size = 1;
	Code = new CByteCodeUnknown();
	Code->Set(p, 1, cur_pos);

	host->GetCurrentNode()->Push(Code);
	return false;
}

std::wstring GetBaseName(std::wstring name)
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

int wmain(int argc, wchar_t** argv)
{
	FILE*      Reader;
	size_t     size, cur_pos, cur_size;
	uint8_t*   data;
	PsbHeader* phdr;

	if (argc < 2)
		return 0;

	Reader = _wfopen(argv[1], L"rb");
	if (!Reader)
		return 0;

	fseek(Reader, 0, SEEK_END);
	size = ftell(Reader);
	fseek(Reader, 0, SEEK_SET);
	data = (uint8_t*)malloc(size);
	fread(data, 1, size, Reader);
	fclose(Reader);

	phdr = (PsbHeader*)data;

	printf("wait....\n");
	getchar();

	std::wstring basename = GetBaseName(argv[1]);

	auto NewScriptName = basename + L".psb.new";
	std::map<uint8_t, CmdParseRoutine> CallBackList;

	//register all callbacks...
	RegisterCallBack(CallBackList);

	CByteCodeScript Compiler;

	if (argc >= 3)
		Compiler.SetCodePage((uint32_t)_wtoi(argv[2]));

	printf("parsing data...\n");
	auto status = Compiler.Parse(data, size);
	if (!status)
	{
		fprintf(stderr, "Compiler : Couldn't parse data...\n");
		return 0;
	}


	cur_size = 0;
	cur_pos  = _byteswap_ushort(phdr->EntryPoint);

	while (cur_pos < size)
	{
		auto Entry = CallBackList.find(data[cur_pos]);
		if (Entry == CallBackList.end())
		{
			fprintf(stderr, "Unsupport instruction = 0x%02x, pos = 0x%08x\n", data[cur_pos], cur_pos);
			
			status = cmdUnknown(&Compiler, &data[cur_pos], cur_pos, cur_size);
			cur_pos++;
		}
		else
		{
			status = Entry->second(&Compiler, &data[cur_pos], cur_pos, cur_size);
			cur_pos += cur_size;
		}
	}

	//not raw text...
	printf("loading text...\n");
	auto textname = basename + L".psb.json";
	status = Compiler.LoadNewText(textname);
	if (!status)
	{
		fprintf(stderr, "Compiler : Couldn't parse new text file.\n");
		return false;
	}


	CByteCodeLabel* DummyNode = new CByteCodeLabel(&Compiler, cur_pos);//the first node
	DummyNode->SetNodeType(CByteCodeLabel::NodeType::NODE_DUMMY);
	Compiler.InsertLabel(cur_pos, DummyNode);

	printf("linking...\n");
	status = Compiler.Link(NewScriptName);
	if (!status)
		fprintf(stderr, "Compiler : Link failed.\n");

	free(data);
	return 0;
}

