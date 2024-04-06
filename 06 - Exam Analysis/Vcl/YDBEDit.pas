unit YDBEDit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls;

type
  TYDBEdit = class(TDBEdit)
  private
    { Private declarations }
    FFarsi : Boolean;
    FInputDigit : Boolean;
    FInputAlpha : Boolean;
    Procedure SetFarsi(Val : Boolean);
    Procedure SetInpDigit(Val : Boolean);
    Procedure SetInpAlpha(Val : Boolean);
  protected
    { Protected declarations }
    procedure KeyPress(var Key: Char); override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    procedure DefaultHandler(var Message); override;
  published
    { Published declarations }
     Property Farsi : Boolean read FFarsi Write SetFarsi Default True;
     Property InputAlpha : Boolean read FInputAlpha Write SetInpAlpha Default True;
     Property InputDigit : Boolean read FInputDigit Write SetInpDigit Default True;
  end;

procedure Register;

implementation

uses YShamsiDate;

Procedure TYDBEdit.SetFarsi(Val :Boolean);
Begin
  FFarsi := Val;
End;

Procedure TYDBEdit.SetInpAlpha(Val :Boolean);
Begin
  FInputAlpha := Val;
End;

Procedure TYDBEdit.SetInpDigit(Val :Boolean);
Begin
  FInputDigit := Val;
End;


procedure TYDBEdit.KeyPress(var Key: Char);
var WFlag:Boolean;
  MyWinControl: TWinControl;
begin
  inherited KeyPress(Key);
  if Key=#13 then begin
    key:= #0;
    MyWinControl:= Parent;
    while MyWinControl.HasParent do
      MyWinControl:= MyWinControl.Parent;
    MyWinControl.Perform(CM_DialogKey, VK_TAB, 0);
  end
  else begin
    WFlag:=True;
    if (FInputDigit=False) and (IsDigit(Key)=True) Then WFlag:=False;
    if (FInputAlpha=False) and (IsDigit(Key)=False) and (Ord(key)<> VK_Back) Then WFlag:=False;
    if WFlag = False Then begin
       beep;
       Key:=Char(0);
    end;
  end;
end;

constructor TYDBEdit.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FFarsi:=True;
  FInputDigit:=True;
  FInputAlpha:=True;
end;

procedure TYDBEdit.DefaultHandler(var Message);
begin
  Inherited DefaultHandler(Message);
end;

procedure Register;
begin
  RegisterComponents('Yeganeh', [TYDBEdit]);
end;

end.
