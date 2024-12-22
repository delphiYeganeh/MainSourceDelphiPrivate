unit InputUserPassU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, DB, ADODB;

type
  TFInputUserPass = class(TForm)
    Panel1: TPanel;
    MaskEdit1: TMaskEdit;
    Label1: TLabel;
    BtnOK: TButton;
    BtnCancel: TButton;
    edUsername: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    procedure MaskEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
   { Public declarations }
    UserPassword : String;
  end;

var
  FInputUserPass: TFInputUserPass;

implementation

uses Dmu, YShamsiDate;

{$R *.dfm}

procedure TFInputUserPass.MaskEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = Vk_Return then
      BtnOK.Click;

end;

procedure TFInputUserPass.FormShow(Sender: TObject);
begin
   edUsername.SetFocus;
   ModalResult := mrCancel;
end;

procedure TFInputUserPass.BtnOKClick(Sender: TObject);
var
   s: string;
begin
   with TADOQuery.Create(nil) do
   begin
      Connection := dm.ArchiveConnection;
      SQL.Text := 'SELECT [ID],[PassWord] FROM Users WHERE UserName ='''+edUsername.Text+'''';
      Open;
      if IsEmpty then
      begin
         ShowMessage('‰«„ ò«—»—Ì «‘ »«Â «” ');
         exit;
      end
      else
      begin
         s := Locked(Fields[1].AsString,false);
         IF s = MaskEdit1.Text then
         begin
            _Arch_UserID := Fields[0].AsInteger;
            SQL.Text := 'UPDATE Users SET ArchiveUserID ='+Fields[0].AsString +' WHERE id = '+IntToStr(_UserID);
            close;
            Connection := dm.YeganehConnection;
            ExecSQL;
         end
         else
         begin
            ShowMessage('‰«„ ò«—»—Ì Ì« —„“ ⁄»Ê— «‘ »«Â «” ');
            Exit;
         end;
      end;
   end;
   ModalResult := mrOk;
{   if Trim(MaskEdit1.Text)<> locked(Trim(UserPassword),False) then
   begin
      Showmessage('—„“ «‘ »«Â „Ì»«‘œ');
      MaskEdit1.Clear;
      MaskEdit1.SetFocus;
      Abort;
   end
      else
         ModalResult := mrOk; }
end;

procedure TFInputUserPass.BtnCancelClick(Sender: TObject);
begin
   ModalResult := mrCancel;
end;

procedure TFInputUserPass.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

end.
