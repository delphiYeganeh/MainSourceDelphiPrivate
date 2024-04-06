{  This a editor prepared to edit numbers.
   Inplace edit calculations are supported.
   The following key operations are supported while editing.
   Operation      Valid Keys
   ---------      ----------
     %              %
     *              *
     +              +
     -              -
     .              . or ,
     /              /
     0-9            0-9
     1/x            r
     =              Enter
     Backspace      backspace
     C              Esc
     CE             Del
     ln             n
     log            l
     n!             !
     pi             p
     x^2            @
     x^3            #
     x^y            y

     MS             Ctrl+M
     M+             Ctrl+P
     MC             Ctrl+L
     MR             Ctrl+R

     inv            i
     sqrt           @

     +/-            F9
     (              (
     )              )
     A-F (HEX)      A-F
     And            &
     Ave            Ctrl+A
     bin            F8
     Byte           F4
     Cos            o or O
     Dat            Ins
     Dec            F6
     Degrees        F2
     dms            m
     Dword          F2
     Exp            x
     F-E            v
     Grads          F4
     Hex            F5
     Hyp            h
     Int            ;
     lsh            <
     M+             Ctrl+P
     MC             Ctrl+L
     Mod            %
     MR             Ctrl+R
     MS             Ctrl+M
     Not            ~
     oct            f7
     or             |
     qword          f12
     radians        f3
     Sin            s
     Sum            Ctrl+t
     Tan            t
     word           f3
     xor            ^













   Addition        +
   Subtraction     -
   Multiplication  *
   Division        /
   sqrt            s
   invert          r
   percentage      %
   C (Clear)       BackSpace and Left
   CE              Delete
   log             l
   ln              n
   sin             s or S
   cos             o
   pi              p
   tan             t
   exp             x
   x^Y             y
   n! factorial    !
   x^2  SQR        @
   OR              ^ |
   AND             &
   Memory          Ctrl-M
   Recall          Ctrl-R
   Memory Clear    Ctrl-L
   Memory Add      Ctrl-P
   Result          =
   Aso you can use the Backspace,
   Del key means CE command ( using 'l' char ),
   and the C command ( using 'c' char ).
}
unit wwCalcEdit;
interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Buttons, Forms, Dialogs,
  StdCtrls, wwdbedit, wwdbcomb, math, extctrls,wwcommon,wwCalculator;

type
  TwwCustomCalcEdit = class;

  TwwPopupCalcOptions = class(TPersistent)
  private
    FBackground:TPicture;
    FBackGroundStyle: TwwCalcBitmapDrawStyle;
    FMargin:integer;
    FOptions: TwwCalcOptions;
    FPanelColor:TColor;
    procedure SetBackgroundStyle(Value: TwwCalcBitmapDrawStyle);
    procedure SetOptions(Value: TwwCalcOptions);
    procedure SetMargin(Value: Integer);
    procedure SetPanelColor(Value: TColor);
  public
    constructor Create(AOwner: TComponent);
    destructor Destroy; override;
  protected
    procedure SetBackgroundBitmap(Value: TPicture); virtual;
  published
    property Background:TPicture read FBackground write SetBackGroundBitmap;
    property BackgroundStyle: TwwCalcBitmapDrawStyle read FBackgroundStyle write SetBackgroundStyle;
    property ButtonMargin: integer read FMargin write SetMargin default 3;
    property Options: TwwCalcOptions read FOptions write SetOptions default [];
    property PanelColor: TColor read FPanelColor write SetPanelColor default clBtnFace;
  end;

  TwwCalcPanel = class(TwwCalculator)
  private
    FAssociatedEdit:TwwCustomCalcEdit;
  protected
    procedure CreateParams(var Params: TCreateParams); override;
    procedure CreateWnd; override;
    procedure Keypress(var Key: Char); override;
    procedure Compute(Sender: TObject); override;
//    procedure MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
  public
    constructor Create(AOwner: TComponent); override;
    property AssociatedEdit:TwwCustomCalcEdit read FAssociatedEdit write FAssociatedEdit;
  end;

(*  TCalculatorWindow = class( TCustomControl )
  private
    FEdit: TCalculatorCombo;
    FButtonPressed,
    FButtonDown: TBotonPresionado;
    procedure DrawButton( aCanvas: TCanvas; B: TBotonPresionado;
                          Text: string );
    procedure ButtonRect( B: TBotonPresionado; var R: TRect );
    function ButtonToChar( B: TBotonPresionado ): char;
    function CharToButton( ch: char ): TBotonPresionado;
    procedure ButtonPushed( B: TBotonPresionado );
    procedure Draw( aCanvas: TCanvas );
  protected
    procedure Paint; override;
    procedure CreateParams(var Params: TCreateParams); override;
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
    procedure MouseMove(Shift: TShiftState; X, Y: Integer); override;
    procedure MouseUp(Button: TMouseButton; Shift: TShiftState; X, Y: Integer ); override;
    function MouseToButton( X, Y: Integer ): TBotonPresionado;
    procedure PushButton( B: TBotonPresionado );
  public
//    procedure Repintar;
    property Edit: TCalculatorCombo read FEdit;
  end;
  *)
  TwwCustomCalcEdit = class(TwwDBCustomComboBox)
  private
    FDropDownCalc:TwwCalcPanel;
//    FCalculator: TCalculatorWindow;
    fResult: Double;
    FMemoryValue: Double;
    FLastOperator: Char;
    FSecondToLastOperator: Char;
    FLastOperand: Double;
    FClearOnNextKey: boolean;
    FLastOperatorEquals: Boolean;
    FDecimalEntered : Boolean;
    FCalcOptions : TwwPopupCalcOptions;
//    procedure ToggleSign;
    function GetValue: Double;
//    procedure SetCalcOptions(Value: TwwPopupCalcOptions);
    procedure WMKillFocus(var Message: TWMKillFocus); message WM_KILLFOCUS;
    procedure CMCancelMode(var Message: TCMCancelMode); message CM_CANCELMODE;
  protected
    procedure ResetCalculator; virtual;
    function IsValidOperator(Key: Char): boolean; virtual;
    function IsUnaryOperator(Key:Char):boolean; virtual;
    function IsBinaryOperator(Key:Char):boolean; virtual;
    procedure CreateParams(var Params: TCreateParams); override;
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure KeyPress(var Key: Char); override;
    procedure Compute(OperatorKey:Char);
//    function GetPanel: TwwCalcPanel;
  public
    property Panel:TwwCalcPanel read fDropDownCalc write fDropDownCalc;
    constructor Create( AOwner: TComponent ); override;
    destructor Destroy; override;
    procedure CreateWnd; override;
    //MAKE DoCloseUp and DoDropDown events.
    procedure CloseUp(Accept: Boolean); override;
    procedure DropDown; override;
    function IsDroppedDown: Boolean; override;
    property Value: Double read GetValue;// write fResult;
  published
    property CalcOptions: TwwPopupCalcOptions read FCalcOptions write FCalcOptions;
    property AutoSelect;
    property Color;
    property Ctl3D;
    property DragCursor;
    property DragMode;
    property Enabled;
    property Font;
    property ImeMode;
    property ImeName;
    property MaxLength;
    property ParentColor;
    property ParentCtl3D;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ShowHint;
    property TabOrder;
    property TabStop;
    property Visible;
    property OnChange;
    property OnClick;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnDropDown;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnStartDrag;
  end;

procedure Register;

implementation

var wwCalcHook: HHOOK;

function wwCalcHookProc(nCode: Integer; wParam: Integer; lParam: Integer): LResult; stdcall;
var r1, r2: TRect;
begin
  result := CallNextHookEx(wwCalcHook, nCode, wParam, lParam);
  with PMouseHookStruct(lParam)^ do
  begin
    if (wParam = WM_LBUTTONDOWN) or (wParam = WM_NCLBUTTONDOWN) then
    begin
      if (Screen.ActiveControl <> nil) and (Screen.ActiveControl is TwwCustomCalcEdit) then
        with (Screen.ActiveControl as TwwCustomCalcEdit) do
      begin
        { Auto-closeup if clicked outside of drop-down area }
        if (fDropDownCalc <> nil) and fDropDownCalc.Visible then begin
           GetWindowRect(fDropDownCalc.Handle, r1);
           GetWindowRect(Handle, r2);
           if (not PtInRect(r1, pt)) and (not PtInRect(r2, pt)) then
              PostMessage(Handle, CM_CANCELMODE, 0, 0);
        end
      end;
    end;
  end;
end;

function fcThisThat(const Clause: Boolean; TrueVal, FalseVal: Integer): Integer;
begin
  if Clause then result := TrueVal else Result := FalseVal;
end;

procedure TwwCalcPanel.Compute(Sender: TObject);
var
 ch: char;
 ButtonType: TwwCalcButtonType;
begin
  ButtonType := TwwCalcButtonType(TSpeedButton(Sender).Tag);
  case ButtonType of
    bt0..bt9:   ch := TSpeedButton(Sender).Caption[1];
    btDecimal:  ch := '.';
    btPlusMinus: ;
    btClearAll: ch := char(vk_escape);
    btClear:    ch := char(vk_back);
    btAdd:      ch:='+';
    btSubtract: ch:='-';
    btDivide:   ch:='/';
    btMultiply: ch:='*';
    btBackSpace:ch:=char(vk_back);
    btInverse:  ch:='r';
    btPercent:  ch:='%';
    btSqrt:     ch:='@';
    btMStore:   ch:='m';
    btMAdd:     ch:='p';
    btMRecall:  ch:='r';
    btMClear:   ch:='l';
    btEquals:   ch:='=';
    else
      ch:=' ';
    end;

    SendMessage(FAssociatedEdit.Handle, WM_CHAR, word(ch), 0);
end;

procedure TwwCalcPanel.Keypress(var Key: Char);
var
  combo: TwwCustomCalcEdit;
begin
  Combo:= owner as TwwCustomCalcEdit;
  inherited Keypress(Key);
end;

    constructor TwwPopupCalcOptions.Create(AOwner: TComponent);
    begin
      FBackground := TPicture.Create;
      FMargin := 3;
      FOptions := [];
      FPanelColor := clBtnFace;
    end;

    destructor TwwPopupCalcOptions.Destroy;
    begin
      if FBackGround <> nil then begin
         FBackground.Free;
         FBackground := nil;
      end;
      inherited;
    end;

    procedure TwwPopupCalcOptions.SetBackgroundBitmap(Value: TPicture);
    begin
      FBackground.assign(Value);
    end;

    procedure TwwPopupCalcOptions.SetBackgroundStyle(Value: TwwCalcBitmapDrawStyle);
    begin
      if Value<>FBackgroundStyle then begin
         FBackgroundStyle:= Value;
      end;
    end;

    procedure TwwPopupCalcOptions.SetOptions(Value: TwwCalcOptions);
    begin
      if Value<>FOptions then begin
         FOptions:= Value;
      end;
    end;

    procedure TwwPopupCalcOptions.SetPanelColor(Value: TColor);
    begin
      if Value<>FPanelColor then begin
         FPanelColor:= Value;
      end;
    end;

    procedure TwwPopupCalcOptions.SetMargin(Value: Integer);
    begin
      if Value<>FMargin then begin
         FMargin := Value;
      end;
    end;

procedure TwwCalcPanel.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  with Params do
  begin
    Style := Style or WS_CHILD or WS_CLIPSIBLINGS or WS_CLIPCHILDREN; // ak
    Style := Style or WS_BORDER;
    {$ifdef win32}
    ExStyle := WS_EX_TOOLWINDOW;

    ExStyle := ExStyle or WS_EX_CONTROLPARENT; //ak
    {$endif}
    WindowClass.Style := CS_SAVEBITS;
  end;
end;

constructor TwwCalcPanel.Create(AOwner: TComponent);
begin
   inherited Create(AOwner);
   FAssociatedEdit := TwwCustomCalcEdit(AOwner);
   ControlStyle := ControlStyle + [csReplicatable];
   ControlStyle := ControlStyle + [csNoDesignVisible];
   ControlStyle := ControlStyle + [csReflector];
   Color := clBtnFace;
//   Height := 175;
//   Width := 250;
end;

procedure TwwCalcPanel.CreateWnd;
begin
  inherited CreateWnd;
  Windows.SetParent(Handle, 0);
end;

(*procedure TwwCalcPanel.Draw( aCanvas: TCanvas );
var
  OldBrushColor: TColor;
  OldPenColor: TColor;
begin
  inherited;
  exit;
  OldBrushColor := aCanvas.Brush.Color;
  OldPenColor := aCanvas.Pen.Color;
  try
    aCanvas.Brush.Color := clRed;//FEdit.CalculatorBackColor;
    aCanvas.FillRect( ClientRect );
    aCanvas.Rectangle( ClientRect.left, ClientRect.top,
                      ClientRect.right, ClientRect.bottom );
    acanvas.TextOut(10,10,'Sum');
    // Pintar botones BACK, CE y C
//    aCanvas.Brush.Color := FEdit.CalculatorButtonsColor;
//    aCanvas.Font := Font;//FEdit.BackFont;
  //  DrawButton( aCanvas, bpBack, STR_BACK );
  finally
    aCanvas.Brush.Color := OldBrushColor;
    aCanvas.Pen.Color := OldPenColor;
  end;
end;

procedure TwwCalcPanel.Paint;
var
  bmp: TBitmap;
begin
  inherited;
  exit;
  bmp := TBitmap.Create;
  try
    bmp.Width := Width;
    bmp.Height := Height;
    Draw( bmp.Canvas );
    Canvas.CopyRect( ClientRect, bmp.Canvas, ClientRect );
  finally
    bmp.free;
  end;
end;
  *)
{ TwwCustomCalcEdit }

constructor TwwCustomCalcEdit.Create( aOwner: TComponent );
begin
  inherited Create( aOwner );
  fResult := 0;
  MaxLength := 20;
  WantReturns := True;
  FCalcOptions := TwwPopupCalcOptions.Create(Self);
end;

procedure TwwCustomCalcEdit.CreateWnd;
begin
  inherited;
end;

destructor TwwCustomCalcEdit.Destroy;
begin
  FCalcOptions.Free;
  if wwCalcHook<>0 then begin
     UnhookWindowsHookEx(wwCalcHook);
     wwCalcHook:= 0;
  end;

  inherited Destroy;
end;

function TwwCustomCalcEdit.IsBinaryOperator(Key:Char): boolean;
begin
  Result := Key in ['+','-','*','/','%','^','='];
end;

function TwwCustomCalcEdit.IsUnaryOperator(Key:Char): boolean;
begin
  Result := Key in ['@','#','r','n','l',';','!'];
end;

function TwwCustomCalcEdit.IsValidOperator(Key:Char): boolean;
begin
  Result := IsBinaryOperator(Key) or IsUnaryOperator(Key) or
            (Key in ['p']);
end;

procedure TwwCustomCalcEdit.ResetCalculator;
begin
  fResult := 0.0;
  Text:='';
  FLastOperator := char(#0);
  FLastOperand := 0;
  FLastOperatorEquals:= False;
  FClearOnNextKey := False;
  FDecimalEntered := False;
end;

procedure TwwCustomCalcEdit.KeyDown(var Key: Word; Shift: TShiftState);
var curvalue:Double;
begin
  inherited KeyDown(Key, Shift);
  if (key=vk_Delete) or (key=vk_escape) then begin
       //Clear the displayed number.
      Text := '0';
      //Treat vk_Escape as C key like the windows calculator.
      //The C key clears the current calculation.
      if (FLastOperator = char(#0)) or (key=vk_Escape) then begin
         ResetCalculator;
      end;
      SelectAll;
      Key := 0;
   end;
   //Handle Memory Keys....
   if not (ssCtrl in Shift) or (Text = '') then exit;
   try
     curValue := StrToFloat(Text);
   except
     curValue := 0;
   end;
   if (ssCtrl in Shift) and ((key = ord('M')) or (key=ord('m'))) then
      FMemoryValue := curValue;
   if (ssCtrl in Shift) and ((key = ord('L')) or (key=ord('l'))) then
     FMemoryValue := 0.0;
   if (ssCtrl in Shift) and ((key = ord('P')) or (key=ord('p'))) then
     FMemoryValue := FMemoryValue + CurValue;
   if (ssCtrl in Shift) and ((key = ord('R')) or (key=ord('r'))) then
   begin
     Text := FloatToStr(FMemoryValue);
   end;
end;


procedure TwwCustomCalcEdit.KeyPress(var Key: Char);
  function IsValidDigit(Key:Char): boolean;
  begin
      Result := (key in ['0'..'9',',','.'])
                or ((ord(key) >= VK_NUMPAD0) and (ord(key) <= VK_NUMPAD9));
  end;

  function IsValidCalcChar(Key:Char): boolean;
  begin
     result:= isValidDigit(Key) or (key=#13) or
              (key = #8) or (key=#46) or (Key=#27) or
              isValidOperator(Key)
  end;
begin
  inherited KeyPress(Key);

  case Key of
    '.',',':
        if (Key='.') or (Key=',') then begin
           if FClearOnNextKey then ResetCalculator;
           if not FDecimalEntered then begin
              if Text = '' then begin
                 Text := '0'+decimalseparator;
                 SelStart := Length(Text);
                 Key := #0;
              end
              else Key := DecimalSeparator;
              FDecimalEntered := True;
           end
           else begin
              Key := #0;
              Beep;
           end;
        end;
    '0'..'9',#96..#105:
        begin
          if FClearOnNextKey then begin
             if FLastOperatorEquals then ResetCalculator
             else Text := '';
          end;
          FClearOnNextKey := false;
        end;
{    #27,#47:
        begin
           //If a vk_Escape (C) or a vk_delete (CE) was pressed the text needs to be reset to zero.
           //Clear the displayed number.
           Text := '0';
           //Treat vk_Escape as C key like the windows calculator.
           //The C key clears the current calculation.
           if ord(key)=vk_Escape then ResetCalculator;
           SelectAll;
           Key := #0;
        end}
      else
      begin
         if Key=#13 then Key := '=';
         if IsValidOperator(Key) then begin
            if not isDroppedDown then DropDOwn;
            Compute(Key);
            if Key='=' then SelectAll;//SelStart := Length(Text);
            Key := #0;
         end
         else Key := #0;
      end;
   end;
end;

procedure TwwCustomCalcEdit.Compute(OperatorKey:Char);
var
  Value : Double;
  flag: boolean;
  i:integer;
begin
  if Text = '' then
  begin
     Value := 0;
     exit;
  end;

  try
     Value := StrToFloat( Text );
  except
     Value := 0.0;
  end;

  if isBinaryOperator(OperatorKey) then
  begin
    if FClearOnNextKey and ((OperatorKey<>'=') and (ord(OperatorKey)<>vk_return))then
    begin
      FLastOperator := OperatorKey;
      FLastOperatorEquals:= False;
    end
    else //Equals pressed.
    begin
      if not fLastOperatorEquals then flastoperand := Value;
      flag := true;
      try
        if OperatorKey='%' then fResult := (fResult * flastoperand)/100.0
        else begin
          case FLastOperator of
            '*': fResult := fResult * flastoperand;
            '/': begin
                   if flastoperand <> 0 then
                      fResult := fResult / flastoperand
                   else begin Text := 'Error';
                      flag := False;
                   end;
                 end;
            '+': fResult := fResult + flastoperand;
            '-': fResult := fResult - flastoperand;
            '^': fResult := Power(fResult,flastoperand);
          else
            flag := false;
            FLastOperator := '=';
          end;
        end;
      except
         ResetCalculator;
         Text := 'Error';
         exit;
      end;
      FClearOnNextKey := true;
      if flag then
         Text := FloatToStr(fResult)
      else fResult := Value;
      if ((OperatorKey<>'=') and (ord(OperatorKey)<>vk_return)) then FLastOperator := OperatorKey
      else FLastOperatorEquals:= True;
    end;
  end
  else begin
    case OperatorKey of
      ^M : FMemoryValue := Value;
      '@' : fResult := Sqr(Value);
      'r' : fResult := 1 / Value;
      '#' : fResult := Power(Value,3);
      'n' : fResult := ln(Value);
      'l' : fResult := log10(Value);
      '!' : begin
              fResult := 1;
              for i:= 1 to trunc(Value) do
                 fResult := fResult*i;
            end;
      ';' : fResult := Trunc(Value);
    end;
    Text := FloatToStr(fResult);
   end;
end;

function TwwCustomCalcEdit.GetValue: Double;
begin
  Result := StrToFloat( Text );
end;

{procedure TwwCustomCalcEdit.ToggleSign;
begin
  if Text[ 1 ] = CH_MINUS then Text := Copy( Text, 2, Length( Text ))
  else Text := CH_MINUS + Text;
end;
 }
procedure TwwCustomCalcEdit.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.Style :=(Params.Style and not (ES_AUTOVSCROLL or ES_WANTRETURN) or
                   WS_CLIPCHILDREN);
  if UseRightToLeftAlignment or LimitEditRect then
    Params.Style:= Params.Style or ES_MULTILINE;
end;

function TwwCustomCalcEdit.IsDroppedDown: Boolean;
begin
  result := (fDropDownCalc<>nil) and fDropDownCalc.Visible;
end;

procedure TwwCustomCalcEdit.CMCancelMode(var Message: TCMCancelMode);
var
  F: THandle;
  sb:TSpeedButton;
begin
  if (Message.Sender <> Self) and (Message.Sender <> fDropDownCalc) and
     (Message.Sender <> Button) and (Message.Sender.Parent <> fDropDownCalc) then
    CloseUp(True);
end;

procedure TwwCustomCalcEdit.WMKillFocus(var Message: TWMKillFocus);
{begin
  inherited;
  if fDropDownCalc.HandleAllocated and
     (Message.FocusedWnd <> fDropDownCalc.Handle) then
    CloseUp(True);
 }
var
  F: THandle;
  sb:TSpeedButton;
begin
  inherited;
  CloseUp(True);
  exit;
  F := GetFocus;
  sb:= TwwCustomCalcEdit(self).Button;
  if ((fDropDownCalc <> nil) and ( F <> fDropDownCalc.Handle ))
      and ( F <> Handle )and
     ( F <> sb.parent.Handle ) then
    CloseUp(True);
end;

//end;

procedure TwwCustomCalcedit.DropDown;
var
  P: TPoint;
  X, Y: Integer;
  WinAttribute: HWnd;
  ListBoxWidth, ListBoxHeight: integer;

  function GetDeskTopHeight:Integer;
     var Rect1:TRect;
  begin
      if SystemParametersInfo(SPI_GETWORKAREA,0,@Rect1,0) Then
         GetDeskTopHeight:=Rect1.Bottom-Rect1.Top
      else
         GetDeskTopHeight:=Screen.Height;
  end;
begin
  if (fDropDownCalc <> nil) then exit;

  if wwCalcHook=0 then
      wwCalcHook := SetWindowsHookEx(WH_MOUSE, @wwCalcHookProc, HINSTANCE, GetCurrentThreadID);

  fDropDownCalc := TwwCalcPanel.Create(self);
  fDropDownCalc.Visible := False;
  fDropDownCalc.Height := 175;
  fDropDownCalc.Width := 250;
  fDropDownCalc.Parent := Self;

  if CalcOptions.background <> nil then begin
     fDropDownCalc.BackgroundBitmapDrawStyle := CalcOptions.BackgroundStyle;
     fDropDownCalc.BackgroundBitmap.Assign(CalcOptions.Background);
  end;
  fDropDownCalc.PanelColor := CalcOptions.PanelColor;
  fDropDownCalc.Options := CalcOptions.Options;
  fDropDownCalc.ButtonMargin := CalcOptions.ButtonMargin;

  P := Parent.ClientToScreen(Point(Left, Top));
  Y := P.Y + Height - 1;
  if BorderStyle = bsNone then y:= y + 1;

  { 11/28/2000 - PYW - Check based on actual work area. }
   if Y + fDropDownCalc.Height > GetDeskTopHeight then Y := P.Y - fDropDownCalc.Height;

   { 4/1/97 - Expand list to left since it goes past edge of screen }
   X := P.X ;
   if P.X + fDropDownCalc.Width >= Screen.Width then X := P.X + Width - 1 - fDropDownCalc.Width;

   try
//      DoDropDown;
   except
      exit;
   end;

   { 3/13/97 - Always Top so that drop-down is not hidden under taskbar}
   WinAttribute:= HWND_TOPMOST;
   SetWindowPos(fDropDownCalc.Handle, WinAttribute, X, Y, 0, 0,
     SWP_NOSIZE or SWP_NOACTIVATE or SWP_SHOWWINDOW);

   fDropDownCalc.visible:= true;
   Windows.SetFocus(Handle);

{   if not inAutoDropDown then DoSelectAll;
   if Editable then ShowCaret(Handle);

   LastShowHint:= ShowHint;
   ShowHint:= False;
   Invalidate;      }

end;

{procedure TwwCustomCalcEdit.SetCalcOptions(Value: TwwPopupCalcOptions);
begin
  if FCalcOptions <> Value then
    FCalcOptions := Value;
end;}

procedure TwwCustomCalcEdit.CloseUp(Accept: Boolean);
begin
  try
    if fDropDownCalc = nil then exit
    else begin
      fDropDownCalc.Visible := False;
 SetWindowPos(fDropDownCalc.Handle, 0, 0, 0, 0, 0, SWP_NOZORDER or
      SWP_NOMOVE or SWP_NOSIZE or SWP_NOACTIVATE or SWP_HIDEWINDOW);
      fDropDownCalc.Free;
      fDropDownCalc := nil;
      SetFocus;
     if wwCalcHook<>0 then
     begin
       UnhookWindowsHookEx(wwCalcHook);
       wwCalcHook:= 0;
     end;
    end;

    SelectAll;
    if IsDroppedDown then
    begin
//      SetWindowPos(fDropDownCalc.Handle, 0, 0, 0, 0, 0, SWP_NOZORDER or
  //      SWP_NOMOVE or SWP_NOSIZE or SWP_NOACTIVATE or SWP_HIDEWINDOW);

    //  Invalidate;
      if fDropDownCalc.Focused or fDropDownCalc.ResultEdit.Focused then SetFocus;
      fDropDownCalc.Visible := False;
      fDropDownCalc.Free;
//      if Assigned(FOnCloseUp) then FOnCloseUp(self, Accept);
    end;
  finally
     if wwCalcHook<>0 then
     begin
       UnhookWindowsHookEx(wwCalcHook);
       wwCalcHook:= 0;
     end;
  end;

end;



procedure Register;
begin
  RegisterComponents('Samples', [TwwCustomCalcEdit]);
end;

end.
