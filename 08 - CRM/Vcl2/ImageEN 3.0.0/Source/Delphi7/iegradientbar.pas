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

unit iegradientbar;

{$R-}
{$Q-}

{$I ie.inc}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, ImageEnProc, hyiedefs, iegdiplus;

type

{!!
<FS>TIEGradientDir

<FM>Declaration<FC>
}
  TIEGradientDir = (gdHorizontal, gdVertical);
{!!}

  // automatic mouse interactions
{!!
<FS>TIEMouseInteractItemsGr

<FM>Declaration<FC>
}
  TIEMouseInteractItemsGr = ( migDragGrip );
{!!}

{!!
<FS>TIEMouseInteractGr

<FM>Declaration<FC>
type TIEMouseInteractGr = set of <A TIEMouseInteractItemsGr>;
!!}
  TIEMouseInteractGr = set of TIEMouseInteractItemsGr;

{!!
<FS>TIEGradientBar

<FM>Description<FN>
TIEGradientBar component shows a gradient bar, with a grip with which the user can select a color or an index.

<FM>Properties<FN>

  <A TIEGradientBar.BeginColor>
  <A TIEGradientBar.Color>
  <A TIEGradientBar.ColorIndex>
  <A TIEGradientBar.Direction>
  <A TIEGradientBar.EndColor>
  <A TIEGradientBar.MouseInteract>
  <A TIEGradientBar.RGB>

<FM>Methods<FN>

<FM>Events<FN>

  <A TIEGradientBar.OnChange>
!!}
  TIEGradientBar = class(TCustomControl)
  private
    { Private declarations }
    fColorIndex: integer;
    fBeginColor: TColor;
    fEndColor: TColor;
    fGradient: array[0..255] of TColor;
    fDirection: TIEGradientDir;
    fOnChange: TNotifyEvent;
    fMouseInteract: TIEMouseInteractGr;
    procedure SetColorIndex(v: integer);
    procedure SetBeginColor(v: TColor);
    procedure SetEndColor(v: TColor);
    function GetColor: TColor;
    function GetRGB: TRGB;
    procedure SetDirection(v: TIEGradientDir);
    procedure SetMouseInteractGr(v: TIEMouseInteractGr);
    function GetMouseInteractGr: TIEMouseInteractGr;
  protected
    { Protected declarations }
    procedure WMSize(var Message: TWMSize); message WM_SIZE;
    procedure WMEraseBkgnd(var Message: TMessage); message WM_ERASEBKGND;
    procedure MouseMove(Shift: TShiftState; X, Y: Integer); override;
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
    procedure MouseUp(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
    procedure CalcGradient;
    procedure DrawGrip;
  public
    { Public declarations }
    procedure Paint; override;
    constructor Create(Owner: TComponent); override;
    destructor Destroy; override;
    property ColorIndex: integer read fColorIndex write SetColorIndex;
    property Color: TColor read GetColor;
    property RGB: TRGB read GetRGB;
  published
    { Published declarations }
    property BeginColor: TColor read fBeginColor write SetBeginColor default clBlack;
    property EndColor: TColor read fEndColor write SetEndColor default clWhite;
    property Direction: TIEGradientDir read fDirection write SetDirection default gdVertical;

{!!
<FS>TIEGradientBar.OnChange

<FM>Declaration<FC>
property OnChange: TNotifyEvent;

<FM>Description<FN>
This event is called when the user selects a color.
!!}
    property OnChange: TNotifyEvent read fOnChange write fOnChange;

    property MouseInteract: TIEMouseInteractGr read GetMouseInteractGr write SetmouseInteractGr default [migDragGrip];
    property Width default 40;
    property Height default 300;
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
  end;

implementation

uses hyieutils;

{$R-}

constructor TIEGradientBar.Create(Owner: TComponent);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIEGradientBar.Create'); {$endif}
  inherited Create(Owner);
  ControlStyle := ControlStyle + [csOpaque, csAcceptsControls];
  Height := 300;
  Width := 40;
  fColorIndex := 0;
  fBeginColor := clBlack;
  fEndColor := clWhite;
  fDirection := gdVertical;
  fMouseInteract := [migDragGrip];
  CalcGradient;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

destructor TIEGradientBar.Destroy;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIEGradientBar.Destroy'); {$endif}
  inherited;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TIEGradientBar.WMEraseBkgnd(var Message: TMessage);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIEGradientBar.WMEraseBkgnd'); {$endif}
  Message.Result := 0;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TIEGradientBar.WMSize(var Message: TWMSize);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIEGradientBar.WMSize'); {$endif}
  inherited;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TIEGradientBar.ColorIndex

<FM>Declaration<FC>
property ColorIndex: integer;

<FM>Description<FN>
ColorIndex is the color index that user has selected. It can be 0 (BeginColor) to 255 (EndColor).

!!}
procedure TIEGradientBar.SetColorIndex(v: integer);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIEGradientBar.SetColorIndex'); {$endif}
  fColorIndex := v;
  invalidate;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TIEGradientBar.BeginColor

<FM>Declaration<FC>
property BeginColor: TColor;

<FM>Description<FN>
First color of the gradient bar.
!!}
procedure TIEGradientBar.SetBeginColor(v: TColor);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIEGradientBar.SetBeginColor'); {$endif}
  fBeginColor := v;
  CalcGradient;
  invalidate;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TIEGradientBar.EndColor

<FM>Declaration<FC>
property EndColor: TColor;

<FM>Description<FN>
Final color of the gradient bar.
!!}
procedure TIEGradientBar.SetEndColor(v: TColor);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIEGradientBar.SetEndColor'); {$endif}
  fEndColor := v;
  CalcGradient;
  invalidate;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TIEGradientBar.Color


<FM>Declaration<FC>
property Color: TColor;

<FM>Description<FN>
The color the user has selected.

Read-only

!!}
function TIEGradientBar.GetColor: TColor;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIEGradientBar.GetColor'); {$endif}
  result := fGradient[fColorIndex];
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TIEGradientBar.RGB

<FM>Declaration<FC>
property RGB: <A TRGB>;

<FM>Description<FN>
The color the user has selected.

Read-only

!!}
function TIEGradientBar.GetRGB: TRGB;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIEGradientBar.GetRGB'); {$endif}
  result := TColor2TRGB(fGradient[fColorIndex]);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TIEGradientBar.Direction

<FM>Declaration<FC>
property Direction: <A TIEGradientDir>;

<FM>Description<FN>
Direction is gdHorizontal for a horizontal bar or gdVertical for a vertical bar.
!!}
procedure TIEGradientBar.SetDirection(v: TIEGradientDir);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIEGradientBar.SetDirection'); {$endif}
  fDirection := v;
  invalidate;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TIEGradientBar.CalcGradient;
var
  BeginRGB, EndRGB: TRGB;
  ir, ig, ib: double;
  q: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIEGradientBar.CalcGradient'); {$endif}
  BeginRGB := TColor2TRGB(fBeginColor);
  EndRGB := TColor2TRGB(fEndColor);
  ir := (-EndRGB.r + BeginRGB.r) / 255;
  ig := (-EndRGB.g + BeginRGB.g) / 255;
  ib := (-EndRGB.b + BeginRGB.b) / 255;
  for q := 0 to 255 do
    fGradient[q] := RGB2TColor(blimit(EndRGB.r + trunc(q * ir)),
      blimit(EndRGB.g + trunc(q * ig)),
      blimit(EndRGB.b + trunc(q * ib)));
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TIEGradientBar.Paint;
var
  ii: double;
  q: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIEGradientBar.Paint'); {$endif}
  Canvas.Pen.Style := psSolid;
  Canvas.Pen.Mode := pmCopy;
  case fDirection of
    gdVertical:
      begin
        if ClientHeight < 2 then
          exit;
        ii := 255 / (ClientHeight - 1);
        for q := 0 to ClientHeight - 1 do
        begin
          Canvas.Pen.Color := fGradient[trunc(ii * q)];
          Canvas.MoveTo(0, q);
          Canvas.LineTo(ClientWidth, q);
        end;
      end;
    gdHorizontal:
      begin
        if ClientWidth < 2 then
          exit;
        ii := 255 / (ClientWidth - 1);
        for q := 0 to ClientWidth - 1 do
        begin
          Canvas.Pen.Color := fGradient[trunc(ii * q)];
          Canvas.MoveTo(q, 0);
          Canvas.LineTo(q, ClientHeight);
        end;
      end;
  end;
  if (not (csDesigning in ComponentState)) and (migDragGrip in fMouseInteract) then
    DrawGrip;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// draw grip at fColorIndex position

procedure TIEGradientBar.DrawGrip;
var
  ii: double;
  pp: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIEGradientBar.DrawGrip'); {$endif}
  Canvas.Pen.Style := psSolid;
  Canvas.Pen.Mode := pmNot;
  Canvas.Brush.Style := bsClear;
  case fDirection of
    gdVertical:
      begin
        ii := (ClientHeight - 1) / 255;
        pp := trunc(fColorIndex * ii);
        Canvas.Rectangle(0, pp + 3, clientwidth, pp - 3);
      end;
    gdHorizontal:
      begin
        ii := (ClientWidth - 1) / 255;
        pp := trunc(fColorIndex * ii);
        Canvas.Rectangle(pp - 3, 0, pp + 3, clientheight);
      end;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// mouse movement

procedure TIEGradientBar.MouseMove(Shift: TShiftState; X, Y: Integer);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIEGradientBar.MouseMove'); {$endif}
  inherited;
  //
  y := ilimit(y, 0, clientheight - 1);
  x := ilimit(x, 0, clientwidth - 1);
  if MouseCapture then
  begin
    if (migDragGrip in fMouseInteract) then
    begin
      DrawGrip;
      case fDirection of
        gdVertical: fColorIndex := trunc(y / (clientheight - 1) * 255);
        gdHorizontal: fColorIndex := trunc(x / (clientwidth - 1) * 255);
      end;
      DrawGrip;
      if Assigned(fOnChange) then
        fOnChange(Self);
    end;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// pressing button mouse

procedure TIEGradientBar.MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIEGradientBar.MouseDown'); {$endif}
  inherited;
  y := ilimit(y, 0, clientheight - 1);
  x := ilimit(x, 0, clientwidth - 1);
  if (Button = mbLeft) then
  begin
    if (migDragGrip in fMouseInteract) then
    begin
      DrawGrip;
      case fDirection of
        gdVertical: fColorIndex := trunc(y / (clientheight - 1) * 255);
        gdHorizontal: fColorIndex := trunc(x / (clientwidth - 1) * 255);
      end;
      DrawGrip;
      if Assigned(fOnChange) then
        fOnChange(Self);
    end;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// mouse up

procedure TIEGradientBar.MouseUp(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIEGradientBar.MouseUp'); {$endif}
  inherited;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TIEGradientBar.MouseInteract

<FM>Declaration<FC>
property MouseInteract: <A TIEMouseInteractGr>;

<FM>Description<FN>
Specify the automatic interactions with mouse (user).

MouseInteract can be migDragGrip if you want to select a color (or an index).
!!}
procedure TIEGradientBar.SetMouseInteractGr(v: TIEMouseInteractGr);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIEGradientBar.SetMouseInteractGr'); {$endif}
  fMouseInteract := v;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

function TIEGradientBar.GetMouseInteractGr: TIEMouseInteractGr;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIEGradientBar.GetMouseInteractGr'); {$endif}
  result := fMouseInteract;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

end.



