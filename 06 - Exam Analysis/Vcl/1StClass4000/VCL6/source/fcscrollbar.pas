unit fcScrollBar;
{
//
// Components : TfcScrollBar
//
// Copyright (c) 1999 by Woll2Woll Software
}

interface

{$include fcifdef.pas}
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  {$ifdef fcDelphi7Up}
  Themes,
  {$endif}
  {$ifdef ThemeManager}
  thememgr, themesrv, uxtheme,
  {$endif}
  fcCommon, ExtCtrls;


type
  TfcCustomScrollBar = class;
  TfcScrollBarHitTest = (htNone, htIncBtn, htDecBtn, htPageUp, htPageDown, htThumb);

  TfcScrollPosChangeEvent = procedure(Sender: TfcCustomScrollBar; PriorValue, NewValue: Integer) of object;

TfcScrollbarRepeatInterval = class(TPersistent)
private
  FInitialDelay: Integer;
  FRepeatInterval: Integer;
public
  constructor Create;
published
  property InitialDelay: Integer read FInitialDelay write FInitialDelay;
  property Interval: Integer read FRepeatInterval write FRepeatInterval;
end;

  TfcCustomScrollBar = class(TGraphicControl)
  private
    // Property Storage Variables
    FOnChange: TfcScrollPosChangeEvent;
    FKind: TScrollBarKind;
    FMax: Integer;
    FMin: Integer;
    FPageSize: Integer;
    FPosition: Integer;
    FSmallChange: TScrollBarInc;
    FTimer: TTimer;
//    FTimerClear: boolean;
    FFixedThumbSize: boolean;

    // Other Storage Variables
    FClickedPos: TfcScrollBarHitTest;
    FRepeatInterval: TfcScrollbarRepeatInterval;
    DragOffset: integer;
    DragOrigPosition: integer;
    FContinuousDrag: boolean;
    FMinThumbSize: integer;
    FPriorPosition: integer;
    FLastMouseMovePos: TfcScrollBarHitTest;

    // Property Access Methods
    procedure SetKind(Value: TScrollBarKind);
    procedure SetMax(Value: Integer);
    procedure SetMin(Value: Integer);
    procedure SetPageSize(Value: Integer);
    procedure SetPosition(Value: Integer);
    procedure SetSmallChange(Value: TScrollBarInc);

//    procedure WMNCHitTest(var Message: TWMNCHitTest); message WM_NCHITTEST;
    procedure CMDesignHitTest(var Message: TCMDesignHitTest); message CM_DESIGNHITTEST;
    procedure CMMouseEnter(var Message: TMessage); message CM_MOUSEENTER;
    procedure CMMouseLeave(var Message: TMessage); message CM_MOUSELEAVE;
    procedure WMEraseBkgnd(var Message: TWmEraseBkgnd); message WM_ERASEBkgnd;
  protected
    // Overridden Methods
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
    procedure MouseMove(Shift: TShiftState; X, Y: Integer); override;
    procedure Paint; override;
    procedure PaintScrollRegion(All: boolean); overload; virtual;

    // Virtual Methods
    function GetSectionRect(Section: TfcScrollBarHitTest;
         DeltaX: integer = 0; DeltaY: integer = 0): TRect;
    procedure MouseLoop(X, Y: Integer); virtual;
    procedure MouseLoop_MouseUp(X, Y: Integer; ACursorPos: TPoint); virtual;
    procedure ScrollPosChange(OldPos, NewPos: Integer); virtual;
    procedure TimerEvent(Sender: TObject);
    procedure Scroll(ScrollCode: integer; Position: integer); virtual;
    procedure WndProc(var Message: TMessage); override;

    function ScrollScreenRange: integer;
    procedure AdjustThumb(var ThumbSize: integer); virtual;
  public
    Patch: Variant;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function HasScrollRange: boolean; virtual;

    // Public Methods
//    procedure PaintScrollRegion(dc: HDC; ARect: TRect); overload; virtual;
    function GetHitTestInfo(X, Y: Integer): TfcScrollBarHitTest; virtual;
    procedure Invalidate; override;
    procedure MoveScrollPos;
    procedure SetParams(APosition, AMax, AMin: Integer); virtual;
//    procedure InvalidateThumb;

    // Public Properties
    property MinThumbSize: integer read FMinThumbSize write FMinThumbSize default 8;
    property FixedThumbSize: boolean read FFixedThumbSize write FFixedThumbSize;
    property Kind: TScrollBarKind read FKind write SetKind;
    property Max: Integer read FMax write SetMax;
    property Min: Integer read FMin write SetMin;
    property PageSize: Integer read FPageSize write SetPageSize;
    property PriorPosition: integer read FPriorPosition;
    property Position: Integer read FPosition write SetPosition;
    property SmallChange: TScrollBarInc read FSmallChange write SetSmallChange;
    property ContinuousDrag: boolean read FContinuousDrag write FContinuousDrag;
    property RepeatInterval: TfcScrollBarRepeatInterval read FRepeatInterval write FRepeatInterval;
    property OnChange: TfcScrollPosChangeEvent read FOnChange write FOnChange;
  end;

  TfcScrollBar = class(TfcCustomScrollBar)
  published
    property Kind;
    property Max;
    property Min;
    property PageSize;
    property Position;
    property SmallChange;

    property OnChange;
  end;

procedure Register;

implementation

//const incr=0;
const incr=1;  // Incr of 0 causes child detail not to work in fcdbtreeview

procedure Register;
begin
//  RegisterComponents('First Class', [TfcScrollBar]);
end;


constructor TfcScrollbarRepeatInterval.Create;
begin
  FInitialDelay := 500;
  FRepeatInterval := 50;
end;

destructor TfcCustomScrollBar.Destroy;
begin
   FRepeatInterval.Free;
   inherited;
end;

constructor TfcCustomScrollBar.Create(AOwner: TComponent);
begin
  inherited;
  FKind := sbVertical;
  Width := GetSystemMetrics(SM_CXVSCROLL);
  Height := 100;
  FMin := 0;
  FMax := 100;
  FSmallChange := 1;
  FPageSize := 10; //Width;
  FRepeatInterval := TfcScrollbarRepeatInterval.Create;
  FTimer := TTimer.Create(self);
  FTimer.Interval := RepeatInterval.InitialDelay;
  FTimer.OnTimer := TimerEvent;
  DragOrigPosition:= -1;
  FMinThumbSize:= 8;
  FLastMouseMovePos:= htNone;
end;

procedure TfcCustomScrollBar.TimerEvent(Sender: TObject);
var ACursor: TPoint;
begin
  if GetKeyState(VK_LBUTTON) >= 0 then
  begin
    FTimer.Enabled := False;
//    FTimerClear:= True;
    invalidate; { Repaint so pageUp/pageDown area repainted }
//    Update;
//    FTimerClear:= False;
    Exit;
  end;


  FTimer.Interval := RepeatInterval.Interval;

  GetCursorPos(ACursor);
  ACursor := ScreenToClient(ACursor);
  if GetHitTestInfo(ACursor.X, ACursor.Y)=FClickedPos then
  begin
     MoveScrollPos;
  end;
  Invalidate;
//  PaintScrollRegion(False); { Don't invalidate whole region to prevent flicker }
end;

procedure TfcCustomScrollBar.SetKind(Value: TScrollBarKind);
begin
  if FKind <> Value then
  begin
    FKind := Value;
  end;
end;

procedure TfcCustomScrollBar.SetMax(Value: Integer);
begin
  if FMax <> Value then
  begin
    FMax := Value;
  end;
end;

procedure TfcCustomScrollBar.SetMin(Value: Integer);
begin
  if FMin <> Value then
  begin
    FMin := Value;
  end;
end;

procedure TfcCustomScrollBar.SetPageSize(Value: Integer);
begin
  if FPageSize <> Value then
  begin
    FPageSize := Value;
  end;
end;

procedure TfcCustomScrollBar.SetPosition(Value: Integer);
begin
  if FPosition <> Value then
  begin
    FPosition := Value;
    if FPosition > Max-PageSize+1 then FPosition := Max-PageSize+1;
    if FPosition < Min then FPosition := Min;
  end;
end;

procedure TfcCustomScrollBar.SetSmallChange(Value: TScrollBarInc);
begin
  if FSmallChange <> Value then
  begin
    FSmallChange := Value;
  end;
end;

procedure TfcCustomScrollBar.MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  FClickedPos := GetHitTestInfo(X, Y);
  if FClickedPos in [htIncBtn, htDecBtn, htPageUp, htPageDown] then
  begin
     MoveScrollPos;
     FTimer.Interval := RepeatInterval.InitialDelay;
     FTimer.Enabled := True;
     Invalidate;
  end;
  MouseLoop(X, Y);
end;

procedure TfcCustomScrollBar.Invalidate;
var r: TRect;
begin
  r := BoundsRect;
  if Parent <> nil then InvalidateRect(Parent.Handle, @r, False);
end;

{procedure TfcCustomScrollBar.InvalidateThumb;
var r,br: TRect;
begin
   if Parent <> nil then begin
      r:= GetSectionRect(htThumb);
      r.Left:= Left + r.Left;
      r.Top:= Top + r.Top;
      r.right:= Left + r.Right;
      r.Bottom:= Top + r.Bottom;
      InvalidateRect(Parent.Handle, @r, False);
      r:= GetSectionRect(htPageUp);
      r.Left:= Left + r.Left;
      r.Top:= Top + r.Top;
      r.right:= Left + r.Right;
      r.Bottom:= Top + r.Bottom;
      InvalidateRect(Parent.Handle, @r, False);
      r:= GetSectionRect(htPageDown);
      r.Left:= Left + r.Left;
      r.Top:= Top + r.Top;
      r.right:= Left + r.Right;
      r.Bottom:= Top + r.Bottom;
      InvalidateRect(Parent.Handle, @r, False);
   end;
end;
}
procedure TfcCustomScrollBar.MouseLoop(X, Y: Integer);
var ACursor: TPoint;
    Msg: TMsg;
    FirstTimeMouseMove: boolean;
begin
  SetCapture(Parent.Handle);
  FirstTimeMouseMove:= True;
  DragOffset:= 0;
  try
    while GetCapture = Parent.Handle do
    begin
      GetCursorPos(ACursor);
      case Integer(GetMessage(Msg, 0, 0, 0)) of
        -1: Break;
        0: begin
          PostQuitMessage(Msg.WParam);
          Break;
        end;
      end;
      case Msg.Message of
        WM_MOUSEMOVE: begin
           if FClickedPos in [htIncBtn, htDecBtn, htPageUp, htPageDown] then
              continue;
           if FirstTimeMouseMove then DragOrigPosition:= Position;

           ACursor := ScreenToClient(ACursor);
           if ACursor.X<0 then continue;
           if ACursor.Y<0 then continue;
           if Kind = sbVertical then
           begin
              DragOffset:= Acursor.y-y;
              if FirstTimeMouseMove then begin
                if (Y=ACursor.Y) then continue;
                FirstTimeMouseMove:= False;
              end
           end
           else begin
              DragOffset:= Acursor.x-x;
              if FirstTimeMouseMove then begin
                if (X=ACursor.X) then continue;
                FirstTimeMouseMove:= False;
              end
           end;

           if ContinuousDrag and (FClickedPos in [htThumb]) then begin
              FPriorPosition:= position;
              position:= Trunc(DragOrigPosition + DragOffset/ScrollScreenRange * (Max-Min+incr-PageSize));
              Scroll(SB_THUMBPOSITION, position);
           end;
           PaintScrollRegion(False); { Don't invalidate whole region to prevent flicker }
        end;

        WM_LBUTTONUP: begin
          MouseLoop_MouseUp(X, Y, ACursor);

          TranslateMessage(Msg);   // So OnMouseUp fires
          DispatchMessage(Msg);

          if GetCapture = Parent.Handle then ReleaseCapture;
        end;
        else begin
          TranslateMessage(Msg);   // So OnMouseUp fires
          DispatchMessage(Msg);
        end;
      end;
    end;
  finally
    if GetCapture = Parent.Handle then ReleaseCapture;
    DragOffset:= 0;
    DragOrigPosition:= -1;
  end;
end;

procedure TfcCustomScrollBar.MouseLoop_MouseUp(X, Y: Integer; ACursorPos: TPoint);
begin
  if FClickedPos in [htIncBtn, htDecBtn, htPageUp, htPageDown] then
  begin
     FTimer.Enabled := False;
     FClickedPos := htNone;
     Invalidate;
  end
  else begin
     if (DragOrigPosition>=0) and (DragOffset<>0) then
     begin
        position:= Trunc(DragOrigPosition + DragOffset/ScrollScreenRange * (Max-Min+incr-PageSize));
        Scroll(SB_THUMBPOSITION, position);
     end;
     if fcUseThemes(self) and (FClickedPos = htThumb) then
     begin
        invalidate;
        FClickedPos := htNone;
     end;
  end;
end;

procedure TfcCustomScrollBar.ScrollPosChange(OldPos, NewPos: Integer);
begin
  if Assigned(FOnChange) then FOnChange(self, OldPos, NewPos);
end;

type TfcDirection = (sbLeft, sbRight, sbUp, sbDown);


procedure TfcCustomScrollBar.Paint;
begin
   PaintScrollRegion(True);
end;

procedure TfcCustomScrollBar.PaintScrollRegion(All: boolean);
  procedure PaintButton(Rect: TRect; Direction: TfcDirection; Down: Boolean);
  const
    SCROLLDIRECTIONS: array[TfcDirection] of Integer = (DFCS_SCROLLLEFT, DFCS_SCROLLRIGHT,
      DFCS_SCROLLDOWN, DFCS_SCROLLUP);

    {$ifdef fcUseThemeManager}
    THEMEDSCROLLDIRECTIONS: array[TfcDirection] of TThemedScrollBar = (tsArrowBtnLeftNormal, tsArrowBtnRightNormal,
      tsArrowBtnDownNormal, tsArrowBtnUpNormal);
    THEMEDHOTSCROLLDIRECTIONS: array[TfcDirection] of TThemedScrollBar = (tsArrowBtnLeftHot, tsArrowBtnRightHot,
      tsArrowBtnDownHot, tsArrowBtnUpHot);
    THEMEDPRESSEDSCROLLDIRECTIONS: array[TfcDirection] of TThemedScrollBar = (tsArrowBtnLeftPressed, tsArrowBtnRightPressed,
      tsArrowBtnDownPressed, tsArrowBtnUpPressed);
    {$endif}
    PUSHED: array[Boolean] of Integer = (0, DFCS_FLAT or DFCS_PUSHED);
    {$ifdef fcUseThemeManager}
  var
     Details: TThemedElementDetails;
     pt: TPoint;
     Hot: boolean;
     {$endif}
  begin
     if fcUseThemes(self) then //ThemeServices.ThemesEnabled then
     begin
       {$ifdef fcUseThemeManager}
        GetCursorPos(pt);
        pt := ScreenToClient(pt);
        Hot:= (PtInRect(Rect,pt));

        if Down then
           Details := ThemeServices.GetElementDetails(ThemedPressedScrollDirections[Direction])
        else if not Hot then
           Details := ThemeServices.GetElementDetails(ThemedScrollDirections[Direction])
        else
           Details := ThemeServices.GetElementDetails(ThemedHotScrollDirections[Direction]);

        ThemeServices.DrawElement(Canvas.Handle, Details, Rect);
       {$endif}
     end
     else begin
        DrawFrameControl(Canvas.Handle, Rect, DFC_SCROLL, SCROLLDIRECTIONS[Direction] or PUSHED[Down]);
     end;
  end;

  procedure PaintClient(Rect: TRect; Down: Boolean);
  var ACursor: TPoint;
      {$ifdef fcUseThemeManager}
      Details: TThemedElementDetails;
      {$endif}
  begin
      GetCursorPos(ACursor);
      ACursor := ScreenToClient(ACursor);
      if Down and (GetHitTestInfo(ACursor.X, ACursor.Y)=FClickedPos) then
      begin
         if fcUseThemes(self) then //ThemeServices.ThemesEnabled then
         begin
           {$ifdef fcUseThemeManager}
            if Kind=sbVertical then
              Details := ThemeServices.GetElementDetails(tsLowerTrackVertPressed)
            else
              Details := ThemeServices.GetElementDetails(tsLowerTrackHorzPressed);
            ThemeServices.DrawElement(Canvas.Handle, Details, Rect);
            {$endif}
         end
         else begin
            fcDither(Canvas, Rect, clBlack, RGB(64,64,64));
         end;
         exit;
      end
      else if fcUseThemes(self) then //ThemeServices.ThemesEnabled then
      begin
        {$ifdef fcUseThemeManager}
         if Kind=sbVertical then
            Details := ThemeServices.GetElementDetails(tsLowerTrackVertNormal)
         else
            Details := ThemeServices.GetElementDetails(tsLowerTrackHorzNormal);
         ThemeServices.DrawElement(Canvas.Handle, Details, Rect);
         {$endif}
      end
      else fcDither(Canvas, Rect, clBtnFace, clWhite);
  end;

  procedure PaintThumb(Rect: TRect);

    {$ifdef fcUseThemeManager}
  var
     Details: TThemedElementDetails;
     pt: TPoint;
     Hot: boolean;
     {$endif}
  begin
     if fcUseThemes(self) then //ThemeServices.ThemesEnabled then
     begin
       {$ifdef fcUseThemeManager}
        if Kind=sbVertical then
           Rect.Top:= Rect.Top - 1
        else begin
           Rect.Left:= Rect.Left - 1;
        end;

        GetCursorPos(pt);
        pt := ScreenToClient(pt);
        Hot:= (PtInRect(Rect,pt));

        if Kind=sbVertical then
        begin
          if FClickedPos=htThumb then
             Details := ThemeServices.GetElementDetails(tsThumbBtnVertPressed)
          else if not Hot then
             Details := ThemeServices.GetElementDetails(tsThumbBtnVertNormal)
          else
             Details := ThemeServices.GetElementDetails(tsThumbBtnVertHot);
          ThemeServices.DrawElement(Canvas.Handle, Details, Rect);

          if FClickedPos=htThumb then
             Details := ThemeServices.GetElementDetails(tsGripperVertPressed)
          else if not Hot then
             Details := ThemeServices.GetElementDetails(tsGripperVertNormal)
          else
             Details := ThemeServices.GetElementDetails(tsGripperVertHot);
          ThemeServices.DrawElement(Canvas.Handle, Details, Rect);
        end
        else begin
          if FClickedPos=htThumb then
             Details := ThemeServices.GetElementDetails(tsThumbBtnHorzPressed)
          else if not Hot then
             Details := ThemeServices.GetElementDetails(tsThumbBtnHorzNormal)
          else
             Details := ThemeServices.GetElementDetails(tsThumbBtnHorzHot);
          ThemeServices.DrawElement(Canvas.Handle, Details, Rect);

          if FClickedPos=htThumb then
             Details := ThemeServices.GetElementDetails(tsGripperHorzPressed)
          else if not Hot then
             Details := ThemeServices.GetElementDetails(tsGripperHorzNormal)
          else
             Details := ThemeServices.GetElementDetails(tsGripperHorzHot);
          ThemeServices.DrawElement(Canvas.Handle, Details, Rect);
        end;
//    tsGripperHorzNormal, tsGripperHorzHot, tsGripperHorzPressed, tsGripperHorzDisabled,
//    tsGripperVertNormal, tsGripperVertHot, tsGripperVertPressed, tsGripperVertDisabled,
        {$endif}
     end
     else begin
        if Kind=sbVertical then
           Rect.Left:= Rect.Left + 1
        else Rect.Top:= Rect.Top + 1;

        DrawFrameControl(Canvas.Handle, Rect, DFC_BUTTON, DFCS_BUTTONPUSH);

        with Rect, Canvas do begin
           Pen.Color := clBtnFace;
           Polyline([Point(Left-1, Bottom-1), Point(Left-1, Top-1), Point(Right+1, Top-1)]);
        end;
     end;

  end;

var IncDir, DecDir: TfcDirection;
begin
  if Kind = sbVertical then
  begin
    IncDir := sbUp;
    DecDir := sbDown;
  end else begin
    IncDir := sbRight;
    DecDir := sbLeft;
  end;

//  if fClickedPos = htPageUp then
//    Screen.cursor:= crArrow;
  if All then
  begin
     PaintButton(GetSectionRect(htIncBtn), IncDir, FClickedPos = htIncBtn);
     PaintButton(GetSectionRect(htDecBtn), DecDir, FClickedPos = htDecBtn);
  end;
  PaintClient(GetSectionRect(htPageUp), FClickedPos=htPageUp);
  PaintClient(GetSectionRect(htPageDown), FClickedPos=htPageDown);
  PaintThumb(GetSectionRect(htThumb));
end;

{ Number of pixels in scroll area, thumb region excluded }
Function TfcCustomScrollBar.ScrollScreenRange: integer;
var ThumbSize: integer;
begin
   if Kind = sbVertical then begin
      if FixedThumbSize then
         ThumbSize:= 16
      else begin
         ThumbSize:= Trunc(PageSize/(Max-Min+incr) * (Height-(GetSectionRect(htDecBtn).Bottom)*2));
         ThumbSize:= fcmax(ThumbSize, MinThumbSize);
      end;
      result:= Height-(GetSectionRect(htDecBtn).Bottom)*2-ThumbSize;
   end
   else begin
      ThumbSize:= Trunc(PageSize/(Max-Min+incr) * (Width-(GetSectionRect(htDecBtn).Right)*2));
      result:= Width-(GetSectionRect(htDecBtn).Right)*2-ThumbSize
   end;
   if result=0 then result:= 1;  { Don't allow 0 }
end;

function TfcCustomScrollBar.HasScrollRange: boolean;
begin
   result:= PageSize<Max-Min+incr;
end;

function TfcCustomScrollBar.GetSectionRect(Section: TfcScrollBarHitTest;
         DeltaX: integer = 0; DeltaY: integer = 0): TRect;
var ThumbSize, StartPos: integer;

    Function ScrollScreenRange: integer;
    begin
       if Kind = sbVertical then
          result:= Height-(GetSectionRect(htDecBtn).Bottom)*2-ThumbSize
       else
          result:= Width-(GetSectionRect(htDecBtn).Right)*2-ThumbSize;
    end;

begin
  if PageSize>=Max-Min+incr then exit;

  case Section of
    htNone: result := Rect(0, 0, 0, 0);
    htThumb: begin
      if FixedThumbSize then
         ThumbSize:= 16
      else begin
         if Kind = sbVertical then begin
            ThumbSize:=
              Trunc(PageSize/(Max-Min+incr) * (Height-(GetSectionRect(htDecBtn).Bottom)*2));
            ThumbSize:= fcmax(ThumbSize, MinThumbSize);
         end
         else
            ThumbSize:= Trunc(PageSize/(Max-Min+incr) * (Width-(GetSectionRect(htDecBtn).Right)*2));
      end;
      if DragOrigPosition>=0 then
         StartPos:= Trunc(((DragOrigPosition-Min)/(Max-Min+incr-PageSize)) * ScrollScreenRange)
      else
         StartPos:= Trunc(((Position-Min)/(Max-Min+incr-PageSize)) * ScrollScreenRange);

      // if Other ScrollBar showing then skip the following line
      AdjustThumb(ThumbSize);

      StartPos:= fcLimit(StartPos+DragOffset, 1, ScrollScreenRange);

      if Kind = sbVertical then
      begin
        if StartPos=1 then begin
          StartPos:= StartPos + GetSectionRect(htDecBtn).bottom;
          result := Rect(0, StartPos, Width, StartPos + ThumbSize-1);
        end
        else begin
          StartPos:= StartPos + GetSectionRect(htDecBtn).bottom;
          result := Rect(0, StartPos, Width, StartPos + ThumbSize);
        end;
      end
      else begin
        if StartPos=1 then begin
          StartPos:= StartPos + GetSectionRect(htDecBtn).Right;
          result := Rect(StartPos, 0, StartPos + ThumbSize-1, Height)
        end
        else begin
          StartPos:= StartPos + GetSectionRect(htDecBtn).Right;
          result := Rect(StartPos, 0, StartPos + ThumbSize, Height)
        end
      end;

    end;
    htIncBtn:
      if Kind = sbVertical then
      begin
         if Height<3*GetSystemMetrics(SM_CYVSCROLL) then
            result := Rect(0,
                       Height-fcMin(GetSystemMetrics(SM_CYVSCROLL), Height div 2),
                       Width, Height)
         else
            result := Rect(0,
                       Height-fcMin(GetSystemMetrics(SM_CYVSCROLL), Height div 3),
                       Width, Height)
      end
      else result := Rect(
                       Width-fcMin(GetSystemMetrics(SM_CXHSCROLL), Width div 3), 0,
                       Width, Height);
    htDecBtn:
      if Kind = sbVertical then
         if Height<3*GetSystemMetrics(SM_CYVSCROLL) then
            result := Rect(0, 0, Width,
                  fcMin(GetSystemMetrics(SM_CYVSCROLL), Height div 2))
         else
            result := Rect(0, 0, Width,
                  fcMin(GetSystemMetrics(SM_CYVSCROLL), Height div 3))
      else result := Rect(0, 0,
                  fcMin(GetSystemMetrics(SM_CXHSCROLL), Width div 3),
                  Height);
    htPageUp:
      if Kind = sbVertical then
        result := Rect(0, GetSectionRect(htThumb).Bottom, Width, GetSectionRect(htIncBtn).Top)
      else result := Rect(GetSectionRect(htThumb).Right, 0, GetSectionRect(htIncBtn).Left, Height);
    htPageDown:
      if Kind = sbVertical then
        result := Rect(0, GetSectionRect(htDecBtn).Bottom, Width, GetSectionRect(htThumb).Top)
      else result := Rect(GetSectionRect(htDecBtn).Right, 0, GetSectionRect(htThumb).Left, Height);
  end;

  result.left:= result.left + deltax;
  result.top:= result.top + deltay;
  result.right:= result.right + deltax;
  result.bottom:= result.bottom + deltay;
end;

function TfcCustomScrollBar.GetHitTestInfo(X, Y: Integer): TfcScrollBarHitTest;
begin
  for result := Low(TfcScrollBarHitTest) to High(TfcScrollBarHitTest) do
    if PtInRect(GetSectionRect(result), Point(x, y)) then Break;
end;

procedure TfcCustomScrollBar.MoveScrollPos;
var OldPos, NewPos: Integer;
begin
  OldPos := FPosition;
  FPriorPosition:= FPosition;
  case FClickedPos of
    htIncBtn: begin
       Position := Position + SmallChange;
       {if OldPos<>Position then }Scroll(SB_LINEDOWN, Position);
    end;

    htDecBtn: begin
       Position := Position - SmallChange;
       {if OldPos<>Position then} Scroll(SB_LINEUP, Position);
    end;

    htPageUp: begin
       Position := Position + PageSize;
       {if OldPos<>Position then }Scroll(SB_PAGEDOWN, Position);
    end;

    htPageDown: begin
       Position := Position - PageSize;
       {if OldPos<>Position then }Scroll(SB_PAGEUP, Position);
    end;

  end;
  NewPos := FPosition;
  ScrollPosChange(OldPos, NewPos);
end;

procedure TfcCustomScrollBar.SetParams(APosition, AMax, AMin: Integer);
begin
  FPosition := APosition;
  FMax := AMax;
  FMin := AMin;
end;

procedure TfcCustomScrollBar.Scroll(ScrollCode: integer; Position: integer);
begin
end;

{procedure TfcCustomScrollBar.WMNCHitTest(var Message: TWMNCHitTest);
begin
  DefaultHandler(Message);
end;
}
procedure TfcCustomScrollBar.CMDesignHitTest(var Message: TCMDesignHitTest);
//var HitTest: TfcHitTests;
begin
{   HitTest:= GetHitTestInfoAt(Message.xPos, Message.yPos);
   if fchtToRight in HitTest then begin
      Message.Result:= 1;
   end
   else }
   message.result:= 1;
//   inherited;
end;

procedure TfcCustomScrollBar.AdjustThumb(var ThumbSize: integer);
begin
end;

procedure TfcCustomScrollBar.WndProc(var Message: TMessage);
begin
  inherited;
end;

procedure TfcCustomScrollBar.MouseMove(Shift: TShiftState; X, Y: Integer);
var MouseMovePos: TfcScrollBarHitTest;
begin
  inherited;

   // Later optimize to only invalidate portion that mouse is over
   // ..And only if we have moved to a new location
  if fcUseThemes(self) then //ThemeServices.ThemesEnabled then
  begin
     MouseMovePos:= GetHitTestInfo(X, Y);
     if FLastMouseMovePos<>MouseMovePos then
     begin
        invalidate;
     end;
     FLastMouseMovePos:= MouseMovePos;
  end;


end;

procedure TfcCustomScrollBar.CMMouseEnter(var Message: TMessage);
begin
  inherited;
  if fcuseThemes(self) then //ThemeServices.ThemesEnabled then
  begin
    FLastMouseMovePos:= htNone;
    invalidate;
  end;
end;

procedure TfcCustomScrollBar.CMMouseLeave(var Message: TMessage);
begin
  inherited;
  if fcUseThemes(self) then //ThemeServices.ThemesEnabled then
  begin
    FLastMouseMovePos:= htNone;
    invalidate;
  end;
end;

procedure TfcCustomScrollBar.WMEraseBkgnd(var Message: TWmEraseBkgnd);
begin
{   if fcUseThemes(self) then
   begin
     Message.result:= 1
   end
   else }inherited;
end;


end.
