unit userDefine;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ToolWin, ActnMan, ActnCtrls, DBActns, ActnList,
  ImgList, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, ADODB, Grids,
  DBGrids,  UemsVCL, ActnMenus, jpeg, ComCtrls, ExtActns, XPStyleActnCtrls,
  xpWindow, xpBitBtn, xpPages, YDbgrid, ExtDlgs;

type
  TUserDefineF = class(TMBaseForm)
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
    UserName: TDBEdit;
    Label4: TLabel;
    ActionToolBar1: TActionToolBar;
    Pass: TDBEdit;
    Label10: TLabel;
    ConfirmPass: TEdit;
    IsSecretariatStaffer: TDBCheckBox;
    DBEdit3: TDBEdit;
    Label9: TLabel;
    Access2: TADOTable;
    WordField7: TWordField;
    WideStringField5: TWideStringField;
    DAccess2: TDataSource;
    GeneralStaffer: TPanel;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    Label7: TLabel;
    SpeedButton5: TSpeedButton;
    Label6: TLabel;
    SpeedButton4: TSpeedButton;
    Label2: TLabel;
    SpeedButton2: TSpeedButton;
    Label11: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    xpPageControl1: TxpPageControl;
    userTab: TxpTabSheet;
    xpTabSheet2: TxpTabSheet;
    DBGFromORG: TYDBGrid;
    SEdit: TEdit;
    Label12: TLabel;
    Search: TADODataSet;
    Dsearch: TDataSource;
    Searchid: TAutoIncField;
    SearchTitle: TWideStringField;
    Searchusername: TWideStringField;
    Label13: TLabel;
    DBEdit4: TDBShamsiDateEdit;
    Label14: TLabel;
    DBEdit5: TDBShamsiDateEdit;
    Label15: TLabel;
    SpeedButton3: TSpeedButton;
    DBLookupComboBox4: TDBLookupComboBox;
    xpBitBtn1: TxpBitBtn;
    Bevel1: TBevel;
    xpBitBtn2: TxpBitBtn;
    xpBitBtn3: TxpBitBtn;
    Label16: TLabel;
    DBImage1: TImage;
    OpenPictureDialog: TOpenPictureDialog;
    DBCheckBox1: TDBCheckBox;
    procedure Action11Execute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DataSetInsertExecute(Sender: TObject);
    procedure DataSetPostExecute(Sender: TObject);
    procedure DataSetPrior1Execute(Sender: TObject);
    procedure DataSetNext1Execute(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SEditChange(Sender: TObject);
    procedure DBGFromORGDblClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure DataSetDeleteExecute(Sender: TObject);
    procedure xpBitBtn2Click(Sender: TObject);
    procedure xpBitBtn3Click(Sender: TObject);
    procedure RefreshControls;
  private

    { Private declarations }
  public
   { Public declarations }
  end;

var
  UserDefineF: TUserDefineF;

implementation

uses  yShamsiDate, colorSetting, Settingsu, Dmu, UMain, addUserSecs,
  FromOrgU, UaddUserTemplateGroup, businessLayer;

{$R *.dfm}

procedure TUserDefineF.Action11Execute(Sender: TObject);
begin
  inherited;
close;
end;

procedure TUserDefineF.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if dm.Users.State in [dsedit ,dsinsert] then
    begin
      messageShowString('«» œ« »«Ìœ «ÿ·«⁄«  ò«—»— —« –ŒÌ—Â ò‰Ìœ',false);
      exit;
    end;
 
 FaddUserSecs:=TFaddUserSecs.Create(self);
 FaddUserSecs.ShowModal;
end;

procedure TUserDefineF.DBEdit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if not DataSetEdit.Enabled then
 if key=32 then
    if MainForm.GetSearch then
     dm.UsersFromOrgID.AsInteger:= dm.FromOrganizationsID.AsInteger;

end;


Procedure TUserDefineF.RefreshControls;
begin
  ConfirmPass.Text:=dm.UsersPassWord.AsString;
  DBImage1.Picture.Bitmap:=nil;
end;
procedure TUserDefineF.FormCreate(Sender: TObject);
begin
  inherited;
with  dm.Users do
 begin
   Open;
   Access2.Open;
   RefreshControls;
 end;
end;

procedure TUserDefineF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;

 if not DataSetEdit.Enabled then
    if messageShow(27,true) then
      DSForm.DataSet.Post
     else
     DSForm.DataSet.Cancel;
 dm.Users.close;
  DeleteFile(_TempPath+'\yeganehsign.jpg');
end;

procedure TUserDefineF.DataSetInsertExecute(Sender: TObject);
begin
  inherited;
 dm.Users.Insert;
end;

procedure TUserDefineF.DataSetPostExecute(Sender: TObject);
 var ins: boolean;
begin
  inherited;
  ins:=dm.Users.state=dsinsert;
   if ins then
    if Check_duplicate_UserName(dm.UsersUserName.AsString) then
      begin
        ShowMessage('«Ì‰ ‰«„ ò«—»—Ì ﬁ»·« «÷«›Â ‘œÂ «” ');
        UserName.SetFocus;
        exit;
      end;
      
    if trim(dm.UsersUserName.AsString)='' then
      begin
        ShowMessage('‰«„ ò«—»—Ì ‰„Ì  Ê«‰œ  ÂÌ »«‘œ');
        UserName.SetFocus;
        EXIT;
      end;

 if dm.UsersPassWord.AsString<>ConfirmPass.Text then
  Begin
    ShowMsg(72);
    pass.SetFocus;
  end
 else dm.Users.Post;

 
if ins then
with dm.UserSecretariat do
 begin
  Close;
  Parameters.ParamByName('UserID').Value:=Exec_Get_LastUserId;
  Open;
 end;

end;

procedure TUserDefineF.DataSetPrior1Execute(Sender: TObject);
begin
  inherited;
  dm.Users.Prior;
   RefreshControls;
end;

procedure TUserDefineF.DataSetNext1Execute(Sender: TObject);
begin
  inherited;
  dm.Users.Next;
   RefreshControls;

end;

procedure TUserDefineF.SpeedButton2Click(Sender: TObject);
begin
  inherited;
if dm.Users.State in [dsedit,dsInsert] then
begin
   FromOrgForm:=TFromOrgForm.Create(Application);
   FromOrgForm.ShowModal;
   if FromOrgForm.done then
      dm.UsersFromOrgID.AsInteger:=_ResultOrgID
end;

end;

procedure TUserDefineF.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  if dm.Users.State in [dsedit ,dsinsert] then
    begin
      messageShowString('«» œ« »«Ìœ «ÿ·«⁄«  ò«—»— —« –ŒÌ—Â ò‰Ìœ',false);
      exit;
    end;
 Settings:=TSettings.Create(Application);
 Settings.ShowModal;

end;

procedure TUserDefineF.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  if dm.Users.State in [dsedit ,dsinsert] then
    begin
      messageShowString('«» œ« »«Ìœ «ÿ·«⁄«  ò«—»— —« –ŒÌ—Â ò‰Ìœ',false);
      exit;
    end;
        with dm.UserTemplateGroup do
         begin
          close;
          Parameters.ParamByName('UserID').Value:=dm.UsersId.AsInteger;
          Open;
         end;

 FaddUserTemplateGroup:=TFaddUserTemplateGroup.Create(self);
 FaddUserTemplateGroup.ShowModal;
        with dm.UserTemplateGroup do
         begin
          Parameters.ParamByName('UserID').Value:=_userid;
          Open;
         end;

end;

procedure TUserDefineF.BitBtn1Click(Sender: TObject);
begin
  inherited;
close;
end;

procedure TUserDefineF.SEditChange(Sender: TObject);
var s:string;
begin
  inherited;
  s:=YeganehTrim(SEdit.Text);
with search do
 if length(s)>=2  then
  begin
    Close;
    CommandText:='select id, Title,username from users where  Title like ''%'+s+'%'' or  '+
    ' username like ''%'+s+'%'' order by title';
    open;
  end

end;

procedure TUserDefineF.DBGFromORGDblClick(Sender: TObject);
begin
  inherited;
dm.Users.Locate('id',Searchid.AsInteger,[]);
userTab.Show;
end;

procedure TUserDefineF.SpeedButton3Click(Sender: TObject);
begin
  inherited;
if dm.Users.State in [dsedit,dsInsert] then
begin
   FromOrgForm:=TFromOrgForm.Create(Application);
   FromOrgForm.ShowModal;
   if FromOrgForm.done then
      dm.UsersSecondOrgID.AsInteger:=_ResultOrgID
end;


end;

procedure TUserDefineF.xpBitBtn1Click(Sender: TObject);
begin
  inherited;
  DM.UsersSecondOrgID.AsString:='';
end;

procedure TUserDefineF.DataSetDeleteExecute(Sender: TObject);
begin
  inherited;
if messageShowString('¬Ì« «“ «‰Ã«„ «Ì‰ ⁄„· „ÿ„∆‰ Â” Ìœ',true) then
 dm.Users.Delete;
end;

procedure TUserDefineF.xpBitBtn2Click(Sender: TObject);
begin
  inherited;
  Open_UserSign(dm.UsersId.AsInteger);
  if dm.Select_UserSignUserSign.IsNull then
   exit;
   dm.Select_UserSignUserSign.SaveToFile(_TempPath+'\yeganehsign.jpg');
    DBImage1.Picture.LoadFromFile(_TempPath+'\yeganehsign.jpg');
end;

procedure TUserDefineF.xpBitBtn3Click(Sender: TObject);
begin
  inherited;
   if not OpenPictureDialog.Execute then exit;

  Open_UserSign(dm.UsersId.AsInteger);
   with dm,Select_UserSign do
   begin
    if RecordCount=0 then
     begin
      Insert;
      Select_UserSignUserID.AsInteger:=dm.UsersId.AsInteger;
     end
    else edit; 
    Select_UserSignUserSign.LoadFromFile(OpenPictureDialog.FileName);
    Post;
    DBImage1.Picture.LoadFromFile(OpenPictureDialog.FileName);
   end;
end;

end.

