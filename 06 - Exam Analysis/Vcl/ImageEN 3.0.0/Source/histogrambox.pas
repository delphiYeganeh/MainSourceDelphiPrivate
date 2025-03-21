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

unit histogrambox;

{$R-}
{$Q-}

{$I ie.inc}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, ImageEnProc, hyiedefs;

type

{!!
<FS>THistogramKind

<FM>Declaration<FC>
}
  THistogramKind = set of (hkRed, hkGreen, hkBlue, hkGray);
{!!}

{!!
<FS>THistogramLabels

<FM>Declaration<FC>
}
  THistogramLabels = set of (hlVertical, hlHorizontal);
{!!}

{!!
<FS>THistogramStyle

<FM>Declaration<FC>
}
  THistogramStyle = (hsBars, hsLines);
{!!}

{!!
<FS>THistogramBox

<FM>Description<FN>
THistogramBox can be attached to a <A TImageEnProc> component from which it gets information to compute and display the color channels histogram. THistogramBox is readonly.

<FM>Properties<FN>

  <A THistogramBox.AttachedImageEnProc>
  <A THistogramBox.Background>
  <A THistogramBox.CompBar>
  <A THistogramBox.GrayColor>
  <A THistogramBox.HistogramKind>
  <A THistogramBox.HistogramStyle>
  <A THistogramBox.HistogramXPos>
  <A THistogramBox.Labels>

<FM>Methods<FN>


<FM>Events<FN>
!!}
  THistogramBox = class(TCustomControl)
  private
    { Private declarations }
    Bitmap: TBitMap;
    fBackground: TColor;
    fAIEP: TImageEnProc; // abb. fAttachedImageEnProc (!)
    fHistKind: THistogramKind;
    fLabels: THistogramLabels;
    fCompBar: boolean;
    fHistogramStyle: THistogramStyle;
    fHistogramXPos: integer;
    fGrayColor: TColor;
    procedure SetBackground(bk: TColor);
    procedure SetLabels(v: THistogramLabels);
    procedure SetCompBar(v: boolean);
    procedure SetHistogramStyle(v: THistogramStyle);
    procedure SetHistogramKind(v: THistogramKind);
    procedure SetAIEP(v: TImageEnProc);
    function GetHistogramKind: THistogramKind;
    function GetLabels: THistogramLabels;
  protected
    { Protected declarations }
    procedure WMSize(var Message: TWMSize); message WM_SIZE;
    procedure WMEraseBkgnd(var Message: TMessage); message WM_ERASEBKGND;
    procedure MouseMove(Shift: TShiftState; X, Y: Integer); override;
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
    procedure MouseUp(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
  public
    { Public declarations }
    procedure Paint; override;
    constructor Create(Owner: TComponent); override;
    destructor Destroy; override;
    procedure Update; override;

{!!
<FS>THistogramBox.HistogramXPos

<FM>Declaration<FC>
property HistogramXPos: integer;

<FM>Description<FN>
HistogramXPos is the left X coordinate where the histogram will be painted (with the component).

Read-only
!!}
    property HistogramXPos: integer read fHistogramXPos;

  published
    { Published declarations }
    property AttachedImageEnProc: TImageEnProc read fAIEP write SetAIEP;
    property Background: TColor read fBackground write SetBackground default clWhite;
    property HistogramKind: THistogramKind read GetHistogramKind write SetHistogramKind default [hkGray];
    property Labels: THistogramLabels read GetLabels write SetLabels default [hlVertical, hlHorizontal];
    property CompBar: boolean read fCompBar write SetCompBar default true;
    property HistogramStyle: THistogramStyle read fHistogramStyle write SetHistogramStyle default hsBars;

{!!
<FS>THistogramBox.GrayColor

<FM>Declaration<FC>
property GrayColor:Tcolor;

<FM>Description<FN>
GrayColor is the color assigned to the gray histogram.
!!}
    property GrayColor: TColor read fGrayColor write fGrayColor default clBlack;

    property Align;
    property DragCursor;
    property DragMode;
    property Enabled;
    property ParentShowHint;
    property PopupMenu;
    property ShowHint;
    property Visible;
    property OnClick;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDrag;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnStartDrag;
    property Font;
    property Width default 256;
    property Height default 105;
  end;

implementation

uses hyieutils, iegdiplus;

{$R-}

/////////////////////////////////////////////////////////////////////////////////////

constructor THistogramBox.Create(Owner: TComponent);
begin
  inherited Create(Owner);
  //controlstyle:=controlstyle+[csOpaque];
  ControlStyle := ControlStyle + [csOpaque, csAcceptsControls];
  fBackground := clWhite;
  fHistKind := [hkGray];
  fLabels := [hlVertical, hlHorizontal];
  fCompBar := true;
  fHistogramStyle := hsBars;
  fGrayColor := clBlack;
  Height := 105;
  Width := 256;
  bitmap := TBitmap.create;
  bitmap.PixelFormat := pf24bit;
  bitmap.Width := width;
  bitmap.Height := height;
  fAIEP := nil;
  Update;
end;

/////////////////////////////////////////////////////////////////////////////////////

destructor THistogramBox.Destroy;
begin
  FreeAndNil(bitmap);
  inherited;
end;

procedure THistogramBox.Paint;
begin
  canvas.Draw(0, 0, bitmap);
end;

procedure THistogramBox.WMEraseBkgnd(var Message: TMessage);
begin
  Message.Result := 0;
end;

procedure THistogramBox.WMSize(var Message: TWMSize);
begin
  inherited;
  bitmap.Width := message.Width;
  bitmap.Height := message.Height;
  Update;
end;

{!!
<FS>THistogramBox.Background

<FM>Declaration<FC>
property Background: TColor;

<FM>Description<FN>
Background is the background color.
!!}
procedure THistogramBox.SetBackground(bk: TColor);
begin
  fBackground := bk;
  update;
end;

/////////////////////////////////////////////////////////////////////////////////////
// movimento mouse

procedure THistogramBox.MouseMove(Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  //
end;

/////////////////////////////////////////////////////////////////////////////////////
// pressione di un bottone del mouse

procedure THistogramBox.MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if (Button = mbLeft) then
  begin
  end;
end;

/////////////////////////////////////////////////////////////////////////////////////
// rilascio mouse
// fMouseSel 0=niente  1=capture su sat/val  2=capture su hue

procedure THistogramBox.MouseUp(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  //
end;

/////////////////////////////////////////////////////////////////////////////////////

procedure THistogramBox.SetLabels(v: THistogramLabels);
begin
  if v <> fLabels then
  begin
    fLabels := v;
    Update;
  end;
end;

{!!
<FS>THistogramBox.CompBar

<FM>Declaration<FC>
property CompBar: boolean;

<FM>Description<FN>
If True, THistogramBox shows a gradient bar at the bottom of the component.
!!}
procedure THistogramBox.SetCompBar(v: boolean);
begin
  if v <> fCompBar then
  begin
    fCompBar := v;
    Update;
  end;
end;

{!!
<FS>THistogramBox.HistogramStyle

<FM>Declaration<FC>
property HistogramStyle: <A THistogramStyle>;

<FM>Description<FN>
Specifies if the histogram is displayed as lines or vertical bars.
!!}
procedure THistogramBox.SetHistogramStyle(v: THistogramStyle);
begin
  if v <> fHistogramStyle then
  begin
    fHistogramStyle := v;
    Update;
  end;
end;

procedure THistogramBox.SetHistogramKind(v: THistogramKind);
begin
  if v <> fHistKind then
  begin
    fHistKind := v;
    Update;
  end;
end;

/////////////////////////////////////////////////////////////////////////////////////
// ricostruisce l'istogramma in base alla selezione corrente

procedure THistogramBox.Update;
var
  MaxV: dword; // massimo valore tra r,g,b,gray (max valore verticale)
  q, w, e: integer;
  PHist: PHistogram;
  dx, dy, x1: integer;
  xx: integer;
  sz: TSize;
  compdy: integer;
  px: pRGBROW;
  CVS:TIECanvas;
begin
  CVS:=TIECanvas.Create(Bitmap.Canvas,true,true);
  CVS.Brush.Color := fBackground;
  CVS.FillRect(rect(0, 0, bitmap.width, bitmap.height));
  if (assigned(fAIEP) and assigned(fAIEP.AttachedIEBitmap)) or (csDesigning in ComponentState) then
  begin
    new(pHist);
    if csDesigning in ComponentState then
      for q := 0 to 255 do
      begin
        pHist^[q].r := random(256);
        pHist^[q].g := random(256);
        pHist^[q].b := random(256);
        pHist^[q].Gray := random(256);
      end
    else
      fAIEP.GetHistogram(pHist);
    // trova massimo valore nell'istogramma
    MaxV := 0;
    for q := 0 to 255 do
    begin
      if (hkRed in fHistKind) and (PHist^[q].r > MaxV) then
        MaxV := PHist^[q].r;
      if (hkGreen in fHistKind) and (PHist^[q].g > MaxV) then
        MaxV := PHist^[q].g;
      if (hkBlue in fHistKind) and (PHist^[q].b > MaxV) then
        MaxV := PHist^[q].b;
      if (hkGray in fHistKind) and (PHist^[q].Gray > MaxV) then
        MaxV := PHist^[q].Gray;
    end;
    if MaxV > 0 then
    begin
      dx := width;
      dy := height;
      x1 := 0;
      compdy := trunc(abs(Font.Height) * 1.2);
      if fCompBar then
        dec(dy, compdy + 2);
      // LABELS
      if (hlVertical in fLabels) then
      begin
        // disegna asse verticale con numerazioni
        CVS.Font.Assign( Font );
        if assigned(fAIEP) and assigned(fAIEP.AttachedIEBitmap) then
          sz := CVS.TextExtent(inttostr(fAIEP.AttachedIEBitmap.Width * fAIEP.AttachedIEBitmap.Height))
        else
          sz := CVS.TextExtent(inttostr(MaxV));
        CVS.TextOut(0, dy div 2, inttostr(MaxV div 2));
        CVS.TextOut(0, 0, inttostr(MaxV));
        CVS.Pen.Color := Font.Color;
        dec(dx, sz.cx + 2);
        inc(x1, sz.cx + 2);
      end;
      if (hlHorizontal in fLabels) then
      begin
        // disegna asse orizzontale con numerazioni
        CVS.Font.Assign( Font );
        if assigned(fAIEP) and assigned(fAIEP.AttachedIEBitmap) then
          sz := CVS.TextExtent(inttostr(fAIEP.AttachedIEBitmap.Width * fAIEP.AttachedIEBitmap.Height))
        else
          sz := CVS.TextExtent(inttostr(MaxV));
        for q := 0 to 3 do
          CVS.TextOut(x1 + round(((q * 64) / 256) * dx), dy - abs(Font.Height) - 1, inttostr(q * 64));
        q := CVS.TextWidth('255');
        CVS.TextOut(x1 + dx - q, dy - abs(Font.Height) - 1, '255');
        dec(dy, sz.cy + 2);
        // assi
        CVS.MoveTo(x1 - 1, 0);
        CVS.LineTo(x1 - 1, dy);
        CVS.LineTo(x1 + dx, dy);
      end;
      //
      fHistogramXPos := Left + x1;
      // COMPBAR
      if fCompBar then
      begin
        for w := 0 to compdy - 1 do
        begin // row
          px := bitmap.ScanLine[bitmap.height - w - 1];
          for q := 0 to dx - 1 do
          begin
            px^[x1 + q].r := 0;
            px^[x1 + q].g := 0;
            px^[x1 + q].b := 0;
            e := round(q / dx * 256);
            if (hkRed in fHistKind) or (hkGray in fHistKind) then
              px^[x1 + q].r := e;
            if (hkGreen in fHistKind) or (hkGray in fHistKind) then
              px^[x1 + q].g := e;
            if (hkBlue in fHistKind) or (hkGray in fHistKind) then
              px^[x1 + q].b := e;
          end;
        end;
      end;
      // disegna istogramma su Bitmap
      // hsBars
      if fHistogramStyle = hsBars then
        for xx := 0 to dx - 1 do
        begin
          q := trunc(xx / dx * 256);
          if hkRed in fHistKind then
          begin
            CVS.Pen.Color := clRed;
            CVS.MoveTo(xx + x1, dy - 1);
            e := round((PHist^[q].r / MaxV) * dy);
            if (PHist^[q].r > 0) and (e = 0) then
              e := 1;
            CVS.LineTo(xx + x1, dy - 1 - e);
          end;
          if hkGreen in fHistKind then
          begin
            CVS.Pen.Color := clGreen;
            CVS.MoveTo(xx + x1, dy - 1);
            e := round((PHist^[q].g / MaxV) * dy);
            if (PHist^[q].g > 0) and (e = 0) then
              e := 1;
            CVS.LineTo(xx + x1, dy - 1 - e);
          end;
          if hkBlue in fHistKind then
          begin
            CVS.Pen.Color := clBlue;
            CVS.MoveTo(xx + x1, dy - 1);
            e := round((PHist^[q].b / MaxV) * dy);
            if (PHist^[q].b > 0) and (e = 0) then
              e := 1;
            CVS.LineTo(xx + x1, dy - 1 - e);
          end;
          if hkGray in fHistKind then
          begin
            CVS.Pen.Color := fGrayColor;
            CVS.MoveTo(xx + x1, dy - 1);
            e := round((PHist^[q].Gray / MaxV) * dy);
            if (PHist^[q].Gray > 0) and (e = 0) then
              e := 1;
            CVS.LineTo(xx + x1, dy - 1 - e);
          end;
        end;
      // hsLines
      if fHistogramStyle = hsLines then
      begin
        if hkRed in fHistKind then
        begin
          CVS.pen.color := clRed;
          CVS.moveto(x1, dy - 1);
          for xx := 0 to dx - 1 do
          begin
            q := trunc(xx / dx * 256);
            CVS.LineTo(xx + x1, dy - 1 - round((PHist^[q].r / MaxV) * dy) + 1);
          end;
        end;
        if hkGreen in fHistKind then
        begin
          CVS.Pen.Color := clGreen;
          CVS.MoveTo(x1, dy - 1);
          for xx := 0 to dx - 1 do
          begin
            q := trunc(xx / dx * 256);
            CVS.LineTo(xx + x1, dy - 1 - round((PHist^[q].g / MaxV) * dy) + 1);
          end;
        end;
        if hkBlue in fHistKind then
        begin
          CVS.Pen.Color := clBlue;
          CVS.MoveTo(x1, dy - 1);
          for xx := 0 to dx - 1 do
          begin
            q := trunc(xx / dx * 256);
            CVS.LineTo(xx + x1, dy - 1 - round((PHist^[q].b / MaxV) * dy) + 1);
          end;
        end;
        if hkGray in fHistKind then
        begin
          CVS.Pen.Color := fGrayColor;
          CVS.MoveTo(x1, dy - 1);
          for xx := 0 to dx - 1 do
          begin
            q := trunc(xx / dx * 256);
            CVS.LineTo(xx + x1, dy - 1 - round((PHist^[q].Gray / MaxV) * dy) + 1);
          end;
        end;
      end;
    end;
    //
    dispose(pHist);
  end;
  CVS.Free;
  invalidate;
end;

procedure THistogramBox.Notification(AComponent: TComponent; Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (AComponent = fAIEP) and (Operation = opRemove) then
    fAIEP := nil;
end;

{!!
<FS>THistogramBox.AttachedImageEnProc

<FM>Declaration<FC>
property AttachedImageEnProc: <A TImageEnProc>;

<FM>Description<FN>
Use this property if you want to attach THistogramBox to a TImageEnProc object.


<FM>Example<FC>

HistogramBox1.AttachedImageEnProc:=ImageEnProc1;
HistogramBox1.Update; // now HistogramBox1 display the histogram of image attached to ImageEnProc1
!!}
procedure THistogramBox.SetAIEP(v: TImageEnProc);
begin
  fAIEP := v;
  if assigned(fAIEP) then
    fAIEP.FreeNotification(self);
end;

{!!
<FS>THistogramBox.HistogramKind

<FM>Declaration<FC>
property HistogramKind: <A THistogramKind>;

<FM>Description<FN>
Selects which channels are shown.

!!}
function THistogramBox.GetHistogramKind: THistogramKind;
begin
  result := fHistKind;
end;

{!!
<FS>THistogramBox.Labels

<FM>Declaration<FC>
property Labels: <A THistogramLabels>;

<FM>Description<FN>
Labels sets which labels (vertical and horizontal) are shown.
!!}
function THistogramBox.GetLabels: THistogramLabels;
begin
  result := fLabels;
end;

end.


