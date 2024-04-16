(*
Copyright (c) 1998-2008 by HiComponents. All rights reserved.

This software comes without express or implied warranty.
In no case shall the author be liable for any damage or unwanted behavior of any
computer hardware and/or software.

HiComponents grants you the right to include the compiled component
in your application, whether COMMERCIAL, SHAREWARE, or FREEWARE,
BUT YOU MAY NOT DISTRIBUTE THIS SOURCE CODE OR ITS COMPILED .DCU IN ANY FORM.

ImageEn, IEvolution and ImageEn ActiveX may not be included in any commercial,
shareware or freeware libraries or components.

email: support@hicomponents.com

http://www.hicomponents.com
*)

unit tiffilt;

{$R-}
{$Q-}

{$I ie.inc}

interface

uses Windows, Graphics, classes, sysutils, ImageEnProc, ImageEnIO, hyiedefs, hyieutils;

// TIFF image load/save
procedure TIFFReadStream(Bitmap: TIEBitmap; Stream: TStream; var numi: integer; IOParams: TIOParamsVals; var Progress: TProgressRec; Preview: boolean; var AlphaChannel: TIEMask; TranslateBase: boolean; IgnoreAlpha: boolean; IsExifThumb: boolean);
function TIFFWriteStream(Stream: TStream; Ins: boolean; Bitmap: TIEBitmap; var IOParams: TIOParamsVals; var Progress: TProgressRec): integer;
function _EnumTIFFImStream(Stream: TStream): integer;
function _DeleteTIFFImStream(Stream: TStream; idx: integer): integer;
function _DeleteTIFFImStreamGroup(Stream: TStream; idxlist: pintegerarray; idxcount: integer): integer;
procedure _ExtractTIFFImStream(Stream: TStream; idx: integer; OutStream: TStream);
procedure _InsertTIFFImStream(Stream: TStream; ToInsert: TStream; idx: integer; OutStream: TStream);
function IsTIFFStream(fs:TStream):boolean;
function IsDNGStream(fs:TStream):boolean;

// single tags load
function TIFFLoadTags(Stream: TStream; var numi: integer; ImageIndex: integer; var TIFFEnv: TTIFFEnv): boolean;
procedure TIFFFreeTags(var TIFFEnv: TTIFFEnv);
function TIFFFindTAG(IdTag: word; var TIFFEnv: TTIFFEnv): integer;
function TIFFGetDataLength(var TIFFEnv: TTIFFEnv; nTag: integer): integer;
function TIFFReadSingleValDef(var TIFFEnv: TTIFFEnv; ntag: integer; def: integer): integer;
function TIFFReadSingleRational(var TIFFEnv: TTIFFEnv; nTag: integer): double;
function TIFFReadRationalIndex(var TIFFEnv: TTIFFEnv; nTag: integer; idx: integer): double;
function TIFFReadIndexValN(var TIFFEnv: TTIFFEnv; nTag: integer; idx: integer): integer;
function TIFFReadArrayIntegers(var TIFFEnv: TTIFFEnv; var ar: pintegerarray; NTag: integer): integer;
function TIFFReadRawData(var TIFFEnv: TTIFFEnv; NTag: integer; var Size: integer): pointer;
function TIFFReadString(var TIFFEnv: TTIFFEnv; NTag: integer): string;
function TIFFReadMiniString(var TIFFEnv: TTIFFEnv; NTag: integer): string;
function TIFFReadIFD(imageindex: integer; Offset: integer; var TIFFEnv: TTIFFEnv; var numi: integer): boolean;



implementation

uses giffilter, tifccitt, imageenview, ieview, jpegfilt, neurquant, iezlib;

{$R-}

const
  RATMUL = 1000000;

type

  //TIntegerArray = array [0..Maxint div 16] of integer;
  //PIntegerArray = ^TIntegerArray;

  // Colormap item
  TTIFFColor = packed record
    R, G, B: word;
  end;

  // Colormap
  TTIFFRGBArray = array[0..Maxint div 16] of TTIFFColor;
  PTIFFRGBArray = ^TTIFFRGBArray;

  TTIFFVars = record
    ImageWidth, ImageHeight: integer;
    SamplesPerPixel: integer;
    BitsPerSample: integer;
    RowsPerStrip: integer;
    TileWidth, TileLength: integer;
    PhotometricInterpretation: word;
    PlanarConfiguration: word;
    Orientation: word;
    Compression: word;
    StripOffsets: PIntegerArray;
    StripOffsets_Num: integer; // numero elementi in StripOffsets
    StripByteCounts: PIntegerArray;
    StripByteCounts_Num: integer; // numero elementi in StripByteCounts
    TileOffsets: PIntegerArray;
    TileOffsets_Num: integer; // numero elementi in TileOffsets
    TileByteCounts: PIntegerarray;
    TileByteCounts_Num: integer; // numero elementi in TileByteCounts
    ColorMap: PRGBROW; // Colormap (dim=2^BitsPerSample)
    ColorMap_Num: integer; // numero entries in Colormap (2^BitsPerSample)
    TransferFunction: PTIFFRGBArray;
    Transferfunction_Num: integer; // numero elementi TransferFunction
    ResolutionUnit: integer; // unit� di misura
    XResolution: double; // risoluzione X
    YResolution: double; // risoluzione Y
    Predictor: integer;
    JPEGTables: pointer; // compression tables (JPEG 7)
    JPEGTablesSize: integer; // size in bytes of JPEGTables
    T4Options: integer;
    T6Options: integer;
    FillOrder: integer;
    XPosition: double;
    YPosition: double;
    DocumentName: string;
    ImageDescription: string;
    PageName: string;
    PageNumber: integer;
    PageCount: integer;
    Software: string;
    InkSet: integer;
    NumberOfInks: integer;
    DotRange: array[0..7] of integer;
    Artist:string;
    YCbCrSubSampling: array [0..1] of integer;
    // OLD Jpeg fields
    JPEGProc: integer;
    JPEGInterchangeFormat: integer;
    JPEGInterchangeFormatLength: integer;
    JPEGRestartInterval: integer;
    JPEGLosslessPredictors: array[0..6] of integer;
    JPEGPointTransforms: array[0..6] of integer;
    JPEGQTables: array[0..6] of integer;
    JPEGDCTables: array[0..6] of integer;
    JPEGACTables: array[0..6] of integer;
    // no tiff fields
    LZWDecompFunc: TTIFFLZWDecompFunc; // funzione di decompressione LZW
    intel: boolean;
    RefParams: TIOParamsVals;
    // Alpha
    AlphaChannel: TIEMask;
    IgnoreAlpha: boolean;
    ExtraSamples: integer;
  end;

procedure Decompress1(var TIFFVars: TTIFFVars; outbuf: TIEBitmap; baserow: integer; basecol: integer; xbuf: pbyte; sz: integer; Width, Height: integer; var Progress: TProgressRec); forward;
procedure Decompress2(var TIFFVars: TTIFFVars; outbuf: TIEBitmap; baserow: integer; xbuf1, xbuf2, xbuf3: pbyte; sz1, sz2, sz3: integer; Width, Height: integer; var Progress: TProgressRec); forward;
procedure Strips2Bitmap(var TIFFEnv: TTIFFEnv; var TIFFVars: TTIFFVars; var Bitmap: TIEBitmap; var Progress: TProgressRec); forward;
procedure Tiles2Bitmap(var TIFFEnv: TTIFFEnv; var TIFFVars: TTIFFVars; var Bitmap: TIEBitmap; var Progress: TProgressRec); forward;


function ReorderTagsCompare(Item1, Item2: Pointer): Integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('ReorderTagsCompare'); {$endif}
  result := PTIFFTAG(Item1)^.IdTag - PTIFFTAG(Item2)^.IdTag;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// reorder tags

procedure ReorderTags(imed: TList);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('ReorderTags'); {$endif}
  imed.Sort(ReorderTagsCompare);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

////////////////////////////////////////////////////////////////////////////////////
// trova indice tag (-1=non trovato)

function TIFFFindTAG(IdTag: word; var TIFFEnv: TTIFFEnv): integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIFFFindTAG'); {$endif}
  for result := 0 to TIFFEnv.NumTags - 1 do
    if TIFFEnv.IFD^[result].IdTag = IdTag then
      exit;
  result := -1;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

function TIFFGetDataLength(var TIFFEnv: TTIFFEnv; nTag: integer): integer;
var
  t: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIFFGetDataLength'); {$endif}
  result := 0; // default
  t := TIFFFindTAG(ntag, TIFFEnv);
  if t >= 0 then
    with TIFFEnv do
      result := TIFFEnv.IFD^[t].DataNum;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// read SHORT, LONG or BYTE from nTag
// def: the default value
function TIFFReadSingleValDef(var TIFFEnv: TTIFFEnv; ntag: integer; def: integer): integer;
var
  t: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIFFReadSingleValDef'); {$endif}
  t := TIFFFindTAG(ntag, TIFFEnv);
  if t >= 0 then
  begin
    result := TIFFEnv.IFD^[t].DataPos;
    if TIFFEnv.Intel then
    begin
      // intel
      if (TIFFEnv.IFD^[t].DataType = 3) then
        result := result and $FFFF  // SHORT
      else if (TIFFEnv.IFD^[t].DataType = 1) then
        result := result and $FF;   // BYTE
    end
    else
    begin
      // non intel
      if (TIFFEnv.IFD^[t].DataType = 3) then
        result := result shr 16   // SHORT
      else if (TIFFEnv.IFD^[t].DataType = 1) then
        result := result shr 24;  // BYTE
    end;
  end
  else
    result := def;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

////////////////////////////////////////////////////////////////////////////////////
// legge una SHORT o un LONG da TAG

function ReadSingleIntTag(var TIFFEnv: TTIFFEnv; Tag: TTIFFTAG): integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('ReadSingleIntTag'); {$endif}
  result := Tag.DataPos;
  if TIFFEnv.Intel then
  begin
    // intel
    if (Tag.DataType = 3) then
      result := result and $FFFF;
  end
  else
  begin
    // non intel
    if (Tag.DataType = 3) then
      result := result shr 16;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

////////////////////////////////////////////////////////////////////////////////////
// legge un RATIONAL da nTag (specifica del numero tag)
// note: rest. un double

function TIFFReadSingleRational(var TIFFEnv: TTIFFEnv; nTag: integer): double;
var
  num, den: longint;
  t: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIFFReadSingleRational'); {$endif}
  result := 0; // default
  t := TIFFFindTAG(ntag, TIFFEnv);
  if t >= 0 then
    with TIFFEnv do
    begin
      Stream.Seek(StreamBase + TIFFEnv.IFD^[t].DataPos, soFromBeginning);
      Stream.Read(num, sizeof(dword)); // numeratore
      Stream.Read(den, sizeof(dword)); // denominatore
      if not TIFFEnv.Intel then
      begin
        num := IESwapDWord(num);
        den := IESwapDWord(den);
      end;
      if den = 0 then
        den := 1;
      result := num / den;
    end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

////////////////////////////////////////////////////////////////////////////////////
// legge un RATIONAL da nTag (specifica del numero tag)
// note: rest. un double

function TIFFReadRationalIndex(var TIFFEnv: TTIFFEnv; nTag: integer; idx: integer): double;
var
  num, den: longint;
  t: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIFFReadRationalIndex'); {$endif}
  result := 0; // default
  t := TIFFFindTAG(ntag, TIFFEnv);
  if t >= 0 then
    with TIFFEnv do
    begin
      if idx < TIFFEnv.IFD^[t].DataNum then
      begin
        Stream.Seek(StreamBase + TIFFEnv.IFD^[t].DataPos + idx * sizeof(dword) * 2, soFromBeginning);
        Stream.Read(num, sizeof(dword)); // numeratore
        Stream.Read(den, sizeof(dword)); // denominatore
        if not TIFFEnv.Intel then
        begin
          num := IESwapDWord(num);
          den := IESwapDWord(den);
        end;
        if den = 0 then
          den := 1;
        result := num / den;
      end;
    end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

////////////////////////////////////////////////////////////////////////////////////
// legge SHORT/LONG indicizzata (idx) da ntag

function TIFFReadIndexValN(var TIFFEnv: TTIFFEnv; nTag: integer; idx: integer): integer;
var
  ss: word;
  t: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIFFReadIndexValN'); {$endif}
  result := 0; // default
  t := TIFFFindTAG(ntag, TIFFEnv);
  if t >= 0 then
    with TIFFEnv do
    begin
      if TIFFEnv.IFD^[t].DataType = 4 then
      begin
        // LONG
        Stream.Seek(StreamBase + TIFFEnv.IFD^[t].DataPos + idx * sizeof(integer), soFromBeginning);
        Stream.Read(result, sizeof(integer));
        if not TIFFEnv.Intel then
          result := IESwapDWord(result);
      end
      else if TIFFEnv.IFD^[t].DataType = 3 then
      begin
        // SHORT
        if TIFFEnv.IFD^[t].DataNum = 1 then
          result := ReadSingleIntTag(TIFFEnv, TIFFEnv.IFD^[t])
        else if TIFFEnv.IFD^[t].DataNum = 2 then
        begin
          result := TIFFEnv.IFD^[t].DataPos;
          if TIFFEnv.Intel then
          begin
            // intel
            if idx = 0 then
              result := result and $FFFF // get low
            else if idx = 1 then
              result := result shr 16; // get high
          end
          else
          begin
            // non intel
            if idx = 0 then
              result := result shr 16 // get high
            else if idx = 1 then
              result := result and $FFFF; // get low
          end;
        end
        else
        begin
          Stream.Seek(StreamBase + TIFFEnv.IFD^[t].DataPos + idx * sizeof(word), soFromBeginning);
          Stream.Read(ss, sizeof(word));
          if not TIFFenv.Intel then
            ss := IESwapWord(ss);
          result := ss;
        end;
      end;
    end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

////////////////////////////////////////////////////////////////////////////////////
// legge SHORT/LONG indicizzata (idx) da TAG

function ReadIndexVal(var TIFFEnv: TTIFFEnv; Tag: TTIFFTAG; idx: integer): integer;
var
  ss: word;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('ReadIndexVal'); {$endif}
  with TIFFEnv do
  begin
    if Tag.DataType = 4 then
    begin
      // LONG
      Stream.Seek(StreamBase + Tag.DataPos + idx * sizeof(integer), soFromBeginning);
      Stream.Read(result, sizeof(integer));
      if not TIFFEnv.Intel then
        result := IESwapDWord(result);
    end
    else if Tag.DataType = 3 then
    begin
      // SHORT
      if Tag.DataNum = 1 then
        result := ReadSingleIntTag(TIFFEnv, Tag)
      else if Tag.DataNum = 2 then
      begin
        result := Tag.DataPos;
        if TIFFEnv.Intel then
        begin
          // intel
          if idx = 0 then
            result := result and $FFFF // get low
          else if idx = 1 then
            result := result shr 16; // get high
        end
        else
        begin
          // non intel
          if idx = 0 then
            result := result shr 16 // get high
          else if idx = 1 then
            result := result and $FFFF; // get low
        end;
      end
      else
      begin
        Stream.Seek(StreamBase + Tag.DataPos + idx * sizeof(word), soFromBeginning);
        Stream.Read(ss, sizeof(word));
        if not TIFFenv.Intel then
          ss := IESwapWord(ss);
        result := ss;
      end;
    end;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// read array of integers
// ar: pointer to the array (do not allocate. Free when you want)
// NTag: tags count
// result: elements count
function TIFFReadArrayIntegers(var TIFFEnv: TTIFFEnv; var ar: pintegerarray; NTag: integer): integer;
var
  t, q: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIFFReadArrayIntegers'); {$endif}
  t := TIFFFindTAG(NTag, TIFFEnv);
  if t < 0 then
    // not found
    result := 0
  else
  begin
    result := TIFFEnv.IFD^[t].DataNum;
    getmem(ar, sizeof(integer) * result);
    if result = 1 then
    begin
      // one value
      ar^[0] := ReadSingleIntTag(TIFFEnv, TIFFEnv.IFD^[t]);
    end
    else
    begin
      // more values
      for q := 0 to result - 1 do
        ar^[q] := ReadIndexVal(TIFFenv, TIFFEnv.IFD^[t], q);
    end;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

////////////////////////////////////////////////////////////////////////////////////
// read a block as UNDEFINED
// return a pointer the data buffer (it must be freed by caller)

function TIFFReadRawData(var TIFFEnv: TTIFFEnv; NTag: integer; var Size: integer): pointer;
var
  t: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIFFReadRawData'); {$endif}
  t := TIFFFindTAG(NTag, TIFFEnv);
  if t < 0 then
  begin
    // not found
    result := nil;
  end
  else
    with TIFFEnv do
    begin
      Stream.Seek(StreamBase + TIFFEnv.IFD^[t].DataPos, soFromBeginning);
      getmem(result, TIFFEnv.IFD^[t].DataNum);
      Stream.Read(pbyte(result)^, TIFFEnv.IFD^[t].DataNum);
      Size := TIFFEnv.IFD^[t].DataNum;
    end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TIFFReadIFDToTagsHandler(var TIFFEnv:TTIFFEnv; NTag:integer; tagsHandler:TIETagsHandler);
const
  SZ:array [0..12] of integer=(
      1,  // 0 = unknown (assume one byte)
      1,  // 1 = byte (8 bit)
      1,  // 2 = ascii (8 bit)
      2,  // 3 = short (16 bit)
      4,  // 4 = long (32 bit)
      8,  // 5 = rational (64 bit)
      1,  // 6 = signed byte (8 bit)
      1,  // 7 = undefined (8 bit)
      2,  // 8 = signed short (16 bit)
      4,  // 9 = signed long (32 bit)
      8,  // 10 = signed rational (64 bit)
      4,  // 11 = ieee float (32 bit)
      8   // 12 = ieee double (64 bit)
      );
var
  t,i,z: integer;
  bufferlen:integer;
  buffer:pchar;
  tagscount:word;
  tag:PTIFFTAG;
  good:boolean;
  datapos:integer;
  tagpos:integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIFFReadIFDToTagsHandler'); {$endif}
  good:=false;
  tagsHandler.Data.Clear;
  t := TIFFFindTAG(NTag, TIFFEnv);
  if (t>=0) and (TIFFEnv.IFD^[t].DataPos>=0) then
  begin
    with TIFFEnv do
    begin
      if StreamBase + TIFFEnv.IFD^[t].DataPos < Stream.Size then
      begin
        Stream.Seek(StreamBase + TIFFEnv.IFD^[t].DataPos, soFromBeginning);
        getmem(buffer, TIFFEnv.IFD^[t].DataNum);
        Stream.Read(buffer^, TIFFEnv.IFD^[t].DataNum);
        bufferlen := TIFFEnv.IFD^[t].DataNum;
      end
      else
      begin
        // wrong tag
        buffer:=nil;
        bufferlen:=0;
      end;
    end;
    try
    if bufferlen<sizeof(word) then exit;
    tagscount:=IECSwapWord( pword(@buffer[0])^, not TIFFEnv.Intel);
    if (tagscount>256) or (bufferlen<sizeof(TTIFFTAG)*tagscount) then exit; // maximum 256 tags (it is very large...)
    tagsHandler.Data.Write(tagscount,sizeof(word));
    tagpos:=tagsHandler.Data.Position;
    datapos:=tagpos + sizeof(TTIFFTAG)*tagscount;
    for i:=0 to tagscount-1 do
    begin
      tag:=PTIFFTAG( @buffer[sizeof(word)+i*sizeof(TTIFFTAG)] );
      tag^.IdTag:=IECSwapWord( tag^.IdTag, not TIFFEnv.Intel);
      tag^.DataType:=IECSwapWord( tag^.DataType, not TIFFEnv.Intel);
      tag^.DataNum:=IECSwapDWord( tag^.DataNum, not TIFFEnv.Intel);
      tag^.DataPos:=IECSwapDWord( tag^.DataPos, not TIFFEnv.Intel);
      if tag^.DataType>12 then exit;
      z:=tag^.DataNum*SZ[tag^.DataType];  // size in bytes
      if not ((tag^.DataPos+z>TIFFEnv.Stream.Size) and (z>4)) and (tag^.DataNum<TIFFEnv.Stream.Size) and (tag^.DataPos>0) then
      begin
        if z>4 then
        begin
          TIFFEnv.Stream.Seek( TIFFEnv.StreamBase+tag^.DataPos, soFromBeginning );
          tag^.DataPos:= datapos;
          tagsHandler.Data.Position:=datapos;
          tagsHandler.Data.CopyFrom(TIFFEnv.Stream, z );
          datapos:=tagsHandler.Data.Position;
        end;
        tagsHandler.Data.Position:=tagpos;
        tagsHandler.Data.Write(tag^,sizeof(TTIFFTAG));
        tagpos:=tagsHandler.Data.Position;
      end;
    end;
    tagsHandler.Update;
    good:=true;
    finally
      if not good then
        tagsHandler.Data.Clear;
      freemem(buffer);
    end;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure LoadWang(var TIFFEnv: TTIFFEnv; Params: TIOParamsVals);
var
  t, buflen: integer;
  buf: pointer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('LoadWang'); {$endif}
  t := TIFFFindTAG(32932, TIFFEnv);
  if t >= 0 then
    with TIFFEnv do
    begin
      Stream.Seek(StreamBase + TIFFEnv.IFD^[t].DataPos, soFromBeginning);
      getmem(buf, TIFFEnv.IFD^[t].DataNum);
      Stream.Read(pbyte(buf)^, TIFFEnv.IFD^[t].DataNum);
      buflen := TIFFEnv.IFD^[t].DataNum;
      Params.ImagingAnnot.LoadFromStandardBuffer(buf, buflen);
      freemem(buf);
    end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure LoadICC(var TIFFEnv: TTIFFEnv; Params: TIOParamsVals);
var
  t, buflen: integer;
  buf: pointer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('LoadICC'); {$endif}
  if assigned(Params) then
  begin
    t := TIFFFindTAG(34675, TIFFEnv);
    if t >= 0 then
      with TIFFEnv do
      begin
        Stream.Seek(StreamBase + TIFFEnv.IFD^[t].DataPos, soFromBeginning);
        getmem(buf, TIFFEnv.IFD^[t].DataNum);
        Stream.Read(pbyte(buf)^, TIFFEnv.IFD^[t].DataNum);
        buflen := TIFFEnv.IFD^[t].DataNum;
        Params.InputICCProfile.LoadFromBuffer(buf,buflen);
        freemem(buf);
      end;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

////////////////////////////////////////////////////////////////////////////////////
// read a string

function TIFFReadString(var TIFFEnv: TTIFFEnv; NTag: integer): string;
var
  t, l: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIFFReadString'); {$endif}
  t := TIFFFindTAG(NTag, TIFFEnv);
  if t < 0 then
    // not found
    result := ''
  else
    with TIFFEnv do
    begin
      Stream.Seek(StreamBase + TIFFEnv.IFD^[t].DataPos, soFromBeginning);
      l := TIFFEnv.IFD^[t].DataNum;
      if l < 5 then
        result:=TIFFReadMiniString(TIFFEnv,NTag)
      else if l < 1048576 then
      begin // maximum allowed strings of 1MByte
        setlength(result, l);
        Stream.Read(result[1], l);
        if result[l]=#0 then
          SetLength(result,l-1);
      end;
    end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

function TIFFReadWideString(var TIFFEnv: TTIFFEnv; NTag: integer): WideString;
var
  t, l: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIFFReadWideString'); {$endif}
  t := TIFFFindTAG(NTag, TIFFEnv);
  if t < 0 then
    // not found
    result := ''
  else
    with TIFFEnv do
    begin
      Stream.Seek(StreamBase + TIFFEnv.IFD^[t].DataPos, soFromBeginning);
      l := TIFFEnv.IFD^[t].DataNum;
      if l < 1048576 then
      begin // maximum allowed strings of 1MByte
        setlength(result, l);
        Stream.Read(result[1], l);
      end;
    end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

////////////////////////////////////////////////////////////////////////////////////
// read a string of constant chars

function TIFFReadMiniString(var TIFFEnv: TTIFFEnv; NTag: integer): string;
var
  t, l: integer;
  v: dword;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIFFReadMiniString'); {$endif}
  t := TIFFFindTAG(NTag, TIFFEnv);
  if t < 0 then
    // not found
    result := ''
  else
    with TIFFEnv do
    begin
      v := TIFFEnv.IFD^[t].DataPos;
      if not TIFFEnv.Intel then
        v:=IESwapDWord(v);  // because was already swapped
      l := TIFFEnv.IFD^[t].DataNum;
      if (l > 0) and (l < 1048576) then
      begin
        setlength(result, l);
        if l < 5 then
          move(v, result[1], l);
      end;
    end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

function convVersionIDtoStr(const id:string):string;
var
  i:integer;
begin
  result:='';
  for i:=1 to length(id) do
    result:=result+inttostr(ord(id[i]))+'.';
  result:=copy(result,1,length(result)-1);
end;

function convVersionStrtoID(const str:string):string;
var
  i,p:integer;
begin
  result:='';
  p:=1;
  for i:=1 to length(str) do
  begin
    if (str[i]='.') then
    begin
      result:=result+ chr(strtointdef(copy(str,p,i-p),0));
      p:=i+1;
    end;
  end;
  result:=result+ chr(strtointdef(copy(str,p,length(str)-p+1),0));
end;

////////////////////////////////////////////////////////////////////////////////////
// read colormap

procedure ReadColorMap(var TIFFEnv: TTIFFEnv; var TIFFVars: TTIFFVars);
var
  t, q: integer;
  max:integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('ReadColorMap'); {$endif}
  t := TIFFFindTAG(320, TIFFEnv);
  if t < 0 then
    // not found
    TIFFVars.ColorMap_Num := 0
  else
    with TIFFVars do
    begin
      ColorMap_Num := 1 shl BitsPerSample;

      max:=0;
      for q := 0 to ColorMap_Num*3-1 do
        max:=imax( ReadIndexVal(TIFFEnv, TIFFEnv.IFD^[t], q), max );

      getmem(ColorMap, ColorMap_Num * sizeof(TRGB));
      for q := 0 to ColorMap_Num - 1 do
      begin
        if max>255 then
        begin
          ColorMap^[q].R := ReadIndexVal(TIFFEnv, TIFFEnv.IFD^[t], q) shr 8;
          ColorMap^[q].G := ReadIndexVal(TIFFEnv, TIFFEnv.IFD^[t], ColorMap_Num + q) shr 8;
          ColorMap^[q].B := ReadIndexVal(TIFFEnv, TIFFEnv.IFD^[t], (ColorMap_Num * 2) + q) shr 8;
        end
        else
        begin
          ColorMap^[q].R := ReadIndexVal(TIFFEnv, TIFFEnv.IFD^[t], q) ;
          ColorMap^[q].G := ReadIndexVal(TIFFEnv, TIFFEnv.IFD^[t], ColorMap_Num + q) ;
          ColorMap^[q].B := ReadIndexVal(TIFFEnv, TIFFEnv.IFD^[t], (ColorMap_Num * 2) + q) ;
        end;
      end;
    end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// read TransferFunction

procedure ReadTransferFunction(var TIFFEnv: TTIFFEnv; var TIFFVars: TTIFFVars);
var
  t, q: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('ReadTransferFunction'); {$endif}
  t := TIFFFindTAG(301, TIFFEnv);
  if t < 0 then
    // not found
    TIFFVars.TransferFunction_Num := 0
  else
    with TIFFVars do
    begin
      TransferFunction_Num := 1 shl BitsPerSample;
      getmem(TransferFunction, TransferFunction_Num * sizeof(TTIFFColor));
      for q := 0 to TransferFunction_Num - 1 do
      begin
        TransferFunction^[q].R := ReadIndexVal(TIFFEnv, TIFFEnv.IFD^[t], q * 3);
        TransferFunction^[q].G := ReadIndexVal(TIFFEnv, TIFFEnv.IFD^[t], q * 3 + 1);
        TransferFunction^[q].B := ReadIndexVal(TIFFEnv, TIFFEnv.IFD^[t], q * 3 + 2);
      end;
    end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

function ReadBitsPerSample(var TIFFEnv: TTIFFEnv; var TIFFVars: TTIFFVars): boolean;
var
  t: integer;
  w: word;
  q: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('ReadBitsPerSample'); {$endif}
  result := true;
  t := TIFFFindTAG(258, TIFFEnv);
  if t < 0 then
    TIFFVars.BitsPerSample := 1 // default
  else
  begin
    if TIFFEnv.IFD^[t].DataNum = 1 then
    begin
      // un solo valore
      TIFFVars.BitsPerSample := ReadSingleIntTag(TIFFEnv, TIFFEnv.IFD^[t]);
    end
    else
    begin
      TIFFVars.BitsPerSample := -1;
      for q := 0 to TIFFEnv.IFD^[t].DataNum - 1 do
      begin
        w := ReadIndexVal(TIFFEnv, TIFFEnv.IFD^[t], q);
        if (TIFFVars.BitsPerSample <> -1) and (TIFFVars.BitsPerSample <> w) then
          result := false;
        TIFFVars.BitsPerSample := w;
      end;
    end;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

//////////////////////////////////////////////////////////////////////////////////////
// read tiles

procedure Tiles2Bitmap(var TIFFEnv: TTIFFEnv; var TIFFVars: TTIFFVars; var Bitmap: TIEBitmap; var Progress: TProgressRec);
var
  q, sz: integer;
  buf: pbyte;
  row, col, basecol: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('Tiles2Bitmap'); {$endif}
  with TIFFVars do
  begin
    row := 0;
    col := 0;
    Progress.per1 := 100 / ImageHeight;
    Progress.per2 := 100 / TileOffsets_Num;
    Progress.val := 0;
    basecol := 0;
    if PlanarConfiguration = 1 then
    begin
      bitmap.width := bitmap.width + TileWidth;
      bitmap.height := bitmap.height + TileLength;
      for q := 0 to TileOffsets_Num - 1 do
      begin
        TIFFEnv.Stream.Seek(TIFFEnv.StreamBase + TileOffsets^[q], soFromBeginning);
        if TileByteCounts_Num > q then
          sz := TileByteCounts^[q]
        else
          sz := 0;
        if sz = 0 then
          sz := TIFFenv.Stream.size - TileOffsets^[q];
        getmem(buf, imax(sz,TileWidth*TileLength*4));
        TIFFEnv.Stream.Read(buf^, sz);
        if bitmap.pixelformat = ie24RGB then
          basecol := col * 3
        else if bitmap.pixelformat = ie1g then
          basecol := (col shr 3)
        else if (bitmap.pixelformat = ie8g) or (bitmap.PixelFormat = ie8p) then
          basecol := col
        else if (bitmap.pixelformat = ie16g) then
          basecol := col * 2
        else
        begin
          Progress.Aborting^ := true;
          exit;
        end;
        Decompress1(TIFFVars, Bitmap, row, basecol, buf, sz, TileWidth, TileLength, Progress); // compress strip (buffer)
        //
        freemem(buf);
        inc(col, TileWidth);
        if col >= ImageWidth then
        begin
          col := 0;
          inc(row, TileLength);
        end;
        //
        if Progress.Aborting^ then
          break;
      end;
      bitmap.width := ImageWidth;
      bitmap.height := Imageheight;
    end
    else if PlanarConfiguration = 2 then
    begin
      // not supported
      Progress.Aborting^ := true;
      exit;
    end;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

//////////////////////////////////////////////////////////////////////////////////////
// read strips

procedure Strips2Bitmap(var TIFFEnv: TTIFFEnv; var TIFFVars: TTIFFVars; var Bitmap: TIEBitmap; var Progress: TProgressRec);
var
  q, w, e, sz, sz1, sz2: integer;
  buf, buf1, buf2: pbyte;
  row: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('Strips2Bitmap'); {$endif}
  with TIFFVars do
  begin
    row := 0;
    Progress.per1 := 100 / ImageHeight;
    Progress.per2 := 100 / StripOffsets_Num;
    Progress.val := 0;
    if PlanarConfiguration = 1 then
    begin
      // consecutive channels
      for q := 0 to StripOffsets_Num - 1 do
      begin
        TIFFEnv.Stream.Seek(TIFFEnv.StreamBase + StripOffsets^[q], soFromBeginning);

        if StripByteCounts_Num > q then
          sz := StripByteCounts^[q]
        else
          sz := 0;

        sz1:=SamplesPerPixel*ImageWidth*RowsPerStrip*(BitsPerSample div 8);
        if (Compression=1) and (sz1>sz) then
          sz:=sz1;

        if (sz = 0) or (sz>TIFFEnv.Stream.Size) then
          sz := TIFFenv.Stream.size - StripOffsets^[q];

        if sz > 0 then
        begin
          getmem(buf, sz);
          sz := TIFFEnv.Stream.Read(buf^, sz);
          Decompress1(TIFFVars, bitmap, row, 0, buf, sz, ImageWidth, imin(RowsPerStrip, ImageHeight - row), Progress); // decompress strip (buffer)
          freemem(buf);
        end;
        inc(row, RowsPerStrip);
        //
        if Progress.Aborting^ then
          break;
      end;
    end
    else if PlanarConfiguration = 2 then
    begin
      // channels are on separate strips
      q := 0;
      e := StripOffsets_Num div 3;
      while q < e do
      begin
        // channel 1
        sz := StripByteCounts^[q];
        getmem(buf, sz);
        TIFFEnv.Stream.Seek(TIFFEnv.StreamBase + StripOffsets^[q], soFromBeginning);
        sz := TIFFEnv.Stream.Read(buf^, sz);
        // channel 2
        sz1 := StripByteCounts^[q + e];
        getmem(buf1, sz1);
        TIFFEnv.Stream.Seek(TIFFEnv.StreamBase + StripOffsets^[q + e], soFromBeginning);
        sz1 := TIFFEnv.Stream.Read(buf1^, sz1);
        // channel 3
        sz2 := StripByteCounts^[q + e + e];
        getmem(buf2, sz2);
        TIFFEnv.Stream.Seek(TIFFEnv.StreamBase + StripOffsets^[q + e + e], soFromBeginning);
        sz2 := TIFFEnv.Stream.Read(buf2^, sz2);
        inc(q);
        //
        w := imin(RowsPerStrip, ImageHeight - row);
        Decompress2(TIFFVars, bitmap, row, buf, buf1, buf2, sz, sz1, sz2, ImageWidth, w, Progress); // decompress strip (buffer)
        //
        freemem(buf);
        freemem(buf1);
        freemem(buf2);
        inc(row, RowsPerStrip);
        //
        if Progress.Aborting^ then
          break;
      end;
    end;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// 2.3.1
procedure PerformPredictor(var TIFFVars: TTIFFVars; buf: pbyte; Width: integer);
type
  TPByteArray=array [0..32768] of pbyte;
  PPByteArray=^TPByteArray;
var
  ra1, ra2, ra3, ra4, rp1, rp2, rp3, rp4: pbyte;
  dra1, dra2, dra3, drp1, drp2, drp3: pword;
  ra,rp:PPByteArray;
  z, v, i: integer;
begin
  if (TIFFVars.Predictor = 2) and ((TIFFVars.Compression = 5) or (TIFFVars.Compression=8)) then
  begin
    // Predictor
    if (TIFFVars.BitsPerSample = 8) and (TIFFVars.SamplesPerPixel = 1) then
    begin
      // 8 bits per sample - 1 sample per pixel
      ra1 := @(pbytearray(buf)^[1]);
      rp1 := buf;
      for z := 1 to Width - 1 do
      begin
        inc(ra1^, rp1^);
        inc(ra1);
        inc(rp1);
      end;
    end
    else if (TIFFVars.BitsPerSample = 8) and (TIFFVars.SamplesPerPixel = 3) then
    begin
      // 8 bits per sample - 3 samples per pixel
      ra1 := @(pbytearray(buf)^[3]);
      ra2 := @(pbytearray(buf)^[4]);
      ra3 := @(pbytearray(buf)^[5]);
      rp1 := buf;
      rp2 := @(pbytearray(buf)^[1]);
      rp3 := @(pbytearray(buf)^[2]);
      for z := 1 to width - 1 do
      begin
        inc(ra1^, rp1^);
        inc(ra1, 3);
        inc(rp1, 3);
        inc(ra2^, rp2^);
        inc(ra2, 3);
        inc(rp2, 3);
        inc(ra3^, rp3^);
        inc(ra3, 3);
        inc(rp3, 3);
      end;
    end
    else if (TIFFVars.BitsPerSample = 8) and (TIFFVars.SamplesPerPixel = 2) then
    begin
      // 8 bits per sample - 2 samples per pixel
      ra1 := @(pbytearray(buf)^[2]);
      ra2 := @(pbytearray(buf)^[3]);
      rp1 := buf;
      rp2 := @(pbytearray(buf)^[1]);
      for z := 1 to width - 1 do
      begin
        inc(ra1^, rp1^);
        inc(ra1, 2);
        inc(rp1, 2);
        inc(ra2^, rp2^);
        inc(ra2, 2);
        inc(rp2, 2);
      end;
    end
    else if (TIFFVars.BitsPerSample = 16) and (TIFFVars.SamplesPerPixel = 3) then
    begin
      // 16 bits per sample - 3 samples per pixel
      dra1 := @(pwordarray(buf)^[3]);
      dra2 := @(pwordarray(buf)^[4]);
      dra3 := @(pwordarray(buf)^[5]);
      drp1 := pword(buf);
      drp2 := @(pwordarray(buf)^[1]);
      drp3 := @(pwordarray(buf)^[2]);
      for z := 1 to width - 1 do
      begin
        inc(dra1^, drp1^);
        inc(dra1, 3);
        inc(drp1, 3);
        inc(dra2^, drp2^);
        inc(dra2, 3);
        inc(drp2, 3);
        inc(dra3^, drp3^);
        inc(dra3, 3);
        inc(drp3, 3);
      end;
    end
    else if (TIFFVars.BitsPerSample = 8) and (TIFFVars.SamplesPerPixel = 4) then
    begin
      // 8 bits per sample - 4 samples per pixel
      ra1 := @(pbytearray(buf)^[4]);
      ra2 := @(pbytearray(buf)^[5]);
      ra3 := @(pbytearray(buf)^[6]);
      ra4 := @(pbytearray(buf)^[7]);
      rp1 := buf;
      rp2 := @(pbytearray(buf)^[1]);
      rp3 := @(pbytearray(buf)^[2]);
      rp4 := @(pbytearray(buf)^[3]);
      for z := 1 to width - 1 do
      begin
        inc(ra1^, rp1^);
        inc(ra1, 4);
        inc(rp1, 4);
        inc(ra2^, rp2^);
        inc(ra2, 4);
        inc(rp2, 4);
        inc(ra3^, rp3^);
        inc(ra3, 4);
        inc(rp3, 4);
        inc(ra4^, rp4^);
        inc(ra4, 4);
        inc(rp4, 4);
      end;
    end
    else if (TIFFVars.BitsPerSample = 8) and (TIFFVars.SamplesPerPixel > 4) then
    begin
      // 8 bits per sample - >4 samples per pixel
      v:=TIFFVars.SamplesPerPixel;
      getmem(ra, v*sizeof(pbyte) );
      getmem(rp, v*sizeof(pbyte) );
      for i:=0 to v-1 do
      begin
        ra[i]:=@(pbytearray(buf)^[ v+i ]);
        rp[i]:=@(pbytearray(buf)^[ i ]);
      end;
      for z := 1 to width - 1 do

        for i:=0 to v-1 do
        begin

          inc(ra[i]^, rp[i]^);
          inc(ra[i], v);
          inc(rp[i], v);

        end;

      freemem(rp);
      freemem(ra);
    end;
  end;
end;

// Decompress a row
// buf= output buffer (if BitsPerSample>=8 and there isn't compression then it link to the input buffer)
// xbuf= input buffer (current position)
// xbuflen = length of xbuf
// Width= row size
// brow = row size in bytes (decompressed, packed)
// LZW = LZW decompressor Id
// predbuf = buffer of previous line for CCITT 2D decompression and ZIP compression
// CCITTposb = position of next bit to read for CCITT decompression (intput/output)
// return false if aborting
function GetNextLine(curline:integer; var buf, xbuf: pbyte; xbuflen: integer; var TIFFVars: TTIFFVars; Width, brow: integer; var LzwId: pointer; predbuf: pbyte; var CCITTposb: integer; var zipbuf:pbyte; var rlepos:integer): boolean;
var
  z, v, v2, z2, cw: integer;
  buf2: pbyte;
  ra1:pbyte;
  {$ifdef IEINCLUDEZLIB}
  i:integer;
  {$endif}
begin
  {$ifdef IEPROFILE} try IEProfileBegin('GetNextLine'); {$endif}
  result := true;
  case TIFFVars.Compression of
    1: // NO COMPRESSION
      begin
        if TIFFVars.BitsperSample >= 8 then
          buf := xbuf
        else
          CopyMemory(buf, xbuf, brow);
        if (TIFFVars.FillOrder=2) and (TIFFVars.BitsPerSample=1) then
        begin
          buf2:=buf;
          for z:=0 to brow-1 do
          begin
            ReverseBitsB(buf2^);
            inc(buf2);
          end;
        end;
        inc(xbuf, brow);
      end;
    2: // HUFFMAN (TIFF: CCITT 1D)
      inc(xbuf, CCITTHuffmanGetLine(buf, xbuf, xbuflen, Width, TIFFVars.FillOrder));
    3:
      if (TIFFVars.T4Options and 1) = 0 then
        // CCITT 3 - 1D (TIFF: Group 3 Fax, or T.4)
        CCITTposb := _CCITTHuffmanGetLine(buf, xbuf, xbuflen, Width, CCITTposb, TIFFVars.FillOrder)
      else
        // CCITT 3 - 2D (TIFF: Group 3 Fax, or T.4 - 2D)
        //CCITTposb := CCITT3_2D_GetLine(buf, xbuf, xbuflen, Width, predbuf, CCITTposb, TIFFVars.FillOrder, (TIFFVars.T4Options and $4) <> 0);  // changed in version 2.1.8
        CCITTposb := CCITT3_2D_GetLine(buf, xbuf, xbuflen, Width, predbuf, CCITTposb, TIFFVars.FillOrder, true);
    4:
      // CCITT 4 (TIFF: Group 4 Fax, or T.6)
      CCITTposb := CCITT3_2D_GetLine(buf, xbuf, xbuflen, Width, predbuf, CCITTposb, TIFFVars.FillOrder, (TIFFVars.T4Options and $4) <> 0);
    5: // LZW
      begin
        buf2 := TIFFVars.LZWDecompFunc(xbuf, brow, LzwId);
        if buf2 <> nil then
          CopyMemory(buf, buf2, brow)
        else
          // aborting
          result := false;
      end;

    8,32946:  // Deflate or ZIP
      begin
        {$ifdef IEINCLUDEZLIB}
        if zipbuf=nil then
          ZDecompress(xbuf,xbuflen,pointer(zipbuf),i,0);
        buf2:=pbyte(zipbuf); inc(buf2, curline*brow);
        CopyMemory(buf,buf2,brow);
        {$endif}
      end;

    32773: // RLE PACKBITS
      begin
{$WARNINGS OFF}
        buf2 := buf;
        z := 0; // reading position
        v := brow;
        cw := 0;
        while (z<v) and (rlepos<xbuflen) do
        begin
          if TIFFVars.FillOrder=2 then
            ReverseBitsB(xbuf^);
          if (shortint(xbuf^) >= 0) and (shortint(xbuf^) <= 127) then
          begin
            // read next shortint(xbuf^)+1 bytes
            v2 := shortint(xbuf^);
            inc(xbuf);
            inc(rlepos);
            for z2 := 0 to v2 do
            begin // it isn't v2-1, because I have first removed v2+1
              if TIFFVars.FillOrder=2 then
                ReverseBitsB(xbuf^);
              if cw < brow then
                buf2^ := xbuf^;
              inc(buf2);
              inc(xbuf);
              inc(rlepos);
              inc(z);
              inc(cw);
            end;
          end
          else if (shortint(xbuf^) >= -127) and (shortint(xbuf^) <= -1) then
          begin
            // repeat next byte for abs(shortint(xbuf^))+1 times
            v2 := -1 * (shortint(xbuf^)); // see up because there isn't the "+1"
            inc(xbuf);
            inc(rlepos);
            if TIFFVars.FillOrder=2 then
              ReverseBitsB(xbuf^);
            for z2 := 0 to v2 do
            begin
              if cw < brow then
                buf2^ := xbuf^;
              inc(buf2);
              inc(z);
              inc(cw);
            end;
            inc(xbuf);
            inc(rlepos);
          end
          else
          begin
            inc(xbuf);
            inc(rlepos);
          end;
        end;
{$WARNINGS ON}
      end;
  end;
  if TIFFVars.BitsPerSample = 4 then
  begin
    // unpack nibble to byte
    v := brow * 2 - 1;
    v2 := brow - 1;
    while v >= 0 do
    begin
      pbytearray(buf)^[v] := pbytearray(buf)^[v2] and $0F;
      dec(v);
      pbytearray(buf)^[v] := (pbytearray(buf)^[v2] and $F0) shr 4;
      dec(v);
      dec(v2);
    end;
  end
  else if (TIFFVars.BitsPerSample > 1) and (TIFFVars.BitsPerSample < 8) and ((TIFFVars.Compression < 2) or (TIFFVars.Compression > 4)) then
  begin
    // unpack groups of BitsPerSample bits in a byte
    buf2 := allocmem(width);
    ra1 := buf2;
    v := 0;
    for z := 0 to width * TIFFVars.BitsPerSample - 1 do
    begin
      if _GetPixelbw(buf, z) <> 0 then
        ra1^ := ra1^ or (1 shl (TIFFVars.BitsPerSample - 1 - v));
      inc(v);
      if v = TIFFVars.BitsPerSample then
      begin
        v := 0;
        inc(ra1);
      end;
    end;
    copymemory(buf, buf2, width);
    freemem(buf2);
  end;

  if (TIFFVars.BitsPerSample = 4) and (TIFFVars.PhotometricInterpretation <= 1) then
  begin
    // image (4 bit, 16 levels) gray scale , convert to 8 bit
    buf2 := buf;
    z := 0;
    v := brow * 2;
    while z < v do
    begin
      buf2^ := buf2^ * 17;
      inc(buf2);
      inc(z);
    end;
  end;
  if (TIFFVars.BitsPerSample = 2) and (TIFFVars.PhotometricInterpretation <= 1) then
  begin
    // image (2 bit, 4 levels) gray scale , convert to 8 bit
    buf2 := buf;
    z := 0;
    v := brow * 4;
    while z < v do
    begin
      buf2^ := buf2^ * 85;
      inc(buf2);
      inc(z);
    end;
  end;
  if (TIFFVars.BitsPerSample = 7) and (TIFFVars.PhotometricInterpretation <= 1) then
  begin
    // image (7 bit, 128 levels) gray scale , convert to 8 bit
    buf2 := buf;
    z := 0;
    v := brow;
    while z < v do
    begin
      buf2^ := buf2^ * 2;
      inc(buf2);
      inc(z);
    end;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;


// decompress buffer (PlanarConfiguration=1)
// baserow = first row to fill in outbuf (y coordinate of the subimage)
// basecol = first col x 3 to fill in outbuf (x coordinate X 3 of the subimage)
// xbuf = compressed data
// sz = length of compressed data
// Width = width of the sub image (in pixel)
// Height = height of the sub image (in pixel)

procedure Decompress1(var TIFFVars: TTIFFVars; outbuf: TIEBitmap; baserow: integer; basecol: integer; xbuf: pbyte; sz: integer; Width, Height: integer; var Progress: TProgressRec);
var
  q, w, i, e: integer;
  px: PRGB;
  pw,pw2: pword;
  lxbuf,buf, zbuf, predbuf, pxx, pb, buf1: pbyte;
  wbuf: pword;
  brow: integer; // dimensione in byte di una riga (decompressa, non scompattata)
  CCITTposb: integer;
  inv: boolean;
  LzwId: pointer;
  hasalpha: boolean;
  ms, tbs: TMemoryStream;
  tmpBMP: TIEBitmap;
  nullpr: TProgressRec;
  raw: boolean;
  ldpix, ldpiy: integer;
  px_cmyk:PCMYK;
  px_rgb48:PRGB48;
  ycbcr,px_ycbcr:PYCBCR;
  pba:pbytearray;
  zipbuf:pbyte;
  rlepos:integer;
  lper:integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('Decompress1'); {$endif}
  predbuf := nil;
  zipbuf := nil;
  rlepos := 0;

  lper:=-1;

  // calc brow
  if TIFFVars.PlanarConfiguration = 1 then
    brow := trunc(Width * TIFFVars.SamplesPerPixel * (TIFFVars.BitsPerSample / 8))
  else
    brow := trunc(Width * (TIFFVars.BitsPerSample / 8));
  if (brow/(TIFFVars.BitsPerSample/8) < Width) then
    inc(brow);  // 2.2.7

  LzwId := nil; // initialize Id of LZW compressor
  //
  if (TIFFVars.Compression = 7) and (TIFFVars.JPEGTables = nil) then
  begin
    // jpeg compression (DRAFT TIFF Technical Note #2), without jpeg tables
    ms := TMemoryStream.Create;
    ms.Write(xbuf^, sz);
    ms.Position := 0;
    tmpBMP := TIEBitmap.Create;
    tmpBMP.Allocate(Width, Height, ie24RGB);
    if (TIFFVars.StripOffsets_Num = 1) or (TIFFVars.TileOffsets_Num = 1) then
      nullpr := Progress
    else
    begin
      with Progress do
      begin
        inc(val);
        if assigned(fOnProgress) and (trunc(per2 * val)<>lper) then
        begin
          lper:=trunc(per2 * val);
          fOnProgress(Sender, lper);
        end;
      end;
      nullpr.fOnProgress := nil;
      nullpr.Aborting := Progress.Aborting;
    end;
    //raw:= TIFFVars.PhotometricInterpretation=2;  // saved as native RGB
    raw := false;
    // save dpi because ReadJPegStream overwrite them
    ldpix := TIFFVars.RefParams.DpiX;
    ldpiy := TIFFVars.RefParams.DpiY;
    ReadJPegStream(ms, nil, tmpBMP, TIFFVars.RefParams, nullpr, false, raw, false, true, false,true,-1,TIFFVars.RefParams.IsNativePixelFormat);
    TIFFVars.RefParams.DpiX := ldpix;
    TIFFVars.RefParams.DpiY := ldpiy;
    if not nullpr.Aborting^ then
    begin
      if raw then
        for q := 0 to tmpBMP.Height - 1 do
        begin
          px := tmpBMP.Scanline[q];
          _BGR2RGB(px, tmpBMP.Width);
        end;
      tmpBMP.CopyRectTo(outbuf, 0, 0, basecol div 3, baserow, Width, Height);
    end;
    FreeAndNil(tmpBMP);
    FreeAndNil(ms);
  end
  else if (TIFFVars.Compression = 7) and (TIFFVars.JPEGTables <> nil) then
  begin
    // jpeg compression (DRAFT TIFF Technical Note #2), with jpeg tables
    ms := TMemoryStream.Create;
    ms.Write(xbuf^, sz);
    ms.Position := 0;
    tbs := TMemoryStream.Create;
    tbs.Write(pbyte(TIFFVars.JPEGTables)^, TIFFVars.JPEGTablesSize);
    tbs.Position := 0;
    tmpBMP := TIEBitmap.Create;
    tmpBMP.Allocate(Width, Height, ie24RGB);
    if (TIFFVars.StripOffsets_Num = 1) or (TIFFVars.TileOffsets_Num = 1) then
      nullpr := Progress
    else
    begin
      with Progress do
      begin
        inc(val);
        if assigned(fOnProgress) and (trunc(per2 * val)<>lper) then
        begin
          lper:=trunc(per2 * val);
          fOnProgress(Sender, lper);
        end;
      end;
      nullpr.fOnProgress := nil;
      nullpr.Aborting := Progress.Aborting;
    end;
    raw := TIFFVars.PhotometricInterpretation = 2; // saved as native RGB
    try
    ReadJPegStream(ms, tbs, tmpBMP, TIFFVars.RefParams, nullpr, false, raw, false, true, false,true,-1, TIFFVars.RefParams.IsNativePixelFormat);
    except
    end;
    if not nullpr.Aborting^ then
    begin
      if raw then
        for q := 0 to tmpBMP.Height - 1 do
        begin
          px := tmpBMP.Scanline[q];
          _BGR2RGB(px, tmpBMP.Width);
        end;
      tmpBMP.CopyRectTo(outbuf, 0, 0, basecol div 3, baserow, Width, Height);
    end;
    FreeAndNil(tmpBMP);
    FreeAndNil(ms);
    FreeAndNil(tbs);
  end
  else if (TIFFVars.PhotometricInterpretation = 2) and
    ((TIFFVars.SamplesPerPixel = 3) or (TIFFVars.SamplesPerPixel = 4)) and
    (TIFFVars.BitsPerSample = 8) then
  begin
    // without ColorMap, RGB and 24/32 bit (8 per pixel)
    hasalpha := (((TIFFVars.SamplesPerPixel = 4) and (TIFFVars.ExtraSamples = 2)) or
      ((TIFFVars.SamplesPerPixel = 4) and (TIFFVars.PhotometricInterpretation = 2)))
      and (not TIFFVars.IgnoreAlpha);
    if hasalpha then
      TIFFVars.AlphaChannel.Full := false;
    if (TIFFVars.Compression <> 1) then
      getmem(buf, Width * TIFFVars.SamplesPerPixel);
    for q := 0 to Height - 1 do
    begin
      if GetNextLine(q, buf, xbuf, sz, TIFFVars, Width, brow, LzwId, predbuf, CCITTposb, zipbuf,rlepos) then
      begin
        PerformPredictor(TIFFVars,buf,Width);
        zbuf := buf;
        px := outbuf.Scanline[baserow + q];
        inc(pbyte(px), basecol);
        if hasalpha then
        begin
          // Has Alpha Channel
          for w := 0 to Width - 1 do
          begin
            px^ := PRGB(zbuf)^;
            bswap(px^.r, px^.b);
            inc(zbuf, 3);
            TIFFVars.AlphaChannel.SetPixel(w, q + BaseRow, zbuf^);
            inc(zbuf);
            inc(px);
          end;
        end
        else
        begin
          // No Alpha Channel
          IEConvertColorFunction(zbuf,iecmsRGB,px,iecmsBGR,Width,TIFFVars.RefParams);
        end;
        // OnProgress
        with Progress do
        begin
          inc(val);
          if assigned(fOnProgress) and (trunc(per1 * val)<>lper) then
          begin
            lper:=trunc(per1 * val);
            fOnProgress(Sender, lper);
          end;
        end;
        if Progress.Aborting^ then
          break;
      end
      else
      begin
        // Error detected
        Progress.Aborting^ := True;
        break;
      end;
    end;
    if (TIFFVars.Compression <> 1) then
      freemem(buf);
  end
  else if (TIFFVars.PhotometricInterpretation = 2) and
    (TIFFVars.SamplesPerPixel = 3) and
    (TIFFVars.BitsPerSample = 16) then
  begin
    // without ColorMap, RGB and 48 bit (16 per sample)
    if (TIFFVars.Compression <> 1) then
      getmem(buf, Width * TIFFVars.SamplesPerPixel * 2);
    for q := 0 to Height - 1 do
    begin
      if GetNextLine(q, buf, xbuf, sz, TIFFVars, Width, brow, LzwId, predbuf, CCITTposb, zipbuf, rlepos) then
      begin
        PerformPredictor(TIFFVars,buf,Width);
        pw := pword(buf);

        if outbuf.PixelFormat=ie48RGB then
        begin

          // native pixel format
          px_rgb48 := outbuf.Scanline[baserow+q];
          inc(px_rgb48, basecol div TIFFVars.SamplesPerPixel);
          if TIFFVars.Intel then
            // intel
            for w:=0 to Width-1 do
            begin
              px_rgb48^.r:=pw^; inc(pw);
              px_rgb48^.g:=pw^; inc(pw);
              px_rgb48^.b:=pw^; inc(pw);
              inc(px_rgb48);
            end
          else
            // motorola
            for w:=0 to Width-1 do
            begin
              px_rgb48^.r:=IESwapWord(pw^); inc(pw);
              px_rgb48^.g:=IESwapWord(pw^); inc(pw);
              px_rgb48^.b:=IESwapWord(pw^); inc(pw);
              inc(px_rgb48);
            end;

        end
        else
        begin

          // convert to 24 bit
          px := outbuf.Scanline[baserow + q];
          inc(pbyte(px), basecol);
          if not TIFFVars.Intel then
            // Motorola Format
            IEConvertColorFunction(pw,iecmsRGB48_SE,px,iecmsBGR,Width,TIFFVars.RefParams)
          else
            // Intel format
            IEConvertColorFunction(pw,iecmsRGB48,px,iecmsBGR,Width,TIFFVars.RefParams);

        end;

        // OnProgress
        with Progress do
        begin
          inc(val);
          if assigned(fOnProgress) and (trunc(per1 * val)<>lper) then
          begin
            lper:=trunc(per1 * val);
            fOnProgress(Sender, lper);
          end;
        end;
        if Progress.Aborting^ then
          break;
      end
      else
      begin
        // Error detected
        Progress.Aborting^ := True;
        break;
      end;
    end;
    if (TIFFVars.Compression <> 1) then
      freemem(buf);
  end
  else if (TIFFVars.PhotometricInterpretation = 2) and
    (TIFFVars.SamplesPerPixel = 4) and
    (TIFFVars.BitsPerSample = 16) then
  begin
    // without ColorMap, RGB and 48 bit (16 per sample) + 1 extra channel
    if (TIFFVars.Compression <> 1) then
      getmem(buf, Width * TIFFVars.SamplesPerPixel * 2);
    for q := 0 to Height - 1 do
    begin
      if GetNextLine(q, buf, xbuf, sz, TIFFVars, Width, brow, LzwId, predbuf, CCITTposb, zipbuf, rlepos) then
      begin
        PerformPredictor(TIFFVars,buf,Width);
        pw := pword(buf);

        if outbuf.PixelFormat=ie48RGB then
        begin

          // native pixel format
          px_rgb48 := outbuf.Scanline[baserow+q];
          inc(px_rgb48, basecol div TIFFVars.SamplesPerPixel);
          if TIFFVars.Intel then
            // intel
            for w:=0 to Width-1 do
            begin
              px_rgb48^.r:=pw^; inc(pw);
              px_rgb48^.g:=pw^; inc(pw);
              px_rgb48^.b:=pw^; inc(pw);
              inc(pw);  // discard extra channel
              inc(px_rgb48);
            end
          else
            // motorola
            for w:=0 to Width-1 do
            begin
              px_rgb48^.r:=IESwapWord(pw^); inc(pw);
              px_rgb48^.g:=IESwapWord(pw^); inc(pw);
              px_rgb48^.b:=IESwapWord(pw^); inc(pw);
              inc(pw);  // discard extra channel
              inc(px_rgb48);
            end;

        end
        else
        begin

          // convert to 24 bit
          px := outbuf.Scanline[baserow + q];
          inc(pbyte(px), basecol);

          // discard extra channel
          px_rgb48:=PRGB48(pw);
          pw2:=pw;
          for w:=0 to Width-1 do
          begin
              px_rgb48^.r:=pw2^; inc(pw2);
              px_rgb48^.g:=pw2^; inc(pw2);
              px_rgb48^.b:=pw2^; inc(pw2);
              inc(pw2);  // the extra channel
              inc(px_rgb48);
          end;

          if not TIFFVars.Intel then
            // Motorola Format
            IEConvertColorFunction(pw,iecmsRGB48_SE,px,iecmsBGR,Width,TIFFVars.RefParams)
          else
            // Intel format
            IEConvertColorFunction(pw,iecmsRGB48,px,iecmsBGR,Width,TIFFVars.RefParams);

        end;

        // OnProgress
        with Progress do
        begin
          inc(val);
          if assigned(fOnProgress) and (trunc(per1 * val)<>lper) then
          begin
            lper:=trunc(per1 * val);
            fOnProgress(Sender, lper);
          end;
        end;
        if Progress.Aborting^ then
          break;
      end
      else
      begin
        // Error detected
        Progress.Aborting^ := True;
        break;
      end;
    end;
    if (TIFFVars.Compression <> 1) then
      freemem(buf);
  end
  else if (TIFFVars.PhotometricInterpretation = 2) and
    (TIFFVars.SamplesPerPixel = 1) and
    (TIFFVars.BitsPerSample = 16) then
  begin
    // without ColorMap, RGB and 16 bit
    if (TIFFVars.Compression <> 1) then
      getmem(buf, Width * TIFFVars.SamplesPerPixel);
    for q := 0 to Height - 1 do
    begin
      if GetNextLine(q, buf, xbuf, sz, TIFFVars, Width, brow, LzwId, predbuf, CCITTposb, zipbuf, rlepos) then
      begin
        PerformPredictor(TIFFVars,buf,Width);
        zbuf := buf;
        px := outbuf.Scanline[baserow + q];
        inc(pbyte(px), basecol);
        for w := 0 to Width - 1 do
        begin
          px^.r := (pword(zbuf)^ shr 10) shl 3;
          px^.g := ((pword(zbuf)^ shr 5) and $1F) shl 3;
          px^.b := (pword(zbuf)^ and $1F) shl 3;
          inc(zbuf, 2);
          inc(px);
        end;
        // OnProgress
        with Progress do
        begin
          inc(val);
          if assigned(fOnProgress) and (trunc(per1 * val)<>lper) then
          begin
            lper:=trunc(per1 * val);
            fOnProgress(Sender, lper);
          end;
        end;
        if Progress.Aborting^ then
          break;
      end
      else
      begin
        // Error detected
        Progress.Aborting^ := True;
        break;
      end;
    end;
    if (TIFFVars.Compression <> 1) then
      freemem(buf);
  end
  else if (TIFFVars.PhotometricInterpretation = 3) and (TIFFVars.BitsPerSample <= 8) then
  begin
    // with ColorMap
    if (TIFFVars.SamplesPerPixel = 2) and (TIFFVars.BitsPerSample = 8) then
    begin
      // with alpha channel
      if ((TIFFVars.Compression <> 1)) then
        getmem(buf, Width * 2);
      with TIFFVars do
        for q := 0 to Height - 1 do
        begin
          px := outbuf.scanline[baserow + q];
          inc(pbyte(px), basecol);
          if GetNextLine(q, buf, xbuf, sz, TIFFVars, Width, brow, LzwId, predbuf, CCITTposb, zipbuf, rlepos) then
          begin
            PerformPredictor(TIFFVars,buf,Width);
            zbuf := buf;
            // RGB colormap
            for i := 0 to Width - 1 do
            begin
              px^ := ColorMap^[zbuf^];
              inc(zbuf);
              TIFFVars.AlphaChannel.SetPixel(i, q + BaseRow, 255 - zbuf^);
              inc(zbuf); //
              inc(px);
            end;
            // OnProgress
            with Progress do
            begin
              inc(val);
              if assigned(fOnProgress) and (trunc(per1 * val)<>lper) then
              begin
                lper:=trunc(per1 * val);
                fOnProgress(Sender, lper);
              end;
            end;
            if Progress.Aborting^ then
              break;
          end
          else
          begin
            // error detected
            Progress.Aborting^ := True;
            break;
          end;
        end;
      if ((TIFFVars.Compression <> 1)) then
        freemem(buf);
    end
    else
    begin
      // without alpha channel
      if ((TIFFVars.Compression <> 1)) or (TIFFVars.BitsperSample < 8) then
        getmem(buf, Width*2);
      with TIFFVars do
        for q := 0 to Height - 1 do
        begin
          px := outbuf.scanline[baserow + q];
          inc(pbyte(px), basecol);
          if GetNextLine(q, buf, xbuf, sz, TIFFVars, Width, brow, LzwId, predbuf, CCITTposb, zipbuf, rlepos) then
          begin
            PerformPredictor(TIFFVars,buf,Width);
            zbuf := buf;
            // RGB colormap
            if outbuf.PixelFormat = ie8p then
            begin
              for i := 0 to Width - 1 do
              begin
                pbyte(px)^ := zbuf^;
                inc(zbuf);
                inc(pbyte(px));
              end;
            end
            else
            begin
              for i := 0 to Width - 1 do
              begin
                px^ := ColorMap^[zbuf^];
                inc(zbuf);
                inc(px);
              end;
            end;
            // OnProgress
            with Progress do
            begin
              inc(val);
              if assigned(fOnProgress) and (trunc(per1 * val)<>lper) then
              begin
                lper:=trunc(per1 * val);
                fOnProgress(Sender, lper);
              end;
            end;
            if Progress.Aborting^ then
              break;
          end
          else
          begin
            // error detected
            Progress.Aborting^ := True;
            break;
          end;
        end;
      if ((TIFFVars.Compression <> 1)) or (TIFFVars.BitsperSample < 8) then
        freemem(buf);
    end;
  end
  else if (TIFFVars.PhotometricInterpretation <= 1) and (TIFFVars.SamplesPerPixel = 1) and
    ((TIFFVars.BitsPerSample = 8) or (TIFFVars.BitsPerSample = 4) or (TIFFVars.BitsPerSample=2) or (TIFFVars.BitsPerSample=7)) then
  begin
    // gray levels (8 bit)
    if (TIFFVars.Compression <> 1) or (TIFFVars.BitsPerSample = 4) or (TIFFVars.BitsPerSample=2) or (TIFFVars.BitsPerSample=7) then
      getmem(buf, Width+4); // 3.0.0
    for q := 0 to Height - 1 do
    begin
      px := outbuf.scanline[baserow + q];
      inc(pbyte(px), basecol);
      if GetNextLine(q, buf, xbuf, sz, TIFFVars, Width, brow, LzwId, predbuf, CCITTposb, zipbuf, rlepos) then
      begin
        PerformPredictor(TIFFVars,buf,Width);
        zbuf := buf;
        if outbuf.PixelFormat = ie8g then
        begin
          for w := 0 to Width - 1 do
          begin
            pbyte(px)^ := zbuf^;
            inc(zbuf);
            inc(pbyte(px));
          end;
        end
        else
        begin
          if TIFFVars.PhotometricInterpretation = 0 then
            for w := 0 to Width - 1 do
            begin
              i := 255 - zbuf^;
              px^.r := i;
              px^.g := i;
              px^.b := i;
              inc(zbuf);
              inc(px);
            end
          else
            for w := 0 to Width - 1 do
            begin
              px^.r := zbuf^;
              px^.g := zbuf^;
              px^.b := zbuf^;
              inc(zbuf);
              inc(px);
            end;
        end;
        // OnProgress
        with Progress do
        begin
          inc(val);
          if assigned(fOnProgress) and (trunc(per1 * val)<>lper) then
          begin
            lper:=trunc(per1 * val);
            fOnProgress(Sender, lper);
          end;
        end;
        if Progress.Aborting^ then
          break;
      end
      else
      begin
        // error detected
        Progress.Aborting^ := True;
        break;
      end;
    end;
    if ((TIFFVars.Compression <> 1)) or (TIFFVars.BitsperSample = 4) then
      freemem(buf);
  end
  else if (TIFFVars.PhotometricInterpretation <= 1) and (TIFFVars.SamplesPerPixel = 2) and
    ((TIFFVars.BitsPerSample = 8)) then
  begin
    // gray levels (8 bit) with two bytes
    hasalpha := (*(TIFFVars.ExtraSamples = 2) and *)(not TIFFVars.IgnoreAlpha);
    if hasalpha then
      TIFFVars.AlphaChannel.Full := false;

    if ((TIFFVars.Compression <> 1)) then
      getmem(buf, Width*2);
    for q := 0 to Height - 1 do
    begin
      px := outbuf.scanline[baserow + q];
      inc(pbyte(px), basecol);
      if GetNextLine(q, buf, xbuf, sz, TIFFVars, Width, brow, LzwId, predbuf, CCITTposb, zipbuf, rlepos) then
      begin
        PerformPredictor(TIFFVars,buf,Width);
        zbuf := buf;
        if TIFFVars.PhotometricInterpretation = 0 then
          for w := 0 to Width - 1 do
          begin
            i := 255 - zbuf^;
            px^.r := i;
            px^.g := i;
            px^.b := i;
            if hasalpha then
            begin
              inc(zbuf);
              TIFFVars.AlphaChannel.SetPixel(w, q + BaseRow, zbuf^);
              inc(zbuf);
            end
            else
              inc(zbuf,2);
            inc(px);
          end
        else
          for w := 0 to Width - 1 do
          begin
            px^.r := zbuf^;
            px^.g := zbuf^;
            px^.b := zbuf^;
            if hasalpha then
            begin
              inc(zbuf);
              TIFFVars.AlphaChannel.SetPixel(w, q + BaseRow, zbuf^);
              inc(zbuf);
            end
            else
              inc(zbuf,2);
            inc(px);
          end;
        // OnProgress
        with Progress do
        begin
          inc(val);
          if assigned(fOnProgress) and (trunc(per1 * val)<>lper) then
          begin
            lper:=trunc(per1 * val);
            fOnProgress(Sender, lper);
          end;
        end;
        if Progress.Aborting^ then
          break;
      end
      else
      begin
        // error detected
        Progress.Aborting^ := True;
        break;
      end;
    end;
    if ((TIFFVars.Compression <> 1)) or (TIFFVars.BitsperSample = 4) then
      freemem(buf);
  end
  else if (TIFFVars.PhotometricInterpretation <= 1) and (TIFFVars.SamplesPerPixel = 1) and
    (TIFFVars.BitsPerSample = 16) (*and (TIFFVars.Compression=1)*) then
  begin
    // gray levels (16 bit)
    if ((TIFFVars.Compression <> 1)) then
      getmem(buf, Width * 2);
    for q := 0 to Height - 1 do
    begin
      px := outbuf.scanline[baserow + q];
      inc(pbyte(px), basecol);
      if GetNextLine(q, buf, xbuf, sz, TIFFVars, Width, brow, LzwId, predbuf, CCITTposb, zipbuf, rlepos) then
      begin
        PerformPredictor(TIFFVars,buf,Width);
        wbuf := pword(buf);
        // requested by one user
        if copy(TIFFVars.Software, 1, 15) = 'Look@Molli v1.1' then
          e := 4
        else
          e := 8;
        //
        if outbuf.PixelFormat = ie16g then
        begin
          if TIFFVars.PhotometricInterpretation = 0 then
            for w := 0 to Width - 1 do
            begin
              wbuf^ := IECSwapWord(wbuf^, not TIFFVars.Intel);
              pword(px)^ := 65535 - wbuf^;
              inc(wbuf);
              inc(pword(px));
            end
          else
            for w := 0 to Width - 1 do
            begin
              wbuf^ := IECSwapWord(wbuf^, not TIFFVars.Intel);
              pword(px)^ := wbuf^;
              inc(wbuf);
              inc(pword(px));
            end;
        end
        else
        begin
          if TIFFVars.PhotometricInterpretation = 0 then
            for w := 0 to Width - 1 do
            begin
              wbuf^ := IECSwapWord(wbuf^, not TIFFVars.Intel);
              i := (65535 - wbuf^) shr e;
              px^.r := i;
              px^.g := i;
              px^.b := i;
              inc(wbuf);
              inc(px);
            end
          else
            for w := 0 to Width - 1 do
            begin
              wbuf^ := IECSwapWord(wbuf^, not TIFFVars.Intel);
              i := wbuf^ shr e;
              px^.r := i;
              px^.g := i;
              px^.b := i;
              inc(wbuf);
              inc(px);
            end;
        end;
        // OnProgress
        with Progress do
        begin
          inc(val);
          if assigned(fOnProgress) and (trunc(per1 * val)<>lper) then
          begin
            lper:=trunc(per1 * val);
            fOnProgress(Sender, lper);
          end;
        end;
        if Progress.Aborting^ then
          break;
      end
      else
      begin
        // error detected
        Progress.Aborting^ := True;
        break;
      end;
    end;
    if TIFFVars.Compression <> 1 then
      freemem(buf);
  end
  else if (TIFFVars.PhotometricInterpretation <= 1) and (TIFFVars.SamplesPerPixel = 1) and
    (TIFFVars.BitsPerSample = 1) then
  begin
    // Black/White
    lxbuf:=xbuf;
    getmem(buf, Width);
    getmem(predbuf, brow); // previous line for CCITT 2D
    fillmemory(predbuf, brow, 255); // initialize
    CCITTposb := 0;
    if ((TIFFVars.PhotometricInterpretation = 0) and ((TIFFVars.Compression = 1) or (TIFFVars.Compression >= 5))) or
      ((TIFFVars.PhotometricInterpretation = 1) and ((TIFFVars.Compression > 2) and (TIFFVars.Compression < 4))) then
      inv := true
    else
      inv := false;
    for q := 0 to Height - 1 do
    begin
      px := outbuf.scanline[baserow + q];
      inc(pbyte(px), basecol);
      if (int64(xbuf)-int64(lxbuf))>=sz then
        break;  // exceeded to read input data
      if GetNextLine(q, buf, xbuf, sz, TIFFVars, Width, brow, LzwId, predbuf, CCITTposb, zipbuf, rlepos) then
      begin
        PerformPredictor(TIFFVars,buf,Width);
        zbuf := buf;
        pxx := pbyte(px);
        case inv of
          true:
            for w := 0 to brow - 1 do
            begin
              pxx^ := not zbuf^;
              inc(zbuf);
              inc(pxx);
            end;
          false:
            copymemory(pxx, zbuf, brow);
        end;
        // OnProgress
        with Progress do
        begin
          inc(val);
          if assigned(fOnProgress) and (trunc(per1 * val)<>lper) then
          begin
            lper:=trunc(per1 * val);
            fOnProgress(Sender, lper);
          end;
        end;
        if Progress.Aborting^ then
          break;
      end
      else
      begin
        // error detected
        Progress.Aborting^ := True;
        break;
      end;
    end;
    freemem(predbuf);
    freemem(buf);
  end
  else if (TIFFVars.PhotometricInterpretation = 5) and (TIFFVars.SamplesPerPixel = 4) and
    (TIFFVars.BitsPerSample = 8) then
  begin
    // CMYK
    if (TIFFVars.Compression <> 1) then
      getmem(buf, Width * 4);
    for q := 0 to Height - 1 do
    begin
      if GetNextLine(q, buf, xbuf, sz, TIFFVars, Width, brow, LzwId, predbuf, CCITTposb, zipbuf, rlepos) then
      begin
        PerformPredictor(TIFFVars,buf,Width);
        if outbuf.PixelFormat=ieCMYK then
        begin
          // native CMYK format
          px_cmyk:=outbuf.scanline[baserow+q];
          inc(px_cmyk, basecol div 3);
          pb:=buf;
          for w:=0 to Width-1 do
          begin
            px_cmyk^.c:=255-pb^; inc(pb);
            px_cmyk^.m:=255-pb^; inc(pb);
            px_cmyk^.y:=255-pb^; inc(pb);
            px_cmyk^.k:=255-pb^; inc(pb);
            inc(px_cmyk);
          end;
        end
        else
        begin
          // convert to 24bit
          px := outbuf.scanline[baserow + q];
          inc(pbyte(px), basecol);
          // invert CMYK values, because IEConvertColorFunction wants normal values
          pb := buf;
          for w := 0 to Width- 1 do
          begin
            pb^ := 255 - pb^; inc(pb);
            pb^ := 255 - pb^; inc(pb);
            pb^ := 255 - pb^; inc(pb);
            pb^ := 255 - pb^; inc(pb);
          end;
          IEConvertColorFunction(buf, iecmsCMYK, px, iecmsBGR, Width, TIFFVars.RefParams);
        end;
        // OnProgress
        with Progress do
        begin
          inc(val);
          if assigned(fOnProgress) and (trunc(per1 * val)<>lper) then
          begin
            lper:=trunc(per1 * val);
            fOnProgress(Sender, lper);
          end;
        end;
        if Progress.Aborting^ then
          break;
      end
      else
      begin
        // error detected
        Progress.Aborting^ := True;
        break;
      end;
    end;
    if (TIFFVars.Compression <> 1) then
      freemem(buf);
  end
  else if (TIFFVars.PhotometricInterpretation = 5) and (TIFFVars.SamplesPerPixel >= 5) (*and (TIFFVars.SamplesPerPixel<>6)*) and
    (TIFFVars.BitsPerSample = 8) then
  begin
    // CMYK
    if (TIFFVars.Compression <> 1) then
      getmem(buf, Width * TIFFVars.SamplesPerPixel);
    for q := 0 to Height - 1 do
    begin
      if GetNextLine(q, buf, xbuf, sz, TIFFVars, Width, brow, LzwId, predbuf, CCITTposb, zipbuf, rlepos) then
      begin
        PerformPredictor(TIFFVars,buf,Width);
        if outbuf.PixelFormat=ieCMYK then
        begin
          // native CMYK format
          px_cmyk:=outbuf.scanline[baserow+q];
          inc(px_cmyk, basecol div 3);
          pb:=buf;
          for w:=0 to Width-1 do
          begin
            px_cmyk^.c:=255-pb^; inc(pb);
            px_cmyk^.m:=255-pb^; inc(pb);
            px_cmyk^.y:=255-pb^; inc(pb);
            px_cmyk^.k:=255-pb^; inc(pb);
            for e:=1 to TIFFVars.SamplesPerPixel-4 do
              inc(pb);
            inc(px_cmyk);
          end;
        end
        else
        begin
          // convert to 24bit
          px := outbuf.scanline[baserow + q];
          inc(pbyte(px), basecol);
          // invert CMYK values, because IEConvertColorFunction wants normal values
          pb := buf;
          px_cmyk := PCMYK(buf);
          for w := 0 to Width- 1 do
          begin
            px_cmyk^.c:=255-pb^; inc(pb);
            px_cmyk^.m:=255-pb^; inc(pb);
            px_cmyk^.y:=255-pb^; inc(pb);
            px_cmyk^.k:=255-pb^; inc(pb);
            for e:=1 to TIFFVars.SamplesPerPixel-4 do
              inc(pb);
            inc(px_cmyk);
          end;
          IEConvertColorFunction(buf, iecmsCMYK, px, iecmsBGR, Width, TIFFVars.RefParams);
        end;
        // OnProgress
        with Progress do
        begin
          inc(val);
          if assigned(fOnProgress) and (trunc(per1 * val)<>lper) then
          begin
            lper:=trunc(per1 * val);
            fOnProgress(Sender, lper);
          end;
        end;
        if Progress.Aborting^ then
          break;
      end
      else
      begin
        // error detected
        Progress.Aborting^ := True;
        break;
      end;
    end;
    if (TIFFVars.Compression <> 1) then
      freemem(buf);
  end
  else if (TIFFVars.PhotometricInterpretation = 5) and (TIFFVars.SamplesPerPixel = 4) and
    (TIFFVars.BitsPerSample = 16) then
  begin
    // CMYK
    if (TIFFVars.Compression <> 1) then
      getmem(buf, Width * 8);
    for q := 0 to Height - 1 do
    begin
      if GetNextLine(q, buf, xbuf, sz, TIFFVars, Width, brow, LzwId, predbuf, CCITTposb, zipbuf, rlepos) then
      begin
        PerformPredictor(TIFFVars,buf,Width);
        if outbuf.PixelFormat=ieCMYK then
        begin
          // native CMYK format
          px_cmyk:=outbuf.scanline[baserow+q];
          inc(px_cmyk, basecol div 4);
          pw:=pword(buf);
          for w:=0 to Width-1 do
          begin
            px_cmyk^.c:=255-pw^ shr 8; inc(pw);
            px_cmyk^.m:=255-pw^ shr 8; inc(pw);
            px_cmyk^.y:=255-pw^ shr 8; inc(pw);
            px_cmyk^.k:=255-pw^ shr 8; inc(pw);
            inc(px_cmyk);
          end;
        end
        else
        begin
          // convert to 24bit
          px := outbuf.scanline[baserow + q];
          inc(pbyte(px), basecol);
          // invert and shift right CMYK values, because IEConvertColorFunction wants normal values
          pw := pword(buf);
          getmem(buf1, Width*4);
          pb := pbyte(buf1);
          for w := 0 to Width- 1 do
          begin
            pb^ := 255 - pw^ shr 8; inc(pb); inc(pw);
            pb^ := 255 - pw^ shr 8; inc(pb); inc(pw);
            pb^ := 255 - pw^ shr 8; inc(pb); inc(pw);
            pb^ := 255 - pw^ shr 8; inc(pb); inc(pw);
          end;
          IEConvertColorFunction(buf1, iecmsCMYK, px, iecmsBGR, Width, TIFFVars.RefParams);
          freemem(buf1);
        end;
        // OnProgress
        with Progress do
        begin
          inc(val);
          if assigned(fOnProgress) and (trunc(per1 * val)<>lper) then
          begin
            lper:=trunc(per1 * val);
            fOnProgress(Sender, lper);
          end;
        end;
        if Progress.Aborting^ then
          break;
      end
      else
      begin
        // error detected
        Progress.Aborting^ := True;
        break;
      end;
    end;
    if (TIFFVars.Compression <> 1) then
      freemem(buf);
  end
  else if (TIFFVars.PhotometricInterpretation = 8) and (TIFFVars.SamplesPerPixel = 3) and
    (TIFFVars.BitsPerSample = 8) then
  begin
    // CIE L*a*b*
    if (TIFFVars.Compression <> 1) then
      getmem(buf, Width * 3);
    for q := 0 to Height - 1 do
    begin
      if GetNextLine(q, buf, xbuf, sz, TIFFVars, Width, brow, LzwId, predbuf, CCITTposb, zipbuf, rlepos) then
      begin
        PerformPredictor(TIFFVars,buf,Width);
        //lab:=PIELAB(buf);
        px := outbuf.scanline[baserow + q];
        inc(pbyte(px), basecol);
        IEConvertColorFunction(buf, iecmsCIELab, px, iecmsBGR, Width, TIFFVars.RefParams);
        // OnProgress
        with Progress do
        begin
          inc(val);
          if assigned(fOnProgress) and (trunc(per1 * val)<>lper) then
          begin
            lper:=trunc(per1 * val);
            fOnProgress(Sender, lper);
          end;
        end;
        if Progress.Aborting^ then
          break;
      end
      else
      begin
        // error detected
        Progress.Aborting^ := True;
        break;
      end;
    end;
    if (TIFFVars.Compression <> 1) then
      freemem(buf);
  end
  else if (TIFFVars.PhotometricInterpretation = 6) and (TIFFVars.SamplesPerPixel = 3) and
    (TIFFVars.BitsPerSample = 8) and (TIFFVars.YCbCrSubSampling[0]=2) and (TIFFVars.YCbCrSubSampling[1]=1) then
  begin
    // YCbCr - YCbCrSubSampling = 2,1
    brow := Width*2;
    if (TIFFVars.Compression <> 1) then
      getmem(buf, Width * 3);
    getmem(ycbcr, Width*3);
    for q := 0 to Height - 1 do
    begin
      if GetNextLine(q, buf, xbuf, sz, TIFFVars, Width, brow, LzwId, predbuf, CCITTposb, zipbuf, rlepos) then
      begin
        PerformPredictor(TIFFVars,buf,Width);

        // convert YCbCr:2:1 to 1:1
        pba:=pbytearray(buf);
        px_ycbcr:=ycbcr;
        w:=0;
        while w<width do
        begin
          px_ycbcr^.y:=pba[0];
          px_ycbcr^.Cb:=pba[2];
          px_ycbcr^.Cr:=pba[3];
          inc(px_ycbcr);
          px_ycbcr^.y:=pba[1];
          px_ycbcr^.Cb:=pba[2];
          px_ycbcr^.Cr:=pba[3];
          inc(px_ycbcr);
          inc(pbyte(pba),4);
          inc(w,2);
        end;

        px := outbuf.scanline[baserow + q];
        inc(pbyte(px), basecol);
        IEConvertColorFunction(ycbcr, iecmsYCbCr, px, iecmsBGR, Width, TIFFVars.RefParams);
        // OnProgress
        with Progress do
        begin
          inc(val);
          if assigned(fOnProgress) and (trunc(per1 * val)<>lper) then
          begin
            lper:=trunc(per1 * val);
            fOnProgress(Sender, lper);
          end;
        end;
        if Progress.Aborting^ then
          break;
      end
      else
      begin
        // error detected
        Progress.Aborting^ := True;
        break;
      end;
    end;
    if (TIFFVars.Compression <> 1) then
      freemem(buf);
    freemem(ycbcr);
  end else if (TIFFVars.PhotometricInterpretation = 6) and (TIFFVars.SamplesPerPixel = 3) and
    (TIFFVars.BitsPerSample = 8) and (TIFFVars.YCbCrSubSampling[0]=2) and (TIFFVars.YCbCrSubSampling[1]=2) then
  begin
    // YCbCr - YCbCrSubSampling = 2,2
    (* not still working
    brow := Width*3;
    if (TIFFVars.Compression <> 1) then
      getmem(buf, Width * 3);
    getmem(ycbcr, Width*3);
    for q := 0 to Height- 1 do
    begin
      if GetNextLine(q, buf, xbuf, sz, TIFFVars, Width, brow, LzwId, predbuf, CCITTposb, zipbuf) then
      begin
        PerformPredictor(TIFFVars,buf,Width);

        // convert YCbCr:2:2 to 1:1

       pba:=pbytearray(buf);
        px_ycbcr:=ycbcr;
        w:=0;
        while w<width do
        begin
          px_ycbcr^.y:=pba[2];
          px_ycbcr^.Cb:=128;
          px_ycbcr^.Cr:=128;
          inc(px_ycbcr);
          px_ycbcr^.y:=pba[3];
          px_ycbcr^.Cb:=128;
          px_ycbcr^.Cr:=128;
          inc(px_ycbcr);

          inc(pbyte(pba),6);
          inc(w,2);
        end;
        px := outbuf.scanline[baserow + q];
        inc(pbyte(px), basecol);
        IEConvertColorFunction(ycbcr, iecmsYCbCr, px, iecmsBGR, Width, TIFFVars.RefParams);

        pba:=pbytearray(buf);
        px_ycbcr:=ycbcr;
        w:=0;
        while w<width do
        begin
          px_ycbcr^.y:=pba[2];
          px_ycbcr^.Cb:=128;
          px_ycbcr^.Cr:=128;
          inc(px_ycbcr);
          px_ycbcr^.y:=pba[3];
          px_ycbcr^.Cb:=128;
          px_ycbcr^.Cr:=128;
          inc(px_ycbcr);

          inc(pbyte(pba),6);
          inc(w,2);
        end;
        px := outbuf.scanline[baserow + q*2+1];
        inc(pbyte(px), basecol);
        IEConvertColorFunction(ycbcr, iecmsYCbCr, px, iecmsBGR, Width, TIFFVars.RefParams);

        // OnProgress
        with Progress do
        begin
          inc(val);
          if assigned(fOnProgress) then
            fOnProgress(Sender, trunc(per1 * val));
        end;
        if Progress.Aborting^ then
          break;
      end
      else
      begin
        // error detected
        Progress.Aborting^ := True;
        break;
      end;
    end;
    if (TIFFVars.Compression <> 1) then
      freemem(buf);
    freemem(ycbcr);
    *)
  end;
  //
  if (TIFFVars.Compression = 5) and (LzwId<>nil) then
    // free LZW compressor
    TIFFVars.LZWDecompFunc(nil, 0, LzwId);
  if zipbuf<>nil then
    freemem(zipbuf); // zip buffer
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// decompress buffer (PlanarConfiguration=2)
procedure Decompress2(var TIFFVars: TTIFFVars; outbuf: TIEBitmap; baserow: integer; xbuf1, xbuf2, xbuf3: pbyte; sz1, sz2, sz3: integer; Width, Height: integer; var Progress: TProgressRec);
var
  q, w: integer;
  px: PRGB;
  buf1, buf2, buf3, zbuf1, zbuf2, zbuf3, predbuf: pbyte;
  LZW1, LZW2, LZW3: pointer;
  brow: integer; // size in byte of one row (decompressed, not compacted)
  CCITTposb: integer;
  zipbuf1,zipbuf2,zipbuf3:pbyte;
  rlepos1,rlepos2,rlepos3:integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('Decompress2'); {$endif}
  predbuf := nil;
  zipbuf1 := nil;
  zipbuf2 := nil;
  zipbuf3 := nil;
  rlepos1 := 0;
  rlepos2 := 0;
  rlepos3 := 0;
  // calc brow
  brow := trunc(Width * (TIFFVars.BitsPerSample / 8));
  if (TIFFVars.BitsPerSample = 4) and (Width and 1 <> 0) then
    inc(brow);
  // init Id LZW decompressor
  LZW1 := nil;
  LZW2 := nil;
  LZW3 := nil;
  //
  if (TIFFVars.PhotometricInterpretation = 2) and (TIFFVars.SamplesPerPixel = 3) and (TIFFVars.BitsPerSample = 8) then
  begin
    // without ColorMap, RGB e 24 bit (8 per pixel)
    if TIFFVars.Compression <> 1 then
    begin
      getmem(buf1, Width);
      getmem(buf2, Width);
      getmem(buf3, Width);
    end;
    for q := 0 to Height - 1 do
    begin
      px := outbuf.scanline[baserow + q];
      if not GetNextLine(q, buf1, xbuf1, sz1, TIFFVars, Width, brow, LZW1, predbuf, CCITTposb, zipbuf1, rlepos1) then
      begin
        Progress.Aborting^ := True;
        break;
      end;
      zbuf1 := buf1;
      if not GetNextLine(q, buf2, xbuf2, sz2, TIFFVars, Width, brow, LZW2, predbuf, CCITTposb, zipbuf2, rlepos2) then
      begin
        Progress.Aborting^ := True;
        break;
      end;
      zbuf2 := buf2;
      if not GetNextLine(q, buf3, xbuf3, sz3, TIFFVars, Width, brow, LZW3, predbuf, CCITTposb, zipbuf3, rlepos3) then
      begin
        Progress.Aborting^ := True;
        break;
      end;
      zbuf3 := buf3;
      for w := 0 to Width - 1 do
      begin
        px^.r := zbuf1^;
        inc(zbuf1);
        px^.g := zbuf2^;
        inc(zbuf2);
        px^.b := zbuf3^;
        inc(zbuf3);
        inc(px);
      end;
      PerformPredictor(TIFFVars,outbuf.scanline[baserow+q],Width);
      // OnProgress
      with Progress do
      begin
        inc(val);
        if assigned(fOnProgress) then
          fOnProgress(Sender, trunc(per1 * val));
      end;
      if Progress.Aborting^ then
        break;
    end;
    if TIFFVars.Compression <> 1 then
    begin
      freemem(buf1);
      freemem(buf2);
      freemem(buf3);
    end;
  end;
  //
  if TIFFVars.Compression = 5 then
  begin
    // free LZW decompressor
    TIFFVars.LZWDecompFunc(nil, 0, LZW1);
    TIFFVars.LZWDecompFunc(nil, 0, LZW2);
    TIFFVars.LZWDecompFunc(nil, 0, LZW3);
  end;
  if zipbuf1<>nil then
    freemem(zipbuf1);
  if zipbuf2<>nil then
    freemem(zipbuf2);
  if zipbuf3<>nil then
    freemem(zipbuf3);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure LoadSimpleJpegV6(var TIFFEnv: TTIFFEnv; var TIFFVars: TTIFFVars; var Bitmap: TIEBitmap; var Progress: TProgressRec);
var
  ms: TMemoryStream;
  ioparams: TIOParamsVals;
  l: integer;
  tlr:integer;
  i:integer;
  tmpBMP:TIEBitmap;
  nullpr: TProgressRec;
  w:word;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('LoadSimpleJpegV6'); {$endif}
  ioparams := TIOParamsVals.Create(nil);
  ms := TMemoryStream.Create;

  if (TIFFVars.StripByteCounts<>nil) then
  begin

      Bitmap.Allocate(TIFFVars.ImageWidth,TIFFVars.ImageHeight,ie24RGB);
      tmpBMP:=TIEBitmap.Create;
      for i:=0 to TIFFVars.StripOffsets_Num-1 do
      begin
        ms.Clear;
        TIFFEnv.Stream.Seek(TIFFEnv.StreamBase + TIFFVars.JPEGInterchangeFormat, soFromBeginning);
        if TIFFVars.JPEGInterchangeFormatLength>0 then
          ms.CopyFrom(TIFFEnv.Stream, TIFFVars.JPEGInterchangeFormatLength);
        if i>0 then
        begin
          TIFFEnv.Stream.Seek(TIFFEnv.StreamBase + TIFFVars.StripOffsets^[0] , soFromBeginning);
          TIFFEnv.Stream.Seek(2,soFromCurrent);
          TIFFEnv.Stream.Read(w,2); w:=IESwapWord(w);
          TIFFEnv.Stream.Seek(-4,soFromCurrent);
          ms.CopyFrom(TIFFEnv.Stream,w+2);
        end;
        TIFFEnv.Stream.Seek(TIFFEnv.StreamBase + TIFFVars.StripOffsets^[i] , soFromBeginning);
        l:=imin( TIFFVars.StripByteCounts[i] , TIFFEnv.Stream.Size-TIFFEnv.Stream.Position );
        ms.CopyFrom(TIFFEnv.Stream, l);
        ms.position := 0;
        if TIFFVars.StripOffsets_Num>1 then
        begin
          nullpr.fOnProgress := nil;
          nullpr.Aborting := Progress.Aborting;
        end
        else
          nullpr:=Progress;
        tlr:=ReadJpegStream(ms, nil, tmpBMP, ioparams, nullpr, false, false, false, false, true,false,TIFFVars.RowsPerStrip,ioparams.IsNativePixelFormat);
        if (tlr>(TIFFVars.RowsPerStrip div 2)) and Progress.Aborting^ then
          Progress.Aborting^:=false;  // >50% read, acceptable (2.3.1 -  ref: tif\8907_1_0_Problem_greyscaleJPEG_image.tif)
        tmpBMP.CopyRectTo(Bitmap,0,0,0,i*TIFFVars.RowsPerStrip,TIFFVars.ImageWidth,TIFFVars.RowsPerStrip);
        with Progress do
          if assigned(fOnProgress) then
            fOnProgress(Sender, trunc( i/TIFFVars.StripOffsets_Num*100 ));
      end;
      tmpBMP.free;

  end
  else
  begin

    if (TIFFVars.JPEGInterchangeFormat=0) and (TIFFVars.StripOffsets<>nil) then
      // sometimes jpeg 6 is included in a strip instead of JPEGInterchangeFormat tag
      TIFFEnv.Stream.Seek(TIFFEnv.StreamBase + TIFFVars.StripOffsets^[0] , soFromBeginning)
    else
      TIFFEnv.Stream.Seek(TIFFEnv.StreamBase + TIFFVars.JPEGInterchangeFormat, soFromBeginning);
    l:=IEGetJpegLength(TIFFEnv.Stream); // sometimes JPEGInterchangeFormatLength is invalid and not cover the entire jpeg, then IEGetJpegLength is needed
    if TIFFEnv.Stream.Position+l <= TIFFEnv.Stream.Size then
    begin
      ms.CopyFrom(TIFFEnv.Stream, l);
      ms.position := 0;
      ReadJpegStream(ms, nil, Bitmap, ioparams, Progress, false, false, false, false, true, true,-1,ioparams.IsNativePixelFormat);
    end;

  end;

  FreeAndNil(ms);
  FreeAndNil(ioparams);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure LoadIPTC(var TIFFEnv: TTIFFEnv; var TIFFVars: TTIFFVars; Params: TIOParamsVals);
const
  mul: array[1..9] of integer = (1, 1, 2, 4, 8, 1, 1, 2, 4);
var
  ms: TMemoryStream;
  t: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('LoadIPTC'); {$endif}
  t := TIFFFindTAG(33723, TIFFEnv);
  if t < 0 then
    // not found
    Params.IPTC_Info.Clear
  else
  begin
    ms := TMemoryStream.Create;
    TIFFEnv.Stream.Seek(TIFFEnv.StreamBase + TIFFEnv.IFD^[t].DataPos, soFromBeginning);
    ms.CopyFrom(TIFFEnv.Stream, TIFFEnv.IFD^[t].DataNum * mul[TIFFEnv.IFD^[t].DataType]);
    ms.position := 0;
    Params.IPTC_Info.LoadFromStandardBuffer(ms.memory, ms.size);
    FreeAndNil(ms);
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure LoadXMP(var TIFFEnv: TTIFFEnv; var TIFFVars: TTIFFVars; Params: TIOParamsVals);
var
  t: integer;
  info:string;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('LoadXMP'); {$endif}
  Params.XMP_Info:='';
  t := TIFFFindTAG(700, TIFFEnv);
  if (t>-1) and ((TIFFEnv.IFD^[t].DataType=1) or (TIFFEnv.IFD^[t].DataType=7)) then
  begin
    TIFFEnv.Stream.Seek(TIFFEnv.StreamBase + TIFFEnv.IFD^[t].DataPos, soFromBeginning);
    SetLength(info,TIFFEnv.IFD^[t].DataNum);
    TIFFEnv.Stream.Read(info[1],TIFFEnv.IFD^[t].DataNum);
    Params.XMP_Info:=info;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;


// input
//		imageindex: image to read (0=first image)
//		Offset: the offset of the image IFD (TIFFHeader.PosIFD)
// 	TIFFEnv.Intel must be valid
// 	TIFFEnv.Stream must be valid
// 	TIFFEnv.StreamBase must be valid
// output
//		numi: images count
//		TIFFEnv.NumTags
//		TIFFEnv.IFD (you must free this)
// return
//		true if the image exists, false otherwise

function TIFFReadIFD(imageindex: integer; Offset: integer; var TIFFEnv: TTIFFEnv; var numi: integer): boolean;
var
  PosIFD, q: integer;
  nt: word;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIFFReadIFD'); {$endif}
  // read TAGS for image idx
  result := false;
  TIFFEnv.IFD := nil;
  numi := 0;
  PosIFD := Offset;
  repeat
    TIFFEnv.Stream.Seek(TIFFEnv.StreamBase + PosIFD, soFromBeginning);
    TIFFEnv.Stream.read(nt, 2); // read tag count
    if not TIFFEnv.Intel then
      nt := IESwapWord(nt);
    if nt=0 then  // added in 2.2.2 (b) to avoid infinite loop in tif\323678437.tif
      break;
    if numi = ImageIndex then
    begin
      TIFFEnv.NumTags := nt;
      getmem(TIFFEnv.IFD, TIFFEnv.NumTags * sizeof(TTIFFTAG));
      TIFFEnv.Stream.read(pbyte(TIFFEnv.IFD)^, sizeof(TTIFFTAG) * TIFFEnv.NumTags); // read tags
    end
    else
      TIFFEnv.Stream.seek(sizeof(TTIFFTAG) * nt, soFromCurrent);
    if TIFFEnv.stream.position >= TIFFEnv.stream.size then
      break;
    TIFFEnv.Stream.read(q, 4); // next IFD
    if not TIFFEnv.Intel then
      q := IESwapDWord(q);
    if q <> PosIFD then // some TIFFs loop the IFD on itself
      PosIFD := q
    else
      PosIFD := 0;
    if (PosIFD < 0) or (PosIFD < TIFFEnv.StreamBase+sizeof(TTIFFHeader)) or (PosIFD >= TIFFEnv.Stream.Size) then
      PosIFD := 0; // invalid IFD
    inc(numi);
  until PosIFD = 0;
  if not assigned(TIFFEnv.IFD) then
    exit; // image doesn't exists
  // Convert TAGS to Intel (if needed)
  if not TIFFEnv.Intel then
    for q := 0 to TIFFEnv.NumTags - 1 do
    begin
      TIFFEnv.IFD^[q].IdTag := IESwapWord(TIFFEnv.IFD^[q].IdTag);
      TIFFEnv.IFD^[q].DataType := IESwapWord(TIFFEnv.IFD^[q].DataType);
      TIFFEnv.IFD^[q].DataNum := IESwapDWord(TIFFEnv.IFD^[q].DataNum);
      TIFFEnv.IFD^[q].DataPos := IESwapDWord(TIFFEnv.IFD^[q].DataPos);
    end;
  result := true;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// read a TIFF stream
// Bitmap: bitmap da scrivere, gi� creata
// numi: images count (output)
// NOTE:
//    - can return a bitmap with pixelformat to pf24bit or pf1bit

procedure TIFFReadStream(Bitmap: TIEBitmap; Stream: TStream; var numi: integer; IOParams: TIOParamsVals; var Progress: TProgressRec; Preview: boolean; var AlphaChannel: TIEMask; TranslateBase: boolean; IgnoreAlpha: boolean; IsExifThumb: boolean);
var
  TIFFHeader: TTIFFHeader;
  PosIFD: integer;
  TIFFEnv: TTIFFEnv;
  SubTIFFEnv: TTIFFEnv;
  GPSTIFFEnv: TTIFFEnv;
  TIFFVars: TTIFFVars;
  q: integer;
  dd: double;
  laccess: TIEDataAccess;
  //tmps:string;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIFFReadStream'); {$endif}
  fillmemory(@TIFFEnv, sizeof(TTIFFEnv), 0);
  fillmemory(@TIFFVars, sizeof(TTIFFVars), 0);
  fillmemory(@SubTIFFEnv, sizeof(TTIFFEnv), 0);
  fillmemory(@GPSTIFFEnv, sizeof(TTIFFEnv), 0);
  numi := 0;
  try
    TIFFVars.RefParams := IOParams;
    // read header
    TIFFEnv.Stream := Stream;
    if TranslateBase then
      TIFFEnv.StreamBase := Stream.Position
    else
      TIFFEnv.StreamBase := 0;
    Stream.read(TIFFHeader, sizeof(TTIFFHeader));
    if (TIFFHeader.Id <> $4949) and (TIFFHeader.id <> $4D4D) then
    begin
      Progress.Aborting^ := True;
      exit;
    end;
    TIFFEnv.Intel := TIFFHeader.Id = $4949;
    TIFFVars.intel := TIFFEnv.Intel;
    if not TIFFEnv.Intel then
      TIFFHeader.PosIFD := IESwapDWord(TIFFHeader.PosIFD); // converts Intel header
    // read main IFD (of the selected image)
    TIFFEnv.IFD := nil;
    PosIFD := TIFFHeader.PosIFD;
    if PosIFD = 0 then
      exit;
    if assigned(IOParams) then
      q := IOParams.TIFF_ImageIndex
    else
      q := -1;
    if not TIFFReadIFD(q, TIFFHeader.PosIFD, TIFFEnv, numi) then
      exit;

    if IOParams.TIFF_SubIndex>-1 then
    begin
      PosIFD:=TIFFReadIndexValN(TIFFEnv, 330, IOParams.TIFF_SubIndex);
      if PosIFD>0 then
      begin
        freemem(TIFFEnv.IFD);
        TIFFReadIFD(0, PosIFD, TIFFEnv, q);
      end;
    end;

    // Get Sub IFD (for EXIF)
    PosIFD := TIFFReadSingleValDef(TIFFEnv, 34665, 0);
    if PosIFD > 0 then
    begin
      SubTIFFEnv.Intel := TIFFEnv.Intel;
      SubTIFFEnv.Stream := TIFFEnv.Stream;
      SubTIFFEnv.StreamBase := 0;
      TIFFReadIFD(0, PosIFD, SubTIFFEnv, q);
      IOParams.EXIF_HasEXIFData := true;
    end;

    // Get GPS-EXIF data
    PosIFD := TIFFReadSingleValDef(TIFFEnv, 34853, 0);
    if PosIFD > 0 then
    begin
      GPSTIFFEnv.Intel := TIFFEnv.Intel;
      GPSTIFFEnv.Stream := TIFFEnv.Stream;
      GPSTIFFEnv.StreamBase := 0;
      TIFFReadIFD(0, PosIFD, GPSTIFFEnv, q);
    end;

    // Decode TAGS
    TIFFVars.ImageWidth := TIFFReadSingleValDef(TIFFEnv, 256, 0);
    TIFFVars.ImageHeight := TIFFReadSingleValDef(TIFFEnv, 257, 0);
    TIFFVars.SamplesPerPixel := TIFFReadSingleValDef(TIFFEnv, 277, 1);
    if not ReadBitsPerSample(TIFFEnv, TIFFVars) then
    begin
      Progress.Aborting^ := True;
      exit;
    end;
    TIFFVars.RowsPerStrip := TIFFReadSingleValDef(TIFFEnv, 278, TIFFVars.ImageHeight);
    if TIFFVars.RowsPerStrip = -1 then
      TIFFVars.RowsPerStrip := TIFFVars.ImageHeight;
    TIFFVars.TileWidth := TIFFReadSingleValDef(TIFFEnv, 322, -1);
    TIFFVars.TileLength := TIFFReadSingleValDef(TIFFEnv, 323, -1);
    TIFFVars.PhotometricInterpretation := TIFFReadSingleValDef(TIFFEnv, 262, 2);
    TIFFVars.PlanarConfiguration := TIFFReadSingleValDef(TIFFEnv, 284, 1);
    TIFFVars.Orientation := TIFFReadSingleValDef(TIFFEnv, 274, 1);
    TIFFVars.Compression := TIFFReadSingleValDef(TIFFEnv, 259, 1);
    TIFFVars.Predictor := TIFFReadSingleValDef(TIFFEnv, 317, 1);
    TIFFVars.ResolutionUnit := TIFFReadSingleValDef(TIFFEnv, 296, 2);
    TIFFVars.XResolution := TIFFReadSingleRational(TIFFEnv, 282);
    TIFFVars.YResolution := TIFFReadSingleRational(TIFFEnv, 283);
    TIFFVars.T4Options := TIFFReadSingleValDef(TIFFEnv, 292, 0);
    TIFFVars.T6Options := TIFFReadsingleValDef(TIFFEnv, 293, 0);
    TIFFVars.FillOrder := TIFFReadSingleValDef(TIFFEnv, 266, 1);
    TIFFVars.XPosition := TIFFReadSingleRational(TIFFEnv, 286);
    TIFFVars.YPosition := TIFFReadSingleRational(TIFFEnv, 287);
    TIFFVars.DocumentName := TIFFReadString(TIFFEnv, 269);
    TIFFVars.ImageDescription := TIFFReadString(TIFFEnv, 270);
    TIFFVars.PageName := TIFFReadString(TIFFEnv, 285);
    TIFFVars.PageNumber := TIFFReadIndexValN(TIFFEnv, 297, 0);
    TIFFVars.PageCount := TIFFReadIndexValN(TIFFEnv, 297, 1);
    TIFFVars.Software := TIFFReadString(TIFFEnv, 305);
    TIFFVars.Artist := TIFFReadString(TIFFEnv, 315);
    TIFFVars.InkSet := TIFFReadSingleValDef(TIFFEnv, 332, 1);
    TIFFVars.NumberOfInks := TIFFReadSingleValDef(TIFFEnv, 334, 4);
    TIFFVars.JPEGProc := TIFFReadSingleValDef(TIFFEnv, 512, 0);
    TIFFVars.JPEGInterchangeFormat := TIFFReadSingleValDef(TIFFEnv, 513, 0);
    TIFFVars.JPEGInterchangeFormatLength := TIFFReadSingleValDef(TIFFEnv, 514, 0);
    TIFFVars.JPEGRestartInterval := TIFFReadSingleValDef(TIFFEnv, 515, 0);
    for q := 0 to TIFFVars.SamplesPerPixel - 1 do
    begin
      TIFFVars.JPEGLosslessPredictors[q] := TIFFReadIndexValN(TIFFEnv, 517, q);
      TIFFVars.JPEGPointTransforms[q] := TIFFReadIndexValN(TIFFEnv, 518, q);
      TIFFVars.JPEGQTables[q] := TIFFReadIndexValN(TIFFEnv, 519, q);
      TIFFVars.JPEGDCTables[q] := TIFFReadIndexValN(TIFFEnv, 520, q);
      TIFFVars.JPEGACTables[q] := TIFFReadIndexValN(TIFFEnv, 521, q);
    end;
    TIFFVars.ExtraSamples := TIFFReadSingleValDef(TIFFEnv, 338, 0);
    TIFFVars.YCbCrSubSampling[0] := TIFFReadIndexValN(TIFFEnv, 530, 0); if TIFFVars.YCbCrSubSampling[0]=0 then TIFFVars.YCbCrSubSampling[0]:=2;
    TIFFVars.YCbCrSubSampling[1] := TIFFReadIndexValN(TIFFEnv, 530, 1); if TIFFVars.YCbCrSubSampling[1]=0 then TIFFVars.YCbCrSubSampling[1]:=2;
    // We assume that SamplesPerPixel=4
    for q := 0 to 7 do
      TIFFVars.DotRange[q] := TIFFReadIndexValN(TIFFEnv, 336, q);
    //
    TIFFVars.StripOffsets_Num := TIFFReadArrayIntegers(TIFFEnv, TIFFVars.StripOffsets, 273);
    TIFFVars.StripByteCounts_Num := TIFFReadArrayIntegers(TIFFEnv, TIFFVars.StripByteCounts, 279);
    TIFFVars.TileOffsets_Num := TIFFReadArrayIntegers(TIFFEnv, TIFFVars.TileOffsets, 324);
    TIFFVars.TileByteCounts_Num := TIFFReadArrayIntegers(TIFFEnv, TIFFVars.TileByteCounts, 325);
    // fix wrong files of ACDSee 3.1
    if (TIFFVars.SamplesPerPixel = 1) and (TIFFVars.BitsPerSample = 1) and
      (TIFFVars.Compression > 0) and (TIFFVars.Compression < 5) and (TIFFVars.PhotometricInterpretation = 2) then
      TIFFVars.PhotometricInterpretation := 0;

    TIFFVars.JPEGTables := TIFFReadRawData(TIFFEnv, 347, TIFFVars.JPEGTablesSize); // for Compression=7

    ReadColorMap(TIFFEnv, TIFFVars);
    ReadTransferFunction(TIFFEnv, TIFFVars);
    // IPTC
    LoadIPTC(TIFFEnv, TIFFVars, IOParams);
    // XMP
    LoadXMP(TIFFEnv, TIFFVars, IOParams);
    // Wang annotations
    LoadWang(TIFFEnv, IOParams);
    // ICC profile
    LoadICC(TIFFEnv, IOParams);

    // set TIOParamsVals parameters
    with IOParams do
    begin
      BitsPerSample := TIFFVars.BitsPerSample;
      SamplesPerPixel := TIFFVars.SamplesPerPixel;
      Width := TIFFVars.ImageWidth;
      Height := TIFFVars.ImageHeight;
      if TIFFVars.intel then
        TIFF_ByteOrder := ioLittleEndian
      else
        TIFF_ByteOrder := ioBigEndian;
      TIFF_ImageCount := numi;
      TIFF_Orientation := TIFFVars.Orientation;
      case TIFFVars.Compression of
        1: TIFF_Compression := ioTIFF_UNCOMPRESSED;
        2: TIFF_Compression := ioTIFF_CCITT1D;
        3: if TIFFVars.T4Options and 1 = 0 then
            TIFF_Compression := ioTIFF_G3FAX1D
          else
            TIFF_Compression := ioTIFF_G3FAX2D;
        4: TIFF_Compression := ioTIFF_G4FAX;
        5: TIFF_Compression := ioTIFF_LZW;
        6: TIFF_Compression := ioTIFF_OLDJPEG;
        7: TIFF_Compression := ioTIFF_JPEG;
        32773: TIFF_Compression := ioTIFF_PACKBITS;
        32946: TIFF_Compression := ioTIFF_ZIP;
        8: TIFF_Compression := ioTIFF_DEFLATE;
      else
        TIFF_Compression := ioTIFF_UNKNOWN;
      end;
      case TIFFVars.PhotometricInterpretation of
        0: TIFF_PhotometInterpret := ioTIFF_WHITEISZERO;
        1: TIFF_PhotometInterpret := ioTIFF_BLACKISZERO;
        2: TIFF_PhotometInterpret := ioTIFF_RGB;
        3: TIFF_PhotometInterpret := ioTIFF_RGBPALETTE;
        4: TIFF_PhotometInterpret := ioTIFF_TRANSPMASK;
        5: TIFF_PhotometInterpret := ioTIFF_CMYK;
        6: TIFF_PhotometInterpret := ioTIFF_YCBCR;
        8: TIFF_PhotometInterpret := ioTIFF_CIELAB;
      end;
      TIFF_PlanarConf := TIFFVars.PlanarConfiguration;
      TIFF_DocumentName := TIFFVars.DocumentName;
      TIFF_ImageDescription := TIFFVars.ImageDescription;
      TIFF_PageName := TIFFVars.PageName;
      TIFF_PageNumber := TIFFVars.PageNumber;
      TIFF_PageCount := TIFFVars.PageCount;
      TIFF_FillOrder := TIFFVars.FillOrder;
      // EXIF (not in sub IDF)
      EXIF_Make := TIFFReadString(TIFFEnv, 271);
      EXIF_Model := TIFFReadString(TIFFEnv, 272);
      EXIF_DateTime := TIFFReadString(TIFFEnv, 306);
      EXIF_Orientation := TIFFVars.Orientation;
      EXIF_XResolution := TIFFVars.XResolution;
      EXIF_YResolution := TIFFVars.YResolution;
      EXIF_ResolutionUnit := TIFFVars.ResolutionUnit;
      EXIF_Software := TIFFVars.Software;
      EXIF_XPTitle:=TIFFReadWideString(TIFFEnv, $9C9B);
      EXIF_XPComment:=TIFFReadWideString(TIFFEnv, $9C9C);
      EXIF_XPAuthor:=TIFFReadWideString(TIFFEnv, $9C9D);
      EXIF_XPKeywords:=TIFFReadWideString(TIFFEnv, $9C9E);
      EXIF_XPSubject:=TIFFReadWideString(TIFFEnv, $9C9F);
      EXIF_Artist := TIFFVars.Artist;
      EXIF_WhitePoint[0] := TIFFReadRationalIndex(TIFFEnv, 318, 0);
      EXIF_WhitePoint[1] := TIFFReadRationalIndex(TIFFEnv, 318, 1);
      EXIF_YCbCrPositioning := TIFFReadSingleValDef(TIFFEnv, 531, 0);
      for q := 0 to 5 do
        EXIF_PrimaryChromaticities[q] := TIFFReadRationalIndex(TIFFEnv, 319, q);
      for q := 0 to 2 do
        EXIF_YCbCrCoefficients[q] := TIFFReadRationalIndex(TIFFEnv, 529, q);
      for q := 0 to 5 do
        EXIF_ReferenceBlackWhite[q] := TIFFReadRationalIndex(TIFFEnv, 532, q);
      EXIF_Copyright := TIFFReadString(TIFFEnv, 33432);
      // EXIF (in sub IFD)
      EXIF_ExposureTime := TIFFReadSingleRational(SubTIFFEnv, $829A);
      EXIF_FNumber := TIFFReadSingleRational(SubTIFFEnv, $829D);
      EXIF_ExposureProgram := TIFFReadSingleValDef(SubTIFFEnv, $8822, 0);
      EXIF_ISOSpeedRatings[0] := TIFFReadIndexValN(SubTIFFEnv, $8827, 0);
      EXIF_ISOSpeedRatings[1] := TIFFReadIndexValN(SubTIFFEnv, $8827, 1);
      EXIF_ExifVersion := TIFFReadMiniString(SubTIFFEnv, $9000);
      EXIF_DateTimeOriginal := TIFFReadString(SubTIFFEnv, $9003);
      EXIF_DateTimeDigitized := TIFFReadString(SubTIFFEnv, $9004);
      EXIF_CompressedBitsPerPixel := TIFFReadSingleRational(SubTIFFEnv, $9102);
      EXIF_ShutterSpeedValue := TIFFReadSingleRational(SubTIFFEnv, $9201);
      EXIF_ApertureValue := TIFFReadSingleRational(SubTIFFEnv, $9202);
      EXIF_BrightnessValue := TIFFReadSingleRational(SubTIFFEnv, $9203);
      EXIF_ExposureBiasValue := TIFFReadSingleRational(SubTIFFEnv, $9204);
      EXIF_MaxApertureValue := TIFFReadSingleRational(SubTIFFEnv, $9205);
      EXIF_SubjectDistance := TIFFReadSingleRational(SubTIFFEnv, $9206);
      EXIF_MeteringMode := TIFFReadSingleValDef(SubTIFFEnv, $9207, 0);
      EXIF_LightSource := TIFFReadSingleValDef(SubTIFFEnv, $9208, 0);
      EXIF_Flash := TIFFReadSingleValDef(SubTIFFEnv, $9209, 0);
      EXIF_FocalLength := TIFFReadSingleRational(SubTIFFEnv, $920A);
      EXIF_SubsecTime := TIFFReadString(SubTIFFEnv, $9290);
      EXIF_SubsecTimeOriginal := TIFFReadString(SubTIFFEnv, $9291);
      EXIF_SubsecTimeDigitized := TIFFReadString(SubTIFFEnv, $9292);
      EXIF_FlashPixVersion := TIFFReadMiniString(SubTIFFEnv, $A000);
      EXIF_ColorSpace := TIFFReadSingleValDef(SubTIFFEnv, $A001, 0);
      EXIF_ExifImageWidth := TIFFReadSingleValDef(SubTIFFEnv, $A002, 0);
      EXIF_ExifImageHeight := TIFFReadSingleValDef(SubTIFFEnv, $A003, 0);
      EXIF_RelatedSoundFile := TIFFReadString(SubTIFFEnv, $A004);
      EXIF_FocalPlaneXResolution := TIFFReadSingleRational(SubTIFFEnv, $A20E);
      EXIF_FocalPlaneYResolution := TIFFReadSingleRational(SubTIFFEnv, $A20F);
      EXIF_FocalPlaneResolutionUnit := TIFFReadSingleValDef(SubTIFFEnv, $A210, 0);
      EXIF_ExposureIndex := TIFFReadSingleRational(SubTIFFEnv, $A215);
      EXIF_SensingMethod := TIFFReadSingleValDef(SubTIFFEnv, $A217, 0);
      EXIF_FileSource := TIFFReadSingleValDef(SubTIFFEnv, $A300, 0);
      EXIF_SceneType := TIFFReadSingleValDef(SubTIFFEnv, $A301, 0);
      EXIF_UserCommentCode := TIFFReadString(SubTIFFEnv, $9286);
      EXIF_ExposureMode:=TIFFReadSingleValDef(SubTIFFEnv, $A402, 0);
      EXIF_WhiteBalance:=TIFFReadSingleValDef(SubTIFFEnv, $A403, 0);
      EXIF_DigitalZoomRatio:=TIFFReadSingleRational(SubTIFFEnv, $A404);
      EXIF_FocalLengthIn35mmFilm:=TIFFReadSingleValDef(SubTIFFEnv, $A405, 0);
      EXIF_SceneCaptureType:=TIFFReadSingleValDef(SubTIFFEnv, $A406, 0);
      EXIF_GainControl:=TIFFReadSingleValDef(SubTIFFEnv, $A407, 0);
      EXIF_Contrast:=TIFFReadSingleValDef(SubTIFFEnv, $A408, 0);
      EXIF_Saturation:=TIFFReadSingleValDef(SubTIFFEnv, $A409, 0);
      EXIF_Sharpness:=TIFFReadSingleValDef(SubTIFFEnv, $A40A, 0);
      EXIF_SubjectDistanceRange:=TIFFReadSingleValDef(SubTIFFEnv, $A40C, 0);
      EXIF_ImageUniqueID:=TIFFReadString(SubTIFFEnv, $A420);

      if length(EXIF_UserCommentCode) > 0 then
      begin
        EXIF_UserComment := copy(EXIF_UserCommentCode, 9, length(EXIF_UserCommentCode));
        EXIF_UserCommentCode := copy(EXIF_UserCommentCode, 1, 8);
      end
      else
        EXIF_UserComment := '';
      TIFFReadIFDToTagsHandler(SubTIFFEnv, $927C, EXIF_MakerNote);

      // GPS-EXIF
      EXIF_GPSVersionID:=convVersionIDtoStr(TIFFReadMiniString(GPSTIFFEnv,$0));
      EXIF_GPSLatitudeRef:=TIFFReadMiniString(GPSTIFFEnv,$1);
      EXIF_GPSLatitudeDegrees:=TIFFReadRationalIndex(GPSTIFFEnv,$2,0);
      EXIF_GPSLatitudeMinutes:=TIFFReadRationalIndex(GPSTIFFEnv,$2,1);
      EXIF_GPSLatitudeSeconds:=TIFFReadRationalIndex(GPSTIFFEnv,$2,2);
      EXIF_GPSLongitudeRef:=TIFFReadMiniString(GPSTIFFEnv,$3);
      EXIF_GPSLongitudeDegrees:=TIFFReadRationalIndex(GPSTIFFEnv,$4,0);
      EXIF_GPSLongitudeMinutes:=TIFFReadRationalIndex(GPSTIFFEnv,$4,1);
      EXIF_GPSLongitudeSeconds:=TIFFReadRationalIndex(GPSTIFFEnv,$4,2);
      EXIF_GPSAltitudeRef:=IntToStr(TIFFReadSingleValDef(GPSTIFFEnv,$5,0)); // 2.3.0
      EXIF_GPSAltitude:=TIFFReadSingleRational(GPSTIFFEnv, $6);
      EXIF_GPSTimeStampHour:=TIFFReadRationalIndex(GPSTIFFEnv,$7,0);
      EXIF_GPSTimeStampMinute:=TIFFReadRationalIndex(GPSTIFFEnv,$7,1);
      EXIF_GPSTimeStampSecond:=TIFFReadRationalIndex(GPSTIFFEnv,$7,2);
      EXIF_GPSSatellites:=TIFFReadString(GPSTIFFEnv,$8);
      EXIF_GPSStatus:=TIFFReadMiniString(GPSTIFFEnv,$9);
      EXIF_GPSMeasureMode:=TIFFReadMiniString(GPSTIFFEnv,$A);
      EXIF_GPSDOP:=TIFFReadSingleRational(GPSTIFFEnv, $B);
      EXIF_GPSSpeedRef:=TIFFReadMiniString(GPSTIFFEnv,$C);
      EXIF_GPSSpeed:=TIFFReadSingleRational(GPSTIFFEnv, $D);
      EXIF_GPSTrackRef:=TIFFReadMiniString(GPSTIFFEnv,$E);
      EXIF_GPSTrack:=TIFFReadSingleRational(GPSTIFFEnv, $F);
      EXIF_GPSImgDirectionRef:=TIFFReadMiniString(GPSTIFFEnv,$10);
      EXIF_GPSImgDirection:=TIFFReadSingleRational(GPSTIFFEnv, $11);
      EXIF_GPSMapDatum:=TIFFReadString(GPSTIFFEnv,$12);
      EXIF_GPSDestLatitudeRef:=TIFFReadMiniString(GPSTIFFEnv,$13);
      EXIF_GPSDestLatitudeDegrees:=TIFFReadRationalIndex(GPSTIFFEnv,$14,0);
      EXIF_GPSDestLatitudeMinutes:=TIFFReadRationalIndex(GPSTIFFEnv,$14,1);
      EXIF_GPSDestLatitudeSeconds:=TIFFReadRationalIndex(GPSTIFFEnv,$14,2);
      EXIF_GPSDestLongitudeRef:=TIFFReadMiniString(GPSTIFFEnv,$15);
      EXIF_GPSDestLongitudeDegrees:=TIFFReadRationalIndex(GPSTIFFEnv,$16,0);
      EXIF_GPSDestLongitudeMinutes:=TIFFReadRationalIndex(GPSTIFFEnv,$16,1);
      EXIF_GPSDestLongitudeSeconds:=TIFFReadRationalIndex(GPSTIFFEnv,$16,2);
      EXIF_GPSDestBearingRef:=TIFFReadMiniString(GPSTIFFEnv,$17);
      EXIF_GPSDestBearing:=TIFFReadSingleRational(GPSTIFFEnv, $18);
      EXIF_GPSDestDistanceRef:=TIFFReadMiniString(GPSTIFFEnv,$19);
      EXIF_GPSDestDistance:=TIFFReadSingleRational(GPSTIFFEnv, $1A);
      EXIF_GPSDateStamp:=TIFFReadString(GPSTIFFEnv,$1D);

      // Colormap
      if ColorMap <> nil then
      begin
        freemem(ColorMap);
        fColorMap := nil;
        fColorMapCount := 0;
      end;
      if TIFFVars.ColorMap_Num > 0 then
      begin
        fColorMapCount := TIFFVars.ColorMap_Num;
        getmem(fColorMap, TIFFVars.ColorMap_Num * sizeof(TRGB));
        CopyMemory(ColorMap, TIFFVars.ColorMap, TIFFVars.ColorMap_Num * sizeof(TRGB));
      end;
      // resolution unit and dpi
      if TIFFVars.ResolutionUnit = 3 then
        dd := 2.54
      else
        dd := 1;
      DpiX := round(TIFFVars.XResolution * dd); // 2.2.4rc2
      DpiY := round(TIFFVars.YResolution * dd); // 2.2.4rc2
      if DpiX = 0 then
        DpiX := gDefaultDPIX;
      if DpiY = 0 then
        DpiY := gDefaultDPIY;
      EXIF_XResolution :=TIFFVars.XResolution * dd; // 2.2.5 (re-set because DpiX=V assigns also EXIF_?Resolution)
      EXIF_YResolution :=TIFFVars.YResolution * dd; // 2.2.5 (re-set because DpiX=V assigns also EXIF_?Resolution)
      TIFF_XPos := trunc(TIFFVars.XPosition * dd);
      TIFF_YPos := trunc(TIFFVars.YPosition * dd);
      if ((Width = 0) or (Height = 0)) and (not IsExifThumb) then
      begin
        Progress.Aborting^ := True;
        exit;
      end;
    end;

    if TIFFVars.Compression = 5 then
    begin
      // verify that exists a LZW function for decompression
      if assigned(IOParams.TIFF_LZWDecompFunc) then
        TIFFVars.LZWDecompFunc := IOParams.TIFF_LZWDecompFunc
      else if assigned(DefTIFF_LZWDECOMPFUNC) then
        TIFFVars.LZWDecompFunc := DefTIFF_LZWDECOMPFUNC
      else
      begin
        Progress.Aborting^ := True;
        exit;
      end;
    end;
    TIFFVars.IgnoreAlpha := IgnoreAlpha;
    if not Preview then
    begin
      // Load the image
      if not IgnoreAlpha then
      begin
        if (((TIFFVars.SamplesPerPixel = 4) and (TIFFVars.ExtraSamples = 2)) or
          ((TIFFVars.SamplesPerPixel = 2) and (TIFFVars.BitsPerSample = 8)) or
          ((TIFFVars.SamplesPerPixel = 4) and (TIFFVars.PhotometricInterpretation = 2)))
          and (not assigned(AlphaChannel)) then
          // alpha required
          AlphaChannel := TIEMask.Create;
        if assigned(AlphaChannel) then
        begin
          AlphaChannel.AllocateBits(TIFFVars.ImageWidth, TIFFVars.ImageHeight, 8);
          AlphaChannel.Fill(255);
        end;
      end;
      TIFFVars.AlphaChannel := AlphaChannel;
      laccess := Bitmap.Access;
      Bitmap.Access := [iedWrite]; // write only

      if ((TIFFVars.ImageWidth>400) or (TIFFVars.ImageHeight>400)) and IsExifThumb then
      begin
        Progress.Aborting^ := True;
        exit;
      end;

      if ((TIFFVars.Compression = 6) or ((TIFFVars.JPEGInterchangeFormat<>0) and (TIFFVars.Compression<>5))) and (TIFFVars.JPEGProc < 2) then  // 3.0.0 (26/09/2007 21:52), 3.0.0 (21/02/2008 23:09)
      begin
        LoadSimpleJpegV6(TIFFEnv, TIFFVars, Bitmap, Progress);
      end
      else
      begin
        if (TIFFVars.ImageWidth = 0) or (TIFFVars.ImageHeight = 0) then
        begin
          Progress.Aborting^ := True;
          exit;
        end;

        // allocate destination bitmap
        if (TIFFVars.BitsPerSample = 1) and (TIFFVars.SamplesPerPixel = 1) and (TIFFVars.PhotometricInterpretation <> 3) then
          // black/white (1 bit gray scale)
          Bitmap.Allocate(TIFFVars.ImageWidth, TIFFVars.ImageHeight, ie1g)
        else if IOParams.IsNativePixelFormat then
        begin
          // native pixel formats
          if (TIFFVars.BitsPerSample = 8) and (TIFFVars.SamplesPerPixel = 1) and (TIFFVars.PhotometricInterpretation = 3) then
          begin
            // 8 bit palette
            Bitmap.Allocate(TIFFVars.ImageWidth, TIFFVars.ImageHeight, ie8p);
            for q := 0 to IOParams.ColorMapCount - 1 do
              Bitmap.Palette[q] := IOParams.ColorMap[q];
          end
          else if (TIFFVars.BitsPerSample = 8) and (TIFFVars.SamplesPerPixel = 1) and (TIFFVars.PhotometricInterpretation <2) then
            // 8 bit gray scale
            Bitmap.Allocate(TIFFVars.ImageWidth, TIFFVars.ImageHeight, ie8g)
          else if (TIFFVars.BitsPerSample = 16) and (TIFFVars.SamplesPerPixel = 1) and (TIFFVars.PhotometricInterpretation <2) then
            // 16 bit gray scale
            Bitmap.Allocate(TIFFVars.ImageWidth, TIFFVars.ImageHeight, ie16g)
          else if (TIFFVars.BitsPerSample=8) and (TIFFVars.SamplesPerPixel>=4) and (TIFFVars.PhotometricInterpretation = 5) then
            // CMYK->x*8
            Bitmap.Allocate(TIFFVars.ImageWidth, TIFFVars.ImageHeight, ieCMYK)
          else if (TIFFVars.BitsPerSample=16) and (TIFFVars.SamplesPerPixel=4) and (TIFFVars.PhotometricInterpretation = 5) then
            // CMYK-4*16
            Bitmap.Allocate(TIFFVars.ImageWidth, TIFFVars.ImageHeight, ieCMYK)
          else if (TIFFVars.BitsPerSample=16) and (TIFFVars.SamplesPerPixel=3) and (TIFFVars.PhotometricInterpretation=2) then
            // 48 bit RGB
            Bitmap.Allocate(TIFFVars.ImageWidth, TIFFVars.ImageHeight, ie48RGB)
          else
            // otherwise 24 bit RGB
            Bitmap.Allocate(TIFFVars.ImageWidth, TIFFVars.ImageHeight, ie24RGB);
        end
        else
          // 24 bit RGB
          Bitmap.Allocate(TIFFVars.ImageWidth, TIFFVars.ImageHeight, ie24RGB);

        if IsExifThumb then
          Bitmap.Fill(0);

        if (TIFFVars.TileWidth > 0) or (TIFFVars.TileLength > 0) then
        begin
          // tiled
          if TIFFVars.TileOffsets_Num > 0 then
            Tiles2Bitmap(TIFFEnv, TIFFVars, Bitmap, Progress)
          else if TIFFVars.StripOffsets_Num > 0 then
          begin
            // old tiff, uses Strips instead of Tiles...
            TIFFVars.TileOffsets_Num := TIFFReadArrayIntegers(TIFFEnv, TIFFVars.TileOffsets, 273);
            TIFFVars.TileByteCounts_Num := TIFFReadArrayIntegers(TIFFEnv, TIFFVars.TileByteCounts, 279);
            Tiles2Bitmap(TIFFEnv, TIFFVars, Bitmap, Progress)
          end;
        end
        else
        begin
          // stripped
          if TIFFVars.StripOffsets_Num > 0 then
            Strips2Bitmap(TIFFEnv, TIFFVars, Bitmap, Progress);
        end;
      end;
      Bitmap.Access := laccess;
      // adjust orientation if <>1
      if IOParams.TIFF_EnableAdjustOrientation then
        IEAdjustEXIFOrientation(Bitmap,TIFFVars.Orientation);
    end;
  finally
    // free CMS transform
    if assigned(IOParams) and assigned(IOParams.fInputICC) and (IOParams.InputICCProfile.IsTransforming) then
      IOParams.InputICCProfile.FreeTransform;
    // free memory allocated in TIFFEnv
    if TIFFEnv.IFD <> nil then
      freemem(TIFFEnv.IFD);
    // free memory allocated in SubTIFFEnv
    if SubTIFFEnv.IFD <> nil then
      freemem(SubTIFFEnv.IFD);
    // free memory allocated in GPSTIFFEnv
    if GPSTIFFEnv.IFD <> nil then
      freemem(GPSTIFFEnv.IFD);
    // free memory allocated in TIFFVars
    with TIFFVars do
    begin
      if StripOffsets_Num > 0 then
        freemem(Stripoffsets);
      if StripByteCounts_Num > 0 then
        freemem(StripByteCounts);
      if TileOffsets_Num > 0 then
        freemem(TileOffsets);
      if TileByteCounts_Num > 0 then
        freemem(TileByteCounts);
      if ColorMap_Num > 0 then
        freemem(ColorMap);
      if TransferFunction_Num > 0 then
        freemem(TransferFunction);
      if JPEGTables <> nil then
        freemem(JPEGTables);
    end;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

//////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////
//**********************************************************************************//
//* WRITE TIFF    																					  *//
//**********************************************************************************//
////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////

type
  TCompRec = record
    LZWCompFunc: TTIFFLZWCompFunc; // LZW compression function
    Compression: integer;
    T4Options: integer;
    FillOrder: integer;
    Photomet: TIOTIFFPhotometInterpret;
    Predictor: integer;
    qt: TIEQuantizer;
    BitsPerSample: integer;
    jpegquality: integer; // jpeg quality
    jpegcolorspace: TIOJPEGColorSpace;
    RefParams: TIOParamsVals;
    hasalpha:boolean;
  end;

// returns new stream position
function WordAlign(Stream:TStream; var Aborting: boolean):integer;
var
  b:byte;
begin
  result := Stream.Position;
  if (result and 1) <> 0 then
  begin
    inc(result); // align to word
    b := 0;
    SafeStreamWrite(Stream, Aborting, b, 1); // write an align byte
  end;
end;

//////////////////////////////////////////////////////////////////////////////////////
// write LONG value

procedure WriteSingleLong(imed: TList; tag: integer; val: integer);
var
  tg: PTIFFTAG;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('WriteSingleLong'); {$endif}
  new(tg);
  tg^.IdTag := tag;
  tg^.DataType := 4;
  tg^.DataNum := 1;
  tg^.DataPos := val;
  imed.add(tg);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure WriteMiniString(imed: TList; tag: integer; ss: string);
var
  tg: PTIFFTAG;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('WriteMiniString'); {$endif}
  new(tg);
  tg^.IdTag := tag;
  tg^.DataType := 2;
  tg^.DataNum := length(ss);
  move(pchar(ss)^, tg^.DataPos, imin(4,length(ss)));
  imed.add(tg);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure WriteMiniByteString(imed: TList; tag: integer; ss: string);
var
  tg: PTIFFTAG;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('WriteMiniString'); {$endif}
  new(tg);
  tg^.IdTag := tag;
  tg^.DataType := 1;
  tg^.DataNum := length(ss);
  move(pchar(ss)^, tg^.DataPos, imin(4,length(ss)));
  imed.add(tg);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;


// write SHORT value
procedure WriteSingleShort(imed: TList; tag: integer; val: word);
var
  tg: PTIFFTAG;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('WriteSingleShort'); {$endif}
  new(tg);
  tg^.IdTag := tag;
  tg^.DataType := 3;
  tg^.DataNum := 1;
  tg^.DataPos := val;
  imed.add(tg);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// write BYTE value
procedure WriteSingleByte(imed: TList; tag: integer; val: byte);
var
  tg: PTIFFTAG;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('WriteSingleShort'); {$endif}
  new(tg);
  tg^.IdTag := tag;
  tg^.DataType := 1;
  tg^.DataNum := 1;
  tg^.DataPos := val;
  imed.add(tg);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// write RATIONAL value
procedure WriteSingleRational(imed: TList; Stream: TStream; tag: integer; num, den: integer; var Aborting: boolean);
var
  tg: PTIFFTAG;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('WriteSingleRational'); {$endif}
  new(tg);
  tg^.IdTag := tag;
  tg^.DataType := 5;
  tg^.DataNum := 1;
  tg^.DataPos := WordAlign(Stream,Aborting);
  imed.add(tg);
  SafeStreamWrite(Stream, Aborting, num, sizeof(integer));
  SafeStreamWrite(Stream, Aborting, den, sizeof(integer));
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// numden=[num,den, num,den...]

procedure WriteMultiRational(imed: TList; Stream: TStream; tag: integer; numden: array of integer; var Aborting: boolean);
var
  tg: PTIFFTAG;
  count, i: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('WriteMultiRational'); {$endif}
  count := (high(numden) + 1) div 2;
  new(tg);
  tg^.IdTag := tag;
  tg^.DataType := 5;
  tg^.DataNum := count;
  tg^.DataPos := WordAlign(Stream,Aborting);
  imed.add(tg);
  for i := 0 to count - 1 do
  begin
    SafeStreamWrite(Stream, Aborting, numden[i * 2], sizeof(integer));
    SafeStreamWrite(Stream, Aborting, numden[i * 2 + 1], sizeof(integer));
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// writes a string (only if <> '')

procedure WriteString(imed: TList; Stream: TStream; tag: integer; ss: string; var Aborting: boolean);
var
  tg: PTIFFTAG;
  l:integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('WriteString'); {$endif}
  l:=length(ss);
  if l=0 then
    exit;
  if l<5 then
    WriteMiniString(imed,tag,ss)
  else
  begin
    new(tg);
    tg^.IdTag := tag;
    tg^.DataType := 2;
    tg^.DataNum := length(ss) + 1;
    tg^.DataPos := WordAlign(Stream,Aborting);
    imed.add(tg);
    SafeStreamWrite(Stream, Aborting, pchar(ss)^, length(ss) + 1);
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure WriteWideString(imed: TList; Stream: TStream; tag: integer; ss: WideString; var Aborting: boolean);
var
  tg: PTIFFTAG;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('WriteWideString'); {$endif}
  if length(ss) > 0 then
  begin
    new(tg);
    tg^.IdTag := tag;
    tg^.DataType := 1;
    tg^.DataNum := (length(ss) + 1)*2;
    tg^.DataPos := WordAlign(Stream,Aborting);
    imed.add(tg);
    SafeStreamWrite(Stream, Aborting, pwchar(ss)^, (length(ss) + 1)*2);
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure WriteRAW(imed: TList; Stream:TStream; tag:integer; buffer:pointer; bufferlen:integer; var Aborting:boolean);
var
  tg: PTIFFTAG;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('WriteRAW'); {$endif}
  if (buffer<>nil) and (bufferlen>0) then
  begin
    new(tg);
    tg^.IdTag := tag;
    tg^.DataType := 7;  // undefined
    tg^.DataNum := bufferlen;
    tg^.DataPos := WordAlign(Stream,Aborting);
    imed.add(tg);
    SafeStreamWrite(Stream, Aborting, pbyte(buffer)^, bufferlen);
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TIFFWriteIFDFromTagsHandler(imed:TList; Stream:TStream; tagid:integer; tagsHandler:TIETagsHandler; var Aborting:boolean; maxTagSize:integer);
const
  SZ:array [0..12] of integer=(
      1,  // 0 = unknown (assume one byte)
      1,  // 1 = byte (8 bit)
      1,  // 2 = ascii (8 bit)
      2,  // 3 = short (16 bit)
      4,  // 4 = long (32 bit)
      8,  // 5 = rational (64 bit)
      1,  // 6 = signed byte (8 bit)
      1,  // 7 = undefined (8 bit)
      2,  // 8 = signed short (16 bit)
      4,  // 9 = signed long (32 bit)
      8,  // 10 = signed rational (64 bit)
      4,  // 11 = ieee float (32 bit)
      8   // 12 = ieee double (64 bit)
      );
var
  tagscount:word;
  newtagscount:word;
  i,z:integer;
  tg: PTIFFTAG;
  tag:TTIFFTAG;
  tempStream:TMemoryStream;
  indexPos_read,indexPos_write:integer;
  dataPos_write:integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIFFWriteIFDFromTagsHandler'); {$endif}
  if tagsHandler.Data.Size<12 then exit;

  tempStream:=TMemoryStream.Create;

  tagsHandler.Data.Position:=0;
  tagsHandler.Data.Read(tagscount,2);

  // calculates new tags count
  newtagscount:=0;
  for i:=0 to tagscount-1 do
  begin
    tagsHandler.Data.Read(tag,sizeof(TTIFFTAG));
    if tag.DataNum * SZ[tag.DataType] < maxTagSize then
      inc(newtagscount);
  end;

  // write new tags count
  tempStream.Write(newtagscount,2);

  indexPos_read:=2;
  indexPos_write:=2;
  dataPos_write:=2+newtagscount*sizeof(TTIFFTAG);

  WordAlign(Stream,Aborting);

  for i:=0 to tagscount-1 do
  begin
    tagsHandler.Data.Position:=indexPos_read;
    tagsHandler.Data.Read(tag,sizeof(TTIFFTAG));
    inc(indexPos_read,sizeof(TTIFFTAG));
    z:=tag.DataNum * SZ[tag.DataType];
    if z < maxTagSize then
    begin
      if z>4 then
      begin
        tagsHandler.Data.Position:=tag.DataPos;
        tag.DataPos := dataPos_write + Stream.Position;
        tempStream.Position:=dataPos_write;
        tempStream.CopyFrom(tagsHandler.Data,z);
        inc(dataPos_write,z);
        if (dataPos_write and $1)<>0 then
          inc(dataPos_write);
      end;
      tempStream.Position:=indexPos_write;
      tempStream.Write(tag,sizeof(TTIFFTAG));
      inc(indexPos_write,sizeof(TTIFFTAG));
    end;
  end;

  new(tg);
  tg^.IdTag := tagid;
  tg^.DataType := 7;  // undefined
  tg^.DataNum := tempStream.Size;
  tg^.DataPos := Stream.Position;
  imed.add(tg);

  Stream.CopyFrom(tempStream,0);

  tempStream.free;

  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

//////////////////////////////////////////////////////////////////////////////////////

procedure WriteMultiLongEx(imed: TList; Stream: TStream; tag: integer; arr: pdwordarray; arraylen: integer; var Aborting: boolean);
var
  tg: PTIFFTAG;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('WriteMultiLongEx'); {$endif}
  new(tg);
  tg^.IdTag := tag;
  tg^.DataType := 4;
  tg^.DataNum := arraylen;
  tg^.DataPos := WordAlign(Stream,Aborting);
  imed.add(tg);
  SafeStreamWrite(Stream, Aborting, arr[0], arraylen * sizeof(dword));
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

//////////////////////////////////////////////////////////////////////////////////////

procedure WriteMultiShort(imed: TList; Stream: TStream; tag: integer; const vals: array of word; var Aborting: boolean);
var
  tg: PTIFFTAG;
  l: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('WriteMultiShort'); {$endif}
  new(tg);
  tg^.IdTag := tag;
  tg^.DataType := 3;
  l := high(vals) + 1;
  tg^.DataNum := l;
  if l = 1 then
  begin
    tg^.DataPos := vals[0];
  end
  else if l = 2 then
  begin
    tg^.DataPos := vals[0] or (vals[1] shl 16);
  end
  else
  begin
    tg^.DataPos := WordAlign(Stream,Aborting);
    SafeStreamWrite(Stream, Aborting, vals, l * sizeof(word));
  end;
  imed.add(tg);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure WriteIPTC(imed: TList; Stream: TStream; Params: TIOParamsVals; var Aborting: boolean);
var
  tg: PTIFFTAG;
  buf: pointer;
  buflen: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('WriteIPTC'); {$endif}
  Params.IPTC_Info.SaveToStandardBuffer(buf, buflen, false);
  if buf <> nil then
  begin
    new(tg);
    tg^.IdTag := 33723;
    tg^.DataType := 4;
    tg^.DataNum := buflen div 4;
    if (buflen and 7) <> 0 then
      inc(tg^.DataNum);
    tg^.DataPos := WordAlign(Stream,Aborting);
    imed.add(tg);
    SafeStreamWrite(Stream, Aborting, pbyte(buf)^, buflen);
    freemem(buf);
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure WriteXMP(imed: TList; Stream: TStream; Params: TIOParamsVals; var Aborting: boolean);
var
  tg: PTIFFTAG;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('WriteXMP'); {$endif}
  if Params.XMP_Info<>'' then
  begin
    new(tg);
    tg^.IdTag := 700;
    tg^.DataType := 1;
    tg^.DataNum := length(Params.XMP_Info);
    tg^.DataPos := WordAlign(Stream,Aborting);
    imed.add(tg);
    SafeStreamWrite(Stream, Aborting, Params.XMP_Info[1], length(Params.XMP_Info));
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure WriteICC(imed: TList; Stream: TStream; Params: TIOParamsVals; var Aborting: boolean);
var
  tg: PTIFFTAG;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('WriteICC'); {$endif}
  if assigned(Params.InputICCProfile) and Params.InputICCProfile.IsValid and not Params.InputICCProfile.IsApplied then
  begin
    new(tg);
    tg^.IdTag := 34675;
    tg^.DataType := 7;
    tg^.DataNum := Params.InputICCProfile.RawLength;
    tg^.DataPos := WordAlign(Stream,Aborting);
    imed.add(tg);
    Params.InputICCProfile.SaveToStream(Stream,true);
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;


procedure WriteWang(imed: TList; Stream: TStream; Params: TIOParamsVals; var Aborting: boolean);
var
  tg: PTIFFTAG;
  buf: pointer;
  buflen: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('WriteWang'); {$endif}
  Params.ImagingAnnot.SaveToStandardBuffer(buf, buflen);
  if buf <> nil then
  begin
    new(tg);
    tg^.IdTag := 32932;
    tg^.DataType := 1;
    tg^.DataNum := buflen;
    tg^.DataPos := WordAlign(Stream,Aborting);
    imed.add(tg);
    SafeStreamWrite(Stream, Aborting, pbyte(buf)^, buflen);
    freemem(buf);
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

//////////////////////////////////////////////////////////////////////////////////////
// Writes rowbuf (of sz bytes) in Stream, PackBits compressed

procedure _WritePackBits(rowbuf: pbyte; sz: integer; Stream: TStream; var Aborting: boolean);
var
  pa: pbytearray;
  n, rl: integer;
  si: shortint;
  bp: integer;
  procedure SavB;
  var
    qq: integer;
  begin
    {$ifdef IEPROFILE} try IEProfileBegin('_WritePackBits.SavB'); {$endif}
    // writes absolute bytes from bp to n-1
    qq := n - bp;
    if qq > 0 then
    begin
      // more bytes
      si := qq - 1;
      SafeStreamWrite(Stream, Aborting, si, 1);
      SafeStreamWrite(Stream, Aborting, pbyte(@pa^[bp])^, qq);
    end;
    {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
  end;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('_WritePackBits'); {$endif}
  pa := pbytearray(rowbuf);
  n := 0; // n is the initial position of the first group to compress
  bp := 0;
  while n < sz do
  begin
    // look for equal bytes
    rl := 1;
    while ((n + rl) < sz) and (pa^[n] = pa^[n + rl]) and (rl < 128) do
      inc(rl);
    if rl > 3 then
    begin
      SavB; // write absolute bytes from bp to n-1
      // replicates bytes
      si := -1 * (rl - 1);
      SafeStreamWrite(Stream, Aborting, si, 1);
      SafeStreamWrite(Stream, Aborting, pa^[n], 1);
      inc(n, rl);
      bp := n;
    end
    else if (n - bp) = 128 then
    begin
      SavB;
      bp := n;
    end
    else
      inc(n);
  end;
  SavB; // writes absolute bytes from bp to n-1
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;


// old jpeg compression
procedure WriteOldJpeg(Stream:TStream; WBitmap:TIEBitmap; var imed:TList; var crec:TCompRec; var Progress:TProgressRec);
var
  iop: TIOParamsVals;
  ps1,ps2:integer;
  ms:TMemoryStream;
  pw:pword;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('WriteStripJpeg'); {$endif}
  iop := TIOParamsVals.Create(nil);
  iop.JPEG_Quality := crec.jpegquality;
  iop.JPEG_ColorSpace := crec.jpegcolorspace;
  ms:=TMemoryStream.Create;
  WriteJPegStream(ms, WBitmap, iop, Progress);
  FreeAndNil(iop);

  ps1:=Stream.Position;
  Stream.CopyFrom(ms,0);

  WriteSingleLong(imed,514,ms.Size);  // JPEGInterchangeFormatLength
  WriteSingleLong(imed,513,ps1);      // JPEGInterchangeFormat

  // search for SOS marker
  ps2:=0;
  pw:=ms.Memory;
  while true do
  begin
    if pw^=$DAFF then
      break;
    inc(pbyte(pw));
    inc(ps2);
  end;

  WriteSingleLong(imed, 278, WBitmap.Height); // RowsPerStrip
  WriteSingleLong(imed, 279, ms.Size-ps2); // StripByteCounts
  WriteSingleLong(imed, 273, ps1+ps2); // StripOffsets
  WriteSingleShort(imed, 512, 1); // JPEGProc
  WriteMultiShort(imed,Stream,530,[2,2],Progress.Aborting^);

  ms.free;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// jpeg compression (DRAFT TIFF Technical Note #2)

procedure WriteStripJpeg(Stream: TStream; Bitmap: TIEBitmap; var crec: TCompRec; var Progress: TProgressRec);
var
  iop: TIOParamsVals;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('WriteStripJpeg'); {$endif}
  iop := TIOParamsVals.Create(nil);
  iop.JPEG_Quality := crec.jpegquality;
  iop.JPEG_ColorSpace := crec.jpegcolorspace;
  WriteJPegStream(Stream, Bitmap, iop, Progress);
  FreeAndNil(iop);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure WriteStrip(Stream: TStream; Bitmap: TIEBitmap; var imed: TList; var crec: TCompRec; var Progress: TProgressRec);
const
  MAXSTRIPDIM = 512 * 1024; // 512 K
var
  row, q, ww, dbit, sbit: integer;
  rowbuf, bufb, pb: pbyte;
  bufw: pword;
  inrow, buf1, buf2: PRGB;
  inrow_48, buf1_48, buf2_48: PRGB48;
  inrow_cmyk, buf1_cmyk, buf2_cmyk: PCMYK;
  bwr, bb: byte; // byte to write
  bwrl: integer; // remaining bits in bwr to write
  p_byte, predline: pbyte; // predline allocated by compressing function
  Samples: integer; // Samples per pixel
  lzwid: pointer;
  bitmapwidth1, bitmapheight1: integer;
  StripsPerImage: integer;
  RowsPerStrip: integer;
  striprow: integer; // current row of strip
  stripidx: integer; // current strip
  pos_ar: pdwordarray;
  siz_ar: pdwordarray;
  p_word: pword;
  zstream: TZCompressionStream;

  procedure FinalizeCompressors;
  begin
    {$ifdef IEPROFILE} try IEProfileBegin('WriteStrip.FinalizeCompressors'); {$endif}
    if (crec.Compression = 3) and (crec.T4Options = 0) then
      // finalize G3FAX1D
      CCITTHuffmanPutLineG3(nil, 0, Stream, bwr, bwrl, Progress.Aborting^, crec.FillOrder);
    if (crec.Compression = 3) and (crec.T4Options = 1) then
      // finalize G3FAX2D
      CCITTHuffmanPutLineG32D(nil, 0, Stream, bwr, bwrl, predline, Progress.Aborting^, crec.FillOrder);
    if (crec.Compression = 4) then
      // finalize G4FAX
      CCITTHuffmanPutLineG4(nil, 0, Stream, bwr, bwrl, predline, Progress.Aborting^, crec.FillOrder);
    if crec.Compression = 5 then
      // finalize LZW
      crec.LZWCompFunc(nil, 0, Stream, lzwid);
    if (crec.Compression = 32946) or (crec.Compression=8) then
      // finalize zip
      zstream.free;
    {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
  end;

begin
  {$ifdef IEPROFILE} try IEProfileBegin('WriteStrip'); {$endif}
  if (crec.Compression = 7) then
  begin
    StripsPerImage := 1;
    RowsPerStrip := Bitmap.Height;
  end
  else if (crec.Compression = 32946) or (crec.Compression = 8) then
  begin
    StripsPerImage := 1;
    RowsPerStrip := Bitmap.Height;
    case crec.RefParams.TIFF_ZIPCompression of
      0: zstream := TZCompressionStream.Create(Stream, zcFastest);
      1: zstream := TZCompressionStream.Create(Stream, zcDefault);
      2: zstream := TZCompressionStream.Create(Stream, zcMax);
    end;
  end
  else
  begin
    StripsPerImage := imax((Bitmap.Height * Bitmap.RowLen) div MAXSTRIPDIM, 1);
    RowsPerStrip := Bitmap.Height div StripsPerImage;
    if frac(Bitmap.Height / StripsPerImage) > 0 then
      inc(StripsPerImage);
  end;
  getmem(pos_ar, sizeof(dword) * (StripsPerImage * 2));
  getmem(siz_ar, sizeof(dword) * (StripsPerImage * 2));
  StripsPerImage := 0; // above values was only an estimation. Now calculates the actual value.
  case crec.Photomet of
    ioTIFF_WHITEISZERO:
      begin
        Samples := 1;
      end;
    ioTIFF_BLACKISZERO:
      begin
        Samples := 1;
      end;
    ioTIFF_RGB:
      begin
        Samples := 3;
      end;
    ioTIFF_RGBPALETTE:
      begin
        Samples := 1;
      end;
    ioTIFF_TRANSPMASK:
      begin
        Samples := 1;
      end;
    ioTIFF_CMYK:
      begin
        Samples := 4;
      end;
    ioTIFF_YCBCR:
      begin
        Samples := 3;
      end;
    ioTIFF_CIELAB:
      begin
        Samples := 3;
      end;
  else
    begin
      Samples := 3;
    end;
  end;
  if bitmap.HasAlphaChannel and not bitmap.AlphaChannel.Full and (samples=3) and ((crec.Compression=1) or (crec.Compression=32773) or (crec.Compression=5)) then
  begin
    crec.hasalpha:=true;
    inc(Samples);
  end;
  bitmapwidth1 := bitmap.width - 1;
  bitmapheight1 := bitmap.height - 1;
  lzwid := nil;
  if crec.Compression = 7 then
  begin
    pos_ar[0] := Stream.Position;
    WriteStripJpeg(Stream, Bitmap, crec, Progress);
    siz_ar[0] := Stream.Position - int64(pos_ar[0]);
    StripsPerImage := 1;
  end
  else
  begin
    case Bitmap.PixelFormat of

      ie8p, ie8g, ie16g:
        begin

          if crec.Compression = 7 then
            exit;
          ww := (Samples * crec.BitsPerSample * Bitmap.Width);
          if (ww and 7) <> 0 then
            ww := (ww div 8) + 1
          else
            ww := ww div 8;
          Progress.per1 := 100 / Bitmap.Height;
          getmem(rowbuf, (Bitmap.Width * Samples) * imax(1, crec.BitsPerSample div 8) + 4);
          striprow := 0;
          stripidx := 0;
          pos_ar[0] := Stream.Position;
          for row := 0 to BitmapHeight1 do
          begin
            // OnProgress
            with Progress do
              if assigned(fOnProgress) then
                fOnProgress(Sender, trunc(per1 * row));

            // PALETTE or GRAYSCALE
            if crec.BitsPerSample = 8 then
            begin
              // 8 bits per pixel
              p_byte := Bitmap.Scanline[row];
              bufb := rowbuf;
              for q := 0 to BitmapWidth1 do
              begin
                bufb^ := p_byte^;
                inc(p_byte);
                inc(bufb);
              end;
            end
            else if crec.BitsPerSample = 16 then
            begin
              // 16 bits per pixel (grayscale)
              p_word := Bitmap.Scanline[row];
              bufw := pword(rowbuf);
              for q := 0 to BitmapWidth1 do
              begin
                bufw^ := p_word^;
                inc(p_word);
                inc(bufw);
              end;
            end
            else
            begin
              // 7,6,5,4,3,2 bits per pixel
              // compact pixels in bytes
              p_byte := Bitmap.Scanline[row];
              dbit := 0; // dest bit (0..7)
              bufb := rowbuf; // dest buffer
              for q := 0 to BitmapWidth1 do
              begin
                bb := p_byte^;
                for sbit := 0 to crec.BitsPerSample - 1 do
                begin
                  if (bb and (1 shl (crec.BitsPerSample - 1 - sbit))) <> 0 then
                    // write 1
                    bufb^ := bufb^ or iebitmask1[dbit]
                  else
                    // write 0
                    bufb^ := bufb^ and not iebitmask1[dbit];
                  inc(dbit);
                  if dbit = 8 then
                  begin
                    dbit := 0;
                    inc(bufb);
                  end;
                end;
                inc(p_byte);
              end;
            end;
            // from here in rowbuf (allocated) there is the row do compress and write
            case crec.Compression of
              1:
                // NO COMPRESSION
                SafeStreamWrite(Stream, Progress.Aborting^, rowbuf^, ww);
              5:
                // LZW
                crec.LZWCompFunc(rowbuf, ww, Stream, lzwid);
              32773:
                // PACKBITS
                _WritePackBits(rowbuf, ww, Stream, Progress.Aborting^);
              32946:
                // zip
                SafeStreamWrite(zstream, Progress.Aborting^, rowbuf^, ww);
            end;
            if Progress.Aborting^ then
              break;

            inc(striprow);
            if (striprow = RowsPerStrip) or (row = BitmapHeight1) then
            begin
              FinalizeCompressors;
              lzwid := nil;
              //
              siz_ar[stripidx] := Stream.Position - int64(pos_ar[stripidx]);
              StripsPerImage := stripidx + 1;
              striprow := 0;
              if row < BitmapHeight1 then
              begin
                // this isn't the last one
                inc(stripidx);
                pos_ar[stripidx] := Stream.Position;
              end;
            end;

          end; // of row for
          freemem(rowbuf);
        end;

      ie24RGB:
        ///////////// COLOR IMAGES
        begin
          if crec.Compression = 7 then
            exit;
          // RGB/CMYK/CIELAB/PALETTE
          if (Samples < 3) and (crec.Photomet <> ioTIFF_RGBPALETTE) and (crec.Photomet <> ioTIFF_BLACKISZERO) then
            Samples := 3;
          ww := (Samples * crec.BitsPerSample * Bitmap.Width);
          if (ww and 7) <> 0 then
            ww := (ww div 8) + 1
          else
            ww := ww div 8;
          Progress.per1 := 100 / Bitmap.Height;
          getmem(rowbuf, (Bitmap.Width * Samples) * imax(1, crec.BitsPerSample div 8) + 4);
          striprow := 0;
          stripidx := 0;
          pos_ar[0] := Stream.Position;
          for row := 0 to BitmapHeight1 do
          begin
            // OnProgress
            with Progress do
              if assigned(fOnProgress) then
                fOnProgress(Sender, trunc(per1 * row));
            // prepare buffer to write
            if crec.Photomet = ioTIFF_CMYK then
            begin
              // CMYK
              inrow := Bitmap.Scanline[row];
              // from BGR to CMYK
              IEConvertColorFunction(inrow, iecmsBGR, rowbuf, iecmsCMYK, Bitmap.Width, crec.RefParams);
              pb := rowbuf;
              for q := 0 to Bitmap.Width * 4 - 1 do
              begin
                pb^ := 255 - pb^;
                inc(pb);
              end;
            end
            else if crec.Photomet = ioTIFF_CIELAB then
            begin
              // CIELAB
              inrow := Bitmap.Scanline[row];
              IEConvertColorFunction(inrow, iecmsBGR, rowbuf, iecmsCIELab, Bitmap.Width, crec.RefParams);
            end
            else if (crec.Photomet = ioTIFF_RGBPALETTE) or (crec.Photomet = ioTIFF_BLACKISZERO) then
            begin
              // PALETTE or GRAYSCALE
              inrow := PRGB(Bitmap.Scanline[row]);
              if crec.BitsPerSample = 8 then
              begin
                // 8 bits per pixel
                bufb := rowbuf;
                for q := 0 to BitmapWidth1 do
                begin
                  bufb^ := crec.qt.RGBIndex[inrow^];
                  inc(inrow);
                  inc(bufb);
                end;
              end
              else if crec.BitsPerSample = 16 then
              begin
                // 16 bits per pixel (grayscale)
                bufw := pword(rowbuf);
                for q := 0 to BitmapWidth1 do
                begin
                  bufw^ := crec.qt.RGBIndex[inrow^] *257;
                  inc(inrow);
                  inc(bufw);
                end;
              end
              else
              begin
                // 7,6,5,4,3,2 bits per pixel
                // compact pixels in bytes
                dbit := 0; // dest bit (0..7)
                bufb := rowbuf; // dest buffer
                for q := 0 to BitmapWidth1 do
                begin
                  bb := crec.qt.RGBIndex[inrow^];
                  for sbit := 0 to crec.BitsPerSample - 1 do
                  begin
                    if (bb and (1 shl (crec.BitsPerSample - 1 - sbit))) <> 0 then
                      // write 1
                      bufb^ := bufb^ or iebitmask1[dbit]
                    else
                      // write 0
                      bufb^ := bufb^ and not iebitmask1[dbit];
                    inc(dbit);
                    if dbit = 8 then
                    begin
                      dbit := 0;
                      inc(bufb);
                    end;
                  end;
                  inc(inrow);
                end;
              end;
            end
            else
            begin
              // RGB
              if crec.Predictor = 2 then
              begin
                // Predictor, BGR to RGB
                buf1 := PRGB(int64(rowbuf) + BitmapWidth1 * 3);
                inrow := PRGB(int64(Bitmap.Scanline[row]) + (BitmapWidth1) * 3);
                buf2 := inrow;
                dec(buf2);
                for q := BitmapWidth1 downto 1 do
                begin
                  buf1^.r := inrow^.b - buf2^.b;
                  buf1^.g := inrow^.g - buf2^.g;
                  buf1^.b := inrow^.r - buf2^.r;
                  dec(buf1);
                  dec(inrow);
                  dec(buf2);
                end;
                buf1^.r := inrow^.b;
                buf1^.g := inrow^.g;
                buf1^.b := inrow^.r;
              end
              else if crec.hasalpha then
              begin
                // RGB with alpha channel and no predictor
                inrow := PRGB(Bitmap.Scanline[row]);
                bufb := pbyte(rowbuf);
                pb := Bitmap.AlphaChannel.Scanline[row];
                for q := 0 to BitmapWidth1 do
                begin
                  (*
                  bufb^ := (inrow^.r * pb^) div 255; inc(bufb);
                  bufb^ := (inrow^.g * pb^) div 255; inc(bufb);
                  bufb^ := (inrow^.b * pb^) div 255; inc(bufb);
                  *)
                  bufb^ := inrow^.r; inc(bufb);
                  bufb^ := inrow^.g; inc(bufb);
                  bufb^ := inrow^.b; inc(bufb);
                  bufb^ := pb^; inc(bufb);
                  inc(inrow);
                  inc(pb);
                end;
              end else
              begin
                // No predictor, from BGR to RGB
                inrow := PRGB(Bitmap.Scanline[row]);
                buf1 := PRGB(rowbuf);
                CopyMemory(rowbuf, inrow, Bitmap.Width * Samples);
                for q := 0 to BitmapWidth1 do
                begin
                  bswap(buf1.r, buf1.b);
                  inc(buf1);
                end;
              end;
            end;
            // from here in rowbuf (allocated) there is the row do compress and write
            case crec.Compression of
              1:
                // NO COMPRESSION
                SafeStreamWrite(Stream, Progress.Aborting^, rowbuf^, ww);
              5:
                // LZW
                crec.LZWCompFunc(rowbuf, ww, Stream, lzwid);
              32773:
                // PACKBITS
                _WritePackBits(rowbuf, ww, Stream, Progress.Aborting^);
              32946:
                // zip
                SafeStreamWrite(zstream, Progress.Aborting^, rowbuf^, ww);
            end;
            if Progress.Aborting^ then
              break;

            inc(striprow);
            if (striprow = RowsPerStrip) or (row = BitmapHeight1) then
            begin
              FinalizeCompressors;
              lzwid := nil;
              //
              siz_ar[stripidx] := Stream.Position - int64(pos_ar[stripidx]);
              StripsPerImage := stripidx + 1;
              striprow := 0;
              if row < BitmapHeight1 then
              begin
                // this isn't the last one
                inc(stripidx);
                pos_ar[stripidx] := Stream.Position;
              end;
            end;

          end; // of row for
          freemem(rowbuf);
        end;


      ie48RGB:
        ///////////// 48 bit color images
        begin
          if crec.Compression = 7 then
            exit;
          // RGB 48
          Samples := 3;
          ww := (Samples * crec.BitsPerSample * Bitmap.Width);
          if (ww and 7) <> 0 then
            ww := (ww div 8) + 1
          else
            ww := ww div 8;
          Progress.per1 := 100 / Bitmap.Height;
          getmem(rowbuf, (Bitmap.Width * Samples) * imax(1, crec.BitsPerSample div 8) + 4);
          striprow := 0;
          stripidx := 0;
          pos_ar[0] := Stream.Position;
          for row := 0 to BitmapHeight1 do
          begin
            // OnProgress
            with Progress do
              if assigned(fOnProgress) then
                fOnProgress(Sender, trunc(per1 * row));
            // prepare buffer to write
            if crec.Predictor = 2 then
            begin
              // Predictor, BGR to RGB
              buf1_48 := PRGB48(int64(rowbuf) + BitmapWidth1 * 6);
              inrow_48 := PRGB48(int64(Bitmap.Scanline[row]) + (BitmapWidth1) * 6);
              buf2_48 := inrow_48;
              dec(buf2_48);
              for q := BitmapWidth1 downto 1 do
              begin
                buf1_48^.b := inrow_48^.b - buf2_48^.b;
                buf1_48^.g := inrow_48^.g - buf2_48^.g;
                buf1_48^.r := inrow_48^.r - buf2_48^.r;
                dec(buf1_48);
                dec(inrow_48);
                dec(buf2_48);
              end;
              buf1_48^.b := inrow_48^.b;
              buf1_48^.g := inrow_48^.g;
              buf1_48^.r := inrow_48^.r;
            end
            else
            begin
              // No predictor, from BGR to RGB
              CopyMemory(rowbuf, Bitmap.Scanline[row], Bitmap.Width * Samples *2);
            end;
            // from here in rowbuf (allocated) there is the row do compress and write
            case crec.Compression of
              1:
                // NO COMPRESSION
                SafeStreamWrite(Stream, Progress.Aborting^, rowbuf^, ww);
              5:
                // LZW
                crec.LZWCompFunc(rowbuf, ww, Stream, lzwid);
              32773:
                // PACKBITS
                _WritePackBits(rowbuf, ww, Stream, Progress.Aborting^);
              32946:
                // zip
                SafeStreamWrite(zstream, Progress.Aborting^, rowbuf^, ww);
            end;
            if Progress.Aborting^ then
              break;

            inc(striprow);
            if (striprow = RowsPerStrip) or (row = BitmapHeight1) then
            begin
              FinalizeCompressors;
              lzwid := nil;
              //
              siz_ar[stripidx] := Stream.Position - int64(pos_ar[stripidx]);
              StripsPerImage := stripidx + 1;
              striprow := 0;
              if row < BitmapHeight1 then
              begin
                // this isn't the last one
                inc(stripidx);
                pos_ar[stripidx] := Stream.Position;
              end;
            end;

          end; // of row for
          freemem(rowbuf);
        end;

      ieCMYK:
        ///////////// CMYK
        begin
          if crec.Compression = 7 then
            exit;
          // CMYK
          Samples := 4;
          ww := (Samples * crec.BitsPerSample * Bitmap.Width);
          if (ww and 7) <> 0 then
            ww := (ww div 8) + 1
          else
            ww := ww div 8;
          Progress.per1 := 100 / Bitmap.Height;
          getmem(rowbuf, (Bitmap.Width * Samples) * imax(1, crec.BitsPerSample div 8) + 4);
          striprow := 0;
          stripidx := 0;
          pos_ar[0] := Stream.Position;
          for row := 0 to BitmapHeight1 do
          begin
            // OnProgress
            with Progress do
              if assigned(fOnProgress) then
                fOnProgress(Sender, trunc(per1 * row));
            // prepare buffer to write
            if crec.Predictor = 2 then
            begin
              // Predictor
              buf1_cmyk := PCMYK(int64(rowbuf) + BitmapWidth1 * 3);
              inrow_cmyk := PCMYK(int64(Bitmap.Scanline[row]) + BitmapWidth1 * 3);
              buf2_cmyk := inrow_cmyk;
              dec(buf2_cmyk);
              for q := BitmapWidth1 downto 1 do
              begin
                buf1_cmyk^.c := (255-inrow_cmyk^.c) - (255-buf2_cmyk^.c);
                buf1_cmyk^.m := (255-inrow_cmyk^.m) - (255-buf2_cmyk^.m);
                buf1_cmyk^.y := (255-inrow_cmyk^.y) - (255-buf2_cmyk^.y);
                buf1_cmyk^.k := (255-inrow_cmyk^.k) - (255-buf2_cmyk^.k);
                dec(buf1_cmyk);
                dec(inrow_cmyk);
                dec(buf2_cmyk);
              end;
              buf1_cmyk^.c := 255-inrow_cmyk^.c;
              buf1_cmyk^.m := 255-inrow_cmyk^.m;
              buf1_cmyk^.y := 255-inrow_cmyk^.y;
              buf1_cmyk^.k := 255-inrow_cmyk^.k;
            end
            else
            begin
              // No predictor
              buf1_cmyk:=PCMYK(rowbuf);
              buf2_cmyk:=Bitmap.Scanline[row];
              for q:=0 to BitmapWidth1 do
              begin
                buf1_cmyk^.c:=255-buf2_cmyk^.c;
                buf1_cmyk^.m:=255-buf2_cmyk^.m;
                buf1_cmyk^.y:=255-buf2_cmyk^.y;
                buf1_cmyk^.k:=255-buf2_cmyk^.k;
                inc(buf1_cmyk);
                inc(buf2_cmyk);
              end;
            end;
            // from here in rowbuf (allocated) there is the row do compress and write
            case crec.Compression of
              1:
                // NO COMPRESSION
                SafeStreamWrite(Stream, Progress.Aborting^, rowbuf^, ww);
              5:
                // LZW
                crec.LZWCompFunc(rowbuf, ww, Stream, lzwid);
              32773:
                // PACKBITS
                _WritePackBits(rowbuf, ww, Stream, Progress.Aborting^);
              32946:
                // zip
                SafeStreamWrite(zstream, Progress.Aborting^, rowbuf^, ww);
            end;
            if Progress.Aborting^ then
              break;

            inc(striprow);
            if (striprow = RowsPerStrip) or (row = BitmapHeight1) then
            begin
              FinalizeCompressors;
              lzwid := nil;
              //
              siz_ar[stripidx] := Stream.Position - int64(pos_ar[stripidx]);
              StripsPerImage := stripidx + 1;
              striprow := 0;
              if row < BitmapHeight1 then
              begin
                // this isn't the last one
                inc(stripidx);
                pos_ar[stripidx] := Stream.Position;
              end;
            end;

          end; // of row for
          freemem(rowbuf);
        end;


      ie1g:
        ///////////// B/W IMAGES
        begin
          Progress.per1 := 100 / Bitmap.Height;
          // calculates row length in bytes
          ww := Bitmap.Width div 8;
          if (Bitmap.Width mod 8) <> 0 then
            inc(ww);
          //
          striprow := 0;
          stripidx := 0;
          pos_ar[0] := Stream.Position;
          bwrl := 0;
          bwr := 0;
          predline := nil;
          for row := 0 to BitmapHeight1 do
          begin
            // OnProgress
            with Progress do
              if assigned(fOnProgress) then
                fOnProgress(Sender, trunc(per1 * row));
            //
            case crec.Compression of
              1:
                // NO COMPRESSION
                SafeStreamWrite(Stream, Progress.Aborting^, pbyte(Bitmap.Scanline[row])^, ww);
              2:
                // CCITT HUFFMAN 1D
                CCITTHuffmanPutLine(pbyte(Bitmap.Scanline[row]), Bitmap.Width, Stream, Progress.Aborting^,crec.FillOrder);
              3:
                if crec.T4Options = 0 then
                  // CCITT G3FAX1D
                  CCITTHuffmanPutLineG3(pbyte(Bitmap.Scanline[row]), Bitmap.Width, Stream, bwr, bwrl, Progress.Aborting^,crec.FillOrder)
                else
                  // CCITT G3FAX2D
                  CCITTHuffmanPutLineG32D(pbyte(Bitmap.Scanline[row]), Bitmap.Width, Stream, bwr, bwrl, predline, Progress.Aborting^,crec.FillOrder);
              4:
                // CCITT G4FAX
                CCITTHuffmanPutLineG4(pbyte(Bitmap.Scanline[row]), Bitmap.Width, Stream, bwr, bwrl, predline, Progress.Aborting^,crec.FillOrder);
              5:
                // LZW
                crec.LZWCompFunc(pbyte(Bitmap.Scanline[row]), ww, Stream, lzwid);
              32773:
                // PACKBITS
                _WritePackBits(pbyte(Bitmap.Scanline[row]), ww, Stream, Progress.Aborting^);
              32946:
                // zip
                SafeStreamWrite(zstream, Progress.Aborting^, pbyte(Bitmap.Scanline[row])^, ww);
            end;
            if Progress.Aborting^ then
              break;

            inc(striprow);
            if (striprow = RowsPerStrip) or (row = BitmapHeight1) then
            begin
              FinalizeCompressors;
              bwrl := 0;
              bwr := 0;
              predline := nil;
              lzwid := nil;
              //
              siz_ar[stripidx] := Stream.Position - int64(pos_ar[stripidx]);
              StripsPerImage := stripidx + 1;
              striprow := 0;
              if row < BitmapHeight1 then
              begin
                // this isn't the last one
                inc(stripidx);
                pos_ar[stripidx] := Stream.Position;
              end;
            end;

          end;
        end;

    end; // end PixelFormat case
  end; // end if (jpeg compression)
  WriteSingleLong(imed, 278, RowsPerStrip); // RowsPerStrip
  if StripsPerImage = 1 then
  begin
    WriteSingleLong(imed, 273, pos_ar[0]); // StripOffsets (array)
    WriteSingleLong(imed, 279, siz_ar[0]); // StripByteCounts (array)
  end
  else
  begin
    WriteMultiLongEx(imed, Stream, 273, pos_ar, StripsPerImage, Progress.Aborting^);
    WriteMultiLongEx(imed, Stream, 279, siz_ar, StripsPerImage, Progress.Aborting^);
  end;
  freemem(pos_ar);
  freemem(siz_ar);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// return images count

function _EnumTIFFImStream(Stream: TStream): integer;
var
  pr: TProgressRec;
  tempAlphaChannel: TIEMask;
  ab: boolean;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('_EnumTIFFImStream'); {$endif}
  tempAlphaChannel := nil;
  ab := false;
  pr.Aborting := @ab;
  TIFFReadStream(nil, Stream, result, nil, pr, false, tempAlphaChannel, true, true, false); // result is inside...
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure WriteExifBlock(upimed: TList; Stream: TStream; var IOParams: TIOParamsVals; var Aborting: boolean); forward;


// Ins: true insert an image of index IOParams.TIFF_ImageIndex, false saves as unique image
// If Ins is True, Stream must be open as fmOpenReadWrite
// returns the number of images inside the file (always 1 if Ins=false)
// note: Bitmap can be nil. If it is nil write only parameters (for EXIF inside Jpeg)

function TIFFWriteStream(Stream: TStream; Ins: boolean; Bitmap: TIEBitmap; var IOParams: TIOParamsVals; var Progress: TProgressRec): integer;
var
  tifhead: TTIFFHEADER;
  imed: TList; // TTIFFTAG structures to write
  q, w: integer;
  BasePos: int64;
  tw: word;
  WBitmap: TIEBitmap;
  BackCol, ForeCol: TRGB;
  crec: TCompRec;
  inv1bit: boolean;
  PosIFD, numi: integer;
  nt: word;
  WPosIFD: integer; // where to write position of new IFD
  SPosIFD: integer; // position of IFD to connect to the new IFD
  nullpr: TProgressRec;
  GlobalColorMap: array[0..255] of TRGB;
  wcolormap: array[0..255 * 3] of word;
  ncol: integer;
  laccess: TIEDataAccess;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIFFWriteStream'); {$endif}
  //
  imed := nil;
  crec.qt := nil;
  crec.hasalpha:=false;
  wbitmap := nil;
  ncol := 0;
  try
    fillchar(crec, sizeof(TCompRec), 0);
    crec.RefParams:=IOParams;
    imed := TList.Create;
    //
    with nullpr do
    begin
      Aborting := Progress.Aborting;
      fOnProgress := nil;
      Sender := nil;
    end;
    wbitmap := bitmap;
    if wbitmap <> nil then
    begin
      if (IOParams.BitsPerSample = 1) and (IOParams.SamplesPerPixel = 1) then
      begin
        // save in black/white
        if Bitmap.pixelformat <> ie1g then
        begin
          // Converts to 1 bit
          WBitmap := _ConvertTo1bitEx(Bitmap, BackCol, ForeCol);
          if WBitmap = nil then
          begin
            // impossible to convert to 1 bit, converts from color to black/white
            // 3.0.0
            WBitmap:=TIEBitmap.Create(Bitmap.Width,Bitmap.Height,ie1g);
            WBitmap.CopyAndConvertFormat(Bitmap);
          end;
        end;
      end
      else
      begin
        // save in true color
        if Bitmap.pixelformat = ie1g then
        begin
          // Converts to 24 bit
          WBitmap := TIEBitmap.Create;
          WBitmap.Assign(Bitmap);
          WBitmap.PixelFormat := ie24RGB;
        end;
      end;
      if (IOParams.SamplesPerPixel = 1) and ((IOParams.BitsPerSample <= 8) or (IOParams.BitsPerSample = 16)) and (IOParams.BitsPerSample > 1) then
      begin
        // paletted image
        ncol := imin(1 shl IOParams.BitsPerSample, 256);
        crec.qt := TIEQuantizer.Create(wBitmap, GlobalColorMap, ncol);
        if (IOParams.TIFF_Compression <> ioTIFF_LZW) and (IOParams.TIFF_Compression <> ioTIFF_PACKBITS) and (IOParams.TIFF_Compression<>ioTIFF_ZIP) then
          IOParams.TIFF_Compression := ioTIFF_UNCOMPRESSED;
        if crec.qt.grayScale then
          IOParams.TIFF_PhotometInterpret := ioTIFF_BLACKISZERO
        else
        begin
          IOParams.TIFF_PhotometInterpret := ioTIFF_RGBPALETTE;
          if IOParams.BitsPerSample = 16 then
            IOParams.BitsPerSample := 8; // color image cannot be 16 bit gray scale
        end;
      end;
      if (IOParams.TIFF_PhotometInterpret = ioTIFF_RGBPALETTE) and (IOParams.SamplesPerPixel > 1) then
        IOParams.TIFF_PhotometInterpret := ioTIFF_RGB;
      if WBitmap.PixelFormat=ie48RGB then
      begin
        IOParams.SamplesPerPixel := 3;
        IOParams.BitsPerSample := 16;
        IOParams.TIFF_PhotometInterpret := ioTIFF_RGB;
      end;
      if (IOParams.BitsPerSample > 8) and (IOParams.SamplesPerPixel <> 1) then
      begin
        IOParams.SamplesPerPixel := 3;
        IOParams.BitsPerSample := 8;
        IOParams.TIFF_PhotometInterpret := ioTIFF_RGB;
      end;
      if ((IOParams.TIFF_PhotometInterpret = ioTIFF_BLACKISZERO) or (IOParams.TIFF_PhotometInterpret = ioTIFF_WHITEISZERO)) and
        (IOParams.BitsPerSample = 8) and (IOParams.SamplesPerPixel = 3) then
        IOParams.TIFF_PhotometInterpret := ioTIFF_RGB;
      if (IOParams.TIFF_PhotoMetInterpret = ioTIFF_RGB) and (IOParams.SamplesPerPixel = 1) and (IOParams.BitsPerSample = 1) then
        IOParams.TIFF_PhotometInterpret := ioTIFF_BLACKISZERO;
      if (IOParams.TIFF_PhotoMetInterpret = ioTIFF_YCBCR) and (IOParams.TIFF_Compression <> ioTIFF_JPEG) then
        IOParams.TIFF_PhotoMetInterpret := ioTIFF_RGB;
      if (IOParams.TIFF_PhotoMetInterpret = ioTIFF_RGB) and (IOParams.SamplesPerPixel>3) then
        IOParams.SamplesPerPixel:=3;
      if WBitmap.PixelFormat=ie48RGB then
      begin
        IOParams.SamplesPerPixel := 3;
        IOParams.BitsPerSample := 16;
        IOParams.TIFF_PhotometInterpret := ioTIFF_RGB;
      end;
      if WBitmap.PixelFormat=ieCMYK then
      begin
        IOParams.SamplesPerPixel := 4;
        IOParams.BitsPerSample := 8;
        IOParams.TIFF_PhotometInterpret := ioTIFF_CMYK;
      end;
      //
      crec.T4Options := 0;
      case IOParams.TIFF_PhotometInterpret of
        ioTIFF_WHITEISZERO: crec.Photomet := ioTIFF_BLACKISZERO;
        ioTIFF_BLACKISZERO: crec.Photomet := ioTIFF_BLACKISZERO;
        ioTIFF_RGBPALETTE: crec.Photomet := ioTIFF_RGBPALETTE;
        ioTIFF_RGB: crec.Photomet := ioTIFF_RGB;
        ioTIFF_TRANSPMASK: crec.Photomet := ioTIFF_RGB;
        ioTIFF_CMYK:
          begin
            crec.Photomet := ioTIFF_CMYK;
            IOParams.SamplesPerPixel := 4;
          end;
        ioTIFF_YCBCR: crec.Photomet := ioTIFF_RGB;
        ioTIFF_CIELAB: crec.Photomet := ioTIFF_CIELAB;
      else
        crec.Photomet := ioTIFF_RGB;
      end;
      inv1bit := false;
      case IOParams.TIFF_Compression of
        ioTIFF_LZW:
          begin
            crec.Compression := 5; // LZW
            crec.Predictor := 2;
            if assigned(IOParams.TIFF_LZWCompFunc) then
              crec.LZWCompFunc := IOParams.TIFF_LZWCompFunc
            else if assigned(DefTIFF_LZWCOMPFUNC) then
              crec.LZWCompFunc := DefTIFF_LZWCOMPFUNC
            else
            begin
              crec.Compression := 1;
              crec.Predictor := 1;
            end;
          end;
        ioTIFF_PACKBITS:
          crec.Compression := 32773; // Packbits
        ioTIFF_CCITT1D:
          begin
            crec.Compression := 2; // CCITT1D
            crec.Photomet := ioTIFF_WHITEISZERO;
            inv1bit := true;
          end;
        ioTIFF_G3FAX1D:
          begin
            crec.Compression := 3; // G3FAX1D
            crec.Photomet := ioTIFF_WHITEISZERO;
            inv1bit := true;
          end;
        ioTIFF_G3FAX2D:
          begin
            crec.Compression := 3; // G3FAX2D
            crec.T4Options := 1;
            crec.Photomet := ioTIFF_WHITEISZERO;
            inv1bit := true;
          end;
        ioTIFF_G4FAX:
          begin
            crec.Compression := 4; // F4FAX
            crec.Photomet := ioTIFF_WHITEISZERO;
            inv1bit := true;
          end;
        ioTIFF_JPEG, ioTIFF_OLDJPEG:
          begin
            if IOParams.TIFF_Compression=ioTIFF_JPEG then
              crec.Compression := 7   // new jpeg
            else
              crec.Compression := 6;  // old jpeg
            crec.jpegquality := IOParams.TIFF_JPEGQuality;
            crec.jpegcolorspace := IOParams.TIFF_JPEGColorSpace;
            case crec.jpegcolorspace of
              ioJPEG_RGB: crec.Photomet := ioTIFF_RGB;
              ioJPEG_GRAYLEV: crec.Photomet := ioTIFF_BLACKISZERO;
              ioJPEG_YCbCr: crec.Photomet := ioTIFF_YCBCR;
              ioJPEG_CMYK: crec.Photomet := ioTIFF_CMYK;
              ioJPEG_YCbCrK:
                begin
                  crec.Photomet := ioTIFF_RGB;
                  crec.jpegcolorspace := ioJPEG_RGB;
                end;
            end;
          end;
        ioTIFF_ZIP, ioTIFF_Deflate:
          begin
            crec.Compression:=32946;
          end;
      else
        crec.Compression := 1; // no compression
      end;
      crec.FillOrder:=IOParams.TIFF_FillOrder;
      if (WBitmap.PixelFormat <> ie1g) and (crec.Compression > 1) and (crec.Compression < 5) then
      begin
        crec.Compression := 1; // no compression
        inv1bit := false;
      end;
      if (IOParams.BitsPerSample <> 8) or ((IOParams.SamplesPerPixel <> 1) and (IOParams.SamplesPerPixel <> 3)) or (crec.PhotoMet = ioTIFF_RGBPALETTE) or ((IOParams.BitsPerSample > 1) and (crec.PhotoMet = ioTIFF_BLACKISZERO)) or (WBitmap.HasAlphaChannel) then
        crec.Predictor := 1;
      //
      if inv1bit then
      begin
        if wbitmap = bitmap then
        begin
          wbitmap := TIEBitmap.Create;
          wbitmap.assign(bitmap);
        end;
        _Negative1BitEx(wbitmap);
      end;
    end; // end of WBitmap<>nil
    //
    BasePos := Stream.Position;
    //
    WPosIFD := 0;
    SPosIFD := 0;
    if Ins then
    begin
      // insert as TIFF_ImageIndex image
      Stream.Read(tifhead, sizeof(TTIFFHEADER) - 4); // read header minus posifd
      if tifhead.Id <> $4949 then
      begin
        Progress.Aborting^ := true;
        result := 0;
        exit;
      end;
      numi := 0;
      repeat
        q := Stream.Position;
        Stream.Read(PosIFD, 4);
        if (numi = IOParams.TIFF_ImageIndex) or
          ((PosIFD = 0) and (numi < IOParams.TIFF_ImageIndex)) then
        begin
          WPosIFD := q;
          SPosIFD := PosIFD;
        end;
        if (PosIFD = 0) then
          break;
        Stream.Position := PosIFD;
        Stream.Read(nt, 2);
        Stream.Seek(nt * sizeof(TTIFFTAG), soFromCurrent);
        inc(numi);
      until false;
      result := numi + 1;
      Stream.Seek(0, soFromEnd); // write from the end
    end
    else
    begin
      SafeStreamWrite(Stream, Progress.Aborting^, tifhead, sizeof(TTIFFHEADER)); // writes an empty header
      result := 1;
    end;
    // exif
    if IOParams.EXIF_HasEXIFData then
    begin
      // this also write imagedescription, dpix, dpiy and dpi unit
      WriteExifBlock(imed, Stream, IOParams, Progress.Aborting^);
    end
    else
    begin
      // WriteExifBlock not called, then we have to write this
      WriteString(imed, Stream, 270, IOParams.TIFF_ImageDescription, Progress.Aborting^);
      WriteSingleRational(imed, Stream, 282, IOParams.DpiX, 1, Progress.Aborting^); // dpix
      WriteSingleRational(imed, Stream, 283, IOParams.DpiY, 1, Progress.Aborting^); // dpiy
      WriteSingleShort(imed, 296, 2); // inches units
    end;
    //
    if WBitmap <> nil then
    begin
      WriteSingleLong(imed, 256, WBitmap.Width); // ImageWidth
      WriteSingleLong(imed, 257, WBitmap.Height); // ImageHeight
      //
      case WBitmap.PixelFormat of
        ie1g:
          // BitsPerSample: 1 bit x sample
          WriteSingleShort(imed, 258, 1);
        ie8g:
          WriteSingleShort(imed, 258, 8);
        ie8p:
          WriteSingleShort(imed, 258, 8);
        ie16g:
          WriteSingleShort(imed, 258, 16);
        ie48RGB:
          // RGB 48 bit
          WriteMultiShort(imed, Stream, 258, [16, 16, 16], Progress.Aborting^);
        ieCMYK:
          // CMYK
          WriteMultiShort(imed, Stream, 258, [8, 8, 8, 8], Progress.Aborting^);
        ie24RGB:
          begin
            case crec.Photomet of
              ioTIFF_CMYK: WriteMultiShort(imed, Stream, 258, [8, 8, 8, 8], Progress.Aborting^); // CMYK
              ioTIFF_RGBPALETTE: WriteSingleShort(imed, 258, IOParams.BitsPerSample); // RGBPALETTE
              ioTIFF_BLACKISZERO: WriteSingleShort(imed, 258, IOParams.BitsPerSample); // RGBPALETTE
            else
              WriteMultiShort(imed, Stream, 258, [8, 8, 8], Progress.Aborting^); // RGB/YCBCR
            end;
          end;
      end;
      WriteSingleShort(imed, 259, crec.Compression); // Compression
      if WBitmap.pixelformat = ie1g then
      begin
        case crec.Photomet of
          ioTIFF_WHITEISZERO: WriteSingleShort(imed, 262, 0); // PhotometricInterpretation=0 (0=white)
          ioTIFF_BLACKISZERO: WriteSingleShort(imed, 262, 1); // PhotometricInterpretation=1 (0=black)
        end;
      end
      else
      begin
        case crec.Photomet of
          ioTIFF_CMYK: WriteSingleShort(imed, 262, 5); // CMYK
          ioTIFF_CIELAB: WriteSingleShort(imed, 262, 8); // CIELAB
          ioTIFF_RGBPALETTE: WriteSingleShort(imed, 262, 3); // RGBPAlette
          ioTIFF_BLACKISZERO: WriteSingleShort(imed, 262, 1); // PhotometricInterpretation=1 (0=black)
          ioTIFF_YCBCR: WriteSingleShort(imed, 262, 6); // YCBCR
        else
          WriteSingleShort(imed, 262, 2); // PhotometricInterpretation=2 (RGB)
        end;
      end;
      WriteString(imed, Stream, 269, IOParams.TIFF_DocumentName, Progress.Aborting^);
      // some fax programs require to send default and other parameters to work
      if (crec.Compression = 2) or (crec.Compression = 3) or (crec.Compression = 4) then
      begin
        WriteSingleShort(imed, 266, crec.FillOrder); // FillOrder
        WriteSingleShort(imed, 284, 1); // Planar configuration
        WriteSingleShort(imed, 327, 0); // CleanFaxData (0=no incorrect lines)
      end;
      //
      crec.BitsPerSample := IOParams.BitsPerSample;
      // write image
      laccess := WBitmap.Access;
      WBitmap.Access := [iedRead];

      if crec.Compression=6 then
      begin
        WriteOldJpeg(Stream,WBitmap,imed,crec,Progress);
      end
      else
      begin
        WriteStrip(Stream, WBitmap, imed, crec, Progress);
      end;

      WBitmap.Access := laccess;
    end;
    //
    if not Progress.Aborting^ then
    begin
      if WBitmap <> nil then
      begin
        if WBitmap.pixelformat = ie1g then
          WriteSingleShort(imed, 277, 1) // SamplesPerPixel: 1 sample x pixel
        else
          case crec.Photomet of
            ioTIFF_CMYK: WriteSingleShort(imed, 277, 4); // CMYK 4 sample x pixel
            ioTIFF_RGBPALETTE: WriteSingleShort(imed, 277, 1); // RGBPALETTE, 1 sample x pixel
            ioTIFF_BLACKISZERO: WriteSingleShort(imed, 277, 1); // GRAYSCALE, 1 sample x pixel
          else
            begin
              if crec.hasalpha then
              begin
                WriteSingleShort(imed, 277, 4); // SamplesPerPixel: 4 samples x pixel
                WriteMultiShort(imed, Stream, 338, [1], Progress.Aborting^); // extra sample is alpha channel
              end
              else
                WriteSingleShort(imed, 277, 3); // SamplesPerPixel: 3 sample x pixel
            end;
          end;
        if crec.Predictor = 2 then
          WriteSingleShort(imed, 317, 2); // Predictor
        WriteString(imed, Stream, 285, IOParams.TIFF_PageName, Progress.Aborting^);
        if IOParams.TIFF_XPos <> 0 then
          WriteSingleRational(imed, Stream, 286, round(IOParams.TIFF_XPos * 10000), 10000, Progress.Aborting^);
        if IOParams.TIFF_YPos <> 0 then
          WriteSingleRational(imed, Stream, 287, round(IOParams.TIFF_YPos * 10000), 10000, Progress.Aborting^);

        if (crec.Compression = 3) then
          WriteSingleLong(imed, 292, crec.T4Options)
        else if (crec.Compression = 4) then
          WriteSingleLong(imed, 292, 0);

        if (crec.Compression = 3) or (crec.Compression = 4) then
          WriteSingleLong(imed, 293, 0); // T6Options
        // NewSubfileType
        WriteSingleLong(imed, 254, 0);
        // Page number (changed in 2.2.3 version)
        if (IOParams.TIFF_PageNumber > -1) or (IOParams.TIFF_PageCount > -1) then
          WriteMultiShort(imed, Stream, 297, [IOParams.TIFF_PageNumber, IOParams.TIFF_PageCount], Progress.Aborting^);
        // IPTC
        WriteIPTC(imed, Stream, IOParams, Progress.Aborting^);
        // XMP
        WriteXMP(imed, Stream, IOParams, Progress.Aborting^);
        // Wang Imaging
        WriteWang(imed, Stream, IOParams, Progress.Aborting^);
        // ICC
        WriteICC(imed, Stream, IOParams, Progress.Aborting^);
        // colormap
        if crec.Photomet = ioTIFF_RGBPALETTE then
        begin
          for q := 0 to ncol - 1 do
          begin
            wcolormap[q] := GlobalColorMap[q].r *257;
            wcolormap[q + ncol] := GlobalColorMap[q].g *257;
            wcolormap[q + ncol * 2] := GlobalColorMap[q].b *257;
          end;
          WriteMultiShort(imed, Stream, 320, slice(wcolormap, ncol * 3), Progress.Aborting^);
        end;
      end;
      //
      w := WordAlign(Stream,Progress.Aborting^);
      //
      if Ins then
      begin
        // insert image
        Stream.Position := WPosIFD;
        SafeStreamWrite(Stream, Progress.Aborting^, w, 4);
      end
      else
      begin
        // write header
        Stream.Position := BasePos;
        tifhead.Id := $4949;
        tifhead.Ver := 42;
        tifhead.PosIFD := w;
        SafeStreamWrite(Stream, Progress.Aborting^, tifhead, sizeof(TTIFFHEADER));
      end;
      // write IFD
      Stream.Position := w;
      tw := imed.Count;
      SafeStreamWrite(Stream, Progress.Aborting^, tw, 2); // tags count
      ReorderTags(imed);
      for q := 0 to imed.count - 1 do
      begin
        SafeStreamWrite(Stream, Progress.Aborting^, PTIFFTAG(imed[q])^, sizeof(TTIFFTAG));
        dispose(PTIFFTAG(imed[q]));
      end;
      if Ins then
      begin
        // insert image
        SafeStreamWrite(Stream, Progress.Aborting^, SPosIFD, 4);
      end
      else
      begin
        q := 0;
        SafeStreamWrite(Stream, Progress.Aborting^, q, 4); // next IFD (null)
      end;
    end; // end of aborting
  finally
    if imed <> nil then
      FreeAndNil(imed);
    if (WBitmap <> nil) and (wbitmap <> bitmap) then
      FreeAndNil(WBitmap);
    if crec.qt <> nil then
      FreeAndNil(crec.qt);
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

function _DeleteTIFFImStream(Stream: TStream; idx: integer): integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('_DeleteTIFFImStream'); {$endif}
  result := _DeleteTIFFImStreamGroup(Stream, @idx, 1);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

function _DeleteTIFFImStreamGroup(Stream: TStream; idxlist: pintegerarray; idxcount: integer): integer;
var
  TIFFHeader: TTIFFHeader;
  PosIFD, t, q: integer;
  Intel: boolean;
  numi, ii: integer;
  os: TMemoryStream;
  IFD: PIFD;
  nt, ww: word;
  wp, bp, lp1, lp2, lp3, lp4: integer;
  sz: integer;
  ia1, ia2: pintegerarray;
  wa1, wa2: pwordarray;
  xIdTag: word; // tag identifier
  xDataType, lxDataType: word; // data type
  xDataNum: integer; // data count
  xDataPos: integer; // data position
  tmpbuf: pointer;
  idx: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('_DeleteTIFFImStreamGroup'); {$endif}
  result := 0;
  // read header (minus IFD position)
  bp := Stream.Position;
  Stream.read(TIFFHeader, sizeof(TTIFFHeader) - 4); // doesn't read IFD position
  if (TIFFHeader.Id <> $4949) and (TIFFHeader.id <> $4D4D) then
    exit;
  Intel := TIFFHeader.Id = $4949;
  // write header (minus IFD position)
  os := TMemoryStream.Create;
  os.Size := Stream.Size;
  os.Write(TIFFHeader, sizeof(TIFFHeader) - 4);
  // IFD read loop
  numi := 0;
  idx := 0;
  wp := os.Position;
  PosIFD := 0;
  os.Write(PosIFD, 4); // blank space for IFD position
  lp4 := 0; // watch-dog for auto-looping IFD
  repeat
    Stream.Read(PosIFD, 4); // read IFD position
    if (PosIFD = 0) or (lp4 = PosIFD) then
      break; // end of images
    lp4 := PosIFD;
    PosIFD := IECSwapDWord(PosIFD, not Intel);
    Stream.Position := PosIFD; // go to the IFD
    Stream.read(nt, 2); // read tags count
    nt := IECSwapWord(nt, not Intel);
    // read tags
    getmem(IFD, nt * sizeof(TTIFFTAG));
    Stream.read(pbyte(IFD)^, sizeof(TTIFFTAG) * nt);
    lp3 := Stream.Position; // save reading position
    //
    if (idx < idxcount) and (idxlist[idx] = numi) then
      inc(idx)
    else
    begin
      // write tags
      ia1 := nil;
      ia2 := nil;
      wa1 := nil;
      lxDataType := 0;
      // search for StripByteCount or TileByteCount (we need them now)
      for t := 0 to nt - 1 do
        with IFD^[t] do
        begin
          xIdTag := IECSwapWord(IdTag, not Intel);
          if (xIdTag = 279) or (xIdTag = 325) then
          begin
            xDataType := IECSwapWord(DataType, not Intel);
            xDataNum := IECSwapDWord(DataNum, not Intel);
            xDataPos := IECSwapDWord(DataPos, not Intel);
            sz := IETAGSIZE[xDataType] * xDataNum;
            lxDataType := xDataType;
            getmem(ia1, sz);
            wa1 := pwordarray(ia1);
            if sz > 4 then
            begin
              Stream.Position := xDataPos;
              Stream.Read(ia1^, sz);
            end
            else
              CopyMemory(ia1, @DataPos, sz);
          end;
        end;
      for t := 0 to nt - 1 do
        with IFD^[t] do
        begin
          xIdTag := IECSwapWord(IdTag, not Intel);
          xDataType := IECSwapWord(DataType, not Intel);
          xDataNum := IECSwapDWord(DataNum, not Intel);
          xDataPos := IECSwapDWord(DataPos, not Intel);
          sz := IETAGSIZE[xDataType] * xDataNum;
          if (xIdTag = 273) or (xIdTag = 324) then
          begin
            // we are reading StripOffsets or TileOffsets
            getmem(ia2, sz);
            wa2 := pwordarray(ia2);
            if sz > 4 then
            begin
              Stream.Position := xDataPos;
              Stream.Read(ia2^, sz);
            end
            else
              CopyMemory(ia2, @DataPos, sz);
            // write data referenced by array
            for q := 0 to xDataNum - 1 do
            begin
              if xDataType = 3 then
              begin
                // SHORT
                Stream.Position := IECSwapWord(wa2^[q], not Intel);
                ww := os.Position;
                wa2^[q] := IECSwapWord(ww, not Intel);
              end
              else
              begin
                // LONG
                Stream.Position := IECSwapDWord(ia2^[q], not Intel);
                ia2^[q] := IECSwapDWord(os.Position, not Intel);
              end;
              if lxDataType = 3 then
                os.CopyFrom(Stream, IECSwapWord(wa1^[q], not Intel)) // SHORT
              else
                os.CopyFrom(Stream, IECSwapDWord(ia1^[q], not Intel)); // LONG
            end;
            // write array
            if sz > 4 then
            begin
              DataPos := IECSwapDWord(os.Position, not Intel);
              os.Write(ia2^, sz);
            end
            else
              CopyMemory(@DataPos, ia2, sz);
          end
          else if (sz > 4) or (xDataType = 2) then
          begin
            // DataPos now point to an area of the file (it can be ASCII, too)
            DataPos := IECSwapDWord(os.Position, not Intel);
            Stream.Position := xDataPos;
            if Stream.Position<os.Size then
              os.CopyFrom(Stream, sz)
            else
              os.Position:=os.Position+sz;
          end;
        end;
      freemem(ia2);
      freemem(ia1);
      // write IFD
      lp1 := os.Position; // save IFD position
      ww := IECSwapWord(nt, not Intel);
      os.Write(ww, 2); // write tags count
      os.Write(IFD^, nt * sizeof(TTIFFTAG));
      lp2 := os.Position; // save position of next reading
      // write IFD position
      os.Position := wp;
      ii := IECSwapDWord(lp1, not Intel);
      os.Write(ii, 4);
      os.Position := lp2; // point to next byte to reading
      wp := lp2;
      PosIFD := 0;
      os.Write(PosIFD, 4); // write blank space for IFD position
      //
      inc(result);
    end;
    // free tags
    freemem(IFD);
    inc(numi);
    // point to the next byte to read
    Stream.Position := lp3;
  until false;
  // write final IFD position (0)
  lp1 := os.Position;
  os.Position := wp;
  PosIFD := 0;
  os.Write(PosIFD, 4);
  // write "os" to Stream
  Stream.size := bp;
  os.Position := 0;
  Stream.CopyFrom(os, lp1 + 1);
  FreeAndNil(os);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

function TIFFLoadTags(Stream: TStream; var numi: integer; ImageIndex: integer; var TIFFEnv: TTIFFEnv): boolean;
var
  TIFFHeader: TTIFFHeader;
  PosIFD: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIFFLoadTags'); {$endif}
  result := false;
  fillmemory(@TIFFEnv, sizeof(TTIFFEnv), 0);
  // read header
  TIFFEnv.Stream := Stream;
  TIFFEnv.StreamBase := 0;
  Stream.read(TIFFHeader, sizeof(TTIFFHeader));
  if (TIFFHeader.Id <> $4949) and (TIFFHeader.id <> $4D4D) then
    exit;
  TIFFEnv.Intel := TIFFHeader.Id = $4949;
  if not TIFFEnv.Intel then
    TIFFHeader.PosIFD := IESwapDWord(TIFFHeader.PosIFD); // converts Intel header
  // read main IFD (of the selected image)
  TIFFEnv.IFD := nil;
  numi := 0;
  PosIFD := TIFFHeader.PosIFD;
  if PosIFD = 0 then
    exit;
  if not TIFFReadIFD(ImageIndex, TIFFHeader.PosIFD, TIFFEnv, numi) then
    exit;
  result := true;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TIFFFreeTags(var TIFFEnv: TTIFFEnv);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIFFFreeTags'); {$endif}
  // free memory allocated in TIFFEnv
  if TIFFEnv.IFD <> nil then
    freemem(TIFFEnv.IFD);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// extract a TIFF from a multipage TIFF

procedure _ExtractTIFFImStream(Stream: TStream; idx: integer; OutStream: TStream);
var
  TIFFHeader: TTIFFHeader;
  PosIFD, t, q: integer;
  Intel: boolean;
  numi, ii: integer;
  IFD: PIFD;
  nt, ww: word;
  wp, lp1, lp2, lp3, lp4: integer;
  sz: integer;
  ia1, ia2: pintegerarray;
  wa1, wa2: pwordarray;
  xIdTag: word; // tag identifier
  xDataType, lxDataType: word; // data type
  xDataNum: integer; // data count
  xDataPos: integer; // data position
begin
  {$ifdef IEPROFILE} try IEProfileBegin('_ExtractTIFFImStream'); {$endif}
  Stream.Position := 0;
  // read header (minus IFD position)
  Stream.read(TIFFHeader, sizeof(TTIFFHeader) - 4); // doesn't read IFD position
  if (TIFFHeader.Id <> $4949) and (TIFFHeader.id <> $4D4D) then
    exit;
  Intel := TIFFHeader.Id = $4949;
  // write header (minus IFD position)
  OutStream.Write(TIFFHeader, sizeof(TIFFHeader) - 4);
  // IFD read loop
  numi := 0;
  wp := OutStream.Position;
  PosIFD := 0;
  OutStream.Write(PosIFD, 4); // blank space for IFD position
  lp4 := 0; // watch-dog for auto-looping IFD
  repeat
    Stream.Read(PosIFD, 4); // read IFD position
    if (PosIFD = 0) or (lp4 = PosIFD) then
      break; // end of images
    lp4 := PosIFD;
    PosIFD := IECSwapDWord(PosIFD, not Intel);
    Stream.Position := PosIFD; // go to the IFD
    Stream.read(nt, 2); // read tags count
    nt := IECSwapWord(nt, not Intel);
    // read tags
    getmem(IFD, nt * sizeof(TTIFFTAG));
    Stream.read(pbyte(IFD)^, sizeof(TTIFFTAG) * nt);
    lp3 := Stream.Position; // save reading position
    //
    if numi = idx then
    begin
      // write tags
      ia1 := nil;
      ia2 := nil;
      wa1 := nil;
      lxDataType := 0;
      // search for StripByteCount or TileByteCount (we need them now)
      for t := 0 to nt - 1 do
        with IFD^[t] do
        begin
          xIdTag := IECSwapWord(IdTag, not Intel);
          if (xIdTag = 279) or (xIdTag = 325) then
          begin
            xDataType := IECSwapWord(DataType, not Intel);
            xDataNum := IECSwapDWord(DataNum, not Intel);
            xDataPos := IECSwapDWord(DataPos, not Intel);
            sz := IETAGSIZE[xDataType] * xDataNum;
            lxDataType := xDataType;
            getmem(ia1, sz);
            wa1 := pwordarray(ia1);
            if sz > 4 then
            begin
              Stream.Position := xDataPos;
              Stream.Read(ia1^, sz);
            end
            else
              CopyMemory(ia1, @DataPos, sz);
          end;
        end;
      for t := 0 to nt - 1 do
        with IFD^[t] do
        begin
          xIdTag := IECSwapWord(IdTag, not Intel);
          xDataType := IECSwapWord(DataType, not Intel);
          xDataNum := IECSwapDWord(DataNum, not Intel);
          xDataPos := IECSwapDWord(DataPos, not Intel);
          sz := IETAGSIZE[xDataType] * xDataNum;
          if (xIdTag = 273) or (xIdTag = 324) then
          begin
            // we are reading StripOffsets or TileOffsets
            getmem(ia2, sz);
            wa2 := pwordarray(ia2);
            if sz > 4 then
            begin
              Stream.Position := xDataPos;
              Stream.Read(ia2^, sz);
            end
            else
              CopyMemory(ia2, @DataPos, sz);
            // write data referenced by array
            for q := 0 to xDataNum - 1 do
            begin
              if xDataType = 3 then
              begin
                // SHORT
                Stream.Position := IECSwapWord(wa2^[q], not Intel);
                ww := OutStream.Position;
                wa2^[q] := IECSwapWord(ww, not Intel);
              end
              else
              begin
                // LONG
                Stream.Position := IECSwapDWord(ia2^[q], not Intel);
                ia2^[q] := IECSwapDWord(OutStream.Position, not Intel);
              end;
              if (wa1=nil) or (ia1=nil) then
              begin
                OutStream.CopyFrom(Stream,Stream.Size-Stream.Position);
              end
              else
              begin
                if lxDataType = 3 then
                  OutStream.CopyFrom(Stream, IECSwapWord(wa1^[q], not Intel)) // SHORT
                else
                  OutStream.CopyFrom(Stream, IECSwapDWord(ia1^[q], not Intel)); // LONG
              end;
            end;
            // write array
            if sz > 4 then
            begin
              DataPos := IECSwapDWord(OutStream.Position, not Intel);
              OutStream.Write(ia2^, sz);
            end
            else
              CopyMemory(@DataPos, ia2, sz);
          end
          else if (sz > 4) (*or (xDataType=2)*) then
          begin
            // DataPos now point to an area of the file (it can be ASCII, too)
            DataPos := IECSwapDWord(OutStream.Position, not Intel);
            Stream.Position := xDataPos;
            OutStream.CopyFrom(Stream, sz);
          end;
        end;
      freemem(ia2);
      freemem(ia1);
      // write IFD
      lp1 := OutStream.Position; // save IFD position
      ww := IECSwapWord(nt, not Intel);
      OutStream.Write(ww, 2); // write tags count
      OutStream.Write(IFD^, nt * sizeof(TTIFFTAG));
      lp2 := OutStream.Position; // save position of next reading
      // write IFD position
      OutStream.Position := wp;
      ii := IECSwapDWord(lp1, not Intel);
      OutStream.Write(ii, 4);
      OutStream.Position := lp2; // point to next byte to reading
      wp := lp2;
      PosIFD := 0;
      OutStream.Write(PosIFD, 4); // write blank space for IFD position
    end;
    // free tags
    freemem(IFD);
    inc(numi);
    // point to the next byte to read
    Stream.Position := lp3;
  until false;
  // write final IFD position (0)
  OutStream.Position := wp;
  PosIFD := 0;
  OutStream.Write(PosIFD, 4);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

function _InsertTIFFImStreamEx(Stream: TStream; ToInsert: TStream; idx: integer; OutStream: TStream; internal: boolean): integer;
var
  TIFFHeader: TTIFFHeader;
  PosIFD, t, q: integer;
  numi, ii: integer;
  IFD: PIFD;
  nt, ww: word;
  wp, lp1, lp2, lp3, lp4: integer;
  sz: integer;
  ia1, ia2: pintegerarray;
  wa1, wa2: pwordarray;
  xIdTag: word; // tag identifier
  xDataType, lxDataType: word; // data type
  xDataNum: integer; // data count
  xDataPos: integer; // data position
  Intel: boolean;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('_InsertTIFFImStreamEx'); {$endif}
  Stream.Position := 0;
  // read header (minus IFD position)
  Stream.read(TIFFHeader, sizeof(TTIFFHeader) - 4); // doesn't read IFD position
  if (TIFFHeader.Id <> $4949) and (TIFFHeader.id <> $4D4D) then
    exit;
  Intel := TIFFHeader.Id = $4949;
  if not Internal then
  begin
    // write header (minus IFD position)
    OutStream.Write(TIFFHeader, sizeof(TIFFHeader) - 4);
  end;
  // IFD read loop
  numi := 0;
  wp := OutStream.Position;
  PosIFD := 0;
  OutStream.Write(PosIFD, 4); // blank space for IFD position
  lp4 := 0; // watch-dog for auto-looping IFD
  repeat
    //
    if numi = idx then
    begin
      // insert ToInsert here
      OutStream.Position := OutStream.Position - 4;
      wp := _InsertTIFFImStreamEx(ToInsert, nil, -1, OutStream, true);
      inc(numi);
    end
    else
    begin
      Stream.Read(PosIFD, 4); // read IFD position
      if (PosIFD = 0) or (lp4 = PosIFD) then
        break; // end of images
      lp4 := PosIFD;
      PosIFD := IECSwapDWord(PosIFD, not Intel);
      Stream.Position := PosIFD; // go to the IFD
      Stream.read(nt, 2); // read tags count
      nt := IECSwapWord(nt, not Intel);
      // read tags
      getmem(IFD, nt * sizeof(TTIFFTAG));
      Stream.read(pbyte(IFD)^, sizeof(TTIFFTAG) * nt);
      lp3 := Stream.Position; // save reading position
      // write tags
      ia1 := nil;
      ia2 := nil;
      wa1 := nil;
      lxDataType := 0;
      // search for StripByteCount or TileByteCount (we need them now)
      for t := 0 to nt - 1 do
        with IFD^[t] do
        begin
          xIdTag := IECSwapWord(IdTag, not Intel);
          if (xIdTag = 279) or (xIdTag = 325) then
          begin
            xDataType := IECSwapWord(DataType, not Intel);
            xDataNum := IECSwapDWord(DataNum, not Intel);
            xDataPos := IECSwapDWord(DataPos, not Intel);
            sz := IETAGSIZE[xDataType] * xDataNum;
            lxDataType := xDataType;
            getmem(ia1, sz);
            wa1 := pwordarray(ia1);
            if sz > 4 then
            begin
              Stream.Position := xDataPos;
              Stream.Read(ia1^, sz);
            end
            else
              CopyMemory(ia1, @DataPos, sz);
          end;
        end;
      for t := 0 to nt - 1 do
        with IFD^[t] do
        begin
          xIdTag := IECSwapWord(IdTag, not Intel);
          xDataType := IECSwapWord(DataType, not Intel);
          xDataNum := IECSwapDWord(DataNum, not Intel);
          xDataPos := IECSwapDWord(DataPos, not Intel);
          sz := IETAGSIZE[xDataType] * xDataNum;
          if (xIdTag = 273) or (xIdTag = 324) then
          begin
            // we are reading StripOffsets or TileOffsets
            getmem(ia2, sz);
            wa2 := pwordarray(ia2);
            if sz > 4 then
            begin
              Stream.Position := xDataPos;
              Stream.Read(ia2^, sz);
            end
            else
              CopyMemory(ia2, @DataPos, sz);
            // write data referenced by array
            for q := 0 to xDataNum - 1 do
            begin
              if xDataType = 3 then
              begin
                // SHORT
                Stream.Position := IECSwapWord(wa2^[q], not Intel);
                ww := OutStream.Position;
                wa2^[q] := IECSwapWord(ww, not Intel);
              end
              else
              begin
                // LONG
                Stream.Position := IECSwapDWord(ia2^[q], not Intel);
                ia2^[q] := IECSwapDWord(OutStream.Position, not Intel);
              end;
              if lxDataType = 3 then
                OutStream.CopyFrom(Stream, IECSwapWord(wa1^[q], not Intel)) // SHORT
              else
                OutStream.CopyFrom(Stream, IECSwapDWord(ia1^[q], not Intel)); // LONG
            end;
            // write array
            if sz > 4 then
            begin
              DataPos := IECSwapDWord(OutStream.Position, not Intel);
              OutStream.Write(ia2^, sz);
            end
            else
              CopyMemory(@DataPos, ia2, sz);
          end
          else if xIdTag = 254 then
          begin
            // correct NewSubfileType
            DataPos := IECSwapDWord(xDataPos or 2, not Intel); // 2 means this is a single page of a multipage image
          end
          else if (sz > 4) then
          begin
            // DataPos now points to an area of the file (it can be ASCII, too)
            DataPos := IECSwapDWord(OutStream.Position, not Intel);
            Stream.Position := xDataPos;
            OutStream.CopyFrom(Stream, sz);
          end;
        end;
      freemem(ia2);
      freemem(ia1);
      // write IFD
      lp1 := OutStream.Position; // save IFD position
      ww := IECSwapWord(nt, not Intel);
      OutStream.Write(ww, 2); // write tags count
      OutStream.Write(IFD^, nt * sizeof(TTIFFTAG));
      lp2 := OutStream.Position; // save position of next reading
      // write IFD position
      OutStream.Position := wp;
      ii := IECSwapDWord(lp1, not Intel);
      OutStream.Write(ii, 4);
      OutStream.Position := lp2; // point to next byte to write
      wp := lp2;
      PosIFD := 0;
      OutStream.Write(PosIFD, 4); // write blank space for IFD position
      // free tags
      freemem(IFD);
      inc(numi);
      // point to the next byte to read
      Stream.Position := lp3;
    end;
  until false;
  if not Internal then
  begin
    // write final IFD position (0)
    OutStream.Position := wp;
    PosIFD := 0;
    OutStream.Write(PosIFD, 4);
  end;
  result := wp;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure _InsertTIFFImStream(Stream: TStream; ToInsert: TStream; idx: integer; OutStream: TStream);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('_InsertTIFFImStream'); {$endif}
  _InsertTIFFImStreamEx(Stream, ToInsert, idx, OutStream, false);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

function GetNumDen(val: double; var den: integer): integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('GetNumDen'); {$endif}
  den := RATMUL;
  while val * den > 2147483640 do
    den := den div 10;
  result := round(val * den);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure WriteExifGPSBlock(upimed: TList; Stream: TStream; var IOParams: TIOParamsVals; var Aborting: boolean);
var
  tg: PTIFFTAG;
  GPSifd: TList;
  q, w: integer;
  tw: word;
  den: array[0..5] of integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('WriteExifGPSBlock'); {$endif}
  GPSifd := nil;
  try
    GPSifd := TList.Create;
    with IOParams do
    begin
      WriteMiniByteString(GPSifd,$0, convVersionStrtoID(EXIF_GPSVersionID));
      WriteMiniString(GPSifd,$1, EXIF_GPSLatitudeRef);

      WriteMultiRational(GPSifd, Stream, $2, [
        GetNumDen(EXIF_GPSLatitudeDegrees, den[0]), den[0],
        GetNumDen(EXIF_GPSLatitudeMinutes, den[1]), den[1],
        GetNumDen(EXIF_GPSLatitudeSeconds, den[2]), den[2]], Aborting);

      WriteMiniString(GPSifd,$3,EXIF_GPSLongitudeRef);

      WriteMultiRational(GPSifd, Stream, $4, [
        GetNumDen(EXIF_GPSLongitudeDegrees, den[0]), den[0],
        GetNumDen(EXIF_GPSLongitudeMinutes, den[1]), den[1],
        GetNumDen(EXIF_GPSLongitudeSeconds, den[2]), den[2]], Aborting);

      WriteSingleByte(GPSifd,$5,StrToIntDef(EXIF_GPSAltitudeRef,0)); // 2.3.0
      WriteSingleRational(GPSifd, Stream, $6, GetNumDen(EXIF_GPSAltitude, den[0]), den[0], Aborting);

      WriteMultiRational(GPSifd, Stream, $7, [
        GetNumDen(EXIF_GPSTimeStampHour, den[0]), den[0],
        GetNumDen(EXIF_GPSTimeStampMinute, den[1]), den[1],
        GetNumDen(EXIF_GPSTimeStampSecond, den[2]), den[2]], Aborting);

      WriteString(GPSifd, Stream, $8, EXIF_GPSSatellites, Aborting);
      WriteMiniString(GPSifd,$9,EXIF_GPSStatus);
      WriteMiniString(GPSifd,$A,EXIF_GPSMeasureMode);
      WriteSingleRational(GPSifd, Stream, $B, GetNumDen(EXIF_GPSDOP, den[0]), den[0], Aborting);
      WriteMiniString(GPSifd,$C,EXIF_GPSSpeedRef);
      WriteSingleRational(GPSifd, Stream, $D, GetNumDen(EXIF_GPSSpeed, den[0]), den[0], Aborting);
      WriteMiniString(GPSifd,$E,EXIF_GPSTrackRef);
      WriteSingleRational(GPSifd, Stream, $F, GetNumDen(EXIF_GPSTrack, den[0]), den[0], Aborting);
      WriteMiniString(GPSifd,$10,EXIF_GPSImgDirectionRef);
      WriteSingleRational(GPSifd, Stream, $11, GetNumDen(EXIF_GPSImgDirection, den[0]), den[0], Aborting);
      WriteString(GPSifd, Stream, $12, EXIF_GPSMapDatum, Aborting);
      WriteMiniString(GPSifd,$13,EXIF_GPSDestLatitudeRef);

      WriteMultiRational(GPSifd, Stream, $14, [
        GetNumDen(EXIF_GPSDestLatitudeDegrees, den[0]), den[0],
        GetNumDen(EXIF_GPSDestLatitudeMinutes, den[1]), den[1],
        GetNumDen(EXIF_GPSDestLatitudeSeconds, den[2]), den[2]], Aborting);

      WriteMiniString(GPSifd,$15,EXIF_GPSDestLongitudeRef);

      WriteMultiRational(GPSifd, Stream, $16, [
        GetNumDen(EXIF_GPSDestLongitudeDegrees, den[0]), den[0],
        GetNumDen(EXIF_GPSDestLongitudeMinutes, den[1]), den[1],
        GetNumDen(EXIF_GPSDestLongitudeSeconds, den[2]), den[2]], Aborting);

      WriteMiniString(GPSifd,$17,EXIF_GPSDestBearingRef);
      WriteSingleRational(GPSifd, Stream, $18, GetNumDen(EXIF_GPSDestBearing, den[0]), den[0], Aborting);
      WriteMiniString(GPSifd,$19,EXIF_GPSDestDistanceRef);
      WriteSingleRational(GPSifd, Stream, $1A, GetNumDen(EXIF_GPSDestDistance, den[0]), den[0], Aborting);
      WriteString(GPSifd, Stream, $1D, EXIF_GPSDateStamp, Aborting);
    end;
    w := Stream.Position;
    if (w and 1) <> 0 then
    begin
      inc(w); // align to word
      q := 0;
      SafeStreamWrite(Stream, Aborting, q, 1); // write an align byte
    end;
    // write IFD
    Stream.Position := w;
    tw := GPSifd.Count;
    SafeStreamWrite(Stream, Aborting, tw, 2); // tags count
    ReorderTags(GPSifd);
    for q := 0 to GPSifd.count - 1 do
    begin
      SafeStreamWrite(Stream, Aborting, PTIFFTAG(GPSifd[q])^, sizeof(TTIFFTAG));
      dispose(PTIFFTAG(GPSifd[q]));
    end;
    q := 0;
    SafeStreamWrite(Stream, Aborting, q, 4); // next IFD (null)
  finally
    if GPSifd <> nil then
      FreeAndNil(GPSifd);
  end;
  // write EXIF-GPS tag (point to IFD)
  new(tg);
  tg^.IdTag := 34853;
  tg^.DataType := 4;
  tg^.DataNum := 1;
  tg^.DataPos := w;   // w already aligned
  upimed.add(tg);
  SafeStreamWrite(Stream, Aborting, w, sizeof(integer));
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;


procedure WriteExifBlock(upimed: TList; Stream: TStream; var IOParams: TIOParamsVals; var Aborting: boolean);
var
  tg: PTIFFTAG;
  EXIFifd: TList;
  q, w: integer;
  tw: word;
  tmps: string;
  den: array[0..5] of integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('WriteExifBlock'); {$endif}
  // tags in upimed
  with IOParams do
  begin
    if EXIF_ImageDescription<>'' then
      WriteString(upimed, Stream, 270, EXIF_ImageDescription, Aborting);
    if EXIF_XResolution<>0 then
      WriteSingleRational(upimed, Stream, 282, trunc(EXIF_XResolution), 1, Aborting); // dpix
    if EXIF_YResolution<>0 then
      WriteSingleRational(upimed, Stream, 283, trunc(EXIF_YResolution), 1, Aborting); // dpiy
    WriteSingleShort(upimed, 274, TIFF_Orientation); // Orientation
    WriteSingleShort(upimed, 296, 2); // inches units
    if EXIF_Software<>'' then
      WriteString(upimed, Stream, 305, EXIF_Software, Aborting);

    if EXIF_XPTitle<>'' then
      WriteWideString(upimed, Stream, $9C9B, EXIF_XPTitle, Aborting);
    if EXIF_XPComment<>'' then
      WriteWideString(upimed, Stream, $9C9C, EXIF_XPComment, Aborting);
    if EXIF_XPAuthor<>'' then
      WriteWideString(upimed, Stream, $9C9D, EXIF_XPAuthor, Aborting);
    if EXIF_XPKeywords<>'' then
      WriteWideString(upimed, Stream, $9C9E, EXIF_XPKeywords, Aborting);
    if EXIF_XPSubject<>'' then
      WriteWideString(upimed, Stream, $9C9F, EXIF_XPSubject, Aborting);

    if EXIF_Artist<>'' then
      WriteString(upimed, Stream, 315, EXIF_Artist, Aborting);
    if EXIF_Make<>'' then
      WriteString(upimed, Stream, 271, EXIF_Make, Aborting);
    if EXIF_Model<>'' then
      WriteString(upimed, Stream, 272, EXIF_Model, Aborting);
    if EXIF_DateTime<>'' then
      WriteString(upimed, Stream, 306, EXIF_DateTime, Aborting);
    WriteMultiRational(upimed, Stream, 318, [GetNumDen(EXIF_WhitePoint[0], den[0]), den[0], GetNumDen(EXIF_WhitePoint[1], den[1]), den[1]], Aborting);
    WriteSingleShort(upimed, 531, EXIF_YCbCrPositioning);
    WriteMultiRational(upimed, Stream, 319, [
      GetNumDen(EXIF_PrimaryChromaticities[0], den[0]), den[0],
        GetNumDen(EXIF_PrimaryChromaticities[1], den[1]), den[1],
        GetNumDen(EXIF_PrimaryChromaticities[2], den[2]), den[2],
        GetNumDen(EXIF_PrimaryChromaticities[3], den[3]), den[3],
        GetNumDen(EXIF_PrimaryChromaticities[4], den[4]), den[4],
        GetNumDen(EXIF_PrimaryChromaticities[5], den[5]), den[5]], Aborting);
    WriteMultiRational(upimed, Stream, 529, [
      GetNumDen(EXIF_YCbCrCoefficients[0], den[0]), den[0],
        GetNumDen(EXIF_YCbCrCoefficients[1], den[1]), den[1],
        GetNumDen(EXIF_YCbCrCoefficients[2], den[2]), den[2]], Aborting);
    WriteMultiRational(upimed, Stream, 532, [
      GetNumDen(EXIF_ReferenceBlackWhite[0], den[0]), den[0],
        GetNumDen(EXIF_ReferenceBlackWhite[1], den[1]), den[1],
        GetNumDen(EXIF_ReferenceBlackWhite[2], den[2]), den[2],
        GetNumDen(EXIF_ReferenceBlackWhite[3], den[3]), den[3],
        GetNumDen(EXIF_ReferenceBlackWhite[4], den[4]), den[4],
        GetNumDen(EXIF_ReferenceBlackWhite[5], den[5]), den[5]], Aborting);
    if EXIF_Copyright<>'' then
      WriteString(upimed, Stream, 33432, EXIF_Copyright, Aborting);
  end;
  //
  EXIFifd := nil;
  try
    EXIFifd := TList.Create;
    // tags in EXIFifd
    with IOParams do
    begin
      WriteSingleRational(EXIFifd, Stream, $829A, GetNumDen(EXIF_ExposureTime, den[0]), den[0], Aborting);
      WriteSingleRational(EXIFifd, Stream, $829D, GetNumDen(EXIF_FNumber, den[0]), den[0], Aborting);
      WriteSingleShort(EXIFifd, $8822, EXIF_ExposureProgram);
      WriteMultiShort(EXIFifd, Stream, $8827, [EXIF_ISOSpeedRatings[0], EXIF_ISOSpeedRatings[1]], Aborting);
      WriteMiniString(EXIFifd, $9000, EXIF_ExifVersion);
      if EXIF_DateTimeOriginal<>'' then
        WriteString(EXIFifd, Stream, $9003, EXIF_DateTimeOriginal, Aborting);
      if EXIF_DateTimeDigitized<>'' then
        WriteString(EXIFifd, Stream, $9004, EXIF_DateTimeDigitized, Aborting);
      WriteSingleRational(EXIFifd, Stream, $9102, GetNumDen(EXIF_CompressedBitsPerPixel, den[0]), den[0], Aborting);
      WriteSingleRational(EXIFifd, Stream, $9201, GetNumDen(EXIF_ShutterSpeedValue, den[0]), den[0], Aborting);
      WriteSingleRational(EXIFifd, Stream, $9202, GetNumDen(EXIF_ApertureValue, den[0]), den[0], Aborting);
      WriteSingleRational(EXIFifd, Stream, $9203, GetNumDen(EXIF_BrightnessValue, den[0]), den[0], Aborting);
      WriteSingleRational(EXIFifd, Stream, $9204, GetNumDen(EXIF_ExposureBiasValue, den[0]), den[0], Aborting);
      WriteSingleRational(EXIFifd, Stream, $9205, GetNumDen(EXIF_MaxApertureValue, den[0]), den[0], Aborting);
      WriteSingleRational(EXIFifd, Stream, $9206, GetNumDen(EXIF_SubjectDistance, den[0]), den[0], Aborting);
      WriteSingleShort(EXIFifd, $9207, EXIF_MeteringMode);
      WriteSingleShort(EXIFifd, $9208, EXIF_LightSource);
      WriteSingleShort(EXIFifd, $9209, EXIF_Flash);
      WriteSingleRational(EXIFifd, Stream, $920A, GetNumDen(EXIF_FocalLength, den[0]), den[0], Aborting);
      if EXIF_SubsecTime<>'' then
        WriteString(EXIFifd, Stream, $9290, EXIF_SubsecTime, Aborting);
      if EXIF_SubsecTimeOriginal<>'' then
        WriteString(EXIFifd, Stream, $9291, EXIF_SubsecTimeOriginal, Aborting);
      if EXIF_SubsecTimeDigitized<>'' then
        WriteString(EXIFifd, Stream, $9292, EXIF_SubsecTimeDigitized, Aborting);
      if EXIF_FlashPixVersion<>'' then
        WriteMiniString(EXIFifd, $A000, EXIF_FlashPixVersion);
      WriteSingleShort(EXIFifd, $A001, EXIF_ColorSpace);
      WriteSingleShort(EXIFifd, $A002, EXIF_ExifImageWidth); // could be also LONG
      WriteSingleShort(EXIFifd, $A003, EXIF_ExifImageHeight); // could be also LONG
      if EXIF_RelatedSoundFile<>'' then
        WriteString(EXIFifd, Stream, $A004, EXIF_RelatedSoundFile, Aborting);
      WriteSingleRational(EXIFifd, Stream, $A20E, GetNumDen(EXIF_FocalPlaneXResolution, den[0]), den[0], Aborting);
      WriteSingleRational(EXIFifd, Stream, $A20F, GetNumDen(EXIF_FocalPlaneYResolution, den[0]), den[0], Aborting);
      WriteSingleShort(EXIFifd, $A210, EXIF_FocalPlaneResolutionUnit);
      WriteSingleRational(EXIFifd, Stream, $A215, GetNumDen(EXIF_ExposureIndex, den[0]), den[0], Aborting);
      WriteSingleShort(EXIFifd, $A217, EXIF_SensingMethod);
      WriteSingleShort(EXIFifd, $A300, EXIF_FileSource); // undefined?
      WriteSingleShort(EXIFifd, $A301, EXIF_SceneType); // undefined?
      if EXIF_ExposureMode<>-1 then
        WriteSingleShort(EXIFifd, $A402, EXIF_ExposureMode);
      if EXIF_WhiteBalance<>-1 then
        WriteSingleShort(EXIFifd, $A403, EXIF_WhiteBalance);
      if EXIF_DigitalZoomRatio<>-1 then
        WriteSingleRational(EXIFifd, Stream, $A404, GetNumDen(EXIF_DigitalZoomRatio,den[0]),den[0],Aborting);
      if EXIF_FocalLengthIn35mmFilm<>-1 then
        WriteSingleShort(EXIFifd, $A405, EXIF_FocalLengthIn35mmFilm);
      if EXIF_SceneCaptureType<>-1 then
        WriteSingleShort(EXIFifd, $A406, EXIF_SceneCaptureType);
      if EXIF_GainControl<>-1 then
        WriteSingleShort(EXIFifd, $A407, EXIF_GainControl);
      if EXIF_Contrast<>-1 then
        WriteSingleShort(EXIFifd, $A408, EXIF_Contrast);
      if EXIF_Saturation<>-1 then
        WriteSingleShort(EXIFifd, $A409, EXIF_Saturation);
      if EXIF_Sharpness<>-1 then
        WriteSingleShort(EXIFifd, $A40A, EXIF_Sharpness);
      if EXIF_SubjectDistanceRange<>-1 then
        WriteSingleShort(EXIFifd, $A40C, EXIF_SubjectDistanceRange);
      if EXIF_ImageUniqueID<>'' then
        WriteString(EXIFifd, Stream, $A420, EXIF_ImageUniqueID, Aborting);

      tmps := EXIF_UserCommentCode + EXIF_UserComment;
      if tmps<>'' then
        WriteString(EXIFifd, Stream, $9286, tmps, Aborting);

      TIFFWriteIFDFromTagsHandler(EXIFifd,Stream,$927C,EXIF_MakerNote,Aborting,1024); // cut off tags with size>1024 (because in jpeg EXIF cannot be >65536). 2.2.4
    end;
    //
    w := Stream.Position;
    if (w and 1) <> 0 then
    begin
      inc(w); // align to word
      q := 0;
      SafeStreamWrite(Stream, Aborting, q, 1); // write an align byte
    end;
    // write IFD
    Stream.Position := w;
    tw := EXIFifd.Count;
    SafeStreamWrite(Stream, Aborting, tw, 2); // tags count
    ReorderTags(EXIFifd);
    for q := 0 to EXIFifd.count - 1 do
    begin
      SafeStreamWrite(Stream, Aborting, PTIFFTAG(EXIFifd[q])^, sizeof(TTIFFTAG));
      dispose(PTIFFTAG(EXIFifd[q]));
    end;
    q := 0;
    SafeStreamWrite(Stream, Aborting, q, 4); // next IFD (null)
  finally
    if EXIFifd <> nil then
      FreeAndNil(EXIFifd);
  end;
  // write EXIF tag (point to IFD)
  new(tg);
  tg^.IdTag := 34665;
  tg^.DataType := 4;
  tg^.DataNum := 1;
  tg^.DataPos := w; // w is already aligned
  upimed.add(tg);
  SafeStreamWrite(Stream, Aborting, w, sizeof(integer));
  if IOParams.EXIF_GPSVersionID<>'' then
    WriteExifGPSBlock(upimed,Stream,IOParams,Aborting);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// find DNG or TIFF-EP raw encoded image
function IsDNGStream(fs:TStream):boolean;
var
  lp:int64;
  TIFFEnv: TTIFFEnv;
  TIFFHeader: TTIFFHeader;
  numi:integer;
  i:integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('IsDNGStream'); {$endif}
  lp:=fs.Position;
  result:=false;
  fillmemory(@TIFFEnv, sizeof(TTIFFEnv), 0);
  try
    TIFFEnv.Stream := fs;
    TIFFEnv.StreamBase := 0;
    fs.read(TIFFHeader, sizeof(TTIFFHeader));
    if (TIFFHeader.Id <> $4949) and (TIFFHeader.id <> $4D4D) then
      exit;
    TIFFEnv.Intel := TIFFHeader.Id = $4949;
    if not TIFFEnv.Intel then
      TIFFHeader.PosIFD := IESwapDWord(TIFFHeader.PosIFD); // converts Intel header
    TIFFEnv.IFD := nil;
    numi:=0;
    if not TIFFReadIFD(0, TIFFHeader.PosIFD, TIFFEnv, numi) then
      exit;
    // check for DNGVersion tag
    i := TIFFFindTAG(50706, TIFFEnv);
    if (i>-1) and (TIFFEnv.IFD^[i].DataType=1) and (TIFFEnv.IFD^[i].DataNum=4) then
    begin
      result:=true;
      exit;
    end;
    // check for photometricInterpretation=32803 or 34892
    i := TIFFFindTAG(262, TIFFEnv);
    if (i>-1) and (TIFFEnv.IFD^[i].DataType=3) and (TIFFEnv.IFD^[i].DataNum=1) and ((TIFFReadSingleValDef(TIFFEnv,262,0)=32803) or (TIFFReadSingleValDef(TIFFEnv,262,0)=34892)) then
    begin
      result:=true;
      exit;
    end;
    //
    if (TIFFFindTAG($014A,TIFFEnv)>-1) and (TIFFFindTAG($9216,TIFFEnv)>-1) then
    begin
      // Has SubIFD and TIFF/EPStandardID, now check if it is a thumbnail
      if (TIFFReadSingleValDef(TIFFEnv, 256, 0)<200) and (TIFFReadSingleValDef(TIFFEnv, 257, 0)<200) then
      begin
        result:=true;
        exit;
      end;
    end;
  finally
    if TIFFEnv.IFD <> nil then
      freemem(TIFFEnv.IFD);
    fs.Position:=lp;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

function IsTIFFStream(fs:TStream):boolean;
var
  HeaderTIFF: TTIFFHeader;
  TIFFEnv: TTIFFEnv;
  b:byte;
  lp: int64;
  numi:integer;
  BufStream:TIEBufferedReadStream;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('IsTIFFStream'); {$endif}
  result:=false;
  lp:=fs.Position;
  BufStream:=TIEBufferedReadStream.Create(fs,1024,iegUseRelativeStreams);
  fillmemory(@TIFFEnv, sizeof(TTIFFEnv), 0);
  try
  if BufStream.Size > sizeof(TTIFFHeader) then
  begin
    BufStream.Read(HeaderTIFF, sizeof(HeaderTIFF));
    BufStream.Position:=8; BufStream.Read(b,1); // is this a Canon RAW?
    BufStream.Position := lp;
    if HeaderTIFF.Id=$4949 then
    begin
      // intel
      if HeaderTIFF.PosIFD<BufStream.Size then
        result := true;
    end
    else if HeaderTIFF.Id=$4D4D then
    begin
      // motorola
      if (IESwapDWord(HeaderTIFF.PosIFD)<BufStream.Size) and (b<>$BA) then
        result := true;
    end
    else
      exit;
    // check some tags
    BufStream.Position:=BufStream.Position-1;
    TIFFEnv.Stream := BufStream;
    TIFFEnv.StreamBase := 0;
    TIFFEnv.Intel := HeaderTIFF.Id = $4949;
    if not TIFFEnv.Intel then
      HeaderTIFF.PosIFD := IESwapDWord(HeaderTIFF.PosIFD); // converts Intel header
    TIFFEnv.IFD := nil;
    numi:=0;
    if (TIFFReadIFD(0, HeaderTIFF.PosIFD, TIFFEnv, numi)=false) // has a valid IFD?
    or (TIFFFindTAG(256,TIFFEnv)=-1)  // has ImageWidth?
    or (TIFFFindTAG(257,TIFFEnv)=-1)  // has ImageLength?
    then
      result:=false
  end;
  finally
    if TIFFEnv.IFD <> nil then
      freemem(TIFFEnv.IFD);
    BufStream.Free;
    fs.Position:=lp;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;


end.
