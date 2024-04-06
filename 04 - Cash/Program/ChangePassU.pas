unit ChangePassU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, jpeg, ExtCtrls, ActnList,
  ActnMan, XPStyleActnCtrls;

type
  TFrChangePass = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Image1: TImage;
    Bevel1: TBevel;
    CurrentPass: TEdit;
    NewPass: TEdit;
    ConfirmNewPass: TEdit;
    ActionManager1: TActionManager;
    ChangePassWord: TAction;
    procedure ChangePassWordExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrChangePass: TFrChangePass;

implementation

uses dmu, BusinessLayer;



{$R *.dfm}

procedure TFrChangePass.ChangePassWordExecute(Sender: TObject);
begin
  inherited;
  DM.Users.Locate('UserID',_Userid,[]);

  if (NewPass.Text='') then
    ShowMessage('˜áãå ÚÈæÑ ÌÏíÏ ÑÇ æÇÑÏ äãÇííÏ')
  else
  if NewPass.Text<>ConfirmNewPass.Text then
    messagedlg('˜áãå åÇí ÚÈæÑ ÌÏíÏ ÈÇ åã ãÊİÇæÊäÏ',mterror,[mbok],0)
   else
  if Dm.UsersPassword.AsString<>CurrentPass.Text then
    messagedlg('˜áãå ÚÈæÑ ŞÈáí ÇÔÊÈÇå ÇÓÊ',mterror,[mbok],0)
   else
    begin
     Change_UserPassword(NewPass.Text);
     messagedlg('ÇíÇä ãæİŞíÊ ÂãíÒ ÊÛííÑ ˜áãå ÚÈæÑ',mterror,[mbok],0);
     close;
    end;
    Dm.Users.Close;
    Dm.Users.Open;

end;

end.
