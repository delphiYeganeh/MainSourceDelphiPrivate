unit UFrLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DB, DBCtrls, Buttons, ExtCtrls, jpeg, ComCtrls,
  xpBitBtn;

type
  TFrLogin = class(TForm)
    Label4: TLabel;
    Label5: TLabel;
    UserEdit: TMaskEdit;
    PassEdit: TMaskEdit;
    StatusBar1: TStatusBar;
    BitBtn1: TxpBitBtn;
    BtnEnter: TxpBitBtn;
    ScrollBox1: TScrollBox;
    Shape1: TShape;
    Label6: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure UserEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PassEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure BtnEnterClick(Sender: TObject);
    procedure Label3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrLogin: TFrLogin;

implementation

uses dmu;

{$R *.dfm}

procedure TFrLogin.FormCreate(Sender: TObject);
begin

StatusBar1.Panels[2].Text := '  «—ÌŒ Ã«—Ì ”Ì” „ : '+ _Today;
StatusBar1.Panels[0].Text := ' '+_App_Version;
StatusBar1.Panels[3].Text := ' ¬Œ—Ì‰ ÊÌ—«Ì‘ : '+_Last_Update;
  with dm do
  begin
{    UserID.Close;
    UserID.Open;  }
  end;
end;

procedure TFrLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TFrLogin.UserEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key in [vk_return,Vk_Down] then
   SelectNext(Sender as TwinControl,True,True);
end;

procedure TFrLogin.PassEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF key=13 then
    BtnEnter.OnClick(BtnEnter);
end;

procedure TFrLogin.BitBtn1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrLogin.BtnEnterClick(Sender: TObject);
begin
  dm.EnterToProgramExecute;

end;

procedure TFrLogin.Label3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   if shift= [ssShift,ssCtrl..ssLeft] then
      begin
         UserEdit.Text := 'Ìê«‰Â';
         PassEdit.Text := '123';
         BtnEnterClick(self);
      end;
end;

end.
