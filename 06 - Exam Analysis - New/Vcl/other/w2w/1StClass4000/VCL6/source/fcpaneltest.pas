unit fcpaneltest;
{
//
// Components : TwwCustomTransparentPanel
//              Supporting component for transparent navigator
//
// Copyright (c) 1999-2001 by Woll2Woll Software
//
}
{$i fcIfDef.pas}

interface

uses Windows, Messages, SysUtils, Classes, Controls, Forms,
  CommCtrl, StdCtrls, Buttons, ExtCtrls, Graphics, fcframe;

type
  TfcCustomPanel = class(TCustomPanel)
  private
    procedure WMEraseBkGnd(var Message:TWMEraseBkGnd); message WM_ERASEBKGND;
    procedure WMMove(var Message: TWMMove); Message WM_Move;
  protected
    // Property Storage Variables
    FTransparent: Boolean;

    procedure ClipChildren(Value: Boolean);
    procedure CreateWnd; override;

    // Property Access Methods
    procedure SetTransparent(Value: Boolean); virtual;

    // Overridden methods
    procedure Paint; override;
    procedure AlignControls(AControl: TControl; var Rect: TRect); override;
    procedure CreateParams(var Params: TCreateParams); override;
    procedure SetParent(AParent:TWinControl); override;
    function IsTransparent: boolean; virtual;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Invalidate; override;

    property Transparent: Boolean read FTransparent write SetTransparent default False;
  end;

  TfcCustomGroupBox = class(TCustomGroupBox)
  private
    procedure WMEraseBkGnd(var Message:TWMEraseBkGnd); message WM_ERASEBKGND;
    procedure WMMove(var Message: TWMMove); Message WM_Move;
  protected
    // Property Storage Variables
    FTransparent: Boolean;

    procedure ClipChildren(Value: Boolean);
    procedure CreateWnd; override;
    procedure Paint; override;
    // Property Access Methods
    procedure SetTransparent(Value: Boolean); virtual;

    // Overridden methods
    procedure AlignControls(AControl: TControl; var Rect: TRect); override;
    procedure CreateParams(var Params: TCreateParams); override;
    procedure SetParent(AParent:TWinControl); override;
    function IsTransparent: boolean; virtual;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Invalidate; override;

    property Transparent: Boolean read FTransparent write SetTransparent default False;
  end;

  TfcPanel = class(TfcCustomPanel)
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
    property Caption;
    property Color;
    property Constraints;
    property Ctl3D;
    property UseDockManager default True;
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
    property Transparent;
    property Visible;
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

  TfcGroupBox = class(TfcCustomGroupBox)
  published
    property Align;
    property Anchors;
    property BiDiMode;
    property Caption;
    property Color;
    property Constraints;
    property Ctl3D;
    property DockSite;
    property DragCursor;
    property DragKind;
    property DragMode;
    property Enabled;
    property Font;
    property ParentBiDiMode;
    property ParentColor;
    property ParentCtl3D;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ShowHint;
    property TabOrder;
    property TabStop;
    property Transparent;
    property Visible;
    property OnClick;
    property OnContextPopup;
    property OnDblClick;
    property OnDragDrop;
    property OnDockDrop;
    property OnDockOver;
    property OnDragOver;
    property OnEndDock;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnGetSiteInfo;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnStartDock;
    property OnStartDrag;
    property OnUnDock;
  end;

implementation

constructor TfcCustomPanel.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FTransparent := False;
end;

destructor TfcCustomPanel.Destroy;
begin
  inherited Destroy;
end;

procedure TfcCustomPanel.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);

  if IsTransparent then
     Params.ExStyle := Params.ExStyle or WS_EX_TRANSPARENT;
end;

procedure TfcCustomPanel.AlignControls(AControl: TControl; var Rect: TRect);
begin
  inherited;
  if IsTransparent then Invalidate;
//  if (Parent<>nil) and (Parent.Parent<>nil) then
//  else
//     fcInvalidateTransparentArea(self);
//  if Parent is TCustomPanel then
//  begin
//     Parent.Parent.Invalidate;
//  end;

end;

procedure TfcCustomPanel.WMEraseBkGnd(var Message: TWMEraseBkGnd);
begin
  if IsTransparent then Message.result:=1
  else inherited;
end;

procedure TfcCustomPanel.WMMove(var Message: TWMMove);
begin
  inherited;
  if IsTransparent then Invalidate;
//  if Parent is TCustomPanel then
//     Parent.Parent.Invalidate;
end;

procedure TfcCustomPanel.ClipChildren(Value: Boolean);
//var tc: TWinControl;
begin
  if (Parent <> nil) then
  begin
      SetWindowLong(Parent.Handle, GWL_STYLE,
        GetWindowLong(Parent.Handle, GWL_STYLE) and not WS_CLIPCHILDREN);
      if HandleAllocated then
        SetWindowLong(Handle, GWL_STYLE,
          GetWindowLong(Handle, GWL_STYLE) and not WS_CLIPCHILDREN);
//    tc:= self;
//
    // Only disable parent clipping, don't enable it
//    while (tc.parent<>nil) do begin
//        SetWindowLong(tc.Parent.Handle, GWL_STYLE,
//          GetWindowLong(tc.Parent.Handle, GWL_STYLE) and not WS_CLIPCHILDREN);
//      if tc.parent is TCustomForm then break;
//      tc:= tc.parent;
//      break;
//    end;
  end
end;

procedure TfcCustomPanel.SetParent(AParent:TWinControl);
begin
  inherited SetParent(AParent);

  // Without this, the panel would be transparent indeed, but you would see through the form into the background apps
//  ClipChildren(not FTransparent);
end;

procedure TfcCustomPanel.Invalidate;
var TempRect:TRect;
    i: Integer;
    r: TRect;
begin
//  inherited;
//  if (Parent<>nil) and (Parent.Parent<>nil) then
//     fcInvalidateTransparentArea(self);
//     Parent.Parent.Update;
//  exit;
  if IsTransparent and (Parent <> nil) and Parent.HandleAllocated then
  begin
    GetUpdateRect(Handle, r, False);
    tempRect:= BoundsRect;
    tempRect:= Rect(TempRect.Left + r.Left, TempRect.Top + r.Top,
                    TempRect.Left + r.Right, TempRect.Top + R.Bottom);
    InvalidateRect(Parent.Handle, @TempRect, False);
    Parent.Update;

    if (r.left=r.right) and (r.top=r.bottom) then
      InvalidateRect(Handle, nil, False)
    else InvalidateRect(Handle, @r, False);
  end
  else inherited Invalidate;
end;

procedure TfcCustomPanel.SetTransparent(Value: Boolean);
begin
  if FTransparent <> Value then
  begin
    FTransparent := Value;

    if IsTransparent then ControlStyle := ControlStyle - [csOpaque]
    else begin
       ControlStyle := ControlStyle + [csOpaque];
    end;

    if not (csLoading in ComponentState) and HandleAllocated then { 4/30/99 }
    begin
      Invalidate;
      ClipChildren(not Value);
      RecreateWnd;
    end
  end;
end;

Function TfcCustomPanel.IsTransparent: boolean;
begin
   result:= FTransparent and not (csDesigning in ComponentState);
end;

procedure TfcCustomPanel.Paint;
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
    if not Transparent then FillRect(Rect);
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

constructor TfcCustomGroupBox.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FTransparent := False;
end;

destructor TfcCustomGroupBox.Destroy;
begin
  inherited Destroy;
end;

procedure TfcCustomGroupBox.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);

  if IsTransparent then
     Params.ExStyle := Params.ExStyle or WS_EX_TRANSPARENT;
end;

procedure TfcCustomGroupBox.AlignControls(AControl: TControl; var Rect: TRect);
begin
  inherited;
  if IsTransparent then Invalidate;
end;

procedure TfcCustomGroupBox.WMEraseBkGnd(var Message: TWMEraseBkGnd);
begin
  if IsTransparent then Message.result:=1
  else inherited;
end;

procedure TfcCustomGroupBox.WMMove(var Message: TWMMove);
begin
  inherited;
  if IsTransparent then Invalidate;
  if Parent is TCustomPanel then
     Parent.Parent.Invalidate;
end;

procedure TfcCustomGroupBox.ClipChildren(Value: Boolean);
begin
  if (Parent <> nil) then
  begin
      SetWindowLong(Parent.Handle, GWL_STYLE,
        GetWindowLong(Parent.Handle, GWL_STYLE) and not WS_CLIPCHILDREN);
      if HandleAllocated then
        SetWindowLong(Handle, GWL_STYLE,
          GetWindowLong(Handle, GWL_STYLE) and not WS_CLIPCHILDREN);
  end;
end;

procedure TfcCustomGroupBox.SetParent(AParent:TWinControl);
begin
  inherited SetParent(AParent);

  // Without this, the panel would be transparent indeed, but you would see through the form into the background apps
//  ClipChildren(not FTransparent);
end;

procedure TfcCustomGroupBox.Invalidate;
var TempRect:TRect;
    i: Integer;
    r: TRect;
begin
inherited;
exit;
  if IsTransparent and (Parent <> nil) and Parent.HandleAllocated then
  begin
    GetUpdateRect(Handle, r, False);
    tempRect:= BoundsRect;
    tempRect:= Rect(TempRect.Left + r.Left, TempRect.Top + r.Top,
                    TempRect.Left + r.Right, TempRect.Top + R.Bottom);
    InvalidateRect(Parent.Handle, @TempRect, False);

    if (r.left=r.right) and (r.top=r.bottom) then
      InvalidateRect(Handle, nil, False)
    else InvalidateRect(Handle, @r, False);
  end
  else inherited Invalidate;
end;

procedure TfcCustomGroupBox.SetTransparent(Value: Boolean);
begin
  if FTransparent <> Value then
  begin
    FTransparent := Value;

    if IsTransparent then ControlStyle := ControlStyle - [csOpaque]
    else begin
       ControlStyle := ControlStyle + [csOpaque];
    end;

    if not (csLoading in ComponentState) and HandleAllocated then { 4/30/99 }
    begin
      Invalidate;
      ClipChildren(not Value);
      RecreateWnd;
    end
  end;
end;

Function TfcCustomGroupBox.IsTransparent: boolean;
begin
   result:= FTransparent and not (csDesigning in ComponentState);
end;

procedure TfcCustomGroupBox.CreateWnd;
begin
   inherited;
   ClipChildren(not FTransparent);
end;

procedure TfcCustomPanel.CreateWnd;
begin
   inherited;
   ClipChildren(not FTransparent);
end;

procedure TfcCustomGroupBox.Paint;
var
  H: Integer;
  R: TRect;
  Flags: Longint;
begin
  with Canvas do
  begin
    Font := Self.Font;
    H := TextHeight('0');
    R := Rect(0, H div 2 - 1, Width, Height);
    if Ctl3D then
    begin
      Inc(R.Left);
      Inc(R.Top);
      Brush.Color := clBtnHighlight;
      FrameRect(R);
      OffsetRect(R, -1, -1);
      Brush.Color := clBtnShadow;
    end else
      Brush.Color := clWindowFrame;
    FrameRect(R);
    if Text <> '' then
    begin
      if not UseRightToLeftAlignment then
        R := Rect(8, 0, 0, H)
      else                         
        R := Rect(R.Right - Canvas.TextWidth(Text) - 8, 0, 0, H);
      Flags := DrawTextBiDiModeFlags(DT_SINGLELINE);
      DrawText(Handle, PChar(Text), Length(Text), R, Flags or DT_CALCRECT);
      Brush.Color := Color;
      Brush.Style := bsClear;
      DrawText(Handle, PChar(Text), Length(Text), R, Flags);
    end;
  end;
end;

end.
