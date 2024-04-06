unit userDefine;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ToolWin, ActnMan, ActnCtrls, DBActns, ActnList,
  ImgList, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, ADODB, Grids,
  DBGrids,  UemsVCL, ActnMenus, jpeg, ComCtrls, ExtActns, XPStyleActnCtrls,
   xpBitBtn, xpPages, YDbgrid, ExtDlgs, Menus, TntDialogs, TntExtDlgs;

type
  TUserDefineF = class(TMBaseForm)
    Panel1: TPanel;
    ActionManager: TActionManager;
    DataSetInsert: TDataSetInsert;
    DataSetEdit: TDataSetEdit;
    DataSetPost: TDataSetPost;
    DataSetCancel: TDataSetCancel;
    Action11: TAction;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    Action1: TAction;
    Label1: TLabel;
    DBLkCBAccessID: TDBLookupComboBox;
    DBETitle: TDBEdit;
    Label3: TLabel;
    DBEUserName: TDBEdit;
    Label4: TLabel;
    ActionToolBar1: TActionToolBar;
    EdtPassword: TEdit;
    Label10: TLabel;
    EdtConfirmPassword: TEdit;
    DBCBIsSecretariatStaffer: TDBCheckBox;
    Label9: TLabel;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    Label6: TLabel;
    SpeedButton4: TSpeedButton;
    Label11: TLabel;
    DBLkCBDefaultSec: TDBLookupComboBox;
    xpPageControl1: TxpPageControl;
    userTab: TxpTabSheet;
    xpTabSheet2: TxpTabSheet;
    DBGFromORG: TYDBGrid;
    Label13: TLabel;
    DBEBeginActiveDate: TDBShamsiDateEdit;
    Label14: TLabel;
    DBEEndActiveDate: TDBShamsiDateEdit;
    Bevel1: TBevel;
    OpenPictureDialogT: TOpenPictureDialog;
    DBChBoHasSecureLetterAccess: TDBCheckBox;
    Label17: TLabel;
    SBAccessToZonkan: TSpeedButton;
    GroupBox1: TGroupBox;
    DBImage1: TImage;
    xpBitBtn3: TBitBtn;
    xpBitBtn2: TBitBtn;
    Panel2: TPanel;
    SEdit: TEdit;
    Label12: TLabel;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    GroupBox2: TGroupBox;
    SpeedButton2: TSpeedButton;
    DBLkCBFromOrgTitle: TDBLookupComboBox;
    Label8: TLabel;
    SpeedButton3: TSpeedButton;
    DBLkCBSecondOrgTitle: TDBLookupComboBox;
    Label15: TLabel;
    Label2: TLabel;
    DBEEmail: TDBEdit;
    DeleteUser: TAction;
    cbAccess: TDBLookupComboBox;
    FilterAccess: TCheckBox;
    SpeedButton5: TSpeedButton;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    xpTabSheet1: TxpTabSheet;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    acShowDeactivateUsers: TAction;
    acActivateUser: TAction;
    BitBtn2: TBitBtn;
    DsDeactivateUsers: TDataSource;
    acDeleteUser: TAction;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    DBCheckBox1: TDBCheckBox;
    Label7: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    SpeedButton6: TSpeedButton;
    chkShowPassword: TCheckBox;
    DBCheckBox2: TDBCheckBox;
    BitBtn5: TBitBtn;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    qrySecoundSign: TADOQuery;
    qrySecoundSignSecoundSign: TBlobField;
    qryUpdate: TADOQuery;
    chkArchiveClassification: TDBCheckBox;
    OpenPictureDialog: TTntOpenPictureDialog;
    procedure Action11Execute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
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
    procedure xpBitBtn3Click(Sender: TObject);
    procedure RefreshControls;
    procedure SBAccessToZonkanClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEEmailEnter(Sender: TObject);
    procedure DBEEmailExit(Sender: TObject);
    procedure DeleteUserExecute(Sender: TObject);
    procedure FilterAccessClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtPasswordKeyPress(Sender: TObject; var Key: Char);
    procedure EdtConfirmPasswordKeyPress(Sender: TObject; var Key: Char);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure acShowDeactivateUsersExecute(Sender: TObject);
    procedure acActivateUserExecute(Sender: TObject);
    procedure acDeleteUserExecute(Sender: TObject);
    procedure acDeleteUserUpdate(Sender: TObject);
    procedure acActivateUserUpdate(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure chkShowPasswordClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure xpBitBtn2Click(Sender: TObject);
  private
     isSecoundSign : boolean ;
    { Private declarations }
  public
   { Public declarations }
  end;

var
  UserDefineF: TUserDefineF;

implementation

uses UserDefineDM , yShamsiDate, Settingsu, Dmu, UMain, addUserSecs,
     FromOrgU, UaddUserTemplateGroup, businessLayer, UserAccArchiveFm,
  uSecoundSign, DateUtils;

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

Procedure TUserDefineF.RefreshControls;
begin
   try
      EdtConfirmPassword.Text := Locked(Trim(Dm.UsersPassWord.AsString),false);
      EdtPassword.Text := EdtConfirmPassword.Text;
   except
   end;
   DBImage1.Picture.Bitmap:=nil;
end;

procedure TUserDefineF.FormCreate(Sender: TObject);
begin
  inherited;
  {Ranjbar}
  DSForm.DataSet := dm.Users;
  //---
  dm.Users.Open;

  DMUserDefine.Access2.Open;
  RefreshControls;
  {$IFDEF LIGHT}
       DBCBIsSecretariatStaffer.Visible := false;
       DBCheckBox1.Visible := false;
       GroupBox1.Visible := false;
       GroupBox2.Visible := false;
       Label7.Visible := false;
       DBLookupComboBox1.Visible := false;
       SpeedButton6.Visible := false;

       Label17.Top := DBCheckBox2.Top + 8;
       DBCheckBox2.Top := chkArchiveClassification.Top;
       chkArchiveClassification.Top := DBCheckBox1.Top;
       Label5.Top := DBCBIsSecretariatStaffer.Top + 4;
       Label6.Top := DBCBIsSecretariatStaffer.Top + 4;
       SBAccessToZonkan.Top := Label17.Top - 4;
       SpeedButton1.Top := Label5.Top - 4;
       SpeedButton4.Top := Label5.Top - 4;
       {$IFDEF SINGLE}
            DBCheckBox2.Visible := false;
            Label5.Visible := false;
            SpeedButton1.Visible := false;
            Label6.Top := Label6.Top -20;
            SpeedButton4.Top := SpeedButton4.Top - 20;
            Label17.Top := Label6.Top;
            SBAccessToZonkan.Top := SpeedButton4.Top;
       {$ENDIF}
   {$ENDIF}

end;

procedure TUserDefineF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if not DataSetEdit.Enabled then
  begin
     if messageShow(27,true) then
        {Ranjbar 89.08.18 ID=200}
        //DSForm.DataSet.Post
        DataSetPostExecute(Sender) //–ŒÌ—Â «ÿ·«⁄« 
        //---
     else
        DSForm.DataSet.Cancel; //«‰’—«›
  end;

  dm.Users.close;
  DeleteFile(_TempPath+'\yeganehsign.jpg');
  inherited;
end;

procedure TUserDefineF.DataSetInsertExecute(Sender: TObject);
begin
   inherited;
   dm.Users.Insert;
   EdtConfirmPassword.Clear;
   {Ranjbar 89.08.18 ID=207}
   EdtPassword.Clear;
   //---
end;

procedure TUserDefineF.DataSetPostExecute(Sender: TObject);
Var
   ins : boolean;
   S1,S2,S3:String;
begin
   inherited;
   {Ranjbar 89.08.18 ID=200}
   DBETitle.SetFocus; //»—œ«‘ Â ‰‘Êœ
   DBEUserName.SetFocus;

   {Ranjbar 89.10.26 ID=281}
   if DBLkCBAccessID.KeyValue = Null then
   begin
      ShowMyMessage('ÅÌ€«„','·ÿ›« ›Ì·œ ”ÿÕ œ” —”Ì —« „ﬁœ«—œÂÌ ‰„«ÌÌœ',[mbOK],mtInformation);
      DBLkCBAccessID.SetFocus;
      Exit;
   end;

 //   if (DBLookupComboBox1.KeyValue = Null) or (DBLookupComboBox1.KeyValue = 0) then
//   begin
//      ShowMyMessage('ÅÌ€«„','Ìò ê—ÊÂ ò«—Ì —« »—«Ì ò«—»— «‰ Œ«» ‰„«ÌÌœ',[mbOK],mtInformation);
//      Abort;
//      Exit;
//   end;

   if ((EdtPassword.Text) <> (EdtConfirmPassword.Text)) and (not chkShowPassword.Checked) then      // Amin 1391/10/02 Edited
   begin
      ShowMyMessage('ÅÌ€«„','ﬂ«—»— ê—«„Ì ° „ﬁ«œÌ— œÊ ›Ì·œ "ﬂ·„Â ⁄»Ê—" Ê " ﬂ—«— ﬂ·„Â ⁄»Ê—" »« Â„ ‰«»—«»—‰œ. ·ÿ›«  ’ÕÌÕ ‰„«ÌÌœ',[mbOK],mtInformation);
      EdtPassword.SetFocus;
      Exit;
   end;

   if Trim(Dm.UsersUserName.AsString) = '' then
   begin
      ShowMessage('‰«„ ò«—»—Ì ‰„Ì  Ê«‰œ Œ«·Ì »«‘œ');
      DBEUserName.SetFocus;
      Exit;
   end;
   //---

   ins := dm.Users.state=dsinsert;
   if ins then
   begin
      if (Trim(EdtPassword.Text) = '')then
         if ShowMyMessage('ÅÌ€«„','¬Ì« „«Ì· »Â –ŒÌ—Â «Ì‰ ﬂ«—»— »œÊ‰ —„“ ⁄»Ê— Â” Ìœø',mbOKCancel,mtWarning) <> mrok then
         begin
            EdtPassword.SetFocus;
            Exit
         end;
      
      if Check_duplicate_UserName(Dm.UsersUserName.AsString) then
      begin
         ShowMessage('«Ì‰ ‰«„ ò«—»—Ì ﬁ»·« «÷«›Â ‘œÂ «” ');
         DBEUserName.SetFocus;
         exit;
      end;

      if Not Email_IsCorrect(Trim(dm.UsersEmail.AsString)) then
      begin
         MBaseForm.messageShowString('¬œ—” «Ì„Ì· Ê«—œ  ‘œÂ «‘ »«Â „Ì »«‘œ . ·ÿ›«  ’ÕÌÕ ‰„«ÌÌœ', False);
         Exit;
      end;
   end;

   {Ranjbar 90.02.07 ID=353}
   {if EdtPassword.Text > EdtConfirmPassword.Text then
   Begin
      ShowMsg(72);
      pass.SetFocus;
   end
      else
      begin
         Dm.UsersPassWord.AsString := Locked(Trim(Pass.Text),true);
         Dm.Users.Post;
      end;}
   Dm.UsersPassWord.AsString := Locked(Trim(EdtPassword.Text),True);
   Dm.UsersActive.AsBoolean:=True;
   Dm.Users.Post;

   //{Ranjbar} (AutoInc) »⁄·  »«ê œ·›Ì
   if ins then
   begin
      S1 := Dm.UsersTitle.AsString;
      S2 := Dm.UsersUserName.AsString;
      S3 := Dm.UsersPassWord.AsString;
      Dm.Users.Close;
      Dm.Users.Open;
      Dm.Users.Locate('Title;UserName;PassWord',VarArrayOf([S1,S2,S3]),[]);
   end;
   //---

   if ins then
      With dm.UserSecretariat do
      begin
         Close;
         Parameters.ParamByName('UserID').Value := Exec_Get_LastUserId;
         Open;
      end;
end;

procedure TUserDefineF.DataSetPrior1Execute(Sender: TObject);
begin
   inherited;
   Dm.Users.Prior;
   RefreshControls;
end;

procedure TUserDefineF.DataSetNext1Execute(Sender: TObject);
begin
   inherited;
   Dm.Users.Next;
   RefreshControls;
end;

procedure TUserDefineF.SpeedButton2Click(Sender: TObject);
begin
   inherited;
   if Dm.Users.State in [dsEdit,dsInsert] then
   begin
      FromOrgForm := TFromOrgForm.Create(Application);
      FromOrgForm.ShowModal;
      if FromOrgForm.Done then
         Dm.UsersFromOrgID.AsInteger := _ResultOrgID
   end;

end;

procedure TUserDefineF.SpeedButton5Click(Sender: TObject);
begin
   inherited;
   if DM.Users.State in [dsEdit,dsInsert] then
      DM.UsersSecondOrgID.AsString:='';

  {if dm.Users.State in [dsedit ,dsinsert] then
    begin
      messageShowString('«» œ« »«Ìœ «ÿ·«⁄«  ò«—»— —« –ŒÌ—Â ò‰Ìœ',false);
      exit;
    end;
 Settings:=TSettings.Create(Application);
 Settings.ShowModal;
   }
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
with DMUserDefine.search do
 if length(s)>=2  then
  begin
    Close;
    CommandText:='select id, Title,username from users where (Active=''1'') and Title like ''%'+s+'%'' or  '+
    ' username like ''%'+s+'%'' order by title';
    open;
  end

end;

procedure TUserDefineF.DBGFromORGDblClick(Sender: TObject);
begin
  inherited;
  dm.Users.Locate('id',DMUserDefine.Searchid.AsInteger,[]);
  {Ranjbar 90.02.07 ID=353}
  RefreshControls;
  //---
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

procedure TUserDefineF.xpBitBtn3Click(Sender: TObject);
begin
  inherited;
   with TADOQuery.Create(nil)do
   begin
      Connection := dm.YeganehConnection;
      SQL.Text := 'SELECT UserID FROM UserSign WHERE UserID='+dm.UsersId.AsString;
      Open;
      if IsEmpty then
         n1.Caption := '«›“Êœ‰'
      else
         n1.Caption := ' €ÌÌ—';
   end;
   PopupMenu1.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);

end;

procedure TUserDefineF.SBAccessToZonkanClick(Sender: TObject);
begin
  inherited;
  if dm.Users.State in [dsedit ,dsinsert] then
  begin
     messageShowString('«» œ« »«Ìœ «ÿ·«⁄«  ò«—»— —« –ŒÌ—Â ò‰Ìœ',false);
     Exit;
  end;

  //›—„  ⁄ÌÌ‰ œ” —”Ì »Â “Ê‰ò‰ Â«  Ê”ÿ ò«—»—
  //for Delete have Trigger With Name "Tr_Del_Users"
  FmUserAccArchive := TFmUserAccArchive.Create(Application);
  FmUserAccArchive.ShowModal;
end;

procedure TUserDefineF.FormShow(Sender: TObject);
begin
  inherited;
  xpPageControl1.TabIndex := 0;
  dm.Users.Next;
  RefreshControls;
  Dm.ChartWorkGroup.Close;
  Dm.ChartWorkGroup.Open;
end;

procedure TUserDefineF.DBEEmailEnter(Sender: TObject);
begin
  inherited;
  Keyboard_English;
end;

procedure TUserDefineF.DBEEmailExit(Sender: TObject);
begin
   inherited;
   Keyboard_Farsi;
end;

procedure TUserDefineF.DeleteUserExecute(Sender: TObject);
//Var
//   UserLetterCount : Integer;
begin
   inherited;
//   UserLetterCount := StrToIntDef(Qry_GetResult('SELECT Count(UserID)AS UserLetterCount FROM letter WHERE UserID = '+
//                      IntToStr(Dm.UsersID.AsInteger),Dm.YeganehConnection),0);
//   if UserLetterCount > 0 then
//   begin
//      ShowMyMessage('ÅÌ€«„',' ﬂ«—»— ê—«„Ì ° »œ·Ì· À»  ' + IntToStr(UserLetterCount) +
//                    ' ‰«„Â  Ê”ÿ «Ì‰ ﬂ«—»— «„ﬂ«‰ Õ–› ÊÃÊœ ‰œ«—œ ' +#13+'ò«—»— €Ì—›⁄«· ŒÊ«Âœ ‘œ',[mbOK],mtInformation);
      Dm.DeactivateUser;
      DSForm.DataSet.Close;
      DSForm.DataSet.Open;      
//   end;
//   else
//   begin
//      delete_user(Dm.UsersID.AsInteger); //Sp => Delete_User
//      DSForm.DataSet.Close;
//      DSForm.DataSet.Open;
//   end;
end;

procedure TUserDefineF.FilterAccessClick(Sender: TObject);
begin
   inherited;
   cbAccess.Enabled:=FilterAccess.Checked;
   Sedit.Enabled:=not cbAccess.Enabled;
   if FilterAccess.Checked then
   begin
      if cbAccess.KeyValue<>Null  then
         with DMUserDefine.search do
         begin
            Close;
            CommandText:='select id, Title,username from users where  AccessId='+IntToStr(cbAccess.KeyValue)+' order by title';
            open;
         end;
    end;
end;

procedure TUserDefineF.FormKeyDown(Sender: TObject; Var Key: Word;Shift: TShiftState);
begin
   inherited;
   if not(ssShift in shift) And (Key = Vk_Return) then 
      SelectNext(ActiveControl,True,True);
end;

procedure TUserDefineF.EdtPasswordKeyPress(Sender: TObject; var Key: Char);
begin
   inherited;
   if not(Dm.Users.State in [dsEdit,dsInsert]) then
      Abort;
end;

procedure TUserDefineF.EdtConfirmPasswordKeyPress(Sender: TObject;
  var Key: Char);
begin
   inherited;
   if not(Dm.Users.State in [dsEdit,dsInsert]) then
      Abort;
end;

procedure TUserDefineF.N1Click(Sender: TObject);
var
   b1,b2 : boolean;
   FS : TFileStream;
   buf : array [0..50] of byte;
   str ,s: string;
   i: integer;
begin
  inherited;
  if dm.Users.State in [dsedit ,dsinsert] then
  begin
     messageShowString('«» œ« »«Ìœ «ÿ·«⁄«  ò«—»— —« –ŒÌ—Â ò‰Ìœ',false);
     Exit;
  end;
 // ShowMessage('·ÿ›« »Â  — Ì» «„÷«Ì «’·Ì Ê „Êﬁ  —« «‰ Œ«» ò‰Ìœ'+ #13#13+
//  ' —ÃÌÕ« ”«Ì“ «„÷«Ì «’·Ì Ê „Êﬁ  Â„ «‰œ«“Â »«‘œ');
   if not isSecoundSign then
   begin
      OpenPictureDialog.Title := '«‰ Œ«» «„÷« «’·Ì';
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
         if FileExists(_ApplicationPath+'tmpFile')then
           DeleteFile(pchar(_ApplicationPath+'tmpFile'));
         if CopyFileW( replacePWC(StringToPWide(OpenPictureDialog.filename,i)), StringToPWide(_ApplicationPath+'tmpFile',i), False) then
            s := _ApplicationPath+'tmpFile'
         else if CopyFileW( StringToPWide(OpenPictureDialog.filename,i), StringToPWide(_ApplicationPath+'tmpFile',i), False) then
            s := _ApplicationPath+'tmpFile'
         else
            ShowMessage('Œÿ« œ— ŒÊ«‰œ‰ ›«Ì· „»œ«');
         if s<>'' then
            Select_UserSignUserSign.LoadFromFile(s);
         Post;
         b1 := true;
         MenuItem1Click(self);
         //DBImage1.Picture.LoadFromFile(OpenPictureDialog.FileName);
      end;
   end
   else
   begin
      OpenPictureDialog.Title := '«‰ Œ«» «„÷« „Êﬁ ';
      Open_UserSign(dm.UsersId.AsInteger);
      if dm.Select_UserSign.RecordCount = 0 then
      begin
         isSecoundSign := false;
         N1Click(self);
         exit;
      end;
      if OpenPictureDialog.Execute then
      begin
         if FileExists(_ApplicationPath+'tmpFile')then
           DeleteFile(pchar(_ApplicationPath+'tmpFile'));
         if CopyFileW( dm.replacePWC(StringToPWide(OpenPictureDialog.filename,i)), StringToPWide(_ApplicationPath+'tmpFile',i), False) then
            s := _ApplicationPath+'tmpFile'
         else if CopyFileW( StringToPWide(OpenPictureDialog.filename,i), StringToPWide(_ApplicationPath+'tmpFile',i), False) then
            s := _ApplicationPath+'tmpFile'
         else
            ShowMessage('Œÿ« œ— ŒÊ«‰œ‰ ›«Ì· „»œ«');

         FS := TFileStream.Create(s,fmOpenReadWrite);
         FS.seek(FS.Size,soFromBeginning);
         str := 'Yeganeh UserID:'+ dm.UsersId.AsString;
         for i:=0 to length(str) do
            buf[i] := ord(str[i]);
         FS.Write(buf,50);
         FS.Free;
         qryUpdate.Parameters[0].LoadFromFile(s,ftVarBytes);
         qryUpdate.Parameters[1].Value := dm.UsersId.AsInteger;
         qryUpdate.ExecSQL;
         MenuItem2Click(self);
         b2 := true;
      end;
   end;
   if b1 then
      ShowMessage('«„÷«Ì «’·Ì «›“ÊœÂ ‘œ')
   else if b2 then
      ShowMessage('«„÷«Ì „Êﬁ  «›“ÊœÂ ‘œ')
   else
         ShowMessage('·ÿ›« œÊ»«—Â  ·«‘ ò‰Ìœ');
end;

procedure TUserDefineF.N2Click(Sender: TObject);
begin
  inherited;
  if dm.Users.State in [dsedit ,dsinsert] then
  begin
     messageShowString('«» œ« »«Ìœ «ÿ·«⁄«  ò«—»— —« –ŒÌ—Â ò‰Ìœ',false);
     Exit;
  end;

  Open_UserSign(dm.UsersId.AsInteger);
  with dm,Select_UserSign do
  begin
     if RecordCount=0 then
         ShowMsgString('„Ê—œÌ »—«Ì Õ–› ÊÃÊœ ‰œ«—œ')
     else
     begin
        if messageShowString('œ—’Ê—   «ÌÌœ Â— œÊ «„÷« Å«ò ŒÊ«Âœ ‘œ', True) then
        begin
            with TADOQuery.Create(nil)do
            begin
               Connection := dm.YeganehConnection;
               SQL.Text := 'DELETE FROM UserSign WHERE UserID='+dm.UsersId.AsString;
               ExecSQL;
            end;
            DBImage1.Picture:=nil;
            ShowMsgString('«„÷« Õ–› ‘œ');
         end;
     end;     
  end;
end;

procedure TUserDefineF.acShowDeactivateUsersExecute(Sender: TObject);
begin
  inherited;
  Dm.qDeactivateUsers.Close;
  Dm.qDeactivateUsers.Open;
end;

procedure TUserDefineF.acActivateUserExecute(Sender: TObject);
begin
  inherited;
  Dm.qtemp.Close;
  Dm.qtemp.SQL.Clear;
  Dm.qtemp.SQL.Add('UPDATE Users');
  Dm.qtemp.SQL.Add('SET	Active = 1');
  Dm.qtemp.SQL.Add('WHERE Id=');
  Dm.qtemp.SQL.Add(Dm.qDeactivateUsersId.AsString);
  Dm.qtemp.ExecSQL;
  Dm.qDeactivateUsers.Close;
  Dm.qDeactivateUsers.Open;
  Dm.Users.Close;
  Dm.Users.Open;  
end;

procedure TUserDefineF.acDeleteUserExecute(Sender: TObject);
begin
  if Dm.UserHasRecords then
  begin
    ShowMsgString('»—«Ì «Ì‰ ò«—»— œ— ”Ì” „ ° «ÿ·«⁄«  À»  ‘œÂ «” . „Ã«“ »Â Õ–› ¬‰ ‰Ì” Ìœ');
  end
  else
  begin
      delete_user(Dm.qDeactivateUsersId.AsInteger);
      DSForm.DataSet.Close;
      DSForm.DataSet.Open;
      Dm.qDeactivateUsers.Close;
      Dm.qDeactivateUsers.Open;
  end;
end;

procedure TUserDefineF.acDeleteUserUpdate(Sender: TObject);
begin
  if Dm.qDeactivateUsers.IsEmpty then acDeleteUser.Enabled:=False else acDeleteUser.Enabled:=True;
end;

procedure TUserDefineF.acActivateUserUpdate(Sender: TObject);
begin
  if Dm.qDeactivateUsers.IsEmpty then acActivateUser.Enabled:=False else acActivateUser.Enabled:=True;
end;

procedure TUserDefineF.SpeedButton6Click(Sender: TObject);
begin
   if DM.Users.State in [dsEdit,dsInsert] then
      DM.UsersGroupID.AsInteger:=0;
end;

procedure TUserDefineF.chkShowPasswordClick(Sender: TObject);
begin
  inherited;
   // Amin 1391/10/02 Start
   if chkShowPassword.Checked then
   begin
      EdtPassword.PasswordChar := #0;
      EdtConfirmPassword.PasswordChar := #0;
      Label10.Visible := false;
      EdtConfirmPassword.Visible := false;
   end
   else
   begin
      EdtPassword.PasswordChar := '*';
      EdtConfirmPassword.PasswordChar := '*';
      Label10.Visible := true;
      EdtConfirmPassword.Visible := true;
   end
   // Amin 1391/10/02 End
end;

procedure TUserDefineF.BitBtn5Click(Sender: TObject);
begin
  inherited;
   with TADOQuery.Create(nil)do
   begin
      Connection := dm.YeganehConnection;
      SQL.Text := 'SELECT userID FROM UserSign WHERE UserID='+dm.UsersId.AsString;
      Open;
      if IsEmpty then
         exit;
   end;
   frmSecoundSign := TfrmSecoundSign.Create(Application);
   frmSecoundSign.UserID := dm.UsersId.AsInteger;
   frmSecoundSign.ShowModal;
end;

procedure TUserDefineF.MenuItem1Click(Sender: TObject);
begin
  inherited;
  Open_UserSign(dm.UsersId.AsInteger);
  if dm.Select_UserSignUserSign.IsNull then
   exit;
   dm.Select_UserSignUserSign.SaveToFile(_TempPath+'\yeganehsign.jpg');
    DBImage1.Picture.LoadFromFile(_TempPath+'\yeganehsign.jpg');
    isSecoundSign := false;
end;

procedure TUserDefineF.MenuItem2Click(Sender: TObject);
begin
  inherited;
   qrySecoundSign.Close;
   qrySecoundSign.Parameters[0].Value := dm.UsersId.AsInteger;
   qrySecoundSign.Open;
   isSecoundSign := true;
   if qrySecoundSignSecoundSign.IsNull then
   begin
      DBImage1.Picture := nil;
      exit;
   end;
   qrySecoundSignSecoundSign.SaveToFile(_TempPath+'\yeganehsign2.jpg');
   DBImage1.Picture.LoadFromFile(_TempPath+'\yeganehsign2.jpg');
   isSecoundSign := true;
end;

procedure TUserDefineF.xpBitBtn2Click(Sender: TObject);
begin
  inherited;
   PopupMenu2.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

end.

