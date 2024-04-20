unit Telinputunit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, Buttons, ToolWin, ActnMan,
  ActnCtrls, DBActns, ActnList, ImgList,DB, Grids, DBGrids, YDbgrid,BaseUnit,
  ExtActns, CheckLst, YchecklistBox,  ADODB, ComCtrls,  Menus,
  XPStyleActnCtrls, MssCalendarPro;

type
  TPropertiesForm = class(TMBaseForm)
    ActionManager1: TActionManager;
    Panel1: TPanel;
    Panel2: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label12: TLabel;
    Label11: TLabel;
    Label7: TLabel;
    Label15: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label14: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    DBMemo1: TDBMemo;
    DBEdit11: TDBEdit;
    DBEdit6: TDBEdit;
    DBLkCBGroupTitle: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    YchecklistBox1: TYchecklistBox;
    DBEdit9: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit1: TDBEdit;
    DBECustomerNo: TDBEdit;
    DBLookupComboBox4: TDBLookupComboBox;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit8: TDBEdit;
    DBLookupComboBox5: TDBLookupComboBox;
    DBECustomerID: TDBEdit;
    DBMemo2: TDBMemo;
    DBEFreeField01: TDBEdit;
    LabelFreeField01: TLabel;
    DBEFreeField02: TDBEdit;
    LabelFreeField02: TLabel;
    DBEFreeField03: TDBEdit;
    LabelFreeField03: TLabel;
    DBEFreeField04: TDBEdit;
    LabelFreeField04: TLabel;
    DBEFreeField05: TDBEdit;
    LabelFreeField05: TLabel;
    DBEFreeField06: TDBEdit;
    LabelFreeField06: TLabel;
    DBEFreeField07: TDBEdit;
    LabelFreeField07: TLabel;
    DBEFreeField08: TDBEdit;
    LabelFreeField08: TLabel;
    DBEFreeField09: TDBEdit;
    LabelFreeField09: TLabel;
    DBEFreeField10: TDBEdit;
    LabelFreeField10: TLabel;
    DBEFreeField11: TDBEdit;
    LabelFreeField11: TLabel;
    DBEFreeField12: TDBEdit;
    LabelFreeField12: TLabel;
    DBEFreeField13: TDBEdit;
    LabelFreeField13: TLabel;
    DBEFreeField14: TDBEdit;
    LabelFreeField14: TLabel;
    DBEFreeField15: TDBEdit;
    LabelFreeField15: TLabel;
    DBEFreeField16: TDBEdit;
    LabelFreeField16: TLabel;
    SBOtherPerson: TSpeedButton;
    DBEFreeField17: TDBEdit;
    LabelFreeField17: TLabel;
    DBEFreeField18: TDBEdit;
    LabelFreeField18: TLabel;
    TabSheet3: TTabSheet;
    YDBGrid1: TYDBGrid;
    Panel3: TPanel;
    pnlSearch: TPanel;
    BitBtn5: TBitBtn;
    GroupBox1: TGroupBox;
    dblState: TDBLookupComboBox;
    dblCity: TDBLookupComboBox;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Panel4: TPanel;
    DBNavigator1: TDBNavigator;
    SBSystemSettings: TSpeedButton;
    BtnCancel: TBitBtn;
    btnLetter: TSpeedButton;
    lblBirthDate: TLabel;
    Button1: TButton;
    MssCalendarPro1: TMssCalendarPro;
    edtBirthDate: TDBEdit;
    TabSheet4: TTabSheet;
    Label20: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox2: TGroupBox;
    clbUsers: TCheckListBox;
    Q_UserType: TADOQuery;
    DS_UserType: TDataSource;
    Q_UserTypeUserTypeId: TAutoIncField;
    Q_UserTypeUserTypeTitle: TWideStringField;
    cmbUserType: TDBLookupComboBox;
    TabSheet5: TTabSheet;
    LabelFreeField19: TLabel;
    LabelFreeField20: TLabel;
    LabelFreeField21: TLabel;
    LabelFreeField22: TLabel;
    LabelFreeField23: TLabel;
    LabelFreeField24: TLabel;
    LabelFreeField25: TLabel;
    LabelFreeField26: TLabel;
    LabelFreeField27: TLabel;
    LabelFreeField28: TLabel;
    DBEFreeField19: TDBEdit;
    DBEFreeField20: TDBEdit;
    DBEFreeField21: TDBEdit;
    DBEFreeField22: TDBEdit;
    DBEFreeField23: TDBEdit;
    DBEFreeField24: TDBEdit;
    DBEFreeField25: TDBEdit;
    DBEFreeField26: TDBEdit;
    DBEFreeField27: TDBEdit;
    DBEFreeField28: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    DBLookupComboBox8: TDBLookupComboBox;
    procedure DBEdit7Enter(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure YchecklistBox1NeedCheck(ID: Integer; var checked: Boolean);
    procedure YchecklistBox1ClearInDb;
    procedure YchecklistBox1Checked(ID: Integer);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SBOtherPersonClick(Sender: TObject);
    procedure DBNavigator2BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure SBSystemSettingsClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure btnLetterClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure cmbUserTypeClick(Sender: TObject);
    procedure clbUsersClickCheck(Sender: TObject);
  private
    CustomerID: integer;
    IsNewRecord : Boolean;
    procedure GetLabelCaption;
  public
    Edited :Boolean;
    constructor create(AOwner :TComponent;ExCustomerID : Integer;IsItNewRecord : Boolean = false);reintroduce;virtual;
  end;

type
   UsersLink = ^UsersStruct;
   UsersStruct = record
      UserID: integer;
      UserTitle: string;
      Selected: boolean;
      ListItemIndex: integer;
      Link : UsersLink;
   end;

var
  PropertiesForm: TPropertiesForm;
  UsersList, tmpUL: UsersLink;

implementation

uses MainU, dmu, YShamsiDate, UFollowUp, UContract, UserTableContentFm,
  BusinessLayer, FmOtherPerson_U, FmSystemSettings_U, UCustomerLetter;

{$R *.dfm}

procedure TPropertiesForm.DBEdit7Enter(Sender: TObject);
begin
        ActivateKeyboardLayout(HKL_NEXT, KLF_REORDER);
end;

procedure TPropertiesForm.DBEdit7Exit(Sender: TObject);
begin
        ActivateKeyboardLayout(HKL_NEXT, KLF_REORDER);
end;

procedure TPropertiesForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if (Dm.Select_Customer_By_CustomerID.State in [dsedit,dsinsert]) then
      //if MessageDlg('¬Ì« «Ì‰ ‘„«—Â —« –ŒÌ—Â „Ì ﬂ‰Ìœ',mtConfirmation,[mbyes,mbno],0)=mryes then
      if ShowMyMessage('ÅÌ€«„','«ÿ·«⁄«  œ— Õ«·  ÊÌ—«Ì‘ „Ì »«‘œ ° ¬Ì« „«Ì· »Â –ŒÌ—Â «ÿ·«⁄«  Â” Ìœø',mbOKCancel,mtWarning) = mrOK then
         Dm.Select_Customer_By_CustomerID.Post
      else
         Dm.Select_Customer_By_CustomerID.Cancel;

   Action:=caFree;
end;

procedure TPropertiesForm.FormCreate(Sender: TObject);
begin
   inherited;
   if _CanConnectToDabirDB then
      btnLetter.Visible := true
   else
      btnLetter.Visible := false;
      
   CustomerID := 0;
   if not MainForm.DeleteItem.Visible then
   begin
      DBNavigator1.VisibleButtons := DBNavigator1.VisibleButtons - [nbDelete];
      DBNavigator1.Width := 250;
   end;

   if not MainForm.N15.Visible then
   begin
      DBNavigator1.VisibleButtons := DBNavigator1.VisibleButtons - [nbEdit];
      DBNavigator1.Width := 250;
   end;

   if not MainForm.NInsertCustomer.Visible then
   begin
      DBNavigator1.VisibleButtons := DBNavigator1.VisibleButtons - [nbInsert];
      DBNavigator1.Width := 250;
   end;

  dm.State.Close;
  dm.State.Open;

  with dm.CitysFilterByState do
  begin
    Close;
    Parameters.ParamByName('StateID').Value :=  dm.StateStateID.Value;
    open;
  end;
   dm.tbCompanyStructures.Open;
end;

procedure TPropertiesForm.YchecklistBox1NeedCheck(ID: Integer;
  var checked: Boolean);
begin
   inherited;
   if not (dm.Select_Customer_By_CustomerID.State= dsinsert) then
//      checked:=id=_ProductID
  // else
      checked:=Dm.HasProduct(id,dm.Select_Customer_By_CustomerIDCustomerID.AsInteger);
end;

procedure TPropertiesForm.YchecklistBox1ClearInDb;
begin
  inherited;
  Dm.ExecCommand('DELETE FROM CustomerProduct where Customerid='+dm.Select_Customer_By_CustomerIDCustomerID.AsString);
end;

procedure TPropertiesForm.YchecklistBox1Checked(ID: Integer);
begin
  inherited;
  Dm.Insert_Products(id);

end;

procedure TPropertiesForm.DBEdit4Enter(Sender: TObject);
begin
   inherited;
   //ActivateKeyboardLayout(HKL_NEXT, KLF_REORDER);
   Keyboard_English;
   TEditEnter(Sender);
end;

procedure TPropertiesForm.DBEdit4Exit(Sender: TObject);
begin
   inherited;
   //ActivateKeyboardLayout(HKL_NEXT, KLF_REORDER);
   Keyboard_Farsi;
   TEditExit(Sender);
end;

procedure TPropertiesForm.GetLabelCaption;
begin
   LabelFreeField01.Caption := GetSystemSetting('EdtFreeField01');
   LabelFreeField02.Caption := GetSystemSetting('EdtFreeField02');
   LabelFreeField03.Caption := GetSystemSetting('EdtFreeField03');
   LabelFreeField04.Caption := GetSystemSetting('EdtFreeField04');
   LabelFreeField05.Caption := GetSystemSetting('EdtFreeField05');
   LabelFreeField06.Caption := GetSystemSetting('EdtFreeField06');
   LabelFreeField07.Caption := GetSystemSetting('EdtFreeField07');
   LabelFreeField08.Caption := GetSystemSetting('EdtFreeField08');
   LabelFreeField09.Caption := GetSystemSetting('EdtFreeField09');
   LabelFreeField10.Caption := GetSystemSetting('EdtFreeField10');
   LabelFreeField11.Caption := GetSystemSetting('EdtFreeField11');
   LabelFreeField12.Caption := GetSystemSetting('EdtFreeField12');
   LabelFreeField13.Caption := GetSystemSetting('EdtFreeField13');
   LabelFreeField14.Caption := GetSystemSetting('EdtFreeField14');
   LabelFreeField15.Caption := GetSystemSetting('EdtFreeField15');
   LabelFreeField16.Caption := GetSystemSetting('EdtFreeField16');
   LabelFreeField17.Caption := GetSystemSetting('EdtFreeField17');
   LabelFreeField18.Caption := GetSystemSetting('EdtFreeField18');
   LabelFreeField19.Caption := GetSystemSetting('EdtFreeField19');
   LabelFreeField20.Caption := GetSystemSetting('EdtFreeField20');
   LabelFreeField21.Caption := GetSystemSetting('EdtFreeField21');
   LabelFreeField22.Caption := GetSystemSetting('EdtFreeField22');
   LabelFreeField23.Caption := GetSystemSetting('EdtFreeField23');
   LabelFreeField24.Caption := GetSystemSetting('EdtFreeField24');
   LabelFreeField25.Caption := GetSystemSetting('EdtFreeField25');
   LabelFreeField26.Caption := GetSystemSetting('EdtFreeField26');
   LabelFreeField27.Caption := GetSystemSetting('EdtFreeField27');
   LabelFreeField28.Caption := GetSystemSetting('EdtFreeField28');
end;

procedure TPropertiesForm.FormShow(Sender: TObject);    
var
   q: TADOQuery;
begin
   inherited;
PageControl1.ActivePageIndex := 0;
   DM.Open_Customer(CustomerID);
   YchecklistBox1.Fill;
   DBECustomerNo.SetFocus;
//   DBNav_Setup(DBNavigator1);
   if IsNewRecord then
      PropertiesForm.DBNavigator1.BtnClick(nbInsert);

   GetLabelCaption;

    Dm.Marketer.Close;
    Dm.Marketer.SQL.Clear;
    Dm.Marketer.SQL.Add('SELECT * FROM marketer');
    Dm.Marketer.SQL.Add('WHERE IsActive_=1');
    Dm.Marketer.Open;

    

  Q_UserType.Open;
  Q_UserType.RecNo := 1;
  q:= TADOQuery.Create(nil);
  q.Connection:= Dm.YeganehConnection;
  q.SQL.Text := 'Select ID, Title from Users';
  q.Open;

  UsersList := nil;
  while not q.Eof do
  begin
      new(tmpUL);
      tmpUL^.UserID:= q.FieldValues['ID'];
      tmpUL^.UserTitle:= q.FieldValues['Title'];
      tmpUL^.Selected:= false;
      tmpUL^.Link:= UsersList;
      UsersList:= tmpUL;
      q.Next;
  end;

  tmpUL:= UsersList;
  while(tmpUL <> nil) do
  begin
      tmpUL^.ListItemIndex:= clbUsers.Items.Add(tmpUL^.UserTitle);
      tmpUL:= tmpUL^.Link;
  end;

  // Amin 1391/10/04 Start
  TabSheet4.TabVisible := (Dm.Select_Customer_By_CustomerIDMarketerID.Value = _MarketerID) or (_isAdmin);
  if Dm.Select_Customer_By_CustomerID.State in [dsEdit, dsBrowse] then
  begin
      tmpUL:= UsersList;
      while(tmpUL <> nil)do
      begin
         q.Close;
         q.SQL.Text:='Select HasAccess from UsersCustomerAccess where CustomerID = '+ Dm.Select_Customer_By_CustomerIDCustomerID.AsString +
            ' and UserID = '+ IntToStr(tmpUL^.UserID);
         q.Open;
         if q.RecordCount>0 then
            tmpUL^.Selected:= q.FieldValues['HasAccess'];

         clbUsers.Checked[tmpUL^.ListItemIndex]:= tmpUL^.Selected;

         tmpUL:= tmpUL^.Link;
      end;
  end;
  // Amin 1391/10/04 End

  q.Free;
end;

procedure TPropertiesForm.SBOtherPersonClick(Sender: TObject);
begin
   inherited;
   if dm.Select_Customer_By_CustomerID.State in [dsedit,dsinsert] then
   begin
      ShowMessage('·ÿ›« ﬁ»· «“ »«“ ò—œ‰ «Ì‰ ›—„ «ÿ·«⁄«  ŒÊœ —« –ŒÌ—Â ‰„«ÌÌœ');
      Exit;
   end;

   if Dm.Select_Customer_By_CustomerID.RecordCount = 0 then
   begin
      ShowMessage('ÂÌç «ÿ·«⁄« Ì Ì«›  ‰‘œ');
      Exit;
   end;

   FmOtherPerson := TFmOtherPerson.Create(nil);
   with FmOtherPerson.Select_Person_By_CustomerID do
   begin
      Close;
      Parameters.ParamByName('@customerID').Value := DM.Select_Customer_By_CustomerIDCustomerID.AsInteger;
      Open;
   end;
   FmOtherPerson.ShowModal;
end;

procedure TPropertiesForm.DBNavigator2BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
   inherited;
   if Button = nbPost then
   begin
     if (dblCity.KeyValue = null)or(dblState.KeyValue = null) then
     begin
          ShowMessage(' «” «‰ Ê ‘Â— „‘ —Ì —« Õ „« »«Ìœ «‰ Œ«» ﬂ‰Ìœ');
           abort;
     end;
     if PageControl1.ActivePageIndex = 0 then
         DBECustomerNo.SetFocus
     else
     if PageControl1.ActivePageIndex = 1 then
         DBLookupComboBox1.SetFocus
     else
     if PageControl1.ActivePageIndex = 2 then
         DBEFreeField01.SetFocus;
     if PageControl1.ActivePageIndex = 3 then
         cmbUserType.SetFocus;
   end;

   if Button = nbDelete then
   begin
      if MessageDlg('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœ', mtConfirmation,[mbyes,mbno],0) = mrNo then
         //dm.Select_Customer_By_CustomerID.Delete;
         Abort;
   end;
end;

procedure TPropertiesForm.SpeedButton2Click(Sender: TObject);
begin
  inherited;
   if dm.Select_Customer_By_CustomerID.State in [dsedit,dsinsert] then
   begin
      ShowMessage('·ÿ›« ﬁ»· «“ »«“ ò—œ‰ «Ì‰ ›—„ «ÿ·«⁄«  ŒÊœ —« –ŒÌ—Â ‰„«ÌÌœ');
      Exit;
   end;

   FrFollowUp := TFrFollowUp.Create(Application);
   FrFollowUp.CustomerID := dm.Select_Customer_By_CustomerIDCustomerID.AsInteger;
   FrFollowUp.refreshData;
   FrFollowUp.dbgFollow.DataSource.DataSet.Last;  // 920307 Hadi Mohamed For Bug #56 ¬Œ—Ì‰ «ﬁœ«„ «‰ Œ«» ‘Êœ
   FrFollowUp.ShowModal;
end;

procedure TPropertiesForm.SpeedButton3Click(Sender: TObject);
begin
  inherited;
   if Dm.Select_Customer_By_CustomerID.State in [dsEdit,dsInsert] then
   begin
      ShowMessage('·ÿ›« ﬁ»· «“ »«“ ò—œ‰ «Ì‰ ›—„ «ÿ·«⁄«  ŒÊœ —« –ŒÌ—Â ‰„«ÌÌœ');
      Exit;
   end;

   FrContract := TFrContract.Create(Application,dm.Select_Customer_By_CustomerIDCustomerID.AsInteger);
   FrContract.ShowModal;
end;

procedure TPropertiesForm.SpeedButton4Click(Sender: TObject);
begin
   inherited;
   dm.ShowAttachments(dm.Select_Customer_By_CustomerID,True);
end;

procedure TPropertiesForm.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
var
   q: TADOQuery;
   sqlbool : integer;
begin
  inherited;
   if button = nbInsert then
   begin
      try
         //DBLkCBCityTitle.SetFocus;
         DBECustomerNo.SetFocus;
      except
      end;
      YchecklistBox1.Fill;
   end;

   if Button = nbPost then
   begin
     with dm,Select_customer_By_CustomerID do
     begin
         CustomerID := Select_Customer_By_CustomerIDCustomerID.AsInteger;
         YchecklistBox1.Post;
         Open_Customer(Select_Customer_By_CustomerIDCustomerID.AsInteger);
         Edited := True;
     end;
      YchecklistBox1.Fill;

      q:= TADOQuery.Create(nil);
      q.Connection:= Dm.YeganehConnection;
      tmpUL:= UsersList;
      while tmpUL <> nil do
      begin
         if clbUsers.checked[tmpUL^.ListItemIndex] then  sqlbool:= 1 else sqlbool:= 0;

         q.SQL.Text:= 'select * from UsersCustomerAccess where CustomerID = '+Dm.Select_Customer_By_CustomerIDCustomerID.AsString+' and UserID = '+ IntToStr(tmpUL^.UserID);
         q.Open;
         if q.RecordCount > 0 then
         begin
            q.Close;
            q.sql.Text:= 'Update UsersCustomerAccess set HasAccess = ' + inttostr(sqlbool) +
               'where CustomerID = '+Dm.Select_Customer_By_CustomerIDCustomerID.AsString+' and UserID = '+ IntToStr(tmpUL^.UserID);
         end
         else
         begin
            q.Close;
            q.SQL.Text := 'insert into UsersCustomerAccess(CustomerID, UserID, HasAccess) Values('+Dm.Select_Customer_By_CustomerIDCustomerID.AsString+', '+IntToStr(tmpUL^.UserID)+', '+inttostr(sqlbool)+')';
         end;

         q.ExecSQL;
         tmpUL:= tmpUL^.Link;
      end;
      q.Free;
   end;
end;

procedure TPropertiesForm.SBSystemSettingsClick(Sender: TObject);
begin
   inherited;
   FmSystemSettings := TFmSystemSettings.Create(nil);
   FmSystemSettings.ShowModal;
   GetLabelCaption;
end;

constructor TPropertiesForm.create(AOwner: TComponent;
  ExCustomerID: Integer;IsItNewRecord :Boolean);
begin
  inherited create(AOwner);
     Edited       := false;
     CustomerID   := ExCustomerID;
     IsNewRecord  := IsItNewRecord
end;

procedure TPropertiesForm.BtnCancelClick(Sender: TObject);
begin
  inherited;
   ModalResult := mrCancel
end;

procedure TPropertiesForm.btnLetterClick(Sender: TObject);
begin
  inherited;
    if Dm.Select_Customer_By_CustomerID.State in [dsinsert] then
    begin
      ShowMessage('«» œ« »«Ìœ „‘ —Ì À»  ê—œœ');
      exit;
    end;

  with  TfrCustomerLetter.Create(Application,Dm.Select_Customer_By_CustomerIDCustomerID.Value) do
          ShowModal;
end;


procedure TPropertiesForm.Button1Click(Sender: TObject);
begin
  inherited;
  if (Dm.Select_Customer_By_CustomerID.State=dsInsert) or (Dm.Select_Customer_By_CustomerID.State=dsEdit) then
      Dm.Select_Customer_By_CustomerIDCustomerBirthDate.AsString:=MssCalendarPro1.Execute('/')
  else
      ShowMessage('»«Ìœ œ— Õ«·  ÊÌ—«Ì‘ Ì« œ—Ã «ÿ·«⁄«  »«‘Ìœ');
end;

procedure TPropertiesForm.BitBtn1Click(Sender: TObject);
var
   i: integer;
begin
  inherited;

   if Dm.Select_Customer_By_CustomerID.State in [dsEdit, dsInsert] then
   begin
      Dm.Select_Customer_By_CustomerIDUserAccessMode.Value := 0;
      for i:= 0 to clbUsers.Items.Count-1 do
      begin
        clbUsers.Checked[i] := true;
      end;
   end;
end;

procedure TPropertiesForm.BitBtn2Click(Sender: TObject);
var
   i: integer;
begin
  inherited;

   if Dm.Select_Customer_By_CustomerID.State in [dsEdit, dsInsert] then
   begin      
      Dm.Select_Customer_By_CustomerIDUserAccessMode.Value := 0;
      for i:= 0 to clbUsers.Items.Count-1 do
      begin
         clbUsers.Checked[i] := false;
      end;
   end;
end;

procedure TPropertiesForm.PageControl1Change(Sender: TObject);
var
   q: TADOQuery;
begin
  inherited;
  with dm do
  begin
    if PageControl1.activePageIndex= 1then
      if _UserTypeID<>1 then
        begin
          ShowMessage('«Ì‰ ’›ÕÂ œ— œ” —”Ì ‘„« ‰Ì” ');
          PageControl1.ActivePageIndex:=0;
        end;
  end;

   if PageControl1.ActivePage = TabSheet4 then
   begin
      q:= TADOQuery.Create(nil);
      q.Connection:= Dm.YeganehConnection;
   end;
end;

procedure TPropertiesForm.cmbUserTypeClick(Sender: TObject);
var
   q: TADOQuery;
   found: boolean;
   i: integer;
begin
  inherited;
   if dm.Select_Customer_By_CustomerIDUserAccessMode.Value > 0 then
   begin
      for i:=0 to clbUsers.Items.Count-1 do
         clbUsers.Checked[i]:= false;
         
      q:= TADOQuery.Create(nil);
      q.Connection:= Dm.YeganehConnection;
      q.SQL.Text:= 'select ID from Users where UserTypeID = ' + dm.Select_Customer_By_CustomerIDUserAccessMode.AsString;
      q.Open;
      while not q.Eof do
      begin
         tmpUL:= UsersList;
         found:= false;
         while (tmpUL <> nil) and (not found) do
         begin
            if tmpUL^.UserID = q.FieldValues['ID'] then
            begin
               found:= true;
               clbUsers.Checked[tmpUL^.ListItemIndex]:= true;
               tmpUL^.Selected:= true;
            end
            else
               tmpUL:= tmpUL^.Link;
         end;

         q.Next;
      end;
      q.Free;
   end;
end;

procedure TPropertiesForm.clbUsersClickCheck(Sender: TObject);
begin
  inherited;
   if Dm.Select_Customer_By_CustomerID.State in [dsEdit, dsInsert] then
      Dm.Select_Customer_By_CustomerIDUserAccessMode.Value := 0;
end;

end.
