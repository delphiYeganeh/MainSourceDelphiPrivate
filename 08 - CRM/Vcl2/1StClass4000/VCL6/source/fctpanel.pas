unit fctpanel;
{
//
// Components : TwwCustomTransparentPanel
//              Supporting component for transparent navigator
//
// Copyright (c) 1999-2001 by Woll2Woll Software
//
}
{$i wwIfDef.pas}

interface

uses Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CommCtrl, StdCtrls, Buttons, ExtCtrls;

type
  TfcCustomPanel = class(TCustomGroupBox)
  private
    InPaint: boolean;
    fb2: TBitmap;
    procedure WMEraseBkGnd(var Message:TWMEraseBkGnd); message WM_ERASEBKGND;
    procedure WMMove(var Message: TWMMove); Message WM_Move;
    procedure WMPaint(var Message: TWMPaint); message WM_PAINT;
  protected
    // Property Storage Variables
    FTransparent: Boolean;
    FInEraseBkGnd: Boolean;

    procedure CreateWnd; override;
    procedure ClipChildren(Value: Boolean);

    // Property Access Methods
    procedure SetTransparent(Value: Boolean); virtual;

    // Overridden methods
    procedure AlignControls(AControl: TControl; var Rect: TRect); override;
    procedure CreateParams(var Params: TCreateParams); override;
    procedure Paint; override;
    procedure SetParent(AParent:TWinControl); override;
    function IsTransparent: boolean; virtual;
    function GetImage(Control: TWinControl): TBitmap;
//    procedure PaintTo(DC: HDC; X, Y: Integer); override;
  public
    BasePatch: Variant;
    fb: TBitmap;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Invalidate; override;
    procedure RegionalizePanel;

    property Transparent: Boolean read FTransparent write SetTransparent default False;
  end;

  TfcPanel = class(TfcCustomPanel)
  published
    property Align;
    property BevelInner;
    property BevelOuter;
    property BevelWidth;
//    property BorderStyle;
    property BorderWidth;
    property Color;
    property Transparent;
  end;


implementation

constructor TfcCustomPanel.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  ControlStyle := ControlStyle;
  FTransparent := False;
  BevelOuter := bvRaised;
  fb2:= TBitmap.create;
end;

destructor TfcCustomPanel.Destroy;
begin
  fb.free;
  inherited Destroy;
end;

procedure TfcCustomPanel.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);

  if IsTransparent then
     Params.ExStyle := Params.ExStyle or WS_EX_TRANSPARENT;
end;

procedure TfcCustomPanel.CreateWnd;
//var origstyle, exStyle: longint;
begin
  inherited CreateWnd;

//  if fb=nil then
//     fb:= GetParentForm(self).GetFormImage;
{  if FTransparent and (not IsTransparent) then
  begin
     OrigStyle:= Windows.GetWindowLong(handle, GWL_EXSTYLE);
     exStyle:= OrigStyle and not WS_EX_TRANSPARENT;
     if origStyle<>exStyle then
        Windows.SetWindowLong(handle, GWL_EXSTYLE, exStyle);
  end
}
end;

procedure TfcCustomPanel.AlignControls(AControl: TControl; var Rect: TRect);
begin
  inherited;
  if IsTransparent then Invalidate;
end;

procedure TfcCustomPanel.Paint;
var
  ARect: TRect;
  TopColor, BottomColor: TColor;
  r: TRect;
  p: TControl;

  procedure AdjustColors(Bevel: TPanelBevel);
  begin
    TopColor := clBtnHighlight;
    if Bevel = bvLowered then TopColor := clBtnShadow;
    BottomColor := clBtnShadow;
    if Bevel = bvLowered then BottomColor := clBtnHighlight;
  end;

begin
  inherited;
  exit;
  if InPaint then //(csPaintCopy in ControlState) {InPaint} then
  begin
//     screen.cursor:= crarrow;
    // save copy of bitmap
     r:= ClientRect;
     fb2.width:= clientwidth;
     fb2.height:= clientheight;
     fb2.Canvas.CopyRect(ClientRect, {fb.}Canvas, r);
     exit;
  end;

  InPaint:= True;
  if fb=nil then
//     fb:= GetParentForm(self).GetFormImage;
     fb:= GetImage(GetParentForm(self));
  // Get position relative to form
  r:= Rect(Left, Top, Left+width, 0);
  p:= parent;
  while not (p is TCustomForm) do begin
     r.left:= r.Left + p.left;
     r.top := r.top + p.top;
     p:= p.parent;
     if p=nil then break;
  end;
  r:= Rect(r.left, r.top, r.left + width, r.top + height);
//  r:= Rect(0, 0, Width, Height);//r.left, r.top, r.left + width, r.top + height);
//  Canvas.CopyRect(ClientRect, fb.Canvas, r);
  Canvas.CopyRect(ClientRect, fb.Canvas, ClientRect);
//  Canvas.CopyRect(ClientRect, fb2.Canvas, ClientRect);
//  fb.SaveToFile('m:\transfer\temp.bmp');
//  exit;
//  CopyRect(

  if IsTransparent then
  begin
    inherited;
    ARect := GetClientRect;

    // For BevelOuter property
    if BevelOuter <> bvNone then
    begin
      AdjustColors(BevelOuter);
      Frame3D(Canvas, ARect, TopColor, BottomColor, BevelWidth);
    end;

    // For BorderWidth property
    Frame3D(Canvas, ARect, Color, Color, BorderWidth);

    // For BevelInner Property
    if BevelInner <> bvNone then
    begin
      AdjustColors(BevelInner);
      Frame3D(Canvas, ARect, TopColor, BottomColor, BevelWidth);
    end;
//    Update;
  end else inherited;

//  fb.free;
  InPaint:= False;
end;

procedure TfcCustomPanel.WMEraseBkGnd(var Message: TWMEraseBkGnd);
begin
  if {not (csPaintCopy in ControlSTate)
     and }IsTransparent{ and not (Parent is TCustomGrid) }then
  begin
//      wwInvalidateTransparentArea(self);
      Message.Result := 1
  end
  else inherited;
end;

procedure TfcCustomPanel.WMMove(var Message: TWMMove);
begin
  inherited;
  if IsTransparent then Invalidate;
end;

procedure TfcCustomPanel.ClipChildren(Value: Boolean);
begin
  if (Parent <> nil) then
  begin
    if Value then
      SetWindowLong(Parent.Handle, GWL_STYLE,
        GetWindowLong(Parent.Handle, GWL_STYLE) or WS_CLIPCHILDREN)
    else
      SetWindowLong(Parent.Handle, GWL_STYLE,
        GetWindowLong(Parent.Handle, GWL_STYLE) and not WS_CLIPCHILDREN);
    end;
end;

procedure TfcCustomPanel.SetParent(AParent:TWinControl);
begin
  inherited SetParent(AParent);

  // Without this, the panel would be transparent indeed, but you would see through the form into the background apps
  ClipChildren(not FTransparent);
end;

procedure TfcCustomPanel.Invalidate;
var TempRect:TRect;
    i: Integer;
    r: TRect;
begin
  if IsTransparent and (Parent <> nil) and Parent.HandleAllocated then
  begin
    GetUpdateRect(Handle, r, False);
    tempRect:= BoundsRect;
    tempRect:= Rect(TempRect.Left + r.Left, TempRect.Top + r.Top,
                    TempRect.Left + r.Right, TempRect.Top + R.Bottom);
    InvalidateRect(Parent.Handle, @TempRect, False);

//    r:= ClientRect;
    if (r.left=r.right) and (r.top=r.bottom) then
      InvalidateRect(Handle, nil, False)
    else InvalidateRect(Handle, @r, False);
//    Parent.Update; { 8/5/99 - RSW - Calling this causes problem with TImage or TfcImager not being painted }
                     { This happened when you enter page/down in a scrollable region }
    for i := 0 to ControlCount - 1 do
    begin
//        if PtInRect(r, Point(Controls[i].Left, Controls[i].Top)) or
//           PtInRect(r, Point(Controls[i].Left+Controls[i].Width, Controls[i].Left+Controls[i].Height)) then
//           Controls[i].Invalidate;
    end
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
      Invalidate;
      ClipChildren(not Value);
      RecreateWnd;
  end;
end;

Function TfcCustomPanel.IsTransparent: boolean;
begin
   result:= FTransparent and not (csDesigning in ComponentState);
//   if result and (parent<>nil) and fcIsClass(parent.classtype, 'TCustomGrid') then
//      result:=false;
end;


procedure TfcCustomPanel.WMPaint(var Message: TWMPaint);
begin
//   if InPaint then
//   begin
//      DefaultHandler(Message);
//      message.result:=1;
//      exit;
//   end;

//   inPaint:= True;
   inherited;
//   InPaint:= False;

end;

{procedure TfcCustomPanel.PaintTo(DC: HDC; X, Y: Integer);
begin
   if InPaint then exit;
   inherited PaintTo(DC, X,Y);
end;
}

function TfcCustomPanel.GetImage(Control: TWinControl): TBitmap;
var Ofs: integer;
    r, ARect: TRect;
  p: TControl;

procedure wwPaintTo(DC: HDC; X, Y: Integer);
var
  I, EdgeFlags, BorderFlags, SaveIndex: Integer;
  R: TRect;
begin
      Control.ControlState:= Control.ControlState + [csPaintCopy] ;
  SaveIndex := SaveDC(DC);
  MoveWindowOrg(DC, X, Y);
  IntersectClipRect(DC, 0, 0, Control.Width, Control.Height);
  BorderFlags := 0;
  EdgeFlags := 0;
{  if GetWindowLong(Handle, GWL_EXSTYLE) and WS_EX_CLIENTEDGE <> 0 then
  begin
    EdgeFlags := EDGE_SUNKEN;
    BorderFlags := BF_RECT or BF_ADJUST
  end else
  if GetWindowLong(Handle, GWL_STYLE) and WS_BORDER <> 0 then
  begin
    EdgeFlags := BDR_OUTER;
    BorderFlags := BF_RECT or BF_ADJUST or BF_MONO;
  end;
  if BorderFlags <> 0 then
  begin
    SetRect(R, 0, 0, Control.Width, Control.Height);
    DrawEdge(DC, R, EdgeFlags, BorderFlags);
    MoveWindowOrg(DC, R.Left, R.Top);
    IntersectClipRect(DC, 0, 0, R.Right - R.Left, R.Bottom - R.Top);
  end;
}
  Perform(WM_ERASEBKGND, DC, 0);
  Control.Perform(WM_PAINT, DC, 0);
{      with Control do begin
         for I := 0 to ControlCount - 1 do
         begin
            if (Controls[i] is TWinControl) and (Controls[i]<>self) then
              with TWinControl(Controls[I]) do
                 if Visible then
                    PaintTo(dc, Left, Top);
         end
      end;
}
{  if FWinControls <> nil then
    for I := 0 to FWinControls.Count - 1 do
      with TWinControl(FWinControls[I]) do
        if Visible then PaintTo(DC, Left, Top);}
  RestoreDC(DC, SaveIndex);
  Control.ControlState:= Control.ControlState - [csPaintCopy];
end;


{    function ContainsControl(ParentControl, ChildControl: TControl): boolean;
    var i: integer;
    begin
       result:= FAlse;
       with ParentControl do begin
          for i:= 0 to ControlCount-1 do begin
             if Controls[i]=ChildControl then
             begin
                result:= True;
                exit;
             end;
             result:= ContainsControl(Controls[i], ChildControl);
          end
       end
    end;
}
    procedure PaintControl(Control: TWinControl;
                           Canvas: TCanvas; ARect: TRect);
    var i: integer;
        SaveIndex: integer;
        rd: TRect;
    begin
      Control.ControlState:= Control.ControlState + [csPaintCopy] ;
      SaveIndex := SaveDC(Canvas.Handle);
      MoveWindowOrg(Canvas.Handle, ARect.Left, ARect.Top);

//      IntersectClipRect(Canvas.Handle, 0, 0, ARect.Right-ARect.Left,
//         ARect.Bottom - ARect.Top);
      IntersectClipRect(Canvas.Handle, 0, 0, Control.Width, Control.Height);
      Control.Perform(WM_PAINT, Canvas.Handle, 0);
//                      ARect.Bottom - ARect.Top);

      // Don't paint children of inspector, as it already does this on its own
      with Control do begin
         for I := 0 to ControlCount - 1 do
         begin
            if (Controls[i] is TWinControl) and
              (not TWinControl(Controls[i]).ContainsControl(self)) and
              (Controls[i]<>self) and
              (IntersectRect(rd, self.BoundsRect, Controls[i].BoundsRect)) then
              with TWinControl(Controls[I]) do
                 if Visible then
                    PaintTo(Canvas.Handle, Left, Top);
         end
      end;

      RestoreDC(Canvas.Handle, SaveIndex);
      Control.ControlState:= Control.ControlState - [csPaintCopy];
    end;

begin
  Result := TBitmap.Create;
  try
    Result.Width := ClientWidth;
    Result.Height := ClientHeight;
    Result.Canvas.Brush := Brush;
    Result.Canvas.FillRect(ClientRect);
    Result.Canvas.Lock;
    try
      if GetWindowLong(Handle, GWL_STYLE) and WS_BORDER <> 0 then
        Ofs := -1  // Don't draw form border
      else
        Ofs := 0;  // There is no border
      ARect:= Rect(0, 0,  ClientWidth, ClientHeight);
//      ARect:= Rect(-GetParentForm(self).clientWidth+self.Left,
//                   -GetParentForm(self).ClientHeight+self.Top,
      ARect:= Rect(-self.Left,
                   -self.Top,
                   self.Width, self.Height);
      ARect.Right:= ARect.Left + self.width;
      ARect.Bottom:= ARect.Top + self.height;

      r:= Rect(Left, Top, Left+width, 0);
      p:= parent;
      while not (p is TCustomForm) do begin
         r.left:= r.Left + p.left;
         r.top := r.top + p.top;
         p:= p.parent;
         if p=nil then break;
      end;
      ARect:= Rect(-r.left, -r.top, 0, 0);
      ARect.Right:= ARect.Left + self.width;
      ARect.Bottom:= ARect.Top + self.height;

//      wwPaintTo(Result.Canvas.Handle, ofs, ofs);
      PaintControl(Control, Result.Canvas, ARect);
    finally
      Result.Canvas.Unlock;
    end;
  except
    Result.Free;
    raise;
  end;
end;

procedure TfcCustomPanel.RegionalizePanel;
var i,j:integer;
    tmprgn,cliprgn:HRgn;
    r:TRect;
begin
  cliprgn := CreateRectRgn(0,0,0,0);
  for i:=0 to Controlcount-1 do begin
     if Controls[i] is TWinControl then begin
        r := Controls[i].BoundsRect;
        tmprgn := CreateRectRgn(r.Left,r.Top,r.Right,R.Bottom);
        try
          j:= GetWindowRgn(TWinControl(Controls[i]).handle,tmprgn);
          if j > 0 then begin
             OffsetRgn(tmprgn,Controls[i].Left,Controls[i].Top);
          end;
          CombineRgn(cliprgn,cliprgn,tmprgn,RGN_OR);
        finally
          DeleteObject(tmprgn);
        end;
     end
     else begin
        r := Controls[i].BoundsRect;
        tmprgn := CreateRectRgn(r.Left,r.Top,r.Right,R.Bottom);
        CombineRgn(cliprgn,cliprgn,tmprgn,RGN_OR);
     end;
  end;
  SetWindowRgn(Handle,cliprgn,true);
  DeleteObject(cliprgn);
end;

end.
