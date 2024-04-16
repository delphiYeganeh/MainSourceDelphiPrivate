unit KimiyaMaskEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, xpReg,Variants,MaskUtils,mask;
type
{ TCustomMaskEdit }

  EDBEditError = class(Exception);
  TMaskedState = set of (msMasked, msReEnter, msDBSetText);

const
  crcRadius : Byte = 4;


type
//  TBiDiMode = (bdLeftToRight, bdRightToLeft, bdRightToLeftNoAlign, bdRightToLeftReadingOnly);
  TKimiyaMaskEditStyle = (esXP, esFlat);
  TKimiyaMaskEdit = class(TMaskEdit)
  private
    { Private declarations }
    FEditMask: TEditMask;
    FMaskBlank: Char;
    FMaxChars: Integer;
    FMaskSave: Boolean;
    FMaskState: TMaskedState;
    FOldValue: string;

    FParent: TWinControl;
    FCanvas  : TControlCanvas;
    FActive  : Boolean;
    FFocused : Boolean;
    FStyle   : TKimiyaMaskEditStyle;
    FMarginLeft : Word;
    FMarginRight : Word;

    FFrameColor : TColor;
    FErrorColor : TColor;
    FInActFrameColor : TColor;
    FAlignment : TAlignment;
    FBiDiMode: TBiDiMode;
    FParentBiDiMode: Boolean;

    FRoundRadius : Integer;
    FRounded : Boolean;
    FNullable : Boolean;
    FKimiyaIsdate : Boolean;
    FKimiyaIsNumeric : Boolean;
    FKimiyaSpecialChar : String;
    FKimiyaNotTextClear : Boolean;
    FKimiyaFarsiFieldName : String;
    FKimiyaSearch : Boolean;
    FKimiyaDateMask : String;
    FKimiyaIsPrice : Boolean;
    FKimiyaSelStart : integer;

    FSrTitleField,
    FSrFieldName,
    FSrTableName,
    FSrListTable,
    FSrCodeField,FSrLBLTitle : String;

    procedure SetAlignment (AValue : TAlignment);
    procedure SetRounded (AValue : Boolean);
    procedure SetNullable (AValue : Boolean);

    procedure SetKimiyaIsdate (AValue : Boolean);
    procedure SetKimiyaIsNumeric (AValue : Boolean);
    procedure SetKimiyaSpecialChar (AValue : string);
    procedure SetKimiyaNotTextClear (AValue : Boolean);
    procedure SetKimiyaFarsiFieldName (AValue : string);
    procedure SetKimiyaSelStart (AValue : Integer);
    procedure SetKimiyaSearch (AValue : Boolean);
    procedure SetKimiyaDateMask(AValue : String);
    procedure SetKimiyaIsPrice(AValue : Boolean);
    procedure SetFrameColor (AValue : TColor);
    procedure SetErrorColor (AValue : TColor);
    procedure SetInActFrameColor (AValue : TColor);
    procedure SetMarginLeft (AValue : Word);
    procedure SetMarginRight (AValue : Word);
    procedure SetStyle (AValue : TKimiyaMaskEditStyle);
    procedure SetRoundRadius (AValue : Integer);
    procedure SetBiDiMode(Value: TBiDiMode);
    procedure SetParentBiDiMode(Value: Boolean);
    function UseRightToLeftAlignment: Boolean; override;
  protected
    { Protected declarations }

    procedure WMNCPaint (var Message : TWMNCPaint); message WM_NCPAINT;
    procedure WMNCCalcSize (var Message : TWMNCCalcSize); message WM_NCCALCSIZE;
    procedure MouseEnter (var Message : TMessage); message CM_MOUSEENTER;
    procedure MouseLeave (var Message : TMessage); message CM_MOUSELEAVE;
    procedure KeyPress(var Key: Char); override;

    procedure CMEnter(var Message: TCMEnter); message CM_ENTER;
    procedure CMExit(var Message: TCMExit); message CM_EXIT;
    procedure CMBiDiModeChanged(var Message: TMessage); message CM_BIDIMODECHANGED;
    procedure CMParentBiDiModeChanged(var Message: TMessage); message CM_PARENTBIDIMODECHANGED;

    function DrawTextBiDiModeFlags(Flags: Longint): Longint;
    function DrawTextBiDiModeFlagsReadingOnly: Longint;

    procedure WMSize(var Message: TWMSize); message WM_SIZE;

    procedure CreateParams(var Params: TCreateParams); override;
    procedure CreateWnd; override;
    procedure SetEditRect;

    procedure SetShape (ARounded : Boolean);


    procedure Loaded; override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    { Published declarations }

    property Alignment : TAlignment read FAlignment write SetAlignment;
    property Rounded : Boolean read FRounded write SetRounded default False;
    property Nullable : Boolean read FNullable write SetNullable default True;

    property KimiyaIsdate : Boolean read FKimiyaIsdate write SetKimiyaIsdate default False;
    property KimiyaIsNumeric : Boolean read FKimiyaIsNumeric write SetKimiyaIsNumeric default False;
    property KimiyaSpecialChar : String read FKimiyaSpecialChar write SetKimiyaSpecialChar;
    property KimiyaNotTextClear : Boolean read FKimiyaNotTextClear write SetKimiyaNotTextClear default False;
    property KimiyaFarsiFieldName : String read FKimiyaFarsiFieldName write SetKimiyaFarsiFieldName;
    property KimiyaIsPrice : Boolean read FKimiyaIsPrice write SetKimiyaIsPrice default False;
    property KimiyaSelStart : integer read FKimiyaSelStart write SetKimiyaSelStart;

//SearchField

    property KimiyaSearch : Boolean read FKimiyaSearch write SetKimiyaSearch default False;
    property KimiyaSrFieldName   : string         read  FSrFieldName    write  FSrFieldName;
    property KimiyaSrTableName   : string         read  FSrTableName    write  FSrTableName;
    property KimiyaSrListTable   : string         read  FSrListTable    write  FSrListTable;
    property KimiyaSrTitleField  : string         read  FSrTitleField   write  FSrTitleField;
    property KimiyaSrLBLTitle    : string         read  FSrLBLTitle     write  FSrLBLTitle;
//MaskDateProperty
    property KimiyaDateMask : String read FKimiyaDateMask write SetKimiyaDateMask;

    property RoundRadius : Integer read FRoundRadius write SetRoundRadius;
    property ErrorColor : TColor read FErrorColor write SetErrorColor default $00F1E6FF;
    property ActiveFrameColor : TColor read FFrameColor write SetFrameColor;
    property InActiveFrameColor : TColor read FInActFrameColor write SetInActFrameColor;
    property MarginLeft : Word read FMarginLeft write SetMarginLeft;
    property MarginRight : Word read FMarginRight write SetMarginRight;
    property Style : TKimiyaMaskEditStyle read FStyle write SetStyle;
    property BiDiMode: TBiDiMode read FBiDiMode write SetBiDiMode ;
    property ParentBiDiMode: Boolean read FParentBiDiMode write SetParentBiDiMode default True;



    property AutoSelect;
    property AutoSize;
    property CharCase;
    property Color;
    property DragCursor;
    property DragMode;
    property Enabled;
    property Font;
    property HideSelection;
    property Hint;
    property ImeMode;
    property ImeName;
    property MaxLength;
    property OEMConvert;
    property ParentColor;
    property ParentFont;
    property ParentShowHint;
    property PasswordChar;
    property PopupMenu;
    property ReadOnly;
    property ShowHint;
    property TabOrder;
    property TabStop;
    property Text;
    property Visible;



    property OnChange;
    property OnClick;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnKeyDown;
    property OnKeyPress;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnStartDrag;
  end;


procedure Register;

implementation

uses
  xpGraphUtil, Math, ErrMessage;




function TKimiyaMaskEdit.UseRightToLeftAlignment: Boolean;
begin
  Result := False;
end;
function TKimiyaMaskEdit.DrawTextBiDiModeFlagsReadingOnly: Longint;
begin
  if UseRightToLeftReading then
    Result := DT_RTLREADING
  else
    Result := 0;
end;


function TKimiyaMaskEdit.DrawTextBiDiModeFlags(Flags: Longint): Longint;
begin
  Result := Flags;
  { do not change center alignment }
  if UseRightToLeftAlignment then
    if Result and DT_RIGHT = DT_RIGHT then
      Result := Result and not DT_RIGHT { removing DT_RIGHT, makes it DT_LEFT }
    else if not (Result and DT_CENTER = DT_CENTER) then
      Result := Result or DT_RIGHT;
  Result := Result or DrawTextBiDiModeFlagsReadingOnly;
end;


procedure TKimiyaMaskEdit.CMParentBiDiModeChanged(var Message: TMessage);
begin
  if FParentBiDiMode then
  begin
    if FParent <> nil then BiDiMode := FParent.BiDiMode;
    FParentBiDiMode := True;
  end;
end;

procedure TKimiyaMaskEdit.SetParentBiDiMode(Value: Boolean);
begin
  if FParentBiDiMode <> Value then
  begin
    FParentBiDiMode := Value;
    if (FParent <> nil) and not (csReading in ComponentState) then
      Perform(CM_PARENTBIDIMODECHANGED, 0, 0);
  end;
end;

procedure TKimiyaMaskEdit.CMBiDiModeChanged(var Message: TMessage);
begin
  if (SysLocale.MiddleEast) and (Message.wParam = 0) then Invalidate;
end;
procedure TKimiyaMaskEdit.SetBiDiMode(Value: TBiDiMode);
begin
  if FBiDiMode <> Value then
  begin
    FBiDiMode := Value;
    FParentBiDiMode := False;
    Perform(CM_BIDIMODECHANGED, 0, 0);
  end;
end;
function RemoveSeparetor(text :String):String ;
var tx : String;
begin
   while pos('°',text) <> 0 do
   begin
       tx := Text;
       delete(tx, Pos('°',text),1);
       text:= tx;
   end;
   Result := text;
end;

Function AddSeprator(textStr :String;iDiv :Integer):String;
var   PriceText,Txt,TxtF,TxtE :String;
begin
 if  (iDiv = 1) then
 begin
   if (copy(textStr,4,1) <> '°') then
   Begin
   if pos('°',TextStr) <> 0 then
   Begin
     TxtF := copy(textStr,1,pos('°',TextStr)-1);
     TxtE := copy(textStr,pos('°',TextStr),Length(TextStr)-length(TxtF)+1);
  end else TxtF :=  textStr;
   Txt:= copy(TxtF,1,(length(TxtF) mod 3))+'°'+copy(TxtF,(length(TxtF) mod 3)+1,3 ) ;
   Result :=  Txt+TxtE;
   end  else Result:=  textStr;
 end
 else
   if (copy(textStr,((iDiv - 1)*3)+(length(textStr) mod 3)+1,1) <> '°') then
   begin
   if pos('°',TextStr) <> 0 then
   Begin
     TxtF := copy(textStr,1,pos('°',TextStr)-1);
     TxtE := copy(textStr,pos('°',TextStr),Length(TextStr)-length(TxtF)+1);
   end else TxtF :=  textStr;
   PriceText:= copy(TxtF,1,((iDiv - 1)*3)+(length(TxtF) mod 3) )+'°'+copy(TxtF, ((iDiv - 1)*3)+(length(TxtF) mod 3)+1 ,( length(TxtF)-((iDiv - 1)*3)+(length(TxtF) mod 3) )) ;
   Result := AddSeprator(PriceText+TxtE,iDiv-1)
   end ;
end;

procedure TKimiyaMaskEdit.KeyPress(var Key: Char);
var Len,i,Fnd,Ps :integer;
tx :String;
begin
  inherited KeyPress(Key);


  i:=1;
  Fnd:=0;
  if FKimiyaIsNumeric and ( not(Key in ['0'..'9']) and (key <> char(ord(8))) ) and not (Char(Key) in [^V, ^X, ^C]) then
  begin
    if FKimiyaSpecialChar <> '' then
    Begin
       for i:=1 to length(FKimiyaSpecialChar) do
       if key = copy(FKimiyaSpecialChar,i,1) then
         Fnd := 1;
       if Fnd = 0 then
         Key := #0;
    end else Key := #0;

  end;

  if (FKimiyaIsPrice )then
  Begin
    tx := RemoveSeparetor(text+key);
    Len := length(tx);
    i:= Len div 3 ;
     if( ( (len >3)and (key <> #8) )or( (key = #8 ) and (Len > 4) ) )
          and (key in ['0'..'9',#8] )and(not (Char(Key) in [^V, ^X, ^C])) then
     begin
       if key = char(8) then
       Begin
         tx := copy(tx,1,length(tx)-2)
       end ;
       text := tx;
       if length(text) > 3 then
       begin
         text := AddSeprator(text,i);
         if (key = char(8))and(len <> 8) then
         Begin
          text := copy(text,1,length(text)-1)
         end     ;
       end;
       SelStart := Length(text);
       key := #0;
     end;
  end;
end;

constructor TKimiyaMaskEdit.Create(AOwner: TComponent);
begin
  inherited Create (AOwner);
  FKimiyaSelStart := 0;
  FCanvas := TControlCanvas.Create;
  FCanvas.Control := Self;
  FNullable := True;
  FActive := False;
  FFocused := False;
  FParentBiDiMode := True;
  FRounded := False;
  FRoundRadius := crcRadius;

  FKimiyaSpecialChar :='';
  FFrameColor := clNavy;
  FInActFrameColor := clBtnShadow;

  FMarginLeft := 2;
  FMarginRight := 2;

  BorderStyle := bsSingle;
  FAlignment := taLeftJustify;
  Height := 15;

  FStyle := esFlat;
end;

destructor  TKimiyaMaskEdit.Destroy;
begin
  FCanvas.Free;
  Brush.Bitmap.Free;
  inherited;
end;
function  ShamsiEnCodeDate(y,m,d:word):string;
begin
if y<1300 then y:=y+1300  ;
 Result:=IntToStr(y)+'/';
 if m>=10 then result:=result+IntToStr(m)+'/' else result:=result+'0'+IntToStr(m)+'/';
 if d>=10 then result:=result+IntToStr(d) else result:=result+'0'+IntToStr(d);
end;

Function ShamsiLeapYear(y: word):byte;
var s: byte;
begin
     s:=(y-22) mod 33;
     if (s<>32) and (s mod 4 = 0) then ShamsiLeapYear:=1 else ShamsiLeapYear:=0;
end;

function sdayPermonth(y,m:word):word;
begin
 Result:=31- m div 7- m div 12;
 if m=12 then Result:=Result+ShamsiLeapYear(y);
end;


function  ShamsiDeCodeDate(s:string;var y,m,d:word):boolean;
 var i:byte;
begin
 result:=false;
 i:=pos('/',s);
 if i=0 then
  exit;

 try
 if Trim(copy(s,1,i-1)) <> '' then
  y:=StrToInt(Trim(copy(s,1,i-1)));
 except
  exit;
 end;
  Delete(s,1,i);

  i:=pos('/',s);
 try
 if Trim(copy(s,1,i-1)) <> '' then
  m:=StrToInt(copy(s,1,i-1));
  if (m>12) or (m<1) then exit;
 except
  exit;
 end;

  Delete(s,1,i);
 try
 if Trim(copy(s,1,i-1)) <> '' then
  d:=StrToInt(s);
  if (d>SDayPerMonth(y,m)) or (d<1) then exit;
 except
  exit;
 end;

Result:=true;
end;


function isValidDate(var s:String):boolean;
var y,m,d:word;
begin
 result:=true;
  if
   (Trim(s) <> '/  /')and(Trim(s) <> '') then
    if ShamsiDeCodeDate(s,y,m,d) then s:=ShamsiEnCodedate(y,m,d) else Result:=false;
end;

procedure TKimiyaMaskEdit.WMNCPaint (var Message : TWMNCPaint);
var
  DC : hDC;
  Brush : hBrush;
  Pen : hPen;
  lBrush : TLogBrush;
  UpdateRect : TRect;
  AColor : TColor;
  Flags: Longint;
  Rgn : hRgn;
begin
  DC := GetWindowDC (Handle);
  GetWindowRect (Handle, UpdateRect);
  OffsetRect (UpdateRect, - UpdateRect.Left, - UpdateRect.Top);

   if FActive or FFocused then AColor := FFrameColor
     else AColor := FInActFrameColor;

  if FRounded then
    Rgn := CreateRoundRectRgn (0,0,Width+1, Height+1, FRoundRadius, FRoundRadius);

  case FStyle of
    ////////////////////////////////////////////////////////////////////////////
    esXP:
    begin
      if FRounded then
      begin
        Brush := CreateSolidBrush (ColorToRGB (AColor));
        FrameRgn (DC, Rgn, Brush, 1, 1);
        DeleteObject (Brush);
        DeleteObject (Rgn);

        Rgn := CreateRoundRectRgn (1,1,Width, Height, FRoundRadius, FRoundRadius);
        Brush := CreateSolidBrush (ColorToRGB (Color));
        FrameRgn (DC, Rgn, Brush, 1, 1);
        DeleteObject (Brush);
      end
      else
      begin
        Brush := CreateSolidBrush (ColorToRGB (AColor));
        FrameRect (DC, UpdateRect, Brush);
        DeleteObject (Brush);

        InflateRect (UpdateRect, -1, -1);
        Brush := CreateSolidBrush (ColorToRGB (Color));
        FrameRect (DC, UpdateRect, Brush);
        DeleteObject (Brush);

      end;
    end;
    ////////////////////////////////////////////////////////////////////////////
    esFlat:
    begin
      if FRounded then
      begin
        Brush := CreateSolidBrush (ColorToRGB (cl3DDkShadow));
        FrameRgn (DC, Rgn, Brush, 1, 1);
        DeleteObject (Brush);
        DeleteObject (Rgn);

        Rgn := CreateRoundRectRgn (1,1,Width, Height, FRoundRadius, FRoundRadius);
        Brush := CreateSolidBrush (ColorToRGB (Color));
        FrameRgn (DC, Rgn, Brush, 1, 1);
        DeleteObject (Brush);
        DeleteObject (Rgn);

        Rgn := CreateRoundRectRgn (1,1,Width+1, Height+1, FRoundRadius, FRoundRadius);
        Brush := CreateSolidBrush (ColorToRGB (clActiveBorder));
        FrameRgn (DC, Rgn, Brush, 1, 1);
         DeleteObject (Brush);

        if FActive or Focused then
        begin
          DeleteObject (Rgn);
          Rgn := CreateRoundRectRgn (0,0,Width+1, Height+1, FRoundRadius, FRoundRadius);
          Brush := CreateSolidBrush (ColorToRGB (AColor));
          FrameRgn (DC, Rgn, Brush, 1, 1);
          DeleteObject (Brush);
        end;
      end
      else
      begin

        Brush := CreateSolidBrush (ColorToRGB (cl3DDkShadow));
        FrameRect (DC, UpdateRect, Brush);
        DeleteObject (Brush);

        InflateRect (UpdateRect, -1, -1);
        Brush := CreateSolidBrush (ColorToRGB (Color));
        FrameRect (DC, UpdateRect, Brush);
        DeleteObject (Brush);

        UpdateRect.Bottom := UpdateRect.Bottom+1;
        UpdateRect.Right := UpdateRect.Right + 1;
        Brush := CreateSolidBrush (ColorToRGB (clActiveBorder));
        FrameRect (DC, UpdateRect, Brush);
        DeleteObject (Brush);

        if FActive or Focused then
        begin
          UpdateRect.Bottom := UpdateRect.Bottom-1;
          UpdateRect.Right := UpdateRect.Right-1;
          InflateRect (UpdateRect, 1, 1);
          Brush := CreateSolidBrush (ColorToRGB (AColor));
          FrameRect (DC, UpdateRect, Brush);
          DeleteObject (Brush);
        end;
      end;
    end;
    ////////////////////////////////////////////////////////////////////////////
  end;
//  Flags := DrawTextBiDiModeFlags(DT_SINGLELINE);
//  DrawText(Handle, PChar(Text), Length(Text), R, Flags or DT_CALCRECT);

  if FRounded then DeleteObject(Rgn);
  inherited;
end;

procedure TKimiyaMaskEdit.WMNCCalcSize (var Message : TWMNCCalcSize);
begin
  case FStyle of
    esXP:   InflateRect (Message.CalcSize_Params^.rgrc[0], -2, -2);
    esFlat: InflateRect (Message.CalcSize_Params^.rgrc[0], -2, -2);
  end;
end;

procedure TKimiyaMaskEdit.MouseEnter (var Message : TMessage);
begin
  if not FActive then
  begin
    FActive := true;
    SendMessage (Handle, WM_NCPAINT, 0, 0);
  end;
end;

procedure TKimiyaMaskEdit.MouseLeave (var Message : TMessage);
begin
  if FActive then
  begin
    FActive := False;
    SendMessage (Handle, WM_NCPAINT, 0, 0);
  end;
end;

procedure TKimiyaMaskEdit.SetShape (ARounded : Boolean);
var
  WinRgn : hRgn;
begin
  WinRgn := 0;
  GetWindowRgn (Handle, WinRgn);
  DeleteObject(WinRgn);
  if ARounded then
    WinRgn := CreateRoundRectRgn (0,0,Width+1, Height+1, FRoundRadius, FRoundRadius)
  else
    WinRgn := CreateRectRgn (0,0,Width+1, Height+1);
  SetWindowRgn (Handle, WinRgn, true);
end;

procedure TKimiyaMaskEdit.Loaded;
var
  Wd : Integer;
begin
  inherited;
  SetShape (FRounded);
  SetEditRect;
end;

procedure TKimiyaMaskEdit.CreateParams(var Params: TCreateParams);
const
  Alignments: array[Boolean, TLeftRight] of DWORD =
    ((BS_LEFTTEXT, 0), (0, BS_LEFTTEXT));
begin
  inherited CreateParams(Params);
  case FAlignment of
    taLeftJustify: Params.Style := Params.Style or ES_LEFT and not ES_MULTILINE;
    taRightJustify: Params.Style := Params.Style or ES_RIGHT and not ES_MULTILINE;
    taCenter: Params.Style := Params.Style or ES_CENTER and not ES_MULTILINE;
  end;
{  with Params do
    Style := Style or SS_NOTIFY  or Alignments[UseRightToLeftAlignment, FAlignment];
 }
end;

procedure TKimiyaMaskEdit.WMSize(var Message: TWMSize);
begin
  inherited;
  SetShape (FRounded);
  SetEditRect;
end;
procedure TKimiyaMaskEdit.CMEnter(var Message: TCMEnter);

begin
  if (length(Text) <> 0)and not(FKimiyaIsdate) then
   SelStart := length(Text)  ;

  if FKimiyaSelStart <> 0 then
   SelStart := FKimiyaSelStart;

  if not FFocused then
  begin
    FFocused := true;
    SendMessage (Handle, WM_NCPAINT, 0, 0);
    if (Text = '')and(FNullable = false) then
      begin
        Color := clWhite;
      end;
  end;

end;

procedure TKimiyaMaskEdit.CMExit(var Message: TCMExit);
var  Txt : String;
begin
  Txt := Text;
  if FFocused then
  begin
    If Assigned(onexit) then
      OnExit(self);
     FFocused := false;
    SendMessage (Handle, WM_NCPAINT, 0, 0);
    if (Text = '')and(FNullable = false) then
      begin
        Color := FErrorColor;
      end;
  end;
  if (FKimiyaIsdate = True)and (FNullable = false) then
  begin
      if (Trim(copy(text,1,4)) = '')or(Trim(copy(text,1,4)) = '0')or(Trim(copy(text,1,4)) = '00')or(Trim(copy(text,1,4)) = '000')or(Trim(copy(text,1,4)) = '0000')  then
         text := Concat(text,'1400');
      if ( (Trim(copy(text,6,2)) = '') or(Trim(copy(text,6,2)) = '00')or(Trim(copy(text,6,2)) = '0')) then
         text := copy(text,1,5)+'12'+copy(text,8,2);
      if (Trim(copy(text,9,2)) = '')or(Trim(copy(text,9,2)) = '00')or(Trim(copy(text,9,2)) = '0')   then
         text := copy(text,1,9)+'29';
      Txt := text;
  end;
  If (FKimiyaIsdate = True)and(Text <> '') then
    if (not isValidDate(Txt)) then
    Begin
    Error_Msg(' «—ÌŒ —« ’ÕÌÕ Ê«—œ ò‰Ìœ: 1400/12/29');
    SetFocus;
    SelectAll
    end else Text := txt;
end;

procedure TKimiyaMaskEdit.CreateWnd;
begin
  inherited CreateWnd;
  SetShape (true);
  SetEditRect;
end;

procedure TKimiyaMaskEdit.SetEditRect;
begin
  SendMessage(Handle, EM_SETMARGINS, EC_LEFTMARGIN or EC_RIGHTMARGIN, MakeLong (FMarginLeft, FMarginRight));
end;


procedure TKimiyaMaskEdit.SetAlignment (AValue : TAlignment);
var
  dwStyle : longint;
begin
  if AValue <> FAlignment then
  begin
    FAlignment := AValue;

    dwStyle := GetWindowLong(Handle, GWL_STYLE);
    case FAlignment of
      taLeftJustify: dwStyle := dwStyle or ES_LEFT and not ES_MULTILINE;
      taRightJustify: dwStyle := dwStyle or ES_RIGHT and not ES_MULTILINE;
      taCenter: dwStyle := dwStyle or ES_CENTER and not ES_MULTILINE;
    end;
    SetWindowLong(Handle, GWL_STYLE, dwStyle);
  end;
end;



procedure TKimiyaMaskEdit.SetKimiyaSpecialChar (AValue : string);
begin
  if AValue <> FKimiyaSpecialChar then
  begin
    FKimiyaSpecialChar   :=  AValue;
    Invalidate;
  end;
end;

procedure TKimiyaMaskEdit.SetKimiyaDateMask (AValue : string);
begin
  if AValue <> FKimiyaDateMask then
  begin
    FKimiyaDateMask   :=  AValue;
    Invalidate;
  end;
end;

procedure TKimiyaMaskEdit.SetKimiyaSelStart (AValue : Integer);
begin
  if AValue <> FKimiyaSelStart then
  begin
    FKimiyaSelStart   :=  AValue;
    Invalidate;
  end;
end;

procedure TKimiyaMaskEdit.SetKimiyaFarsiFieldName (AValue : string);
begin
  if AValue <> FKimiyaFarsiFieldName then
  begin
    FKimiyaFarsiFieldName   :=  AValue;
    Invalidate;
  end;
end;

procedure TKimiyaMaskEdit.SetKimiyaSearch (AValue : Boolean);
begin
  if AValue <> FKimiyaSearch then
  begin
    FKimiyaSearch   :=  AValue;
    Invalidate;
  end;
end;

procedure TKimiyaMaskEdit.SetKimiyaIsPrice (AValue : Boolean);
begin
  if AValue <> FKimiyaIsPrice then
  begin
    FKimiyaIsPrice   :=  AValue;
    Invalidate;
  end;
end;

procedure TKimiyaMaskEdit.SetKimiyaNotTextClear (AValue : Boolean);
begin
  if AValue <> FKimiyaNotTextClear then
  begin
    FKimiyaNotTextClear   :=  AValue;
    Invalidate;
  end;
end;

procedure TKimiyaMaskEdit.SetKimiyaIsNumeric (AValue : Boolean);
begin
  if AValue <> FKimiyaIsNumeric then
  begin
    FKimiyaIsNumeric   :=  AValue;
    Invalidate;
  end;
end;


procedure TKimiyaMaskEdit.SetKimiyaIsdate (AValue : Boolean);
begin
  if AValue <> FKimiyaIsdate then
  begin
    FKimiyaIsdate := AValue;
    Invalidate;
  end;
end;


procedure TKimiyaMaskEdit.SetNullable (AValue : Boolean);
begin
  if AValue <> FNullable then
  begin
    FNullable := AValue;
    Invalidate;
  end;
end;


procedure TKimiyaMaskEdit.SetRounded (AValue : Boolean);
begin
  if AValue <> FRounded then
  begin
    FRounded := AValue;
    SetShape (FRounded);
    Invalidate;
  end;
end;

procedure TKimiyaMaskEdit.SetErrorColor  (AValue : TColor);
begin
  if AValue <> FErrorColor then
  begin
    FErrorColor := AValue;
    if FActive then
      SendMessage (Handle, WM_NCPAINT, 0, 0);
  end;
end;


procedure TKimiyaMaskEdit.SetFrameColor  (AValue : TColor);
begin
  if AValue <> FFrameColor then
  begin
    FFrameColor := AValue;
    if FActive then
      SendMessage (Handle, WM_NCPAINT, 0, 0);
  end;
end;

procedure TKimiyaMaskEdit.SetInActFrameColor  (AValue : TColor);
begin
  if AValue <> FInActFrameColor then
  begin
    FInActFrameColor := AValue;
    if not FActive then
      SendMessage (Handle, WM_NCPAINT, 0, 0);
  end;
end;

procedure TKimiyaMaskEdit.SetMarginLeft (AValue : Word);
begin
  if FMarginLeft <> AValue then
  begin
    FMarginLeft := AValue;
    SetEditRect;
  end;
end;

procedure TKimiyaMaskEdit.SetMarginRight (AValue : Word);
begin
  if FMarginRight <> AValue then
  begin
    FMarginRight := AValue;
    SetEditRect;
  end;
end;

procedure TKimiyaMaskEdit.SetStyle (AValue : TKimiyaMaskEditStyle);
begin
  if FStyle <> AValue then
  begin
    FStyle := AValue;
    SendMessage (Handle, WM_SIZE, 0, 0);
  end;
end;

procedure TKimiyaMaskEdit.SetRoundRadius (AValue : Integer);
begin
  if AValue < 1 then AValue := 1;
  if FRoundRadius <> AValue then
  begin
    FRoundRadius := AValue;
    SendMessage (Handle, WM_SIZE, 0, 0);
  end;
end;

{
TKimiyaMaskEdit.
}
procedure Register;
begin
  RegisterComponents('VCLComponent', [TKimiyaMaskEdit]);
end;

end.