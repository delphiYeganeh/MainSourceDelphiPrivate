unit FDate;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, TMyDate;

type
  TFDate = class(TMaskEdit)
  private
    { Private declarations }
     FValid : Boolean;
    Procedure SetValid(Val : Boolean);
  protected
    { Protected declarations }
    procedure Change; override;
    procedure KeyPress(var Key: Char); override;
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  published
     Property Valid : Boolean read FValid Write SetValid Default True;
    { Published declarations }
  end;

procedure Register;
Var
  MyEdit:Boolean;

implementation

function EmptyMask(TextMasked: String): String;
var
  counter: byte;
begin
  for counter:= 1 to Length(TextMasked) do
    if TextMasked[counter] = '#' then
      TextMasked[counter]:= ' ';
  Result:= TextMasked;
end;

function DecreaseDay(DateStr:String):String;
var
  DaysStr: String;
  DaysInt: Integer;
begin
  DaysInt:= StrToInt(Copy(DateStr, 9, 2));
  Dec(DaysInt);
  if DaysInt<10 then
    DaysStr:= '0'+ IntToStr(DaysInt)
  else
    DaysStr:= IntToStr(DaysInt);
  if DaysStr<'01' then
    if (copy(DateStr, 6, 2)>='07') then DaysStr:= '30'
    else DaysStr:= '31';
  DateStr[9]:= DaysStr[1];
  DateStr[10]:= DaysStr[2];
  result:= DateStr;
end;

function IncreaseDay(DateStr:String):String;
var
  DaysStr: String;
  DaysInt: Integer;
begin
  DaysInt:= StrToInt(Copy(DateStr, 9, 2));
  Inc(DaysInt);
  if DaysInt<10 then
    DaysStr:= '0'+ IntToStr(DaysInt)
  else
    DaysStr:= IntToStr(DaysInt);
  if ((copy(DateStr, 6, 2)>='07') and (DaysStr>'30')) or
     ((copy(DateStr, 6, 2)<='06') and (DaysStr>'31'))  then
    DaysStr:= '01';
  DateStr[9]:= DaysStr[1];
  DateStr[10]:= DaysStr[2];
  result:= DateStr;
end;

function DecreaseMonth(DateStr:String):String;
var
  MonthStr: String;
  MonthInt: Integer;
begin
  MonthInt:= StrToInt(Copy(DateStr, 6, 2));
  Dec(MonthInt);
  if MonthInt<10 then
    MonthStr:= '0'+ IntToStr(MonthInt)
  else
    MonthStr:= IntToStr(MonthInt);
  if MonthStr<'01' then
    MonthStr:= '12';
  DateStr[6]:= MonthStr[1];
  DateStr[7]:= MonthStr[2];
  if (MonthStr>='07') and (Copy(DateStr, 9, 2)='31') then
    DateStr[10]:= '0';
  result:= DateStr;
end;

function IncreaseMonth(DateStr:String):String;
var
  MonthStr: String;
  MonthInt: Integer;
begin
  MonthInt:= StrToInt(Copy(DateStr, 6, 2));
  Inc(MonthInt);
  if MonthInt<10 then
    MonthStr:= '0'+ IntToStr(MonthInt)
  else
    MonthStr:= IntToStr(MonthInt);
  if MonthStr>'12' then
    MonthStr:= '01';
  DateStr[6]:= MonthStr[1];
  DateStr[7]:= MonthStr[2];
  if (MonthStr>='07') and (Copy(DateStr, 9, 2)='31') then
    DateStr[10]:= '0';
  result:= DateStr;
end;

procedure TFDate.KeyDown(var Key: Word; Shift: TShiftState);
begin
  if (shift = []) then begin
    if (Key=VK_DOWN) Then begin
      if (Self.IsMasked) and (text <> '') and
         (text <> EmptyMask(Self.EditMask)) Then
        text:= DecreaseDay(text);
    end else
      if (Key=VK_UP) Then
        if (Self.IsMasked) and (text <> '') and
           (text <> EmptyMask(Self.EditMask)) Then
           text:= IncreaseDay(text);
  end else
    if (shift = [ssCtrl]) then begin
      if (Key=VK_DOWN) Then begin
        if (Self.IsMasked) and (text <> '') and
           (text <> EmptyMask(Self.EditMask)) Then
          text:= DecreaseMonth(text);
      end else
        if (Key=VK_UP) Then
          if (Self.IsMasked) and (text <> '') and
             (text <> EmptyMask(Self.EditMask)) Then
            text:= IncreaseMonth(text);
    end;
end;
procedure TFDate.KeyPress(var Key: Char);
Var
  S:String;
  MyWinControl: TWinControl;
Begin
  if Key<>' ' Then begin
    if Key=#13 then begin
      key:= #0;
      MyWinControl:= Parent;
      while MyWinControl.HasParent do
        MyWinControl:= MyWinControl.Parent;
      MyWinControl.Perform(CM_DialogKey, VK_TAB, 0);
    end;
    inherited KeyPress(Key);
  end
  Else Begin
    if ((not Self.IsMasked) and (text = '    /  /  ')) or
       (text = EmptyMask(Self.EditMask)) Then Begin
      S:=CurDate;
      Text:=S;
    End
    Else
      if Self.IsMasked then
        Text:= EmptyMask(Self.EditMask)
      else
        Text:='          ';
    Key:=Char(0);
  End;
End;
constructor TFDate.Create(AOwner: TComponent);
Var
   S:String;
begin
  MyEdit:=True;
  inherited Create(AOwner);
  EditMask:='13##/##/##';
  S:=CurDate;
  Text:=S;
  MyEdit:=False;
{  Color:= $00CAFFCA;}
  Font.Color:= clNavy;
  Font.Name:= 'Tahoma';
  Font.Size:= 9;
End;

Function IsValid(DateStr:String):Boolean;
Begin
  if MyEdit=True Then
     IsValid:=True
  Else
     IsValid:=DateCheck(DateStr);
End;

Procedure TFDate.Change;
Begin
  inherited Change;
  if IsValid(Text) Then  FValid := True
  Else FValid := False;
End;

Procedure TFDate.SetValid(Val :Boolean);
Begin
  FValid := Val;
End;


procedure Register;
begin
  RegisterComponents('Farsi', [TFDate]);
end;

end.
