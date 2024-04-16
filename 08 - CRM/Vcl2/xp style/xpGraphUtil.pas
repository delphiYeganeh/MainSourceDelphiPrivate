{
 Copyright:      rhoStyle Developers team
 mailto:         support@rhoStyle.com
 Author:         rhoStyle
 Version:        2.4
 Delphi Version: Delphi 3-7
 Delphi Version: Delphi 3-7
 Description:    This is utility unit for Windows XP style controls

}
unit XPGraphUtil;


interface

uses
  Windows, Classes, Graphics, xpReg;

const
{ TBitmap.GetTransparentColor from GRAPHICS.PAS use this value }
  PaletteMask = $02000000;


type
  TFillDirection = (fdTopToBottom, fdBottomToTop, fdLeftToRight, fdRightToLeft, fdVerticalFromCenter, fdHorizFromCenter);

procedure GradientFillRect(Canvas: TCanvas; ARect: TRect; StartColor,
  EndColor: TColor; Direction: TFillDirection; Colors: Byte);

procedure GradientVertLine (Canvas : TCanvas; X, Y, Len : Integer; StartColor,
  EndColor: TColor; Direction: TFillDirection; Colors: Byte);

function WidthOf(R: TRect): Integer;
function HeightOf(R: TRect): Integer;

procedure ConvertBitmapToGrayscale (const Bmp: TBitmap);

procedure TileImage(Canvas: TCanvas; Rect: TRect; Image: TGraphic);

procedure DrawBitmapTransparent(Dest: TCanvas; DstX, DstY: Integer;
  Bitmap: TBitmap; TransparentColor: TColor);

procedure DrawBitmapRectTransparent(Dest: TCanvas; DstX, DstY: Integer;
  SrcRect: TRect; Bitmap: TBitmap; TransparentColor: TColor);

procedure StretchBitmapTransparent(Dest: TCanvas; Bitmap: TBitmap;
  TransparentColor: TColor; DstX, DstY, DstW, DstH, SrcX, SrcY,
  SrcW, SrcH: Integer);

procedure StretchBitmapRectTransparent(Dest: TCanvas; DstX, DstY, DstW,
  DstH: Integer; SrcRect: TRect; Bitmap: TBitmap; TransparentColor: TColor);

function GetSysColorCount (DC : hDC) : Integer;


procedure SmoothImage (ACanvas : TCanvas; ARect : TRect; Transparent : TColor);

//Make color darker
function MakeDarkColor (AColor : TColor; ADarkRate : Integer) : TColor;

implementation

procedure ConvertBitmapToGrayscale (const Bmp: TBitmap);
  {From: Pascal Enz, pascal.enz@datacomm.ch }
type
  TRGBArray = array[0..32767] of TRGBTriple;
  PRGBArray = ^TRGBArray;
var
  x, y, Gray: Integer;
  Row: PRGBArray;
begin
  Bmp.PixelFormat := pf24Bit;
  for y := 0 to Bmp.Height - 1 do
  begin
    Row := Bmp.ScanLine[y];
    for x := 0 to Bmp.Width - 1 do
    begin
      Gray           := (Row[x].rgbtRed + Row[x].rgbtGreen + Row[x].rgbtBlue) div 3;
      Row[x].rgbtRed := Gray;
      Row[x].rgbtGreen := Gray;
      Row[x].rgbtBlue := Gray;
    end;
  end;
end;




function Max (Value1, Value2 : Integer) : Integer;
begin
  If Value1 > Value2 then Result := Value1 else Result := Value2;
end;

function Min (Value1, Value2 : Integer) : Integer;
begin
  If Value1 < Value2 then Result := Value1 else Result := Value2;
end;

function HeightOf(R: TRect): Integer;
begin
  Result := R.Bottom - R.Top;
end;

function WidthOf(R: TRect): Integer;
begin
  Result := R.Right - R.Left;
end;


procedure GradientSimpleFillRect(Canvas: TCanvas; ARect: TRect; StartColor,
  EndColor: TColor; Direction: TFillDirection; Colors: Byte);
var
  StartRGB: array[0..2] of Byte;    { Start RGB values }
  RGBDelta: array[0..2] of Integer; { Difference between start and end RGB values }
  ColorBand: TRect;                 { Color band rectangular coordinates }
  I, Delta: Integer;
  Brush: HBrush;
begin
  if IsRectEmpty(ARect) then Exit;
  if Colors < 2 then begin
    Brush := CreateSolidBrush(ColorToRGB(StartColor));
    FillRect(Canvas.Handle, ARect, Brush);
    DeleteObject(Brush);
    Exit;
  end;
  StartColor := ColorToRGB(StartColor);
  EndColor := ColorToRGB(EndColor);
  case Direction of
    fdTopToBottom, fdLeftToRight: begin
      { Set the Red, Green and Blue colors }
      StartRGB[0] := GetRValue(StartColor);
      StartRGB[1] := GetGValue(StartColor);
      StartRGB[2] := GetBValue(StartColor);
      { Calculate the difference between begin and end RGB values }
      RGBDelta[0] := GetRValue(EndColor) - StartRGB[0];
      RGBDelta[1] := GetGValue(EndColor) - StartRGB[1];
      RGBDelta[2] := GetBValue(EndColor) - StartRGB[2];
    end;
    fdBottomToTop, fdRightToLeft: begin
      { Set the Red, Green and Blue colors }
      { Reverse of TopToBottom and LeftToRight directions }
      StartRGB[0] := GetRValue(EndColor);
      StartRGB[1] := GetGValue(EndColor);
      StartRGB[2] := GetBValue(EndColor);
      { Calculate the difference between begin and end RGB values }
      { Reverse of TopToBottom and LeftToRight directions }
      RGBDelta[0] := GetRValue(StartColor) - StartRGB[0];
      RGBDelta[1] := GetGValue(StartColor) - StartRGB[1];
      RGBDelta[2] := GetBValue(StartColor) - StartRGB[2];
    end;
  end; {case}
  { Calculate the color band's coordinates }
  ColorBand := ARect;
  if Direction in [fdTopToBottom, fdBottomToTop] then begin
    Colors := Max(2, Min(Colors, HeightOf(ARect)));
    Delta := HeightOf(ARect) div Colors;
  end
  else begin
    Colors := Max(2, Min(Colors, WidthOf(ARect)));
    Delta := WidthOf(ARect) div Colors;
  end;
  with Canvas.Pen do begin { Set the pen style and mode }
    Style := psSolid;
    Mode := pmCopy;
  end;
  { Perform the fill }
  if Delta > 0 then begin
    for I := 0 to Colors do begin
      case Direction of
        { Calculate the color band's top and bottom coordinates }
        fdTopToBottom, fdBottomToTop: begin
          ColorBand.Top := ARect.Top + I * Delta;
          ColorBand.Bottom := ColorBand.Top + Delta;
        end;
        { Calculate the color band's left and right coordinates }
        fdLeftToRight, fdRightToLeft: begin
          ColorBand.Left := ARect.Left + I * Delta;
          ColorBand.Right := ColorBand.Left + Delta;
        end;
      end; {case}
      { Calculate the color band's color }
      Brush := CreateSolidBrush(RGB(
        StartRGB[0] + MulDiv(I, RGBDelta[0], Colors - 1),
        StartRGB[1] + MulDiv(I, RGBDelta[1], Colors - 1),
        StartRGB[2] + MulDiv(I, RGBDelta[2], Colors - 1)));
      FillRect(Canvas.Handle, ColorBand, Brush);
      DeleteObject(Brush);
    end;
  end;
  if Direction in [fdTopToBottom, fdBottomToTop] then
    Delta := HeightOf(ARect) mod Colors
  else Delta := WidthOf(ARect) mod Colors;
  if Delta > 0 then begin
    case Direction of
      { Calculate the color band's top and bottom coordinates }
      fdTopToBottom, fdBottomToTop: begin
        ColorBand.Top := ARect.Bottom - Delta;
        ColorBand.Bottom := ColorBand.Top + Delta;
      end;
      { Calculate the color band's left and right coordinates }
      fdLeftToRight, fdRightToLeft: begin
        ColorBand.Left := ARect.Right - Delta;
        ColorBand.Right := ColorBand.Left + Delta;
      end;
    end; {case}
    case Direction of
      fdTopToBottom, fdLeftToRight:
        Brush := CreateSolidBrush(EndColor);
      else {fdBottomToTop, fdRightToLeft }
        Brush := CreateSolidBrush(StartColor);
    end;
    FillRect(Canvas.Handle, ColorBand, Brush);
    DeleteObject(Brush);
  end;
end;



procedure GradientFillRect(Canvas: TCanvas; ARect: TRect; StartColor,
  EndColor: TColor; Direction: TFillDirection; Colors: Byte);
var
  BRect : TRect;
begin
  case Direction of
    fdVerticalFromCenter:
      begin
        BRect := ARect;
        BRect.Bottom := BRect.Top +  HeightOf (ARect) div 2;
        GradientSimpleFillRect(Canvas, BRect, StartColor, EndColor, fdTopToBottom, Colors);
        BRect.Top := (BRect.Top + HeightOf (ARect) div 2);
        BRect.Bottom := ARect.Bottom;
        GradientSimpleFillRect(Canvas, BRect, StartColor, EndColor, fdBottomToTop, Colors);
      end;
    fdHorizFromCenter:
      begin
        BRect := ARect;
        BRect.Right := BRect.Left +  WidthOf (ARect) div 2;
        GradientSimpleFillRect(Canvas, BRect, StartColor, EndColor, fdLeftToRight, Colors);
        BRect.Left := (BRect.Left + WidthOf (ARect) div 2);
        BRect.Right := ARect.Right;
        GradientSimpleFillRect(Canvas, BRect, StartColor, EndColor, fdRightToLeft, Colors);
      end
    else
      GradientSimpleFillRect(Canvas, ARect, StartColor, EndColor, Direction, Colors);
  end;
end;


procedure GradientVertLine (Canvas : TCanvas; X, Y, Len : Integer; StartColor,
  EndColor: TColor; Direction: TFillDirection; Colors: Byte);
begin
  if Len < 1 then Exit;
end;


procedure TileImage(Canvas: TCanvas; Rect: TRect; Image: TGraphic);
var
  X, Y: Integer;
  SaveIndex: Integer;
begin
  if (Image.Width = 0) or (Image.Height = 0) then Exit;
  SaveIndex := SaveDC(Canvas.Handle);
  try
    with Rect do
      IntersectClipRect(Canvas.Handle, Left, Top, Right, Bottom);
    for X := 0 to (WidthOf(Rect) div Image.Width) do
      for Y := 0 to (HeightOf(Rect) div Image.Height) do
        Canvas.Draw(Rect.Left + X * Image.Width,
          Rect.Top + Y * Image.Height, Image);
  finally
    RestoreDC(Canvas.Handle, SaveIndex);
  end;
end;


function PaletteColor(Color: TColor): Longint;
begin
  Result := ColorToRGB(Color) or PaletteMask;
end;


procedure StretchBltTransparent(DstDC: HDC; DstX, DstY, DstW, DstH: Integer;
  SrcDC: HDC; SrcX, SrcY, SrcW, SrcH: Integer; Palette: HPalette;
  TransparentColor: TColorRef);
var
  Color: TColorRef;
  bmAndBack, bmAndObject, bmAndMem, bmSave: HBitmap;
  bmBackOld, bmObjectOld, bmMemOld, bmSaveOld: HBitmap;
  MemDC, BackDC, ObjectDC, SaveDC: HDC;
  palDst, palMem, palSave, palObj: HPalette;
begin
  { Create some DCs to hold temporary data }
  BackDC := CreateCompatibleDC(DstDC);
  ObjectDC := CreateCompatibleDC(DstDC);
  MemDC := CreateCompatibleDC(DstDC);
  SaveDC := CreateCompatibleDC(DstDC);
  { Create a bitmap for each DC }
  bmAndObject := CreateBitmap(SrcW, SrcH, 1, 1, nil);
  bmAndBack := CreateBitmap(SrcW, SrcH, 1, 1, nil);
  bmAndMem := CreateCompatibleBitmap(DstDC, DstW, DstH);
  bmSave := CreateCompatibleBitmap(DstDC, SrcW, SrcH);
  { Each DC must select a bitmap object to store pixel data }
  bmBackOld := SelectObject(BackDC, bmAndBack);
  bmObjectOld := SelectObject(ObjectDC, bmAndObject);
  bmMemOld := SelectObject(MemDC, bmAndMem);
  bmSaveOld := SelectObject(SaveDC, bmSave);
  { Select palette }
  palDst := 0; palMem := 0; palSave := 0; palObj := 0;
  if Palette <> 0 then begin
    palDst := SelectPalette(DstDC, Palette, True);
    RealizePalette(DstDC);
    palSave := SelectPalette(SaveDC, Palette, False);
    RealizePalette(SaveDC);
    palObj := SelectPalette(ObjectDC, Palette, False);
    RealizePalette(ObjectDC);
    palMem := SelectPalette(MemDC, Palette, True);
    RealizePalette(MemDC);
  end;
  { Set proper mapping mode }
  SetMapMode(SrcDC, GetMapMode(DstDC));
  SetMapMode(SaveDC, GetMapMode(DstDC));
  { Save the bitmap sent here }
  BitBlt(SaveDC, 0, 0, SrcW, SrcH, SrcDC, SrcX, SrcY, SRCCOPY);
  { Set the background color of the source DC to the color,         }
  { contained in the parts of the bitmap that should be transparent }
  Color := SetBkColor(SaveDC, PaletteColor(TransparentColor));
  { Create the object mask for the bitmap by performing a BitBlt()  }
  { from the source bitmap to a monochrome bitmap                   }
  BitBlt(ObjectDC, 0, 0, SrcW, SrcH, SaveDC, 0, 0, SRCCOPY);
  { Set the background color of the source DC back to the original  }
  SetBkColor(SaveDC, Color);
  { Create the inverse of the object mask }
  BitBlt(BackDC, 0, 0, SrcW, SrcH, ObjectDC, 0, 0, NOTSRCCOPY);
  { Copy the background of the main DC to the destination }
  BitBlt(MemDC, 0, 0, DstW, DstH, DstDC, DstX, DstY, SRCCOPY);
  { Mask out the places where the bitmap will be placed }
  StretchBlt(MemDC, 0, 0, DstW, DstH, ObjectDC, 0, 0, SrcW, SrcH, SRCAND);
  { Mask out the transparent colored pixels on the bitmap }
  BitBlt(SaveDC, 0, 0, SrcW, SrcH, BackDC, 0, 0, SRCAND);
  { XOR the bitmap with the background on the destination DC }
  StretchBlt(MemDC, 0, 0, DstW, DstH, SaveDC, 0, 0, SrcW, SrcH, SRCPAINT);
  { Copy the destination to the screen }
  BitBlt(DstDC, DstX, DstY, DstW, DstH, MemDC, 0, 0,
    SRCCOPY);
  { Restore palette }
  if Palette <> 0 then begin
    SelectPalette(MemDC, palMem, False);
    SelectPalette(ObjectDC, palObj, False);
    SelectPalette(SaveDC, palSave, False);
    SelectPalette(DstDC, palDst, True);
  end;
  { Delete the memory bitmaps }
  DeleteObject(SelectObject(BackDC, bmBackOld));
  DeleteObject(SelectObject(ObjectDC, bmObjectOld));
  DeleteObject(SelectObject(MemDC, bmMemOld));
  DeleteObject(SelectObject(SaveDC, bmSaveOld));
  { Delete the memory DCs }
  DeleteDC(MemDC);
  DeleteDC(BackDC);
  DeleteDC(ObjectDC);
  DeleteDC(SaveDC);
end;


procedure StretchBitmapTransparent(Dest: TCanvas; Bitmap: TBitmap;
  TransparentColor: TColor; DstX, DstY, DstW, DstH, SrcX, SrcY,
  SrcW, SrcH: Integer);
var
  CanvasChanging: TNotifyEvent;
begin
  if DstW <= 0 then DstW := Bitmap.Width;
  if DstH <= 0 then DstH := Bitmap.Height;
  if (SrcW <= 0) or (SrcH <= 0) then begin
    SrcX := 0; SrcY := 0;
    SrcW := Bitmap.Width;
    SrcH := Bitmap.Height;
  end;
  if not Bitmap.Monochrome then
    SetStretchBltMode(Dest.Handle, STRETCH_DELETESCANS);
  CanvasChanging := Bitmap.Canvas.OnChanging;
{$IFDEF VER100}
  Bitmap.Canvas.Lock;
{$ENDIF}
  try
    Bitmap.Canvas.OnChanging := nil;
    if TransparentColor = clNone then begin
      StretchBlt(Dest.Handle, DstX, DstY, DstW, DstH, Bitmap.Canvas.Handle,
        SrcX, SrcY, SrcW, SrcH, Dest.CopyMode);
    end
    else begin
{$IFDEF VER100}
      if TransparentColor = clDefault then
        TransparentColor := Bitmap.Canvas.Pixels[0, Bitmap.Height - 1];
{$ENDIF}
      if Bitmap.Monochrome then TransparentColor := clWhite
      else TransparentColor := ColorToRGB(TransparentColor);
      StretchBltTransparent(Dest.Handle, DstX, DstY, DstW, DstH,
        Bitmap.Canvas.Handle, SrcX, SrcY, SrcW, SrcH, Bitmap.Palette,
        TransparentColor);
    end;
  finally
    Bitmap.Canvas.OnChanging := CanvasChanging;
{$IFDEF VER100}
    Bitmap.Canvas.Unlock;
{$ENDIF}
  end;
end;


procedure StretchBitmapRectTransparent(Dest: TCanvas; DstX, DstY,
  DstW, DstH: Integer; SrcRect: TRect; Bitmap: TBitmap;
  TransparentColor: TColor);
begin
  with SrcRect do
    StretchBitmapTransparent(Dest, Bitmap, TransparentColor,
    DstX, DstY, DstW, DstH, Left, Top, Right - Left, Bottom - Top);
end;

procedure DrawBitmapRectTransparent(Dest: TCanvas; DstX, DstY: Integer;
  SrcRect: TRect; Bitmap: TBitmap; TransparentColor: TColor);
begin
  with SrcRect do
    StretchBitmapTransparent(Dest, Bitmap, TransparentColor,
    DstX, DstY, Right - Left, Bottom - Top, Left, Top, Right - Left,
    Bottom - Top);
end;

procedure DrawBitmapTransparent(Dest: TCanvas; DstX, DstY: Integer;
  Bitmap: TBitmap; TransparentColor: TColor);
begin
  StretchBitmapTransparent(Dest, Bitmap, TransparentColor, DstX, DstY,
    Bitmap.Width, Bitmap.Height, 0, 0, Bitmap.Width, Bitmap.Height);
end;


function GetSysColorCount (DC : hDC) : Integer;
begin
  // 1 - monochrome
  // 4 - 16 colors
  // 8 - 256 colors
  //
  Result := GetDeviceCaps(DC, BITSPIXEL) * GetDeviceCaps(DC, PLANES);
end;

function MakeDarkColor (AColor : TColor; ADarkRate : Integer) : TColor;
var
  R, G, B : Integer;
begin
  R := GetRValue   (ColorToRGB (AColor)) - ADarkRate;
  G := GetGValue (ColorToRGB (AColor)) - ADarkRate;
  B := GetBValue (ColorToRGB (AColor)) - ADarkRate;
  if R < 0 then R := 0;
  if G < 0 then G := 0;
  if B < 0 then B := 0;
  Result := TColor (RGB (R, G, B));
end;


procedure SmoothImage (ACanvas : TCanvas; ARect : TRect; Transparent : TColor);
var
  X, Y : Integer;
begin
  For Y := ARect.Top to ARect.Bottom do
    For X := ARect.Left to ARect.Right do
    begin
      if ACanvas.Pixels [X, Y] = Transparent then
      begin
        ACanvas.Pixels [X+1, Y+1] := MakeDarkColor (ACanvas.Pixels [X+1, Y+1], 20);
        ACanvas.Pixels [X-1, Y-1] := MakeDarkColor (ACanvas.Pixels [X-1, Y-1], 20);
        ACanvas.Pixels [X, Y+1] := MakeDarkColor (ACanvas.Pixels [X, Y+1], 20);
        ACanvas.Pixels [X+1, Y] := MakeDarkColor (ACanvas.Pixels [X+1, Y], 20);
      end;
    end;
end;

end.
