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

unit iegdiplus;

{$R-}
{$Q-}

{$I ie.inc}

interface

uses Windows, Classes, sysutils, Graphics, hyiedefs, imageenproc, hyieutils;

type

  TIECanvasSmoothingMode=(iesmInvalid, iesmDefault, iesmBestPerformance, iesmBestRenderingQuality, iesmNone, iesmAntialias);


  // GDI+ Pen wrapper and VCL TPen wrapper
  TIEPen = class
    private
      FGHandle:pointer;   // gdi+ handle
      FPen:TPen;          // VCL object
      FColor:TColor;
      FTransparency:integer;
      FWidth:single;
      FStyle:TPenStyle;
      FMode:TPenMode;
      procedure ReCreatePen;
      procedure SetWidth(value:single);
      procedure SetTColor(value:TColor);
      procedure SetTransparency(value:integer);
      procedure SetStyle(value:TPenStyle);
      function GetRGBAColor:TRGBA;
      procedure SetMode(value:TPenMode);
      procedure SetVHandle(value:HPen);
      function GetVHandle:HPen;

    public
      constructor Create(Pen:TPen);
      destructor Destroy; override;
      property Width:single read FWidth write SetWidth;
      property Color:TColor read FColor write SetTColor;
      property Transparency:integer read FTransparency write SetTransparency;
      property Style:TPenStyle read FStyle write SetStyle;
      property Mode:TPenMode read FMode write SetMode;  // not available under GDI+
      property Handle:HPen read GetVHandle write SetVHandle;  // VCL TPen handle
  end;

  // GDI+ Brush wrapper and VCL TBrush wrapper
  TIEBrush = class
    private
      FGHandle:pointer;  // gdi+ handle
      FBrush:TBrush;    // VCL object
      FColor:TColor;
      FTransparency:integer;
      FBackColor:TColor;
      FBackTransparency:integer;
      FStyle:TBrushStyle;
      procedure ReCreateBrush;
      function GetBitmap:TBitmap;
      procedure SetBitmap(value:TBitmap);
      procedure SetTColor(value:TColor);
      procedure SetBackTColor(value:TColor);
      procedure SetTransparency(value:integer);
      procedure SetBackTransparency(value:integer);
      procedure SetStyle(value:TBrushStyle);
      function GetRGBAColor:TRGBA;

    public
      constructor Create(Brush:TBrush);
      destructor Destroy; override;
      property Bitmap:TBitmap read GetBitmap write SetBitmap; // not implemented in GDI+
      property Color:TColor read FColor write SetTColor;
      property BackColor:TColor read FBackColor write SetBackTColor;
      property Transparency:integer read FTransparency write SetTransparency;
      property BackTransparency:integer read FBackTransparency write SetBackTransparency;
      property Style:TBrushStyle read FStyle write SetStyle;
  end;

  // GDI+ Graphics wrapper and VCL TCanvas wrapper
  TIECanvas = class
    private
      FSmoothingMode:TIECanvasSmoothingMode;
      procedure SetSmoothingMode(value:TIECanvasSmoothingMode);
      procedure SetPenPos(value:TPoint);
      function GetHandle:HDC;
      function GetFont:TFont;

    protected
      FGraphics:pointer;
      FCanvas:TCanvas;
      FPen:TIEPen;
      FPenPos:TPoint;
      FBrush:TIEBrush;
      FUseGDIPlus:boolean;

    public
      constructor Create(Canvas:TCanvas; AntiAlias:boolean=true; UseGDIPlus:boolean=true);
      destructor Destroy; override;
      property SmoothingMode:TIECanvasSmoothingMode read FSmoothingMode write SetSmoothingMode;
      property PenPos:TPoint read FPenPos write SetPenPos;
      property Pen:TIEPen read FPen;
      property Brush:TIEBrush read FBrush;
      procedure MoveTo(X,Y:integer);
      procedure LineTo(X,Y:integer);
      procedure FillRect(const Rect: TRect);
      procedure Rectangle(X1, Y1, X2, Y2: Integer); overload;
      procedure Rectangle(const Rect: TRect); overload;
      procedure Ellipse(X1, Y1, X2, Y2: Integer); overload;
      procedure Ellipse(const Rect: TRect); overload;
      procedure DrawLine(X1,Y1,X2,Y2:integer);
      procedure Polygon(Points: array of TPoint);
      procedure Arc(X1, Y1, X2, Y2, X3, Y3, X4, Y4: Integer);
      procedure Polyline(Points: array of TPoint);
      property Handle:HDC read GetHandle;
      function TextWidth(const Text: string): Integer;
      function TextHeight(const Text: string): Integer;
      procedure TextOut(X, Y: Integer; const Text: string);
      property Font:TFont read GetFont;
      procedure TextRect(Rect: TRect; X, Y: Integer; const Text: string);
      function TextExtent(const Text: string): TSize;
      procedure RoundRect(X1, Y1, X2, Y2, X3, Y3: Integer);
  end;

function IEGDIPEnabled:boolean;
function IEGDIPAvailable:boolean;
procedure IEGDIPLoadLibrary;
procedure IEGDIPUnLoadLibrary;

var

{!!
<FS>iegUseGDIPlus

<FM>Declaration<FC>
iegUseGDIPlus:boolean;

<FM>Description<FN>
If True ImageEn used GDIPlus instead of GDI, when available.
!!}
  iegUseGDIPlus:boolean;





implementation





type

  TGdiplusStartupInput = packed record
    GdiplusVersion          : Cardinal;
    DebugEventCallback      : pointer;
    SuppressBackgroundThread: BOOL;
    SuppressExternalCodecs  : BOOL;
  end;
  PGdiplusStartupInput = ^TGdiplusStartupInput;

var
  StartupInput: TGDIPlusStartupInput;
  gdiplusToken: ULONG;
  IE_GDIPLUSHandle:THandle;
  gdiplusRefCount:integer;

  ///// GDI+ functions
  IE_GdiplusStartup : function(out token: ULONG; input: PGdiplusStartupInput; output: pointer): ULONG; stdcall;
  IE_GdiplusShutdown : procedure(token: ULONG); stdcall;
  IE_GdipCreateFromHDC : function(hdc: HDC; out graphics: pointer): ULONG; stdcall;
  IE_GdipDeleteGraphics : function(graphics: pointer): ULONG; stdcall;
  IE_GdipCreatePen1 : function (color: TRGBA; width: Single; unit_: ULONG; out pen: pointer): ULONG; stdcall;
  IE_GdipDeletePen : function(pen: pointer): ULONG; stdcall;
  IE_GdipSetPenWidth : function(pen: pointer; width: Single): ULONG; stdcall;
  IE_GdipSetPenColor : function(pen: pointer; argb: TRGBA): ULONG; stdcall;
  IE_GdipSetPenDashStyle : function(pen: pointer; dashstyle: ULONG): ULONG; stdcall;
  IE_GdipDrawLine : function (graphics: pointer; pen: pointer; x1: Single; y1: Single; x2: Single; y2: Single): ULONG; stdcall;
  IE_GdipSetSmoothingMode : function (graphics: pointer; smoothingMode: ULONG): ULONG; stdcall; // -1=invalid, 0=default, 1=BestPerformance, 2=BestRenderingQuality, 3=None, 4=Antialias
  IE_GdipSetPenDashArray : function(pen: pointer; dash: PSingle; count: Integer): ULONG; stdcall;
  IE_GdipDeleteBrush : function(brush: pointer): ULONG; stdcall;
  IE_GdipCreateSolidFill : function(color: TRGBA; out brush: pointer): ULONG; stdcall;
  IE_GdipFillRectangle : function(graphics: pointer; brush: pointer; x: Single; y: Single; width: Single; height: Single): ULONG; stdcall;
  IE_GdipDrawRectangle : function(graphics: pointer; pen: pointer; x: Single; y: Single; width: Single; height: Single): ULONG; stdcall;
  IE_GdipCreateHatchBrush : function(hatchstyle: Integer; forecol: TRGBA; backcol: TRGBA; out brush: pointer): ULONG; stdcall;
  IE_GdipDrawEllipse : function(graphics: pointer; pen: pointer; x: Single; y: Single; width: Single; height: Single): ULONG; stdcall;
  IE_GdipFillEllipse : function(graphics: pointer; brush: pointer; x: Single; y: Single; width: Single; height: Single): ULONG; stdcall;
  IE_GdipDrawPolygonI : function(graphics: pointer; pen: pointer; points: pointer; count: Integer): ULONG; stdcall;
  IE_GdipFillPolygonI : function(graphics: pointer; brush: pointer; points: pointer; count: Integer; fillMode: ULONG): ULONG; stdcall;
  IE_GdipDrawLinesI : function(graphics: pointer; pen: pointer; points: pointer; count: Integer): ULONG; stdcall;
  IE_GdipDrawArc : function(graphics: pointer; pen: pointer; x: Single; y: Single; width: Single; height: Single; startAngle: Single; sweepAngle: Single): ULONG; stdcall;
  IE_GdipCreatePath : function (brushMode: ULONG; out path: pointer): ULONG; stdcall;
  IE_GdipAddPathArc : function (path: pointer; x, y, width, height, startAngle, sweepAngle: Single): ULONG; stdcall;
  IE_GdipDrawPath : function (graphics: pointer; pen: pointer; path: pointer): ULONG; stdcall;
  IE_GdipFillPath : function (graphics: pointer; brush: pointer; path: pointer): ULONG; stdcall;
  IE_GdipDeletePath : function (path: pointer): ULONG; stdcall;
  IE_GdipAddPathLine : function (path: pointer; x1, y1, x2, y2: Single): ULONG; stdcall;




// Library handling

function IEGDIPAvailable:boolean;
begin
  result := IE_GDIPLUSHandle<>0;
end;

function IEGDIPEnabled:boolean;
begin
  result := iegUseGDIPlus and (IE_GDIPLUSHandle<>0);
end;

procedure IEGDIPLoadLibrary;
begin
  inc(gdiplusRefCount);
  if not IEGDIPAvailable and iegUseGDIPlus and (IE_GDIPlusHandle=0) then
  begin
    IE_GDIPLUSHandle:=LoadLibrary('gdiplus.dll');
    if IE_GDIPLUSHandle<>0 then
    begin
      @IE_GdiplusStartup := GetProcAddress(IE_GDIPLUSHandle,'GdiplusStartup');
      @IE_GdiplusShutdown := GetProcAddress(IE_GDIPLUSHandle,'GdiplusShutdown');
      @IE_GdipCreateFromHDC := GetProcAddress(IE_GDIPLUSHandle,'GdipCreateFromHDC');
      @IE_GdipDeleteGraphics := GetProcAddress(IE_GDIPLUSHandle,'GdipDeleteGraphics');
      @IE_GdipCreatePen1 := GetProcAddress(IE_GDIPLUSHandle,'GdipCreatePen1');
      @IE_GdipDeletePen := GetProcAddress(IE_GDIPLUSHandle,'GdipDeletePen');
      @IE_GdipDrawLine := GetProcAddress(IE_GDIPLUSHandle,'GdipDrawLine');
      @IE_GdipSetSmoothingMode := GetProcAddress(IE_GDIPLUSHandle,'GdipSetSmoothingMode');
      @IE_GdipSetPenWidth := GetProcAddress(IE_GDIPLUSHandle,'GdipSetPenWidth');
      @IE_GdipSetPenColor := GetProcAddress(IE_GDIPLUSHandle,'GdipSetPenColor');
      @IE_GdipSetPenDashStyle := GetProcAddress(IE_GDIPLUSHandle,'GdipSetPenDashStyle');
      @IE_GdipSetPenDashArray := GetProcAddress(IE_GDIPLUSHandle,'GdipSetPenDashArray');
      @IE_GdipDeleteBrush := GetProcAddress(IE_GDIPLUSHandle,'GdipDeleteBrush');
      @IE_GdipCreateSolidFill := GetProcAddress(IE_GDIPLUSHandle,'GdipCreateSolidFill');
      @IE_GdipFillRectangle := GetProcAddress(IE_GDIPLUSHandle,'GdipFillRectangle');
      @IE_GdipDrawRectangle := GetProcAddress(IE_GDIPLUSHandle,'GdipDrawRectangle');
      @IE_GdipCreateHatchBrush := GetProcAddress(IE_GDIPLUSHandle,'GdipCreateHatchBrush');
      @IE_GdipDrawEllipse := GetProcAddress(IE_GDIPLUSHandle,'GdipDrawEllipse');
      @IE_GdipFillEllipse := GetProcAddress(IE_GDIPLUSHandle,'GdipFillEllipse');
      @IE_GdipDrawPolygonI := GetProcAddress(IE_GDIPLUSHandle,'GdipDrawPolygonI');
      @IE_GdipFillPolygonI := GetProcAddress(IE_GDIPLUSHandle,'GdipFillPolygonI');
      @IE_GdipDrawLinesI := GetProcAddress(IE_GDIPLUSHandle,'GdipDrawLinesI');
      @IE_GdipDrawArc := GetProcAddress(IE_GDIPLUSHandle,'GdipDrawArc');
      @IE_GdipCreatePath := GetProcAddress(IE_GDIPLUSHandle,'GdipCreatePath');
      @IE_GdipAddPathArc := GetProcAddress(IE_GDIPLUSHandle,'GdipAddPathArc');
      @IE_GdipDrawPath := GetProcAddress(IE_GDIPLUSHandle,'GdipDrawPath');
      @IE_GdipFillPath := GetProcAddress(IE_GDIPLUSHandle,'GdipFillPath');
      @IE_GdipDeletePath := GetProcAddress(IE_GDIPLUSHandle,'GdipDeletePath');
      @IE_GdipAddPathLine := GetProcAddress(IE_GDIPLUSHandle,'GdipAddPathLine');

      StartupInput.DebugEventCallback := nil;
      StartupInput.SuppressBackgroundThread := False;
      StartupInput.SuppressExternalCodecs   := False;
      StartupInput.GdiplusVersion := 1;
      IE_GdiplusStartup(gdiplusToken, @StartupInput, nil);
    end;
  end;
end;

procedure IEGDIPUnLoadLibrary;
begin
  dec(gdiplusRefCount);
  if IEGDIPAvailable and (gdiplusRefCount=0) then
  begin
    IE_GdiplusShutdown(gdiplusToken);
    FreeLibrary(IE_GDIPLUSHandle);
    IE_GDIPLUSHandle:=0;
  end;
end;


////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////
// TIECanvas

constructor TIECanvas.Create(Canvas:TCanvas; AntiAlias:boolean; UseGDIPlus:boolean);
begin
  FGraphics:=nil;
  FCanvas:=Canvas;
  FPen:=TIEPen.Create(FCanvas.Pen);
  FBrush:=TIEBrush.Create(FCanvas.Brush);
  FUseGDIPlus:=IEGDIPEnabled and UseGDIPlus;
  if FUseGDIPlus then
  begin
    IE_GdipCreateFromHDC(FCanvas.Handle,FGraphics);
    if FGraphics=nil then
      raise Exception.Create('Cannot create TIECanvas. GdipCreateFromHDC failed.');
  end;
  if Antialias then
    SmoothingMode:=iesmAntialias
  else
    SmoothingMode:=iesmBestPerformance;
end;

destructor TIECanvas.Destroy;
begin
  FBrush.Free;
  FPen.Free;
  if FUseGDIPlus then
    IE_GdipDeleteGraphics(FGraphics);
  inherited;
end;

function TIECanvas.GetHandle:HDC;
begin
  result:=FCanvas.Handle;
end;

procedure TIECanvas.SetSmoothingMode(value:TIECanvasSmoothingMode);
begin
  if FUseGDIPlus then
    IE_GdipSetSmoothingMode(FGraphics,integer(value)-1);
end;

procedure TIECanvas.SetPenPos(value:TPoint);
begin
  FPenPos:=value;
  if not FUseGDIPlus then
    FCanvas.PenPos:=value;
end;

procedure TIECanvas.MoveTo(X,Y:integer);
begin
  FPenPos:=Point(X,Y);
  if not FUseGDIPlus then
    FCanvas.MoveTo(X,Y);
end;

procedure TIECanvas.LineTo(X,Y:integer);
begin
  if FUseGDIPlus then
  begin
    IE_GdipDrawLine(FGraphics,FPen.FGHandle,FPenPos.X,FPenPos.Y,X,Y);
    SetPenPos( Point(X,Y) );
  end
  else
    FCanvas.LineTo(X,Y);
end;

procedure TIECanvas.DrawLine(X1,Y1,X2,Y2:integer);
var
  p2: array[0..1] of TPoint;
begin
  if FUseGDIPlus then
    IE_GdipDrawLine(FGraphics,FPen.FGHandle,X1,Y1,X2,Y2)
  else
  begin
    // draws also the last point
    p2[0].x := x1;
    p2[0].y := y1;
    p2[1].x := x2;
    p2[1].y := y2;
    FCanvas.Polygon(p2);
  end;
end;

procedure TIECanvas.FillRect(const Rect: TRect);
begin
  if FUseGDIPlus then
    IE_GdipFillRectangle(FGraphics,FBrush.FGHandle,Rect.Left,Rect.Top,Rect.Right-Rect.Left,Rect.Bottom-Rect.Top)
  else
    FCanvas.FillRect(Rect);
end;

procedure TIECanvas.Rectangle(X1, Y1, X2, Y2: Integer);
begin
  Rectangle(Rect(X1,Y1,X2,Y2));
end;

procedure TIECanvas.Rectangle(const Rect: TRect);
begin
  if FUseGDIPlus then
  begin
    IE_GdipFillRectangle(FGraphics,FBrush.FGHandle,Rect.Left,Rect.Top,Rect.Right-Rect.Left-1,Rect.Bottom-Rect.Top-1);
    IE_GdipDrawRectangle(FGraphics,FPen.FGHandle,Rect.Left,Rect.Top,Rect.Right-Rect.Left-1,Rect.Bottom-Rect.Top-1);
  end
  else
    FCanvas.Rectangle(Rect);
end;

procedure TIECanvas.Ellipse(X1, Y1, X2, Y2: Integer);
begin
  Ellipse(Rect(X1,Y1,X2,Y2));
end;

procedure TIECanvas.Ellipse(const Rect: TRect);
begin
  if FUseGDIPlus then
  begin
    IE_GdipFillEllipse(FGraphics,FBrush.FGHandle,Rect.Left,Rect.Top,Rect.Right-Rect.Left-1,Rect.Bottom-Rect.Top-1);
    IE_GdipDrawEllipse(FGraphics,FPen.FGHandle,Rect.Left,Rect.Top,Rect.Right-Rect.Left-1,Rect.Bottom-Rect.Top-1);
  end
  else
    FCanvas.Ellipse(Rect);
end;

procedure TIECanvas.Polygon(Points: array of TPoint);
begin
  if FUseGDIPlus then
  begin
    IE_GdipDrawPolygonI(FGraphics,FPen.FGHandle,@Points[0],length(Points));
    IE_GdipFillPolygonI(FGraphics,FBrush.FGHandle,@Points[0],length(Points),0);
  end
  else
    FCanvas.Polygon(Points);
end;

procedure TIECanvas.Arc(X1, Y1, X2, Y2, X3, Y3, X4, Y4: Integer);
var
  a1,a2:single;
  cx,cy:integer;
begin
  if FUseGDIPlus then
  begin
    cx:=(X1+X2) div 2;
    cy:=(Y1+Y2) div 2;
    a1:=IEAngle2(cx,cy,X4,Y4) * (180/PI);
    a2:=IEAngle3(X3,Y3,cx,cy,X4,Y4) * (180/PI);
    IE_GdipDrawArc(FGraphics,FPen.FGHandle,X1,Y1,X2-X1+1,Y2-Y1+1,-a1,a2);
  end
  else
    FCanvas.Arc(X1, Y1, X2, Y2, X3, Y3, X4, Y4);
end;

procedure TIECanvas.Polyline(Points: array of TPoint);
begin
  if FUseGDIPlus then
    IE_GdipDrawLinesI(FGraphics,FPen.FGHandle,@Points[0],length(Points))
  else
    FCanvas.Polyline(Points);
end;

// todo...
function TIECanvas.TextWidth(const Text: string): Integer;
begin
  result:=FCanvas.TextWidth(Text);
end;

// todo...
function TIECanvas.TextHeight(const Text: string): Integer;
begin
  result:=FCanvas.TextHeight(Text);
end;

// todo...
procedure TIECanvas.TextOut(X, Y: Integer; const Text: string);
begin
  FCanvas.TextOut(X,Y,Text);
end;

// todo...
function TIECanvas.GetFont:TFont;
begin
  result:=FCanvas.Font;
end;

// todo...
procedure TIECanvas.TextRect(Rect: TRect; X, Y: Integer; const Text: string);
begin
  FCanvas.TextRect(Rect,X,Y,Text);
end;

// todo...
function TIECanvas.TextExtent(const Text: string): TSize;
begin
  result:=FCanvas.TextExtent(Text);
end;

procedure TIECanvas.RoundRect(X1, Y1, X2, Y2, X3, Y3: Integer);
var
  path:pointer;
  width,height:integer;
begin
  if FUseGDIPlus then
  begin
    width:=X2-X1;
    height:=Y2-Y1;
    IE_GdipCreatePath(0, path);
    IE_GdipAddPathArc(path,X1,Y1,X3,Y3,180,90);
    IE_GdipAddPathArc(path,X1+width-X3,Y1,X3,Y3,270,90);
    IE_GdipAddPathArc(path,X1+width-X3,Y1+height-Y3,X3,Y3,0,90);
    IE_GdipAddPathArc(path,X1,Y1+height-Y3,X3,Y3,90,90);
    IE_GdipAddPathLine(path,X1,Y1+height-Y3,X1,Y1+Y3/2);
    IE_GdipFillPath(FGraphics,FBrush.FGHandle,path);
    IE_GdipDrawPath(FGraphics,FPen.FGHandle,path);
    IE_GdipDeletePath(path);
  end
  else
    FCanvas.RoundRect(X1,Y1,X2,Y2,X3,Y3);
end;

// end of TIECanvas
////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////




////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////
// TIEPen

constructor TIEPen.Create(Pen:TPen);
begin
  FPen := Pen;
  FGHandle := nil;
  FColor := Pen.Color;
  FTransparency := 255;
  FWidth := Pen.Width;
  FStyle := Pen.Style;
  FMode := Pen.Mode;
  if IEGDIPEnabled then
    ReCreatePen;
end;

destructor TIEPen.Destroy;
begin
  if IEGDIPEnabled then
    IE_GdipDeletePen(FGHandle);
  inherited;
end;

function TIEPen.GetRGBAColor:TRGBA;
begin
  if FStyle=psClear then
    result:=TColor2TRGBA(FColor,0)
  else
    result:=TColor2TRGBA(FColor,FTransparency);
end;

procedure TIEPen.ReCreatePen;
begin
  if FGHandle<>nil then
    IE_GdipDeletePen(FGHandle);
  FGHandle:=nil;
  IE_GdipCreatePen1(GetRGBAColor,FWidth,2,FGHandle);
  if FGHandle=nil then
    raise Exception.Create('Cannot create TIEPen. GdipCreatePen1 failed.');
  SetStyle( FStyle );
end;

procedure TIEPen.SetTColor(value:TColor);
begin
  FColor:=value;
  if IEGDIPEnabled then
    IE_GdipSetPenColor(FGHandle,GetRGBAColor);
  FPen.Color := value;
end;

procedure TIEPen.SetTransparency(value:integer);
begin
  FTransparency:=value;
  if IEGDIPEnabled then
    IE_GdipSetPenColor(FGHandle,GetRGBAColor);
end;

procedure TIEPen.SetWidth(value:single);
begin
  FWidth:=value;
  if IEGDIPEnabled then
    IE_GdipSetPenWidth(FGHandle,FWidth);
  FPen.Width := trunc(value);
end;

procedure TIEPen.SetStyle(value:TPenStyle);
begin
  FStyle:=value;
  if IEGDIPEnabled then
    case FStyle of
      psClear:
        begin
          IE_GdipSetPenColor(FGHandle,GetRGBAColor);
          IE_GdipSetPenDashStyle(FGHandle,0);
        end;
      psInsideFrame:
        IE_GdipSetPenDashStyle(FGHandle,0);
      else
        IE_GdipSetPenDashStyle(FGHandle,integer(FStyle));
    end;
  FPen.Style := value;
end;

// unsupported in GDI+
procedure TIEPen.SetMode(value:TPenMode);
begin
  FPen.Mode := value;
end;

procedure TIEPen.SetVHandle(value:HPen);
begin
  fPen.Handle:=value;
end;

function TIEPen.GetVHandle:HPen;
begin
  result:=fPen.Handle;
end;


// end of TIEPen
////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////




////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////
// TIEBrush

constructor TIEBrush.Create(Brush:TBrush);
begin
  FBrush := Brush;
  FGHandle := nil;
  FColor := Brush.Color;
  FBackColor := clBlack;
  FBackTransparency := 0;
  FTransparency := 255;
  FStyle := Brush.Style;
  if IEGDIPEnabled then
    ReCreateBrush;
end;

destructor TIEBrush.Destroy;
begin
  if IEGDIPEnabled then
    IE_GdipDeleteBrush(FGHandle);
  inherited;
end;

function TIEBrush.GetRGBAColor:TRGBA;
begin
  if FStyle=bsClear then
    result:=TColor2TRGBA(FColor,0)
  else
    result:=TColor2TRGBA(FColor,FTransparency);
end;

procedure TIEBrush.ReCreateBrush;
begin
  if FGHandle<>nil then
    IE_GdipDeleteBrush(FGHandle);
  FGHandle:=nil;
  case FStyle of
    bsSolid, bsClear:
      begin
        IE_GdipCreateSolidFill(GetRGBAColor,FGHandle);
        if FGHandle=nil then
          raise Exception.Create('Cannot create TIEBrush. GdipCreateSolidFill failed.');
      end;
    bsHorizontal, bsVertical, bsFDiagonal, bsBDiagonal, bsCross, bsDiagCross:
      begin
        IE_GdipCreateHatchBrush(integer(FStyle)-2,GetRGBAColor,TColor2TRGBA(FBackColor,FBackTransparency),FGHandle);
        if FGHandle=nil then
          raise Exception.Create('Cannot create TIEBrush. GdipCreateHatchBrush failed.');
      end;
  end;
end;

// not implemented in GDI+
function TIEBrush.GetBitmap:TBitmap;
begin
  result:=FBrush.Bitmap;
end;

// not implemented in GDI+
procedure TIEBrush.SetBitmap(value:TBitmap);
begin
  FBrush.Bitmap:=value;
end;

procedure TIEBrush.SetTColor(value:TColor);
begin
  FColor:=value;
  if IEGDIPEnabled then
    ReCreateBrush;
  FBrush.Color := value;
end;

procedure TIEBrush.SetBackTColor(value:TColor);
begin
  FBackColor:=value;
  if IEGDIPEnabled then
    ReCreateBrush;
end;

procedure TIEBrush.SetTransparency(value:integer);
begin
  FTransparency:=value;
  if IEGDIPEnabled then
    ReCreateBrush;
end;

procedure TIEBrush.SetBackTransparency(value:integer);
begin
  FBackTransparency:=value;
  if IEGDIPEnabled then
    ReCreateBrush;
end;

procedure TIEBrush.SetStyle(value:TBrushStyle);
begin
  FStyle:=value;
  if IEGDIPEnabled then
    ReCreateBrush;
  FBrush.Style := value;
end;


// end of TIEBrush
////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////



initialization
  iegUseGDIPlus:=true;
  IE_GDIPlusHandle:=0;
  gdiplusRefCount:=0;




end.
