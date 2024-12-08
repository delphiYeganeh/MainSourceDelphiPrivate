unit InputPassU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls;

type
  TFInputPass = class(TForm)
    Panel1: TPanel;
    MaskEdit1: TMaskEdit;
    Label1: TLabel;
    BtnOK: TButton;
    BtnCancel: TButton;
    procedure MaskEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    UserPassword : String;
  end;

var
  FInputPass: TFInputPass;

implementation

uses Dmu, YShamsiDate;

{$R *.dfm}

procedure TFInputPass.MaskEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = Vk_Return then
      BtnOK.Click;

end;

procedure TFInputPass.FormShow(Sender: TObject);
begin
   ModalResult := mrCancel;
end;

procedure TFInputPass.BtnOKClick(Sender: TObject);
begin
   if MaskEdit1.PasswordChar = '*' then
   begin
   if Trim(MaskEdit1.Text)<> locked(Trim(UserPassword),False) then
   begin
      Showmessage('—„“ «‘ »«Â „Ì»«‘œ');
      MaskEdit1.Clear;
      MaskEdit1.SetFocus;
      Abort;
   end
      else
         ModalResult := mrOk;
   end
   else
   begin
      _paraph := MaskEdit1.Text;
      ModalResult := mrOk;
   end;
end;

procedure TFInputPass.BtnCancelClick(Sender: TObject);
begin
   ModalResult := mrCancel;
end;

procedure TFInputPass.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

end.
