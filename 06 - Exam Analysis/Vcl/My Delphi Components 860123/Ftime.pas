unit FTime;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Db, MyLibU;

type
  TFTime = class(TMaskEdit)
  private
    { Private declarations }
     FValid : Boolean;
    Procedure SetValid(Val : Boolean);
  protected
    { Protected declarations }
    procedure Change; override;
    procedure KeyPress(var Key: Char);Override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  published
     Property Valid : Boolean read FValid Write SetValid Default True;
    { Published declarations }
  end;

procedure Register;

implementation

procedure TFTime.KeyPress(var Key: Char);
Var S:String;
  MyWinControl: TWinControl;
Begin
  if Key<>' ' Then begin
    inherited KeyPress(Key);
    if Key=#13 then begin
      key:= #0;
      MyWinControl:= Parent;
      while MyWinControl.HasParent do
        MyWinControl:= MyWinControl.Parent;
      MyWinControl.Perform(CM_DialogKey, VK_TAB, 0);
    end;
  end
  Else Begin
    if text = '  :  ' Then Begin
      S:=TimeToStr(Time);
      SetLength(S,5);
      S[3]:=':';
      Text:=S;
    End
    Else
      Text:='    ';
    Key:=Char(0);
  End;
End;

constructor TFTime.Create(AOwner: TComponent);
Var CurTime:TDateTime;
     S:String;
begin
  inherited Create(AOwner);
  EditMask:='##:##';
  CurTime:=Time;
  S:=TimeToStr(CurTime);
  SetLength(S,5);
  S[3]:=':';
  Text:=S;
  Color:= $00CAFFCA;
  Font.Color:= clMaroon;
  Font.Size:= 10;
End;

Function IsValid(TimeStr:String):Boolean;
Var H,S:Integer;
    Str:String;
Begin
  if (IsDigit(TimeStr[1])=False) or
     (IsDigit(TimeStr[2])=False) or
     (IsDigit(TimeStr[4])=False) or
     (IsDigit(TimeStr[5])=False)  Then
       Begin
         IsValid:=False;
         Exit;
       End;
  setlength(Str,2);
  Str[1]:=TimeStr[1];
  Str[2]:=TimeStr[2];
  H:=StrToInt(Str);
  Str[1]:=TimeStr[4];
  Str[2]:=TimeStr[5];
  S:=StrToInt(Str);
  if (H>23) or (S>59) Then
    Begin
       IsValid:=False;
       Exit;
    End
  Else
    Begin
       IsValid:=True;
       Exit;
    End
End;

Procedure TFTime.Change;
Begin
  inherited Change;
  if IsValid(Text) Then  FValid := True
  Else FValid := False;
End;

Procedure TFTime.SetValid(Val :Boolean);
Begin
  FValid := Val;
End;


procedure Register;
begin
  RegisterComponents('Farsi', [TFTime]);
end;

end.
