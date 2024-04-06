unit AddContactU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DBCtrls, StdCtrls, Mask, ActnList, DB, ADODB, ExtDlgs,
  Buttons, DBActns, ActnMan, ComCtrls, Grids, DBGrids, YDbgrid, ExtCtrls,
  UemsVCL, XPStyleActnCtrls, xpPages, Menus, Spin, MssCalendarPro,
  SolarCalendarPackage;

type
  TFrAddContact = class(TYBaseForm)
    OpenPictureDialog: TOpenPictureDialog;
    ActionManager: TActionManager;
    Action1: TAction;
    Action2: TAction;
    xpPageControl: TPageControl;
    xpTabSheet1: TTabSheet;
    Panel1: TPanel;
    SearchTitle: TLabel;
    SearchEdit: TEdit;
    YDBGrid1: TYDBGrid;
    Panel2: TPanel;
    ShowDetailBtn: TBitBtn;
    xpTabSheet2: TTabSheet;
    IdentityGroup: TGroupBox;
    Label4: TLabel;
    Label3: TLabel;
    Label10: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    PersonalNo: TLabel;
    xpPageControl2: TPageControl;
    xpTabSheet3: TTabSheet;
    PicImage: TImage;
    PicBtn2: TSpeedButton;
    sign: TTabSheet;
    SignImage: TImage;
    PicBtn1: TSpeedButton;
    DbName:  TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit5: TDBEdit;
    DBEBirthDate: TSolarDatePicker;
    DBEdit9: TDBEdit;
    PersonalCode: TDBEdit;
    AccountGroupBox: TGroupBox;
    Label6: TLabel;
    label1: TLabel;
    AccountNo: TDBEdit;
    MoreGroupBox: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label15: TLabel;
    userField1: TLabel;
    userField2: TLabel;
    DBEdit4: TDBEdit;
    DBEdit7: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    MonthlyGroup: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Panel5: TPanel;
    InsBtn: TBitBtn;
    EditBtn: TBitBtn;
    PostBtn: TBitBtn;
    CancelBtn: TBitBtn;
    FirstBalance: TBitBtn;
    PerferazeBtn: TBitBtn;
    xpBitBtn1: TBitBtn;
    Okbtn: TBitBtn;
    DBChBoHaveInterest: TDBCheckBox;
    DBEAccountDate: TDBEdit;
    MonthlyBeginDate: TSolarDatePicker;
    ExitButton: TBitBtn;
    Cancelbutton: TBitBtn;
    PerferazeBtn2: TBitBtn;
    RepPopMnu: TPopupMenu;
    NShow1: TMenuItem;
    NPrint: TMenuItem;
    NDesign: TMenuItem;
    N8: TMenuItem;
    N11: TMenuItem;
    NShow2: TMenuItem;
    Label11: TLabel;
    Label14: TLabel;
    PicDel2: TSpeedButton;
    PicDel1: TSpeedButton;
    BtnPresenter: TBitBtn;
    FamilyLabel: TCheckBox;
    Label16: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DBCheckBox1: TDBCheckBox;
    Label17: TLabel;
    IMPORT_BTN: TBitBtn;
    ActionList1: TActionList;
    Action3: TAction;
    MssCalendarPro1: TMssCalendarPro;
    procedure YDBGrid1DblClick(Sender: TObject);
    procedure SearchEditChange(Sender: TObject);
    procedure InsBtnClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure EnableButton;
    procedure searchAccountExecute(Sender: TObject);
    procedure PicBtn2Click(Sender: TObject);
    procedure PicBtn1Click(Sender: TObject);
    Procedure SetContactTypeID( Value:byte);
    Procedure SetContactID( Value:integer);
    Procedure SetSearchMode( Value:boolean);
    procedure CloseBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure PostBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure FirstBalanceClick(Sender: TObject);
    procedure ShowDetailBtnClick(Sender: TObject);
    procedure xpTabSheet1Show(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PerferazeBtnClick(Sender: TObject);
    procedure PerferazeBtn2Click(Sender: TObject);
    procedure NShowClick(Sender: TObject);
    procedure PicDel2Click(Sender: TObject);
    procedure PicDel1Click(Sender: TObject);
    procedure BtnPresenterClick(Sender: TObject);
    procedure FamilyLabelClick(Sender: TObject);
    procedure IMPORT_BTNClick(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    FContactTypeID:byte;
    FContactID:integer;
    FSearchMode: boolean;

  public
    { Public declarations }
    SearchAll:boolean;
   Property ContactTypeID  : byte read FContactTypeID write SetContactTypeID;
   Property ContactID      : integer read FContactID write SetContactID;
   Property SearchMode     : boolean read FSearchMode write SetSearchMode;
  end;

var
  FrAddContact: TFrAddContact;
  var FirstAccountNo: string;

implementation

uses dmu, YShamsiDate,  BusinessLayer, AddattachmentU, AddPaymentU,QrPaymentU,
  AddPresentationDetU;
Const FormHeight=660;
var
  HasAccount,HasMonthly: boolean;
  AccountTypeID : byte;

{$R *.dfm}

Procedure TFrAddContact.SetContactTypeID(Value:byte);
begin
  FContactTypeID:=value;
  with  Dm,ContactType do
  begin
    Locate('ContactTypeID',Value,[]);
    HasAccount:=ContactTypeHasAccount.AsBoolean;
    HasMonthly:=ContactTypeHasMonthly.AsBoolean;
    userField1.Caption:=ContactTypeUserField1Title.AsString;
    userField2.Caption:=ContactTypeUserField2Title.AsString;

    PersonalNo.Caption:=Get_SystemSetting('PersonalTitle');
    FamilyLabel.Caption:=Get_SystemSetting('FamilyTitle');

    AccountTypeID:=ContactTypeAccountTypeID.AsInteger;
    if value=0 then
      Caption:=''
    else
      Caption:='  ⁄—Ì› ' +ContactTypeContactTypeTitle.AsString+' ÃœÌœ ';
  end;

  AccountGroupBox.Visible:=HasAccount;
  MonthlyGroup.Visible:=HasMonthly;
  PerferazeBtn.Visible:=HasMonthly;
  PerferazeBtn2.Visible:=HasMonthly;
  BtnPresenter.Visible:=HasMonthly;

  if  HasAccount then
    SearchTitle.Caption:='‰«„ Ì« ‘„«—Â Õ”«»'
  else
    SearchTitle.Caption:='‰«„';

  Height:=FormHeight-byte(not HasAccount)*AccountGroupBox.Height-byte(not HasMonthly)*MonthlyGroup.Height;

  sign.TabVisible:=HasAccount;
end;

Procedure TFrAddContact.SetSearchMode( Value:boolean);
begin
  FSearchMode:=value;
  if Value then
    xpPageControl.ActivePageIndex:=0
end;

Procedure TFrAddContact.SetContactID(Value:integer);
begin
  FContactID:=value;

  if HasAccount then
    Open_Account(Get_AccountID_ByContactID(value));

  Open_Contact(value);
  if not dm.Select_Contactpicture.IsNull then
  begin
    try
      Dm.Select_Contactpicture.SaveToFile(_TempPath+'\Pic.jpg');
      PicImage.Picture.LoadFromFile(_TempPath+'\Pic.jpg');
    except
    end;
  end;

  if not dm.Select_ContactSign.IsNull then
  begin
    try
      Dm.Select_ContactSign.SaveToFile(_TempPath+'\sign.jpg');
      SignImage.Picture.LoadFromFile(_TempPath+'\sign.jpg');
    except
    end;
  end;
  EnableButton;
end;

procedure TFrAddContact.YDBGrid1DblClick(Sender: TObject);
begin
  inherited;

  with dm,Select_Contact_Like do
    if Not SearchMode then
    begin
      if RecordCount= 0 then
        exit;

      ContactTypeID:=dm.Select_Contact_LikeContactTypeID.AsInteger;

      ContactID:=Select_Contact_LikeContactID.Value;
      xpPageControl.ActivePageIndex:=1;
    end
    else
    begin
      _FoundContactID:=Select_Contact_LikeContactID.Value;
      _FoundAccountID:=Select_Contact_LikeAccountID.Value;
      _FoundAcountNo:=dm.Select_Contact_LikeAccountNo.AsString;
      self.close;
    end;
end;


procedure TFrAddContact.SearchEditChange(Sender: TObject);
begin
  inherited;
  with dm.Select_Contact_Like do
  begin
    if SearchAll then
      Open_Contact_Like(0,SearchEdit.Text)
    else
      Open_Contact_Like(ContactTypeID,SearchEdit.Text);

    ShowDetailBtn.Visible:=RecordCount>0;
  end;
end;

procedure TFrAddContact.EnableButton;
begin
  with dm,Select_Contact do
  begin
    InsBtn.Enabled:=not (State in [dsinsert,dsedit] );
    PostBtn.Enabled:= (State in [dsinsert,dsedit] );
    EditBtn.Enabled:=not (State in [dsinsert,dsedit] );
    CancelBtn.Enabled:=(State in [dsinsert,dsedit] );
    PicBtn1.Enabled:=(State in [dsinsert,dsedit] );
    PicBtn2.Enabled:=(State in [dsinsert,dsedit] );
    PicDel1.Enabled:=(State in [dsinsert,dsedit] );
    PicDel2.Enabled:=(State in [dsinsert,dsedit] );
    FamilyLabel.Enabled:=(State in [dsinsert,dsedit] );
    DBLookupComboBox2.Enabled:=(State in [dsinsert,dsedit] );
    //FirstBalance.visible:=false;
  end
end;

procedure TFrAddContact.InsBtnClick(Sender: TObject);
begin
  inherited;

  with dm do
  begin
    if not Select_Contact.Active then
      ContactID:=0;

    if HasAccount then
    begin
      Select_Account.Insert;
      {Ranjbar}
      //Select_AccountAccountDate.AsString:=_Today;
      Select_AccountAccountDate.AsString:=_Today;
      Select_AccountMonthlyBeginDate.AsString:=_Today;
      //---
      Select_AccountAccountTypeID.AsInteger:=AccountTypeID;
      try
        Select_AccountAccountNo.AsString:=Get_NewAccountNo(AccountTypeID);
      except
        ShowMessage('”Ì” „ ﬁ«œ— »Â ’œÊ— ‘„«—Â Õ”«» ‰„Ì »«‘œ (‘„«—Â Õ”«» Â«Ì ‘„« €Ì— ⁄œœÌ „Ì »«‘œ) ·ÿ›« ‘„«—Â Õ”«» —« »Â ÿÊ— œ” Ì  ‰ŸÌ„ ‰„«ÌÌœ.');
      end;
      FirstAccountNo:=Select_AccountAccountNo.AsString;
    end;
    Select_Contact.Insert;
    Select_ContactContactTypeID.AsInteger:=ContactTypeID;
  end;
  EnableButton;

end;

procedure TFrAddContact.Button3Click(Sender: TObject);
begin
  inherited;
  FrAddAttachment:=TFrAddAttachment.Create(Application);
  FrAddAttachment.DocumnetID:=dm.Select_ContactContactID.AsInteger;
  FrAddAttachment.documentTypeID:=1;
  FrAddAttachment.ShowModal;
end;

procedure TFrAddContact.searchAccountExecute(Sender: TObject);
begin
  inherited;
  YDBGrid1DblClick(YDBGrid1);
end;

procedure TFrAddContact.PicBtn2Click(Sender: TObject);
begin
  inherited;
  if Dm.Select_Contact.State in [dsinsert,dsedit] then
    if OpenPictureDialog.Execute then
    begin
      PicImage.Picture.LoadFromFile(OpenPictureDialog.FileName);
      Dm.Select_Contactpicture.LoadFromFile(OpenPictureDialog.FileName);
    end;
end;

procedure TFrAddContact.PicBtn1Click(Sender: TObject);
begin
  inherited;
  if Dm.Select_Contact.State in [dsinsert,dsedit] then
    if OpenPictureDialog.Execute then
    begin
      SignImage.Picture.LoadFromFile(OpenPictureDialog.FileName);
      Dm.Select_ContactSign.LoadFromFile(OpenPictureDialog.FileName);
    end;
end;

procedure TFrAddContact.CloseBtnClick(Sender: TObject);
begin
  inherited;
  _FoundAccountID:=-1;
  _FoundContactID:=-1 ;

  close;
end;

procedure TFrAddContact.EditBtnClick(Sender: TObject);
begin
  inherited;

  if HasAccount then
    dm.Select_Account.edit;

  Dm.Select_Contact.Edit;
  FamilyLabel.Checked:= dm.Select_AccountFamilyid.Value>0;
  EnableButton;
end;

procedure TFrAddContact.PostBtnClick(Sender: TObject);
var
  IsInsert: boolean;
begin
  inherited;
  IsInsert:=Dm.Select_Account.State = dsinsert;
  if HasAccount then
    if not is_Numeric(Dm.Select_AccountAccountNo.AsString) then
    begin
      ShowMessage('‘„«—Â Õ”«» »«Ìœ »Â ’Ê—  ⁄œœÌ »«‘œ');
      AccountNo.SetFocus;
      exit;
    end;

  if HasMonthly then
    if Dm.Select_AccountMonthlyTypeID.IsNull or (trim(Dm.Select_AccountMonthlyBeginDate.AsString)='') then
    begin
      ShowMessage('«ÿ·«⁄«  „—»Êÿ »Â Õﬁ ⁄÷ÊÌ  —« Ê«—œ ‰„«ÌÌœ');
      MonthlyBeginDate.SetFocus;
      exit;
    end
    else
    if (trim(Dm.Select_AccountMonthlyBeginDate.AsString)<trim(dm.Select_AccountAccountDate.AsString)) then
    begin
      ShowMessage(' «—ÌŒ ‘—Ê⁄ ⁄÷ÊÌ  ‰„Ì  Ê«‰œ ﬁ»· «“ «›  «Õ Õ”«» »«‘œ');
      MonthlyBeginDate.SetFocus;
      exit;
    end;

  if ACCOUNT_IS_DOUBLICATE(Dm.Select_AccountAccountNo.AsString)=1 then
  begin
    ShowMessage('‘„«—Â Õ”«»  ò—«—Ì «” .');
    Exit;
  end;
  Dm.Select_Contact.Post;
  FContactID:=dm.Select_ContactContactID.AsInteger;
  if HasAccount then
  begin
    dm.Select_AccountContactID.AsInteger:=ContactID;
    Dm.Select_AccountAccountTitle.AsString:=dm.Select_ContactFirstName.AsString+' '+dm.Select_ContactLastName.AsString;
    if IsInsert then
      if FirstAccountNo = dm.Select_AccountAccountNo.AsString then
        dm.Select_AccountAccountNo.AsString := Get_NewAccountNo(AccountTypeID);

    if (not FamilyLabel.Checked) then
       dm.select_AccountFamilyID.value:= 0;
    {if dm.Select_AccountFamilyid.Value>0 then
         FamilyLabel.Checked := true; }
    Dm.Select_Account.Post;
  end;
  EnableButton;
   //FirstBalance.visible:=IsInsert;

end;

procedure TFrAddContact.CancelBtnClick(Sender: TObject);
begin
  inherited;
  if HasAccount then
    dm.Select_Account.Cancel;
  Dm.Select_Contact.Cancel;
  EnableButton;
end;

procedure TFrAddContact.Action2Execute(Sender: TObject);
begin
  inherited;
  InsBtn.OnClick(InsBtn);
end;

procedure TFrAddContact.Action1Execute(Sender: TObject);
begin
  inherited;
  PostBtn.OnClick(PostBtn);
end;

procedure TFrAddContact.FirstBalanceClick(Sender: TObject);
begin
  inherited;
  TBitBtn(sender).Hide;
  FrAddPayment:=TFrAddPayment.Create(Application);
  with FrAddPayment do
  begin
    CashIsDebtor:=true;
    SearchEdit.Text:=Dm.Select_AccountAccountNo.AsString;
    RefreshPayment;
    ShowModal;
  end;
end;

procedure TFrAddContact.ShowDetailBtnClick(Sender: TObject);
begin
  inherited;
  with dm,Select_Contact_Like do
  begin
    if RecordCount= 0 then
      exit;
    ContactID:=Select_Contact_LikeContactID.Value;
    xpPageControl.ActivePageIndex:=1;
  end;
end;

procedure TFrAddContact.xpTabSheet1Show(Sender: TObject);
begin
  inherited;
  Okbtn.visible:=SearchMode;
  Cancelbutton.Visible:=SearchMode;
  ExitButton.Visible:=not SearchMode;

//  if DM.Select_Contact.Active then
//    SearchEdit.Text:=DM.Select_ContactFirstName.AsString+' '+DM.Select_ContactLastName.AsString;
end;

procedure TFrAddContact.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Dm.Select_Contact_Like.Close;
end;

procedure TFrAddContact.FormCreate(Sender: TObject);
begin
  inherited;
  SearchAll:=false;
end;

procedure TFrAddContact.FormShow(Sender: TObject);
begin
  Inherited;
  if SearchMode then
    SearchEdit.SetFocus
  else
    DbName.SetFocus;
   {Ranjbar}
  DBChBoHaveInterest.Visible := (ContactTypeID = 1);
  dm.tblSexes.Open;
end;

procedure TFrAddContact.PerferazeBtnClick(Sender: TObject);
begin
  inherited;
  dm.PrintHeader(dm.Select_AccountAccountNo.AsString+' '+dm.Select_AccountAccountTitle.AsString);
end;

procedure TFrAddContact.PerferazeBtn2Click(Sender: TObject);
begin
  inherited;
   Cursor_SetPos(Self,PerferazeBtn2,RepPopMnu);
{ FrQrPayment:=TFrQrPayment.Create(Application);
//Rep_LoadFile(FrQrPayment.frxReport1,'Account.fr3');
  FrQrPayment.AdoPerfraj2.Close;
  FrQrPayment.AdoPerfraj2.SQL.Text:=' SELECT  Account.AccountNo, Account.AccountDate, Contact.FirstName, ' +
                                    '         Contact.LastName , Contact.FatherName , Contact.BirthDate, Contact.Address, '+
                                    '         Contact.Phones, Contact.ContactID, Account.AccountID, Contact.BirthPlace, Contact.Idno '+
                                    ' FROM    Account INNER JOIN '+
                                    '         Contact ON Account.ContactID = Contact.ContactID '+
                                    ' WHERE   Account.AccountID='+inttostr(Get_AccountID_ByAccountNo(AccountNo.Text));
  FrQrPayment.AdoPerfraj2.open;

  Rep_LoadFile(FrQrPayment.frxReport1,'Perfraj2Rep.fr3');
  FrQrPayment.frxReport1.Pages[1].Visible := True;
  FrQrPayment.frxReport1.Pages[2].Visible := False;
  Rep_Show(FrQrPayment.frxReport1,rtShow);//ÅÌ‘ ‰„«Ì‘
}
end;

procedure TFrAddContact.NShowClick(Sender: TObject);
begin
  inherited;
  FrQrPayment:=TFrQrPayment.Create(Application);
//Rep_LoadFile(FrQrPayment.frxReport1,'Account.fr3');
  FrQrPayment.AdoPerfraj2.Close;
  FrQrPayment.AdoPerfraj2.SQL.Text:=' SELECT  Account.AccountNo, Account.AccountDate, Contact.FirstName, ' +
                                    '         Contact.LastName, Contact.FatherName, Contact.BirthDate, Contact.Address, '+
                                    '         Contact.Phones, Contact.ContactID, Account.AccountID, Contact.BirthPlace, Contact.Idno '+
                                    ' FROM    Account INNER JOIN '+
                                    '         Contact ON Account.ContactID = Contact.ContactID '+
                                    ' WHERE Account.AccountID='+inttostr(Get_AccountID_ByAccountNo(AccountNo.Text));
  FrQrPayment.AdoPerfraj2.open;
  FrQrPayment.frxReport1.Pages[1].Visible := True;
  FrQrPayment.frxReport1.Pages[2].Visible := False;
//  Rep_Show(FrQrPayment.frxReport1,rtShow);//ÅÌ‘ ‰„«Ì‘
  if Sender = NShow1  then
  begin
//    Rep_LoadFile(FrQrPayment.frxReport1,GetReportName('btn51','PerfrajBRep.fr3'));

//    Rep_LoadFile(FrQrPayment.frxReport1,'PerfrajBRep.fr3','Btn_H_EftetaheHesab');
    Rep_LoadFile_New(FrQrPayment.frxReport1,'PerfrajBRep.fr3','Btn_H_EftetaheHesab');
    Rep_Show(FrQrPayment.frxReport1,rtShow);//ÅÌ‘ ‰„«Ì‘
  end;

  if Sender = NShow2  then
  begin
//    Rep_LoadFile(FrQrPayment.frxReport1,GetReportName('btn51','PerfrajBRep2.fr3');
    Rep_LoadFile_New(FrQrPayment.frxReport1,'PerfrajBRep2.fr3','Btn_H_EftetaheHesab');
    Rep_Show(FrQrPayment.frxReport1,rtShow);//ÅÌ‘ ‰„«Ì‘
  end;

  if Sender = NPrint  then
    Rep_Show(FrQrPayment.frxReport1,rtPrint);//ç«Å ”—Ì⁄

  if Sender = NDesign  then
    Rep_Show(FrQrPayment.frxReport1,rtDesign);//ÿ—«ÕÌ
end;

procedure TFrAddContact.PicDel2Click(Sender: TObject);
begin
  inherited;
  if Dm.Select_Contact.State in [dsinsert,dsedit] then
  begin
    Dm.Select_Contactpicture.Value:='';
    PicImage.Picture:=nil;
  end;
end;

procedure TFrAddContact.PicDel1Click(Sender: TObject);
begin
  inherited;
  IF Dm.Select_Contact.State in [dsinsert,dsedit] then
  Begin
    Dm.Select_ContactSign.Value:='';
    SignImage.Picture:=nil;
  End;
End;

procedure TFrAddContact.BtnPresenterClick(Sender: TObject);
begin
   inherited;
   FrAddPresentationDet := TFrAddPresentationDet.Create(Application);
// FrAddPresentationDet.SearchEdit.Text:=Dm.Select_AccountAccountNo.AsString;
   _AccountPresenterAccountID:=Dm.Select_AccountAccountID.AsInteger;
   FrAddPresentationDet.ShowModal;
end;

procedure TFrAddContact.FamilyLabelClick(Sender: TObject);
begin
  inherited;
   DBLookupComboBox2.Enabled:= FamilyLabel.Checked;
   //if(FamilyLabel.Checked) then
   //   dm.Select_AccountFamilyid.Value:= 0;
end;

procedure TFrAddContact.IMPORT_BTNClick(Sender: TObject);
VAR
QRY : TADOQuery;
TBL : TADOTable;

TBL02 : TADOTable;

I   : Integer;
begin
  inherited;

//try

QRY := TADOQuery.Create(SELF);
QRY.Connection := dm.YeganehConnection;
QRY.Close;
QRY.SQL.Clear;
QRY.SQL.Add('SELECT * FROM A ');
QRY.Open;
QRY.First;

TBL := TADOTable.Create(Self);
TBL.Connection := dm.YeganehConnection;
TBL.TableName  := 'Account';
TBL.Open;

TBL02 := TADOTable.Create(Self);
TBL02.Connection := dm.YeganehConnection;
TBL02.TableName  := 'Contact';
TBL02.Open;

for I := 1 to QRY.RecordCount do
BEGIN
TBL02.Insert;
TBL02.FieldByName('PersonalNo').AsString       :=QRY.FIELDBYNAME('FLD01').AsString;
TBL02.FieldByName('FirstName').AsString        :=QRY.FIELDBYNAME('FLD03').AsString;
TBL02.FieldByName('LastName').AsString         :=QRY.FIELDBYNAME('FLD04').AsString;
TBL02.FieldByName('FatherName').AsString       :=QRY.FIELDBYNAME('FLD05').AsString;
TBL02.FieldByName('IsActive').AsBoolean        := True;
TBL02.FieldByName('SexId').AsString            := QRY.FIELDBYNAME('FLD06').AsString;
TBL02.FieldByName('SendSms').AsBoolean         := True;
TBL02.FieldByName('UserField1').AsString       :=QRY.FIELDBYNAME('FLD02').AsString;
TBL02.FieldByName('UserField2').AsString       :='';
TBL02.POST;

TBL02.Filtered := False;
TBL02.Filter   := 'PersonalNo='+QRY.FIELDBYNAME('FLD01').AsString;
TBL02.Filtered := True;

TBL.Insert;

if Trim(TBL02.FieldByName('ContactID').AsString) <> ''  then
   TBL.FieldByName('ContactID').AsInteger       := TBL02.FieldByName('ContactID').AsInteger
   ELSE
   TBL.FieldByName('ContactID').AsInteger       := 0;


TBL.FieldByName('AccountNo').AsString        :=QRY.FIELDBYNAME('FLD08').AsString;



TBL.FieldByName('AccountDate').AsString      :=_Today;
TBL.FieldByName('IsActive').AsBoolean        :=True;
TBL.FieldByName('AccountTypeID').AsInteger   := 1;
TBL.FieldByName('AccountTitle').AsString     := QRY.FIELDBYNAME('FLD03').AsString+' '+QRY.FIELDBYNAME('FLD04').AsString;
TBL.Post;
QRY.Next;
END;

TBL.Close;
TBL02.Close;
QRY.Close;

TBL.Free;
TBL02.free;
QRY.Free;

{
Except
TBL.Free;
TBL02.free;
QRY.Free;
//ShowMessage('Œÿ«');
end;
}
end;

procedure TFrAddContact.Action3Execute(Sender: TObject);
begin
  inherited;
if IMPORT_BTN.Visible then
   IMPORT_BTN.Visible := False
   ELSE
   IMPORT_BTN.Visible := TRUE;

end;

procedure TFrAddContact.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  //Hamed_Ansari_990424_S
  if (Dm.Select_Contact.State=dsInsert) or (Dm.Select_Contact.State=dsEdit) then
      Dm.Select_ContactBirthDate.AsString:=MssCalendarPro1.Execute('/')
  else
      ShowMessage('»«Ìœ œ— Õ«·  ÊÌ—«Ì‘ Ì« œ—Ã «ÿ·«⁄«  »«‘Ìœ');
  //Hamed_Ansari_990424_E      
end;

End.
