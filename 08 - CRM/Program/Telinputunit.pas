unit Telinputunit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, Buttons, ToolWin, ActnMan,
  ActnCtrls, DBActns, ActnList, ImgList,DB, Grids, DBGrids, YDbgrid,BaseUnit,
  ExtActns, CheckLst, YchecklistBox,  ADODB, ComCtrls,  Menus,
  XPStyleActnCtrls, MssCalendarPro, dxGDIPlusClasses;

type
  TPropertiesForm = class(TMBaseForm)
    ActionManager1: TActionManager;
    MssCalendarPro1: TMssCalendarPro;
    Q_UserType: TADOQuery;
    DS_UserType: TDataSource;
    Q_UserTypeUserTypeId: TAutoIncField;
    Q_UserTypeUserTypeTitle: TWideStringField;
    pnlMain: TPanel;
    Panel4: TPanel;
    SBSystemSettings: TSpeedButton;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
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
    Label26: TLabel;
    Label27: TLabel;
    Label4: TLabel;
    lblBirthDate: TLabel;
    Bevel1: TBevel;
    BtnMessage1: TSpeedButton;
    BtnMessage2: TSpeedButton;
    BtnMessage3: TSpeedButton;
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
    GroupBox1: TGroupBox;
    dblState: TDBLookupComboBox;
    dblCity: TDBLookupComboBox;
    DBEdit3: TDBEdit;
    Button1: TButton;
    edtBirthDate: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBEdit13: TDBEdit;
    TabSheet2: TTabSheet;
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
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
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
    DBLookupComboBox8: TDBLookupComboBox;
    TabSheet3: TTabSheet;
    LabelFreeField01: TLabel;
    LabelFreeField02: TLabel;
    LabelFreeField03: TLabel;
    LabelFreeField04: TLabel;
    LabelFreeField05: TLabel;
    LabelFreeField06: TLabel;
    LabelFreeField07: TLabel;
    LabelFreeField08: TLabel;
    LabelFreeField09: TLabel;
    LabelFreeField10: TLabel;
    LabelFreeField11: TLabel;
    LabelFreeField12: TLabel;
    LabelFreeField13: TLabel;
    LabelFreeField14: TLabel;
    LabelFreeField15: TLabel;
    LabelFreeField16: TLabel;
    LabelFreeField17: TLabel;
    LabelFreeField18: TLabel;
    DBEFreeField01: TDBEdit;
    DBEFreeField02: TDBEdit;
    DBEFreeField03: TDBEdit;
    DBEFreeField04: TDBEdit;
    DBEFreeField05: TDBEdit;
    DBEFreeField06: TDBEdit;
    DBEFreeField07: TDBEdit;
    DBEFreeField08: TDBEdit;
    DBEFreeField09: TDBEdit;
    DBEFreeField10: TDBEdit;
    DBEFreeField11: TDBEdit;
    DBEFreeField12: TDBEdit;
    DBEFreeField13: TDBEdit;
    DBEFreeField14: TDBEdit;
    DBEFreeField15: TDBEdit;
    DBEFreeField16: TDBEdit;
    DBEFreeField17: TDBEdit;
    DBEFreeField18: TDBEdit;
    TabSheet4: TTabSheet;
    YDBGrid1: TYDBGrid;
    Panel3: TPanel;
    pnlSearch: TPanel;
    BitBtn3: TBitBtn;
    TabSheet5: TTabSheet;
    Label20: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox2: TGroupBox;
    clbUsers: TCheckListBox;
    cmbUserType: TDBLookupComboBox;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SBOtherPerson: TSpeedButton;
    btnLetter: TSpeedButton;
    BtnCancel: TBitBtn;
    Shape1: TShape;
    DState2: TDataSource;
    ADOState: TADOQuery;
    ADOStateStateID: TIntegerField;
    ADOStateStateTitle: TStringField;
    adoCity: TADOQuery;
    IntegerField1: TIntegerField;
    DSCity: TDataSource;
    adoCityCItyId: TIntegerField;
    adoCityCityTitle: TStringField;
    adoCityStateNum: TStringField;
    ImageList1: TImageList;
    Image1: TImage;
    Image2: TImage;
    Timer1: TTimer;
    btnFactor: TBitBtn;
    QrSrchFactor: TADOQuery;
    QrSrchFactorFactor_ID: TAutoIncField;
    QrSrchFactorUsers_Ref: TIntegerField;
    QrSrchFactorType: TWideStringField;
    QrSrchFactorFacDate: TWideStringField;
    QrSrchFactorRegisterDate: TWideStringField;
    QrSrchFactorNumber: TIntegerField;
    QrSrchFactorUserName: TWideStringField;
    QrSrchFactorCustomer_Ref: TIntegerField;
    QrSrchFactorRelatedNumber: TIntegerField;
    QrSrchFactorTotalFactorPrice: TFloatField;
    QrSrchFactorType2: TStringField;
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
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
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
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure BtnMessage1Click(Sender: TObject);
    procedure BtnMessage2Click(Sender: TObject);
    procedure BtnMessage3Click(Sender: TObject);
    procedure DBCheckBox1Click(Sender: TObject);
    procedure dblStateKeyPress(Sender: TObject; var Key: Char);
    procedure dblStateKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dblStateExit(Sender: TObject);
    procedure dblCityEnter(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btnFactorClick(Sender: TObject);
  private
    CustomerID: integer;
    IsNewRecord : Boolean;
    procedure GetLabelCaption;
    procedure ShowMessageForm(PhoneNumber : String);
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
  BusinessLayer, FmOtherPerson_U, FmSystemSettings_U, UCustomerLetter,
  USingleMessage, SearchFM, FactorDM, FactorFM;

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
    ShapeBase.Brush.Color := _Color1 ;
    pnlMain.Color := _Color1 ;
    Shape1.Visible := DBCheckBox1.Checked ;
    PageControl1.ActivePageIndex := 0;
    DM.Open_Customer(CustomerID);
    YchecklistBox1.Fill;
    DBECustomerNo.SetFocus;
    btnFactor.Visible := _UserFactorAccess ;
//   DBNav_Setup(DBNavigator1);
   if IsNewRecord then
      PropertiesForm.DBNavigator1.BtnClick(nbInsert);

   GetLabelCaption;

    Dm.Marketer.Close;
    Dm.Marketer.SQL.Clear;
    Dm.Marketer.SQL.Add('SELECT * FROM marketer');
    Dm.Marketer.SQL.Add('WHERE IsActive_=1');
    Dm.Marketer.Open;

    
  ADOState.Open; 
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
  
  adoCity.SQL.Text := ' SELECT  CItyId , CityTitle ,StateId ,StateNum  FROM [dbo].[City]  where StateId = '+ IntToStr( ADOStateStateID.Value )+' ORDER BY CityTitle ';
  adoCity.Open;

  Dm.RefreshHoliday(copy(_today,1,4));
  MssCalendarPro1.HolidayStr := dm.HolidayStr;
    
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
var
   qry: TADOQuery;
   tempStr : string;
begin
   DBNavigator1.SetFocus ;
   inherited;

   if Button = nbPost then
   begin
     if (dblCity.KeyValue = null)or(dblState.KeyValue = null) then
     begin
          ShowMessage(' «” «‰ Ê ‘Â— „‘ —Ì —« Õ „« »«Ìœ «‰ Œ«» ﬂ‰Ìœ');
           abort;
     end;

     qry:= TADOQuery.Create(nil);
     qry.Connection:= Dm.YeganehConnection;

     qry.SQL.Text:= ' select * from (  select companyname cnt,CustomerID,0 ph  from [dbo].[Customer] where 1=2 ' ;
     if Dm.Select_Customer_By_CustomerIDPhone.AsString <> '' then
       qry.SQL.Text:= qry.SQL.Text + ' union SELECT companyname,CustomerID,1 ph FROM [dbo].[Customer] where CustomerID <> '+IntToStr(Dm.Select_Customer_By_CustomerIDCustomerID.AsInteger)+' and (ltrim(rtrim(Phone)) = '''+Trim(Dm.Select_Customer_By_CustomerIDPhone.AsString) +''' or ltrim(rtrim(MobilePhone)) = '''+trim(Dm.Select_Customer_By_CustomerIDPhone.AsString)+''' or ltrim(rtrim(WorkPhone1)) = '''+ Trim(Dm.Select_Customer_By_CustomerIDPhone.AsString) +''' )';
     if Dm.Select_Customer_By_CustomerIDWorkPhone1.AsString <> '' then
       qry.SQL.Text:= qry.SQL.Text + ' union SELECT companyname,CustomerID,2 FROM [dbo].[Customer] where CustomerID <> '+IntToStr(Dm.Select_Customer_By_CustomerIDCustomerID.AsInteger)+' and (ltrim(rtrim(Phone)) = '''+Trim(Dm.Select_Customer_By_CustomerIDWorkPhone1.AsString) +''' or ltrim(rtrim(MobilePhone)) = '''+trim(Dm.Select_Customer_By_CustomerIDWorkPhone1.AsString)+''' or ltrim(rtrim(WorkPhone1)) = '''+ Trim(Dm.Select_Customer_By_CustomerIDWorkPhone1.AsString )+''' )';
     if Dm.Select_Customer_By_CustomerIDMobilePhone.AsString <> '' then
       qry.SQL.Text:= qry.SQL.Text + ' union SELECT companyname,CustomerID,3 FROM [dbo].[Customer] where CustomerID <> '+IntToStr(Dm.Select_Customer_By_CustomerIDCustomerID.AsInteger)+' and (ltrim(rtrim(Phone)) = '''+Trim(Dm.Select_Customer_By_CustomerIDMobilePhone.AsString) +''' or ltrim(rtrim(MobilePhone)) = '''+trim(Dm.Select_Customer_By_CustomerIDMobilePhone.AsString)+''' or ltrim(rtrim(WorkPhone1)) = '''+ Trim(Dm.Select_Customer_By_CustomerIDMobilePhone.AsString) +''' ) ';
     qry.SQL.Text:= qry.SQL.Text + ' ) t ';
     qry.Open;
     if qry.RecordCount > 0 then
     begin
       tempStr := '' ;
       if qry.Fields[2].AsString = '1' then
         tempStr :=  qry.Fields[0].AsString + '('+qry.Fields[1].AsString +')- '+Trim(Dm.Select_Customer_By_CustomerIDPhone.AsString)
       else if qry.Fields[2].AsString = '2' then
         tempStr :=  qry.Fields[0].AsString + '('+qry.Fields[1].AsString +')- '+Trim(Dm.Select_Customer_By_CustomerIDWorkPhone1.AsString)
       else if qry.Fields[2].AsString = '3' then
         tempStr :=  qry.Fields[0].AsString + '('+qry.Fields[1].AsString +')- '+Trim(Dm.Select_Customer_By_CustomerIDMobilePhone.AsString) ;

       tempStr :=  '  ·›‰ „‘ —Ì  ò—«—Ì '  +'"'+tempStr+'"'+  ' „Ì »«‘œ ° ¬Ì« „«Ì· »Â –ŒÌ—Â «ÿ·«⁄«  Â” Ìœø' ;
       if ShowMyMessage('ÅÌ€«„',tempStr,mbOKCancel,mtWarning) = mrCancel then
         abort;
     end;

     qry.SQL.Text:= ' select * from (  select companyname cnt,CustomerID  from [dbo].[Customer] where 1=2 '  ;
     if  ( Dm.Select_Customer_By_CustomerIDEmailAddress.AsString <> '') then
       qry.SQL.Text:= qry.SQL.Text + ' union SELECT companyname,CustomerID FROM [dbo].[Customer] where CustomerID <> '+IntToStr(Dm.Select_Customer_By_CustomerIDCustomerID.AsInteger)+' and ( ltrim(rtrim(EmailAddress)) = '''+ Trim(Dm.Select_Customer_By_CustomerIDEmailAddress.AsString ) +''' ) ';
     qry.SQL.Text:= qry.SQL.Text + ' ) t ';
     qry.Open;

     if qry.RecordCount > 0 then
     begin
       tempStr :=  qry.Fields[0].Value ;
       tempStr := '' ;
       tempStr :=  qry.Fields[0].AsString + '('+qry.Fields[1].AsString +')';
       tempStr :=  ' «Ì„Ì· „‘ —Ì  ò—«—Ì ' +'"'+tempStr+'"'+ '„Ì »«‘œ ° ¬Ì« „«Ì· »Â –ŒÌ—Â «ÿ·«⁄«  Â” Ìœø' ;
       if ShowMyMessage('ÅÌ€«„',tempStr,mbOKCancel,mtWarning) = mrCancel then
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

procedure TPropertiesForm.SpeedButton1Click(Sender: TObject);
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

procedure TPropertiesForm.SpeedButton2Click(Sender: TObject);
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

procedure TPropertiesForm.SpeedButton3Click(Sender: TObject);
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

procedure TPropertiesForm.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  { TODO -oparsa : 14030203 }
  if (NewWidth < 787)  or (NewHeight < 632) then
    Resize := False
  else Resize := True;
   { TODO -oparsa : 14030203 }
  inherited;

end;


procedure TPropertiesForm.ShowMessageForm(PhoneNumber: String);
begin
   FSingleMessage := TFSingleMessage.Create(Self);
   FSingleMessage.MobileNumber   := PhoneNumber ;
   FSingleMessage.CustomerId     := dm.Select_Customer_By_CustomerIDCustomerID.AsString ;
   FSingleMessage.ShowModal;
end;

procedure TPropertiesForm.BtnMessage1Click(Sender: TObject);
begin
  inherited;
  ShowMessageForm(DBEdit6.text);
end;

procedure TPropertiesForm.BtnMessage2Click(Sender: TObject);
begin
  inherited;
  ShowMessageForm(DBEdit7.text);
end;

procedure TPropertiesForm.BtnMessage3Click(Sender: TObject);
begin
  inherited;
  ShowMessageForm(DBEdit10.text);
end;

procedure TPropertiesForm.DBCheckBox1Click(Sender: TObject);
begin
  inherited;
  Shape1.Visible := DBCheckBox1.Checked ;

  Timer1.Interval:=1000;
  Timer1.Enabled := Shape1.Visible ;

  Image2.Visible := Shape1.Visible  ;
  Image1.Visible := false ;

end;

procedure TPropertiesForm.dblStateKeyPress(Sender: TObject; var Key: Char);
begin
  replace1(Key,char(223),char(152));
  inherited;
//

end;

procedure TPropertiesForm.dblStateKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

  //adoCity.SQL.Text := ' SELECT  CItyId , CityTitle ,StateId ,StateNum  FROM [dbo].[City]  where StateId = '+ IntToStr( ADOStateStateID.Value )+' ORDER BY CityTitle ';
  //adoCity.Open;
end;

procedure TPropertiesForm.dblStateExit(Sender: TObject);
begin
  inherited;
  adoCity.SQL.Text := ' SELECT  CItyId , CityTitle ,StateId ,StateNum  FROM [dbo].[City]  where StateId = '+ IntToStr( ADOStateStateID.Value )+' ORDER BY CityTitle ';
  adoCity.Open;
end;

procedure TPropertiesForm.dblCityEnter(Sender: TObject);
begin
  inherited;
  adoCity.SQL.Text := ' SELECT  CItyId , CityTitle ,StateId ,StateNum  FROM [dbo].[City]  where StateId = '+ IntToStr( ADOStateStateID.Value )+' ORDER BY CityTitle ';
  adoCity.Open;
end;

procedure TPropertiesForm.Timer1Timer(Sender: TObject);
begin
  inherited;
  if Image1.Visible then
  begin
    Image1.Visible  := false ;
    Image2.Visible := not Image1.Visible ;
  end
  else
  begin
    Image2.Visible  := false ;
    Image1.Visible := not Image2.Visible ;
  end;
end;

procedure TPropertiesForm.btnFactorClick(Sender: TObject);
var
   FID : string;
begin
  inherited;
  QrSrchFactor.Close;
  QrSrchFactor.Parameters.ParamByName('Customer_Ref').Value :=  Dm.Select_Customer_By_CustomerIDCustomerID.Value;
  QrSrchFactor.Open;
  //FID := FmSearch.GetSearchValue(QrSrchFactor ,'Factor_ID', 'Number' , ' ' , 400 , 500 );

  if FmSearch.GetSearchValue(QrSrchFactor ,'Factor_ID', 'Number' , ' ' , 400 , 500 ) <> '0'  then
  begin

    FMFactor := TFMFactor.Create(Application);
    FMFactor.Hint := QrSrchFactorType2.AsString;

    FMFactor.ShowFactor         := True ;
    FMFactor.ExternalFactorId   := QrSrchFactorFactor_Id.Asinteger ;
    FMFactor.ShowModal;
  end;
end;

end.
