

#--------------------
#label start : label_seen01112_0
0x00000418 cmdLMK #new label
0x00000419 cmdPushInt 0x00000000
0x00000421 cmdPushInt 0x00000021
0x00000429 cmdPushInt 0x00000003
0x00000431 cmdPOP
0x00000432 cmdPushInt 0x0000000b
0x0000043a cmdPushInt 0x0000001c
0x00000442 cmdPushInt 0x00000003
0x0000044a cmdPOP
0x0000044b cmdPushInt 0x0000000c
0x00000453 cmdPushInt 0x0000001d
0x0000045b cmdPushInt 0x00000003
0x00000463 cmdPOP
0x00000464 cmdPushInt 0x00000005
0x0000046c cmdPushInt 0x0000001e
0x00000474 cmdPushInt 0x00000003
0x0000047c cmdPOP
0x0000047d cmdPushInt 0x00000001
0x00000485 cmdPushInt 0x0000001f
0x0000048d cmdPushInt 0x00000003
0x00000495 cmdPOP
0x00000496 cmdPushInt 0x00000001
0x0000049e cmdPushInt 0x00000020
0x000004a6 cmdPushInt 0x00000003
0x000004ae cmdPOP
0x000004af cmdPushStr "C:DAYS/BS_DT_A1112"
0x000004c8 cmdGetPrefont
0x000004c9 cmdPushStr "DAYS/BS_DT_A1112"
0x000004e0 cmdPushInt 0x0000000b
0x000004e8 cmdPushInt 0x00000004
0x000004f0 cmdPOP
0x000004f1 cmdPushStr "１１月１２日(金)"
0x00000508 cmdSetTitle
0x00000509 cmdPushStr "C:CALENDER/BS_CL_BG004"
0x00000526 cmdGetPrefont
0x00000527 cmdPushStr "C:CALENDER/BS_CL_A1110"
0x00000544 cmdGetPrefont
0x00000545 cmdPushStr "C:CALENDER/BS_CL_A1112"
0x00000562 cmdGetPrefont
0x00000563 cmdPushStr "C:CALENDER/BS_CL_FILL00"
0x00000581 cmdGetPrefont
0x00000582 cmdPushInt 0x00000000
0x0000058a cmdPushInt 0x00000000
0x00000592 cmdPushInt 0x00000003
0x0000059a cmdPOP
0x0000059b cmdPushInt 0x00000000
0x000005a3 cmdPushInt 0x00000001
0x000005ab cmdPushInt 0x00000003
0x000005b3 cmdPOP
0x000005b4 cmdPushInt 0x00000000
0x000005bc cmdPushInt 0x00000002
0x000005c4 cmdPushInt 0x00000003
0x000005cc cmdPOP
0x000005cd cmdPushInt 0x0000001d
0x000005d5 cmdPushStr "sys40_sub"
0x000005e5 cmdFarcall
0x000005e6 cmdPushInt 0x00000000
0x000005ee cmdPushInt 0x00000000
0x000005f6 cmdPushInt 0x00000003
0x000005fe cmdPOP
0x000005ff cmdPushInt 0x00000001
0x00000607 cmdPushInt 0x00000001
0x0000060f cmdPushInt 0x00000003
0x00000617 cmdPOP
0x00000618 cmdPushStr "BG004"
0x00000624 cmdPushInt 0x00000000
0x0000062c cmdPushInt 0x00000004
0x00000634 cmdPOP
0x00000635 cmdPushInt 0x00000000
0x0000063d cmdPushStr "sys20_adv00"
0x0000064f cmdFarcall
0x00000650 cmdPushInt 0x00000005
0x00000658 cmdPushInt 0x00000000
0x00000660 cmdPushInt 0x00000003
0x00000668 cmdPOP
0x00000669 cmdPushInt 0x00000000
0x00000671 cmdPushStr "sys20_adv01"
0x00000683 cmdFarcall
0x00000684 cmdPushInt 0x00000001
0x0000068c cmdPushInt 0x00000000
0x00000694 cmdPushStr "BGM018"
0x000006a1 cmdBGMPlay
0x000006a2 cmdShowText 0x00000000
0x000006a9 cmdPushStr "昼休み、会長から召集がかかった。"
0x000006d0 cmdPushStr ""
0x000006d7 cmdPushInt 0x00000000
0x000006df cmdPushInt 0x00000001
0x000006e7 cmdMsg
0x000006e8 cmdMsgStart
0x000006e9 cmdMsgWaitButton
0x000006ea cmdPushInt 0x00000000
0x000006f2 cmdMsgClear
0x000006f3 cmdShowText 0x00000001
0x000006fa cmdPushStr "「活動休止要請？」"
0x00000713 cmdPushStr "瑚太朗"
0x00000720 cmdPushInt 0x00000001
0x00000728 cmdPushInt 0x00000001
0x00000730 cmdMsg
0x00000731 cmdMsgStart
0x00000732 cmdMsgWaitButton
0x00000733 cmdPushInt 0x00000000
0x0000073b cmdMsgClear
0x0000073c cmdPushStr "CGM_AK31"
0x0000074b cmdPushInt 0x00000012
0x00000753 cmdPushInt 0x00000004
0x0000075b cmdPOP
0x0000075c cmdPushInt 0x00000000
0x00000764 cmdPushInt 0x00000000
0x0000076c cmdPushInt 0x00000003
0x00000774 cmdPOP
0x00000775 cmdPushInt 0x00000001
0x0000077d cmdPushInt 0x00000001
0x00000785 cmdPushInt 0x00000003
0x0000078d cmdPOP
0x0000078e cmdPushInt 0x00000011
0x00000796 cmdPushStr "sys20_adv00"
0x000007a8 cmdFarcall
0x000007a9 cmdPushInt 0x00030000
0x000007b1 cmdPushStr "v/z205200032"
0x000007c4 cmdPushInt 0x00000000
0x000007cc cmdPCMPlay
0x000007cd cmdShowText 0x00000002
0x000007d4 cmdPushStr "「ええ」"
0x000007e3 cmdPushStr "朱音"
0x000007ee cmdPushInt 0x00000002
0x000007f6 cmdPushInt 0x00000001
0x000007fe cmdMsg
0x000007ff cmdMsgStart
0x00000800 cmdMsgWaitButton
0x00000801 cmdPushInt 0x00000000
0x00000809 cmdMsgClear
0x0000080a cmdPushStr "CGM_KT16"
0x00000819 cmdPushInt 0x00000012
0x00000821 cmdPushInt 0x00000004
0x00000829 cmdPOP
0x0000082a cmdPushInt 0x00000000
0x00000832 cmdPushInt 0x00000000
0x0000083a cmdPushInt 0x00000003
0x00000842 cmdPOP
0x00000843 cmdPushInt 0x00000001
0x0000084b cmdPushInt 0x00000001
0x00000853 cmdPushInt 0x00000003
0x0000085b cmdPOP
0x0000085c cmdPushInt 0x00000011
0x00000864 cmdPushStr "sys20_adv00"
0x00000876 cmdFarcall
0x00000877 cmdPushInt 0x00010000
0x0000087f cmdPushStr "v/z205200035"
0x00000892 cmdPushInt 0x00000000
0x0000089a cmdPCMPlay
0x0000089b cmdShowText 0x00000003
0x000008a2 cmdPushStr "「オカ研に？」"
0x000008b7 cmdPushStr "小鳥"
0x000008c2 cmdPushInt 0x00000003
0x000008ca cmdPushInt 0x00000001
0x000008d2 cmdMsg
0x000008d3 cmdMsgStart
0x000008d4 cmdMsgWaitButton
0x000008d5 cmdPushInt 0x00000000
0x000008dd cmdMsgClear
0x000008de cmdPushStr "CGM_AK22"
0x000008ed cmdPushInt 0x00000012
0x000008f5 cmdPushInt 0x00000004
0x000008fd cmdPOP
0x000008fe cmdPushInt 0x00000000
0x00000906 cmdPushInt 0x00000000
0x0000090e cmdPushInt 0x00000003
0x00000916 cmdPOP
0x00000917 cmdPushInt 0x00000001
0x0000091f cmdPushInt 0x00000001
0x00000927 cmdPushInt 0x00000003
0x0000092f cmdPOP
0x00000930 cmdPushInt 0x00000011
0x00000938 cmdPushStr "sys20_adv00"
0x0000094a cmdFarcall
0x0000094b cmdPushInt 0x00030000
0x00000953 cmdPushStr "v/z205200038"
0x00000966 cmdPushInt 0x00000000
0x0000096e cmdPCMPlay
0x0000096f cmdShowText 0x00000004
0x00000976 cmdPushStr "「そうよ」"
0x00000987 cmdPushStr "朱音"
0x00000992 cmdPushInt 0x00000004
0x0000099a cmdPushInt 0x00000001
0x000009a2 cmdMsg
0x000009a3 cmdMsgStart
0x000009a4 cmdMsgWaitButton
0x000009a5 cmdPushInt 0x00000000
0x000009ad cmdMsgClear
0x000009ae cmdPushStr "CGM_KT13"
0x000009bd cmdPushInt 0x00000012
0x000009c5 cmdPushInt 0x00000004
0x000009cd cmdPOP
0x000009ce cmdPushInt 0x00000000
0x000009d6 cmdPushInt 0x00000000
0x000009de cmdPushInt 0x00000003
0x000009e6 cmdPOP
0x000009e7 cmdPushInt 0x00000001
0x000009ef cmdPushInt 0x00000001
0x000009f7 cmdPushInt 0x00000003
0x000009ff cmdPOP
0x00000a00 cmdPushInt 0x00000011
0x00000a08 cmdPushStr "sys20_adv00"
0x00000a1a cmdFarcall
0x00000a1b cmdShowText 0x00000005
0x00000a22 cmdPushStr "小鳥と顔を見合わせる。"
0x00000a3f cmdPushStr ""
0x00000a46 cmdPushInt 0x00000005
0x00000a4e cmdPushInt 0x00000001
0x00000a56 cmdMsg
0x00000a57 cmdMsgStart
0x00000a58 cmdMsgWaitButton
0x00000a59 cmdPushInt 0x00000000
0x00000a61 cmdMsgClear
0x00000a62 cmdPushStr "CGM_KT16"
0x00000a71 cmdPushInt 0x00000012
0x00000a79 cmdPushInt 0x00000004
0x00000a81 cmdPOP
0x00000a82 cmdPushInt 0x00000000
0x00000a8a cmdPushInt 0x00000000
0x00000a92 cmdPushInt 0x00000003
0x00000a9a cmdPOP
0x00000a9b cmdPushInt 0x00000001
0x00000aa3 cmdPushInt 0x00000001
0x00000aab cmdPushInt 0x00000003
0x00000ab3 cmdPOP
0x00000ab4 cmdPushInt 0x00000011
0x00000abc cmdPushStr "sys20_adv00"
0x00000ace cmdFarcall
0x00000acf cmdPushInt 0x00010000
0x00000ad7 cmdPushStr "v/z205200044"
0x00000aea cmdPushInt 0x00000000
0x00000af2 cmdPCMPlay
0x00000af3 cmdShowText 0x00000006
0x00000afa cmdPushStr "「どうして？」"
0x00000b0f cmdPushStr "瑚太朗＆小鳥"
0x00000b22 cmdPushInt 0x00000006
0x00000b2a cmdPushInt 0x00000001
0x00000b32 cmdMsg
0x00000b33 cmdMsgStart
0x00000b34 cmdMsgWaitButton
0x00000b35 cmdPushInt 0x00000000
0x00000b3d cmdMsgClear
0x00000b3e cmdPushStr "CGM_AK31"
0x00000b4d cmdPushInt 0x00000012
0x00000b55 cmdPushInt 0x00000004
0x00000b5d cmdPOP
0x00000b5e cmdPushInt 0x00000000
0x00000b66 cmdPushInt 0x00000000
0x00000b6e cmdPushInt 0x00000003
0x00000b76 cmdPOP
0x00000b77 cmdPushInt 0x00000001
0x00000b7f cmdPushInt 0x00000001
0x00000b87 cmdPushInt 0x00000003
0x00000b8f cmdPOP
0x00000b90 cmdPushInt 0x00000011
0x00000b98 cmdPushStr "sys20_adv00"
0x00000baa cmdFarcall
0x00000bab cmdPushInt 0x00030000
0x00000bb3 cmdPushStr "v/z205200047"
0x00000bc6 cmdPushInt 0x00000000
0x00000bce cmdPCMPlay
0x00000bcf cmdShowText 0x00000007
0x00000bd6 cmdPushStr "「…学校側の意思よ」"
0x00000bf1 cmdPushStr "朱音"
0x00000bfc cmdPushInt 0x00000007
0x00000c04 cmdPushInt 0x00000001
0x00000c0c cmdMsg
0x00000c0d cmdMsgStart
0x00000c0e cmdMsgWaitButton
0x00000c0f cmdPushInt 0x00000000
0x00000c17 cmdMsgClear
0x00000c18 cmdShowText 0x00000008
0x00000c1f cmdPushStr "「？？？」"
0x00000c30 cmdPushStr "瑚太朗"
0x00000c3d cmdPushInt 0x00000008
0x00000c45 cmdPushInt 0x00000001
0x00000c4d cmdMsg
0x00000c4e cmdMsgStart
0x00000c4f cmdMsgWaitButton
0x00000c50 cmdPushInt 0x00000000
0x00000c58 cmdMsgClear
0x00000c59 cmdShowText 0x00000009
0x00000c60 cmdPushStr "「会長、無敵の権力があるじゃないですか」"
0x00000c8f cmdPushStr "瑚太朗"
0x00000c9c cmdPushInt 0x00000009
0x00000ca4 cmdPushInt 0x00000001
0x00000cac cmdMsg
0x00000cad cmdMsgStart
0x00000cae cmdMsgWaitButton
0x00000caf cmdPushInt 0x00000000
0x00000cb7 cmdMsgClear
0x00000cb8 cmdPushStr "CGM_AK23"
0x00000cc7 cmdPushInt 0x00000012
0x00000ccf cmdPushInt 0x00000004
0x00000cd7 cmdPOP
0x00000cd8 cmdPushInt 0x00000000
0x00000ce0 cmdPushInt 0x00000000
0x00000ce8 cmdPushInt 0x00000003
0x00000cf0 cmdPOP
0x00000cf1 cmdPushInt 0x00000001
0x00000cf9 cmdPushInt 0x00000001
0x00000d01 cmdPushInt 0x00000003
0x00000d09 cmdPOP
0x00000d0a cmdPushInt 0x00000011
0x00000d12 cmdPushStr "sys20_adv00"
0x00000d24 cmdFarcall
0x00000d25 cmdPushInt 0x00030000
0x00000d2d cmdPushStr "v/z205200052"
0x00000d40 cmdPushInt 0x00000000
0x00000d48 cmdPCMPlay
0x00000d49 cmdShowText 0x0000000a
0x00000d50 cmdPushStr "「だから要請という形になっているのよ」"
0x00000d7d cmdPushStr "朱音"
0x00000d88 cmdPushInt 0x0000000a
0x00000d90 cmdPushInt 0x00000001
0x00000d98 cmdMsg
0x00000d99 cmdMsgStart
0x00000d9a cmdMsgWaitButton
0x00000d9b cmdPushInt 0x00000000
0x00000da3 cmdMsgClear
0x00000da4 cmdPushStr "CGM_AK22"
0x00000db3 cmdPushInt 0x00000012
0x00000dbb cmdPushInt 0x00000004
0x00000dc3 cmdPOP
0x00000dc4 cmdPushInt 0x00000000
0x00000dcc cmdPushInt 0x00000000
0x00000dd4 cmdPushInt 0x00000003
0x00000ddc cmdPOP
0x00000ddd cmdPushInt 0x00000001
0x00000de5 cmdPushInt 0x00000001
0x00000ded cmdPushInt 0x00000003
0x00000df5 cmdPOP
0x00000df6 cmdPushInt 0x00000011
0x00000dfe cmdPushStr "sys20_adv00"
0x00000e10 cmdFarcall
0x00000e11 cmdPushInt 0x00030000
0x00000e19 cmdPushStr "v/z205200055"
0x00000e2c cmdPushInt 0x00000000
0x00000e34 cmdPCMPlay
0x00000e35 cmdShowText 0x0000000b
0x00000e3c cmdPushStr "「本来ならば廃部になっていてもおかしくはなかった」"
0x00000e75 cmdPushStr "朱音"
0x00000e80 cmdPushInt 0x0000000b
0x00000e88 cmdPushInt 0x00000001
0x00000e90 cmdMsg
0x00000e91 cmdMsgStart
0x00000e92 cmdMsgWaitButton
0x00000e93 cmdPushInt 0x00000000
0x00000e9b cmdMsgClear
0x00000e9c cmdPushStr "CGM_KT22"
0x00000eab cmdPushInt 0x00000012
0x00000eb3 cmdPushInt 0x00000004
0x00000ebb cmdPOP
0x00000ebc cmdPushInt 0x00000000
0x00000ec4 cmdPushInt 0x00000000
0x00000ecc cmdPushInt 0x00000003
0x00000ed4 cmdPOP
0x00000ed5 cmdPushInt 0x00000001
0x00000edd cmdPushInt 0x00000001
0x00000ee5 cmdPushInt 0x00000003
0x00000eed cmdPOP
0x00000eee cmdPushInt 0x00000011
0x00000ef6 cmdPushStr "sys20_adv00"
0x00000f08 cmdFarcall
0x00000f09 cmdPushInt 0x00010000
0x00000f11 cmdPushStr "v/z205200058"
0x00000f24 cmdPushInt 0x00000000
0x00000f2c cmdPCMPlay
0x00000f2d cmdShowText 0x0000000c
0x00000f34 cmdPushStr "「だからって…」"
0x00000f4b cmdPushStr "小鳥"
0x00000f56 cmdPushInt 0x0000000c
0x00000f5e cmdPushInt 0x00000001
0x00000f66 cmdMsg
0x00000f67 cmdMsgStart
0x00000f68 cmdMsgWaitButton
0x00000f69 cmdPushInt 0x00000000
0x00000f71 cmdMsgClear
0x00000f72 cmdPushStr "CGM_AK22"
0x00000f81 cmdPushInt 0x00000012
0x00000f89 cmdPushInt 0x00000004
0x00000f91 cmdPOP
0x00000f92 cmdPushInt 0x00000000
0x00000f9a cmdPushInt 0x00000000
0x00000fa2 cmdPushInt 0x00000003
0x00000faa cmdPOP
0x00000fab cmdPushInt 0x00000001
0x00000fb3 cmdPushInt 0x00000001
0x00000fbb cmdPushInt 0x00000003
0x00000fc3 cmdPOP
0x00000fc4 cmdPushInt 0x00000011
0x00000fcc cmdPushStr "sys20_adv00"
0x00000fde cmdFarcall
0x00000fdf cmdPushInt 0x00030000
0x00000fe7 cmdPushStr "v/z205200061"
0x00000ffa cmdPushInt 0x00000000
0x00001002 cmdPCMPlay
0x00001003 cmdShowText 0x0000000d
0x0000100a cmdPushStr "「今回のトラブルはとてもシリアスだわ。下手に抗わない方が利口ね」"
0x00001051 cmdPushStr "朱音"
0x0000105c cmdPushInt 0x0000000d
0x00001064 cmdPushInt 0x00000001
0x0000106c cmdMsg
0x0000106d cmdMsgStart
0x0000106e cmdMsgWaitButton
0x0000106f cmdPushInt 0x00000000
0x00001077 cmdMsgClear
0x00001078 cmdShowText 0x0000000e
0x0000107f cmdPushStr "「もしかして、井上の行方不明と絡んでますか？」"
0x000010b4 cmdPushStr "瑚太朗"
0x000010c1 cmdPushInt 0x0000000e
0x000010c9 cmdPushInt 0x00000001
0x000010d1 cmdMsg
0x000010d2 cmdMsgStart
0x000010d3 cmdMsgWaitButton
0x000010d4 cmdPushInt 0x00000000
0x000010dc cmdMsgClear
0x000010dd cmdPushStr "CGM_AK11"
0x000010ec cmdPushInt 0x00000012
0x000010f4 cmdPushInt 0x00000004
0x000010fc cmdPOP
0x000010fd cmdPushInt 0x00000000
0x00001105 cmdPushInt 0x00000000
0x0000110d cmdPushInt 0x00000003
0x00001115 cmdPOP
0x00001116 cmdPushInt 0x00000001
0x0000111e cmdPushInt 0x00000001
0x00001126 cmdPushInt 0x00000003
0x0000112e cmdPOP
0x0000112f cmdPushInt 0x00000011
0x00001137 cmdPushStr "sys20_adv00"
0x00001149 cmdFarcall
0x0000114a cmdPushInt 0x00030000
0x00001152 cmdPushStr "v/z205200065"
0x00001165 cmdPushInt 0x00000000
0x0000116d cmdPCMPlay
0x0000116e cmdShowText 0x0000000f
0x00001175 cmdPushStr "「もしかしなくてもそうだわ」"
0x00001198 cmdPushStr "朱音"
0x000011a3 cmdPushInt 0x0000000f
0x000011ab cmdPushInt 0x00000001
0x000011b3 cmdMsg
0x000011b4 cmdMsgStart
0x000011b5 cmdMsgWaitButton
0x000011b6 cmdPushInt 0x00000000
0x000011be cmdMsgClear
0x000011bf cmdPushStr "CGM_KT16"
0x000011ce cmdPushInt 0x00000012
0x000011d6 cmdPushInt 0x00000004
0x000011de cmdPOP
0x000011df cmdPushInt 0x00000000
0x000011e7 cmdPushInt 0x00000000
0x000011ef cmdPushInt 0x00000003
0x000011f7 cmdPOP
0x000011f8 cmdPushInt 0x00000001
0x00001200 cmdPushInt 0x00000001
0x00001208 cmdPushInt 0x00000003
0x00001210 cmdPOP
0x00001211 cmdPushInt 0x00000011
0x00001219 cmdPushStr "sys20_adv00"
0x0000122b cmdFarcall
0x0000122c cmdPushInt 0x00010000
0x00001234 cmdPushStr "v/z205200068"
0x00001247 cmdPushInt 0x00000000
0x0000124f cmdPCMPlay
0x00001250 cmdShowText 0x00000010
0x00001257 cmdPushStr "「井上さんって、瑚太朗君の友達の？」"
0x00001282 cmdPushStr "小鳥"
0x0000128d cmdPushInt 0x00000010
0x00001295 cmdPushInt 0x00000001
0x0000129d cmdMsg
0x0000129e cmdMsgStart
0x0000129f cmdMsgWaitButton
0x000012a0 cmdPushInt 0x00000000
0x000012a8 cmdMsgClear
0x000012a9 cmdShowText 0x00000011
0x000012b0 cmdPushStr "「ああ…」"
0x000012c1 cmdPushStr "瑚太朗"
0x000012ce cmdPushInt 0x00000011
0x000012d6 cmdPushInt 0x00000001
0x000012de cmdMsg
0x000012df cmdMsgStart
0x000012e0 cmdMsgWaitButton
0x000012e1 cmdPushInt 0x00000000
0x000012e9 cmdMsgClear
0x000012ea cmdPushInt 0x00000000
0x000012f2 cmdPushInt 0x00000000
0x000012fa cmdPushInt 0x00000003
0x00001302 cmdPOP
0x00001303 cmdPushInt 0x00000000
0x0000130b cmdPushInt 0x00000001
0x00001313 cmdPushInt 0x00000003
0x0000131b cmdPOP
0x0000131c cmdPushInt 0x00000011
0x00001324 cmdPushStr "sys20_adv00"
0x00001336 cmdFarcall
0x00001337 cmdShowText 0x00000012
0x0000133e cmdPushStr "井上の捜索は依然、行われている。"
0x00001365 cmdPushStr ""
0x0000136c cmdPushInt 0x00000012
0x00001374 cmdPushInt 0x00000001
0x0000137c cmdMsg
0x0000137d cmdMsgStart
0x0000137e cmdMsgWaitButton
0x0000137f cmdPushInt 0x00000000
0x00001387 cmdMsgClear
0x00001388 cmdShowText 0x00000013
0x0000138f cmdPushStr "ほとんど山狩りのような様相らしい。"
0x000013b8 cmdPushStr ""
0x000013bf cmdPushInt 0x00000013
0x000013c7 cmdPushInt 0x00000001
0x000013cf cmdMsg
0x000013d0 cmdMsgStart
0x000013d1 cmdMsgWaitButton
0x000013d2 cmdPushInt 0x00000000
0x000013da cmdMsgClear
0x000013db cmdShowText 0x00000014
0x000013e2 cmdPushStr "報道やＨＲでも発表されないのは、家族の意向。"
0x00001415 cmdPushStr ""
0x0000141c cmdPushInt 0x00000014
0x00001424 cmdPushInt 0x00000001
0x0000142c cmdMsg
0x0000142d cmdMsgStart
0x0000142e cmdMsgWaitButton
0x0000142f cmdPushInt 0x00000000
0x00001437 cmdMsgClear
0x00001438 cmdShowText 0x00000015
0x0000143f cmdPushStr "それでも耳ざとい生徒たちの間に、噂は絶えなかった。"
0x00001478 cmdPushStr ""
0x0000147f cmdPushInt 0x00000015
0x00001487 cmdPushInt 0x00000001
0x0000148f cmdMsg
0x00001490 cmdMsgStart
0x00001491 cmdMsgWaitButton
0x00001492 cmdPushInt 0x00000000
0x0000149a cmdMsgClear
0x0000149b cmdShowText 0x00000016
0x000014a2 cmdPushStr "「察するところ」"
0x000014b9 cmdPushStr "瑚太朗"
0x000014c6 cmdPushInt 0x00000016
0x000014ce cmdPushInt 0x00000001
0x000014d6 cmdMsg
0x000014d7 cmdMsgStart
0x000014d8 cmdMsgWaitButton
0x000014d9 cmdPushInt 0x00000000
0x000014e1 cmdMsgClear
0x000014e2 cmdShowText 0x00000017
0x000014e9 cmdPushStr "「不謹慎だから活動しないでくれってところですか」"
0x00001520 cmdPushStr "瑚太朗"
0x0000152d cmdPushInt 0x00000017
0x00001535 cmdPushInt 0x00000001
0x0000153d cmdMsg
0x0000153e cmdMsgStart
0x0000153f cmdMsgWaitButton
0x00001540 cmdPushInt 0x00000000
0x00001548 cmdMsgClear
0x00001549 cmdPushStr "CGM_AK31"
0x00001558 cmdPushInt 0x00000012
0x00001560 cmdPushInt 0x00000004
0x00001568 cmdPOP
0x00001569 cmdPushInt 0x00000000
0x00001571 cmdPushInt 0x00000000
0x00001579 cmdPushInt 0x00000003
0x00001581 cmdPOP
0x00001582 cmdPushInt 0x00000001
0x0000158a cmdPushInt 0x00000001
0x00001592 cmdPushInt 0x00000003
0x0000159a cmdPOP
0x0000159b cmdPushInt 0x00000011
0x000015a3 cmdPushStr "sys20_adv00"
0x000015b5 cmdFarcall
0x000015b6 cmdPushInt 0x00030000
0x000015be cmdPushStr "v/z205200081"
0x000015d1 cmdPushInt 0x00000000
0x000015d9 cmdPCMPlay
0x000015da cmdShowText 0x00000018
0x000015e1 cmdPushStr "「そういう意味もあるわね」"
0x00001602 cmdPushStr "朱音"
0x0000160d cmdPushInt 0x00000018
0x00001615 cmdPushInt 0x00000001
0x0000161d cmdMsg
0x0000161e cmdMsgStart
0x0000161f cmdMsgWaitButton
0x00001620 cmdPushInt 0x00000000
0x00001628 cmdMsgClear
0x00001629 cmdPushStr "CGM_KT22"
0x00001638 cmdPushInt 0x00000012
0x00001640 cmdPushInt 0x00000004
0x00001648 cmdPOP
0x00001649 cmdPushInt 0x00000000
0x00001651 cmdPushInt 0x00000000
0x00001659 cmdPushInt 0x00000003
0x00001661 cmdPOP
0x00001662 cmdPushInt 0x00000001
0x0000166a cmdPushInt 0x00000001
0x00001672 cmdPushInt 0x00000003
0x0000167a cmdPOP
0x0000167b cmdPushInt 0x00000011
0x00001683 cmdPushStr "sys20_adv00"
0x00001695 cmdFarcall
0x00001696 cmdPushInt 0x00010000
0x0000169e cmdPushStr "v/z205200084"
0x000016b1 cmdPushInt 0x00000000
0x000016b9 cmdPCMPlay
0x000016ba cmdShowText 0x00000019
0x000016c1 cmdPushStr "「ずれてる」"
0x000016d4 cmdPushStr "小鳥"
0x000016df cmdPushInt 0x00000019
0x000016e7 cmdPushInt 0x00000001
0x000016ef cmdMsg
0x000016f0 cmdMsgStart
0x000016f1 cmdMsgWaitButton
0x000016f2 cmdPushInt 0x00000000
0x000016fa cmdMsgClear
0x000016fb cmdPushStr "CGM_KT21"
0x0000170a cmdPushInt 0x00000012
0x00001712 cmdPushInt 0x00000004
0x0000171a cmdPOP
0x0000171b cmdPushInt 0x00000000
0x00001723 cmdPushInt 0x00000000
0x0000172b cmdPushInt 0x00000003
0x00001733 cmdPOP
0x00001734 cmdPushInt 0x00000001
0x0000173c cmdPushInt 0x00000001
0x00001744 cmdPushInt 0x00000003
0x0000174c cmdPOP
0x0000174d cmdPushInt 0x00000011
0x00001755 cmdPushStr "sys20_adv00"
0x00001767 cmdFarcall
0x00001768 cmdPushInt 0x00010000
0x00001770 cmdPushStr "v/z205200087"
0x00001783 cmdPushInt 0x00000000
0x0000178b cmdPCMPlay
0x0000178c cmdShowText 0x0000001a
0x00001793 cmdPushStr "「そういう問題じゃないと思う」"
0x000017b8 cmdPushStr "小鳥"
0x000017c3 cmdPushInt 0x0000001a
0x000017cb cmdPushInt 0x00000001
0x000017d3 cmdMsg
0x000017d4 cmdMsgStart
0x000017d5 cmdMsgWaitButton
0x000017d6 cmdPushInt 0x00000000
0x000017de cmdMsgClear
0x000017df cmdPushStr "CGM_AK23"
0x000017ee cmdPushInt 0x00000012
0x000017f6 cmdPushInt 0x00000004
0x000017fe cmdPOP
0x000017ff cmdPushInt 0x00000000
0x00001807 cmdPushInt 0x00000000
0x0000180f cmdPushInt 0x00000003
0x00001817 cmdPOP
0x00001818 cmdPushInt 0x00000001
0x00001820 cmdPushInt 0x00000001
0x00001828 cmdPushInt 0x00000003
0x00001830 cmdPOP
0x00001831 cmdPushInt 0x00000011
0x00001839 cmdPushStr "sys20_adv00"
0x0000184b cmdFarcall
0x0000184c cmdPushInt 0x00030000
0x00001854 cmdPushStr "v/z205200090"
0x00001867 cmdPushInt 0x00000000
0x0000186f cmdPCMPlay
0x00001870 cmdShowText 0x0000001b
0x00001877 cmdPushStr "「大人の世界では、軸がぶれていても理屈は通るものよ」"
0x000018b2 cmdPushStr "朱音"
0x000018bd cmdPushInt 0x0000001b
0x000018c5 cmdPushInt 0x00000001
0x000018cd cmdMsg
0x000018ce cmdMsgStart
0x000018cf cmdMsgWaitButton
0x000018d0 cmdPushInt 0x00000000
0x000018d8 cmdMsgClear
0x000018d9 cmdShowText 0x0000001c
0x000018e0 cmdPushStr "「大人がずれてるのはいいよ」"
0x00001903 cmdPushStr "瑚太朗"
0x00001910 cmdPushInt 0x0000001c
0x00001918 cmdPushInt 0x00000001
0x00001920 cmdMsg
0x00001921 cmdMsgStart
0x00001922 cmdMsgWaitButton
0x00001923 cmdPushInt 0x00000000
0x0000192b cmdMsgClear
0x0000192c cmdShowText 0x0000001d
0x00001933 cmdPushStr "「でも井上は知り合いだから、こんな状況じゃはしゃげないよな…」"
0x00001978 cmdPushStr "瑚太朗"
0x00001985 cmdPushInt 0x0000001d
0x0000198d cmdPushInt 0x00000001
0x00001995 cmdMsg
0x00001996 cmdMsgStart
0x00001997 cmdMsgWaitButton
0x00001998 cmdPushInt 0x00000000
0x000019a0 cmdMsgClear
0x000019a1 cmdPushStr "CGM_KT22"
0x000019b0 cmdPushInt 0x00000012
0x000019b8 cmdPushInt 0x00000004
0x000019c0 cmdPOP
0x000019c1 cmdPushInt 0x00000000
0x000019c9 cmdPushInt 0x00000000
0x000019d1 cmdPushInt 0x00000003
0x000019d9 cmdPOP
0x000019da cmdPushInt 0x00000001
0x000019e2 cmdPushInt 0x00000001
0x000019ea cmdPushInt 0x00000003
0x000019f2 cmdPOP
0x000019f3 cmdPushInt 0x00000011
0x000019fb cmdPushStr "sys20_adv00"
0x00001a0d cmdFarcall
0x00001a0e cmdPushInt 0x00010000
0x00001a16 cmdPushStr "v/z205200095"
0x00001a29 cmdPushInt 0x00000000
0x00001a31 cmdPCMPlay
0x00001a32 cmdShowText 0x0000001e
0x00001a39 cmdPushStr "「うん…」"
0x00001a4a cmdPushStr "小鳥"
0x00001a55 cmdPushInt 0x0000001e
0x00001a5d cmdPushInt 0x00000001
0x00001a65 cmdMsg
0x00001a66 cmdMsgStart
0x00001a67 cmdMsgWaitButton
0x00001a68 cmdPushInt 0x00000000
0x00001a70 cmdMsgClear
0x00001a71 cmdShowText 0x0000001f
0x00001a78 cmdPushStr "「そうか、もう金曜日なのか」"
0x00001a9b cmdPushStr "瑚太朗"
0x00001aa8 cmdPushInt 0x0000001f
0x00001ab0 cmdPushInt 0x00000001
0x00001ab8 cmdMsg
0x00001ab9 cmdMsgStart
0x00001aba cmdMsgWaitButton
0x00001abb cmdPushInt 0x00000000
0x00001ac3 cmdMsgClear
0x00001ac4 cmdPushInt 0x00000000
0x00001acc cmdPushInt 0x00000000
0x00001ad4 cmdPushInt 0x00000003
0x00001adc cmdPOP
0x00001add cmdPushInt 0x00000000
0x00001ae5 cmdPushInt 0x00000001
0x00001aed cmdPushInt 0x00000003
0x00001af5 cmdPOP
0x00001af6 cmdPushInt 0x00000011
0x00001afe cmdPushStr "sys20_adv00"
0x00001b10 cmdFarcall
0x00001b11 cmdShowText 0x00000020
0x00001b18 cmdPushStr "井上が失踪して５日目を数えた。"
0x00001b3d cmdPushStr ""
0x00001b44 cmdPushInt 0x00000020
0x00001b4c cmdPushInt 0x00000001
0x00001b54 cmdMsg
0x00001b55 cmdMsgStart
0x00001b56 cmdMsgWaitButton
0x00001b57 cmdPushInt 0x00000000
0x00001b5f cmdMsgClear
0x00001b60 cmdShowText 0x00000021
0x00001b67 cmdPushStr "あの薄暗い森で、ただの女の子が５日も生存できるものだろうか。"
0x00001baa cmdPushStr ""
0x00001bb1 cmdPushInt 0x00000021
0x00001bb9 cmdPushInt 0x00000001
0x00001bc1 cmdMsg
0x00001bc2 cmdMsgStart
0x00001bc3 cmdMsgWaitButton
0x00001bc4 cmdPushInt 0x00000000
0x00001bcc cmdMsgClear
0x00001bcd cmdShowText 0x00000022
0x00001bd4 cmdPushStr "携帯に登録された井上の番号が、やけに気にかかる。"
0x00001c0b cmdPushStr ""
0x00001c12 cmdPushInt 0x00000022
0x00001c1a cmdPushInt 0x00000001
0x00001c22 cmdMsg
0x00001c23 cmdMsgStart
0x00001c24 cmdMsgWaitButton
0x00001c25 cmdPushInt 0x00000000
0x00001c2d cmdMsgClear
0x00001c2e cmdShowText 0x00000023
0x00001c35 cmdPushStr "心が青に差し込む。憂鬱の色。"
0x00001c58 cmdPushStr ""
0x00001c5f cmdPushInt 0x00000023
0x00001c67 cmdPushInt 0x00000001
0x00001c6f cmdMsg
0x00001c70 cmdMsgStart
0x00001c71 cmdMsgWaitButton
0x00001c72 cmdPushInt 0x00000000
0x00001c7a cmdMsgClear
0x00001c7b cmdPushStr "CGM_AK13"
0x00001c8a cmdPushInt 0x00000012
0x00001c92 cmdPushInt 0x00000004
0x00001c9a cmdPOP
0x00001c9b cmdPushInt 0x00000000
0x00001ca3 cmdPushInt 0x00000000
0x00001cab cmdPushInt 0x00000003
0x00001cb3 cmdPOP
0x00001cb4 cmdPushInt 0x00000001
0x00001cbc cmdPushInt 0x00000001
0x00001cc4 cmdPushInt 0x00000003
0x00001ccc cmdPOP
0x00001ccd cmdPushInt 0x00000011
0x00001cd5 cmdPushStr "sys20_adv00"
0x00001ce7 cmdFarcall
0x00001ce8 cmdPushInt 0x00030000
0x00001cf0 cmdPushStr "v/z205200105"
0x00001d03 cmdPushInt 0x00000000
0x00001d0b cmdPCMPlay
0x00001d0c cmdShowText 0x00000024
0x00001d13 cmdPushStr "「こうして部室で集まることもやめて欲しいそうよ」"
0x00001d4a cmdPushStr "朱音"
0x00001d55 cmdPushInt 0x00000024
0x00001d5d cmdPushInt 0x00000001
0x00001d65 cmdMsg
0x00001d66 cmdMsgStart
0x00001d67 cmdMsgWaitButton
0x00001d68 cmdPushInt 0x00000000
0x00001d70 cmdMsgClear
0x00001d71 cmdShowText 0x00000025
0x00001d78 cmdPushStr "「は…？」"
0x00001d89 cmdPushStr "瑚太朗"
0x00001d96 cmdPushInt 0x00000025
0x00001d9e cmdPushInt 0x00000001
0x00001da6 cmdMsg
0x00001da7 cmdMsgStart
0x00001da8 cmdMsgWaitButton
0x00001da9 cmdPushInt 0x00000000
0x00001db1 cmdMsgClear
0x00001db2 cmdShowText 0x00000026
0x00001db9 cmdPushStr "「それ、全部活に対して？」"
0x00001dda cmdPushStr "瑚太朗"
0x00001de7 cmdPushInt 0x00000026
0x00001def cmdPushInt 0x00000001
0x00001df7 cmdMsg
0x00001df8 cmdMsgStart
0x00001df9 cmdMsgWaitButton
0x00001dfa cmdPushInt 0x00000000
0x00001e02 cmdMsgClear
0x00001e03 cmdPushStr "CGM_AK22"
0x00001e12 cmdPushInt 0x00000012
0x00001e1a cmdPushInt 0x00000004
0x00001e22 cmdPOP
0x00001e23 cmdPushInt 0x00000000
0x00001e2b cmdPushInt 0x00000000
0x00001e33 cmdPushInt 0x00000003
0x00001e3b cmdPOP
0x00001e3c cmdPushInt 0x00000001
0x00001e44 cmdPushInt 0x00000001
0x00001e4c cmdPushInt 0x00000003
0x00001e54 cmdPOP
0x00001e55 cmdPushInt 0x00000011
0x00001e5d cmdPushStr "sys20_adv00"
0x00001e6f cmdFarcall
0x00001e70 cmdPushInt 0x00030000
0x00001e78 cmdPushStr "v/z205200110"
0x00001e8b cmdPushInt 0x00000000
0x00001e93 cmdPCMPlay
0x00001e94 cmdShowText 0x00000027
0x00001e9b cmdPushStr "「いいえ、うちだけだわ」"
0x00001eba cmdPushStr "朱音"
0x00001ec5 cmdPushInt 0x00000027
0x00001ecd cmdPushInt 0x00000001
0x00001ed5 cmdMsg
0x00001ed6 cmdMsgStart
0x00001ed7 cmdMsgWaitButton
0x00001ed8 cmdPushInt 0x00000000
0x00001ee0 cmdMsgClear
0x00001ee1 cmdPushInt 0x00000000
0x00001ee9 cmdPushInt 0x00000000
0x00001ef1 cmdPushInt 0x00000003
0x00001ef9 cmdPOP
0x00001efa cmdPushInt 0x00000000
0x00001f02 cmdPushInt 0x00000001
0x00001f0a cmdPushInt 0x00000003
0x00001f12 cmdPOP
0x00001f13 cmdPushInt 0x00000011
0x00001f1b cmdPushStr "sys20_adv00"
0x00001f2d cmdFarcall
0x00001f2e cmdShowText 0x00000028
0x00001f35 cmdPushStr "それは事実上、狙い撃ちの活動禁止処分だ。"
0x00001f64 cmdPushStr ""
0x00001f6b cmdPushInt 0x00000028
0x00001f73 cmdPushInt 0x00000001
0x00001f7b cmdMsg
0x00001f7c cmdMsgStart
0x00001f7d cmdMsgWaitButton
0x00001f7e cmdPushInt 0x00000000
0x00001f86 cmdMsgClear
0x00001f87 cmdPushStr "CGM_KT22"
0x00001f96 cmdPushInt 0x00000012
0x00001f9e cmdPushInt 0x00000004
0x00001fa6 cmdPOP
0x00001fa7 cmdPushInt 0x00000000
0x00001faf cmdPushInt 0x00000000
0x00001fb7 cmdPushInt 0x00000003
0x00001fbf cmdPOP
0x00001fc0 cmdPushInt 0x00000001
0x00001fc8 cmdPushInt 0x00000001
0x00001fd0 cmdPushInt 0x00000003
0x00001fd8 cmdPOP
0x00001fd9 cmdPushInt 0x00000011
0x00001fe1 cmdPushStr "sys20_adv00"
0x00001ff3 cmdFarcall
0x00001ff4 cmdPushInt 0x00010000
0x00001ffc cmdPushStr "v/z205200116"
0x0000200f cmdPushInt 0x00000000
0x00002017 cmdPCMPlay
0x00002018 cmdShowText 0x00000029
0x0000201f cmdPushStr "「そんなの…なんかあたしたちが悪いみたいに…」"
0x00002054 cmdPushStr "小鳥"
0x0000205f cmdPushInt 0x00000029
0x00002067 cmdPushInt 0x00000001
0x0000206f cmdMsg
0x00002070 cmdMsgStart
0x00002071 cmdMsgWaitButton
0x00002072 cmdPushInt 0x00000000
0x0000207a cmdMsgClear
0x0000207b cmdShowText 0x0000002a
0x00002082 cmdPushStr "「警察に情報提供したの俺なんだけど…？」"
0x000020b1 cmdPushStr "瑚太朗"
0x000020be cmdPushInt 0x0000002a
0x000020c6 cmdPushInt 0x00000001
0x000020ce cmdMsg
0x000020cf cmdMsgStart
0x000020d0 cmdMsgWaitButton
0x000020d1 cmdPushInt 0x00000000
0x000020d9 cmdMsgClear
0x000020da cmdPushStr "CGM_AK11"
0x000020e9 cmdPushInt 0x00000012
0x000020f1 cmdPushInt 0x00000004
0x000020f9 cmdPOP
0x000020fa cmdPushInt 0x00000000
0x00002102 cmdPushInt 0x00000000
0x0000210a cmdPushInt 0x00000003
0x00002112 cmdPOP
0x00002113 cmdPushInt 0x00000001
0x0000211b cmdPushInt 0x00000001
0x00002123 cmdPushInt 0x00000003
0x0000212b cmdPOP
0x0000212c cmdPushInt 0x00000011
0x00002134 cmdPushStr "sys20_adv00"
0x00002146 cmdFarcall
0x00002147 cmdPushInt 0x00030000
0x0000214f cmdPushStr "v/z205200120"
0x00002162 cmdPushInt 0x00000000
0x0000216a cmdPCMPlay
0x0000216b cmdShowText 0x0000002b
0x00002172 cmdPushStr "「井上という女生徒、おまえへの対抗意識を周囲に広く伝えていたみたいね」"
0x000021bf cmdPushStr "朱音"
0x000021ca cmdPushInt 0x0000002b
0x000021d2 cmdPushInt 0x00000001
0x000021da cmdMsg
0x000021db cmdMsgStart
0x000021dc cmdMsgWaitButton
0x000021dd cmdPushInt 0x00000000
0x000021e5 cmdMsgClear
0x000021e6 cmdShowText 0x0000002c
0x000021ed cmdPushStr "「だから俺のせいだっての！？」"
0x00002212 cmdPushStr "瑚太朗"
0x0000221f cmdPushInt 0x0000002c
0x00002227 cmdPushInt 0x00000001
0x0000222f cmdMsg
0x00002230 cmdMsgStart
0x00002231 cmdMsgWaitButton
0x00002232 cmdPushInt 0x00000000
0x0000223a cmdMsgClear
0x0000223b cmdPushStr "CGM_AK22"
0x0000224a cmdPushInt 0x00000012
0x00002252 cmdPushInt 0x00000004
0x0000225a cmdPOP
0x0000225b cmdPushInt 0x00000000
0x00002263 cmdPushInt 0x00000000
0x0000226b cmdPushInt 0x00000003
0x00002273 cmdPOP
0x00002274 cmdPushInt 0x00000001
0x0000227c cmdPushInt 0x00000001
0x00002284 cmdPushInt 0x00000003
0x0000228c cmdPOP
0x0000228d cmdPushInt 0x00000011
0x00002295 cmdPushStr "sys20_adv00"
0x000022a7 cmdFarcall
0x000022a8 cmdPushInt 0x00030000
0x000022b0 cmdPushStr "v/z205200124"
0x000022c3 cmdPushInt 0x00000000
0x000022cb cmdPCMPlay
0x000022cc cmdShowText 0x0000002d
0x000022d3 cmdPushStr "「そうではないけれど、見せしめとして咎められた、ということでしょうね」"
0x00002320 cmdPushStr "朱音"
0x0000232b cmdPushInt 0x0000002d
0x00002333 cmdPushInt 0x00000001
0x0000233b cmdMsg
0x0000233c cmdMsgStart
0x0000233d cmdMsgWaitButton
0x0000233e cmdPushInt 0x00000000
0x00002346 cmdMsgClear
0x00002347 cmdShowText 0x0000002e
0x0000234e cmdPushStr "「ふざけてる…どっちが不謹慎なんだか」"
0x0000237b cmdPushStr "瑚太朗"
0x00002388 cmdPushInt 0x0000002e
0x00002390 cmdPushInt 0x00000001
0x00002398 cmdMsg
0x00002399 cmdMsgStart
0x0000239a cmdMsgWaitButton
0x0000239b cmdPushInt 0x00000000
0x000023a3 cmdMsgClear
0x000023a4 cmdShowText 0x0000002f
0x000023ab cmdPushStr "「確かに俺、井上と電話したわ。当日ね。だけどどうして…」"
0x000023ea cmdPushStr "瑚太朗"
0x000023f7 cmdPushInt 0x0000002f
0x000023ff cmdPushInt 0x00000001
0x00002407 cmdMsg
0x00002408 cmdMsgStart
0x00002409 cmdMsgWaitButton
0x0000240a cmdPushInt 0x00000000
0x00002412 cmdMsgClear
0x00002413 cmdShowText 0x00000030
0x0000241a cmdPushStr "「…俺が止めてりゃ良かったってこと？」"
0x00002447 cmdPushStr "瑚太朗"
0x00002454 cmdPushInt 0x00000030
0x0000245c cmdPushInt 0x00000001
0x00002464 cmdMsg
0x00002465 cmdMsgStart
0x00002466 cmdMsgWaitButton
0x00002467 cmdPushInt 0x00000000
0x0000246f cmdMsgClear
0x00002470 cmdShowText 0x00000031
0x00002477 cmdPushStr "「井上を止めなかった俺の責任だってこと？」"
0x000024a8 cmdPushStr "瑚太朗"
0x000024b5 cmdPushInt 0x00000031
0x000024bd cmdPushInt 0x00000001
0x000024c5 cmdMsg
0x000024c6 cmdMsgStart
0x000024c7 cmdMsgWaitButton
0x000024c8 cmdPushInt 0x00000000
0x000024d0 cmdMsgClear
0x000024d1 cmdPushStr "CGM_AK31"
0x000024e0 cmdPushInt 0x00000012
0x000024e8 cmdPushInt 0x00000004
0x000024f0 cmdPOP
0x000024f1 cmdPushInt 0x00000000
0x000024f9 cmdPushInt 0x00000000
0x00002501 cmdPushInt 0x00000003
0x00002509 cmdPOP
0x0000250a cmdPushInt 0x00000001
0x00002512 cmdPushInt 0x00000001
0x0000251a cmdPushInt 0x00000003
0x00002522 cmdPOP
0x00002523 cmdPushInt 0x00000011
0x0000252b cmdPushStr "sys20_adv00"
0x0000253d cmdFarcall
0x0000253e cmdPushInt 0x00030000
0x00002546 cmdPushStr "v/z205200131"
0x00002559 cmdPushInt 0x00000000
0x00002561 cmdPCMPlay
0x00002562 cmdShowText 0x00000032
0x00002569 cmdPushStr "「新聞部では実際にそういう声が挙がっているみたいね」"
0x000025a4 cmdPushStr "朱音"
0x000025af cmdPushInt 0x00000032
0x000025b7 cmdPushInt 0x00000001
0x000025bf cmdMsg
0x000025c0 cmdMsgStart
0x000025c1 cmdMsgWaitButton
0x000025c2 cmdPushInt 0x00000000
0x000025ca cmdMsgClear
0x000025cb cmdShowText 0x00000033
0x000025d2 cmdPushStr "「マジですか…」"
0x000025e9 cmdPushStr "瑚太朗"
0x000025f6 cmdPushInt 0x00000033
0x000025fe cmdPushInt 0x00000001
0x00002606 cmdMsg
0x00002607 cmdMsgStart
0x00002608 cmdMsgWaitButton
0x00002609 cmdPushInt 0x00000000
0x00002611 cmdMsgClear
0x00002612 cmdPushStr "CGM_KT13"
0x00002621 cmdPushInt 0x00000012
0x00002629 cmdPushInt 0x00000004
0x00002631 cmdPOP
0x00002632 cmdPushInt 0x00000000
0x0000263a cmdPushInt 0x00000000
0x00002642 cmdPushInt 0x00000003
0x0000264a cmdPOP
0x0000264b cmdPushInt 0x00000001
0x00002653 cmdPushInt 0x00000001
0x0000265b cmdPushInt 0x00000003
0x00002663 cmdPOP
0x00002664 cmdPushInt 0x00000011
0x0000266c cmdPushStr "sys20_adv00"
0x0000267e cmdFarcall
0x0000267f cmdPushInt 0x00010000
0x00002687 cmdPushStr "v/z205200135"
0x0000269a cmdPushInt 0x00000000
0x000026a2 cmdPCMPlay
0x000026a3 cmdShowText 0x00000034
0x000026aa cmdPushStr "「止められたの？」"
0x000026c3 cmdPushStr "小鳥"
0x000026ce cmdPushInt 0x00000034
0x000026d6 cmdPushInt 0x00000001
0x000026de cmdMsg
0x000026df cmdMsgStart
0x000026e0 cmdMsgWaitButton
0x000026e1 cmdPushInt 0x00000000
0x000026e9 cmdMsgClear
0x000026ea cmdShowText 0x00000035
0x000026f1 cmdPushStr "「いや、無理だったろうな。そういう流れじゃなかった」"
0x0000272c cmdPushStr "瑚太朗"
0x00002739 cmdPushInt 0x00000035
0x00002741 cmdPushInt 0x00000001
0x00002749 cmdMsg
0x0000274a cmdMsgStart
0x0000274b cmdMsgWaitButton
0x0000274c cmdPushInt 0x00000000
0x00002754 cmdMsgClear
0x00002755 cmdShowText 0x00000036
0x0000275c cmdPushStr "「そもそも、取材はあいつの方が長じた分野なんだぞ？　その先駆者が行くってのを制止するって判断自体、あの時点じゃ現実味がねぇよ」"
0x000027e1 cmdPushStr "瑚太朗"
0x000027ee cmdPushInt 0x00000036
0x000027f6 cmdPushInt 0x00000001
0x000027fe cmdMsg
0x000027ff cmdMsgStart
0x00002800 cmdMsgWaitButton
0x00002801 cmdPushInt 0x00000000
0x00002809 cmdMsgClear
0x0000280a cmdShowText 0x00000037
0x00002811 cmdPushStr "「そこを問われるなら、新聞部の存在だって問題ありなんじゃねぇの？」"
0x0000285a cmdPushStr "瑚太朗"
0x00002867 cmdPushInt 0x00000037
0x0000286f cmdPushInt 0x00000001
0x00002877 cmdMsg
0x00002878 cmdMsgStart
0x00002879 cmdMsgWaitButton
0x0000287a cmdPushInt 0x00000000
0x00002882 cmdMsgClear
0x00002883 cmdPushStr "CGM_AK22"
0x00002892 cmdPushInt 0x00000012
0x0000289a cmdPushInt 0x00000004
0x000028a2 cmdPOP
0x000028a3 cmdPushInt 0x00000000
0x000028ab cmdPushInt 0x00000000
0x000028b3 cmdPushInt 0x00000003
0x000028bb cmdPOP
0x000028bc cmdPushInt 0x00000001
0x000028c4 cmdPushInt 0x00000001
0x000028cc cmdPushInt 0x00000003
0x000028d4 cmdPOP
0x000028d5 cmdPushInt 0x00000011
0x000028dd cmdPushStr "sys20_adv00"
0x000028ef cmdFarcall
0x000028f0 cmdPushInt 0x00030000
0x000028f8 cmdPushStr "v/z205200141"
0x0000290b cmdPushInt 0x00000000
0x00002913 cmdPCMPlay
0x00002914 cmdShowText 0x00000038
0x0000291b cmdPushStr "「問いただすまでもなく、この出来事は本人のあやまちだわ」"
0x0000295a cmdPushStr "朱音"
0x00002965 cmdPushInt 0x00000038
0x0000296d cmdPushInt 0x00000001
0x00002975 cmdMsg
0x00002976 cmdMsgStart
0x00002977 cmdMsgWaitButton
0x00002978 cmdPushInt 0x00000000
0x00002980 cmdMsgClear
0x00002981 cmdPushStr "CGM_AK31"
0x00002990 cmdPushInt 0x00000012
0x00002998 cmdPushInt 0x00000004
0x000029a0 cmdPOP
0x000029a1 cmdPushInt 0x00000000
0x000029a9 cmdPushInt 0x00000000
0x000029b1 cmdPushInt 0x00000003
0x000029b9 cmdPOP
0x000029ba cmdPushInt 0x00000001
0x000029c2 cmdPushInt 0x00000001
0x000029ca cmdPushInt 0x00000003
0x000029d2 cmdPOP
0x000029d3 cmdPushInt 0x00000011
0x000029db cmdPushStr "sys20_adv00"
0x000029ed cmdFarcall
0x000029ee cmdPushInt 0x00030000
0x000029f6 cmdPushStr "v/z205200144"
0x00002a09 cmdPushInt 0x00000000
0x00002a11 cmdPCMPlay
0x00002a12 cmdShowText 0x00000039
0x00002a19 cmdPushStr "「けれど責任問題とは、その時その場に居合わせた時点でもう降りかかってくるものよ」"
0x00002a70 cmdPushStr "朱音"
0x00002a7b cmdPushInt 0x00000039
0x00002a83 cmdPushInt 0x00000001
0x00002a8b cmdMsg
0x00002a8c cmdMsgStart
0x00002a8d cmdMsgWaitButton
0x00002a8e cmdPushInt 0x00000000
0x00002a96 cmdMsgClear
0x00002a97 cmdShowText 0x0000003a
0x00002a9e cmdPushStr "「う…わかる…けど…」"
0x00002abb cmdPushStr "瑚太朗"
0x00002ac8 cmdPushInt 0x0000003a
0x00002ad0 cmdPushInt 0x00000001
0x00002ad8 cmdMsg
0x00002ad9 cmdMsgStart
0x00002ada cmdMsgWaitButton
0x00002adb cmdPushInt 0x00000000
0x00002ae3 cmdMsgClear
0x00002ae4 cmdPushInt 0x00000000
0x00002aec cmdPushInt 0x00000000
0x00002af4 cmdPushInt 0x00000003
0x00002afc cmdPOP
0x00002afd cmdPushInt 0x00000000
0x00002b05 cmdPushInt 0x00000001
0x00002b0d cmdPushInt 0x00000003
0x00002b15 cmdPOP
0x00002b16 cmdPushInt 0x00000011
0x00002b1e cmdPushStr "sys20_adv00"
0x00002b30 cmdFarcall
0x00002b31 cmdShowText 0x0000003b
0x00002b38 cmdPushStr "理解はできるけど…"
0x00002b51 cmdPushStr ""
0x00002b58 cmdPushInt 0x0000003b
0x00002b60 cmdPushInt 0x00000001
0x00002b68 cmdMsg
0x00002b69 cmdMsgStart
0x00002b6a cmdMsgWaitButton
0x00002b6b cmdPushInt 0x00000000
0x00002b73 cmdMsgClear
0x00002b74 cmdShowText 0x0000003c
0x00002b7b cmdPushStr "いつもみたいに、笑って受け流すことはできなかった。"
0x00002bb4 cmdPushStr ""
0x00002bbb cmdPushInt 0x0000003c
0x00002bc3 cmdPushInt 0x00000001
0x00002bcb cmdMsg
0x00002bcc cmdMsgStart
0x00002bcd cmdMsgWaitButton
0x00002bce cmdPushInt 0x00000000
0x00002bd6 cmdMsgClear
0x00002bd7 cmdShowText 0x0000003d
0x00002bde cmdPushStr "腹が立つのは、一心不乱に井上の捜索にあたらなきゃいけない時に、処罰対象を論じるという姿勢だ。"
0x00002c41 cmdPushStr ""
0x00002c48 cmdPushInt 0x0000003d
0x00002c50 cmdPushInt 0x00000001
0x00002c58 cmdMsg
0x00002c59 cmdMsgStart
0x00002c5a cmdMsgWaitButton
0x00002c5b cmdPushInt 0x00000000
0x00002c63 cmdMsgClear
0x00002c64 cmdPushStr "CGM_SZ10h"
0x00002c74 cmdPushInt 0x00000012
0x00002c7c cmdPushInt 0x00000004
0x00002c84 cmdPOP
0x00002c85 cmdPushInt 0x00000000
0x00002c8d cmdPushInt 0x00000000
0x00002c95 cmdPushInt 0x00000003
0x00002c9d cmdPOP
0x00002c9e cmdPushInt 0x00000001
0x00002ca6 cmdPushInt 0x00000001
0x00002cae cmdPushInt 0x00000003
0x00002cb6 cmdPOP
0x00002cb7 cmdPushInt 0x00000011
0x00002cbf cmdPushStr "sys20_adv00"
0x00002cd1 cmdFarcall
0x00002cd2 cmdPushInt 0x00040000
0x00002cda cmdPushStr "v/z205200155"
0x00002ced cmdPushInt 0x00000000
0x00002cf5 cmdPCMPlay
0x00002cf6 cmdShowText 0x0000003e
0x00002cfd cmdPushStr "「きた子」"
0x00002d0e cmdPushStr "静流"
0x00002d19 cmdPushInt 0x0000003e
0x00002d21 cmdPushInt 0x00000001
0x00002d29 cmdMsg
0x00002d2a cmdMsgStart
0x00002d2b cmdMsgWaitButton
0x00002d2c cmdPushInt 0x00000000
0x00002d34 cmdMsgClear
0x00002d35 cmdPushStr "CGM_LC19"
0x00002d44 cmdPushInt 0x00000012
0x00002d4c cmdPushInt 0x00000004
0x00002d54 cmdPOP
0x00002d55 cmdPushStr "CGM_SZ41"
0x00002d64 cmdPushInt 0x00000013
0x00002d6c cmdPushInt 0x00000004
0x00002d74 cmdPOP
0x00002d75 cmdPushInt 0x00000000
0x00002d7d cmdPushInt 0x00000000
0x00002d85 cmdPushInt 0x00000003
0x00002d8d cmdPOP
0x00002d8e cmdPushInt 0x00000002
0x00002d96 cmdPushInt 0x00000001
0x00002d9e cmdPushInt 0x00000003
0x00002da6 cmdPOP
0x00002da7 cmdPushInt 0x00000011
0x00002daf cmdPushStr "sys20_adv00"
0x00002dc1 cmdFarcall
0x00002dc2 cmdPushInt 0x00050000
0x00002dca cmdPushStr "v/z205200158"
0x00002ddd cmdPushInt 0x00000000
0x00002de5 cmdPCMPlay
0x00002de6 cmdShowText 0x0000003f
0x00002ded cmdPushStr "「連れてこられた子…」"
0x00002e0a cmdPushStr "ルチア"
0x00002e17 cmdPushInt 0x0000003f
0x00002e1f cmdPushInt 0x00000001
0x00002e27 cmdMsg
0x00002e28 cmdMsgStart
0x00002e29 cmdMsgWaitButton
0x00002e2a cmdPushInt 0x00000000
0x00002e32 cmdMsgClear
0x00002e33 cmdPushStr "CGM_CH12h"
0x00002e43 cmdPushInt 0x00000012
0x00002e4b cmdPushInt 0x00000004
0x00002e53 cmdPOP
0x00002e54 cmdPushInt 0x00000000
0x00002e5c cmdPushInt 0x00000000
0x00002e64 cmdPushInt 0x00000003
0x00002e6c cmdPOP
0x00002e6d cmdPushInt 0x00000001
0x00002e75 cmdPushInt 0x00000001
0x00002e7d cmdPushInt 0x00000003
0x00002e85 cmdPOP
0x00002e86 cmdPushInt 0x00000011
0x00002e8e cmdPushStr "sys20_adv00"
0x00002ea0 cmdFarcall
0x00002ea1 cmdPushInt 0x0002f400
0x00002ea9 cmdPushStr "v/z205200161"
0x00002ebc cmdPushInt 0x00000000
0x00002ec4 cmdPCMPlay
0x00002ec5 cmdShowText 0x00000040
0x00002ecc cmdPushStr "「今日も頑張りましょー」"
0x00002eeb cmdPushStr "ちはや"
0x00002ef8 cmdPushInt 0x00000040
0x00002f00 cmdPushInt 0x00000001
0x00002f08 cmdMsg
0x00002f09 cmdMsgStart
0x00002f0a cmdMsgWaitButton
0x00002f0b cmdPushInt 0x00000000
0x00002f13 cmdMsgClear
0x00002f14 cmdPushStr "CGM_LC11h"
0x00002f24 cmdPushInt 0x00000012
0x00002f2c cmdPushInt 0x00000004
0x00002f34 cmdPOP
0x00002f35 cmdPushInt 0x00000000
0x00002f3d cmdPushInt 0x00000000
0x00002f45 cmdPushInt 0x00000003
0x00002f4d cmdPOP
0x00002f4e cmdPushInt 0x00000001
0x00002f56 cmdPushInt 0x00000001
0x00002f5e cmdPushInt 0x00000003
0x00002f66 cmdPOP
0x00002f67 cmdPushInt 0x00000011
0x00002f6f cmdPushStr "sys20_adv00"
0x00002f81 cmdFarcall
0x00002f82 cmdPushInt 0x00050000
0x00002f8a cmdPushStr "v/z205200164"
0x00002f9d cmdPushInt 0x00000000
0x00002fa5 cmdPCMPlay
0x00002fa6 cmdShowText 0x00000041
0x00002fad cmdPushStr "「どうした？　揃って陰気な顔をして」"
0x00002fd8 cmdPushStr "ルチア"
0x00002fe5 cmdPushInt 0x00000041
0x00002fed cmdPushInt 0x00000001
0x00002ff5 cmdMsg
0x00002ff6 cmdMsgStart
0x00002ff7 cmdMsgWaitButton
0x00002ff8 cmdPushInt 0x00000000
0x00003000 cmdMsgClear
0x00003001 cmdShowText 0x00000042
0x00003008 cmdPushStr "「…ヘビィな問題を持てあましてたとこ」"
0x00003035 cmdPushStr "瑚太朗"
0x00003042 cmdPushInt 0x00000042
0x0000304a cmdPushInt 0x00000001
0x00003052 cmdMsg
0x00003053 cmdMsgStart
0x00003054 cmdMsgWaitButton
0x00003055 cmdPushInt 0x00000000
0x0000305d cmdMsgClear
0x0000305e cmdPushInt 0x00000000
0x00003066 cmdPushInt 0x00000000
0x0000306e cmdPushInt 0x00000003
0x00003076 cmdPOP
0x00003077 cmdPushInt 0x00000001
0x0000307f cmdPushInt 0x00000001
0x00003087 cmdPushInt 0x00000003
0x0000308f cmdPOP
0x00003090 cmdPushStr "KURO"
0x0000309b cmdPushInt 0x00000000
0x000030a3 cmdPushInt 0x00000004
0x000030ab cmdPOP
0x000030ac cmdPushInt 0x00000000
0x000030b4 cmdPushStr "sys20_adv00"
0x000030c6 cmdFarcall
0x000030c7 cmdPushInt 0x00000014
0x000030cf cmdPushInt 0x00000000
0x000030d7 cmdPushInt 0x00000003
0x000030df cmdPOP
0x000030e0 cmdPushInt 0x00000000
0x000030e8 cmdPushStr "sys20_adv01"
0x000030fa cmdFarcall
0x000030fb cmdPushInt 0x00000000
0x00003103 cmdPushInt 0x00000000
0x0000310b cmdPushInt 0x00000003
0x00003113 cmdPOP
0x00003114 cmdPushInt 0x00000001
0x0000311c cmdPushInt 0x00000001
0x00003124 cmdPushInt 0x00000003
0x0000312c cmdPOP
0x0000312d cmdPushStr "BG004"
0x00003139 cmdPushInt 0x00000000
0x00003141 cmdPushInt 0x00000004
0x00003149 cmdPOP
0x0000314a cmdPushInt 0x00000000
0x00003152 cmdPushStr "sys20_adv00"
0x00003164 cmdFarcall
0x00003165 cmdPushInt 0x00000014
0x0000316d cmdPushInt 0x00000000
0x00003175 cmdPushInt 0x00000003
0x0000317d cmdPOP
0x0000317e cmdPushInt 0x00000000
0x00003186 cmdPushStr "sys20_adv01"
0x00003198 cmdFarcall
0x00003199 cmdPushStr "CGM_CH30"
0x000031a8 cmdPushInt 0x00000012
0x000031b0 cmdPushInt 0x00000004
0x000031b8 cmdPOP
0x000031b9 cmdPushInt 0x00000000
0x000031c1 cmdPushInt 0x00000000
0x000031c9 cmdPushInt 0x00000003
0x000031d1 cmdPOP
0x000031d2 cmdPushInt 0x00000001
0x000031da cmdPushInt 0x00000001
0x000031e2 cmdPushInt 0x00000003
0x000031ea cmdPOP
0x000031eb cmdPushInt 0x00000011
0x000031f3 cmdPushStr "sys20_adv00"
0x00003205 cmdFarcall
0x00003206 cmdPushInt 0x0002f400
0x0000320e cmdPushStr "v/z205200173"
0x00003221 cmdPushInt 0x00000000
0x00003229 cmdPCMPlay
0x0000322a cmdShowText 0x00000043
0x00003231 cmdPushStr "「…井上さんの件、かなり噂になってますもんね」"
0x00003266 cmdPushStr "ちはや"
0x00003273 cmdPushInt 0x00000043
0x0000327b cmdPushInt 0x00000001
0x00003283 cmdMsg
0x00003284 cmdMsgStart
0x00003285 cmdMsgWaitButton
0x00003286 cmdPushInt 0x00000000
0x0000328e cmdMsgClear
0x0000328f cmdPushStr "CGM_LC11h"
0x0000329f cmdPushInt 0x00000012
0x000032a7 cmdPushInt 0x00000004
0x000032af cmdPOP
0x000032b0 cmdPushInt 0x00000000
0x000032b8 cmdPushInt 0x00000000
0x000032c0 cmdPushInt 0x00000003
0x000032c8 cmdPOP
0x000032c9 cmdPushInt 0x00000001
0x000032d1 cmdPushInt 0x00000001
0x000032d9 cmdPushInt 0x00000003
0x000032e1 cmdPOP
0x000032e2 cmdPushInt 0x00000011
0x000032ea cmdPushStr "sys20_adv00"
0x000032fc cmdFarcall
0x000032fd cmdPushInt 0x00050000
0x00003305 cmdPushStr "v/z205200176"
0x00003318 cmdPushInt 0x00000000
0x00003320 cmdPCMPlay
0x00003321 cmdShowText 0x00000044
0x00003328 cmdPushStr "「無理もない。委員会でも議題になっていたくらいだからな」"
0x00003367 cmdPushStr "ルチア"
0x00003374 cmdPushInt 0x00000044
0x0000337c cmdPushInt 0x00000001
0x00003384 cmdMsg
0x00003385 cmdMsgStart
0x00003386 cmdMsgWaitButton
0x00003387 cmdPushInt 0x00000000
0x0000338f cmdMsgClear
0x00003390 cmdPushStr "CGM_KT16"
0x0000339f cmdPushInt 0x00000012
0x000033a7 cmdPushInt 0x00000004
0x000033af cmdPOP
0x000033b0 cmdPushInt 0x00000000
0x000033b8 cmdPushInt 0x00000000
0x000033c0 cmdPushInt 0x00000003
0x000033c8 cmdPOP
0x000033c9 cmdPushInt 0x00000001
0x000033d1 cmdPushInt 0x00000001
0x000033d9 cmdPushInt 0x00000003
0x000033e1 cmdPOP
0x000033e2 cmdPushInt 0x00000011
0x000033ea cmdPushStr "sys20_adv00"
0x000033fc cmdFarcall
0x000033fd cmdPushInt 0x00010000
0x00003405 cmdPushStr "v/z205200179"
0x00003418 cmdPushInt 0x00000000
0x00003420 cmdPCMPlay
0x00003421 cmdShowText 0x00000045
0x00003428 cmdPushStr "「やっぱりみんな聞いてたんだね」"
0x0000344f cmdPushStr "小鳥"
0x0000345a cmdPushInt 0x00000045
0x00003462 cmdPushInt 0x00000001
0x0000346a cmdMsg
0x0000346b cmdMsgStart
0x0000346c cmdMsgWaitButton
0x0000346d cmdPushInt 0x00000000
0x00003475 cmdMsgClear
0x00003476 cmdPushStr "CGM_SZ12s"
0x00003486 cmdPushInt 0x00000012
0x0000348e cmdPushInt 0x00000004
0x00003496 cmdPOP
0x00003497 cmdPushInt 0x00000000
0x0000349f cmdPushInt 0x00000000
0x000034a7 cmdPushInt 0x00000003
0x000034af cmdPOP
0x000034b0 cmdPushInt 0x00000001
0x000034b8 cmdPushInt 0x00000001
0x000034c0 cmdPushInt 0x00000003
0x000034c8 cmdPOP
0x000034c9 cmdPushInt 0x00000011
0x000034d1 cmdPushStr "sys20_adv00"
0x000034e3 cmdFarcall
0x000034e4 cmdPushInt 0x00040000
0x000034ec cmdPushStr "v/z205200182"
0x000034ff cmdPushInt 0x00000000
0x00003507 cmdPCMPlay
0x00003508 cmdShowText 0x00000046
0x0000350f cmdPushStr "「クラスもその話でもちきりだ」"
0x00003534 cmdPushStr "静流"
0x0000353f cmdPushInt 0x00000046
0x00003547 cmdPushInt 0x00000001
0x0000354f cmdMsg
0x00003550 cmdMsgStart
0x00003551 cmdMsgWaitButton
0x00003552 cmdPushInt 0x00000000
0x0000355a cmdMsgClear
0x0000355b cmdPushStr "CGM_AK13"
0x0000356a cmdPushInt 0x00000012
0x00003572 cmdPushInt 0x00000004
0x0000357a cmdPOP
0x0000357b cmdPushInt 0x00000000
0x00003583 cmdPushInt 0x00000000
0x0000358b cmdPushInt 0x00000003
0x00003593 cmdPOP
0x00003594 cmdPushInt 0x00000001
0x0000359c cmdPushInt 0x00000001
0x000035a4 cmdPushInt 0x00000003
0x000035ac cmdPOP
0x000035ad cmdPushInt 0x00000011
0x000035b5 cmdPushStr "sys20_adv00"
0x000035c7 cmdFarcall
0x000035c8 cmdPushInt 0x00030000
0x000035d0 cmdPushStr "v/z205200185"
0x000035e3 cmdPushInt 0x00000000
0x000035eb cmdPCMPlay
0x000035ec cmdShowText 0x00000047
0x000035f3 cmdPushStr "「うちの学校としては、とても大きな事件だからよ」"
0x0000362a cmdPushStr "朱音"
0x00003635 cmdPushInt 0x00000047
0x0000363d cmdPushInt 0x00000001
0x00003645 cmdMsg
0x00003646 cmdMsgStart
0x00003647 cmdMsgWaitButton
0x00003648 cmdPushInt 0x00000000
0x00003650 cmdMsgClear
0x00003651 cmdPushStr "CGM_LC11h"
0x00003661 cmdPushInt 0x00000012
0x00003669 cmdPushInt 0x00000004
0x00003671 cmdPOP
0x00003672 cmdPushInt 0x00000000
0x0000367a cmdPushInt 0x00000000
0x00003682 cmdPushInt 0x00000003
0x0000368a cmdPOP
0x0000368b cmdPushInt 0x00000001
0x00003693 cmdPushInt 0x00000001
0x0000369b cmdPushInt 0x00000003
0x000036a3 cmdPOP
0x000036a4 cmdPushInt 0x00000011
0x000036ac cmdPushStr "sys20_adv00"
0x000036be cmdFarcall
0x000036bf cmdPushInt 0x00050000
0x000036c7 cmdPushStr "v/z205200188"
0x000036da cmdPushInt 0x00000000
0x000036e2 cmdPCMPlay
0x000036e3 cmdShowText 0x00000048
0x000036ea cmdPushStr "「中途半端に隠すより、学校側から正式に発表してもらった方が、皆の気分も落ち着く…という意見も多い」"
0x00003753 cmdPushStr "ルチア"
0x00003760 cmdPushInt 0x00000048
0x00003768 cmdPushInt 0x00000001
0x00003770 cmdMsg
0x00003771 cmdMsgStart
0x00003772 cmdMsgWaitButton
0x00003773 cmdPushInt 0x00000000
0x0000377b cmdMsgClear
0x0000377c cmdPushStr "CGM_LC21"
0x0000378b cmdPushInt 0x00000012
0x00003793 cmdPushInt 0x00000004
0x0000379b cmdPOP
0x0000379c cmdPushInt 0x00000000
0x000037a4 cmdPushInt 0x00000000
0x000037ac cmdPushInt 0x00000003
0x000037b4 cmdPOP
0x000037b5 cmdPushInt 0x00000001
0x000037bd cmdPushInt 0x00000001
0x000037c5 cmdPushInt 0x00000003
0x000037cd cmdPOP
0x000037ce cmdPushInt 0x00000011
0x000037d6 cmdPushStr "sys20_adv00"
0x000037e8 cmdFarcall
0x000037e9 cmdPushInt 0x00050000
0x000037f1 cmdPushStr "v/z205200191"
0x00003804 cmdPushInt 0x00000000
0x0000380c cmdPCMPlay
0x0000380d cmdShowText 0x00000049
0x00003814 cmdPushStr "「とはいえ、そうそう大人に英断は求められないな」"
0x0000384b cmdPushStr "ルチア"
0x00003858 cmdPushInt 0x00000049
0x00003860 cmdPushInt 0x00000001
0x00003868 cmdMsg
0x00003869 cmdMsgStart
0x0000386a cmdMsgWaitButton
0x0000386b cmdPushInt 0x00000000
0x00003873 cmdMsgClear
0x00003874 cmdPushStr "CGM_SZ12"
0x00003883 cmdPushInt 0x00000012
0x0000388b cmdPushInt 0x00000004
0x00003893 cmdPOP
0x00003894 cmdPushInt 0x00000000
0x0000389c cmdPushInt 0x00000000
0x000038a4 cmdPushInt 0x00000003
0x000038ac cmdPOP
0x000038ad cmdPushInt 0x00000001
0x000038b5 cmdPushInt 0x00000001
0x000038bd cmdPushInt 0x00000003
0x000038c5 cmdPOP
0x000038c6 cmdPushInt 0x00000011
0x000038ce cmdPushStr "sys20_adv00"
0x000038e0 cmdFarcall
0x000038e1 cmdPushInt 0x00040000
0x000038e9 cmdPushStr "v/z205200194"
0x000038fc cmdPushInt 0x00000000
0x00003904 cmdPCMPlay
0x00003905 cmdShowText 0x0000004a
0x0000390c cmdPushStr "「井上さん…いいやつだった…」"
0x00003931 cmdPushStr "静流"
0x0000393c cmdPushInt 0x0000004a
0x00003944 cmdPushInt 0x00000001
0x0000394c cmdMsg
0x0000394d cmdMsgStart
0x0000394e cmdMsgWaitButton
0x0000394f cmdPushInt 0x00000000
0x00003957 cmdMsgClear
0x00003958 cmdPushStr "CGM_SZ42h"
0x00003968 cmdPushInt 0x00000012
0x00003970 cmdPushInt 0x00000004
0x00003978 cmdPOP
0x00003979 cmdPushInt 0x00000000
0x00003981 cmdPushInt 0x00000000
0x00003989 cmdPushInt 0x00000003
0x00003991 cmdPOP
0x00003992 cmdPushInt 0x00000001
0x0000399a cmdPushInt 0x00000001
0x000039a2 cmdPushInt 0x00000003
0x000039aa cmdPOP
0x000039ab cmdPushInt 0x00000011
0x000039b3 cmdPushStr "sys20_adv00"
0x000039c5 cmdFarcall
0x000039c6 cmdPushInt 0x00040000
0x000039ce cmdPushStr "v/z205200197"
0x000039e1 cmdPushInt 0x00000000
0x000039e9 cmdPCMPlay
0x000039ea cmdShowText 0x0000004b
0x000039f1 cmdPushStr "「心配でならない…」"
0x00003a0c cmdPushStr "静流"
0x00003a17 cmdPushInt 0x0000004b
0x00003a1f cmdPushInt 0x00000001
0x00003a27 cmdMsg
0x00003a28 cmdMsgStart
0x00003a29 cmdMsgWaitButton
0x00003a2a cmdPushInt 0x00000000
0x00003a32 cmdMsgClear
0x00003a33 cmdShowText 0x0000004c
0x00003a3a cmdPushStr "「おまえ知り合いなのか？」"
0x00003a5b cmdPushStr "瑚太朗"
0x00003a68 cmdPushInt 0x0000004c
0x00003a70 cmdPushInt 0x00000001
0x00003a78 cmdMsg
0x00003a79 cmdMsgStart
0x00003a7a cmdMsgWaitButton
0x00003a7b cmdPushInt 0x00000000
0x00003a83 cmdMsgClear
0x00003a84 cmdPushStr "CGM_SZ30"
0x00003a93 cmdPushInt 0x00000012
0x00003a9b cmdPushInt 0x00000004
0x00003aa3 cmdPOP
0x00003aa4 cmdPushInt 0x00000000
0x00003aac cmdPushInt 0x00000000
0x00003ab4 cmdPushInt 0x00000003
0x00003abc cmdPOP
0x00003abd cmdPushInt 0x00000001
0x00003ac5 cmdPushInt 0x00000001
0x00003acd cmdPushInt 0x00000003
0x00003ad5 cmdPOP
0x00003ad6 cmdPushInt 0x00000011
0x00003ade cmdPushStr "sys20_adv00"
0x00003af0 cmdFarcall
0x00003af1 cmdPushInt 0x00040000
0x00003af9 cmdPushStr "v/z205200201"
0x00003b0c cmdPushInt 0x00000000
0x00003b14 cmdPCMPlay
0x00003b15 cmdShowText 0x0000004d
0x00003b1c cmdPushStr "「………」"
0x00003b2d cmdPushStr "静流"
0x00003b38 cmdPushInt 0x0000004d
0x00003b40 cmdPushInt 0x00000001
0x00003b48 cmdMsg
0x00003b49 cmdMsgStart
0x00003b4a cmdMsgWaitButton
0x00003b4b cmdPushInt 0x00000000
0x00003b53 cmdMsgClear
0x00003b54 cmdShowText 0x0000004e
0x00003b5b cmdPushStr "当然でしょう？　という顔をする。"
0x00003b82 cmdPushStr ""
0x00003b89 cmdPushInt 0x0000004e
0x00003b91 cmdPushInt 0x00000001
0x00003b99 cmdMsg
0x00003b9a cmdMsgStart
0x00003b9b cmdMsgWaitButton
0x00003b9c cmdPushInt 0x00000000
0x00003ba4 cmdMsgClear
0x00003ba5 cmdShowText 0x0000004f
0x00003bac cmdPushStr "意外だ…"
0x00003bbb cmdPushStr ""
0x00003bc2 cmdPushInt 0x0000004f
0x00003bca cmdPushInt 0x00000001
0x00003bd2 cmdMsg
0x00003bd3 cmdMsgStart
0x00003bd4 cmdMsgWaitButton
0x00003bd5 cmdPushInt 0x00000000
0x00003bdd cmdMsgClear
0x00003bde cmdPushStr "CGM_SZ10"
0x00003bed cmdPushInt 0x00000012
0x00003bf5 cmdPushInt 0x00000004
0x00003bfd cmdPOP
0x00003bfe cmdPushInt 0x00000000
0x00003c06 cmdPushInt 0x00000000
0x00003c0e cmdPushInt 0x00000003
0x00003c16 cmdPOP
0x00003c17 cmdPushInt 0x00000001
0x00003c1f cmdPushInt 0x00000001
0x00003c27 cmdPushInt 0x00000003
0x00003c2f cmdPOP
0x00003c30 cmdPushInt 0x00000011
0x00003c38 cmdPushStr "sys20_adv00"
0x00003c4a cmdFarcall
0x00003c4b cmdPushInt 0x00040000
0x00003c53 cmdPushStr "v/z205200207"
0x00003c66 cmdPushInt 0x00000000
0x00003c6e cmdPCMPlay
0x00003c6f cmdShowText 0x00000050
0x00003c76 cmdPushStr "「なんか話しかけてきた」"
0x00003c95 cmdPushStr "静流"
0x00003ca0 cmdPushInt 0x00000050
0x00003ca8 cmdPushInt 0x00000001
0x00003cb0 cmdMsg
0x00003cb1 cmdMsgStart
0x00003cb2 cmdMsgWaitButton
0x00003cb3 cmdPushInt 0x00000000
0x00003cbb cmdMsgClear
0x00003cbc cmdPushStr "CGM_SZ12"
0x00003ccb cmdPushInt 0x00000012
0x00003cd3 cmdPushInt 0x00000004
0x00003cdb cmdPOP
0x00003cdc cmdPushInt 0x00000000
0x00003ce4 cmdPushInt 0x00000000
0x00003cec cmdPushInt 0x00000003
0x00003cf4 cmdPOP
0x00003cf5 cmdPushInt 0x00000001
0x00003cfd cmdPushInt 0x00000001
0x00003d05 cmdPushInt 0x00000003
0x00003d0d cmdPOP
0x00003d0e cmdPushInt 0x00000011
0x00003d16 cmdPushStr "sys20_adv00"
0x00003d28 cmdFarcall
0x00003d29 cmdPushInt 0x00040000
0x00003d31 cmdPushStr "v/z205200210"
0x00003d44 cmdPushInt 0x00000000
0x00003d4c cmdPCMPlay
0x00003d4d cmdShowText 0x00000051
0x00003d54 cmdPushStr "「お菓子をくれた…」"
0x00003d6f cmdPushStr "静流"
0x00003d7a cmdPushInt 0x00000051
0x00003d82 cmdPushInt 0x00000001
0x00003d8a cmdMsg
0x00003d8b cmdMsgStart
0x00003d8c cmdMsgWaitButton
0x00003d8d cmdPushInt 0x00000000
0x00003d95 cmdMsgClear
0x00003d96 cmdShowText 0x00000052
0x00003d9d cmdPushStr "「ほう…」"
0x00003dae cmdPushStr "瑚太朗"
0x00003dbb cmdPushInt 0x00000052
0x00003dc3 cmdPushInt 0x00000001
0x00003dcb cmdMsg
0x00003dcc cmdMsgStart
0x00003dcd cmdMsgWaitButton
0x00003dce cmdPushInt 0x00000000
0x00003dd6 cmdMsgClear
0x00003dd7 cmdShowText 0x00000053
0x00003dde cmdPushStr "「それでぺらぺら話したというわけかい、静流さん」"
0x00003e15 cmdPushStr "瑚太朗"
0x00003e22 cmdPushInt 0x00000053
0x00003e2a cmdPushInt 0x00000001
0x00003e32 cmdMsg
0x00003e33 cmdMsgStart
0x00003e34 cmdMsgWaitButton
0x00003e35 cmdPushInt 0x00000000
0x00003e3d cmdMsgClear
0x00003e3e cmdPushStr "CGM_SZ42"
0x00003e4d cmdPushInt 0x00000012
0x00003e55 cmdPushInt 0x00000004
0x00003e5d cmdPOP
0x00003e5e cmdPushInt 0x00000000
0x00003e66 cmdPushInt 0x00000000
0x00003e6e cmdPushInt 0x00000003
0x00003e76 cmdPOP
0x00003e77 cmdPushInt 0x00000001
0x00003e7f cmdPushInt 0x00000001
0x00003e87 cmdPushInt 0x00000003
0x00003e8f cmdPOP
0x00003e90 cmdPushInt 0x00000011
0x00003e98 cmdPushStr "sys20_adv00"
0x00003eaa cmdFarcall
0x00003eab cmdPushInt 0x00040000
0x00003eb3 cmdPushStr "v/z205200215"
0x00003ec6 cmdPushInt 0x00000000
0x00003ece cmdPCMPlay
0x00003ecf cmdShowText 0x00000054
0x00003ed6 cmdPushStr "「うむ…ぺらぺら話した」"
0x00003ef5 cmdPushStr "静流"
0x00003f00 cmdPushInt 0x00000054
0x00003f08 cmdPushInt 0x00000001
0x00003f10 cmdMsg
0x00003f11 cmdMsgStart
0x00003f12 cmdMsgWaitButton
0x00003f13 cmdPushInt 0x00000000
0x00003f1b cmdMsgClear
0x00003f1c cmdPushInt 0x00040000
0x00003f24 cmdPushStr "v/z205200216"
0x00003f37 cmdPushInt 0x00000000
0x00003f3f cmdPCMPlay
0x00003f40 cmdShowText 0x00000055
0x00003f47 cmdPushStr "「コタローのこといっぱい話した。とても喜んでくれた…」"
0x00003f84 cmdPushStr "静流"
0x00003f8f cmdPushInt 0x00000055
0x00003f97 cmdPushInt 0x00000001
0x00003f9f cmdMsg
0x00003fa0 cmdMsgStart
0x00003fa1 cmdMsgWaitButton
0x00003fa2 cmdPushInt 0x00000000
0x00003faa cmdMsgClear
0x00003fab cmdPushStr "CGM_SZ15s"
0x00003fbb cmdPushInt 0x00000012
0x00003fc3 cmdPushInt 0x00000004
0x00003fcb cmdPOP
0x00003fcc cmdPushInt 0x00000000
0x00003fd4 cmdPushInt 0x00000000
0x00003fdc cmdPushInt 0x00000003
0x00003fe4 cmdPOP
0x00003fe5 cmdPushInt 0x00000001
0x00003fed cmdPushInt 0x00000001
0x00003ff5 cmdPushInt 0x00000003
0x00003ffd cmdPOP
0x00003ffe cmdPushInt 0x00000011
0x00004006 cmdPushStr "sys20_adv00"
0x00004018 cmdFarcall
0x00004019 cmdPushInt 0x00040000
0x00004021 cmdPushStr "v/z205200219"
0x00004034 cmdPushInt 0x00000000
0x0000403c cmdPCMPlay
0x0000403d cmdShowText 0x00000056
0x00004044 cmdPushStr "「そんな井上さんが…」"
0x00004061 cmdPushStr "静流"
0x0000406c cmdPushInt 0x00000056
0x00004074 cmdPushInt 0x00000001
0x0000407c cmdMsg
0x0000407d cmdMsgStart
0x0000407e cmdMsgWaitButton
0x0000407f cmdPushInt 0x00000000
0x00004087 cmdMsgClear
0x00004088 cmdShowText 0x00000057
0x0000408f cmdPushStr "「………」"
0x000040a0 cmdPushStr "瑚太朗"
0x000040ad cmdPushInt 0x00000057
0x000040b5 cmdPushInt 0x00000001
0x000040bd cmdMsg
0x000040be cmdMsgStart
0x000040bf cmdMsgWaitButton
0x000040c0 cmdPushInt 0x00000000
0x000040c8 cmdMsgClear
0x000040c9 cmdShowText 0x00000058
0x000040d0 cmdPushStr "こいつがニュースソースかよ…"
0x000040f3 cmdPushStr ""
0x000040fa cmdPushInt 0x00000058
0x00004102 cmdPushInt 0x00000001
0x0000410a cmdMsg
0x0000410b cmdMsgStart
0x0000410c cmdMsgWaitButton
0x0000410d cmdPushInt 0x00000000
0x00004115 cmdMsgClear
0x00004116 cmdPushInt 0x00000000
0x0000411e cmdPushInt 0x00000000
0x00004126 cmdPushInt 0x00000003
0x0000412e cmdPOP
0x0000412f cmdPushInt 0x00000000
0x00004137 cmdPushInt 0x00000001
0x0000413f cmdPushInt 0x00000003
0x00004147 cmdPOP
0x00004148 cmdPushInt 0x00000011
0x00004150 cmdPushStr "sys20_adv00"
0x00004162 cmdFarcall
0x00004163 cmdShowText 0x00000059
0x0000416a cmdPushStr "「俺の携帯に小さな機械を仕掛けたのおまえだろ」"
0x0000419f cmdPushStr "瑚太朗"
0x000041ac cmdPushInt 0x00000059
0x000041b4 cmdPushInt 0x00000001
0x000041bc cmdMsg
0x000041bd cmdMsgStart
0x000041be cmdMsgWaitButton
0x000041bf cmdPushInt 0x00000000
0x000041c7 cmdMsgClear
0x000041c8 cmdShowText 0x0000005a
0x000041cf cmdPushStr "井上から電話があった日、案の定取り付けられていたものだ。"
0x0000420e cmdPushStr ""
0x00004215 cmdPushInt 0x0000005a
0x0000421d cmdPushInt 0x00000001
0x00004225 cmdMsg
0x00004226 cmdMsgStart
0x00004227 cmdMsgWaitButton
0x00004228 cmdPushInt 0x00000000
0x00004230 cmdMsgClear
0x00004231 cmdPushStr "CGM_SZ12"
0x00004240 cmdPushInt 0x00000012
0x00004248 cmdPushInt 0x00000004
0x00004250 cmdPOP
0x00004251 cmdPushInt 0x00000000
0x00004259 cmdPushInt 0x00000000
0x00004261 cmdPushInt 0x00000003
0x00004269 cmdPOP
0x0000426a cmdPushInt 0x00000001
0x00004272 cmdPushInt 0x00000001
0x0000427a cmdPushInt 0x00000003
0x00004282 cmdPOP
0x00004283 cmdPushInt 0x00000011
0x0000428b cmdPushStr "sys20_adv00"
0x0000429d cmdFarcall
0x0000429e cmdPushInt 0x00040000
0x000042a6 cmdPushStr "v/z205200229"
0x000042b9 cmdPushInt 0x00000000
0x000042c1 cmdPCMPlay
0x000042c2 cmdShowText 0x0000005b
0x000042c9 cmdPushStr "「照れ屋だからこっそりつけてやれといわれた」"
0x000042fc cmdPushStr "静流"
0x00004307 cmdPushInt 0x0000005b
0x0000430f cmdPushInt 0x00000001
0x00004317 cmdMsg
0x00004318 cmdMsgStart
0x00004319 cmdMsgWaitButton
0x0000431a cmdPushInt 0x00000000
0x00004322 cmdMsgClear
0x00004323 cmdShowText 0x0000005c
0x0000432a cmdPushStr "「ああ、見つけ出してレンジでチンしといたよ」"
0x0000435d cmdPushStr "瑚太朗"
0x0000436a cmdPushInt 0x0000005c
0x00004372 cmdPushInt 0x00000001
0x0000437a cmdMsg
0x0000437b cmdMsgStart
0x0000437c cmdMsgWaitButton
0x0000437d cmdPushInt 0x00000000
0x00004385 cmdMsgClear
0x00004386 cmdPushStr "CGM_SZ31y"
0x00004396 cmdPushInt 0x00000012
0x0000439e cmdPushInt 0x00000004
0x000043a6 cmdPOP
0x000043a7 cmdPushInt 0x00000000
0x000043af cmdPushInt 0x00000000
0x000043b7 cmdPushInt 0x00000003
0x000043bf cmdPOP
0x000043c0 cmdPushInt 0x00000001
0x000043c8 cmdPushInt 0x00000001
0x000043d0 cmdPushInt 0x00000003
0x000043d8 cmdPOP
0x000043d9 cmdPushInt 0x00000011
0x000043e1 cmdPushStr "sys20_adv00"
0x000043f3 cmdFarcall
0x000043f4 cmdPushInt 0x00040000
0x000043fc cmdPushStr "v/z205200233"
0x0000440f cmdPushInt 0x00000000
0x00004417 cmdPCMPlay
0x00004418 cmdShowText 0x0000005d
0x0000441f cmdPushStr "「レンジ…？」"
0x00004434 cmdPushStr "静流"
0x0000443f cmdPushInt 0x0000005d
0x00004447 cmdPushInt 0x00000001
0x0000444f cmdMsg
0x00004450 cmdMsgStart
0x00004451 cmdMsgWaitButton
0x00004452 cmdPushInt 0x00000000
0x0000445a cmdMsgClear
0x0000445b cmdShowText 0x0000005e
0x00004462 cmdPushStr "「あれはそうするのが一番ナウいんだよ」"
0x0000448f cmdPushStr "瑚太朗"
0x0000449c cmdPushInt 0x0000005e
0x000044a4 cmdPushInt 0x00000001
0x000044ac cmdMsg
0x000044ad cmdMsgStart
0x000044ae cmdMsgWaitButton
0x000044af cmdPushInt 0x00000000
0x000044b7 cmdMsgClear
0x000044b8 cmdPushStr "CGM_SZ10s"
0x000044c8 cmdPushInt 0x00000012
0x000044d0 cmdPushInt 0x00000004
0x000044d8 cmdPOP
0x000044d9 cmdPushInt 0x00000000
0x000044e1 cmdPushInt 0x00000000
0x000044e9 cmdPushInt 0x00000003
0x000044f1 cmdPOP
0x000044f2 cmdPushInt 0x00000001
0x000044fa cmdPushInt 0x00000001
0x00004502 cmdPushInt 0x00000003
0x0000450a cmdPOP
0x0000450b cmdPushInt 0x00000011
0x00004513 cmdPushStr "sys20_adv00"
0x00004525 cmdFarcall
0x00004526 cmdPushInt 0x00040000
0x0000452e cmdPushStr "v/z205200237"
0x00004541 cmdPushInt 0x00000000
0x00004549 cmdPCMPlay
0x0000454a cmdShowText 0x0000005f
0x00004551 cmdPushStr "「なうなやんぐにばかうけ…？」"
0x00004576 cmdPushStr "静流"
0x00004581 cmdPushInt 0x0000005f
0x00004589 cmdPushInt 0x00000001
0x00004591 cmdMsg
0x00004592 cmdMsgStart
0x00004593 cmdMsgWaitButton
0x00004594 cmdPushInt 0x00000000
0x0000459c cmdMsgClear
0x0000459d cmdPushInt 0x00000000
0x000045a5 cmdPushInt 0x00000000
0x000045ad cmdPushInt 0x00000003
0x000045b5 cmdPOP
0x000045b6 cmdPushInt 0x00000000
0x000045be cmdPushInt 0x00000001
0x000045c6 cmdPushInt 0x00000003
0x000045ce cmdPOP
0x000045cf cmdPushInt 0x00000011
0x000045d7 cmdPushStr "sys20_adv00"
0x000045e9 cmdFarcall
0x000045ea cmdShowText 0x00000060
0x000045f1 cmdPushStr "そんな静流の愛嬌も、室内の空気を賑わすには至らず。"
0x0000462a cmdPushStr ""
0x00004631 cmdPushInt 0x00000060
0x00004639 cmdPushInt 0x00000001
0x00004641 cmdMsg
0x00004642 cmdMsgStart
0x00004643 cmdMsgWaitButton
0x00004644 cmdPushInt 0x00000000
0x0000464c cmdMsgClear
0x0000464d cmdShowText 0x00000061
0x00004654 cmdPushStr "「捜索状況が知りたい」"
0x00004671 cmdPushStr "瑚太朗"
0x0000467e cmdPushInt 0x00000061
0x00004686 cmdPushInt 0x00000001
0x0000468e cmdMsg
0x0000468f cmdMsgStart
0x00004690 cmdMsgWaitButton
0x00004691 cmdPushInt 0x00000000
0x00004699 cmdMsgClear
0x0000469a cmdPushStr "CGM_AK13"
0x000046a9 cmdPushInt 0x00000012
0x000046b1 cmdPushInt 0x00000004
0x000046b9 cmdPOP
0x000046ba cmdPushInt 0x00000000
0x000046c2 cmdPushInt 0x00000000
0x000046ca cmdPushInt 0x00000003
0x000046d2 cmdPOP
0x000046d3 cmdPushInt 0x00000001
0x000046db cmdPushInt 0x00000001
0x000046e3 cmdPushInt 0x00000003
0x000046eb cmdPOP
0x000046ec cmdPushInt 0x00000011
0x000046f4 cmdPushStr "sys20_adv00"
0x00004706 cmdFarcall
0x00004707 cmdPushInt 0x00030000
0x0000470f cmdPushStr "v/z205200245"
0x00004722 cmdPushInt 0x00000000
0x0000472a cmdPCMPlay
0x0000472b cmdShowText 0x00000062
0x00004732 cmdPushStr "「芳しくないわ」"
0x00004749 cmdPushStr "朱音"
0x00004754 cmdPushInt 0x00000062
0x0000475c cmdPushInt 0x00000001
0x00004764 cmdMsg
0x00004765 cmdMsgStart
0x00004766 cmdMsgWaitButton
0x00004767 cmdPushInt 0x00000000
0x0000476f cmdMsgClear
0x00004770 cmdPushInt 0x00000000
0x00004778 cmdPushInt 0x00000000
0x00004780 cmdPushInt 0x00000003
0x00004788 cmdPOP
0x00004789 cmdPushInt 0x00000000
0x00004791 cmdPushInt 0x00000001
0x00004799 cmdPushInt 0x00000003
0x000047a1 cmdPOP
0x000047a2 cmdPushInt 0x00000011
0x000047aa cmdPushStr "sys20_adv00"
0x000047bc cmdFarcall
0x000047bd cmdShowText 0x00000063
0x000047c4 cmdPushStr "井上の移動したルートもいまだ判然としないらしい。"
0x000047fb cmdPushStr ""
0x00004802 cmdPushInt 0x00000063
0x0000480a cmdPushInt 0x00000001
0x00004812 cmdMsg
0x00004813 cmdMsgStart
0x00004814 cmdMsgWaitButton
0x00004815 cmdPushInt 0x00000000
0x0000481d cmdMsgClear
0x0000481e cmdShowText 0x00000064
0x00004825 cmdPushStr "昔の薬品が埋められた場所、という有力情報は伝えてあるが、それがどこかはもう調べようがないという。"
0x0000488c cmdPushStr ""
0x00004893 cmdPushInt 0x00000064
0x0000489b cmdPushInt 0x00000001
0x000048a3 cmdMsg
0x000048a4 cmdMsgStart
0x000048a5 cmdMsgWaitButton
0x000048a6 cmdPushInt 0x00000000
0x000048ae cmdMsgClear
0x000048af cmdShowText 0x00000065
0x000048b6 cmdPushStr "関係者全員死亡。全記録散逸。"
0x000048d9 cmdPushStr ""
0x000048e0 cmdPushInt 0x00000065
0x000048e8 cmdPushInt 0x00000001
0x000048f0 cmdMsg
0x000048f1 cmdMsgStart
0x000048f2 cmdMsgWaitButton
0x000048f3 cmdPushInt 0x00000000
0x000048fb cmdMsgClear
0x000048fc cmdShowText 0x00000066
0x00004903 cmdPushStr "世の中って意外と雑だ。"
0x00004920 cmdPushStr ""
0x00004927 cmdPushInt 0x00000066
0x0000492f cmdPushInt 0x00000001
0x00004937 cmdMsg
0x00004938 cmdMsgStart
0x00004939 cmdMsgWaitButton
0x0000493a cmdPushInt 0x00000000
0x00004942 cmdMsgClear
0x00004943 cmdShowText 0x00000067
0x0000494a cmdPushStr "なら井上はどこで情報を得たのか？"
0x00004971 cmdPushStr ""
0x00004978 cmdPushInt 0x00000067
0x00004980 cmdPushInt 0x00000001
0x00004988 cmdMsg
0x00004989 cmdMsgStart
0x0000498a cmdMsgWaitButton
0x0000498b cmdPushInt 0x00000000
0x00004993 cmdMsgClear
0x00004994 cmdShowText 0x00000068
0x0000499b cmdPushStr "（あいつの情報収集能力の高さが、裏目に出たか）"
0x000049d0 cmdPushStr "瑚太朗"
0x000049dd cmdPushInt 0x00000068
0x000049e5 cmdPushInt 0x00000001
0x000049ed cmdMsg
0x000049ee cmdMsgStart
0x000049ef cmdMsgWaitButton
0x000049f0 cmdPushInt 0x00000000
0x000049f8 cmdMsgClear
0x000049f9 cmdPushStr "CGM_AK31"
0x00004a08 cmdPushInt 0x00000012
0x00004a10 cmdPushInt 0x00000004
0x00004a18 cmdPOP
0x00004a19 cmdPushInt 0x00000000
0x00004a21 cmdPushInt 0x00000000
0x00004a29 cmdPushInt 0x00000003
0x00004a31 cmdPOP
0x00004a32 cmdPushInt 0x00000001
0x00004a3a cmdPushInt 0x00000001
0x00004a42 cmdPushInt 0x00000003
0x00004a4a cmdPOP
0x00004a4b cmdPushInt 0x00000011
0x00004a53 cmdPushStr "sys20_adv00"
0x00004a65 cmdFarcall
0x00004a66 cmdPushInt 0x00030000
0x00004a6e cmdPushStr "v/z205200257"
0x00004a81 cmdPushInt 0x00000000
0x00004a89 cmdPCMPlay
0x00004a8a cmdShowText 0x00000069
0x00004a91 cmdPushStr "「捜索隊の方も行き詰まっていて、ご両親との話し合いの結果、明日の夕方で捜索を一度中断するそうよ」"
0x00004af8 cmdPushStr "朱音"
0x00004b03 cmdPushInt 0x00000069
0x00004b0b cmdPushInt 0x00000001
0x00004b13 cmdMsg
0x00004b14 cmdMsgStart
0x00004b15 cmdMsgWaitButton
0x00004b16 cmdPushInt 0x00000000
0x00004b1e cmdMsgClear
0x00004b1f cmdPushStr "CGM_KT13"
0x00004b2e cmdPushInt 0x00000012
0x00004b36 cmdPushInt 0x00000004
0x00004b3e cmdPOP
0x00004b3f cmdPushInt 0x00000000
0x00004b47 cmdPushInt 0x00000000
0x00004b4f cmdPushInt 0x00000003
0x00004b57 cmdPOP
0x00004b58 cmdPushInt 0x00000001
0x00004b60 cmdPushInt 0x00000001
0x00004b68 cmdPushInt 0x00000003
0x00004b70 cmdPOP
0x00004b71 cmdPushInt 0x00000011
0x00004b79 cmdPushStr "sys20_adv00"
0x00004b8b cmdFarcall
0x00004b8c cmdPushInt 0x00010000
0x00004b94 cmdPushStr "v/z205200260"
0x00004ba7 cmdPushInt 0x00000000
0x00004baf cmdPCMPlay
0x00004bb0 cmdShowText 0x0000006a
0x00004bb7 cmdPushStr "「こんなに早く？」"
0x00004bd0 cmdPushStr "小鳥"
0x00004bdb cmdPushInt 0x0000006a
0x00004be3 cmdPushInt 0x00000001
0x00004beb cmdMsg
0x00004bec cmdMsgStart
0x00004bed cmdMsgWaitButton
0x00004bee cmdPushInt 0x00000000
0x00004bf6 cmdMsgClear
0x00004bf7 cmdPushStr "CGM_AK13"
0x00004c06 cmdPushInt 0x00000012
0x00004c0e cmdPushInt 0x00000004
0x00004c16 cmdPOP
0x00004c17 cmdPushInt 0x00000000
0x00004c1f cmdPushInt 0x00000000
0x00004c27 cmdPushInt 0x00000003
0x00004c2f cmdPOP
0x00004c30 cmdPushInt 0x00000001
0x00004c38 cmdPushInt 0x00000001
0x00004c40 cmdPushInt 0x00000003
0x00004c48 cmdPOP
0x00004c49 cmdPushInt 0x00000011
0x00004c51 cmdPushStr "sys20_adv00"
0x00004c63 cmdFarcall
0x00004c64 cmdPushInt 0x00030000
0x00004c6c cmdPushStr "v/z205200263"
0x00004c7f cmdPushInt 0x00000000
0x00004c87 cmdPCMPlay
0x00004c88 cmdShowText 0x0000006b
0x00004c8f cmdPushStr "「金銭の問題が出たそうよ」"
0x00004cb0 cmdPushStr "朱音"
0x00004cbb cmdPushInt 0x0000006b
0x00004cc3 cmdPushInt 0x00000001
0x00004ccb cmdMsg
0x00004ccc cmdMsgStart
0x00004ccd cmdMsgWaitButton
0x00004cce cmdPushInt 0x00000000
0x00004cd6 cmdMsgClear
0x00004cd7 cmdPushStr "CGM_KT16"
0x00004ce6 cmdPushInt 0x00000012
0x00004cee cmdPushInt 0x00000004
0x00004cf6 cmdPOP
0x00004cf7 cmdPushInt 0x00000000
0x00004cff cmdPushInt 0x00000000
0x00004d07 cmdPushInt 0x00000003
0x00004d0f cmdPOP
0x00004d10 cmdPushInt 0x00000001
0x00004d18 cmdPushInt 0x00000001
0x00004d20 cmdPushInt 0x00000003
0x00004d28 cmdPOP
0x00004d29 cmdPushInt 0x00000011
0x00004d31 cmdPushStr "sys20_adv00"
0x00004d43 cmdFarcall
0x00004d44 cmdPushInt 0x00010000
0x00004d4c cmdPushStr "v/z205200266"
0x00004d5f cmdPushInt 0x00000000
0x00004d67 cmdPCMPlay
0x00004d68 cmdShowText 0x0000006c
0x00004d6f cmdPushStr "「金銭？」"
0x00004d80 cmdPushStr "小鳥"
0x00004d8b cmdPushInt 0x0000006c
0x00004d93 cmdPushInt 0x00000001
0x00004d9b cmdMsg
0x00004d9c cmdMsgStart
0x00004d9d cmdMsgWaitButton
0x00004d9e cmdPushInt 0x00000000
0x00004da6 cmdMsgClear
0x00004da7 cmdPushStr "CGM_AK13"
0x00004db6 cmdPushInt 0x00000012
0x00004dbe cmdPushInt 0x00000004
0x00004dc6 cmdPOP
0x00004dc7 cmdPushInt 0x00000000
0x00004dcf cmdPushInt 0x00000000
0x00004dd7 cmdPushInt 0x00000003
0x00004ddf cmdPOP
0x00004de0 cmdPushInt 0x00000001
0x00004de8 cmdPushInt 0x00000001
0x00004df0 cmdPushInt 0x00000003
0x00004df8 cmdPOP
0x00004df9 cmdPushInt 0x00000011
0x00004e01 cmdPushStr "sys20_adv00"
0x00004e13 cmdFarcall
0x00004e14 cmdPushInt 0x00030000
0x00004e1c cmdPushStr "v/z205200269"
0x00004e2f cmdPushInt 0x00000000
0x00004e37 cmdPCMPlay
0x00004e38 cmdShowText 0x0000006d
0x00004e3f cmdPushStr "「警察と消防、民間の有志とが共同で捜索に当たっていて、これ自体に請求は発生しないのだけれど…」"
0x00004ea4 cmdPushStr "朱音"
0x00004eaf cmdPushInt 0x0000006d
0x00004eb7 cmdPushInt 0x00000001
0x00004ebf cmdMsg
0x00004ec0 cmdMsgStart
0x00004ec1 cmdMsgWaitButton
0x00004ec2 cmdPushInt 0x00000000
0x00004eca cmdMsgClear
0x00004ecb cmdPushStr "CGM_SZ30"
0x00004eda cmdPushInt 0x00000012
0x00004ee2 cmdPushInt 0x00000004
0x00004eea cmdPOP
0x00004eeb cmdPushInt 0x00000000
0x00004ef3 cmdPushInt 0x00000000
0x00004efb cmdPushInt 0x00000003
0x00004f03 cmdPOP
0x00004f04 cmdPushInt 0x00000001
0x00004f0c cmdPushInt 0x00000001
0x00004f14 cmdPushInt 0x00000003
0x00004f1c cmdPOP
0x00004f1d cmdPushInt 0x00000011
0x00004f25 cmdPushStr "sys20_adv00"
0x00004f37 cmdFarcall
0x00004f38 cmdPushInt 0x00040000
0x00004f40 cmdPushStr "v/z205200272"
0x00004f53 cmdPushInt 0x00000000
0x00004f5b cmdPCMPlay
0x00004f5c cmdShowText 0x0000006e
0x00004f63 cmdPushStr "「どうして？」"
0x00004f78 cmdPushStr "静流"
0x00004f83 cmdPushInt 0x0000006e
0x00004f8b cmdPushInt 0x00000001
0x00004f93 cmdMsg
0x00004f94 cmdMsgStart
0x00004f95 cmdMsgWaitButton
0x00004f96 cmdPushInt 0x00000000
0x00004f9e cmdMsgClear
0x00004f9f cmdPushStr "CGM_AK22"
0x00004fae cmdPushInt 0x00000012
0x00004fb6 cmdPushInt 0x00000004
0x00004fbe cmdPOP
0x00004fbf cmdPushInt 0x00000000
0x00004fc7 cmdPushInt 0x00000000
0x00004fcf cmdPushInt 0x00000003
0x00004fd7 cmdPOP
0x00004fd8 cmdPushInt 0x00000001
0x00004fe0 cmdPushInt 0x00000001
0x00004fe8 cmdPushInt 0x00000003
0x00004ff0 cmdPOP
0x00004ff1 cmdPushInt 0x00000011
0x00004ff9 cmdPushStr "sys20_adv00"
0x0000500b cmdFarcall
0x0000500c cmdPushInt 0x00030000
0x00005014 cmdPushStr "v/z205200275"
0x00005027 cmdPushInt 0x00000000
0x0000502f cmdPCMPlay
0x00005030 cmdShowText 0x0000006f
0x00005037 cmdPushStr "「血税」"
0x00005046 cmdPushStr "朱音"
0x00005051 cmdPushInt 0x0000006f
0x00005059 cmdPushInt 0x00000001
0x00005061 cmdMsg
0x00005062 cmdMsgStart
0x00005063 cmdMsgWaitButton
0x00005064 cmdPushInt 0x00000000
0x0000506c cmdMsgClear
0x0000506d cmdPushStr "CGM_CH29"
0x0000507c cmdPushInt 0x00000012
0x00005084 cmdPushInt 0x00000004
0x0000508c cmdPOP
0x0000508d cmdPushInt 0x00000000
0x00005095 cmdPushInt 0x00000000
0x0000509d cmdPushInt 0x00000003
0x000050a5 cmdPOP
0x000050a6 cmdPushInt 0x00000001
0x000050ae cmdPushInt 0x00000001
0x000050b6 cmdPushInt 0x00000003
0x000050be cmdPOP
0x000050bf cmdPushInt 0x00000011
0x000050c7 cmdPushStr "sys20_adv00"
0x000050d9 cmdFarcall
0x000050da cmdPushInt 0x0002f400
0x000050e2 cmdPushStr "v/z205200278"
0x000050f5 cmdPushInt 0x00000000
0x000050fd cmdPCMPlay
0x000050fe cmdShowText 0x00000070
0x00005105 cmdPushStr "「なのにお金の問題が？」"
0x00005124 cmdPushStr "ちはや"
0x00005131 cmdPushInt 0x00000070
0x00005139 cmdPushInt 0x00000001
0x00005141 cmdMsg
0x00005142 cmdMsgStart
0x00005143 cmdMsgWaitButton
0x00005144 cmdPushInt 0x00000000
0x0000514c cmdMsgClear
0x0000514d cmdPushStr "CGM_AK13"
0x0000515c cmdPushInt 0x00000012
0x00005164 cmdPushInt 0x00000004
0x0000516c cmdPOP
0x0000516d cmdPushInt 0x00000000
0x00005175 cmdPushInt 0x00000000
0x0000517d cmdPushInt 0x00000003
0x00005185 cmdPOP
0x00005186 cmdPushInt 0x00000001
0x0000518e cmdPushInt 0x00000001
0x00005196 cmdPushInt 0x00000003
0x0000519e cmdPOP
0x0000519f cmdPushInt 0x00000011
0x000051a7 cmdPushStr "sys20_adv00"
0x000051b9 cmdFarcall
0x000051ba cmdPushInt 0x00030000
0x000051c2 cmdPushStr "v/z205200281"
0x000051d5 cmdPushInt 0x00000000
0x000051dd cmdPCMPlay
0x000051de cmdShowText 0x00000071
0x000051e5 cmdPushStr "「…大勢の人間が家族のために行動してくれて、諸費用を受け持たないわけにはいかないでしょう？」"
0x00005248 cmdPushStr "朱音"
0x00005253 cmdPushInt 0x00000071
0x0000525b cmdPushInt 0x00000001
0x00005263 cmdMsg
0x00005264 cmdMsgStart
0x00005265 cmdMsgWaitButton
0x00005266 cmdPushInt 0x00000000
0x0000526e cmdMsgClear
0x0000526f cmdPushStr "CGM_KT22"
0x0000527e cmdPushInt 0x00000012
0x00005286 cmdPushInt 0x00000004
0x0000528e cmdPOP
0x0000528f cmdPushInt 0x00000000
0x00005297 cmdPushInt 0x00000000
0x0000529f cmdPushInt 0x00000003
0x000052a7 cmdPOP
0x000052a8 cmdPushInt 0x00000001
0x000052b0 cmdPushInt 0x00000001
0x000052b8 cmdPushInt 0x00000003
0x000052c0 cmdPOP
0x000052c1 cmdPushInt 0x00000011
0x000052c9 cmdPushStr "sys20_adv00"
0x000052db cmdFarcall
0x000052dc cmdPushInt 0x00010000
0x000052e4 cmdPushStr "v/z205200284"
0x000052f7 cmdPushInt 0x00000000
0x000052ff cmdPCMPlay
0x00005300 cmdShowText 0x00000072
0x00005307 cmdPushStr "「あ、そうですね…」"
0x00005322 cmdPushStr "小鳥"
0x0000532d cmdPushInt 0x00000072
0x00005335 cmdPushInt 0x00000001
0x0000533d cmdMsg
0x0000533e cmdMsgStart
0x0000533f cmdMsgWaitButton
0x00005340 cmdPushInt 0x00000000
0x00005348 cmdMsgClear
0x00005349 cmdPushStr "CGM_AK31"
0x00005358 cmdPushInt 0x00000012
0x00005360 cmdPushInt 0x00000004
0x00005368 cmdPOP
0x00005369 cmdPushInt 0x00000000
0x00005371 cmdPushInt 0x00000000
0x00005379 cmdPushInt 0x00000003
0x00005381 cmdPOP
0x00005382 cmdPushInt 0x00000001
0x0000538a cmdPushInt 0x00000001
0x00005392 cmdPushInt 0x00000003
0x0000539a cmdPOP
0x0000539b cmdPushInt 0x00000011
0x000053a3 cmdPushStr "sys20_adv00"
0x000053b5 cmdFarcall
0x000053b6 cmdPushInt 0x00030000
0x000053be cmdPushStr "v/z205200287"
0x000053d1 cmdPushInt 0x00000000
0x000053d9 cmdPCMPlay
0x000053da cmdShowText 0x00000073
0x000053e1 cmdPushStr "「燃料代と炊き出し代だけでも馬鹿にならないはずよ」"
0x0000541a cmdPushStr "朱音"
0x00005425 cmdPushInt 0x00000073
0x0000542d cmdPushInt 0x00000001
0x00005435 cmdMsg
0x00005436 cmdMsgStart
0x00005437 cmdMsgWaitButton
0x00005438 cmdPushInt 0x00000000
0x00005440 cmdMsgClear
0x00005441 cmdPushStr "CGM_AK22"
0x00005450 cmdPushInt 0x00000012
0x00005458 cmdPushInt 0x00000004
0x00005460 cmdPOP
0x00005461 cmdPushInt 0x00000000
0x00005469 cmdPushInt 0x00000000
0x00005471 cmdPushInt 0x00000003
0x00005479 cmdPOP
0x0000547a cmdPushInt 0x00000001
0x00005482 cmdPushInt 0x00000001
0x0000548a cmdPushInt 0x00000003
0x00005492 cmdPOP
0x00005493 cmdPushInt 0x00000011
0x0000549b cmdPushStr "sys20_adv00"
0x000054ad cmdFarcall
0x000054ae cmdPushInt 0x00030000
0x000054b6 cmdPushStr "v/z205200290"
0x000054c9 cmdPushInt 0x00000000
0x000054d1 cmdPCMPlay
0x000054d2 cmdShowText 0x00000074
0x000054d9 cmdPushStr "「数十人分、それが５日」"
0x000054f8 cmdPushStr "朱音"
0x00005503 cmdPushInt 0x00000074
0x0000550b cmdPushInt 0x00000001
0x00005513 cmdMsg
0x00005514 cmdMsgStart
0x00005515 cmdMsgWaitButton
0x00005516 cmdPushInt 0x00000000
0x0000551e cmdMsgClear
0x0000551f cmdShowText 0x00000075
0x00005526 cmdPushStr "「金銭的限度線に来ちゃったのか、井上の親…」"
0x00005559 cmdPushStr "瑚太朗"
0x00005566 cmdPushInt 0x00000075
0x0000556e cmdPushInt 0x00000001
0x00005576 cmdMsg
0x00005577 cmdMsgStart
0x00005578 cmdMsgWaitButton
0x00005579 cmdPushInt 0x00000000
0x00005581 cmdMsgClear
0x00005582 cmdPushInt 0x00000000
0x0000558a cmdPushInt 0x00000000
0x00005592 cmdPushInt 0x00000003
0x0000559a cmdPOP
0x0000559b cmdPushInt 0x00000000
0x000055a3 cmdPushInt 0x00000001
0x000055ab cmdPushInt 0x00000003
0x000055b3 cmdPOP
0x000055b4 cmdPushInt 0x00000011
0x000055bc cmdPushStr "sys20_adv00"
0x000055ce cmdFarcall
0x000055cf cmdShowText 0x00000076
0x000055d6 cmdPushStr "娘がいなくなって、その上、金の問題まで考えなくちゃいけないだなんて。"
0x00005621 cmdPushStr ""
0x00005628 cmdPushInt 0x00000076
0x00005630 cmdPushInt 0x00000001
0x00005638 cmdMsg
0x00005639 cmdMsgStart
0x0000563a cmdMsgWaitButton
0x0000563b cmdPushInt 0x00000000
0x00005643 cmdMsgClear
0x00005644 cmdShowText 0x00000077
0x0000564b cmdPushStr "親御さん、内心きついどころの騒ぎじゃないだろうな。"
0x00005684 cmdPushStr ""
0x0000568b cmdPushInt 0x00000077
0x00005693 cmdPushInt 0x00000001
0x0000569b cmdMsg
0x0000569c cmdMsgStart
0x0000569d cmdMsgWaitButton
0x0000569e cmdPushInt 0x00000000
0x000056a6 cmdMsgClear
0x000056a7 cmdPushStr "CGM_KT22"
0x000056b6 cmdPushInt 0x00000012
0x000056be cmdPushInt 0x00000004
0x000056c6 cmdPOP
0x000056c7 cmdPushInt 0x00000000
0x000056cf cmdPushInt 0x00000000
0x000056d7 cmdPushInt 0x00000003
0x000056df cmdPOP
0x000056e0 cmdPushInt 0x00000001
0x000056e8 cmdPushInt 0x00000001
0x000056f0 cmdPushInt 0x00000003
0x000056f8 cmdPOP
0x000056f9 cmdPushInt 0x00000011
0x00005701 cmdPushStr "sys20_adv00"
0x00005713 cmdFarcall
0x00005714 cmdPushInt 0x00010000
0x0000571c cmdPushStr "v/z205200298"
0x0000572f cmdPushInt 0x00000000
0x00005737 cmdPCMPlay
0x00005738 cmdShowText 0x00000078
0x0000573f cmdPushStr "「でもそれじゃ…井上さんは…？」"
0x00005766 cmdPushStr "小鳥"
0x00005771 cmdPushInt 0x00000078
0x00005779 cmdPushInt 0x00000001
0x00005781 cmdMsg
0x00005782 cmdMsgStart
0x00005783 cmdMsgWaitButton
0x00005784 cmdPushInt 0x00000000
0x0000578c cmdMsgClear
0x0000578d cmdPushStr "CGM_LC21"
0x0000579c cmdPushInt 0x00000012
0x000057a4 cmdPushInt 0x00000004
0x000057ac cmdPOP
0x000057ad cmdPushInt 0x00000000
0x000057b5 cmdPushInt 0x00000000
0x000057bd cmdPushInt 0x00000003
0x000057c5 cmdPOP
0x000057c6 cmdPushInt 0x00000001
0x000057ce cmdPushInt 0x00000001
0x000057d6 cmdPushInt 0x00000003
0x000057de cmdPOP
0x000057df cmdPushInt 0x00000011
0x000057e7 cmdPushStr "sys20_adv00"
0x000057f9 cmdFarcall
0x000057fa cmdPushInt 0x00050000
0x00005802 cmdPushStr "v/z205200301"
0x00005815 cmdPushInt 0x00000000
0x0000581d cmdPCMPlay
0x0000581e cmdShowText 0x00000079
0x00005825 cmdPushStr "「事実上の死亡認定ということかな」"
0x0000584e cmdPushStr "ルチア"
0x0000585b cmdPushInt 0x00000079
0x00005863 cmdPushInt 0x00000001
0x0000586b cmdMsg
0x0000586c cmdMsgStart
0x0000586d cmdMsgWaitButton
0x0000586e cmdPushInt 0x00000000
0x00005876 cmdMsgClear
0x00005877 cmdShowText 0x0000007a
0x0000587e cmdPushStr "「………」"
0x0000588f cmdPushStr "瑚太朗"
0x0000589c cmdPushInt 0x0000007a
0x000058a4 cmdPushInt 0x00000001
0x000058ac cmdMsg
0x000058ad cmdMsgStart
0x000058ae cmdMsgWaitButton
0x000058af cmdPushInt 0x00000000
0x000058b7 cmdMsgClear
0x000058b8 cmdPushInt 0x00000000
0x000058c0 cmdPushInt 0x00000000
0x000058c8 cmdPushInt 0x00000003
0x000058d0 cmdPOP
0x000058d1 cmdPushInt 0x00000000
0x000058d9 cmdPushInt 0x00000001
0x000058e1 cmdPushInt 0x00000003
0x000058e9 cmdPOP
0x000058ea cmdPushInt 0x00000011
0x000058f2 cmdPushStr "sys20_adv00"
0x00005904 cmdFarcall
0x00005905 cmdShowText 0x0000007b
0x0000590c cmdPushStr "井上はわりと無礼千万なヤツだった。"
0x00005935 cmdPushStr ""
0x0000593c cmdPushInt 0x0000007b
0x00005944 cmdPushInt 0x00000001
0x0000594c cmdMsg
0x0000594d cmdMsgStart
0x0000594e cmdMsgWaitButton
0x0000594f cmdPushInt 0x00000000
0x00005957 cmdMsgClear
0x00005958 cmdShowText 0x0000007c
0x0000595f cmdPushStr "勝手に人にライバル心燃やしちゃってさ…。"
0x0000598e cmdPushStr ""
0x00005995 cmdPushInt 0x0000007c
0x0000599d cmdPushInt 0x00000001
0x000059a5 cmdMsg
0x000059a6 cmdMsgStart
0x000059a7 cmdMsgWaitButton
0x000059a8 cmdPushInt 0x00000000
0x000059b0 cmdMsgClear
0x000059b1 cmdShowText 0x0000007d
0x000059b8 cmdPushStr "だけど森で遭難しなければならないほど、イヤなヤツでもないんだよな…。"
0x00005a03 cmdPushStr ""
0x00005a0a cmdPushInt 0x0000007d
0x00005a12 cmdPushInt 0x00000001
0x00005a1a cmdMsg
0x00005a1b cmdMsgStart
0x00005a1c cmdMsgWaitButton
0x00005a1d cmdPushInt 0x00000000
0x00005a25 cmdMsgClear
0x00005a26 cmdPushStr "CGM_KT16"
0x00005a35 cmdPushInt 0x00000012
0x00005a3d cmdPushInt 0x00000004
0x00005a45 cmdPOP
0x00005a46 cmdPushInt 0x00000000
0x00005a4e cmdPushInt 0x00000000
0x00005a56 cmdPushInt 0x00000003
0x00005a5e cmdPOP
0x00005a5f cmdPushInt 0x00000001
0x00005a67 cmdPushInt 0x00000001
0x00005a6f cmdPushInt 0x00000003
0x00005a77 cmdPOP
0x00005a78 cmdPushInt 0x00000011
0x00005a80 cmdPushStr "sys20_adv00"
0x00005a92 cmdFarcall
0x00005a93 cmdPushInt 0x00010000
0x00005a9b cmdPushStr "v/z205200310"
0x00005aae cmdPushInt 0x00000000
0x00005ab6 cmdPCMPlay
0x00005ab7 cmdShowText 0x0000007e
0x00005abe cmdPushStr "「それで会長さん、今後どうするんですか？」"
0x00005aef cmdPushStr "小鳥"
0x00005afa cmdPushInt 0x0000007e
0x00005b02 cmdPushInt 0x00000001
0x00005b0a cmdMsg
0x00005b0b cmdMsgStart
0x00005b0c cmdMsgWaitButton
0x00005b0d cmdPushInt 0x00000000
0x00005b15 cmdMsgClear
0x00005b16 cmdPushStr "CGM_AK11"
0x00005b25 cmdPushInt 0x00000012
0x00005b2d cmdPushInt 0x00000004
0x00005b35 cmdPOP
0x00005b36 cmdPushInt 0x00000000
0x00005b3e cmdPushInt 0x00000000
0x00005b46 cmdPushInt 0x00000003
0x00005b4e cmdPOP
0x00005b4f cmdPushInt 0x00000001
0x00005b57 cmdPushInt 0x00000001
0x00005b5f cmdPushInt 0x00000003
0x00005b67 cmdPOP
0x00005b68 cmdPushInt 0x00000011
0x00005b70 cmdPushStr "sys20_adv00"
0x00005b82 cmdFarcall
0x00005b83 cmdPushInt 0x00030000
0x00005b8b cmdPushStr "v/z205200313"
0x00005b9e cmdPushInt 0x00000000
0x00005ba6 cmdPCMPlay
0x00005ba7 cmdShowText 0x0000007f
0x00005bae cmdPushStr "「要請に従うつもりよ」"
0x00005bcb cmdPushStr "朱音"
0x00005bd6 cmdPushInt 0x0000007f
0x00005bde cmdPushInt 0x00000001
0x00005be6 cmdMsg
0x00005be7 cmdMsgStart
0x00005be8 cmdMsgWaitButton
0x00005be9 cmdPushInt 0x00000000
0x00005bf1 cmdMsgClear
0x00005bf2 cmdPushStr "CGM_AK13"
0x00005c01 cmdPushInt 0x00000012
0x00005c09 cmdPushInt 0x00000004
0x00005c11 cmdPOP
0x00005c12 cmdPushInt 0x00000000
0x00005c1a cmdPushInt 0x00000000
0x00005c22 cmdPushInt 0x00000003
0x00005c2a cmdPOP
0x00005c2b cmdPushInt 0x00000001
0x00005c33 cmdPushInt 0x00000001
0x00005c3b cmdPushInt 0x00000003
0x00005c43 cmdPOP
0x00005c44 cmdPushInt 0x00000011
0x00005c4c cmdPushStr "sys20_adv00"
0x00005c5e cmdFarcall
0x00005c5f cmdPushInt 0x00030000
0x00005c67 cmdPushStr "v/z205200316"
0x00005c7a cmdPushInt 0x00000000
0x00005c82 cmdPCMPlay
0x00005c83 cmdShowText 0x00000080
0x00005c8a cmdPushStr "「オカルト研究会は解散ということになるわね」"
0x00005cbd cmdPushStr "朱音"
0x00005cc8 cmdPushInt 0x00000080
0x00005cd0 cmdPushInt 0x00000001
0x00005cd8 cmdMsg
0x00005cd9 cmdMsgStart
0x00005cda cmdMsgWaitButton
0x00005cdb cmdPushInt 0x00000000
0x00005ce3 cmdMsgClear
0x00005ce4 cmdPushStr "CGM_SZ13"
0x00005cf3 cmdPushInt 0x00000012
0x00005cfb cmdPushInt 0x00000004
0x00005d03 cmdPOP
0x00005d04 cmdPushInt 0x00000000
0x00005d0c cmdPushInt 0x00000000
0x00005d14 cmdPushInt 0x00000003
0x00005d1c cmdPOP
0x00005d1d cmdPushInt 0x00000001
0x00005d25 cmdPushInt 0x00000001
0x00005d2d cmdPushInt 0x00000003
0x00005d35 cmdPOP
0x00005d36 cmdPushInt 0x00000011
0x00005d3e cmdPushStr "sys20_adv00"
0x00005d50 cmdFarcall
0x00005d51 cmdPushInt 0x00040000
0x00005d59 cmdPushStr "v/z205200319"
0x00005d6c cmdPushInt 0x00000000
0x00005d74 cmdPCMPlay
0x00005d75 cmdShowText 0x00000081
0x00005d7c cmdPushStr "「………！」"
0x00005d8f cmdPushStr "静流"
0x00005d9a cmdPushInt 0x00000081
0x00005da2 cmdPushInt 0x00000001
0x00005daa cmdMsg
0x00005dab cmdMsgStart
0x00005dac cmdMsgWaitButton
0x00005dad cmdPushInt 0x00000000
0x00005db5 cmdMsgClear
0x00005db6 cmdShowText 0x00000082
0x00005dbd cmdPushStr "「鵜呑みっすか！？」"
0x00005dd8 cmdPushStr "瑚太朗"
0x00005de5 cmdPushInt 0x00000082
0x00005ded cmdPushInt 0x00000001
0x00005df5 cmdMsg
0x00005df6 cmdMsgStart
0x00005df7 cmdMsgWaitButton
0x00005df8 cmdPushInt 0x00000000
0x00005e00 cmdMsgClear
0x00005e01 cmdPushStr "CGM_AK13"
0x00005e10 cmdPushInt 0x00000012
0x00005e18 cmdPushInt 0x00000004
0x00005e20 cmdPOP
0x00005e21 cmdPushInt 0x00000000
0x00005e29 cmdPushInt 0x00000000
0x00005e31 cmdPushInt 0x00000003
0x00005e39 cmdPOP
0x00005e3a cmdPushInt 0x00000001
0x00005e42 cmdPushInt 0x00000001
0x00005e4a cmdPushInt 0x00000003
0x00005e52 cmdPOP
0x00005e53 cmdPushInt 0x00000011
0x00005e5b cmdPushStr "sys20_adv00"
0x00005e6d cmdFarcall
0x00005e6e cmdPushInt 0x00030000
0x00005e76 cmdPushStr "v/z205200323"
0x00005e89 cmdPushInt 0x00000000
0x00005e91 cmdPCMPlay
0x00005e92 cmdShowText 0x00000083
0x00005e99 cmdPushStr "「理由は、すでに話したとおりよ」"
0x00005ec0 cmdPushStr "朱音"
0x00005ecb cmdPushInt 0x00000083
0x00005ed3 cmdPushInt 0x00000001
0x00005edb cmdMsg
0x00005edc cmdMsgStart
0x00005edd cmdMsgWaitButton
0x00005ede cmdPushInt 0x00000000
0x00005ee6 cmdMsgClear
0x00005ee7 cmdPushStr "CGM_AK23"
0x00005ef6 cmdPushInt 0x00000012
0x00005efe cmdPushInt 0x00000004
0x00005f06 cmdPOP
0x00005f07 cmdPushInt 0x00000000
0x00005f0f cmdPushInt 0x00000000
0x00005f17 cmdPushInt 0x00000003
0x00005f1f cmdPOP
0x00005f20 cmdPushInt 0x00000001
0x00005f28 cmdPushInt 0x00000001
0x00005f30 cmdPushInt 0x00000003
0x00005f38 cmdPOP
0x00005f39 cmdPushInt 0x00000011
0x00005f41 cmdPushStr "sys20_adv00"
0x00005f53 cmdFarcall
0x00005f54 cmdPushInt 0x00030000
0x00005f5c cmdPushStr "v/z205200326"
0x00005f6f cmdPushInt 0x00000000
0x00005f77 cmdPCMPlay
0x00005f78 cmdShowText 0x00000084
0x00005f7f cmdPushStr "「妥当な判断だと思うけれど…」"
0x00005fa4 cmdPushStr "朱音"
0x00005faf cmdPushInt 0x00000084
0x00005fb7 cmdPushInt 0x00000001
0x00005fbf cmdMsg
0x00005fc0 cmdMsgStart
0x00005fc1 cmdMsgWaitButton
0x00005fc2 cmdPushInt 0x00000000
0x00005fca cmdMsgClear
0x00005fcb cmdShowText 0x00000085
0x00005fd2 cmdPushStr "「そんなのって…！」"
0x00005fed cmdPushStr "瑚太朗"
0x00005ffa cmdPushInt 0x00000085
0x00006002 cmdPushInt 0x00000001
0x0000600a cmdMsg
0x0000600b cmdMsgStart
0x0000600c cmdMsgWaitButton
0x0000600d cmdPushInt 0x00000000
0x00006015 cmdMsgClear
0x00006016 cmdPushInt 0x00000000
0x0000601e cmdPushInt 0x00000000
0x00006026 cmdPushInt 0x00000003
0x0000602e cmdPOP
0x0000602f cmdPushInt 0x00000000
0x00006037 cmdPushInt 0x00000001
0x0000603f cmdPushInt 0x00000003
0x00006047 cmdPOP
0x00006048 cmdPushInt 0x00000011
0x00006050 cmdPushStr "sys20_adv00"
0x00006062 cmdFarcall
0x00006063 cmdShowText 0x00000086
0x0000606a cmdPushStr "俺だって空気を読まずにはしゃぎたいわけじゃない。"
0x000060a1 cmdPushStr ""
0x000060a8 cmdPushInt 0x00000086
0x000060b0 cmdPushInt 0x00000001
0x000060b8 cmdMsg
0x000060b9 cmdMsgStart
0x000060ba cmdMsgWaitButton
0x000060bb cmdPushInt 0x00000000
0x000060c3 cmdMsgClear
0x000060c4 cmdShowText 0x00000087
0x000060cb cmdPushStr "ただ責任を誰かに押しつけるみたいなやり口が、嫌なだけだ。"
0x0000610a cmdPushStr ""
0x00006111 cmdPushInt 0x00000087
0x00006119 cmdPushInt 0x00000001
0x00006121 cmdMsg
0x00006122 cmdMsgStart
0x00006123 cmdMsgWaitButton
0x00006124 cmdPushInt 0x00000000
0x0000612c cmdMsgClear
0x0000612d cmdShowText 0x00000088
0x00006134 cmdPushStr "誰が納得できるっていうんだ？"
0x00006157 cmdPushStr ""
0x0000615e cmdPushInt 0x00000088
0x00006166 cmdPushInt 0x00000001
0x0000616e cmdMsg
0x0000616f cmdMsgStart
0x00006170 cmdMsgWaitButton
0x00006171 cmdPushInt 0x00000000
0x00006179 cmdMsgClear
0x0000617a cmdShowText 0x00000089
0x00006181 cmdPushStr "オカ研のメンバーは、ひとりも納得しないだろう。"
0x000061b6 cmdPushStr ""
0x000061bd cmdPushInt 0x00000089
0x000061c5 cmdPushInt 0x00000001
0x000061cd cmdMsg
0x000061ce cmdMsgStart
0x000061cf cmdMsgWaitButton
0x000061d0 cmdPushInt 0x00000000
0x000061d8 cmdMsgClear
0x000061d9 cmdShowText 0x0000008a
0x000061e0 cmdPushStr "…そう思っていた。"
0x000061f9 cmdPushStr ""
0x00006200 cmdPushInt 0x0000008a
0x00006208 cmdPushInt 0x00000001
0x00006210 cmdMsg
0x00006211 cmdMsgStart
0x00006212 cmdMsgWaitButton
0x00006213 cmdPushInt 0x00000000
0x0000621b cmdMsgClear
0x0000621c cmdPushStr "CGM_CH30"
0x0000622b cmdPushInt 0x00000012
0x00006233 cmdPushInt 0x00000004
0x0000623b cmdPOP
0x0000623c cmdPushInt 0x00000000
0x00006244 cmdPushInt 0x00000000
0x0000624c cmdPushInt 0x00000003
0x00006254 cmdPOP
0x00006255 cmdPushInt 0x00000001
0x0000625d cmdPushInt 0x00000001
0x00006265 cmdPushInt 0x00000003
0x0000626d cmdPOP
0x0000626e cmdPushInt 0x00000011
0x00006276 cmdPushStr "sys20_adv00"
0x00006288 cmdFarcall
0x00006289 cmdPushInt 0x0002f400
0x00006291 cmdPushStr "v/z205200337"
0x000062a4 cmdPushInt 0x00000000
0x000062ac cmdPCMPlay
0x000062ad cmdShowText 0x0000008b
0x000062b4 cmdPushStr "「仕方ないんでしょうか…」"
0x000062d5 cmdPushStr "ちはや"
0x000062e2 cmdPushInt 0x0000008b
0x000062ea cmdPushInt 0x00000001
0x000062f2 cmdMsg
0x000062f3 cmdMsgStart
0x000062f4 cmdMsgWaitButton
0x000062f5 cmdPushInt 0x00000000
0x000062fd cmdMsgClear
0x000062fe cmdPushStr "CGM_LC19"
0x0000630d cmdPushInt 0x00000012
0x00006315 cmdPushInt 0x00000004
0x0000631d cmdPOP
0x0000631e cmdPushInt 0x00000000
0x00006326 cmdPushInt 0x00000000
0x0000632e cmdPushInt 0x00000003
0x00006336 cmdPOP
0x00006337 cmdPushInt 0x00000001
0x0000633f cmdPushInt 0x00000001
0x00006347 cmdPushInt 0x00000003
0x0000634f cmdPOP
0x00006350 cmdPushInt 0x00000011
0x00006358 cmdPushStr "sys20_adv00"
0x0000636a cmdFarcall
0x0000636b cmdPushInt 0x00050000
0x00006373 cmdPushStr "v/z205200340"
0x00006386 cmdPushInt 0x00000000
0x0000638e cmdPCMPlay
0x0000638f cmdShowText 0x0000008c
0x00006396 cmdPushStr "「気にする必要はないと思うが…まあトップの判断には従おう」"
0x000063d7 cmdPushStr "ルチア"
0x000063e4 cmdPushInt 0x0000008c
0x000063ec cmdPushInt 0x00000001
0x000063f4 cmdMsg
0x000063f5 cmdMsgStart
0x000063f6 cmdMsgWaitButton
0x000063f7 cmdPushInt 0x00000000
0x000063ff cmdMsgClear
0x00006400 cmdPushInt 0x00000000
0x00006408 cmdPushInt 0x00000000
0x00006410 cmdPushInt 0x00000003
0x00006418 cmdPOP
0x00006419 cmdPushInt 0x00000000
0x00006421 cmdPushInt 0x00000001
0x00006429 cmdPushInt 0x00000003
0x00006431 cmdPOP
0x00006432 cmdPushInt 0x00000011
0x0000643a cmdPushStr "sys20_adv00"
0x0000644c cmdFarcall
0x0000644d cmdShowText 0x0000008d
0x00006454 cmdPushStr "誰も…"
0x00006461 cmdPushStr ""
0x00006468 cmdPushInt 0x0000008d
0x00006470 cmdPushInt 0x00000001
0x00006478 cmdMsg
0x00006479 cmdMsgStart
0x0000647a cmdMsgWaitButton
0x0000647b cmdPushInt 0x00000000
0x00006483 cmdMsgClear
0x00006484 cmdPushStr "CGM_SZ12s"
0x00006494 cmdPushInt 0x00000012
0x0000649c cmdPushInt 0x00000004
0x000064a4 cmdPOP
0x000064a5 cmdPushInt 0x00000000
0x000064ad cmdPushInt 0x00000000
0x000064b5 cmdPushInt 0x00000003
0x000064bd cmdPOP
0x000064be cmdPushInt 0x00000001
0x000064c6 cmdPushInt 0x00000001
0x000064ce cmdPushInt 0x00000003
0x000064d6 cmdPOP
0x000064d7 cmdPushInt 0x00000011
0x000064df cmdPushStr "sys20_adv00"
0x000064f1 cmdFarcall
0x000064f2 cmdPushInt 0x00040000
0x000064fa cmdPushStr "v/z205200346"
0x0000650d cmdPushInt 0x00000000
0x00006515 cmdPCMPlay
0x00006516 cmdShowText 0x0000008e
0x0000651d cmdPushStr "「ちょっとざんねんだ」"
0x0000653a cmdPushStr "静流"
0x00006545 cmdPushInt 0x0000008e
0x0000654d cmdPushInt 0x00000001
0x00006555 cmdMsg
0x00006556 cmdMsgStart
0x00006557 cmdMsgWaitButton
0x00006558 cmdPushInt 0x00000000
0x00006560 cmdMsgClear
0x00006561 cmdPushStr "CGM_KT31"
0x00006570 cmdPushInt 0x00000012
0x00006578 cmdPushInt 0x00000004
0x00006580 cmdPOP
0x00006581 cmdPushInt 0x00000000
0x00006589 cmdPushInt 0x00000000
0x00006591 cmdPushInt 0x00000003
0x00006599 cmdPOP
0x0000659a cmdPushInt 0x00000001
0x000065a2 cmdPushInt 0x00000001
0x000065aa cmdPushInt 0x00000003
0x000065b2 cmdPOP
0x000065b3 cmdPushInt 0x00000011
0x000065bb cmdPushStr "sys20_adv00"
0x000065cd cmdFarcall
0x000065ce cmdPushInt 0x00010000
0x000065d6 cmdPushStr "v/z205200349"
0x000065e9 cmdPushInt 0x00000000
0x000065f1 cmdPCMPlay
0x000065f2 cmdShowText 0x0000008f
0x000065f9 cmdPushStr "「街の緑化運動も自粛なのかな…」"
0x00006620 cmdPushStr "小鳥"
0x0000662b cmdPushInt 0x0000008f
0x00006633 cmdPushInt 0x00000001
0x0000663b cmdMsg
0x0000663c cmdMsgStart
0x0000663d cmdMsgWaitButton
0x0000663e cmdPushInt 0x00000000
0x00006646 cmdMsgClear
0x00006647 cmdPushInt 0x00000000
0x0000664f cmdPushInt 0x00000000
0x00006657 cmdPushInt 0x00000003
0x0000665f cmdPOP
0x00006660 cmdPushInt 0x00000000
0x00006668 cmdPushInt 0x00000001
0x00006670 cmdPushInt 0x00000003
0x00006678 cmdPOP
0x00006679 cmdPushInt 0x00000011
0x00006681 cmdPushStr "sys20_adv00"
0x00006693 cmdFarcall
0x00006694 cmdShowText 0x00000090
0x0000669b cmdPushStr "執着したりは…"
0x000066b0 cmdPushStr ""
0x000066b7 cmdPushInt 0x00000090
0x000066bf cmdPushInt 0x00000001
0x000066c7 cmdMsg
0x000066c8 cmdMsgStart
0x000066c9 cmdMsgWaitButton
0x000066ca cmdPushInt 0x00000000
0x000066d2 cmdMsgClear
0x000066d3 cmdPushStr "CGM_AK13"
0x000066e2 cmdPushInt 0x00000012
0x000066ea cmdPushInt 0x00000004
0x000066f2 cmdPOP
0x000066f3 cmdPushInt 0x00000000
0x000066fb cmdPushInt 0x00000000
0x00006703 cmdPushInt 0x00000003
0x0000670b cmdPOP
0x0000670c cmdPushInt 0x00000001
0x00006714 cmdPushInt 0x00000001
0x0000671c cmdPushInt 0x00000003
0x00006724 cmdPOP
0x00006725 cmdPushInt 0x00000011
0x0000672d cmdPushStr "sys20_adv00"
0x0000673f cmdFarcall
0x00006740 cmdPushInt 0x00030000
0x00006748 cmdPushStr "v/z205200355"
0x0000675b cmdPushInt 0x00000000
0x00006763 cmdPCMPlay
0x00006764 cmdShowText 0x00000091
0x0000676b cmdPushStr "「お祭り騒ぎもおしまいのようね」"
0x00006792 cmdPushStr "朱音"
0x0000679d cmdPushInt 0x00000091
0x000067a5 cmdPushInt 0x00000001
0x000067ad cmdMsg
0x000067ae cmdMsgStart
0x000067af cmdMsgWaitButton
0x000067b0 cmdPushInt 0x00000000
0x000067b8 cmdMsgClear
0x000067b9 cmdShowText 0x00000092
0x000067c0 cmdPushStr "しなかった…"
0x000067d3 cmdPushStr ""
0x000067da cmdPushInt 0x00000092
0x000067e2 cmdPushInt 0x00000001
0x000067ea cmdMsg
0x000067eb cmdMsgStart
0x000067ec cmdMsgWaitButton
0x000067ed cmdPushInt 0x00000000
0x000067f5 cmdMsgClear
0x000067f6 cmdPushStr "CGM_KT22h"
0x00006806 cmdPushInt 0x00000012
0x0000680e cmdPushInt 0x00000004
0x00006816 cmdPOP
0x00006817 cmdPushStr "CGM_CH29"
0x00006826 cmdPushInt 0x00000013
0x0000682e cmdPushInt 0x00000004
0x00006836 cmdPOP
0x00006837 cmdPushInt 0x00000000
0x0000683f cmdPushInt 0x00000000
0x00006847 cmdPushInt 0x00000003
0x0000684f cmdPOP
0x00006850 cmdPushInt 0x00000002
0x00006858 cmdPushInt 0x00000001
0x00006860 cmdPushInt 0x00000003
0x00006868 cmdPOP
0x00006869 cmdPushInt 0x00000011
0x00006871 cmdPushStr "sys20_adv00"
0x00006883 cmdFarcall
0x00006884 cmdPushInt 0x00010000
0x0000688c cmdPushStr "v/z205200360"
0x0000689f cmdPushInt 0x00000000
0x000068a7 cmdPCMPlay
0x000068a8 cmdShowText 0x00000093
0x000068af cmdPushStr "「部室使えないんなら、私物持ち帰らないと」"
0x000068e0 cmdPushStr "小鳥"
0x000068eb cmdPushInt 0x00000093
0x000068f3 cmdPushInt 0x00000001
0x000068fb cmdMsg
0x000068fc cmdMsgStart
0x000068fd cmdMsgWaitButton
0x000068fe cmdPushInt 0x00000000
0x00006906 cmdMsgClear
0x00006907 cmdPushStr "CGM_KT22h"
0x00006917 cmdPushInt 0x00000012
0x0000691f cmdPushInt 0x00000004
0x00006927 cmdPOP
0x00006928 cmdPushStr "CGM_CH30"
0x00006937 cmdPushInt 0x00000013
0x0000693f cmdPushInt 0x00000004
0x00006947 cmdPOP
0x00006948 cmdPushInt 0x00000000
0x00006950 cmdPushInt 0x00000000
0x00006958 cmdPushInt 0x00000003
0x00006960 cmdPOP
0x00006961 cmdPushInt 0x00000002
0x00006969 cmdPushInt 0x00000001
0x00006971 cmdPushInt 0x00000003
0x00006979 cmdPOP
0x0000697a cmdPushInt 0x00000011
0x00006982 cmdPushStr "sys20_adv00"
0x00006994 cmdFarcall
0x00006995 cmdPushInt 0x0002f400
0x0000699d cmdPushStr "v/z205200363"
0x000069b0 cmdPushInt 0x00000000
0x000069b8 cmdPCMPlay
0x000069b9 cmdShowText 0x00000094
0x000069c0 cmdPushStr "「そうですね、量が少し多いですけど…」"
0x000069ed cmdPushStr "ちはや"
0x000069fa cmdPushInt 0x00000094
0x00006a02 cmdPushInt 0x00000001
0x00006a0a cmdMsg
0x00006a0b cmdMsgStart
0x00006a0c cmdMsgWaitButton
0x00006a0d cmdPushInt 0x00000000
0x00006a15 cmdMsgClear
0x00006a16 cmdPushStr "CGM_SZ12s"
0x00006a26 cmdPushInt 0x00000012
0x00006a2e cmdPushInt 0x00000004
0x00006a36 cmdPOP
0x00006a37 cmdPushInt 0x00000000
0x00006a3f cmdPushInt 0x00000000
0x00006a47 cmdPushInt 0x00000003
0x00006a4f cmdPOP
0x00006a50 cmdPushInt 0x00000001
0x00006a58 cmdPushInt 0x00000001
0x00006a60 cmdPushInt 0x00000003
0x00006a68 cmdPOP
0x00006a69 cmdPushInt 0x00000011
0x00006a71 cmdPushStr "sys20_adv00"
0x00006a83 cmdFarcall
0x00006a84 cmdPushInt 0x00040000
0x00006a8c cmdPushStr "v/z205200366"
0x00006a9f cmdPushInt 0x00000000
0x00006aa7 cmdPCMPlay
0x00006aa8 cmdShowText 0x00000095
0x00006aaf cmdPushStr "「………」"
0x00006ac0 cmdPushStr "静流"
0x00006acb cmdPushInt 0x00000095
0x00006ad3 cmdPushInt 0x00000001
0x00006adb cmdMsg
0x00006adc cmdMsgStart
0x00006add cmdMsgWaitButton
0x00006ade cmdPushInt 0x00000000
0x00006ae6 cmdMsgClear
0x00006ae7 cmdPushStr "CGM_LC19"
0x00006af6 cmdPushInt 0x00000012
0x00006afe cmdPushInt 0x00000004
0x00006b06 cmdPOP
0x00006b07 cmdPushInt 0x00000000
0x00006b0f cmdPushInt 0x00000000
0x00006b17 cmdPushInt 0x00000003
0x00006b1f cmdPOP
0x00006b20 cmdPushInt 0x00000001
0x00006b28 cmdPushInt 0x00000001
0x00006b30 cmdPushInt 0x00000003
0x00006b38 cmdPOP
0x00006b39 cmdPushInt 0x00000011
0x00006b41 cmdPushStr "sys20_adv00"
0x00006b53 cmdFarcall
0x00006b54 cmdPushInt 0x00050000
0x00006b5c cmdPushStr "v/z205200369"
0x00006b6f cmdPushInt 0x00000000
0x00006b77 cmdPCMPlay
0x00006b78 cmdShowText 0x00000096
0x00006b7f cmdPushStr "「さんざん引っ張り回されたが、ようやく慌ただしい日々も終わりか」"
0x00006bc6 cmdPushStr "ルチア"
0x00006bd3 cmdPushInt 0x00000096
0x00006bdb cmdPushInt 0x00000001
0x00006be3 cmdMsg
0x00006be4 cmdMsgStart
0x00006be5 cmdMsgWaitButton
0x00006be6 cmdPushInt 0x00000000
0x00006bee cmdMsgClear
0x00006bef cmdPushInt 0x00000000
0x00006bf7 cmdPushInt 0x00000000
0x00006bff cmdPushInt 0x00000003
0x00006c07 cmdPOP
0x00006c08 cmdPushInt 0x00000000
0x00006c10 cmdPushInt 0x00000001
0x00006c18 cmdPushInt 0x00000003
0x00006c20 cmdPOP
0x00006c21 cmdPushInt 0x00000011
0x00006c29 cmdPushStr "sys20_adv00"
0x00006c3b cmdFarcall
0x00006c3c cmdShowText 0x00000097
0x00006c43 cmdPushStr "「………」"
0x00006c54 cmdPushStr "瑚太朗"
0x00006c61 cmdPushInt 0x00000097
0x00006c69 cmdPushInt 0x00000001
0x00006c71 cmdMsg
0x00006c72 cmdMsgStart
0x00006c73 cmdMsgWaitButton
0x00006c74 cmdPushInt 0x00000000
0x00006c7c cmdMsgClear
0x00006c7d cmdShowText 0x00000098
0x00006c84 cmdPushStr "奇妙な光景だった。"
0x00006c9d cmdPushStr ""
0x00006ca4 cmdPushInt 0x00000098
0x00006cac cmdPushInt 0x00000001
0x00006cb4 cmdMsg
0x00006cb5 cmdMsgStart
0x00006cb6 cmdMsgWaitButton
0x00006cb7 cmdPushInt 0x00000000
0x00006cbf cmdMsgClear
0x00006cc0 cmdShowText 0x00000099
0x00006cc7 cmdPushStr "今まで一緒に築いてきたものが、あっさり崩れようとしている。"
0x00006d08 cmdPushStr ""
0x00006d0f cmdPushInt 0x00000099
0x00006d17 cmdPushInt 0x00000001
0x00006d1f cmdMsg
0x00006d20 cmdMsgStart
0x00006d21 cmdMsgWaitButton
0x00006d22 cmdPushInt 0x00000000
0x00006d2a cmdMsgClear
0x00006d2b cmdShowText 0x0000009a
0x00006d32 cmdPushStr "なのに誰も抗おうとはしないのだ。"
0x00006d59 cmdPushStr ""
0x00006d60 cmdPushInt 0x0000009a
0x00006d68 cmdPushInt 0x00000001
0x00006d70 cmdMsg
0x00006d71 cmdMsgStart
0x00006d72 cmdMsgWaitButton
0x00006d73 cmdPushInt 0x00000000
0x00006d7b cmdMsgClear
0x00006d7c cmdShowText 0x0000009b
0x00006d83 cmdPushStr "ドライに受け入れている。"
0x00006da2 cmdPushStr ""
0x00006da9 cmdPushInt 0x0000009b
0x00006db1 cmdPushInt 0x00000001
0x00006db9 cmdMsg
0x00006dba cmdMsgStart
0x00006dbb cmdMsgWaitButton
0x00006dbc cmdPushInt 0x00000000
0x00006dc4 cmdMsgClear
0x00006dc5 cmdShowText 0x0000009c
0x00006dcc cmdPushStr "理解できなかった。"
0x00006de5 cmdPushStr ""
0x00006dec cmdPushInt 0x0000009c
0x00006df4 cmdPushInt 0x00000001
0x00006dfc cmdMsg
0x00006dfd cmdMsgStart
0x00006dfe cmdMsgWaitButton
0x00006dff cmdPushInt 0x00000000
0x00006e07 cmdMsgClear
0x00006e08 cmdShowText 0x0000009d
0x00006e0f cmdPushStr "…誰にとっても大事な空間だったはずだ。"
0x00006e3c cmdPushStr ""
0x00006e43 cmdPushInt 0x0000009d
0x00006e4b cmdPushInt 0x00000001
0x00006e53 cmdMsg
0x00006e54 cmdMsgStart
0x00006e55 cmdMsgWaitButton
0x00006e56 cmdPushInt 0x00000000
0x00006e5e cmdMsgClear
0x00006e5f cmdShowText 0x0000009e
0x00006e66 cmdPushStr "「なあ、みんな」"
0x00006e7d cmdPushStr "瑚太朗"
0x00006e8a cmdPushInt 0x0000009e
0x00006e92 cmdPushInt 0x00000001
0x00006e9a cmdMsg
0x00006e9b cmdMsgStart
0x00006e9c cmdMsgWaitButton
0x00006e9d cmdPushInt 0x00000000
0x00006ea5 cmdMsgClear
0x00006ea6 cmdShowText 0x0000009f
0x00006ead cmdPushStr "でももしかすると俺以外には…"
0x00006ed0 cmdPushStr ""
0x00006ed7 cmdPushInt 0x0000009f
0x00006edf cmdPushInt 0x00000001
0x00006ee7 cmdMsg
0x00006ee8 cmdMsgStart
0x00006ee9 cmdMsgWaitButton
0x00006eea cmdPushInt 0x00000000
0x00006ef2 cmdMsgClear
0x00006ef3 cmdShowText 0x000000a0
0x00006efa cmdPushStr "「えらいあっさり引き下がるね…」"
0x00006f21 cmdPushStr "瑚太朗"
0x00006f2e cmdPushInt 0x000000a0
0x00006f36 cmdPushInt 0x00000001
0x00006f3e cmdMsg
0x00006f3f cmdMsgStart
0x00006f40 cmdMsgWaitButton
0x00006f41 cmdPushInt 0x00000000
0x00006f49 cmdMsgClear
0x00006f4a cmdPushStr "CGM_LC11"
0x00006f59 cmdPushInt 0x00000012
0x00006f61 cmdPushInt 0x00000004
0x00006f69 cmdPOP
0x00006f6a cmdPushInt 0x00000000
0x00006f72 cmdPushInt 0x00000000
0x00006f7a cmdPushInt 0x00000003
0x00006f82 cmdPOP
0x00006f83 cmdPushInt 0x00000001
0x00006f8b cmdPushInt 0x00000001
0x00006f93 cmdPushInt 0x00000003
0x00006f9b cmdPOP
0x00006f9c cmdPushInt 0x00000011
0x00006fa4 cmdPushStr "sys20_adv00"
0x00006fb6 cmdFarcall
0x00006fb7 cmdPushInt 0x00050000
0x00006fbf cmdPushStr "v/z205200388"
0x00006fd2 cmdPushInt 0x00000000
0x00006fda cmdPCMPlay
0x00006fdb cmdShowText 0x000000a1
0x00006fe2 cmdPushStr "「どうしようもないことだからな」"
0x00007009 cmdPushStr "ルチア"
0x00007016 cmdPushInt 0x000000a1
0x0000701e cmdPushInt 0x00000001
0x00007026 cmdMsg
0x00007027 cmdMsgStart
0x00007028 cmdMsgWaitButton
0x00007029 cmdPushInt 0x00000000
0x00007031 cmdMsgClear
0x00007032 cmdShowText 0x000000a2
0x00007039 cmdPushStr "と肩をすくめる。"
0x00007050 cmdPushStr ""
0x00007057 cmdPushInt 0x000000a2
0x0000705f cmdPushInt 0x00000001
0x00007067 cmdMsg
0x00007068 cmdMsgStart
0x00007069 cmdMsgWaitButton
0x0000706a cmdPushInt 0x00000000
0x00007072 cmdMsgClear
0x00007073 cmdPushStr "CGM_CH29"
0x00007082 cmdPushInt 0x00000012
0x0000708a cmdPushInt 0x00000004
0x00007092 cmdPOP
0x00007093 cmdPushInt 0x00000000
0x0000709b cmdPushInt 0x00000000
0x000070a3 cmdPushInt 0x00000003
0x000070ab cmdPOP
0x000070ac cmdPushInt 0x00000001
0x000070b4 cmdPushInt 0x00000001
0x000070bc cmdPushInt 0x00000003
0x000070c4 cmdPOP
0x000070c5 cmdPushInt 0x00000011
0x000070cd cmdPushStr "sys20_adv00"
0x000070df cmdFarcall
0x000070e0 cmdPushInt 0x0002f400
0x000070e8 cmdPushStr "v/z205200393"
0x000070fb cmdPushInt 0x00000000
0x00007103 cmdPCMPlay
0x00007104 cmdShowText 0x000000a3
0x0000710b cmdPushStr "「朱音さんの命令ですからねえ…」"
0x00007132 cmdPushStr "ちはや"
0x0000713f cmdPushInt 0x000000a3
0x00007147 cmdPushInt 0x00000001
0x0000714f cmdMsg
0x00007150 cmdMsgStart
0x00007151 cmdMsgWaitButton
0x00007152 cmdPushInt 0x00000000
0x0000715a cmdMsgClear
0x0000715b cmdPushInt 0x00000000
0x00007163 cmdPushInt 0x00000000
0x0000716b cmdPushInt 0x00000003
0x00007173 cmdPOP
0x00007174 cmdPushInt 0x00000000
0x0000717c cmdPushInt 0x00000001
0x00007184 cmdPushInt 0x00000003
0x0000718c cmdPOP
0x0000718d cmdPushInt 0x00000011
0x00007195 cmdPushStr "sys20_adv00"
0x000071a7 cmdFarcall
0x000071a8 cmdShowText 0x000000a4
0x000071af cmdPushStr "いつもの調子で。"
0x000071c6 cmdPushStr ""
0x000071cd cmdPushInt 0x000000a4
0x000071d5 cmdPushInt 0x00000001
0x000071dd cmdMsg
0x000071de cmdMsgStart
0x000071df cmdMsgWaitButton
0x000071e0 cmdPushInt 0x00000000
0x000071e8 cmdMsgClear
0x000071e9 cmdShowText 0x000000a5
0x000071f0 cmdPushStr "「そうだけど…」"
0x00007207 cmdPushStr "瑚太朗"
0x00007214 cmdPushInt 0x000000a5
0x0000721c cmdPushInt 0x00000001
0x00007224 cmdMsg
0x00007225 cmdMsgStart
0x00007226 cmdMsgWaitButton
0x00007227 cmdPushInt 0x00000000
0x0000722f cmdMsgClear
0x00007230 cmdPushStr "CGM_KT26"
0x0000723f cmdPushInt 0x00000012
0x00007247 cmdPushInt 0x00000004
0x0000724f cmdPOP
0x00007250 cmdPushInt 0x00000000
0x00007258 cmdPushInt 0x00000000
0x00007260 cmdPushInt 0x00000003
0x00007268 cmdPOP
0x00007269 cmdPushInt 0x00000001
0x00007271 cmdPushInt 0x00000001
0x00007279 cmdPushInt 0x00000003
0x00007281 cmdPOP
0x00007282 cmdPushInt 0x00000011
0x0000728a cmdPushStr "sys20_adv00"
0x0000729c cmdFarcall
0x0000729d cmdPushInt 0x00010000
0x000072a5 cmdPushStr "v/z205200401"
0x000072b8 cmdPushInt 0x00000000
0x000072c0 cmdPCMPlay
0x000072c1 cmdShowText 0x000000a6
0x000072c8 cmdPushStr "「自粛ムードだもんねぇ」"
0x000072e7 cmdPushStr "小鳥"
0x000072f2 cmdPushInt 0x000000a6
0x000072fa cmdPushInt 0x00000001
0x00007302 cmdMsg
0x00007303 cmdMsgStart
0x00007304 cmdMsgWaitButton
0x00007305 cmdPushInt 0x00000000
0x0000730d cmdMsgClear
0x0000730e cmdShowText 0x000000a7
0x00007315 cmdPushStr "仕方ないとため息をつく。"
0x00007334 cmdPushStr ""
0x0000733b cmdPushInt 0x000000a7
0x00007343 cmdPushInt 0x00000001
0x0000734b cmdMsg
0x0000734c cmdMsgStart
0x0000734d cmdMsgWaitButton
0x0000734e cmdPushInt 0x00000000
0x00007356 cmdMsgClear
0x00007357 cmdShowText 0x000000a8
0x0000735e cmdPushStr "日常の延長線みたいな仕草で。"
0x00007381 cmdPushStr ""
0x00007388 cmdPushInt 0x000000a8
0x00007390 cmdPushInt 0x00000001
0x00007398 cmdMsg
0x00007399 cmdMsgStart
0x0000739a cmdMsgWaitButton
0x0000739b cmdPushInt 0x00000000
0x000073a3 cmdMsgClear
0x000073a4 cmdPushInt 0x00000000
0x000073ac cmdPushInt 0x00000000
0x000073b4 cmdPushInt 0x00000003
0x000073bc cmdPOP
0x000073bd cmdPushInt 0x00000000
0x000073c5 cmdPushInt 0x00000001
0x000073cd cmdPushInt 0x00000003
0x000073d5 cmdPOP
0x000073d6 cmdPushInt 0x00000011
0x000073de cmdPushStr "sys20_adv00"
0x000073f0 cmdFarcall
0x000073f1 cmdShowText 0x000000a9
0x000073f8 cmdPushStr "「自粛はいいさ」"
0x0000740f cmdPushStr "瑚太朗"
0x0000741c cmdPushInt 0x000000a9
0x00007424 cmdPushInt 0x00000001
0x0000742c cmdMsg
0x0000742d cmdMsgStart
0x0000742e cmdMsgWaitButton
0x0000742f cmdPushInt 0x00000000
0x00007437 cmdMsgClear
0x00007438 cmdShowText 0x000000aa
0x0000743f cmdPushStr "「けど…これって単なる生贄なんじゃないかなって思うんだけど…みんなどう思うの？」"
0x00007496 cmdPushStr "瑚太朗"
0x000074a3 cmdPushInt 0x000000aa
0x000074ab cmdPushInt 0x00000001
0x000074b3 cmdMsg
0x000074b4 cmdMsgStart
0x000074b5 cmdMsgWaitButton
0x000074b6 cmdPushInt 0x00000000
0x000074be cmdMsgClear
0x000074bf cmdPushStr "CGM_SZ40"
0x000074ce cmdPushInt 0x00000012
0x000074d6 cmdPushInt 0x00000004
0x000074de cmdPOP
0x000074df cmdPushInt 0x00000000
0x000074e7 cmdPushInt 0x00000000
0x000074ef cmdPushInt 0x00000003
0x000074f7 cmdPOP
0x000074f8 cmdPushInt 0x00000001
0x00007500 cmdPushInt 0x00000001
0x00007508 cmdPushInt 0x00000003
0x00007510 cmdPOP
0x00007511 cmdPushInt 0x00000011
0x00007519 cmdPushStr "sys20_adv00"
0x0000752b cmdFarcall
0x0000752c cmdPushInt 0x00040000
0x00007534 cmdPushStr "v/z205200411"
0x00007547 cmdPushInt 0x00000000
0x0000754f cmdPCMPlay
0x00007550 cmdShowText 0x000000ab
0x00007557 cmdPushStr "「ストレイシープ…」"
0x00007572 cmdPushStr "静流"
0x0000757d cmdPushInt 0x000000ab
0x00007585 cmdPushInt 0x00000001
0x0000758d cmdMsg
0x0000758e cmdMsgStart
0x0000758f cmdMsgWaitButton
0x00007590 cmdPushInt 0x00000000
0x00007598 cmdMsgClear
0x00007599 cmdPushStr "CGM_LC19"
0x000075a8 cmdPushInt 0x00000012
0x000075b0 cmdPushInt 0x00000004
0x000075b8 cmdPOP
0x000075b9 cmdPushStr "CGM_SZ40"
0x000075c8 cmdPushInt 0x00000013
0x000075d0 cmdPushInt 0x00000004
0x000075d8 cmdPOP
0x000075d9 cmdPushInt 0x00000000
0x000075e1 cmdPushInt 0x00000000
0x000075e9 cmdPushInt 0x00000003
0x000075f1 cmdPOP
0x000075f2 cmdPushInt 0x00000002
0x000075fa cmdPushInt 0x00000001
0x00007602 cmdPushInt 0x00000003
0x0000760a cmdPOP
0x0000760b cmdPushInt 0x00000011
0x00007613 cmdPushStr "sys20_adv00"
0x00007625 cmdFarcall
0x00007626 cmdPushInt 0x00050000
0x0000762e cmdPushStr "v/z205200414"
0x00007641 cmdPushInt 0x00000000
0x00007649 cmdPCMPlay
0x0000764a cmdShowText 0x000000ac
0x00007651 cmdPushStr "「…うん、スケープゴートだな」"
0x00007676 cmdPushStr "ルチア"
0x00007683 cmdPushInt 0x000000ac
0x0000768b cmdPushInt 0x00000001
0x00007693 cmdMsg
0x00007694 cmdMsgStart
0x00007695 cmdMsgWaitButton
0x00007696 cmdPushInt 0x00000000
0x0000769e cmdMsgClear
0x0000769f cmdPushInt 0x00000000
0x000076a7 cmdPushInt 0x00000000
0x000076af cmdPushInt 0x00000003
0x000076b7 cmdPOP
0x000076b8 cmdPushInt 0x00000000
0x000076c0 cmdPushInt 0x00000001
0x000076c8 cmdPushInt 0x00000003
0x000076d0 cmdPOP
0x000076d1 cmdPushInt 0x00000011
0x000076d9 cmdPushStr "sys20_adv00"
0x000076eb cmdFarcall
0x000076ec cmdShowText 0x000000ad
0x000076f3 cmdPushStr "「………」"
0x00007704 cmdPushStr "瑚太朗"
0x00007711 cmdPushInt 0x000000ad
0x00007719 cmdPushInt 0x00000001
0x00007721 cmdMsg
0x00007722 cmdMsgStart
0x00007723 cmdMsgWaitButton
0x00007724 cmdPushInt 0x00000000
0x0000772c cmdMsgClear
0x0000772d cmdPushStr "CGM_LC11"
0x0000773c cmdPushInt 0x00000012
0x00007744 cmdPushInt 0x00000004
0x0000774c cmdPOP
0x0000774d cmdPushInt 0x00000000
0x00007755 cmdPushInt 0x00000000
0x0000775d cmdPushInt 0x00000003
0x00007765 cmdPOP
0x00007766 cmdPushInt 0x00000001
0x0000776e cmdPushInt 0x00000001
0x00007776 cmdPushInt 0x00000003
0x0000777e cmdPOP
0x0000777f cmdPushInt 0x00000011
0x00007787 cmdPushStr "sys20_adv00"
0x00007799 cmdFarcall
0x0000779a cmdPushInt 0x00050000
0x000077a2 cmdPushStr "v/z205200420re"
0x000077b7 cmdPushInt 0x00000000
0x000077bf cmdPCMPlay
0x000077c0 cmdShowText 0x000000ae
0x000077c7 cmdPushStr "「オカ研を生贄にして、学校側としては本件に関する適切な処分を下した、と保護者に説明できるだろう」"
0x0000782e cmdPushStr "ルチア"
0x0000783b cmdPushInt 0x000000ae
0x00007843 cmdPushInt 0x00000001
0x0000784b cmdMsg
0x0000784c cmdMsgStart
0x0000784d cmdMsgWaitButton
0x0000784e cmdPushInt 0x00000000
0x00007856 cmdMsgClear
0x00007857 cmdShowText 0x000000af
0x0000785e cmdPushStr "「…納得いかないんだけど」"
0x0000787f cmdPushStr "瑚太朗"
0x0000788c cmdPushInt 0x000000af
0x00007894 cmdPushInt 0x00000001
0x0000789c cmdMsg
0x0000789d cmdMsgStart
0x0000789e cmdMsgWaitButton
0x0000789f cmdPushInt 0x00000000
0x000078a7 cmdMsgClear
0x000078a8 cmdPushStr "CGM_AK11"
0x000078b7 cmdPushInt 0x00000012
0x000078bf cmdPushInt 0x00000004
0x000078c7 cmdPOP
0x000078c8 cmdPushInt 0x00000000
0x000078d0 cmdPushInt 0x00000000
0x000078d8 cmdPushInt 0x00000003
0x000078e0 cmdPOP
0x000078e1 cmdPushInt 0x00000001
0x000078e9 cmdPushInt 0x00000001
0x000078f1 cmdPushInt 0x00000003
0x000078f9 cmdPOP
0x000078fa cmdPushInt 0x00000011
0x00007902 cmdPushStr "sys20_adv00"
0x00007914 cmdFarcall
0x00007915 cmdPushInt 0x00030000
0x0000791d cmdPushStr "v/z205200424"
0x00007930 cmdPushInt 0x00000000
0x00007938 cmdPCMPlay
0x00007939 cmdShowText 0x000000b0
0x00007940 cmdPushStr "「学校側の意思は固いわよ？」"
0x00007963 cmdPushStr "朱音"
0x0000796e cmdPushInt 0x000000b0
0x00007976 cmdPushInt 0x00000001
0x0000797e cmdMsg
0x0000797f cmdMsgStart
0x00007980 cmdMsgWaitButton
0x00007981 cmdPushInt 0x00000000
0x00007989 cmdMsgClear
0x0000798a cmdShowText 0x000000b1
0x00007991 cmdPushStr "「でも、ここは大事な…」"
0x000079b0 cmdPushStr "瑚太朗"
0x000079bd cmdPushInt 0x000000b1
0x000079c5 cmdPushInt 0x00000001
0x000079cd cmdMsg
0x000079ce cmdMsgStart
0x000079cf cmdMsgWaitButton
0x000079d0 cmdPushInt 0x00000000
0x000079d8 cmdMsgClear
0x000079d9 cmdPushStr "CGM_KT16"
0x000079e8 cmdPushInt 0x00000012
0x000079f0 cmdPushInt 0x00000004
0x000079f8 cmdPOP
0x000079f9 cmdPushInt 0x00000000
0x00007a01 cmdPushInt 0x00000000
0x00007a09 cmdPushInt 0x00000003
0x00007a11 cmdPOP
0x00007a12 cmdPushInt 0x00000001
0x00007a1a cmdPushInt 0x00000001
0x00007a22 cmdPushInt 0x00000003
0x00007a2a cmdPOP
0x00007a2b cmdPushInt 0x00000011
0x00007a33 cmdPushStr "sys20_adv00"
0x00007a45 cmdFarcall
0x00007a46 cmdPushInt 0x00010000
0x00007a4e cmdPushStr "v/z205200428"
0x00007a61 cmdPushInt 0x00000000
0x00007a69 cmdPCMPlay
0x00007a6a cmdShowText 0x000000b2
0x00007a71 cmdPushStr "「大事な？」"
0x00007a84 cmdPushStr "小鳥"
0x00007a8f cmdPushInt 0x000000b2
0x00007a97 cmdPushInt 0x00000001
0x00007a9f cmdMsg
0x00007aa0 cmdMsgStart
0x00007aa1 cmdMsgWaitButton
0x00007aa2 cmdPushInt 0x00000000
0x00007aaa cmdMsgClear
0x00007aab cmdPushInt 0x00000000
0x00007ab3 cmdPushInt 0x00000000
0x00007abb cmdPushInt 0x00000003
0x00007ac3 cmdPOP
0x00007ac4 cmdPushInt 0x00000000
0x00007acc cmdPushInt 0x00000001
0x00007ad4 cmdPushInt 0x00000003
0x00007adc cmdPOP
0x00007add cmdPushInt 0x00000011
0x00007ae5 cmdPushStr "sys20_adv00"
0x00007af7 cmdFarcall
0x00007af8 cmdShowText 0x000000b3
0x00007aff cmdPushStr "「俺たちの居場所じゃん？　まだはじまったばっかだけどさ…良い流れは作れてきたじゃん？」"
0x00007b5c cmdPushStr "瑚太朗"
0x00007b69 cmdPushInt 0x000000b3
0x00007b71 cmdPushInt 0x00000001
0x00007b79 cmdMsg
0x00007b7a cmdMsgStart
0x00007b7b cmdMsgWaitButton
0x00007b7c cmdPushInt 0x00000000
0x00007b84 cmdMsgClear
0x00007b85 cmdShowText 0x000000b4
0x00007b8c cmdPushStr "「それなくなろうとしてんのよ？　全部ゼロになろうとしてる」"
0x00007bcd cmdPushStr "瑚太朗"
0x00007bda cmdPushInt 0x000000b4
0x00007be2 cmdPushInt 0x00000001
0x00007bea cmdMsg
0x00007beb cmdMsgStart
0x00007bec cmdMsgWaitButton
0x00007bed cmdPushInt 0x00000000
0x00007bf5 cmdMsgClear
0x00007bf6 cmdPushStr "CGM_AK13"
0x00007c05 cmdPushInt 0x00000012
0x00007c0d cmdPushInt 0x00000004
0x00007c15 cmdPOP
0x00007c16 cmdPushInt 0x00000000
0x00007c1e cmdPushInt 0x00000000
0x00007c26 cmdPushInt 0x00000003
0x00007c2e cmdPOP
0x00007c2f cmdPushInt 0x00000001
0x00007c37 cmdPushInt 0x00000001
0x00007c3f cmdPushInt 0x00000003
0x00007c47 cmdPOP
0x00007c48 cmdPushInt 0x00000011
0x00007c50 cmdPushStr "sys20_adv00"
0x00007c62 cmdFarcall
0x00007c63 cmdPushInt 0x00030000
0x00007c6b cmdPushStr "v/z205200435"
0x00007c7e cmdPushInt 0x00000000
0x00007c86 cmdPCMPlay
0x00007c87 cmdShowText 0x000000b5
0x00007c8e cmdPushStr "「オカ研は途中で一度解散しているのよ」"
0x00007cbb cmdPushStr "朱音"
0x00007cc6 cmdPushInt 0x000000b5
0x00007cce cmdPushInt 0x00000001
0x00007cd6 cmdMsg
0x00007cd7 cmdMsgStart
0x00007cd8 cmdMsgWaitButton
0x00007cd9 cmdPushInt 0x00000000
0x00007ce1 cmdMsgClear
0x00007ce2 cmdPushStr "CGM_AK22"
0x00007cf1 cmdPushInt 0x00000012
0x00007cf9 cmdPushInt 0x00000004
0x00007d01 cmdPOP
0x00007d02 cmdPushInt 0x00000000
0x00007d0a cmdPushInt 0x00000000
0x00007d12 cmdPushInt 0x00000003
0x00007d1a cmdPOP
0x00007d1b cmdPushInt 0x00000001
0x00007d23 cmdPushInt 0x00000001
0x00007d2b cmdPushInt 0x00000003
0x00007d33 cmdPOP
0x00007d34 cmdPushInt 0x00000011
0x00007d3c cmdPushStr "sys20_adv00"
0x00007d4e cmdFarcall
0x00007d4f cmdPushInt 0x00030000
0x00007d57 cmdPushStr "v/z205200438"
0x00007d6a cmdPushInt 0x00000000
0x00007d72 cmdPCMPlay
0x00007d73 cmdShowText 0x000000b6
0x00007d7a cmdPushStr "「守るべき伝統や伝えるべき精神もない、からっぽのサークルだわ」"
0x00007dbf cmdPushStr "朱音"
0x00007dca cmdPushInt 0x000000b6
0x00007dd2 cmdPushInt 0x00000001
0x00007dda cmdMsg
0x00007ddb cmdMsgStart
0x00007ddc cmdMsgWaitButton
0x00007ddd cmdPushInt 0x00000000
0x00007de5 cmdMsgClear
0x00007de6 cmdPushInt 0x00000000
0x00007dee cmdPushInt 0x00000000
0x00007df6 cmdPushInt 0x00000003
0x00007dfe cmdPOP
0x00007dff cmdPushInt 0x00000000
0x00007e07 cmdPushInt 0x00000001
0x00007e0f cmdPushInt 0x00000003
0x00007e17 cmdPOP
0x00007e18 cmdPushInt 0x00000011
0x00007e20 cmdPushStr "sys20_adv00"
0x00007e32 cmdFarcall
0x00007e33 cmdShowText 0x000000b7
0x00007e3a cmdPushStr "「いや、オカ研って組織を守りたいわけじゃなくて…」"
0x00007e73 cmdPushStr "瑚太朗"
0x00007e80 cmdPushInt 0x000000b7
0x00007e88 cmdPushInt 0x00000001
0x00007e90 cmdMsg
0x00007e91 cmdMsgStart
0x00007e92 cmdMsgWaitButton
0x00007e93 cmdPushInt 0x00000000
0x00007e9b cmdMsgClear
0x00007e9c cmdShowText 0x000000b8
0x00007ea3 cmdPushStr "「つまりさ…」"
0x00007eb8 cmdPushStr "瑚太朗"
0x00007ec5 cmdPushInt 0x000000b8
0x00007ecd cmdPushInt 0x00000001
0x00007ed5 cmdMsg
0x00007ed6 cmdMsgStart
0x00007ed7 cmdMsgWaitButton
0x00007ed8 cmdPushInt 0x00000000
0x00007ee0 cmdMsgClear
0x00007ee1 cmdShowText 0x000000b9
0x00007ee8 cmdPushStr "ほどよい言葉はなかなか見つからない。"
0x00007f13 cmdPushStr ""
0x00007f1a cmdPushInt 0x000000b9
0x00007f22 cmdPushInt 0x00000001
0x00007f2a cmdMsg
0x00007f2b cmdMsgStart
0x00007f2c cmdMsgWaitButton
0x00007f2d cmdPushInt 0x00000000
0x00007f35 cmdMsgClear
0x00007f36 cmdShowText 0x000000ba
0x00007f3d cmdPushStr "語彙がないから。"
0x00007f54 cmdPushStr ""
0x00007f5b cmdPushInt 0x000000ba
0x00007f63 cmdPushInt 0x00000001
0x00007f6b cmdMsg
0x00007f6c cmdMsgStart
0x00007f6d cmdMsgWaitButton
0x00007f6e cmdPushInt 0x00000000
0x00007f76 cmdMsgClear
0x00007f77 cmdShowText 0x000000bb
0x00007f7e cmdPushStr "パッと浮かぶのは、どれも恥ずかしいものばかりだ。"
0x00007fb5 cmdPushStr ""
0x00007fbc cmdPushInt 0x000000bb
0x00007fc4 cmdPushInt 0x00000001
0x00007fcc cmdMsg
0x00007fcd cmdMsgStart
0x00007fce cmdMsgWaitButton
0x00007fcf cmdPushInt 0x00000000
0x00007fd7 cmdMsgClear
0x00007fd8 cmdShowText 0x000000bc
0x00007fdf cmdPushStr "だけどそいつを口にするしかないみたいだ。"
0x0000800e cmdPushStr ""
0x00008015 cmdPushInt 0x000000bc
0x0000801d cmdPushInt 0x00000001
0x00008025 cmdMsg
0x00008026 cmdMsgStart
0x00008027 cmdMsgWaitButton
0x00008028 cmdPushInt 0x00000000
0x00008030 cmdMsgClear
0x00008031 cmdShowText 0x000000bd
0x00008038 cmdPushStr "「仲間じゃん！」"
0x0000804f cmdPushStr "瑚太朗"
0x0000805c cmdPushInt 0x000000bd
0x00008064 cmdPushInt 0x00000001
0x0000806c cmdMsg
0x0000806d cmdMsgStart
0x0000806e cmdMsgWaitButton
0x0000806f cmdPushInt 0x00000000
0x00008077 cmdMsgClear
0x00008078 cmdShowText 0x000000be
0x0000807f cmdPushStr "「アミーゴじゃん、絆じゃん、友情じゃん」"
0x000080ae cmdPushStr "瑚太朗"
0x000080bb cmdPushInt 0x000000be
0x000080c3 cmdPushInt 0x00000001
0x000080cb cmdMsg
0x000080cc cmdMsgStart
0x000080cd cmdMsgWaitButton
0x000080ce cmdPushInt 0x00000000
0x000080d6 cmdMsgClear
0x000080d7 cmdShowText 0x000000bf
0x000080de cmdPushStr "勢いづいてしまい、思いついた全部の恥ずかしい単語を炸裂させてしまった。"
0x0000812b cmdPushStr ""
0x00008132 cmdPushInt 0x000000bf
0x0000813a cmdPushInt 0x00000001
0x00008142 cmdMsg
0x00008143 cmdMsgStart
0x00008144 cmdMsgWaitButton
0x00008145 cmdPushInt 0x00000000
0x0000814d cmdMsgClear
0x0000814e cmdShowText 0x000000c0
0x00008155 cmdPushStr "皆に笑われるようなことはなかった。"
0x0000817e cmdPushStr ""
0x00008185 cmdPushInt 0x000000c0
0x0000818d cmdPushInt 0x00000001
0x00008195 cmdMsg
0x00008196 cmdMsgStart
0x00008197 cmdMsgWaitButton
0x00008198 cmdPushInt 0x00000000
0x000081a0 cmdMsgClear
0x000081a1 cmdShowText 0x000000c1
0x000081a8 cmdPushStr "けど全員が困ったような顔をした。"
0x000081cf cmdPushStr ""
0x000081d6 cmdPushInt 0x000000c1
0x000081de cmdPushInt 0x00000001
0x000081e6 cmdMsg
0x000081e7 cmdMsgStart
0x000081e8 cmdMsgWaitButton
0x000081e9 cmdPushInt 0x00000000
0x000081f1 cmdMsgClear
0x000081f2 cmdShowText 0x000000c2
0x000081f9 cmdPushStr "…ショックだった。"
0x00008212 cmdPushStr ""
0x00008219 cmdPushInt 0x000000c2
0x00008221 cmdPushInt 0x00000001
0x00008229 cmdMsg
0x0000822a cmdMsgStart
0x0000822b cmdMsgWaitButton
0x0000822c cmdPushInt 0x00000000
0x00008234 cmdMsgClear
0x00008235 cmdShowText 0x000000c3
0x0000823c cmdPushStr "俺はまるで、現実味のないわがままを口にして母親を困らせている子供だった。"
0x0000828b cmdPushStr ""
0x00008292 cmdPushInt 0x000000c3
0x0000829a cmdPushInt 0x00000001
0x000082a2 cmdMsg
0x000082a3 cmdMsgStart
0x000082a4 cmdMsgWaitButton
0x000082a5 cmdPushInt 0x00000000
0x000082ad cmdMsgClear
0x000082ae cmdPushStr "CGM_LC11h"
0x000082be cmdPushInt 0x00000012
0x000082c6 cmdPushInt 0x00000004
0x000082ce cmdPOP
0x000082cf cmdPushInt 0x00000000
0x000082d7 cmdPushInt 0x00000000
0x000082df cmdPushInt 0x00000003
0x000082e7 cmdPOP
0x000082e8 cmdPushInt 0x00000001
0x000082f0 cmdPushInt 0x00000001
0x000082f8 cmdPushInt 0x00000003
0x00008300 cmdPOP
0x00008301 cmdPushInt 0x00000011
0x00008309 cmdPushStr "sys20_adv00"
0x0000831b cmdFarcall
0x0000831c cmdPushInt 0x00050000
0x00008324 cmdPushStr "v/z205200459"
0x00008337 cmdPushInt 0x00000000
0x0000833f cmdPCMPlay
0x00008340 cmdShowText 0x000000c4
0x00008347 cmdPushStr "「…つまり天王寺瑚太朗はこう言いたい」"
0x00008374 cmdPushStr "ルチア"
0x00008381 cmdPushInt 0x000000c4
0x00008389 cmdPushInt 0x00000001
0x00008391 cmdMsg
0x00008392 cmdMsgStart
0x00008393 cmdMsgWaitButton
0x00008394 cmdPushInt 0x00000000
0x0000839c cmdMsgClear
0x0000839d cmdPushInt 0x00050000
0x000083a5 cmdPushStr "v/z205200460"
0x000083b8 cmdPushInt 0x00000000
0x000083c0 cmdPCMPlay
0x000083c1 cmdShowText 0x000000c5
0x000083c8 cmdPushStr "「オカ研というのは単なるＢ級サークルなどではない」"
0x00008401 cmdPushStr "ルチア"
0x0000840e cmdPushInt 0x000000c5
0x00008416 cmdPushInt 0x00000001
0x0000841e cmdMsg
0x0000841f cmdMsgStart
0x00008420 cmdMsgWaitButton
0x00008421 cmdPushInt 0x00000000
0x00008429 cmdMsgClear
0x0000842a cmdPushStr "CGM_LC19"
0x00008439 cmdPushInt 0x00000012
0x00008441 cmdPushInt 0x00000004
0x00008449 cmdPOP
0x0000844a cmdPushInt 0x00000000
0x00008452 cmdPushInt 0x00000000
0x0000845a cmdPushInt 0x00000003
0x00008462 cmdPOP
0x00008463 cmdPushInt 0x00000001
0x0000846b cmdPushInt 0x00000001
0x00008473 cmdPushInt 0x00000003
0x0000847b cmdPOP
0x0000847c cmdPushInt 0x00000011
0x00008484 cmdPushStr "sys20_adv00"
0x00008496 cmdFarcall
0x00008497 cmdPushInt 0x00050000
0x0000849f cmdPushStr "v/z205200463"
0x000084b2 cmdPushInt 0x00000000
0x000084ba cmdPCMPlay
0x000084bb cmdShowText 0x000000c6
0x000084c2 cmdPushStr "「ひとときをともにする若者らの特権的な空間であり、堅守せねばならぬ場所であり、集うメンバーたちの尊い絆そのものである、と」"
0x00008543 cmdPushStr "ルチア"
0x00008550 cmdPushInt 0x000000c6
0x00008558 cmdPushInt 0x00000001
0x00008560 cmdMsg
0x00008561 cmdMsgStart
0x00008562 cmdMsgWaitButton
0x00008563 cmdPushInt 0x00000000
0x0000856b cmdMsgClear
0x0000856c cmdShowText 0x000000c7
0x00008573 cmdPushStr "「単語わざとクサくしてるだろ？　…けどまあ、そういうことだよ」"
0x000085b8 cmdPushStr "瑚太朗"
0x000085c5 cmdPushInt 0x000000c7
0x000085cd cmdPushInt 0x00000001
0x000085d5 cmdMsg
0x000085d6 cmdMsgStart
0x000085d7 cmdMsgWaitButton
0x000085d8 cmdPushInt 0x00000000
0x000085e0 cmdMsgClear
0x000085e1 cmdPushInt 0x00000000
0x000085e9 cmdPushInt 0x00000000
0x000085f1 cmdPushInt 0x00000003
0x000085f9 cmdPOP
0x000085fa cmdPushInt 0x00000000
0x00008602 cmdPushInt 0x00000001
0x0000860a cmdPushInt 0x00000003
0x00008612 cmdPOP
0x00008613 cmdPushInt 0x00000011
0x0000861b cmdPushStr "sys20_adv00"
0x0000862d cmdFarcall
0x0000862e cmdShowText 0x000000c8
0x00008635 cmdPushStr "「なあ、みんなもそうだろ？」"
0x00008658 cmdPushStr "瑚太朗"
0x00008665 cmdPushInt 0x000000c8
0x0000866d cmdPushInt 0x00000001
0x00008675 cmdMsg
0x00008676 cmdMsgStart
0x00008677 cmdMsgWaitButton
0x00008678 cmdPushInt 0x00000000
0x00008680 cmdMsgClear
0x00008681 cmdPushStr "CGM_KT16"
0x00008690 cmdPushInt 0x00000012
0x00008698 cmdPushInt 0x00000004
0x000086a0 cmdPOP
0x000086a1 cmdPushStr "CGM_CH18"
0x000086b0 cmdPushInt 0x00000013
0x000086b8 cmdPushInt 0x00000004
0x000086c0 cmdPOP
0x000086c1 cmdPushInt 0x00000000
0x000086c9 cmdPushInt 0x00000000
0x000086d1 cmdPushInt 0x00000003
0x000086d9 cmdPOP
0x000086da cmdPushInt 0x00000002
0x000086e2 cmdPushInt 0x00000001
0x000086ea cmdPushInt 0x00000003
0x000086f2 cmdPOP
0x000086f3 cmdPushInt 0x00000011
0x000086fb cmdPushStr "sys20_adv00"
0x0000870d cmdFarcall
0x0000870e cmdPushInt 0x00010000
0x00008716 cmdPushStr "v/z205200470"
0x00008729 cmdPushInt 0x00000000
0x00008731 cmdPCMPlay
0x00008732 cmdShowText 0x000000c9
0x00008739 cmdPushStr "「もちろんそうだと思うよ」"
0x0000875a cmdPushStr "小鳥"
0x00008765 cmdPushInt 0x000000c9
0x0000876d cmdPushInt 0x00000001
0x00008775 cmdMsg
0x00008776 cmdMsgStart
0x00008777 cmdMsgWaitButton
0x00008778 cmdPushInt 0x00000000
0x00008780 cmdMsgClear
0x00008781 cmdPushStr "CGM_KT16"
0x00008790 cmdPushInt 0x00000012
0x00008798 cmdPushInt 0x00000004
0x000087a0 cmdPOP
0x000087a1 cmdPushStr "CGM_CH29"
0x000087b0 cmdPushInt 0x00000013
0x000087b8 cmdPushInt 0x00000004
0x000087c0 cmdPOP
0x000087c1 cmdPushInt 0x00000000
0x000087c9 cmdPushInt 0x00000000
0x000087d1 cmdPushInt 0x00000003
0x000087d9 cmdPOP
0x000087da cmdPushInt 0x00000002
0x000087e2 cmdPushInt 0x00000001
0x000087ea cmdPushInt 0x00000003
0x000087f2 cmdPOP
0x000087f3 cmdPushInt 0x00000011
0x000087fb cmdPushStr "sys20_adv00"
0x0000880d cmdFarcall
0x0000880e cmdPushInt 0x0002f400
0x00008816 cmdPushStr "v/z205200473"
0x00008829 cmdPushInt 0x00000000
0x00008831 cmdPCMPlay
0x00008832 cmdShowText 0x000000ca
0x00008839 cmdPushStr "「そうですねえ…私たち友達だと思いますけど」"
0x0000886c cmdPushStr "ちはや"
0x00008879 cmdPushInt 0x000000ca
0x00008881 cmdPushInt 0x00000001
0x00008889 cmdMsg
0x0000888a cmdMsgStart
0x0000888b cmdMsgWaitButton
0x0000888c cmdPushInt 0x00000000
0x00008894 cmdMsgClear
0x00008895 cmdPushStr "CGM_SZ10"
0x000088a4 cmdPushInt 0x00000012
0x000088ac cmdPushInt 0x00000004
0x000088b4 cmdPOP
0x000088b5 cmdPushInt 0x00000000
0x000088bd cmdPushInt 0x00000000
0x000088c5 cmdPushInt 0x00000003
0x000088cd cmdPOP
0x000088ce cmdPushInt 0x00000001
0x000088d6 cmdPushInt 0x00000001
0x000088de cmdPushInt 0x00000003
0x000088e6 cmdPOP
0x000088e7 cmdPushInt 0x00000011
0x000088ef cmdPushStr "sys20_adv00"
0x00008901 cmdFarcall
0x00008902 cmdPushInt 0x00040000
0x0000890a cmdPushStr "v/z205200476"
0x0000891d cmdPushInt 0x00000000
0x00008925 cmdPCMPlay
0x00008926 cmdShowText 0x000000cb
0x0000892d cmdPushStr "「………」"
0x0000893e cmdPushStr "静流"
0x00008949 cmdPushInt 0x000000cb
0x00008951 cmdPushInt 0x00000001
0x00008959 cmdMsg
0x0000895a cmdMsgStart
0x0000895b cmdMsgWaitButton
0x0000895c cmdPushInt 0x00000000
0x00008964 cmdMsgClear
0x00008965 cmdShowText 0x000000cc
0x0000896c cmdPushStr "静流も頷く。"
0x0000897f cmdPushStr ""
0x00008986 cmdPushInt 0x000000cc
0x0000898e cmdPushInt 0x00000001
0x00008996 cmdMsg
0x00008997 cmdMsgStart
0x00008998 cmdMsgWaitButton
0x00008999 cmdPushInt 0x00000000
0x000089a1 cmdMsgClear
0x000089a2 cmdPushInt 0x00000000
0x000089aa cmdPushInt 0x00000000
0x000089b2 cmdPushInt 0x00000003
0x000089ba cmdPOP
0x000089bb cmdPushInt 0x00000000
0x000089c3 cmdPushInt 0x00000001
0x000089cb cmdPushInt 0x00000003
0x000089d3 cmdPOP
0x000089d4 cmdPushInt 0x00000011
0x000089dc cmdPushStr "sys20_adv00"
0x000089ee cmdFarcall
0x000089ef cmdShowText 0x000000cd
0x000089f6 cmdPushStr "「でも部室に集まるなってことは、これからはバラバラになるってことで」"
0x00008a41 cmdPushStr "瑚太朗"
0x00008a4e cmdPushInt 0x000000cd
0x00008a56 cmdPushInt 0x00000001
0x00008a5e cmdMsg
0x00008a5f cmdMsgStart
0x00008a60 cmdMsgWaitButton
0x00008a61 cmdPushInt 0x00000000
0x00008a69 cmdMsgClear
0x00008a6a cmdShowText 0x000000ce
0x00008a71 cmdPushStr "「今まで通りにつるむってわけには行かなくなるし…調査だってできない」"
0x00008abc cmdPushStr "瑚太朗"
0x00008ac9 cmdPushInt 0x000000ce
0x00008ad1 cmdPushInt 0x00000001
0x00008ad9 cmdMsg
0x00008ada cmdMsgStart
0x00008adb cmdMsgWaitButton
0x00008adc cmdPushInt 0x00000000
0x00008ae4 cmdMsgClear
0x00008ae5 cmdShowText 0x000000cf
0x00008aec cmdPushStr "「だから俺…」"
0x00008b01 cmdPushStr "瑚太朗"
0x00008b0e cmdPushInt 0x000000cf
0x00008b16 cmdPushInt 0x00000001
0x00008b1e cmdMsg
0x00008b1f cmdMsgStart
0x00008b20 cmdMsgWaitButton
0x00008b21 cmdPushInt 0x00000000
0x00008b29 cmdMsgClear
0x00008b2a cmdShowText 0x000000d0
0x00008b31 cmdPushStr "ずっと一緒にいたい。"
0x00008b4c cmdPushStr ""
0x00008b53 cmdPushInt 0x000000d0
0x00008b5b cmdPushInt 0x00000001
0x00008b63 cmdMsg
0x00008b64 cmdMsgStart
0x00008b65 cmdMsgWaitButton
0x00008b66 cmdPushInt 0x00000000
0x00008b6e cmdMsgClear
0x00008b6f cmdShowText 0x000000d1
0x00008b76 cmdPushStr "少なくとも学校を出るまでは、ここに集っていたい。"
0x00008bad cmdPushStr ""
0x00008bb4 cmdPushInt 0x000000d1
0x00008bbc cmdPushInt 0x00000001
0x00008bc4 cmdMsg
0x00008bc5 cmdMsgStart
0x00008bc6 cmdMsgWaitButton
0x00008bc7 cmdPushInt 0x00000000
0x00008bcf cmdMsgClear
0x00008bd0 cmdShowText 0x000000d2
0x00008bd7 cmdPushStr "スクープなんて取れなくてもいい。"
0x00008bfe cmdPushStr ""
0x00008c05 cmdPushInt 0x000000d2
0x00008c0d cmdPushInt 0x00000001
0x00008c15 cmdMsg
0x00008c16 cmdMsgStart
0x00008c17 cmdMsgWaitButton
0x00008c18 cmdPushInt 0x00000000
0x00008c20 cmdMsgClear
0x00008c21 cmdShowText 0x000000d3
0x00008c28 cmdPushStr "最後まで空振りだって構わない。"
0x00008c4d cmdPushStr ""
0x00008c54 cmdPushInt 0x000000d3
0x00008c5c cmdPushInt 0x00000001
0x00008c64 cmdMsg
0x00008c65 cmdMsgStart
0x00008c66 cmdMsgWaitButton
0x00008c67 cmdPushInt 0x00000000
0x00008c6f cmdMsgClear
0x00008c70 cmdShowText 0x000000d4
0x00008c77 cmdPushStr "仲間と馬鹿騒ぎをしていたい。"
0x00008c9a cmdPushStr ""
0x00008ca1 cmdPushInt 0x000000d4
0x00008ca9 cmdPushInt 0x00000001
0x00008cb1 cmdMsg
0x00008cb2 cmdMsgStart
0x00008cb3 cmdMsgWaitButton
0x00008cb4 cmdPushInt 0x00000000
0x00008cbc cmdMsgClear
0x00008cbd cmdShowText 0x000000d5
0x00008cc4 cmdPushStr "正直な気持ちだった。"
0x00008cdf cmdPushStr ""
0x00008ce6 cmdPushInt 0x000000d5
0x00008cee cmdPushInt 0x00000001
0x00008cf6 cmdMsg
0x00008cf7 cmdMsgStart
0x00008cf8 cmdMsgWaitButton
0x00008cf9 cmdPushInt 0x00000000
0x00008d01 cmdMsgClear
0x00008d02 cmdPushStr "CGM_LC19"
0x00008d11 cmdPushInt 0x00000012
0x00008d19 cmdPushInt 0x00000004
0x00008d21 cmdPOP
0x00008d22 cmdPushInt 0x00000000
0x00008d2a cmdPushInt 0x00000000
0x00008d32 cmdPushInt 0x00000003
0x00008d3a cmdPOP
0x00008d3b cmdPushInt 0x00000001
0x00008d43 cmdPushInt 0x00000001
0x00008d4b cmdPushInt 0x00000003
0x00008d53 cmdPOP
0x00008d54 cmdPushInt 0x00000011
0x00008d5c cmdPushStr "sys20_adv00"
0x00008d6e cmdFarcall
0x00008d6f cmdPushInt 0x00050000
0x00008d77 cmdPushStr "v/z205200492"
0x00008d8a cmdPushInt 0x00000000
0x00008d92 cmdPCMPlay
0x00008d93 cmdShowText 0x000000d6
0x00008d9a cmdPushStr "「自由を勝ち取るために学校と闘争しようとでも？」"
0x00008dd1 cmdPushStr "ルチア"
0x00008dde cmdPushInt 0x000000d6
0x00008de6 cmdPushInt 0x00000001
0x00008dee cmdMsg
0x00008def cmdMsgStart
0x00008df0 cmdMsgWaitButton
0x00008df1 cmdPushInt 0x00000000
0x00008df9 cmdMsgClear
0x00008dfa cmdShowText 0x000000d7
0x00008e01 cmdPushStr "「まさか」"
0x00008e12 cmdPushStr "瑚太朗"
0x00008e1f cmdPushInt 0x000000d7
0x00008e27 cmdPushInt 0x00000001
0x00008e2f cmdMsg
0x00008e30 cmdMsgStart
0x00008e31 cmdMsgWaitButton
0x00008e32 cmdPushInt 0x00000000
0x00008e3a cmdMsgClear
0x00008e3b cmdShowText 0x000000d8
0x00008e42 cmdPushStr "「手はまた考えるとして…今は結束が大事だ」"
0x00008e73 cmdPushStr "瑚太朗"
0x00008e80 cmdPushInt 0x000000d8
0x00008e88 cmdPushInt 0x00000001
0x00008e90 cmdMsg
0x00008e91 cmdMsgStart
0x00008e92 cmdMsgWaitButton
0x00008e93 cmdPushInt 0x00000000
0x00008e9b cmdMsgClear
0x00008e9c cmdPushInt 0x00000000
0x00008ea4 cmdPushInt 0x00000000
0x00008eac cmdPushInt 0x00000003
0x00008eb4 cmdPOP
0x00008eb5 cmdPushInt 0x00000000
0x00008ebd cmdPushInt 0x00000001
0x00008ec5 cmdPushInt 0x00000003
0x00008ecd cmdPOP
0x00008ece cmdPushInt 0x00000011
0x00008ed6 cmdPushStr "sys20_adv00"
0x00008ee8 cmdFarcall
0x00008ee9 cmdShowText 0x000000d9
0x00008ef0 cmdPushStr "「みんなの意向はひとつなんだからさ」"
0x00008f1b cmdPushStr "瑚太朗"
0x00008f28 cmdPushInt 0x000000d9
0x00008f30 cmdPushInt 0x00000001
0x00008f38 cmdMsg
0x00008f39 cmdMsgStart
0x00008f3a cmdMsgWaitButton
0x00008f3b cmdPushInt 0x00000000
0x00008f43 cmdMsgClear
0x00008f44 cmdShowText 0x000000da
0x00008f4b cmdPushStr "「井上のことはもちろん心配だから、活動自粛は受け入れよう」"
0x00008f8c cmdPushStr "瑚太朗"
0x00008f99 cmdPushInt 0x000000da
0x00008fa1 cmdPushInt 0x00000001
0x00008fa9 cmdMsg
0x00008faa cmdMsgStart
0x00008fab cmdMsgWaitButton
0x00008fac cmdPushInt 0x00000000
0x00008fb4 cmdMsgClear
0x00008fb5 cmdShowText 0x000000db
0x00008fbc cmdPushStr "「でもそれはあくまで、自分たちの判断ですることだ」"
0x00008ff5 cmdPushStr "瑚太朗"
0x00009002 cmdPushInt 0x000000db
0x0000900a cmdPushInt 0x00000001
0x00009012 cmdMsg
0x00009013 cmdMsgStart
0x00009014 cmdMsgWaitButton
0x00009015 cmdPushInt 0x00000000
0x0000901d cmdMsgClear
0x0000901e cmdShowText 0x000000dc
0x00009025 cmdPushStr "「保身の道具になるために引き受けることじゃない」"
0x0000905c cmdPushStr "瑚太朗"
0x00009069 cmdPushInt 0x000000dc
0x00009071 cmdPushInt 0x00000001
0x00009079 cmdMsg
0x0000907a cmdMsgStart
0x0000907b cmdMsgWaitButton
0x0000907c cmdPushInt 0x00000000
0x00009084 cmdMsgClear
0x00009085 cmdShowText 0x000000dd
0x0000908c cmdPushStr "「解散しちゃったらさ…俺たちが罪を認めたみたいになる」"
0x000090c9 cmdPushStr "瑚太朗"
0x000090d6 cmdPushInt 0x000000dd
0x000090de cmdPushInt 0x00000001
0x000090e6 cmdMsg
0x000090e7 cmdMsgStart
0x000090e8 cmdMsgWaitButton
0x000090e9 cmdPushInt 0x00000000
0x000090f1 cmdMsgClear
0x000090f2 cmdShowText 0x000000de
0x000090f9 cmdPushStr "「それって、悔しいじゃないか…！」"
0x00009122 cmdPushStr "瑚太朗"
0x0000912f cmdPushInt 0x000000de
0x00009137 cmdPushInt 0x00000001
0x0000913f cmdMsg
0x00009140 cmdMsgStart
0x00009141 cmdMsgWaitButton
0x00009142 cmdPushInt 0x00000000
0x0000914a cmdMsgClear
0x0000914b cmdShowText 0x000000df
0x00009152 cmdPushStr "反応を見る。"
0x00009165 cmdPushStr ""
0x0000916c cmdPushInt 0x000000df
0x00009174 cmdPushInt 0x00000001
0x0000917c cmdMsg
0x0000917d cmdMsgStart
0x0000917e cmdMsgWaitButton
0x0000917f cmdPushInt 0x00000000
0x00009187 cmdMsgClear
0x00009188 cmdShowText 0x000000e0
0x0000918f cmdPushStr "みんな、どう反応すべきか迷っていた。"
0x000091ba cmdPushStr ""
0x000091c1 cmdPushInt 0x000000e0
0x000091c9 cmdPushInt 0x00000001
0x000091d1 cmdMsg
0x000091d2 cmdMsgStart
0x000091d3 cmdMsgWaitButton
0x000091d4 cmdPushInt 0x00000000
0x000091dc cmdMsgClear
0x000091dd cmdShowText 0x000000e1
0x000091e4 cmdPushStr "無条件の賛同は、そこにはない。"
0x00009209 cmdPushStr ""
0x00009210 cmdPushInt 0x000000e1
0x00009218 cmdPushInt 0x00000001
0x00009220 cmdMsg
0x00009221 cmdMsgStart
0x00009222 cmdMsgWaitButton
0x00009223 cmdPushInt 0x00000000
0x0000922b cmdMsgClear
0x0000922c cmdShowText 0x000000e2
0x00009233 cmdPushStr "なぜ、ない？"
0x00009246 cmdPushStr ""
0x0000924d cmdPushInt 0x000000e2
0x00009255 cmdPushInt 0x00000001
0x0000925d cmdMsg
0x0000925e cmdMsgStart
0x0000925f cmdMsgWaitButton
0x00009260 cmdPushInt 0x00000000
0x00009268 cmdMsgClear
0x00009269 cmdShowText 0x000000e3
0x00009270 cmdPushStr "俺だけがずれているのか…？"
0x00009291 cmdPushStr ""
0x00009298 cmdPushInt 0x000000e3
0x000092a0 cmdPushInt 0x00000001
0x000092a8 cmdMsg
0x000092a9 cmdMsgStart
0x000092aa cmdMsgWaitButton
0x000092ab cmdPushInt 0x00000000
0x000092b3 cmdMsgClear
0x000092b4 cmdShowText 0x000000e4
0x000092bb cmdPushStr "不安が膨脹する。"
0x000092d2 cmdPushStr ""
0x000092d9 cmdPushInt 0x000000e4
0x000092e1 cmdPushInt 0x00000001
0x000092e9 cmdMsg
0x000092ea cmdMsgStart
0x000092eb cmdMsgWaitButton
0x000092ec cmdPushInt 0x00000000
0x000092f4 cmdMsgClear
0x000092f5 cmdShowText 0x000000e5
0x000092fc cmdPushStr "皆と俺とのズレを感じた。"
0x0000931b cmdPushStr ""
0x00009322 cmdPushInt 0x000000e5
0x0000932a cmdPushInt 0x00000001
0x00009332 cmdMsg
0x00009333 cmdMsgStart
0x00009334 cmdMsgWaitButton
0x00009335 cmdPushInt 0x00000000
0x0000933d cmdMsgClear
0x0000933e cmdShowText 0x000000e6
0x00009345 cmdPushStr "ひとつの疑問。"
0x0000935a cmdPushStr ""
0x00009361 cmdPushInt 0x000000e6
0x00009369 cmdPushInt 0x00000001
0x00009371 cmdMsg
0x00009372 cmdMsgStart
0x00009373 cmdMsgWaitButton
0x00009374 cmdPushInt 0x00000000
0x0000937c cmdMsgClear
0x0000937d cmdShowText 0x000000e7
0x00009384 cmdPushStr "それは…"
0x00009393 cmdPushStr ""
0x0000939a cmdPushInt 0x000000e7
0x000093a2 cmdPushInt 0x00000001
0x000093aa cmdMsg
0x000093ab cmdMsgStart
0x000093ac cmdMsgWaitButton
0x000093ad cmdPushInt 0x00000000
0x000093b5 cmdMsgClear
0x000093b6 cmdShowText 0x000000e8
0x000093bd cmdPushStr "それは、いつからあった温度差なんだろうか？"
0x000093ee cmdPushStr ""
0x000093f5 cmdPushInt 0x000000e8
0x000093fd cmdPushInt 0x00000001
0x00009405 cmdMsg
0x00009406 cmdMsgStart
0x00009407 cmdMsgWaitButton
0x00009408 cmdPushInt 0x00000000
0x00009410 cmdMsgClear
0x00009411 cmdShowText 0x000000e9
0x00009418 cmdPushStr "人間の根っこのところにある考え方の違い。歯車の違い。"
0x00009453 cmdPushStr ""
0x0000945a cmdPushInt 0x000000e9
0x00009462 cmdPushInt 0x00000001
0x0000946a cmdMsg
0x0000946b cmdMsgStart
0x0000946c cmdMsgWaitButton
0x0000946d cmdPushInt 0x00000000
0x00009475 cmdMsgClear
0x00009476 cmdShowText 0x000000ea
0x0000947d cmdPushStr "俺たちはそれこそ昨日まで、うまく噛み合っているはずだった。"
0x000094be cmdPushStr ""
0x000094c5 cmdPushInt 0x000000ea
0x000094cd cmdPushInt 0x00000001
0x000094d5 cmdMsg
0x000094d6 cmdMsgStart
0x000094d7 cmdMsgWaitButton
0x000094d8 cmdPushInt 0x00000000
0x000094e0 cmdMsgClear
0x000094e1 cmdShowText 0x000000eb
0x000094e8 cmdPushStr "良いサイクルを作れていた。"
0x00009509 cmdPushStr ""
0x00009510 cmdPushInt 0x000000eb
0x00009518 cmdPushInt 0x00000001
0x00009520 cmdMsg
0x00009521 cmdMsgStart
0x00009522 cmdMsgWaitButton
0x00009523 cmdPushInt 0x00000000
0x0000952b cmdMsgClear
0x0000952c cmdShowText 0x000000ec
0x00009533 cmdPushStr "だからみんな集まってきたんじゃないのか？"
0x00009562 cmdPushStr ""
0x00009569 cmdPushInt 0x000000ec
0x00009571 cmdPushInt 0x00000001
0x00009579 cmdMsg
0x0000957a cmdMsgStart
0x0000957b cmdMsgWaitButton
0x0000957c cmdPushInt 0x00000000
0x00009584 cmdMsgClear
0x00009585 cmdShowText 0x000000ed
0x0000958c cmdPushStr "俺たちというシステムは、間違いなく稼働していた。"
0x000095c3 cmdPushStr ""
0x000095ca cmdPushInt 0x000000ed
0x000095d2 cmdPushInt 0x00000001
0x000095da cmdMsg
0x000095db cmdMsgStart
0x000095dc cmdMsgWaitButton
0x000095dd cmdPushInt 0x00000000
0x000095e5 cmdMsgClear
0x000095e6 cmdShowText 0x000000ee
0x000095ed cmdPushStr "そんなことを、いつしか言葉も選ばずにわめきちらしていた。"
0x0000962c cmdPushStr ""
0x00009633 cmdPushInt 0x000000ee
0x0000963b cmdPushInt 0x00000001
0x00009643 cmdMsg
0x00009644 cmdMsgStart
0x00009645 cmdMsgWaitButton
0x00009646 cmdPushInt 0x00000000
0x0000964e cmdMsgClear
0x0000964f cmdPushStr "CGM_AK13"
0x0000965e cmdPushInt 0x00000012
0x00009666 cmdPushInt 0x00000004
0x0000966e cmdPOP
0x0000966f cmdPushInt 0x00000000
0x00009677 cmdPushInt 0x00000000
0x0000967f cmdPushInt 0x00000003
0x00009687 cmdPOP
0x00009688 cmdPushInt 0x00000001
0x00009690 cmdPushInt 0x00000001
0x00009698 cmdPushInt 0x00000003
0x000096a0 cmdPOP
0x000096a1 cmdPushInt 0x00000011
0x000096a9 cmdPushStr "sys20_adv00"
0x000096bb cmdFarcall
0x000096bc cmdPushInt 0x00030000
0x000096c4 cmdPushStr "v/z205200528"
0x000096d7 cmdPushInt 0x00000000
0x000096df cmdPCMPlay
0x000096e0 cmdShowText 0x000000ef
0x000096e7 cmdPushStr "「…落ち着きなさい、天王寺」"
0x0000970a cmdPushStr "朱音"
0x00009715 cmdPushInt 0x000000ef
0x0000971d cmdPushInt 0x00000001
0x00009725 cmdMsg
0x00009726 cmdMsgStart
0x00009727 cmdMsgWaitButton
0x00009728 cmdPushInt 0x00000000
0x00009730 cmdMsgClear
0x00009731 cmdShowText 0x000000f0
0x00009738 cmdPushStr "「…すいません…」"
0x00009751 cmdPushStr "瑚太朗"
0x0000975e cmdPushInt 0x000000f0
0x00009766 cmdPushInt 0x00000001
0x0000976e cmdMsg
0x0000976f cmdMsgStart
0x00009770 cmdMsgWaitButton
0x00009771 cmdPushInt 0x00000000
0x00009779 cmdMsgClear
0x0000977a cmdPushStr "CGM_LC11"
0x00009789 cmdPushInt 0x00000012
0x00009791 cmdPushInt 0x00000004
0x00009799 cmdPOP
0x0000979a cmdPushInt 0x00000000
0x000097a2 cmdPushInt 0x00000000
0x000097aa cmdPushInt 0x00000003
0x000097b2 cmdPOP
0x000097b3 cmdPushInt 0x00000001
0x000097bb cmdPushInt 0x00000001
0x000097c3 cmdPushInt 0x00000003
0x000097cb cmdPOP
0x000097cc cmdPushInt 0x00000011
0x000097d4 cmdPushStr "sys20_adv00"
0x000097e6 cmdFarcall
0x000097e7 cmdPushInt 0x00050000
0x000097ef cmdPushStr "v/z205200532"
0x00009802 cmdPushInt 0x00000000
0x0000980a cmdPCMPlay
0x0000980b cmdShowText 0x000000f1
0x00009812 cmdPushStr "「また熱く語ったものだな」"
0x00009833 cmdPushStr "ルチア"
0x00009840 cmdPushInt 0x000000f1
0x00009848 cmdPushInt 0x00000001
0x00009850 cmdMsg
0x00009851 cmdMsgStart
0x00009852 cmdMsgWaitButton
0x00009853 cmdPushInt 0x00000000
0x0000985b cmdMsgClear
0x0000985c cmdPushStr "CGM_SZ11"
0x0000986b cmdPushInt 0x00000012
0x00009873 cmdPushInt 0x00000004
0x0000987b cmdPOP
0x0000987c cmdPushInt 0x00000000
0x00009884 cmdPushInt 0x00000000
0x0000988c cmdPushInt 0x00000003
0x00009894 cmdPOP
0x00009895 cmdPushInt 0x00000001
0x0000989d cmdPushInt 0x00000001
0x000098a5 cmdPushInt 0x00000003
0x000098ad cmdPOP
0x000098ae cmdPushInt 0x00000011
0x000098b6 cmdPushStr "sys20_adv00"
0x000098c8 cmdFarcall
0x000098c9 cmdPushInt 0x00040000
0x000098d1 cmdPushStr "v/z205200535"
0x000098e4 cmdPushInt 0x00000000
0x000098ec cmdPCMPlay
0x000098ed cmdShowText 0x000000f2
0x000098f4 cmdPushStr "「けっこうホットだ、コタロー」"
0x00009919 cmdPushStr "静流"
0x00009924 cmdPushInt 0x000000f2
0x0000992c cmdPushInt 0x00000001
0x00009934 cmdMsg
0x00009935 cmdMsgStart
0x00009936 cmdMsgWaitButton
0x00009937 cmdPushInt 0x00000000
0x0000993f cmdMsgClear
0x00009940 cmdShowText 0x000000f3
0x00009947 cmdPushStr "「う…」"
0x00009956 cmdPushStr "瑚太朗"
0x00009963 cmdPushInt 0x000000f3
0x0000996b cmdPushInt 0x00000001
0x00009973 cmdMsg
0x00009974 cmdMsgStart
0x00009975 cmdMsgWaitButton
0x00009976 cmdPushInt 0x00000000
0x0000997e cmdMsgClear
0x0000997f cmdShowText 0x000000f4
0x00009986 cmdPushStr "ちょっと恥ずかしい。"
0x000099a1 cmdPushStr ""
0x000099a8 cmdPushInt 0x000000f4
0x000099b0 cmdPushInt 0x00000001
0x000099b8 cmdMsg
0x000099b9 cmdMsgStart
0x000099ba cmdMsgWaitButton
0x000099bb cmdPushInt 0x00000000
0x000099c3 cmdMsgClear
0x000099c4 cmdPushStr "CGM_CH29"
0x000099d3 cmdPushInt 0x00000012
0x000099db cmdPushInt 0x00000004
0x000099e3 cmdPOP
0x000099e4 cmdPushInt 0x00000000
0x000099ec cmdPushInt 0x00000000
0x000099f4 cmdPushInt 0x00000003
0x000099fc cmdPOP
0x000099fd cmdPushInt 0x00000001
0x00009a05 cmdPushInt 0x00000001
0x00009a0d cmdPushInt 0x00000003
0x00009a15 cmdPOP
0x00009a16 cmdPushInt 0x00000011
0x00009a1e cmdPushStr "sys20_adv00"
0x00009a30 cmdFarcall
0x00009a31 cmdPushInt 0x0002f400
0x00009a39 cmdPushStr "v/z205200541"
0x00009a4c cmdPushInt 0x00000000
0x00009a54 cmdPCMPlay
0x00009a55 cmdShowText 0x000000f5
0x00009a5c cmdPushStr "「あのですね…」"
0x00009a73 cmdPushStr "ちはや"
0x00009a80 cmdPushInt 0x000000f5
0x00009a88 cmdPushInt 0x00000001
0x00009a90 cmdMsg
0x00009a91 cmdMsgStart
0x00009a92 cmdMsgWaitButton
0x00009a93 cmdPushInt 0x00000000
0x00009a9b cmdMsgClear
0x00009a9c cmdPushStr "CGM_CH30"
0x00009aab cmdPushInt 0x00000012
0x00009ab3 cmdPushInt 0x00000004
0x00009abb cmdPOP
0x00009abc cmdPushInt 0x00000000
0x00009ac4 cmdPushInt 0x00000000
0x00009acc cmdPushInt 0x00000003
0x00009ad4 cmdPOP
0x00009ad5 cmdPushInt 0x00000001
0x00009add cmdPushInt 0x00000001
0x00009ae5 cmdPushInt 0x00000003
0x00009aed cmdPOP
0x00009aee cmdPushInt 0x00000011
0x00009af6 cmdPushStr "sys20_adv00"
0x00009b08 cmdFarcall
0x00009b09 cmdPushInt 0x0002f400
0x00009b11 cmdPushStr "v/z205200544"
0x00009b24 cmdPushInt 0x00000000
0x00009b2c cmdPCMPlay
0x00009b2d cmdShowText 0x000000f6
0x00009b34 cmdPushStr "「もちろん、みんなの気持ちは一緒だと思うんです」"
0x00009b6b cmdPushStr "ちはや"
0x00009b78 cmdPushInt 0x000000f6
0x00009b80 cmdPushInt 0x00000001
0x00009b88 cmdMsg
0x00009b89 cmdMsgStart
0x00009b8a cmdMsgWaitButton
0x00009b8b cmdPushInt 0x00000000
0x00009b93 cmdMsgClear
0x00009b94 cmdPushStr "CGM_KT26"
0x00009ba3 cmdPushInt 0x00000012
0x00009bab cmdPushInt 0x00000004
0x00009bb3 cmdPOP
0x00009bb4 cmdPushInt 0x00000000
0x00009bbc cmdPushInt 0x00000000
0x00009bc4 cmdPushInt 0x00000003
0x00009bcc cmdPOP
0x00009bcd cmdPushInt 0x00000001
0x00009bd5 cmdPushInt 0x00000001
0x00009bdd cmdPushInt 0x00000003
0x00009be5 cmdPOP
0x00009be6 cmdPushInt 0x00000011
0x00009bee cmdPushStr "sys20_adv00"
0x00009c00 cmdFarcall
0x00009c01 cmdPushInt 0x00010000
0x00009c09 cmdPushStr "v/z205200547"
0x00009c1c cmdPushInt 0x00000000
0x00009c24 cmdPCMPlay
0x00009c25 cmdShowText 0x000000f7
0x00009c2c cmdPushStr "「…でもさ、睨まれちゃったわけだし」"
0x00009c57 cmdPushStr "小鳥"
0x00009c62 cmdPushInt 0x000000f7
0x00009c6a cmdPushInt 0x00000001
0x00009c72 cmdMsg
0x00009c73 cmdMsgStart
0x00009c74 cmdMsgWaitButton
0x00009c75 cmdPushInt 0x00000000
0x00009c7d cmdMsgClear
0x00009c7e cmdPushStr "CGM_AK22"
0x00009c8d cmdPushInt 0x00000012
0x00009c95 cmdPushInt 0x00000004
0x00009c9d cmdPOP
0x00009c9e cmdPushInt 0x00000000
0x00009ca6 cmdPushInt 0x00000000
0x00009cae cmdPushInt 0x00000003
0x00009cb6 cmdPOP
0x00009cb7 cmdPushInt 0x00000001
0x00009cbf cmdPushInt 0x00000001
0x00009cc7 cmdPushInt 0x00000003
0x00009ccf cmdPOP
0x00009cd0 cmdPushInt 0x00000011
0x00009cd8 cmdPushStr "sys20_adv00"
0x00009cea cmdFarcall
0x00009ceb cmdPushInt 0x00030000
0x00009cf3 cmdPushStr "v/z205200550"
0x00009d06 cmdPushInt 0x00000000
0x00009d0e cmdPCMPlay
0x00009d0f cmdShowText 0x000000f8
0x00009d16 cmdPushStr "「私の力でも、どうにもならない状況になりつつあるのも事実ね」"
0x00009d59 cmdPushStr "朱音"
0x00009d64 cmdPushInt 0x000000f8
0x00009d6c cmdPushInt 0x00000001
0x00009d74 cmdMsg
0x00009d75 cmdMsgStart
0x00009d76 cmdMsgWaitButton
0x00009d77 cmdPushInt 0x00000000
0x00009d7f cmdMsgClear
0x00009d80 cmdShowText 0x000000f9
0x00009d87 cmdPushStr "「そんな…」"
0x00009d9a cmdPushStr "瑚太朗"
0x00009da7 cmdPushInt 0x000000f9
0x00009daf cmdPushInt 0x00000001
0x00009db7 cmdMsg
0x00009db8 cmdMsgStart
0x00009db9 cmdMsgWaitButton
0x00009dba cmdPushInt 0x00000000
0x00009dc2 cmdMsgClear
0x00009dc3 cmdPushInt 0x00000000
0x00009dcb cmdPushInt 0x00000000
0x00009dd3 cmdPushInt 0x00000003
0x00009ddb cmdPOP
0x00009ddc cmdPushInt 0x00000000
0x00009de4 cmdPushInt 0x00000001
0x00009dec cmdPushInt 0x00000003
0x00009df4 cmdPOP
0x00009df5 cmdPushInt 0x00000011
0x00009dfd cmdPushStr "sys20_adv00"
0x00009e0f cmdFarcall
0x00009e10 cmdShowText 0x000000fa
0x00009e17 cmdPushStr "自分の頭を拳で叩く。"
0x00009e32 cmdPushStr ""
0x00009e39 cmdPushInt 0x000000fa
0x00009e41 cmdPushInt 0x00000001
0x00009e49 cmdMsg
0x00009e4a cmdMsgStart
0x00009e4b cmdMsgWaitButton
0x00009e4c cmdPushInt 0x00000000
0x00009e54 cmdMsgClear
0x00009e55 cmdShowText 0x000000fb
0x00009e5c cmdPushStr "いいアイデアでもこぼれてこないかと。"
0x00009e87 cmdPushStr ""
0x00009e8e cmdPushInt 0x000000fb
0x00009e96 cmdPushInt 0x00000001
0x00009e9e cmdMsg
0x00009e9f cmdMsgStart
0x00009ea0 cmdMsgWaitButton
0x00009ea1 cmdPushInt 0x00000000
0x00009ea9 cmdMsgClear
0x00009eaa cmdShowText 0x000000fc
0x00009eb1 cmdPushStr "そりゃ、解散したって学校で会うことはできる。"
0x00009ee4 cmdPushStr ""
0x00009eeb cmdPushInt 0x000000fc
0x00009ef3 cmdPushInt 0x00000001
0x00009efb cmdMsg
0x00009efc cmdMsgStart
0x00009efd cmdMsgWaitButton
0x00009efe cmdPushInt 0x00000000
0x00009f06 cmdMsgClear
0x00009f07 cmdShowText 0x000000fd
0x00009f0e cmdPushStr "一緒に遊ぶことだって可能だろう。"
0x00009f35 cmdPushStr ""
0x00009f3c cmdPushInt 0x000000fd
0x00009f44 cmdPushInt 0x00000001
0x00009f4c cmdMsg
0x00009f4d cmdMsgStart
0x00009f4e cmdMsgWaitButton
0x00009f4f cmdPushInt 0x00000000
0x00009f57 cmdMsgClear
0x00009f58 cmdShowText 0x000000fe
0x00009f5f cmdPushStr "だけど…人と人との繋がりは、はずみでばらけてしまうことがよくある。"
0x00009fa8 cmdPushStr ""
0x00009faf cmdPushInt 0x000000fe
0x00009fb7 cmdPushInt 0x00000001
0x00009fbf cmdMsg
0x00009fc0 cmdMsgStart
0x00009fc1 cmdMsgWaitButton
0x00009fc2 cmdPushInt 0x00000000
0x00009fca cmdMsgClear
0x00009fcb cmdShowText 0x000000ff
0x00009fd2 cmdPushStr "人には個別の人生がある。"
0x00009ff1 cmdPushStr ""
0x00009ff8 cmdPushInt 0x000000ff
0x0000a000 cmdPushInt 0x00000001
0x0000a008 cmdMsg
0x0000a009 cmdMsgStart
0x0000a00a cmdMsgWaitButton
0x0000a00b cmdPushInt 0x00000000
0x0000a013 cmdMsgClear
0x0000a014 cmdShowText 0x00000100
0x0000a01b cmdPushStr "いずれは別々の道を歩んでいくのだ。"
0x0000a044 cmdPushStr ""
0x0000a04b cmdPushInt 0x00000100
0x0000a053 cmdPushInt 0x00000001
0x0000a05b cmdMsg
0x0000a05c cmdMsgStart
0x0000a05d cmdMsgWaitButton
0x0000a05e cmdPushInt 0x00000000
0x0000a066 cmdMsgClear
0x0000a067 cmdShowText 0x00000101
0x0000a06e cmdPushStr "いつまでも一緒だなんて、どだい不自然なこと。"
0x0000a0a1 cmdPushStr ""
0x0000a0a8 cmdPushInt 0x00000101
0x0000a0b0 cmdPushInt 0x00000001
0x0000a0b8 cmdMsg
0x0000a0b9 cmdMsgStart
0x0000a0ba cmdMsgWaitButton
0x0000a0bb cmdPushInt 0x00000000
0x0000a0c3 cmdMsgClear
0x0000a0c4 cmdShowText 0x00000102
0x0000a0cb cmdPushStr "未熟な思考…"
0x0000a0de cmdPushStr ""
0x0000a0e5 cmdPushInt 0x00000102
0x0000a0ed cmdPushInt 0x00000001
0x0000a0f5 cmdMsg
0x0000a0f6 cmdMsgStart
0x0000a0f7 cmdMsgWaitButton
0x0000a0f8 cmdPushInt 0x00000000
0x0000a100 cmdMsgClear
0x0000a101 cmdShowText 0x00000103
0x0000a108 cmdPushStr "わかっている。"
0x0000a11d cmdPushStr ""
0x0000a124 cmdPushInt 0x00000103
0x0000a12c cmdPushInt 0x00000001
0x0000a134 cmdMsg
0x0000a135 cmdMsgStart
0x0000a136 cmdMsgWaitButton
0x0000a137 cmdPushInt 0x00000000
0x0000a13f cmdMsgClear
0x0000a140 cmdShowText 0x00000104
0x0000a147 cmdPushStr "わかっちゃいるが…"
0x0000a160 cmdPushStr ""
0x0000a167 cmdPushInt 0x00000104
0x0000a16f cmdPushInt 0x00000001
0x0000a177 cmdMsg
0x0000a178 cmdMsgStart
0x0000a179 cmdMsgWaitButton
0x0000a17a cmdPushInt 0x00000000
0x0000a182 cmdMsgClear
0x0000a183 cmdShowText 0x00000105
0x0000a18a cmdPushStr "たった数年。"
0x0000a19d cmdPushStr ""
0x0000a1a4 cmdPushInt 0x00000105
0x0000a1ac cmdPushInt 0x00000001
0x0000a1b4 cmdMsg
0x0000a1b5 cmdMsgStart
0x0000a1b6 cmdMsgWaitButton
0x0000a1b7 cmdPushInt 0x00000000
0x0000a1bf cmdMsgClear
0x0000a1c0 cmdShowText 0x00000106
0x0000a1c7 cmdPushStr "せめて卒業までは一緒にいたいというささやかな欲求さえも、否定されてしまうのか？"
0x0000a21c cmdPushStr ""
0x0000a223 cmdPushInt 0x00000106
0x0000a22b cmdPushInt 0x00000001
0x0000a233 cmdMsg
0x0000a234 cmdMsgStart
0x0000a235 cmdMsgWaitButton
0x0000a236 cmdPushInt 0x00000000
0x0000a23e cmdMsgClear
0x0000a23f cmdShowText 0x00000107
0x0000a246 cmdPushStr "「…捜しに行こう」"
0x0000a25f cmdPushStr "瑚太朗"
0x0000a26c cmdPushInt 0x00000107
0x0000a274 cmdPushInt 0x00000001
0x0000a27c cmdMsg
0x0000a27d cmdMsgStart
0x0000a27e cmdMsgWaitButton
0x0000a27f cmdPushInt 0x00000000
0x0000a287 cmdMsgClear
0x0000a288 cmdPushStr "CGM_KT16"
0x0000a297 cmdPushInt 0x00000012
0x0000a29f cmdPushInt 0x00000004
0x0000a2a7 cmdPOP
0x0000a2a8 cmdPushInt 0x00000000
0x0000a2b0 cmdPushInt 0x00000000
0x0000a2b8 cmdPushInt 0x00000003
0x0000a2c0 cmdPOP
0x0000a2c1 cmdPushInt 0x00000001
0x0000a2c9 cmdPushInt 0x00000001
0x0000a2d1 cmdPushInt 0x00000003
0x0000a2d9 cmdPOP
0x0000a2da cmdPushInt 0x00000011
0x0000a2e2 cmdPushStr "sys20_adv00"
0x0000a2f4 cmdFarcall
0x0000a2f5 cmdPushInt 0x00010000
0x0000a2fd cmdPushStr "v/z205200571"
0x0000a310 cmdPushInt 0x00000000
0x0000a318 cmdPCMPlay
0x0000a319 cmdShowText 0x00000108
0x0000a320 cmdPushStr "「え？」"
0x0000a32f cmdPushStr "小鳥"
0x0000a33a cmdPushInt 0x00000108
0x0000a342 cmdPushInt 0x00000001
0x0000a34a cmdMsg
0x0000a34b cmdMsgStart
0x0000a34c cmdMsgWaitButton
0x0000a34d cmdPushInt 0x00000000
0x0000a355 cmdMsgClear
0x0000a356 cmdShowText 0x00000109
0x0000a35d cmdPushStr "「井上。俺たちが捜索する」"
0x0000a37e cmdPushStr "瑚太朗"
0x0000a38b cmdPushInt 0x00000109
0x0000a393 cmdPushInt 0x00000001
0x0000a39b cmdMsg
0x0000a39c cmdMsgStart
0x0000a39d cmdMsgWaitButton
0x0000a39e cmdPushInt 0x00000000
0x0000a3a6 cmdMsgClear
0x0000a3a7 cmdPushStr "CGM_AK13"
0x0000a3b6 cmdPushInt 0x00000012
0x0000a3be cmdPushInt 0x00000004
0x0000a3c6 cmdPOP
0x0000a3c7 cmdPushInt 0x00000000
0x0000a3cf cmdPushInt 0x00000000
0x0000a3d7 cmdPushInt 0x00000003
0x0000a3df cmdPOP
0x0000a3e0 cmdPushInt 0x00000001
0x0000a3e8 cmdPushInt 0x00000001
0x0000a3f0 cmdPushInt 0x00000003
0x0000a3f8 cmdPOP
0x0000a3f9 cmdPushInt 0x00000011
0x0000a401 cmdPushStr "sys20_adv00"
0x0000a413 cmdFarcall
0x0000a414 cmdPushInt 0x00030000
0x0000a41c cmdPushStr "v/z205200575"
0x0000a42f cmdPushInt 0x00000000
0x0000a437 cmdPCMPlay
0x0000a438 cmdShowText 0x0000010a
0x0000a43f cmdPushStr "「捜索隊はまだ活動しているから、見つかったら問題の重ね掛けになってしまうわよ？」"
0x0000a496 cmdPushStr "朱音"
0x0000a4a1 cmdPushInt 0x0000010a
0x0000a4a9 cmdPushInt 0x00000001
0x0000a4b1 cmdMsg
0x0000a4b2 cmdMsgStart
0x0000a4b3 cmdMsgWaitButton
0x0000a4b4 cmdPushInt 0x00000000
0x0000a4bc cmdMsgClear
0x0000a4bd cmdShowText 0x0000010b
0x0000a4c4 cmdPushStr "「打ち切られるんでしょ？　あの森の広さなら、引き返してくる捜索隊に出くわしさえしなきゃ、奥はその心配はないはずだ」"
0x0000a53d cmdPushStr "瑚太朗"
0x0000a54a cmdPushInt 0x0000010b
0x0000a552 cmdPushInt 0x00000001
0x0000a55a cmdMsg
0x0000a55b cmdMsgStart
0x0000a55c cmdMsgWaitButton
0x0000a55d cmdPushInt 0x00000000
0x0000a565 cmdMsgClear
0x0000a566 cmdPushStr "CGM_LC21h"
0x0000a576 cmdPushInt 0x00000012
0x0000a57e cmdPushInt 0x00000004
0x0000a586 cmdPOP
0x0000a587 cmdPushInt 0x00000000
0x0000a58f cmdPushInt 0x00000000
0x0000a597 cmdPushInt 0x00000003
0x0000a59f cmdPOP
0x0000a5a0 cmdPushInt 0x00000001
0x0000a5a8 cmdPushInt 0x00000001
0x0000a5b0 cmdPushInt 0x00000003
0x0000a5b8 cmdPOP
0x0000a5b9 cmdPushInt 0x00000011
0x0000a5c1 cmdPushStr "sys20_adv00"
0x0000a5d3 cmdFarcall
0x0000a5d4 cmdPushInt 0x00050000
0x0000a5dc cmdPushStr "v/z205200579"
0x0000a5ef cmdPushInt 0x00000000
0x0000a5f7 cmdPCMPlay
0x0000a5f8 cmdShowText 0x0000010c
0x0000a5ff cmdPushStr "「理屈では可能だろうが…」"
0x0000a620 cmdPushStr "ルチア"
0x0000a62d cmdPushInt 0x0000010c
0x0000a635 cmdPushInt 0x00000001
0x0000a63d cmdMsg
0x0000a63e cmdMsgStart
0x0000a63f cmdMsgWaitButton
0x0000a640 cmdPushInt 0x00000000
0x0000a648 cmdMsgClear
0x0000a649 cmdPushStr "CGM_KT22h"
0x0000a659 cmdPushInt 0x00000012
0x0000a661 cmdPushInt 0x00000004
0x0000a669 cmdPOP
0x0000a66a cmdPushInt 0x00000000
0x0000a672 cmdPushInt 0x00000000
0x0000a67a cmdPushInt 0x00000003
0x0000a682 cmdPOP
0x0000a683 cmdPushInt 0x00000001
0x0000a68b cmdPushInt 0x00000001
0x0000a693 cmdPushInt 0x00000003
0x0000a69b cmdPOP
0x0000a69c cmdPushInt 0x00000011
0x0000a6a4 cmdPushStr "sys20_adv00"
0x0000a6b6 cmdFarcall
0x0000a6b7 cmdPushInt 0x00010000
0x0000a6bf cmdPushStr "v/z205200582"
0x0000a6d2 cmdPushInt 0x00000000
0x0000a6da cmdPCMPlay
0x0000a6db cmdShowText 0x0000010d
0x0000a6e2 cmdPushStr "「大人たちが見つけられなかったものを、あたしたちが見つけられる？」"
0x0000a72b cmdPushStr "小鳥"
0x0000a736 cmdPushInt 0x0000010d
0x0000a73e cmdPushInt 0x00000001
0x0000a746 cmdMsg
0x0000a747 cmdMsgStart
0x0000a748 cmdMsgWaitButton
0x0000a749 cmdPushInt 0x00000000
0x0000a751 cmdMsgClear
0x0000a752 cmdShowText 0x0000010e
0x0000a759 cmdPushStr "「わからない…けどチャンスがあるなら、挑みたい」"
0x0000a790 cmdPushStr "瑚太朗"
0x0000a79d cmdPushInt 0x0000010e
0x0000a7a5 cmdPushInt 0x00000001
0x0000a7ad cmdMsg
0x0000a7ae cmdMsgStart
0x0000a7af cmdMsgWaitButton
0x0000a7b0 cmdPushInt 0x00000000
0x0000a7b8 cmdMsgClear
0x0000a7b9 cmdPushInt 0x00000000
0x0000a7c1 cmdPushInt 0x00000000
0x0000a7c9 cmdPushInt 0x00000003
0x0000a7d1 cmdPOP
0x0000a7d2 cmdPushInt 0x00000000
0x0000a7da cmdPushInt 0x00000001
0x0000a7e2 cmdPushInt 0x00000003
0x0000a7ea cmdPOP
0x0000a7eb cmdPushInt 0x00000011
0x0000a7f3 cmdPushStr "sys20_adv00"
0x0000a805 cmdFarcall
0x0000a806 cmdShowText 0x0000010f
0x0000a80d cmdPushStr "「もし俺たちが井上を発見できたら…どうです？」"
0x0000a842 cmdPushStr "瑚太朗"
0x0000a84f cmdPushInt 0x0000010f
0x0000a857 cmdPushInt 0x00000001
0x0000a85f cmdMsg
0x0000a860 cmdMsgStart
0x0000a861 cmdMsgWaitButton
0x0000a862 cmdPushInt 0x00000000
0x0000a86a cmdMsgClear
0x0000a86b cmdPushStr "CGM_AK11"
0x0000a87a cmdPushInt 0x00000012
0x0000a882 cmdPushInt 0x00000004
0x0000a88a cmdPOP
0x0000a88b cmdPushInt 0x00000000
0x0000a893 cmdPushInt 0x00000000
0x0000a89b cmdPushInt 0x00000003
0x0000a8a3 cmdPOP
0x0000a8a4 cmdPushInt 0x00000001
0x0000a8ac cmdPushInt 0x00000001
0x0000a8b4 cmdPushInt 0x00000003
0x0000a8bc cmdPOP
0x0000a8bd cmdPushInt 0x00000011
0x0000a8c5 cmdPushStr "sys20_adv00"
0x0000a8d7 cmdFarcall
0x0000a8d8 cmdPushInt 0x00030000
0x0000a8e0 cmdPushStr "v/z205200589"
0x0000a8f3 cmdPushInt 0x00000000
0x0000a8fb cmdPCMPlay
0x0000a8fc cmdShowText 0x00000110
0x0000a903 cmdPushStr "「…手柄、ということにはなるでしょうね」"
0x0000a932 cmdPushStr "朱音"
0x0000a93d cmdPushInt 0x00000110
0x0000a945 cmdPushInt 0x00000001
0x0000a94d cmdMsg
0x0000a94e cmdMsgStart
0x0000a94f cmdMsgWaitButton
0x0000a950 cmdPushInt 0x00000000
0x0000a958 cmdMsgClear
0x0000a959 cmdPushStr "CGM_AK13h"
0x0000a969 cmdPushInt 0x00000012
0x0000a971 cmdPushInt 0x00000004
0x0000a979 cmdPOP
0x0000a97a cmdPushInt 0x00000000
0x0000a982 cmdPushInt 0x00000000
0x0000a98a cmdPushInt 0x00000003
0x0000a992 cmdPOP
0x0000a993 cmdPushInt 0x00000001
0x0000a99b cmdPushInt 0x00000001
0x0000a9a3 cmdPushInt 0x00000003
0x0000a9ab cmdPOP
0x0000a9ac cmdPushInt 0x00000011
0x0000a9b4 cmdPushStr "sys20_adv00"
0x0000a9c6 cmdFarcall
0x0000a9c7 cmdPushInt 0x00030000
0x0000a9cf cmdPushStr "v/z205200592"
0x0000a9e2 cmdPushInt 0x00000000
0x0000a9ea cmdPCMPlay
0x0000a9eb cmdShowText 0x00000111
0x0000a9f2 cmdPushStr "「というか、そうするしかないんじゃなくて？　学校側も」"
0x0000aa2f cmdPushStr "朱音"
0x0000aa3a cmdPushInt 0x00000111
0x0000aa42 cmdPushInt 0x00000001
0x0000aa4a cmdMsg
0x0000aa4b cmdMsgStart
0x0000aa4c cmdMsgWaitButton
0x0000aa4d cmdPushInt 0x00000000
0x0000aa55 cmdMsgClear
0x0000aa56 cmdShowText 0x00000112
0x0000aa5d cmdPushStr "「オカ研は？　手柄を掲げて、存続を認めさせることは…」"
0x0000aa9a cmdPushStr "瑚太朗"
0x0000aaa7 cmdPushInt 0x00000112
0x0000aaaf cmdPushInt 0x00000001
0x0000aab7 cmdMsg
0x0000aab8 cmdMsgStart
0x0000aab9 cmdMsgWaitButton
0x0000aaba cmdPushInt 0x00000000
0x0000aac2 cmdMsgClear
0x0000aac3 cmdPushStr "CGM_AK22"
0x0000aad2 cmdPushInt 0x00000012
0x0000aada cmdPushInt 0x00000004
0x0000aae2 cmdPOP
0x0000aae3 cmdPushInt 0x00000000
0x0000aaeb cmdPushInt 0x00000000
0x0000aaf3 cmdPushInt 0x00000003
0x0000aafb cmdPOP
0x0000aafc cmdPushInt 0x00000001
0x0000ab04 cmdPushInt 0x00000001
0x0000ab0c cmdPushInt 0x00000003
0x0000ab14 cmdPOP
0x0000ab15 cmdPushInt 0x00000011
0x0000ab1d cmdPushStr "sys20_adv00"
0x0000ab2f cmdFarcall
0x0000ab30 cmdShowText 0x00000113
0x0000ab37 cmdPushStr "朱音はため息をつく。"
0x0000ab52 cmdPushStr ""
0x0000ab59 cmdPushInt 0x00000113
0x0000ab61 cmdPushInt 0x00000001
0x0000ab69 cmdMsg
0x0000ab6a cmdMsgStart
0x0000ab6b cmdMsgWaitButton
0x0000ab6c cmdPushInt 0x00000000
0x0000ab74 cmdMsgClear
0x0000ab75 cmdPushStr "CGM_AK13"
0x0000ab84 cmdPushInt 0x00000012
0x0000ab8c cmdPushInt 0x00000004
0x0000ab94 cmdPOP
0x0000ab95 cmdPushInt 0x00000000
0x0000ab9d cmdPushInt 0x00000000
0x0000aba5 cmdPushInt 0x00000003
0x0000abad cmdPOP
0x0000abae cmdPushInt 0x00000001
0x0000abb6 cmdPushInt 0x00000001
0x0000abbe cmdPushInt 0x00000003
0x0000abc6 cmdPOP
0x0000abc7 cmdPushInt 0x00000011
0x0000abcf cmdPushStr "sys20_adv00"
0x0000abe1 cmdFarcall
0x0000abe2 cmdPushInt 0x00030000
0x0000abea cmdPushStr "v/z205200599"
0x0000abfd cmdPushInt 0x00000000
0x0000ac05 cmdPCMPlay
0x0000ac06 cmdShowText 0x00000114
0x0000ac0d cmdPushStr "「…可能」"
0x0000ac1e cmdPushStr "朱音"
0x0000ac29 cmdPushInt 0x00000114
0x0000ac31 cmdPushInt 0x00000001
0x0000ac39 cmdMsg
0x0000ac3a cmdMsgStart
0x0000ac3b cmdMsgWaitButton
0x0000ac3c cmdPushInt 0x00000000
0x0000ac44 cmdMsgClear
0x0000ac45 cmdPushInt 0x00000000
0x0000ac4d cmdPushInt 0x00000000
0x0000ac55 cmdPushInt 0x00000003
0x0000ac5d cmdPOP
0x0000ac5e cmdPushInt 0x00000000
0x0000ac66 cmdPushInt 0x00000001
0x0000ac6e cmdPushInt 0x00000003
0x0000ac76 cmdPOP
0x0000ac77 cmdPushInt 0x00000011
0x0000ac7f cmdPushStr "sys20_adv00"
0x0000ac91 cmdFarcall
0x0000ac92 cmdShowText 0x00000115
0x0000ac99 cmdPushStr "「皆の衆、いかがか？」"
0x0000acb6 cmdPushStr "瑚太朗"
0x0000acc3 cmdPushInt 0x00000115
0x0000accb cmdPushInt 0x00000001
0x0000acd3 cmdMsg
0x0000acd4 cmdMsgStart
0x0000acd5 cmdMsgWaitButton
0x0000acd6 cmdPushInt 0x00000000
0x0000acde cmdMsgClear
0x0000acdf cmdShowText 0x00000116
0x0000ace6 cmdPushStr "「明日の夕方に捜索打ち切りだとして…俺たちが帰るのは、最低でも夜になるけど」"
0x0000ad39 cmdPushStr "瑚太朗"
0x0000ad46 cmdPushInt 0x00000116
0x0000ad4e cmdPushInt 0x00000001
0x0000ad56 cmdMsg
0x0000ad57 cmdMsgStart
0x0000ad58 cmdMsgWaitButton
0x0000ad59 cmdPushInt 0x00000000
0x0000ad61 cmdMsgClear
0x0000ad62 cmdShowText 0x00000117
0x0000ad69 cmdPushStr "皆に向き直る。"
0x0000ad7e cmdPushStr ""
0x0000ad85 cmdPushInt 0x00000117
0x0000ad8d cmdPushInt 0x00000001
0x0000ad95 cmdMsg
0x0000ad96 cmdMsgStart
0x0000ad97 cmdMsgWaitButton
0x0000ad98 cmdPushInt 0x00000000
0x0000ada0 cmdMsgClear
0x0000ada1 cmdPushStr "CGM_SZ11h"
0x0000adb1 cmdPushInt 0x00000012
0x0000adb9 cmdPushInt 0x00000004
0x0000adc1 cmdPOP
0x0000adc2 cmdPushInt 0x00000000
0x0000adca cmdPushInt 0x00000000
0x0000add2 cmdPushInt 0x00000003
0x0000adda cmdPOP
0x0000addb cmdPushInt 0x00000001
0x0000ade3 cmdPushInt 0x00000001
0x0000adeb cmdPushInt 0x00000003
0x0000adf3 cmdPOP
0x0000adf4 cmdPushInt 0x00000011
0x0000adfc cmdPushStr "sys20_adv00"
0x0000ae0e cmdFarcall
0x0000ae0f cmdPushInt 0x00040000
0x0000ae17 cmdPushStr "v/z205200608"
0x0000ae2a cmdPushInt 0x00000000
0x0000ae32 cmdPCMPlay
0x0000ae33 cmdShowText 0x00000118
0x0000ae3a cmdPushStr "「私はコタローを手伝う」"
0x0000ae59 cmdPushStr "静流"
0x0000ae64 cmdPushInt 0x00000118
0x0000ae6c cmdPushInt 0x00000001
0x0000ae74 cmdMsg
0x0000ae75 cmdMsgStart
0x0000ae76 cmdMsgWaitButton
0x0000ae77 cmdPushInt 0x00000000
0x0000ae7f cmdMsgClear
0x0000ae80 cmdPushStr "CGM_LC11"
0x0000ae8f cmdPushInt 0x00000012
0x0000ae97 cmdPushInt 0x00000004
0x0000ae9f cmdPOP
0x0000aea0 cmdPushInt 0x00000000
0x0000aea8 cmdPushInt 0x00000000
0x0000aeb0 cmdPushInt 0x00000003
0x0000aeb8 cmdPOP
0x0000aeb9 cmdPushInt 0x00000001
0x0000aec1 cmdPushInt 0x00000001
0x0000aec9 cmdPushInt 0x00000003
0x0000aed1 cmdPOP
0x0000aed2 cmdPushInt 0x00000011
0x0000aeda cmdPushStr "sys20_adv00"
0x0000aeec cmdFarcall
0x0000aeed cmdPushInt 0x00050000
0x0000aef5 cmdPushStr "v/z205200611"
0x0000af08 cmdPushInt 0x00000000
0x0000af10 cmdPCMPlay
0x0000af11 cmdShowText 0x00000119
0x0000af18 cmdPushStr "「夜に森に入って、二重遭難になったらどうする？」"
0x0000af4f cmdPushStr "ルチア"
0x0000af5c cmdPushInt 0x00000119
0x0000af64 cmdPushInt 0x00000001
0x0000af6c cmdMsg
0x0000af6d cmdMsgStart
0x0000af6e cmdMsgWaitButton
0x0000af6f cmdPushInt 0x00000000
0x0000af77 cmdMsgClear
0x0000af78 cmdShowText 0x0000011a
0x0000af7f cmdPushStr "「そうならないよう計画を立てる」"
0x0000afa6 cmdPushStr "瑚太朗"
0x0000afb3 cmdPushInt 0x0000011a
0x0000afbb cmdPushInt 0x00000001
0x0000afc3 cmdMsg
0x0000afc4 cmdMsgStart
0x0000afc5 cmdMsgWaitButton
0x0000afc6 cmdPushInt 0x00000000
0x0000afce cmdMsgClear
0x0000afcf cmdShowText 0x0000011b
0x0000afd6 cmdPushStr "「できるような気がするんだ…」"
0x0000affb cmdPushStr "瑚太朗"
0x0000b008 cmdPushInt 0x0000011b
0x0000b010 cmdPushInt 0x00000001
0x0000b018 cmdMsg
0x0000b019 cmdMsgStart
0x0000b01a cmdMsgWaitButton
0x0000b01b cmdPushInt 0x00000000
0x0000b023 cmdMsgClear
0x0000b024 cmdPushInt 0x00000000
0x0000b02c cmdPushInt 0x00000000
0x0000b034 cmdPushInt 0x00000003
0x0000b03c cmdPOP
0x0000b03d cmdPushInt 0x00000000
0x0000b045 cmdPushInt 0x00000001
0x0000b04d cmdPushInt 0x00000003
0x0000b055 cmdPOP
0x0000b056 cmdPushInt 0x00000011
0x0000b05e cmdPushStr "sys20_adv00"
0x0000b070 cmdFarcall
0x0000b071 cmdShowText 0x0000011c
0x0000b078 cmdPushStr "「宿泊の準備をしていく。一泊前提だな」"
0x0000b0a5 cmdPushStr "瑚太朗"
0x0000b0b2 cmdPushInt 0x0000011c
0x0000b0ba cmdPushInt 0x00000001
0x0000b0c2 cmdMsg
0x0000b0c3 cmdMsgStart
0x0000b0c4 cmdMsgWaitButton
0x0000b0c5 cmdPushInt 0x00000000
0x0000b0cd cmdMsgClear
0x0000b0ce cmdPushStr "CGM_KT22"
0x0000b0dd cmdPushInt 0x00000012
0x0000b0e5 cmdPushInt 0x00000004
0x0000b0ed cmdPOP
0x0000b0ee cmdPushInt 0x00000000
0x0000b0f6 cmdPushInt 0x00000000
0x0000b0fe cmdPushInt 0x00000003
0x0000b106 cmdPOP
0x0000b107 cmdPushInt 0x00000001
0x0000b10f cmdPushInt 0x00000001
0x0000b117 cmdPushInt 0x00000003
0x0000b11f cmdPOP
0x0000b120 cmdPushInt 0x00000011
0x0000b128 cmdPushStr "sys20_adv00"
0x0000b13a cmdFarcall
0x0000b13b cmdPushInt 0x00010000
0x0000b143 cmdPushStr "v/z205200619"
0x0000b156 cmdPushInt 0x00000000
0x0000b15e cmdPCMPlay
0x0000b15f cmdShowText 0x0000011d
0x0000b166 cmdPushStr "「瑚太朗君、ここは女の子ばっかりなんだよ？」"
0x0000b199 cmdPushStr "小鳥"
0x0000b1a4 cmdPushInt 0x0000011d
0x0000b1ac cmdPushInt 0x00000001
0x0000b1b4 cmdMsg
0x0000b1b5 cmdMsgStart
0x0000b1b6 cmdMsgWaitButton
0x0000b1b7 cmdPushInt 0x00000000
0x0000b1bf cmdMsgClear
0x0000b1c0 cmdShowText 0x0000011e
0x0000b1c7 cmdPushStr "「う…いざとなったら、探索自体は俺ひとりでもいいんだけどさ…」"
0x0000b20c cmdPushStr "瑚太朗"
0x0000b219 cmdPushInt 0x0000011e
0x0000b221 cmdPushInt 0x00000001
0x0000b229 cmdMsg
0x0000b22a cmdMsgStart
0x0000b22b cmdMsgWaitButton
0x0000b22c cmdPushInt 0x00000000
0x0000b234 cmdMsgClear
0x0000b235 cmdShowText 0x0000011f
0x0000b23c cmdPushStr "「それ以外の協力はしてくれるだろ？」"
0x0000b267 cmdPushStr "瑚太朗"
0x0000b274 cmdPushInt 0x0000011f
0x0000b27c cmdPushInt 0x00000001
0x0000b284 cmdMsg
0x0000b285 cmdMsgStart
0x0000b286 cmdMsgWaitButton
0x0000b287 cmdPushInt 0x00000000
0x0000b28f cmdMsgClear
0x0000b290 cmdPushStr "CGM_CH22"
0x0000b29f cmdPushInt 0x00000012
0x0000b2a7 cmdPushInt 0x00000004
0x0000b2af cmdPOP
0x0000b2b0 cmdPushInt 0x00000000
0x0000b2b8 cmdPushInt 0x00000000
0x0000b2c0 cmdPushInt 0x00000003
0x0000b2c8 cmdPOP
0x0000b2c9 cmdPushInt 0x00000001
0x0000b2d1 cmdPushInt 0x00000001
0x0000b2d9 cmdPushInt 0x00000003
0x0000b2e1 cmdPOP
0x0000b2e2 cmdPushInt 0x00000011
0x0000b2ea cmdPushStr "sys20_adv00"
0x0000b2fc cmdFarcall
0x0000b2fd cmdPushInt 0x0002f400
0x0000b305 cmdPushStr "v/z205200624"
0x0000b318 cmdPushInt 0x00000000
0x0000b320 cmdPCMPlay
0x0000b321 cmdShowText 0x00000120
0x0000b328 cmdPushStr "「ううん…」"
0x0000b33b cmdPushStr "ちはや"
0x0000b348 cmdPushInt 0x00000120
0x0000b350 cmdPushInt 0x00000001
0x0000b358 cmdMsg
0x0000b359 cmdMsgStart
0x0000b35a cmdMsgWaitButton
0x0000b35b cmdPushInt 0x00000000
0x0000b363 cmdMsgClear
0x0000b364 cmdPushStr "CGM_AK22"
0x0000b373 cmdPushInt 0x00000012
0x0000b37b cmdPushInt 0x00000004
0x0000b383 cmdPOP
0x0000b384 cmdPushInt 0x00000000
0x0000b38c cmdPushInt 0x00000000
0x0000b394 cmdPushInt 0x00000003
0x0000b39c cmdPOP
0x0000b39d cmdPushInt 0x00000001
0x0000b3a5 cmdPushInt 0x00000001
0x0000b3ad cmdPushInt 0x00000003
0x0000b3b5 cmdPOP
0x0000b3b6 cmdPushInt 0x00000011
0x0000b3be cmdPushStr "sys20_adv00"
0x0000b3d0 cmdFarcall
0x0000b3d1 cmdPushInt 0x00030000
0x0000b3d9 cmdPushStr "v/z205200627"
0x0000b3ec cmdPushInt 0x00000000
0x0000b3f4 cmdPCMPlay
0x0000b3f5 cmdShowText 0x00000121
0x0000b3fc cmdPushStr "「…止めても無駄なのでしょうね」"
0x0000b423 cmdPushStr "朱音"
0x0000b42e cmdPushInt 0x00000121
0x0000b436 cmdPushInt 0x00000001
0x0000b43e cmdMsg
0x0000b43f cmdMsgStart
0x0000b440 cmdMsgWaitButton
0x0000b441 cmdPushInt 0x00000000
0x0000b449 cmdMsgClear
0x0000b44a cmdShowText 0x00000122
0x0000b451 cmdPushStr "「あいすみません」"
0x0000b46a cmdPushStr "瑚太朗"
0x0000b477 cmdPushInt 0x00000122
0x0000b47f cmdPushInt 0x00000001
0x0000b487 cmdMsg
0x0000b488 cmdMsgStart
0x0000b489 cmdMsgWaitButton
0x0000b48a cmdPushInt 0x00000000
0x0000b492 cmdMsgClear
0x0000b493 cmdPushStr "CGM_SZ10h"
0x0000b4a3 cmdPushInt 0x00000012
0x0000b4ab cmdPushInt 0x00000004
0x0000b4b3 cmdPOP
0x0000b4b4 cmdPushInt 0x00000000
0x0000b4bc cmdPushInt 0x00000000
0x0000b4c4 cmdPushInt 0x00000003
0x0000b4cc cmdPOP
0x0000b4cd cmdPushInt 0x00000001
0x0000b4d5 cmdPushInt 0x00000001
0x0000b4dd cmdPushInt 0x00000003
0x0000b4e5 cmdPOP
0x0000b4e6 cmdPushInt 0x00000011
0x0000b4ee cmdPushStr "sys20_adv00"
0x0000b500 cmdFarcall
0x0000b501 cmdPushInt 0x00040000
0x0000b509 cmdPushStr "v/z205200631"
0x0000b51c cmdPushInt 0x00000000
0x0000b524 cmdPCMPlay
0x0000b525 cmdShowText 0x00000123
0x0000b52c cmdPushStr "「コタローが行くというなら、私も行く」"
0x0000b559 cmdPushStr "静流"
0x0000b564 cmdPushInt 0x00000123
0x0000b56c cmdPushInt 0x00000001
0x0000b574 cmdMsg
0x0000b575 cmdMsgStart
0x0000b576 cmdMsgWaitButton
0x0000b577 cmdPushInt 0x00000000
0x0000b57f cmdMsgClear
0x0000b580 cmdPushStr "CGM_LC10"
0x0000b58f cmdPushInt 0x00000012
0x0000b597 cmdPushInt 0x00000004
0x0000b59f cmdPOP
0x0000b5a0 cmdPushInt 0x00000000
0x0000b5a8 cmdPushInt 0x00000000
0x0000b5b0 cmdPushInt 0x00000003
0x0000b5b8 cmdPOP
0x0000b5b9 cmdPushInt 0x00000001
0x0000b5c1 cmdPushInt 0x00000001
0x0000b5c9 cmdPushInt 0x00000003
0x0000b5d1 cmdPOP
0x0000b5d2 cmdPushInt 0x00000011
0x0000b5da cmdPushStr "sys20_adv00"
0x0000b5ec cmdFarcall
0x0000b5ed cmdPushInt 0x00050000
0x0000b5f5 cmdPushStr "v/z205200634"
0x0000b608 cmdPushInt 0x00000000
0x0000b610 cmdPCMPlay
0x0000b611 cmdShowText 0x00000124
0x0000b618 cmdPushStr "「私も構わない。親もうるさくないしな」"
0x0000b645 cmdPushStr "ルチア"
0x0000b652 cmdPushInt 0x00000124
0x0000b65a cmdPushInt 0x00000001
0x0000b662 cmdMsg
0x0000b663 cmdMsgStart
0x0000b664 cmdMsgWaitButton
0x0000b665 cmdPushInt 0x00000000
0x0000b66d cmdMsgClear
0x0000b66e cmdPushStr "CGM_CH10"
0x0000b67d cmdPushInt 0x00000012
0x0000b685 cmdPushInt 0x00000004
0x0000b68d cmdPOP
0x0000b68e cmdPushInt 0x00000000
0x0000b696 cmdPushInt 0x00000000
0x0000b69e cmdPushInt 0x00000003
0x0000b6a6 cmdPOP
0x0000b6a7 cmdPushInt 0x00000001
0x0000b6af cmdPushInt 0x00000001
0x0000b6b7 cmdPushInt 0x00000003
0x0000b6bf cmdPOP
0x0000b6c0 cmdPushInt 0x00000011
0x0000b6c8 cmdPushStr "sys20_adv00"
0x0000b6da cmdFarcall
0x0000b6db cmdPushInt 0x0002f400
0x0000b6e3 cmdPushStr "v/z205200637"
0x0000b6f6 cmdPushInt 0x00000000
0x0000b6fe cmdPCMPlay
0x0000b6ff cmdShowText 0x00000125
0x0000b706 cmdPushStr "「私も大丈夫だと思います」"
0x0000b727 cmdPushStr "ちはや"
0x0000b734 cmdPushInt 0x00000125
0x0000b73c cmdPushInt 0x00000001
0x0000b744 cmdMsg
0x0000b745 cmdMsgStart
0x0000b746 cmdMsgWaitButton
0x0000b747 cmdPushInt 0x00000000
0x0000b74f cmdMsgClear
0x0000b750 cmdPushStr "CGM_KT30"
0x0000b75f cmdPushInt 0x00000012
0x0000b767 cmdPushInt 0x00000004
0x0000b76f cmdPOP
0x0000b770 cmdPushInt 0x00000000
0x0000b778 cmdPushInt 0x00000000
0x0000b780 cmdPushInt 0x00000003
0x0000b788 cmdPOP
0x0000b789 cmdPushInt 0x00000001
0x0000b791 cmdPushInt 0x00000001
0x0000b799 cmdPushInt 0x00000003
0x0000b7a1 cmdPOP
0x0000b7a2 cmdPushInt 0x00000011
0x0000b7aa cmdPushStr "sys20_adv00"
0x0000b7bc cmdFarcall
0x0000b7bd cmdPushInt 0x00010000
0x0000b7c5 cmdPushStr "v/z205200640"
0x0000b7d8 cmdPushInt 0x00000000
0x0000b7e0 cmdPCMPlay
0x0000b7e1 cmdShowText 0x00000126
0x0000b7e8 cmdPushStr "「あたしも手伝えるけど」"
0x0000b807 cmdPushStr "小鳥"
0x0000b812 cmdPushInt 0x00000126
0x0000b81a cmdPushInt 0x00000001
0x0000b822 cmdMsg
0x0000b823 cmdMsgStart
0x0000b824 cmdMsgWaitButton
0x0000b825 cmdPushInt 0x00000000
0x0000b82d cmdMsgClear
0x0000b82e cmdShowText 0x00000127
0x0000b835 cmdPushStr "「…感謝」"
0x0000b846 cmdPushStr "瑚太朗"
0x0000b853 cmdPushInt 0x00000127
0x0000b85b cmdPushInt 0x00000001
0x0000b863 cmdMsg
0x0000b864 cmdMsgStart
0x0000b865 cmdMsgWaitButton
0x0000b866 cmdPushInt 0x00000000
0x0000b86e cmdMsgClear
0x0000b86f cmdPushInt 0x00000000
0x0000b877 cmdPushInt 0x00000000
0x0000b87f cmdPushInt 0x00000003
0x0000b887 cmdPOP
0x0000b888 cmdPushInt 0x00000000
0x0000b890 cmdPushInt 0x00000001
0x0000b898 cmdPushInt 0x00000003
0x0000b8a0 cmdPOP
0x0000b8a1 cmdPushInt 0x00000011
0x0000b8a9 cmdPushStr "sys20_adv00"
0x0000b8bb cmdFarcall
0x0000b8bc cmdShowText 0x00000128
0x0000b8c3 cmdPushStr "そうと決めれば、することは多い。"
0x0000b8ea cmdPushStr ""
0x0000b8f1 cmdPushInt 0x00000128
0x0000b8f9 cmdPushInt 0x00000001
0x0000b901 cmdMsg
0x0000b902 cmdMsgStart
0x0000b903 cmdMsgWaitButton
0x0000b904 cmdPushInt 0x00000000
0x0000b90c cmdMsgClear
0x0000b90d cmdShowText 0x00000129
0x0000b914 cmdPushStr "装備の検討。"
0x0000b927 cmdPushStr ""
0x0000b92e cmdPushInt 0x00000129
0x0000b936 cmdPushInt 0x00000001
0x0000b93e cmdMsg
0x0000b93f cmdMsgStart
0x0000b940 cmdMsgWaitButton
0x0000b941 cmdPushInt 0x00000000
0x0000b949 cmdMsgClear
0x0000b94a cmdShowText 0x0000012a
0x0000b951 cmdPushStr "計画の立案。"
0x0000b964 cmdPushStr ""
0x0000b96b cmdPushInt 0x0000012a
0x0000b973 cmdPushInt 0x00000001
0x0000b97b cmdMsg
0x0000b97c cmdMsgStart
0x0000b97d cmdMsgWaitButton
0x0000b97e cmdPushInt 0x00000000
0x0000b986 cmdMsgClear
0x0000b987 cmdShowText 0x0000012b
0x0000b98e cmdPushStr "情報の収集。"
0x0000b9a1 cmdPushStr ""
0x0000b9a8 cmdPushInt 0x0000012b
0x0000b9b0 cmdPushInt 0x00000001
0x0000b9b8 cmdMsg
0x0000b9b9 cmdMsgStart
0x0000b9ba cmdMsgWaitButton
0x0000b9bb cmdPushInt 0x00000000
0x0000b9c3 cmdMsgClear
0x0000b9c4 cmdShowText 0x0000012c
0x0000b9cb cmdPushStr "皆で分担してあたることになるだろう。"
0x0000b9f6 cmdPushStr ""
0x0000b9fd cmdPushInt 0x0000012c
0x0000ba05 cmdPushInt 0x00000001
0x0000ba0d cmdMsg
0x0000ba0e cmdMsgStart
0x0000ba0f cmdMsgWaitButton
0x0000ba10 cmdPushInt 0x00000000
0x0000ba18 cmdMsgClear
0x0000ba19 cmdShowText 0x0000012d
0x0000ba20 cmdPushStr "もし計画が成功すれば、オカ研を存続させることもできる。"
0x0000ba5d cmdPushStr ""
0x0000ba64 cmdPushInt 0x0000012d
0x0000ba6c cmdPushInt 0x00000001
0x0000ba74 cmdMsg
0x0000ba75 cmdMsgStart
0x0000ba76 cmdMsgWaitButton
0x0000ba77 cmdPushInt 0x00000000
0x0000ba7f cmdMsgClear
0x0000ba80 cmdShowText 0x0000012e
0x0000ba87 cmdPushStr "希望が出てきた。"
0x0000ba9e cmdPushStr ""
0x0000baa5 cmdPushInt 0x0000012e
0x0000baad cmdPushInt 0x00000001
0x0000bab5 cmdMsg
0x0000bab6 cmdMsgStart
0x0000bab7 cmdMsgWaitButton
0x0000bab8 cmdPushInt 0x00000000
0x0000bac0 cmdMsgClear
0x0000bac1 cmdShowText 0x0000012f
0x0000bac8 cmdPushStr "それに気がかりな井上の件にも、これで手がとどく。"
0x0000baff cmdPushStr ""
0x0000bb06 cmdPushInt 0x0000012f
0x0000bb0e cmdPushInt 0x00000001
0x0000bb16 cmdMsg
0x0000bb17 cmdMsgStart
0x0000bb18 cmdMsgWaitButton
0x0000bb19 cmdPushInt 0x00000000
0x0000bb21 cmdMsgClear
0x0000bb22 cmdPushStr "CGM_AK13"
0x0000bb31 cmdPushInt 0x00000012
0x0000bb39 cmdPushInt 0x00000004
0x0000bb41 cmdPOP
0x0000bb42 cmdPushInt 0x00000000
0x0000bb4a cmdPushInt 0x00000000
0x0000bb52 cmdPushInt 0x00000003
0x0000bb5a cmdPOP
0x0000bb5b cmdPushInt 0x00000001
0x0000bb63 cmdPushInt 0x00000001
0x0000bb6b cmdPushInt 0x00000003
0x0000bb73 cmdPOP
0x0000bb74 cmdPushInt 0x00000011
0x0000bb7c cmdPushStr "sys20_adv00"
0x0000bb8e cmdFarcall
0x0000bb8f cmdPushInt 0x00030000
0x0000bb97 cmdPushStr "v/z205200654"
0x0000bbaa cmdPushInt 0x00000000
0x0000bbb2 cmdPCMPlay
0x0000bbb3 cmdShowText 0x00000130
0x0000bbba cmdPushStr "「…天王寺、ひとつだけ理解しておかねばならないことがあるわ」"
0x0000bbfd cmdPushStr "朱音"
0x0000bc08 cmdPushInt 0x00000130
0x0000bc10 cmdPushInt 0x00000001
0x0000bc18 cmdMsg
0x0000bc19 cmdMsgStart
0x0000bc1a cmdMsgWaitButton
0x0000bc1b cmdPushInt 0x00000000
0x0000bc23 cmdMsgClear
0x0000bc24 cmdShowText 0x00000131
0x0000bc2b cmdPushStr "「はい」"
0x0000bc3a cmdPushStr "瑚太朗"
0x0000bc47 cmdPushInt 0x00000131
0x0000bc4f cmdPushInt 0x00000001
0x0000bc57 cmdMsg
0x0000bc58 cmdMsgStart
0x0000bc59 cmdMsgWaitButton
0x0000bc5a cmdPushInt 0x00000000
0x0000bc62 cmdMsgClear
0x0000bc63 cmdShowText 0x00000132
0x0000bc6a cmdPushStr "どんな言葉だって飲み込んでみせるさ、と意気込む。"
0x0000bca1 cmdPushStr ""
0x0000bca8 cmdPushInt 0x00000132
0x0000bcb0 cmdPushInt 0x00000001
0x0000bcb8 cmdMsg
0x0000bcb9 cmdMsgStart
0x0000bcba cmdMsgWaitButton
0x0000bcbb cmdPushInt 0x00000000
0x0000bcc3 cmdMsgClear
0x0000bcc4 cmdPushStr "CGM_AK22"
0x0000bcd3 cmdPushInt 0x00000012
0x0000bcdb cmdPushInt 0x00000004
0x0000bce3 cmdPOP
0x0000bce4 cmdPushInt 0x00000000
0x0000bcec cmdPushInt 0x00000000
0x0000bcf4 cmdPushInt 0x00000003
0x0000bcfc cmdPOP
0x0000bcfd cmdPushInt 0x00000001
0x0000bd05 cmdPushInt 0x00000001
0x0000bd0d cmdPushInt 0x00000003
0x0000bd15 cmdPOP
0x0000bd16 cmdPushInt 0x00000011
0x0000bd1e cmdPushStr "sys20_adv00"
0x0000bd30 cmdFarcall
0x0000bd31 cmdPushInt 0x00030000
0x0000bd39 cmdPushStr "v/z205200660"
0x0000bd4c cmdPushInt 0x00000000
0x0000bd54 cmdPCMPlay
0x0000bd55 cmdShowText 0x00000133
0x0000bd5c cmdPushStr "「井上という女生徒の…遺体を見つけるという可能性」"
0x0000bd95 cmdPushStr "朱音"
0x0000bda0 cmdPushInt 0x00000133
0x0000bda8 cmdPushInt 0x00000001
0x0000bdb0 cmdMsg
0x0000bdb1 cmdMsgStart
0x0000bdb2 cmdMsgWaitButton
0x0000bdb3 cmdPushInt 0x00000000
0x0000bdbb cmdMsgClear
0x0000bdbc cmdShowText 0x00000134
0x0000bdc3 cmdPushStr "「………………」"
0x0000bdda cmdPushStr "瑚太朗"
0x0000bde7 cmdPushInt 0x00000134
0x0000bdef cmdPushInt 0x00000001
0x0000bdf7 cmdMsg
0x0000bdf8 cmdMsgStart
0x0000bdf9 cmdMsgWaitButton
0x0000bdfa cmdPushInt 0x00000000
0x0000be02 cmdMsgClear
0x0000be03 cmdPushStr "CGM_AK11h"
0x0000be13 cmdPushInt 0x00000012
0x0000be1b cmdPushInt 0x00000004
0x0000be23 cmdPOP
0x0000be24 cmdPushInt 0x00000000
0x0000be2c cmdPushInt 0x00000000
0x0000be34 cmdPushInt 0x00000003
0x0000be3c cmdPOP
0x0000be3d cmdPushInt 0x00000001
0x0000be45 cmdPushInt 0x00000001
0x0000be4d cmdPushInt 0x00000003
0x0000be55 cmdPOP
0x0000be56 cmdPushInt 0x00000011
0x0000be5e cmdPushStr "sys20_adv00"
0x0000be70 cmdFarcall
0x0000be71 cmdPushInt 0x00030000
0x0000be79 cmdPushStr "v/z205200664"
0x0000be8c cmdPushInt 0x00000000
0x0000be94 cmdPCMPlay
0x0000be95 cmdShowText 0x00000135
0x0000be9c cmdPushStr "「わかって？」"
0x0000beb1 cmdPushStr "朱音"
0x0000bebc cmdPushInt 0x00000135
0x0000bec4 cmdPushInt 0x00000001
0x0000becc cmdMsg
0x0000becd cmdMsgStart
0x0000bece cmdMsgWaitButton
0x0000becf cmdPushInt 0x00000000
0x0000bed7 cmdMsgClear
0x0000bed8 cmdShowText 0x00000136
0x0000bedf cmdPushStr "「…覚悟は、しておきます」"
0x0000bf00 cmdPushStr "瑚太朗"
0x0000bf0d cmdPushInt 0x00000136
0x0000bf15 cmdPushInt 0x00000001
0x0000bf1d cmdMsg
0x0000bf1e cmdMsgStart
0x0000bf1f cmdMsgWaitButton
0x0000bf20 cmdPushInt 0x00000000
0x0000bf28 cmdMsgClear
0x0000bf29 cmdPushInt 0x00000000
0x0000bf31 cmdPushInt 0x00000000
0x0000bf39 cmdPushInt 0x00000003
0x0000bf41 cmdPOP
0x0000bf42 cmdPushInt 0x00000000
0x0000bf4a cmdPushInt 0x00000001
0x0000bf52 cmdPushInt 0x00000003
0x0000bf5a cmdPOP
0x0000bf5b cmdPushInt 0x00000011
0x0000bf63 cmdPushStr "sys20_adv00"
0x0000bf75 cmdFarcall
0x0000bf76 cmdShowText 0x00000137
0x0000bf7d cmdPushStr "すでに覚悟したつもりが、想像以上に胸に来た。"
0x0000bfb0 cmdPushStr ""
0x0000bfb7 cmdPushInt 0x00000137
0x0000bfbf cmdPushInt 0x00000001
0x0000bfc7 cmdMsg
0x0000bfc8 cmdMsgStart
0x0000bfc9 cmdMsgWaitButton
0x0000bfca cmdPushInt 0x00000000
0x0000bfd2 cmdMsgClear
0x0000bfd3 cmdShowText 0x00000138
0x0000bfda cmdPushStr "認識が甘かったせいか。"
0x0000bff7 cmdPushStr ""
0x0000bffe cmdPushInt 0x00000138
0x0000c006 cmdPushInt 0x00000001
0x0000c00e cmdMsg
0x0000c00f cmdMsgStart
0x0000c010 cmdMsgWaitButton
0x0000c011 cmdPushInt 0x00000000
0x0000c019 cmdMsgClear
0x0000c01a cmdShowText 0x00000139
0x0000c021 cmdPushStr "忘れてはならない、現実の残酷さ。"
0x0000c048 cmdPushStr ""
0x0000c04f cmdPushInt 0x00000139
0x0000c057 cmdPushInt 0x00000001
0x0000c05f cmdMsg
0x0000c060 cmdMsgStart
0x0000c061 cmdMsgWaitButton
0x0000c062 cmdPushInt 0x00000000
0x0000c06a cmdMsgClear
0x0000c06b cmdShowText 0x0000013a
0x0000c072 cmdPushStr "希望があれば、つらい現実も対になって存在する。"
0x0000c0a7 cmdPushStr ""
0x0000c0ae cmdPushInt 0x0000013a
0x0000c0b6 cmdPushInt 0x00000001
0x0000c0be cmdMsg
0x0000c0bf cmdMsgStart
0x0000c0c0 cmdMsgWaitButton
0x0000c0c1 cmdPushInt 0x00000000
0x0000c0c9 cmdMsgClear
0x0000c0ca cmdShowText 0x0000013b
0x0000c0d1 cmdPushStr "このくじは、どちらかしかない。"
0x0000c0f6 cmdPushStr ""
0x0000c0fd cmdPushInt 0x0000013b
0x0000c105 cmdPushInt 0x00000001
0x0000c10d cmdMsg
0x0000c10e cmdMsgStart
0x0000c10f cmdMsgWaitButton
0x0000c110 cmdPushInt 0x00000000
0x0000c118 cmdMsgClear
0x0000c119 cmdShowText 0x0000013c
0x0000c120 cmdPushStr "乏しい希望に向かって邁進した時、人は必ずどっちかの結末を引くことになるのだ。"
0x0000c173 cmdPushStr ""
0x0000c17a cmdPushInt 0x0000013c
0x0000c182 cmdPushInt 0x00000001
0x0000c18a cmdMsg
0x0000c18b cmdMsgStart
0x0000c18c cmdMsgWaitButton
0x0000c18d cmdPushInt 0x00000000
0x0000c195 cmdMsgClear
0x0000c196 cmdShowText 0x0000013d
0x0000c19d cmdPushStr "俺たちがつかむのが希望か、それとも過酷な現実か…"
0x0000c1d4 cmdPushStr ""
0x0000c1db cmdPushInt 0x0000013d
0x0000c1e3 cmdPushInt 0x00000001
0x0000c1eb cmdMsg
0x0000c1ec cmdMsgStart
0x0000c1ed cmdMsgWaitButton
0x0000c1ee cmdPushInt 0x00000000
0x0000c1f6 cmdMsgClear
0x0000c1f7 cmdShowText 0x0000013e
0x0000c1fe cmdPushStr "明日、そいつと向き合うことになる。"
0x0000c227 cmdPushStr ""
0x0000c22e cmdPushInt 0x0000013e
0x0000c236 cmdPushInt 0x00000001
0x0000c23e cmdMsg
0x0000c23f cmdMsgStart
0x0000c240 cmdMsgWaitButton
0x0000c241 cmdPushInt 0x00000000
0x0000c249 cmdMsgClear
0x0000c24a cmdPushInt 0x00000044
0x0000c252 cmdPushIntFromIntArray
0x0000c256 cmdPushInt 0x00000001
0x0000c25e cmdEQ
0x0000c25f cmdPushInt 0x00014187
0x0000c267 cmdIf
0x0000c268 cmdPushInt 0x000007d0
0x0000c270 cmdBGMStop
0x0000c271 cmdPushInt 0x00000000
0x0000c279 cmdPushInt 0x00000000
0x0000c281 cmdPushInt 0x00000003
0x0000c289 cmdPOP
0x0000c28a cmdPushInt 0x00000001
0x0000c292 cmdPushInt 0x00000001
0x0000c29a cmdPushInt 0x00000003
0x0000c2a2 cmdPOP
0x0000c2a3 cmdPushStr "KURO"
0x0000c2ae cmdPushInt 0x00000000
0x0000c2b6 cmdPushInt 0x00000004
0x0000c2be cmdPOP
0x0000c2bf cmdPushInt 0x00000000
0x0000c2c7 cmdPushStr "sys20_adv00"
0x0000c2d9 cmdFarcall
0x0000c2da cmdPushInt 0x00000014
0x0000c2e2 cmdPushInt 0x00000000
0x0000c2ea cmdPushInt 0x00000003
0x0000c2f2 cmdPOP
0x0000c2f3 cmdPushInt 0x00000000
0x0000c2fb cmdPushStr "sys20_adv01"
0x0000c30d cmdFarcall
0x0000c30e cmdPushInt 0x00000000
0x0000c316 cmdPushInt 0x00000000
0x0000c31e cmdPushInt 0x00000003
0x0000c326 cmdPOP
0x0000c327 cmdPushInt 0x00000001
0x0000c32f cmdPushInt 0x00000001
0x0000c337 cmdPushInt 0x00000003
0x0000c33f cmdPOP
0x0000c340 cmdPushStr "BG004"
0x0000c34c cmdPushInt 0x00000000
0x0000c354 cmdPushInt 0x00000004
0x0000c35c cmdPOP
0x0000c35d cmdPushInt 0x00000000
0x0000c365 cmdPushStr "sys20_adv00"
0x0000c377 cmdFarcall
0x0000c378 cmdPushInt 0x00000014
0x0000c380 cmdPushInt 0x00000000
0x0000c388 cmdPushInt 0x00000003
0x0000c390 cmdPOP
0x0000c391 cmdPushInt 0x00000000
0x0000c399 cmdPushStr "sys20_adv01"
0x0000c3ab cmdFarcall
0x0000c3ac cmdPushInt 0x00000001
0x0000c3b4 cmdPushInt 0x00000000
0x0000c3bc cmdPushStr "BGM035"
0x0000c3c9 cmdBGMPlay
0x0000c3ca cmdShowText 0x0000013f
0x0000c3d1 cmdPushStr "放課後、部室に顔を出す。"
0x0000c3f0 cmdPushStr ""
0x0000c3f7 cmdPushInt 0x0000013f
0x0000c3ff cmdPushInt 0x00000001
0x0000c407 cmdMsg
0x0000c408 cmdMsgStart
0x0000c409 cmdMsgWaitButton
0x0000c40a cmdPushInt 0x00000000
0x0000c412 cmdMsgClear
0x0000c413 cmdShowText 0x00000140
0x0000c41a cmdPushStr "「ちーす」"
0x0000c42b cmdPushStr "瑚太朗"
0x0000c438 cmdPushInt 0x00000140
0x0000c440 cmdPushInt 0x00000001
0x0000c448 cmdMsg
0x0000c449 cmdMsgStart
0x0000c44a cmdMsgWaitButton
0x0000c44b cmdPushInt 0x00000000
0x0000c453 cmdMsgClear
0x0000c454 cmdShowText 0x00000141
0x0000c45b cmdPushStr "………。"
0x0000c46a cmdPushStr ""
0x0000c471 cmdPushInt 0x00000141
0x0000c479 cmdPushInt 0x00000001
0x0000c481 cmdMsg
0x0000c482 cmdMsgStart
0x0000c483 cmdMsgWaitButton
0x0000c484 cmdPushInt 0x00000000
0x0000c48c cmdMsgClear
0x0000c48d cmdShowText 0x00000142
0x0000c494 cmdPushStr "「誰もいねぇ…？」"
0x0000c4ad cmdPushStr "瑚太朗"
0x0000c4ba cmdPushInt 0x00000142
0x0000c4c2 cmdPushInt 0x00000001
0x0000c4ca cmdMsg
0x0000c4cb cmdMsgStart
0x0000c4cc cmdMsgWaitButton
0x0000c4cd cmdPushInt 0x00000000
0x0000c4d5 cmdMsgClear
0x0000c4d6 cmdShowText 0x00000143
0x0000c4dd cmdPushStr "そりゃそうだ。"
0x0000c4f2 cmdPushStr ""
0x0000c4f9 cmdPushInt 0x00000143
0x0000c501 cmdPushInt 0x00000001
0x0000c509 cmdMsg
0x0000c50a cmdMsgStart
0x0000c50b cmdMsgWaitButton
0x0000c50c cmdPushInt 0x00000000
0x0000c514 cmdMsgClear
0x0000c515 cmdShowText 0x00000144
0x0000c51c cmdPushStr "昼に活動自粛を言い渡されたばっかりだ。"
0x0000c549 cmdPushStr ""
0x0000c550 cmdPushInt 0x00000144
0x0000c558 cmdPushInt 0x00000001
0x0000c560 cmdMsg
0x0000c561 cmdMsgStart
0x0000c562 cmdMsgWaitButton
0x0000c563 cmdPushInt 0x00000000
0x0000c56b cmdMsgClear
0x0000c56c cmdShowText 0x00000145
0x0000c573 cmdPushStr "（無意識ってやつは…）"
0x0000c590 cmdPushStr "瑚太朗"
0x0000c59d cmdPushInt 0x00000145
0x0000c5a5 cmdPushInt 0x00000001
0x0000c5ad cmdMsg
0x0000c5ae cmdMsgStart
0x0000c5af cmdMsgWaitButton
0x0000c5b0 cmdPushInt 0x00000000
0x0000c5b8 cmdMsgClear
0x0000c5b9 cmdPushStr "CGM_SK10"
0x0000c5c8 cmdPushInt 0x00000012
0x0000c5d0 cmdPushInt 0x00000004
0x0000c5d8 cmdPOP
0x0000c5d9 cmdPushInt 0x00000000
0x0000c5e1 cmdPushInt 0x00000000
0x0000c5e9 cmdPushInt 0x00000003
0x0000c5f1 cmdPOP
0x0000c5f2 cmdPushInt 0x00000001
0x0000c5fa cmdPushInt 0x00000001
0x0000c602 cmdPushInt 0x00000003
0x0000c60a cmdPOP
0x0000c60b cmdPushInt 0x00000011
0x0000c613 cmdPushStr "sys20_adv00"
0x0000c625 cmdFarcall
0x0000c626 cmdPushInt 0x00080000
0x0000c62e cmdPushStr "v/z205200698"
0x0000c641 cmdPushInt 0x00000000
0x0000c649 cmdPCMPlay
0x0000c64a cmdShowText 0x00000146
0x0000c651 cmdPushStr "「いますよ」"
0x0000c664 cmdPushStr "咲夜"
0x0000c66f cmdPushInt 0x00000146
0x0000c677 cmdPushInt 0x00000001
0x0000c67f cmdMsg
0x0000c680 cmdMsgStart
0x0000c681 cmdMsgWaitButton
0x0000c682 cmdPushInt 0x00000000
0x0000c68a cmdMsgClear
0x0000c68b cmdShowText 0x00000147
0x0000c692 cmdPushStr "後ろから声を掛けられる。"
0x0000c6b1 cmdPushStr ""
0x0000c6b8 cmdPushInt 0x00000147
0x0000c6c0 cmdPushInt 0x00000001
0x0000c6c8 cmdMsg
0x0000c6c9 cmdMsgStart
0x0000c6ca cmdMsgWaitButton
0x0000c6cb cmdPushInt 0x00000000
0x0000c6d3 cmdMsgClear
0x0000c6d4 cmdPushStr "CGM_SK11h"
0x0000c6e4 cmdPushInt 0x00000012
0x0000c6ec cmdPushInt 0x00000004
0x0000c6f4 cmdPOP
0x0000c6f5 cmdPushInt 0x00000000
0x0000c6fd cmdPushInt 0x00000000
0x0000c705 cmdPushInt 0x00000003
0x0000c70d cmdPOP
0x0000c70e cmdPushInt 0x00000001
0x0000c716 cmdPushInt 0x00000001
0x0000c71e cmdPushInt 0x00000003
0x0000c726 cmdPOP
0x0000c727 cmdPushInt 0x00000011
0x0000c72f cmdPushStr "sys20_adv00"
0x0000c741 cmdFarcall
0x0000c742 cmdPushInt 0x00080000
0x0000c74a cmdPushStr "v/z205200702"
0x0000c75d cmdPushInt 0x00000000
0x0000c765 cmdPCMPlay
0x0000c766 cmdShowText 0x00000148
0x0000c76d cmdPushStr "「こんにちは、与太郎君。ご機嫌はいかがですか」"
0x0000c7a2 cmdPushStr "咲夜"
0x0000c7ad cmdPushInt 0x00000148
0x0000c7b5 cmdPushInt 0x00000001
0x0000c7bd cmdMsg
0x0000c7be cmdMsgStart
0x0000c7bf cmdMsgWaitButton
0x0000c7c0 cmdPushInt 0x00000000
0x0000c7c8 cmdMsgClear
0x0000c7c9 cmdShowText 0x00000149
0x0000c7d0 cmdPushStr "「びびるわ…普通に登場しろよ」"
0x0000c7f5 cmdPushStr "瑚太朗"
0x0000c802 cmdPushInt 0x00000149
0x0000c80a cmdPushInt 0x00000001
0x0000c812 cmdMsg
0x0000c813 cmdMsgStart
0x0000c814 cmdMsgWaitButton
0x0000c815 cmdPushInt 0x00000000
0x0000c81d cmdMsgClear
0x0000c81e cmdPushStr "CGM_SK15"
0x0000c82d cmdPushInt 0x00000012
0x0000c835 cmdPushInt 0x00000004
0x0000c83d cmdPOP
0x0000c83e cmdPushInt 0x00000000
0x0000c846 cmdPushInt 0x00000000
0x0000c84e cmdPushInt 0x00000003
0x0000c856 cmdPOP
0x0000c857 cmdPushInt 0x00000001
0x0000c85f cmdPushInt 0x00000001
0x0000c867 cmdPushInt 0x00000003
0x0000c86f cmdPOP
0x0000c870 cmdPushInt 0x00000011
0x0000c878 cmdPushStr "sys20_adv00"
0x0000c88a cmdFarcall
0x0000c88b cmdPushInt 0x00080000
0x0000c893 cmdPushStr "v/z205200706"
0x0000c8a6 cmdPushInt 0x00000000
0x0000c8ae cmdPCMPlay
0x0000c8af cmdShowText 0x0000014a
0x0000c8b6 cmdPushStr "「これは失礼」"
0x0000c8cb cmdPushStr "咲夜"
0x0000c8d6 cmdPushInt 0x0000014a
0x0000c8de cmdPushInt 0x00000001
0x0000c8e6 cmdMsg
0x0000c8e7 cmdMsgStart
0x0000c8e8 cmdMsgWaitButton
0x0000c8e9 cmdPushInt 0x00000000
0x0000c8f1 cmdMsgClear
0x0000c8f2 cmdShowText 0x0000014b
0x0000c8f9 cmdPushStr "「で、なんであんたがまた来てんの」"
0x0000c922 cmdPushStr "瑚太朗"
0x0000c92f cmdPushInt 0x0000014b
0x0000c937 cmdPushInt 0x00000001
0x0000c93f cmdMsg
0x0000c940 cmdMsgStart
0x0000c941 cmdMsgWaitButton
0x0000c942 cmdPushInt 0x00000000
0x0000c94a cmdMsgClear
0x0000c94b cmdShowText 0x0000014c
0x0000c952 cmdPushStr "ちはやもいないのに。"
0x0000c96d cmdPushStr ""
0x0000c974 cmdPushInt 0x0000014c
0x0000c97c cmdPushInt 0x00000001
0x0000c984 cmdMsg
0x0000c985 cmdMsgStart
0x0000c986 cmdMsgWaitButton
0x0000c987 cmdPushInt 0x00000000
0x0000c98f cmdMsgClear
0x0000c990 cmdPushStr "CGM_SK31"
0x0000c99f cmdPushInt 0x00000012
0x0000c9a7 cmdPushInt 0x00000004
0x0000c9af cmdPOP
0x0000c9b0 cmdPushInt 0x00000000
0x0000c9b8 cmdPushInt 0x00000000
0x0000c9c0 cmdPushInt 0x00000003
0x0000c9c8 cmdPOP
0x0000c9c9 cmdPushInt 0x00000001
0x0000c9d1 cmdPushInt 0x00000001
0x0000c9d9 cmdPushInt 0x00000003
0x0000c9e1 cmdPOP
0x0000c9e2 cmdPushInt 0x00000011
0x0000c9ea cmdPushStr "sys20_adv00"
0x0000c9fc cmdFarcall
0x0000c9fd cmdPushInt 0x00080000
0x0000ca05 cmdPushStr "v/z205200711"
0x0000ca18 cmdPushInt 0x00000000
0x0000ca20 cmdPCMPlay
0x0000ca21 cmdShowText 0x0000014d
0x0000ca28 cmdPushStr "「都合のいい場所がここでしたので」"
0x0000ca51 cmdPushStr "咲夜"
0x0000ca5c cmdPushInt 0x0000014d
0x0000ca64 cmdPushInt 0x00000001
0x0000ca6c cmdMsg
0x0000ca6d cmdMsgStart
0x0000ca6e cmdMsgWaitButton
0x0000ca6f cmdPushInt 0x00000000
0x0000ca77 cmdMsgClear
0x0000ca78 cmdShowText 0x0000014e
0x0000ca7f cmdPushStr "「都合って何の？」"
0x0000ca98 cmdPushStr "瑚太朗"
0x0000caa5 cmdPushInt 0x0000014e
0x0000caad cmdPushInt 0x00000001
0x0000cab5 cmdMsg
0x0000cab6 cmdMsgStart
0x0000cab7 cmdMsgWaitButton
0x0000cab8 cmdPushInt 0x00000000
0x0000cac0 cmdMsgClear
0x0000cac1 cmdPushStr "CGM_SK10"
0x0000cad0 cmdPushInt 0x00000012
0x0000cad8 cmdPushInt 0x00000004
0x0000cae0 cmdPOP
0x0000cae1 cmdPushInt 0x00000000
0x0000cae9 cmdPushInt 0x00000000
0x0000caf1 cmdPushInt 0x00000003
0x0000caf9 cmdPOP
0x0000cafa cmdPushInt 0x00000001
0x0000cb02 cmdPushInt 0x00000001
0x0000cb0a cmdPushInt 0x00000003
0x0000cb12 cmdPOP
0x0000cb13 cmdPushInt 0x00000011
0x0000cb1b cmdPushStr "sys20_adv00"
0x0000cb2d cmdFarcall
0x0000cb2e cmdPushInt 0x00080000
0x0000cb36 cmdPushStr "v/z205200715"
0x0000cb49 cmdPushInt 0x00000000
0x0000cb51 cmdPCMPlay
0x0000cb52 cmdShowText 0x0000014f
0x0000cb59 cmdPushStr "「実は調査のネタを持ってきたのです」"
0x0000cb84 cmdPushStr "咲夜"
0x0000cb8f cmdPushInt 0x0000014f
0x0000cb97 cmdPushInt 0x00000001
0x0000cb9f cmdMsg
0x0000cba0 cmdMsgStart
0x0000cba1 cmdMsgWaitButton
0x0000cba2 cmdPushInt 0x00000000
0x0000cbaa cmdMsgClear
0x0000cbab cmdShowText 0x00000150
0x0000cbb2 cmdPushStr "「…はあ」"
0x0000cbc3 cmdPushStr "瑚太朗"
0x0000cbd0 cmdPushInt 0x00000150
0x0000cbd8 cmdPushInt 0x00000001
0x0000cbe0 cmdMsg
0x0000cbe1 cmdMsgStart
0x0000cbe2 cmdMsgWaitButton
0x0000cbe3 cmdPushInt 0x00000000
0x0000cbeb cmdMsgClear
0x0000cbec cmdPushStr "CGM_SK14t"
0x0000cbfc cmdPushInt 0x00000012
0x0000cc04 cmdPushInt 0x00000004
0x0000cc0c cmdPOP
0x0000cc0d cmdPushInt 0x00000000
0x0000cc15 cmdPushInt 0x00000000
0x0000cc1d cmdPushInt 0x00000003
0x0000cc25 cmdPOP
0x0000cc26 cmdPushInt 0x00000001
0x0000cc2e cmdPushInt 0x00000001
0x0000cc36 cmdPushInt 0x00000003
0x0000cc3e cmdPOP
0x0000cc3f cmdPushInt 0x00000011
0x0000cc47 cmdPushStr "sys20_adv00"
0x0000cc59 cmdFarcall
0x0000cc5a cmdPushInt 0x00080000
0x0000cc62 cmdPushStr "v/z205200719"
0x0000cc75 cmdPushInt 0x00000000
0x0000cc7d cmdPCMPlay
0x0000cc7e cmdShowText 0x00000151
0x0000cc85 cmdPushStr "「最近ここいらに時速１００キロで住宅街を駆け抜けていくという１００キロババアという妖怪が出没するとか」"
0x0000ccf2 cmdPushStr "咲夜"
0x0000ccfd cmdPushInt 0x00000151
0x0000cd05 cmdPushInt 0x00000001
0x0000cd0d cmdMsg
0x0000cd0e cmdMsgStart
0x0000cd0f cmdMsgWaitButton
0x0000cd10 cmdPushInt 0x00000000
0x0000cd18 cmdMsgClear
0x0000cd19 cmdShowText 0x00000152
0x0000cd20 cmdPushStr "「都市伝説だから。ガセもいいとこだから」"
0x0000cd4f cmdPushStr "瑚太朗"
0x0000cd5c cmdPushInt 0x00000152
0x0000cd64 cmdPushInt 0x00000001
0x0000cd6c cmdMsg
0x0000cd6d cmdMsgStart
0x0000cd6e cmdMsgWaitButton
0x0000cd6f cmdPushInt 0x00000000
0x0000cd77 cmdMsgClear
0x0000cd78 cmdPushStr "CGM_SK13"
0x0000cd87 cmdPushInt 0x00000012
0x0000cd8f cmdPushInt 0x00000004
0x0000cd97 cmdPOP
0x0000cd98 cmdPushInt 0x00000000
0x0000cda0 cmdPushInt 0x00000000
0x0000cda8 cmdPushInt 0x00000003
0x0000cdb0 cmdPOP
0x0000cdb1 cmdPushInt 0x00000001
0x0000cdb9 cmdPushInt 0x00000001
0x0000cdc1 cmdPushInt 0x00000003
0x0000cdc9 cmdPOP
0x0000cdca cmdPushInt 0x00000011
0x0000cdd2 cmdPushStr "sys20_adv00"
0x0000cde4 cmdFarcall
0x0000cde5 cmdPushInt 0x00080000
0x0000cded cmdPushStr "v/z205200723"
0x0000ce00 cmdPushInt 0x00000000
0x0000ce08 cmdPCMPlay
0x0000ce09 cmdShowText 0x00000153
0x0000ce10 cmdPushStr "「ではこちらのハイウェイに出没すると噂のジェットババアはいかがです？」"
0x0000ce5d cmdPushStr "咲夜"
0x0000ce68 cmdPushInt 0x00000153
0x0000ce70 cmdPushInt 0x00000001
0x0000ce78 cmdMsg
0x0000ce79 cmdMsgStart
0x0000ce7a cmdMsgWaitButton
0x0000ce7b cmdPushInt 0x00000000
0x0000ce83 cmdMsgClear
0x0000ce84 cmdShowText 0x00000154
0x0000ce8b cmdPushStr "「いや今まで色々やってきて、そんなババア影も形も見あたらねえよ」"
0x0000ced2 cmdPushStr "瑚太朗"
0x0000cedf cmdPushInt 0x00000154
0x0000cee7 cmdPushInt 0x00000001
0x0000ceef cmdMsg
0x0000cef0 cmdMsgStart
0x0000cef1 cmdMsgWaitButton
0x0000cef2 cmdPushInt 0x00000000
0x0000cefa cmdMsgClear
0x0000cefb cmdPushStr "CGM_SK15"
0x0000cf0a cmdPushInt 0x00000012
0x0000cf12 cmdPushInt 0x00000004
0x0000cf1a cmdPOP
0x0000cf1b cmdPushInt 0x00000000
0x0000cf23 cmdPushInt 0x00000000
0x0000cf2b cmdPushInt 0x00000003
0x0000cf33 cmdPOP
0x0000cf34 cmdPushInt 0x00000001
0x0000cf3c cmdPushInt 0x00000001
0x0000cf44 cmdPushInt 0x00000003
0x0000cf4c cmdPOP
0x0000cf4d cmdPushInt 0x00000011
0x0000cf55 cmdPushStr "sys20_adv00"
0x0000cf67 cmdFarcall
0x0000cf68 cmdPushInt 0x00080000
0x0000cf70 cmdPushStr "v/z205200727"
0x0000cf83 cmdPushInt 0x00000000
0x0000cf8b cmdPCMPlay
0x0000cf8c cmdShowText 0x00000155
0x0000cf93 cmdPushStr "「…そうですか」"
0x0000cfaa cmdPushStr "咲夜"
0x0000cfb5 cmdPushInt 0x00000155
0x0000cfbd cmdPushInt 0x00000001
0x0000cfc5 cmdMsg
0x0000cfc6 cmdMsgStart
0x0000cfc7 cmdMsgWaitButton
0x0000cfc8 cmdPushInt 0x00000000
0x0000cfd0 cmdMsgClear
0x0000cfd1 cmdShowText 0x00000156
0x0000cfd8 cmdPushStr "「なんなんだ突然」"
0x0000cff1 cmdPushStr "瑚太朗"
0x0000cffe cmdPushInt 0x00000156
0x0000d006 cmdPushInt 0x00000001
0x0000d00e cmdMsg
0x0000d00f cmdMsgStart
0x0000d010 cmdMsgWaitButton
0x0000d011 cmdPushInt 0x00000000
0x0000d019 cmdMsgClear
0x0000d01a cmdPushStr "CGM_SK13t"
0x0000d02a cmdPushInt 0x00000012
0x0000d032 cmdPushInt 0x00000004
0x0000d03a cmdPOP
0x0000d03b cmdPushInt 0x00000000
0x0000d043 cmdPushInt 0x00000000
0x0000d04b cmdPushInt 0x00000003
0x0000d053 cmdPOP
0x0000d054 cmdPushInt 0x00000001
0x0000d05c cmdPushInt 0x00000001
0x0000d064 cmdPushInt 0x00000003
0x0000d06c cmdPOP
0x0000d06d cmdPushInt 0x00000011
0x0000d075 cmdPushStr "sys20_adv00"
0x0000d087 cmdFarcall
0x0000d088 cmdPushInt 0x00080000
0x0000d090 cmdPushStr "v/z205200731"
0x0000d0a3 cmdPushInt 0x00000000
0x0000d0ab cmdPCMPlay
0x0000d0ac cmdShowText 0x00000157
0x0000d0b3 cmdPushStr "「ぜひこちらの調査に回って欲しかったのですが」"
0x0000d0e8 cmdPushStr "咲夜"
0x0000d0f3 cmdPushInt 0x00000157
0x0000d0fb cmdPushInt 0x00000001
0x0000d103 cmdMsg
0x0000d104 cmdMsgStart
0x0000d105 cmdMsgWaitButton
0x0000d106 cmdPushInt 0x00000000
0x0000d10e cmdMsgClear
0x0000d10f cmdPushStr "CGM_SK22t"
0x0000d11f cmdPushInt 0x00000012
0x0000d127 cmdPushInt 0x00000004
0x0000d12f cmdPOP
0x0000d130 cmdPushInt 0x00000000
0x0000d138 cmdPushInt 0x00000000
0x0000d140 cmdPushInt 0x00000003
0x0000d148 cmdPOP
0x0000d149 cmdPushInt 0x00000001
0x0000d151 cmdPushInt 0x00000001
0x0000d159 cmdPushInt 0x00000003
0x0000d161 cmdPOP
0x0000d162 cmdPushInt 0x00000011
0x0000d16a cmdPushStr "sys20_adv00"
0x0000d17c cmdFarcall
0x0000d17d cmdPushInt 0x00080000
0x0000d185 cmdPushStr "v/z205200734"
0x0000d198 cmdPushInt 0x00000000
0x0000d1a0 cmdPCMPlay
0x0000d1a1 cmdShowText 0x00000158
0x0000d1a8 cmdPushStr "「アホの与太郎君ならきっと食いついてくると思ったのですが、残念です」"
0x0000d1f3 cmdPushStr "咲夜"
0x0000d1fe cmdPushInt 0x00000158
0x0000d206 cmdPushInt 0x00000001
0x0000d20e cmdMsg
0x0000d20f cmdMsgStart
0x0000d210 cmdMsgWaitButton
0x0000d211 cmdPushInt 0x00000000
0x0000d219 cmdMsgClear
0x0000d21a cmdShowText 0x00000159
0x0000d221 cmdPushStr "「お前俺をどんだけ見くびってんだ」"
0x0000d24a cmdPushStr "瑚太朗"
0x0000d257 cmdPushInt 0x00000159
0x0000d25f cmdPushInt 0x00000001
0x0000d267 cmdMsg
0x0000d268 cmdMsgStart
0x0000d269 cmdMsgWaitButton
0x0000d26a cmdPushInt 0x00000000
0x0000d272 cmdMsgClear
0x0000d273 cmdPushStr "CGM_SK10"
0x0000d282 cmdPushInt 0x00000012
0x0000d28a cmdPushInt 0x00000004
0x0000d292 cmdPOP
0x0000d293 cmdPushInt 0x00000000
0x0000d29b cmdPushInt 0x00000000
0x0000d2a3 cmdPushInt 0x00000003
0x0000d2ab cmdPOP
0x0000d2ac cmdPushInt 0x00000001
0x0000d2b4 cmdPushInt 0x00000001
0x0000d2bc cmdPushInt 0x00000003
0x0000d2c4 cmdPOP
0x0000d2c5 cmdPushInt 0x00000011
0x0000d2cd cmdPushStr "sys20_adv00"
0x0000d2df cmdFarcall
0x0000d2e0 cmdPushInt 0x00080000
0x0000d2e8 cmdPushStr "v/z205200738"
0x0000d2fb cmdPushInt 0x00000000
0x0000d303 cmdPCMPlay
0x0000d304 cmdShowText 0x0000015a
0x0000d30b cmdPushStr "「まあ、それは瑣末なことですね」"
0x0000d332 cmdPushStr "咲夜"
0x0000d33d cmdPushInt 0x0000015a
0x0000d345 cmdPushInt 0x00000001
0x0000d34d cmdMsg
0x0000d34e cmdMsgStart
0x0000d34f cmdMsgWaitButton
0x0000d350 cmdPushInt 0x00000000
0x0000d358 cmdMsgClear
0x0000d359 cmdPushStr "CGM_SK22"
0x0000d368 cmdPushInt 0x00000012
0x0000d370 cmdPushInt 0x00000004
0x0000d378 cmdPOP
0x0000d379 cmdPushInt 0x00000000
0x0000d381 cmdPushInt 0x00000000
0x0000d389 cmdPushInt 0x00000003
0x0000d391 cmdPOP
0x0000d392 cmdPushInt 0x00000001
0x0000d39a cmdPushInt 0x00000001
0x0000d3a2 cmdPushInt 0x00000003
0x0000d3aa cmdPOP
0x0000d3ab cmdPushInt 0x00000011
0x0000d3b3 cmdPushStr "sys20_adv00"
0x0000d3c5 cmdFarcall
0x0000d3c6 cmdShowText 0x0000015b
0x0000d3cd cmdPushStr "ふう、と息を吐く。"
0x0000d3e6 cmdPushStr ""
0x0000d3ed cmdPushInt 0x0000015b
0x0000d3f5 cmdPushInt 0x00000001
0x0000d3fd cmdMsg
0x0000d3fe cmdMsgStart
0x0000d3ff cmdMsgWaitButton
0x0000d400 cmdPushInt 0x00000000
0x0000d408 cmdMsgClear
0x0000d409 cmdPushStr "CGM_SK14"
0x0000d418 cmdPushInt 0x00000012
0x0000d420 cmdPushInt 0x00000004
0x0000d428 cmdPOP
0x0000d429 cmdPushInt 0x00000000
0x0000d431 cmdPushInt 0x00000000
0x0000d439 cmdPushInt 0x00000003
0x0000d441 cmdPOP
0x0000d442 cmdPushInt 0x00000001
0x0000d44a cmdPushInt 0x00000001
0x0000d452 cmdPushInt 0x00000003
0x0000d45a cmdPOP
0x0000d45b cmdPushInt 0x00000011
0x0000d463 cmdPushStr "sys20_adv00"
0x0000d475 cmdFarcall
0x0000d476 cmdPushInt 0x00080000
0x0000d47e cmdPushStr "v/z205200744"
0x0000d491 cmdPushInt 0x00000000
0x0000d499 cmdPCMPlay
0x0000d49a cmdShowText 0x0000015c
0x0000d4a1 cmdPushStr "「…では、真面目な話をしましょう」"
0x0000d4ca cmdPushStr "咲夜"
0x0000d4d5 cmdPushInt 0x0000015c
0x0000d4dd cmdPushInt 0x00000001
0x0000d4e5 cmdMsg
0x0000d4e6 cmdMsgStart
0x0000d4e7 cmdMsgWaitButton
0x0000d4e8 cmdPushInt 0x00000000
0x0000d4f0 cmdMsgClear
0x0000d4f1 cmdShowText 0x0000015d
0x0000d4f8 cmdPushStr "「ふざけてたのはお前だろ」"
0x0000d519 cmdPushStr "瑚太朗"
0x0000d526 cmdPushInt 0x0000015d
0x0000d52e cmdPushInt 0x00000001
0x0000d536 cmdMsg
0x0000d537 cmdMsgStart
0x0000d538 cmdMsgWaitButton
0x0000d539 cmdPushInt 0x00000000
0x0000d541 cmdMsgClear
0x0000d542 cmdPushStr "CGM_SK22"
0x0000d551 cmdPushInt 0x00000012
0x0000d559 cmdPushInt 0x00000004
0x0000d561 cmdPOP
0x0000d562 cmdPushInt 0x00000000
0x0000d56a cmdPushInt 0x00000000
0x0000d572 cmdPushInt 0x00000003
0x0000d57a cmdPOP
0x0000d57b cmdPushInt 0x00000001
0x0000d583 cmdPushInt 0x00000001
0x0000d58b cmdPushInt 0x00000003
0x0000d593 cmdPOP
0x0000d594 cmdPushInt 0x00000011
0x0000d59c cmdPushStr "sys20_adv00"
0x0000d5ae cmdFarcall
0x0000d5af cmdPushInt 0x00080000
0x0000d5b7 cmdPushStr "v/z205200748"
0x0000d5ca cmdPushInt 0x00000000
0x0000d5d2 cmdPCMPlay
0x0000d5d3 cmdShowText 0x0000015e
0x0000d5da cmdPushStr "「穏便に話を進めたかった」"
0x0000d5fb cmdPushStr "咲夜"
0x0000d606 cmdPushInt 0x0000015e
0x0000d60e cmdPushInt 0x00000001
0x0000d616 cmdMsg
0x0000d617 cmdMsgStart
0x0000d618 cmdMsgWaitButton
0x0000d619 cmdPushInt 0x00000000
0x0000d621 cmdMsgClear
0x0000d622 cmdPushStr "CGM_SK24"
0x0000d631 cmdPushInt 0x00000012
0x0000d639 cmdPushInt 0x00000004
0x0000d641 cmdPOP
0x0000d642 cmdPushInt 0x00000000
0x0000d64a cmdPushInt 0x00000000
0x0000d652 cmdPushInt 0x00000003
0x0000d65a cmdPOP
0x0000d65b cmdPushInt 0x00000001
0x0000d663 cmdPushInt 0x00000001
0x0000d66b cmdPushInt 0x00000003
0x0000d673 cmdPOP
0x0000d674 cmdPushInt 0x00000011
0x0000d67c cmdPushStr "sys20_adv00"
0x0000d68e cmdFarcall
0x0000d68f cmdPushInt 0x00080000
0x0000d697 cmdPushStr "v/z205200751"
0x0000d6aa cmdPushInt 0x00000000
0x0000d6b2 cmdPCMPlay
0x0000d6b3 cmdShowText 0x0000015f
0x0000d6ba cmdPushStr "「…不本意です。こういった話をするのは」"
0x0000d6e9 cmdPushStr "咲夜"
0x0000d6f4 cmdPushInt 0x0000015f
0x0000d6fc cmdPushInt 0x00000001
0x0000d704 cmdMsg
0x0000d705 cmdMsgStart
0x0000d706 cmdMsgWaitButton
0x0000d707 cmdPushInt 0x00000000
0x0000d70f cmdMsgClear
0x0000d710 cmdShowText 0x00000160
0x0000d717 cmdPushStr "「何それ…」"
0x0000d72a cmdPushStr "瑚太朗"
0x0000d737 cmdPushInt 0x00000160
0x0000d73f cmdPushInt 0x00000001
0x0000d747 cmdMsg
0x0000d748 cmdMsgStart
0x0000d749 cmdMsgWaitButton
0x0000d74a cmdPushInt 0x00000000
0x0000d752 cmdMsgClear
0x0000d753 cmdPushInt 0x000007d0
0x0000d75b cmdBGMStop
0x0000d75c cmdPushStr "CGM_SK14"
0x0000d76b cmdPushInt 0x00000012
0x0000d773 cmdPushInt 0x00000004
0x0000d77b cmdPOP
0x0000d77c cmdPushInt 0x00000000
0x0000d784 cmdPushInt 0x00000000
0x0000d78c cmdPushInt 0x00000003
0x0000d794 cmdPOP
0x0000d795 cmdPushInt 0x00000001
0x0000d79d cmdPushInt 0x00000001
0x0000d7a5 cmdPushInt 0x00000003
0x0000d7ad cmdPOP
0x0000d7ae cmdPushInt 0x00000011
0x0000d7b6 cmdPushStr "sys20_adv00"
0x0000d7c8 cmdFarcall
0x0000d7c9 cmdPushInt 0x00080000
0x0000d7d1 cmdPushStr "v/z205200755"
0x0000d7e4 cmdPushInt 0x00000000
0x0000d7ec cmdPCMPlay
0x0000d7ed cmdShowText 0x00000161
0x0000d7f4 cmdPushStr "「真面目な話です」"
0x0000d80d cmdPushStr "咲夜"
0x0000d818 cmdPushInt 0x00000161
0x0000d820 cmdPushInt 0x00000001
0x0000d828 cmdMsg
0x0000d829 cmdMsgStart
0x0000d82a cmdMsgWaitButton
0x0000d82b cmdPushInt 0x00000000
0x0000d833 cmdMsgClear
0x0000d834 cmdShowText 0x00000162
0x0000d83b cmdPushStr "「………」"
0x0000d84c cmdPushStr "瑚太朗"
0x0000d859 cmdPushInt 0x00000162
0x0000d861 cmdPushInt 0x00000001
0x0000d869 cmdMsg
0x0000d86a cmdMsgStart
0x0000d86b cmdMsgWaitButton
0x0000d86c cmdPushInt 0x00000000
0x0000d874 cmdMsgClear
0x0000d875 cmdPushInt 0x00000001
0x0000d87d cmdPushInt 0x00000000
0x0000d885 cmdPushStr "BGM011"
0x0000d892 cmdBGMPlay
0x0000d893 cmdPushInt 0x00000000
0x0000d89b cmdPushInt 0x00000000
0x0000d8a3 cmdPushInt 0x00000003
0x0000d8ab cmdPOP
0x0000d8ac cmdPushInt 0x00000000
0x0000d8b4 cmdPushInt 0x00000001
0x0000d8bc cmdPushInt 0x00000003
0x0000d8c4 cmdPOP
0x0000d8c5 cmdPushInt 0x00000011
0x0000d8cd cmdPushStr "sys20_adv00"
0x0000d8df cmdFarcall
0x0000d8e0 cmdShowText 0x00000163
0x0000d8e7 cmdPushStr "…なんとなく、こいつと初めて会ったときのことを思い出した。"
0x0000d928 cmdPushStr ""
0x0000d92f cmdPushInt 0x00000163
0x0000d937 cmdPushInt 0x00000001
0x0000d93f cmdMsg
0x0000d940 cmdMsgStart
0x0000d941 cmdMsgWaitButton
0x0000d942 cmdPushInt 0x00000000
0x0000d94a cmdMsgClear
0x0000d94b cmdShowText 0x00000164
0x0000d952 cmdPushStr "厳かな氷の雰囲気だ。"
0x0000d96d cmdPushStr ""
0x0000d974 cmdPushInt 0x00000164
0x0000d97c cmdPushInt 0x00000001
0x0000d984 cmdMsg
0x0000d985 cmdMsgStart
0x0000d986 cmdMsgWaitButton
0x0000d987 cmdPushInt 0x00000000
0x0000d98f cmdMsgClear
0x0000d990 cmdShowText 0x00000165
0x0000d997 cmdPushStr "いつものふざけた雰囲気は、一瞬にしてどこかへ消えてしまった。"
0x0000d9da cmdPushStr ""
0x0000d9e1 cmdPushInt 0x00000165
0x0000d9e9 cmdPushInt 0x00000001
0x0000d9f1 cmdMsg
0x0000d9f2 cmdMsgStart
0x0000d9f3 cmdMsgWaitButton
0x0000d9f4 cmdPushInt 0x00000000
0x0000d9fc cmdMsgClear
0x0000d9fd cmdPushStr "CGM_SK14"
0x0000da0c cmdPushInt 0x00000012
0x0000da14 cmdPushInt 0x00000004
0x0000da1c cmdPOP
0x0000da1d cmdPushInt 0x00000000
0x0000da25 cmdPushInt 0x00000000
0x0000da2d cmdPushInt 0x00000003
0x0000da35 cmdPOP
0x0000da36 cmdPushInt 0x00000001
0x0000da3e cmdPushInt 0x00000001
0x0000da46 cmdPushInt 0x00000003
0x0000da4e cmdPOP
0x0000da4f cmdPushInt 0x00000011
0x0000da57 cmdPushStr "sys20_adv00"
0x0000da69 cmdFarcall
0x0000da6a cmdPushInt 0x00080000
0x0000da72 cmdPushStr "v/z205200764"
0x0000da85 cmdPushInt 0x00000000
0x0000da8d cmdPCMPlay
0x0000da8e cmdShowText 0x00000166
0x0000da95 cmdPushStr "「単刀直入に言いましょうか」"
0x0000dab8 cmdPushStr "咲夜"
0x0000dac3 cmdPushInt 0x00000166
0x0000dacb cmdPushInt 0x00000001
0x0000dad3 cmdMsg
0x0000dad4 cmdMsgStart
0x0000dad5 cmdMsgWaitButton
0x0000dad6 cmdPushInt 0x00000000
0x0000dade cmdMsgClear
0x0000dadf cmdPushInt 0x00080000
0x0000dae7 cmdPushStr "v/z205200767"
0x0000dafa cmdPushInt 0x00000000
0x0000db02 cmdPCMPlay
0x0000db03 cmdShowText 0x00000167
0x0000db0a cmdPushStr "「今すぐこの部活での活動を止めてください」"
0x0000db3b cmdPushStr "咲夜"
0x0000db46 cmdPushInt 0x00000167
0x0000db4e cmdPushInt 0x00000001
0x0000db56 cmdMsg
0x0000db57 cmdMsgStart
0x0000db58 cmdMsgWaitButton
0x0000db59 cmdPushInt 0x00000000
0x0000db61 cmdMsgClear
0x0000db62 cmdShowText 0x00000168
0x0000db69 cmdPushStr "「…は？」"
0x0000db7a cmdPushStr "瑚太朗"
0x0000db87 cmdPushInt 0x00000168
0x0000db8f cmdPushInt 0x00000001
0x0000db97 cmdMsg
0x0000db98 cmdMsgStart
0x0000db99 cmdMsgWaitButton
0x0000db9a cmdPushInt 0x00000000
0x0000dba2 cmdMsgClear
0x0000dba3 cmdPushStr "CGM_SK22"
0x0000dbb2 cmdPushInt 0x00000012
0x0000dbba cmdPushInt 0x00000004
0x0000dbc2 cmdPOP
0x0000dbc3 cmdPushInt 0x00000000
0x0000dbcb cmdPushInt 0x00000000
0x0000dbd3 cmdPushInt 0x00000003
0x0000dbdb cmdPOP
0x0000dbdc cmdPushInt 0x00000001
0x0000dbe4 cmdPushInt 0x00000001
0x0000dbec cmdPushInt 0x00000003
0x0000dbf4 cmdPOP
0x0000dbf5 cmdPushInt 0x00000011
0x0000dbfd cmdPushStr "sys20_adv00"
0x0000dc0f cmdFarcall
0x0000dc10 cmdPushInt 0x00080000
0x0000dc18 cmdPushStr "v/z205200772"
0x0000dc2b cmdPushInt 0x00000000
0x0000dc33 cmdPCMPlay
0x0000dc34 cmdShowText 0x00000169
0x0000dc3b cmdPushStr "「いや…活動自体を中止する必要はない。調査の指針を別に向けてください」"
0x0000dc88 cmdPushStr "咲夜"
0x0000dc93 cmdPushInt 0x00000169
0x0000dc9b cmdPushInt 0x00000001
0x0000dca3 cmdMsg
0x0000dca4 cmdMsgStart
0x0000dca5 cmdMsgWaitButton
0x0000dca6 cmdPushInt 0x00000000
0x0000dcae cmdMsgClear
0x0000dcaf cmdPushInt 0x00080000
0x0000dcb7 cmdPushStr "v/z205200773"
0x0000dcca cmdPushInt 0x00000000
0x0000dcd2 cmdPCMPlay
0x0000dcd3 cmdShowText 0x0000016a
0x0000dcda cmdPushStr "「これ以上首を突っ込んだところでロクな結果は待っていません」"
0x0000dd1d cmdPushStr "咲夜"
0x0000dd28 cmdPushInt 0x0000016a
0x0000dd30 cmdPushInt 0x00000001
0x0000dd38 cmdMsg
0x0000dd39 cmdMsgStart
0x0000dd3a cmdMsgWaitButton
0x0000dd3b cmdPushInt 0x00000000
0x0000dd43 cmdMsgClear
0x0000dd44 cmdShowText 0x0000016b
0x0000dd4b cmdPushStr "「…なんだよそれ」"
0x0000dd64 cmdPushStr "瑚太朗"
0x0000dd71 cmdPushInt 0x0000016b
0x0000dd79 cmdPushInt 0x00000001
0x0000dd81 cmdMsg
0x0000dd82 cmdMsgStart
0x0000dd83 cmdMsgWaitButton
0x0000dd84 cmdPushInt 0x00000000
0x0000dd8c cmdMsgClear
0x0000dd8d cmdPushInt 0x00000000
0x0000dd95 cmdPushInt 0x00000000
0x0000dd9d cmdPushInt 0x00000003
0x0000dda5 cmdPOP
0x0000dda6 cmdPushInt 0x00000000
0x0000ddae cmdPushInt 0x00000001
0x0000ddb6 cmdPushInt 0x00000003
0x0000ddbe cmdPOP
0x0000ddbf cmdPushInt 0x00000011
0x0000ddc7 cmdPushStr "sys20_adv00"
0x0000ddd9 cmdFarcall
0x0000ddda cmdShowText 0x0000016c
0x0000dde1 cmdPushStr "要するに。"
0x0000ddf2 cmdPushStr ""
0x0000ddf9 cmdPushInt 0x0000016c
0x0000de01 cmdPushInt 0x00000001
0x0000de09 cmdMsg
0x0000de0a cmdMsgStart
0x0000de0b cmdMsgWaitButton
0x0000de0c cmdPushInt 0x00000000
0x0000de14 cmdMsgClear
0x0000de15 cmdShowText 0x0000016d
0x0000de1c cmdPushStr "無駄だから止めろって忠告か？"
0x0000de3f cmdPushStr ""
0x0000de46 cmdPushInt 0x0000016d
0x0000de4e cmdPushInt 0x00000001
0x0000de56 cmdMsg
0x0000de57 cmdMsgStart
0x0000de58 cmdMsgWaitButton
0x0000de59 cmdPushInt 0x00000000
0x0000de61 cmdMsgClear
0x0000de62 cmdShowText 0x0000016e
0x0000de69 cmdPushStr "「やだよ。人一人失踪してるんだ。探さなきゃいけないし」"
0x0000dea6 cmdPushStr "瑚太朗"
0x0000deb3 cmdPushInt 0x0000016e
0x0000debb cmdPushInt 0x00000001
0x0000dec3 cmdMsg
0x0000dec4 cmdMsgStart
0x0000dec5 cmdMsgWaitButton
0x0000dec6 cmdPushInt 0x00000000
0x0000dece cmdMsgClear
0x0000decf cmdShowText 0x0000016f
0x0000ded6 cmdPushStr "「お前が言うような結果にはならない」"
0x0000df01 cmdPushStr "瑚太朗"
0x0000df0e cmdPushInt 0x0000016f
0x0000df16 cmdPushInt 0x00000001
0x0000df1e cmdMsg
0x0000df1f cmdMsgStart
0x0000df20 cmdMsgWaitButton
0x0000df21 cmdPushInt 0x00000000
0x0000df29 cmdMsgClear
0x0000df2a cmdPushStr "CGM_SK24"
0x0000df39 cmdPushInt 0x00000012
0x0000df41 cmdPushInt 0x00000004
0x0000df49 cmdPOP
0x0000df4a cmdPushInt 0x00000000
0x0000df52 cmdPushInt 0x00000000
0x0000df5a cmdPushInt 0x00000003
0x0000df62 cmdPOP
0x0000df63 cmdPushInt 0x00000001
0x0000df6b cmdPushInt 0x00000001
0x0000df73 cmdPushInt 0x00000003
0x0000df7b cmdPOP
0x0000df7c cmdPushInt 0x00000011
0x0000df84 cmdPushStr "sys20_adv00"
0x0000df96 cmdFarcall
0x0000df97 cmdPushInt 0x00080000
0x0000df9f cmdPushStr "v/z205200783"
0x0000dfb2 cmdPushInt 0x00000000
0x0000dfba cmdPCMPlay
0x0000dfbb cmdShowText 0x00000170
0x0000dfc2 cmdPushStr "「…その方がなお悪い。あなたが本当に無能だったら良かったのですが」"
0x0000e00b cmdPushStr "咲夜"
0x0000e016 cmdPushInt 0x00000170
0x0000e01e cmdPushInt 0x00000001
0x0000e026 cmdMsg
0x0000e027 cmdMsgStart
0x0000e028 cmdMsgWaitButton
0x0000e029 cmdPushInt 0x00000000
0x0000e031 cmdMsgClear
0x0000e032 cmdShowText 0x00000171
0x0000e039 cmdPushStr "「…なにその『本当に無能』って」"
0x0000e060 cmdPushStr "瑚太朗"
0x0000e06d cmdPushInt 0x00000171
0x0000e075 cmdPushInt 0x00000001
0x0000e07d cmdMsg
0x0000e07e cmdMsgStart
0x0000e07f cmdMsgWaitButton
0x0000e080 cmdPushInt 0x00000000
0x0000e088 cmdMsgClear
0x0000e089 cmdPushStr "CGM_SK32"
0x0000e098 cmdPushInt 0x00000012
0x0000e0a0 cmdPushInt 0x00000004
0x0000e0a8 cmdPOP
0x0000e0a9 cmdPushInt 0x00000000
0x0000e0b1 cmdPushInt 0x00000000
0x0000e0b9 cmdPushInt 0x00000003
0x0000e0c1 cmdPOP
0x0000e0c2 cmdPushInt 0x00000001
0x0000e0ca cmdPushInt 0x00000001
0x0000e0d2 cmdPushInt 0x00000003
0x0000e0da cmdPOP
0x0000e0db cmdPushInt 0x00000011
0x0000e0e3 cmdPushStr "sys20_adv00"
0x0000e0f5 cmdFarcall
0x0000e0f6 cmdPushInt 0x00080000
0x0000e0fe cmdPushStr "v/z205200787"
0x0000e111 cmdPushInt 0x00000000
0x0000e119 cmdPCMPlay
0x0000e11a cmdShowText 0x00000172
0x0000e121 cmdPushStr "「最後の警告です」"
0x0000e13a cmdPushStr "咲夜"
0x0000e145 cmdPushInt 0x00000172
0x0000e14d cmdPushInt 0x00000001
0x0000e155 cmdMsg
0x0000e156 cmdMsgStart
0x0000e157 cmdMsgWaitButton
0x0000e158 cmdPushInt 0x00000000
0x0000e160 cmdMsgClear
0x0000e161 cmdPushInt 0x00080000
0x0000e169 cmdPushStr "v/z205200788"
0x0000e17c cmdPushInt 0x00000000
0x0000e184 cmdPCMPlay
0x0000e185 cmdShowText 0x00000173
0x0000e18c cmdPushStr "「もしあなたが今の生活を気に入っているとしたら」"
0x0000e1c3 cmdPushStr "咲夜"
0x0000e1ce cmdPushInt 0x00000173
0x0000e1d6 cmdPushInt 0x00000001
0x0000e1de cmdMsg
0x0000e1df cmdMsgStart
0x0000e1e0 cmdMsgWaitButton
0x0000e1e1 cmdPushInt 0x00000000
0x0000e1e9 cmdMsgClear
0x0000e1ea cmdPushInt 0x00080000
0x0000e1f2 cmdPushStr "v/z205200789"
0x0000e205 cmdPushInt 0x00000000
0x0000e20d cmdPCMPlay
0x0000e20e cmdShowText 0x00000174
0x0000e215 cmdPushStr "「これ以上進めるべきではない」"
0x0000e23a cmdPushStr "咲夜"
0x0000e245 cmdPushInt 0x00000174
0x0000e24d cmdPushInt 0x00000001
0x0000e255 cmdMsg
0x0000e256 cmdMsgStart
0x0000e257 cmdMsgWaitButton
0x0000e258 cmdPushInt 0x00000000
0x0000e260 cmdMsgClear
0x0000e261 cmdShowText 0x00000175
0x0000e268 cmdPushStr "「…なんだよ、それ」"
0x0000e283 cmdPushStr "瑚太朗"
0x0000e290 cmdPushInt 0x00000175
0x0000e298 cmdPushInt 0x00000001
0x0000e2a0 cmdMsg
0x0000e2a1 cmdMsgStart
0x0000e2a2 cmdMsgWaitButton
0x0000e2a3 cmdPushInt 0x00000000
0x0000e2ab cmdMsgClear
0x0000e2ac cmdPushStr "CGM_SK14"
0x0000e2bb cmdPushInt 0x00000012
0x0000e2c3 cmdPushInt 0x00000004
0x0000e2cb cmdPOP
0x0000e2cc cmdPushInt 0x00000000
0x0000e2d4 cmdPushInt 0x00000000
0x0000e2dc cmdPushInt 0x00000003
0x0000e2e4 cmdPOP
0x0000e2e5 cmdPushInt 0x00000001
0x0000e2ed cmdPushInt 0x00000001
0x0000e2f5 cmdPushInt 0x00000003
0x0000e2fd cmdPOP
0x0000e2fe cmdPushInt 0x00000011
0x0000e306 cmdPushStr "sys20_adv00"
0x0000e318 cmdFarcall
0x0000e319 cmdPushInt 0x00080000
0x0000e321 cmdPushStr "v/z205200793"
0x0000e334 cmdPushInt 0x00000000
0x0000e33c cmdPCMPlay
0x0000e33d cmdShowText 0x00000176
0x0000e344 cmdPushStr "「ちはやさんの手前、私には強制的にこの活動を止める権限はありません」"
0x0000e38f cmdPushStr "咲夜"
0x0000e39a cmdPushInt 0x00000176
0x0000e3a2 cmdPushInt 0x00000001
0x0000e3aa cmdMsg
0x0000e3ab cmdMsgStart
0x0000e3ac cmdMsgWaitButton
0x0000e3ad cmdPushInt 0x00000000
0x0000e3b5 cmdMsgClear
0x0000e3b6 cmdPushStr "CGM_SK22"
0x0000e3c5 cmdPushInt 0x00000012
0x0000e3cd cmdPushInt 0x00000004
0x0000e3d5 cmdPOP
0x0000e3d6 cmdPushInt 0x00000000
0x0000e3de cmdPushInt 0x00000000
0x0000e3e6 cmdPushInt 0x00000003
0x0000e3ee cmdPOP
0x0000e3ef cmdPushInt 0x00000001
0x0000e3f7 cmdPushInt 0x00000001
0x0000e3ff cmdPushInt 0x00000003
0x0000e407 cmdPOP
0x0000e408 cmdPushInt 0x00000011
0x0000e410 cmdPushStr "sys20_adv00"
0x0000e422 cmdFarcall
0x0000e423 cmdPushInt 0x00080000
0x0000e42b cmdPushStr "v/z205200796"
0x0000e43e cmdPushInt 0x00000000
0x0000e446 cmdPCMPlay
0x0000e447 cmdShowText 0x00000177
0x0000e44e cmdPushStr "「ですから、警告です」"
0x0000e46b cmdPushStr "咲夜"
0x0000e476 cmdPushInt 0x00000177
0x0000e47e cmdPushInt 0x00000001
0x0000e486 cmdMsg
0x0000e487 cmdMsgStart
0x0000e488 cmdMsgWaitButton
0x0000e489 cmdPushInt 0x00000000
0x0000e491 cmdMsgClear
0x0000e492 cmdShowText 0x00000178
0x0000e499 cmdPushStr "「ざけんな」"
0x0000e4ac cmdPushStr "瑚太朗"
0x0000e4b9 cmdPushInt 0x00000178
0x0000e4c1 cmdPushInt 0x00000001
0x0000e4c9 cmdMsg
0x0000e4ca cmdMsgStart
0x0000e4cb cmdMsgWaitButton
0x0000e4cc cmdPushInt 0x00000000
0x0000e4d4 cmdMsgClear
0x0000e4d5 cmdShowText 0x00000179
0x0000e4dc cmdPushStr "「ちはやが止める気ないんだったら、俺だってお前にどうこう言われたって止める気はねえ」"
0x0000e537 cmdPushStr "瑚太朗"
0x0000e544 cmdPushInt 0x00000179
0x0000e54c cmdPushInt 0x00000001
0x0000e554 cmdMsg
0x0000e555 cmdMsgStart
0x0000e556 cmdMsgWaitButton
0x0000e557 cmdPushInt 0x00000000
0x0000e55f cmdMsgClear
0x0000e560 cmdShowText 0x0000017a
0x0000e567 cmdPushStr "こいつに対して、いつもと違う憤りを感じた。"
0x0000e598 cmdPushStr ""
0x0000e59f cmdPushInt 0x0000017a
0x0000e5a7 cmdPushInt 0x00000001
0x0000e5af cmdMsg
0x0000e5b0 cmdMsgStart
0x0000e5b1 cmdMsgWaitButton
0x0000e5b2 cmdPushInt 0x00000000
0x0000e5ba cmdMsgClear
0x0000e5bb cmdShowText 0x0000017b
0x0000e5c2 cmdPushStr "なにか、大事なものをバカにされた気がしたからだ。"
0x0000e5f9 cmdPushStr ""
0x0000e600 cmdPushInt 0x0000017b
0x0000e608 cmdPushInt 0x00000001
0x0000e610 cmdMsg
0x0000e611 cmdMsgStart
0x0000e612 cmdMsgWaitButton
0x0000e613 cmdPushInt 0x00000000
0x0000e61b cmdMsgClear
0x0000e61c cmdShowText 0x0000017c
0x0000e623 cmdPushStr "今が大事なら進めるべきじゃない？"
0x0000e64a cmdPushStr ""
0x0000e651 cmdPushInt 0x0000017c
0x0000e659 cmdPushInt 0x00000001
0x0000e661 cmdMsg
0x0000e662 cmdMsgStart
0x0000e663 cmdMsgWaitButton
0x0000e664 cmdPushInt 0x00000000
0x0000e66c cmdMsgClear
0x0000e66d cmdShowText 0x0000017d
0x0000e674 cmdPushStr "俺は大事だからこそ、進めなきゃいけないのに。"
0x0000e6a7 cmdPushStr ""
0x0000e6ae cmdPushInt 0x0000017d
0x0000e6b6 cmdPushInt 0x00000001
0x0000e6be cmdMsg
0x0000e6bf cmdMsgStart
0x0000e6c0 cmdMsgWaitButton
0x0000e6c1 cmdPushInt 0x00000000
0x0000e6c9 cmdMsgClear
0x0000e6ca cmdPushStr "CGM_SK24"
0x0000e6d9 cmdPushInt 0x00000012
0x0000e6e1 cmdPushInt 0x00000004
0x0000e6e9 cmdPOP
0x0000e6ea cmdPushInt 0x00000000
0x0000e6f2 cmdPushInt 0x00000000
0x0000e6fa cmdPushInt 0x00000003
0x0000e702 cmdPOP
0x0000e703 cmdPushInt 0x00000001
0x0000e70b cmdPushInt 0x00000001
0x0000e713 cmdPushInt 0x00000003
0x0000e71b cmdPOP
0x0000e71c cmdPushInt 0x00000011
0x0000e724 cmdPushStr "sys20_adv00"
0x0000e736 cmdFarcall
0x0000e737 cmdPushInt 0x00080000
0x0000e73f cmdPushStr "v/z205200805"
0x0000e752 cmdPushInt 0x00000000
0x0000e75a cmdPCMPlay
0x0000e75b cmdShowText 0x0000017e
0x0000e762 cmdPushStr "「…そうですね。ちはやさんにしても、おそらく同じ返答をなさるでしょう」"
0x0000e7af cmdPushStr "咲夜"
0x0000e7ba cmdPushInt 0x0000017e
0x0000e7c2 cmdPushInt 0x00000001
0x0000e7ca cmdMsg
0x0000e7cb cmdMsgStart
0x0000e7cc cmdMsgWaitButton
0x0000e7cd cmdPushInt 0x00000000
0x0000e7d5 cmdMsgClear
0x0000e7d6 cmdShowText 0x0000017f
0x0000e7dd cmdPushStr "「そうだろうよ」"
0x0000e7f4 cmdPushStr "瑚太朗"
0x0000e801 cmdPushInt 0x0000017f
0x0000e809 cmdPushInt 0x00000001
0x0000e811 cmdMsg
0x0000e812 cmdMsgStart
0x0000e813 cmdMsgWaitButton
0x0000e814 cmdPushInt 0x00000000
0x0000e81c cmdMsgClear
0x0000e81d cmdPushInt 0x00000000
0x0000e825 cmdPushInt 0x00000000
0x0000e82d cmdPushInt 0x00000003
0x0000e835 cmdPOP
0x0000e836 cmdPushInt 0x00000000
0x0000e83e cmdPushInt 0x00000001
0x0000e846 cmdPushInt 0x00000003
0x0000e84e cmdPOP
0x0000e84f cmdPushInt 0x00000011
0x0000e857 cmdPushStr "sys20_adv00"
0x0000e869 cmdFarcall
0x0000e86a cmdShowText 0x00000180
0x0000e871 cmdPushStr "失われるのなんて、一瞬なんだ。"
0x0000e896 cmdPushStr ""
0x0000e89d cmdPushInt 0x00000180
0x0000e8a5 cmdPushInt 0x00000001
0x0000e8ad cmdMsg
0x0000e8ae cmdMsgStart
0x0000e8af cmdMsgWaitButton
0x0000e8b0 cmdPushInt 0x00000000
0x0000e8b8 cmdMsgClear
0x0000e8b9 cmdShowText 0x00000181
0x0000e8c0 cmdPushStr "ちはやは、それを目にしたことがないんじゃないだろうか。"
0x0000e8fd cmdPushStr ""
0x0000e904 cmdPushInt 0x00000181
0x0000e90c cmdPushInt 0x00000001
0x0000e914 cmdMsg
0x0000e915 cmdMsgStart
0x0000e916 cmdMsgWaitButton
0x0000e917 cmdPushInt 0x00000000
0x0000e91f cmdMsgClear
0x0000e920 cmdShowText 0x00000182
0x0000e927 cmdPushStr "…だからこそ、ちはやのためにも…。"
0x0000e950 cmdPushStr ""
0x0000e957 cmdPushInt 0x00000182
0x0000e95f cmdPushInt 0x00000001
0x0000e967 cmdMsg
0x0000e968 cmdMsgStart
0x0000e969 cmdMsgWaitButton
0x0000e96a cmdPushInt 0x00000000
0x0000e972 cmdMsgClear
0x0000e973 cmdShowText 0x00000183
0x0000e97a cmdPushStr "「………」"
0x0000e98b cmdPushStr "瑚太朗"
0x0000e998 cmdPushInt 0x00000183
0x0000e9a0 cmdPushInt 0x00000001
0x0000e9a8 cmdMsg
0x0000e9a9 cmdMsgStart
0x0000e9aa cmdMsgWaitButton
0x0000e9ab cmdPushInt 0x00000000
0x0000e9b3 cmdMsgClear
0x0000e9b4 cmdShowText 0x00000184
0x0000e9bb cmdPushStr "あいつのために？"
0x0000e9d2 cmdPushStr ""
0x0000e9d9 cmdPushInt 0x00000184
0x0000e9e1 cmdPushInt 0x00000001
0x0000e9e9 cmdMsg
0x0000e9ea cmdMsgStart
0x0000e9eb cmdMsgWaitButton
0x0000e9ec cmdPushInt 0x00000000
0x0000e9f4 cmdMsgClear
0x0000e9f5 cmdShowText 0x00000185
0x0000e9fc cmdPushStr "…いやいや。"
0x0000ea0f cmdPushStr ""
0x0000ea16 cmdPushInt 0x00000185
0x0000ea1e cmdPushInt 0x00000001
0x0000ea26 cmdMsg
0x0000ea27 cmdMsgStart
0x0000ea28 cmdMsgWaitButton
0x0000ea29 cmdPushInt 0x00000000
0x0000ea31 cmdMsgClear
0x0000ea32 cmdShowText 0x00000186
0x0000ea39 cmdPushStr "「とにかく、行くのをやめる気はない」"
0x0000ea64 cmdPushStr "瑚太朗"
0x0000ea71 cmdPushInt 0x00000186
0x0000ea79 cmdPushInt 0x00000001
0x0000ea81 cmdMsg
0x0000ea82 cmdMsgStart
0x0000ea83 cmdMsgWaitButton
0x0000ea84 cmdPushInt 0x00000000
0x0000ea8c cmdMsgClear
0x0000ea8d cmdPushStr "CGM_SK22t"
0x0000ea9d cmdPushInt 0x00000012
0x0000eaa5 cmdPushInt 0x00000004
0x0000eaad cmdPOP
0x0000eaae cmdPushInt 0x00000000
0x0000eab6 cmdPushInt 0x00000000
0x0000eabe cmdPushInt 0x00000003
0x0000eac6 cmdPOP
0x0000eac7 cmdPushInt 0x00000001
0x0000eacf cmdPushInt 0x00000001
0x0000ead7 cmdPushInt 0x00000003
0x0000eadf cmdPOP
0x0000eae0 cmdPushInt 0x00000011
0x0000eae8 cmdPushStr "sys20_adv00"
0x0000eafa cmdFarcall
0x0000eafb cmdPushInt 0x00080000
0x0000eb03 cmdPushStr "v/z205200808"
0x0000eb16 cmdPushInt 0x00000000
0x0000eb1e cmdPCMPlay
0x0000eb1f cmdShowText 0x00000187
0x0000eb26 cmdPushStr "「やはり君は私の運命だったのですよ」"
0x0000eb51 cmdPushStr "咲夜"
0x0000eb5c cmdPushInt 0x00000187
0x0000eb64 cmdPushInt 0x00000001
0x0000eb6c cmdMsg
0x0000eb6d cmdMsgStart
0x0000eb6e cmdMsgWaitButton
0x0000eb6f cmdPushInt 0x00000000
0x0000eb77 cmdMsgClear
0x0000eb78 cmdShowText 0x00000188
0x0000eb7f cmdPushStr "「気持ちわりいこと言うんじゃねえよ…」"
0x0000ebac cmdPushStr "瑚太朗"
0x0000ebb9 cmdPushInt 0x00000188
0x0000ebc1 cmdPushInt 0x00000001
0x0000ebc9 cmdMsg
0x0000ebca cmdMsgStart
0x0000ebcb cmdMsgWaitButton
0x0000ebcc cmdPushInt 0x00000000
0x0000ebd4 cmdMsgClear
0x0000ebd5 cmdShowText 0x00000189
0x0000ebdc cmdPushStr "「今の俺は笑えねえぞ」"
0x0000ebf9 cmdPushStr "瑚太朗"
0x0000ec06 cmdPushInt 0x00000189
0x0000ec0e cmdPushInt 0x00000001
0x0000ec16 cmdMsg
0x0000ec17 cmdMsgStart
0x0000ec18 cmdMsgWaitButton
0x0000ec19 cmdPushInt 0x00000000
0x0000ec21 cmdMsgClear
0x0000ec22 cmdPushStr "CGM_SK32"
0x0000ec31 cmdPushInt 0x00000012
0x0000ec39 cmdPushInt 0x00000004
0x0000ec41 cmdPOP
0x0000ec42 cmdPushInt 0x00000000
0x0000ec4a cmdPushInt 0x00000000
0x0000ec52 cmdPushInt 0x00000003
0x0000ec5a cmdPOP
0x0000ec5b cmdPushInt 0x00000001
0x0000ec63 cmdPushInt 0x00000001
0x0000ec6b cmdPushInt 0x00000003
0x0000ec73 cmdPOP
0x0000ec74 cmdPushInt 0x00000011
0x0000ec7c cmdPushStr "sys20_adv00"
0x0000ec8e cmdFarcall
0x0000ec8f cmdPushInt 0x00080000
0x0000ec97 cmdPushStr "v/z205200813"
0x0000ecaa cmdPushInt 0x00000000
0x0000ecb2 cmdPCMPlay
0x0000ecb3 cmdShowText 0x0000018a
0x0000ecba cmdPushStr "「笑ってもらっては困ります」"
0x0000ecdd cmdPushStr "咲夜"
0x0000ece8 cmdPushInt 0x0000018a
0x0000ecf0 cmdPushInt 0x00000001
0x0000ecf8 cmdMsg
0x0000ecf9 cmdMsgStart
0x0000ecfa cmdMsgWaitButton
0x0000ecfb cmdPushInt 0x00000000
0x0000ed03 cmdMsgClear
0x0000ed04 cmdPushInt 0x00080000
0x0000ed0c cmdPushStr "v/z205200814"
0x0000ed1f cmdPushInt 0x00000000
0x0000ed27 cmdPCMPlay
0x0000ed28 cmdShowText 0x0000018b
0x0000ed2f cmdPushStr "「…そうですか。仕方ありませんね」"
0x0000ed58 cmdPushStr "咲夜"
0x0000ed63 cmdPushInt 0x0000018b
0x0000ed6b cmdPushInt 0x00000001
0x0000ed73 cmdMsg
0x0000ed74 cmdMsgStart
0x0000ed75 cmdMsgWaitButton
0x0000ed76 cmdPushInt 0x00000000
0x0000ed7e cmdMsgClear
0x0000ed7f cmdShowText 0x0000018c
0x0000ed86 cmdPushStr "「わかったらとっととけえれ」"
0x0000eda9 cmdPushStr "瑚太朗"
0x0000edb6 cmdPushInt 0x0000018c
0x0000edbe cmdPushInt 0x00000001
0x0000edc6 cmdMsg
0x0000edc7 cmdMsgStart
0x0000edc8 cmdMsgWaitButton
0x0000edc9 cmdPushInt 0x00000000
0x0000edd1 cmdMsgClear
0x0000edd2 cmdPushStr "CGM_SK22"
0x0000ede1 cmdPushInt 0x00000012
0x0000ede9 cmdPushInt 0x00000004
0x0000edf1 cmdPOP
0x0000edf2 cmdPushInt 0x00000000
0x0000edfa cmdPushInt 0x00000000
0x0000ee02 cmdPushInt 0x00000003
0x0000ee0a cmdPOP
0x0000ee0b cmdPushInt 0x00000001
0x0000ee13 cmdPushInt 0x00000001
0x0000ee1b cmdPushInt 0x00000003
0x0000ee23 cmdPOP
0x0000ee24 cmdPushInt 0x00000011
0x0000ee2c cmdPushStr "sys20_adv00"
0x0000ee3e cmdFarcall
0x0000ee3f cmdPushInt 0x00080000
0x0000ee47 cmdPushStr "v/z205200818"
0x0000ee5a cmdPushInt 0x00000000
0x0000ee62 cmdPCMPlay
0x0000ee63 cmdShowText 0x0000018d
0x0000ee6a cmdPushStr "「そうさせていただきましょうか」"
0x0000ee91 cmdPushStr "咲夜"
0x0000ee9c cmdPushInt 0x0000018d
0x0000eea4 cmdPushInt 0x00000001
0x0000eeac cmdMsg
0x0000eead cmdMsgStart
0x0000eeae cmdMsgWaitButton
0x0000eeaf cmdPushInt 0x00000000
0x0000eeb7 cmdMsgClear
0x0000eeb8 cmdPushInt 0x00000000
0x0000eec0 cmdPushInt 0x00000000
0x0000eec8 cmdPushInt 0x00000003
0x0000eed0 cmdPOP
0x0000eed1 cmdPushInt 0x00000000
0x0000eed9 cmdPushInt 0x00000001
0x0000eee1 cmdPushInt 0x00000003
0x0000eee9 cmdPOP
0x0000eeea cmdPushInt 0x00000011
0x0000eef2 cmdPushStr "sys20_adv00"
0x0000ef04 cmdFarcall
0x0000ef05 cmdShowText 0x0000018e
0x0000ef0c cmdPushStr "ドアへ向かって歩いていく。"
0x0000ef2d cmdPushStr ""
0x0000ef34 cmdPushInt 0x0000018e
0x0000ef3c cmdPushInt 0x00000001
0x0000ef44 cmdMsg
0x0000ef45 cmdMsgStart
0x0000ef46 cmdMsgWaitButton
0x0000ef47 cmdPushInt 0x00000000
0x0000ef4f cmdMsgClear
0x0000ef50 cmdPushStr "CGM_SK13"
0x0000ef5f cmdPushInt 0x00000012
0x0000ef67 cmdPushInt 0x00000004
0x0000ef6f cmdPOP
0x0000ef70 cmdPushInt 0x00000000
0x0000ef78 cmdPushInt 0x00000000
0x0000ef80 cmdPushInt 0x00000003
0x0000ef88 cmdPOP
0x0000ef89 cmdPushInt 0x00000001
0x0000ef91 cmdPushInt 0x00000001
0x0000ef99 cmdPushInt 0x00000003
0x0000efa1 cmdPOP
0x0000efa2 cmdPushInt 0x00000011
0x0000efaa cmdPushStr "sys20_adv00"
0x0000efbc cmdFarcall
0x0000efbd cmdPushInt 0x00080000
0x0000efc5 cmdPushStr "v/z205200824"
0x0000efd8 cmdPushInt 0x00000000
0x0000efe0 cmdPCMPlay
0x0000efe1 cmdShowText 0x0000018f
0x0000efe8 cmdPushStr "「ああ、瑚太朗君」"
0x0000f001 cmdPushStr "咲夜"
0x0000f00c cmdPushInt 0x0000018f
0x0000f014 cmdPushInt 0x00000001
0x0000f01c cmdMsg
0x0000f01d cmdMsgStart
0x0000f01e cmdMsgWaitButton
0x0000f01f cmdPushInt 0x00000000
0x0000f027 cmdMsgClear
0x0000f028 cmdShowText 0x00000190
0x0000f02f cmdPushStr "「こたろ…ああ？」"
0x0000f048 cmdPushStr "瑚太朗"
0x0000f055 cmdPushInt 0x00000190
0x0000f05d cmdPushInt 0x00000001
0x0000f065 cmdMsg
0x0000f066 cmdMsgStart
0x0000f067 cmdMsgWaitButton
0x0000f068 cmdPushInt 0x00000000
0x0000f070 cmdMsgClear
0x0000f071 cmdShowText 0x00000191
0x0000f078 cmdPushStr "あってる。"
0x0000f089 cmdPushStr ""
0x0000f090 cmdPushInt 0x00000191
0x0000f098 cmdPushInt 0x00000001
0x0000f0a0 cmdMsg
0x0000f0a1 cmdMsgStart
0x0000f0a2 cmdMsgWaitButton
0x0000f0a3 cmdPushInt 0x00000000
0x0000f0ab cmdMsgClear
0x0000f0ac cmdPushStr "CGM_SK22"
0x0000f0bb cmdPushInt 0x00000012
0x0000f0c3 cmdPushInt 0x00000004
0x0000f0cb cmdPOP
0x0000f0cc cmdPushInt 0x00000000
0x0000f0d4 cmdPushInt 0x00000000
0x0000f0dc cmdPushInt 0x00000003
0x0000f0e4 cmdPOP
0x0000f0e5 cmdPushInt 0x00000001
0x0000f0ed cmdPushInt 0x00000001
0x0000f0f5 cmdPushInt 0x00000003
0x0000f0fd cmdPOP
0x0000f0fe cmdPushInt 0x00000011
0x0000f106 cmdPushStr "sys20_adv00"
0x0000f118 cmdFarcall
0x0000f119 cmdPushInt 0x00080000
0x0000f121 cmdPushStr "v/z205200829"
0x0000f134 cmdPushInt 0x00000000
0x0000f13c cmdPCMPlay
0x0000f13d cmdShowText 0x00000192
0x0000f144 cmdPushStr "「お気分を害したようで、申し訳ありません」"
0x0000f175 cmdPushStr "咲夜"
0x0000f180 cmdPushInt 0x00000192
0x0000f188 cmdPushInt 0x00000001
0x0000f190 cmdMsg
0x0000f191 cmdMsgStart
0x0000f192 cmdMsgWaitButton
0x0000f193 cmdPushInt 0x00000000
0x0000f19b cmdMsgClear
0x0000f19c cmdPushStr "CGM_SK24"
0x0000f1ab cmdPushInt 0x00000012
0x0000f1b3 cmdPushInt 0x00000004
0x0000f1bb cmdPOP
0x0000f1bc cmdPushInt 0x00000000
0x0000f1c4 cmdPushInt 0x00000000
0x0000f1cc cmdPushInt 0x00000003
0x0000f1d4 cmdPOP
0x0000f1d5 cmdPushInt 0x00000001
0x0000f1dd cmdPushInt 0x00000001
0x0000f1e5 cmdPushInt 0x00000003
0x0000f1ed cmdPOP
0x0000f1ee cmdPushInt 0x00000011
0x0000f1f6 cmdPushStr "sys20_adv00"
0x0000f208 cmdFarcall
0x0000f209 cmdPushInt 0x00080000
0x0000f211 cmdPushStr "v/z205200832"
0x0000f224 cmdPushInt 0x00000000
0x0000f22c cmdPCMPlay
0x0000f22d cmdShowText 0x00000193
0x0000f234 cmdPushStr "「…ただ、私はちはやさんのお付です。そこはご理解いただきたい」"
0x0000f279 cmdPushStr "咲夜"
0x0000f284 cmdPushInt 0x00000193
0x0000f28c cmdPushInt 0x00000001
0x0000f294 cmdMsg
0x0000f295 cmdMsgStart
0x0000f296 cmdMsgWaitButton
0x0000f297 cmdPushInt 0x00000000
0x0000f29f cmdMsgClear
0x0000f2a0 cmdShowText 0x00000194
0x0000f2a7 cmdPushStr "「ちはや？」"
0x0000f2ba cmdPushStr "瑚太朗"
0x0000f2c7 cmdPushInt 0x00000194
0x0000f2cf cmdPushInt 0x00000001
0x0000f2d7 cmdMsg
0x0000f2d8 cmdMsgStart
0x0000f2d9 cmdMsgWaitButton
0x0000f2da cmdPushInt 0x00000000
0x0000f2e2 cmdMsgClear
0x0000f2e3 cmdPushInt 0x00000000
0x0000f2eb cmdPushInt 0x00000000
0x0000f2f3 cmdPushInt 0x00000003
0x0000f2fb cmdPOP
0x0000f2fc cmdPushInt 0x00000000
0x0000f304 cmdPushInt 0x00000001
0x0000f30c cmdPushInt 0x00000003
0x0000f314 cmdPOP
0x0000f315 cmdPushInt 0x00000011
0x0000f31d cmdPushStr "sys20_adv00"
0x0000f32f cmdFarcall
0x0000f330 cmdShowText 0x00000195
0x0000f337 cmdPushStr "………。"
0x0000f346 cmdPushStr ""
0x0000f34d cmdPushInt 0x00000195
0x0000f355 cmdPushInt 0x00000001
0x0000f35d cmdMsg
0x0000f35e cmdMsgStart
0x0000f35f cmdMsgWaitButton
0x0000f360 cmdPushInt 0x00000000
0x0000f368 cmdMsgClear
0x0000f369 cmdShowText 0x00000196
0x0000f370 cmdPushStr "「待った」"
0x0000f381 cmdPushStr "瑚太朗"
0x0000f38e cmdPushInt 0x00000196
0x0000f396 cmdPushInt 0x00000001
0x0000f39e cmdMsg
0x0000f39f cmdMsgStart
0x0000f3a0 cmdMsgWaitButton
0x0000f3a1 cmdPushInt 0x00000000
0x0000f3a9 cmdMsgClear
0x0000f3aa cmdPushStr "CGM_SK13"
0x0000f3b9 cmdPushInt 0x00000012
0x0000f3c1 cmdPushInt 0x00000004
0x0000f3c9 cmdPOP
0x0000f3ca cmdPushInt 0x00000000
0x0000f3d2 cmdPushInt 0x00000000
0x0000f3da cmdPushInt 0x00000003
0x0000f3e2 cmdPOP
0x0000f3e3 cmdPushInt 0x00000001
0x0000f3eb cmdPushInt 0x00000001
0x0000f3f3 cmdPushInt 0x00000003
0x0000f3fb cmdPOP
0x0000f3fc cmdPushInt 0x00000011
0x0000f404 cmdPushStr "sys20_adv00"
0x0000f416 cmdFarcall
0x0000f417 cmdPushInt 0x00080000
0x0000f41f cmdPushStr "v/z205200840"
0x0000f432 cmdPushInt 0x00000000
0x0000f43a cmdPCMPlay
0x0000f43b cmdShowText 0x00000197
0x0000f442 cmdPushStr "「なんでしょう」"
0x0000f459 cmdPushStr "咲夜"
0x0000f464 cmdPushInt 0x00000197
0x0000f46c cmdPushInt 0x00000001
0x0000f474 cmdMsg
0x0000f475 cmdMsgStart
0x0000f476 cmdMsgWaitButton
0x0000f477 cmdPushInt 0x00000000
0x0000f47f cmdMsgClear
0x0000f480 cmdShowText 0x00000198
0x0000f487 cmdPushStr "「…進めたら、ちはやが危ないとか？」"
0x0000f4b2 cmdPushStr "瑚太朗"
0x0000f4bf cmdPushInt 0x00000198
0x0000f4c7 cmdPushInt 0x00000001
0x0000f4cf cmdMsg
0x0000f4d0 cmdMsgStart
0x0000f4d1 cmdMsgWaitButton
0x0000f4d2 cmdPushInt 0x00000000
0x0000f4da cmdMsgClear
0x0000f4db cmdPushStr "CGM_SK14"
0x0000f4ea cmdPushInt 0x00000012
0x0000f4f2 cmdPushInt 0x00000004
0x0000f4fa cmdPOP
0x0000f4fb cmdPushInt 0x00000000
0x0000f503 cmdPushInt 0x00000000
0x0000f50b cmdPushInt 0x00000003
0x0000f513 cmdPOP
0x0000f514 cmdPushInt 0x00000001
0x0000f51c cmdPushInt 0x00000001
0x0000f524 cmdPushInt 0x00000003
0x0000f52c cmdPOP
0x0000f52d cmdPushInt 0x00000011
0x0000f535 cmdPushStr "sys20_adv00"
0x0000f547 cmdFarcall
0x0000f548 cmdPushInt 0x00080000
0x0000f550 cmdPushStr "v/z205200844"
0x0000f563 cmdPushInt 0x00000000
0x0000f56b cmdPCMPlay
0x0000f56c cmdShowText 0x00000199
0x0000f573 cmdPushStr "「ちはやさんに危険なことは何ひとつありません」"
0x0000f5a8 cmdPushStr "咲夜"
0x0000f5b3 cmdPushInt 0x00000199
0x0000f5bb cmdPushInt 0x00000001
0x0000f5c3 cmdMsg
0x0000f5c4 cmdMsgStart
0x0000f5c5 cmdMsgWaitButton
0x0000f5c6 cmdPushInt 0x00000000
0x0000f5ce cmdMsgClear
0x0000f5cf cmdPushStr "CGM_SK22"
0x0000f5de cmdPushInt 0x00000012
0x0000f5e6 cmdPushInt 0x00000004
0x0000f5ee cmdPOP
0x0000f5ef cmdPushInt 0x00000000
0x0000f5f7 cmdPushInt 0x00000000
0x0000f5ff cmdPushInt 0x00000003
0x0000f607 cmdPOP
0x0000f608 cmdPushInt 0x00000001
0x0000f610 cmdPushInt 0x00000001
0x0000f618 cmdPushInt 0x00000003
0x0000f620 cmdPOP
0x0000f621 cmdPushInt 0x00000011
0x0000f629 cmdPushStr "sys20_adv00"
0x0000f63b cmdFarcall
0x0000f63c cmdPushInt 0x00080000
0x0000f644 cmdPushStr "v/z205200847"
0x0000f657 cmdPushInt 0x00000000
0x0000f65f cmdPCMPlay
0x0000f660 cmdShowText 0x0000019a
0x0000f667 cmdPushStr "「この私が守りますから」"
0x0000f686 cmdPushStr "咲夜"
0x0000f691 cmdPushInt 0x0000019a
0x0000f699 cmdPushInt 0x00000001
0x0000f6a1 cmdMsg
0x0000f6a2 cmdMsgStart
0x0000f6a3 cmdMsgWaitButton
0x0000f6a4 cmdPushInt 0x00000000
0x0000f6ac cmdMsgClear
0x0000f6ad cmdShowText 0x0000019b
0x0000f6b4 cmdPushStr "「…はあ」"
0x0000f6c5 cmdPushStr "瑚太朗"
0x0000f6d2 cmdPushInt 0x0000019b
0x0000f6da cmdPushInt 0x00000001
0x0000f6e2 cmdMsg
0x0000f6e3 cmdMsgStart
0x0000f6e4 cmdMsgWaitButton
0x0000f6e5 cmdPushInt 0x00000000
0x0000f6ed cmdMsgClear
0x0000f6ee cmdPushStr "CGM_SK14"
0x0000f6fd cmdPushInt 0x00000012
0x0000f705 cmdPushInt 0x00000004
0x0000f70d cmdPOP
0x0000f70e cmdPushInt 0x00000000
0x0000f716 cmdPushInt 0x00000000
0x0000f71e cmdPushInt 0x00000003
0x0000f726 cmdPOP
0x0000f727 cmdPushInt 0x00000001
0x0000f72f cmdPushInt 0x00000001
0x0000f737 cmdPushInt 0x00000003
0x0000f73f cmdPOP
0x0000f740 cmdPushInt 0x00000011
0x0000f748 cmdPushStr "sys20_adv00"
0x0000f75a cmdFarcall
0x0000f75b cmdPushInt 0x00080000
0x0000f763 cmdPushStr "v/z205200851"
0x0000f776 cmdPushInt 0x00000000
0x0000f77e cmdPCMPlay
0x0000f77f cmdShowText 0x0000019c
0x0000f786 cmdPushStr "「もし、ですね」"
0x0000f79d cmdPushStr "咲夜"
0x0000f7a8 cmdPushInt 0x0000019c
0x0000f7b0 cmdPushInt 0x00000001
0x0000f7b8 cmdMsg
0x0000f7b9 cmdMsgStart
0x0000f7ba cmdMsgWaitButton
0x0000f7bb cmdPushInt 0x00000000
0x0000f7c3 cmdMsgClear
0x0000f7c4 cmdPushInt 0x00080000
0x0000f7cc cmdPushStr "v/z205200852"
0x0000f7df cmdPushInt 0x00000000
0x0000f7e7 cmdPCMPlay
0x0000f7e8 cmdShowText 0x0000019d
0x0000f7ef cmdPushStr "「…今のあなたの力に不安があるなら、それなりの準備を」"
0x0000f82c cmdPushStr "咲夜"
0x0000f837 cmdPushInt 0x0000019d
0x0000f83f cmdPushInt 0x00000001
0x0000f847 cmdMsg
0x0000f848 cmdMsgStart
0x0000f849 cmdMsgWaitButton
0x0000f84a cmdPushInt 0x00000000
0x0000f852 cmdMsgClear
0x0000f853 cmdShowText 0x0000019e
0x0000f85a cmdPushStr "「準備って何よ」"
0x0000f871 cmdPushStr "瑚太朗"
0x0000f87e cmdPushInt 0x0000019e
0x0000f886 cmdPushInt 0x00000001
0x0000f88e cmdMsg
0x0000f88f cmdMsgStart
0x0000f890 cmdMsgWaitButton
0x0000f891 cmdPushInt 0x00000000
0x0000f899 cmdMsgClear
0x0000f89a cmdPushStr "CGM_SK15"
0x0000f8a9 cmdPushInt 0x00000012
0x0000f8b1 cmdPushInt 0x00000004
0x0000f8b9 cmdPOP
0x0000f8ba cmdPushInt 0x00000000
0x0000f8c2 cmdPushInt 0x00000000
0x0000f8ca cmdPushInt 0x00000003
0x0000f8d2 cmdPOP
0x0000f8d3 cmdPushInt 0x00000001
0x0000f8db cmdPushInt 0x00000001
0x0000f8e3 cmdPushInt 0x00000003
0x0000f8eb cmdPOP
0x0000f8ec cmdPushInt 0x00000011
0x0000f8f4 cmdPushStr "sys20_adv00"
0x0000f906 cmdFarcall
0x0000f907 cmdPushInt 0x00080000
0x0000f90f cmdPushStr "v/z205200856"
0x0000f922 cmdPushInt 0x00000000
0x0000f92a cmdPCMPlay
0x0000f92b cmdShowText 0x0000019f
0x0000f932 cmdPushStr "「さあ？　これから危険なことをするわけですから、危険に対し必要なことでしょう」"
0x0000f987 cmdPushStr "咲夜"
0x0000f992 cmdPushInt 0x0000019f
0x0000f99a cmdPushInt 0x00000001
0x0000f9a2 cmdMsg
0x0000f9a3 cmdMsgStart
0x0000f9a4 cmdMsgWaitButton
0x0000f9a5 cmdPushInt 0x00000000
0x0000f9ad cmdMsgClear
0x0000f9ae cmdPushStr "CGM_SK14"
0x0000f9bd cmdPushInt 0x00000012
0x0000f9c5 cmdPushInt 0x00000004
0x0000f9cd cmdPOP
0x0000f9ce cmdPushInt 0x00000000
0x0000f9d6 cmdPushInt 0x00000000
0x0000f9de cmdPushInt 0x00000003
0x0000f9e6 cmdPOP
0x0000f9e7 cmdPushInt 0x00000001
0x0000f9ef cmdPushInt 0x00000001
0x0000f9f7 cmdPushInt 0x00000003
0x0000f9ff cmdPOP
0x0000fa00 cmdPushInt 0x00000011
0x0000fa08 cmdPushStr "sys20_adv00"
0x0000fa1a cmdFarcall
0x0000fa1b cmdPushInt 0x00080000
0x0000fa23 cmdPushStr "v/z205200859"
0x0000fa36 cmdPushInt 0x00000000
0x0000fa3e cmdPCMPlay
0x0000fa3f cmdShowText 0x000001a0
0x0000fa46 cmdPushStr "「念のために言っておきます。私はちはやさん以外のために動くことは…」"
0x0000fa91 cmdPushStr "咲夜"
0x0000fa9c cmdPushInt 0x000001a0
0x0000faa4 cmdPushInt 0x00000001
0x0000faac cmdMsg
0x0000faad cmdMsgStart
0x0000faae cmdMsgWaitButton
0x0000faaf cmdPushInt 0x00000000
0x0000fab7 cmdMsgClear
0x0000fab8 cmdPushStr "CGM_SK13"
0x0000fac7 cmdPushInt 0x00000012
0x0000facf cmdPushInt 0x00000004
0x0000fad7 cmdPOP
0x0000fad8 cmdPushInt 0x00000000
0x0000fae0 cmdPushInt 0x00000000
0x0000fae8 cmdPushInt 0x00000003
0x0000faf0 cmdPOP
0x0000faf1 cmdPushInt 0x00000001
0x0000faf9 cmdPushInt 0x00000001
0x0000fb01 cmdPushInt 0x00000003
0x0000fb09 cmdPOP
0x0000fb0a cmdPushInt 0x00000011
0x0000fb12 cmdPushStr "sys20_adv00"
0x0000fb24 cmdFarcall
0x0000fb25 cmdPushInt 0x00080000
0x0000fb2d cmdPushStr "v/z205200862"
0x0000fb40 cmdPushInt 0x00000000
0x0000fb48 cmdPCMPlay
0x0000fb49 cmdShowText 0x000001a1
0x0000fb50 cmdPushStr "「………」"
0x0000fb61 cmdPushStr "咲夜"
0x0000fb6c cmdPushInt 0x000001a1
0x0000fb74 cmdPushInt 0x00000001
0x0000fb7c cmdMsg
0x0000fb7d cmdMsgStart
0x0000fb7e cmdMsgWaitButton
0x0000fb7f cmdPushInt 0x00000000
0x0000fb87 cmdMsgClear
0x0000fb88 cmdPushStr "CGM_SK15"
0x0000fb97 cmdPushInt 0x00000012
0x0000fb9f cmdPushInt 0x00000004
0x0000fba7 cmdPOP
0x0000fba8 cmdPushInt 0x00000000
0x0000fbb0 cmdPushInt 0x00000000
0x0000fbb8 cmdPushInt 0x00000003
0x0000fbc0 cmdPOP
0x0000fbc1 cmdPushInt 0x00000001
0x0000fbc9 cmdPushInt 0x00000001
0x0000fbd1 cmdPushInt 0x00000003
0x0000fbd9 cmdPOP
0x0000fbda cmdPushInt 0x00000011
0x0000fbe2 cmdPushStr "sys20_adv00"
0x0000fbf4 cmdFarcall
0x0000fbf5 cmdPushInt 0x00080000
0x0000fbfd cmdPushStr "v/z205200865"
0x0000fc10 cmdPushInt 0x00000000
0x0000fc18 cmdPCMPlay
0x0000fc19 cmdShowText 0x000001a2
0x0000fc20 cmdPushStr "「まあ少々例外はありますが、基本的にありません」"
0x0000fc57 cmdPushStr "咲夜"
0x0000fc62 cmdPushInt 0x000001a2
0x0000fc6a cmdPushInt 0x00000001
0x0000fc72 cmdMsg
0x0000fc73 cmdMsgStart
0x0000fc74 cmdMsgWaitButton
0x0000fc75 cmdPushInt 0x00000000
0x0000fc7d cmdMsgClear
0x0000fc7e cmdShowText 0x000001a3
0x0000fc85 cmdPushStr "「なんすかそれ」"
0x0000fc9c cmdPushStr "瑚太朗"
0x0000fca9 cmdPushInt 0x000001a3
0x0000fcb1 cmdPushInt 0x00000001
0x0000fcb9 cmdMsg
0x0000fcba cmdMsgStart
0x0000fcbb cmdMsgWaitButton
0x0000fcbc cmdPushInt 0x00000000
0x0000fcc4 cmdMsgClear
0x0000fcc5 cmdPushStr "CGM_SK10"
0x0000fcd4 cmdPushInt 0x00000012
0x0000fcdc cmdPushInt 0x00000004
0x0000fce4 cmdPOP
0x0000fce5 cmdPushInt 0x00000000
0x0000fced cmdPushInt 0x00000000
0x0000fcf5 cmdPushInt 0x00000003
0x0000fcfd cmdPOP
0x0000fcfe cmdPushInt 0x00000001
0x0000fd06 cmdPushInt 0x00000001
0x0000fd0e cmdPushInt 0x00000003
0x0000fd16 cmdPOP
0x0000fd17 cmdPushInt 0x00000011
0x0000fd1f cmdPushStr "sys20_adv00"
0x0000fd31 cmdFarcall
0x0000fd32 cmdPushInt 0x00080000
0x0000fd3a cmdPushStr "v/z205200869"
0x0000fd4d cmdPushInt 0x00000000
0x0000fd55 cmdPCMPlay
0x0000fd56 cmdShowText 0x000001a4
0x0000fd5d cmdPushStr "「では」"
0x0000fd6c cmdPushStr "咲夜"
0x0000fd77 cmdPushInt 0x000001a4
0x0000fd7f cmdPushInt 0x00000001
0x0000fd87 cmdMsg
0x0000fd88 cmdMsgStart
0x0000fd89 cmdMsgWaitButton
0x0000fd8a cmdPushInt 0x00000000
0x0000fd92 cmdMsgClear
0x0000fd93 cmdPushInt 0x000007d0
0x0000fd9b cmdBGMStop
0x0000fd9c cmdPushInt 0x00000000
0x0000fda4 cmdPushInt 0x00000000
0x0000fdac cmdPushInt 0x00000003
0x0000fdb4 cmdPOP
0x0000fdb5 cmdPushInt 0x00000000
0x0000fdbd cmdPushInt 0x00000001
0x0000fdc5 cmdPushInt 0x00000003
0x0000fdcd cmdPOP
0x0000fdce cmdPushInt 0x00000011
0x0000fdd6 cmdPushStr "sys20_adv00"
0x0000fde8 cmdFarcall
0x0000fde9 cmdPushInt 0x00000010
0x0000fdf1 cmdPushStr "vagse/DOOR1"
0x0000fe03 cmdPushInt 0x00000000
0x0000fe0b cmdUnknown(0x3c)
0x0000fe0c cmdShowText 0x000001a5
0x0000fe13 cmdPushStr "ドアの開閉の音。"
0x0000fe2a cmdPushStr ""
0x0000fe31 cmdPushInt 0x000001a5
0x0000fe39 cmdPushInt 0x00000001
0x0000fe41 cmdMsg
0x0000fe42 cmdMsgStart
0x0000fe43 cmdMsgWaitButton
0x0000fe44 cmdPushInt 0x00000000
0x0000fe4c cmdMsgClear
0x0000fe4d cmdShowText 0x000001a6
0x0000fe54 cmdPushStr "…次の瞬間、古びた時計の針の音が聞こえ始めた。"
0x0000fe89 cmdPushStr ""
0x0000fe90 cmdPushInt 0x000001a6
0x0000fe98 cmdPushInt 0x00000001
0x0000fea0 cmdMsg
0x0000fea1 cmdMsgStart
0x0000fea2 cmdMsgWaitButton
0x0000fea3 cmdPushInt 0x00000000
0x0000feab cmdMsgClear
0x0000feac cmdShowText 0x000001a7
0x0000feb3 cmdPushStr "静寂だ。"
0x0000fec2 cmdPushStr ""
0x0000fec9 cmdPushInt 0x000001a7
0x0000fed1 cmdPushInt 0x00000001
0x0000fed9 cmdMsg
0x0000feda cmdMsgStart
0x0000fedb cmdMsgWaitButton
0x0000fedc cmdPushInt 0x00000000
0x0000fee4 cmdMsgClear
0x0000fee5 cmdShowText 0x000001a8
0x0000feec cmdPushStr "「………」"
0x0000fefd cmdPushStr "瑚太朗"
0x0000ff0a cmdPushInt 0x000001a8
0x0000ff12 cmdPushInt 0x00000001
0x0000ff1a cmdMsg
0x0000ff1b cmdMsgStart
0x0000ff1c cmdMsgWaitButton
0x0000ff1d cmdPushInt 0x00000000
0x0000ff25 cmdMsgClear
0x0000ff26 cmdShowText 0x000001a9
0x0000ff2d cmdPushStr "なんなんだ…。"
0x0000ff42 cmdPushStr ""
0x0000ff49 cmdPushInt 0x000001a9
0x0000ff51 cmdPushInt 0x00000001
0x0000ff59 cmdMsg
0x0000ff5a cmdMsgStart
0x0000ff5b cmdMsgWaitButton
0x0000ff5c cmdPushInt 0x00000000
0x0000ff64 cmdMsgClear
0x0000ff65 cmdShowText 0x000001aa
0x0000ff6c cmdPushStr "「止めるべきなのか？」"
0x0000ff89 cmdPushStr "瑚太朗"
0x0000ff96 cmdPushInt 0x000001aa
0x0000ff9e cmdPushInt 0x00000001
0x0000ffa6 cmdMsg
0x0000ffa7 cmdMsgStart
0x0000ffa8 cmdMsgWaitButton
0x0000ffa9 cmdPushInt 0x00000000
0x0000ffb1 cmdMsgClear
0x0000ffb2 cmdShowText 0x000001ab
0x0000ffb9 cmdPushStr "呟く。"
0x0000ffc6 cmdPushStr ""
0x0000ffcd cmdPushInt 0x000001ab
0x0000ffd5 cmdPushInt 0x00000001
0x0000ffdd cmdMsg
0x0000ffde cmdMsgStart
0x0000ffdf cmdMsgWaitButton
0x0000ffe0 cmdPushInt 0x00000000
0x0000ffe8 cmdMsgClear
0x0000ffe9 cmdShowText 0x000001ac
0x0000fff0 cmdPushStr "応えはない。"
0x00010003 cmdPushStr ""
0x0001000a cmdPushInt 0x000001ac
0x00010012 cmdPushInt 0x00000001
0x0001001a cmdMsg
0x0001001b cmdMsgStart
0x0001001c cmdMsgWaitButton
0x0001001d cmdPushInt 0x00000000
0x00010025 cmdMsgClear
0x00010026 cmdShowText 0x000001ad
0x0001002d cmdPushStr "…止めるわけにはいかない。"
0x0001004e cmdPushStr ""
0x00010055 cmdPushInt 0x000001ad
0x0001005d cmdPushInt 0x00000001
0x00010065 cmdMsg
0x00010066 cmdMsgStart
0x00010067 cmdMsgWaitButton
0x00010068 cmdPushInt 0x00000000
0x00010070 cmdMsgClear
0x00010071 cmdShowText 0x000001ae
0x00010078 cmdPushStr "俺にだって、守りたいものはあるんだから。"
0x000100a7 cmdPushStr ""
0x000100ae cmdPushInt 0x000001ae
0x000100b6 cmdPushInt 0x00000001
0x000100be cmdMsg
0x000100bf cmdMsgStart
0x000100c0 cmdMsgWaitButton
0x000100c1 cmdPushInt 0x00000000
0x000100c9 cmdMsgClear
0x000100ca cmdPushInt 0x00000001
0x000100d2 cmdPushInt 0x00000000
0x000100da cmdPushStr "BGM006"
0x000100e7 cmdBGMPlay
0x000100e8 cmdPushInt 0x0002f400
0x000100f0 cmdPushStr "v/z205200882"
0x00010103 cmdPushInt 0x00000000
0x0001010b cmdPCMPlay
0x0001010c cmdShowText 0x000001af
0x00010113 cmdPushStr "「ぎゃああぁーーーっ！！！」"
0x00010136 cmdPushStr "声"
0x0001013f cmdPushInt 0x000001af
0x00010147 cmdPushInt 0x00000001
0x0001014f cmdMsg
0x00010150 cmdMsgStart
0x00010151 cmdMsgWaitButton
0x00010152 cmdPushInt 0x00000000
0x0001015a cmdMsgClear
0x0001015b cmdShowText 0x000001b0
0x00010162 cmdPushStr "「………」"
0x00010173 cmdPushStr "瑚太朗"
0x00010180 cmdPushInt 0x000001b0
0x00010188 cmdPushInt 0x00000001
0x00010190 cmdMsg
0x00010191 cmdMsgStart
0x00010192 cmdMsgWaitButton
0x00010193 cmdPushInt 0x00000000
0x0001019b cmdMsgClear
0x0001019c cmdShowText 0x000001b1
0x000101a3 cmdPushStr "重苦しい空気を引き裂く悲鳴が。"
0x000101c8 cmdPushStr ""
0x000101cf cmdPushInt 0x000001b1
0x000101d7 cmdPushInt 0x00000001
0x000101df cmdMsg
0x000101e0 cmdMsgStart
0x000101e1 cmdMsgWaitButton
0x000101e2 cmdPushInt 0x00000000
0x000101ea cmdMsgClear
0x000101eb cmdShowText 0x000001b2
0x000101f2 cmdPushStr "ベランダを見ると、ちはやが木にぶら下がっていた。"
0x00010229 cmdPushStr ""
0x00010230 cmdPushInt 0x000001b2
0x00010238 cmdPushInt 0x00000001
0x00010240 cmdMsg
0x00010241 cmdMsgStart
0x00010242 cmdMsgWaitButton
0x00010243 cmdPushInt 0x00000000
0x0001024b cmdMsgClear
0x0001024c cmdShowText 0x000001b3
0x00010253 cmdPushStr "「おたく高い木好きね」"
0x00010270 cmdPushStr "瑚太朗"
0x0001027d cmdPushInt 0x000001b3
0x00010285 cmdPushInt 0x00000001
0x0001028d cmdMsg
0x0001028e cmdMsgStart
0x0001028f cmdMsgWaitButton
0x00010290 cmdPushInt 0x00000000
0x00010298 cmdMsgClear
0x00010299 cmdPushInt 0x0002f400
0x000102a1 cmdPushStr "v/z205200887"
0x000102b4 cmdPushInt 0x00000000
0x000102bc cmdPCMPlay
0x000102bd cmdShowText 0x000001b4
0x000102c4 cmdPushStr "「だだだって猫がっ！！」"
0x000102e3 cmdPushStr "ちはや"
0x000102f0 cmdPushInt 0x000001b4
0x000102f8 cmdPushInt 0x00000001
0x00010300 cmdMsg
0x00010301 cmdMsgStart
0x00010302 cmdMsgWaitButton
0x00010303 cmdPushInt 0x00000000
0x0001030b cmdMsgClear
0x0001030c cmdPushInt 0x00000010
0x00010314 cmdPushStr "vagse/NEKO4"
0x00010326 cmdPushInt 0x00000001
0x0001032e cmdUnknown(0x3c)
0x0001032f cmdShowText 0x000001b5
0x00010336 cmdPushStr "「にゃーん」"
0x00010349 cmdPushStr "猫"
0x00010352 cmdPushInt 0x000001b5
0x0001035a cmdPushInt 0x00000001
0x00010362 cmdMsg
0x00010363 cmdMsgStart
0x00010364 cmdMsgWaitButton
0x00010365 cmdPushInt 0x00000000
0x0001036d cmdMsgClear
0x0001036e cmdShowText 0x000001b6
0x00010375 cmdPushStr "ちはやの背中に猫が乗っていた。"
0x0001039a cmdPushStr ""
0x000103a1 cmdPushInt 0x000001b6
0x000103a9 cmdPushInt 0x00000001
0x000103b1 cmdMsg
0x000103b2 cmdMsgStart
0x000103b3 cmdMsgWaitButton
0x000103b4 cmdPushInt 0x00000000
0x000103bc cmdMsgClear
0x000103bd cmdPushInt 0x0002f400
0x000103c5 cmdPushStr "v/z205200892"
0x000103d8 cmdPushInt 0x00000000
0x000103e0 cmdPCMPlay
0x000103e1 cmdShowText 0x000001b7
0x000103e8 cmdPushStr "「危ないから下ろしてあげようとっ」"
0x00010411 cmdPushStr "ちはや"
0x0001041e cmdPushInt 0x000001b7
0x00010426 cmdPushInt 0x00000001
0x0001042e cmdMsg
0x0001042f cmdMsgStart
0x00010430 cmdMsgWaitButton
0x00010431 cmdPushInt 0x00000000
0x00010439 cmdMsgClear
0x0001043a cmdShowText 0x000001b8
0x00010441 cmdPushStr "「む…」"
0x00010450 cmdPushStr "瑚太朗"
0x0001045d cmdPushInt 0x000001b8
0x00010465 cmdPushInt 0x00000001
0x0001046d cmdMsg
0x0001046e cmdMsgStart
0x0001046f cmdMsgWaitButton
0x00010470 cmdPushInt 0x00000000
0x00010478 cmdMsgClear
0x00010479 cmdShowText 0x000001b9
0x00010480 cmdPushStr "「にゃん？」"
0x00010493 cmdPushStr "猫"
0x0001049c cmdPushInt 0x000001b9
0x000104a4 cmdPushInt 0x00000001
0x000104ac cmdMsg
0x000104ad cmdMsgStart
0x000104ae cmdMsgWaitButton
0x000104af cmdPushInt 0x00000000
0x000104b7 cmdMsgClear
0x000104b8 cmdShowText 0x000001ba
0x000104bf cmdPushStr "「カウっ」"
0x000104d0 cmdPushStr "瑚太朗"
0x000104dd cmdPushInt 0x000001ba
0x000104e5 cmdPushInt 0x00000001
0x000104ed cmdMsg
0x000104ee cmdMsgStart
0x000104ef cmdMsgWaitButton
0x000104f0 cmdPushInt 0x00000000
0x000104f8 cmdMsgClear
0x000104f9 cmdShowText 0x000001bb
0x00010500 cmdPushStr "威嚇する。"
0x00010511 cmdPushStr ""
0x00010518 cmdPushInt 0x000001bb
0x00010520 cmdPushInt 0x00000001
0x00010528 cmdMsg
0x00010529 cmdMsgStart
0x0001052a cmdMsgWaitButton
0x0001052b cmdPushInt 0x00000000
0x00010533 cmdMsgClear
0x00010534 cmdShowText 0x000001bc
0x0001053b cmdPushStr "「むにゃっ」"
0x0001054e cmdPushStr "猫"
0x00010557 cmdPushInt 0x000001bc
0x0001055f cmdPushInt 0x00000001
0x00010567 cmdMsg
0x00010568 cmdMsgStart
0x00010569 cmdMsgWaitButton
0x0001056a cmdPushInt 0x00000000
0x00010572 cmdMsgClear
0x00010573 cmdShowText 0x000001bd
0x0001057a cmdPushStr "一声吼えると、とととっ、と華麗に幹を伝って降りていった。"
0x000105b9 cmdPushStr ""
0x000105c0 cmdPushInt 0x000001bd
0x000105c8 cmdPushInt 0x00000001
0x000105d0 cmdMsg
0x000105d1 cmdMsgStart
0x000105d2 cmdMsgWaitButton
0x000105d3 cmdPushInt 0x00000000
0x000105db cmdMsgClear
0x000105dc cmdShowText 0x000001be
0x000105e3 cmdPushStr "「…というわけだが、いかがだろう」"
0x0001060c cmdPushStr "瑚太朗"
0x00010619 cmdPushInt 0x000001be
0x00010621 cmdPushInt 0x00000001
0x00010629 cmdMsg
0x0001062a cmdMsgStart
0x0001062b cmdMsgWaitButton
0x0001062c cmdPushInt 0x00000000
0x00010634 cmdMsgClear
0x00010635 cmdPushInt 0x0002f400
0x0001063d cmdPushStr "v/z205200900"
0x00010650 cmdPushInt 0x00000000
0x00010658 cmdPCMPlay
0x00010659 cmdShowText 0x000001bf
0x00010660 cmdPushStr "「………」"
0x00010671 cmdPushStr "ちはや"
0x0001067e cmdPushInt 0x000001bf
0x00010686 cmdPushInt 0x00000001
0x0001068e cmdMsg
0x0001068f cmdMsgStart
0x00010690 cmdMsgWaitButton
0x00010691 cmdPushInt 0x00000000
0x00010699 cmdMsgClear
0x0001069a cmdShowText 0x000001c0
0x000106a1 cmdPushStr "「大人猫だったらこれくらいは別に大丈夫なんよね…子猫だと危険だけど」"
0x000106ec cmdPushStr "瑚太朗"
0x000106f9 cmdPushInt 0x000001c0
0x00010701 cmdPushInt 0x00000001
0x00010709 cmdMsg
0x0001070a cmdMsgStart
0x0001070b cmdMsgWaitButton
0x0001070c cmdPushInt 0x00000000
0x00010714 cmdMsgClear
0x00010715 cmdPushInt 0x0002f400
0x0001071d cmdPushStr "v/z205200902"
0x00010730 cmdPushInt 0x00000000
0x00010738 cmdPCMPlay
0x00010739 cmdShowText 0x000001c1
0x00010740 cmdPushStr "「う、うぅ…」"
0x00010755 cmdPushStr "ちはや"
0x00010762 cmdPushInt 0x000001c1
0x0001076a cmdPushInt 0x00000001
0x00010772 cmdMsg
0x00010773 cmdMsgStart
0x00010774 cmdMsgWaitButton
0x00010775 cmdPushInt 0x00000000
0x0001077d cmdMsgClear
0x0001077e cmdShowText 0x000001c2
0x00010785 cmdPushStr "みし。"
0x00010792 cmdPushStr ""
0x00010799 cmdPushInt 0x000001c2
0x000107a1 cmdPushInt 0x00000001
0x000107a9 cmdMsg
0x000107aa cmdMsgStart
0x000107ab cmdMsgWaitButton
0x000107ac cmdPushInt 0x00000000
0x000107b4 cmdMsgClear
0x000107b5 cmdPushInt 0x0002f400
0x000107bd cmdPushStr "v/z205200904"
0x000107d0 cmdPushInt 0x00000000
0x000107d8 cmdPCMPlay
0x000107d9 cmdShowText 0x000001c3
0x000107e0 cmdPushStr "「あ」"
0x000107ed cmdPushStr "ちはや"
0x000107fa cmdPushInt 0x000001c3
0x00010802 cmdPushInt 0x00000001
0x0001080a cmdMsg
0x0001080b cmdMsgStart
0x0001080c cmdMsgWaitButton
0x0001080d cmdPushInt 0x00000000
0x00010815 cmdMsgClear
0x00010816 cmdShowText 0x000001c4
0x0001081d cmdPushStr "がくん、とちはやの頭が下がった。"
0x00010844 cmdPushStr ""
0x0001084b cmdPushInt 0x000001c4
0x00010853 cmdPushInt 0x00000001
0x0001085b cmdMsg
0x0001085c cmdMsgStart
0x0001085d cmdMsgWaitButton
0x0001085e cmdPushInt 0x00000000
0x00010866 cmdMsgClear
0x00010867 cmdPushInt 0x0002f400
0x0001086f cmdPushStr "v/z205200906"
0x00010882 cmdPushInt 0x00000000
0x0001088a cmdPCMPlay
0x0001088b cmdShowText 0x000001c5
0x00010892 cmdPushStr "「お、折れ、折れっるっ」"
0x000108b1 cmdPushStr "ちはや"
0x000108be cmdPushInt 0x000001c5
0x000108c6 cmdPushInt 0x00000001
0x000108ce cmdMsg
0x000108cf cmdMsgStart
0x000108d0 cmdMsgWaitButton
0x000108d1 cmdPushInt 0x00000000
0x000108d9 cmdMsgClear
0x000108da cmdShowText 0x000001c6
0x000108e1 cmdPushStr "「やべ…」"
0x000108f2 cmdPushStr "瑚太朗"
0x000108ff cmdPushInt 0x000001c6
0x00010907 cmdPushInt 0x00000001
0x0001090f cmdMsg
0x00010910 cmdMsgStart
0x00010911 cmdMsgWaitButton
0x00010912 cmdPushInt 0x00000000
0x0001091a cmdMsgClear
0x0001091b cmdShowText 0x000001c7
0x00010922 cmdPushStr "ちょっと常人には厳しい高さだ。"
0x00010947 cmdPushStr ""
0x0001094e cmdPushInt 0x000001c7
0x00010956 cmdPushInt 0x00000001
0x0001095e cmdMsg
0x0001095f cmdMsgStart
0x00010960 cmdMsgWaitButton
0x00010961 cmdPushInt 0x00000000
0x00010969 cmdMsgClear
0x0001096a cmdShowText 0x000001c8
0x00010971 cmdPushStr "いや…この高さから落ちる程度なら、過去の実績からちはやなら無傷ではあるだろうけど。"
0x000109ca cmdPushStr ""
0x000109d1 cmdPushInt 0x000001c8
0x000109d9 cmdPushInt 0x00000001
0x000109e1 cmdMsg
0x000109e2 cmdMsgStart
0x000109e3 cmdMsgWaitButton
0x000109e4 cmdPushInt 0x00000000
0x000109ec cmdMsgClear
0x000109ed cmdShowText 0x000001c9
0x000109f4 cmdPushStr "「待ってなっ」"
0x00010a09 cmdPushStr "瑚太朗"
0x00010a16 cmdPushInt 0x000001c9
0x00010a1e cmdPushInt 0x00000001
0x00010a26 cmdMsg
0x00010a27 cmdMsgStart
0x00010a28 cmdMsgWaitButton
0x00010a29 cmdPushInt 0x00000000
0x00010a31 cmdMsgClear
0x00010a32 cmdShowText 0x000001ca
0x00010a39 cmdPushStr "…えーと。"
0x00010a4a cmdPushStr ""
0x00010a51 cmdPushInt 0x000001ca
0x00010a59 cmdPushInt 0x00000001
0x00010a61 cmdMsg
0x00010a62 cmdMsgStart
0x00010a63 cmdMsgWaitButton
0x00010a64 cmdPushInt 0x00000000
0x00010a6c cmdMsgClear
0x00010a6d cmdShowText 0x000001cb
0x00010a74 cmdPushStr "なんかに使っていたと思われる、短い物干し竿がベランダに転がっていた。"
0x00010abf cmdPushStr ""
0x00010ac6 cmdPushInt 0x000001cb
0x00010ace cmdPushInt 0x00000001
0x00010ad6 cmdMsg
0x00010ad7 cmdMsgStart
0x00010ad8 cmdMsgWaitButton
0x00010ad9 cmdPushInt 0x00000000
0x00010ae1 cmdMsgClear
0x00010ae2 cmdShowText 0x000001cc
0x00010ae9 cmdPushStr "これを差し伸べて、ちはやの体重を支えて、それを引き上げる。"
0x00010b2a cmdPushStr ""
0x00010b31 cmdPushInt 0x000001cc
0x00010b39 cmdPushInt 0x00000001
0x00010b41 cmdMsg
0x00010b42 cmdMsgStart
0x00010b43 cmdMsgWaitButton
0x00010b44 cmdPushInt 0x00000000
0x00010b4c cmdMsgClear
0x00010b4d cmdShowText 0x000001cd
0x00010b54 cmdPushStr "「…パワーファイター…」"
0x00010b73 cmdPushStr "瑚太朗"
0x00010b80 cmdPushInt 0x000001cd
0x00010b88 cmdPushInt 0x00000001
0x00010b90 cmdMsg
0x00010b91 cmdMsgStart
0x00010b92 cmdMsgWaitButton
0x00010b93 cmdPushInt 0x00000000
0x00010b9b cmdMsgClear
0x00010b9c cmdShowText 0x000001ce
0x00010ba3 cmdPushStr "それなりに強化をしないといけない。"
0x00010bcc cmdPushStr ""
0x00010bd3 cmdPushInt 0x000001ce
0x00010bdb cmdPushInt 0x00000001
0x00010be3 cmdMsg
0x00010be4 cmdMsgStart
0x00010be5 cmdMsgWaitButton
0x00010be6 cmdPushInt 0x00000000
0x00010bee cmdMsgClear
0x00010bef cmdShowText 0x000001cf
0x00010bf6 cmdPushStr "…ざっと見積もっても、部活も入ってない通常の男子高校生の域は簡単に凌駕する。"
0x00010c49 cmdPushStr ""
0x00010c50 cmdPushInt 0x000001cf
0x00010c58 cmdPushInt 0x00000001
0x00010c60 cmdMsg
0x00010c61 cmdMsgStart
0x00010c62 cmdMsgWaitButton
0x00010c63 cmdPushInt 0x00000000
0x00010c6b cmdMsgClear
0x00010c6c cmdShowText 0x000001d0
0x00010c73 cmdPushInt 0x00000001
0x00010c7b cmdPushStr "いや…"
0x00010c88 cmdPushInt 0x000001d1
0x00010c90 cmdPushInt 0x00000001
0x00010c98 cmdPushStr "ちはやを助ける"
0x00010cad cmdPushInt 0x000001d0
0x00010cb5 cmdPushInt 0x00000002
0x00010cbd cmdPushInt 0x00000000
0x00010cc5 cmdPushInt 0x00000000
0x00010ccd cmdPushInt 0x00000001
0x00010cd5 cmdSub
0x00010cd6 cmdPushInt 0x00000022
0x00010cde cmdUnknown(0x1d)
0x00010cdf cmdPushInt 0x00000022
0x00010ce7 cmdPushIntFromIntArray
0x00010ceb cmdPushInt 0x00000000
0x00010cf3 cmdEQ
0x00010cf4 cmdPushInt 0x00012c30
0x00010cfc cmdIf
0x00010cfd cmdShowText 0x000001d2
0x00010d04 cmdPushStr "「仕方ねえ…ッ」"
0x00010d1b cmdPushStr "瑚太朗"
0x00010d28 cmdPushInt 0x000001d2
0x00010d30 cmdPushInt 0x00000001
0x00010d38 cmdMsg
0x00010d39 cmdMsgStart
0x00010d3a cmdMsgWaitButton
0x00010d3b cmdPushInt 0x00000000
0x00010d43 cmdMsgClear
0x00010d44 cmdShowText 0x000001d3
0x00010d4b cmdPushStr "急がないといけない。"
0x00010d66 cmdPushStr ""
0x00010d6d cmdPushInt 0x000001d3
0x00010d75 cmdPushInt 0x00000001
0x00010d7d cmdMsg
0x00010d7e cmdMsgStart
0x00010d7f cmdMsgWaitButton
0x00010d80 cmdPushInt 0x00000000
0x00010d88 cmdMsgClear
0x00010d89 cmdShowText 0x000001d4
0x00010d90 cmdPushStr "手に物干し竿を取り。"
0x00010dab cmdPushStr ""
0x00010db2 cmdPushInt 0x000001d4
0x00010dba cmdPushInt 0x00000001
0x00010dc2 cmdMsg
0x00010dc3 cmdMsgStart
0x00010dc4 cmdMsgWaitButton
0x00010dc5 cmdPushInt 0x00000000
0x00010dcd cmdMsgClear
0x00010dce cmdShowText 0x000001d5
0x00010dd5 cmdPushStr "集中…。"
0x00010de4 cmdPushStr ""
0x00010deb cmdPushInt 0x000001d5
0x00010df3 cmdPushInt 0x00000001
0x00010dfb cmdMsg
0x00010dfc cmdMsgStart
0x00010dfd cmdMsgWaitButton
0x00010dfe cmdPushInt 0x00000000
0x00010e06 cmdMsgClear
0x00010e07 cmdPushInt 0x0002f400
0x00010e0f cmdPushStr "v/z205200931"
0x00010e22 cmdPushInt 0x00000000
0x00010e2a cmdPCMPlay
0x00010e2b cmdShowText 0x000001d6
0x00010e32 cmdPushStr "「わ、わー！　何してんですか早くそれーっ！！」"
0x00010e67 cmdPushStr "ちはや"
0x00010e74 cmdPushInt 0x000001d6
0x00010e7c cmdPushInt 0x00000001
0x00010e84 cmdMsg
0x00010e85 cmdMsgStart
0x00010e86 cmdMsgWaitButton
0x00010e87 cmdPushInt 0x00000000
0x00010e8f cmdMsgClear
0x00010e90 cmdShowText 0x000001d7
0x00010e97 cmdPushStr "「だーってろっ！！」"
0x00010eb2 cmdPushStr "瑚太朗"
0x00010ebf cmdPushInt 0x000001d7
0x00010ec7 cmdPushInt 0x00000001
0x00010ecf cmdMsg
0x00010ed0 cmdMsgStart
0x00010ed1 cmdMsgWaitButton
0x00010ed2 cmdPushInt 0x00000000
0x00010eda cmdMsgClear
0x00010edb cmdShowText 0x000001d8
0x00010ee2 cmdPushStr "もっかい…！！"
0x00010ef7 cmdPushStr ""
0x00010efe cmdPushInt 0x000001d8
0x00010f06 cmdPushInt 0x00000001
0x00010f0e cmdMsg
0x00010f0f cmdMsgStart
0x00010f10 cmdMsgWaitButton
0x00010f11 cmdPushInt 0x00000000
0x00010f19 cmdMsgClear
0x00010f1a cmdShowText 0x000001d9
0x00010f21 cmdPushStr "「………」"
0x00010f32 cmdPushStr "瑚太朗"
0x00010f3f cmdPushInt 0x000001d9
0x00010f47 cmdPushInt 0x00000001
0x00010f4f cmdMsg
0x00010f50 cmdMsgStart
0x00010f51 cmdMsgWaitButton
0x00010f52 cmdPushInt 0x00000000
0x00010f5a cmdMsgClear
0x00010f5b cmdPushStr "C:NY_MV_AURORA_BLACK.PAK"
0x00010f7a cmdGetPrefont
0x00010f7b cmdPushStr "NY_MV_AURORA_BLACK.PAK"
0x00010f98 cmdPushInt 0x00000031
0x00010fa0 cmdPushInt 0x00000004
0x00010fa8 cmdPOP
0x00010fa9 cmdPushInt 0x00000000
0x00010fb1 cmdPushInt 0x0000036f
0x00010fb9 cmdPushInt 0x00000003
0x00010fc1 cmdPOP
0x00010fc2 cmdPushInt 0x00000000
0x00010fca cmdPushInt 0x00000375
0x00010fd2 cmdPushInt 0x00000003
0x00010fda cmdPOP
0x00010fdb cmdPushInt 0x00000000
0x00010fe3 cmdPushInt 0x00000377
0x00010feb cmdPushInt 0x00000003
0x00010ff3 cmdPOP
0x00010ff4 cmdPushInt 0x00000002
0x00010ffc cmdPushStr "sys40_sub"
0x0001100c cmdFarcall
0x0001100d cmdPushInt 0x00000032
0x00011015 cmdPushIntFromIntArray
0x00011019 cmdPushInt 0x00000001
0x00011021 cmdAdd
0x00011022 cmdPushInt 0x00000032
0x0001102a cmdPushInt 0x00000003
0x00011032 cmdPOP
0x00011033 cmdPushStr "C:MN_MH_ROTATE00"
0x0001104a cmdGetPrefont
0x0001104b cmdPushInt 0x000000a0
0x00011053 cmdPushIntFromIntArray
0x00011057 cmdPushInt 0x0000000a
0x0001105f cmdAdd
0x00011060 cmdPushInt 0x000000a1
0x00011068 cmdPushInt 0x00000003
0x00011070 cmdPOP
0x00011071 cmdPushInt 0x00000002
0x00011079 cmdPushInt 0x000000a6
0x00011081 cmdPushInt 0x00000003
0x00011089 cmdPOP
0x0001108a cmdShowText 0x000001da
0x00011091 cmdPushStr "…よし。"
0x000110a0 cmdPushStr ""
0x000110a7 cmdPushInt 0x000001da
0x000110af cmdPushInt 0x00000001
0x000110b7 cmdMsg
0x000110b8 cmdMsgStart
0x000110b9 cmdMsgWaitButton
0x000110ba cmdPushInt 0x00000000
0x000110c2 cmdMsgClear
0x000110c3 cmdShowText 0x000001db
0x000110ca cmdPushStr "いける。"
0x000110d9 cmdPushStr ""
0x000110e0 cmdPushInt 0x000001db
0x000110e8 cmdPushInt 0x00000001
0x000110f0 cmdMsg
0x000110f1 cmdMsgStart
0x000110f2 cmdMsgWaitButton
0x000110f3 cmdPushInt 0x00000000
0x000110fb cmdMsgClear
0x000110fc cmdShowText 0x000001dc
0x00011103 cmdPushStr "「つかまれっ」"
0x00011118 cmdPushStr "瑚太朗"
0x00011125 cmdPushInt 0x000001dc
0x0001112d cmdPushInt 0x00000001
0x00011135 cmdMsg
0x00011136 cmdMsgStart
0x00011137 cmdMsgWaitButton
0x00011138 cmdPushInt 0x00000000
0x00011140 cmdMsgClear
0x00011141 cmdPushInt 0x0002f400
0x00011149 cmdPushStr "v/z205200941"
0x0001115c cmdPushInt 0x00000000
0x00011164 cmdPCMPlay
0x00011165 cmdShowText 0x000001dd
0x0001116c cmdPushStr "「は、はい？　あ、ああっ」"
0x0001118d cmdPushStr "ちはや"
0x0001119a cmdPushInt 0x000001dd
0x000111a2 cmdPushInt 0x00000001
0x000111aa cmdMsg
0x000111ab cmdMsgStart
0x000111ac cmdMsgWaitButton
0x000111ad cmdPushInt 0x00000000
0x000111b5 cmdMsgClear
0x000111b6 cmdPushInt 0x00000010
0x000111be cmdPushStr "vagse/GASAGASA"
0x000111d3 cmdPushInt 0x00000002
0x000111db cmdUnknown(0x3c)
0x000111dc cmdShowText 0x000001de
0x000111e3 cmdPushStr "みしみし、ばささと実に植物らしい音を立てて、さらにちはやの頭が下がる。"
0x00011230 cmdPushStr ""
0x00011237 cmdPushInt 0x000001de
0x0001123f cmdPushInt 0x00000001
0x00011247 cmdMsg
0x00011248 cmdMsgStart
0x00011249 cmdMsgWaitButton
0x0001124a cmdPushInt 0x00000000
0x00011252 cmdMsgClear
0x00011253 cmdShowText 0x000001df
0x0001125a cmdPushStr "「！！」"
0x00011269 cmdPushStr "瑚太朗"
0x00011276 cmdPushInt 0x000001df
0x0001127e cmdPushInt 0x00000001
0x00011286 cmdMsg
0x00011287 cmdMsgStart
0x00011288 cmdMsgWaitButton
0x00011289 cmdPushInt 0x00000000
0x00011291 cmdMsgClear
0x00011292 cmdShowText 0x000001e0
0x00011299 cmdPushStr "手ごたえ。"
0x000112aa cmdPushStr ""
0x000112b1 cmdPushInt 0x000001e0
0x000112b9 cmdPushInt 0x00000001
0x000112c1 cmdMsg
0x000112c2 cmdMsgStart
0x000112c3 cmdMsgWaitButton
0x000112c4 cmdPushInt 0x00000000
0x000112cc cmdMsgClear
0x000112cd cmdPushInt 0x00000004
0x000112d5 cmdPushInt 0x0000036e
0x000112dd cmdPushInt 0x00000003
0x000112e5 cmdPOP
0x000112e6 cmdPushInt 0x00000067
0x000112ee cmdPushStr "sys40_sub"
0x000112fe cmdFarcall
0x000112ff cmdShowText 0x000001e1
0x00011306 cmdPushStr "「一本釣りじゃあああぁぁあぁーーーッ！！！」"
0x00011339 cmdPushStr "瑚太朗"
0x00011346 cmdPushInt 0x000001e1
0x0001134e cmdPushInt 0x00000001
0x00011356 cmdMsg
0x00011357 cmdMsgStart
0x00011358 cmdMsgWaitButton
0x00011359 cmdPushInt 0x00000000
0x00011361 cmdMsgClear
0x00011362 cmdPushInt 0x0002f400
0x0001136a cmdPushStr "v/z205200946"
0x0001137d cmdPushInt 0x00000000
0x00011385 cmdPCMPlay
0x00011386 cmdShowText 0x000001e2
0x0001138d cmdPushStr "「わ、わぁーっ！」"
0x000113a6 cmdPushStr "ちはや"
0x000113b3 cmdPushInt 0x000001e2
0x000113bb cmdPushInt 0x00000001
0x000113c3 cmdMsg
0x000113c4 cmdMsgStart
0x000113c5 cmdMsgWaitButton
0x000113c6 cmdPushInt 0x00000000
0x000113ce cmdMsgClear
0x000113cf cmdShowText 0x000001e3
0x000113d6 cmdPushStr "一気に引っ張り上げ…！"
0x000113f3 cmdPushStr ""
0x000113fa cmdPushInt 0x000001e3
0x00011402 cmdPushInt 0x00000001
0x0001140a cmdMsg
0x0001140b cmdMsgStart
0x0001140c cmdMsgWaitButton
0x0001140d cmdPushInt 0x00000000
0x00011415 cmdMsgClear
0x00011416 cmdPushInt 0x00000000
0x0001141e cmdPushInt 0x0000036e
0x00011426 cmdPushInt 0x00000003
0x0001142e cmdPOP
0x0001142f cmdShowText 0x000001e4
0x00011436 cmdPushStr "「あ、やっぱりそこまでは無理」"
0x0001145b cmdPushStr "瑚太朗"
0x00011468 cmdPushInt 0x000001e4
0x00011470 cmdPushInt 0x00000001
0x00011478 cmdMsg
0x00011479 cmdMsgStart
0x0001147a cmdMsgWaitButton
0x0001147b cmdPushInt 0x00000000
0x00011483 cmdMsgClear
0x00011484 cmdShowText 0x000001e5
0x0001148b cmdPushStr "がくん。"
0x0001149a cmdPushStr ""
0x000114a1 cmdPushInt 0x000001e5
0x000114a9 cmdPushInt 0x00000001
0x000114b1 cmdMsg
0x000114b2 cmdMsgStart
0x000114b3 cmdMsgWaitButton
0x000114b4 cmdPushInt 0x00000000
0x000114bc cmdMsgClear
0x000114bd cmdPushInt 0x00000006
0x000114c5 cmdPushInt 0x0000036d
0x000114cd cmdPushInt 0x00000003
0x000114d5 cmdPOP
0x000114d6 cmdPushInt 0x00000066
0x000114de cmdPushStr "sys40_sub"
0x000114ee cmdFarcall
0x000114ef cmdPushInt 0x00000010
0x000114f7 cmdPushStr "vagse/CRASH"
0x00011509 cmdPushInt 0x00000003
0x00011511 cmdUnknown(0x3c)
0x00011512 cmdPushInt 0x0002f400
0x0001151a cmdPushStr "v/z205200950"
0x0001152d cmdPushInt 0x00000000
0x00011535 cmdPCMPlay
0x00011536 cmdShowText 0x000001e6
0x0001153d cmdPushStr "「ぎゃああぁーっ！！！」"
0x0001155c cmdPushStr "ちはや"
0x00011569 cmdPushInt 0x000001e6
0x00011571 cmdPushInt 0x00000001
0x00011579 cmdMsg
0x0001157a cmdMsgStart
0x0001157b cmdMsgWaitButton
0x0001157c cmdPushInt 0x00000000
0x00011584 cmdMsgClear
0x00011585 cmdShowText 0x000001e7
0x0001158c cmdPushStr "でもちはやを下の階のベランダに放り込むのには成功した。"
0x000115c9 cmdPushStr ""
0x000115d0 cmdPushInt 0x000001e7
0x000115d8 cmdPushInt 0x00000001
0x000115e0 cmdMsg
0x000115e1 cmdMsgStart
0x000115e2 cmdMsgWaitButton
0x000115e3 cmdPushInt 0x00000000
0x000115eb cmdMsgClear
0x000115ec cmdShowText 0x000001e8
0x000115f3 cmdPushStr "「ふう…」"
0x00011604 cmdPushStr "瑚太朗"
0x00011611 cmdPushInt 0x000001e8
0x00011619 cmdPushInt 0x00000001
0x00011621 cmdMsg
0x00011622 cmdMsgStart
0x00011623 cmdMsgWaitButton
0x00011624 cmdPushInt 0x00000000
0x0001162c cmdMsgClear
0x0001162d cmdShowText 0x000001e9
0x00011634 cmdPushStr "やってやったな…。"
0x0001164d cmdPushStr ""
0x00011654 cmdPushInt 0x000001e9
0x0001165c cmdPushInt 0x00000001
0x00011664 cmdMsg
0x00011665 cmdMsgStart
0x00011666 cmdMsgWaitButton
0x00011667 cmdPushInt 0x00000000
0x0001166f cmdMsgClear
0x00011670 cmdShowText 0x000001ea
0x00011677 cmdPushStr "タバコは吸えねえが、今この状態だったら最上の一服を味わえたところだろう…。"
0x000116c8 cmdPushStr ""
0x000116cf cmdPushInt 0x000001ea
0x000116d7 cmdPushInt 0x00000001
0x000116df cmdMsg
0x000116e0 cmdMsgStart
0x000116e1 cmdMsgWaitButton
0x000116e2 cmdPushInt 0x00000000
0x000116ea cmdMsgClear
0x000116eb cmdShowText 0x000001eb
0x000116f2 cmdPushStr "なんか下の階が大騒ぎみたいだが、そんなことはどうでもいいぜ…。"
0x00011737 cmdPushStr ""
0x0001173e cmdPushInt 0x000001eb
0x00011746 cmdPushInt 0x00000001
0x0001174e cmdMsg
0x0001174f cmdMsgStart
0x00011750 cmdMsgWaitButton
0x00011751 cmdPushInt 0x00000000
0x00011759 cmdMsgClear
0x0001175a cmdShowText 0x000001ec
0x00011761 cmdPushStr "「うむ…」"
0x00011772 cmdPushStr "瑚太朗"
0x0001177f cmdPushInt 0x000001ec
0x00011787 cmdPushInt 0x00000001
0x0001178f cmdMsg
0x00011790 cmdMsgStart
0x00011791 cmdMsgWaitButton
0x00011792 cmdPushInt 0x00000000
0x0001179a cmdMsgClear
0x0001179b cmdShowText 0x000001ed
0x000117a2 cmdPushStr "空気を吸う。"
0x000117b5 cmdPushStr ""
0x000117bc cmdPushInt 0x000001ed
0x000117c4 cmdPushInt 0x00000001
0x000117cc cmdMsg
0x000117cd cmdMsgStart
0x000117ce cmdMsgWaitButton
0x000117cf cmdPushInt 0x00000000
0x000117d7 cmdMsgClear
0x000117d8 cmdShowText 0x000001ee
0x000117df cmdPushStr "うめえ…。"
0x000117f0 cmdPushStr ""
0x000117f7 cmdPushInt 0x000001ee
0x000117ff cmdPushInt 0x00000001
0x00011807 cmdMsg
0x00011808 cmdMsgStart
0x00011809 cmdMsgWaitButton
0x0001180a cmdPushInt 0x00000000
0x00011812 cmdMsgClear
0x00011813 cmdShowText 0x000001ef
0x0001181a cmdPushStr "空気ってなんてうめえんだ…。"
0x0001183d cmdPushStr ""
0x00011844 cmdPushInt 0x000001ef
0x0001184c cmdPushInt 0x00000001
0x00011854 cmdMsg
0x00011855 cmdMsgStart
0x00011856 cmdMsgWaitButton
0x00011857 cmdPushInt 0x00000000
0x0001185f cmdMsgClear
0x00011860 cmdShowText 0x000001f0
0x00011867 cmdPushStr "どたどたどたどた。"
0x00011880 cmdPushStr ""
0x00011887 cmdPushInt 0x000001f0
0x0001188f cmdPushInt 0x00000001
0x00011897 cmdMsg
0x00011898 cmdMsgStart
0x00011899 cmdMsgWaitButton
0x0001189a cmdPushInt 0x00000000
0x000118a2 cmdMsgClear
0x000118a3 cmdShowText 0x000001f1
0x000118aa cmdPushStr "まあなんか足音聞こえるけど、それもどうでもいい…。"
0x000118e3 cmdPushStr ""
0x000118ea cmdPushInt 0x000001f1
0x000118f2 cmdPushInt 0x00000001
0x000118fa cmdMsg
0x000118fb cmdMsgStart
0x000118fc cmdMsgWaitButton
0x000118fd cmdPushInt 0x00000000
0x00011905 cmdMsgClear
0x00011906 cmdPushStr "CGM_CH19h"
0x00011916 cmdPushInt 0x00000012
0x0001191e cmdPushInt 0x00000004
0x00011926 cmdPOP
0x00011927 cmdPushInt 0x00000000
0x0001192f cmdPushInt 0x00000000
0x00011937 cmdPushInt 0x00000003
0x0001193f cmdPOP
0x00011940 cmdPushInt 0x00000001
0x00011948 cmdPushInt 0x00000001
0x00011950 cmdPushInt 0x00000003
0x00011958 cmdPOP
0x00011959 cmdPushInt 0x00000011
0x00011961 cmdPushStr "sys20_adv00"
0x00011973 cmdFarcall
0x00011974 cmdPushInt 0x0002f400
0x0001197c cmdPushStr "v/z205200964"
0x0001198f cmdPushInt 0x00000000
0x00011997 cmdPCMPlay
0x00011998 cmdShowText 0x000001f2
0x0001199f cmdPushStr "「な・ん・てことすんですかぁーーッ！！！」"
0x000119d0 cmdPushStr "ちはや"
0x000119dd cmdPushInt 0x000001f2
0x000119e5 cmdPushInt 0x00000001
0x000119ed cmdMsg
0x000119ee cmdMsgStart
0x000119ef cmdMsgWaitButton
0x000119f0 cmdPushInt 0x00000000
0x000119f8 cmdMsgClear
0x000119f9 cmdPushInt 0x00000000
0x00011a01 cmdPushInt 0x00000000
0x00011a09 cmdPushInt 0x00000003
0x00011a11 cmdPOP
0x00011a12 cmdPushInt 0x00000000
0x00011a1a cmdPushInt 0x00000001
0x00011a22 cmdPushInt 0x00000003
0x00011a2a cmdPOP
0x00011a2b cmdPushInt 0x00000011
0x00011a33 cmdPushStr "sys20_adv00"
0x00011a45 cmdFarcall
0x00011a46 cmdPushInt 0x00000006
0x00011a4e cmdPushInt 0x0000036d
0x00011a56 cmdPushInt 0x00000003
0x00011a5e cmdPOP
0x00011a5f cmdPushInt 0x00000066
0x00011a67 cmdPushStr "sys40_sub"
0x00011a77 cmdFarcall
0x00011a78 cmdPushInt 0x00000010
0x00011a80 cmdPushStr "vagse/CRASH"
0x00011a92 cmdPushInt 0x00000000
0x00011a9a cmdUnknown(0x3c)
0x00011a9b cmdShowText 0x000001f3
0x00011aa2 cmdPushStr "ぶおんっ！！　ばぎいぃっ！！"
0x00011ac5 cmdPushStr ""
0x00011acc cmdPushInt 0x000001f3
0x00011ad4 cmdPushInt 0x00000001
0x00011adc cmdMsg
0x00011add cmdMsgStart
0x00011ade cmdMsgWaitButton
0x00011adf cmdPushInt 0x00000000
0x00011ae7 cmdMsgClear
0x00011ae8 cmdShowText 0x000001f4
0x00011aef cmdPushStr "「うおおおっ！！！」"
0x00011b0a cmdPushStr "瑚太朗"
0x00011b17 cmdPushInt 0x000001f4
0x00011b1f cmdPushInt 0x00000001
0x00011b27 cmdMsg
0x00011b28 cmdMsgStart
0x00011b29 cmdMsgWaitButton
0x00011b2a cmdPushInt 0x00000000
0x00011b32 cmdMsgClear
0x00011b33 cmdShowText 0x000001f5
0x00011b3a cmdPushStr "机が飛んできて隣で炸裂した！"
0x00011b5d cmdPushStr ""
0x00011b64 cmdPushInt 0x000001f5
0x00011b6c cmdPushInt 0x00000001
0x00011b74 cmdMsg
0x00011b75 cmdMsgStart
0x00011b76 cmdMsgWaitButton
0x00011b77 cmdPushInt 0x00000000
0x00011b7f cmdMsgClear
0x00011b80 cmdShowText 0x000001f6
0x00011b87 cmdPushStr "「あ、あぶねえっ！　これ死ぬぞお前！」"
0x00011bb4 cmdPushStr "瑚太朗"
0x00011bc1 cmdPushInt 0x000001f6
0x00011bc9 cmdPushInt 0x00000001
0x00011bd1 cmdMsg
0x00011bd2 cmdMsgStart
0x00011bd3 cmdMsgWaitButton
0x00011bd4 cmdPushInt 0x00000000
0x00011bdc cmdMsgClear
0x00011bdd cmdPushStr "CGM_CH33h"
0x00011bed cmdPushInt 0x00000012
0x00011bf5 cmdPushInt 0x00000004
0x00011bfd cmdPOP
0x00011bfe cmdPushInt 0x00000000
0x00011c06 cmdPushInt 0x00000000
0x00011c0e cmdPushInt 0x00000003
0x00011c16 cmdPOP
0x00011c17 cmdPushInt 0x00000001
0x00011c1f cmdPushInt 0x00000001
0x00011c27 cmdPushInt 0x00000003
0x00011c2f cmdPOP
0x00011c30 cmdPushInt 0x00000011
0x00011c38 cmdPushStr "sys20_adv00"
0x00011c4a cmdFarcall
0x00011c4b cmdPushInt 0x0002f400
0x00011c53 cmdPushStr "v/z205200973"
0x00011c66 cmdPushInt 0x00000000
0x00011c6e cmdPCMPlay
0x00011c6f cmdShowText 0x000001f7
0x00011c76 cmdPushStr "「私だって死ぬところでしたっ！！」"
0x00011c9f cmdPushStr "ちはや"
0x00011cac cmdPushInt 0x000001f7
0x00011cb4 cmdPushInt 0x00000001
0x00011cbc cmdMsg
0x00011cbd cmdMsgStart
0x00011cbe cmdMsgWaitButton
0x00011cbf cmdPushInt 0x00000000
0x00011cc7 cmdMsgClear
0x00011cc8 cmdShowText 0x000001f8
0x00011ccf cmdPushStr "「何だよ、助けたじゃん！！」"
0x00011cf2 cmdPushStr "瑚太朗"
0x00011cff cmdPushInt 0x000001f8
0x00011d07 cmdPushInt 0x00000001
0x00011d0f cmdMsg
0x00011d10 cmdMsgStart
0x00011d11 cmdMsgWaitButton
0x00011d12 cmdPushInt 0x00000000
0x00011d1a cmdMsgClear
0x00011d1b cmdPushStr "CGM_CH19"
0x00011d2a cmdPushInt 0x00000012
0x00011d32 cmdPushInt 0x00000004
0x00011d3a cmdPOP
0x00011d3b cmdPushInt 0x00000000
0x00011d43 cmdPushInt 0x00000000
0x00011d4b cmdPushInt 0x00000003
0x00011d53 cmdPOP
0x00011d54 cmdPushInt 0x00000001
0x00011d5c cmdPushInt 0x00000001
0x00011d64 cmdPushInt 0x00000003
0x00011d6c cmdPOP
0x00011d6d cmdPushInt 0x00000011
0x00011d75 cmdPushStr "sys20_adv00"
0x00011d87 cmdFarcall
0x00011d88 cmdPushInt 0x0002f400
0x00011d90 cmdPushStr "v/z205200977"
0x00011da3 cmdPushInt 0x00000000
0x00011dab cmdPCMPlay
0x00011dac cmdShowText 0x000001f9
0x00011db3 cmdPushStr "「フツーに落ちたほうがまだマシでしたっ！！」"
0x00011de6 cmdPushStr "ちはや"
0x00011df3 cmdPushInt 0x000001f9
0x00011dfb cmdPushInt 0x00000001
0x00011e03 cmdMsg
0x00011e04 cmdMsgStart
0x00011e05 cmdMsgWaitButton
0x00011e06 cmdPushInt 0x00000000
0x00011e0e cmdMsgClear
0x00011e0f cmdShowText 0x000001fa
0x00011e16 cmdPushStr "下の階で大騒ぎの渦中になっていたのが恥ずかしかったんだろう。"
0x00011e59 cmdPushStr ""
0x00011e60 cmdPushInt 0x000001fa
0x00011e68 cmdPushInt 0x00000001
0x00011e70 cmdMsg
0x00011e71 cmdMsgStart
0x00011e72 cmdMsgWaitButton
0x00011e73 cmdPushInt 0x00000000
0x00011e7b cmdMsgClear
0x00011e7c cmdShowText 0x000001fb
0x00011e83 cmdPushStr "「ちっ…人に感謝も出来んのか最近の若いもんは」"
0x00011eb8 cmdPushStr "瑚太朗"
0x00011ec5 cmdPushInt 0x000001fb
0x00011ecd cmdPushInt 0x00000001
0x00011ed5 cmdMsg
0x00011ed6 cmdMsgStart
0x00011ed7 cmdMsgWaitButton
0x00011ed8 cmdPushInt 0x00000000
0x00011ee0 cmdMsgClear
0x00011ee1 cmdPushInt 0x0002f400
0x00011ee9 cmdPushStr "v/z205200980"
0x00011efc cmdPushInt 0x00000000
0x00011f04 cmdPCMPlay
0x00011f05 cmdShowText 0x000001fc
0x00011f0c cmdPushStr "「手助けするなら、ちゃんとやって初めてありがとうって言ってもらえるもんです！！」"
0x00011f63 cmdPushStr "ちはや"
0x00011f70 cmdPushInt 0x000001fc
0x00011f78 cmdPushInt 0x00000001
0x00011f80 cmdMsg
0x00011f81 cmdMsgStart
0x00011f82 cmdMsgWaitButton
0x00011f83 cmdPushInt 0x00000000
0x00011f8b cmdMsgClear
0x00011f8c cmdShowText 0x000001fd
0x00011f93 cmdPushStr "「なるほど。蓋し名言だ」"
0x00011fb2 cmdPushStr "瑚太朗"
0x00011fbf cmdPushInt 0x000001fd
0x00011fc7 cmdPushInt 0x00000001
0x00011fcf cmdMsg
0x00011fd0 cmdMsgStart
0x00011fd1 cmdMsgWaitButton
0x00011fd2 cmdPushInt 0x00000000
0x00011fda cmdMsgClear
0x00011fdb cmdPushStr "CGM_SK18"
0x00011fea cmdPushInt 0x00000012
0x00011ff2 cmdPushInt 0x00000004
0x00011ffa cmdPOP
0x00011ffb cmdPushInt 0x00000000
0x00012003 cmdPushInt 0x00000000
0x0001200b cmdPushInt 0x00000003
0x00012013 cmdPOP
0x00012014 cmdPushInt 0x00000001
0x0001201c cmdPushInt 0x00000001
0x00012024 cmdPushInt 0x00000003
0x0001202c cmdPOP
0x0001202d cmdPushInt 0x00000011
0x00012035 cmdPushStr "sys20_adv00"
0x00012047 cmdFarcall
0x00012048 cmdPushInt 0x00080000
0x00012050 cmdPushStr "v/z205200984"
0x00012063 cmdPushInt 0x00000000
0x0001206b cmdPCMPlay
0x0001206c cmdShowText 0x000001fe
0x00012073 cmdPushStr "「その通りです」"
0x0001208a cmdPushStr "咲夜"
0x00012095 cmdPushInt 0x000001fe
0x0001209d cmdPushInt 0x00000001
0x000120a5 cmdMsg
0x000120a6 cmdMsgStart
0x000120a7 cmdMsgWaitButton
0x000120a8 cmdPushInt 0x00000000
0x000120b0 cmdMsgClear
0x000120b1 cmdShowText 0x000001ff
0x000120b8 cmdPushStr "「…どっから現れるんだてめえ」"
0x000120dd cmdPushStr "瑚太朗"
0x000120ea cmdPushInt 0x000001ff
0x000120f2 cmdPushInt 0x00000001
0x000120fa cmdMsg
0x000120fb cmdMsgStart
0x000120fc cmdMsgWaitButton
0x000120fd cmdPushInt 0x00000000
0x00012105 cmdMsgClear
0x00012106 cmdPushStr "CGM_SK22"
0x00012115 cmdPushInt 0x00000012
0x0001211d cmdPushInt 0x00000004
0x00012125 cmdPOP
0x00012126 cmdPushInt 0x00000000
0x0001212e cmdPushInt 0x00000000
0x00012136 cmdPushInt 0x00000003
0x0001213e cmdPOP
0x0001213f cmdPushInt 0x00000001
0x00012147 cmdPushInt 0x00000001
0x0001214f cmdPushInt 0x00000003
0x00012157 cmdPOP
0x00012158 cmdPushInt 0x00000011
0x00012160 cmdPushStr "sys20_adv00"
0x00012172 cmdFarcall
0x00012173 cmdPushInt 0x00080000
0x0001217b cmdPushStr "v/z205200988"
0x0001218e cmdPushInt 0x00000000
0x00012196 cmdPCMPlay
0x00012197 cmdShowText 0x00000200
0x0001219e cmdPushStr "「ちはやさんも無事で何よりです。瑚太朗君も、まあ全く役に立たないどころか事態悪化に貢献してくれたようですが」"
0x00012211 cmdPushStr "咲夜"
0x0001221c cmdPushInt 0x00000200
0x00012224 cmdPushInt 0x00000001
0x0001222c cmdMsg
0x0001222d cmdMsgStart
0x0001222e cmdMsgWaitButton
0x0001222f cmdPushInt 0x00000000
0x00012237 cmdMsgClear
0x00012238 cmdShowText 0x00000201
0x0001223f cmdPushStr "「…何も言えませんが」"
0x0001225c cmdPushStr "瑚太朗"
0x00012269 cmdPushInt 0x00000201
0x00012271 cmdPushInt 0x00000001
0x00012279 cmdMsg
0x0001227a cmdMsgStart
0x0001227b cmdMsgWaitButton
0x0001227c cmdPushInt 0x00000000
0x00012284 cmdMsgClear
0x00012285 cmdPushStr "CGM_SK13"
0x00012294 cmdPushInt 0x00000012
0x0001229c cmdPushInt 0x00000004
0x000122a4 cmdPOP
0x000122a5 cmdPushInt 0x00000000
0x000122ad cmdPushInt 0x00000000
0x000122b5 cmdPushInt 0x00000003
0x000122bd cmdPOP
0x000122be cmdPushInt 0x00000001
0x000122c6 cmdPushInt 0x00000001
0x000122ce cmdPushInt 0x00000003
0x000122d6 cmdPOP
0x000122d7 cmdPushInt 0x00000011
0x000122df cmdPushStr "sys20_adv00"
0x000122f1 cmdFarcall
0x000122f2 cmdPushInt 0x00080000
0x000122fa cmdPushStr "v/z205200992"
0x0001230d cmdPushInt 0x00000000
0x00012315 cmdPCMPlay
0x00012316 cmdShowText 0x00000202
0x0001231d cmdPushStr "「ひとまず、感謝を」"
0x00012338 cmdPushStr "咲夜"
0x00012343 cmdPushInt 0x00000202
0x0001234b cmdPushInt 0x00000001
0x00012353 cmdMsg
0x00012354 cmdMsgStart
0x00012355 cmdMsgWaitButton
0x00012356 cmdPushInt 0x00000000
0x0001235e cmdMsgClear
0x0001235f cmdShowText 0x00000203
0x00012366 cmdPushStr "てきぱきと破壊された机を紐で梱包しながら言う。"
0x0001239b cmdPushStr ""
0x000123a2 cmdPushInt 0x00000203
0x000123aa cmdPushInt 0x00000001
0x000123b2 cmdMsg
0x000123b3 cmdMsgStart
0x000123b4 cmdMsgWaitButton
0x000123b5 cmdPushInt 0x00000000
0x000123bd cmdMsgClear
0x000123be cmdPushStr "CGM_SK15"
0x000123cd cmdPushInt 0x00000012
0x000123d5 cmdPushInt 0x00000004
0x000123dd cmdPOP
0x000123de cmdPushInt 0x00000000
0x000123e6 cmdPushInt 0x00000000
0x000123ee cmdPushInt 0x00000003
0x000123f6 cmdPOP
0x000123f7 cmdPushInt 0x00000001
0x000123ff cmdPushInt 0x00000001
0x00012407 cmdPushInt 0x00000003
0x0001240f cmdPOP
0x00012410 cmdPushInt 0x00000011
0x00012418 cmdPushStr "sys20_adv00"
0x0001242a cmdFarcall
0x0001242b cmdPushInt 0x00080000
0x00012433 cmdPushStr "v/z205200996"
0x00012446 cmdPushInt 0x00000000
0x0001244e cmdPCMPlay
0x0001244f cmdShowText 0x00000204
0x00012456 cmdPushStr "「さて、これでＯＫですね。では、私は夕食の準備でも」"
0x00012491 cmdPushStr "咲夜"
0x0001249c cmdPushInt 0x00000204
0x000124a4 cmdPushInt 0x00000001
0x000124ac cmdMsg
0x000124ad cmdMsgStart
0x000124ae cmdMsgWaitButton
0x000124af cmdPushInt 0x00000000
0x000124b7 cmdMsgClear
0x000124b8 cmdPushInt 0x00000000
0x000124c0 cmdPushInt 0x00000000
0x000124c8 cmdPushInt 0x00000003
0x000124d0 cmdPOP
0x000124d1 cmdPushInt 0x00000000
0x000124d9 cmdPushInt 0x00000001
0x000124e1 cmdPushInt 0x00000003
0x000124e9 cmdPOP
0x000124ea cmdPushInt 0x00000011
0x000124f2 cmdPushStr "sys20_adv00"
0x00012504 cmdFarcall
0x00012505 cmdShowText 0x00000205
0x0001250c cmdPushStr "ついでに衝撃の度合いを物語る、机がぶち当たって砕けた壁にポスターを一枚貼り、そのまま出て行った。"
0x00012573 cmdPushStr ""
0x0001257a cmdPushInt 0x00000205
0x00012582 cmdPushInt 0x00000001
0x0001258a cmdMsg
0x0001258b cmdMsgStart
0x0001258c cmdMsgWaitButton
0x0001258d cmdPushInt 0x00000000
0x00012595 cmdMsgClear
0x00012596 cmdPushStr "CGM_CH29"
0x000125a5 cmdPushInt 0x00000012
0x000125ad cmdPushInt 0x00000004
0x000125b5 cmdPOP
0x000125b6 cmdPushInt 0x00000000
0x000125be cmdPushInt 0x00000000
0x000125c6 cmdPushInt 0x00000003
0x000125ce cmdPOP
0x000125cf cmdPushInt 0x00000001
0x000125d7 cmdPushInt 0x00000001
0x000125df cmdPushInt 0x00000003
0x000125e7 cmdPOP
0x000125e8 cmdPushInt 0x00000011
0x000125f0 cmdPushStr "sys20_adv00"
0x00012602 cmdFarcall
0x00012603 cmdPushInt 0x0002f400
0x0001260b cmdPushStr "v/z205201002"
0x0001261e cmdPushInt 0x00000000
0x00012626 cmdPCMPlay
0x00012627 cmdShowText 0x00000206
0x0001262e cmdPushStr "「…咲夜、機嫌がいいですねぇ」"
0x00012653 cmdPushStr "ちはや"
0x00012660 cmdPushInt 0x00000206
0x00012668 cmdPushInt 0x00000001
0x00012670 cmdMsg
0x00012671 cmdMsgStart
0x00012672 cmdMsgWaitButton
0x00012673 cmdPushInt 0x00000000
0x0001267b cmdMsgClear
0x0001267c cmdShowText 0x00000207
0x00012683 cmdPushStr "「うん？」"
0x00012694 cmdPushStr "瑚太朗"
0x000126a1 cmdPushInt 0x00000207
0x000126a9 cmdPushInt 0x00000001
0x000126b1 cmdMsg
0x000126b2 cmdMsgStart
0x000126b3 cmdMsgWaitButton
0x000126b4 cmdPushInt 0x00000000
0x000126bc cmdMsgClear
0x000126bd cmdPushStr "CGM_CH30"
0x000126cc cmdPushInt 0x00000012
0x000126d4 cmdPushInt 0x00000004
0x000126dc cmdPOP
0x000126dd cmdPushInt 0x00000000
0x000126e5 cmdPushInt 0x00000000
0x000126ed cmdPushInt 0x00000003
0x000126f5 cmdPOP
0x000126f6 cmdPushInt 0x00000001
0x000126fe cmdPushInt 0x00000001
0x00012706 cmdPushInt 0x00000003
0x0001270e cmdPOP
0x0001270f cmdPushInt 0x00000011
0x00012717 cmdPushStr "sys20_adv00"
0x00012729 cmdFarcall
0x0001272a cmdPushInt 0x0002f400
0x00012732 cmdPushStr "v/z205201006"
0x00012745 cmdPushInt 0x00000000
0x0001274d cmdPCMPlay
0x0001274e cmdShowText 0x00000208
0x00012755 cmdPushStr "「今、瑚太朗を瑚太朗って呼びました」"
0x00012780 cmdPushStr "ちはや"
0x0001278d cmdPushInt 0x00000208
0x00012795 cmdPushInt 0x00000001
0x0001279d cmdMsg
0x0001279e cmdMsgStart
0x0001279f cmdMsgWaitButton
0x000127a0 cmdPushInt 0x00000000
0x000127a8 cmdMsgClear
0x000127a9 cmdShowText 0x00000209
0x000127b0 cmdPushStr "「あー」"
0x000127bf cmdPushStr "瑚太朗"
0x000127cc cmdPushInt 0x00000209
0x000127d4 cmdPushInt 0x00000001
0x000127dc cmdMsg
0x000127dd cmdMsgStart
0x000127de cmdMsgWaitButton
0x000127df cmdPushInt 0x00000000
0x000127e7 cmdMsgClear
0x000127e8 cmdPushInt 0x00000000
0x000127f0 cmdPushInt 0x00000000
0x000127f8 cmdPushInt 0x00000003
0x00012800 cmdPOP
0x00012801 cmdPushInt 0x00000000
0x00012809 cmdPushInt 0x00000001
0x00012811 cmdPushInt 0x00000003
0x00012819 cmdPOP
0x0001281a cmdPushInt 0x00000011
0x00012822 cmdPushStr "sys20_adv00"
0x00012834 cmdFarcall
0x00012835 cmdShowText 0x0000020a
0x0001283c cmdPushStr "与太郎だか瑚太朗だか、ぱっと聞くと判断つかねえんだよな。"
0x0001287b cmdPushStr ""
0x00012882 cmdPushInt 0x0000020a
0x0001288a cmdPushInt 0x00000001
0x00012892 cmdMsg
0x00012893 cmdMsgStart
0x00012894 cmdMsgWaitButton
0x00012895 cmdPushInt 0x00000000
0x0001289d cmdMsgClear
0x0001289e cmdPushStr "CGM_CH22"
0x000128ad cmdPushInt 0x00000012
0x000128b5 cmdPushInt 0x00000004
0x000128bd cmdPOP
0x000128be cmdPushInt 0x00000000
0x000128c6 cmdPushInt 0x00000000
0x000128ce cmdPushInt 0x00000003
0x000128d6 cmdPOP
0x000128d7 cmdPushInt 0x00000001
0x000128df cmdPushInt 0x00000001
0x000128e7 cmdPushInt 0x00000003
0x000128ef cmdPOP
0x000128f0 cmdPushInt 0x00000011
0x000128f8 cmdPushStr "sys20_adv00"
0x0001290a cmdFarcall
0x0001290b cmdPushInt 0x0002f400
0x00012913 cmdPushStr "v/z205201013"
0x00012926 cmdPushInt 0x00000000
0x0001292e cmdPCMPlay
0x0001292f cmdShowText 0x0000020b
0x00012936 cmdPushStr "「私ひどい目に遭ったのに」"
0x00012957 cmdPushStr "ちはや"
0x00012964 cmdPushInt 0x0000020b
0x0001296c cmdPushInt 0x00000001
0x00012974 cmdMsg
0x00012975 cmdMsgStart
0x00012976 cmdMsgWaitButton
0x00012977 cmdPushInt 0x00000000
0x0001297f cmdMsgClear
0x00012980 cmdShowText 0x0000020c
0x00012987 cmdPushStr "「ヤキモチか？」"
0x0001299e cmdPushStr "瑚太朗"
0x000129ab cmdPushInt 0x0000020c
0x000129b3 cmdPushInt 0x00000001
0x000129bb cmdMsg
0x000129bc cmdMsgStart
0x000129bd cmdMsgWaitButton
0x000129be cmdPushInt 0x00000000
0x000129c6 cmdMsgClear
0x000129c7 cmdPushStr "CGM_CH15"
0x000129d6 cmdPushInt 0x00000012
0x000129de cmdPushInt 0x00000004
0x000129e6 cmdPOP
0x000129e7 cmdPushInt 0x00000000
0x000129ef cmdPushInt 0x00000000
0x000129f7 cmdPushInt 0x00000003
0x000129ff cmdPOP
0x00012a00 cmdPushInt 0x00000001
0x00012a08 cmdPushInt 0x00000001
0x00012a10 cmdPushInt 0x00000003
0x00012a18 cmdPOP
0x00012a19 cmdPushInt 0x00000011
0x00012a21 cmdPushStr "sys20_adv00"
0x00012a33 cmdFarcall
0x00012a34 cmdPushInt 0x0002f400
0x00012a3c cmdPushStr "v/z205201017"
0x00012a4f cmdPushInt 0x00000000
0x00012a57 cmdPCMPlay
0x00012a58 cmdShowText 0x0000020d
0x00012a5f cmdPushStr "「違います」"
0x00012a72 cmdPushStr "ちはや"
0x00012a7f cmdPushInt 0x0000020d
0x00012a87 cmdPushInt 0x00000001
0x00012a8f cmdMsg
0x00012a90 cmdMsgStart
0x00012a91 cmdMsgWaitButton
0x00012a92 cmdPushInt 0x00000000
0x00012a9a cmdMsgClear
0x00012a9b cmdPushStr "CGM_CH22"
0x00012aaa cmdPushInt 0x00000012
0x00012ab2 cmdPushInt 0x00000004
0x00012aba cmdPOP
0x00012abb cmdPushInt 0x00000000
0x00012ac3 cmdPushInt 0x00000000
0x00012acb cmdPushInt 0x00000003
0x00012ad3 cmdPOP
0x00012ad4 cmdPushInt 0x00000001
0x00012adc cmdPushInt 0x00000001
0x00012ae4 cmdPushInt 0x00000003
0x00012aec cmdPOP
0x00012aed cmdPushInt 0x00000011
0x00012af5 cmdPushStr "sys20_adv00"
0x00012b07 cmdFarcall
0x00012b08 cmdPushInt 0x0002f400
0x00012b10 cmdPushStr "v/z205201020"
0x00012b23 cmdPushInt 0x00000000
0x00012b2b cmdPCMPlay
0x00012b2c cmdShowText 0x0000020e
0x00012b33 cmdPushStr "「もういいです。私も帰ります」"
0x00012b58 cmdPushStr "ちはや"
0x00012b65 cmdPushInt 0x0000020e
0x00012b6d cmdPushInt 0x00000001
0x00012b75 cmdMsg
0x00012b76 cmdMsgStart
0x00012b77 cmdMsgWaitButton
0x00012b78 cmdPushInt 0x00000000
0x00012b80 cmdMsgClear
0x00012b81 cmdShowText 0x0000020f
0x00012b88 cmdPushStr "「ああ…」"
0x00012b99 cmdPushStr "瑚太朗"
0x00012ba6 cmdPushInt 0x0000020f
0x00012bae cmdPushInt 0x00000001
0x00012bb6 cmdMsg
0x00012bb7 cmdMsgStart
0x00012bb8 cmdMsgWaitButton
0x00012bb9 cmdPushInt 0x00000000
0x00012bc1 cmdMsgClear
0x00012bc2 cmdPushStr "CGM_CH29"
0x00012bd1 cmdPushInt 0x00000012
0x00012bd9 cmdPushInt 0x00000004
0x00012be1 cmdPOP
0x00012be2 cmdPushInt 0x00000000
0x00012bea cmdPushInt 0x00000000
0x00012bf2 cmdPushInt 0x00000003
0x00012bfa cmdPOP
0x00012bfb cmdPushInt 0x00000001
0x00012c03 cmdPushInt 0x00000001
0x00012c0b cmdPushInt 0x00000003
0x00012c13 cmdPOP
0x00012c14 cmdPushInt 0x00000011
0x00012c1c cmdPushStr "sys20_adv00"
0x00012c2e cmdFarcall
0x00012c2f cmdPushInt 0x0002f400
0x00012c37 cmdPushStr "v/z205201024"
0x00012c4a cmdPushInt 0x00000000
0x00012c52 cmdPCMPlay
0x00012c53 cmdShowText 0x00000210
0x00012c5a cmdPushStr "「ああ、瑚太朗」"
0x00012c71 cmdPushStr "ちはや"
0x00012c7e cmdPushInt 0x00000210
0x00012c86 cmdPushInt 0x00000001
0x00012c8e cmdMsg
0x00012c8f cmdMsgStart
0x00012c90 cmdMsgWaitButton
0x00012c91 cmdPushInt 0x00000000
0x00012c99 cmdMsgClear
0x00012c9a cmdShowText 0x00000211
0x00012ca1 cmdPushStr "「ん」"
0x00012cae cmdPushStr "瑚太朗"
0x00012cbb cmdPushInt 0x00000211
0x00012cc3 cmdPushInt 0x00000001
0x00012ccb cmdMsg
0x00012ccc cmdMsgStart
0x00012ccd cmdMsgWaitButton
0x00012cce cmdPushInt 0x00000000
0x00012cd6 cmdMsgClear
0x00012cd7 cmdPushStr "CGM_CH22"
0x00012ce6 cmdPushInt 0x00000012
0x00012cee cmdPushInt 0x00000004
0x00012cf6 cmdPOP
0x00012cf7 cmdPushInt 0x00000000
0x00012cff cmdPushInt 0x00000000
0x00012d07 cmdPushInt 0x00000003
0x00012d0f cmdPOP
0x00012d10 cmdPushInt 0x00000001
0x00012d18 cmdPushInt 0x00000001
0x00012d20 cmdPushInt 0x00000003
0x00012d28 cmdPOP
0x00012d29 cmdPushInt 0x00000011
0x00012d31 cmdPushStr "sys20_adv00"
0x00012d43 cmdFarcall
0x00012d44 cmdPushInt 0x0002f400
0x00012d4c cmdPushStr "v/z205201028"
0x00012d5f cmdPushInt 0x00000000
0x00012d67 cmdPCMPlay
0x00012d68 cmdShowText 0x00000212
0x00012d6f cmdPushStr "「一応、助けようとしてくれたのはありがとうです」"
0x00012da6 cmdPushStr "ちはや"
0x00012db3 cmdPushInt 0x00000212
0x00012dbb cmdPushInt 0x00000001
0x00012dc3 cmdMsg
0x00012dc4 cmdMsgStart
0x00012dc5 cmdMsgWaitButton
0x00012dc6 cmdPushInt 0x00000000
0x00012dce cmdMsgClear
0x00012dcf cmdShowText 0x00000213
0x00012dd6 cmdPushStr "「…おう」"
0x00012de7 cmdPushStr "瑚太朗"
0x00012df4 cmdPushInt 0x00000213
0x00012dfc cmdPushInt 0x00000001
0x00012e04 cmdMsg
0x00012e05 cmdMsgStart
0x00012e06 cmdMsgWaitButton
0x00012e07 cmdPushInt 0x00000000
0x00012e0f cmdMsgClear
0x00012e10 cmdPushInt 0x00000000
0x00012e18 cmdPushInt 0x00000000
0x00012e20 cmdPushInt 0x00000003
0x00012e28 cmdPOP
0x00012e29 cmdPushInt 0x00000000
0x00012e31 cmdPushInt 0x00000001
0x00012e39 cmdPushInt 0x00000003
0x00012e41 cmdPOP
0x00012e42 cmdPushInt 0x00000011
0x00012e4a cmdPushStr "sys20_adv00"
0x00012e5c cmdFarcall
0x00012e5d cmdShowText 0x00000214
0x00012e64 cmdPushStr "素直ね。"
0x00012e73 cmdPushStr ""
0x00012e7a cmdPushInt 0x00000214
0x00012e82 cmdPushInt 0x00000001
0x00012e8a cmdMsg
0x00012e8b cmdMsgStart
0x00012e8c cmdMsgWaitButton
0x00012e8d cmdPushInt 0x00000000
0x00012e95 cmdMsgClear
0x00012e96 cmdShowText 0x00000215
0x00012e9d cmdPushStr "しかし…。"
0x00012eae cmdPushStr ""
0x00012eb5 cmdPushInt 0x00000215
0x00012ebd cmdPushInt 0x00000001
0x00012ec5 cmdMsg
0x00012ec6 cmdMsgStart
0x00012ec7 cmdMsgWaitButton
0x00012ec8 cmdPushInt 0x00000000
0x00012ed0 cmdMsgClear
0x00012ed1 cmdShowText 0x00000216
0x00012ed8 cmdPushStr "「………」"
0x00012ee9 cmdPushStr "瑚太朗"
0x00012ef6 cmdPushInt 0x00000216
0x00012efe cmdPushInt 0x00000001
0x00012f06 cmdMsg
0x00012f07 cmdMsgStart
0x00012f08 cmdMsgWaitButton
0x00012f09 cmdPushInt 0x00000000
0x00012f11 cmdMsgClear
0x00012f12 cmdShowText 0x00000217
0x00012f19 cmdPushStr "咲夜…俺の能力に気付いている？"
0x00012f3e cmdPushStr ""
0x00012f45 cmdPushInt 0x00000217
0x00012f4d cmdPushInt 0x00000001
0x00012f55 cmdMsg
0x00012f56 cmdMsgStart
0x00012f57 cmdMsgWaitButton
0x00012f58 cmdPushInt 0x00000000
0x00012f60 cmdMsgClear
0x00012f61 cmdShowText 0x00000218
0x00012f68 cmdPushStr "（…いや）"
0x00012f79 cmdPushStr "瑚太朗"
0x00012f86 cmdPushInt 0x00000218
0x00012f8e cmdPushInt 0x00000001
0x00012f96 cmdMsg
0x00012f97 cmdMsgStart
0x00012f98 cmdMsgWaitButton
0x00012f99 cmdPushInt 0x00000000
0x00012fa1 cmdMsgClear
0x00012fa2 cmdShowText 0x00000219
0x00012fa9 cmdPushStr "あいつの目の前で能力なんて使ったことないし、いつもの含みのある言動なだけだろう…。"
0x00013002 cmdPushStr ""
0x00013009 cmdPushInt 0x00000219
0x00013011 cmdPushInt 0x00000001
0x00013019 cmdMsg
0x0001301a cmdMsgStart
0x0001301b cmdMsgWaitButton
0x0001301c cmdPushInt 0x00000000
0x00013024 cmdMsgClear
0x00013025 cmdMsgClose
0x00013026 cmdPushInt 0x00000001
0x0001302e cmdPushInt 0x000000a6
0x00013036 cmdPushInt 0x00000003
0x0001303e cmdPOP
0x0001303f cmdPushInt 0x00014186
0x00013047 cmdJmp


#--------------------
#label start : label_seen01112_1
0x00013048 cmdLMK #new label
0x00013049 cmdPushInt 0x00000022
0x00013051 cmdPushIntFromIntArray
0x00013055 cmdPushInt 0x00000001
0x0001305d cmdEQ
0x0001305e cmdPushInt 0x00014185
0x00013066 cmdIf
0x00013067 cmdShowText 0x0000021a
0x0001306e cmdPushStr "…ダメだって。"
0x00013083 cmdPushStr ""
0x0001308a cmdPushInt 0x0000021a
0x00013092 cmdPushInt 0x00000001
0x0001309a cmdMsg
0x0001309b cmdMsgStart
0x0001309c cmdMsgWaitButton
0x0001309d cmdPushInt 0x00000000
0x000130a5 cmdMsgClear
0x000130a6 cmdShowText 0x0000021b
0x000130ad cmdPushStr "「いいか、落ちるときは膝のクッションを上手く使って出来る限り衝撃を吸収するんだ。そのまま転がり込んで落下力を逃がすのもいい」"
0x00013130 cmdPushStr "瑚太朗"
0x0001313d cmdPushInt 0x0000021b
0x00013145 cmdPushInt 0x00000001
0x0001314d cmdMsg
0x0001314e cmdMsgStart
0x0001314f cmdMsgWaitButton
0x00013150 cmdPushInt 0x00000000
0x00013158 cmdMsgClear
0x00013159 cmdShowText 0x0000021c
0x00013160 cmdPushStr "「大きい石のあるところだけは絶対に避けろ。お前なら出来る」"
0x000131a1 cmdPushStr "瑚太朗"
0x000131ae cmdPushInt 0x0000021c
0x000131b6 cmdPushInt 0x00000001
0x000131be cmdMsg
0x000131bf cmdMsgStart
0x000131c0 cmdMsgWaitButton
0x000131c1 cmdPushInt 0x00000000
0x000131c9 cmdMsgClear
0x000131ca cmdPushInt 0x0002f400
0x000131d2 cmdPushStr "v/z205201047"
0x000131e5 cmdPushInt 0x00000000
0x000131ed cmdPCMPlay
0x000131ee cmdShowText 0x0000021d
0x000131f5 cmdPushStr "「落ちたときの対策より今をーーっ！！！」"
0x00013224 cmdPushStr "ちはや"
0x00013231 cmdPushInt 0x0000021d
0x00013239 cmdPushInt 0x00000001
0x00013241 cmdMsg
0x00013242 cmdMsgStart
0x00013243 cmdMsgWaitButton
0x00013244 cmdPushInt 0x00000000
0x0001324c cmdMsgClear
0x0001324d cmdPushInt 0x0002f400
0x00013255 cmdPushStr "v/z205201048"
0x00013268 cmdPushInt 0x00000000
0x00013270 cmdPCMPlay
0x00013271 cmdShowText 0x0000021e
0x00013278 cmdPushStr "「あ」"
0x00013285 cmdPushStr "ちはや"
0x00013292 cmdPushInt 0x0000021e
0x0001329a cmdPushInt 0x00000001
0x000132a2 cmdMsg
0x000132a3 cmdMsgStart
0x000132a4 cmdMsgWaitButton
0x000132a5 cmdPushInt 0x00000000
0x000132ad cmdMsgClear
0x000132ae cmdShowText 0x0000021f
0x000132b5 cmdPushStr "ばき。"
0x000132c2 cmdPushStr ""
0x000132c9 cmdPushInt 0x0000021f
0x000132d1 cmdPushInt 0x00000001
0x000132d9 cmdMsg
0x000132da cmdMsgStart
0x000132db cmdMsgWaitButton
0x000132dc cmdPushInt 0x00000000
0x000132e4 cmdMsgClear
0x000132e5 cmdShowText 0x00000220
0x000132ec cmdPushStr "「…さらば…」"
0x00013301 cmdPushStr "瑚太朗"
0x0001330e cmdPushInt 0x00000220
0x00013316 cmdPushInt 0x00000001
0x0001331e cmdMsg
0x0001331f cmdMsgStart
0x00013320 cmdMsgWaitButton
0x00013321 cmdPushInt 0x00000000
0x00013329 cmdMsgClear
0x0001332a cmdShowText 0x00000221
0x00013331 cmdPushStr "………。"
0x00013340 cmdPushStr ""
0x00013347 cmdPushInt 0x00000221
0x0001334f cmdPushInt 0x00000001
0x00013357 cmdMsg
0x00013358 cmdMsgStart
0x00013359 cmdMsgWaitButton
0x0001335a cmdPushInt 0x00000000
0x00013362 cmdMsgClear
0x00013363 cmdShowText 0x00000222
0x0001336a cmdPushStr "どさ。"
0x00013377 cmdPushStr ""
0x0001337e cmdPushInt 0x00000222
0x00013386 cmdPushInt 0x00000001
0x0001338e cmdMsg
0x0001338f cmdMsgStart
0x00013390 cmdMsgWaitButton
0x00013391 cmdPushInt 0x00000000
0x00013399 cmdMsgClear
0x0001339a cmdPushInt 0x00080000
0x000133a2 cmdPushStr "v/z205201053"
0x000133b5 cmdPushInt 0x00000000
0x000133bd cmdPCMPlay
0x000133be cmdShowText 0x00000223
0x000133c5 cmdPushStr "「…大丈夫ですか、ちはやさん」"
0x000133ea cmdPushStr "咲夜"
0x000133f5 cmdPushInt 0x00000223
0x000133fd cmdPushInt 0x00000001
0x00013405 cmdMsg
0x00013406 cmdMsgStart
0x00013407 cmdMsgWaitButton
0x00013408 cmdPushInt 0x00000000
0x00013410 cmdMsgClear
0x00013411 cmdPushInt 0x0002f400
0x00013419 cmdPushStr "v/z205201054"
0x0001342c cmdPushInt 0x00000000
0x00013434 cmdPCMPlay
0x00013435 cmdShowText 0x00000224
0x0001343c cmdPushStr "「あ、ああ…咲夜」"
0x00013455 cmdPushStr "ちはや"
0x00013462 cmdPushInt 0x00000224
0x0001346a cmdPushInt 0x00000001
0x00013472 cmdMsg
0x00013473 cmdMsgStart
0x00013474 cmdMsgWaitButton
0x00013475 cmdPushInt 0x00000000
0x0001347d cmdMsgClear
0x0001347e cmdShowText 0x00000225
0x00013485 cmdPushStr "「………」"
0x00013496 cmdPushStr "瑚太朗"
0x000134a3 cmdPushInt 0x00000225
0x000134ab cmdPushInt 0x00000001
0x000134b3 cmdMsg
0x000134b4 cmdMsgStart
0x000134b5 cmdMsgWaitButton
0x000134b6 cmdPushInt 0x00000000
0x000134be cmdMsgClear
0x000134bf cmdShowText 0x00000226
0x000134c6 cmdPushStr "咲夜が下で受け止めたようだった。"
0x000134ed cmdPushStr ""
0x000134f4 cmdPushInt 0x00000226
0x000134fc cmdPushInt 0x00000001
0x00013504 cmdMsg
0x00013505 cmdMsgStart
0x00013506 cmdMsgWaitButton
0x00013507 cmdPushInt 0x00000000
0x0001350f cmdMsgClear
0x00013510 cmdShowText 0x00000227
0x00013517 cmdPushStr "ちはやは無傷らしく、咲夜に下ろされると、ぱんぱんとホコリを払って見せた。"
0x00013566 cmdPushStr ""
0x0001356d cmdPushInt 0x00000227
0x00013575 cmdPushInt 0x00000001
0x0001357d cmdMsg
0x0001357e cmdMsgStart
0x0001357f cmdMsgWaitButton
0x00013580 cmdPushInt 0x00000000
0x00013588 cmdMsgClear
0x00013589 cmdPushInt 0x00080000
0x00013591 cmdPushStr "v/z205201058"
0x000135a4 cmdPushInt 0x00000000
0x000135ac cmdPCMPlay
0x000135ad cmdShowText 0x00000228
0x000135b4 cmdPushStr "「そうですか。つまりあなたはそういう人だったというわけですね」"
0x000135f9 cmdPushStr "咲夜"
0x00013604 cmdPushInt 0x00000228
0x0001360c cmdPushInt 0x00000001
0x00013614 cmdMsg
0x00013615 cmdMsgStart
0x00013616 cmdMsgWaitButton
0x00013617 cmdPushInt 0x00000000
0x0001361f cmdMsgClear
0x00013620 cmdShowText 0x00000229
0x00013627 cmdPushStr "こっちを睨む。"
0x0001363c cmdPushStr ""
0x00013643 cmdPushInt 0x00000229
0x0001364b cmdPushInt 0x00000001
0x00013653 cmdMsg
0x00013654 cmdMsgStart
0x00013655 cmdMsgWaitButton
0x00013656 cmdPushInt 0x00000000
0x0001365e cmdMsgClear
0x0001365f cmdShowText 0x0000022a
0x00013666 cmdPushStr "「過保護は良くないと思うんですよね…」"
0x00013693 cmdPushStr "瑚太朗"
0x000136a0 cmdPushInt 0x0000022a
0x000136a8 cmdPushInt 0x00000001
0x000136b0 cmdMsg
0x000136b1 cmdMsgStart
0x000136b2 cmdMsgWaitButton
0x000136b3 cmdPushInt 0x00000000
0x000136bb cmdMsgClear
0x000136bc cmdPushInt 0x00080000
0x000136c4 cmdPushStr "v/z205201061"
0x000136d7 cmdPushInt 0x00000000
0x000136df cmdPCMPlay
0x000136e0 cmdShowText 0x0000022b
0x000136e7 cmdPushStr "「…フン」"
0x000136f8 cmdPushStr "咲夜"
0x00013703 cmdPushInt 0x0000022b
0x0001370b cmdPushInt 0x00000001
0x00013713 cmdMsg
0x00013714 cmdMsgStart
0x00013715 cmdMsgWaitButton
0x00013716 cmdPushInt 0x00000000
0x0001371e cmdMsgClear
0x0001371f cmdShowText 0x0000022c
0x00013726 cmdPushStr "鼻で笑われた。"
0x0001373b cmdPushStr ""
0x00013742 cmdPushInt 0x0000022c
0x0001374a cmdPushInt 0x00000001
0x00013752 cmdMsg
0x00013753 cmdMsgStart
0x00013754 cmdMsgWaitButton
0x00013755 cmdPushInt 0x00000000
0x0001375d cmdMsgClear
0x0001375e cmdPushInt 0x00000032
0x00013766 cmdPushIntFromIntArray
0x0001376a cmdPushInt 0x00000002
0x00013772 cmdLEQ
0x00013773 cmdPushInt 0x00013884
0x0001377b cmdIf
0x0001377c cmdPushInt 0x00080000
0x00013784 cmdPushStr "v/z205201067"
0x00013797 cmdPushInt 0x00000000
0x0001379f cmdPCMPlay
0x000137a0 cmdShowText 0x0000022d
0x000137a7 cmdPushStr "「まあ、あなたの言う事は一理ありますが…」"
0x000137d8 cmdPushStr "咲夜"
0x000137e3 cmdPushInt 0x0000022d
0x000137eb cmdPushInt 0x00000001
0x000137f3 cmdMsg
0x000137f4 cmdMsgStart
0x000137f5 cmdMsgWaitButton
0x000137f6 cmdPushInt 0x00000000
0x000137fe cmdMsgClear
0x000137ff cmdPushInt 0x00080000
0x00013807 cmdPushStr "v/z205201068"
0x0001381a cmdPushInt 0x00000000
0x00013822 cmdPCMPlay
0x00013823 cmdShowText 0x0000022e
0x0001382a cmdPushStr "「二度目はないですよ」"
0x00013847 cmdPushStr "咲夜"
0x00013852 cmdPushInt 0x0000022e
0x0001385a cmdPushInt 0x00000001
0x00013862 cmdMsg
0x00013863 cmdMsgStart
0x00013864 cmdMsgWaitButton
0x00013865 cmdPushInt 0x00000000
0x0001386d cmdMsgClear
0x0001386e cmdShowText 0x0000022f
0x00013875 cmdPushStr "「な、何がよ」"
0x0001388a cmdPushStr "瑚太朗"
0x00013897 cmdPushInt 0x0000022f
0x0001389f cmdPushInt 0x00000001
0x000138a7 cmdMsg
0x000138a8 cmdMsgStart
0x000138a9 cmdMsgWaitButton
0x000138aa cmdPushInt 0x00000000
0x000138b2 cmdMsgClear
0x000138b3 cmdPushInt 0x00080000
0x000138bb cmdPushStr "v/z205201070"
0x000138ce cmdPushInt 0x00000000
0x000138d6 cmdPCMPlay
0x000138d7 cmdShowText 0x00000230
0x000138de cmdPushStr "「準備は怠らないでください」"
0x00013901 cmdPushStr "咲夜"
0x0001390c cmdPushInt 0x00000230
0x00013914 cmdPushInt 0x00000001
0x0001391c cmdMsg
0x0001391d cmdMsgStart
0x0001391e cmdMsgWaitButton
0x0001391f cmdPushInt 0x00000000
0x00013927 cmdMsgClear
0x00013928 cmdPushInt 0x00080000
0x00013930 cmdPushStr "v/z205201071"
0x00013943 cmdPushInt 0x00000000
0x0001394b cmdPCMPlay
0x0001394c cmdShowText 0x00000231
0x00013953 cmdPushStr "「では、後ほど」"
0x0001396a cmdPushStr "咲夜"
0x00013975 cmdPushInt 0x00000231
0x0001397d cmdPushInt 0x00000001
0x00013985 cmdMsg
0x00013986 cmdMsgStart
0x00013987 cmdMsgWaitButton
0x00013988 cmdPushInt 0x00000000
0x00013990 cmdMsgClear
0x00013991 cmdPushInt 0x0002f400
0x00013999 cmdPushStr "v/z205201072"
0x000139ac cmdPushInt 0x00000000
0x000139b4 cmdPCMPlay
0x000139b5 cmdShowText 0x00000232
0x000139bc cmdPushStr "「はーい」"
0x000139cd cmdPushStr "ちはや"
0x000139da cmdPushInt 0x00000232
0x000139e2 cmdPushInt 0x00000001
0x000139ea cmdMsg
0x000139eb cmdMsgStart
0x000139ec cmdMsgWaitButton
0x000139ed cmdPushInt 0x00000000
0x000139f5 cmdMsgClear
0x000139f6 cmdShowText 0x00000233
0x000139fd cmdPushStr "咲夜は去っていった。"
0x00013a18 cmdPushStr ""
0x00013a1f cmdPushInt 0x00000233
0x00013a27 cmdPushInt 0x00000001
0x00013a2f cmdMsg
0x00013a30 cmdMsgStart
0x00013a31 cmdMsgWaitButton
0x00013a32 cmdPushInt 0x00000000
0x00013a3a cmdMsgClear
0x00013a3b cmdShowText 0x00000234
0x00013a42 cmdPushStr "「…いつもながら何なんだ」"
0x00013a63 cmdPushStr "瑚太朗"
0x00013a70 cmdPushInt 0x00000234
0x00013a78 cmdPushInt 0x00000001
0x00013a80 cmdMsg
0x00013a81 cmdMsgStart
0x00013a82 cmdMsgWaitButton
0x00013a83 cmdPushInt 0x00000000
0x00013a8b cmdMsgClear
0x00013a8c cmdPushInt 0x0002f400
0x00013a94 cmdPushStr "v/z205201075"
0x00013aa7 cmdPushInt 0x00000000
0x00013aaf cmdPCMPlay
0x00013ab0 cmdShowText 0x00000235
0x00013ab7 cmdPushStr "「なんなんだはこっちのセリフですっ！　この薄情者ーっ！！」"
0x00013af8 cmdPushStr "ちはや"
0x00013b05 cmdPushInt 0x00000235
0x00013b0d cmdPushInt 0x00000001
0x00013b15 cmdMsg
0x00013b16 cmdMsgStart
0x00013b17 cmdMsgWaitButton
0x00013b18 cmdPushInt 0x00000000
0x00013b20 cmdMsgClear
0x00013b21 cmdShowText 0x00000236
0x00013b28 cmdPushStr "「心配すんな。ガチでヤバイ時は命賭けてやる」"
0x00013b5b cmdPushStr "瑚太朗"
0x00013b68 cmdPushInt 0x00000236
0x00013b70 cmdPushInt 0x00000001
0x00013b78 cmdMsg
0x00013b79 cmdMsgStart
0x00013b7a cmdMsgWaitButton
0x00013b7b cmdPushInt 0x00000000
0x00013b83 cmdMsgClear
0x00013b84 cmdPushInt 0x0002f400
0x00013b8c cmdPushStr "v/z205201077"
0x00013b9f cmdPushInt 0x00000000
0x00013ba7 cmdPCMPlay
0x00013ba8 cmdShowText 0x00000237
0x00013baf cmdPushStr "「十分危なかったですっ！」"
0x00013bd0 cmdPushStr "ちはや"
0x00013bdd cmdPushInt 0x00000237
0x00013be5 cmdPushInt 0x00000001
0x00013bed cmdMsg
0x00013bee cmdMsgStart
0x00013bef cmdMsgWaitButton
0x00013bf0 cmdPushInt 0x00000000
0x00013bf8 cmdMsgClear
0x00013bf9 cmdShowText 0x00000238
0x00013c00 cmdPushStr "「…いや」"
0x00013c11 cmdPushStr "瑚太朗"
0x00013c1e cmdPushInt 0x00000238
0x00013c26 cmdPushInt 0x00000001
0x00013c2e cmdMsg
0x00013c2f cmdMsgStart
0x00013c30 cmdMsgWaitButton
0x00013c31 cmdPushInt 0x00000000
0x00013c39 cmdMsgClear
0x00013c3a cmdShowText 0x00000239
0x00013c41 cmdPushStr "なんか、何とかなりそうな気がしたんよね。"
0x00013c70 cmdPushStr ""
0x00013c77 cmdPushInt 0x00000239
0x00013c7f cmdPushInt 0x00000001
0x00013c87 cmdMsg
0x00013c88 cmdMsgStart
0x00013c89 cmdMsgWaitButton
0x00013c8a cmdPushInt 0x00000000
0x00013c92 cmdMsgClear
0x00013c93 cmdPushInt 0x00014184
0x00013c9b cmdJmp


#--------------------
#label start : label_seen01112_2
0x00013c9c cmdLMK #new label
0x00013c9d cmdPushInt 0x00000032
0x00013ca5 cmdPushIntFromIntArray
0x00013ca9 cmdPushInt 0x00000001
0x00013cb1 cmdREQ
0x00013cb2 cmdPushInt 0x00014183
0x00013cba cmdIf
0x00013cbb cmdPushInt 0x00080000
0x00013cc3 cmdPushStr "v/z205201086"
0x00013cd6 cmdPushInt 0x00000000
0x00013cde cmdPCMPlay
0x00013cdf cmdShowText 0x0000023a
0x00013ce6 cmdPushStr "「完全に見込み違いでした」"
0x00013d07 cmdPushStr "咲夜"
0x00013d12 cmdPushInt 0x0000023a
0x00013d1a cmdPushInt 0x00000001
0x00013d22 cmdMsg
0x00013d23 cmdMsgStart
0x00013d24 cmdMsgWaitButton
0x00013d25 cmdPushInt 0x00000000
0x00013d2d cmdMsgClear
0x00013d2e cmdShowText 0x0000023b
0x00013d35 cmdPushStr "「………」"
0x00013d46 cmdPushStr "瑚太朗"
0x00013d53 cmdPushInt 0x0000023b
0x00013d5b cmdPushInt 0x00000001
0x00013d63 cmdMsg
0x00013d64 cmdMsgStart
0x00013d65 cmdMsgWaitButton
0x00013d66 cmdPushInt 0x00000000
0x00013d6e cmdMsgClear
0x00013d6f cmdPushInt 0x00080000
0x00013d77 cmdPushStr "v/z205201088"
0x00013d8a cmdPushInt 0x00000000
0x00013d92 cmdPCMPlay
0x00013d93 cmdShowText 0x0000023c
0x00013d9a cmdPushStr "「時間の無駄ですね。行きましょうちはやさん」"
0x00013dcd cmdPushStr "咲夜"
0x00013dd8 cmdPushInt 0x0000023c
0x00013de0 cmdPushInt 0x00000001
0x00013de8 cmdMsg
0x00013de9 cmdMsgStart
0x00013dea cmdMsgWaitButton
0x00013deb cmdPushInt 0x00000000
0x00013df3 cmdMsgClear
0x00013df4 cmdPushInt 0x0002f400
0x00013dfc cmdPushStr "v/z205201089"
0x00013e0f cmdPushInt 0x00000000
0x00013e17 cmdPCMPlay
0x00013e18 cmdShowText 0x0000023d
0x00013e1f cmdPushStr "「あ、はい？」"
0x00013e34 cmdPushStr "ちはや"
0x00013e41 cmdPushInt 0x0000023d
0x00013e49 cmdPushInt 0x00000001
0x00013e51 cmdMsg
0x00013e52 cmdMsgStart
0x00013e53 cmdMsgWaitButton
0x00013e54 cmdPushInt 0x00000000
0x00013e5c cmdMsgClear
0x00013e5d cmdShowText 0x0000023e
0x00013e64 cmdPushStr "そのままちはやは咲夜に連れて行かれていく。"
0x00013e95 cmdPushStr ""
0x00013e9c cmdPushInt 0x0000023e
0x00013ea4 cmdPushInt 0x00000001
0x00013eac cmdMsg
0x00013ead cmdMsgStart
0x00013eae cmdMsgWaitButton
0x00013eaf cmdPushInt 0x00000000
0x00013eb7 cmdMsgClear
0x00013eb8 cmdShowText 0x0000023f
0x00013ebf cmdPushStr "「………」"
0x00013ed0 cmdPushStr "瑚太朗"
0x00013edd cmdPushInt 0x0000023f
0x00013ee5 cmdPushInt 0x00000001
0x00013eed cmdMsg
0x00013eee cmdMsgStart
0x00013eef cmdMsgWaitButton
0x00013ef0 cmdPushInt 0x00000000
0x00013ef8 cmdMsgClear
0x00013ef9 cmdShowText 0x00000240
0x00013f00 cmdPushStr "何とかなる気がしてた。"
0x00013f1d cmdPushStr ""
0x00013f24 cmdPushInt 0x00000240
0x00013f2c cmdPushInt 0x00000001
0x00013f34 cmdMsg
0x00013f35 cmdMsgStart
0x00013f36 cmdMsgWaitButton
0x00013f37 cmdPushInt 0x00000000
0x00013f3f cmdMsgClear
0x00013f40 cmdShowText 0x00000241
0x00013f47 cmdPushStr "咲夜が助けてくれるとか、そもそもちはやが無傷だとか。"
0x00013f82 cmdPushStr ""
0x00013f89 cmdPushInt 0x00000241
0x00013f91 cmdPushInt 0x00000001
0x00013f99 cmdMsg
0x00013f9a cmdMsgStart
0x00013f9b cmdMsgWaitButton
0x00013f9c cmdPushInt 0x00000000
0x00013fa4 cmdMsgClear
0x00013fa5 cmdShowText 0x00000242
0x00013fac cmdPushStr "でも…。"
0x00013fbb cmdPushStr ""
0x00013fc2 cmdPushInt 0x00000242
0x00013fca cmdPushInt 0x00000001
0x00013fd2 cmdMsg
0x00013fd3 cmdMsgStart
0x00013fd4 cmdMsgWaitButton
0x00013fd5 cmdPushInt 0x00000000
0x00013fdd cmdMsgClear
0x00013fde cmdShowText 0x00000243
0x00013fe5 cmdPushStr "「…俺、なんかを裏切った」"
0x00014006 cmdPushStr "瑚太朗"
0x00014013 cmdPushInt 0x00000243
0x0001401b cmdPushInt 0x00000001
0x00014023 cmdMsg
0x00014024 cmdMsgStart
0x00014025 cmdMsgWaitButton
0x00014026 cmdPushInt 0x00000000
0x0001402e cmdMsgClear
0x0001402f cmdShowText 0x00000244
0x00014036 cmdPushStr "それは決定的な何かだった気がする。"
0x0001405f cmdPushStr ""
0x00014066 cmdPushInt 0x00000244
0x0001406e cmdPushInt 0x00000001
0x00014076 cmdMsg
0x00014077 cmdMsgStart
0x00014078 cmdMsgWaitButton
0x00014079 cmdPushInt 0x00000000
0x00014081 cmdMsgClear
0x00014082 cmdPushInt 0x000007d0
0x0001408a cmdBGMStop
0x0001408b cmdPushInt 0x00000000
0x00014093 cmdPushInt 0x00000000
0x0001409b cmdPushInt 0x00000003
0x000140a3 cmdPOP
0x000140a4 cmdPushInt 0x00000001
0x000140ac cmdPushInt 0x00000001
0x000140b4 cmdPushInt 0x00000003
0x000140bc cmdPOP
0x000140bd cmdPushStr "KURO"
0x000140c8 cmdPushInt 0x00000000
0x000140d0 cmdPushInt 0x00000004
0x000140d8 cmdPOP
0x000140d9 cmdPushInt 0x00000000
0x000140e1 cmdPushStr "sys20_adv00"
0x000140f3 cmdFarcall
0x000140f4 cmdPushInt 0x00000014
0x000140fc cmdPushInt 0x00000000
0x00014104 cmdPushInt 0x00000003
0x0001410c cmdPOP
0x0001410d cmdPushInt 0x00000000
0x00014115 cmdPushStr "sys20_adv01"
0x00014127 cmdFarcall
0x00014128 cmdPushInt 0x00000000
0x00014130 cmdPushInt 0x00000000
0x00014138 cmdPushInt 0x00000003
0x00014140 cmdPOP
0x00014141 cmdPushInt 0x00000001
0x00014149 cmdPushInt 0x00000001
0x00014151 cmdPushInt 0x00000003
0x00014159 cmdPOP
0x0001415a cmdPushStr "BG001N1"
0x00014168 cmdPushInt 0x00000000
0x00014170 cmdPushInt 0x00000004
0x00014178 cmdPOP
0x00014179 cmdPushInt 0x00000000
0x00014181 cmdPushStr "sys20_adv00"
0x00014193 cmdFarcall
0x00014194 cmdPushInt 0x00000014
0x0001419c cmdPushInt 0x00000000
0x000141a4 cmdPushInt 0x00000003
0x000141ac cmdPOP
0x000141ad cmdPushInt 0x00000000
0x000141b5 cmdPushStr "sys20_adv01"
0x000141c7 cmdFarcall
0x000141c8 cmdPushInt 0x00000001
0x000141d0 cmdPushInt 0x00000000
0x000141d8 cmdPushStr "BGM004"
0x000141e5 cmdBGMPlay
0x000141e6 cmdShowText 0x00000245
0x000141ed cmdPushStr "その日の夜。"
0x00014200 cmdPushStr ""
0x00014207 cmdPushInt 0x00000245
0x0001420f cmdPushInt 0x00000001
0x00014217 cmdMsg
0x00014218 cmdMsgStart
0x00014219 cmdMsgWaitButton
0x0001421a cmdPushInt 0x00000000
0x00014222 cmdMsgClear
0x00014223 cmdShowText 0x00000246
0x0001422a cmdPushStr "ちはやから不参加の通知が来た。"
0x0001424f cmdPushStr ""
0x00014256 cmdPushInt 0x00000246
0x0001425e cmdPushInt 0x00000001
0x00014266 cmdMsg
0x00014267 cmdMsgStart
0x00014268 cmdMsgWaitButton
0x00014269 cmdPushInt 0x00000000
0x00014271 cmdMsgClear
0x00014272 cmdShowText 0x00000247
0x00014279 cmdPushStr "後は一瞬だった。"
0x00014290 cmdPushStr ""
0x00014297 cmdPushInt 0x00000247
0x0001429f cmdPushInt 0x00000001
0x000142a7 cmdMsg
0x000142a8 cmdMsgStart
0x000142a9 cmdMsgWaitButton
0x000142aa cmdPushInt 0x00000000
0x000142b2 cmdMsgClear
0x000142b3 cmdShowText 0x00000248
0x000142ba cmdPushStr "小鳥から連鎖的に不参加のメールが届く。"
0x000142e7 cmdPushStr ""
0x000142ee cmdPushInt 0x00000248
0x000142f6 cmdPushInt 0x00000001
0x000142fe cmdMsg
0x000142ff cmdMsgStart
0x00014300 cmdMsgWaitButton
0x00014301 cmdPushInt 0x00000000
0x00014309 cmdMsgClear
0x0001430a cmdShowText 0x00000249
0x00014311 cmdPushStr "ルチアからもだ。"
0x00014328 cmdPushStr ""
0x0001432f cmdPushInt 0x00000249
0x00014337 cmdPushInt 0x00000001
0x0001433f cmdMsg
0x00014340 cmdMsgStart
0x00014341 cmdMsgWaitButton
0x00014342 cmdPushInt 0x00000000
0x0001434a cmdMsgClear
0x0001434b cmdShowText 0x0000024a
0x00014352 cmdPushStr "静流からは町のおっさんたちと探しにいく、とメールが来た。"
0x00014391 cmdPushStr ""
0x00014398 cmdPushInt 0x0000024a
0x000143a0 cmdPushInt 0x00000001
0x000143a8 cmdMsg
0x000143a9 cmdMsgStart
0x000143aa cmdMsgWaitButton
0x000143ab cmdPushInt 0x00000000
0x000143b3 cmdMsgClear
0x000143b4 cmdShowText 0x0000024b
0x000143bb cmdPushStr "…会長からは反応無し。"
0x000143d8 cmdPushStr ""
0x000143df cmdPushInt 0x0000024b
0x000143e7 cmdPushInt 0x00000001
0x000143ef cmdMsg
0x000143f0 cmdMsgStart
0x000143f1 cmdMsgWaitButton
0x000143f2 cmdPushInt 0x00000000
0x000143fa cmdMsgClear
0x000143fb cmdShowText 0x0000024c
0x00014402 cmdPushStr "二人で行くのは無謀すぎる。"
0x00014423 cmdPushStr ""
0x0001442a cmdPushInt 0x0000024c
0x00014432 cmdPushInt 0x00000001
0x0001443a cmdMsg
0x0001443b cmdMsgStart
0x0001443c cmdMsgWaitButton
0x0001443d cmdPushInt 0x00000000
0x00014445 cmdMsgClear
0x00014446 cmdShowText 0x0000024d
0x0001444d cmdPushStr "計画は、頓挫した。"
0x00014466 cmdPushStr ""
0x0001446d cmdPushInt 0x0000024d
0x00014475 cmdPushInt 0x00000001
0x0001447d cmdMsg
0x0001447e cmdMsgStart
0x0001447f cmdMsgWaitButton
0x00014480 cmdPushInt 0x00000000
0x00014488 cmdMsgClear
0x00014489 cmdShowText 0x0000024e
0x00014490 cmdPushStr "結局俺には、何も出来なかったのだ。"
0x000144b9 cmdPushStr ""
0x000144c0 cmdPushInt 0x0000024e
0x000144c8 cmdPushInt 0x00000001
0x000144d0 cmdMsg
0x000144d1 cmdMsgStart
0x000144d2 cmdMsgWaitButton
0x000144d3 cmdPushInt 0x00000000
0x000144db cmdMsgClear
0x000144dc cmdPushInt 0x000007d0
0x000144e4 cmdBGMStop
0x000144e5 cmdPushInt 0x00000000
0x000144ed cmdPushInt 0x00000000
0x000144f5 cmdPushInt 0x00000003
0x000144fd cmdPOP
0x000144fe cmdPushInt 0x00000001
0x00014506 cmdPushInt 0x00000001
0x0001450e cmdPushInt 0x00000003
0x00014516 cmdPOP
0x00014517 cmdPushStr "KURO"
0x00014522 cmdPushInt 0x00000000
0x0001452a cmdPushInt 0x00000004
0x00014532 cmdPOP
0x00014533 cmdPushInt 0x00000000
0x0001453b cmdPushStr "sys20_adv00"
0x0001454d cmdFarcall
0x0001454e cmdPushInt 0x00000004
0x00014556 cmdPushInt 0x00000000
0x0001455e cmdPushInt 0x00000003
0x00014566 cmdPOP
0x00014567 cmdPushInt 0x00000000
0x0001456f cmdPushStr "sys20_adv01"
0x00014581 cmdFarcall
0x00014582 cmdPushInt 0x00000000
0x0001458a cmdPushStr "seen01400"
0x0001459a cmdFarJmp


#--------------------
#label start : label_seen01112_3
0x0001459b cmdLMK #new label


#--------------------
#label start : label_seen01112_4
0x0001459c cmdLMK #new label


#--------------------
#label start : label_seen01112_5
0x0001459d cmdLMK #new label


#--------------------
#label start : label_seen01112_6
0x0001459e cmdLMK #new label


#--------------------
#label start : label_seen01112_7
0x0001459f cmdLMK #new label
0x000145a0 cmdPushInt 0x000007d0
0x000145a8 cmdBGMStop
0x000145a9 cmdPushInt 0x00000000
0x000145b1 cmdPushInt 0x00000000
0x000145b9 cmdPushInt 0x00000003
0x000145c1 cmdPOP
0x000145c2 cmdPushInt 0x00000001
0x000145ca cmdPushInt 0x00000001
0x000145d2 cmdPushInt 0x00000003
0x000145da cmdPOP
0x000145db cmdPushStr "KURO"
0x000145e6 cmdPushInt 0x00000000
0x000145ee cmdPushInt 0x00000004
0x000145f6 cmdPOP
0x000145f7 cmdPushInt 0x00000000
0x000145ff cmdPushStr "sys20_adv00"
0x00014611 cmdFarcall
0x00014612 cmdPushInt 0x00000006
0x0001461a cmdPushInt 0x00000000
0x00014622 cmdPushInt 0x00000003
0x0001462a cmdPOP
0x0001462b cmdPushInt 0x00000000
0x00014633 cmdPushStr "sys20_adv01"
0x00014645 cmdFarcall
0x00014646 cmdPushInt 0x00000000
0x0001464e cmdPushInt 0x00000001
0x00014656 cmdPCMStop
0x00014657 cmdPushInt 0x00000000
0x0001465f cmdPushStr "seen01113"
0x0001466f cmdFarJmp
