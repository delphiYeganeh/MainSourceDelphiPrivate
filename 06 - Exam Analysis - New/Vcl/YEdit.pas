unit YEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls,yshamsidate;

type
  TYEdit = class(TEdit)
  private
    { Private declarations }
    FFarsi : Boolean;
    FInputDigit : Boolean;
    FInputAlpha : Boolean;
    FFocusedColor: TColor;
    FirstColor: TColor;
    Procedure SetFarsi(Val : Boolean);
    Procedure SetInpDigit(Val : Boolean);
    Procedure SetInpAlpha(Val : Boolean);
    Procedure SetFocusedColor(CVal: TColor);
  protected
    { Protected declarations }
    procedure DoEnter; override;
    procedure DoExit; override;
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
     Property FocusedColor: TColor Read FFocusedColor Write SetFocusedColor;(* Default clLime$00C7C7C7*)
  end;

procedure Register;

implementation

Procedure TYEdit.SetFarsi(Val :Boolean);
Begin
  FFarsi := Val;
End;

Procedure TYEdit.SetInpAlpha(Val :Boolean);
Begin
  FInputAlpha := Val;
End;

Procedure TYEdit.SetInpDigit(Val :Boolean);
Begin
  FInputDigit := Val;
End;

Procedure TYEdit.SetFocusedColor(CVal :TColor);
Begin
  FFocusedColor := CVal;
End;

procedure TYEdit.DoEnter;
Begin
  inherited DoEnter;
  FirstColor:= Color;
  Color:= FocusedColor;
//  if Farsi = True  Then FarsiMode;
//  if Farsi = False Then EnglishMode;
End;

procedure TYEdit.DoExit;
Begin
  inherited DoExit;
  Color:= FirstColor;
End;

procedure TYEdit.KeyPress(var Key: Char);
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

constructor TYEdit.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FFarsi:=True;
  FInputDigit:=True;
  FInputAlpha:=True;
  Color:= clWindow;
  FocusedColor:= $00C7C7C7;
  Font.Color:= clMaroon;
//  Font.Size:= 9;
end;

procedure TYEdit.DefaultHandler(var Message);
begin
  Inherited DefaultHandler(Message);
//  Case TMessage(Message).Msg of
//    WM_SETFOCUS: if Farsi then FarsiMode;
//    WM_KILLFOCUS: if Farsi then EnglishMode;
//  end;
end;

procedure Register;
begin
  RegisterComponents('Yeganeh', [TYEdit]);
end;

end.
