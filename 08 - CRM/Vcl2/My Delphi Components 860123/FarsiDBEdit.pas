unit FarsiDBEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls;

Const
  LatinNum = 67699721;
  FarsiNum = 69796905;
type
  TFarsiDBEdit = class(TDBEdit)
  private
    { Private declarations }
    FFarsi : Boolean;
    FInputDigit : Boolean;
    FInputAlpha : Boolean;
    Procedure SetFarsi(Val : Boolean);
    Procedure SetInpDigit(Val : Boolean);
    Procedure SetInpAlpha(Val : Boolean);
  protected
    procedure DoEnter; override;
    procedure KeyPress(var Key: Char); override;

  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  published
     Property Farsi : Boolean read FFarsi Write SetFarsi Default True;
     Property InputAlpha : Boolean read FInputAlpha Write SetInpAlpha Default True;
     Property InputDigit : Boolean read FInputDigit Write SetInpDigit Default True;
    { Published declarations }
  end;

procedure Register;

implementation
//---------------- LIB ------------------
Function IsDigit(Key : Char):Boolean;
Begin
 IsDigit:=False;
 if (Key in ['1'..'9','0','.']) Then IsDigit:=True;
End;
//--------------- END LIB --------------
procedure TFarsiDBEdit.KeyPress(var Key: Char);
Var WFlag:Boolean;
Begin
  inherited KeyPress(Key);
  WFlag:=True;
  if (FInputDigit=False) and (IsDigit(Key)=True) Then WFlag:=False;
  if (FInputAlpha=False) and (IsDigit(Key)=False)and (Ord(key)<> VK_Back) Then WFlag:=False;
  if WFlag = False Then
  Begin
     beep;
     Key:=Char(0);
  End;
End;

Procedure TFarsiDBEdit.DoEnter;
Begin
  inherited DoEnter;
  if FFarsi = True  Then ActivateKeyboardLayout(FarsiNum,0);
  if FFarsi = False Then ActivateKeyboardLayout(LatinNum,0);
End;

constructor TFarsiDBEdit.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FFarsi:=True;
  FInputDigit:=True;
  FInputAlpha:=True;
end;

Procedure TFarsiDBEdit.SetFarsi(Val :Boolean);
Begin
  FFarsi := Val;
End;
Procedure TFarsiDBEdit.SetInpAlpha(Val :Boolean);
Begin
  FInputAlpha := Val;
End;
Procedure TFarsiDBEdit.SetInpDigit(Val :Boolean);
Begin
  FInputDigit := Val;
End;

procedure Register;
begin
  RegisterComponents('Farsi', [TFarsiDBEdit]);
end;
end.
