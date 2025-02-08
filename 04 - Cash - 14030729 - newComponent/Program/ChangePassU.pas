unit ChangePassU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, jpeg, ExtCtrls, ActnList,
  ActnMan, XPStyleActnCtrls, AdvGlowButton;

type
  TFrChangePass = class(TForm)
    Panel1: TPanel;
    BitBtn1: TAdvGlowButton;
    BitBtn3: TAdvGlowButton;
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
    pnlMain: TPanel;
    procedure ChangePassWordExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
    ShowMessage('ò·„Â ⁄»Ê— ÃœÌœ —« Ê«—œ ‰„«ÌÌœ')
  else
  if NewPass.Text<>ConfirmNewPass.Text then
    messagedlg('ò·„Â Â«Ì ⁄»Ê— ÃœÌœ »« Â„ „ ›«Ê ‰œ',mterror,[mbok],0)
   else
  if Dm.UsersPassword.AsString<>CurrentPass.Text then
    messagedlg('ò·„Â ⁄»Ê— ﬁ»·Ì «‘ »«Â «” ',mterror,[mbok],0)
   else
    begin
     Change_UserPassword(NewPass.Text);
     messagedlg('Å«Ì«‰ „Ê›ﬁÌ  ¬„Ì“  €ÌÌ— ò·„Â ⁄»Ê—',mterror,[mbok],0);
     close;
    end;
    Dm.Users.Close;
    Dm.Users.Open;

end;

procedure TFrChangePass.FormShow(Sender: TObject);
begin
   Self.Color    := _Maincolor1 ;
end;

end.
