unit userDefine;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ToolWin, ActnMan, ActnCtrls, DBActns, ActnList,
  ImgList, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, ADODB, Grids,
  DBGrids,  UemsVCL, ActnMenus, jpeg, ComCtrls, ExtActns, XPStyleActnCtrls,
  xpWindow, xpBitBtn, YDbgrid;

type
  TUserDefineF = class(TMBaseForm)
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
    Access2: TADOTable;
    WordField7: TWordField;
    WideStringField5: TWideStringField;
    DAccess2: TDataSource;
    Panel2: TPanel;
    ActionToolBar1: TActionToolBar;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    Label7: TLabel;
    SpeedButton5: TSpeedButton;
    Label6: TLabel;
    SpeedButton4: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label8: TLabel;
    SBArchiveFolder: TSpeedButton;
    Label2: TLabel;
    DBLkCBAccessID: TDBLookupComboBox;
    DBETitle: TDBEdit;
    DBEUserName: TDBEdit;
    ConfirmPass: TEdit;
    DBEdit3: TDBEdit;
    DBLkCBDefualtSecretariatID: TDBLookupComboBox;
    DBCheckBox1: TDBCheckBox;
    DBLkCBFromOrgTitle: TDBLookupComboBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    Pass: TEdit;
    Panel3: TPanel;
    SpeedButton3: TSpeedButton;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Panel4: TPanel;
    Label12: TLabel;
    SEdit: TEdit;
    cbAccess: TDBLookupComboBox;
    FilterAccess: TCheckBox;
    Label13: TLabel;
    DBGFromORG: TYDBGrid;
    Panel5: TPanel;
    BitBtn1: TBitBtn;
    Panel6: TPanel;
    BitBtn2: TBitBtn;
    DBGrid1: TDBGrid;
    Panel7: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Dsearch2: TDataSource;
    Search2: TADODataSet;
    Search2id: TAutoIncField;
    Search2Title: TWideStringField;
    Search2username: TWideStringField;
    DAccess3: TDataSource;
    Access3: TADOTable;
    WordField1: TWordField;
    WideStringField1: TWideStringField;
    Search2AT: TStringField;
    dbcbCanViewAllRecommits: TDBCheckBox;
    Label14: TLabel;
    DBEBeginActiveDate: TDBShamsiDateEdit;
    DBEEndActiveDate: TDBShamsiDateEdit;
    Label15: TLabel;
    chPassPolicy: TCheckBox;
    Label16: TLabel;
    lblUserCount: TLabel;
    dbChBoxShowAllDoc: TDBCheckBox;
    DSSecretration: TDataSource;
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
    procedure SBArchiveFolderClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DSFormDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SEditChange(Sender: TObject);
    procedure FilterAccessClick(Sender: TObject);
    procedure PageControl1Changing(Sender: TObject;
      var AllowChange: Boolean);
    procedure DBGFromORGDblClick(Sender: TObject);

  private
    //R1,R2,R3 : boolean;
    { Private declarations }
  public
   { Public declarations }
  end;

var
   UserDefineF: TUserDefineF;

implementation

uses  yShamsiDate, Settingsu, Dmu, UMain, addUserSecs,
      FromOrgU, UaddUserTemplateGroup, UserAccArchiveFm, UserDefineDM;

{$R *.dfm}

procedure TUserDefineF.Action11Execute(Sender: TObject);
begin
   inherited;
   close;
end;

procedure TUserDefineF.SpeedButton1Click(Sender: TObject);
begin
   inherited;
   if Dm.Users.State in [dsedit ,dsinsert] then
   begin
      MessageShowString('ﬂ«—»— ê—«„Ì ° ·ÿ›« ﬁ»· «“ »«“ ﬂ—œ‰ «Ì‰ ›—„ «ÿ·«⁄«  ŒÊœ —« –ŒÌ—Â ‰„«ÌÌœ',false);
      Exit;
   end;

   with Dm.UserSecs do
   begin
      close;
      Parameters.ParamByName('UserID').Value:=dm.UsersId.AsInteger;
      Open;
   end;

   FaddUserSecs := TFaddUserSecs.Create(self);
   FaddUserSecs.ShowModal;
   with Dm.UserSecs do
   begin
      Parameters.ParamByName('UserID').Value := _UserId;
      Open;
   end;
end;

procedure TUserDefineF.DBEdit9KeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
   inherited;
   if not DataSetEdit.Enabled then
      if key=32 then
         if MainForm.GetSearch then
            dm.UsersFromOrgID.AsInteger := dm.FromOrganizationsID.AsInteger;
end;

procedure TUserDefineF.FormCreate(Sender: TObject);
begin
   inherited;
   with Dm.Users do
   begin
      Open;
      Access2.Open;
      // Amin 1391/11/15 ConfirmPass.Text := Dm.UsersPassWord.AsString;
      {Ranjbar 89.06.30 ID=23}
      if DSForm.DataSet = nil then
         DSForm.DataSet := Dm.Users;
      //---
   end;
   Access3.Open;
   search2.Open;
//   ShowMessage(Access3.Fields[1].AsString);
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
end;

procedure TUserDefineF.DataSetInsertExecute(Sender: TObject);
begin
  inherited;
  Dm.Users.Insert;
  {Ranjbar 89.07.07 ID=21}
  // Amin 1391/11/15 ConfirmPass.Clear;
  
   Pass.Text := '';    // Amin 1391/11/15
   ConfirmPass.Text := '';    // Amin 1391/11/15

  Dm.UsersHasSecureLetterAccess.AsBoolean := True;
  //---
end;

procedure TUserDefineF.DataSetPostExecute(Sender: TObject);
begin
   inherited;
   //Add By Sanaye 941001
   // «·“«„ ò«—»— »Â —⁄«Ì  «·“«„ ”Œ Ì —„“ ⁄»Ê—
   if  chPassPolicy.Checked then
    dm.UsersChangeByAdmin.Value := True
   else
    dm.UsersChangeByAdmin.Value := False;

   //Edit By Sanaye 941001
   //«·“«„ ò«—»— »Â 8 ò«—ò — œ— ’Ê—  œ«‘ ‰ „ÃÊ“ «·“«„ ”Œ Ì —„“ ⁄»Ê—
   if (chPassPolicy.Checked) and (Length(trim(Pass.Text))<8) then
   begin
      ShowMsg(90);
      pass.SetFocus;
   end
   //End Sanaye...

   else
   if Pass.Text <> ConfirmPass.Text then // Amin 1391/11/15
   Begin
      ShowMsg(72);
      pass.SetFocus;
   end

   else
   if not(dm.PasswordPolicy(Pass.Text)) and (chPassPolicy.Checked) then
   begin
    MessageShowString('—„“ ⁄»Ê— „Ì »«Ì”   —òÌ»Ì «“ Õ—Ê› ° ⁄œœ Ê ⁄·«„  »«‘œ', False);
    //ShowMsg(91);
    pass.SetFocus;
   end

   else
     Try
         dm.UsersPassWord.Value := Locked(Pass.Text, true);  // Amin 1391/11/15
         dm.users.Post;
     except
         on E:Exception do
         ShowMessage(E.Message);
     end;
end;

procedure TUserDefineF.DataSetPrior1Execute(Sender: TObject);
begin
  inherited;
  dm.Users.Prior;
  // Amin 1391/11/15 ConfirmPass.Text:=dm.UsersPassWord.AsString;
end;

procedure TUserDefineF.DataSetNext1Execute(Sender: TObject);
begin
  inherited;
  dm.Users.Next;
  // Amin 1391/11/15 ConfirmPass.Text:=dm.UsersPassWord.AsString;

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
 Settings:=TSettings.Create(Application);
 Settings.ShowModal;

end;

procedure TUserDefineF.SpeedButton4Click(Sender: TObject);
begin
   inherited;
   if Dm.Users.State in [dsedit ,dsinsert] then
   begin
      MessageShowString('ﬂ«—»— ê—«„Ì ° ·ÿ›« ﬁ»· «“ »«“ ﬂ—œ‰ «Ì‰ ›—„ «ÿ·«⁄«  ŒÊœ —« –ŒÌ—Â ‰„«ÌÌœ',false);
      Exit;
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

procedure TUserDefineF.SBArchiveFolderClick(Sender: TObject);
begin
  inherited;
  if Dm.Users.State in [dsedit ,dsinsert] then
  begin
     MessageShowString('ﬂ«—»— ê—«„Ì ° ·ÿ›« ﬁ»· «“ »«“ ﬂ—œ‰ «Ì‰ ›—„ «ÿ·«⁄«  ŒÊœ —« –ŒÌ—Â ‰„«ÌÌœ',false);
     Exit;
  end;

  //›—„  ⁄ÌÌ‰ œ” —”Ì »Â “Ê‰ò‰ Â«  Ê”ÿ ò«—»—
  //ÊÃÊœ œ«—œ "Tr_Del_Users" ÃÂ  Õ–›  —Ìê—Ì »‰«„
  FmUserAccArchive := TFmUserAccArchive.Create(Application);
  FmUserAccArchive.ShowModal;
end;

procedure TUserDefineF.SpeedButton3Click(Sender: TObject);
begin
   inherited;
   Close;
end;

procedure TUserDefineF.DSFormDataChange(Sender: TObject; Field: TField);
begin
  inherited;
   // Amin 1391/11/15 Start
   if not( Dm.Users.State in [dsInsert, dsEdit]) then
   begin
      Pass.Text := Locked(Trim(Dm.UsersPassWord.AsString),false);
      ConfirmPass.Text := Pass.Text;
   end;
   Pass.Enabled := Dm.Users.State in [dsInsert, dsEdit];
   ConfirmPass.Enabled := Pass.Enabled;
   // Amin 1391/11/15 End
end;

procedure TUserDefineF.FormShow(Sender: TObject);
begin
  inherited;
   PageControl1.ActivePageIndex := 0;
   lblUserCount.Caption :=IntToStr(Search2.RecordCount); //Add Sanaye 941001 ‰„«Ì‘  ⁄œ«œ ò«—»—«‰
end;

procedure TUserDefineF.BitBtn1Click(Sender: TObject);
begin
  inherited;
   close;
end;

procedure TUserDefineF.BitBtn2Click(Sender: TObject);
begin
  inherited;
   close;
end;

procedure TUserDefineF.SEditChange(Sender: TObject);
var
   s:string;
begin
  inherited;
  s:=YeganehTrim(SEdit.Text);
   with search2 do
//     if length(s)>=2  then
        begin
          Close;
          CommandText:='SELECT Users.id, Users.Title,Users.username,Accesses.Title as AT FROM users INNER JOIN Accesses ON Users.AccessID=Accesses.ID  where Users.Title like ''%'+s+'%'' or  '+
          ' username like ''%'+s+'%'' order by Users.title';
          open;
       end;

end;

procedure TUserDefineF.FilterAccessClick(Sender: TObject);
begin
  inherited;
   if FilterAccess.Checked then
      cbAccess.Enabled := true
   else
      cbAccess.Enabled := false;
end;

procedure TUserDefineF.PageControl1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
  inherited;
    search2.close;
    search2.open;
end;

procedure TUserDefineF.DBGFromORGDblClick(Sender: TObject);
var UserName : String;
begin
  inherited;
  //Add Sanaye 941001
  //‰„«Ì‘ «ÿ·«⁄«  ò«—»— Â‰ê«„ ò·Ìò œ—  » «Ê·
  try
    UserName := Search2.FieldByName('UserName').AsString;
    Dm.Users.Locate('UserName', UserName, []);
    PageControl1.ActivePageIndex := 0;
  except
  end;
  //End Saneye
end;

end.
