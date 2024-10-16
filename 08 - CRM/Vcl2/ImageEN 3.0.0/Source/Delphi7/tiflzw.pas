unit tiflzw;

{$R-}
{$Q-}

// Example of TIFF-LZW decompression plug-in for ImageEn

{$I ie.inc}

interface

uses Windows, classes, sysutils, hyieutils;

function TIFFLZWDecompress(CompBuf: pbyte; LineSize: integer; var Id: pointer): pbyte;
procedure TIFFLZWCompress(indata: pbyte; inputlen: integer; outstream: TStream; var id: pointer);

implementation

{$R-}

const
  EOICODE = 257;
  CLEARCODE = 256;
  MAXPREALLOC = 8; // preallocated byte (min 3) (great is more quick)

type

  // string table
  TSItem = record
    Data: pbyte;
    Dim: integer;
    PreAlloc: array[0..MAXPREALLOC - 1] of byte; // preallocated bytes
  end;
  PSItem = ^TSItem;

  // LZW decompressor record
  TTIFLZWDec = record
    // single row decompressed (in-class allocated)
    fDecomp: pbyte;
    // compressed buffer (out-class allocated)
    fComp: pbyte;
    // row length in bytes. fComp is decompressed in blocks of fLineSize
    fLineSize: integer;
    // Position (in bit) of next code to read
    fNextCode: integer;
    // Length of current code
    fDimCode: integer;
    // position of next byte to write in fDecomp
    fWPos: integer;
    //
    OldCode: integer;
    // String table
    STableSize: integer; // number of elements in STable
    STable: array[0..4096] of TSItem; // max 12 bit
    //
    Aborting: boolean;
  end;
  PTIFLZWDec = ^TTIFLZWDec;

  ///////////////////////////////////////////////////////////////////////////////////////
  // return next code from fComp (based on fNextCode and fDimCode)
  // Note: fDimCode is from 9 to 12

function GetNextCode(plzw: PTIFLZWDec): integer;
var
  posb: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('tiflzw:GetNextCode'); {$endif}
  with plzw^ do
  begin
    posb := (fNextCode shr 3); // position of initial byte (divide per 8)
    result := pinteger(@pbytearray(fComp)^[posb])^;
    // invert bytes of the word
    asm
	   	mov EAX,@result
	   	bswap EAX
	      mov @result,EAX

    end;
    result := (result shl (fNextCode and 7)) shr (32 - fDimCode);
    inc(fNextCode, fDimCode);
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

///////////////////////////////////////////////////////////////////////////////////////
// Free table memory

procedure FreeTable(plzw: PTIFLZWDec);
var
  q: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('tiflzw:FreeTable'); {$endif}
  with plzw^ do
  begin
    for q := 256 to STableSize - 1 do
      if STable[q].Dim > MAXPREALLOC then
        freemem(STable[q].Data); // free string
    STableSize := 0;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

///////////////////////////////////////////////////////////////////////////////////////
// Init table

procedure InitializeTable(plzw: PTIFLZWDec);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('tiflzw:InitializeTable'); {$endif}
  FreeTable(plzw); // free table if allocated
  plzw^.STableSize := 258;
  plzw^.fDimCode := 9;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

///////////////////////////////////////////////////////////////////////////////////////
// CreateString + PutString + DestroyString / optimized

procedure PutCode(plzw: PTIFLZWDec; code: integer);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('tiflzw:PutCode'); {$endif}
  with plzw^ do
  begin
    if Aborting then
      exit;
    if code >= STableSize then
    begin
      Aborting := True;
      exit;
    end;
    if code < 256 then
    begin
      pbytearray(fDecomp)^[fWPos] := code;
      inc(fWPos);
    end
    else
      with STable[code] do
      begin
        CopyMemory(@(pbytearray(fDecomp)^[fWPos]), Data, Dim);
        inc(fWPos, Dim);
      end;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

///////////////////////////////////////////////////////////////////////////////////////
// Adds to table OldCode + the first char in Code

procedure AddConcatToTable(plzw: PTIFLZWDec; Code, OldCode: integer);
var
  sz: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('tiflzw:AddConcatToTable'); {$endif}
  with plzw^ do
  begin
    if Aborting then
      exit;
    with STable[STableSize] do
    begin
      if OldCode < 256 then
      begin
        sz := 1;
        Dim := 2;
        Data := @PreAlloc;
        pbytearray(Data)^[0] := OldCode;
      end
      else
      begin
        if OldCode >= STableSize then
        begin
          Aborting := True;
          exit;
        end;
        sz := STable[OldCode].Dim;
        Dim := sz + 1;
        if Dim > MAXPREALLOC then
          getmem(Data, Dim)
        else
          Data := @PreAlloc;
        CopyMemory(Data, STable[OldCode].Data, sz);
      end;
      if Code < 256 then
        pbytearray(Data)^[sz] := Code
      else
      begin
        if Code >= STableSize then
        begin
          Aborting := True;
          exit;
        end;
        pbytearray(Data)^[sz] := STable[Code].Data^; // first char
      end;
    end;
    inc(STableSize);
    case STableSize of
      511: fDimCode := 10;
      1023: fDimCode := 11;
      2047: fDimCode := 12;
    end;
    if STableSize > high(STable) then
    begin
      Aborting := True;
      exit;
    end;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

///////////////////////////////////////////////////////////////////////////////////////
// decompress fLineSize bytes

function GetNextline(plzw: PTIFLZWDec): pbyte;
var
  Code: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('tiflzw:GetNextLine'); {$endif}
  with plzw^ do
  begin
    if fWPos > fLineSize then
    begin
      // copy the rest of previous row
        //CopyMemory(fDecomp,@(pbytearray(fDecomp)^[fLineSize]),fWPos-fLineSize);
      move(pbytearray(fDecomp)^[fLineSize], fDecomp^, fWPos - fLineSize);
      fWPos := fWPos - fLineSize;
    end
    else
      fWPos := 0;
    while fWPos < fLineSize do
    begin
      Code := GetNextCode(plzw);
      if OldCode = -1 then
        OldCode := Code;
      if Code = CLEARCODE then
      begin
        InitializeTable(plzw);
        Code := GetNextCode(plzw);
        if Code = EOICODE then
          break;
        PutCode(plzw, Code);
        OldCode := Code;
      end
      else if Code = EOICODE then
        break
      else
      begin
        if Code < STableSize then
        begin
          PutCode(plzw, Code);
          AddConcatToTable(plzw, Code, OldCode);
          OldCode := Code;
        end
        else
        begin
          AddConcatToTable(plzw, OldCode, OldCode);
          PutCode(plzw, STableSize - 1);
          OldCode := Code;
        end;
      end;
      if Aborting then
      begin
        result := nil;
        exit;
      end;
    end;
    result := fDecomp;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

///////////////////////////////////////////////////////////////////////////////////////
// buf = compressed buffer data
// LineSize = length of one line in buf (in bytes)

function CreateLzw(buf: pbyte; LineSize: integer): PTIFLZWDec;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('tiflzw:CreateLzw'); {$endif}
  result := allocmem(sizeof(TTIFLZWDec)); // zero filled
  with result^ do
  begin
    getmem(fDecomp, LineSize * 50); // *5 (CRITICAL !!!)
    fComp := buf;
    fLineSize := LineSize;
    fNextCode := 0;
    InitializeTable(result);
    OldCode := -1;
    fWPos := 0;
    Aborting := false;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

///////////////////////////////////////////////////////////////////////////////////////

procedure DestroyLzw(plzw: PTIFLZWDec);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('tiflzw:DestroyLzw'); {$endif}
  FreeTable(plzw);
  freemem(plzw^.fDecomp);
  freemem(plzw);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

///////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////
// CompBuf: compressed buf (of full image)
// LineSize: row size in bytes (this isn't the size of the image)
// Id: is a reference variable (where I store the pointer to TTIFLZWDec object)
// IMPORTANT:
//		- In the first call "Id" is ZERO.
//    - In the nexts call "Id" will be the some returned in the first call
//		- In the last call "CompBuf" will be NIL (you will free your allocated objects)
// rest: the decompressed row (you have not to free it) or nil if error detected

function TIFFLZWDecompress(CompBuf: pbyte; LineSize: integer; var Id: pointer): pbyte;
var
  plzw: PTIFLZWDec;
begin
  result := nil;
  if Id <> nil then
  begin
    plzw := PTIFLZWDec(Id);
    if CompBuf = nil then
    begin
      DestroyLzw(plzw);
      exit; // EXIT POINT
    end;
  end
  else
  begin
    plzw := CreateLzw(CompBuf, LineSize);
    Id := pointer(plzw);
  end;
  if assigned(plzw) then
    result := GetNextLine(plzw);
end;

/////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////

// Original C code:
// ppmtogif.c - read a portable pixmap and produce a GIF file
//
// Based on GIFENCOD by David Rowley <mgardi@watdscu.waterloo.edu>.A
// Lempel-Zim compression based on "compress".
//
// Modified by Marcel Wijkstra <wijkstra@fwi.uva.nl>
//
//
// Copyright (C) 1989 by Jef Poskanzer.
//

const
  BITS = 12;
  maxbits = 12;
  maxmaxcode = 1 shl BITS - 1;
  HSIZE = 5003;
  XEOF = -1;

type
  TLZWCompRecord = record
    inpos: integer;
    oStream: TStream;
    CountDown: integer;
    indata: pbyte;
    init_bits: integer;
    n_bits: integer;
    maxcode: integer;
    ClearCode: integer;
    EOFCode: integer;
    free_ent: integer;
    clear_flg: integer;
    a_count: integer;
    htab: array[0..HSIZE - 1] of integer;
    codetab: array[0..HSIZE - 1] of word;
    cur_accum: dword;
    cur_bits: integer;
    accum: array[0..255] of char;
    g_init_bits: integer;
    _fcode: integer;
    _i: integer;
    _c: integer;
    _ent: integer;
    _disp: integer;
    _hsize_reg: integer;
    _hshift: integer;
  end;
  PLZWCompRecord = ^TLZWCompRecord;

function NextPixel(var lzwr: TLZWCompRecord): integer;
begin
  with lzwr do
  begin
    if (CountDown = 0) then
    begin
      result := XEOF;
      exit;
    end;
    dec(CountDown);
    result := pbyte(int64(indata) + inpos)^;
    inc(inpos);
  end;
end;

procedure cl_hash(var lzwr: TLZWCompRecord; hsize: integer);
var
  htab_p: pinteger;
  i, m1: integer;
begin
  htab_p := @(lzwr.htab[0]);
  inc(htab_p, hsize);
  m1 := -1;
  i := hsize - 16;
  repeat
    pinteger(int64(htab_p) - 4 * 16)^ := m1;
    pinteger(int64(htab_p) - 4 * 15)^ := m1;
    pinteger(int64(htab_p) - 4 * 14)^ := m1;
    pinteger(int64(htab_p) - 4 * 13)^ := m1;
    pinteger(int64(htab_p) - 4 * 12)^ := m1;
    pinteger(int64(htab_p) - 4 * 11)^ := m1;
    pinteger(int64(htab_p) - 4 * 10)^ := m1;
    pinteger(int64(htab_p) - 4 * 9)^ := m1;
    pinteger(int64(htab_p) - 4 * 8)^ := m1;
    pinteger(int64(htab_p) - 4 * 7)^ := m1;
    pinteger(int64(htab_p) - 4 * 6)^ := m1;
    pinteger(int64(htab_p) - 4 * 5)^ := m1;
    pinteger(int64(htab_p) - 4 * 4)^ := m1;
    pinteger(int64(htab_p) - 4 * 3)^ := m1;
    pinteger(int64(htab_p) - 4 * 2)^ := m1;
    pinteger(int64(htab_p) - 4 * 1)^ := m1;
    dec(htab_p, 16);
    dec(i, 16);
  until not (i >= 0);
  inc(i, 16);
  while i > 0 do
  begin
    dec(htab_p);
    htab_p^ := m1;
    dec(i);
  end;
end;

procedure flush_char(var lzwr: TLZWCompRecord);
begin
  with lzwr do
  begin
    if (a_count > 0) then
    begin
      oStream.Write(accum[0], a_count);
      a_count := 0;
    end;
  end;
end;

procedure char_out(var lzwr: TLZWCompRecord; c: integer);
begin
  with lzwr do
  begin
    accum[a_count] := char(c);
    inc(a_count);
    if (a_count >= 254) then
      flush_char(lzwr);
  end;
end;

procedure output(var lzwr: TLZWCompRecord; code: integer);
const
  masks: array[0..16] of integer = ($0000, $8000, $C000, $E000, $F000,
    $F800, $FC00, $FE00, $FF00, $FF80,
    $FFC0, $FFE0, $FFF0, $FFF8, $FFFC,
    $FFFE, $FFFF);
begin
  with lzwr do
  begin
    cur_accum := cur_accum and (((1 shl cur_bits) - 1) shl (32 - cur_bits));
    if (cur_bits > 0) then
      cur_accum := cur_accum or dword(code shl (32 - n_bits - cur_bits))
    else
      cur_accum := code shl dword(32 - n_bits);
    inc(cur_bits, n_bits);
    while (cur_bits >= 8) do
    begin
      char_out(lzwr, dword(cur_accum and $FF000000) shr 24);
      cur_accum := cur_accum shl 8;
      dec(cur_bits, 8);
    end;
    if (free_ent > maxcode - 1) or (clear_flg <> 0) then
    begin
      if (clear_flg <> 0) then
      begin
        n_bits := g_init_bits;
        maxcode := 1 shl n_bits - 1;
        clear_flg := 0;
      end
      else
      begin
        inc(n_bits);
        if (n_bits = maxbits) then
          maxcode := maxmaxcode
        else
          maxcode := 1 shl n_bits - 1;
      end;
    end;
    if (code = EOFCode) then
    begin
      while (cur_bits > 0) do
      begin
        char_out(lzwr, dword(cur_accum and $FF000000) shr 24);
        cur_accum := cur_accum shl 8;
        dec(cur_bits, 8);
      end;
      flush_char(lzwr);
    end;
  end;
end;

procedure cl_block(var lzwr: TLZWCompRecord);
begin
  with lzwr do
  begin
    cl_hash(lzwr, integer(hsize));
    free_ent := ClearCode + 2;
    clear_flg := 1;
    output(lzwr, integer(ClearCode));
  end;
end;

// op=0 initialize/encode
// op=1 encode
// op=2 finalize

procedure lzwcompress(var lzwr: TLZWCompRecord; op: integer);
label
  probe, nomatch;
begin
  with lzwr do
  begin
    if op = 0 then
    begin
      // initialize
      g_init_bits := init_bits;
      clear_flg := 0;
      n_bits := init_bits;
      maxcode := 1 shl n_bits - 1;
      ClearCode := (1 shl (lzwr.init_bits - 1));
      EOFCode := ClearCode + 1;
      free_ent := ClearCode + 2;
      a_count := 0;
      _ent := NextPixel(lzwr);
      _hshift := 0;
      _fcode := hsize;
      while _fcode < 65536 do
      begin
        inc(_hshift);
        _fcode := _fcode * 2;
      end;
      _hshift := 8 - _hshift;
      _hsize_reg := hsize;
      cl_hash(lzwr, _hsize_reg);
      output(lzwr, ClearCode);
    end;
    if (op = 0) or (op = 1) then
    begin
      // encoding
      while (true) do
      begin
        _c := NextPixel(lzwr);
        if _c = XEOF then
          break;
        _fcode := integer(((integer(_c) shl maxbits) + _ent));
        _i := ((integer(_c) shl _hshift) xor _ent);
        if (lzwr.htab[_i] = _fcode) then
        begin
          _ent := codetab[_i];
          continue;
        end
        else if (integer(htab[_i]) < 0) then
          goto nomatch;
        _disp := _hsize_reg - _i;
        if (_i = 0) then
          _disp := 1;
        probe:
        dec(_i, _disp);
        if (_i < 0) then
          inc(_i, _hsize_reg);
        if (htab[_i] = _fcode) then
        begin
          _ent := codetab[_i];
          continue;
        end;
        if (integer(htab[_i]) > 0) then
          goto probe;
        nomatch:
        output(lzwr, integer(_ent));
        _ent := _c;
        if (free_ent < maxmaxcode - 1) then
        begin
          codetab[_i] := free_ent;
          inc(free_ent);
          htab[_i] := _fcode;
        end
        else
          cl_block(lzwr);
      end;
    end
    else if op = 2 then
    begin
      // finalize
      output(lzwr, integer(_ent));
      output(lzwr, integer(EOFCode));
    end;
  end;
end;

// indata: decompressed data
// inputlen: indata length (in bytes)
// outstream: compressed data
// Id: is a reference variable (where I store the pointer to TLZWCompRecord object)
// IMPORTANT:
//		- In the first call "Id" is ZERO.
//    - In the nexts call "Id" will be the some returned in the first call
//		- In the last call "indata" will be NIL (you will free your allocated objects)

procedure TIFFLZWCompress(indata: pbyte; inputlen: integer; outstream: TStream; var id: pointer);
var
  lzwr: PLZWCompRecord;
begin
  if id = nil then
  begin
    // initialize/encode
    new(lzwr);
    lzwr^.indata := pbyte(indata);
    lzwr^.oStream := outstream;
    lzwr^.cur_accum := 0;
    lzwr^.cur_bits := 0;
    lzwr^.CountDown := inputlen;
    lzwr^.free_ent := 0;
    lzwr^.inpos := 0;
    lzwr^.init_bits := 8 + 1;
    lzwcompress(lzwr^, 0);
    id := pointer(lzwr);
  end
  else if id <> nil then
  begin
    lzwr := PLZWCompRecord(id);
    if indata = nil then
    begin
      // finalize
      lzwcompress(lzwr^, 2);
      dispose(lzwr)
    end
    else
    begin
      // continue encoding
      lzwr^.CountDown := inputlen;
      lzwr^.indata := pbyte(indata);
      lzwr^.inpos := 0;
      lzwcompress(lzwr^, 1);
    end;
  end;
end;

end.
