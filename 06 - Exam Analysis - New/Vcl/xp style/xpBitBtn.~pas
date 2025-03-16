{
 Copyright:      rhoStyle Developers team
 mailto:         support@rhoStyle.com
 Author:         rhoStyle
 Version:        2.4
 Delphi Version: Delphi 3-7
 Description:    This is Windows XP style button. You can use it with
		 Windows 95, 98, NT, ME, 2000 and XP

}

unit xpBitBtn;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, XPGraphUtil, xpReg;

type
  TxpBitBtn = class(TCustomControl)
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
    FStartColor,FEndColor:TColor;

    FGlyph   : TBitmap;
    FMonoGlyph : TBitmap;

    FImageList : TImageList;
    FImageIndex: Integer;

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

procedure SetStartColor (Value : Tcolor);
procedure SetEndColor (Value : Tcolor);

    procedure SetGradient (Value : Boolean);
    function  GetGradient : Boolean;

    procedure SetGlyph (AGlyph : TBitmap);
    function  GetGlyph : TBitmap;

    procedure SetImageList (AList : TImageList);
    function GetImageList : TImageList;

    procedure SetImageIndex (AIndex : Integer);
    function GetImageIndex : Integer;

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

    procedure Loaded; override;

  public
    constructor Create (AOwner : TComponent); override;
    destructor Destroy; override;
  published
    property startColor : TColor read FStartColor write SetStartColor;
    property EndColor : TColor read FEndColor write SetEndColor;
    property Caption : TCaption read GetCaption write SetCaption;
    property Font : TFont read GetFont write SetFont;
    property Glyph : TBitmap read GetGlyph write SetGlyph;
    property ImageList : TImageList read GetImageList write SetImageList;
    property ImageIndex : Integer read GetImageIndex write SetImageIndex default -1;
    property Enabled read FENabled write SetEnabled;
    property Gradient : Boolean read GetGradient write SetGradient;
    property ParentFont;
    property Visible;
    property Anchors;
    property Hint;
    property action;
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

constructor TxpBitBtn.Create (AOwner : TComponent);
begin
  Inherited Create (AOwner);
  Width := 75;
  Height := 25;
  FFont := TFont.Create;
  FFont.Style := [fsBold];
  FFont.Name:='Tahoma';
  FFont.Color := clNavy;
  FFont.OnChange := OnFontChange;
  TabStop:=true;
  FCaption := 'Yeganeh';
  Enabled := True;
  FEnabled := True;
  FActive := False;
  FDowned := False;
  FFocused := False;
  FGradient := true;
  FGlyph := TBitmap.Create;
  FGlyph.TransparentMode := tmAuto;
  FGlyph.Transparent := true;

  FMonoGlyph := TBitmap.Create;
  FMonoGlyph.TransparentMode := tmAuto;
  FMonoGlyph.Transparent := true;
startColor:=RGB (253, 253, 253);
endColor:=RGB (205, 204, 223);

  FImageIndex := -1;
  FImageList := nil;
end;

destructor TxpBitBtn.Destroy;
begin
  FFont.Free;
  FGlyph.Free;
  FMonoGlyph.Free;
  inherited;
end;

procedure TxpBitBtn.Loaded;
begin
  inherited Loaded;
  FMonoGlyph.Assign (FGlyph as TBitmap);
  ConvertBitmapToGrayscale (FMonoGlyph);
  FMonoGlyph.Transparent := true;
  FMonoGlyph.TransparentMode := tmAuto;
end;

procedure TxpBitBtn.CMDialogKey(var Message : TCMDialogKey);
begin
  if Enabled and  ((FCancel and (Message.CharCode = VK_ESCAPE)) or
  (FDefault and (Message.CharCode = VK_RETURN))) then
    FOnButtonClick;
end;


procedure TxpBitBtn.Paint;
var
  AText : String;
  AImageWidth : Integer;
  AImageHeigth : Integer;
  ACanvas : TBitmap;
begin
  AText := FCaption;
  if Pos ('&', FCaption) <> 0 then Delete (AText, Pos ('&', AText), 1);

  ACanvas := TBitmap.Create;

  try
    ACanvas.Width := ClientWidth;
    ACanvas.Height := ClientHeight;

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
        ACanvas.Canvas.Brush.Color := clBtnFace;
        ACanvas.Canvas.Pen.Color := clBtnShadow;
      end;

      if FGradient then
      begin
        ACanvas.Canvas.Brush.Style := bsClear;
        ACanvas.Canvas.Pen.Color := RGB (0, 60, 116);
        ACanvas.Canvas.RoundRect (1, 1, Width-1, Height-1, 5, 5);

        if (FDowned) and FActive then
          GradientFillRect (ACanvas.Canvas, Rect (4, 4, Width-4, Height-4), RGB (253, 253, 253)
          ,
              RGB (205, 204, 223)
              , fdBottomToTop, HeightOf (ClientRect) div 2)
        else
         GradientFillRect (ACanvas.Canvas, Rect (4, 4, Width-4, Height-4) ,
         startColor ,           endcolor,          fdTopToBottom, HeightOf (ClientRect) div 3);
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
        if FGradient then ACanvas.Canvas.Pen.Color := RGB (248, 179, 48)//a
          else ACanvas.Canvas.Pen.Color := clSilver;
        ACanvas.Canvas.Pen.Width := 1;
        ACanvas.Canvas.RoundRect (3, 3, Width-3, Height-3, 2, 2);
      end;

///////////////////////////////////////

      ACanvas.Canvas.Font.Assign (FFont);

      ACanvas.Canvas.Brush.Style := bsClear;
      if Assigned (FImageList) then
      begin
        AImageWidth := FImageList.Width;
        AImageHeigth := FImageList.Height;

        FImageList.Draw (ACanvas.Canvas,
          (Width - ACanvas.Canvas.TextWidth (AText) - AImageWidth - 6) div 2 + Integer (FDowned),
          (Height - AImageHeigth) div 2 + Integer (FDowned),
          FImageIndex);
      end
      else
      begin
        AImageWidth := FGlyph.Width;
        AImageHeigth := FGlyph.Height;

        DrawBitmapTransparent (ACanvas.Canvas, (Width - ACanvas.Canvas.TextWidth (AText) - AImageWidth - 6) div 2 + Integer (FDowned),
          (Height - AImageHeigth) div 2 + Integer (FDowned), FGlyph, FGlyph.Canvas.Pixels [0, 0]);
      end;

      ACanvas.Canvas.Font.Color := clLtGray;
      ACanvas.Canvas.TextRect (Rect (4, 4, Width-4, Height-4),
        (Width - ACanvas.Canvas.TextWidth (AText) - AImageWidth) div 2 + AImageWidth + 3 + Integer (FDowned) + 1,
        (Height - ACanvas.Canvas.TextHeight (AText)) div 2 + Integer (FDowned) + 1, AText);
      ACanvas.Canvas.Font.Color := FFont.Color;
      ACanvas.Canvas.TextRect (Rect (4, 4, Width-4, Height-4),
        (Width - ACanvas.Canvas.TextWidth (AText) - AImageWidth) div 2 + AImageWidth + 3 + Integer (FDowned),
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

      if Assigned (FImageList) then
      begin
        AImageWidth := FImageList.Width;
        AImageHeigth := FImageList.Height;

        FImageList.GetBitmap (FImageIndex, FMonoGlyph);
        ConvertBitmapToGrayscale (FMonoGlyph);
      end
      else
      begin
        AImageWidth := FGlyph.Width;
        AImageHeigth := FGlyph.Height;
        FGlyph.Transparent := true;
      end;

      DrawBitmapTransparent (ACanvas.Canvas, (Width - ACanvas.Canvas.TextWidth (AText) - AImageWidth - 6) div 2 + Integer (FDowned),
        (Height - AImageHeigth) div 2 + Integer (FDowned), FMonoGlyph, FMonoGlyph.Canvas.Pixels [0, 0]);

      ACanvas.Canvas.TextRect (Rect (4, 4, Width-4, Height-4),
        (Width - ACanvas.Canvas.TextWidth (AText) - AImageWidth) div 2 + AImageWidth + 3 + Integer (FDowned),
        (Height - ACanvas.Canvas.TextHeight (AText)) div 2 + Integer (FDowned), AText);

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

procedure TxpBitBtn.MouseEnter (var Message : TMessage);
begin
  if (FActive) or (not FEnabled) then Exit;
  FActive := true;
  Repaint;
end;

procedure TxpBitBtn.MouseLeave (var Message : TMessage);
begin
  if FActive and (FEnabled)  then
  begin
    FActive := False;
    Repaint;
  end;
end;


procedure TxpBitBtn.SetCaption (ACaption : TCaption);
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

function  TxpBitBtn.GetCaption : TCaption;
begin
  Result := FCaption;
end;

procedure TxpBitBtn.SetGradient (Value : Boolean);
begin
  if Value = FGradient then Exit;
  FGradient := Value;
  Repaint; 
end;
procedure TxpBitBtn.SetStartColor (Value : Tcolor);
begin
  if Value = FStartColor then Exit;
  FStartColor := Value;
  Repaint;
end;
procedure TxpBitBtn.SetEndColor (Value : Tcolor);
begin
  if Value = FEndColor then Exit;
  FEndColor := Value;
  Repaint;
end;

function  TxpBitBtn.GetGradient : Boolean;
begin
  Result := FGradient;
end;

procedure TxpBitBtn.SetDowned (ADowned : Boolean);
begin
  if FDowned <> ADowned then
  Begin
    FDowned := ADowned;
    Repaint;
  end;
end;

function  TxpBitBtn.GetDowned : Boolean;
begin
  Result := FDowned;
end;


procedure TxpBitBtn.SetFont (AFont : TFont);
begin
  FFont.Assign (AFont);
  RePaint;
end;

function  TxpBitBtn.GetFont : TFont;
begin
  Result := FFont;
end;

procedure TxpBitBtn.OnFontChange (Sender : TObject);
begin
  Invalidate;
end;


procedure TxpBitBtn.SetGlyph (AGlyph : TBitmap);
begin
  FGlyph.Assign (AGlyph as TBitmap);
  FMonoGlyph.Assign (FGlyph as TBitmap);
  ConvertBitmapToGrayscale (FMonoGlyph);
  FMonoGlyph.Transparent := true;

  if FImageList <> nil then
  begin
    FImageList := nil;
    FImageIndex := -1;
  end;

  Invalidate;
end;

function  TxpBitBtn.GetGlyph : TBitmap;
begin
  Result := FGlyph as TBitmap;
end;

procedure TxpBitBtn.SetImageList (AList : TImageList);
begin
  if FImageList <> AList then
  begin
    FImageList := AList;

    FGlyph.ReleaseHandle;
    
    Invalidate;
  end;
end;

function  TxpBitBtn.GetImageList : TImageList;
begin
  Result := FImageList;
end;


procedure TxpBitBtn.SetImageIndex (AIndex : Integer);
begin
  if FImageIndex <> AIndex then
  begin
    FImageIndex := AIndex;
    Invalidate;
  end;
end;

function  TxpBitBtn.GetImageIndex : Integer;
begin
  Result := FImageIndex;
end;




procedure TxpBitBtn.LMouseDblClick  (var Message : TMessage);
begin
  FOnButtonClick;
end;

procedure TxpBitBtn.LMouseDown  (var Message : TMessage);
begin
  if (not FDowned) and (FEnabled) then
  begin
    FDowned := true;
    if (not Focused) and (Enabled) then SetFocus;
    Repaint;
  end;
end;

procedure TxpBitBtn.RMouseDown  (var Message : TMessage);
begin

end;

procedure TxpBitBtn.LMouseUp  (var Message : TMessage);
begin
  if (FDowned) and (FEnabled)then
  begin
    FDowned := False;
    Repaint;
    FOnButtonClick;
  end;
end;

procedure TxpBitBtn.RMouseUp  (var Message : TMessage);
begin

end;

procedure TxpBitBtn.CMEnter(var Message: TCMGotFocus);
begin
  inherited;
  if Assigned (FOnEnter) then FOnEnter (self);
end;

procedure TxpBitBtn.CMExit(var Message: TCMLostFocus);
begin
  inherited;
  if Assigned (FOnExit) then FOnExit (self);
end;

procedure TxpBitBtn.WMSetFocus(var Message: TMessage);
begin
  if not FFocused then
  begin
    FFocused := true;
    Invalidate;
  end;  
end;

procedure TxpBitBtn.WMKillFocus(var Message: TMessage);
begin
  if FFocused then
  begin
    FFocused := False;
    Invalidate;
  end;  
end;

procedure TxpBitBtn.WMKeyDown (var Message: TMessage);
begin
  if (not FDowned) and ((Message.WParam = VK_RETURN) or (Message.WParam = VK_SPACE)) then
  Begin
    FDowned := true;
    Invalidate;
  end;
  inherited;
end;

procedure TxpBitBtn.WMKeyUp (var Message: TMessage);
Begin
  if FDowned then
  begin
    FDowned := False;
    Invalidate;
    FOnButtonClick;
  end;
  inherited;
end;


procedure TxpBitBtn.SetModalResult (AModalResult : TModalResult);
begin
  FModalResult := AModalResult;
end;

function  TxpBitBtn.GetModalResult : TModalResult;
begin
  Result := FModalResult;
end;

procedure TxpBitBtn.FOnButtonClick;
begin
  if (FEnabled) and (Assigned (FOnClick)) then FOnClick (Self);
   if (FEnabled) and (FModalResult <> mrNone) and (Owner.InheritsFrom (TCustomForm)) then
    (Owner as TCustomForm).ModalResult := FModalResult;
end;

procedure TxpBitBtn.CMDialogChar(var Message : TCMDialogChar);
begin
  if IsAccel (Message.CharCode, FCaption) then
    FOnButtonClick;
end;


procedure TxpBitBtn.SetEnabled (AEnabled : Boolean);
begin
  if FEnabled <> AEnabled then
  begin
    FEnabled := AEnabled;
    Invalidate;
  end;
end;

procedure Register;
begin
  RegisterComponents('XP Controls', [TxpBitBtn]);
end;

end.
