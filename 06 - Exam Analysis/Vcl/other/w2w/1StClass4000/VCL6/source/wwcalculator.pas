unit wwcalculator;

//Change from TBitBtn to TSpeedButton and remove tabstops from other controls.
//Replace other controls with TLabel and TBevels and TShape.

interface

uses
  Windows, messages, Sysutils, Forms, Classes, Controls, StdCtrls, extctrls, ComCtrls, Graphics, Buttons,wwcommon,wwdbedit, wwtypes, wwframe;

type
  TwwCalcButtonType = (btNone,bt0, bt1, bt2, bt3, bt4, bt5, bt6, bt7,
    bt8, bt9, btDecimal, btPlusMinus, btMultiply, btDivide,
    btAdd, btSubtract, btEquals, btSqrt, btPercent, btInverse,
    btBackspace, btClear, btClearAll, btMRecall, btMStore, btMClear,
    btMAdd);

  TCalcState = (csNone, csAdd, csSubtract, csMultiply, csDivide);

  TwwCalcOption = (cboHotTrackButtons, cboFlatButtons, cboHideBorder, cboHideEditor, cboShowStatus);
  TwwCalcOptions = set of TwwCalcOption;
  TwwCalcBitmapDrawStyle = (cbdStretch, cbdTile, cbdTopLeft, cbdCenter);

  TwwCalcBevel = class(TBevel)
  public
    FColor:TColor;
  protected
    procedure Paint; override;
  end;
  TwwCalculator = class;

  TwwCalcLabel = class(TLabel)
  private
    FCalc:TwwCalculator;
    procedure WMRButtonDown(var Message: TWMRButtonDown); message WM_RBUTTONDOWN;
    procedure WMRButtonUp(var Message: TWMRButtonUp); message WM_RBUTTONUP;
  public
    constructor Create(AOwner: TComponent); override;
  end;

  TwwCalcButton = class(TSpeedButton)
  private
    FCalc:TwwCalculator;
    ButtonColor:TColor;
    ButtonFontColor:TColor;
    FOptions: TwwCalcOptions;
    FTransparent:Boolean;
    FBtnType:TwwCalcButtonType;
    procedure CMEnabledChanged(var Message: TMessage); message CM_ENABLEDCHANGED;
    procedure CMMouseEnter(var Message: TMessage); message CM_MOUSEENTER;
    procedure CMMouseLeave(var Message: TMessage); message CM_MOUSELEAVE;
    procedure WMEraseBkgnd(var Message: TWmEraseBkgnd); message WM_ERASEBkgnd;
    procedure WMRButtonDown(var Message: TWMRButtonDown); message WM_RBUTTONDOWN;
    procedure WMRButtonUp(var Message: TWMRButtonUp); message WM_RBUTTONUP;
  protected
    procedure Paint; override;
  public
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
    BtnType:TwwCalcButtonType;
  end;

  TwwCalculator = class(TCustomPanel)
   private
    FResultEdit: TwwdbEdit;
    FStatusLabel: TLabel;
    FMemoryValue: Double;

    FLastValue: Double;

    FCurrentValue: Double;
    FResultValue: Double;
    FLastOperand: Double;
    FLastOP:TwwCalcButtonType;
    FNextToLastOp:TwwCalcButtonType;
    FDecimalEntered:Boolean;
    FClearOnNextKey:Boolean;
    FLastOperatorEquals:Boolean;
    FLastStatus:String;

    F3D:Boolean;
    FStatusBevel: TwwCalcBevel;
    FMemoryBevel: TwwCalcBevel;
    FMemoryStatus: TwwCalcLabel;
    FPanelColor:TColor;
    FBackSpaceValid: Boolean;
    FOptions: TwwCalcOptions;
    FBackgroundBitmap: TPicture;
    FPaintBitmap: TBitmap;
    OldBoundsRect: TRect;
    FMargin:integer;
    FBackgroundBitmapDrawStyle: TwwCalcBitmapDrawStyle;
    InitBitmapsFlag: boolean;
    procedure SetOptions(Value: TwwCalcOptions);
    procedure SetPanelColor(Value: TColor);
    procedure SetMargin(Value: Integer);
    procedure SetBackgroundBitmapDrawStyle(Value: TwwCalcBitmapDrawStyle);
    procedure SetBackgroundBitmap(Value: TPicture);
    procedure SetBorder3D(const Value:Boolean);
    procedure WMSize(var Message: TWMSize); message WM_SIZE;
    procedure WMEraseBkgnd(var Message: TWmEraseBkgnd); message WM_ERASEBkgnd;
   protected
     Btns: array [TwwCalcButtonType] of TButtonRecord;

     procedure CalcButtons; virtual;
     procedure Compute(Sender: TObject); virtual;
     function GetText : string; virtual;
     procedure SetText(const Value : string); virtual;
     procedure Loaded; override;
   public
     constructor Create(AOwner: TComponent); override;
     destructor Destroy; override;
     procedure FullRepaint; virtual;
     procedure RefreshSummary; virtual;
     procedure Paint; override;
     function IsBinaryOperator(ButtonType:TwwCalcButtonType):boolean; virtual;
     procedure Reset; virtual;
     function OpToChar(aOp:TwwCalcButtonType):Char; virtual;
     function CharToOp(c:Char;Ctrl:Boolean):TwwCalcButtonType; virtual;
     procedure ResultKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState); virtual;
     procedure DoCalc(ButtonType:TwwCalcButtonType); virtual;

     property Value : Double read FCurrentValue write FCurrentValue;
     property PaintBitmap: TBitmap read FPaintBitmap write FPaintBitmap;
     property ResultEdit: TwwDBEdit read FResultEdit write FResultEdit;
     property StatusLabel: TLabel read FStatusLabel write FStatusLabel;
     property MemoryStatus:TwwCalcLabel read FMemoryStatus write FMemoryStatus;
     property MemoryValue:Double read FMemoryValue write FMemoryValue;
   published
     property Align;
     property BackgroundBitmap: TPicture read FBackgroundBitmap write SetBackgroundBitmap;
     property BackgroundBitmapDrawStyle: TwwCalcBitmapDrawStyle read FBackgroundBitmapDrawStyle write SetBackgroundBitmapDrawStyle;
     property Border3D: Boolean read F3D write SetBorder3D default False;
     property ButtonMargin: integer read FMargin write SetMargin default 3;
     property Font;
     property Options: TwwCalcOptions read FOptions write SetOptions default [];
     property PanelColor: TColor read FPanelColor write SetPanelColor default clBtnFace;
     property Text : string read GetText write SetText;
   end;
procedure Register;

implementation

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
      red:=wwMin(255,dr+Trunc((255-dr)*0.50)) ;
      green:=wwMin(255,dg+Trunc((255-dg)*0.50)) ;
      blue:=wwMin(255,db+Trunc((255-db)*0.50)) ;
   end
   else begin
      red:=wwMax(0,Trunc(dr*0.50)) ;
      green:=wwMax(0,Trunc(dg*0.50)) ;
      blue:=wwMax(0,Trunc(db*0.50)) ;
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

function ButtonRecord(btnType:TwwCalcButtonType;
  aTop, aLeft, aWidth, aHeight: Integer; aCaption: string;
  aColor: TColor = clBlack; aHint:string = ''): TButtonRecord;
begin
  Result.btnType := btnType;
  Result.Top := aTop;
  Result.Left := aLeft;
  Result.Width := aWidth;
  Result.Height := aHeight;
  Result.Caption := aCaption;
  Result.Color := aColor;
  Result.Hint := aHint;
end;

{procedure TwwCalcButton.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
//  with Params do Style := Style or BS_OWNERDRAW;
end;}

{ TwwCalcBevel }
procedure TwwCalcBevel.Paint;
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

{ TwwCalcButton }
constructor TwwCalcButton.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FCalc := AOwner as TwwCalculator;
  ControlStyle := ControlStyle + [csCaptureMouse, csDoubleClicks, csReflector];
  ButtonColor := clBtnFace;
  ButtonFontColor := clWindowText;
end;

destructor TwwCalcButton.Destroy;
begin
  inherited Destroy;
end;

procedure TwwCalcButton.WMRButtonDown(var Message: TWMRButtonDown);
begin
  inherited;
  if FCalc.StatusLabel <> nil then
     FCalc.statuslabel.Caption := Self.Hint;
end;

procedure TwwCalcButton.WMRButtonUp(var Message: TWMRButtonUp);
begin
  inherited;
  FCalc.RefreshSummary;
end;

constructor TwwCalcLabel.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FCalc := AOwner as TwwCalculator;
end;

procedure TwwCalcLabel.WMRButtonDown(var Message: TWMRButtonDown);
begin
  inherited;
  if FCalc.StatusLabel <> nil then
     FCalc.statuslabel.Caption := FloatToStr(FCalc.MemoryValue);
end;

procedure TwwCalcLabel.WMRButtonUp(var Message: TWMRButtonUp);
begin
  inherited;
  FCalc.RefreshSummary;
end;

procedure TwwCalcButton.WMEraseBkgnd(var Message: TWmEraseBkgnd);
begin
  Message.result:= 1;
end;

procedure TwwCalcButton.Paint;
var
  IsDown: Boolean;
  R: TRect;
  P:TPoint;
  MouseinButton:BOolean;
  Btnlight,Btnshadow:TColor;
  SaveFontColor,SaveBrushColor,SavePenColor:TColor;
begin
  try
     Canvas.Lock;
     R := ClientRect;

     GetCursorPos(P);
     P:=(screenToClient(p));

     if PtInRect(r,p) then
        MouseInButton := True
     else MouseInButton := False;

     IsDown := (csLButtonDown in ControlState) and MouseInButton;

     Canvas.Font := Self.Font;
     Canvas.Pen.Color := clBlack;
     Canvas.Font.Color := ButtonFontColor;
     Canvas.Brush.Color := ButtonColor;

     if FTransparent then begin
        Canvas.CopyRect(ClientRect,(Parent as TwwCalculator).PaintBitmap.Canvas,
          Rect(Left,Top,Left+WIdth,Top+Height));
     end
     else Canvas.FillRect(r);

     if MouseInButton and (cboHotTrackButtons in FOptions) and not (cboFlatButtons in FOptions) then
    begin
       Canvas.Pen.Color := clWindowFrame;
       Canvas.Pen.Width := 1;
       Canvas.Brush.Style := bsClear;
       Canvas.Rectangle(R.Left, R.Top, R.Right, R.Bottom);

    { DrawFrameControl must draw within this border }
      InflateRect(R, -1, -1);
     end;

     Canvas.Pen.Color := clBtnShadow;
     Canvas.Pen.Width := 1;
     Canvas.Brush.Color := ButtonColor;

     BTnShadow:= changeColor(ButtonColor,False);
     BtnLight := changeColor(ButtonColor,True);

  { DrawFrameControl does not draw a pressed button correctly }
  if IsDown then
  begin
    Canvas.Brush.Style := bsClear;
    Canvas.Rectangle(R.Left, R.Top, R.Right, R.Bottom);
    Canvas.Rectangle(R.Left, R.Top, R.Right, R.Bottom);
    Canvas.Pen.Color := BtnShadow;
    Canvas.Polyline([Point(r.left,r.bottom),Point(r.left,r.top),Point(r.right,r.top)]);
    Canvas.Pen.Color := clBlack;
    Canvas.Polyline([Point(r.left+1,r.bottom-1),Point(r.left+1,r.top+1),Point(r.right-1,r.top+1)]);
    Canvas.Pen.Color := BtnLight;
    Canvas.Polyline([Point(r.left+2,r.bottom-2),Point(r.right-2,r.bottom-2),Point(r.right-2,r.top+2)]);
    Canvas.Pen.Color := clWhite;
    Canvas.Polyline([Point(r.left+1,r.bottom-1),Point(r.right-1,r.bottom-1),Point(r.right-1,r.top+1)]);
    InflateRect(R, -1, -1);
  end
  else
  begin
    if not (cboFlatButtons in fOptions) or
       (PtInRect(r,p) and ((cboHotTrackButtons in FOptions))) then begin
      Canvas.Brush.Style := bsClear;
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

procedure TwwCalcButton.CMMouseEnter(var Message: TMessage);
begin
  inherited;
  if cboHotTrackButtons in FOptions then
     Invalidate;
end;

procedure TwwCalcButton.CMMouseLeave(var Message: TMessage);
begin
  inherited;
  if cboHotTrackButtons in FOptions then
     Invalidate;

end;

procedure TwwCalcButton.CMEnabledChanged(var Message: TMessage);
begin
  inherited;
  Invalidate;
end;

{ TwwCalculator }
constructor TwwCalculator.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  SetBounds(0,0,250,200);
  FMemoryValue := 0;
  FCurrentValue := 0;
  FLastValue := 0;
  Caption := '';
  FMargin := 3;
  FOptions := [];
//  BorderStyle := bsRaisedPanel;
  FPanelColor := clBtnFace;
  FPaintBitmap:= TBitmap.create;
  FBackgroundBitmap:= TPicture.create;
  F3D := False;
end;

destructor TwwCalculator.Destroy;
begin
  inherited Destroy;
  FPaintBitmap.Free;
  FBackGroundBitmap.Free;
end;

procedure TwwCalculator.Loaded;
var i:integer;
begin
  inherited;
  CalcButtons;
  if BackGroundBitmap.Graphic.empty then begin
     for i:= 0 to ControlCount-1 do begin
       if COntrols[i] is TwwCalcButton then
         TwwCalcButton(controls[i]).FTransparent := False;
     end;
  end
  else begin
    for i:= 0 to ControlCount-1 do begin
       if COntrols[i] is TwwCalcButton then
         TwwCalcButton(controls[i]).FTransparent := True;
    end;
    InitBitmapsFlag := True;
  end;
end;

function TwwCalculator.CharToOp(c:Char;Ctrl:Boolean):TwwCalcButtonType;
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

procedure TwwCalculator.ResultKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var c:Char;
    code:Integer;
    KeyState: TKeyboardState;
    s:String;
begin
  if Key=16 then begin
    inherited;
    exit;
  end;
  if Key=vk_Return then c:='='
  else if Key=vk_Delete then c:='c'
  else if Key=vk_Back then c:='b'
  else if Key=vk_Escape then c:='e'
  else begin
    Code := MapVirtualKey(Key, 2);
    c:=char(code);
    if (ssShift in Shift) then begin
       case c of
       '=':c:='+';
       '5':c:='%';
       '8':c:='*';
       end;
    end;
  end;
  DoCalc(CharToOp(c,(ssCtrl in Shift)));
  inherited;
  FResultEdit.SelStart := Length(FResultEdit.Text);
end;

function TwwCalculator.OpToChar(aOp:TwwCalcButtonType):Char;
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
        btMRecall: Result := 'r';
        btMStore: Result := 'm';
        btMClear: Result := 'c';
        btMAdd: Result := 'a';
    end;
end;

procedure TwwCalculator.WMSize(var Message: TWMSize);
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

procedure TwwCalculator.Paint;
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

procedure TwwCalculator.CalcButtons;
var
  j: integer;
  i,bt:TwwCalcButtonType;
  calccolor:TCOlor;
  BtnWidth,BtnHeight :integer;
  clrbtnw,clrbtnh:integer;
  numbuttonsx,numbuttonsy:integer;
  row,col:integer;
  x,y:integer;

  startoffset:integer;
  pad:integer;
  flag:boolean;
begin
  numbuttonsx:=6;
  numbuttonsy:=5;
  if not (cboHideEditor in Options) then inc(numbuttonsy);
  if (cboShowStatus in Options) then inc(numbuttonsy);

  x:= Width-ButtonMargin*(numbuttonsx-1)-(5+5+5);
  y:= Height-ButtonMargin*(numbuttonsy-1)-10;
  btnwidth := x div numbuttonsx;
  btnHeight := y div numbuttonsy;

  if cboHideEditor in Options then row := 1
  else row := 2;
  Btns[btMClear] := ButtonRecord(btMClear,5+row*(btnheight+ButtonMargin), 5, BtnWidth, btnHeight, 'MC',clRed,'Clears any number stored in memory.'+#13#10+#13#10+'Keyboard equivalent = CTRL + L');
  inc(row);
  Btns[btMRecall] := ButtonRecord(btMRecall,5+row*(btnheight+ButtonMargin), 5, btnwidth, btnHeight, 'MR',clRed,'Recalls the number stored in memory.');
  inc(row);
  Btns[btMStore] := ButtonRecord(btMStore,5+row*(btnheight+ButtonMargin), 5, btnwidth, btnHeight, 'MS',clRed,'Stores the displayed number in memory.');
  inc(row);
  Btns[btMAdd] := ButtonRecord(btMAdd,5+row*(btnheight+ButtonMargin), 5, btnwidth, btnHeight, 'M+',clRed,'Adds displayed number to number in memory.');

  clrbtnw := (width - 15-btnwidth-ButtonMargin*3) div 3;
  if cboHideEditor in Options then clrbtnh:=5
  else clrbtnh:=5+btnheight+ButtonMargin;
  Btns[btBackspace] := ButtonRecord(btBackSpace,clrbtnh,Width-5-clrbtnw-2*(clrbtnw+ButtonMargin), clrbtnw, btnHeight, 'Back',clRed,'Deletes last digit of displayed number.');
  Btns[btClear] := ButtonRecord(btClear,clrbtnh, Width-5-(clrbtnw+ButtonMargin)-clrbtnw, clrbtnw, btnHeight, 'CE', clRed,'Clears displayed number.');
  Btns[btClearAll] := ButtonRecord(btClearAll,clrbtnh, Width-5-clrbtnw, clrbtnw, btnHeight, 'C', clRed,'Clears the current calculation.');

  pad := ((Width-5-BtnWidth)-4*(BtnWidth+ButtonMargin)) - (Width-5-clrbtnw-2*(clrbtnw+ButtonMargin));
  if pad <= 0 then pad := 0;
  if cboHideEditor in Options then row := 1
  else row := 2;
  Btns[bt7] := ButtonRecord(bt7,5+row*(btnheight+ButtonMargin),-pad+ (Width-5-BtnWidth)-4*(BtnWidth+ButtonMargin), BtnWidth, btnHeight, '7',clBlue,'Puts this number in display.');
  inc(row);
  Btns[bt4] := ButtonRecord(bt4,5+row*(btnheight+ButtonMargin),-pad+ (Width-5-BtnWidth)-4*(BtnWidth+ButtonMargin), BtnWidth, btnHeight, '4',clBlue,'Puts this number in display.');
  inc(row);
  Btns[bt1] := ButtonRecord(bt1,5+row*(btnheight+ButtonMargin),-pad+ (Width-5-BtnWidth)-4*(BtnWidth+ButtonMargin), BtnWidth, btnHeight, '1',clBlue,'Puts this number in display.');
  inc(row);
  Btns[bt0] := ButtonRecord(bt0,5+row*(btnheight+ButtonMargin),-pad+ (Width-5-BtnWidth)-4*(BtnWidth+ButtonMargin), BtnWidth, btnHeight, '0',clBlue,'Puts this number in display.');

  if cboHideEditor in Options then row := 1
  else row := 2;
  Btns[bt8] := ButtonRecord(bt8,5+row*(btnheight+ButtonMargin),-pad+ (Width-5-BtnWidth)-3*(BtnWidth+ButtonMargin), BtnWidth, btnHeight, '8',clBlue,'Puts this number in display.');
  inc(row);
  Btns[bt5] := ButtonRecord(bt5,5+row*(btnheight+ButtonMargin),-pad+ (Width-5-BtnWidth)-3*(BtnWidth+ButtonMargin), BtnWidth, btnHeight, '5',clBlue,'Puts this number in display.');
  inc(row);
  Btns[bt2] := ButtonRecord(bt2,5+row*(btnheight+ButtonMargin),-pad+ (Width-5-BtnWidth)-3*(BtnWidth+ButtonMargin), BtnWidth, btnHeight, '2',clBlue,'Puts this number in display.');
  inc(row);
  Btns[btPlusMinus] := ButtonRecord(btPlusMinus,5+row*(btnheight+ButtonMargin),-pad+ (Width-5-BtnWidth)-3*(BtnWidth+ButtonMargin), BtnWidth, btnHeight, '+/-',clBlue,'Changes sign of displayed number.');

  if cboHideEditor in Options then row := 1
  else row := 2;
  Btns[bt9] := ButtonRecord(bt9,5+row*(btnheight+ButtonMargin),-pad+(Width-5-BtnWidth)-2*(BtnWidth+ButtonMargin), BtnWidth, btnHeight, '9',clBlue,'Puts this number in display.');
  inc(row);
  Btns[bt6] := ButtonRecord(bt6,5+row*(btnheight+ButtonMargin),-pad+ (Width-5-BtnWidth)-2*(BtnWidth+ButtonMargin), BtnWidth, btnHeight, '6',clBlue,'Puts this number in display.');
  inc(row);
  Btns[bt3] := ButtonRecord(bt3,5+row*(btnheight+ButtonMargin),-pad+ (Width-5-BtnWidth)-2*(BtnWidth+ButtonMargin), BtnWidth, btnHeight, '3',clBlue,'Puts this number in display.');
  inc(row);
  Btns[btDecimal] := ButtonRecord(btDecimal,5+row*(btnheight+ButtonMargin),-pad+ (Width-5-BtnWidth)-2*(BtnWidth+ButtonMargin), BtnWidth, btnHeight, '.',clBlue,'Inserts a decimal point.');

  if cboHideEditor in Options then row := 1
  else row := 2;
  Btns[btDivide] := ButtonRecord(btDivide,5+row*(btnheight+ButtonMargin), (Width-5-BtnWidth)-1*(BtnWidth+ButtonMargin), BtnWidth, btnHeight, '/',clRed,'Divides.');
  inc(row);
  Btns[btMultiply] := ButtonRecord(btMultiply,5+row*(btnheight+ButtonMargin), (Width-5-BtnWidth)-1*(BtnWidth+ButtonMargin), BtnWidth, btnHeight, '*',clRed,'Multiplies.');
  inc(row);
  Btns[btSubtract] := ButtonRecord(btSubtract,5+row*(btnheight+ButtonMargin), (Width-5-BtnWidth)-1*(BtnWidth+ButtonMargin), BtnWidth, btnHeight, '-',clRed,'Subtracts.');
  inc(row);
  Btns[btAdd] := ButtonRecord(btAdd,5+row*(btnheight+ButtonMargin), (Width-5-BtnWidth)-1*(BtnWidth+ButtonMargin), BtnWidth, btnHeight, '+',clRed,'Adds.');

  if cboHideEditor in Options then row := 1
  else row := 2;
  Btns[btsqrt] := ButtonRecord(btsqrt,5+row*(btnheight+ButtonMargin), (Width-5-BtnWidth)-0*(BtnWidth+ButtonMargin), BtnWidth, btnHeight, 'sqrt',clBlue,'Calculates squareroot of number.');
  inc(row);
  Btns[btPercent] := ButtonRecord(btPercent,5+row*(btnheight+ButtonMargin), (Width-5-BtnWidth)-0*(BtnWidth+ButtonMargin), BtnWidth, btnHeight, '%',clBlue,'Displays result of multiplication as percentage.');
  inc(row);
  Btns[btInverse] := ButtonRecord(btInverse,5+row*(btnheight+ButtonMargin), (Width-5-BtnWidth)-0*(BtnWidth+ButtonMargin), BtnWidth, btnHeight, '1/x',clBlue,'Calculates the reciprocal.');
  inc(row);
  Btns[btEquals] := ButtonRecord(btEquals,5+row*(btnheight+ButtonMargin), (Width-5-BtnWidth)-0*(BtnWidth+ButtonMargin), BtnWidth, btnHeight, '=',clRed,'Performs any operation on previous numbers.');

  flag := False;
  for j:= 0 to ControlCount-1 do
    if COntrols[j] is TwwCalcButton then flag := True;

  if flag then begin
    for j:= 0 to ControlCount-1 do
    if COntrols[j] is TwwCalcButton then
      with  TwwCalcButton(Controls[j]) do begin
         SetBounds(Btns[fbtntype].Left, Btns[fbtntype].Top, Btns[fbtntype].Width,Btns[fbtntype].Height);
         ButtonFontColor := Btns[fbtntype].Color;
         ButtonColor := PanelColor;
         Hint := Btns[fbtnType].Hint;
         FOptions := Options;
         Font.Height := self.Font.Height;
         Font.Name := self.Font.Name;
         Font.Style := self.Font.Style;
         if (FBackGroundBitmap <> nil) and (FBackGroundBitmap.Graphic <> nil) and not FBackgroundbitmap.Graphic.empty then
            FTransparent := True
         else FTransparent := False;
      end;
  end
  else begin
    for i := Low(TwwCalcButtonType) to High(TwwCalcButtonType) do
      with TwwCalcButton.Create(Self) do begin
        Parent := Self;
        SetBounds(Btns[i].Left, Btns[i].Top, Btns[i].Width,Btns[i].Height);
        fBtnType:=Btns[i].BtnType;
        Hint := Btns[i].Hint;
        Caption := Btns[i].Caption;
        ButtonFontColor := Btns[i].Color;
        ButtonColor := PanelColor;
        OnClick := Compute;
        FOptions := Options;
        Font.Height := self.Font.Height;
        Font.Name := self.Font.Name;
        Font.Style := self.Font.Style;

        if (FBackGroundBitmap <> nil) and (FBackGroundBitmap.Graphic <> nil) and not FBackgroundbitmap.Graphic.empty then
           FTransparent := True
        else FTransparent := False;
        Tag := Ord(i);
     end;
  end;

  if FMemoryBevel = nil then begin
    FMemoryBevel := TwwCalcBevel.Create(Self);
    FMemoryBevel.Parent := Self;
  end;

  with FMemoryBevel do begin
    Parent := Self;
    SetBounds(5,clrBtnh+1,BtnWidth,BtnHeight-1);
    FColor := PanelColor;
  end;

  if FMemoryStatus = nil then begin
    FMemoryStatus := TwwCalcLabel.Create(Self);
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

  if FResultEdit = nil then begin
     FResultEdit := TwwDBEdit.Create(Self);
     with FResultEdit do begin
       Parent := Self;
       Visible := not (cboHideEditor in Options);
       AutoSize := False;
       EditAlignment := eaRightAlignEditing;
       TLabel(FResultEdit).Alignment := taRightJustify;
       Font.Height := -13;
       Font.Name := 'Arial';
       Font.Style := [];
       Text := '0';
       ReadOnly := True;
       OnKeyDown := ResultKeyDown;
     end;
  end;

  if (cboHideEditor in Options) then FResultEdit.Visible := False
  else if (csDesigning in ComponentState) then FResultEdit.Visible := True;

  if not FResultEdit.Visible and (csDesigning in ComponentState) then
     FResultEdit.SetBounds(5, 5, 0, 0)
  else FResultEdit.SetBounds(5, 5, Width-10, btnHeight);

  if (cboShowStatus in Options) then begin
    if (FStatusBevel = nil) then begin
       FStatusBevel := TwwCalcBevel.Create(Self);
       FStatusBevel.Parent := Self;
    end;
    if (FStatusLabel = nil) then begin
       FStatusLabel := TLabel.Create(Self);
       with FStatusLabel do begin
          Parent := Self;
          Autosize := False;
          Transparent := True;
          Alignment := taLeftJustify;
          Font.Height := self.Font.Height;
          Font.Name := self.Font.Name;
          Font.Style := self.Font.Style;
       end;
    end;
    FStatusBevel.SetBounds(5, Height-5-btnHeight, Width-10,btnHeight);
    FStatusLabel.SetBounds(9, Height-5-btnHeight+((BtnHeight-FMemoryStatus.Canvas.textheight('M'))div 2), Width-16,btnHeight-4);
  end
  else if not (cboShowStatus in Options) then begin
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

procedure TwwCalculator.WMEraseBkgnd(var Message: TWmEraseBkgnd);
begin
  Message.result:= 1;
end;

Procedure TwwCalculator.Reset; {Clear everything out}
begin
    FCurrentValue := 0.0;

    FResultEdit.Text := '0';
    FDecimalEntered:=False;
    FResultValue:=0.0;
    if FStatusLabel <> nil then FStatusLabel.Caption:='';
    FClearOnNextKey:=false;
    FLastOp:=btNone;
    FNextToLastOp:=btNone;
    FLastStatus:='';
    FLastOperatorEquals := false;
    FLastOperand:=0.0;
end;

procedure TwwCalculator.Compute(Sender: TObject);
begin
  DoCalc(TwwCalcButtonType(TSpeedButton(Sender).Tag));
end;

procedure TwwCalculator.DoCalc(ButtonType:TwwCalcButtonType);
const
  MemoryStoreMap: array [Boolean] of string = (' M','');
var
  Temp: string;
  TempValue: Double;
  flag:boolean;
begin
  try
   case ButtonType of
    bt0..bt9:
     begin
        if FClearOnNextKey then begin
           if FLastOperatorEquals then Reset
           else FResultEdit.Text := '0';
        end;
        FClearOnNextKey := false;

        if (FResultEdit.Text = '0') or (FCurrentValue = 0) then
           FResultEdit.Text := '';
        FBackSpaceValid := True;
        FResultEdit.Text := FResultEdit.Text + Btns[ButtonType].Caption;
        FCurrentValue := StrToFloat(FResultEdit.Text);
        if (FStatusLabel <> nil) then
           FStatusLabel.Caption:=FStatusLabel.Caption+OpToChar(ButtonType);
     end;

    btDecimal:
     begin
        if FClearOnNextKey then Reset;
        If not FDecimalEntered then begin
           FCurrentValue := StrToFloat(FResultEdit.Text);
           FResultEdit.Text := FResultEdit.Text + Btns[ButtonType].Caption;
           if (FStatusLabel <> nil) then
              FStatusLabel.Caption:=FStatusLabel.Caption+OpToChar(ButtonType);
           FDecimalEntered:=true;
        end
        else Beep;
     end;

    btPlusMinus:
     begin
      FCurrentValue := StrToFloat(FResultEdit.Text) * -1;
      FResultEdit.Text := FloatToStr(FCurrentValue);
      if FStatusLabel <> nil then begin
         if FClearOnNextKey then
           FStatusLabel.Caption := '0'
         else
           FStatusLabel.Caption := FLastStatus+FResultEdit.Text;
      end;
     end;

    btClearAll:
     begin
      Reset;
     end;

    btClear:
     begin
      FCurrentValue := 0;
      FResultEdit.Text := '0';
      if FStatusLabel <> nil then begin
         if FClearOnNextKey then
           FStatusLabel.Caption := '0'
         else
           FStatusLabel.Caption := FLastStatus;
      end;
     end;

    btPercent,btAdd,btSubtract,btDivide,btMultiply,btEquals:
     begin
       TempValue := StrToFloat(FResultEdit.Text);

       if (Length(FResultEdit.Text) > 0) and (ButtonType <> btEquals) then begin
          if (FLastOperatorEquals) then begin
              FLastOperand := TempValue;
              FLastOp := ButtonType;
              FLastOperatorEquals := False;
              if FStatusLabel <> nil then
                 FStatusLabel.Caption:=FLastStatus+OpToChar(ButtonType);
              FLastStatus := FStatusLabel.Caption;
              FCurrentValue := 0;
          end
          else if not(FLastOp in [btMultiply,btDivide,btAdd,btSubtract,btPercent]) then
          begin
             FLastOperand := TempValue;
             FLastOp := ButtonType;
             FResultValue:=tempvalue;
             if FStatusLabel <> nil then
                FStatusLabel.Caption:=FStatusLabel.Caption+OpToChar(ButtonType);
             FLastStatus := FStatusLabel.Caption;
             FCurrentValue := 0;
          end
          else if (FLastOp in [btMultiply,btDivide,btAdd,btSubtract]) then begin
             if ButtonType = btPercent then begin
                fResultValue := (fResultValue * TempValue)/100.0;
                fLastOperand := TempValue;
             end
             else begin
               case FLastOp of
                 btMultiply: fResultValue := fResultValue * TempValue;
                 btDivide: fResultValue := fResultValue / TempValue;
                 btAdd: fResultValue := fResultValue + TempValue;
                 btSubtract: fResultValue := fResultValue - TempValue;
               end;
               FLastOperand := TempValue;
             end;

             if (FStatusLabel <> nil) then begin
                If ((ButtonType = btMultiply) or (ButtonType=btDivide))
                  and ((FLastOp = btAdd) or (FLastOp=btSubtract)) then
                      FStatusLabel.Caption:='('+FStatusLabel.Caption+')';

                FStatusLabel.Caption := FStatusLabel.Caption+OpToChar(ButtonType);
                FLastStatus := FStatusLabel.Caption;
                if ButtonType = btPercent then begin
                   FLastStatus := FStatusLabel.Caption;
                   FStatusLabel.Caption := FlastStatus+OpToChar(btEquals) + FloatToStr(FResultValue);
                end;
             end;
             FCurrentValue := 0;
          end;

          FLastOp:=ButtonType;
          FResultEdit.Text := FloatToStr(FResultValue);
          FCurrentValue := 0;
       end
       else if (Length(FResultEdit.Text) > 0)then begin
          if FLastOperatorEquals or (FLastOp = btPercent) then TempValue := FLastOperand
          else FLastOperand := TempValue;

          case FLastOp of
            btPercent: fResultValue := (fResultValue * FLastOperand)/100.0;
            btMultiply: fResultValue := fResultValue * TempValue;
            btDivide: fResultValue := fResultValue / TempValue;
            btAdd: fResultValue := fResultValue + TempValue;
            btSubtract: fResultValue := fResultValue - TempValue;
          end;

          if StatusLabel <> nil then begin
             if FLastOperatorEquals then begin
                FStatusLabel.Caption := FLastStatus;
                FStatusLabel.Caption := FStatusLabel.Caption + OpToChar(FLastOp) + FloatToStr(FLastOperand);
             end
             else if FLastOp = btPercent then begin
                FStatusLabel.Caption := FLastStatus;
                FStatusLabel.Caption:='('+FStatusLabel.Caption+')'+FloatToStr(FLastOperand)+Optochar(btPercent);
             end;
             FStatusLabel.Caption:='('+FStatusLabel.Caption+')';
             FLastStatus := FStatusLabel.Caption;
             FStatusLabel.Caption := FStatusLabel.Caption+OpToChar(ButtonType);
             FStatusLabel.Caption := FStatusLabel.Caption + FloatToStr(FResultValue);
          end;

          FLastOperatorEquals := True;
          FResultEdit.Text := FloatToStr(FResultValue);
          FClearOnNextKey := True;
          FCurrentValue := 0;
       end
       else Beep;
    end;

    btBackSpace:
     if FBackSpaceValid then begin
      Temp := FResultEdit.Text;
      if Temp[Length(Temp)] in ['0'..'9'] then
      begin
        Delete(Temp, Length(Temp),1);
        if Temp = '' then begin
          FBackSpaceValid := False;
          Temp := '0';
        end;
        FCurrentValue := StrToFloat(Temp);
        FResultEdit.Text := FloatToStr(FCurrentValue);
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
      FCurrentValue := 1 / StrToFloat(FResultEdit.Text);
      FResultEdit.Text := FloatToStr(FCurrentValue);
      if FStatusLabel <> nil then begin
         if FClearOnNextKey then
           FStatusLabel.Caption := '0'
         else
           FStatusLabel.Caption := FLastStatus+FResultEdit.Text;
      end;
     end;

    btSqrt:
     begin
      FCurrentValue := Sqrt(StrToFloat(FResultEdit.Text));
      FResultEdit.Text := FloatToStr(FCurrentValue);
      if FStatusLabel <> nil then begin
         if FClearOnNextKey then
           FStatusLabel.Caption := '0'
         else
           FStatusLabel.Caption := FLastStatus+FResultEdit.Text;
      end;
     end;

    btMStore:
     begin
      FMemoryValue := StrToFloat(FResultEdit.Text);
      FMemoryValue := FMemoryValue * 1;
      FCurrentValue := 0;
     end;

    btMAdd:
     begin
      TempValue := FMemoryValue;
      FMemoryValue := StrToFloat(FResultEdit.Text);
      FMemoryValue := (FMemoryValue * 1) + TempValue;
     end;

    btMRecall:
     begin
      FResultEdit.Text := FloatToStr(FMemoryValue);
      FCurrentValue := 0;
     end;

    btMClear:
     begin
      FMemoryValue := 0;
     end;

   end;   // case  ButtonType of...

   except
     on E: Exception do begin
      FResultEdit.Text := E.Message;
      Reset;
     end;
   end;


  FMemoryStatus.Caption := MemoryStoreMap[FMemoryValue = 0];
end;

function TwwCalculator.IsBinaryOperator(ButtonType: TwwCalcButtonType):boolean;
begin
 result := False;
 case ButtonType of
 btMultiply,btDivide,btAdd,btSubtract,btEquals: result := True;
 end;
end;

procedure TwwCalculator.SetBackgroundBitmapDrawStyle(Value: TwwCalcBitmapDrawStyle);
begin
   if Value<>FBackgroundBitmapDrawStyle then
   begin
      FBackgroundBitmapDrawStyle:= Value;
      FullRepaint;
   end
end;

procedure TwwCalculator.SetBackgroundBitmap(Value: TPicture);
var i:integer;
begin
   if (Value = nil) or (Value.Graphic=nil) or Value.Graphic.Empty then begin
     for i:= 0 to ControlCount-1 do begin
       if COntrols[i] is TwwCalcButton then
         TwwCalcButton(controls[i]).FTransparent := False;
     end;
   end
   else begin
    for i:= 0 to ControlCount-1 do begin
       if COntrols[i] is TwwCalcButton then
         TwwCalcButton(controls[i]).FTransparent := True;
    end;
   end;
   FBackGroundBitmap.Assign(Value);
   FPaintBitmap.FreeImage;
   InitBitmapsFlag := True;
   FullRepaint;
end;


function TwwCalculator.GetText: string;
begin
  Result := FResultEdit.Text;
end;

procedure TwwCalculator.SetBorder3D(const Value: Boolean);
begin
  if F3D <> Value then begin
    F3D := Value;
    invalidate;
  end;
end;

procedure TwwCalculator.SetText(const Value: string);
begin
  if FResultEdit <> nil then
     FResultEdit.Text := Value;
end;

procedure TwwCalculator.SetOptions(Value: TwwCalcOptions);
var ChangedOptions: TwwCalcOptions;
begin
  if FOptions <> Value then
  begin
    ChangedOptions := (FOptions - Value) + (Value - FOptions);
    FOptions := Value;
    if ChangedOptions <> [] then begin
{       for i:= 0 to ControlCount-1 do begin
         if COntrols[i] is TwwCalcButton then begin
           TwwCalcButton(controls[i]).FOptions := Value;
           if (FBackGroundBitmap <> nil) and (FBackGroundBitmap.Graphic <> nil) and not FBackgroundbitmap.Graphic.empty then
              TwwCalcButton(controls[i]).FTransparent := True
           else TwwCalcButton(controls[i]).FTransparent := False;
         end;
       end;}
       CalcButtons;
       FullRepaint;
    end;
  end;
end;

procedure TwwCalculator.RefreshSummary;
begin
  if StatusLabel <> nil then begin
     FStatusLabel.Caption := 'Calculator';
  end;
end;

procedure TwwCalculator.FullRepaint;
var i:integer;
begin
  InitBitmapsFlag:= True;
  invalidate;
  for i:= 0 to ControlCount-1 do begin
     controls[i].invalidate;
  end;
end;

procedure TwwCalculator.SetMargin(Value: Integer);
begin
  if FMargin <> Value then
  begin
     FMargin := Value;
     CalcButtons;
  end;
end;

procedure TwwCalculator.SetPanelColor(Value: TColor);
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
       if COntrols[i] is TwwCalcButton then
         TwwCalcButton(controls[i]).ButtonColor := Value;
    end;

    FullRepaint;
  end;
end;

procedure Register;
begin
  RegisterComponents('Samples', [TwwCalculator]);
end;

end.