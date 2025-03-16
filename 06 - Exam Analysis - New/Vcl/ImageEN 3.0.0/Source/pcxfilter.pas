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

unit pcxfilter;

{$R-}
{$Q-}

{$I ie.inc}

interface

uses Windows, Graphics, classes, sysutils, ImageEnProc, ImageEnIO, hyiedefs, hyieutils;

type
  TPcxHeader = packed record // Header di un file PCX
    Manufacturer: Byte;
    Version: Byte;
    Encoding: Byte;
    Bits_Per_Pixel: Byte;
    Xmin, Ymin: Word;
    Xmax, Ymax: Word;
    Hres, Vres: Word;
    Palette: array[0..15] of TRGB;
    Reserved: Byte;
    Colour_Planes: Byte;
    Bytes_Per_Line: Word;
    Palette_Type: Word; // 0=256colori/true_color
    Filler: array[0..57] of Byte;
  end;

procedure ReadPcx(nf: string; Bitmap: TIEBitmap; var IOParams: TIOParamsVals; var Progress: TProgressRec);
procedure ReadPcxStream(fs: TStream; Bitmap: TIEBitmap; var IOParams: TIOParamsVals; fsDim: integer; var Progress: TProgressRec; Preview: boolean);
procedure WritePcx(nf: string; bitmap: TIEBitmap; var IOParams: TIOParamsVals; var Progress: TProgressRec);
procedure WritePcxStream(fs: TStream; bitmap: TIEBitmap; var IOParams: TIOParamsVals; var Progress: TProgressRec);

procedure IEDCXReadStream(fs: TStream; Bitmap: TIEBitmap; var IOParams: TIOParamsVals; var Progress: TProgressRec; Preview: boolean);
procedure IEDCXInsertStream(fs: TStream; bitmap: TIEBitmap; var IOParams: TIOParamsVals; var Progress: TProgressRec);
procedure IEDCXDeleteStream(fs:TStream; idx:integer);
function IEDCXCountStream(fs:TStream):integer;
function IEDCXTryStream(fs:TStream):boolean;

implementation

uses ImageEnView, NeurQuant, ieview;

{$R-}

/////////////////////////////////////////////////////////////////////////////////////
// Legge il file PCX specificato e restitisce una bitmap contenente l'immagine.
// nf = nome del file pcx

procedure ReadPcx(nf: string; Bitmap: TIEBitmap; var IOParams: TIOParamsVals; var Progress: TProgressRec);
var
  fs: TFileStream;
begin
  fs := nil;
  try
    fs := TFileStream.create(nf, fmOpenRead or fmShareDenyWrite);
    ReadPcxStream(fs, Bitmap, IOParams, fs.size, Progress, false);
  finally
    FreeAndNil(fs);
  end;
end;

/////////////////////////////////////////////////////////////////////////////////////
// Legge il stream PCX specificato e restitisce una bitmap contenente l'immagine.
// nf = nome del file pcx
// fsDim = dimensione del blocco pcx (necessario perchè la Palette viene memorizzata in fondo)

procedure ReadPcxStream(fs: TStream; Bitmap: TIEBitmap; var IOParams: TIOParamsVals; fsDim: integer; var Progress: TProgressRec; Preview: boolean);
var
  im: pbytearray; // immagine compressa pcx
  impos: integer; // posizione lettura in "im"
  ph: TPcxHeader;
  cols, rows, col, row: integer;
  rowbuf, buf2: pbytearray;
  pal256: array[0..255] of TRGB;
  ppx, ppx2: pRGB;
  qq, ww: integer;
  lp1: int64; // posizione inizio stream
  lr: integer; // ripetizioni rimanenti linea precedente
  lbb: byte; // valori ripetizioni rimanenti linea precedente
  // riempe rowbuf con la riga corrente
  procedure GetLine;
  var
    q, rp: integer;
    bb: byte;
  begin
    case ph.Encoding of
      0: // no compressione
        begin
          CopyMemory(rowbuf, @(im[impos]), ph.Bytes_Per_Line);
          inc(impos, ph.Bytes_per_Line);
        end;
      1: // compressione RLE
        begin
          q := 0;
          while q < ph.Bytes_Per_Line do
          begin
            if lr > 0 then
            begin
              // ripetizioni linea precedente
              rp:=lr;
              if (q + rp) >= (ph.Bytes_per_line) then
              begin
                lr := q + rp - ph.bytes_per_line;
                rp := rp - lr;
              end
              else
                lr:=0;
              fillmemory(@rowbuf[q], rp, lbb);
              inc(q, rp);
            end
            else
            begin
              bb := im[impos];
              inc(impos);
              if (bb and $C0) = $C0 then
              begin
                // sequenza codificata
                rp := bb and $3F; // ripetizioni
                bb := im[impos]; // carattere da ripetere
                inc(impos);
                if (q + rp) >= (ph.Bytes_per_line) then
                begin
                  lr := q + rp - ph.bytes_per_line;
                  rp := rp - lr;
                  lbb := bb;
                end;
                fillmemory(@rowbuf[q], rp, bb);
                inc(q, rp);
              end
              else
              begin
                rowbuf[q] := bb;
                inc(q);
              end;
            end;
          end;
        end;
    end;
  end;
begin
  im := nil;
  rowbuf := nil;
  lp1 := fs.Position;
  // legge header TPcxHeader
  fs.read(ph, sizeof(TPcxHeader));
  if (ph.Manufacturer <> $0A) or
    (ph.bits_per_pixel > 8) or
    ((ph.encoding <> 0) and (ph.encoding <> 1)) then
  begin
    // file non supportato
    Progress.Aborting^ := True;
    exit;
  end;
  cols := ph.Xmax - ph.Xmin + 1;
  rows := ph.Ymax - ph.Ymin + 1;

  IOParams.DpiX := ph.Hres;
  IOParams.DpiY := ph.Vres;
  if (IOParams.DpiX = 0) or (IOParams.DpiX = 0) then
  begin
    IOParams.DpiX := gDefaultDPIX;
    IOParams.DpiY := gDefaultDPIY;
  end;
  //
  try
    // legge color table se 256 colori
    if (ph.Colour_Planes = 1) and (ph.bits_per_pixel > 4) then
    begin
      fs.position := lp1 + fsDim - 768;
      fs.read(pal256, 768);
      fs.position := lp1 + sizeof(TPcxHeader);
    end;
    // inverte R con B in entrabe le colormap
    for qq := 0 to 15 do
      bswap(ph.palette[qq].r, ph.palette[qq].b);
    for qq := 0 to 255 do
      bswap(pal256[qq].r, pal256[qq].b);
    //
    getmem(im, fsDim - sizeof(TPcxHeader) + 8);
    fs.read(im^, fsDim - sizeof(TPcxHeader)); // per brevità rileggo tutto (anche palette)
    impos := 0;
    // imposta IOParams
    with IOParams do
    begin
      BitsPerSample := ph.Bits_Per_Pixel;
      SamplesPerPixel := ph.Colour_Planes;
      Width := cols;
      Height := rows;
      PCX_Version := ph.Version;
      if ColorMap <> nil then
      begin
        freemem(ColorMap);
        fColorMap := nil;
        fColorMapCount := 0;
      end;
      if ph.bits_per_pixel = 8 then
      begin
        fColorMapCount := 256;
        getmem(fColorMap, 256 * sizeof(TRGB));
        CopyMemory(ColorMap, @pal256, 256 * sizeof(TRGB));
      end;
      if (ph.bits_per_pixel = 1) and (ph.Colour_Planes = 4) then
      begin
        fColorMapCount := 16;
        getmem(fColorMap, ColorMapCount * sizeof(TRGB));
        CopyMemory(ColorMap, @ph.palette, 16 * sizeof(TRGB));
        BitsPerSample := 4;
        SamplesPerPixel := 1;
      end
      else if ph.bits_per_pixel < 8 then
      begin
        fColorMapCount := (1 shl ph.Bits_Per_Pixel);
        getmem(fColorMap, ColorMapCount * sizeof(TRGB));
        CopyMemory(ColorMap, @ph.palette, (1 shl ph.Bits_Per_Pixel) * sizeof(TRGB));
      end;
    end;
    if not Preview then
    begin
      // read image
      if (ph.Bits_Per_Pixel = 1) and (ph.Colour_Planes = 1) then
        Bitmap.Allocate(cols, rows, ie1g)
      else
        Bitmap.Allocate(cols, rows, ie24RGB);
      getmem(rowbuf, ph.Bytes_Per_Line * ph.Colour_Planes * 2 + 32); // raddoppiato per sicurezza (un vecchio bug...)
      Progress.per1 := 100 / rows;
      lr := 0;
      for row := 0 to rows - 1 do
      begin
        // OnProgress
        with Progress do
          if assigned(fOnProgress) then
            fOnProgress(Sender, trunc(per1 * row));
        if Progress.Aborting^ then
          break;
        //
        ppx := Bitmap.ScanLine[row];
        case ph.Colour_Planes of
          1: // palette
            begin
              if ph.bits_per_pixel = 8 then
              begin
                // 256 colori
                GetLine;
                for col := 0 to cols - 1 do
                begin
                  ppx^ := pal256[rowbuf[col]];
                  inc(ppx);
                end;
              end
              else if ph.bits_per_pixel = 4 then
              begin
                // 16 colori (4bit)
                GetLine;
                ww := (cols shr 1);
                if (cols and 1) <> 0 then
                  inc(ww);
                for col := 0 to ww - 1 do
                begin
                  qq := rowbuf[col] shr 4;
                  ppx^ := ph.Palette[qq];
                  inc(ppx);
                  qq := rowbuf[col] and $0F;
                  ppx^ := ph.Palette[qq];
                  inc(ppx);
                end;
              end
              else if ph.bits_per_pixel = 1 then
              begin
                // 2 colori (1 bit)
                GetLine;
                ww := cols shr 3;
                if (cols and 7) <> 0 then
                  inc(ww);
                copymemory(pbyte(ppx), rowbuf, ww);
              end;
            end;
          3: // true color
            begin
              GetLine;
              ppx2 := ppx;
              for col := 0 to cols - 1 do
              begin
                ppx2^.r := rowbuf[col];
                inc(ppx2);
              end;
              GetLine;
              ppx2 := ppx;
              for col := 0 to cols - 1 do
              begin
                ppx2^.g := rowbuf[col];
                inc(ppx2);
              end;
              GetLine;
              ppx2 := ppx;
              for col := 0 to cols - 1 do
              begin
                ppx2^.b := rowbuf[col];
                inc(ppx2);
              end;
            end;
          4: // four planes per pixel
            begin
              buf2 := allocmem(cols); // zero filled

              // bit 0
              GetLine;
              for col := 0 to cols - 1 do
                if _GetPixelbw(pbyte(rowbuf), col) <> 0 then
                  buf2^[col] := 1;
              // bit 1
              GetLine;
              for col := 0 to cols - 1 do
                if _GetPixelbw(pbyte(rowbuf), col) <> 0 then
                  buf2^[col] := buf2^[col] or 2;
              // bit 2
              GetLine;
              for col := 0 to cols - 1 do
                if _GetPixelbw(pbyte(rowbuf), col) <> 0 then
                  buf2^[col] := buf2^[col] or 4;
              // bit 3
              GetLine;
              for col := 0 to cols - 1 do
              begin
                if _GetPixelbw(pbyte(rowbuf), col) <> 0 then
                  buf2^[col] := buf2^[col] or 8;
                ppx^ := ph.Palette[buf2[col]];
                inc(ppx);
              end;

              //
              freemem(buf2);
            end;
        end;
      end;
      freemem(rowbuf);
    end; // endif not preview
    freemem(im);
  except
    if im <> nil then
      freemem(im);
    if rowbuf <> nil then
      freemem(rowbuf);
    Progress.Aborting^ := true;
  end;
end;

/////////////////////////////////////////////////////////////////////////////////////
// Salva immagine in formato pcx in true color
// nf: nome file
// bitmap: bitmap da salvare

procedure WritePcx(nf: string; bitmap: TIEBitmap; var IOParams: TIOParamsVals; var Progress: TProgressRec);
var
  fs: TFileStream;
begin
  fs := TFileStream.Create(nf, fmCreate);
  fs.size := 0;
  WritePcxStream(fs, bitmap, IOParams, Progress);
  FreeAndNil(fs);
end;

/////////////////////////////////////////////////////////////////////////////////////
// rowbuf: buffer di output
// pbx: buffer di input (riga da comprimere)
// Width: numero byte di cui è composta la riga (non arrontondato al valore pari)
// c: offset aggiuntivo alla lettura di pbx (componente colore per 24bit)
// m: offset moltiplicativo alla lettura di pbx (3 per 24bit)
// rest: byte letti

function CompressRLE(rowbuf: pbytearray; pbx: pbytearray; Width: integer; c, m: integer): integer;
var
  rb, col: integer;
  bb, rp: byte;
begin
  col := 0;
  rb := 0;
  while col < width do
  begin
    bb := pbx^[col * m + c];
    rp := 1;
    while ((rp + col) < width) and (pbx^[(col + rp) * m + c] = bb) and (rp < 63) do
      inc(rp);
    if (rp > 1) or (bb > 191) then
    begin
      // sequenza codificata (rp=ripetizioni)
      rowbuf[rb] := $C0 or rp;
      inc(rb);
      rowbuf[rb] := bb;
    end
    else
    begin
      rowbuf[rb] := bb;
    end;
    inc(rb);
    inc(col, rp);
  end;
  if (width and 1) <> 0 then
  begin
    rowbuf[rb] := 0;
    inc(rb);
  end;
  result := rb;
end;

/////////////////////////////////////////////////////////////////////////////////////
// Salva immagine in formato pcx in true color in uno Stream
// nf: nome file
// bitmap: bitmap da salvare
// note: se l'immagine contiene due soli colori viene salvata con palette

procedure WritePcxStream(fs: TStream; bitmap: TIEBitmap; var IOParams: TIOParamsVals; var Progress: TProgressRec);
var
  ph: TPcxHeader;
  qt: TIEQuantizer;
  xBitsPixel: integer;
  FreeW: boolean; // se true liberare WBitmap
  BackCol, ForeCol: TRGB;
  NCol: integer;
  WBitmap: TIEBitmap;
  Palette256: array[0..255] of TRGB;
  pbx: pbytearray;
  row, bcol, col: integer;
  rowbuf: pbytearray;
  rowbuf2: pbytearray;
  rb, c: integer;
  nullpr: TProgressRec;
  bitmapwidth1, bitmapheight1: integer;
  bb: byte;
begin
  //
  with nullpr do
  begin
    Aborting := Progress.Aborting;
    fOnProgress := nil;
    Sender := nil;
  end;
  FreeW := false;
  if (IOParams.BitsPerSample = 1) then
  begin
    // save to black/white
    xBitsPixel := 1;
    if Bitmap.pixelformat = ie1g then
      WBitmap := Bitmap
    else
    begin
      // Convert to 1 bit
      WBitmap := _ConvertTo1bitEx(Bitmap, BackCol, ForeCol);
      if WBitmap = nil then
      begin
        // impossible to convert to 1 bit, converts from color to black/white
        // 3.0.0
        WBitmap:=TIEBitmap.Create(Bitmap.Width,Bitmap.Height,ie1g);
        WBitmap.CopyAndConvertFormat(Bitmap);
      end;
      FreeW := true;
    end;
  end
  else
  begin
    // E' richiesto di salvare a colori
    xBitsPixel := IOParams.BitsPerSample * IOParams.SamplesPerPixel;
    if Bitmap.pixelformat = ie24RGB then
      WBitmap := Bitmap
    else
    begin
      // Converti a 24 bit
      WBitmap := TIEBitmap.Create;
      WBitmap.Assign(Bitmap);
      WBitmap.PixelFormat := ie24RGB;
      FreeW := true;
    end;
  end;
  NCol := 1 shl xBitsPixel;
  qt := nil;
  // prepara header
  zeromemory(@ph, sizeof(TPcxHeader));
  with ph do
  begin
    Manufacturer := $0A;
    Version := IOParams.PCX_Version;
    if IOParams.PCX_Compression = ioPCX_UNCOMPRESSED then
      Encoding := 0 // Uncompressed
    else
      Encoding := 1; // RLE
    Xmin := 0;
    Ymin := 0;
    Xmax := wbitmap.Width - 1;
    Ymax := wbitmap.Height - 1;
    Hres := IOParams.DpiX;
    Vres := IOparams.DpiY;
    Palette_Type := 1;
    case xBitsPixel of
      1:
        begin
          Bits_Per_Pixel := 1;
          Colour_Planes := 1;
          Bytes_Per_Line := wbitmap.width div 8;
          if (wbitmap.width mod 8) <> 0 then
            inc(Bytes_Per_Line);
          Palette[0] := BackCol;
          Palette[1] := ForeCol;
          _RGB2BGR(Palette, 2);
        end;
      4:
        begin
          Bits_Per_Pixel := 4;
          Colour_Planes := 1;
          Bytes_Per_Line := wbitmap.width div 2;
          if (wbitmap.width mod 2) <> 0 then
            inc(Bytes_Per_Line);
          qt := TIEQuantizer.Create(wBitmap, Palette, NCol);
          _RGB2BGR(Palette, 16);
        end;
      8:
        begin
          Bits_Per_Pixel := 8;
          Colour_Planes := 1;
          Bytes_Per_Line := wbitmap.width;
          qt := TIEQuantizer.Create(wBitmap, Palette256, NCol);
          _RGB2BGR(Palette256, 256);
        end;
      24:
        begin
          Bits_Per_Pixel := 8;
          Colour_Planes := 3;
          Bytes_Per_Line := wbitmap.width;
          Palette_Type := 0;
        end;
    end;
    if (Bytes_Per_Line and 1) <> 0 then
      inc(Bytes_Per_Line);
  end;
  // write header
  SafeStreamWrite(fs, Progress.Aborting^, ph, sizeof(TPcxHeader));
  // compress and write the image
  getmem(rowbuf, wbitmap.width * 3 + 8); // compressed buffer to write
  getmem(rowbuf2, wbitmap.width + 8); // to compress buffer (for 8,4,1 bitperpixel)
  Progress.per1 := 100 / wBitmap.Height;
  bitmapheight1 := wbitmap.height - 1;
  bitmapwidth1 := wbitmap.width - 1;
  for row := 0 to bitmapheight1 do
  begin
    // OnProgress
    with Progress do
      if assigned(fOnProgress) then
        fOnProgress(Sender, trunc(per1 * row));
    if Progress.Aborting^ then
      break;
    //
    pbx := wbitmap.ScanLine[row];
    case xBitsPixel of
      24:
        begin
          for c := 2 downto 0 do
          begin
            if ph.Encoding = 1 then
              rb := CompressRLE(rowbuf, pbx, wbitmap.width, c, 3)
            else
            begin
              for col := 0 to bitmapwidth1 do
                rowbuf^[col] := pbx^[col * 3 + c];
              rb := ph.Bytes_Per_Line;
            end;
            SafeStreamWrite(fs, Progress.Aborting^, rowbuf^, rb);
          end;
        end;
      8:
        begin
          for col := 0 to bitmapWidth1 do
            rowbuf2[col] := qt.RGBIndex[PRGBROW(pbx)^[col]];
          if ph.encoding = 1 then
          begin
            rb := CompressRLE(rowbuf, rowbuf2, wbitmap.width, 0, 1);
            SafeStreamWrite(fs, Progress.Aborting^, rowbuf^, rb);
          end
          else
            SafeStreamWrite(fs, Progress.Aborting^, rowbuf2^, ph.Bytes_Per_Line);
        end;
      4:
        begin
          col := 0;
          bcol := 0;
          while col < wbitmap.width do
          begin
            rowbuf2[bcol] := qt.RGBIndex[PRGBROW(pbx)^[col]] shl 4;
            inc(col);
            if col = wbitmap.width then
            begin
              inc(bcol);
              break;
            end;
            rowbuf2[bcol] := rowbuf2[bcol] or qt.RGBIndex[PRGBROW(pbx)^[col]];
            inc(col);
            inc(bcol);
          end; // all'uscita bcol è il numero di byte occupati dalla riga
          if ph.encoding = 1 then
          begin
            rb := CompressRLE(rowbuf, rowbuf2, bcol, 0, 1);
            SafeStreamWrite(fs, Progress.Aborting^, rowbuf^, rb);
          end
          else
            SafeStreamWrite(fs, Progress.Aborting^, rowbuf2^, ph.Bytes_Per_Line);
        end;
      1:
        begin
          col := wbitmap.width shr 3;
          if (wbitmap.width mod 8) <> 0 then
            inc(col);
          if ph.encoding = 1 then
          begin
            rb := CompressRLE(rowbuf, pbx, col, 0, 1);
            SafeStreamWrite(fs, Progress.Aborting^, rowbuf^, rb);
          end
          else
            SafeStreamWrite(fs, Progress.Aborting^, pbx^, ph.Bytes_Per_Line);
        end;
    end;
  end;
  //
  freemem(rowbuf);
  freemem(rowbuf2);
  //
  if (xBitsPixel = 8) and not Progress.Aborting^ then
  begin
    bb := 12;
    fs.Write(bb, 1);
    // scrive colormap 256
    SafeStreamWrite(fs, Progress.Aborting^, palette256, 3 * 256);
  end;
  //
  if FreeW then
    FreeAndNil(WBitmap);
  if assigned(qt) then
    FreeAndNil(qt);
end;

function IEDCXReadOffsets(fs:TStream; var count:integer):pdwordarray;
begin
  getmem(result,1024*sizeof(integer));
  count:=0;
  while count<1024 do
  begin
    fs.Read(result[count],sizeof(integer));
    if result[count]=0 then
      break;
    inc(count);
  end;
end;

function IEDCXTryStream(fs:TStream):boolean;
var
  l:int64;
  v,i:integer;
  table:pdwordarray;
  tablec:integer;
  fssize:int64;
begin
  l:=fs.Position;
  fs.Read(v,sizeof(integer));

  // check magic number
  result:= (v = 987654321);

  // check offsets
  if result then
  begin
    fssize:=fs.Size;
    table:=IEDCXReadOffsets(fs,tablec);
    for i:=0 to tablec-1 do
      if (table[i]>=fssize) then
      begin
        result:=false;
        break;
      end;
    freemem(table);
  end;

  fs.Position:=l;
end;

function IEDCXCountStream(fs:TStream):integer;
var
  table:pdwordarray;
  l:int64;
  v:integer;
begin
  l:=fs.Position;
  fs.Read(v,sizeof(integer)); // magic number
  table:=IEDCXReadOffsets(fs,result);
  freemem(table);
  fs.Position:=l;
end;

function IEDCXGetPCXSizes(fs:TStream; table:pdwordarray; tablecount:integer):pintegerarray;
var
  i,j:integer;
  m:dword;
begin
  // extract block sizes
  getmem(result,tablecount*sizeof(integer));
  for i:=0 to tablecount-1 do
  begin
    m:=dword(fs.Size)-table[i];
    for j:=0 to tablecount-1 do
      if (i<>j) and (table[j]>table[i]) and ((table[j]-table[i])<m) then
        m:=table[j]-table[i];
    result[i]:=m;
  end;
end;

procedure IEDCXReadStream(fs: TStream; Bitmap: TIEBitmap; var IOParams: TIOParamsVals; var Progress: TProgressRec; Preview: boolean);
var
  table:pdwordarray;
  tablecount:integer;
  sizes:pintegerarray;
  v:integer;
begin
  if not IEDCXTryStream(fs) then
  begin
    Progress.Aborting^:=true;
    exit;
  end;

  // read magic number (already verified by IEDCXTryStream)
  fs.Read(v,sizeof(integer));

  // read header
  table:=IEDCXReadOffsets(fs,tablecount);

  IOParams.DCX_ImageIndex:=ilimit(IOParams.DCX_ImageIndex,0,tablecount-1);
  fs.Position:=table[IOParams.DCX_ImageIndex];

  sizes:=IEDCXGetPCXSizes(fs,table,tablecount);

  ReadPcxStream(fs,Bitmap,IOParams,sizes[IOParams.DCX_ImageIndex],Progress,Preview);

  freemem(table);
  freemem(sizes);
end;

procedure IEDCXInsertStream(fs: TStream; bitmap: TIEBitmap; var IOParams: TIOParamsVals; var Progress: TProgressRec);
var
  table:pdwordarray;
  tablecount:integer;
  sizes:pintegerarray;
  i:integer;
  tempstream:TMemoryStream;
  newtable:pdwordarray;
  ii:integer;
begin

  if fs.Size>0 then
  begin

    if not IEDCXTryStream(fs) then
    begin
      Progress.Aborting^:=true;
      exit;
    end;

    // read magic number (already verified by IEDCXTryStream)
    fs.Read(i,sizeof(integer));
    // read header
    table:=IEDCXReadOffsets(fs,tablecount);

  end
  else
  begin
    tablecount:=0;
    table:=nil;
  end;

  sizes:=IEDCXGetPCXSizes(fs,table,tablecount);

  tempstream:=TMemoryStream.Create;

  // write magic number
  i:=987654321; tempstream.Write(i,sizeof(integer));

  newtable:=allocmem(sizeof(dword)*(tablecount+2));

  // write not valid table
  tempstream.Write(newtable^,sizeof(dword)*(tablecount+2));

  i:=0;
  ii:=0;
  repeat

    if IOParams.DCX_ImageIndex=i then
    begin
      newtable[ii]:=tempstream.position;
      inc(ii);
      WritePcxStream(tempstream,bitmap,IOParams,Progress);
    end;

    if i<tablecount then
    begin
      newtable[ii]:=tempstream.position;
      inc(ii);
      fs.Position:=table[i];
      tempstream.CopyFrom(fs,sizes[i]);
    end
    else
      break;

    inc(i);

  until false;

  // write valid table
  tempstream.Position:=4;
  tempstream.Write(newtable^,sizeof(dword)*(tablecount+2));

  fs.Size:=0;
  fs.CopyFrom(tempstream,0);
  FreeAndNil(tempstream);

  freemem(newtable);
  freemem(sizes);
  freemem(table);
end;

procedure IEDCXDeleteStream(fs:TStream; idx:integer);
var
  table:pdwordarray;
  tablecount:integer;
  sizes:pintegerarray;
  i:integer;
  tempstream:TMemoryStream;
  newtable:pdwordarray;
  ii:integer;
begin

  if not IEDCXTryStream(fs) then
    exit;

  // read magic number (already verified by IEDCXTryStream)
  fs.Read(i,sizeof(integer));
  // read header
  table:=IEDCXReadOffsets(fs,tablecount);

  idx:=ilimit(idx,0,tablecount-1);

  sizes:=IEDCXGetPCXSizes(fs,table,tablecount);

  tempstream:=TMemoryStream.Create;

  // write magic number
  i:=987654321; tempstream.Write(i,sizeof(integer));

  newtable:=allocmem(sizeof(dword)*(tablecount)); // includes terminator (zero)

  // write not valid table
  tempstream.Write(newtable^,sizeof(dword)*(tablecount));

  i:=0;
  ii:=0;

  for i:=0 to tablecount-1 do
    if idx<>i then
    begin
      newtable[ii]:=tempstream.position;
      inc(ii);
      fs.Position:=table[i];
      tempstream.CopyFrom(fs,sizes[i]);
    end;

  // write valid table
  tempstream.Position:=4;
  tempstream.Write(newtable^,sizeof(dword)*(tablecount));

  fs.Size:=0;
  fs.CopyFrom(tempstream,0);
  FreeAndNil(tempstream);

  freemem(newtable);
  freemem(sizes);
  freemem(table);
end;


end.
