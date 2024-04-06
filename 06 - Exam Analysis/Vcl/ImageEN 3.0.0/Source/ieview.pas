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

unit ieview;

{$IFDEF FPC}
  {$MODE DELPHI}
{$ENDIF}

{$R-}
{$Q-}
{$HINTS OFF}

{$I ie.inc}

interface

uses Windows, Messages, SysUtils, Controls, forms, classes, graphics, hyieutils
{$ifdef FPC}
,LCLType,LMessages
{$endif}

;


type

  // called to notify that Bitmap has changed
  TIEBitmapChangeEvent = procedure(Sender: TObject; destroying: boolean) of object;
  PIEBitmapChangeEvent = ^TIEBitmapChangeEvent;

{!!
<FS>TIEView

<FM>Description<FN>
TIEView is the base abstract class for TImageEnView and TImageEnMView.
!!}
  // Base class for TImageEnView and TImageEnMView
  TIEView = class(TCustomControl)
  private
    FBorderStyle: TBorderStyle;
    fBmpChange: TList; // methods list to call when Bitmap changes
    fOnMouseEnter: TNotifyEvent;
    fOnMouseLeave: TNotifyEvent;
    procedure SetBorderStyle(Value: TBorderStyle);
    function GetCtl3D: boolean;
    procedure SetCtl3D(v: boolean);
  protected
    fBackGround: TColor;
    fDPIX, fDPIY: integer; // horizontal and vertical dpi
    procedure SetBackGround(cl: TColor); virtual;
    function GetFBitmap: TBitmap; virtual;
    function GetIEBitmap: TIEBitmap; virtual;
    procedure CreateParams(var Params: TCreateParams); override;
    procedure CMMouseEnter(var Message: TMessage); message CM_MOUSEENTER;
    procedure CMMouseLeave(var Message: TMessage); message CM_MOUSELEAVE;
    function GetAlphaChannel: TIEBitmap; virtual; abstract;
    function GetHasAlphaChannel: boolean; virtual; abstract;
  public
{$IFDEF OCXVERSION}
    ReplyMessageTo: HWND;
{$ENDIF}
    procedure RemoveAlphaChannel(Merge: boolean); virtual; abstract;
    procedure LockPaint; virtual; abstract;
    function UnLockPaint: integer; virtual; abstract;
    function NPUnLockPaint: integer; virtual; abstract;
    procedure SetDPIX(dpiX: integer); virtual;
    procedure SetDPIY(dpiY: integer); virtual;
    procedure SetDPI(dpiX, dpiY: integer); virtual;
    procedure ImageChange; virtual;
    constructor Create(Owner: TComponent); override;
    destructor Destroy; override;
    property DpiX: integer read fDpiX write SetDPIX;
    property DpiY: integer read fDpiY write SetDPIY;
    property Bitmap: TBitmap read GetFBitmap;
    property IEBitmap: TIEBitmap read GetIEBitmap;
    procedure CallBitmapChangeEvents; virtual;
    function RegisterBitmapChangeEvent(v: TIEBitmapChangeEvent): integer;
    procedure RemoveBitmapChangeEvent(idx: integer);
    function GetCanvas: TCanvas;
    property AlphaChannel: TIEBitmap read GetAlphaChannel;
    property HasAlphaChannel: boolean read GetHasAlphaChannel;
{$IFDEF OCXVERSION}
    procedure WndProc(var Message: TMessage); override;
{$ENDIF}
  published
    property Background: TColor read fBackGround write SetBackGround default clBtnFace;
    property Ctl3D read GetCtl3D write SetCtl3d default true;
    property ParentCtl3D;

{!!
<FS>TIEView.OnMouseEnter

<FM>Declaration<FC>
property OnMouseEnter:TNotifyEvent;

<FM>Description<FN>
OnMouseEnter occurs when the mouse pointer moves over the component. Write an OnMouseEnter event handler to take specific action when the user moves the mouse over the component.
!!}
    property OnMouseEnter: TNotifyEvent read fOnMouseEnter write fOnMouseEnter;

{!!
<FS>TIEView.OnMouseLeave

<FM>Declaration<FC>
property OnMouseLeave:TNotifyEvent;

<FM>Description<FN>
OnMouseLeave occurs when the mouse pointer moves off of the component. Write an OnMouseLeave event handler to take specific action when the user moves the mouse off the component.
!!}
    property OnMouseLeave: TNotifyEvent read fOnMouseLeave write fOnMouseLeave;
    
    property BorderStyle: TBorderStyle read FBorderStyle write SetBorderStyle default bsSingle;

    property OnEnter;
    property OnExit;

  end;

  // GLOBAL FIELDS
var
  gSystemColors: integer; // display colors number (bit per pixel)
  gIsRemoteSession: boolean;  // this is a RDP session
  gSystemDPIX, gSystemDPIY: integer; // system's DPIX and DPIY

{!!
<FS>gDefaultDPIX

<FM>Declaration<FC>
gDefaultDPIX: integer;

<FM>Description<FN>
Specify the default DPI X value assigned when a loaded image doesn't contain this information. Default value is 300 for both X and Y.
!!}
  gDefaultDPIX: integer;

{!!
<FS>gDefaultDPIY

<FM>Declaration<FC>
gDefaultDPIY: integer;

<FM>Description<FN>
Specify the default DPI Y value assigned when a loaded image doesn't contain this information. Default value is 300 for both X and Y.
!!}
  gDefaultDPIY: integer;

  gMMX: boolean; // CPU supports MMX
  gEdgeX, gEdgeY: integer; // system border edges     (3d)
  gBorderX, gBorderY: integer; // system border edges
  gVScrollWidth, gHScrollHeight: integer; // system scrollbar sizes

implementation

uses iemview;

/////////////////////////////////////////////////////////////////////////////////////

procedure TIEView.ImageChange;
begin
  //
end;

/////////////////////////////////////////////////////////////////////////////////////

constructor TIEView.Create(Owner: TComponent);
begin
{$IFDEF OCXVERSION}
  ReplyMessageTo := 0;
{$ENDIF}
  inherited;
  {$ifdef IEDELPHI11}
  ControlStyle := ControlStyle + [csOpaque, csAcceptsControls, csReplicatable, csNeedsBorderPaint];
  {$endif}
  {$ifdef IEDELPHI10}
  ControlStyle := ControlStyle + [csOpaque, csAcceptsControls, csReplicatable, csNeedsBorderPaint];
  {$endif}
  {$ifdef IEDELPHI9}
  ControlStyle := ControlStyle + [csOpaque, csAcceptsControls, csReplicatable, csNeedsBorderPaint];
  {$endif}
  {$ifdef IEDELPHI7}
  ControlStyle := ControlStyle + [csOpaque, csAcceptsControls, csReplicatable, csNeedsBorderPaint];
  {$else}
  ControlStyle := ControlStyle + [csOpaque, csAcceptsControls, csReplicatable];
  {$endif}
  if not NewStyleControls then
    ControlStyle := ControlStyle + [csFramed];
  fOnMouseEnter := nil;
  fOnMouseLeave := nil;
  controlstyle := controlstyle + [csOpaque];
  fBackground := clBtnFace;
  FBorderStyle := bsSingle;
  fBmpChange := TList.Create;
  Ctl3D := true;
end;

destructor TIEView.Destroy;
begin
  while fBmpChange.Count > 0 do
  begin
    if assigned(fBmpChange[0]) then
      PIEBitmapChangeEvent(fBmpChange[0])^(self, true);
    dispose(fBmpChange[0]);
    fBmpChange.Delete(0);
  end;
  FreeAndNil(fBmpChange);
  inherited;
end;

{!!
<FS>TIEView.SetDPI

<FM>Declaration<FC>
procedure SetDPI(dpiX, dpiY: integer);

<FM>Description<FN>
The SetDPI method sets the horizontal (DpiX) and vertical (DpiY) dots per inch of the current image. These values will be saved together with the image.
!!}
procedure TIEView.SetDPI(dpiX, dpiY: integer);
begin
  SetDPIX(dpiX);
  SetDPIY(dpiY);
end;

{!!
<FS>TIEView.DpiX

<FM>Declaration<FC>
property DpiX: integer;

<FM>Description<FN>
DpiX is the number of horizontal dots (pixels) per inch of the image. This value is loaded and saved to file in TImageEnIO component.

!!}
procedure TIEView.SetDPIX(dpiX: integer);
begin
  if dpiX <> 0 then
    fDPIX := dpiX;
end;

{!!
<FS>TIEView.DpiY

<FM>Declaration<FC>
property DpiY: integer;

<FM>Description<FN>
DpiY is the number of vertical dots (pixels) per inch of the image. This value is loaded and saved to file in TImageEnIO component.

!!}
procedure TIEView.SetDPIY(dpiY: integer);
begin
  if dpiY <> 0 then
    fDPIY := dpiY;
end;

function TIEView.GetFBitmap: TBitmap;
begin
  result := nil;
end;

function TIEView.GetIEBitmap: TIEBitmap;
begin
  result := nil;
end;

/////////////////////////////////////////////////////////////////////////////////////
// La propriet� Background corrisponde a Color di TControl, le due sono sincronizzate

procedure TIEView.SetBackGround(cl: TColor);
begin
  fBackground := cl;
end;

/////////////////////////////////////////////////////////////////////////////////////

procedure TIEView.SetBorderStyle(Value: TBorderStyle);
begin
  if FBorderStyle <> Value then
  begin
    FBorderStyle := Value;
    RecreateWnd;
  end;
end;

procedure TIEView.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  with Params do
  begin
    if FBorderStyle = bsSingle then
      if NewStyleControls and Ctl3D then
        ExStyle := ExStyle or WS_EX_CLIENTEDGE
      else
        Style := Style or WS_BORDER;
    WindowClass.style := WindowClass.style and not (CS_HREDRAW or CS_VREDRAW);
  end;
end;

// Aggiunge il metodo "v" alla lista di metodi da chiamare quando la propriet� Bitmap
// cambia (nel senso che punta ad un'altra bitmap)

function TIEView.RegisterBitmapChangeEvent(v: TIEBitmapChangeEvent): integer;
var
  x: PIEBitmapChangeEvent;
begin
  new(x);
  x^ := v;
  fBmpChange.Add(x);
  result := integer(x);
end;

// Rimuove il metodo "idx" dalla lista di metodi da chiamare quando la propriet� Bitmap
// cambia (nel senso che punta ad un'altra bitmap)

procedure TIEView.RemoveBitmapChangeEvent(idx: integer);
var
  i: integer;
begin
  if assigned(fBmpChange) and (idx > -1) then
  begin
    i := fBmpChange.IndexOf(pointer(idx));
    if i > -1 then
    begin
      dispose(fBmpChange[i]);
      fBmpChange.Delete(i);
    end;
  end;
end;

// Chiama gli eventi registrati con RegisterBitmapChangeEvent()

procedure TIEView.CallBitmapChangeEvents;
var
  q: integer;
begin
  if assigned(fBmpChange) then
    for q := 0 to fBmpChange.Count - 1 do
      if assigned(fBmpChange[q]) then
        PIEBitmapChangeEvent(fBmpChange[q])^(self, false);
end;

function TIEView.GetCtl3D: boolean;
begin
  result := inherited Ctl3D;
end;

procedure TIEView.SetCtl3D(v: boolean);
begin
  if v <> (inherited Ctl3D) then
  begin
    inherited Ctl3D := v;
    RecreateWnd;
  end;
end;

procedure TIEView.CMMouseEnter(var Message: TMessage);
begin
  inherited;
  if assigned(fOnMouseEnter) then
    fOnMouseEnter(Self);
end;

procedure TIEView.CMMouseLeave(var Message: TMessage);
begin
  inherited;
  if assigned(fOnMouseLeave) then
    fOnMouseLeave(Self);
end;

{!!
<FS>TIEView.GetCanvas

<FM>Declaration<FC>
function GetCanvas: TCanvas;

<FM>Description<FN>
The GetCanvas method returns the TImageEnView TCanvas object. Use it when you override Paint method to draw your object to the client area of the component.
!!}
function TIEView.GetCanvas: TCanvas;
begin
  result := Canvas;
end;

{$IFDEF OCXVERSION}

procedure TIEView.WndProc(var Message: TMessage);
begin
  inherited WndProc(Message);
  if (ReplyMessageTo <> 0) then
    case Message.Msg of
      WM_MOUSEMOVE,
        WM_ENABLE,
        WM_QUERYDRAGICON,
        WM_COPYDATA,
        WM_HELP,
        WM_CONTEXTMENU,
        WM_KEYDOWN,
        WM_KEYUP,
        (* selection doesn't work with these messages in .NET
            WM_LBUTTONDOWN,
        WM_LBUTTONUP,
        WM_LBUTTONDBLCLK,
            WM_RBUTTONDOWN,
            WM_RBUTTONUP,
            WM_RBUTTONDBLCLK,
            WM_MBUTTONDOWN,
            WM_MBUTTONUP,
            WM_MBUTTONDBLCLK,
            WM_MOUSEWHEEL,
            WM_MOUSEHOVER,
        WM_MOUSELEAVE,
      *)
      WM_SYSKEYDOWN,
        WM_SYSKEYUP,
        WM_KEYLAST,
        WM_ENTERMENULOOP,
        WM_EXITMENULOOP,
        WM_NEXTMENU,
        WM_DROPFILES,
        WM_HOTKEY
        :
        begin
          PostMessage(ReplyMessageTo, Message.Msg, Message.WParam, Message.LParam);
        end;
    end;
end;
{$ENDIF} // end of OCXVERSION


end.
