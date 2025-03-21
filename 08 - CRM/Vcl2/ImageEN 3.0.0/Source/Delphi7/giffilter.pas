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

unit giffilter;

{$R-}
{$Q-}

{$I ie.inc}

interface

uses Windows, Graphics, classes, sysutils, ImageEn, ImageEnIO, ImageEnProc, hyiedefs, hyieutils;

type

  // main header / screen descriptor
  TGIFHeader = packed record
    // GIF magic
    id: array[0..5] of char;
    // screen descriptor
    WinWidth: word; // window width
    WinHeight: word; // window height
    Flags: byte; // Flags
    Background: byte; // Background
    Ratio: byte; // Aspect ratio   dx/dy = (Ratio+15)/64
  end;

procedure ReadGIF(nf: string; OutBitmap: TIEBitmap; var numi: integer; var IOParams: TIOParamsVals; var Progress: TProgressRec; var AlphaChannel: TIEMask; IgnoreAlpha: boolean);
procedure ReadGIFStream(fs: TStream; OutBitmap: TIEBitmap; var numi: integer; var IOParams: TIOParamsVals; var Progress: TProgressRec; Preview: boolean; var AlphaChannel: TIEMask; IgnoreAlpha: boolean);
procedure WriteGIF(nf: string; bitmap: TIEBitmap; var IOParams: TIOParamsVals; var Progress: TProgressRec);
procedure WriteGIFStream(fs: TStream; bitmap: TIEBitmap; var IOParams: TIOParamsVals; var Progress: TProgressRec);
function _InsertGIFIm(nf: string; bitmap: TIEBitmap; var IOParams: TIOParamsVals; var Progress: TProgressRec): integer;
function _InsertGIFImStream(fs: TStream; bitmap: TIEBitmap; var IOParams: TIOParamsVals; var Progress: TProgressRec): integer;
procedure _GIFMakeAnimate(const nf: string; iters: word; windx, windy: integer);
function _DeleteGIFIm(nf: string; idx: integer; wr: boolean): integer;
function _CheckGIFAnimate(const nf: string): boolean;

implementation

uses NeurQuant, ImageEnView, ieview;

{$R-}

type
  // image descriptor
  TGIFImDes = packed record
    PosX: word; // X position
    PosY: word; // Y position
    Width: word; // width
    Height: word; // height
    Flags: byte; // Flags
  end;

  // Graphic control extension
  TGIFGCE = packed record
    Flags: byte; // Flags
    DelayTime: word; // wait time (1/100 seconds)
    TranspColor: byte; // transparent color
  end;

/////////////////////////////////////////////////////////////////////////////////////
// makes a gif animated

procedure _GIFMakeAnimate(const nf: string; iters: word; windx, windy: integer);
var
  fs: TFileStream;
  fm: TMemoryStream;
  head: TGIFHeader;
  // Dati nel campo FLAGS del Descrittore di schermo
  headDimGlobColormap: integer; // Dimensione Colormap globale
  headGlobalColormap: boolean; // Presenza colormap globale
  //
  bb: byte;
  ps: int64;
  buf: string[255];
begin
  {$ifdef IEPROFILE} try IEProfileBegin('_GIFMakeAnimate'); {$endif}
  fm := TMemoryStream.Create; // OUTPUT
  fs := TFileStream.create(nf, fmOpenRead or fmShareDenyWrite); // INPUT
  // Legge header e controlla validit� file GIF
  fs.read(head, sizeof(TGIFHeader));
  if (head.id[0] <> 'G') or (head.id[1] <> 'I') or (head.id[2] <> 'F') then
  begin
    FreeAndNil(fs);
    exit;
  end;
  // SALVA HEADER
  head.id[3] := '8';
  head.id[4] := '9';
  head.id[5] := 'a';
  head.WinWidth := imax(windx,head.WinWidth);   // 2.2.4
  head.WinHeight := imax(windy,head.WinHeight); // 2.2.4
  fm.Write(head, sizeof(TGIFHeader));
  // Decodifica campo FLAGS del Descrittore di schermo
  headDimGlobColormap := (head.Flags and $07);
  headGlobalColormap := (head.Flags and $80) <> 0;
  // Carica, se presente, la colormap globale
  if headGlobalColormap then
    fm.CopyFrom(fs, 3 * (2 shl headDimGlobColormap));
  // Verifica se GIF gi� animata
  ps := fs.Position; // salva posizione
  fs.read(bb, 1);
  if bb = $21 then
  begin
    // trovata estensione
    fs.read(bb, 1);
    if bb = $FF then
    begin
      // trovata comment label
      fs.read(buf[0], 1); // len
      fs.read(buf[1], ord(buf[0]));
      if buf = 'NETSCAPE2.0' then
        // Gi� animato, salta estensione
        inc(ps, 19);
    end;
  end;
  fs.position := ps;
  // write application extension (for animations)
  bb := $21;
  fm.Write(bb, 1); // extensione code
  bb := $FF;
  fm.Write(bb, 1); // comment label
  bb := 11;
  fm.Write(bb, 1); // label length
  fm.Write('NETSCAPE2.0', 11); // !!
  bb := 3;
  fm.Write(bb, 1); // subblock length
  bb := 1;
  fm.Write(bb, 1); //
  fm.Write(iters, 2); // iterations count
  bb := 0;
  fm.Write(bb, 1); // end
  // save remaining part
  fm.CopyFrom(fs, fs.size - fs.position);
  //
  FreeAndNil(fs);
  fm.SaveToFile(nf);
  FreeAndNil(fm);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure SafeCopyFrom(Dest, Source: TStream; len: integer);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('SafeCopyFrom'); {$endif}
  Dest.CopyFrom(Source, imin(len, Source.size - Source.position));
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

/////////////////////////////////////////////////////////////////////////////////////
// Elimina l'immagine idx da un file GIF
// Il file GIF deve esistere
// rest. numero immagini contenute nella GIF
// wr: se true riscrive il file (wr=false � utile per contare il numero di immagini presenti)

function _DeleteGIFIm(nf: string; idx: integer; wr: boolean): integer;
var
  fs: TFileStream;
  fm: TMemoryStream;
  head: TGIFHeader;
  imdesc: TGIFImDes;
  bb: byte;
  // Dati nel campo FLAGS del Descrittore di schermo
  headDimGlobColormap: integer; // Dimensione Colormap globale
  headGlobalColormap: boolean; // Presenza colormap globale
  // Dati nel campo FLAGS del descrittore dell'immagine
  imDimLocalColormap: integer; // Dimensione colormap locale
  imLocalColormap: boolean; // Presenza colormap locale
  // estensioni
  ExtType: byte; // tipo estensione
  ExtLen: byte; // lunghezza estensione
  //
  numi: integer; // numero immagini
  xnumi: integer; // numero immagini - quella cancellata
begin
  {$ifdef IEPROFILE} try IEProfileBegin('_DeleteGIFIm'); {$endif}
  result := 0;
  numi := 0;
  xnumi := 0;
  fm := TMemoryStream.Create; // OUTPUT
  fs := TFileStream.create(nf, fmOpenRead or fmShareDenyWrite); // INPUT
  try
    // Legge header e controlla validit� file GIF
    fs.read(head, sizeof(TGIFHeader));
    if (head.id[0] <> 'G') or (head.id[1] <> 'I') or (head.id[2] <> 'F') then
    begin
      result := 0;
      exit;
    end;
    // SALVA HEADER
    head.id[3] := '8';
    head.id[4] := '9';
    head.id[5] := 'a';
    fm.Write(head, sizeof(TGIFHeader));
    // Decodifica campo FLAGS del Descrittore di schermo
    headDimGlobColormap := (head.Flags and $07);
    headGlobalColormap := (head.Flags and $80) <> 0;
    // Carica e salva, se presente, la colormap globale
    if headGlobalColormap then
      SafeCopyFrom(fm, fs, 3 * (2 shl headDimGlobColormap));
    //
    repeat
      fs.read(bb, 1);
      if fs.Position >= fs.size then // fs.size is acceptable, $3B should allow to exit
        bb := $3B;
      case bb of
        $2C: // Descrittore dell'immagine
          begin
            fs.read(imdesc, sizeof(TGIFImDes));
            // Decodifica campo FLAGS descrittore dell'immagine
            imDimLocalColormap := (imdesc.Flags and $07);
            imLocalColormap := (imdesc.Flags and $80) <> 0;
            if numi <> idx then
            begin
              inc(xnumi);
              // SALVA DESCRITTORE IMMAGINE
              fm.Write(bb, 1);
              fm.Write(imdesc, sizeof(TGIFImDes));
              // Carica e salva, se presente, la colormap locale
              if imLocalColormap then
                SafeCopyFrom(fm, fs, 3 * (2 shl imDimLocalColormap));
              // Carica e salva dati immagine
              fs.read(bb, 1); // legge dimensione bit lzw
              fm.Write(bb, 1); // scrive dimensione bit lzw
              repeat
                fs.read(bb, 1); // legge dim. blocco
                fm.Write(bb, 1); // scrive dim. blocco
                if fs.position + bb > fs.size then
                  exit;
                if bb > 0 then
                  SafeCopyFrom(fm, fs, bb);
              until (bb = 0) or (fs.position >= fs.size);
            end
            else
            begin
              if imLocalColormap then
                // salta colormap
                fs.Seek(3 * (2 shl imDimLocalColormap), soFromCurrent);
              // salta immagine
              fs.read(bb, 1); // dim bit
              repeat
                fs.read(bb, 1); // dim blocco
                fs.Seek(bb, soFromCurrent);
              until (bb = 0) or (fs.position >= fs.size);
            end;
            inc(numi);
          end;
        $21: // Estensioni
          begin
            fs.read(ExtType, 1); // tipo estensione
            if (ExtType = $F9) and (idx = numi) then
            begin
              // graphic control extension dell'immagine da cancellare, saltalo
              repeat
                fs.read(ExtLen, 1); // lunghezza estensione (0=fine)
                fs.seek(ExtLen, soFromCurrent); // salta
              until (ExtLen = 0) or (fs.Position >= fs.size);
            end
            else
            begin
              bb := $21;
              fm.Write(bb, 1); // salva marcatore estensione
              fm.Write(ExtType, 1); // salva tipo estensione
              repeat
                fs.read(ExtLen, 1); // lunghezza estensione (0=fine)
                fm.Write(ExtLen, 1);
                if ExtLen > 0 then
                begin
                  if (ExtLen + fs.position) > fs.size then
                    SafeCopyFrom(fm, fs, fs.size - fs.position)
                  else
                    SafeCopyFrom(fm, fs, ExtLen);
                end;
              until (ExtLen = 0) or (fs.Position >= fs.size);
            end;
          end;
        $3B: // end of GIF
          begin
            bb := $3B;
            fm.Write(bb, 1);
            break;
          end;
      end; // end of CASE
    until false;
  finally
    FreeAndNil(fs);
    if wr then
      fm.SaveToFile(nf);
    FreeAndNil(fm);
    result := xnumi;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// Restituisce True se la GIF � animata (NETSCAPE...)

function _CheckGIFAnimate(const nf: string): boolean;
var
  fs: TFileStream;
  head: TGIFHeader;
  // Dati nel campo FLAGS del Descrittore di schermo
  headDimGlobColormap: integer; // Dimensione Colormap globale
  headGlobalColormap: boolean; // Presenza colormap globale
  //
  bb: byte;
  buf: string[255];
begin
  {$ifdef IEPROFILE} try IEProfileBegin('_CheckGIFAnimate'); {$endif}
  fs := TFileStream.create(nf, fmOpenRead or fmShareDenyWrite); // INPUT
  // Legge header e controlla validit� file GIF
  fs.read(head, sizeof(TGIFHeader));
  if (head.id[0] <> 'G') or (head.id[1] <> 'I') or (head.id[2] <> 'F') then
  begin
    FreeAndNil(fs);
    result := false;
    exit;
  end;
  // Decodifica campo FLAGS del Descrittore di schermo
  headDimGlobColormap := (head.Flags and $07);
  headGlobalColormap := (head.Flags and $80) <> 0;
  // Salta, se presente, la colormap globale
  if headGlobalColormap then
    fs.Seek(3 * (2 shl headDimGlobColormap), soFromCurrent);
  // Verifica se GIF animata
  result := false;
  fs.read(bb, 1);
  if bb = $21 then
  begin
    // trovata estensione
    fs.read(bb, 1);
    if bb = $FF then
    begin
      // trovata comment label
      fs.read(buf[0], 1); // len
      fs.read(buf[1], ord(buf[0]));
      if buf = 'NETSCAPE2.0' then
        // ok
        result := true;
    end;
  end;
  FreeAndNil(fs);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

/////////////////////////////////////////////////////////////////////////////////////
// Legge GIF da file
// Outbitmap: bitmap di output (deve essere gi� stato istanziato
// numi (output) : numero immagini presenti nel file

procedure ReadGIF(nf: string; OutBitmap: TIEBitmap; var numi: integer; var IOParams: TIOParamsVals; var Progress: TProgressRec; var AlphaChannel: TIEMask; IgnoreAlpha: boolean);
var
  fs: TFileStream;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('ReadGIF'); {$endif}
  fs := TFileStream.create(nf, fmOpenRead or fmShareDenyWrite);
  try
    ReadGIFStream(fs, OutBitmap, numi, IOParams, Progress, false, AlphaChannel, IgnoreAlpha);
  finally
    FreeAndNil(fs);
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

/////////////////////////////////////////////////////////////////////////////////////
// Legge GIF da stream
// Outbitmap: bitmap di output (deve essere gi� stato istanziato), e pu� essere di tipo
// pf24bit o pf1bit (Black & White).
// numi (output) : numero immagini presenti nel file
// Al termine posiziona lo Stream esattamente alla fine del blocco GIF.

procedure ReadGIFStream(fs: TStream; OutBitmap: TIEBitmap; var numi: integer; var IOParams: TIOParamsVals; var Progress: TProgressRec; Preview: boolean; var AlphaChannel: TIEMask; IgnoreAlpha: boolean);
var
  idx, ii: integer;
  head: TGIFHeader;
  imdesc: TGIFImDes;
  GIFGCE: TGIFGCE;
  bb: byte;
  fdata: pByteArray;
  qq:int64;
  q, x, y: integer;
  ppx: pRGB;
  px_byte, bx, px: pbyte;
  IsTrueColor: boolean;
  pc: pchar;
  // Dati nel campo FLAGS del Descrittore di schermo
  headDimGlobColormap: integer; // Dimensione Colormap globale
  headGlobalColormap: boolean; // Presenza colormap globale
  // Colormap globale
  GlobalColorMap: array[0..255] of TRGB; // attenzione! r,g,b invertiti!
  LocalColorMap: array[0..255] of TRGB; // attenzione! r,g,b invertiti!
  // Dati nel campo FLAGS del descrittore dell'immagine
  imDimLocalColormap: integer; // Dimensione colormap locale
  imInterlLocal: boolean; // Immagine interlacciata = true
  imLocalColormap: boolean; // Presenza colormap locale
  // estensioni
  ExtType: byte; // tipo estensione
  ExtLen: byte; // lunghezza estensione
  //
  fssize:int64;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('ReadGIFStream'); {$endif}
  numi:=0;
  if assigned(Progress.fOnProgress) then
    Progress.fOnProgress(Progress.Sender, 0);
  if Progress.Aborting^ then
    exit;
  fssize:=fs.Size;
  fillchar(GIFGCE, sizeof(GIFGCE), 0);
  idx := IOParams.GIF_ImageIndex;
  // Legge header e controlla validit� file GIF
  fs.read(head, sizeof(TGIFHeader));
  if (head.id[0] <> 'G') or (head.id[1] <> 'I') or (head.id[2] <> 'F') then
  begin
    Progress.Aborting^ := True;
    exit;
  end;
  IOParams.GIF_Version := head.id + #0;
  //
  IOParams.GIF_WinWidth := head.WinWidth;
  IOParams.GIF_WinHeight := head.WinHeight;
  IOParams.GIF_Ratio := head.Ratio;
  IOParams.DpiX := gDefaultDPIX;
  IOParams.DpiY := gDefaultDPIY;
  IOParams.SamplesPerPixel := 1;
  //
  // Decodifica campo FLAGS del Descrittore di schermo
  headDimGlobColormap := (head.Flags and $07);
  headGlobalColormap := (head.Flags and $80) <> 0;
  // Carica, se presente, la colormap globale
  if headGlobalColormap then
  begin
    fs.read(GlobalColorMap, 3 * (2 shl headDimGlobColormap));
    // Inverte valori colormap (rgb->bgr)
    for q := 0 to (2 shl headDimGlobColormap) - 1 do
      bswap(GlobalColorMap[q].r, GlobalColorMap[q].b);
    IOParams.GIF_Background := GlobalColorMap[head.background];
  end;
  //
  if fs.position >= fssize then
    Progress.Aborting^ := true;
  fdata := nil; // prevents warning
  numi := 0;
  repeat
    if Progress.Aborting^ then
      break;
    fs.read(bb, 1);
    if fs.Position >= fssize then // fs.size � accettabile, $3B dovrebbe uscire da solo
      bb := $3B;
    case bb of
      $2C: // Descrittore dell'immagine
        begin
          fs.read(imdesc, sizeof(TGIFImDes));
          // Decodifica campo FLAGS descrittore dell'immagine
          imDimLocalColormap := (imdesc.Flags and $07);
          imInterlLocal := (imdesc.Flags and $40) <> 0;
          imLocalColormap := (imdesc.Flags and $80) <> 0;
          // Carica, se presente, la colormap locale
          if imLocalColormap then
            fs.read(LocalColorMap, 3 * (2 shl imDimLocalColormap));
          if numi = idx then
          begin
            if assigned(Progress.fOnProgress) then
              Progress.fOnProgress(Progress.Sender, 30);
            if Progress.Aborting^ then
              break;
            //
            if imLocalColormap then
            begin
              // Inverte valori colormap (rgb->bgr)
              for q := 0 to (2 shl imDimLocalColormap) - 1 do
                bswap(LocalColorMap[q].r, LocalColorMap[q].b);
              IOParams.GIF_TranspColor := LocalColorMap[GIFGCE.TranspColor];
            end
            else
              IOParams.GIF_TranspColor := GlobalColorMap[GIFGCE.TranspColor];
            // Riempie struttura GIFInfo
            IOParams.GIF_XPos := imdesc.PosX;
            IOParams.GIF_YPos := imdesc.PosY;
            IOParams.Width := imdesc.Width;
            IOParams.Height := imdesc.Height;
            IOParams.GIF_DelayTime := GIFGCE.DelayTime;
            IOParams.GIF_FlagTranspColor := (GIFGCE.Flags and $01) <> 0;
            IOParams.GIF_Interlaced := imInterlLocal;
            IOParams.GIF_Action := TIEGIFAction((GIFGCE.Flags and $1C) shr 2);
            if Preview then
            begin
              // salta immagine per Preview
              fs.read(bb, 1); // dim bit
              repeat
                fs.read(bb, 1); // dim blocco
                fs.Seek(bb, soFromCurrent);
              until (bb = 0) or (fs.position >= fssize);
            end
            else
            begin
              // decode image
              getmem(FData, imdesc.Width * imdesc.Height);
              qq := fs.position;
              if assigned(IOParams.GIF_LZWDecompFunc) then
                IOParams.GIF_LZWDecompFunc(fs, imdesc.Height, imdesc.Width, imInterlLocal, pchar(FData))
              else if assigned(DefGIF_LZWDECOMPFUNC) then
                DefGIF_LZWDECOMPFUNC(fs, imdesc.Height, imdesc.Width, imInterlLocal, pchar(FData));
              if qq = fs.position then
              begin
                freemem(FData);
                Progress.Aborting^ := True;
                break;
              end;
              if assigned(Progress.fOnProgress) then
                Progress.fOnProgress(Progress.Sender, 70);
              if Progress.Aborting^ then
              begin
                freemem(FData);
                break;
              end;
            end;
            if IOParams.ColorMap <> nil then
              freemem(IOParams.ColorMap);
            if imLocalColormap then
              // USA COLORMAP LOCALE
              with IOParams do
              begin
                BitsPerSample := imDimLocalColormap + 1;
                fColorMapCount := (1 shl BitsPerSample);
                getmem(fColorMap, ColorMapCount * sizeof(TRGB));
                CopyMemory(ColorMap, @LocalColorMap, (1 shl BitsPerSample) * sizeof(TRGB));
              end
            else
              // USA COLORMAP GLOBALE
              with IOParams do
              begin
                BitsPerSample := headDimGlobColormap + 1;
                fColorMapCount := (1 shl BitsPerSample);
                getmem(fColorMap, ColorMapCount * sizeof(TRGB));
                CopyMemory(ColorMap, @GlobalColorMap, (1 shl BitsPerSample) * sizeof(TRGB));
              end;
            if not Preview then
            begin

              if (IOParams.BitsPerSample = 1) and (IOParams.ColorMapCount = 2) then
                IsTrueColor := not (EqualRGB(IOParams.ColorMap[0], CreateRGB(0, 0, 0)) and EqualRGB(IOParams.ColorMap[1], CreateRGB(255, 255, 255)))
              else
                IsTrueColor := IOParams.BitsPerSample <> 1;

              // this has been included to recognize some special kind of corrupted GIFs
              if IsTrueColor and ((imdesc.Width>65000) or (imdesc.Height>65000)) and (fssize<fs.Position+2000) then
              begin
                Progress.Aborting^:=true;
                break;
              end;

              if IsTrueColor then
              begin
                if IOParams.IsNativePixelFormat then
                  OutBitmap.Allocate(imdesc.Width, imdesc.Height, ie8p)
                else
                  OutBitmap.Allocate(imdesc.Width, imdesc.Height, ie24RGB);
              end
              else
                OutBitmap.Allocate(imdesc.Width, imdesc.Height, ie1g);
              if not IgnoreAlpha then
              begin
                if not assigned(AlphaChannel) then
                  AlphaChannel := TIEMask.Create;
                AlphaChannel.AllocateBits(imdesc.Width, imdesc.Height, 8);
                AlphaChannel.Fill(255);
              end;
              // converts FData to OutBitmap
              if IsTrueColor then
              begin
                if IOParams.IsNativePixelFormat then
                begin
                  // native format
                  for y := 0 to IOParams.ColorMapCount - 1 do
                    OutBitmap.Palette[y] := IOParams.ColorMap[y];
                  OutBitmap.PaletteUsed := 1 shl IOParams.BitsPerSample;
                  for y := 0 to imdesc.Height - 1 do
                  begin
                    px_byte := OutBitmap.ScanLine[y];
                    for x := 0 to imdesc.Width - 1 do
                    begin
                      ii := FData[x + y * imdesc.Width];
                      px_byte^ := ii;
                      inc(px_byte);
                      if (not IgnoreAlpha) and (GIFGCE.TranspColor = ii) and (IOParams.GIF_FlagTranspColor) then
                        AlphaChannel.SetPixel(x, y, 0);
                    end
                  end;
                end
                else
                begin
                  // convert to 24 bit per pixel
                  for y := 0 to imdesc.Height - 1 do
                  begin
                    ppx := OutBitmap.ScanLine[y];
                    for x := 0 to imdesc.Width - 1 do
                    begin
                      ii := FData[x + y * imdesc.Width];
                      ppx^ := IOParams.ColorMap^[ii];
                      inc(ppx);
                      if (not IgnoreAlpha) and (GIFGCE.TranspColor = ii) and (IOParams.GIF_FlagTranspColor) then
                        AlphaChannel.SetPixel(x, y, 0);
                    end
                  end;
                end;
              end
              else
              begin
                // B/W
                for y := 0 to imdesc.Height - 1 do
                begin
                  bx := OutBitmap.ScanLine[y];
                  px := @fdata[y * imdesc.width];
                  x := 0;
                  while x < imdesc.Width - 1 do
                  begin
                    bx^ := (px^ shl 7);
                    inc(px);
                    bx^ := bx^ or (px^ shl 6);
                    inc(px);
                    bx^ := bx^ or (px^ shl 5);
                    inc(px);
                    bx^ := bx^ or (px^ shl 4);
                    inc(px);
                    bx^ := bx^ or (px^ shl 3);
                    inc(px);
                    bx^ := bx^ or (px^ shl 2);
                    inc(px);
                    bx^ := bx^ or (px^ shl 1);
                    inc(px);
                    bx^ := bx^ or (px^ shl 0);
                    inc(px);
                    inc(bx);
                    inc(x, 8);
                  end;
                  // alpha
                  px := @fdata[y * imdesc.width];
                  for x := 0 to imdesc.Width - 1 do
                  begin
                    // 2.2.5
                    if (not IgnoreAlpha) and (GIFGCE.TranspColor = px^) and (IOParams.GIF_FlagTranspColor) then
                      AlphaChannel.SetPixel(x, y, 0);
                    inc(px);
                  end;
                end;
              end;
              freemem(FData);

              // verify alpha channel
              if not IgnoreAlpha then
              begin
                AlphaChannel.SyncFull;
                if AlphaChannel.Full then
                  FreeAndNil(AlphaChannel);
              end;

            end; // endif not preview
          end
          else
          begin
            // bypass image
            fs.read(bb, 1); // dim bit
            repeat
              fs.read(bb, 1); // dim block
              fs.Seek(bb, soFromCurrent);
            until (bb = 0) or (fs.position >= fssize);
          end;
          inc(numi);
        end;
      $21: // Extensions
        begin
          fs.read(ExtType, 1); // extension type
          if (ExtType = $F9) and (numi = idx) then
          begin
            // load GCE (Graphic Control Extension)
            fs.read(ExtLen, 1);
            fs.read(GIFGCE, sizeof(TGIFGCE));
            fs.read(ExtLen, 1);
          end
          else if (ExtType = $FE) then
          begin
            // load Comment Extension
            fs.read(ExtLen, 1);
            while (ExtLen > 0) and (fs.Position < fsSize) do
            begin
              getmem(pc, ExtLen + 1);
              fs.read(pc^, ExtLen);
              pc[ExtLen] := #0;
              if strlen(pc) > 0 then
                IOParams.GIF_Comments.Add(string(pc));
              freemem(pc);
              fs.read(ExtLen, 1); // comment length (0=end)
            end;
          end
          else
            // bypass extensions
            repeat
              fs.read(ExtLen, 1); // extension length (0=end)
              fs.seek(ExtLen, soFromCurrent); // bypass extensions
            until (ExtLen = 0) or (fs.Position >= fssize);
        end;
      $3B: // end GIF
        break;
    end; // end CASE
  until false;
  IOParams.GIF_ImageCount := numi;
  if assigned(Progress.fOnProgress) and not Progress.Aborting^ then
    Progress.fOnProgress(Progress.Sender, 100);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

/////////////////////////////////////////////////////////////////////////////////////
// Scrive l'immagine bitmap come GIF in un file come prima ed unica immagine a 256 colori
// elimina eventuale file con lo stesso nome
// bitmap deve essere a 24 bit
// salva sempre nella colormap globale

procedure WriteGIF(nf: string; bitmap: TIEBitmap; var IOParams: TIOParamsVals; var Progress: TProgressRec);
var
  fs: TFileStream;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('WriteGIF'); {$endif}
  fs := TFileStream.Create(nf, fmCreate);
  fs.size := 0;
  WriteGIFStream(fs, bitmap, IOParams, Progress);
  FreeAndNil(fs);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

/////////////////////////////////////////////////////////////////////////////////////
// Scrive l'immagine bitmap come GIF in uno stream come prima ed unica immagine
// elimina eventuale file con lo stesso nome
// bitmap deve essere pf24bit o pf1bit
// salva sempre nella colormap globale

procedure WriteGIFStream(fs: TStream; bitmap: TIEBitmap; var IOParams: TIOParamsVals; var Progress: TProgressRec);
var
  q: integer;
  head: TGIFHeader;
  imdesc: TGIFImDes;
  gce: TGIFGCE;
  GlobalColorMap: array[0..255] of TRGB; // attenzione! r,g,b invertiti!
  fdata: pByteArray;
  px_byte, fd: pbyte;
  bb: byte;
  ss: string;
  WBitmap: TIEBitmap;
  FreeW: boolean; // se true liberare WBitmap
  BackCol, ForeCol: TRGB;
  NCol: integer;
  row, col: integer;
  ppx: pRGB;
  qt: TIEQuantizer;
  pb: pbyte;
  xBitsPixel: integer;
  nullpr: TProgressRec;
  bitmapwidth1, bitmapheight1: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('WriteGIFStream'); {$endif}
  if assigned(Progress.fOnProgress) then
    Progress.fOnProgress(Progress.Sender, 0);
  if Progress.Aborting^ then
    exit;
  with nullpr do
  begin
    Aborting := Progress.Aborting;
    fOnProgress := nil;
    Sender := nil;
  end;
  FreeW := false;
  if (IOParams.BitsPerSample = 1) then
  begin
    // E' richiesto di salvare in monocromatico
    xBitsPixel := 1;
    if Bitmap.pixelformat = ie1g then
      WBitmap := Bitmap
    else
    begin
      // Converti a 1 bit
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
    xBitsPixel := IOParams.BitsPerSample;
    if Bitmap.PixelFormat = ie1g then
    begin
      // Converti a 24 bit
      WBitmap := TIEBitmap.Create;
      WBitmap.Assign(Bitmap);
      WBitmap.PixelFormat := ie24RGB;
      FreeW := true;
    end
    else
      WBitmap := Bitmap;
  end;
  NCol := 1 shl xBitsPixel;
  if bitmap.HasAlphaChannel then
  begin
    dec(NCol);
    IOParams.GIF_FlagTranspColor := true;
  end;
  // From here it writes only WBitmap, it can be pf24bit or pf1bit. From here IOParams.BitsPerSample and
  // IOParams.SamplesPerPIxel are ignored
  //
// prepare global colormap and FData
  qt := nil;
  getmem(FData, wbitmap.Width * wbitmap.Height + 9);
  bitmapheight1 := wbitmap.height - 1;
  bitmapwidth1 := wbitmap.width - 1;
  if WBitmap.pixelformat <> ie1g then
  begin
    // colors
    qt := TIEQuantizer.Create(wBitmap, GlobalColorMap, NCol);
    for row := 0 to bitmapheight1 do
    begin
      if WBitmap.PixelFormat = ie8p then
      begin
        // native format
        px_byte := wbitmap.ScanLine[row];
        for col := 0 to bitmapwidth1 do
        begin
          if bitmap.HasAlphaCHannel and (bitmap.alpha[col, row] < 255) then
            FData[col + row * wbitmap.Width] := NCol
          else
            FData[col + row * wbitmap.Width] := px_byte^;
          inc(px_byte);
        end;
      end
      else
      begin
        // subsample 24 bit
        ppx := wbitmap.ScanLine[row];
        for col := 0 to bitmapwidth1 do
        begin
          if bitmap.HasAlphaCHannel and (bitmap.alpha[col, row] < 255) then
            FData[col + row * wbitmap.Width] := NCol
          else
            FData[col + row * wbitmap.Width] := qt.RGBIndex[ppx^];
          inc(ppx);
        end;
      end;
    end;
  end
  else
  begin
    // black & white
    GlobalColorMap[0] := CreateRGB(0, 0, 0);
    GlobalColorMap[1] := CreateRGB(255, 255, 255);
    for row := 0 to bitmapheight1 do
    begin
      pb := wbitmap.scanline[row];
      fd := @fdata[row * wbitmap.width];
      col := 0;
      while col < wbitmap.width do
      begin
        fd^ := (pb^ and $80) shr 7;
        inc(fd);
        fd^ := (pb^ and $40) shr 6;
        inc(fd);
        fd^ := (pb^ and $20) shr 5;
        inc(fd);
        fd^ := (pb^ and $10) shr 4;
        inc(fd);
        fd^ := (pb^ and $08) shr 3;
        inc(fd);
        fd^ := (pb^ and $04) shr 2;
        inc(fd);
        fd^ := (pb^ and $02) shr 1;
        inc(fd);
        fd^ := (pb^ and $01);
        inc(fd);
        inc(pb);
        inc(col, 8);
      end;
    end;
  end;
  // inverte R con B
  for q := 0 to NCol - 1 do
    bswap(GlobalColorMap[q].r, GlobalColorMap[q].b);
  //
  if assigned(Progress.fOnProgress) then
    Progress.fOnProgress(Progress.Sender, 30);
  if Progress.Aborting^ then
  begin
    if FreeW then
      FreeAndNil(WBitmap);
    if assigned(qt) then
      FreeAndNil(qt);
    freemem(FData);
    exit;
  end;
  // prepara header e lo scrive
  CopyMemory(@head.id[0], pchar(IOParams.GIF_Version), 6);
  head.WinWidth := wbitmap.width;
  head.WinHeight := wbitmap.height;
  head.Flags := (xBitsPixel - 1) or ((xBitsPixel - 1) shl 4) or $80;
  if wbitmap.pixelformat = ie24RGB then
    head.Background := qt.RGBIndex[IOParams.GIF_Background]
  else
    head.background := _GetSimilColor(GlobalColorMap, NCol, IOParams.GIF_Background);
  head.Ratio := 0;
  SafeStreamWrite(fs, Progress.Aborting^, head, sizeof(TGIFHeader));
  // scrive colormap globale
  if bitmap.HasAlphaChannel then
    SafeStreamWrite(fs, Progress.Aborting^, GlobalColorMap, 3 * (NCol + 1))
  else
    SafeStreamWrite(fs, Progress.Aborting^, GlobalColorMap, 3 * NCol);
  // prepara e scrive Graphic Control Extension (GCE)
  gce.Flags := ord(IOParams.GIF_FlagTranspColor);
  gce.Flags := gce.Flags or (integer(IOParams.GIF_Action) shl 2);
  gce.DelayTime := IOParams.GIF_DelayTime;
  if bitmap.HasAlphaChannel then
  begin
    gce.TranspColor := NCol;
  end
  else
  begin
    if wbitmap.pixelformat = ie24RGB then
      gce.TranspColor := qt.RGBIndex[IOParams.GIF_TranspColor]
    else
      gce.TranspColor := _GetSimilColor(GlobalColorMap, NCol, IOParams.GIF_TranspColor);
  end;
  bb := $21;
  SafeStreamWrite(fs, Progress.Aborting^, bb, 1); // marca estensione
  bb := $F9;
  SafeStreamWrite(fs, Progress.Aborting^, bb, 1); // marca come graphic control extension
  bb := sizeof(TGIFGCE);
  SafeStreamWrite(fs, Progress.Aborting^, bb, 1); // dimensione estensione
  SafeStreamWrite(fs, Progress.Aborting^, gce, sizeof(TGIFGCE)); // estensione
  bb := 0;
  SafeStreamWrite(fs, Progress.Aborting^, bb, 1); // fine estensione
  // prepara descrittore immagine e lo scrive
    // no colormap locale
  imdesc.PosX := IOParams.GIF_XPos;
  imdesc.PosY := IOParams.GIF_YPos;
  imdesc.Width := wbitmap.width;
  imdesc.Height := wbitmap.height;
  imdesc.Flags := (ord(IOParams.GIF_Interlaced) shl 6);
  bb := $2C; // identificatore descrittore immagine
  SafeStreamWrite(fs, Progress.Aborting^, bb, 1);
  SafeStreamWrite(fs, Progress.Aborting^, imdesc, sizeof(TGIFImDes));
  //
  if assigned(Progress.fOnProgress) then
    Progress.fOnProgress(Progress.Sender, 70);
  if Progress.Aborting^ then
  begin
    if FreeW then
      FreeAndNil(WBitmap);
    if assigned(qt) then
      FreeAndNil(qt);
    freemem(FData);
    exit;
  end;
  // comprime e scrive immagine
  if assigned(IOParams.GIF_LZWCompFunc) then
    IOParams.GIF_LZWCompFunc(fs, wbitmap.Height, wbitmap.Width, IOParams.GIF_Interlaced, pchar(FData), xBitsPixel)
  else if assigned(DefGIF_LZWCOMPFUNC) then
    DefGIF_LZWCOMPFUNC(fs, wbitmap.Height, wbitmap.Width, IOParams.GIF_Interlaced, pchar(FData), xBitsPixel)
  else
  begin
    if FreeW then
      FreeAndNil(WBitmap);
    if assigned(qt) then
      FreeAndNil(qt);
    freemem(FData);
    Progress.Aborting^ := True;
    exit;
  end;
  if FreeW then
    FreeAndNil(WBitmap);
  if assigned(qt) then
    FreeAndNil(qt);
  freemem(FData);
  // insert comments
  bb := $21;
  SafeStreamWrite(fs, Progress.Aborting^, bb, 1);
  bb := $FE;
  SafeStreamWrite(fs, Progress.Aborting^, bb, 1);
  for q := 0 to IOParams.GIF_Comments.Count - 1 do
  begin
    bb := length(IOParams.GIF_Comments[q]);
    SafeStreamWrite(fs, Progress.Aborting^, bb, 1);
    ss := IOParams.GIF_Comments[q];
    SafeStreamWrite(fs, Progress.Aborting^, ss[1], bb);
  end;
  bb := $0;
  SafeStreamWrite(fs, Progress.Aborting^, bb, 1);
  //
  bb := $3B; // identificatore fine GIF
  SafeStreamWrite(fs, Progress.Aborting^, bb, 1);
  if assigned(Progress.fOnProgress) then
    Progress.fOnProgress(Progress.Sender, 100);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

/////////////////////////////////////////////////////////////////////////////////////
// Inserisce un'immagine ad un file GIF nella posizione idx
// per idx=0 inserisce all'inizio, se idx � maggiore del numero di immagini gi�
// memorizzate inserisce alla fine.
// Il file GIF deve esistere
// bitmap deve essere a pf24bit o pf1bit
// salva sempre nella colormap globale se c'� una sola immagine altrimenti ogni
// immagine ha la sua colormap.
// rest. numero immagini contenute nella GIF

function _InsertGIFIm(nf: string; bitmap: TIEBitmap; var IOParams: TIOParamsVals; var Progress: TProgressRec): integer;
var
  fs: TFileStream;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('_InsertGIFIm'); {$endif}
  fs := TFileStream.Create(nf, fmOpenReadWrite);
  result := _InsertGIFImStream(fs, bitmap, IOParams, Progress);
  FreeAndNil(fs);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

/////////////////////////////////////////////////////////////////////////////////////
// Inserisce un'immagine nella posizione idx
// per idx=0 inserisce all'inizio, se idx � maggiore del numero di immagini gi�
// memorizzate inserisce alla fine.
// Lo stream GIF deve esistere
// bitmap deve essere a pf24bit o pf1bit
// salva sempre nella colormap globale se c'� una sola immagine altrimenti ogni
// immagine ha la sua colormap.
// rest. numero immagini contenute nella GIF

function _InsertGIFImStream(fs: TStream; bitmap: TIEBitmap; var IOParams: TIOParamsVals; var Progress: TProgressRec): integer;
var
  p1:int64;
  idx: integer;
  fm: TMemoryStream;
  head: TGIFHeader;
  imdesc: TGIFImDes;
  gce: TGIFGCE;
  bb: byte;
  px_byte, fd: pbyte;
  fdata: pByteArray;
  // Dati nel campo FLAGS del Descrittore di schermo
  headDimGlobColormap: integer; // Dimensione Colormap globale
  headGlobalColormap: boolean; // Presenza colormap globale
  // Colormap globale
  LocalColorMap: array[0..255] of TRGB; // attenzione! r,g,b invertiti!
  // Dati nel campo FLAGS del descrittore dell'immagine
  imDimLocalColormap: integer; // Dimensione colormap locale
  imLocalColormap: boolean; // Presenza colormap locale
  // estensioni
  ExtType: byte; // tipo estensione
  ExtLen: byte; // lunghezza estensione
  //
  numi: integer; // numero immagini
  //
  FreeW: boolean; // se true liberare WBitmap
  xBitsPixel: integer;
  WBitmap: TIEBitmap;
  BackCol, ForeCol: TRGB;
  NCol: integer;
  nullpr: TProgressRec;
  //
  procedure InsertImage;
  var
    qt: TIEQuantizer;
    ppx: pRGB;
    pb: pbyte;
    row, col, q: integer;
  begin
    {$ifdef IEPROFILE} try IEProfileBegin('_InsertGIFImStream.InsertImage'); {$endif}
    qt := nil;
    getmem(FData, wbitmap.Width * wbitmap.Height);
    if WBitmap.pixelformat <> ie1g then
    begin
      // colors
      qt := TIEQuantizer.Create(wBitmap, LocalColorMap, NCol);
      for row := 0 to wbitmap.height - 1 do
      begin
        if wbitmap.PixelFormat = ie8p then
        begin
          // native format
          px_byte := wbitmap.ScanLine[row];
          for col := 0 to wbitmap.width - 1 do
          begin
            if bitmap.HasAlphaCHannel and (bitmap.alpha[col, row] < 255) then
              FData[col + row * wbitmap.Width] := NCol
            else
              FData[col + row * wbitmap.Width] := px_byte^;
            inc(px_byte);
          end;
        end
        else
        begin
          // subsample 24 bit
          ppx := wbitmap.ScanLine[row];
          for col := 0 to wbitmap.width - 1 do
          begin
            if bitmap.HasAlphaCHannel and (bitmap.alpha[col, row] < 255) then
              FData[col + row * wbitmap.Width] := NCol
            else
              FData[col + row * wbitmap.Width] := qt.RGBIndex[ppx^];
            inc(ppx);
          end;
        end;
      end;
    end
    else
    begin
      // black & white
      LocalColorMap[0] := CreateRGB(0, 0, 0);
      LocalColorMap[1] := CreateRGB(255, 255, 255);
      for row := 0 to wbitmap.height - 1 do
      begin
        pb := wbitmap.scanline[row];
        fd := @fdata[row * wbitmap.width];
        col := 0;
        while col < wbitmap.width do
        begin
          fd^ := (pb^ and $80) shr 7;
          inc(fd);
          fd^ := (pb^ and $40) shr 6;
          inc(fd);
          fd^ := (pb^ and $20) shr 5;
          inc(fd);
          fd^ := (pb^ and $10) shr 4;
          inc(fd);
          fd^ := (pb^ and $08) shr 3;
          inc(fd);
          fd^ := (pb^ and $04) shr 2;
          inc(fd);
          fd^ := (pb^ and $02) shr 1;
          inc(fd);
          fd^ := (pb^ and $01);
          inc(fd);
          inc(pb);
          inc(col, 8);
        end;
      end;
    end;
    // inverte R con B
    for q := 0 to NCol - 1 do
      bswap(LocalColorMap[q].r, LocalColorMap[q].b);
    // prepara e scrive Graphic Control Extension (GCE)
    gce.Flags := ord(IOParams.GIF_FlagTranspColor);
    gce.Flags := gce.Flags or (integer(IOParams.GIF_Action) shl 2);
    gce.DelayTime := IOParams.GIF_DelayTime;
    if bitmap.HasAlphaChannel then
    begin
      gce.TranspColor := NCol;
    end
    else
    begin
      if wbitmap.pixelformat = ie24RGB then
        gce.TranspColor := qt.RGBIndex[IOParams.GIF_TranspColor]
      else
        gce.TranspColor := _GetSimilColor(LocalColorMap, NCol, IOParams.GIF_TranspColor);
    end;
    bb := $21;
    fm.write(bb, 1); // marca estensione
    bb := $F9;
    fm.write(bb, 1); // marca come graphic control extension
    bb := sizeof(TGIFGCE);
    fm.write(bb, 1); // dimensione estensione
    fm.write(gce, sizeof(TGIFGCE)); // estensione
    bb := 0;
    fm.write(bb, 1); // fine estensione
    // prepara descrittore immagine e lo scrive
      // colormap locale
    imdesc.PosX := IOParams.GIF_XPos;
    imdesc.PosY := IOParams.GIF_YPos;
    imdesc.Width := wbitmap.width;
    imdesc.Height := wbitmap.height;
    imdesc.Flags := (xBitsPixel - 1) or (ord(IOParams.GIF_Interlaced) shl 6) or $80;
    // scrive descrittore immagine
    bb := $2C; // identificatore descrittore immagine
    fm.write(bb, 1);
    fm.write(imdesc, sizeof(TGIFImDes));
    // scrive local colormap
    if bitmap.HasAlphaChannel then
      fm.write(LocalColorMap, 3 * (NCol + 1))
    else
      fm.write(LocalColorMap, 3 * NCol);
    // comprime e scrive immagine
    if assigned(IOParams.GIF_LZWCompFunc) then
      IOParams.GIF_LZWCompFunc(fm, wbitmap.Height, wbitmap.Width, IOParams.GIF_Interlaced, pchar(FData), xBitsPixel)
    else if assigned(DefGIF_LZWCOMPFUNC) then
      DefGIF_LZWCOMPFUNC(fm, wbitmap.Height, wbitmap.Width, IOParams.GIF_Interlaced, pchar(FData), xBitsPixel)
    else
    begin
      freemem(FData);
      Progress.Aborting^ := False;
    end;
    freemem(FData);
    if assigned(qt) then
      FreeAndNil(qt);
    {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
  end;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('_InsertGIFImStream'); {$endif}
  result := 0;
  if assigned(Progress.fOnProgress) then
    Progress.fOnProgress(Progress.Sender, 0);
  if Progress.Aborting^ then
    exit;
  //
  with nullpr do
  begin
    Aborting := Progress.Aborting;
    fOnProgress := nil;
    Sender := nil;
  end;
  fm := TMemoryStream.Create; // OUTPUT
  p1 := fs.Position;
  idx := IOParams.GIF_ImageIndex;
  // Legge header e controlla validit� file GIF
  fs.read(head, sizeof(TGIFHeader));
  if (head.id[0] <> 'G') or (head.id[1] <> 'I') or (head.id[2] <> 'F') then
  begin
    FreeAndNil(fs);
    result := 0;
    Progress.Aborting^ := False;
    exit;
  end;
  // SALVA HEADER
  head.id[3] := '8';
  head.id[4] := '9';
  head.id[5] := 'a';
  fm.Write(head, sizeof(TGIFHeader));
  // Decodifica campo FLAGS del Descrittore di schermo
  headDimGlobColormap := (head.Flags and $07);
  headGlobalColormap := (head.Flags and $80) <> 0;
  // Carica e salva, se presente, la colormap globale
  if headGlobalColormap then
    fm.CopyFrom(fs, 3 * (2 shl headDimGlobColormap));
  // crea WBitmap
  FreeW := false;
  if (IOParams.BitsPerSample = 1) then
  begin
    // E' richiesto di salvare in monocromatico
    xBitsPixel := 1;
    if Bitmap.pixelformat = ie1g then
      WBitmap := Bitmap
    else
    begin
      // Converti a 1 bit
      WBitmap := _ConvertTo1bitEx(Bitmap, BackCol, ForeCol);
      if WBitmap = nil then
      begin
        // impossibile convertire a 1 bit, salva in true color
        WBitmap := Bitmap;
        xBitsPixel := 8;
      end
      else
        FreeW := true;
    end;
  end
  else
  begin
    // E' richiesto di salvare a colori
    xBitsPixel := IOParams.BitsPerSample;
    if Bitmap.PixelFormat = ie1g then
    begin
      // Converti a 24 bit
      WBitmap := TIEBitmap.Create;
      WBitmap.Assign(Bitmap);
      WBitmap.PixelFormat := ie24RGB;
      FreeW := true;
    end
    else
      WBitmap := Bitmap;
  end;
  NCol := 1 shl xBitsPixel;
  if bitmap.HasAlphaChannel then
  begin
    dec(NCol);
    IOParams.GIF_FlagTranspColor := true;
  end;
  //
  if assigned(Progress.fOnProgress) then
    Progress.fOnProgress(Progress.Sender, 30);
  if Progress.Aborting^ then
  begin
    if FreeW then
      FreeAndNil(WBitmap);
    FreeAndNil(fm);
    exit;
  end;
  //
  numi := 0;
  repeat
    if Progress.Aborting^ then
      break;
    fs.read(bb, 1);
    if fs.Position >= fs.size then // fs.size � accettabile, $3B dovrebbe uscire da solo
      bb := $3B;
    case bb of
      $2C: // Descrittore dell'immagine
        begin
          fs.read(imdesc, sizeof(TGIFImDes));
          // SALVA DESCRITTORE IMMAGINE
          fm.write(bb, 1);
          fm.write(imdesc, sizeof(TGIFImDes));
          // Decodifica campo FLAGS descrittore dell'immagine
          imDimLocalColormap := (imdesc.Flags and $07);
          imLocalColormap := (imdesc.Flags and $80) <> 0;
          // Carica e salva, se presente, la colormap locale
          if imLocalColormap then
            fm.CopyFrom(fs, 3 * (2 shl imDimLocalColormap));
          // Carica e salva dati immagine
          fs.read(bb, 1); // legge dimensione bit lzw
          fm.write(bb, 1); // scrive dimensione bit lzw
          repeat
            fs.read(bb, 1); // legge dim. blocco
            fm.write(bb, 1); // scrive dim. blocco
            if fs.position + bb > fs.size then
            begin
              Progress.Aborting^ := True;
              break;
            end;
            if bb > 0 then
              fm.CopyFrom(fs, bb);
          until (bb = 0) or (fs.position >= fs.size);
          //
          inc(numi);
          if idx = numi then
          begin
            if assigned(Progress.fOnProgress) then
              Progress.fOnProgress(Progress.Sender, 70);
            if Progress.Aborting^ then
            begin
              if FreeW then
                FreeAndNil(WBitmap);
              FreeAndNil(fm);
              exit;
            end;
            // caso in cui idx non � la prima immagine da inserire
            InsertImage;
            idx := -1; // marca come inserita
            inc(numi);
          end;
        end;
      $21: // Estensioni
        begin
          fs.read(ExtType, 1); // tipo estensione
          if (ExtType = $F9) and (idx = numi) then
          begin
            // Caso in cui idx � la prima immagine della gif
            InsertImage;
            idx := -1; // marca come inserita
            inc(numi);
          end;
          bb := $21;
          fm.write(bb, 1); // salva marcatore estensione
          fm.write(ExtType, 1); // salva tipo estensione
          repeat
            fs.read(ExtLen, 1); // lunghezza estensione (0=fine)
            fm.write(ExtLen, 1);
            if ExtLen > 0 then
            begin
              if (ExtLen + fs.position) > fs.size then
                fm.CopyFrom(fs, fs.size - fs.position)
              else
                fm.CopyFrom(fs, ExtLen);
            end;
          until (ExtLen = 0) or (fs.Position >= fs.size);
        end;
      $3B: // Fine GIF
        begin
          if idx = numi then
          begin
            // caso in cui la gif era vuota
            InsertImage;
            inc(numi);
          end;
          bb := $3B;
          fm.write(bb, 1);
          break;
        end;
    end; // Fine CASE
  until false;
  if FreeW then
    FreeAndNil(WBitmap);
  fs.position := p1;
  fs.CopyFrom(fm, 0);
  fs.Size := fm.size;
  FreeAndNil(fm);
  result := numi;
  if assigned(Progress.fOnProgress) and not Progress.Aborting^ then
    Progress.fOnProgress(Progress.Sender, 100);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

end.
