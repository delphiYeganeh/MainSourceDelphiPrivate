{
 Copyright:      rhoStyle Developers team
 mailto:         support@rhoStyle.com
 Author:         rhoStyle
 Version:        2.4
 Delphi Version: Delphi 3-7
 Description:    This is Windows XP style checkbox. You can use it with
		 Windows 95, 98, NT, ME, 2000 and XP

}


unit xpCheckBox;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  XPGraphUtil, xpReg;

type
  TCheckBoxAlignment = (cbaLeft, cbaRight);

  TxpCheckBox = class(TCustomControl)
  private
    FCaption : TCaption;
    FActive  : Boolean;
    FChecked : Boolean;
    FEnabled : Boolean;
    FDowned  : Boolean;
    FFont    : TFont;
    FFocused : Boolean;
    FHotKey  : Char;
    FAlignment : TCheckBoxAlignment;
    FColor   : TColor;
    FShadowText : Boolean;
    FCheckColor : TColor;
    FUnderLineOnActive : Boolean;

    FTransparent : Boolean;

    FOnClick : TNotifyEvent;
    FOnEnter : TNotifyEvent;
    FOnExit  : TNotifyEvent;



    procedure SetCaption (ACaption : TCaption);
    function  GetCaption : TCaption;

    procedure SetFont (AFont : TFont);
    function  GetFont : TFont;
    procedure OnFontChange (Sender : TObject);

    procedure SetColor (AColor : TColor);
    function  GetColor : TColor;

    procedure SetCheckColor (AColor : TColor);
    function  GetCheckColor : TColor;

    procedure SetChecked (AChecked : Boolean);
    function  GetChecked : Boolean;

    procedure SetUnderLine (AUnderLine : Boolean);
    function  GetUnderLine : Boolean;

    procedure SetAlignment (AAlignment : TCheckBoxAlignment);
    function  GetAlignment : TCheckBoxAlignment;

    procedure SetTransparent (Value : Boolean);

    procedure SetEnabled (AValue : Boolean);

    procedure SetShadowText (AValue : Boolean);
  protected
    procedure Paint; override;
    procedure DrawCheckArea (ACanvas : TCanvas);
    procedure MouseEnter (var Message : TMessage); message CM_MOUSEENTER;
    procedure MouseLeave (var Message : TMessage); message CM_MOUSELEAVE;
    procedure LMouseDown  (var Message : TMessage); message WM_LBUTTONDOWN;
    procedure RMouseDown  (var Message : TMessage); message WM_RBUTTONDOWN;
    procedure LMouseUp  (var Message : TMessage); message WM_LBUTTONUP;
    procedure RMouseUp  (var Message : TMessage); message WM_RBUTTONUP;
    procedure LMouseDblClick  (var Message : TMessage); message WM_LBUTTONDBLCLK;
    procedure WMSetFocus(var Message: TMessage); message WM_SETFOCUS;
    procedure WMKillFocus(var Message: TMessage); message WM_KILLFOCUS;
    procedure CMDialogChar(var Message : TCMDialogChar);  message CM_DIALOGCHAR;
    procedure WMKeyDown(var Message: TMessage); message WM_KEYDOWN;
    procedure WMKeyUp(var Message: TMessage); message WM_KEYUP;
    procedure CMEnter(var Message: TCMGotFocus); message CM_ENTER;
    procedure CMExit(var Message: TCMLostFocus); message CM_EXIT;

    procedure FOnCheckBoxClick;
  public
    constructor Create (AOwner : TComponent); override;
    destructor Destroy; override;
  published
    property Caption : TCaption read GetCaption write SetCaption;
    property Font : TFont read GetFont write SetFont;
    property Enabled : Boolean read FEnabled write SetEnabled default true;
    property ParentFont;
    property ParentColor;
    property Hint;
    property ShowHint;
    property TabOrder;
    property TabStop;
    //property Transparent : Boolean read FTransparent write SetTransparent default true;
    property ShadowText : Boolean read FShadowText write SetShadowText default True;
    property Color : TColor read GetColor write SetColor;
    property CheckColor : TColor read GetCheckColor write SetCheckColor;
    property Checked : Boolean read GetChecked write SetChecked default False;
    property UnderLineOnActive : Boolean read GetUnderLine write SetUnderLine default False;
    property Alignment : TCheckBoxAlignment read GetAlignment write SetAlignment;
    property OnClick: TNotifyEvent read FOnClick write FOnClick;
    property OnEnter: TNotifyEvent read FOnEnter write FOnEnter;
    property OnExit: TNotifyEvent read FOnExit write FOnExit;
  end;

procedure Register;

implementation


constructor TxpCheckBox.Create (AOwner : TComponent);
begin
  Inherited Create (AOwner);
  Width := 97;
  Height := 17;
  FFont := TFont.Create;
  FFont.OnChange := OnFontChange;

  FCaption := 'XP Checkbox';
  FEnabled := True;
  FChecked := False;
  FFocused := False;
  FDowned := False;
  FAlignment := cbaRight;

  FColor := clBtnFace;

  FCheckColor := RGB (0, 160, 0);
  FUnderLineOnActive := False;
  FShadowText := true;
  TabStop := True;
end;

destructor TxpCheckBox.Destroy;
begin
  FFont.Free;
  inherited;
end;


procedure TxpCheckBox.SetCaption (ACaption : TCaption);
begin
  if FCaption <> ACaption then
  Begin
    FCaption := ACaption;
    if (Pos ('&', FCaption) <> 0) and (Pos ('&', FCaption) < Length (FCaption)) then
      FHotKey := UpperCase (String (Copy (FCaption, Pos ('&', FCaption)+1, 1)))[1]
    else
      FHotKey := #0;
    Repaint;
  end;
end;

function  TxpCheckBox.GetCaption : TCaption;
begin
  Result := FCaption;
end;

procedure TxpCheckBox.SetFont (AFont : TFont);
begin
  FFont.Assign (AFont);
  RePaint;
end;

function  TxpCheckBox.GetFont : TFont;
begin
  Result := FFont;
end;

procedure TxpCheckBox.OnFontChange (Sender : TObject);
begin
  Invalidate;
end;

procedure TxpCheckBox.SetColor (AColor : TColor);
begin
  if FColor <> AColor then
  begin
    FColor := AColor;
    ParentColor := False;
    Invalidate;
  end;
end;

function  TxpCheckBox.GetColor : TColor;
begin
  Result := FColor;
end;

procedure TxpCheckBox.SetCheckColor (AColor : TColor);
begin
  if FCheckColor <> AColor then
  begin
    FCheckColor := AColor;
    Invalidate;
  end;
end;

function  TxpCheckBox.GetCheckColor : TColor;
begin
  Result := FCheckColor;
end;


procedure TxpCheckBox.SetChecked (AChecked : Boolean);
begin
  if FChecked <> AChecked then
  begin
    FChecked := AChecked;
    Repaint;
  end;
end;

function  TxpCheckBox.GetChecked : Boolean;
begin
 Result := FChecked;
end;


procedure TxpCheckBox.SetAlignment (AAlignment : TCheckBoxAlignment);
begin
  if FAlignment <> AAlignment then
  begin
    FAlignment := AAlignment;
    Repaint;
  end;
end;

function  TxpCheckBox.GetAlignment : TCheckBoxAlignment;
begin
 Result := FAlignment;
end;

procedure TxpCheckBox.SetUnderLine (AUnderLine : Boolean);
begin
  if FUnderLineOnActive <> AUnderLine then
  begin
    FUnderLineOnActive := AUnderLine;
  end;
end;

function  TxpCheckBox.GetUnderLine : Boolean;
begin
  Result := FUnderLineOnActive;
end;

procedure TxpCheckBox.SetTransparent (Value : Boolean);
begin
  if FTransparent <> Value then
  begin
    FTransparent := Value;
    if FTransparent then ControlStyle := ControlStyle - [csOpaque] else
      ControlStyle := ControlStyle + [csOpaque];
    Invalidate;
  end;
end;

procedure TxpCheckBox.SetEnabled (AValue : Boolean);
begin
  if FEnabled <> AValue then
  begin
    FEnabled := AValue;
    Enabled := AValue;
    Invalidate;
  end;
end;


procedure TxpCheckBox.SetShadowText (AValue : Boolean);
begin
  if FShadowText <> AValue then
  begin
    FShadowText := AValue;
    Invalidate;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
//////////////////   M E S S A G E S   M E T O D S   ///////////////////////////
////////////////////////////////////////////////////////////////////////////////

procedure TxpCheckBox.FOnCheckBoxClick;
begin
  FChecked := not FChecked;
  Invalidate;

  if Assigned (FOnClick) then FOnClick (self);
end;


procedure TxpCheckBox.CMDialogChar(var Message : TCMDialogChar);
begin
  if FEnabled and (IsAccel (Message.CharCode, FCaption)) then
  begin
    if not FFocused then SetFocus;
    FOnCheckBoxClick;
  end;
end;

procedure TxpCheckBox.MouseEnter (var Message : TMessage);
begin
  if not FActive and FEnabled then
  begin
    FActive := true;
    Invalidate;
  end;
end;

procedure TxpCheckBox.MouseLeave (var Message : TMessage);
begin
  if FActive then
  begin
    FActive := False;
    Invalidate;
  end;
end;

procedure TxpCheckBox.LMouseDblClick  (var Message : TMessage);
begin
  if FEnabled then FOnCheckBoxClick;
end;

procedure TxpCheckBox.LMouseDown  (var Message : TMessage);
begin
  if not FDowned  and FEnabled then
  begin
    FDowned := true;
    if (not Focused) and (Enabled) then SetFocus;
    Invalidate;
  end;
end;

procedure TxpCheckBox.RMouseDown  (var Message : TMessage);
begin

end;

procedure TxpCheckBox.LMouseUp  (var Message : TMessage);
begin
  if FDowned and FEnabled then
  begin
    FDowned := False;
    Invalidate;
    FOnCheckBoxClick;
  end;
end;

procedure TxpCheckBox.RMouseUp  (var Message : TMessage);
begin

end;

procedure TxpCheckBox.WMSetFocus(var Message: TMessage);
begin
  if not FFocused and FEnabled then
  begin
    FFocused := true;
    Invalidate;
  end;
end;

procedure TxpCheckBox.WMKillFocus(var Message: TMessage);
begin
  if FFocused then
  begin
    FFocused := False;
    Invalidate;
  end;
end;

procedure TxpCheckBox.WMKeyDown(var Message: TMessage);
begin
  if (not FDowned) and (FEnabled) and (Message.WParam = VK_SPACE)then
  Begin
    FDowned := true;
    Invalidate;
  end;
  inherited;
end;

procedure TxpCheckBox.WMKeyUp(var Message: TMessage);
begin
  if FDowned then
  begin
    FDowned := False;
    FOnCheckBoxClick;
  end;
end;

procedure TxpCheckBox.CMEnter(var Message: TCMGotFocus);
begin
  if Assigned (FOnEnter) and FEnabled then FOnEnter (self);
end;

procedure TxpCheckBox.CMExit(var Message: TCMLostFocus);
begin
  if Assigned (FOnExit) and FEnabled then FOnExit (self);
end;



////////////////////////////////////////////////////////////////////////////////
////////////////// D R A W I N G   M E T O D S /////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

procedure TxpCheckBox.DrawCheckArea  (ACanvas : TCanvas);
var
  CheckRect : TRect;
begin
  if FAlignment = cbaRight then
  begin
    CheckRect := Rect (1, HeightOf (ClientRect) div 2 - 7,
                       15, HeightOf (ClientRect) div 2 + 7);
  end
  else
  Begin
    CheckRect := Rect (Width - 15, HeightOf (ClientRect) div 2 - 7,
                       Width - 1, HeightOf (ClientRect) div 2 + 7);
  end;


  if Enabled then
  begin
    if FDowned then
    begin
      GradientFillRect (ACanvas, CheckRect, RGB (176, 176, 167), RGB (241, 239, 223),
        fdTopToBottom, 10);
    end
    else
    begin // not FDowned
      if FActive then
      begin
        GradientFillRect (ACanvas, CheckRect, RGB (255, 240, 207), RGB (248, 179, 48),
          fdTopToBottom, 10);
        ACanvas.Brush.Style := bsSolid;
        ACanvas.Pen.Style := psClear;
        ACanvas.Pen.Color := clBtnFace;
        ACanvas.Rectangle (CheckRect.Left+2, CheckRect.Top+2, CheckRect.Right-2, CheckRect.Bottom-2);
        ACanvas.Pen.Style := psSolid;
      end
      else
        GradientFillRect (ACanvas, CheckRect, RGB (220, 220, 215), RGB (255, 255, 255),
          fdTopToBottom, 10);
    end;
  end;

  ACanvas.Pen.Width := 1;
  if Enabled then
  begin
    ACanvas.Pen.Color := RGB (28, 81, 128);
    ACanvas.Brush.Style := bsClear;
  end
  else
  begin
    ACanvas.Pen.Style := psSolid;
    ACanvas.Pen.Color := clGray;
    ACanvas.Brush.Style := bsSolid;
    ACanvas.Brush.Color := clWhite;
  end;
  ACanvas.Rectangle (CheckRect.Left, CheckRect.Top, CheckRect.Right, CheckRect.Bottom);

  if FChecked then
  begin
    ACanvas.Pen.Width := 3;
    if Enabled then ACanvas.Pen.Color := FCheckColor
      else ACanvas.Pen.Color := clLtGray;
    ACanvas.MoveTo (CheckRect.Left + 3, CheckRect.Top + 6);
    ACanvas.LineTo (CheckRect.Left + 5, CheckRect.Bottom - 5);
    ACanvas.LineTo (CheckRect.Right - 5, CheckRect.Top + 4);
  end;

end;

procedure TxpCheckBox.Paint;
var
  AText : String;
  ACanvas : TBitmap;
begin
  ACanvas := TBitmap.Create;

  try
    ACanvas.Width := ClientWidth;
    ACanvas.Height := ClientHeight;

  if ParentColor then
    ACanvas.Canvas.Brush.Assign (Parent.Brush)
  else
    ACanvas.Canvas.Brush.Color := FColor;
    
  if FTransparent then
    ACanvas.Canvas.Brush.Style := bsClear
  else
    ACanvas.Canvas.Brush.Style := bsSolid;
  ACanvas.Canvas.Pen.Style := psClear;
  if not FTransparent then
    ACanvas.Canvas.FillRect (ClientRect);

  DrawCheckArea (ACanvas.Canvas);

  AText := FCaption;
  if Pos ('&', FCaption) <> 0 then Delete (AText, Pos ('&', AText), 1);


  ACanvas.Canvas.Font.Assign (FFont);
  //ACanvas.Canvas.Brush.Color := FColor;
  if FActive and FUnderLineOnActive then
    ACanvas.Canvas.Font.Style := ACanvas.Canvas.Font.Style + [fsUnderLine];

  if not Enabled then ACanvas.Canvas.Font.Color := clGray;

  ACanvas.Canvas.Brush.Style := bsClear;

  if FAlignment = cbaRight then
  begin
    //Shadow
    if FShadowText then
    begin
      ACanvas.Canvas.Font.Color := clLtGray;
      ACanvas.Canvas.TextRect (Rect (20, 2, Width-2, Height),
        21, (Height - ACanvas.Canvas.TextHeight (AText)) div 2+1, AText);
    end;
    //Text
    if  Enabled then
      ACanvas.Canvas.Font.Color := FFont.Color
    else
      ACanvas.Canvas.Font.Color := clDkGray;
    ACanvas.Canvas.TextRect (Rect (20, 2, Width-2, Height),
      20, (Height - ACanvas.Canvas.TextHeight (AText)) div 2, AText);

    if Pos ('&', FCaption) <> 0 then
    begin
      ACanvas.Canvas.Pen.Color := ACanvas.Canvas.Font.Color;
      ACanvas.Canvas.Pen.Width := 1;
      ACanvas.Canvas.MoveTo (20 + ACanvas.Canvas.TextWidth (Copy (AText, 1, Pos ('&', FCaption)-1)),
                     2 + ACanvas.Canvas.TextHeight (AText));
      ACanvas.Canvas.LineTo (20 + ACanvas.Canvas.TextWidth (Copy (AText, 1, Pos ('&', FCaption))),
                     2 + ACanvas.Canvas.TextHeight (AText));
    end;
  end
  else
  begin
    //Shadow
    ACanvas.Canvas.Font.Color := clLtGray;
    ACanvas.Canvas.TextRect (Rect (2, 2, Width-20, Height),
      3, (Height - ACanvas.Canvas.TextHeight (AText)) div 2+1, AText);
    //Text
    if  Enabled then
      ACanvas.Canvas.Font.Color := FFont.Color
    else
      ACanvas.Canvas.Font.Color := clDkGray;
    ACanvas.Canvas.TextRect (Rect (2, 2, Width-20, Height),
      2, (Height - ACanvas.Canvas.TextHeight (AText)) div 2, AText);
    if Pos ('&', FCaption) <> 0 then
    begin
      ACanvas.Canvas.Pen.Color := ACanvas.Canvas.Font.Color;
      ACanvas.Canvas.Pen.Width := 1;
      ACanvas.Canvas.MoveTo (ACanvas.Canvas.TextWidth (Copy (AText, 1, Pos ('&', FCaption)-1)),
                     2 + ACanvas.Canvas.TextHeight (AText));
      ACanvas.Canvas.LineTo (ACanvas.Canvas.TextWidth (Copy (AText, 1, Pos ('&', FCaption))),
                     2 + ACanvas.Canvas.TextHeight (AText));
    end;
  end;

  if Enabled and FFocused then
  begin
    ACanvas.Canvas.Brush.Style := bsSolid;
    if FAlignment = cbaRight then
      ACanvas.Canvas.DrawFocusRect (Rect (17, 1, ACanvas.Canvas.TextWidth (AText) + 25, Height - 1))
    else
      ACanvas.Canvas.DrawFocusRect (Rect (1, 1, ACanvas.Canvas.TextWidth (AText) + 8, Height - 1));
  end;
    BitBlt(Canvas.Handle, 0, 0, ACanvas.Width, ACanvas.Height,
      ACanvas.Canvas.Handle, 0, 0, SRCCOPY); //SRCCOPY
  finally
    ACanvas.Free;
  end;
  
end;


procedure Register;
begin
  RegisterComponents('XP Controls', [TxpCheckBox]);
end;

end.
