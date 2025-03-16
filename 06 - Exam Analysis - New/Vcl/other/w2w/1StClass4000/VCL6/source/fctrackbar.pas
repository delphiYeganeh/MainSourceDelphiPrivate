{
//
// Components : TfcTrackBar
//
// Copyright (c) 2003 by Woll2Woll Software
//
}
unit fctrackbar;

interface

{$i fcIfdef.pas}
uses
  Consts, Messages, Windows, SysUtils, CommCtrl, Classes, Controls, Forms, Menus,
  Graphics, StdCtrls, ImgList, ExtCtrls, ComCtrls,
  dbctrls, db, fcpanel,
  {$ifdef fcDelphi7Up}
   themes, uxtheme,
  {$endif}

  {$ifdef ThemeManager}
  thememgr, themesrv, uxtheme,
  {$endif}

  fccommon;
type

{ TfcTrackBar }

  TfcTrackBarOrientation = (trfcHorizontal, trfcVertical);
  TfcTickMark = (tmfcBottomRight, tmfcTopLeft, tmfcBoth);
  TfcTickStyle = (tsfcNone, tsfcAuto, tsfcManual);


  TfcTrackBarTextPosition = (tbtLeft, tbtRight, tbtTop, tbtBottom);
  TfcTrackBar = class;

  TfcTrackBarText = class(TPersistent)
  private
     FShowText: boolean;
     FPosition: TfcTrackBarTextPosition;
     FOffsetX, FOffsetY: integer;
     FDisplayFormat: string;
     FTickLabelFrequency: integer;
     FTickDisplayFormat: string;
     procedure SetFont(Value: TFont);
     function GetFont: TFont;
     procedure SetPosition(Value: TfcTrackBarTextPosition);
     procedure SetOffsetX(Value: integer);
     procedure SetOffsetY(Value: integer);
     procedure SetDisplayFormat(Value: String);
     procedure  SetShowText(Value: boolean);
     procedure SetTickLabelFrequency(Value: integer);
     procedure SetTickDisplayFormat(Value: string);
  public
     Owner: TfcTrackBar;
     constructor Create(AOwner: TComponent);
  published
     property Position : TfcTrackBarTextPosition read FPosition write SetPosition default tbtLeft;
     property OffsetX: integer read FOffsetX write SetOffsetX default 0;
     property OffsetY: integer read FOffsetY write SetOffsetY default 0;
     property Font: TFont read GetFont write SetFont;
     property DisplayFormat: string read FDisplayFormat write SetDisplayFormat;
     property ShowText: boolean read FShowText write SetShowText default False;
     property TickLabelFrequency: integer read FTickLabelFrequency write SetTickLabelFrequency default 0;
     property TickDisplayFormat: string read FTickDisplayFormat write SetTickDisplayFormat;
  end;

  TfcTrackIcon = class(TGraphicControl)
  private
     TrackBmp: TBitmap;
     FOnEndDrag: TNotifyEvent;
     procedure MouseLoop_Drag(X, Y: Integer);

  protected
     DraggingThumb: boolean;

     procedure MouseDown(Button: TMouseButton; Shift: TShiftState;
       X, Y: Integer); override;
     Procedure Paint; override;
     procedure WMPaint(var Message: TWMPaint); message WM_PAINT;
  public
     TrackBar: TfcTrackBar;
     constructor Create(AOwner: TComponent); override;
     destructor Destroy; override;

  published
     property OnEndDrag: TNotifyEvent read FOnEndDrag write FOnEndDrag;
  end;

  TfcTrackRepeatTimer = class (TTimer)
  private
     Increment: Double;
  end;

  TfcDrawTickTextEvent =
     procedure (Sender: TObject; TickValue: Double;
                var ATickText: string; var ARect: TRect;
                var DoDefault: boolean) of object;

  TfcTrackBar = class(TfcCustomPanel) //WinControl)
//  TfcTrackBar = class(TWinControl)
  private
    FTextAttributes: TfcTrackBarText;
    FOrientation: TfcTrackBarOrientation;
    FTickMarks: TfcTickMark;
    FTickStyle: TfcTickStyle;
    FIncrement: Double;
    FPageSize: Integer;
    FThumbLength: Integer;
    FThumbThickness: Integer;
    FSliderVisible: Boolean;
    FMin: Double;
    FMax: Double;
    FFrequency: Double;
    FPosition: Double;
    FSelStart: Double;
    FSelEnd: Double;
    FOnChange: TNotifyEvent;
    FDataLink: TFieldDataLink;
    TrackButton: TfcTrackIcon;
    FTrackThumbIcon: TBitmap;
    FThumbTrackSeparation: integer;
    FThumbColor: TColor;
    FTrackColor: TColor;
    FTrackPartialFillColor: TColor;
    FRepeatTimer: TfcTrackRepeatTimer;
    FSpacingLeftTop: integer;
    FSpacingRightBottom: integer;
    FSpacingEdgeTrackbar: integer;
    FReadOnly: boolean;
    FInverted: boolean;
    FOnDrawTickText: TfcDrawTickTextEvent;
    FDisableThemes: boolean;

    SkipEdit: boolean;
    procedure PositionChanging; virtual;
    procedure TimerExpired(Sender: TObject); virtual;
    procedure SetThumbColor(val: TColor);
    function GetThumbLength: Integer;
    function GetThumbThickness: Integer;
    procedure SetOrientation(Value: TfcTrackBarOrientation);
    procedure SetParams(APosition, AMin, AMax: Double);
    procedure SetPosition(Value: Double);
    procedure SetMin(Value: Double);
    procedure SetMax(Value: Double);
    procedure SetFrequency(Value: Double);
    procedure SetTickStyle(Value: TfcTickStyle);
    procedure SetTickMarks(Value: TfcTickMark);
    procedure SetIncrement(Value: Double);
    procedure SetPageSize(Value: Integer);
    procedure SetThumbLength(Value: Integer);
    procedure SetThumbThickness(Value: Integer);
    procedure SetSliderVisible(Value: Boolean);
    procedure SetSelStart(Value: Double);
    procedure SetSelEnd(Value: Double);
    procedure UpdateSelection;
    procedure UpdateFromButton(Sender: TObject);
    procedure CNHScroll(var Message: TWMHScroll); message CN_HSCROLL;
    procedure CNVScroll(var Message: TWMVScroll); message CN_VSCROLL;
    procedure WMEraseBkGnd(var Message: TWMEraseBkGnd); message WM_ERASEBKGND;
    procedure WMPaint(var Message: TWMPaint); message WM_PAINT;
    function GetDataField: string;
    function GetDataSource: TDataSource;
    procedure SetDataField(const Value: string);
    procedure SetDataSource(Value: TDataSource);
    function GetField: TField;
    procedure SetThumbIcon(Value: TBitmap);
    Function GetThumbIcon: TBitmap;
    procedure WMGetDlgCode(var Message: TWMGetDlgCode); message WM_GETDLGCODE;
    procedure WMSetFocus(var Message: TWMSetFocus); message WM_SETFOCUS;
    procedure CMEnter(var Message: TCMEnter); message CM_ENTER;
    procedure CMExit(var Message: TCMExit); message CM_EXIT;
    procedure CMGetDataLink(var Message: TMessage); message CM_GETDATALINK;
    procedure SetSpacingLeftTop(Value: integer);
    procedure SetSpacingRightBottom(Value: integer);
    procedure SetSpacingEdgeTrackbar(Value: integer);
    Function GetDBValue: Double;
    procedure SetTrackColor(Value: TColor);
    procedure SetTrackPartialFillColor(Value: TColor);

  protected
    procedure DrawTickText(TickValue: Double; TickText: string; ARect: TRect); virtual;
    procedure UpdateRecord;
    procedure UpdateData(Sender: TObject); virtual;
    function EffectiveReadOnly: Boolean; virtual;
    function EditCanModify: Boolean; virtual;
    procedure PaintThumb(ALeft, ATop: integer); virtual;
    function getPosition: Double; virtual;
    function GetTrackBarRect: TRect;
    procedure CreateParams(var Params: TCreateParams); override;
    procedure CreateWnd; override;
    procedure DestroyWnd; override;
    procedure Changed; dynamic;
    procedure DataChange(Sender: TObject); virtual;
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
    procedure Paint; override;
    function ValToPixel(Val: Extended): integer;
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState;
      X, Y: Integer); override;
    procedure MouseUp(Button: TMouseButton; Shift: TShiftState;
                                  X, Y: Integer); override;
    procedure KeyDown(var Key: word; Shift: TShiftState); override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
//    procedure UpdateSelection;
//    procedure SetTick(Value: Integer);
    property DataLink: TFieldDataLink read FDataLink;
    property Field: TField read GetField;
  published
    property DisableThemes : boolean read FDisableThemes write FDisableThemes default False;
    property TextAttributes: TfcTrackBarText read FTextAttributes write FTextAttributes;
    property TrackThumbIcon: TBitmap read GetThumbIcon write SetThumbIcon;
    property ThumbColor: TColor read FThumbColor write SetThumbColor;
    property SpacingLeftTop: integer read FSpacingLeftTop write SetSpacingLeftTop default 5;
    property SpacingRightBottom: integer read FSpacingRightBottom write SetSpacingRightBottom default 5;
    property SpacingEdgeTrackbar: integer read FSpacingEdgeTrackbar write SetSpacingEdgeTrackbar default 2;
    property ReadOnly: boolean read FReadOnly write FReadOnly;
    property Inverted: boolean read FInverted write FInverted default False;
    property TrackColor: TColor read FTrackColor write SetTrackColor default clWhite;
    property TrackPartialFillColor: TColor read FTrackPartialFillColor write SetTrackPartialFillColor default clNone;

    property Align;
    property Anchors;
    property BorderWidth;
    property Ctl3D;
    property DragCursor;
    property DragKind;
    property DragMode;
    property Enabled;
    property Constraints;
    property Increment: Double read FIncrement write SetIncrement;
    property Max: Double read FMax write SetMax;
    property Min: Double read FMin write SetMin;
    property Orientation: TfcTrackBarOrientation read FOrientation write SetOrientation default trfcHorizontal;
    property ParentCtl3D;
    property ParentShowHint;
    property PageSize: Integer read FPageSize write SetPageSize default 2;
    property PopupMenu;
    property Frequency: Double read FFrequency write SetFrequency;
    property Position: Double read GetPosition write SetPosition;
    property SliderVisible: Boolean read FSliderVisible write SetSliderVisible default True;
    property SelEnd: Double read FSelEnd write SetSelEnd;
    property SelStart: Double read FSelStart write SetSelStart;
    property ShowHint;
    property TabOrder;
    property TabStop default True;
    property ThumbLength: Integer read GetThumbLength write SetThumbLength default 20;
    property ThumbThickness: Integer read GetThumbThickness write SetThumbThickness default 10;
    property TickMarks: TfcTickMark read FTickMarks write SetTickMarks default tmfcBottomRight;
    property TickStyle: TfcTickStyle read FTickStyle write SetTickStyle default tsfcAuto;
    property Visible;
    property OnContextPopup;
    property OnDrawTickText : TfcDrawTickTextEvent read FOnDrawTickText write FOnDrawTickText;
    property OnChange: TNotifyEvent read FOnChange write FOnChange;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDock;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property OnStartDock;
    property OnStartDrag;
    property DataField: string read GetDataField write SetDataField;
    property DataSource: TDataSource read GetDataSource write SetDataSource;
  end;


implementation

const
  MaxAutoTicks = 10000;
  InitRepeatPause = 400;  { pause before repeat timer (ms) }
  RepeatPause     = 100;  { pause before hint window displays (ms)}

constructor TfcTrackIcon.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  ControlStyle := ControlStyle + [csReplicatable];
  TrackBar:= AOwner as TfcTrackBar;
  TrackBmp:= TBitmap.create;
  ControlStyle:= ControlStyle - [csOpaque];
end;

destructor TfcTrackIcon.Destroy;
begin
   TrackBmp.Free;
   TrackBmp:= nil;
   inherited Destroy;
end;

procedure TfcTrackIcon.WMPaint(var Message: TWMPaint);
begin
   inherited;
//   message.result:=1;
end;

Procedure TfcTrackIcon.Paint;
begin
   exit;
end;


   function TfcTrackBar.ValToPixel(Val: Extended): Integer;
   var PixelVal: Extended;
       tr: TRect;
   begin
      tr:= GetTrackBarRect;
      if orientation = trfcHorizontal then
      begin
         if Inverted then
           PixelVal:= (tr.Right-tr.left) - (tr.Right-tr.Left)/
                   (Max-Min) * (Val-Min)
         else
           PixelVal:= (tr.Right-tr.Left)/
                   (Max-Min) * (Val-Min)
      end
      else begin
        if Inverted then
          PixelVal:= (tr.Bottom - tr.Top) - (tr.Bottom-tr.Top)/
                     (Max-Min) * (Val-Min)
        else
          PixelVal:= (tr.Bottom-tr.Top)/
                     (Max-Min) * (Val-Min);
      end;
      result:=Trunc(PixelVal);
   end;

procedure TfcTrackIcon.MouseLoop_Drag(X, Y: Integer);
var ACursor: TPoint;
    Msg: TMsg;
    FirstTime: boolean;
    CaptureHandle: HWND;
    DragOffset: integer;

   function PixelToVal(PixelVal: integer): Extended;
   var val : Extended;
       tr: TRect;
   begin
      with TrackBar do
      begin
         tr:= GetTrackBarRect;
         if TrackBar.orientation = trfcHorizontal then
         begin
            if Inverted then
            begin
               val:= Min + (Max-Min) / (tr.Right-tr.Left) * PixelVal;
               val:= (Max+Min) - val;
            end
            else
               val:= Min + (Max-Min) / (tr.Right-tr.Left) * PixelVal
         end
         else begin
            if Inverted then
            begin
              Val:= Min + (Max-Min) / (tr.Bottom-tr.top) * PixelVal;
              val:= (Max+Min) - val;
            end
            else
              val:= Min + (Max-Min) / (tr.Bottom-tr.top) * PixelVal
         end;
      end;
      result:=val;
   end;

   procedure SetValue(PixelVal: integer);
   var val: Double;
       valStr: string;
   begin
//       val:= Trunc(PixelToVal(PixelVal));
//       val:= Round(PixelToVal(PixelVal));
       val:= Trackbar.Increment*Round(PixelToVal(PixelVal)/Trackbar.Increment);
       if (val<TrackBar.Min) then
          val:= TrackBar.Min
       else if (val>TrackBar.Max) then
          val:= TrackBar.Max;
       valstr:= floattostr(val);
       TrackBar.Position:=val;
   end;


begin
   CaptureHandle:= GetParentForm(self).Handle;
   SetCapture(CaptureHandle);
   FirstTime:= True;
   DragOffset:=0; // Make compiler happy


   try
      while GetCapture = CaptureHandle do
      begin
         GetCursorPos(ACursor);
         ACursor := ScreenToClient(ACursor);

         case Integer(GetMessage(Msg, 0, 0, 0)) of
           -1: Break;
           0: begin PostQuitMessage (Msg.WParam); Break; end;
         end;

         case Msg.Message of
            WM_MOUSEMOVE: begin
               if FirstTime then begin
                  if (abs(X-ACursor.X)<=2) and (abs(y-ACursor.Y)<=2) then continue;  // Some tolerance
                  if TrackBar.orientation = trfcHorizontal then
                  begin
                    DragOffset:= X;
                    SetValue(Left - Trackbar.SpacingLeftTop +  ACursor.X-DragOffset);
                  end
                  else begin
                    DragOffset:= Y;
                    SetValue(Top - Trackbar.SpacingLeftTop +  ACursor.Y-DragOffset);
                  end;

                  FirstTime:= False;
                  DraggingThumb:= True;
               end
               else begin
                  if TrackBar.orientation = trfcHorizontal then
                     SetValue(Left - Trackbar.SpacingLeftTop + ACursor.X-DragOffset)
                  else
                     SetValue(Top - Trackbar.SpacingLeftTop + ACursor.Y-DragOffset)
               end
            end;

            WM_LBUTTONUP: begin
               if not FirstTime then
               begin
                  if Assigned(FOnEndDrag) then OnEndDrag(self);
               end;
               if GetCapture = CaptureHandle then ReleaseCapture;
               DraggingThumb:= False;
               if fcUseThemes(Trackbar) then Trackbar.Invalidate;
               TranslateMessage(Msg);
               DispatchMessage(Msg);
            end

            else begin
               TranslateMessage(Msg);
               DispatchMessage(Msg);
            end
         end { Case }
      end;
   finally
       if GetCapture = CaptureHandle then ReleaseCapture;
   end;
end;

procedure TfcTrackIcon.MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   if Parent.CanFocus then Parent.SetFocus;
   if not (ssRight in Shift) then MouseLoop_Drag(X,Y);
end;

constructor TfcTrackBar.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  Caption:= '';
  FInverted:= False;
  FTextAttributes:= TfcTrackBarText.create(self);
  ControlStyle := ControlStyle + [csReplicatable];
  ParentColor:=True;
  FSpacingLeftTop:= 5;
  FSpacingRightBottom:= 5;
  FSpacingEdgeTrackbar:= 2;
  Width := 150;
  Height := 45;
  TabStop := True;
  FMin := 0;
  FMax := 10;
  FPosition := 0;
  FIncrement := 1.0;
  FPageSize := 2;
  FFrequency := 1;
  FSelStart := 0;
  FSelEnd := 0;
  FThumbLength := 20;
  FThumbThickness:= 10;
  FTickMarks := tmfcBottomRight;
  FTickStyle := tsfcAuto;
  FOrientation := trfcHorizontal;
  ControlStyle := ControlStyle - [csDoubleClicks];
  FSliderVisible := True;
  FThumbTrackSeparation:=5;
  TrackButton:= TfcTrackIcon.create(self);
//  TrackButton.parent:= self;
  FTrackThumbIcon:= TBitmap.Create;
  FThumbColor:= clBtnFace;

  FDataLink := TFieldDataLink.Create;
  FDataLink.Control := Self;
  FDataLink.OnDataChange := DataChange;
  FDataLink.OnUpdateData := UpdateData;

  BevelInner:= bvNone;
  BevelOuter:= bvNone;
  TrackColor:= clWhite;
  TrackPartialFillColor:= clNone;
end;

destructor TfcTrackBar.Destroy;
begin
  FDataLink.OnDataChange := nil;
  FDataLink.Free;
  FDataLink := nil;
  TrackButton.Free;
  TrackButton:=nil;
  TrackThumbIcon.Free;
  if FRepeatTimer <> nil then
    FRepeatTimer.Free;
  FTextAttributes.Free;
  inherited Destroy;
end;

procedure TfcTrackBar.SetThumbIcon(Value: TBitmap);
begin
   FTrackThumbIcon.Assign(Value);
   Invalidate;
end;

Function TfcTrackBar.GetThumbIcon: TBitmap;
begin
  result:= FTrackThumbIcon;
end;

procedure TfcTrackBar.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  ControlStyle := ControlStyle - [csAcceptsControls];
  //, csCaptureMouse, csClickEvents,
//    csSetCaption, csOpaque, csDoubleClicks, csReplicatable];
end;

procedure TfcTrackBar.CreateWnd;
var dest, source: TRect;
begin
  inherited CreateWnd;
  if HandleAllocated then
  begin
     with TrackButton do begin
       Parent:= self;
       if not TrackthumbIcon.Empty then
       begin
//         TrackBmp.height:= ThumbLength;
         TrackBmp.height:= TrackThumbIcon.Height; ;
         TrackBmp.width:= TrackThumbIcon.Width;
         dest:= Rect(0, 0, TrackBmp.width, TrackBmp.height);
         source:= Rect(0, 0, TrackThumbIcon.Width, TrackThumbIcon.height);
         TrackBmp.Canvas.CopyRect(dest, TrackThumbIcon.Canvas,source);
       end;
       if orientation = trfcHorizontal then
       begin
         Height:= ThumbLength;
         if TrackBmp.Empty then
            Width:= ThumbThickness
         else
            Width:= TrackBmp.Width;
       end
       else begin
         Width:= ThumbLength;
         if TrackBmp.Empty then
            Height:= ThumbThickness
         else
//            Height:= TrackBmp.Width;
            Height:= TrackBmp.Height;
       end;
//       if TrackBmp.Empty then
//          Width:= self. -5
//       else Height:= TrackBmp.Height;

//       if TrackBmp.Empty then
//          Height:= self.height -5
//       else Height:= TrackBmp.Height;

       if orientation = trfcHorizontal then
       begin
         Left:= 1;
         Top:= GetTrackBarRect.Top-FThumbTrackSeparation+2; // Icon is 6 pixels above trackbar fill rectangle
       end
       else begin
         Top:= 1;
         Left:= GetTrackBarRect.Left-FThumbTrackSeparation+2; // Icon is 6 pixels above trackbar fill rectangle
       end;
       OnEndDrag:= UpdateFromButton;
       if orientation = trfcHorizontal then
         TrackButton.Left:=
            GetTrackBarRect.Left + ValToPixel(Position) - (TrackButton.Width div 2)
       else
         TrackButton.Top:=
            GetTrackBarRect.Top + ValToPixel(Position) - (TrackButton.Height div 2);
     end;
     UpdateSelection;
  end;

end;

procedure TfcTrackBar.UpdateFromButton(Sender: TObject);
begin
end;

procedure TfcTrackBar.DestroyWnd;
begin
  inherited DestroyWnd;
end;

procedure TfcTrackBar.CNHScroll(var Message: TWMHScroll);
begin
  inherited;
  Changed;
  Message.Result := 0;
end;

procedure TfcTrackBar.CNVScroll(var Message: TWMVScroll);
begin
  inherited;
  Changed;
  Message.Result := 0;
end;

function TfcTrackBar.GetThumbLength: Integer;
begin
    Result := FThumbLength;
end;

function TfcTrackBar.GetThumbThickness: Integer;
begin
    Result := FThumbThickness
end;

procedure TfcTrackBar.SetOrientation(Value: TfcTrackBarOrientation);
begin
  if Value <> FOrientation then
  begin
    FOrientation := Value;
    if ComponentState * [csLoading, csUpdating] = [] then
      SetBounds(Left, Top, Height, Width);
    RecreateWnd;
  end;
end;

procedure TfcTrackBar.SetParams(APosition, AMin, AMax: Double);
begin
  if AMax < AMin then
    raise EInvalidOperation.CreateFmt(SPropertyOutOfRange, [Self.Classname]);
  if APosition < AMin then APosition := AMin;
  if APosition > AMax then APosition := AMax;
  if (AMax - AMin > MaxAutoTicks) <> (FMax - FMin > MaxAutoTicks) then
  begin
    FMin := AMin;
    FMax := AMax;
    RecreateWnd;
  end;
  if (FMin <> AMin) then
  begin
    FMin := AMin;
  end;
  if (FMax <> AMax) then
  begin
    FMax := AMax;
  end;

  if FPosition <> APosition then
  begin
    PositionChanging;

    if (not EffectiveReadOnly) or SkipEdit then
       FPosition := fcMaxFloat(FMin, APosition);
    Changed;
    if (DataSource<>nil) and (DataSource.State in [dsEdit, dsInsert]) then
        FDatalink.modified;
  end;

end;

procedure TfcTrackBar.SetPosition(Value: Double);
const Tolerance = 0.005;
begin

  if abs(FPosition-Value)>=(Increment/2) then  // Tolerance is 1/2 of increment
  begin
    if Value>FPosition then
       Value:= FPosition + Increment * Round((Value-FPosition)/Increment)
    else
       Value:= FPosition - Increment * Round((FPosition-Value)/Increment);

    // Round to multiple of increment
    Value:= Round(Value / Increment) * Increment;

    if Value>FMax then Value:= FMax
    else if Value<FMin then Value:= FMin
  end;
  if abs(FPosition-Value)+Tolerance>=Increment then begin // Now make sure it is at least of increment size before adjustnig position
    invalidate;
    SetParams(Value, FMin, FMax);

    if orientation = trfcHorizontal then
       TrackButton.Left:=
         GetTrackBarRect.Left + ValToPixel(Value) - (TrackButton.Width div 2)
    else begin
       TrackButton.Top:=
           GetTrackBarRect.top + ValToPixel(Value) - (TrackButton.Height div 2)
    end
  end;

end;

procedure TfcTrackBar.SetMin(Value: Double);
begin
  if Value <= FMax then
    SetParams(FPosition, Value, FMax);
  FMin:=Value;
end;

procedure TfcTrackBar.SetMax(Value: Double);
begin
  if Value >= FMin then
    SetParams(FPosition, FMin, Value);
  FMax:= Value;
end;

procedure TfcTrackBar.SetFrequency(Value: Double);
begin
  if Value <> FFrequency then
  begin
    FFrequency := Value;
    Invalidate;
  end;
end;

{procedure TfcTrackBar.SetTick(Value: Integer);
begin
  if HandleAllocated then
    SendMessage(Handle, TBM_SETTIC, 0, Value);
end;
}
procedure TfcTrackBar.SetTickStyle(Value: TfcTickStyle);
begin
  if Value <> FTickStyle then
  begin
    FTickStyle := Value;
    RecreateWnd;
  end;
end;

procedure TfcTrackBar.SetTickMarks(Value: TfcTickMark);
begin
  if Value <> FTickMarks then
  begin
    FTickMarks := Value;
    RecreateWnd;
  end;
end;

procedure TfcTrackBar.SetIncrement(Value: Double);
begin
  if (Value <> FIncrement) then
  begin
    if Value=0 then Value:= 1;
    FIncrement := Value;
  end;
end;

procedure TfcTrackBar.SetPageSize(Value: Integer);
begin
  if Value <> FPageSize then
  begin
    FPageSize := Value;
  end;
end;

procedure TfcTrackBar.SetThumbLength(Value: Integer);
begin
  if Value <> FThumbLength then
  begin
    FThumbLength := Value;
    with TrackButton do begin
       if orientation = trfcHorizontal then
       begin
         if TrackBmp.Empty then
            Height:= ThumbLength;
       end
       else begin
         if TrackBmp.Empty then
            Width:= ThumbLength;
       end
    end;
    Invalidate;
  end;
end;

procedure TfcTrackBar.SetThumbThickness(Value: Integer);
begin
  if Value <> FThumbThickness then
  begin
    FThumbThickness := Value;
    with TrackButton do begin
       if orientation = trfcHorizontal then
       begin
         if TrackBmp.Empty then
            Width:= ThumbThickness
       end
       else begin
         if TrackBmp.Empty then
            Height:= ThumbThickness
       end
    end;
    Invalidate;
  end;
end;

procedure TfcTrackBar.SetSliderVisible(Value: Boolean);
begin
  if FSliderVisible <> Value then
  begin
    FSliderVisible := Value;
    Invalidate;
//    RecreateWnd;
  end;
end;

procedure TfcTrackBar.UpdateSelection;
begin
   Invalidate;
end;

procedure TfcTrackBar.SetSelStart(Value: Double);
begin
  if Value <> FSelStart then
  begin
    FSelStart := Value;
    UpdateSelection;
  end;
end;

procedure TfcTrackBar.SetSelEnd(Value: Double);
begin
  if Value <> FSelEnd then
  begin
    FSelEnd := Value;
    UpdateSelection;
  end;
end;

procedure TfcTrackBar.Changed;
begin
  if Assigned(FOnChange) then FOnChange(Self);
end;

procedure TfcTrackBar.WMEraseBkGnd(var Message: TWMEraseBkGnd);
begin
  {$ifdef fcUseThemeManager}
  if fcUseThemes(self) then
  begin
{    R := ClientRect;
    if Focused and ((Perform(WM_QUERYUISTATE, 0, 0) and UISF_HIDEFOCUS) = 0) then
      InflateRect(R, -1, -1);
    ThemeServices.DrawParentBackground(Handle, Message.DC, nil, False, @R);}
    Message.Result := 1;
  end
  else
  {$endif}
     inherited;
end;

function TfcTrackBar.GetDataSource: TDataSource;
begin
  if (FDataLink<>Nil) and (FDataLink.DataSource is TDataSource) then begin
     Result := FDataLink.DataSource as TDataSource
  end
  else Result:= Nil;
end;

procedure TfcTrackBar.SetDataSource(Value: TDataSource);
begin
  FDataLink.DataSource := Value;
  if Value <> nil then begin
    Value.FreeNotification(Self);
  end
end;

function TfcTrackBar.GetDataField: string;
begin
  Result := FDataLink.FieldName;
end;

procedure TfcTrackBar.SetDataField(const Value: string);
begin
  FDataLink.FieldName := Value;
end;

procedure TfcTrackBar.DataChange(Sender: TObject);
var Value: Double;
begin
  if FDataLink.Field <> nil then
  begin
//    Position:= FDataLink.Field.asInteger;
    Value := FDataLink.Field.asFloat;

    // Round to multiple of Increment
//    Value:= Round(Value / Increment) * Increment;
    SkipEdit:= True;
    try
      Position:= Value;
    finally
      SkipEdit:= False;
    end;
//    if (DataSource<>nil) and (DataSource.State=dsBrowse) then Modified:=False;
  end
end;

procedure TfcTrackBar.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (Operation = opRemove) and (FDataLink <> nil) and
    (AComponent = DataSource) then DataSource := nil;
end;

function TfcTrackBar.GetField: TField;
begin
  Result := FDataLink.Field;
end;

// For double buffering
procedure TfcTrackBar.WMPaint(var Message: TWMPaint);
var
    DC, MemDC: HDC;
    MemBitmap, OldBitmap: HBITMAP;
    PS: TPaintStruct;
    UpdateRect: TRect;
begin
  windows.GetUpdateRect(Handle, UpdateRect, false);
  if (Message.DC <> 0) then
  begin
    if not (csCustomPaint in ControlState) and (ControlCount = 0) then
      inherited
    else
      PaintHandler(Message);
  end
  else begin
    DC := GetDC(0);
    MemBitmap := CreateCompatibleBitmap(DC, ClientRect.Right, inherited GetClientRect.Bottom);
    ReleaseDC(0, DC);

    MemDC := CreateCompatibleDC(0);
    OldBitmap := SelectObject(MemDC, MemBitmap);
    try
      DC := BeginPaint(Handle, PS);
      Message.DC := MemDC;
      if not (csCustomPaint in ControlState) and (ControlCount = 0) then
        inherited
      else
        PaintHandler(Message);
      Message.DC := 0;

      BitBlt(DC, UpdateRect.Left, UpdateRect.Top, UpdateRect.Right-UpdateRect.Left,
                 UpdateRect.Bottom-UpdateRect.Top, MemDC, UpdateRect.Left, UpdateRect.top, SRCCOPY);
      EndPaint(Handle, PS);

    finally
      SelectObject(MemDC, OldBitmap);
      DeleteDC(MemDC);
      DeleteObject(MemBitmap);
    end;
  end;


end;


function TfcTrackBar.GetTrackBarRect: TRect;
const TickSpace = 7;
begin
  if Orientation = trfcVertical then
  begin
     if TickMarks in [tmfcBoth, tmfcTopLeft] then
     begin
        result:=  Rect(
            SpacingEdgeTrackbar + FThumbTrackSeparation + TickSpace,
            FSpacingLeftTop + TrackButton.Height div 2,
            SpacingEdgeTrackbar + FThumbTrackSeparation + TickSpace + ThumbLength -
            (2 * FThumbTrackSeparation),
            Height-(FSpacingRightBottom+TrackButton.Height div 2))
     end
     else if TickMarks = tmfcBottomRight then
     begin
        result:=  Rect(
            SpacingEdgeTrackbar + FThumbTrackSeparation,
            FSpacingLeftTop + TrackButton.Height div 2,
            SpacingEdgeTrackbar + FThumbTrackSeparation + ThumbLength -
            (2 * FThumbTrackSeparation),
            Height-(FSpacingRightBottom+TrackButton.Height div 2))
     end
  end
  else begin
     if TickMarks in [tmfcBoth, tmfcTopLeft] then
        result:=  Rect(
            FSpacingLeftTop + TrackButton.Width div 2,
            SpacingEdgeTrackbar + FThumbTrackSeparation + TickSpace,
            Width-(FSpacingRightBottom+TrackButton.Width div 2),
            SpacingEdgeTrackbar + FThumbTrackSeparation + TickSpace + ThumbLength -
            (2 * FThumbTrackSeparation))
     else
        result:=  Rect(FSpacingLeftTop + TrackButton.Width div 2,
            SpacingEdgeTrackbar + FThumbTrackSeparation,
            Width-(FSpacingRightBottom+TrackButton.Width div 2),
            SpacingEdgeTrackbar + FThumbTrackSeparation + ThumbLength -
            (2 * FThumbTrackSeparation))
  end
end;

procedure DrawFocusRect(ACanvas: TCanvas; ARect: TRect);
begin
    ACanvas.Brush.Color := clWhite;
    ACanvas.Font.Color := clBlack;
    ACanvas.DrawFocusRect(ARect);
end;


procedure TfcTrackBar.PaintThumb(ALeft, ATop: integer);
var
    ThumbRect: TRect;
    DiagonalHeight: integer;
    Triangle: array[0..2] of TPoint;
    {$ifdef fcUseThemeManager}
    tempRect: TRect;
    Details: TThemedElementDetails;
    {$endif}

    {$ifdef fcUseThemeManager}
      function IsHotThumb: boolean;
      var SP, MousePos: TPoint;
      begin
          GetCursorPos(MousePos);
          sp:= ScreenToClient(MousePos);
          if (sp.x>=ALeft) and (sp.x<=ALeft+TrackButton.Width) and
             (sp.y>=ATop) and (sp.y<=ATop+TrackButton.Height) then
             result:= True
          else result:= False;
      end;

    Function GetThumbTheme: TThemedTrackBar;
    begin
       if not Enabled then
       begin
         if orientation = trfcHorizontal then
         begin
           if TickMarks = tmfcBoth then
             Result:= ttbThumbDisabled
           else if TickMarks = tmfcBottomRight then
             Result:= ttbThumbBottomDisabled
           else
             Result:= ttbThumbTopDisabled
         end
         else begin
           if TickMarks = tmfcBoth then
             Result:= ttbThumbVertDisabled
           else if TickMarks = tmfcBottomRight then
             Result:= ttbThumbRightDisabled
           else
             Result:= ttbThumbLeftDisabled
         end;
       end
       else if TrackButton.DraggingThumb then
       begin
         if orientation = trfcHorizontal then
         begin
           if TickMarks = tmfcBoth then
             Result:= ttbThumbPressed
           else if TickMarks = tmfcBottomRight then
             Result:= ttbThumbBottomPressed
           else
             Result:= ttbThumbTopPressed
         end
         else begin
           if TickMarks = tmfcBoth then
             Result:= ttbThumbVertPressed
           else if TickMarks = tmfcBottomRight then
             Result:= ttbThumbRightPressed
           else
             Result:= ttbThumbLeftPressed
         end;
       end
       else if IsHotThumb then
       begin
         if orientation = trfcHorizontal then
         begin
           if TickMarks = tmfcBoth then
             Result:= ttbThumbHot
           else if TickMarks = tmfcBottomRight then
             Result:= ttbThumbBottomHot
           else
             Result:= ttbThumbTopHot
         end
         else begin
           if TickMarks = tmfcBoth then
             Result:= ttbThumbVertHot
           else if TickMarks = tmfcBottomRight then
             Result:= ttbThumbRightHot
           else
             Result:= ttbThumbLeftHot
         end;
       end
       else if Focused then
       begin
         if orientation = trfcHorizontal then
         begin
           if TickMarks = tmfcBoth then
             Result:= ttbThumbFocused
           else if TickMarks = tmfcBottomRight then
             Result:= ttbThumbBottomFocused
           else
             Result:= ttbThumbTopFocused
         end
         else begin
           if TickMarks = tmfcBoth then
             Result:= ttbThumbVertFocused
           else if TickMarks = tmfcBottomRight then
             Result:= ttbThumbRightFocused
           else
             Result:= ttbThumbLeftFocused
         end;
       end
       else begin
         if orientation = trfcHorizontal then
         begin
           if TickMarks = tmfcBoth then
             Result:= ttbThumbNormal
           else if TickMarks = tmfcBottomRight then
             Result:= ttbThumbBottomNormal
           else
             Result:= ttbThumbTopNormal
         end
         else begin
           if TickMarks = tmfcBoth then
             Result:= ttbThumbVertNormal
           else if TickMarks = tmfcBottomRight then
             Result:= ttbThumbRightNormal
           else
             Result:= ttbThumbLeftNormal
         end;
       end
    end;
    {$endif}
begin
   if not SliderVisible then exit;

   if not TrackThumbIcon.Empty then
   begin
     with TrackThumbIcon do
     begin
        TransparentMode := tmAuto;
        Transparent:= True;
     end;
     Canvas.Draw(ALeft, ATop, TrackThumbIcon);
     exit;
   end;

   {$ifdef fcUseThemeManager}
   if fcUseThemes(self) then
   begin
      tempRect:= TrackButton.ClientRect;
      tempRect.left:= ALeft;
      tempRect.Top:= ATop;
      tempRect.Right:= tempRect.Left + TrackButton.Width;
      tempRect.Bottom:= tempRect.Top + TrackButton.height;
      Details := ThemeServices.GetElementDetails(GetThumbTheme);
      ThemeServices.DrawElement(Canvas.Handle, Details, tempRect);
      exit;
   end;
   {$endif}


   if orientation = trfcHorizontal then
   begin
     with Canvas do begin
        ThumbRect.Left:= ALeft;
        ThumbRect.Right:= ThumbRect.Left + TrackButton.ClientWidth;
        DiagonalHeight:= (ThumbRect.Right-ThumbRect.Left) div 2;
        ThumbRect.Top:= ATop; //RulerRect.Top - Trackbar.FThumbTrackSeparation;
        ThumbRect.Bottom:= ThumbRect.Top + ThumbLength -  DiagonalHeight;
        Brush.Color:= ThumbColor;
        FillRect(ThumbRect);
        DrawEdge(Handle, ThumbRect, EDGE_RAISED,//BDR_RAISEDINNER,
           BF_TOP or BF_LEFT);
        DrawEdge(Handle, ThumbRect, EDGE_RAISED,//BDR_RAISEDINNER,
           BF_RIGHT);
        ThumbRect.Top:= ThumbRect.Bottom;
        ThumbRect.Bottom:= ThumbRect.top + DiagonalHeight;
        ThumbRect.Right:= ThumbRect.Left+ DiagonalHeight;
        DrawEdge(Handle, ThumbRect, EDGE_RAISED,//BDR_RAISEDINNER,
           BF_MIDDLE OR BF_DIAGONAL_ENDTOPLEFT);

        Triangle[0]:= Point(ThumbRect.Left+1, ThumbRect.Top);
        Triangle[1]:= Point(ThumbRect.Right, ThumbRect.Top);
        Triangle[2]:= Point(ThumbRect.Right, ThumbRect.Bottom-1);
        Pen.Color:=ThumbColor;
        Pen.Color:=ThumbColor;
        Brush.Color:= ThumbColor;
        Polygon(Triangle);
        DrawEdge(Handle, ThumbRect, EDGE_RAISED,//BDR_RAISEDINNER,
           BF_DIAGONAL_ENDTOPLEFT);
        ThumbRect.Left:= ALeft + DiagonalHeight;
        ThumbRect.Right:=ALeft + TrackButton.ClientWidth;
        Triangle[0]:= Point(ThumbRect.Left, ThumbRect.Top);
        Triangle[1]:= Point(ThumbRect.Right-2, ThumbRect.Top);
        Triangle[2]:= Point(ThumbRect.Left, ThumbRect.Bottom-1);
        Pen.Color:=ThumbColor;
        Pen.Color:=ThumbColor;
        Brush.Color:= ThumbColor;
        Polygon(Triangle);
        DrawEdge(Handle, ThumbRect, EDGE_RAISED,//BDR_RAISEDINNER,
          {BF_MIDDLE OR }BF_DIAGONAL_ENDBOTTOMLEFT);
      end;
   end
   else begin
     with Canvas do begin
        ThumbRect.Top:= ATop;
        ThumbRect.Bottom:= ThumbRect.Top + TrackButton.ClientHeight;
        DiagonalHeight:= (ThumbRect.Bottom-ThumbRect.Top) div 2;
        ThumbRect.Left:= ALeft;
        if TickMarks = tmfcBoth then
        begin
           ThumbRect.Right:= ThumbRect.Left + ThumbLength;
           Brush.Color:= ThumbColor;

           FillRect(ThumbRect);
           DrawEdge(Handle, ThumbRect, EDGE_RAISED,
              BF_TOP or BF_LEFT);
           DrawEdge(Handle, ThumbRect, EDGE_RAISED,
              BF_BOTTOM + BF_RIGHT);
           exit;
        end
        else if TickMarks = tmfcBottomRight then
        begin
          ThumbRect.Right:= ThumbRect.Left + ThumbLength - DiagonalHeight;
          Brush.Color:= ThumbColor;

          FillRect(ThumbRect);
          DrawEdge(Handle, ThumbRect, EDGE_RAISED,//BDR_RAISEDINNER,
             BF_TOP or BF_LEFT);
          DrawEdge(Handle, ThumbRect, EDGE_RAISED,//BDR_RAISEDINNER,
             BF_BOTTOM);

          ThumbRect.Left:= ThumbRect.Right-1;
          ThumbRect.Right:= ThumbRect.Left + DiagonalHeight;
          ThumbRect.Top:= ThumbRect.Top + 1;
          ThumbRect.Bottom:= ThumbRect.Top+ DiagonalHeight;


          Triangle[0]:= Point(ThumbRect.Left, ThumbRect.Top);
          Triangle[1]:= Point(ThumbRect.Left, ThumbRect.Bottom-1);
          Triangle[2]:= Point(ThumbRect.Right-1, ThumbRect.Bottom-1);
          Pen.Color:=ThumbColor;
          Brush.Color:= ThumbColor;
          Polygon(Triangle);
          DrawEdge(Handle, ThumbRect, EDGE_RAISED,//BDR_RAISEDINNER,
             BF_DIAGONAL_ENDTOPLEFT);

          ThumbRect.Top:= ATop + DiagonalHeight;
          ThumbRect.Bottom:=ATop + TrackButton.ClientHeight;
          Triangle[0]:= Point(ThumbRect.Left, ThumbRect.Top);
          Triangle[1]:= Point(ThumbRect.Left, ThumbRect.Bottom-1);
          Triangle[2]:= Point(ThumbRect.Right-1, ThumbRect.Top);
          Pen.Color:=ThumbColor;
          Brush.Color:= ThumbColor;
          Polygon(Triangle);
          DrawEdge(Handle, ThumbRect, EDGE_RAISED,//BDR_RAISEDINNER,
            {BF_MIDDLE OR }BF_DIAGONAL_ENDBOTTOMLEFT);
        end
        else begin
          ThumbRect.Left:= ThumbRect.Left + DiagonalHeight - 1;
          ThumbRect.Right:= ThumbRect.Left + ThumbLength - DiagonalHeight;
          Brush.Color:= ThumbColor;

          FillRect(ThumbRect);
          DrawEdge(Handle, ThumbRect, EDGE_RAISED,//BDR_RAISEDINNER,
             BF_TOP or BF_RIGHT);
          DrawEdge(Handle, ThumbRect, EDGE_RAISED,//BDR_RAISEDINNER,
             BF_BOTTOM);

          ThumbRect.Left:= ThumbRect.Left - DiagonalHeight+1;
          ThumbRect.Right:= ThumbRect.Left + DiagonalHeight;
          ThumbRect.Top:= ThumbRect.Top;
          ThumbRect.Bottom:= ThumbRect.Top+ DiagonalHeight;

          Triangle[0]:= Point(ThumbRect.right-1, ThumbRect.Top+1);
          Triangle[1]:= Point(ThumbRect.Right-1, ThumbRect.Bottom);
          Triangle[2]:= Point(ThumbRect.Left+1, ThumbRect.Bottom);
          Pen.Color:=ThumbColor;
          Brush.Color:= ThumbColor;
          Polygon(Triangle);
          DrawEdge(Handle, ThumbRect, EDGE_RAISED,//BDR_RAISEDINNER,
             BF_DIAGONAL_ENDTOPRIGHT);

          ThumbRect.Top:= ATop + DiagonalHeight;
          ThumbRect.Bottom:=ATop + TrackButton.ClientHeight;
          Triangle[0]:= Point(ThumbRect.Right-1, ThumbRect.Top+1);
          Triangle[1]:= Point(ThumbRect.Right-1, ThumbRect.Bottom-1);
          Triangle[2]:= Point(ThumbRect.Left+1, ThumbRect.Top+1);
          Pen.Color:=ThumbColor;
          Brush.Color:= ThumbColor;
          Polygon(Triangle);
          DrawEdge(Handle, ThumbRect, EDGE_RAISED,//BDR_RAISEDINNER,
            {BF_MIDDLE OR }BF_DIAGONAL_ENDBOTTOMRIGHT);//BOTTOMLEFT);
        end;

      end;
   end;
end;

procedure TfcTrackBar.DrawTickText(TickValue: Double; TickText: string; ARect: TRect);
var Flags: integer;
    DoDefault: boolean;
begin
  DoDefault:= True;
  if Assigned(FOnDrawTickText) then
     FOnDrawTickText(self, TickValue, TickText, ARect, DoDefault);
  if DoDefault then
  begin
     SetBkMode(Canvas.Handle, windows.TRANSPARENT);
     Flags:= DT_NOPREFIX;
     ARect.Right:= fcMax(ARect.Right, ARect.Left + Canvas.TextWidth(TickText));
     ARect.Bottom:= fcMax(ARect.Bottom, ARect.Top + Canvas.TextHeight(TickText));
     DrawText(Canvas.Handle, PChar(TickText), length(TickText), ARect, Flags);
  end;
end;

procedure TfcTrackBar.Paint;
var r: TRect;
    valstr: string;
    RulerRect: TRect;
    Current: Double;
    FocusRect: TRect;
    {$ifdef fcUseThemeManager}
    Details: TThemedElementDetails;
    {$endif}
    TickCount: integer;
    DrawFlags: Integer;

   procedure DrawTick(Current: Double; TickCount: integer);
   var x,y: integer;
       DisplayStr: string;
       ARect: TRect;
       DrawTickLabel: boolean;
   begin
      if TextAttributes.TickDisplayFormat = '' then
        DisplayStr:= floattostr(Current)
      else DisplayStr := FormatFloat(TextAttributes.TickDisplayFormat, Current);

      DrawTickLabel:= (TextAttributes.TickLabelFrequency >0) and ((TickCount mod TextAttributes.TickLabelFrequency) = 0);

      with Canvas do begin
           if orientation = trfcHorizontal then
           begin
              if TickMarks in [tmfcBottomRight, tmfcBoth] then
              begin
                 x:= RulerRect.Left + ValToPixel(Current);
                 y:= RulerRect.Bottom + FThumbTrackSeparation + 3;
                 MoveTo(x, y);
                 LineTo(x, y+4);

                 if DrawTickLabel then
                 begin
                     ARect:= Rect(x - TextWidth(DisplayStr) div 2, y+6,
                                  x + TextWidth(DisplayStr) div 2, y + 6 + TextHeight('A'));
                     DrawTickText(Current, DisplayStr, ARect);
                 end
              end;

              if TickMarks in [tmfcTopLeft, tmfcBoth] then
              begin
                x:= RulerRect.Left + ValToPixel(Current);
                y:= RulerRect.Top - 6 - 4;
                MoveTo(x, y+4);
                LineTo(x, y);
                if DrawTickLabel and (TickMarks <> tmfcBoth) then
                begin
                  ARect:= Rect(x-TextWidth(DisplayStr) div 2,
                               y - TextHeight('A')-1,
                               x + TextWidth(DisplayStr) div 2, y-1);
                  DrawTickText(Current, DisplayStr, ARect);
                end
              end;
           end
           else begin
              if TickMarks in [tmfcBottomRight, tmfcBoth] then
              begin
                 x:= RulerRect.Right + FThumbTrackSeparation + 3;
                 y:= RulerRect.Top + ValToPixel(Current);
                 MoveTo(x, y);
                 LineTo(x+4, y);
                 if DrawTickLabel then
                 begin
                   ARect:= Rect(x+6, y - TextHeight('A') div 2,
                                x+6+TextWidth(DisplayStr), y + TextHeight('A') div 2);
                   DrawTickText(Current, DisplayStr, ARect);
                 end
              end;

              if TickMarks in [tmfcTopLeft, tmfcBoth] then
              begin
                x:= RulerRect.Left - 6 - 4;
                y:= RulerRect.Top + ValToPixel(Current);
                MoveTo(x+4, y);
                LineTo(x, y);
                if DrawTickLabel and (TickMarks <> tmfcBoth) then
                begin
                  ARect:= Rect(x-TextWidth(DisplayStr)-1, y - TextHeight('A') div 2,
                               x-1, y + TextHeight('A') div 2);
                  DrawTickText(Current, DisplayStr, ARect);
                end
              end
           end;
      end;

   end;

begin
   inherited Paint;

   RulerRect:= GetTrackBarRect;
   if orientation = trfcHorizontal then
   begin
      RulerRect.Left:= RulerRect.Left - TrackButton.Width div 2 + 1;
      RulerRect.Right:= RulerRect.Right + (TrackButton.Width div 2 - 1);
   end
   else begin
      RulerRect.Top:= RulerRect.Top - TrackButton.Height div 2 + 1;
      RulerRect.Bottom:= RulerRect.Bottom + (TrackButton.Height div 2 - 1);
   end;

   if fcUseThemes(self) then
   begin
      {$ifdef fcUseThemeManager}
      Details := ThemeServices.GetElementDetails(ttbTrack);
      ThemeServices.DrawElement(Canvas.Handle, Details, RulerRect);
      {$endif}
   end
   else begin
      with Canvas do begin
         { Draw the ruler }
         Brush.Color:= TrackColor;
         FillRect(RulerRect);
         Pen.Color:= clBtnShadow;
         MoveTo(RulerRect.Left-1, RulerRect.Bottom);
         LineTo(RulerRect.Left-1, RulerRect.Top);
         LineTo(RulerRect.Right, RulerRect.Top);

         Pen.Color:= clGray;
         MoveTo(RulerRect.Left, RulerRect.Bottom);
         LineTo(RulerRect.Left, RulerRect.Top+1);
         LineTo(RulerRect.Right, RulerRect.Top + 1);

         Pen.Color:= clBtnFace;
         MoveTo(RulerRect.Left-1, RulerRect.Bottom-1);
         LineTo(RulerRect.Right, RulerRect.Bottom-1);
         LineTo(RulerRect.Right, RulerRect.Top);

         Pen.Color:= clBtnHighlight;
         MoveTo(RulerRect.Left-1, RulerRect.Bottom);
         LineTo(RulerRect.Right+1, RulerRect.Bottom);
         LineTo(RulerRect.Right+1, RulerRect.Top);
      end;

   end;

   if FTrackPartialFillColor<>clNone then
   begin
      r:= GetTrackBarRect;
      if orientation = trfcHorizontal then
      begin
         r.Left:= r.Left - TrackButton.Width div 2 + 1;
         r.Right:= r.Right + (TrackButton.Width div 2 - 1);
      end
      else begin
         r.Top:= r.Top - TrackButton.Height div 2 + 1;
         r.Bottom:= r.Bottom + (TrackButton.Height div 2 - 1);
      end;
      InflateRect(r, -1, -1);

      if Orientation = trfcVertical then
      begin
         if Inverted then
         begin
            r.top:= r.Top + ValToPixel(Position);
         end
         else begin
            r.Bottom:= GetTrackBarRect.Top + ValToPixel(Position);
         end;
       end
       else begin
         if Inverted then
         begin
            r.left:= GetTrackBarRect.Left + ValToPixel(Position);
         end
         else begin
            r.Right:= GetTrackBarRect.Left + ValToPixel(Position);
         end
       end;
       Canvas.Brush.Color:= FTrackPartialFillColor;
       Canvas.FillRect(r);
   end;

   if (SelStart<>0) and (SelEnd>SelStart) then
   begin
      if fcUseThemes(self) and false then
      begin
      end
      else begin
         r:= GetTrackBarRect;
         InflateRect(r, -1, -1);
         if Orientation = trfcVertical then
         begin
           if Inverted then
           begin
              r.top:= r.Top + ValToPixel(SelStart);
              r.Bottom:= GetTrackBarRect.Top + ValToPixel(SelEnd);
           end
           else begin
              r.top:= GetTrackBarRect.Top + ValToPixel(SelStart);
              r.Bottom:= GetTrackBarRect.Top + ValToPixel(SelEnd);
           end;
         end
         else begin
           if Inverted then
           begin
             r.left:= GetTrackBarRect.Left + ValToPixel(SelStart);
             r.Right:= GetTrackBarRect.Left + ValToPixel(selEnd);
           end
           else begin
             r.left:= GetTrackBarRect.Left + ValToPixel(SelStart);
             r.Right:= GetTrackBarRect.Left + ValToPixel(selEnd);
           end
         end;
         Canvas.Brush.Color:= clHighlight;
         Canvas.FillRect(r);
      end
   end;
         { Now draw all the tics }
   with Canvas do begin
         Current:=Min;
         TickCount:= 0;
         RulerRect:= GetTrackBarRect;
         if TickStyle<>tsfcNone then
         begin
           While current<=Max do begin
              Pen.color:= clBlack;
              if TickStyle=tsfcManual then
              begin
                 if Current=min then DrawTick(Current, TickCount);
              end
              else begin
                 DrawTick(Current, TickCount);
              end;
              Current:= Current + Frequency;
              TickCount:= TickCount + 1;
           end;
           if TickStyle=tsfcManual then DrawTick(Current - Frequency, TickCount);
         end
   end;

   if Focused and not (csPaintCopy in ControlState) then
   begin
      FocusRect:= ClientRect;
      InflateRect(FocusRect, -2, -2);
      DrawFocusRect(Canvas, FocusRect);
   end;

   if orientation = trfcHorizontal then
      PaintThumb(
       GetTrackBarRect.Left + ValToPixel(Position) - (TrackButton.Width div 2), TrackButton.top)
   else
      PaintThumb(
       TrackButton.Left, GetTrackBarRect.Top + ValToPixel(Position) - (TrackButton.Height div 2));

   if TextAttributes.Showtext then
   begin
     if TextAttributes.DisplayFormat = '' then
        valstr:= floattostr(GetDBValue)
//        Str(Position, valStr)
     else ValStr := FormatFloat(TextAttributes.DisplayFormat, GetDBValue);

//     valstr:= floattostr(position);
     r:= ClientRect;
     Canvas.Font.Assign(Font);

     if TextAttributes.Position = tbtLeft then
     begin
       r.left:= TextAttributes.OffsetX + 3;
       r.top:= RulerRect.Top + ((RulerRect.Bottom - RulerRect.Top) - Canvas.TextHeight(valstr)) div 2;
       r.top:= r.top + TextAttributes.OffsetY;
     end
     else if TextAttributes.Position = tbtRight then
     begin
       r.left:= ClientWidth - Canvas.TextWidth(valstr) - TextAttributes.OffsetX - 3;
       r.top:= RulerRect.Top + ((RulerRect.Bottom - RulerRect.Top) - Canvas.TextHeight(valstr)) div 2;
       r.top:= r.top + TextAttributes.OffsetY;
     end
     else if TextAttributes.Position = tbtTop then
     begin
       r.left := RulerRect.Left + ((RulerRect.Right - RulerRect.Left) - Canvas.TextWidth(valstr)) div 2;
       r.left:= r.left + TextAttributes.OffsetX + 3;
       r.top:= TextAttributes.OffsetY + 1
     end
     else if TextAttributes.Position = tbtBottom then
     begin
       r.left := RulerRect.Left + ((RulerRect.Right - RulerRect.Left) - Canvas.TextWidth(valstr)) div 2;
       r.left:= r.left + TextAttributes.OffsetX + 3;
       r.top:= ClientHeight - Canvas.TextHeight(valstr) - TextAttributes.OffsetY - 3;
     end;

     SetBkMode(Canvas.Handle, windows.TRANSPARENT);
     Drawflags:= DT_NOPREFIX;
     DrawText(Canvas.Handle, pchar(valstr), length(valstr), r, DrawFlags);
   end;
end;

procedure TfcTrackBar.SetThumbColor(val: TColor);
begin
   if val<>FThumbColor then
   begin
      FThumbColor:= val;
      Invalidate;
   end
end;


procedure TfcTrackBar.MouseDown(Button: TMouseButton; Shift: TShiftState;
    X, Y: Integer);
var pt:TPoint;
    tbr: TRect;
begin
   if CanFocus then SetFocus;

   inherited;
   pt := ScreenToClient(Mouse.CursorPos);
   tbr:= GetTrackBarRect;
   InflateRect( tbr, 2, 2);
   if not PtInRect(tbr, pt) then exit;

   if FRepeatTimer = nil then
     FRepeatTimer := TfcTrackRepeatTimer.Create(Self);

   if orientation = trfcHorizontal then
   begin
      if (pt.x<trackbutton.left) then
      begin
         if inverted then
         begin
           Position:= Position + Increment;
           FRepeatTimer.Increment:= Increment;
         end
         else begin
           Position:= Position - Increment;
           FRepeatTimer.Increment:= -Increment;
         end;
      end
      else if (pt.x>trackbutton.left + trackbutton.Width) then
      begin
         if inverted then
         begin
           Position:= Position - Increment;
           FRepeatTimer.Increment:= -Increment;
         end
         else begin
           Position:= Position + Increment;
           FRepeatTimer.Increment:= Increment;
         end
      end
   end
   else begin
      if (pt.y<trackbutton.top) then
      begin
         if Inverted then
         begin
           Position:= Position + Increment;
           FRepeatTimer.Increment:= Increment;
         end
         else begin
           Position:= Position - Increment;
           FRepeatTimer.Increment:= -Increment;
         end;
      end
      else if (pt.y>trackbutton.top + trackbutton.height) then
      begin
         if Inverted then
         begin
           Position:= Position - Increment;
           FRepeatTimer.Increment:= -Increment;
         end
         else begin
           Position:= Position + Increment;
           FRepeatTimer.Increment:= Increment;
         end;
      end
   end;

   FRepeatTimer.OnTimer := TimerExpired;
   FRepeatTimer.Interval := InitRepeatPause;
   FRepeatTimer.Enabled  := True;

end;

procedure TfcTrackBar.MouseUp(Button: TMouseButton; Shift: TShiftState;
                                  X, Y: Integer);
begin
  inherited MouseUp (Button, Shift, X, Y);
  if FRepeatTimer <> nil then
    FRepeatTimer.Enabled  := False;
end;

procedure TfcTrackBar.TimerExpired(Sender: TObject);
var pt:TPoint;
begin
    try
       FRepeatTimer.Interval := RepeatPause;
       pt := ScreenToClient(Mouse.CursorPos);

       if orientation = trfcHorizontal then
       begin
          if (pt.y>ClientHeight) or (pt.y<0) then
             FRepeatTimer.Enabled:= False
          else if Inverted then
          begin
             if (pt.x<trackbutton.left) and (FRepeatTimer.Increment>0) then
                Position:= Position + Increment
             else if (pt.x>trackbutton.left + trackbutton.Width) and (FRepeatTimer.Increment<0) then
                Position:= Position - Increment
             else FRepeatTimer.Enabled:= False
          end
          else if (pt.x<trackbutton.left) and (FRepeatTimer.Increment<0) then
             Position:= Position - Increment
          else if (pt.x>trackbutton.left + trackbutton.Width) and (FRepeatTimer.Increment>0) then
             Position:= Position + Increment
          else
             FRepeatTimer.Enabled:= False
       end
       else begin
          if (pt.x>ClientWidth) or (pt.x<0) then
             FRepeatTimer.Enabled:= False
          else if Inverted then
          begin
             if (pt.y<trackbutton.top) and (FRepeatTimer.Increment>0) then
                Position:= Position + Increment
             else if (pt.y>trackbutton.top + trackbutton.height) and (FRepeatTimer.Increment<0) then
                Position:= Position - Increment
             else
                FRepeatTimer.Enabled:= False
          end
          else if (pt.y<trackbutton.top) and (FRepeatTimer.Increment<0) then
             Position:= Position - Increment
          else if (pt.y>trackbutton.top + trackbutton.height) and (FRepeatTimer.Increment>0) then
             Position:= Position + Increment
          else
             FRepeatTimer.Enabled:= False
       end;
    except
      FRepeatTimer.Enabled := False;
      raise;
    end;
end;

procedure TfcTrackBar.KeyDown(var Key: word; Shift: TShiftState);
begin
   inherited;
   if Key in [vk_right, vk_down] then
   begin
     if Inverted then
       Position:= Position - Increment
     else
       Position:= Position + Increment
   end
   else if key in [vk_left, vk_up] then begin
     if Inverted then
       Position:= Position + Increment
     else
       Position:= Position - Increment;
   end
   else if key = vk_next then
   begin
     if Inverted then
       Position:= Position - PageSize
     else
       Position:= Position + PageSize;
   end
   else if key = vk_prior then
   begin
     if Inverted then
       Position:= Position + PageSize
     else
       Position:= Position - PageSize;
   end;
end;

procedure TfcTrackBar.WMGetDlgCode(var Message: TWMGetDlgCode);
begin
  inherited;
  Message.Result := Message.Result or DLGC_WANTARROWS;
end;

procedure TfcTrackBar.WMSetFocus(var Message: TWMSetFocus);
begin
  inherited;
end;

procedure TfcTrackBar.CMEnter(var Message: TCMEnter);
begin
   inherited;
   invalidate;
end;

procedure TfcTrackBar.CMExit(var Message: TCMExit);
begin
   inherited;
   UpdateRecord;
   invalidate;
end;

procedure TfcTrackBar.UpdateRecord;
//var lastModified: boolean;
begin
//  lastModified:= modified;
  try
    FDataLink.UpdateRecord;
  except
    SetFocus;
//    modified:= lastModified;
    raise;
  end;
end;



Function TfcTrackBar.GetDBValue: Double;
var Value: Double;
begin
   if (FDataLink.Field <> nil) and (Datasource<>nil) and (Datasource.state = dsBrowse) then
   begin
      Value:= FDataLink.Field.AsFloat;
      result:= Value;
   end
   else begin
      result:= GetPosition;
   end;
end;

Function TfcTrackBar.GetPosition: Double;
var Value: Double;
begin
   if (csPaintCopy in  ControlState) and (FDataLink.Field <> nil) then
   begin
      Value:= FDataLink.Field.AsFloat;
      Value:= Round(Value / Increment) * Increment;
      result:= Value;
   end
   else begin
      result:= FPosition;
   end;
end;

procedure TfcTrackBar.PositionChanging;
begin
   if csDesigning in ComponentState then exit;
   if Skipedit then exit;
   if EditCanModify then DataLink.Edit;
end;

function TfcTrackBar.EffectiveReadOnly: Boolean;
begin
  result:= FReadOnly or FDataLink.ReadOnly or
           ((FDataLink.Field<>nil) and (not FDataLink.Field.CanModify));
end;

function TfcTrackBar.EditCanModify: Boolean;
begin
  result:= False;
  if EffectiveReadOnly then exit;

  // Respect autoedit
  if (DataSource<>Nil) and (not DataSource.autoEdit) then
     if (not (DataSource.state in [dsEdit, dsInsert])) then exit;

  if FDatalink.Field <> nil then result := FDataLink.Edit
  else result := True;
end;

procedure TfcTrackBar.UpdateData(Sender: TObject);
begin
    if (FDataLink.Field.asFloat <> Position) then
       FDataLink.Field.asFloat:= Position;
end;

procedure TfcTrackBarText.SetFont(Value: TFont);
begin
  Owner.Font.Assign(Value);
  Owner.Invalidate;
end;

procedure TfcTrackBarText.SetPosition(Value: TfcTrackBarTextPosition);
begin
   FPosition:= Value;
   Owner.Invalidate;
end;

procedure TfcTrackBarText.SetOffsetX(Value: integer);
begin
   FOffsetX:= Value;
   Owner.Invalidate;
end;

procedure TfcTrackBarText.SetOffsetY(Value: integer);
begin
   FOffsetY:= Value;
   Owner.Invalidate;
end;

procedure TfcTrackBarText.SetDisplayFormat(Value: String);
begin
   FDisplayFormat:= Value;
   Owner.Invalidate;
end;

procedure TfcTrackBarText.SetShowText(Value: boolean);
begin
   FShowText:= Value;
   Owner.Invalidate;
end;

procedure TfcTrackBarText.SetTickLabelFrequency(Value: integer);
begin
   FTickLabelFrequency:= Value;
   Owner.Invalidate;
end;

procedure TfcTrackBarText.SetTickDisplayFormat(Value: string);
begin
   FTickDisplayFormat:= Value;
   Owner.Invalidate;
end;

function TfcTrackBarText.GetFont: TFont;
begin
   result:= Owner.Font;
end;

constructor TfcTrackBarText.Create(AOwner: TComponent);
begin
   inherited Create;
   Owner:= AOwner as TfcTrackBar;
   FOffsetX:= 0;
   FOffsetY:= 0;
   FPosition:= tbtLeft;
   FShowText:= False;
   FTickLabelFrequency:= 0;
end;

procedure TfcTrackBar.CMGetDataLink(var Message: TMessage);
begin
  Message.Result := Integer(FDataLink);
end;

procedure TfcTrackBar.SetSpacingLeftTop(Value: integer);
begin
   FSpacingLeftTop:= Value;
   Invalidate;
end;

procedure TfcTrackBar.SetSpacingRightBottom(Value: integer);
begin
   FSpacingRightBottom:= Value;
   Invalidate;
end;

procedure TfcTrackBar.SetSpacingEdgeTrackbar(Value: integer);
begin
   FSpacingEdgeTrackbar:= Value;
   Invalidate;
end;

procedure TfcTrackBar.SetTrackColor(Value: TColor);
begin
   if Value<>FTrackColor then
   begin
      FTrackColor:= Value;
      Invalidate;
   end
end;

procedure TfcTrackBar.SetTrackPartialFillColor(Value: TColor);
begin
   if Value<>FTrackPartialFillColor then
   begin
      FTrackPartialFillColor:= Value;
      Invalidate;
   end
end;


end.
