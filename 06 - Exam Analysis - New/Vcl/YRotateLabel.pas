unit YRotateLabel;


interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  MMSystem,ExtCtrls,Buttons,StdCtrls;


type
  TOnMouseOverEvent = procedure(Sender: TObject) of object;
  TOnMouseOutEvent = procedure(Sender: TObject) of object;
  TUgao = (ag0,ag45,ag90,ag135,ag180,ag225,ag270,ag315);
  TYRotateLabel = class(TGraphicControl)
  private

    FUgao:TUgao;
    FZaokretanje:integer;
    FOnMouseOver: TOnMouseOverEvent;
    FOnMouseOut: TOnMouseOutEvent;

    procedure DrawCaption;
    procedure DrawCaptionEnabled;
    procedure Krecenje;
    procedure SetUgao(value:TUgao);
    function GetTransparent: Boolean;
    procedure SetTransparent(Value: Boolean);

    procedure CMMouseEnter(var AMsg: TMessage);
              message CM_MOUSEENTER;
    procedure CMMouseLeave(var AMsg: TMessage);
              message CM_MOUSELEAVE;
    procedure CmTextChanged(var Message: TWmNoParams);
              message CM_TEXTCHANGED;
    procedure CMSysColorChange(var Message: TMessage);
              message CM_SYSCOLORCHANGE;
    procedure CMColorChanged(var Message: TMessage);
              message CM_COLORCHANGED;
    procedure CmEnabledChanged(var Message: TWmNoParams);
              message CM_ENABLEDCHANGED;
    procedure CmParentColorChanged(var Message: TWMNoParams);
              message CM_PARENTCOLORCHANGED;
    procedure CmFontChanged(var Message: TWMNoParams);
              message CM_FONTCHANGED;

  protected
    procedure Paint;override;

  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure IntToAngle(const value:integer);

  published
    property Transparent: Boolean read GetTransparent write SetTransparent default False;
    property Angle:TUgao read FUgao write SetUgao default ag45;
    property Caption;
    property Font;
    property Color;
    property ParentColor;
    property Enabled;
    property Visible;
    property Align;
    property ShowHint;
    property DragCursor;
    property DragMode;

    property OnClick;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDrag;
    property OnMouseDown;
    property OnMouseUp;
    property OnMouseMove;
    property OnStartDrag;
    property OnMouseEnter: TOnMouseOverEvent read FOnMouseOver write FOnMouseOver;
    property OnMouseExit: TOnMouseOutEvent read FOnMouseOut write FOnMouseOut;
    property PopupMenu;
    property Anchors;
    property Constraints;
    property DragKind;
  end;

procedure Register;

implementation
var   tf : TFont;
Krec:TColor;

procedure Register;
begin
  RegisterComponents('Yeganeh', [TYRotateLabel]);
end;

constructor TYRotateLabel.Create(AOwner: TComponent);
begin
inherited Create(AOwner);
SetBounds(0, 0, 90, 90);
ControlStyle := ControlStyle + [csOpaque];
FUgao:=ag45;
FZaokretanje:=450;
with Font do
begin
Name:='Arial';
Size:=10;
Style:=Font.Style + [fsBold];
Color:=clRed;
end;
end;

destructor TYRotateLabel.Destroy;
begin
inherited Destroy;
end;



function TYRotateLabel.GetTransparent: Boolean;
begin
  Result := not (csOpaque in ControlStyle);
end;

procedure TYRotateLabel.SetTransparent(Value: Boolean);
begin
  if Transparent <> Value then
  begin
    if Value then
      ControlStyle := ControlStyle - [csOpaque] else
      ControlStyle := ControlStyle + [csOpaque];
    Invalidate;
  end;
end;

procedure TYRotateLabel.IntToAngle( const value:integer);
begin
Case value of
0: SetUgao(ag0);
45: SetUgao(ag45);
90: SetUgao(ag90);
135: SetUgao(ag135);
180: SetUgao(ag180);
225: SetUgao(ag225);
270: SetUgao(ag270);
315: SetUgao(ag315);
end;
end;

procedure TYRotateLabel.SetUgao(value:TUgao);
begin
if value<>FUgao then
begin
FUgao:=value;
Case FUgao of
  ag0: FZaokretanje:=0;
 ag45: FZaokretanje:=450;
 ag90: FZaokretanje:=900;
ag135: FZaokretanje:=1350;
ag180: FZaokretanje:=1800;
ag225: FZaokretanje:=2250;
ag270: FZaokretanje:=2700;
ag315: FZaokretanje:=3150;
end;
Invalidate;
end;
end;

procedure TYRotateLabel.Paint;
begin
Krecenje;
DrawCaption;
end;


procedure TYRotateLabel.Krecenje;
begin
if transparent then exit;
with canvas do
begin
brush.color:=color;
fillrect(clientrect);
end;
end;


procedure TYRotateLabel.DrawCaption;
var
  lf : TLogFont;
begin
  with Canvas do begin
    Font.Assign(Self.Font);
    Krec:=Font.Color;
    tf := TFont.Create;
    brush.style:=bsclear;
    try
      tf.Assign(Font);
      GetObject(tf.Handle, sizeof(lf), @lf);
      lf.lfEscapement := FZaokretanje;
      lf.lfOrientation := FZaokretanje;
      tf.Handle := CreateFontIndirect(lf);
      Font.Assign(tf);
    finally

    end;
    if not Enabled then DrawCaptionEnabled;
    Case FZaokretanje of
    0:   TextOut((Width-TextWidth(Caption))div 2,(Height-TextHeight(Caption))div 2, caption);
    450: TextOut(TextHeight(Caption) div 3,Height-TextHeight(Caption), caption);
    900: TextOut((Width-TextHeight(Caption)) div 2,Height-(Height-TextWidth(Caption))div 2, caption);
    1350:TextOut(Width-TextHeight(Caption),Height-TextHeight(Caption) div 3, caption);
    1800:TextOut(Width-((Width-TextWidth(Caption))div 2),((Height-TextHeight(Caption))div 2)+TextHeight(Caption), caption);
    2250:TextOut(Width-TextHeight(Caption) div 3,TextHeight(Caption), caption);
    2700:TextOut(((Width-TextHeight(Caption))div 2)+TextHeight(Caption),(Height-Textwidth(Caption))div 2, caption);
    3150:TextOut(TextHeight(Caption),TextHeight(Caption) div 3, caption);
    end;
  end;
   tf.Free;
end;

procedure TYRotateLabel.DrawCaptionEnabled;
begin
with canvas do
  begin
  Font.Assign(tf);
  brush.style:=bsclear;
   font.Color :=clBtnHighlight;
    Case FZaokretanje of
    0:   TextOut(1+(Width-TextWidth(Caption))div 2,1+(Height-TextHeight(Caption))div 2, caption);
    450: TextOut(1+TextHeight(Caption) div 3,1+Height-TextHeight(Caption), caption);
    900: TextOut(1+(Width-TextHeight(Caption)) div 2,1+Height-(Height-TextWidth(Caption))div 2, caption);
    1350:TextOut(1+Width-TextHeight(Caption),1+Height-TextHeight(Caption) div 3, caption);
    1800:TextOut(1+Width-((Width-TextWidth(Caption))div 2),1+((Height-TextHeight(Caption))div 2)+TextHeight(Caption), caption);
    2250:TextOut(1+Width-TextHeight(Caption) div 3,1+TextHeight(Caption), caption);
    2700:TextOut(1+((Width-TextHeight(Caption))div 2)+TextHeight(Caption),1+(Height-Textwidth(Caption))div 2, caption);
    3150:TextOut(1+TextHeight(Caption),1+TextHeight(Caption) div 3, caption);
    end;

  font.color :=clBtnShadow;
  end;
end;

procedure TYRotateLabel.CMMouseEnter(var AMsg: TMessage);
begin
if Assigned(FOnMouseOver) then FOnMouseOver(Self);
end;

procedure TYRotateLabel.CMMouseLeave(var AMsg: TMessage);
begin
if Assigned(FOnMouseOut) then FOnMouseOut(Self);
end;

procedure TYRotateLabel.CmTextChanged(var Message: TWmNoParams);
begin
  inherited;
  Invalidate;
end;

procedure TYRotateLabel.CMSysColorChange(var Message: TMessage);
begin
  inherited;
  Invalidate;
end;

procedure TYRotateLabel.CMColorChanged(var Message: TMessage);
begin
  inherited;
  Invalidate;
end;

procedure TYRotateLabel.CmEnabledChanged(var Message: TWmNoParams);
begin
  inherited;
  Invalidate;
end;

procedure TYRotateLabel.CmParentColorChanged(var Message: TWMNoParams);
begin
  inherited;
 Invalidate;
end;


procedure TYRotateLabel.CmFontChanged(var Message: TWMNoParams);
begin
  inherited;
  Invalidate;
end;


end.
