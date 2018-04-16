//start from sub_8104EE20

struct __attribute__((aligned(4))) fnt_holder
{
  void *vtbl;
  _DWORD fnt_fd;
  _DWORD pro_fd;
  _DWORD extra_pro_fd;
  _BYTE gap10[256];
  _DWORD endian_type;
  _DWORD charsize_x;
  unsigned __int16 *pfnt_start;
  _DWORD charcode;
  _DWORD bitmap;
  _DWORD pro_Buffer;
  _DWORD profile;
  _DWORD extra_profile_start;
  _DWORD extra_profile;
  _DWORD bit_type;
  _DWORD single_char_size;
};

///it ok to set x = y = 0
struct fnt_profile
{
  _BYTE x;
  _BYTE y;
  _BYTE char_size;
};


signed int __fastcall paser_fnt(_DWORD *a1, int is_little_endian, int fnt_fd, int pro_fd, int extra_pro_fd, int a6)
{
  int v6; // r10
  fnt_holder *fnt; // r8
  int v8; // r0
  int v9; // r11
  int v10; // r9
  int font_buf; // r7
  int v12; // r0
  int v13; // r0
  int v14; // r0
  int code_cnt; // r0
  int pro_fd_1; // r5
  int v17; // r0
  int v18; // r0
  int profile; // r5
  int v20; // r2
  int v21; // r0
  int v22; // r0
  int v23; // r2
  unsigned __int16 *v24; // r3
  int charsize_x; // r6
  int type; // r2
  int charsize_y; // r3
  signed int bit; // lr
  signed int result; // r0

  v6 = fnt_fd;
  fnt = (fnt_holder *)a1;
  v8 = *(_DWORD *)(fnt_fd + 48);
  v9 = pro_fd;
  v10 = is_little_endian;
  font_buf = 0;
  if ( v8 )
    font_buf = get_buffer(v8);
  v12 = fnt->fnt_fd;
  if ( v12 )
    (*(void (__fastcall **)(int))(*(_DWORD *)v12 + 12))(v12);
  v13 = fnt->pro_fd;
  if ( v13 )
    (*(void (__fastcall **)(int))(*(_DWORD *)v13 + 12))(v13);
  v14 = fnt->extra_pro_fd;
  if ( v14 )
    (*(void (__fastcall **)(int))(*(_DWORD *)v14 + 12))(v14);// close
  fnt->fnt_fd = v6;
  (*(void (__fastcall **)(int))(*(_DWORD *)v6 + 8))(v6);// clone
  fnt->pro_fd = v9;
  (*(void (__fastcall **)(int))(*(_DWORD *)v9 + 8))(v9);
  fnt->extra_pro_fd = extra_pro_fd;
  (*(void (__fastcall **)(int))(*(_DWORD *)extra_pro_fd + 8))(extra_pro_fd);
  code_cnt = *(_DWORD *)(font_buf + 4);
  fnt->pfnt_start = (unsigned __int16 *)font_buf;
  fnt->charcode = font_buf + 16;
  pro_fd_1 = fnt->pro_fd;
  fnt->bitmap = font_buf + 2 * code_cnt + 16;
  fnt->profile = 0;
  if ( pro_fd_1 )
  {
    v17 = 0;
    if ( *(_DWORD *)(pro_fd_1 + 48) )
    {
      v17 = get_buffer(*(_DWORD *)(pro_fd_1 + 48));
      pro_fd_1 = fnt->pro_fd;
    }
    fnt->pro_Buffer = v17;
    v18 = *(_DWORD *)(pro_fd_1 + 48);
    profile = 16;
    if ( v18 )
      profile = get_buffer(v18) + 16;
    fnt->profile = profile;                     // header not checked ????? wtf
  }
  v20 = fnt->extra_pro_fd;
  fnt->extra_profile = 0;
  if ( v20 )
  {
    v21 = 0;
    if ( *(_DWORD *)(v20 + 48) )
    {
      v21 = get_buffer(*(_DWORD *)(v20 + 48));
      v20 = fnt->extra_pro_fd;
    }
    fnt->extra_profile_start = v21;
    v22 = *(_DWORD *)(v20 + 48);
    v23 = 16;
    if ( v22 )
      v23 = get_buffer(v22) + 16;
    fnt->extra_profile = v23;
  }
  sub_810F674C();
  v24 = fnt->pfnt_start;
  charsize_x = *v24;
  fnt->endian_type = v10;
  fnt->charsize_x = charsize_x;
  type = *((unsigned __int8 *)v24 + 8);
  charsize_y = v24[1];
  bit = fnt->bit_type;
  if ( !type )
  {
    bit = 4;
    fnt->bit_type = 4;
  }
  if ( type == 1 )
  {
    bit = 2;
    fnt->bit_type = 2;
  }
  if ( type == 2 )
  {
    bit = 1;
    fnt->bit_type = 1;
  }
  if ( type == 3 )
  {
    bit = 8;
    fnt->bit_type = 8;
  }
  result = (signed int)(((unsigned int)((charsize_x * charsize_y * bit + 7) >> 3) >> 29)
                      + charsize_x * charsize_y * bit
                      + 7) >> 3;
  fnt->single_char_size = result;
  return result;
}


fnt_holder *__fastcall paser_fnt_self_alloc(fnt_holder *a1, int a2, int a3, int a4, int extra_pro_fd, int a6)
{
  fnt_holder *v6; // r7

  v6 = a1;
  a1->vtbl = &font_parser_vtable;               // vtable
  a1->fnt_fd = 0;
  a1->pro_fd = 0;
  a1->extra_pro_fd = 0;
  a1->pro_Buffer = 0;
  paser_fnt(a1, a2, a3, a4, extra_pro_fd, a6);
  return v6;
}




/*
LOAD:8112F5F4 font_parser_vtable DCD fnt_init+1
LOAD:8112F5F8                 DCD fnt_release+1
LOAD:8112F5FC                 DCD none_sub+1
LOAD:8112F600                 DCD fnt_endian_type+1
LOAD:8112F604                 DCD fnt_getcharsize_x+1
LOAD:8112F608                 DCD fnt_get_bitmap_by_code+1
LOAD:8112F60C                 DCD fnt_get_bitmap_by_code2+1
LOAD:8112F610                 DCD get_pro_fd+1
LOAD:8112F614                 DCD fnt_get_profile+1
LOAD:8112F618                 DCD get_extra_profile+1
LOAD:8112F61C                 DCD fnt_get_ex_profile+1
*/


fnt_holder *__fastcall fnt_init(fnt_holder *a1)
{
  fnt_holder *v1; // r4
  int v2; // r0
  int v3; // r0
  int v4; // r0

  v1 = a1;
  v2 = a1->fnt_fd;
  v1->vtbl = &font_parser_vtable;
  if ( v2 )
    (*(void (__fastcall **)(int))(*(_DWORD *)v2 + 12))(v2); //close
  v3 = v1->pro_fd;
  if ( v3 )
    (*(void (__fastcall **)(int))(*(_DWORD *)v3 + 12))(v3);
  v4 = v1->extra_pro_fd;
  if ( v4 )
    (*(void (__fastcall **)(int))(*(_DWORD *)v4 + 12))(v4);
  v1->vtbl = &off_8112F5C0;
  return v1;
}


int __fastcall fnt_release(fnt_holder *a1)
{
  fnt_holder *v1; // r4

  v1 = a1;
  fnt_init(a1);
  return free_mem(v1);
}


int __fastcall fnt_endian_type(fnt_holder *a1)
{
  return a1->endian_type;
}


int __fastcall fnt_getcharsize_x(fnt_holder *a1)
{
  return a1->charsize_x;
}

fnt_holder *__fastcall fnt_get_bitmap_by_code(fnt_holder *This, unsigned __int16 code, int type, _BYTE *buf, int offset, signed int a6, int line)
{
  signed int cur_code; // r9
  int char_cnt; // r8
  int index; // r1
  int pcharcode; // r7
  int v11; // r6

  cur_code = code;
  char_cnt = *((_DWORD *)This->pfnt_start + 1);
  index = 0;
  if ( char_cnt )                               // binary search
  {
    while ( 1 )
    {
      pcharcode = This->charcode;
      if ( *(unsigned __int16 *)(pcharcode + 2 * index) == cur_code )
        break;
      v11 = (char_cnt + index) / 2;
      if ( v11 == index )
        break;
      if ( *(unsigned __int16 *)(pcharcode + ((char_cnt + index + ((unsigned int)(char_cnt + index) >> 31)) & 0xFFFFFFFE)) <= cur_code )
      {
        index = (char_cnt + index) / 2;
        if ( char_cnt == v11 )
          return fnt_get_bitmap(This, index, type, buf, offset, a6, line);
      }
      else
      {
        char_cnt = (char_cnt + index) / 2;
        if ( v11 == index )
          return fnt_get_bitmap(This, index, type, buf, offset, a6, line);
      }
    }
  }
  return fnt_get_bitmap(This, index, type, buf, offset, a6, line);
}


fnt_holder *__fastcall fnt_get_bitmap_by_code2(fnt_holder *This, unsigned __int16 code, int a3, _BYTE *a4, int a5, signed int a6, int a7)
{
  int index; // r7
  int cnt; // r8
  int pcharcode; // r6
  int v10; // lr

  index = 0;
  cnt = *((_DWORD *)This->pfnt_start + 1);
  if ( *((_DWORD *)This->pfnt_start + 1) )
  {
    while ( 1 )
    {
      pcharcode = This->charcode;
      if ( *(unsigned __int16 *)(pcharcode + 2 * index) == code )
        break;
      v10 = (cnt + index) / 2;
      if ( v10 == index )
        break;
      if ( *(unsigned __int16 *)(pcharcode + ((cnt + index + ((unsigned int)(cnt + index) >> 31)) & 0xFFFFFFFE)) <= (signed int)code )
      {
        index = (cnt + index) / 2;
        if ( cnt == v10 )
          return fnt_get_bitmap(This, index + *((_DWORD *)This->pfnt_start + 1), a3, a4, a5, a6, a7);
      }
      else
      {
        cnt = (cnt + index) / 2;
        if ( v10 == index )
          return fnt_get_bitmap(This, index + *((_DWORD *)This->pfnt_start + 1), a3, a4, a5, a6, a7);
      }
    }
  }
  return fnt_get_bitmap(This, index + *((_DWORD *)This->pfnt_start + 1), a3, a4, a5, a6, a7);
}


int __fastcall get_pro_fd(fnt_holder *This)
{
  fnt_holder *v1; // r4
  int result; // r0

  v1 = This;
  result = This->pro_fd;
  if ( result )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)result + 8))(result);// clone ?
    result = v1->pro_fd;
  }
  return result;
}


int __fastcall fnt_get_profile(fnt_holder *This, unsigned __int16 code, fnt_profile *pro)
{
  fnt_holder *v3; // r5
  fnt_profile *v4; // r4
  int result; // r0
  unsigned int index_p; // r6
  int v7; // r0

  v3 = This;
  v4 = pro;
  if ( This->profile )
  {
    index_p = 3 * sjis_code_to_index(code);
    if ( index_p <= get_buffer_end(v3->pro_fd) )
    {
      v7 = v3->profile;
      v4->x = *(_BYTE *)(v7 + index_p);
      v4->y = *(_BYTE *)(v7 + index_p + 1);
      result = *(unsigned __int8 *)(v7 + index_p + 2);
    }
    else
    {
      v4->x = 0;
      v4->y = 0;
      result = v3->charsize_x;
    }
    v4->char_size = result;
  }
  else
  {
    pro->x = 0;
    pro->y = 0;
    result = This->charsize_x;
    pro->char_size = result;
  }
  return result;
}

int __fastcall get_extra_profile(fnt_holder *a1)
{
  fnt_holder *v1; // r4
  int v2; // r0

  v1 = a1;
  v2 = a1->extra_pro_fd;
  if ( !v2 )
    return (*((int (__fastcall **)(fnt_holder *))v1->vtbl + 7))(v1);
  (*(void (__fastcall **)(int))(*(_DWORD *)v2 + 8))(v2);
  return v1->extra_pro_fd;
}


int __fastcall fnt_get_ex_profile(fnt_holder *a1, unsigned __int16 a2, fnt_profile *pro)
{
  fnt_holder *v3; // r5
  fnt_profile *v4; // r4
  int v5; // r7
  int result; // r0
  unsigned int v7; // r6
  int v8; // r0

  v3 = a1;
  v4 = pro;
  v5 = a2;
  if ( !a1->extra_profile )
    return (*((int (__fastcall **)(fnt_holder *, _DWORD, fnt_profile *))a1->vtbl + 8))(a1, a2, pro);
  v7 = 3 * sjis_code_to_index(a2);
  if ( v7 > get_buffer_end(v3->extra_pro_fd) )
    return (*((int (__fastcall **)(fnt_holder *, int, fnt_profile *))v3->vtbl + 8))(v3, v5, v4);
  v8 = v3->extra_profile;
  v4->x = *(_BYTE *)(v8 + v7);
  v4->y = *(_BYTE *)(v8 + v7 + 1);
  result = *(unsigned __int8 *)(v8 + v7 + 2);
  v4->char_size = result;
  return result;
}



int __fastcall sjis_code_to_index(int result)
{
  signed int v1; // r2
  int v2; // r2

  if ( (signed int)(unsigned __int16)result < 0x100 )
    return (unsigned __int16)result;
  v1 = (unsigned __int8)__ROR4__(result, 8);
  if ( v1 < 0x81 || v1 > 0x9F )
  {
    if ( v1 < 0xE0 || v1 > 0xFC )
      return -1;
    v2 = v1 - 0xC1;
  }
  else
  {
    v2 = v1 - 0x81;
  }
  if ( (signed int)(unsigned __int8)result >= 64 && (signed int)(unsigned __int8)result <= 0x7E )
    return (unsigned __int8)result + 0xBC * v2 + 192;
  if ( (signed int)(unsigned __int8)result < 0x80 || (signed int)(unsigned __int8)result > 0xFC )
    return -1;
  return (unsigned __int8)result + 0xBC * v2 + 0xBF;
}


