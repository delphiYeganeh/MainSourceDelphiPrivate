unit userDefine;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ToolWin, ActnMan, ActnCtrls, DBActns, ActnList,
  ImgList, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, ADODB, Grids,
  DBGrids,  UemsVCL, ActnMenus, jpeg, ComCtrls, ExtActns, XPStyleActnCtrls,
  Menus, xpPanel, YDbgrid, xpBitBtn;

type
  TUserDefineF = class(TMBaseForm)
    User: TADOTable;
    UserId: TIntegerField;
    UserTitle: TWideStringField;
    UserUserName: TWideStringField;
    UserPassWord: TWideStringField;
    UserMarketerID: TWordField;
    UserDefaultProductID: TWordField;
    UserEmail: TStringField;
    UserAccountNo: TStringField;
    UserAccessID: TIntegerField;
    UserIsActive: TBooleanField;
    UserIsAdmin: TBooleanField;
    UserUserTypeId: TWordField;
    UserAccessTitle: TWideStringField;
    UserShowContract: TBooleanField;
    UserEditContract: TBooleanField;
    UserShowAllCustomer: TBooleanField;
    UserExportCustomerList: TBooleanField;
    UserExportFollow: TBooleanField;
    UserShowMyAction: TBooleanField;
    UserBtnAllContract: TBooleanField;
    UserBtnAllAct: TBooleanField;
    UserISWinServer: TBooleanField;
    pnlMain: TPanel;
    xpPanel1: TxpPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    SpeedButton1: TSpeedButton;
    edtUserName: TEdit;
    dblUserTypesrch: TDBLookupComboBox;
    edtFullName: TEdit;
    Panel2: TPanel;
    Label4: TLabel;
    Label10: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Pass: TDBEdit;
    ConfirmPass: TEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit3: TDBEdit;
    dblUserType: TDBLookupComboBox;
    dbckIsActive: TDBCheckBox;
    dbchPrintCustomerList: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    Panel1: TPanel;
    btnCancel: TBitBtn;
    btnDel: TBitBtn;
    btnSave: TBitBtn;
    btnAdd: TBitBtn;
    dbgUserList: TYDBGrid;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    UserAccAcess: TBooleanField;
    UserCallAccess: TBooleanField;
    UserAssesstAccess: TBooleanField;
    UserFactorAccess: TBooleanField;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    UserManagerSale: TBooleanField;
    UserManagerProduction: TBooleanField;
    UserManagerSupport: TBooleanField;
    UserManagerOfficial: TBooleanField;
    UserIsSystemUser: TBooleanField;
    UserNewPassWord: TStringField;
    procedure Action11Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DataSetInsertExecute(Sender: TObject);
    procedure DataSetPostExecute(Sender: TObject);
    procedure DataSetPrior1Execute(Sender: TObject);
    procedure DataSetNext1Execute(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure setDblDate();
    procedure edtFullNameChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DSFormDataChange(Sender: TObject; Field: TField);
    procedure dblUserTypeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure FormShow(Sender: TObject);
  private

    { Private declarations }
  public
   { Public declarations }
  end;

var
  UserDefineF: TUserDefineF;

implementation

uses  yShamsiDate,  Dmu, BusinessLayer;

{$R *.dfm}

procedure TUserDefineF.Action11Execute(Sender: TObject);
begin
  inherited;
close;
end;

procedure TUserDefineF.FormCreate(Sender: TObject);
begin
  inherited;
with  User do
 begin
   close;
   Open;
   //ConfirmPass.Text:=UserPassWord.AsString;
   ConfirmPass.Text:= UserNewPassWord.AsString;

 end;
  setDblDate();
  Dm.Marketer.Close;
  Dm.Marketer.Open;
end;

procedure TUserDefineF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
// dm.User.close;
end;

procedure TUserDefineF.DataSetInsertExecute(Sender: TObject);
begin
  inherited;
 User.Insert;
end;

procedure TUserDefineF.DataSetPostExecute(Sender: TObject);
begin
  inherited;
 //if UserPassWord.AsString<>ConfirmPass.Text then
 if UserNewPassWord.AsString <> ConfirmPass.Text then
  Begin
    ShowMessage(' ò—«— ò·„Â ⁄»Ê— »« ò·„Â ⁄»Ê— ÌòÌ ‰Ì” ');
    pass.SetFocus;
  end
 else
  user.Post;


end;

procedure TUserDefineF.DataSetPrior1Execute(Sender: TObject);
begin
  inherited;
  User.Prior;
  //ConfirmPass.Text:= UserPassWord.AsString;
  ConfirmPass.Text:= UserNewPassWord.AsString;
end;

procedure TUserDefineF.DataSetNext1Execute(Sender: TObject);
begin
  inherited;
  User.Next;
  //ConfirmPass.Text:= UserPassWord.AsString;
  ConfirmPass.Text:= UserNewPassWord.AsString;

end;

procedure TUserDefineF.btnSaveClick(Sender: TObject);
var qry : TADOQuery;
begin
  inherited;

  if UserIsSystemUser.AsBoolean then
  begin
     ShowMessage('ò«—»— ”Ì „Ì —« ‰„Ì  Ê«‰Ìœ ÊÌ—«Ì‘ Ê Ì« Õ–› ò‰Ìœ ! ');
     exit;
  end;

   qry := TADOQuery.Create(self);
   qry.Connection:= dm.YeganehConnection;
   qry.CommandTimeout := 1200;

   qry.SQL.Text := 'Select id From dbo.Users Where  Username = '''+ DBEdit2.Text + '''  ';
   qry.Open;


   if qry.RecordCount > 1 then
   begin
     ShowMessage('‰«„ ò«—»—Ì  ò—«—Ì „Ì »«‘œ');
     exit;
   end;

    
  if  (user.State in [dsedit,dsinsert] ) then
  begin
    if (UserTitle.IsNull) or (trim(UserTitle.AsString)='') then
    begin
       ShowMessage('‰«„ ò«„· —« „‘Œ’ ò‰Ìœ');
    end;
    if (UserUserName.IsNull) or (trim(UserUserName.AsString)='') then
    begin
       ShowMessage('‰«„ ò«—»—Ì —« „‘Œ’ ò‰Ìœ');
    end;
    if (UserAccessTitle.IsNull) or (trim(UserAccessTitle.AsString)='') then
    begin
       ShowMessage('”ÿÕ œ” —”Ì —« „‘Œ’ ò‰Ìœ');
    end;
    //if UserPassWord.AsString<>ConfirmPass.Text then
    if UserNewPassWord.AsString <> ConfirmPass.Text then
    Begin

      ShowMessage(' ò—«— ò·„Â ⁄»Ê— »« ò·„Â ⁄»Ê— ÌòÌ ‰Ì” ');
      pass.SetFocus;
    end;

    user.Post;

    IF TRIM(UserUserTypeId.AsString)<>'' THEN
      Qry_SetResult(' Update Marketer SET OrgID='+TRIM(UserUserTypeId.AsString)+' WHERE MarketerID='+UserMarketerID.AsString, DM.YeganehConnection );

    ShowMessage(' €ÌÌ—«  À»  ‘œ');
 end;
// else
{ Begin

  ShowMessage(' €ÌÌ—«  À»  ‘œ');
 End;}
end;

procedure TUserDefineF.BitBtn3Click(Sender: TObject);
begin
  inherited;
User.Edit;

end;

procedure TUserDefineF.btnAddClick(Sender: TObject);
begin
  inherited;
User.Insert;
end;

procedure TUserDefineF.btnDelClick(Sender: TObject);
begin
  if UserIsSystemUser.AsBoolean then
  begin
     ShowMessage('ò«—»— ”Ì „Ì —« ‰„Ì  Ê«‰Ìœ ÊÌ—«Ì‘ Ê Ì« Õ–› ò‰Ìœ ! ');
     exit;
  end;

  if _UserID = UserId.Value then
  begin
     ShowMessage('ò«—»— ŒÊœ —« ‰„Ì Ê«‰Ìœ Õ–› ò‰Ìœ !');
     exit;
  end;
  if MessageDlg('¬Ì« «“ Õ–› ò«—»— „ÿ„∆‰ Â” Ìœ ø',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    Qry_SetResult('delete from Settings where UserId = '+UserId.AsString,dm.YeganehConnection);
    User.Delete;
  end;
end;

procedure TUserDefineF.BitBtn6Click(Sender: TObject);
begin
  inherited;
User.Append;
end;

procedure TUserDefineF.setDblDate;
var qrydblUserType :TADOQuery;
    ds : TDataSource;
begin
  qrydblUserType := TADOQuery.Create(nil);

  ds := TDataSource.Create(nil);
    with qrydblUserType do
    begin
      Connection := Dm.YeganehConnection;
      CommandTimeout := 1200;
      sql.Clear;
      SQL.Text := 'select UserTypeTitle,UserTypeID from UserType';
      open;
      Fields[0].Alignment:=   taRightJustify;
    end;

   ds.DataSet := qrydblUserType;
    with    dblUserType do
    begin
       ListSource:=ds;
       ListField:='UserTypeTitle';
       KeyField:='UserTypeID';
       Enabled:=true;
    end;


    with dblUserTypesrch do
    begin
       ListSource:=ds;
       ListField:='UserTypeTitle';
       KeyField:='UserTypeID';
    end;
end;

procedure TUserDefineF.edtFullNameChange(Sender: TObject);
begin
  inherited;
    with User do
    begin
      Filtered:=false;
      Filter := '';
      if dblUserTypesrch.KeyValue <> null then Filter := ' UserTypeId = '+  IntToStr(dblUserTypesrch.KeyValue);
      if edtFullName.Text <> '' then
            if Filter <> '' then Filter := Filter+' and  title like %'+edtFullName.Text+'%' else Filter := '   title like %'+edtFullName.Text+'%';

      if edtUserName.Text <> '' then
            if Filter <> '' then Filter := Filter+' and  UserName like %'+edtUserName.Text+'%' else Filter := '   UserName like %'+edtUserName.Text+'%';
      Filtered:=True;
end;
    end;
procedure TUserDefineF.SpeedButton1Click(Sender: TObject);
begin
  inherited;
 dblUserTypesrch.KeyValue :=null;
 edtUserName.Clear;
 edtFullName.Clear;
end;

procedure TUserDefineF.DSFormDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  //ConfirmPass.Text:=UserPassWord.AsString;
  ConfirmPass.Text:= UserNewPassWord.AsString;
end;

procedure TUserDefineF.dblUserTypeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If key = vk_delete then
  Begin
    dblUserType.KeyValue :=null;
    if not(User.State in [dsedit,dsinsert]) then
          User.edit;
    UserUserTypeId.clear;
  end;

end;

procedure TUserDefineF.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  { TODO -oparsa : 14030203 }
  if (NewWidth < 568)  or (NewHeight < 612) then
    Resize := False
  else Resize := True;
   { TODO -oparsa : 14030203 }
  inherited;

end;

procedure TUserDefineF.FormShow(Sender: TObject);
begin
  inherited;
  Dm.Marketer.Close;
  Dm.Marketer.Open;

  ShapeBase.Brush.Color := _Color1 ;
  pnlMain.Color := _Color1 ;

  xpPanel1.StartColor := _Color1 ;
  xpPanel1.EndColor   := _Color2 ;

  xpPanel1.TitleStartColor :=  _Color3;
  xpPanel1.TitleEndColor   :=  _Color4;

end;

end.



