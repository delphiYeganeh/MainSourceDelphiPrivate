unit UADDUser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ToolWin, ActnMan, ActnCtrls, DBActns, ActnList,
  ImgList, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, ADODB, Grids,
  DBGrids,  UemsVCL, ActnMenus, jpeg, ComCtrls, ExtActns, XPStyleActnCtrls,
  xpWindow, xpBitBtn;

type
  TFrAddUser = class(TMBaseForm)
    BitBtn1: TxpBitBtn;
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
    procedure Action11Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DataSetInsertExecute(Sender: TObject);
    procedure DataSetPostExecute(Sender: TObject);
    procedure DataSetPrior1Execute(Sender: TObject);
    procedure DataSetNext1Execute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

    { Private declarations }
  public
   { Public declarations }
  end;

var
  FrAddUser: TFrAddUser;

implementation

uses UMainForm, dmu;


{$R *.dfm}

procedure TFrAddUser.Action11Execute(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFrAddUser.FormCreate(Sender: TObject);
begin
  inherited;
with  dm.sys_User do
 begin
   Open;
   dm.sys_Access.Open;
  ConfirmPass.Text:=dm.sys_UserPassWord.AsString;
 end;
end;

procedure TFrAddUser.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;

 if not DataSetEdit.Enabled then
    if messageShowString('¬Ì« «ÿ·«⁄«  Ã«—Ì —« –ŒÌ—Â „Ì ò‰Ìœ',true) then
      dm.sys_User.Post
     else
       dm.sys_User.Cancel;
dm.sys_User.close;
end;

procedure TFrAddUser.DataSetInsertExecute(Sender: TObject);
begin
  inherited;
dm.sys_User.Insert;
end;

procedure TFrAddUser.DataSetPostExecute(Sender: TObject);
begin
  inherited;

 if dm.sys_UserPassWord.AsString<>ConfirmPass.Text then
  Begin
    ShowMsgString('ò·„Â ⁄»Ê— »«  ò—«— ¬‰ Â„ŒÊ«‰Ì ‰œ«—œ');
    pass.SetFocus;
  end
 else dm.sys_User.Post;



end;

procedure TFrAddUser.DataSetPrior1Execute(Sender: TObject);
begin
  inherited;
  dm.sys_User.Prior;
  ConfirmPass.Text:=dm.sys_UserPassWord.AsString;
end;

procedure TFrAddUser.DataSetNext1Execute(Sender: TObject);
begin
  inherited;
  dm.sys_User.Next;
  ConfirmPass.Text:=dm.sys_UserPassWord.AsString;

end;


procedure TFrAddUser.BitBtn1Click(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFrAddUser.FormShow(Sender: TObject);
begin
  inherited;
  //
end;

end.
