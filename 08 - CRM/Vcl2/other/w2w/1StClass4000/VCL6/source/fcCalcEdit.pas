unit fcCalcEdit;
{
//
// Components : TfcCalcEdit
//
// Copyright (c) 2001 by Woll2Woll Software
//
// Changes:
// 10/01/2001-Added check to see if current value is 0 then start text with 0 followed by decimal
//            Added OnMouseEnter/OnMouseLeave events.  Added OnSetCalcButtonAttributes event.
//            published AutoSize,Anchors,Constraints properties.
//            Also added AllowNull property. Handled WMPaste and WMCut.
// 10/04/2001-Added Alignment and DisplayFormat property and fixed some text display issues.
// 12/12/2001-Handle additional Decimal cases when cboShowDecimal in Options.
// 1/21/2002 - Color not set when control loses focus.
// 2/28/2002 - Handle Decimal cases when selecting text or when backspacing so as to allow decimals.
// 3/1/2002 - Fixed some display problems when setting value at runtime.
// 3/1/2002 - Enabled Inplace Edit so that end-user can modify an existing number.  Modified behavior to
//            paint focused text without special formatting characters for ease of calculation and natural
//            use by end-user.  ClearOnNextKey flag use eliminated.
// 3/1/2002-PYW-Use new function to handle num pad keys in windows 98.
// 3/11/2002 - PYW - Handle Null Case in new DataChange procedure.
}

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Buttons, Forms, Dialogs,
  StdCtrls, math, extctrls, fccombo, fccommon, fcCalculator, db;

type
  TfcCustomCalcEdit = class;

  TfcPopupCalcOptions = class(TPersistent)
  private
    FBackground:TPicture;
    FBackGroundStyle: TfcCalcBitmapDrawStyle;
    FMargin:integer;
    FOptions: TfcCalcOptions;
    FPanelColor:TColor;
    procedure SetBackgroundStyle(Value: TfcCalcBitmapDrawStyle);
    procedure SetOptions(Value: TfcCalcOptions);
    procedure SetMargin(Value: Integer);
    procedure SetPanelColor(Value: TColor);
  public
    constructor Create(AOwner: TComponent);
    destructor Destroy; override;
  protected
    procedure SetBackgroundBitmap(Value: TPicture); virtual;
  published
    property Background:TPicture read FBackground write SetBackGroundBitmap;
    property BackgroundStyle: TfcCalcBitmapDrawStyle read FBackgroundStyle write SetBackgroundStyle;
    property ButtonMargin: integer read FMargin write SetMargin default 3;
    property Options: TfcCalcOptions read FOptions write SetOptions default [cboHideEditor];
    property PanelColor: TColor read FPanelColor write SetPanelColor default clBtnFace;
  end;

  TfcCalcPanel = class(TfcCalculator)
  private
    FAssociatedEdit:TfcCustomCalcEdit;
  protected
    procedure CreateParams(var Params: TCreateParams); override;
    procedure CreateWnd; override;
    procedure Keypress(var Key: Char); override;
//    procedure MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
  public
    procedure DoCalc(ButtonType:TfcCalcButtonType); override;
    constructor Create(AOwner: TComponent); override;
    property AssociatedEdit:TfcCustomCalcEdit read FAssociatedEdit write FAssociatedEdit;
  end;

  TfcCalcAttributesEvent = procedure (Sender: TfcCustomCalcEdit;
    var AType:TfcCalcButtonType;
    var ACaption:String;
    var AFontColor:TColor;
    var AButtonColor:TColor;
    var AHint:String) of object;


  TfcCustomCalcEdit = class(TfcCustomCombo)
  private
    FAlignment: TAlignment;
    FDisplayFormat:String;
    FDecimalPlacesStored:integer;
    FDropDownCalc:TfcCalcPanel;
    FClearOnNextKey: boolean;
    FAllowNull: boolean;
    FCalcOptions : TfcPopupCalcOptions;
    FOnCalcButtonAttributes: TfcCalcAttributesEvent;
    FOnBeforeDropDown: TNotifyEvent;

    FSkipTextChangedFlag:boolean;
    FDecimalEntered:boolean;
    procedure CMCancelMode(var Message: TCMCancelMode); message CM_CANCELMODE;
    procedure WMCut(var Message: TMessage); message WM_CUT;
    procedure WMPaste(var Message: TMessage); message WM_PASTE;
    procedure CMTextChanged(var Message: TMessage); message CM_TEXTCHANGED;
    procedure CMEnter(var Message: TCMEnter); message CM_ENTER;
  protected
    function GetValue: Double; virtual;
    procedure SetValue(Value:Double); virtual;
    procedure Paint; override;
    function GetEditRect: TRect; override;

    function IsValidOperator(Key: Char): boolean; virtual;
    function IsUnaryOperator(Key:Char):boolean; virtual;
    function IsBinaryOperator(Key:Char):boolean; virtual;
    procedure CreateParams(var Params: TCreateParams); override;
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure KeyUp(var Key: Word; Shift: TShiftState); override;
    procedure KeyPress(var Key: Char); override;
    procedure DoEnter; override;
    procedure DoExit; override;
    procedure DoBeforeDropDown; virtual;
    procedure UpdateData(Sender: TObject); override;
    procedure DataChange(Sender: TObject); override;

    // abstract methods
    function SkipInheritedPaint : boolean; override;
    function GetAlignment: TAlignment; virtual;
    function GetDropDownControl: TWinControl; override;
    function GetDropDownContainer: TWinControl; override;
    function GetItemCount: Integer; override;
    function GetItemSize: TSize; override;
    procedure PaintToCanvas(Canvas: TCanvas; Rect: TRect; Highlight, GridPaint: Boolean;
      aText: string); override;
//    function GetPanel: TfcCalcPanel;
    property DecimalEntered : boolean read FDecimalEntered write FDecimalEntered;
    property SkipTextChangedFlag: boolean read FSkipTextChangedFlag write FSkipTextChangedFlag;
  public
    property Panel:TfcCalcPanel read fDropDownCalc write fDropDownCalc;
    constructor Create( AOwner: TComponent ); override;
    destructor Destroy; override;
    procedure Loaded; override;
    procedure CreateWnd; override;
    //MAKE DoCloseUp and DoDropDown events.
    procedure CloseUp(Accept: Boolean); override;
    procedure DropDown; override;
    function IsDroppedDown: Boolean; override;
    procedure DoCalcButtonAttributes(Calc: TfcCalculator;var AType:TfcCalcButtonType;
      var ACaption:String; var AFontColor:TColor; var AButtonColor:TColor; var AHint:String); virtual;
    function GetDisplayText(AText:String):string; virtual;
    procedure ResetCalculator; virtual;

    property Alignment : TAlignment read GetAlignment write FAlignment default taRightJustify;
    property DisplayFormat : string read FDisplayFormat write FDisplayFormat;
    property DecimalPlacesStored : integer read FDecimalPlacesStored write FDecimalPlacesStored;
    property Value: Double read GetValue write SetValue;
    property CalcOptions: TfcPopupCalcOptions read FCalcOptions write FCalcOptions;
    property AllowNull: boolean read FAllowNull write FAllowNull default False;
    property OnSetCalcButtonAttributes:TfcCalcAttributesEvent read FOnCalcButtonAttributes write FOnCalcButtonAttributes;
    property OnBeforeDropDown: TNotifyEvent read FOnBeforeDropDown write FOnBeforeDropDown;
  end;

  TfcCalcEdit = class(TfcCustomCalcEdit)
  published
    property DisableThemes;

    property CalcOptions;
    {$ifdef fcDelphi4Up}
    property Anchors;
    property Constraints;
    {$endif}
    property AutoSelect;
    property AutoSize;
    property BorderStyle;
    property ButtonEffects;
    property ButtonGlyph;
    property ButtonStyle;
    property ButtonWidth;
    property Color;
    property Ctl3D;
    property DataField;
    property DataSource;
    property DisplayFormat;
    property DragCursor;
    property DragMode;
    property Enabled;
    property Font;
    property Frame;
    property ImeMode;
    property ImeName;
    property InfoPower;
    property MaxLength;
    property ParentColor;
    property ParentCtl3D;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ReadOnly;
    property OnSetCalcButtonAttributes;
    property ShowButton;
    property ShowHint;
    property TabOrder;
    property TabStop;
    property Text;
    property Visible;
    property OnBeforeDropDown;
    property OnChange;
    property OnClick;
    {$ifdef fcDelphi5Up}
    property OnContextPopup;
    {$endif}
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
    property OnMouseEnter;
    property OnMouseLeave;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnStartDrag;
  end;

//procedure Register;

implementation

{procedure TfcCalcPanel.Compute(Sender: TObject);
var
 ch: char;
 ButtonType: TfcCalcButtonType;
begin
  ButtonType := TfcCalcButtonType(TSpeedButton(Sender).Tag);
  case ButtonType of
    bt0..bt9:   ch := TSpeedButton(Sender).Caption[1];
    btDecimal:  ch := '.';
    btPlusMinus: ;
    btClearAll:
      ch := 'C'; //char(vk_escape);
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
 }

procedure TfcCalcPanel.Keypress(var Key: Char);
begin
  inherited Keypress(Key);
end;

    constructor TfcPopupCalcOptions.Create(AOwner: TComponent);
    begin
      FBackground := TPicture.Create;
      FMargin := 3;
      FOptions := [];
      FPanelColor := clBtnFace;
    end;

    destructor TfcPopupCalcOptions.Destroy;
    begin
      if FBackGround <> nil then begin
         FBackground.Free;
         FBackground := nil;
      end;
      inherited;
    end;

    procedure TfcPopupCalcOptions.SetBackgroundBitmap(Value: TPicture);
    begin
      FBackground.assign(Value);
    end;

    procedure TfcPopupCalcOptions.SetBackgroundStyle(Value: TfcCalcBitmapDrawStyle);
    begin
      if Value<>FBackgroundStyle then begin
         FBackgroundStyle:= Value;
      end;
    end;

    procedure TfcPopupCalcOptions.SetOptions(Value: TfcCalcOptions);
    begin
      if Value<>FOptions then begin
         FOptions:= Value;
      end;
    end;

    procedure TfcPopupCalcOptions.SetPanelColor(Value: TColor);
    begin
      if Value<>FPanelColor then begin
         FPanelColor:= Value;
      end;
    end;

    procedure TfcPopupCalcOptions.SetMargin(Value: Integer);
    begin
      if Value<>FMargin then begin
         FMargin := Value;
      end;
    end;

procedure TfcCalcPanel.DoCalc(ButtonType:TfcCalcButtonType);
begin
  if FAssociatedEdit.EditCanModify then
  begin
     inherited DoCalc(buttonType);
     FAssociatedEdit.SetModified(True);
     if (cboCloseOnEquals in Options) and (ButtonType=btEquals) then begin
       self.update;
       FAssociatedEdit.Closeup(False);
       abort; //!!!!
     end;
  end;
end;

procedure TfcCalcPanel.CreateParams(var Params: TCreateParams);
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

constructor TfcCalcPanel.Create(AOwner: TComponent);
begin
   inherited Create(AOwner);
   FAssociatedEdit := TfcCustomCalcEdit(AOwner);
   ControlStyle := ControlStyle + [csReplicatable];
   ControlStyle := ControlStyle + [csNoDesignVisible];
   ControlStyle := ControlStyle + [csReflector];
   Color := clBtnFace;
//   Height := 175;
//   Width := 250;
end;

procedure TfcCalcPanel.CreateWnd;
begin
  inherited CreateWnd;
  Windows.SetParent(Handle, 0);
end;

{ TfcCustomCalcEdit }

constructor TfcCustomCalcEdit.Create( aOwner: TComponent );
begin
  inherited Create( aOwner );
  MaxLength := 20;
//  WantReturns := True;
  FCalcOptions := TfcPopupCalcOptions.Create(Self);
  FAllowNull := False;
  FAlignment := taRightJustify;
  FDecimalEntered := False;
  Text:='';
end;

procedure TfcCustomCalcEdit.CreateWnd;
begin
  inherited;
end;

procedure TfcCustomCalcEdit.Loaded;
var f:extended;
begin
  inherited;
  try
    if Text='' then abort;
    f:= fcStrToRealDef(Text,0.0)
  except
    f:=0.0;
  end;

  if (AllowNull = False) and ((Text = '') or (f=0.0)) then begin
     if cboShowDecimal in CalcOptions.Options then
        Text := '0'+decimalseparator
     else Text := '0';
  end;
end;

destructor TfcCustomCalcEdit.Destroy;
begin
  inherited Destroy;
  FCalcOptions.Free;
end;

function TfcCustomCalcEdit.IsBinaryOperator(Key:Char): boolean;
begin
  Result := Key in ['+','-','*','/','%','^','='];
end;

function TfcCustomCalcEdit.IsUnaryOperator(Key:Char): boolean;
begin
  Result := Key in ['@','#','r','n','l',';','!','_'];
end;

function TfcCustomCalcEdit.IsValidOperator(Key:Char): boolean;
begin
  Result := IsBinaryOperator(Key) or IsUnaryOperator(Key) or
            (Key in ['m','p']);
end;

procedure TfcCustomCalcEdit.DoEnter;
begin
  inherited;
//  FClearOnNextKey := True;
  if (Alignment <> taRightJustify) or ((DataLink=nil) or (DataLink.Field = nil))
  then begin
    invalidate;
  end;

  if AutoSelect then selectall
  else selStart := Length(Text);
end;

procedure TfcCustomCalcEdit.DoBeforeDropDown;
begin
  if Assigned(FOnBeforeDropDown) then FOnBeforeDropDown(Self);
end;

procedure TfcCustomCalcEdit.DoExit;
begin
    inherited;
    if (Alignment <> taRightJustify) or ((DataLink=nil) or (DataLink.Field = nil)) then invalidate;
//  FClearOnNextKey := True;

    FDecimalEntered := False;
end;

procedure TfcCustomCalcEdit.ResetCalculator;
begin
  if (AllowNull = False) then begin
     if cboShowDecimal in CalcOptions.Options then
        Text := '0'+decimalseparator
     else Text := '0';
  end
  else Text:='';

//  FClearOnNextKey := True;
  FDecimalEntered := False;
  FSkipTextChangedFlag := False;
end;

procedure TfcCustomCalcEdit.CMTextChanged(var Message: TMessage);
begin
   if FSkipTextChangedFlag then exit;
   inherited;
end;

procedure TfcCustomCalcEdit.KeyUp(var Key: Word; Shift: TShiftState);
begin
  inherited KeyUp(Key, Shift);

  if FDropDownCalc <> nil then begin
     FDropDownCalc.ResultKeyUp(FDropDownCalc,Key,Shift);
  end
  else begin
    //10/1/2001-Added code to determine whether text can be cleared or not.
    if (AllowNull = False) and (Text = '') then begin
      FSkipTextChangedFlag := True;
      if cboShowDecimal in CalcOptions.Options then Text := '0'+decimalseparator
      else Text := '0';
      FSkipTextChangedFlag := False;
      SelectAll;
    end;
  end;
end;

procedure TfcCustomCalcEdit.KeyDown(var Key: Word; Shift: TShiftState);
var c:Char;

  function IsValidDigit(Key:Char): boolean;
  begin
      Result := (key in ['0'..'9',',','.'])
                or (((ord(key) >= VK_NUMPAD0) and (ord(key) <= VK_NUMPAD9)) or (ord(key)=VK_DECIMAL));
  end;
  function IsValidSpecialChar(Key:Word): boolean;
  begin
      Result := (key=vk_back) or (key=vk_delete) or (key=vk_escape);
  end;
begin
  if FClearOnNextKey and (key in [vk_next,vk_prior,vk_left,vk_right,vk_up,vk_down,vk_f2]) then begin
     if (not (fcIsInwwGrid(Self)) and (not isDroppedDown)) then key:=0;
  end;

  inherited KeyDown(Key, Shift);

  c:=char(Key);
  if Key=vk_Return then
    c := '='
  else if isDroppedDown and (IsValidSpecialChar(Key)) then begin
    if FDropDownCalc <> nil then
       FDropDownCalc.ResultKeyDown(FDropDownCalc,key,shift);
  end
  else begin
    //Code := MapVirtualKey(Key, 2);
    //c:=char(code);
    // 3/1/2002-PYW-Use new function to handle num pad keys in windows 98.
    c := fcMessageCodeToChar( key );
    if c='R' then c:='r'
    else if c='M' then c:='m'
    else if c='P' then c:='p'
    else if (ssShift in Shift) then begin
      case c of
        '=':c:='+';
        '2':c:='@';
        '5':c:='%';
        '8':c:='*';
        '-':c:='_';
      end;
    end;
  end;

  if IsValidOperator(c) or (isValidDigit(c) and isDroppedDown) then begin
     if not isDroppedDown and not ((c='=') and (cboCloseOnEquals in CalcOptions.Options) ) then begin
        if (Text <> '') then begin
          DropDown;
          if (FDropDownCalc <> nil) then begin
             FDropDownCalc.ResultKeyDown(FDropDownCalc,Key,Shift);
             sleep(100);
             FDropDownCalc.ResultKeyUp(FDropDownCalc,Key,Shift);
          end;
        end;
//        FClearOnNextKey := True;
     end
     else begin
       // 2/28/2002-PYW-Make sure calculator gets the equals.  Otherwise in some cases
       //              the clearonnextkey flag in the calculator can get mismatched.
       if (c='=') and (cboCloseOnEquals in CalcOptions.Options) then
       begin
          if not isDroppedDown then SelectAll
          else CloseUp(True)
       end
       else if {((c<>'='))and }(FDropDownCalc <> nil) then
           FDropDownCalc.ResultKeyDown(FDropDownCalc,Key,Shift);

{       if (c='=') then begin
          SelectAll;//SelStart := Length(Text);
          if (cboCloseOnEquals in CalcOptions.Options) then CloseUp(True)
          else begin
             if (FDropDownCalc <> nil) and (Text <> '') then begin
               if ((not FDropDownCalc.LastOperatorEquals)
                 and (FDropDownCalc.LastOp <> btNone)) then begin
                 key := vk_return;
                 FDropDownCalc.ResultKeyDown(FDropDownCalc,key,[]);
               end;
             end;
          end;
       end;}
     end;

     Key := 0;
  end;
(*  if {(key=vk_Delete) or} (key=vk_escape) then begin
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
   *)
end;


procedure TfcCustomCalcEdit.KeyPress(var Key: Char);
var temp:string;
    prevselstart,startlength:integer;
    testfloat:Extended;
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
  function DecimalInStr: boolean;
  begin
    result := false;
    if Pos(DecimalSeparator,Text)>0 then
       result := true;
  end;

    function getfstr(val:extended):string;
    var s,fmtstr:string;
          i,places:integer;
    begin

        if Frac(val)=0 then //(Val - Trunc(Val)) = 0.0 then
           result := FormatFloat('#,##0',Val)
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
    end;

begin
  inherited KeyPress(Key);

  //2/28/2002 - Clear DecimalEntered if Text Selected.
  if SelLength > 0 then
  begin
     FDecimalEntered := False;
     if (key<>#13) and ((cboCloseOnEquals in CalcOptions.Options) and (key<>'=')) then SelText:='';  //8/15/2002
  end;

  //8/15/2002 - Make sure FDecimalEntered is False if there is no Decimal in the String.
  if not DecimalInStr then
     FDecimalEntered := False;

  if isDroppedDown then begin
    if (Key<>#0) then SetModified(True) { RSW };
    key:=#0;
    exit;
  end;

  case Key of
    '.',',':
        if (Key='.') or (Key=',') then begin
           if FClearOnNextKey then begin
              FSkipTextChangedFlag := True;
              Text:='';
              FSkipTextChangedFlag := False;
              FClearOnNextKey := False;
              FDecimalEntered := False;
           end;
            //10/01/2001-Added check to see if current value is 0 then start text with 0 followed by decimal
           if (not FDecimalEntered) {or (not DecimalInStr)} or (fcstrtofloat(text) = 0.0) then begin
              FDecimalEntered := True;
              if (Text = '') or (fcstrtofloat(text) = 0.0) then begin
                 Text := '0'+decimalseparator;
                 SelStart := Length(Text);
                 Key := #0;
              end
              else begin
                 if not Decimalinstr then Key := DecimalSeparator
                 else begin
                    selstart := Length(Text);
                    Key:=#0;
                 end;

                 if False and  (cboDigitGrouping in CalcOptions.Options) then begin
                     prevselstart:=selstart;
                     temp := Copy(Text,1,selstart)+Key+Copy(Text,selstart+sellength+1,length(text)-(selstart+SelLength));
                     FSkipTextChangedFlag := True;
                     if not ((DecimalInStr) and ((Key = '0') or (Key=#96))) then begin
                        startlength := length(Temp);
                        Text := getfstr(fcStrToFloat(Temp))
                     end
                     else Text := Text+'0';
                     SetModified(True);

                     SelStart := prevselstart+1;//length(Text);

                     if startlength <> length(Text) then selstart := selstart+1;

                     FSkipTextChangedFlag := False;
                     Key:=#0;
                 end
              end;
           end
           else begin
              Key := #0;
              Beep;
           end;
        end;
    #8: begin
            if (cboDigitGrouping in CalcOptions.Options) then begin
               prevselstart:=selstart;
               temp := Copy(Text,1,selstart-1)+Copy(Text,selstart+sellength+1,length(text)-(selstart+SelLength));
               FSkipTextChangedFlag := True;
               if (AnsiPos(DecimalSeparator,Temp)> 0) and
                  (AnsiPos(DecimalSeparator,Temp)< selstart) then Text := Temp
               else begin
                  Text := getfstr(fcStrToFloat(temp));
                  DecimalEntered := False;
               end;

               FSkipTextChangedFlag := True;
               SelStart := prevSelStart-1;
               if SelStart=0 then selstart := 1;
               SetModified(True);
               Key:=#0;
            end;
            //2/28/2002 - PYW - Add checks to make sure FDecimalEntered is cleared.
            if (sellength=0) and (Copy(Text,Length(Text),1) = DecimalSeparator) then
               FDecimalEntered := False;

            if (not (DecimalinStr)) then begin
              if (cboShowDecimal in CalcOptions.Options) then begin
                Text := Text+DecimalSeparator;
                selstart:=Length(Text)-1;
              end;
              FDecimalEntered := False;
            end;
        end;
{    #46:begin
            if True or (cboGrouping in CalcOptions.Options) then begin
               prevselstart:=selstart;
               temp := Copy(Text,1,selstart)+Copy(Text,selstart+sellength+1,length(text)-(selstart+SelLength));
               FSkipTextChangedFlag := True;
               Text := getfstr(fcStrToFloat(temp));
               FSkipTextChangedFlag := True;
               SelStart := prevSelStart;
               SetModified(True);
               Key:=#0;
            end
        end;}
    '0'..'9':
        begin
            if FClearOnNextKey then begin
               FSkipTextChangedFlag := True;
               Text := '';
               FDecimalEntered := False;
               FSkipTextChangedFlag := False;
            end;
            FClearOnNextKey := false;
            if (cboDigitGrouping in CalcOptions.Options) then begin
               prevselstart:=selstart;
               temp := Copy(Text,1,selstart)+Key+Copy(Text,selstart+sellength+1,length(text)-(selstart+SelLength));

               if not fcStrToFloat2(temp, testFloat,'') then begin
                 Key:=#0;
                 exit;
               end;

               FSkipTextChangedFlag := True;
               //12/12/2001-Handle additional Decimal cases when cboShowDecimal in Options.
               if ((cboShowDecimal in CalcOptions.options)and not DecimalEntered) then begin
                  if (selstart = length(Text)) and (DecimalSeparator = Copy(Text,selstart,1)) then begin
                    Text := Text+Key;
                    startlength:=length(Temp);
                  end
                  else begin
                    startlength := length(Temp);
                    Text := getfstr(fcStrToFloat(Temp))
                  end;
               end
               else if (not ((DecimalInStr) and ((Key = '0') or (Key=#96)))) then begin
                  startlength := length(Temp);
                  Text := getfstr(fcStrToFloat(Temp))
               end
               else begin
                  Text := Text+'0';
                  startlength:=length(Temp);
               end;
               SetModified(True);

               SelStart := prevselstart+1;//length(Text);

               if startlength <> length(Text) then selstart := selstart+1;
               FSkipTextChangedFlag := False;
               Key:=#0;
            end;
            if (not (DecimalinStr)) then begin
              FDecimalEntered := False;
              if (cboShowDecimal in CalcOptions.Options) then begin
                Text := Text+DecimalSeparator;
                selstart:=Length(Text)-1;
              end;
            end;
         end;
{    'C': // Clear on 'C' character
//    #27,#47:
        begin
           //If a vk_Escape (C) or a vk_delete (CE) was pressed the text needs to be reset to zero.
           //Clear the displayed number.
           ResetCalculator;
           Text := '0';
           //Treat vk_Escape as C key like the windows calculator.
           //The C key clears the current calculation.
           //if ord(key)=vk_Escape then
           SelectAll;
           Key := #0;
        end}
      else
      begin
         Key:=#0;
      end;
   end;

   if (Key<>#0) then SetModified(True) { RSW };

end;

procedure TfcCustomCalcEdit.SetValue(Value:Double);
    function getfstr(val:extended):string;
    var s,fmtstr:string;
          i,places:integer;
    begin
        if Frac(val)=0 then //(Val - Trunc(Val)) = 0.0 then
           result := FormatFloat('#,##0',Val)
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
    end;
begin
  if GetValue <> Value then begin
     if Focused then begin
        if (cboDigitGrouping in CalcOptions.Options) then
           Text := getfstr(Value)
        else Text := FloatToStr(Value);             // Maybe use ---> s:= FormatFloat('#.################', Val);
     end
     else begin
//        Text := FormatFloat(displayFormat,value);
        Text := FormatFloat('',value);
     end;
  end;
end;

function TfcCustomCalcEdit.GetValue: Double;
begin
  Result := fcStrToFloat( Text );
end;

procedure TfcCustomCalcEdit.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.Style :=(Params.Style and not (ES_AUTOVSCROLL or ES_WANTRETURN) or
                   WS_CLIPCHILDREN);
//  if UseRightToLeftAlignment or LimitEditRect then
//  Params.Style:= Params.Style or ES_MULTILINE;
  Params.Style:= Params.Style or ES_WANTRETURN;
  Params.ExStyle := Params.ExStyle or WS_EX_RIGHT;
end;

function TfcCustomCalcEdit.IsDroppedDown: Boolean;
begin
  result := (fDropDownCalc<>nil) and fDropDownCalc.Visible;
end;

procedure TfcCustomCalcEdit.CMCancelMode(var Message: TCMCancelMode);
begin
  if (Message.Sender <> Self) and (Message.Sender <> fDropDownCalc) and
     (Message.Sender <> Button) and (Message.Sender.Parent <> fDropDownCalc) then
    CloseUp(True);
end;

procedure TfcCustomCalcEdit.DropDown;
var
  P: TPoint;
  X, Y: Integer;
  WinAttribute: HWnd;
  f:extended;

  function GetDeskTopHeight:Integer;
     var Rect1:TRect;
  begin
      if SystemParametersInfo(SPI_GETWORKAREA,0,@Rect1,0) Then
         GetDeskTopHeight:=Rect1.Bottom-Rect1.Top
      else
         GetDeskTopHeight:=Screen.Height;
  end;
begin
  DoBeforeDropdown;
  if (fDropDownCalc <> nil) then exit;

{  if wwCalcHook=0 then
      wwCalcHook := SetWindowsHookEx(WH_MOUSE, @wwCalcHookProc, HINSTANCE, GetCurrentThreadID);
 }
  CalcOptions.Options:= CalcOptions.Options + [cboHideEditor{,cboShowDecimal,cboDigitGrouping}];
  fDropDownCalc := TfcCalcPanel.Create(self);
  fDropDownCalc.Visible := False;
  fDropDownCalc.Height := 175;
  fDropDownCalc.OnSetButtonAttributes := DoCalcButtonAttributes;
  if cboSimpleCalc in CalcOptions.Options then
     fDropDownCalc.Width := 148
  else fDropDownCalc.Width := 250;
  fDropDownCalc.Parent := Self;
  FDropDownCalc.CalcEdit := self;

  try
    if Text='' then abort;
    f:= fcStrToFloat(Text);
  except
    f:=0.0;
  end;


  if (f=0.0) or (fdropdowncalc.Text = '') then begin
    if cboShowDecimal in CalcOptions.Options then fDropDownCalc.Text := '0'+decimalseparator
    else fDropDownCalc.Text := '0';
  end;

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
   P.X := P.X+Width-1-FDropDownCalc.width;
   X := P.X;
   if P.X < 0 then X := 0;
   if P.X + fDropDownCalc.Width >= Screen.Width then X := Screen.Width-FDropDownCalc.Width;

   try  //10/15/01 - Uncommented to allow dropdown event to be called.
      Update;
      FDecimalEntered := False;

      DoDropDown;
   except
      exit;
   end;

   { 3/13/97 - Always Top so that drop-down is not hidden under taskbar}
   WinAttribute:= HWND_TOPMOST;
   SetWindowPos(fDropDownCalc.Handle, WinAttribute, X, Y, 0, 0,
     SWP_NOSIZE or SWP_NOACTIVATE or SWP_SHOWWINDOW);

   fDropDownCalc.visible:= true;
   if FDropdownCalc.StatusLabel <> nil then
      FDropDownCalc.StatusLabel.Caption := Text;
   Windows.SetFocus(Handle);
   Windows.HideCaret(Handle); // Don't show care thwne calculator dropped down

{   if not inAutoDropDown then DoSelectAll;
   if Editable then ShowCaret(Handle);

   LastShowHint:= ShowHint;
   ShowHint:= False;
   Invalidate;      }

end;

{procedure TfcCustomCalcEdit.SetCalcOptions(Value: TfcPopupCalcOptions);
begin
  if FCalcOptions <> Value then
    FCalcOptions := Value;
end;}

procedure TfcCustomCalcEdit.CloseUp(Accept: Boolean);
var IsDroppedDown: Boolean;
    key:word;
begin
  if Accept then begin
     if (FDropDownCalc <> nil) and (Text <> '') then begin
        if ((not FDropDownCalc.LastOperatorEquals) {and (FDropDownCalc.LastOp <> btPercent)})
           and (FDropDownCalc.LastOp <> btNone) then begin
          key := vk_return;
          FDropDownCalc.ResultKeyDown(FDropDownCalc,key,[]);
        end;
     end;
  end;
  IsDroppedDown := self.IsDroppedDown;
  inherited;
  if IsDroppedDown then
    try
      if fDropDownCalc = nil then exit
      else begin
        fDropDownCalc.Free;
        fDropDownCalc := nil;
      end;

      DoCloseUp(Accept);
    finally
       SetFocus;
       if Editable then begin
         SelectAll;
         Windows.ShowCaret(Handle);
       end;
    end;
end;

//10/1/2001-PYW-Added handling for WMCut and WMPaste.
procedure TfcCustomCalcEdit.WMCut(var Message: TMessage);
begin
  if not EditCanModify then exit;
  inherited;
  SetModified(True);
  if (AllowNull = False) and (Text = '') then begin
     if cboShowDecimal in CalcOptions.Options then Text := '0'+decimalseparator
     else Text := '0';
     SelectAll;
  end;
end;

procedure TfcCustomCalcEdit.WMPaste(var Message: TMessage);
var prevText: string;
    prevSelStart: integer;
    f:extended;
begin
  PrevText:= Text;
  PrevSelStart:= selStart;
  if not EditCanModify then exit;
  inherited;
  SetModified(True);
  if (selStart=0) then selStart:= prevSelStart + length(Text) - length(PrevText);

  try
    if Text='' then abort;
    f:= fcStrToRealDef(Text,0.0)
  except
    f:=0.0;
  end;

  if (AllowNull = False) and ((Text = '') or (f=0.0)) then begin
     if cboShowDecimal in CalcOptions.Options then Text := '0'+decimalseparator
     else Text := '0';
     SelectAll;
  end;
end;

procedure TfcCustomCalcEdit.DoCalcButtonAttributes(Calc: TfcCalculator;var AType:TfcCalcButtonType;
  var ACaption:String; var AFontColor:TColor; var AButtonColor:TColor; var AHint:String);
begin
  if DropDownControl <> nil then
     if Assigned(FOnCalcButtonAttributes) then
        FOnCalcButtonAttributes(self,AType,ACaption,AFontColor,AButtonColor,AHint);
end;

function TfcCustomCalcEdit.GetAlignment:TAlignment;
begin
  result := FAlignment;
  if (DataLink<> nil) and (DataLink.Field <> nil) then
     result := DataLink.Field.Alignment;
end;

procedure TfcCustomCalcEdit.UpdateData(Sender: TObject);
begin
  if DataLink.Field.Value <> Value then
     DataLink.Field.Value := Value;
end;

function TfcCustomCalcEdit.GetDropDownControl: TWinControl;
begin
   result:= fDropDownCalc
end;

function TfcCustomCalcEdit.GetDropDownContainer: TWinControl;
begin
   result:= fDropDownCalc
end;

function TfcCustomCalcEdit.GetItemCount: Integer;
begin
  result := 0;
end;

function TfcCustomCalcEdit.GetItemSize: TSize;
begin
  result := fcSize(0, 0);
end;

// Added function to compute what text should be displayed based on DisplayFormat.
function TfcCustomCalcEdit.GetDisplayText(AText:String):string;
begin
  if (DataLink<>nil) and (Datalink.Field<>nil) then begin
     if DisplayFormat <> '' then
        result := FormatFloat(DisplayFormat,Datalink.Field.AsFloat)
     else result := Datalink.Field.DisplayText;
  end
  else if (DisplayFormat <> '') then
//     result := FormatFloat(DisplayFormat,fcStrToRealDef(AText,0.0))
     result := FormatFloat(DisplayFormat,fcStrToFloat(AText,DisplayFormat))
  else result := AText;
end;

function TfcCustomCalcEdit.SkipInheritedPaint : boolean;
begin
   result := (not FFocused) or (csPaintCopy in ControlState) or
             (FFocused and (DataLink <>nil) and (Datalink.Field<>nil));
end;


procedure TfcCustomCalcEdit.Paint;
begin
  PaintToCanvas(Canvas, GetClientEditRect, True, False, Text);
end;

//procedure PaintToCanvas(ACanvas: TCanvas; Rect: TRect; Highlight, GridPaint: Boolean;
//      Text: string); override;
procedure TfcCustomCalcEdit.PaintToCanvas(Canvas: TCanvas; Rect: TRect;
  Highlight, GridPaint: Boolean; aText: string);
var OldBkMode: Integer;
    Flags: UINT;
    TempRect:TRect;
    OldBkColor:TColor;

    function GetTextRect:TRect;
    begin
       result := Classes.Rect(Rect.Left + GetLeftIndent + 2,
                              Rect.Top + 2,
                              Rect.Right,Rect.Bottom);
       {$ifdef fcDelphi4Up}
       if fcIsInwwObjectView(self) then begin
          result.Top:= result.Top -1;
          result.Left:= result.Left -1; // 1/29/01
       end;
       {$endif}

      if (not fcIsInwwObjectView(self)) and
         Frame.IsFrameEffective then
      begin
         Frame.GetFrameTextPosition(result.Left, result.top, FFocused);
         result.left:= result.Left + GetLeftIndent + 1;
         if AlignmentVertical = fcavCENTER then result.top:= result.Top -1;
      end
    end;

  function DrawHighlight:boolean;
  begin
     result := ((not Editable and Focused) or fcParentGridFocused(Self));
     if csPaintCopy in ControlState then result:= False;
  end;

  procedure PaintText;
  begin
    flags := DT_TOP or DT_SINGLELINE;
    case Alignment of
      taLeftJustify: Flags := Flags or DT_LEFT;
      taRightJustify:  Flags := Flags or DT_RIGHT;
      taCenter:  Flags := Flags or DT_CENTER;
    end;

    TempRect := GetTextRect;

    temprect.right := Temprect.right-3;  //10/04/2001-????

    if not fcIsInwwGrid(self) then begin
       TempRect.left:= TempRect.left - 1;
       TempRect.Top:= TempRect.Top - 1;
    end
    else if fcIsClass(parent.classtype, 'TwwDBGrid') then
    begin
       if not (dgRowLines in fcGetGridOptions(self)) then TempRect.Top:= TempRect.Top -1;
    end;

    if Frame.IsFrameEffective then begin  //10/04/2001-????
//       temprect.right := Temprect.right+1;
       temprect.top := Temprect.top+1;
    end;

    if fcIsInwwObjectViewPaint(self) or
       (IsTransparentEffective and not FFocused) or fcIsInwwGridPaint(self) then
       SetBkMode(Canvas.Handle, TRANSPARENT)
    else
       SetBkMode(Canvas.Handle, OPAQUE);
    if (not FFocused) and IsTransparentEffective and (Frame.NonFocusTransparentFontColor<>clNone) then
        Canvas.Font.Color:= Frame.NonFocusTransparentFontColor;

    // 8/1/02
    if (not IsTransparentEffective) and (not fcIsInwwGridPaint(self)) then
      if (not FFocused) and (Frame.Enabled) and (Frame.NonFocusColor<>clNone) then
         Canvas.Brush.Color:= Frame.NonFocusColor;

    // 3/1/2002 - Enabled Inplace Edit so that end-user can modify an existing number.  Modified behavior to
    //            paint focused text without special formatting characters for ease of calculation and natural
    //            use by end-user.

    if FFocused and (DataLink<>nil) and (Datalink.Field<>nil) then
        aText := FloatToStr(Value)
    else aText := GetDisplayText(aText);  //10/5/2001-DisplayText based on displayformat

    DrawText(Canvas.Handle,PChar(aText),Length(aText),TempRect,Flags);
  end;

  function PaintCopyOutsideGrid: boolean;
  begin
     result:= not
       ((not fcIsInwwGrid(self)) and (not (csPaintcopy in ControlState)))
  end;

begin
  OldBkColor := GetBkColor(Canvas.Handle);
  OldBkMode := GetBkMode(Canvas.Handle);
  Canvas.Font := Font; { 7/8/99 - Fixes problem where font not set for csPaintCopy }

  if (not enabled) and (color<>clGrayText) then { 3/7/00 - Use disablec color }
     Canvas.font.color:= clGrayText;
  try
     // Draw Highlight rect with focus rect
     if (csPaintCopy in ControlState) or // 1/31/01
        (fcIsInwwGrid(self) and (not Focused or not Highlight)) then
     begin
        if not fcIsInwwGrid(self) then Rect.Right := BtnParent.Left-1;

        // Draw Background in the Highlight color and surround it with a focus rect
        if (not fcIsInwwGrid(self)) or (not GridPaint) then
           Canvas.Brush.Color := fcThisThat(Highlight and (DrawHighlight or Not PaintCopyOutsideGrid), clHighlight, self.Color);

        if (not IsTransparentEffective) and not fcIsInwwObjectViewPaint(self) and
           not (fcIsInwwGridPaint(self)) then Canvas.FillRect(Rect);

        if (not GridPaint) and Highlight and (DrawHighlight or Not PaintCopyOutsideGrid) then
        begin
           SetBkColor(Canvas.Handle, ColorToRGB(clHighlightText));
           SetTextColor(Canvas.Handle, ColorToRGB(clHighlight));
           Canvas.DrawFocusRect(Rect);
        end;

        // Draw the text
        if not fcIsInwwGrid(self) or (not GridPaint) then begin
           SetBkMode(Canvas.Handle, TRANSPARENT);
           SetBkColor(Canvas.Handle, ColorToRGB(fcThisThat(Highlight and (DrawHighlight or Not PaintCopyOutsideGrid), clHighlight, clWindow)));
           SetTextColor(Canvas.Handle, ColorToRGB(fcThisThat(Highlight and (DrawHighlight or Not PaintCopyOutsideGrid), clWindow, Font.Color)));
        end;

        PaintText;
     end
     else if not fcisinwwGrid(Self) and (not FFocused) and
       ((csPaintCopy in ControlState) or True{Frame.IsFrameEffective}) then begin
        Canvas.Brush.Color := Color;  //1/21/2002 - Color not set when control loses focus.
        PaintText;
     end;

     if Frame.IsFrameEffective then
     begin
       DrawFrame(Canvas);
     end;

  finally
     SetBkMode(Canvas.Handle,OldBkMode);
     SetBkColor(Canvas.Handle, OldBkColor);
  end;
end;

function TfcCustomCalcEdit.GetEditRect: TRect;
begin
  result:= inherited GetEditRect;
  if Frame.IsFrameEffective then
     inc(result.right, +1);
end;

// Select all when gettin focus
procedure TfcCustomCalcEdit.CMEnter(var Message: TCMEnter);
begin
  inherited;
{  FSkipTextChangedFlag := True;
  Text := FloatToStr(Value);
  FSkipTextChangedFlag := False;}

  if autoselect then SelectAll;
end;

procedure TfcCustomCalcEdit.DataChange(Sender: TObject);
begin
  if DataLink.Field <> nil then
  begin
    if not (csDesigning in ComponentState) then
    begin
      if (DataLink.Field.DataType = ftString) and (MaxLength = 0) then
        MaxLength := DataLink.Field.Size;
    end;
// 3/1/2002 - Enabled Inplace Edit so that end-user can modify an existing number.  Modified behavior to
//            paint focused text without special formatting characters for ease of calculation and natural
//            use by end-user.
    if Focused and DataLink.CanModify then begin
      if DataLink.Field.Text <> '' then //3/11/2002 - PYW - Handle Null Case in new DataChange procedure.
         Text:=  floatToStr(fcStrToFloat(DataLink.Field.Text ))
      else Text := '';
    end
    else begin
      Text := DataLink.Field.DisplayText;
    end;
  end else
  begin
    if csDesigning in ComponentState then
      Text := Name else
      Text := '';
  end;
end;

{

procedure Register;
begin
  RegisterComponents('Samples', [TfcCustomCalcEdit]);
end;
}
end.
