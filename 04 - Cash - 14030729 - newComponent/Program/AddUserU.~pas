unit AddUserU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ToolWin, ActnMan, ActnCtrls, DBActns, ActnList,
  ImgList, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, ADODB, Grids,
  DBGrids,  UemsVCL, ActnMenus, jpeg, ComCtrls, ExtActns, XPStyleActnCtrls,
   xpPages, YDbgrid, Menus, SolarCalendarPackage, AdvGlowButton;

type
  TFrAddUser = class(TYBaseForm)
    Panel1: TPanel;
    ActionManager: TActionManager;
    DataSetInsert: TDataSetInsert;
    DataSetDelete: TDataSetDelete;
    DataSetEdit: TDataSetEdit;
    DataSetPost: TDataSetPost;
    DataSetCancel: TDataSetCancel;
    Action11: TAction;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    Action1: TAction;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    ActionToolBar1: TActionToolBar;
    Pass: TDBEdit;
    Label10: TLabel;
    ConfirmPass: TEdit;
    Label9: TLabel;
    xpPageControl1: TPageControl;
    userTab: TTabSheet;
    xpTabSheet2: TTabSheet;
    DBGFromORG: TYDBGrid;
    SEdit: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Panel2: TPanel;
    BitBtn1: TAdvGlowButton;
    DBELoanDate: TSolarDatePicker;
    DBEdit3: TSolarDatePicker;
    Panel3: TPanel;
    DBCheckBox1: TDBCheckBox;
    pnlMain: TPanel;
    procedure Action11Execute(Sender: TObject);
    procedure DataSetPostExecute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SEditChange(Sender: TObject);
    procedure DBGFromORGDblClick(Sender: TObject);
    procedure UsersAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private

    { Private declarations }
  public
   { Public declarations }
  end;

var
  FrAddUser: TFrAddUser;

implementation

uses dmu, BusinessLayer;


{$R *.dfm}

procedure TFrAddUser.Action11Execute(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFrAddUser.DataSetPostExecute(Sender: TObject);
begin
  inherited;

 if dm.UsersPassWord.AsString<>ConfirmPass.Text then
   ShowMessage('ò·„Â ⁄»Ê— »«  ò—«— «‰ ÌòÌ ‰Ì” ')
 else
   Dm.Users.Post;
end;

procedure TFrAddUser.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if Dm.Users.State in [dsedit,dsinsert] then
   if messageShowString('«ÿ·«⁄«  Ê«—œ ‘œÂ –ŒÌ—Â ê—œœø',true) then
   begin
    _AccMngtAccess:=dm.UsersAccMngtAccess.AsBoolean;
    dm.Users.Post;
   end;
  close;
end;

procedure TFrAddUser.SEditChange(Sender: TObject);
begin
  inherited;
  Open_User_like(SEdit.Text);
end;

procedure TFrAddUser.DBGFromORGDblClick(Sender: TObject);
begin
  inherited;
dm.Users.Locate('userid',Dm.Select_User_likeUserId.AsInteger,[]);
xpPageControl1.ActivePageIndex:=0;
end;

procedure TFrAddUser.UsersAfterScroll(DataSet: TDataSet);
begin
  ConfirmPass.Text:=Dm.UsersPassword.AsString;
end;

procedure TFrAddUser.FormCreate(Sender: TObject);
begin
  inherited;
    dm.Users.AfterScroll:=UsersAfterScroll;
end;

end.
