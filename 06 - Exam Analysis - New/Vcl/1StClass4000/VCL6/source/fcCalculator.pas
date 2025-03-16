unit fcCalculator;
{
//
// Components : TfcCalculator
//
// Copyright (c) 2001 by Woll2Woll Software
//
// Changes:
// 12/12/2001-Fixed bug with button remaining down when shift op happens sometimes.
// 3/1/2002-PYW-Added support for TDBCtrlGrid.
// 3/1/2002-PYW-Added code to handle very large numbers with Exponential notation.
// 3/1/2002-PYW-Use new function to handle num pad keys in windows 98.
}

//Change from TBitBtn to TSpeedButton and remove tabstops from other controls.
//Replace other controls with TLabel and TBevels and TShape.

//Calculator when hitting 3*3**** should not keep multiplying itself.
//Add custom button capability.
//Add OnDrawCalcButton to allow custom button overriding.


interface

uses
  Windows, messages, Sysutils, Forms, Classes, Controls, StdCtrls, extctrls, ComCtrls, Graphics, Buttons, fccombo, fcframe,
  fccommon,dialogs;

type
  TfcCalcButtonType = (btNone,bt0, bt1, bt2, bt3, bt4, bt5, bt6, bt7,
    bt8, bt9, btDecimal, btPlusMinus, btMultiply, btDivide,
    btAdd, btSubtract, btEquals, btSqrt, btPercent, btInverse,
    btBackspace, btClear, btClearAll, btMRecall, btMStore, btMClear,
    btMAdd);

  TfcCalculator=class;

  TfcSetButtonAttributesEvent = procedure (Calc: TfcCalculator;
    var AType:TfcCalcButtonType;
    var ACaption:String;
    var AFontColor:TColor;
    var AButtonColor:TColor;
    var AHint:String) of object;

  TCalcState = (csNone, csAdd, csSubtract, csMultiply, csDivide);
  TfcCalcOption = (cboHotTrackButtons, cboFlatButtons, cboHideBorder, cboHideEditor,
     cboShowStatus, cboHideMemory, cboSelectOnEquals, cboShowDecimal, cboSimpleCalc,
     cboFlatDrawStyle, cboRoundedButtons, cboDigitGrouping, cboCloseOnEquals);
  TfcCalcOptions = set of TfcCalcOption;
  TfcCalcBitmapDrawStyle = (cbdStretch, cbdTile, cbdTopLeft, cbdCenter);

  TfcCalcBevel = class(TBevel)
  public
    FColor:TColor;
  protected
    procedure Paint; override;
  end;

  TfcCalcLabel = class(TLabel)
  private
    FCalc:TfcCalculator;
    procedure WMRButtonDown(var Message: TWMRButtonDown); message WM_RBUTTONDOWN;
    procedure WMRButtonUp(var Message: TWMRButtonUp); message WM_RBUTTONUP;
  public
    constructor Create(AOwner: TComponent); override;
  end;

  TfcCalcStatusLabel = class(TLabel)
    procedure CMTextChanged(var Message: TMessage); message CM_TEXTCHANGED;
  end;

  TfcCalcButton = class(TSpeedButton)
  private
    FDrawKeyDown:Boolean;
    FCalc:TfcCalculator;
    ButtonColor:TColor;
    ButtonFontColor:TColor;
//    FCalcOptions: TfcCalcOptions;
    FTransparent:Boolean;
    FBtnType:TfcCalcButtonType;
    procedure CMEnabledChanged(var Message: TMessage); message CM_ENABLEDCHANGED;
    procedure CMMouseEnter(var Message: TMessage); message CM_MOUSEENTER;
    procedure CMMouseLeave(var Message: TMessage); message CM_MOUSELEAVE;
    procedure WMEraseBkgnd(var Message: TWmEraseBkgnd); message WM_ERASEBkgnd;
    procedure WMRButtonDown(var Message: TWMRButtonDown); message WM_RBUTTONDOWN;
    procedure WMRButtonUp(var Message: TWMRButtonUp); message WM_RBUTTONUP;
    function GetCalcOptions: TfcCalcOptions;
  protected
    procedure Paint; override;
    property DrawKeyDown:boolean read FDrawKeyDown write FDrawKeyDown;
  public
    property CalcOptions: TfcCalcOptions read GetCalcOptions;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

  TButtonRecord = record
    Top: Integer;
    Left: Integer;
    Width: Integer;
    Height: Integer;
    Caption: string;
    Hint:string;
    Color: TColor;
    ButtonColor: TColor;
    BtnType:TfcCalcButtonType;
  end;

  TfcCalculator = class(TCustomPanel)
   private
    FResultEdit: TEdit; // Need to make this right-aligned editing still
    FCalcEdit:TCustomEdit;
    FStatusLabel: TLabel;
    FMemoryValue: Double;

    FLastValue: Double;

    FCurrentValue: Double;
    FResultValue: Double;
    FLastOperand: Double;
    FLastOP:TfcCalcButtonType;
    FNextToLastOp:TfcCalcButtonType;
    FDecimalEntered:Boolean;
    FClearOnNextKey:Boolean;
    FLastOperatorEquals:Boolean;
    FLastStatus:String;
    FClearStatus:Boolean;
    FDecimalPlaces:integer;
    FLastButtonType:TfcCalcButtonType;

    F3D:Boolean;
    FStatusBevel: TfcCalcBevel;
    FMemoryBevel: TfcCalcBevel;
    FMemoryStatus: TfcCalcLabel;
    FPanelColor:TColor;
    FBackSpaceValid: Boolean;
    FOptions: TfcCalcOptions;
    FBackgroundBitmap: TPicture;
    FPaintBitmap: TBitmap;
    FOnSetButtonAttributes: TfcSetButtonAttributesEvent;

    OldBoundsRect: TRect;
    FMargin:integer;
    FBackgroundBitmapDrawStyle: TfcCalcBitmapDrawStyle;
    FCalcPrecision:Integer;
    InitBitmapsFlag: boolean;
    OpPressedWithShiftFlag: boolean;
    procedure SetOptions(Value: TfcCalcOptions);
    procedure SetPanelColor(Value: TColor);
    procedure SetMargin(Value: Integer);
    procedure SetBackgroundBitmapDrawStyle(Value: TfcCalcBitmapDrawStyle);
    procedure SetBackgroundBitmap(Value: TPicture);
    procedure SetBorder3D(const Value:Boolean);
    procedure WMSize(var Message: TWMSize); message WM_SIZE;
    procedure WMEraseBkgnd(var Message: TWmEraseBkgnd); message WM_ERASEBkgnd;
   protected
     Btns: array [TfcCalcButtonType] of TButtonRecord;

     procedure CalcButtons; virtual;
     procedure Compute(Sender: TObject); virtual;
     function GetText : string; virtual;
     procedure SetText(const Value : string); virtual;
     function GetCalcEdit : TCustomEdit; virtual;
     procedure SetCalcEdit(const Value : TCustomEdit); virtual;
     function ButtonRecord(btnType:TfcCalcButtonType;
        aTop, aLeft, aWidth, aHeight: Integer; aCaption: string;
        aFontColor: TColor = clBlack; aHint:string = ''): TButtonRecord; virtual;
     procedure Loaded; override;
     property CalcPrecision:Integer read FCalcPrecision write FCalcPrecision;
   public
     constructor Create(AOwner: TComponent); override;
     destructor Destroy; override;
     procedure FullRepaint; virtual;
     procedure RefreshSummary; virtual;
     procedure Paint; override;
     function IsBinaryOperator(ButtonType:TfcCalcButtonType):boolean; virtual;
     procedure Reset; virtual;
     function OpToChar(aOp:TfcCalcButtonType):Char; virtual;
     function CharToButton(c:Char;Ctrl:Boolean):TfcCalcButton;
     function OpToButton(op:TfcCalcButtonType):TfcCalcButton;
     function CharToOp(c:Char;Ctrl:Boolean):TfcCalcButtonType; virtual;
     procedure ResultKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState); virtual;
     procedure ResultKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState); virtual;
     procedure DoCalc(ButtonType:TfcCalcButtonType); virtual;
     procedure DoCreateButton(Calc: TfcCalculator;var AType:TfcCalcButtonType;var ACaption:String;
       var AFontColor:TColor; var AButtonColor:TColor; var AHint:String); virtual;

     property Value : Double read FCurrentValue write FCurrentValue;
     property PaintBitmap: TBitmap read FPaintBitmap write FPaintBitmap;
     property ResultEdit: TEdit read FResultEdit write FResultEdit;
     property StatusLabel: TLabel read FStatusLabel write FStatusLabel;
     property MemoryStatus:TfcCalcLabel read FMemoryStatus write FMemoryStatus;
     property MemoryValue:Double read FMemoryValue write FMemoryValue;
     property CalcEdit:TCustomEdit read GetCalcEdit write SetCalcEdit;
     property LastOp:TfcCalcButtonType read FLastOp;
     property LastOperatorEquals:Boolean read FLastOperatorEquals;
   published
     property Align;
     property BackgroundBitmap: TPicture read FBackgroundBitmap write SetBackgroundBitmap;
     property BackgroundBitmapDrawStyle: TfcCalcBitmapDrawStyle read FBackgroundBitmapDrawStyle write SetBackgroundBitmapDrawStyle;
     property Border3D: Boolean read F3D write SetBorder3D default False;
     property ButtonMargin: integer read FMargin write SetMargin default 3;
     property FixedDecimalPlaces:integer read FDecimalPlaces write FDecimalPlaces default -1;
     property Font;
     property Options: TfcCalcOptions read FOptions write SetOptions default [];
     property PanelColor: TColor read FPanelColor write SetPanelColor default clBtnFace;
     property Text : string read GetText write SetText;
     property OnSetButtonAttributes: TfcSetButtonAttributesEvent read FOnSetButtonAttributes write FOnSetButtonAttributes;
     property Visible;
   end;
//procedure Register;

implementation

type
  TRightEdit = class (TEdit)
  protected
    procedure CreateParams(var Params: TCreateParams); override;
    procedure MouseUp(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
  end;

procedure TRightEdit.MouseUp(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  Windows.HideCaret(self.handle);
end;

procedure TRightEdit.CreateParams(var Params: TCreateParams);
begin
   inherited CreateParams(Params);
   Params.ExStyle := Params.ExStyle or WS_EX_RIGHT
end;

procedure GetColorByteValues(AColor: TColor; var Reserved, Blue, Green, Red: Byte);
  var WinColor: COLORREF;
begin
  WinColor := ColorToRGB(AColor);
  Reserved := ($FF000000 and WinColor) Shr 24;
  Blue := ($00FF0000 and WinColor) Shr 16;
  Green := ($0000FF00 and WinColor) Shr 8;
  Red := ($000000FF and WinColor);
end;

function changecolor(acolor:TCOlor;brighten:boolean):TColor;
var  red,green,blue,dummy:Byte;
     dr,dg,db:integer;
begin
   GetColorByteValues(acolor,dummy,blue,green,red);
   dr:=red;dg:=green;db:=blue;
   if brighten then begin
      red:=fcMin(255,dr+Trunc((255-dr)*0.50)) ;
      green:=fcMin(255,dg+Trunc((255-dg)*0.50)) ;
      blue:=fcMin(255,db+Trunc((255-db)*0.50)) ;
   end
   else begin
      red:=fcMax(0,Trunc(dr*0.50)) ;
      green:=fcMax(0,Trunc(dg*0.50)) ;
      blue:=fcMax(0,Trunc(db*0.50)) ;
   end;
   result := TColor(RGB(red, Green, Blue))
end;

procedure Frame3D(Canvas: TCanvas; var Rect: TRect; TopColor, BottomColor: TColor;
  Width: Integer);

  procedure DoRect;
  var
    TopRight, BottomLeft: TPoint;
  begin
    with Canvas, Rect do
    begin
      TopRight.X := Right;
      TopRight.Y := Top;
      BottomLeft.X := Left;
      BottomLeft.Y := Bottom;
      Pen.Color := TopColor;
      PolyLine([BottomLeft, TopLeft, TopRight]);
      Pen.Color := BottomColor;
      Dec(BottomLeft.X);
      PolyLine([TopRight, BottomRight, BottomLeft]);
    end;
  end;

begin
  Canvas.Pen.Width := 1;
  Dec(Rect.Bottom); Dec(Rect.Right);
  while Width > 0 do
  begin
    Dec(Width);
    DoRect;
    InflateRect(Rect, -1, -1);
  end;
  Inc(Rect.Bottom); Inc(Rect.Right);
end;

procedure TfcCalcStatusLabel.CMTextChanged(var Message: TMessage);
begin
  Hint := Caption;
  inherited;
end;

function TfcCalculator.ButtonRecord(btnType:TfcCalcButtonType;
  aTop, aLeft, aWidth, aHeight: Integer; aCaption: string;
  aFontColor: TColor = clBlack; aHint:string = ''): TButtonRecord;
var aButtonColor:TColor;
begin
  aButtonColor := PanelColor;
  DoCreateButton(Self, btnType, ACaption, AFontColor, AButtonColor, AHint);
  Result.btnType := btnType;
  Result.Top := aTop;
  Result.Left := aLeft;
  Result.Width := aWidth;
  Result.Height := aHeight;
  Result.Caption := aCaption;
  Result.Color := aFontColor;
  Result.Hint := aHint;
  Result.ButtonColor := aButtonColor;
end;

{procedure TfcCalcButton.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
//  with Params do Style := Style or BS_OWNERDRAW;
end;}

{ TfcCalcBevel }
procedure TfcCalcBevel.Paint;
var R:TRect;
    BtnShadow,BtnLight:TColor;
begin
   R:= Rect(0,0,Width,Height);
   Frame3D(Canvas, R, clBlack, clWhite, 1);

   BtnShadow:= changeColor(FColor,False);
   BtnLight := changeColor(FColor,True);

   R:= Rect(1,1,Width-1,Height-1);
   Frame3D(Canvas, R, BtnShadow, BtnLight, 1);
end;

{ TfcCalcButton }
constructor TfcCalcButton.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FCalc := AOwner as TfcCalculator;
  ControlStyle := ControlStyle + [csCaptureMouse, csDoubleClicks, csReflector];
  //3/1/2002-PYW-Add support for TDBCtrlGrid
  ControlStyle := ControlStyle + [csReplicatable];
  ButtonColor := clBtnFace;
  ButtonFontColor := clWindowText;
end;

destructor TfcCalcButton.Destroy;
begin
  inherited Destroy;
end;

procedure TfcCalcButton.WMRButtonDown(var Message: TWMRButtonDown);
begin
  inherited;
  if FCalc.StatusLabel <> nil then
     FCalc.statuslabel.Caption := Self.Hint;
end;

procedure TfcCalcButton.WMRButtonUp(var Message: TWMRButtonUp);
begin
  inherited;
  FCalc.RefreshSummary;
end;

constructor TfcCalcLabel.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FCalc := AOwner as TfcCalculator;
end;

procedure TfcCalcLabel.WMRButtonDown(var Message: TWMRButtonDown);
begin
  inherited;
  if FCalc.StatusLabel <> nil then
     FCalc.statuslabel.Caption := FloatToStr(FCalc.MemoryValue);
end;

procedure TfcCalcLabel.WMRButtonUp(var Message: TWMRButtonUp);
begin
  inherited;
  FCalc.RefreshSummary;
end;

procedure TfcCalcButton.WMEraseBkgnd(var Message: TWmEraseBkgnd);
begin
  Message.result:= 1;
end;

procedure TfcCalcButton.Paint;
var
  IsDown: Boolean;
  R: TRect;
  P:TPoint;
  MouseinButton:BOolean;
  Btnlight,Btnshadow:TColor;
  SaveFontColor,SaveBrushColor,SavePenColor:TColor;
  StateFlags:integer;
begin
  SaveFontColor:=Canvas.Font.Color;
  SaveBrushColor:=Canvas.Brush.Color;
  SavePenColor:=Canvas.Pen.Color;

  try
     Canvas.Lock;
     if (csDesigning in COmponentState) and
        (csNoDesignVisible in ControlStyle) then exit;
     R := ClientRect;

     GetCursorPos(P);
     P:=(screenToClient(p));

     if PtInRect(r,p) then
        MouseInButton := True
     else MouseInButton := False;

     IsDown := FDrawKeyDown or ((csLButtonDown in ControlState) and MouseInButton);

     Canvas.Font := Self.Font;
     Canvas.Pen.Color := clBlack;
     Canvas.Font.Color := ButtonFontColor;
     Canvas.Brush.Color := ButtonColor;

     if FTransparent then begin
        Canvas.CopyRect(ClientRect,(Parent as TfcCalculator).PaintBitmap.Canvas,
          Rect(Left,Top,Left+WIdth,Top+Height));
     end
     else Canvas.FillRect(r);

     if MouseInButton and (cboHotTrackButtons in CalcOptions) and
        not (cboFlatButtons in CalcOptions) and not (cboFlatDrawStyle in CalcOptions) then
     begin
        Canvas.Pen.Color := clWindowFrame;
        Canvas.Pen.Width := 1;
        Canvas.Brush.Style := bsClear;
        if not (cboRoundedButtons in CalcOptions) then begin
           Canvas.Rectangle(R.Left, R.Top, R.Right, R.Bottom);
  //       else Canvas.RoundRect(R.Left,R.Top,R.Right,R.Bottom,20,20);

      { DrawFrameControl must draw within this border }
       InflateRect(R, -1, -1);
       end;
     end;

     Canvas.Pen.Color := clBtnShadow;
     Canvas.Pen.Width := 1;
     Canvas.Brush.Color := ButtonColor;

     BTnShadow:= changeColor(ButtonColor,False);
     BtnLight := changeColor(ButtonColor,True);
  { DrawFrameControl does not draw a pressed button correctly }
  if IsDown then
  begin
    if (cboFlatDrawStyle in CalcOptions) then begin
      StateFlags:=DFCS_BUTTONPUSH or DFCS_PUSHED or DFCS_CHECKED;
      StateFlags:= StateFlags + DFCS_FLAT;
      DrawFrameControl(Canvas.Handle,R,DFC_BUTTON, StateFlags);
    end
    else begin
      if (cboRoundedButtons in CalcOptions) then begin
         if MouseInButton and (cboHotTrackButtons in CalcOptions) and not (cboFlatButtons in CalcOptions) then begin
            InflateRect(R, -1, -1);
            Canvas.Pen.Width := 2;
         end;
         Canvas.RoundRect(R.Left,R.Top,R.Right,R.Bottom,20,20);
         if MouseInButton and (cboHotTrackButtons in CalcOptions) and not (cboFlatButtons in CalcOptions) then begin
           Canvas.Pen.Color := clWindowFrame;
           Canvas.Pen.Width := 1;
           Canvas.RoundRect(R.Left,R.Top,R.Right,R.Bottom,20,20);
         end;
      end
      else begin
        Canvas.Brush.Style := bsClear;
        Canvas.Rectangle(R.Left, R.Top, R.Right, R.Bottom);
        Canvas.Pen.Color := BtnShadow;
        Canvas.Polyline([Point(r.left,r.bottom),Point(r.left,r.top),Point(r.right,r.top)]);
        Canvas.Pen.Color := clBlack;
        Canvas.Polyline([Point(r.left+1,r.bottom-1),Point(r.left+1,r.top+1),Point(r.right-1,r.top+1)]);
        Canvas.Pen.Color := BtnLight;
        Canvas.Polyline([Point(r.left+2,r.bottom-2),Point(r.right-2,r.bottom-2),Point(r.right-2,r.top+2)]);
        Canvas.Pen.Color := clWhite;
        Canvas.Polyline([Point(r.left+1,r.bottom-1),Point(r.right-1,r.bottom-1),Point(r.right-1,r.top+1)]);
      end;
      InflateRect(R, -1, -1);
    end;
  end
  else
  begin
    if not (cboFlatButtons in CalcOptions) or
       (PtInRect(r,p) and ((cboHotTrackButtons in CalcOptions))) then begin
      if (cboFlatDrawStyle in CalcOptions) then begin
         StateFlags:=DFCS_BUTTONPUSH;
         StateFlags:= StateFlags + DFCS_FLAT;
         DrawFrameControl(Canvas.Handle,R,DFC_BUTTON, StateFlags);
      end
      else begin
         Canvas.Brush.Style := bsClear;
         if (cboRoundedButtons in CalcOptions) then begin
           if MouseInButton and (cboHotTrackButtons in CalcOptions) and not (cboFlatButtons in CalcOptions) then begin
              InflateRect(R, -1, -1);
              Canvas.Pen.Width := 2;
           end;
           Canvas.RoundRect(R.Left,R.Top,R.Right,R.Bottom,20,20);
           if MouseInButton and (cboHotTrackButtons in CalcOptions) and not (cboFlatButtons in CalcOptions) then begin
             Canvas.Pen.Color := clWindowFrame;
             Canvas.Pen.Width := 1;
             Canvas.RoundRect(R.Left,R.Top,R.Right,R.Bottom,20,20);
           end;
         end
         else begin
           Canvas.Rectangle(R.Left, R.Top, R.Right, R.Bottom);
           Canvas.Pen.Color := BtnLight;
           Canvas.Polyline([Point(r.left,r.bottom),Point(r.left,r.top),Point(r.right,r.top)]);
           Canvas.Pen.Color := clWhite;
           Canvas.Polyline([Point(r.left+1,r.bottom-1),Point(r.left+1,r.top+1),Point(r.right-1,r.top+1)]);
           Canvas.Pen.Color := BtnShadow;
           Canvas.Polyline([Point(r.left+2,r.bottom-2),Point(r.right-2,r.bottom-2),Point(r.right-2,r.top+1)]);
           Canvas.Pen.Color := clBlack;
           Canvas.Polyline([Point(r.left+1,r.bottom-1),Point(r.right-1,r.bottom-1),Point(r.right-1,r.top)]);
         end;
       end;
    end;

//    InflateRect(R, -1, -1);
  end;

  if PtInRect(r,p) and False then
  begin
    R := ClientRect;
    InflateRect(R, -1, -1);
  end;

  if IsDown then
    OffsetRect(R, 1, 1);

  Canvas.Brush.Style := bsClear;
  DrawText(Canvas.Handle,PChar(Caption),length(caption),R,DT_CENTER or DT_VCENTER or DT_SINGLELINE);

{ if PtInRect(r,p) or False then
  begin
    R := ClientRect;
    InflateRect(R, -4, -4);
    Canvas.Pen.Color := clWindowFrame;
    Canvas.Brush.Color := clBtnFace;
//    DrawFocusRect(Canvas.Handle, R);
  end;}
  finally
     Canvas.Font.COlor := SaveFontColor;
     Canvas.Brush.Color := SaveBrushColor;
     Canvas.Pen.COlor := SavePenColor;
     Canvas.Unlock;
  end;
end;

procedure TfcCalcButton.CMMouseEnter(var Message: TMessage);
begin
  inherited;
  if (cboHotTrackButtons in CalcOptions) and not (cboFlatDrawStyle in CalcOptions) then
     Invalidate;
end;

procedure TfcCalcButton.CMMouseLeave(var Message: TMessage);
begin
  inherited;
  if (cboHotTrackButtons in CalcOptions) and not (cboFlatDrawStyle in CalcOptions) then
     Invalidate;

end;

procedure TfcCalcButton.CMEnabledChanged(var Message: TMessage);
begin
  inherited;
  Invalidate;
end;

{ TfcCalculator }
constructor TfcCalculator.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  SetBounds(0,0,250,200);
  FCalcPrecision := 15;
  FMemoryValue := 0;
  FCurrentValue := 0;
  FLastValue := 0;
  Caption := '';
  FDecimalPlaces := -1;
  FMargin := 3;
  FOptions := [];
//  BorderStyle := bsRaisedPanel;
  FPanelColor := clBtnFace;
  FPaintBitmap:= TBitmap.create;
  FBackgroundBitmap:= TPicture.create;
  F3D := False;
  FCalcEdit :=nil;
  FLastButtonType := btNone;
end;

destructor TfcCalculator.Destroy;
begin
  inherited Destroy;
  FPaintBitmap.Free;
  FBackGroundBitmap.Free;
end;

procedure TfcCalculator.DoCreateButton(Calc: TfcCalculator;
    var AType:TfcCalcButtonType;
    var ACaption:String;
    var AFontColor:TColor;
    var AButtonColor:TColor;
    var AHint:String);
begin
   inherited;
   if Assigned(FOnSetButtonAttributes) then
      FOnSetButtonAttributes(Self, AType, ACaption, AFontColor, AButtonColor, AHint);
end;

procedure TfcCalculator.Loaded;
var i:integer;
begin
  inherited;
  CalcButtons;
  if BackGroundBitmap.Graphic.empty then begin
     for i:= 0 to ControlCount-1 do begin
       if COntrols[i] is TfcCalcButton then
         TfcCalcButton(controls[i]).FTransparent := False;
     end;
  end
  else begin
    for i:= 0 to ControlCount-1 do begin
       if COntrols[i] is TfcCalcButton then
         TfcCalcButton(controls[i]).FTransparent := True;
    end;
    InitBitmapsFlag := True;
  end;
end;

function TfcCalculator.CharToButton(c:Char;Ctrl:Boolean):TfcCalcButton;
var i:integer;
begin
  result := nil;
  for i:=0 to Controlcount-1 do begin
    if TfcCalcButton(Controls[i]).FBtnType = CharToOp(c,ctrl) then begin
       result := TfcCalcButton(Controls[i]);
       break;
    end;
  end;
end;

function TfcCalculator.OpToButton(op:TfcCalcButtonType):TfcCalcButton;
var i:integer;
begin
  result := nil;
  for i:=0 to Controlcount-1 do begin
    if TfcCalcButton(Controls[i]).FBtnType = op then begin
       result := TfcCalcButton(Controls[i]);
       break;
    end;
  end;
end;

function TfcCalculator.CharToOp(c:Char;Ctrl:Boolean):TfcCalcButtonType;
begin
  Result := btNone;
  case c of
      '0':Result :=bt0;
      '1':Result :=bt1;
      '2':Result :=bt2;
      '3':Result :=bt3;
      '4':Result :=bt4;
      '5':Result :=bt5;
      '6':Result :=bt6;
      '7':Result :=bt7;
      '8':Result :=bt8;
      '9':Result :=bt9;
      ',','.':Result:=btDecimal;
      '_':Result := btPlusMinus;
      '*':Result := btMultiply;
      '/':Result := btDivide;
      '+':Result := btAdd;
      '-':Result := btSubtract;
      '=':Result := btEquals;
      '@':Result := btSqrt;
      '%':Result := btPercent;
      'r','R': if not Ctrl then Result := btInverse
           else Result := btMRecall;
      'c','C': if not Ctrl then Result := btClear
           else Result := btMClear;
      'e','E': Result := btClearAll;
      'm','M': if Ctrl then Result := btMStore;
      'p','P': if Ctrl then Result := btMAdd;
      'b','B': Result := btBackSpace;
    end;
end;

procedure TfcCalculator.ResultKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var c:Char;
    fb:TfcCalcButton;
begin
  if Key=vk_Return then c:='='
  else if Key=vk_Delete then c:='c'
  else if Key=vk_Back then c:='b'
  else if Key=vk_Escape then c:='e'
  else begin
    // Code := MapVirtualKey(Key, 2);
    // c:=char(Code);
    // 3/1/2002-PYW-Use new function to handle num pad keys in windows 98.
    c:=fcMessageCodeToChar(key);
    if (ssShift in Shift) or OpPressedWithShiftFlag then begin
       if c in ['=', '2', '5', '8', '-'] then
          OpPressedWithShiftFlag := False;
       case c of
       '=':c:='+';
       '2':c:='@';
       '5':c:='%';
       '8':c:='*';
       '-':c:='_';
       end;
    end;
  end;

  fb:= CharToButton(c,ssctrl in shift);
  if fb<>nil then begin
    fb.DrawKeyDown := False;
    fb.invalidate;
  end;

  inherited;
end;

procedure TfcCalculator.ResultKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var c:Char;
    fb:TfcCalcButton;
begin
  if {(OpPressedWithShiftFlag) or }(Key=16) then begin
    inherited;
    exit;
  end;

  if Key=vk_Return then c:='='
  else if Key=vk_Delete then c:='c'
  else if Key=vk_Back then c:='b'
  else if Key=vk_Escape then c:='e'
  else begin
  //  Code := MapVirtualKey(Key, 2);
  //  c:=char(Code);
    //3/1/2002-PYW-Use new function to handle num pad keys in windows 98.
    c:=fcMessageCodeToChar(key);
    if (ssShift in Shift) then begin
       OpPressedWithShiftFlag:= true;
       case c of
       '=':c:='+';
       '2':c:='@';
       '5':c:='%';
       '8':c:='*';
       '-':c:='_';
       else
         OpPressedWithShiftFlag := False;
       end;
    end;
  end;

  fb:= CharToButton(c,ssctrl in shift);
  if fb<>nil then begin
    fb.DrawKeyDown := True;
    fb.invalidate;
  end;

  DoCalc(CharToOp(c,(ssCtrl in Shift)));
  inherited;

  CalcEdit.SelStart := Length(CalcEdit.Text);
end;

function TfcCalculator.OpToChar(aOp:TfcCalcButtonType):Char;
begin
  Result := ' ';
    case aOP of
        btNone : Result := ' ';
        bt0 : Result := '0';
        bt1 : Result := '1';
        bt2 : Result := '2';
        bt3 : Result := '3';
        bt4 : Result := '4';
        bt5 : Result := '5';
        bt6 : Result := '6';
        bt7 : Result := '7';
        bt8 : Result := '8';
        bt9 : Result := '9';
        btDecimal : Result := DecimalSeparator;
        btPlusMinus : Result := '_';
        btMultiply: Result := '*';
        btDivide: Result := '/';
        btAdd: Result := '+';
        btSubtract: Result := '-';
        btEquals:Result :='=';
        btSqrt:Result := '@';
        btPercent:Result :='%';
        btInverse:Result := 'i';
        btBackspace:Result := 'b';
        btClear :Result := 'd';
        btClearAll: Result := 'e';
        btMRecall: Result := 'R';
        btMStore: Result := 'm';
        btMClear: Result := 'c';
        btMAdd: Result := 'a';
    end;
end;

procedure TfcCalculator.WMSize(var Message: TWMSize);
var NewBoundsRect: TRect;
  function sameRect(rect1, rect2: TRect): boolean;
  begin
     result:=
      (rect1.left = rect2.left) and
      (rect1.right = rect2.right) and
      (rect1.top = rect2.top) and
      (rect1.bottom = rect2.bottom);
  end;
begin
  inherited;
  NewboundsRect:= Rect(0, 0, BoundsRect.right-BoundsRect.left, BoundsRect.bottom-BoundsRect.top);
  if SameRect(OldBoundsRect, NewBoundsRect) then exit;
  OldboundsRect:= NewBoundsRect;

  InitBitmapsFlag:= True;
  if csLoading in COmponentState then exit;

  CalcButtons;
end;

procedure TfcCalculator.Paint;
const
  Alignments: array[TAlignment] of Longint = (DT_LEFT, DT_RIGHT, DT_CENTER);
var NewboundsRect: TRect;
    ARect: TRect;
    TopColor, BottomColor: TColor;
    i,j:integer;
    BtnShadow,BtnLight:TColor;
    procedure AdjustColors(Bevel: TPanelBevel);
    begin
      TopColor := clBtnHighlight;
      if Bevel = bvLowered then TopColor := clBtnShadow;
      BottomColor := clBtnShadow;
      if Bevel = bvLowered then BottomColor := clBtnHighlight;
    end;
begin
  if InitBitmapsFlag and ((not BackGroundBitmap.Bitmap.Empty) or (not BackGroundBitmap.Graphic.Empty)) then begin
     NewboundsRect:= Rect(0, 0, BoundsRect.right-BoundsRect.left, BoundsRect.bottom-BoundsRect.top);
     PaintBitmap.Width := NewBoundsRect.right;
     PaintBitmap.Height:= NewBoundsRect.Bottom;
     PaintBitmap.TransparentMode := tmFixed;
     PaintBitmap.TransparentColor := clNone;
     case BackgroundBitmapDrawStyle of
        cbdTile:
             begin
                with BackgroundBitmap do begin
                  i := 0;
                  while i < Self.Width do begin
                    j := 0;
                    while j < Self.Height do begin
                       PaintBitmap.Canvas.Draw(i,j,Graphic);
                      // r:=rect(i,j,i+Bitmap.width,j+Bitmap.height);
                      // PaintBitmap.canvas.CopyRect(r,backgroundbitmap.bitmap.canvas,r);
                       inc(j, Bitmap.Height);
                    end;
                    inc(i, Bitmap.Width);
                  end;
                end
             end;
        cbdTopLeft:
             begin
                with BackgroundBitmap do
                   PaintBitmap.Canvas.Draw(0, 0, Graphic);
             end;
        cbdCenter:
             begin
                with BackgroundBitmap do
                   PaintBitmap.Canvas.Draw((self.width-Width)div 2,
                               (self.Height-Height) div 2, Graphic);
             end;
        cbdStretch:
             begin
                with BackgroundBitmap do
                   PaintBitmap.Canvas.StretchDraw(Rect(0, 0, newBoundsRect.right, NewBoundsRect.bottom), Graphic);
             end;
   end;
   InitBitmapsFlag:= False;
  end;
  ARect := GetClientRect;
  if ((not BackGroundBitmap.Bitmap.Empty) or (not BackGroundBitmap.Graphic.Empty)) then
     Canvas.CopyRect(ARect,PaintBitmap.Canvas,Rect(0,0,Width,Height))
  else
  begin
    with Canvas do
    begin
      Brush.Color := PanelColor;
      FillRect(ARect);
    end;
  end;
  if cboHideBorder in Options then exit;
  if Border3D then begin
    BtnShadow:= changeColor(Color,False);
    BtnLight := changeColor(Color,True);
    Frame3D(Canvas, ARect, BtnLight, clBlack, 1);
    Frame3D(Canvas, ARect, clWhite, BtnShadow, 1);
  end
  else begin
    Frame3D(Canvas, ARect, clWhite, clBlack, 1);
  end;
end;

procedure TfcCalculator.CalcButtons;
var
  j: integer;
  i:TfcCalcButtonType;
  BtnWidth,BtnHeight :integer;
  clrbtnw,clrbtnh:integer;
  numbuttonsx,numbuttonsy:integer;
  row:integer;
  x,y:integer;

  aleft,statuspaneloffset,diff:integer;
  pad,simplecalcflag:integer;
  flag:boolean;
begin
  statuspaneloffset :=0;
  numbuttonsx:=6; // Number of Columns
  if cboHideMemory in Options then dec(numbuttonsx);

  //Number of Rows
  numbuttonsy:=5;
  if not (cboHideEditor in Options) then inc(numbuttonsy);

  //Add another row for space for summary status panel.
  if False and (cboShowStatus in Options) then begin
    inc(numbuttonsy);
    statuspaneloffset :=1;
  end;

  if cboSimpleCalc in Options then begin
     numbuttonsx:=4;
  end;

  if (cboSimpleCalc in Options) or (cboHideMemory in Options) then
     x:= Width-ButtonMargin*(numbuttonsx-1)-(5+5)
  else x:= Width-ButtonMargin*(numbuttonsx-1)-(5+5+5);
  y:= Height-ButtonMargin*(numbuttonsy-1)-10;
  btnWidth := x div numbuttonsx;
  btnHeight := y div numbuttonsy;

  if (not (cboHideMemory in Options)) and not (cboSimpleCalc in Options) then begin
    if (cboHideEditor in Options) then row := 1
    else row := 2;

    Btns[btMClear] := ButtonRecord(btMClear,5+row*(btnheight+ButtonMargin), 5, BtnWidth, btnHeight, 'MC',clRed,'Clears any number stored in memory.'+#13#10+#13#10+'Keyboard equivalent = CTRL + L');
    inc(row);
    Btns[btMRecall] := ButtonRecord(btMRecall,5+row*(btnheight+ButtonMargin), 5, btnwidth, btnHeight, 'MR',clRed,'Recalls the number stored in memory.');
    inc(row);
    Btns[btMStore] := ButtonRecord(btMStore,5+row*(btnheight+ButtonMargin), 5, btnwidth, btnHeight, 'MS',clRed,'Stores the displayed number in memory.');
    inc(row);
    Btns[btMAdd] := ButtonRecord(btMAdd,5+row*(btnheight+ButtonMargin), 5, btnwidth, btnHeight, 'M+',clRed,'Adds displayed number to number in memory.');
    clrbtnw := (width - 15 - btnwidth - ButtonMargin*3) div 3;
    pad := ((Width-5-BtnWidth)-4*(BtnWidth+ButtonMargin)) - (Width-5-clrbtnw-2*(clrbtnw+ButtonMargin));
  end
  else begin
    if csDesigning in ComponentState then begin
        if (cboHideEditor in Options) then row := 1
        else row := 2;
        Btns[btMClear] := ButtonRecord(btMClear,5+row*(btnheight+ButtonMargin), 5, BtnWidth, btnHeight, 'MC',clRed,'Clears any number stored in memory.'+#13#10+#13#10+'Keyboard equivalent = CTRL + L');
        inc(row);
        Btns[btMRecall] := ButtonRecord(btMRecall,5+row*(btnheight+ButtonMargin), 5, btnwidth, btnHeight, 'MR',clRed,'Recalls the number stored in memory.');
        inc(row);
        Btns[btMStore] := ButtonRecord(btMStore,5+row*(btnheight+ButtonMargin), 5, btnwidth, btnHeight, 'MS',clRed,'Stores the displayed number in memory.');
        inc(row);
        Btns[btMAdd] := ButtonRecord(btMAdd,5+row*(btnheight+ButtonMargin), 5, btnwidth, btnHeight, 'M+',clRed,'Adds displayed number to number in memory.');
    end;

    clrbtnw := (width - ButtonMargin*3) div 3;
    pad := 5;
  end;

  if cboHideEditor in Options then clrbtnh:=5
  else clrbtnh:=5+btnheight+ButtonMargin;

  if not (cboSimpleCalc in Options) then begin
    diff := abs((Width-5-clrbtnw-2*(clrbtnw+ButtonMargin))-5);
    if (cboHideMemory in Options) then
       Btns[btBackspace] := ButtonRecord(btBackSpace,clrbtnh,5, clrbtnw-diff, btnHeight, 'Back',clRed,'Deletes last digit of displayed number.')
    else Btns[btBackspace] := ButtonRecord(btBackSpace,clrbtnh,Width-5-clrbtnw-2*(clrbtnw+ButtonMargin), clrbtnw, btnHeight, 'Back',clRed,'Deletes last digit of displayed number.');
    Btns[btClear] := ButtonRecord(btClear,clrbtnh, Width-5-(clrbtnw+ButtonMargin)-clrbtnw, clrbtnw, btnHeight, 'CE', clRed,'Clears displayed number.');
    Btns[btClearAll] := ButtonRecord(btClearAll,clrbtnh, Width-5-clrbtnw, clrbtnw, btnHeight, 'C', clRed,'Clears the current calculation.');
  end
  else begin
    Btns[btBackspace] := ButtonRecord(btBackSpace,5+(numbuttonsy-1-statuspaneloffset)*(btnheight+ButtonMargin),Width-5-clrbtnw-(clrbtnw+ButtonMargin), clrbtnw, btnHeight, 'Back',clRed,'Deletes last digit of displayed number.');
//    Btns[btClearAll] := ButtonRecord(btClearAll,5+(numbuttonsy-1-statuspaneloffset)*(btnheight+ButtonMargin), Width-5-clrbtnw-2*(clrbtnw+ButtonMargin), clrbtnw, btnHeight, 'C', clRed,'Clears the current calculation.');
    diff := abs((Width-5-clrbtnw-2*(clrbtnw+ButtonMargin))-5);
    Btns[btClearAll] := ButtonRecord(btClearAll,5+(numbuttonsy-1-statuspaneloffset)*(btnheight+ButtonMargin), 5, clrbtnw-diff, btnHeight, 'C', clRed,'Clears the current calculation.');
    Btns[btEquals] := ButtonRecord(btEquals,5+(numbuttonsy-1-statuspaneloffset)*(btnheight+ButtonMargin), Width-5-clrbtnw, clrbtnw, btnHeight, '=',clRed,'Performs any operation on previous numbers.');
    if csDesigning in ComponentState then
       Btns[btClear] := ButtonRecord(btClear,clrbtnh, Width-5-(clrbtnw+ButtonMargin)-clrbtnw, clrbtnw, btnHeight, 'CE', clRed,'Clears displayed number.');
  end;

//  pad := ((Width-5-BtnWidth)-4*(BtnWidth+ButtonMargin)) - (Width-5-clrbtnw-2*(clrbtnw+ButtonMargin));
  if pad <= 0 then pad := 0;
  if cboHideEditor in Options then row := 1
  else row := 2;
  simplecalcflag := 0;
  if cboSimpleCalc in Options then begin
    simplecalcflag := 1;
    dec(row);
  end;

//  diff := abs((Width-5-clrbtnw-2*(clrbtnw+ButtonMargin))-5);
  if (cboHideMemory in Options) or (cboSimpleCalc in Options) then aLeft := 5
  else aLeft := -pad+ (Width-5-BtnWidth)-(4-simplecalcflag)*(BtnWidth+ButtonMargin);
  Btns[bt7] := ButtonRecord(bt7,5+row*(btnheight+ButtonMargin),aLeft  , BtnWidth, btnHeight, '7',clBlue,'Puts this number in display.');
  inc(row);
  Btns[bt4] := ButtonRecord(bt4,5+row*(btnheight+ButtonMargin),aLeft   , BtnWidth, btnHeight, '4',clBlue,'Puts this number in display.');
  inc(row);
  Btns[bt1] := ButtonRecord(bt1,5+row*(btnheight+ButtonMargin),aLeft   , BtnWidth, btnHeight, '1',clBlue,'Puts this number in display.');
  inc(row);
  Btns[bt0] := ButtonRecord(bt0,5+row*(btnheight+ButtonMargin),aLeft   , BtnWidth, btnHeight, '0',clBlue,'Puts this number in display.');
{
  Btns[bt7] := ButtonRecord(bt7,5+row*(btnheight+ButtonMargin),-pad+ (Width-5-BtnWidth)-(4-simplecalcflag)*(BtnWidth+ButtonMargin), BtnWidth, btnHeight, '7',clBlue,'Puts this number in display.');
  inc(row);
  Btns[bt4] := ButtonRecord(bt4,5+row*(btnheight+ButtonMargin),-pad+ (Width-5-BtnWidth)-(4-simplecalcflag)*(BtnWidth+ButtonMargin), BtnWidth, btnHeight, '4',clBlue,'Puts this number in display.');
  inc(row);
  Btns[bt1] := ButtonRecord(bt1,5+row*(btnheight+ButtonMargin),-pad+ (Width-5-BtnWidth)-(4-simplecalcflag)*(BtnWidth+ButtonMargin), BtnWidth, btnHeight, '1',clBlue,'Puts this number in display.');
  inc(row);
  Btns[bt0] := ButtonRecord(bt0,5+row*(btnheight+ButtonMargin),-pad+ (Width-5-BtnWidth)-(4-simplecalcflag)*(BtnWidth+ButtonMargin), BtnWidth, btnHeight, '0',clBlue,'Puts this number in display.');
}
  if cboHideEditor in Options then row := 1
  else row := 2;
  if cboSimpleCalc in Options then dec(row);
  if (cboHideMemory in Options) or (cboSimpleCalc in Options) then aLeft := 5+BtnWidth+ButtonMargin
  else aLeft := -pad+ (Width-5-BtnWidth)-(3-simplecalcflag)*(BtnWidth+ButtonMargin);
  Btns[bt8] := ButtonRecord(bt8,5+row*(btnheight+ButtonMargin),aLeft, BtnWidth, btnHeight, '8',clBlue,'Puts this number in display.');
  inc(row);
  Btns[bt5] := ButtonRecord(bt5,5+row*(btnheight+ButtonMargin),aLeft, BtnWidth, btnHeight, '5',clBlue,'Puts this number in display.');
  inc(row);
  Btns[bt2] := ButtonRecord(bt2,5+row*(btnheight+ButtonMargin),aLeft, BtnWidth, btnHeight, '2',clBlue,'Puts this number in display.');
  if cboSimpleCalc in Options then begin
    inc(row);
    Btns[btDecimal] := ButtonRecord(btDecimal,5+row*(btnheight+ButtonMargin),aLeft, BtnWidth, btnHeight, DecimalSeparator,clBlue,'Inserts a decimal point.');
  end
  else begin
    inc(row);
    Btns[btPlusMinus] := ButtonRecord(btPlusMinus,5+row*(btnheight+ButtonMargin),aLeft, BtnWidth, btnHeight, '+/-',clBlue,'Changes sign of displayed number.');
  end;

  if cboHideEditor in Options then row := 1
  else row := 2;
  if cboSimpleCalc in Options then dec(row);
  if (cboHideMemory in Options) or (cboSimpleCalc in Options) then aLeft := 5+2*(BtnWidth+ButtonMargin)
  else aLeft := -pad+ (Width-5-BtnWidth)-(2-simplecalcflag)*(BtnWidth+ButtonMargin);
  Btns[bt9] := ButtonRecord(bt9,5+row*(btnheight+ButtonMargin),aLeft, BtnWidth, btnHeight, '9',clBlue,'Puts this number in display.');
  inc(row);
  Btns[bt6] := ButtonRecord(bt6,5+row*(btnheight+ButtonMargin),aLeft, BtnWidth, btnHeight, '6',clBlue,'Puts this number in display.');
  inc(row);
  Btns[bt3] := ButtonRecord(bt3,5+row*(btnheight+ButtonMargin),aLeft, BtnWidth, btnHeight, '3',clBlue,'Puts this number in display.');
  if cboSimpleCalc in Options then begin
    inc(row);
    Btns[btPlusMinus] := ButtonRecord(btPlusMinus,5+row*(btnheight+ButtonMargin),aLeft, BtnWidth, btnHeight, '+/-',clBlue,'Changes sign of displayed number.');
  end
  else begin
    inc(row);
    Btns[btDecimal] := ButtonRecord(btDecimal,5+row*(btnheight+ButtonMargin),aLeft, BtnWidth, btnHeight, DecimalSeparator,clBlue,'Inserts a decimal point.');
  end;
  
  if cboHideEditor in Options then row := 1
  else row := 2;
  if cboSimpleCalc in Options then dec(row);
  Btns[btDivide] := ButtonRecord(btDivide,5+row*(btnheight+ButtonMargin), (Width-5-BtnWidth)-(1-simplecalcflag)*(BtnWidth+ButtonMargin), BtnWidth, btnHeight, '/',clRed,'Divides.');
  inc(row);
  Btns[btMultiply] := ButtonRecord(btMultiply,5+row*(btnheight+ButtonMargin), (Width-5-BtnWidth)-(1-simplecalcflag)*(BtnWidth+ButtonMargin), BtnWidth, btnHeight, '*',clRed,'Multiplies.');
  inc(row);
  Btns[btSubtract] := ButtonRecord(btSubtract,5+row*(btnheight+ButtonMargin), (Width-5-BtnWidth)-(1-simplecalcflag)*(BtnWidth+ButtonMargin), BtnWidth, btnHeight, '-',clRed,'Subtracts.');
  inc(row);
  Btns[btAdd] := ButtonRecord(btAdd,5+row*(btnheight+ButtonMargin), (Width-5-BtnWidth)-(1-simplecalcflag)*(BtnWidth+ButtonMargin), BtnWidth, btnHeight, '+',clRed,'Adds.');

  if (csDesigning in ComponentState) or not (cboSimpleCalc in Options) then begin
      if cboHideEditor in Options then row := 1
      else row := 2;
      Btns[btsqrt] := ButtonRecord(btsqrt,5+row*(btnheight+ButtonMargin), (Width-5-BtnWidth)-0*(BtnWidth+ButtonMargin), BtnWidth, btnHeight, 'sqrt',clBlue,'Calculates squareroot of number.');
      inc(row);
      Btns[btPercent] := ButtonRecord(btPercent,5+row*(btnheight+ButtonMargin), (Width-5-BtnWidth)-0*(BtnWidth+ButtonMargin), BtnWidth, btnHeight, '%',clBlue,'Calculates Percentage');
      inc(row);
      Btns[btInverse] := ButtonRecord(btInverse,5+row*(btnheight+ButtonMargin), (Width-5-BtnWidth)-0*(BtnWidth+ButtonMargin), BtnWidth, btnHeight, '1/x',clBlue,'Calculates the reciprocal.');
      inc(row);
  end;
  if not (cboSimpleCalc in Options) then
     Btns[btEquals] := ButtonRecord(btEquals,5+row*(btnheight+ButtonMargin), (Width-5-BtnWidth)-0*(BtnWidth+ButtonMargin), BtnWidth, btnHeight, '=',clRed,'Performs any operation on previous numbers.');

  flag := False;
  for j:= 0 to ControlCount-1 do
    if COntrols[j] is TfcCalcButton then flag := True;

  if flag then begin
    for j:= 0 to ControlCount-1 do
    if COntrols[j] is TfcCalcButton then
      with  TfcCalcButton(Controls[j]) do begin
         SetBounds(Btns[fbtntype].Left, Btns[fbtntype].Top, Btns[fbtntype].Width,Btns[fbtntype].Height);
         ButtonFontColor := Btns[fbtntype].Color;
         ButtonColor := Btns[fbtntype].ButtonColor;
//         ButtonColor := PanelColor;
         Hint := Btns[fbtnType].Hint;
//         FCalcOptions := Options;
         Font.Height := self.Font.Height;
         Font.Name := self.Font.Name;
         Font.Style := self.Font.Style;
         OnClick := Compute;
         if (FBackGroundBitmap <> nil) and (FBackGroundBitmap.Graphic <> nil) and not FBackgroundbitmap.Graphic.empty then
            FTransparent := True
         else FTransparent := False;
         case TfcCalcButtonType(Tag) of
            btMRecall..btMAdd: begin
               if (cboHideMemory in Options) or (cboSimpleCalc in Options) then
                  ControlStyle := ControlStyle + [csNoDesignVisible]
               else ControlStyle := ControlStyle - [csNoDesignVisible];
            end;
            btSqrt,btPercent,btInverse,btClear:
               begin
                 if cboSimpleCalc in Options then
                    ControlStyle := ControlStyle + [csNoDesignVisible]
                 else ControlStyle := ControlStyle - [csNoDesignVisible];
               end;
         end;
      end;
  end
  else begin
    for i := Low(TfcCalcButtonType) to High(TfcCalcButtonType) do
    begin
      with TfcCalcButton.Create(Self) do begin
        Parent := Self;
        SetBounds(Btns[i].Left, Btns[i].Top, Btns[i].Width,Btns[i].Height);
        fBtnType:=Btns[i].BtnType;
        Hint := Btns[i].Hint;
        Caption := Btns[i].Caption;
        ButtonFontColor := Btns[i].Color;
//        ButtonColor := PanelColor;
        ButtonColor := Btns[i].ButtonColor;
        OnClick := Compute;
//        FCalcOptions := Options;
        Font.Height := self.Font.Height;
        Font.Name := self.Font.Name;
        Font.Style := self.Font.Style;

        if (FBackGroundBitmap <> nil) and (FBackGroundBitmap.Graphic <> nil) and not FBackgroundbitmap.Graphic.empty then
           FTransparent := True
        else FTransparent := False;
        Tag := Ord(i);
        case TfcCalcButtonType(Tag) of
            btMRecall..btMAdd: begin
               if (cboHideMemory in Options) or (cboSimpleCalc in Options) then
                  ControlStyle := ControlStyle + [csNoDesignVisible]
               else ControlStyle := ControlStyle - [csNoDesignVisible];
            end;
            btSqrt,btPercent,btInverse,btClear:
               begin
                 if cboSimpleCalc in Options then
                    ControlStyle := ControlStyle + [csNoDesignVisible]
                 else ControlStyle := ControlStyle - [csNoDesignVisible];
               end;
        end;
      end;
    end;
  end;

  if (not (cboHideMemory in Options)) and not (cboSimpleCalc in Options) then begin
    if FMemoryBevel = nil then begin
      FMemoryBevel := TfcCalcBevel.Create(Self);
      FMemoryBevel.Parent := Self;
    end;

    with FMemoryBevel do begin
      Parent := Self;
      SetBounds(5,clrBtnh+1,BtnWidth,BtnHeight-1);
      FColor := PanelColor;
    end;

    if FMemoryStatus = nil then begin
      FMemoryStatus := TfcCalcLabel.Create(Self);
      with FMemoryStatus do begin
         Parent := Self;
         Autosize := False;
         Transparent := True;
         Alignment := taCenter;
      end;
    end;
    j := clrbtnh;
    with FMemoryStatus do begin
      Font.Height := self.Font.Height;
      Font.Name := self.Font.Name;
      Font.Style := self.Font.Style;
      SetBounds(5,j+((BtnHeight-FMemoryStatus.Canvas.textheight('M'))div 2),BtnWidth,BtnHeight);
    end;
  end
  else begin
    if FMemoryBevel <> nil then begin
       FMemoryBevel.Free;
       FMemoryBevel:=nil;
    end;
  end;

  if FResultEdit = nil then begin
     FResultEdit := TRightEdit.Create(Self);
     with FResultEdit do begin
       //3/1/2002-PYW-Add support for TDBCtrlGrid     
       ControlStyle := ControlStyle + [csReplicatable];
       Parent := Self;
       Visible := not (cboHideEditor in Options);
       AutoSize := False;
//       EditAlignment := eaRightAlignEditing;
       TLabel(FResultEdit).Alignment := taRightJustify;
       Font.Height := -13;
       Font.Name := 'Arial';
       Font.Style := [];
       Text := '0';
       ReadOnly := True;
       OnKeyDown := ResultKeyDown;
       OnKeyUp := ResultKeyUp;
     end;
     if cboShowDecimal in Options then
        Windows.HideCaret(FResultEdit.handle);
  end;

  if (cboHideEditor in Options) then FResultEdit.Visible := False
  else if (csDesigning in ComponentState) then FResultEdit.Visible := True;

  if not FResultEdit.Visible and (csDesigning in ComponentState) then
     FResultEdit.SetBounds(5, 5, 0, 0)
  else FResultEdit.SetBounds(5, 5, Width-10, btnHeight);

  if False and (cboShowStatus in Options) then begin
    if (FStatusBevel = nil) then begin
       FStatusBevel := TfcCalcBevel.Create(Self);
       FStatusBevel.Parent := Self;
    end;
    if (FStatusLabel = nil) then begin
       FStatusLabel := TfcCalcStatusLabel.Create(Self);
       with FStatusLabel do begin
          Parent := Self;
          Autosize := False;
          Transparent := True;
          Alignment := taLeftJustify;
          ShowHint := True;
          Font.Height := self.Font.Height;
          Font.Name := self.Font.Name;
          Font.Style := self.Font.Style;
       end;
    end;
    FStatusBevel.SetBounds(5, Height-5-btnHeight, Width-10,btnHeight);
    FStatusLabel.SetBounds(9, Height-5-btnHeight+((BtnHeight-FStatusLabel.Canvas.textheight('M'))div 2), Width-16,btnHeight-4);
  end
  else begin
    if FStatusBevel <> nil then begin
       FStatusBevel.Visible := False;
       FStatusBevel.SetBounds(5, Height-5-FStatusBevel.height, 0,0);
       FStatusBevel.Free;
       FStatusBevel := nil;
    end;
    if FStatusLabel <> nil then begin
       FStatusLabel.Visible := False;
       FStatusLabel.SetBounds(7, Height-5-btnHeight+2,0,0);
       FStatusLabel.Free;
       FStatusLabel := nil;
    end;
  end;

  FullRepaint;
end;

procedure TfcCalculator.WMEraseBkgnd(var Message: TWmEraseBkgnd);
begin
  Message.result:= 1;
end;

Procedure TfcCalculator.Reset; {Clear everything out}
begin
    FCurrentValue := 0.0;

    CalcEdit.Text := '0';
    FResultValue:=0.0;
    if FStatusLabel <> nil then FStatusLabel.Caption:='';
    FClearOnNextKey:=false;
    FLastOp:=btNone;
    FNextToLastOp:=btNone;
    FLastStatus:='';
    FLastOperatorEquals := false;
    FLastOperand:=0.0;
    FClearStatus:=False;
    FDecimalEntered := False;
    FLastButtonType:=btNone;
end;

procedure TfcCalculator.Compute(Sender: TObject);
begin
  DoCalc(TfcCalcButtonType(TSpeedButton(Sender).Tag));
end;

type EfcCalcException = Class(Exception);

procedure TfcCalculator.DoCalc(ButtonType:TfcCalcButtonType);
const
  MemoryStoreMap: array [Boolean] of string = (' M','');
var
  Temp,teststr: string;
  TempValue: Double;
  index,digits:integer;
  selectallflag:boolean;
  function DecimalInStr(str:string): boolean;
  begin
    result := false;
    if Pos(DecimalSeparator,str)>0 then
       result := true;
  end;

  function GetFormattedtext(val:extended;showdecimal:boolean=False):string;
  var s,fmtstr:string;
      i,places:integer;
  begin
    result :='';
    if cboDigitGrouping in Options then begin
        if showdecimal and (FDecimalPlaces > -1) then begin
          places := FDecimalPlaces;
          fmtstr := '#,##0.';
          for i:=1 to places do
             fmtstr := fmtstr+'0';
          result := FormatFloat(fmtstr,Val);
        end
        // 3/1/2002-PYW-Added code to handle very large numbers with Exponential notation.
        else if (Frac(Val)=0) then begin //(Val - Trunc(Val)) = 0.0 then begin
           if (FDecimalPlaces < 0) or (not showdecimal) then
              result := FormatFloat('#,##0',Val)
           else begin
              places := FDecimalPlaces;
              fmtstr := '#,##0.';
              for i:=1 to places do
                 fmtstr := fmtstr+'0';
              result := FormatFloat(fmtstr,Val);
           end;
        end
        else begin
           // Limit to 15 significant digits
           s:= FloatToStrF(Val, ffFixed, 15, 15);

           // Now val is accurate to 15 digits precision, so now lets get it in our format
           Val:= StrtoFloat(s);
           s:= FormatFloat('#.##############', Val);

           places := length(s)-pos(DecimalSeparator,S);
           fmtstr := '#,##0.';
           for i:=1 to places do
              fmtstr := fmtstr+'0';
           result := FormatFloat(fmtstr,Val);
        end;
    end
    else begin
        if showdecimal and (FDecimalPlaces > -1) then begin
          places := FDecimalPlaces;
          fmtstr := '###0.';
          for i:=1 to places do
             fmtstr := fmtstr+'0';
          result := FormatFloat(fmtstr,Val);
        end
        // 3/1/2002-PYW-Added code to handle very large numbers with Exponential notation.
        else if (Frac(Val)=0) then begin//Val - Trunc(Val)) = 0.0 then begin
           if (FDecimalPlaces < 0) or (not showdecimal) then
              result := FormatFloat('###0',Val)
           else begin
              places := FDecimalPlaces;
              fmtstr := '###0.';
              for i:=1 to places do
                 fmtstr := fmtstr+'0';
              result := FormatFloat(fmtstr,Val);
           end;
        end
        else begin
           // Limit to 15 significant digits
           s:= FloatToStrF(Val, ffFixed, 15, 15);

           // Now val is accurate to 15 digits precision, so now lets get it in our format
           Val:= StrtoFloat(s);
           s:= FormatFloat('#.##############', Val);

           places := length(s)-pos(DecimalSeparator,S);
           fmtstr := '###0.';
           for i:=1 to places do
              fmtstr := fmtstr+'0';
           result := FormatFloat(fmtstr,Val);
        end;
    end;
  end;
begin
//  Options := Options+ [cboDigitGrouping];
  selectallflag := false;
  try
   case ButtonType of
    bt0..bt9:
      begin
        if FClearOnNextKey then begin
           if FLastOperatorEquals or FClearStatus then Reset
           else CalcEdit.Text := '0';
           FDecimalEntered := False;
        end;
        FClearOnNextKey := false;

        teststr := CalcEdit.Text;
        digits := 0;
        for index := 1 to length(teststr) do
        begin
           case teststr[index] of
           '0'..'9':inc(digits);
           end;
        end;
        if digits >= CalcPrecision then begin
          beep;
          exit;
        end;


        if (not FDecimalEntered) and //(not DecimalInStr(CalcEdit.Text)) and
          ((CalcEdit.Text = '0'+decimalseparator) or (CalcEdit.Text = '0') or (FCurrentValue = 0)) then
           CalcEdit.Text := '';

        teststr := DecimalSeparator;
        if Copy(CalcEdit.Text,Length(CalcEdit.Text),1)=teststr then
        if not FDecimalEntered then //DecimalInStr(CalcEdit.Text) then
           CalcEdit.Text := Copy(CalcEdit.Text,1,Length(CalcEdit.Text)-1);

        FBackSpaceValid := True;

        CalcEdit.Text := CalcEdit.Text + Btns[ButtonType].Caption;
        FCurrentValue := fcStrToFloat(CalcEdit.Text);

        if not (DecimalInStr(CalcEdit.Text) and (Btns[ButtonType].Caption = '0')) then
           CalcEdit.Text := GetformattedText(FCurrentValue);

        CalcEdit.SelStart := Length(CalcEdit.Text);
        if (FStatusLabel <> nil) then
           FStatusLabel.Caption:=FStatusLabel.Caption+OpToChar(ButtonType);
        FLastButtonType := ButtonType;
     end;

    btDecimal:
     begin
        if FClearOnNextKey then begin
           if FLastOperatorEquals then Reset
           else CalcEdit.Text := '0';
        end;

        FClearOnNextKey := false;
        if (CalcEdit.Text = '0'+decimalseparator) or (CalcEdit.Text = '0') or (FCurrentValue = 0) then
           CalcEdit.Text := '0';

        If not FDecimalEntered then begin//DecimalinStr(CalcEdit.Text) then begin
           FCurrentValue := fcStrToFloat(CalcEdit.Text);
           teststr := DecimalSeparator;
           if Copy(CalcEdit.Text,Length(CalcEdit.Text),1)<>teststr then
              CalcEdit.Text := CalcEdit.Text + Btns[ButtonType].Caption;
           if (FStatusLabel <> nil) then
              FStatusLabel.Caption:=FStatusLabel.Caption+OpToChar(ButtonType);
        end
        else if FLastButtonType=btDecimal then Beep;
        FDecimalEntered := True;
        FLastButtonType := ButtonType;
     end;

    btPlusMinus:
     begin
      FLastButtonType := ButtonType;

      FCurrentValue := fcStrToFloat(CalcEdit.Text) * -1;

      CalcEdit.Text := FloatToStr(FCurrentValue);
      CalcEdit.SelStart := Length(CalcEdit.Text);

      if FStatusLabel <> nil then begin
         if FClearOnNextKey then
           FStatusLabel.Caption := '0'
         else
           FStatusLabel.Caption := FLastStatus+CalcEdit.Text;
      end;
     end;

    btClearAll:
     begin
      Reset;
     end;

    btClear:
     begin
      FCurrentValue := 0;
      CalcEdit.Text := '0';
      if FStatusLabel <> nil then begin
         if FClearOnNextKey then
           FStatusLabel.Caption := '0'
         else
           FStatusLabel.Caption := FLastStatus;
      end;
      FDecimalEntered := False;
     end;

    btPercent,btAdd,btSubtract,btDivide,btMultiply,btEquals:
     begin
       TempValue := fcStrToFloat(CalcEdit.Text);

       if (Length(CalcEdit.Text) > 0) and (ButtonType <> btEquals) then begin
          if (FLastOperatorEquals) then begin
              FLastOperand := TempValue;
              FLastOp := ButtonType;
              FLastOperatorEquals := False;
              if FStatusLabel <> nil then
                 FStatusLabel.Caption:=FLastStatus+OpToChar(ButtonType);
              FLastStatus := FStatusLabel.Caption;
              FCurrentValue := 0;
              FClearOnNextKey := True;
          end
          else if not(FLastOp in [btMultiply,btDivide,btAdd,btSubtract,btPercent]) then
          begin
             FLastOperand := TempValue;
             FNextToLastOp := FLastOp;
             FLastOp := ButtonType;
             FResultValue:=tempvalue;
             FClearOnNextKey := True;
             if FStatusLabel <> nil then begin
                if FStatusLabel.Caption = '' then FStatusLabel.Caption := '0';
                FLastStatus := FStatusLabel.Caption;
                FStatusLabel.Caption:=FStatusLabel.Caption+OpToChar(ButtonType);
             end;
             FCurrentValue := 0;
          end
          else if (FLastOp in [btMultiply,btDivide,btAdd,btSubtract]) then begin
             if ButtonType = btPercent then begin
                fLastOperand := fResultValue * (TempValue/100.0);
             end
             else begin
               if FLastButtonType in [btMultiply,btDivide,btAdd,btSubtract] then exit; //10/05/2001-Shouldn't do anything if hit key more than once.
               FClearOnNextKey := True;
               case FLastOp of
                 btMultiply: fResultValue := fResultValue * TempValue;
                 btDivide: begin
                  try
                    fResultValue := fResultValue / TempValue;
                  except
                    on E: Exception do begin   //**** Need Translation for Strings like below
                       if TempValue = 0.0 then
                          raise EfcCalcException.Create('Cannot divide by zero')
                       else raise;
                    end;
                  end;
                 end;
                 btAdd: fResultValue := fResultValue + TempValue;
                 btSubtract: fResultValue := fResultValue - TempValue;
               end;
               FLastOperand := TempValue;
             end;

             if (FStatusLabel <> nil) then begin
                If (ButtonType=btPercent) then
                   FStatusLabel.Caption:='('+FStatusLabel.Caption+OpToChar(ButtonType)+')'
                else if (((ButtonType = btMultiply) or (ButtonType=btDivide))
                  and ((FLastOp = btAdd) or (FLastOp=btSubtract))) then
                      FStatusLabel.Caption:='('+FStatusLabel.Caption+')'
                else begin
                   FStatusLabel.Caption := FLastStatus+OpToChar(ButtonType)+FloatToStr(TempValue);
                end;

//!!!!! Try 3** to see problem.  Also test 3*5%% and 3*5%* to test functionality with percent.
                FLastStatus := FStatusLabel.Caption;

                if ButtonType <> btPercent then
                   FStatusLabel.Caption := FStatusLabel.Caption+OpToChar(ButtonType);

            {    if ButtonType = btPercent then begin  //!!!! Status not right
                   FLastStatus := FStatusLabel.Caption;
                   FStatusLabel.Caption := FlastStatus+OpToChar(btEquals) + FloatToStr(FResultValue);
                end;     }
             end;
             FCurrentValue := 0;
          end;

          FNextToLastOp := FLastOp;
          FLastOp:=ButtonType;
          if buttontype=btPercent then
             CalcEdit.Text := Getformattedtext(FLastOperand)
          else begin
             CalcEdit.Text := Getformattedtext(FResultValue);
          end;
          FCurrentValue := 0;
       end
       else if (Length(CalcEdit.Text) > 0)then begin
          if FLastOperatorEquals or (FLastOp = btPercent) then TempValue := FLastOperand
          else FLastOperand := TempValue;

          case FLastOp of
            btPercent:
                begin
                    case FNextToLastOp of
                       btMultiply: fResultValue := fResultValue * TempValue;
                       btDivide: fResultValue := fResultValue / TempValue;
                       btAdd: fResultValue := fResultValue + TempValue;
                       btSubtract: fResultValue := fResultValue - TempValue;
                    end;
                end;
            btMultiply: fResultValue := fResultValue * TempValue;
            btDivide: begin
                  try
//                     if TempValue <> 0.0 then
                    fResultValue := fResultValue / TempValue;
                  except
                    on E: Exception do begin   //**** Need Translation for Strings like below
                       if TempValue = 0.0 then
                          raise EfcCalcException.Create('Cannot divide by zero')
                       else raise;
                    end;
                  end;
               end;
            btAdd: fResultValue := fResultValue + TempValue;
            btSubtract: fResultValue := fResultValue - TempValue;
            btNone:fResultValue := TempValue;
          end;

//!!!!
          if (StatusLabel <> nil) then
             if (FLastOp<>btNone) then begin
                 if FLastOperatorEquals then begin
                    FStatusLabel.Caption := FLastStatus;
                    FStatusLabel.Caption := FStatusLabel.Caption + OpToChar(FLastOp) + FloatToStr(FLastOperand);
                    FStatusLabel.Caption:='('+FStatusLabel.Caption+')';
                 end
                 else if FLastOp = btPercent then begin
                    FStatusLabel.Caption := FLastStatus;
                 end
                 else begin
                    FStatusLabel.Caption := FLastStatus;
                    FStatusLabel.Caption:=FStatusLabel.Caption+OpToChar(FLastOp)+FloatToStr(TempValue);
                    FStatusLabel.Caption:='('+FStatusLabel.Caption+')';
                 end;
                 FLastStatus := FStatusLabel.Caption;
                 FStatusLabel.Caption := FStatusLabel.Caption+OpToChar(ButtonType);
                 FStatusLabel.Caption := FStatusLabel.Caption + FloatToStr(FResultValue);
             end
             else FLastStatus:=FStatusLabel.Caption;

          FLastOperatorEquals := True;

          CalcEdit.Text := Getformattedtext(FResultValue,True);
          if cboSelectOnEquals in Options then begin
             CalcEdit.SelectAll;
             selectallflag := True;
          end
          else CalcEdit.SelStart := Length(CalcEdit.Text);
          FClearOnNextKey := True;
          FBackSpaceValid := False;
          FCurrentValue := 0;
       end
       else Beep;
       FLastButtonType := ButtonType;
    end;

    btBackSpace:
     if FBackSpaceValid then begin
      Temp := CalcEdit.Text;
      if True or ((not (cboShowDecimal in Options)) and (Temp[Length(Temp)] in ['0'..'9'])) or
         ((cboShowDecimal in Options) and ((Length(Temp)-1) >= 0) and (Temp[Length(Temp)-1] in ['0'..'9'])) then
      begin
        if (Length(Temp)-1>=0) and (Temp[Length(Temp)]=DecimalSeparator) then
        begin
           Delete(Temp, Length(Temp)-1,2);
           if FStatusLabel <> nil then begin
              Temp := FStatusLabel.Caption;
              Delete(Temp, Length(Temp),1);
              FStatusLabel.Caption := Temp;
           end;
           FDecimalEntered := False;
        end
        else Delete(Temp, Length(Temp),1);
        {        if cboShowDecimal in Options then
          Delete(Temp, Length(Temp)-1,1)
        else
        Delete(Temp, Length(Temp),1);}

        if not DecimalInStr(Temp) then FDecimalEntered := False;

        if Temp = '' then begin
          FBackSpaceValid := False;
          Temp := '0';
        end;

        if (AnsiPos(DecimalSeparator,Temp)> 0) and
           (AnsiPos(DecimalSeparator,Temp)< CalcEdit.selstart) then CalcEdit.Text := Temp
        else begin
          FCurrentValue := fcStrToFloat(Temp);
          CalcEdit.Text := getFormattedText(FCurrentValue);//FloatToStr(FCurrentValue);
        end;

        if FStatusLabel <> nil then begin
           Temp := FStatusLabel.Caption;
           Delete(Temp, Length(Temp),1);
           FStatusLabel.Caption := Temp;
        end;
      end
      else begin
        if FStatusLabel <> nil then begin
           Temp := FStatusLabel.Caption;
           if Temp[Length(Temp)] = DecimalSeparator then begin
              FDecimalEntered := False;
              Delete(Temp, Length(Temp),1);
              FStatusLabel.Caption := Temp;
           end
           else FBackSpaceValid := False;
        end;
      end;
     end
     else Beep;

    btInverse:
     begin
      try
         if cboDigitGrouping in Options then FCurrentValue := 1 / fcStrToFloat(CalcEdit.Text)
         else FCurrentValue := 1 / fcStrToFloat(CalcEdit.Text);
      except
         on E: Exception do begin   //**** Need Translation for Strings like below
            if fcStrToFloat(CalcEdit.Text) = 0.0 then
               raise EfcCalcException.Create('Cannot divide by zero')
            else raise;
         end;
      end;

      CalcEdit.Text := getformattedText(FCurrentValue);//FloatToStr(FCurrentValue);
      CalcEdit.SelStart := Length(CalcEdit.Text);

      if FStatusLabel <> nil then begin
         if FClearOnNextKey then
           FStatusLabel.Caption := '0'
         else
           FStatusLabel.Caption := FLastStatus+CalcEdit.Text;
      end;
      FCurrentValue := 0;
      FClearOnNextKey := True;
      FBackSpaceValid := False;
      FClearStatus := True;
      FLastButtonType := ButtonType;
    end;

    btSqrt:
     begin
      FCurrentValue := Sqrt(fcStrToFloat(CalcEdit.Text));
      CalcEdit.Text := getformattedText(FCurrentValue);//FloatToStr(FCurrentValue);
      CalcEdit.SelStart := Length(CalcEdit.Text);

      if FStatusLabel <> nil then begin
         if FClearOnNextKey then
           FStatusLabel.Caption := '0'
         else
           FStatusLabel.Caption := FLastStatus+CalcEdit.Text;
      end;
      FCurrentValue := 0;
      FClearOnNextKey := True;
      FBackSpaceValid := False;
      FClearStatus := True;
      FLastButtonType := ButtonType;
     end;

    btMStore:
     begin
      FMemoryValue := fcStrToFloat(CalcEdit.Text);
      FMemoryValue := FMemoryValue * 1;
      FCurrentValue := 0;
      FClearOnNextKey := True;
      FClearStatus := True;
      FBackSpaceValid := False;
     end;

    btMAdd:
     begin
      TempValue := FMemoryValue;
      FMemoryValue := fcStrToFloat(CalcEdit.Text);
      FMemoryValue := (FMemoryValue * 1) + TempValue;
     end;

    btMRecall:
     begin
      CalcEdit.Text := getformattedtext(FMemoryValue);//FloatToStr(FMemoryValue);
      CalcEdit.SelStart := Length(CalcEdit.Text);

      FCurrentValue := 0;
     end;

    btMClear:
     begin
      FMemoryValue := 0;
     end;

   end;   // case  ButtonType of...

   except
     on E: Exception do begin
      OpToButton(ButtonType).DrawKeyDown := False;
      OpToButton(ButtonType).Invalidate;
      Reset;
      CalcEdit.Text := E.Message;
     end;
   end;

  if cboShowDecimal in Options then begin
     if not DecimalinStr(CalcEdit.Text) then
       CalcEdit.Text := CalcEdit.Text+DecimalSeparator;
     if selectallflag then calcedit.selectall;
  end;

  if FMemoryStatus <> nil then
     FMemoryStatus.Caption := MemoryStoreMap[FMemoryValue = 0];
end;

function TfcCalculator.IsBinaryOperator(ButtonType: TfcCalcButtonType):boolean;
begin
 result := False;
 case ButtonType of
 btMultiply,btDivide,btAdd,btSubtract,btEquals: result := True;
 end;
end;

procedure TfcCalculator.SetBackgroundBitmapDrawStyle(Value: TfcCalcBitmapDrawStyle);
begin
   if Value<>FBackgroundBitmapDrawStyle then
   begin
      FBackgroundBitmapDrawStyle:= Value;
      FullRepaint;
   end
end;

procedure TfcCalculator.SetBackgroundBitmap(Value: TPicture);
var i:integer;
begin
   if (Value = nil) or (Value.Graphic=nil) or Value.Graphic.Empty then begin
     for i:= 0 to ControlCount-1 do begin
       if COntrols[i] is TfcCalcButton then
         TfcCalcButton(controls[i]).FTransparent := False;
     end;
   end
   else begin
    for i:= 0 to ControlCount-1 do begin
       if COntrols[i] is TfcCalcButton then
         TfcCalcButton(controls[i]).FTransparent := True;
    end;
   end;
   FBackGroundBitmap.Assign(Value);
   FPaintBitmap.FreeImage;
   InitBitmapsFlag := True;
   FullRepaint;
end;


function TfcCalculator.GetText: string;
begin
  Result := CalcEdit.Text;
end;

function TfcCalculator.GetCalcEdit: TCustomEdit;
begin
  if FCalcEdit <> nil then
    Result := FCalcEdit
  else Result := FResultEdit;
end;

procedure TfcCalculator.SetBorder3D(const Value: Boolean);
begin
  if F3D <> Value then begin
    F3D := Value;
    invalidate;
  end;
end;

procedure TfcCalculator.SetText(const Value: string);
begin
  if CalcEdit <> nil then
     CalcEdit.Text := Value;
end;

procedure TfcCalculator.SetCalcEdit(const Value: TCustomEdit);
begin
//  if FCalcEdit <> nil then
     FCalcEdit := Value;
end;

procedure TfcCalculator.SetOptions(Value: TfcCalcOptions);
var ChangedOptions: TfcCalcOptions;
begin
  if FOptions <> Value then
  begin
    ChangedOptions := (FOptions - Value) + (Value - FOptions);
    FOptions := Value;
    if ChangedOptions <> [] then begin
{       for i:= 0 to ControlCount-1 do begin
         if COntrols[i] is TfcCalcButton then begin
           TfcCalcButton(controls[i]).FOptions := Value;
           if (FBackGroundBitmap <> nil) and (FBackGroundBitmap.Graphic <> nil) and not FBackgroundbitmap.Graphic.empty then
              TfcCalcButton(controls[i]).FTransparent := True
           else TfcCalcButton(controls[i]).FTransparent := False;
         end;
       end;}
       CalcButtons;
       FullRepaint;
    end;
  end;
end;

procedure TfcCalculator.RefreshSummary;
begin
  if StatusLabel <> nil then begin
     FStatusLabel.Caption := 'Calculator';
  end;
end;

procedure TfcCalculator.FullRepaint;
var i:integer;
begin
  InitBitmapsFlag:= True;
  invalidate;
  for i:= 0 to ControlCount-1 do begin
     controls[i].invalidate;
  end;
end;

procedure TfcCalculator.SetMargin(Value: Integer);
begin
  if FMargin <> Value then
  begin
     FMargin := Value;
     CalcButtons;
  end;
end;

procedure TfcCalculator.SetPanelColor(Value: TColor);
var i:integer;
begin
  if FPanelColor <> Value then
  begin
    FPanelColor := Value;
    Color := Value;
    if FMemoryStatus<>nil then
       FMemoryStatus.Color := Value;

    if FMemoryBevel <> nil then
       FMemoryBevel.FColor := Value;

    for i:= 0 to ControlCount-1 do begin
       if COntrols[i] is TfcCalcButton then
         TfcCalcButton(controls[i]).ButtonColor := Value;
    end;

    FullRepaint;
  end;
end;

function TfcCalcButton.GetCalcOptions: TfcCalcOptions;
begin
  result:= FCalc.Options;
end;

{
procedure Register;
begin
  RegisterComponents('Samples', [TfcCalculator]);
end;
}
end.