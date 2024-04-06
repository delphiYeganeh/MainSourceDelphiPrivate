{
 Copyright:      rhoStyle Developers team
 mailto:         support@rhoStyle.com
 Author:         rhoStyle
 Version:        2.4
 Delphi Version: Delphi 3-7
 Description:    This is Windows XP style button. You can use it with 
		 Windows 95, 98, NT, ME, 2000 and XP

}

unit xpButton;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, XPGraphUtil, xpReg;

type
  TxpButton = class(TCustomControl)
  private
    FCaption : TCaption;
    FActive  : Boolean;
    FDowned  : Boolean;
    FEnabled : Boolean;
    FFont    : TFont;
    FFocused : Boolean;
    FModalResult : TModalResult;
    FHotKey  : Char;
    FCancel  : Boolean;
    FDefault : Boolean;
    FGradient: Boolean;

    FOnClick : TNotifyEvent;
    FOnEnter : TNotifyEvent;
    FOnExit  : TNotifyEvent;
    FOnKeyDown : TKeyEvent;
    FOnKeyUp : TKeyEvent;

    procedure SetCaption (ACaption : TCaption);
    function  GetCaption : TCaption;

    procedure SetDowned (ADowned : Boolean);
    function  GetDowned : Boolean;

    procedure SetFont (AFont : TFont);
    function  GetFont : TFont;
    procedure OnFontChange (Sender : TObject);

    procedure SetModalResult (AModalResult : TModalResult);
    function  GetModalResult : TModalResult;

    procedure SetEnabled (AEnabled : Boolean);

    procedure SetGradient (Value : Boolean);
    function  GetGradient : Boolean;

    procedure FOnButtonClick;
  protected
    procedure Paint; override;
    procedure MouseEnter (var Message : TMessage); message CM_MOUSEENTER;
    procedure MouseLeave (var Message : TMessage); message CM_MOUSELEAVE;
    procedure LMouseDown  (var Message : TMessage); message WM_LBUTTONDOWN;
    procedure RMouseDown  (var Message : TMessage); message WM_RBUTTONDOWN;
    procedure LMouseUp  (var Message : TMessage); message WM_LBUTTONUP;
    procedure RMouseUp  (var Message : TMessage); message WM_RBUTTONUP;
    procedure LMouseDblClick  (var Message : TMessage); message WM_LBUTTONDBLCLK;
    procedure CMEnter(var Message: TCMGotFocus); message CM_ENTER;
    procedure CMExit(var Message: TCMLostFocus); message CM_EXIT;
    procedure WMSetFocus(var Message: TMessage); message WM_SETFOCUS;
    procedure WMKillFocus(var Message: TMessage); message WM_KILLFOCUS;
    procedure WMKeyDown(var Message: TMessage); message WM_KEYDOWN;
    procedure WMKeyUp(var Message: TMessage); message WM_KEYUP;
    procedure CMDialogChar(var Message : TCMDialogChar);  message CM_DIALOGCHAR;
    procedure CMDialogKey(var Message : TCMDialogKey);  message CM_DIALOGKEY;

  public
    constructor Create (AOwner : TComponent); override;
    destructor Destroy; override;
  published
    property Caption : TCaption read GetCaption write SetCaption;
    property Font : TFont read GetFont write SetFont;
    property Enabled read FENabled write SetEnabled;
    property Gradient : Boolean read GetGradient write SetGradient;
    property ParentFont;
    property Hint;
    property ShowHint;
    property TabOrder;
    property TabStop;
    property DragCursor;
    property DragMode; 
    property Cancel : Boolean read FCancel write FCancel default False;
    property Default : Boolean read FDefault write FDefault default False;
    property ModalResult : TModalResult read GetModalResult write SetModalResult default mrNone;
    property OnClick: TNotifyEvent read FOnClick write FOnClick;
    property OnEnter: TNotifyEvent read FOnEnter write FOnEnter;
    property OnExit: TNotifyEvent read FOnExit write FOnExit;
    property OnKeyDown: TKeyEvent read FOnKeyDown write FOnKeyDown;
    property OnKeyUp: TKeyEvent read FOnKeyUp write FOnKeyUp;
    property OnDragDrop;
    property OnDragOver;
    property OnStartDrag;
    property OnEndDrag;
    property OnMouseDown;
    property OnMouseUp;
    property OnMouseMove;
  end;

procedure Register;


implementation

constructor TxpButton.Create (AOwner : TComponent);
begin
  Inherited Create (AOwner);
  Width := 75;
  Height := 25;
  FFont := TFont.Create;
  FFont.Style := [fsBold];
  FFont.Color := clNavy;
  FFont.OnChange := OnFontChange;


  FCaption := 'XP Button';
  Enabled := True;
  FEnabled := True;
  FActive := False;
  FDowned := False;
  FFocused := False;
  FGradient := true;
end;

destructor TxpButton.Destroy;
begin
  FFont.Free;
  inherited;
end;

procedure TxpButton.CMDialogKey(var Message : TCMDialogKey);
begin
  if Enabled and  ((FCancel and (Message.CharCode = VK_ESCAPE)) or
  (FDefault and (Message.CharCode = VK_RETURN))) then
    FOnButtonClick;
end;

procedure TxpButton.Paint;
var
  AText : String;
  ACanvas : TBitmap;
begin

  ACanvas := TBitmap.Create;
  try
    ACanvas.Width := ClientWidth;
    ACanvas.Height := ClientHeight;


    AText := FCaption;
    if Pos ('&', FCaption) <> 0 then Delete (AText, Pos ('&', AText), 1);

    if Enabled then
    begin
      ACanvas.Canvas.Pen.Width := 1;
      ACanvas.Canvas.Brush.Style := bsSolid;
      if FGradient then
      begin
        ACanvas.Canvas.Brush.Color := RGB (214, 211, 211);
        ACanvas.Canvas.Pen.Color := RGB (214, 211, 211);
        ACanvas.Canvas.RoundRect (0, 0, Width, Height, 3, 3);
      end
      else
      begin
        ACanvas.Canvas.Pen.Color := clBtnShadow;
      end;

      if FGradient then
      begin
        ACanvas.Canvas.Brush.Style := bsClear;
        ACanvas.Canvas.Pen.Color := RGB (0, 60, 116);
        ACanvas.Canvas.RoundRect (1, 1, Width-1, Height-1, 5, 5);

        if (FDowned) and FActive then
          GradientFillRect (ACanvas.Canvas, Rect (4, 4, Width-4, Height-4), RGB (253, 253, 253),
              RGB (205, 204, 223), fdBottomToTop, HeightOf (ClientRect) div 2)
        else
          GradientFillRect (ACanvas.Canvas, Rect (4, 4, Width-4, Height-4), RGB (253, 253, 253),
               RGB (205, 204, 223), fdTopToBottom, HeightOf (ClientRect) div 3);
      end
      else
      begin
        ACanvas.Canvas.Brush.Color := clBtnFace;
        ACanvas.Canvas.Pen.Color := clBlack;
        ACanvas.Canvas.FillRect (Rect (0, 0, Width, Height));
      end;
      
      if FGradient then
      begin
        ACanvas.Canvas.Pen.Color := RGB (206, 231, 255);
        ACanvas.Canvas.MoveTo (3, 2);
        ACanvas.Canvas.LineTo (Width - 3, 2);

        ACanvas.Canvas.Pen.Color := RGB (105, 130, 238);
        ACanvas.Canvas.MoveTo (3, Height-3);
        ACanvas.Canvas.LineTo (Width - 3, Height-3);

        ACanvas.Canvas.Pen.Color := RGB (188, 212, 246);
        ACanvas.Canvas.Rectangle (2, 3, Width-2, Height-3);

        ACanvas.Canvas.Pen.Color := RGB (255, 255, 255);
        ACanvas.Canvas.MoveTo (3, 4);
        ACanvas.Canvas.LineTo (3, Height-4);

        ACanvas.Canvas.Pen.Color := RGB (255, 255, 255);
        ACanvas.Canvas.MoveTo (Width-4, 4);
        ACanvas.Canvas.LineTo (Width-4, Height-4);

        ACanvas.Canvas.Pen.Color := RGB (255, 255, 255);
        ACanvas.Canvas.MoveTo (3, Height-1);
        ACanvas.Canvas.LineTo (Width-3, Height-1);
        ACanvas.Canvas.MoveTo (Width-1, Height-4);
        ACanvas.Canvas.LineTo (Width-1, 2);
      end
      else
      begin
        if FDowned then ACanvas.Canvas.Pen.Color := clWhite
          else ACanvas.Canvas.Pen.Color := cl3DDkShadow;
        ACanvas.Canvas.MoveTo (1, Height-1);
        ACanvas.Canvas.LineTo (Width - 1, Height-1);
        ACanvas.Canvas.LineTo (Width - 1, 1);

        if FDowned then ACanvas.Canvas.Pen.Color := cl3DDkShadow
          else ACanvas.Canvas.Pen.Color := clWhite;
        ACanvas.Canvas.MoveTo (1, Height-1);
        ACanvas.Canvas.LineTo (1, 1);

        ACanvas.Canvas.LineTo (Width - 1, 1);
      end;

      if FActive then
      begin
        ACanvas.Canvas.Brush.Style := bsClear;
        if FGradient then ACanvas.Canvas.Pen.Color := RGB (248, 179, 48)
          else ACanvas.Canvas.Pen.Color := clSilver;
        ACanvas.Canvas.Pen.Width := 1;
        ACanvas.Canvas.RoundRect (3, 3, Width-3, Height-3, 2, 2);
      end;

      ACanvas.Canvas.Font.Assign (FFont);
      ACanvas.Canvas.Font.Color := clLtGray;
      ACanvas.Canvas.TextRect (Rect (4, 4, Width-4, Height-4),
        (Width - ACanvas.Canvas.TextWidth (AText)) div 2 + Integer (FDowned) + 1,
        (Height - ACanvas.Canvas.TextHeight (AText)) div 2 + Integer (FDowned) + 1, AText);
      ACanvas.Canvas.Font.Color := FFont.Color;
      ACanvas.Canvas.TextRect (Rect (4, 4, Width-4, Height-4),
        (Width - ACanvas.Canvas.TextWidth (AText)) div 2 + Integer (FDowned),
        (Height - ACanvas.Canvas.TextHeight (AText)) div 2 + Integer (FDowned), AText);

      if FFocused then
      begin
        ACanvas.Canvas.Brush.Style := bsSolid;
        ACanvas.Canvas.Pen.Color := clWhite;
        ACanvas.Canvas.Pen.Width := 2;
        ACanvas.Canvas.DrawFocusRect (Rect (4, 4, Width - 4, Height - 4));
      end;

    end
    else
    Begin // not Enabled
      ACanvas.Canvas.Brush.Color := RGB (241, 241, 237);
      ACanvas.Canvas.Pen.Color := RGB (214, 211, 211);
      ACanvas.Canvas.RoundRect (0, 0, Width, Height, 3, 3);
      ACanvas.Canvas.Pixels [0, 0] := clBtnFace;
      ACanvas.Canvas.Pixels [Width-1, 0] := clBtnFace;
      ACanvas.Canvas.Pixels [Width-1, Height-1] := clBtnFace;
      ACanvas.Canvas.Pixels [0, Height-1] := clBtnFace;

      ACanvas.Canvas.Brush.Style := bsClear;
      ACanvas.Canvas.Pen.Color := RGB (196, 195, 191);
      ACanvas.Canvas.RoundRect (1, 1, Width-1, Height-1, 5, 5);

      ACanvas.Canvas.Font := FFont;
      ACanvas.Canvas.Font.Color := RGB (161, 161, 146);
      ACanvas.Canvas.TextRect (Rect (4, 4, Width-4, Height-4),
        (Width - ACanvas.Canvas.TextWidth (AText)) div 2,
        (Height - ACanvas.Canvas.TextHeight (AText)) div 2, AText);
    end;

    if Pos ('&', FCaption) <> 0 then
    begin
      ACanvas.Canvas.Pen.Color := ACanvas.Canvas.Font.Color;
      ACanvas.Canvas.Pen.Width := 1;
      ACanvas.Canvas.MoveTo (((Width - ACanvas.Canvas.TextWidth (AText)) div 2) + ACanvas.Canvas.TextWidth (Copy (AText, 1, Pos ('&', FCaption)-1)) + Integer (FDowned),
                     ((Height - ACanvas.Canvas.TextHeight (AText)) div 2) + ACanvas.Canvas.TextHeight (AText) + Integer (FDowned));
      ACanvas.Canvas.LineTo (((Width - ACanvas.Canvas.TextWidth (AText)) div 2) + ACanvas.Canvas.TextWidth (Copy (AText, 1, Pos ('&', FCaption))) + Integer (FDowned),
                   ((Height - ACanvas.Canvas.TextHeight (AText)) div 2) + ACanvas.Canvas.TextHeight (AText) + Integer (FDowned));
    end;

    BitBlt(Canvas.Handle, 0, 0, ACanvas.Width, ACanvas.Height,
      ACanvas.Canvas.Handle, 0, 0, SRCCOPY);

  finally
    ACanvas.Free;
  end;

end;

procedure TxpButton.MouseEnter (var Message : TMessage);
begin
  if (FActive) or (not FEnabled) then Exit;
  FActive := true;
  Repaint;
end;

procedure TxpButton.MouseLeave (var Message : TMessage);
begin
  if FActive and (FEnabled)  then
  begin
    FActive := False;
    Repaint;
  end;
end;


procedure TxpButton.SetCaption (ACaption : TCaption);
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

function  TxpButton.GetCaption : TCaption;
begin
  Result := FCaption;
end;

procedure TxpButton.SetGradient (Value : Boolean);
begin
  if Value = FGradient then Exit;
  FGradient := Value;
  Repaint; 
end;

function  TxpButton.GetGradient : Boolean;
begin
  Result := FGradient;
end;

procedure TxpButton.SetDowned (ADowned : Boolean);
begin
  if FDowned <> ADowned then
  Begin
    FDowned := ADowned;
    Repaint;
  end;
end;

function  TxpButton.GetDowned : Boolean;
begin
  Result := FDowned;
end;


procedure TxpButton.SetFont (AFont : TFont);
begin
  FFont.Assign (AFont);
  RePaint;
end;

function  TxpButton.GetFont : TFont;
begin
  Result := FFont;
end;

procedure TxpButton.OnFontChange (Sender : TObject);
begin
  Invalidate;
end;


procedure TxpButton.LMouseDblClick  (var Message : TMessage);
begin
  FOnButtonClick;
end;

procedure TxpButton.LMouseDown  (var Message : TMessage);
begin
  if (not FDowned) and (FEnabled) then
  begin
    FDowned := true;
    if (not Focused) and (Enabled) then SetFocus;
    Repaint;
  end;
end;

procedure TxpButton.RMouseDown  (var Message : TMessage);
begin

end;

procedure TxpButton.LMouseUp  (var Message : TMessage);
begin
  if (FDowned) and (FEnabled)then
  begin
    FDowned := False;
    Repaint;
    FOnButtonClick;
  end;
end;

procedure TxpButton.RMouseUp  (var Message : TMessage);
begin

end;

procedure TxpButton.CMEnter(var Message: TCMGotFocus);
begin
  inherited;
  if Assigned (FOnEnter) then FOnEnter (self);
end;

procedure TxpButton.CMExit(var Message: TCMLostFocus);
begin
  inherited;
  if Assigned (FOnExit) then FOnExit (self);
end;

procedure TxpButton.WMSetFocus(var Message: TMessage);
begin
  if not FFocused then
  begin
    FFocused := true;
    Invalidate;
  end;  
end;

procedure TxpButton.WMKillFocus(var Message: TMessage);
begin
  if FFocused then
  begin
    FFocused := False;
    Invalidate;
  end;  
end;

procedure TxpButton.WMKeyDown (var Message: TMessage);
begin
  if (not FDowned) and ((Message.WParam = VK_RETURN) or (Message.WParam = VK_SPACE)) then
  Begin
    FDowned := true;
    Invalidate;
  end;
  inherited;
end;

procedure TxpButton.WMKeyUp (var Message: TMessage);
Begin
  if FDowned then
  begin
    FDowned := False;
    Invalidate;
    FOnButtonClick;
  end;
  inherited;
end;


procedure TxpButton.SetModalResult (AModalResult : TModalResult);
begin
  FModalResult := AModalResult;
end;

function  TxpButton.GetModalResult : TModalResult;
begin
  Result := FModalResult;
end;

procedure TxpButton.FOnButtonClick;
begin
  if (FEnabled) and (Assigned (FOnClick)) then FOnClick (Self);
  if (FEnabled) and (FModalResult <> mrNone) and (Owner.InheritsFrom (TCustomForm)) then
    (Owner as TCustomForm).ModalResult := FModalResult;
end;

procedure TxpButton.CMDialogChar(var Message : TCMDialogChar);
begin
  if IsAccel (Message.CharCode, FCaption) then
    FOnButtonClick;
end;


procedure TxpButton.SetEnabled (AEnabled : Boolean);
begin
  if FEnabled <> AEnabled then
  begin
    FEnabled := AEnabled;
    Invalidate;
  end;
end;

procedure Register;
begin
  RegisterComponents('XP Controls', [TxpButton]);
end;

end.
