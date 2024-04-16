unit fcframe;

{$i fcIfDef.pas}
interface

uses classes, Windows, controls, stdctrls, graphics, forms, Messages, typinfo;

type
//  TfcComboButtonStyle = (cbsEllipsis, cbsDownArrow, cbsCustom);

  TfcButtonEffects = class(TPersistent)
  private
     FTransparent: boolean;
     FFlat: boolean;
     procedure SetTransparent(val: boolean);
     procedure SetFlat(val: boolean);
  protected
     Procedure Refresh; virtual;
  public
     Control: TControl;
     Button: TControl;
     constructor Create(Owner: TComponent; AButton: TControl);
     class Function Get(Control: TControl): TfcButtonEffects;
     Procedure Assign(Source: TPersistent); override;
  published
     property Transparent: boolean read FTransparent write SetTransparent default false;
     property Flat: boolean read FFlat write SetFlat default false;
  end;

  TfcEditFocusStyle = (efsFrameBox, efsFrameSunken, efsFrameRaised, efsFrameEtched,
                       efsFrameBump, efsFrameSingle);
  TfcEditFrameEnabledType = (efLeftBorder, efTopBorder, efRightBorder, efBottomBorder);
  TfcEditFrameEnabledSet = set of TfcEditFrameEnabledType;
  TfcEditFrame = class(TPersistent)
  private
    Control: TWinControl;
    FEnabled: boolean;
    FNonFocusBorders: TfcEditFrameEnabledSet;
    FFocusBorders: TfcEditFrameEnabledSet;
    FFocusStyle: TfcEditFocusStyle;
    FNonFocusStyle: TfcEditFocusStyle;
    FNonFocusTextOffsetX: integer;
    FNonFocusTextOffsetY: integer;
    FTransparent: boolean;
    FTransparentClearsBackground: boolean;
    FMouseEnterSameAsFocus:boolean;
    FAutoSizeHeightAdjust: integer;
    FNonFocusTransparentFontColor: TColor;
    FNonFocusColor: TColor;
    FNonFocusFontColor: TColor;
    procedure SetFocusBorders(val: TfcEditFrameEnabledSet);
    procedure SetNonFocusBorders(val: TfcEditFrameEnabledSet);
    procedure SetNonFocusStyle(val: TfcEditFocusStyle);
    procedure SetEnabled(val: boolean);
    procedure SetTransparent(val: boolean);
    procedure CheckParentClipping;
//    procedure AdjustEditRect;
  public
    CreateTransparent: boolean;
    function IsSingleBorderStyle(Style: TfcEditFocusStyle): boolean;
    constructor Create(Owner: TComponent);
    procedure GetEditRectForFrame(var Loc: TRect);
    procedure RefreshTransparentText(InvalidateBorders: boolean=False; UseEditRect: boolean = True);
    procedure RefreshControl;
    procedure AdjustHeight;
    Function IsFrameEffective: boolean;
    procedure GetFrameTextPosition(
       var Left, Indent: integer;
       Focused: boolean = False); virtual;
    class Function Get(Control: TControl): TfcEditFrame;

    Procedure Assign(Source: TPersistent); override;

    property TransparentClearsBackground: boolean
       read FTransparentClearsBackground write FTransparentClearsBackground default False;

  published
    property Enabled: boolean read FEnabled write SetEnabled default False;
    property Transparent: boolean read FTransparent write SetTransparent default False;
    property AutoSizeHeightAdjust: integer read FAutoSizeHeightAdjust write FAutoSizeHeightAdjust default 0;
    property FocusBorders : TfcEditFrameEnabledSet read FFocusBorders write SetFocusBorders
       default [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder];
    property NonFocusBorders : TfcEditFrameEnabledSet read FNonFocusBorders write SetNonFocusBorders
             default [efBottomBorder];
    property FocusStyle: TfcEditFocusStyle read FFocusStyle write FFocusStyle default efsFrameBox;
    property NonFocusStyle: TfcEditFocusStyle read FNonFocusStyle write SetNonFocusStyle default efsFrameBox;
    property NonFocusTextOffsetX: integer read FNonFocusTextOffsetX write FNonFocusTextOffsetX default 0;
    property NonFocusTextOffsetY: integer read FNonFocusTextOffsetY write FNonFocusTextOffsetY default 0;

            // Obsolete
    property NonFocusTransparentFontColor: TColor read FNonFocusTransparentFontColor write FNonFocusTransparentFontColor default clNone;
    property NonFocusColor: TColor read FNonFocusColor write FNonFocusColor default clNone;
    property NonFocusFontColor: TColor read FNonFocusFontColor write FNonFocusFontColor default clNone;
    property MouseEnterSameAsFocus: boolean
       read FMouseEnterSameAsFocus write FMouseEnterSameAsFocus default False;
  end;


procedure fcDrawEdge(
     Control: TWinControl;
     Frame: TfcEditFrame;
     Canvas: TCanvas;
     Focused: boolean);

procedure fcInvalidateTransparentArea(control : TControl);
function fcIsTransparentParent(control : TControl): boolean;

implementation

uses fccommon, grids;

Function fcSetBorder(ctrl: TControl; val: boolean): boolean;
var PropInfo: PPropInfo;
    intval: integer;
begin
   Result:= False;
   PropInfo:= Typinfo.GetPropInfo(ctrl.ClassInfo, 'BorderStyle');
   if (PropInfo<>Nil) then begin
      if val then intval:= ord(bsSingle)
      else intval:= ord(bsNone);
      SetOrdProp(Ctrl, PropInfo, intval);
      result:= True;
   end
end;

function fcTransparent(Control: TControl): boolean;
var PropInfo: PPropInfo;
begin
   Result:= False;
   PropInfo:= Typinfo.GetPropInfo(Control.ClassInfo,'Transparent');
   if PropInfo<>Nil then result:= Boolean(GetOrdProp(Control, PropInfo));
end;

function fcIsTransparentParent(control : TControl): boolean;
var OrigStyle: longint;
    pc: TControl;
begin
   result:= false;
   pc:= control;

   // If parent is not transparent then just return
   if (fcIsClass(pc.Parent.ClassType, 'TfcPanel') or
       fcIsClass(pc.Parent.ClassType, 'TfcGroupBox')) and
      fcTransparent(pc.Parent) then
   begin
      result:= True;
      exit;
   end;
   if (pc.parent is TWinControl) and
      TWinControl(pc.parent).HandleAllocated then
   begin
      OrigStyle:= Windows.GetWindowLong(TWinControl(pc.parent).handle, GWL_EXSTYLE);
      result:= (OrigStyle and WS_EX_TRANSPARENT)<>0;
   end;
end;


constructor TfcEditFrame.Create(Owner: TComponent);
begin
   inherited Create;
   Enabled:= false;
   FNonFocusBorders:= [efBottomBorder];
   FFocusBorders:= [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder];
   if Owner is TWinControl then
     control:= TWinControl(Owner)
   else
     control:= nil;
   FFocusStyle := efsFrameBox;
   FNonFocusStyle:= efsFrameBox;
   FNonFocusTextOffsetX:=0;
   FNonFocusTextOffsetX:=0;
   FNonFocusTransparentFontColor:= clNone;
   FNonFocusColor:= clNone;
   FNonFocusFontcolor:= clNone;
   FMouseEnterSameAsFocus := False;
end;

procedure TfcEditFrame.SetNonFocusBorders(val: TfcEditFrameEnabledSet);
begin
   FNonFocusBorders:= val;
   if control is TCustomEdit then
   begin
      RefreshControl;
   end
//   control.invalidate;
end;

procedure TfcEditFrame.SetFocusBorders(val: TfcEditFrameEnabledSet);
begin
   FFocusBorders:= val;
   if control is TCustomEdit then
   begin
      control.invalidate;
   end
end;

procedure TfcEditFrame.SetNonFocusStyle(val: TfcEditFocusStyle);
begin
   if val<>FNonFocusStyle then
   begin
      FNonFocusStyle:= val;
      if control is TCustomEdit then
      begin
         control.invalidate;
      end
   end
end;

procedure TfcEditFrame.SetEnabled(val: boolean);
   Function wwGetAutoSize(ctrl: TControl): boolean;
   var PropInfo: PPropInfo;
   begin
      Result:= False;
      PropInfo:= Typinfo.GetPropInfo(ctrl.ClassInfo,'AutoSize');
      if PropInfo<>Nil then result:= Boolean(GetOrdProp(Ctrl, PropInfo));
   end;

begin
   if val<>FEnabled then
   begin
      FEnabled:= val;
      if control is TCustomEdit then
      begin
         if val then fcSetBorder(control, False);
         if wwGetAutoSize(control) then AdjustHeight;
         control.invalidate;
      end
   end
end;


procedure fcDrawEdge(
     Control: TWinControl;
     Frame: TfcEditFrame;
     Canvas: TCanvas;
     Focused: boolean);
var cr: TRect;
//    StateFlags: Word;
    Flags: integer;
    focusStyle: TfcEditFocusStyle;
begin
   cr:= Control.ClientRect;
   if Focused then begin
      if not (efRightBorder in Frame.FocusBorders) and
         frame.transparent then cr.right:= cr.right-2;
      flags:= 0;
      if efLeftBorder in Frame.FocusBorders then flags:= flags + bf_left;
      if efBottomBorder in Frame.FocusBorders then flags:= flags + bf_bottom;
      if efTopBorder in Frame.FocusBorders then flags:= flags + bf_top;
      if efRightBorder in Frame.FocusBorders then flags:= flags + bf_right;
      focusStyle:= Frame.FocusStyle;

   end
   else begin
      if not (efRightBorder in Frame.NonFocusBorders) and
         frame.transparent then cr.right:= cr.right-2;
      flags:= 0;
      if efLeftBorder in Frame.NonFocusBorders then flags:= flags + bf_left;
      if efBottomBorder in Frame.NonFocusBorders then flags:= flags + bf_bottom;
      if efTopBorder in Frame.NonFocusBorders then flags:= flags + bf_top;
      if efRightBorder in Frame.NonFocusBorders then flags:= flags + bf_right;
      focusStyle:= Frame.NonFocusStyle;
   end;

      if (FocusStyle=efsFrameSingle) then
      begin
        DrawEdge(Canvas.Handle, cr, BDR_SUNKENOUTER, flags or bf_mono );
      end
      else if (FocusStyle=efsFrameBox) then
      begin
        DrawEdge(Canvas.Handle, cr, EDGE_SUNKEN, flags or bf_mono);
      end
      else if (FocusStyle=efsFrameSunken) then
      begin
        DrawEdge(Canvas.Handle, cr, EDGE_SUNKEN, flags);
      end
      else if (FocusStyle=efsFrameRaised) then
      begin
        DrawEdge(Canvas.Handle, cr, EDGE_RAISED, flags);
      end
      else if (FocusStyle=efsFrameEtched) then
      begin
        DrawEdge(Canvas.Handle, cr, EDGE_ETCHED, flags);
      end
      else if (FocusStyle=efsFrameBump) then
      begin
         DrawEdge(Canvas.Handle, cr, EDGE_BUMP, flags);
      end;

end;

procedure TfcEditFrame.CheckParentClipping;
var OldStyle:  longint;
begin
   if FTransparent and IsFrameEffective and (Control<>nil) and
      not (csDesigning in Control.ComponentState) then
   begin
      if Control.HandleAllocated then
      begin
         OldStyle:= GetWindowLong(Control.Parent.Handle, GWL_STYLE);
         if OldStyle and (NOT WS_CLIPCHILDREN)<>OldStyle then
         begin
            SendMessage(Control.Handle, CM_RECREATEWND, 0, 0);
         end
      end
   end
end;

procedure TfcEditFrame.SetTransparent(val: boolean);
begin
   if val<>FTransparent then
   begin
     CreateTransparent:= val;
     FTransparent:= val;
     CheckParentClipping;
   end;

{   if (Control<>nil) and Control.HandleAllocated and
      fcIsClass(Control.ClassType, 'TfcCustomRichEdit') and (Control<>nil) then
   begin
     SendMessage(control.handle, cm_recreatewnd, 0, 0);
   end;;
}

end;

procedure TfcEditFrame.RefreshTransparentText(InvalidateBorders: boolean=False; UseEditRect: boolean = True);
var r,tempeditrect:TRect;
    dc: HDC;
    brush: HBRUSH;
begin
   r:= Control.BoundsRect;
   if not InvalidateBorders then
   begin
     SendMessage(Control.handle,em_getrect, 0, Integer(@tempeditrect));
     if not useEditRect then begin
       InflateRect(r,-2,-2);
       if not (efLeftBorder in nonFocusBorders) then dec(r.Left,2);
     end
     else if (TEdit(Control).BorderStyle=bsNone) then
     begin
       InflateRect(r,-2,-2);
       if not (efLeftBorder in nonFocusBorders) then dec(r.Left,2);
       r.Right := r.Left+tempeditrect.Right+1;
     end
   end;

   { If imager not in background, then need to explicitly clear background }
   if fcIsTransparentParent(Control) { or True } then
      fcInvalidateTransparentArea(Control)
   else if (Control.Parent.ControlAtPos(  Point(Control.Left, Control.Top), True)=nil) then
   begin
      DC := GetDC(Control.Handle);
      brush:= 0;
      try
        brush:= CreateSolidBrush(ColorToRGB(TEdit(Control.parent).color));
        SelectObject(DC, brush);
        if not InvalidateBorders then
        begin
          InflateRect(tempEditRect, 1, 1);
          { 11/22/99 - Fix problem where far left pixels are not cleared }
          if not (efLeftBorder in nonFocusBorders) then
          begin
             dec(tempEditRect.Left,1);
             if tempEditRect.Left<0 then tempEditRect.left:= 0;
          end;
          Windows.FillRect(DC, tempEditRect, brush);
        end
        else begin
          r:= Control.ClientRect;
          Windows.FillRect(DC, r, brush);
        end;
      finally
        ReleaseDC(Control.Handle, DC);
        DeleteObject(brush);
      end
   end
   else
      InvalidateRect(Control.parent.handle, @r, TransparentClearsBackground);

end;

procedure TfcEditFrame.RefreshControl;
var r:TRect;
begin
//   AdjustEditRect;
   r:= Control.BoundsRect;
   if Enabled and Transparent then
      InvalidateRect(Control.parent.handle, @r, false)
   else Control.Invalidate;
end;

{procedure TfcEditFrame.AdjustEditRect;
var TempEditRect:TRect;
begin
   if not Control.HandleAllocated then exit;
   SendMessage(Control.handle,em_getrect, 0, Integer(@TempEditRect));
   GetEditRectForFrame(TempEditRect);
   SendMessage(Control.Handle, EM_SETRECTNP, 0, LongInt(@TempEditRect));
end;
}

function TfcEditFrame.IsSingleBorderStyle(Style: TfcEditFocusStyle): boolean;
begin
  result:= Style in [efsFrameBox, efsFrameSingle];
end;

procedure TfcEditFrame.GetEditRectForFrame(var Loc: TRect);
begin
     if IsSingleBorderStyle(FocusStyle) then
//     if (FocusStyle = efsFrameBox) then
     begin
        Loc.Top := 2;
        Loc.Left := 2;
        //6/22/01 - Copy change from IP wwframe - PYW - Correct problem where editrect is 1 pixel too large when RightBorder is showing for FrameBox.
        if (efRightBorder in FocusBorders) and (FocusStyle = efsFrameBox) then
          Loc.Right:= Loc.Right - 1
     end
     else begin
        Loc.Top := 3;
        if efLeftBorder in FocusBorders then
        begin
           if FocusStyle in [efsFrameSunken, efsFrameBump] then
              Loc.Left := 3
           else Loc.Left:= 2;
        end
        else Loc.Left:=1;

        Loc.Right:= Loc.Right -2
     end
end;

procedure TfcEditFrame.AdjustHeight;
var
  DC: HDC;
  SaveFont: HFont;
  I: Integer;
  SysMetrics, Metrics: TTextMetric;
begin
  DC := GetDC(0);
  GetTextMetrics(DC, SysMetrics);
  SaveFont := SelectObject(DC, TEdit(Control).Font.Handle);
  GetTextMetrics(DC, Metrics);
  SelectObject(DC, SaveFont);
  ReleaseDC(0, DC);
  if NewStyleControls then
  begin
    if TEdit(Control).Ctl3D then I := 8 else I := 6;
    I := GetSystemMetrics(SM_CYBORDER) * I;
    if TEdit(Control).BorderStyle=bsNone  then i:= 6;
    if self.enabled then i:= i + AutoSizeHeightAdjust;;
  end else
  begin
    I := SysMetrics.tmHeight;
    if I > Metrics.tmHeight then I := Metrics.tmHeight;
    I := I div 4 + GetSystemMetrics(SM_CYBORDER) * 4;
  end;
  if Control.Height=Metrics.tmHeight+i then begin
     Control.Height := Metrics.tmHeight + I - 1; { Force wmsize to take place to call setEditRect }
     Control.Height := Metrics.tmHeight + I;
  end
  else
     Control.Height := Metrics.tmHeight + I;
end;

{Function GetBooleanProp(control: TControl; PropertyName: string): boolean;
var PropInfo: PPropInfo;
begin
   Result:= False;
   PropInfo:= Typinfo.GetPropInfo(Control.ClassInfo, PropertyName);
   if PropInfo<>Nil then
      result:= Boolean(GetOrdProp(Control, PropInfo));
end;
}
procedure SetBooleanProp(control: TControl; PropertyName: string; val: boolean);
var PropInfo: PPropInfo;
begin
   PropInfo:= Typinfo.GetPropInfo(Control.ClassInfo, PropertyName);
   if PropInfo<>Nil then
      SetOrdProp(control, PropInfo, ord(val));
end;

procedure TfcButtonEffects.SetTransparent(val: boolean);
begin
   if FTransparent<>val then
   begin
      FTransparent:= val;
      SetBooleanProp(Button, 'Transparent', FFlat or FTransparent);
      SetBooleanProp(Button, 'Flat', FFlat or FTransparent);
      Refresh;  //      FButton.Glyph.Handle:= LoadComboGlyph;
      Button.Invalidate;
   end;
end;

procedure TfcButtonEffects.SetFlat(val: boolean);
begin
   if FFlat<>val then
   begin
      FFlat:= val;
      SetBooleanProp(Button, 'Flat', FFlat or FTransparent);
      Refresh;  //      FButton.Glyph.Handle:= LoadComboGlyph;
      Button.Invalidate;
   end;
end;

constructor TfcButtonEffects.Create(Owner: TComponent; AButton: TControl);
begin
   inherited Create;
   button:= TControl(AButton);
   control:= TControl(Owner);
end;

Procedure TfcButtonEffects.Refresh;
begin
end;

class Function TfcEditFrame.Get(Control: TControl): TfcEditFrame;
var PropInfo: PPropInfo;
begin
   Result:= Nil;
   PropInfo:= Typinfo.GetPropInfo(Control.ClassInfo,'Frame');
   if PropInfo<>Nil then
      result:= TfcEditFrame(GetOrdProp(Control, PropInfo));
end;

class Function TfcButtonEffects.Get(Control: TControl): TfcButtonEffects;
var PropInfo: PPropInfo;
begin
   Result:= Nil;
   PropInfo:= Typinfo.GetPropInfo(Control.ClassInfo,'ButtonEffects');
   if PropInfo<>Nil then
      result:= TfcButtonEffects(GetOrdProp(Control, PropInfo));
end;

Function TfcEditFrame.IsFrameEffective: boolean;
begin
   result:= enabled and (control<>nil) and not (control.parent is TCustomGrid);
end;

Procedure TfcButtonEffects.Assign(Source: TPersistent);
var s: TfcButtonEffects;
begin
  if fcIsClass(Source.classtype, 'TwwButtonEffects') or (Source is TfcButtonEffects) then
  begin
     s:= TfcButtonEffects(source);
     Flat:= s.Flat;
     Transparent:= s.Transparent;
  end
  else inherited Assign(Source);
end;

procedure TfcEditFrame.Assign(Source: TPersistent);
var s: TfcEditFrame;
begin
  if fcIsClass(Source.classtype, 'TwwEditFrame') or (Source is TfcEditFrame) then
  begin
     s:= TfcEditFrame(source);
     FocusStyle:= s.FocusStyle;
     Enabled:= s.Enabled;
     Transparent:= s.Transparent;
     if not Enabled then exit; {Optimization }
     TransparentClearsBackground:= s.TransparentClearsBackground;
     AutoSizeHeightAdjust:= s.AutoSizeHeightAdjust;
     FocusBorders:= s.FocusBorders;
     NonFocusBorders:= s.NonFocusBorders;
     NonFocusStyle:= s.NonFocusStyle;
     NonFocusTextOffsetX:= s.NonFocusTextOffsetX;
     NonFocusTextOffsetY:= s.NonFocusTextOffsetY;
     NonFocusTransparentFontColor:= s.NonFocusTransparentFontColor;
     NonFocusColor:= s.NonFocusColor;
     NonFocusFontColor:= s.NonFocusFontColor;
     MouseEnterSameAsFocus:= s.MouseEnterSameAsFocus;
  end
  else inherited Assign(Source);
end;

procedure TfcEditFrame.GetFrameTextPosition(
   var Left, Indent: integer;
   Focused: boolean = False);
var Borders: TfcEditFrameEnabledSet;
    FrameStyle: TfcEditFocusStyle;
begin
   if Focused then
   begin
      Borders:= FocusBorders;
      FrameStyle:= FocusStyle;
   end
   else begin
      Borders:= NonFocusBorders;
      FrameStyle:= NonFocusStyle;
   end;

   Left:= 1;
   if (efLeftBorder in Borders) then begin
//      if FrameStyle=efsFrameBox then Left:= 2
      if IsSingleBorderStyle(FrameStyle) then Left:= 2
      else Left:= 3;
   end;

   Indent:= 2;
   if (efTopBorder in Borders) and
      (not IsSingleBorderStyle(FrameStyle)) then
//      (FrameStyle<>efsFrameBox) then
      Indent:= Indent + 1;

   Left:= Left + NonFocusTextOffsetX;
   Indent:= Indent + NonFocusTextOffsetY;
end;

(*procedure fcInvalidateTransparentArea(control : TControl);
var r: TRect;
   pc: TControl;
   pt: TPoint;
   clearBackground: boolean;
begin
  { Draws any image in the background }
   with Control do  r:= Rect(Left, Top, Left+Width, Top+Height);
   r:= Control.ClientRect;
   pc:= control;
   if pc.parent=nil then exit;

   // If parent is not transparent then just return
//   if not fcIsTransparentParent(control) then exit;
   pc:= Control;
   While (pc.parent<>nil) do begin
//     oldpc:= pc;
     pc:= pc.Parent;
     pt:= Point(0,0);
     // Don't invalidate area outside of control
     if Control.Left<0 then pt.x:= pt.x - Control.Left;
     if Control.Top<0 then pt.y:= pt.y - Control.Top;

     pt:= Control.ClientToScreen(pt);
     ScreenToClient(TWinControl(pc).handle, pt);
     r:= Rect(pt.X, pt.y, pt.x+Control.Width, pt.y+Control.Height);

     // Don't invalidate area outside of control
     if Control.Left<0 then r.Right:= r.Right - Control.Left;
     if Control.Top<0 then r.Top:= r.Top - Control.Top;

     clearBackground:= TransparentClearsBackground;
{
     InvalidateRect(TWinControl(pc).handle, @r, ClearBackground);
     if not wwIsTransparentParent(oldpc) then exit;

     InvalidateRect(TWinControl(pc).handle, @r, True);
     if pc is TCustomForm then begin
        pc.update; // Complete painting as background imager is not painted sometimes otherwise
                   // Later may need to only do this code in cmexit, instead of also
                   // in cmTextChanged
//        Application.ProcessMessages;
        break;
     end;
}
   end;
end;
*)
(*procedure fcInvalidateTransparentArea(control : TControl);
var r: TRect;
   pc: TControl;
begin
  { Draws any image in the background }
  if not fcIsTransparentParent(control) then exit;
  r:= Rect(Control.Left, Control.Top, Control.Left+Control.Width, Control.Top + Control.Height);
  InvalidateRect(Control.Parent.Handle, @r, False);
  exit;
   with Control do  r:= Rect(Left, Top, Left+Width, Top+Height);
   pc:= control;
   if pc.parent=nil then exit;

   // If parent is not transparent then just return
//   if not fcIsTransparentParent(control) then exit;
   repeat
      pc:= pc.parent;
      if (pc<>nil) and (pc.parent=nil) then break;

      r:= Rect(pc.left + r.Left, pc.top+r.top,
           pc.left + r.right, pc.top + r.bottom);
   until pc.parent=nil;

   if pc is TWinControl then
       InvalidateRect(TWinControl(pc).handle, @r, False);
end;
*)

procedure fcInvalidateTransparentArea2(control : TControl;
   TransparentClearsBackground: boolean);
var r: TRect;
   pc, oldpc: TControl;
   pt: TPoint;
   clearBackground: boolean;
begin
  { Draws any image in the background }
   with Control do  r:= Rect(Left, Top, Left+Width, Top+Height);
   r:= Control.ClientRect;
   pc:= control;
   if pc.parent=nil then exit;

   // If parent is not transparent then just return
//   if not fcIsTransparentParent(control) then exit;
   pc:= Control;
   While (pc.parent<>nil) do begin
     oldpc:= pc;
     pc:= pc.Parent;
     pt:= Point(0,0);
     // Don't invalidate area outside of control
     if Control.Left<0 then pt.x:= pt.x - Control.Left;
     if Control.Top<0 then pt.y:= pt.y - Control.Top;

     pt:= Control.ClientToScreen(pt);
     ScreenToClient(TWinControl(pc).handle, pt);
     r:= Rect(pt.X, pt.y, pt.x+Control.Width, pt.y+Control.Height);

     // Don't invalidate area outside of control
     if Control.Left<0 then r.Right:= r.Right - Control.Left;
     if Control.Top<0 then r.Top:= r.Top - Control.Top;

{     if wwIsClass(control.classtype, 'TwwNavButton') and
        (wwIsTransparentParent(oldpc)) then clearBackground:=false
     else }
     clearBackground:= TransparentClearsBackground;

     InvalidateRect(TWinControl(pc).handle, @r, ClearBackground);
     if not fcIsTransparentParent(oldpc) then exit;

   end;
end;

procedure fcInvalidateTransparentArea(control : TControl);
var frame: TfcEditFrame;
    clearBackground: boolean;
begin
   Frame:= TfcEditFrame.Get(Control);

   if ((Frame<>Nil) and Frame.TransparentClearsBackground) then
      ClearBackground:=True
   else clearBackground:= false;

   fcInvalidateTransparentArea2(control, clearBackground);
end;

end.
