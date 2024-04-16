unit KimiyaMemo;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

const
  crcRadius : Byte = 4;

type
  TKimiyaMemoStyle = (esXP, esFlat);

  TKimiyaMemo = class(TMemo)

  private
    { Private declarations }
    FCanvas  : TControlCanvas;
    FActive  : Boolean;
    FFocused : Boolean;
    FStyle   : TKimiyaMemoStyle;

    FMarginLeft : Word;
    FMarginRight : Word;

    FFrameColor : TColor;
    FInActFrameColor : TColor;
    FAlignment : TAlignment;

    FRoundRadius : Integer;
    FRounded : Boolean;
    FKimiyaNotTextClear : Boolean;

    procedure SetAlignment (AValue : TAlignment);
    procedure SetRounded (AValue : Boolean);
    procedure SetFrameColor (AValue : TColor);
    procedure SetInActFrameColor (AValue : TColor);
    procedure SetMarginLeft (AValue : Word);
    procedure SetMarginRight (AValue : Word);
    procedure SetStyle (AValue : TKimiyaMemoStyle);
    procedure SetRoundRadius (AValue : Integer);
    procedure SetKimiyaNotTextClear (AValue : Boolean);    
  protected
    { Protected declarations }
    procedure WMNCPaint (var Message : TWMNCPaint); message WM_NCPAINT;
    procedure WMNCCalcSize (var Message : TWMNCCalcSize); message WM_NCCALCSIZE;
    procedure MouseEnter (var Message : TMessage); message CM_MOUSEENTER;
    procedure MouseLeave (var Message : TMessage); message CM_MOUSELEAVE;

    procedure CMEnter(var Message: TCMEnter); message CM_ENTER;
    procedure CMExit(var Message: TCMExit); message CM_EXIT;

    procedure WMSize(var Message: TWMSize); message WM_SIZE;

    procedure CreateParams(var Params: TCreateParams); override;
    procedure CreateWnd; override;
    procedure SetEditRect;

    procedure SetShape (ARounded : Boolean);

    procedure Loaded; override;
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    { Published declarations }
    property Alignment : TAlignment read FAlignment write SetAlignment;
    property Rounded : Boolean read FRounded write SetRounded default False;
    property RoundRadius : Integer read FRoundRadius write SetRoundRadius;
    property ActiveFrameColor : TColor read FFrameColor write SetFrameColor;
    property InActiveFrameColor : TColor read FInActFrameColor write SetInActFrameColor;
    property MarginLeft : Word read FMarginLeft write SetMarginLeft;
    property MarginRight : Word read FMarginRight write SetMarginRight;
    property Style : TKimiyaMemoStyle read FStyle write SetStyle;
    property KimiyaNotTextClear : Boolean read FKimiyaNotTextClear write SetKimiyaNotTextClear default False;

    property AutoSelect;
    property AutoSize;
    property CharCase;
    property Color;
    property DragCursor;
    property DragMode;
    property Enabled;
    property Font;
    property HideSelection;
    property Hint;
    property ImeMode;
    property ImeName;
    property MaxLength;
    property OEMConvert;
    property ParentColor;
    property ParentFont;
    property ParentShowHint;
    property PasswordChar;
    property PopupMenu;
    property ReadOnly;
    property ShowHint;
    property TabOrder;
    property TabStop;
    property Text;
    property Visible;

    property OnChange;
    property OnClick;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnKeyDown;
    property OnKeyPress;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnStartDrag;
  end;

procedure Register;

implementation
uses
  Math;

constructor TKimiyaMemo.Create(AOwner: TComponent);
begin
  inherited Create (AOwner);
  FCanvas := TControlCanvas.Create;
  FCanvas.Control := Self;

  FActive := False;
  FFocused := False;
  FRounded := False;
  FRoundRadius := crcRadius;

  FFrameColor := clNavy;
  FInActFrameColor := clBtnShadow;

  FMarginLeft := 2;
  FMarginRight := 2;

  BorderStyle := bsSingle;
  FAlignment := taLeftJustify;
  Height := 15;

  FStyle := esFlat;
end;
destructor  TKimiyaMemo.Destroy;
begin
  FCanvas.Free;
  Brush.Bitmap.Free;
  inherited;
end;

procedure TKimiyaMemo.WMNCPaint (var Message : TWMNCPaint);
var
  DC : hDC;
  Brush : hBrush;
  Pen : hPen;
  lBrush : TLogBrush;
  UpdateRect : TRect;
  AColor : TColor;

  Rgn : hRgn;
begin
  DC := GetWindowDC (Handle);
  GetWindowRect (Handle, UpdateRect);
  OffsetRect (UpdateRect, - UpdateRect.Left, - UpdateRect.Top);

   if FActive or FFocused then AColor := FFrameColor
     else AColor := FInActFrameColor;

  if FRounded then
    Rgn := CreateRoundRectRgn (0,0,Width+1, Height+1, FRoundRadius, FRoundRadius);

  case FStyle of
    ////////////////////////////////////////////////////////////////////////////
    esXP:
    begin
      if FRounded then
      begin
        Brush := CreateSolidBrush (ColorToRGB (AColor));
        FrameRgn (DC, Rgn, Brush, 1, 1);
        DeleteObject (Brush);
        DeleteObject (Rgn);

        Rgn := CreateRoundRectRgn (1,1,Width, Height, FRoundRadius, FRoundRadius);
        Brush := CreateSolidBrush (ColorToRGB (Color));
        FrameRgn (DC, Rgn, Brush, 1, 1);
        DeleteObject (Brush);
      end
      else
      begin
        Brush := CreateSolidBrush (ColorToRGB (AColor));
        FrameRect (DC, UpdateRect, Brush);
        DeleteObject (Brush);

        InflateRect (UpdateRect, -1, -1);
        Brush := CreateSolidBrush (ColorToRGB (Color));
        FrameRect (DC, UpdateRect, Brush);
        DeleteObject (Brush);

      end;
    end;
    ////////////////////////////////////////////////////////////////////////////
    esFlat:
    begin
      if FRounded then
      begin
        Brush := CreateSolidBrush (ColorToRGB (cl3DDkShadow));
        FrameRgn (DC, Rgn, Brush, 1, 1);
        DeleteObject (Brush);
        DeleteObject (Rgn);

        Rgn := CreateRoundRectRgn (1,1,Width, Height, FRoundRadius, FRoundRadius);
        Brush := CreateSolidBrush (ColorToRGB (Color));
        FrameRgn (DC, Rgn, Brush, 1, 1);
        DeleteObject (Brush);
        DeleteObject (Rgn);

        Rgn := CreateRoundRectRgn (1,1,Width+1, Height+1, FRoundRadius, FRoundRadius);
        Brush := CreateSolidBrush (ColorToRGB (clActiveBorder));
        FrameRgn (DC, Rgn, Brush, 1, 1);
        DeleteObject (Brush);

        if FActive or Focused then
        begin
          DeleteObject (Rgn);
          Rgn := CreateRoundRectRgn (0,0,Width+1, Height+1, FRoundRadius, FRoundRadius);
          Brush := CreateSolidBrush (ColorToRGB (AColor));
          FrameRgn (DC, Rgn, Brush, 1, 1);
          DeleteObject (Brush);
        end;
      end
      else
      begin

        Brush := CreateSolidBrush (ColorToRGB (cl3DDkShadow));
        FrameRect (DC, UpdateRect, Brush);
        DeleteObject (Brush);

        InflateRect (UpdateRect, -1, -1);
        Brush := CreateSolidBrush (ColorToRGB (Color));
        FrameRect (DC, UpdateRect, Brush);
        DeleteObject (Brush);

        UpdateRect.Bottom := UpdateRect.Bottom+1;
        UpdateRect.Right := UpdateRect.Right + 1;
        Brush := CreateSolidBrush (ColorToRGB (clActiveBorder));
        FrameRect (DC, UpdateRect, Brush);
        DeleteObject (Brush);

        if FActive or Focused then
        begin
          UpdateRect.Bottom := UpdateRect.Bottom-1;
          UpdateRect.Right := UpdateRect.Right-1;
          InflateRect (UpdateRect, 1, 1);
          Brush := CreateSolidBrush (ColorToRGB (AColor));
          FrameRect (DC, UpdateRect, Brush);
          DeleteObject (Brush);
        end;
      end;
    end;
    ////////////////////////////////////////////////////////////////////////////
  end;

  if FRounded then DeleteObject(Rgn);
  inherited;
end;

procedure TKimiyaMemo.WMNCCalcSize (var Message : TWMNCCalcSize);
begin
  case FStyle of
    esXP:   InflateRect (Message.CalcSize_Params^.rgrc[0], -2, -2);
    esFlat: InflateRect (Message.CalcSize_Params^.rgrc[0], -2, -2);
  end;
end;
procedure TKimiyaMemo.SetKimiyaNotTextClear (AValue : Boolean);
begin
  if AValue <> FKimiyaNotTextClear then
  begin
    FKimiyaNotTextClear   :=  AValue;
    Invalidate;
  end;
end;


procedure TKimiyaMemo.MouseEnter (var Message : TMessage);
begin
  if not FActive then
  begin
    FActive := true;
    SendMessage (Handle, WM_NCPAINT, 0, 0);
  end;
end;

procedure TKimiyaMemo.MouseLeave (var Message : TMessage);
begin
  if FActive then
  begin
    FActive := False;
    SendMessage (Handle, WM_NCPAINT, 0, 0);
  end;
end;

procedure TKimiyaMemo.SetShape (ARounded : Boolean);
var
  WinRgn : hRgn;
begin
  WinRgn := 0;
  GetWindowRgn (Handle, WinRgn);
  DeleteObject(WinRgn);
  if ARounded then
    WinRgn := CreateRoundRectRgn (0,0,Width+1, Height+1, FRoundRadius, FRoundRadius)
  else
    WinRgn := CreateRectRgn (0,0,Width+1, Height+1);
  SetWindowRgn (Handle, WinRgn, true);
end;

procedure TKimiyaMemo.Loaded;
var
  Wd : Integer;
begin
  inherited;
  SetShape (FRounded);
  SetEditRect;
end;

procedure TKimiyaMemo.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  case FAlignment of
    taLeftJustify: Params.Style := Params.Style or ES_LEFT and not ES_MULTILINE;
    taRightJustify: Params.Style := Params.Style or ES_RIGHT and not ES_MULTILINE;
    taCenter: Params.Style := Params.Style or ES_CENTER and not ES_MULTILINE;
  end;
end;

procedure TKimiyaMemo.WMSize(var Message: TWMSize);
begin
  inherited;
  SetShape (FRounded);
  SetEditRect;
end;

procedure TKimiyaMemo.CMEnter(var Message: TCMEnter);
begin
  if not FFocused then
  begin
    FFocused := true;
    SendMessage (Handle, WM_NCPAINT, 0, 0);
  end;
end;

procedure TKimiyaMemo.CMExit(var Message: TCMExit);
begin
  if FFocused then
  begin
    If Assigned(onexit) then
      OnExit(self);
    FFocused := false;
    SendMessage (Handle, WM_NCPAINT, 0, 0);
  end;
end;

procedure TKimiyaMemo.CreateWnd;
begin
  inherited CreateWnd;
  SetShape (true);
  SetEditRect;
end;

procedure TKimiyaMemo.SetEditRect;
begin
  SendMessage(Handle, EM_SETMARGINS, EC_LEFTMARGIN or EC_RIGHTMARGIN, MakeLong (FMarginLeft, FMarginRight));
end;


procedure TKimiyaMemo.SetAlignment (AValue : TAlignment);
var
  dwStyle : longint;
begin
  if AValue <> FAlignment then
  begin
    FAlignment := AValue;

    dwStyle := GetWindowLong(Handle, GWL_STYLE);
    case FAlignment of
      taLeftJustify: dwStyle := dwStyle or ES_LEFT and not ES_MULTILINE;
      taRightJustify: dwStyle := dwStyle or ES_RIGHT and not ES_MULTILINE;
      taCenter: dwStyle := dwStyle or ES_CENTER and not ES_MULTILINE;
    end;
    SetWindowLong(Handle, GWL_STYLE, dwStyle);
  end;
end;

procedure TKimiyaMemo.SetRounded (AValue : Boolean);
begin
  if AValue <> FRounded then
  begin
    FRounded := AValue;
    SetShape (FRounded);
    Invalidate;
  end;
end;

procedure TKimiyaMemo.SetFrameColor  (AValue : TColor);
begin
  if AValue <> FFrameColor then
  begin
    FFrameColor := AValue;
    if FActive then
      SendMessage (Handle, WM_NCPAINT, 0, 0);
  end;
end;

procedure TKimiyaMemo.SetInActFrameColor  (AValue : TColor);
begin
  if AValue <> FInActFrameColor then
  begin
    FInActFrameColor := AValue;
    if not FActive then
      SendMessage (Handle, WM_NCPAINT, 0, 0);
  end;
end;

procedure TKimiyaMemo.SetMarginLeft (AValue : Word);
begin
  if FMarginLeft <> AValue then
  begin
    FMarginLeft := AValue;
    SetEditRect;
  end;
end;

procedure TKimiyaMemo.SetMarginRight (AValue : Word);
begin
  if FMarginRight <> AValue then
  begin
    FMarginRight := AValue;
    SetEditRect;
  end;
end;

procedure TKimiyaMemo.SetStyle (AValue : TKimiyaMemoStyle);
begin
  if FStyle <> AValue then
  begin
    FStyle := AValue;
    SendMessage (Handle, WM_SIZE, 0, 0);
  end;
end;

procedure TKimiyaMemo.SetRoundRadius (AValue : Integer);
begin
  if AValue < 1 then AValue := 1;
  if FRoundRadius <> AValue then
  begin
    FRoundRadius := AValue;
    SendMessage (Handle, WM_SIZE, 0, 0);
  end;
end;
procedure Register;
begin
  RegisterComponents('VCLComponent', [TKimiyaMemo]);
end;

end.