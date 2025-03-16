unit FeCapPnl;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls;

type
  TFEBtnState = (bsFlat, bsUp, bsDown);

  TFECustomCaptionPanel = class(TCustomPanel)
  private
    FCaptionHeight: word;
    FBtnRect: TRect;
    FOnCaptionClick: TNotifyEvent;
    FOnBtnClick: TNotifyEvent;                
    FButtonFlat: Boolean;
    FMouseInControl: Boolean;
    FMouseDown: Boolean;
    FButtonVisible: Boolean;
    procedure SetButtonVisible(const Value: Boolean);
  protected
    procedure CMMouseEnter(var Message: TMessage); message CM_MOUSEENTER;
    procedure CMMouseLeave(var Message: TMessage); message CM_MOUSELEAVE;
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
    procedure MouseMove(Shift: TShiftState; X, Y: Integer); override;
    procedure MouseUp(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
    procedure DrawButton(State: TFEBtnState); dynamic;
    procedure SetCaptionHeight(const Value: word);
    procedure SetButtonFlat(const Value: Boolean);
    procedure AdjustClientRect(var Rect: TRect); override;

    property MouseInControl: Boolean read FMouseInControl;
    property BevelOuter default bvLowered;
    property ButtonFlat: Boolean read FButtonFlat write SetButtonFlat default True;
    property ButtonVisible: Boolean read FButtonVisible write SetButtonVisible default True;
    property UseDockManager default True;
    property CaptionHeight: word read FCaptionHeight write SetCaptionHeight default 22;
    property OnBtnClick: TNotifyEvent read FOnBtnClick write FOnBtnClick;
    property OnCaptionClick: TNotifyEvent read FOnCaptionClick write FOnCaptionClick;
  public
    procedure BtnClick;
    procedure CaptionClick;
    procedure Paint; override;
    constructor Create(AOwner: TComponent); override;
  end;

  TFECaptionPanel = class(TFECustomCaptionPanel)
  public
    property DockManager;
  published
    property Align;
    property Alignment;
    property Anchors;
    property AutoSize;
    property BevelInner;
    property BevelOuter;
    property BevelWidth;
    property BiDiMode;
    property BorderWidth;
    property BorderStyle;
    property ButtonFlat;
    property ButtonVisible;
    property Caption;
    property CaptionHeight;
    property Color;
    property Constraints;
    property Ctl3D;
    property UseDockManager;
    property DockSite;
    property DragCursor;
    property DragKind;
    property DragMode;
    property Enabled;
    property FullRepaint;
    property Font;
    property Locked;
    property ParentBiDiMode;
    property ParentColor;
    property ParentCtl3D;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ShowHint;
    property TabOrder;
    property TabStop;
    property Visible;
    
    property OnBtnClick;
    property OnCaptionClick;
    property OnCanResize;
    property OnClick;
    property OnConstrainedResize;
    property OnContextPopup;
    property OnDockDrop;
    property OnDockOver;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDock;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnGetSiteInfo;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnResize;
    property OnStartDock;
    property OnStartDrag;
    property OnUnDock;
  end;

implementation

{ TFECustomCaptionPanel }

const
  cBtnMargin = 2;
procedure TFECustomCaptionPanel.Paint;
const
  Alignments: array[TAlignment] of Longint = (DT_LEFT, DT_RIGHT, DT_CENTER);
var
  Rect: TRect;
  TopColor, BottomColor: TColor;
  FontHeight: Integer;
  Flags: Longint;

  procedure AdjustColors(Bevel: TPanelBevel);
  begin
    TopColor := clBtnHighlight;
    if Bevel = bvLowered then TopColor := clBtnShadow;
    BottomColor := clBtnShadow;
    if Bevel = bvLowered then BottomColor := clBtnHighlight;
  end;

begin
  Rect := GetClientRect;
  if BevelOuter <> bvNone then
  begin
    AdjustColors(BevelOuter);
    Frame3D(Canvas, Rect, TopColor, BottomColor, BevelWidth);
  end;
  Frame3D(Canvas, Rect, Color, Color, BorderWidth);
  if BevelInner <> bvNone then
  begin
    AdjustColors(BevelInner);
    Frame3D(Canvas, Rect, TopColor, BottomColor, BevelWidth);
  end;
  with Canvas do
  begin
    Brush.Color := Color;
    FillRect(Rect);
    //  draw caption area
    Rect.Bottom := Rect.Top + FCaptionHeight;
    Brush.Color := clBtnFace;
    FillRect(Rect);
    Frame3D(Canvas, Rect, clBtnHighlight, clBtnShadow, 1);

    if FButtonVisible then
    begin
      //  draw buttons
      FBtnRect.Top := Rect.Top + cBtnMargin;
      FBtnRect.Bottom := Rect.Bottom - cBtnMargin;
      FBtnRect.Right := Rect.Right - (2 * cBtnMargin);
      FBtnRect.Left := FBtnRect.Right - (FBtnRect.Bottom - FBtnRect.Top);
      if ButtonFlat then
        DrawButton(bsFlat)
      else
        DrawButton(bsUp);
      //  adjust rect size
      Rect.Right := FBtnRect.Left - cBtnMargin;
    end
    else
    begin
      FBtnRect := Classes.Rect(-1,-1,-1,-1);
      //  adjust rect size
      Rect.Right := Rect.Right - cBtnMargin;
    end;

    //  draw the caption text
    Brush.Style := bsClear;
    Font := Self.Font;
    FontHeight := TextHeight('W');
    with Rect do
    begin
      Top := ((Bottom + Top) - FontHeight) div 2;
      Bottom := Top + FontHeight;
    end;
    Flags := DT_EXPANDTABS or DT_VCENTER or Alignments[Alignment];
    Flags := DrawTextBiDiModeFlags(Flags);
    DrawText(Handle, PChar(Caption), -1, Rect, Flags);
  end;
end;

procedure TFECustomCaptionPanel.DrawButton(State: TFEBtnState);
var
  TmpRect: TRect;
  MemBitmap: TBitmap;
begin
  // draw on a bitmap to reduce flicker
  MemBitmap := TBitmap.Create;
  TRY
    // draw the close btn - use TmpRect, because Frame3d changes the rect size.
    MemBitmap.Height := FBtnRect.Bottom - FBtnRect.Top;
    MemBitmap.Width := FBtnRect.Right - FBtnRect.Left;
    TmpRect := MemBitmap.Canvas.ClipRect;
    MemBitmap.Canvas.Brush.Color := clBtnFace;
    MemBitmap.Canvas.Brush.Style := bsSolid;
    MemBitmap.Canvas.Pen.Style := psSolid;
    MemBitmap.Canvas.FillRect(TmpRect);
    InflateRect(TmpRect, -1, -1);
    DrawFrameControl(MemBitmap.Canvas.Handle, TmpRect, DFC_CAPTION, DFCS_CAPTIONCLOSE or DFCS_FLAT);
    Frame3D(MemBitmap.Canvas, TmpRect, clBtnFace, clBtnFace, 1);
    TmpRect := MemBitmap.Canvas.ClipRect;

    // draw frame
    case State of
      bsUp:   Frame3D(MemBitmap.Canvas, TmpRect, clBtnHighlight, clBtnShadow, 1);
      bsDown: Frame3D(MemBitmap.Canvas, TmpRect, clBtnShadow, clBtnHighlight, 1);
    end;
    Canvas.CopyRect(FBtnRect,MemBitmap.Canvas,Rect(0, 0, MemBitmap.Width, MemBitmap.Height));
  FINALLY
    MemBitmap.Free;
  END;
end;

procedure TFECustomCaptionPanel.AdjustClientRect(var Rect: TRect);
begin
  inherited AdjustClientRect(Rect);
  Rect.Top := Rect.Top + FCaptionHeight;
end;

procedure TFECustomCaptionPanel.SetCaptionHeight(const Value: word);
begin
  if FCaptionHeight <> Value then
  begin
    FCaptionHeight := Value;
    invalidate;
  end;
end;

constructor TFECustomCaptionPanel.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FCaptionHeight := 22;
  FMouseInControl := False;
  FButtonVisible := True;
  FButtonFlat := True;
  BevelOuter := bvLowered;
end;

procedure TFECustomCaptionPanel.BtnClick;
begin
  if Assigned(FOnBtnClick) then
    FOnBtnClick(self);
end;

procedure TFECustomCaptionPanel.CaptionClick;
begin
  if Assigned(FOnCaptionClick) then
    FOnCaptionClick(Self);
end;

procedure TFECustomCaptionPanel.SetButtonFlat(const Value: Boolean);
begin
  if FButtonFlat <> Value then
  begin
    FButtonFlat := Value;
    invalidate;
  end;  
end;

function PointInRect(aPoint: TPoint; aRect: TRect): boolean;
begin
  result :=  (aPoint.X > aRect.Left) and (aPoint.X < aRect.Right) and
             (aPoint.Y > aRect.Top) and (aPoint.Y < aRect.Bottom);
end;

procedure TFECustomCaptionPanel.MouseMove(Shift: TShiftState; X,
  Y: Integer);
begin
  if (NOT FMouseDown) AND ButtonFlat AND MouseInControl Then
  begin
    if PointInRect(Point(X,Y),FBtnRect) then
      DrawButton(bsUp)
    else
      DrawButton(bsFlat);
  end;
  inherited MouseMove(Shift, X, Y);
end;

procedure TFECustomCaptionPanel.CMMouseEnter(var Message: TMessage);
begin
  inherited;
  FMouseInControl := True;
end;

procedure TFECustomCaptionPanel.CMMouseLeave(var Message: TMessage);
begin
  inherited;
  FMouseInControl := False;
  if (NOT FMouseDown) AND ButtonFlat then
    DrawButton(bsFlat);
end;

procedure TFECustomCaptionPanel.MouseDown(Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited MouseDown(Button, Shift, X, Y);
  if PointInRect(Point(X,Y),FBtnRect) then
  begin
    MouseCapture := True;
    FMouseDown := True;
    DrawButton(bsDown);
  end;
end;

procedure TFECustomCaptionPanel.MouseUp(Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
  procedure RestoreBtn;
  begin
    if ButtonFlat Then
    begin
      if MouseInControl AND PointInRect(Point(X,Y),FBtnRect) then
        DrawButton(bsUp)
      else
        DrawButton(bsFlat);
    end
    else DrawButton(bsUp);
  end;
begin
  if FMouseDown then
  begin
    RestoreBtn;
    if PointInRect(Point(X,Y),FBtnRect) then
      BtnClick;
    FMouseDown := False;  
    MouseCapture := False;  
  end;
  inherited MouseUp(Button, Shift, X, Y);
end;

procedure TFECustomCaptionPanel.SetButtonVisible(const Value: Boolean);
begin
  if FButtonVisible <> Value then
  begin
    FButtonVisible := Value;
    Paint;
  end;  
end;

end.
