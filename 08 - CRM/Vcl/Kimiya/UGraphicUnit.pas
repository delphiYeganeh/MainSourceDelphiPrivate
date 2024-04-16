unit UGraphicUnit;

interface
uses
  Windows,menus,StrUtils,shellApi,FileCtrl,ComObj, Messages, SysUtils, Classes, Controls, Dialogs,Forms,
  StdCtrls,ComCtrls,Graphics, ExtCtrls,imglist;

procedure DrawWindowBorder(hWnd: HWND; IsRightToLeft: boolean);
FUNCTION BitmapToRegionTolorance(rgnBitmap: TBitmap{BmpName: String}; TransColor: TColorRef; Tolerance: Byte=0): HRGN;
function CreateRgnFromBitmap(rgnBitmap: TBitmap;transColor:TColor): HRGN;
function GetBmpRegionTolorance( hBmp: TBitmap; TransColor: TColor; Tolerance: Integer=0): HRGN;
procedure TranparentForm(Form:Tform;HaveCaption,HaveMenu:Boolean);
Function GetRegion(iBitmap : Tbitmap;TransColor:TColor ):HRGN;
Function GetAniFrame(Filename:String;FIndex:Integer=0): HIcon;
procedure TilesBitmapToCanvas(Canvas:TCanvas;Bitmap:Tbitmap);
procedure EmbossFilter(ABitmap : TBitmap; AMount : Integer); 

implementation

Function GetAniFrame(Filename:String;FIndex:Integer=0): HIcon;
var
  MskBmp,
  ClrBmp:TBitmap;
  IconInf:_Iconinfo;
  IcoH:HIcon;
begin
MskBmp:=TBitmap.Create;
ClrBmp:=TBitmap.Create;
try
  MskBmp.PixelFormat:=pf1bit;
  IcoH:=extracticon(hinstance,Pchar(Filename),0);
  GetIconInfo(IcoH,IconInf);
  ClrBmp.Handle:=IconInf.hbmColor;
  MskBmp.Handle:=IconInf.hbmMask;
  If not DrawIconEx(clrbmp.Canvas.Handle,0,0,IcoH,0,0,fIndex,0,DI_Image) then
    begin
    Result:=0;
    exit;
    end;
  If not DrawIconEx(Mskbmp.Canvas.Handle,0,0,IcoH,0,0,fIndex,0,DI_Mask) then
    begin
    Result:=0;
    exit;
    end;
  closeHandle(IconInf.hbmColor);
  closeHandle(IconInf.hbmMask);
  IconInf.hbmColor:=clrbmp.Handle;
  IconInf.hbmMask:=Mskbmp.Handle;
  Result:=CreateIconInDirect(IconInf);
finally
  ClrBmp.Free;
  MskBmp.Free;
end;
end;

procedure DrawWindowBorder(hWnd: HWND; IsRightToLeft: boolean);
var
  WRect, CRect: TRect;
  dCanvas: TCanvas;
begin

  if hWnd <= 0 then
  begin
   exit;
  end;
  dCanvas := nil;
  try
  dCanvas := TCanvas.Create;
  dCanvas.Handle := GetDc(0);

  GetClientRect(hWnd, CRect);
  GetWindowRect(hWnd, WRect);

  ExcludeClipRect(dCanvas.Handle, CRect.Left, CRect.Top, CRect.Right,
                  CRect.Bottom);

  dCanvas.Brush.Style := bsClear;


  Dec(WRect.Right, 2);
  Dec(WRect.Bottom, 2);
  ////////////////////////////////////////////////////
  dCanvas.Pen.Color := clHighlight;//*************************
  dCanvas.Rectangle(WRect.Left, WRect.Top, WRect.Right, WRect.Bottom);


  if IsRightToLeft then
  begin
    dCanvas.Pen.Color := clBtnFace;
    dCanvas.Rectangle(WRect.Left + 1, WRect.Top + 1, WRect.Right - 2,
                      WRect.Top + 3);

    dCanvas.MoveTo(WRect.Left + 2, WRect.Top + 2);
    dCanvas.LineTo(WRect.Left + 2, WRect.Bottom - 2);


    dCanvas.Pen.Color := clBtnFace;
    dCanvas.MoveTo(WRect.Right - 2, WRect.Top + 2);
    dCanvas.LineTo(WRect.Right - 2, WRect.Bottom - 2);

    dCanvas.MoveTo(WRect.Right - 2, WRect.Top + 2);
    dCanvas.LineTo(WRect.Right - 1 - 22{22=IconWidth}, WRect.Top + 2);
  end
  else
  begin
    /////////if not FGradient then
    begin
      dCanvas.Pen.Color := clBtnFace;
      dCanvas.Rectangle(WRect.Left + 1, WRect.Top + 1, WRect.Right - 2,
                        WRect.Top + 3);

      dCanvas.Pen.Color := clBtnFace;
      dCanvas.MoveTo(WRect.Left + 1, WRect.Top + 2);
      dCanvas.LineTo(WRect.Left + 2 + 22{22=FIconWidth}, WRect.Top + 2);
    end;

    dCanvas.Pen.Color := clBtnFace;
    dCanvas.MoveTo(WRect.Left + 1, WRect.Top + 1);
    dCanvas.LineTo(WRect.Left + 1, WRect.Bottom - 2);


  end;

  Inc(WRect.Right, 2);
  Inc(WRect.Bottom, 2);

  dCanvas.Pen.Color := clBtnShadow;
  dCanvas.Rectangle(WRect.Left +2, WRect.Bottom, WRect.Right, WRect.Bottom - 2);
  dCanvas.Rectangle(WRect.Right - 2, WRect.Bottom, WRect.Right, WRect.Top + 2);


  dCanvas.Pen.Color := clBtnFace;
  dCanvas.Rectangle(WRect.Left, WRect.Bottom - 2, WRect.Left + 2, WRect.Bottom);
  dCanvas.Rectangle(WRect.Right - 2, WRect.Top, WRect.Right, WRect.Top + 2);
  finally
  IntersectClipRect(dCanvas.Handle, WRect.Left, WRect.Top, WRect.Right, WRect.Bottom);
  dCanvas.Free;
  end;
end;

Function GetRegion(iBitmap : Tbitmap;TransColor:TColor ):HRGN;
var
Region1hrgn :  hRgn;
i1, count : integer;
x,y : integer;
c1 : cardinal;
c,t : tcolor;

Begin

Count := 0;

t :=TransColor; //ibitmap.Canvas.Pixels[0,0];

With ibitmap.canvas do begin

  for y := 0 to ibitmap.Height-1  do
  begin
    x := 0;
    while x < ibitmap.Width do
    begin
      C := pixels[ x, y ];
      If C <> t Then
      begin
        i1 := x;
       // C := pixels[x, i1];
        while C <> t do
        begin
          Inc(i1);
          //i1 := i1+1;
          C := pixels[ i1, y ];
          If i1 >= ibitmap.Width Then Break;
        end;

        c1  := CreateRectRgn( x,y,  i1, y+1 );

        If count = 0 then
         Region1hrgn := c1
         else
         begin
            CombineRgn(Region1hrgn, Region1hrgn, c1, RGN_OR );
            DeleteObject(c1);
         end;

        Inc(Count);
        x := i1;
        Continue;
      end;
      inc(x);
    end;
  end;
end;

  If count > 0 then
   Result:=Region1hrgn;
  //SetWindowRgn(hHandle, Region1hrgn, True);

end;

function GetBmpRegionTolorance( hBmp: TBitmap; TransColor: TColor; Tolerance: Integer=0): HRGN;

  function IntToByte(Value:Integer):byte;
  begin
       if Value<0 then Result:=0
       else if Value<256 then Result:=Value
       else Result:=255;
  end;

const
  ALLOC_UNIT = 100;
var
  MemDC, DC: HDC;
  BitmapInfo: TBitmapInfo;
  hbm32, holdBmp, holdMemBmp: HBitmap;
  pbits32 : Pointer;
  bm32 : BITMAP;
  maxRects: DWORD;
  hData: HGLOBAL;
  pData: PRgnData;
  b, LR, LG, LB, HR, HG, HB: Byte;
  p32: pByte;
  c, x, x0, y: integer;
  p: pLongInt;
  pr: PRect;
  h: HRGN;
begin
  Result := 0;
  if hBmp <> nil then
  begin
    { Create a memory DC inside which we will scan the bitmap contents }
    MemDC := CreateCompatibleDC(0);
    if MemDC <> 0 then
    begin
     { Create a 32 bits depth bitmap and select it into the memory DC }
      with BitmapInfo.bmiHeader do
      begin
        biSize          := sizeof(TBitmapInfoHeader);
        biWidth         := hBmp.Width;
        biHeight        := hBmp.Height;
        biPlanes        := 1;
        biBitCount      := 32;
        biCompression   := BI_RGB; { (0) uncompressed format }
        biSizeImage     := 0;
        biXPelsPerMeter := 0;
        biYPelsPerMeter := 0;
        biClrUsed       := 0;
        biClrImportant  := 0;
      end;
      hbm32 := CreateDIBSection(MemDC, BitmapInfo, DIB_RGB_COLORS, pbits32,0, 0);
      if hbm32 <> 0 then
      begin
        holdMemBmp := SelectObject(MemDC, hbm32);
        {
          Get how many bytes per row we have for the bitmap bits
          (rounded up to 32 bits)
        }
        GetObject(hbm32, SizeOf(bm32), @bm32);
        while (bm32.bmWidthBytes mod 4) > 0 do
          inc(bm32.bmWidthBytes);
        DC := CreateCompatibleDC(MemDC);
        { Copy the bitmap into the memory DC }
        holdBmp := SelectObject(DC, hBmp.Handle);
        BitBlt(MemDC, 0, 0, hBmp.Width, hBmp.Height, DC, 0, 0, SRCCOPY);
        {
          For better performances, we will use the ExtCreateRegion() function
          to create the region. This function take a RGNDATA structure on
          entry. We will add rectangles by
          amount of ALLOC_UNIT number in this structure
        }
        maxRects := ALLOC_UNIT;
        hData := GlobalAlloc(GMEM_MOVEABLE, sizeof(TRgnDataHeader) +
           SizeOf(TRect) * maxRects);
        pData := GlobalLock(hData);
        pData^.rdh.dwSize := SizeOf(TRgnDataHeader);
        pData^.rdh.iType := RDH_RECTANGLES;
        pData^.rdh.nCount := 0;
        pData^.rdh.nRgnSize := 0;
        SetRect(pData^.rdh.rcBound, MaxInt, MaxInt, 0, 0);
        {
          Keep on hand highest and lowest values for the "transparent" pixel
          Slightly modified by Nenad Konstantinovic
        }
        c := GetRValue(ColorToRGB(TransColor));
        LR:=IntToByte(c-Tolerance);
        HR:=IntToByte(c+Tolerance);
        c := GetGValue(ColorToRGB(TransColor));
        LG:=IntToByte(c-Tolerance);
        HG:=IntToByte(c+Tolerance);
        c := GetBValue(ColorToRGB(TransColor));
        LB:=IntToByte(c-Tolerance);
        HB:=IntToByte(c+Tolerance);
        {
          Scan each bitmap row from bottom to top,
          the bitmap is inverted vertically
        }
        p32 := bm32.bmBits;
        inc(PChar(p32), (bm32.bmHeight - 1) * bm32.bmWidthBytes);
        for y := 0 to hBmp.Height-1 do
        begin
          { Scan each bitmap pixel from left to right }
          x := -1;
          while x+1 < hBmp.Width do
          begin
            inc(x);
            { Search for a continuous range of "non transparent pixels" }
            x0 := x;
            p := PLongInt(p32);
            inc(PChar(p), x * SizeOf(LongInt));
            while x < hBmp.Width do
            begin
              b := GetBValue(p^);                 // Changed from GetRValue(p^)
              if (b >= LR) and (b <= HR) then
              begin
                b := GetGValue(p^);               // Left alone
                if (b >= LG) and (b <= HG) then
                begin
                  b := GetRValue(p^);             // Changed from GetBValue(p^)
                  if (b >= LB) and (b <= hb) then
                    { This pixel is "transparent" }
                    break;
                end;
              end;
              inc(PChar(p), SizeOf(LongInt));
              inc(x);
            end;
            if x > x0 then
            begin
              {
                Add the pixels (x0, y) to (x, y+1) as a new rectangle in
                the region
              }
              if pData^.rdh.nCount >= maxRects then
              begin
                GlobalUnlock(hData);
                inc(maxRects, ALLOC_UNIT);
                hData := GlobalReAlloc(hData, SizeOf(TRgnDataHeader) +
                   SizeOf(TRect) * maxRects, GMEM_MOVEABLE);
                pData := GlobalLock(hData);
                Assert(pData <> NIL);
              end;
              pr := @pData^.Buffer[pData^.rdh.nCount * SizeOf(TRect)];
              SetRect(pr^, x0, y, x, y+1);
              if x0 < pData^.rdh.rcBound.Left then
                pData^.rdh.rcBound.Left := x0;
              if y < pData^.rdh.rcBound.Top then
                pData^.rdh.rcBound.Top := y;
              if x > pData^.rdh.rcBound.Right then
                pData^.rdh.rcBound.Right := x;
              if y+1 > pData^.rdh.rcBound.Bottom then
                pData^.rdh.rcBound.Bottom := y+1;
              inc(pData^.rdh.nCount);
              {
               On Windows98, ExtCreateRegion() may fail if the number of
               rectangles is too large (ie: > 4000). Therefore, we have to
               create the region by multiple steps
              }
              if pData^.rdh.nCount = 2000 then
              begin
                h := ExtCreateRegion(NIL, SizeOf(TRgnDataHeader) +
                   (SizeOf(TRect) * maxRects), pData^);
                Assert(h <> 0);
                if Result <> 0 then
                begin
                  CombineRgn(Result, Result, h, RGN_OR);
                  DeleteObject(h);
                end else
                  Result := h;
                pData^.rdh.nCount := 0;
                SetRect(pData^.rdh.rcBound, MaxInt, MaxInt, 0, 0);
              end;
            end;
          end;
          {
            Go to next row (remember, the bitmap is inverted vertically)
            that is why we use DEC!
          }
          Dec(PChar(p32), bm32.bmWidthBytes);
        end;
        { Create or extend the region with the remaining rectangle }
        h := ExtCreateRegion(NIL, SizeOf(TRgnDataHeader) +
           (SizeOf(TRect) * maxRects), pData^);
        Assert(h <> 0);
        if Result <> 0 then
        begin
          CombineRgn(Result, Result, h, RGN_OR);
          DeleteObject(h);
        end else
          Result := h;
        { Clean up }
        GlobalFree(hData);
        SelectObject(DC, holdBmp);
        DeleteDC(DC);
        DeleteObject(SelectObject(MemDC, holdMemBmp));
      end;
    end;
    DeleteDC(MemDC);
  end;
end;

FUNCTION BitmapToRegionTolorance(rgnBitmap: TBitmap{BmpName: String}; TransColor: TColorRef; Tolerance: Byte=0): HRGN;
CONST ALLOC_UNIT = 100;
VAR B, LR, LG, LB, HR, HG, HB: Byte; X, X0, Y: LongInt; MaxRects: DWord;
    pbits32: Pointer; MemDC, TempDc: HDc; BitmapInfo: TBitmapInfo; Pal: HPalette;
    InBmp, hbm32: HBitmap; Bm, bm32: windows.TBITMAP; hData: HGLOBAL; pData: PRgnData;
    p32: pByte; p: pLongInt; pr: PRect; h: HRGN; HoldObj, HoldObj1: HGDIObj;
    OldPal: HPalette; Rslt: HRGN;
BEGIN
  Rslt := 0;                                          { Preset fail result }
  //InBmp := LoadBmpFromFile(BmpName, Pal);             { Load main bitmap }
  InBmp:= rgnBitmap.Handle;
  IF (InBmp <> 0) THEN BEGIN                          { Bitmap loaded }
    MemDC := CreateCompatibleDC(0);                   { Create memory context }
    IF (MemDC <> 0) THEN BEGIN                        { Memory context valid }
      GetObject(InBmp, SizeOf(Bm), @Bm);              { Get bitmap data }
      WITH BitmapInfo.bmiHeader DO BEGIN              { Make bitmap header }
        biSize          := SizeOf(TBitmapInfoHeader); { Set record size }
        biWidth         := Bm.bmWidth;                { Width of bitmap }
        biHeight        := Bm.bmHeight;               { Height of bitmap }
        biPlanes        := 1;                         { 1 plane }
        biBitCount      := 32;                        { 32 bit DIB }
        biCompression   := BI_RGB;                    { uncompressed format }
        biSizeImage     := 0;                         { Default size }
        biXPelsPerMeter := 0;                         { Default x res }
        biYPelsPerMeter := 0;                         { Default y res }
        biClrUsed       := 0;                         { No unused colours }
        biClrImportant  := 0;                         { No important colours }
      END;
      hbm32 := CreateDIBSection(MemDC, BitmapInfo,
        DIB_RGB_COLORS, pbits32, 0, 0);               { Create a DIB section }
      IF (hbm32 <> 0) THEN BEGIN
        HoldObj := SelectObject(MemDC, hbm32);        { Select DIB section }
        TempDC := CreateCompatibleDC(0);              { Create memory DC }
        HoldObj1 := SelectObject(TempDC, InBmp);      { Select bitmap }
        OldPal := SelectPalette(TempDc, Pal, True);   { Select palette }
        RealizePalette(TempDc);                       { Realize the palette }
        BitBlt(MemDC, 0, 0, Bm.bmWidth, Bm.bmHeight,
          TempDc, 0, 0, SRCCOPY);                     { Transfer bitmap }
        SelectPalette(TempDc, OldPal, False);         { Restore old palette }
        SelectObject(TempDc, HoldObj1);               { Select original object }
        DeleteObject(TempDc);                         { Delete memory context }
        GetObject(hbm32, SizeOf(bm32), @bm32);        { Fetch bitmap data }
        WHILE (bm32.bmWidthBytes MOD 4) > 0 DO
          Inc(bm32.bmWidthBytes);                     { Make divisable by 4 }
        MaxRects := ALLOC_UNIT;                       { Set maximum size }
        hData := GlobalAlloc(GMEM_MOVEABLE, SizeOf(TRgnDataHeader) +
          (SizeOf(TRect) * MaxRects));                { Allocate memory }
        pData := GlobalLock(hData);                   { Lock the memory }
        pData^.rdh.dwSize := SizeOf(TRgnDataHeader);  { Set memory size }
        pData^.rdh.iType := RDH_RECTANGLES;           { Rectangular area }
        pData^.rdh.nCount := 0;                       { Zero count }
        pData^.rdh.nRgnSize := 0;                     { Zero region size }
        SetRect(pData^.rdh.rcBound, MaxInt, MaxInt,
          0, 0);                                      { Make rect maximum }
        LR := GetRValue(TransColor);                  { Lowest red }
        LG := GetGValue(TransColor);                  { Lowest green }
        LB := GetBValue(TransColor);                  { Lowest blue }
        If (LR + Tolerance > $FF) Then HR := $FF      { Check not above max }
          ELSE HR := LR + Tolerance;                  { New high red value }
        If (LG + Tolerance > $FF) Then HG := $FF      { Check not above max }
          ELSE HG := LG + Tolerance;                  { New high green value }
        If (LB + Tolerance > $FF) Then HB := $FF      { Check not above max }
          ELSE HB := LB + Tolerance;                  { New high blue value }
        p32 := bm32.bmBits;                           { Pointer to bmp data }
        Inc(PChar(p32), LongInt(bm32.bmHeight - 1) *
          LongInt(bm32.bmWidthBytes));                { Move to bottom line }
        FOR Y := 0 to Bm.bmHeight-1 DO BEGIN          { Each line of bitmap }
          X := -1;                                    { Start left }
          WHILE (X+1 < Bm.bmWidth) DO BEGIN           { For each pixel }
            Inc(X);                                   { Next x position }
            X0 := X;                                  { Hold left x value }
            p := PLongInt(p32);                       { Hold pointer }
            Inc(PChar(p), X * SizeOf(LongInt));       { Set p start value }
            WHILE (X < Bm.bmWidth) DO BEGIN           { For each pixel }
              B := GetBValue(p^);                     { Get blue value }
              IF (B >= LR) AND (B <= HR) THEN BEGIN   { Check for match }
                B := GetGValue(p^);                   { Get green value }
                IF (B >= LG) AND (B <= HG) THEN BEGIN
                  B := GetRValue(p^);                 { Get red value }
                  IF (B >= LB) AND (B <= HB) THEN     { Pixel is "transparent" }
                    Break;                            { Just exit }
                END;
              END;
              Inc(PChar(P), SizeOf(LongInt));         { Advance pointer }
              Inc(X);                                 { Next x position }
            END;
            IF (X > X0) THEN BEGIN                    { New region to add }
              IF (pData^.rdh.nCount >= MaxRects)
              THEN BEGIN                              { Area is to big }
                GlobalUnlock(hData);                  { Unlock memory }
                Inc(MaxRects, ALLOC_UNIT);            { Adjust size }
                hData := GlobalReAlloc(hData, SizeOf(TRgnDataHeader) +
                  SizeOf(TRect) * MaxRects, GMEM_MOVEABLE);
                pData := GlobalLock(hData);           { Relock memory }
              END;
              {$R-}
              pr := @pData^.Buffer[pData^.rdh.nCount * SizeOf(TRect)];
              {$R+}
              SetRect(Pr^, X0, Y, X, Y+1);            { Set rectangle coords }
              IF (X0 < pData^.rdh.rcBound.Left) THEN
                pData^.rdh.rcBound.Left := X0;        { Check left x value }
              IF (Y < pData^.rdh.rcBound.Top) THEN
                pData^.rdh.rcBound.Top := Y;          { Check top y value }
              IF (X > pData^.rdh.rcBound.Right) THEN
                pData^.rdh.rcBound.Left := X;         { Check right x value }
              IF (Y+1 > pData^.rdh.rcBound.Bottom) THEN
                pData^.rdh.rcBound.Bottom := Y+1;     { Check bottom y value }
              Inc(pData^.rdh.nCount);                 { Add 1 region }
              IF (pData^.rdh.nCount = 2000)           { Reach maximum region count }
              THEN BEGIN                              { Region count at max }
                h := ExtCreateRegion(NIL, SizeOf(TRgnDataHeader) +
                  (SizeOf(TRect)*MaxRects), pData^);  { Create a region }
                IF (Rslt <> 0) THEN BEGIN             { Already have region }
                  CombineRgn(Rslt, Rslt, h, RGN_OR);
                  DeleteObject(h);                    { Delete old region }
                END ELSE Rslt := h;                   { Hold region }
                pData^.rdh.nCount := 0;               { Rezero region count }
                SetRect(pData^.rdh.rcBound, MaxInt,
                  MaxInt, 0, 0);                      { Reset rectangle }
              END;
            END;
          END;
          Dec(PChar(p32), bm32.bmWidthBytes);         { Move one line up }
        END;
        h := ExtCreateRegion(NIL, SizeOf(TRgnDataHeader) +
          (SizeOf(TRect) * MaxRects), pData^);        { Create a region }
        IF (Rslt <> 0) THEN BEGIN                     { Region already exists }
          CombineRgn(Rslt, Rslt, h, RGN_OR);          { Combine regions }
          DeleteObject(h);                            { Delete old region }
        END ELSE Rslt := h;                           { Return this region }
        GlobalFree(hData);                            { Clean up data }
        SelectObject(MemDc, HoldObj);                 { Select original object }
        DeleteObject(hbm32);                          { Delete dib section }
      END;
      DeleteDC(MemDC);                                { Delete device context }
    END;
    DeleteObject(Pal);                                { Destroy palette }
    DeleteObject(InBmp);                              { Delete bitmap object }
  END;
  result := Rslt;                             { Return the region }
END;

function CreateRgnFromBitmap(rgnBitmap: TBitmap;transColor:TColor): HRGN;
var
  //transColor: TColor;
  i, j: Integer;
  width, height: Integer;
  left, right: Integer;
  rectRgn: HRGN;
begin
  Result := 0;                          // NULL in C/C++
  width := rgnBitmap.Width;
  height := rgnBitmap.Height;
  //transColor := rgnBitmap.Canvas.Pixels[width - 1, height - 1];
  for i := 0 to height - 1 do
  begin
    left := -1;
    for j := 0 to width - 1 do
    begin
      if left < 0 then
      begin
        if rgnBitmap.Canvas.Pixels[j, i] <> transColor then
          left := j;
      end
      else
        if rgnBitmap.Canvas.Pixels[j, i] = transColor then
        begin
          right := j;
          rectRgn := CreateRectRgn(left, i, right, i + 1);
          if Result = 0 then
            Result := rectRgn
          else
          begin
            CombineRgn(Result, Result, rectRgn, RGN_OR);
            DeleteObject(rectRgn);
          end;
          left := -1;
        end;
    end;
    if left >= 0 then
    begin
      rectRgn := CreateRectRgn(left, i, width, i + 1);
      if Result = 0 then
        Result := rectRgn
      else
      begin
        CombineRgn(Result, Result, rectRgn, RGN_OR);
        DeleteObject(rectRgn);
      end;
    end;
  end;
end;

Function RGBtoGray(Color:TColor):TColor;
Var
  Target:Byte;
begin
Target:=Round((0.30 * GetRValue(Color))+
              (0.59 * GetGValue(Color))+
              (0.11 * GetBValue(Color)));
Result:=RGB(Target,target,target);
end;

procedure TranparentForm(Form:Tform;HaveCaption,HaveMenu:Boolean);
var
  frmRegion,
  tempRegion:HRGN;
  i:Integer;
  Arect:Trect;
begin
  frmRegion:=0;
  For i:=0 to Form.controlcount -1 do
  begin
    Arect:=Form.controls[i].BoundsRect;
    Offsetrect(Arect,Form.ClientOrigin.x-Form.left,Form.ClientOrigin.y-Form.top);
    tempRegion:=CreateRectRgnIndirect(Arect);
    if frmRegion=0 then
    begin
      frmRegion:=tempRegion;
    end
    else
    Begin
      CombineRgn(frmRegion,frmRegion,TempRegion,RGN_OR);
      DeleteObject(tempRegion);
    end;
  end;
  tempRegion:=0;
  If HaveCaption and HaveMenu then
    tempRegion:= CreateRectRgn(0,0,Form.Width,
                  GetSystemMetrics(SM_CYCAPTION)+
                  GetSystemMetrics(SM_CYSIZEFRAME)+
                  GetSystemMetrics(SM_CYMENU)*ORD(Form.Menu<>nil));
  If (HaveCaption=false) and HaveMenu then
    tempRegion:= CreateRectRgn(0,GetSystemMetrics(SM_CYCAPTION)+GetSystemMetrics(SM_CYSIZEFRAmE),Form.Width,
                  (GetSystemMetrics(SM_CYSIZEFRAmE)+GetSystemMetrics(SM_CYMENU)*ORD(Form.Menu<>nil))+GetSystemMetrics(SM_CYCAPTION));
  If HaveCaption and (HaveMenu=false) then
    tempRegion:= CreateRectRgn(0,0,Form.Width,
                  GetSystemMetrics(SM_CYCAPTION)+
                  GetSystemMetrics(SM_CYSIZEFRAmE));
  If (HaveCaption=false) and (HaveMenu=false) then
    tempRegion:= CreateRectRgn(0,0,Form.Width,0);

  CombineRgn(frmregion,frmregion,tempregion,rgn_or);
  Deleteobject(tempregion);
  setwindowrgn(Form.handle,frmregion,true);
end;

procedure TilesBitmapToForm(Form:Tform;Bitmap:Tbitmap);
var
  X,Y,W,H:longint;
begin
w:=Bitmap.Width;
H:=Bitmap.Height;
Y:=0;
While Y<form.Height do Begin
  X:=0;
  While X<form.Width do Begin
    form.Canvas.draw(x,y,Bitmap);
    inc(X,W);
  end;
  inc(Y,H);
end;
end;

procedure TilesBitmapToCanvas(Canvas:TCanvas;Bitmap:Tbitmap);
begin
Canvas.Brush.Style:=bsSolid;
Canvas.Brush.Bitmap:=Bitmap;
Canvas.FillRect(Canvas.ClipRect);
end;

procedure EmbossFilter(ABitmap : TBitmap; AMount : Integer); 
var 
  x, y, i : integer; 
  p1, p2: PByteArray; 
begin 
  for i := 0 to AMount do
  begin 
    for y := 0 to ABitmap.Height-2 do 
    begin 
      p1 := ABitmap.ScanLine[y]; 
      p2 := ABitmap.ScanLine[y+1]; 
      for x := 0 to ABitmap.Width do 
      begin 
        p1[x*3] := (p1[x*3]+(p2[(x+3)*3] xor $FF)) shr 1; 
        p1[x*3+1] := (p1[x*3+1]+(p2[(x+3)*3+1] xor $FF)) shr 1; 
        p1[x*3+2] := (p1[x*3+1]+(p2[(x+3)*3+1] xor $FF)) shr 1; 
      end; 
    end; 
  end; 
end; 

end.
