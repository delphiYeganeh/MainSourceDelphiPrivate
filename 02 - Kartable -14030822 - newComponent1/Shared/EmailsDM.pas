 unit EmailsDM;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDMEmails = class(TDataModule)
    SpEmails: TADOStoredProc;
    DSEmails: TDataSource;
    SpEmailsEmailsID: TAutoIncField;
    SpEmailsCode: TIntegerField;
    SpEmailsSubject: TWideStringField;
    SpEmailsSendAddress: TWideStringField;
    SpEmailsReciveAddress: TWideStringField;
    SpEmailsStatus: TSmallintField;
    SpEmailsDateEmail: TWideStringField;
    SpEmailsTimeEmail: TWideStringField;
    SpEmailsUsersID: TIntegerField;
    QrSaveEmails: TADOQuery;
    DSSaveEmails: TDataSource;
    QrSaveEmailsEmailsID: TAutoIncField;
    QrSaveEmailsCode: TIntegerField;
    QrSaveEmailsSubject: TWideStringField;
    QrSaveEmailsSendAddress: TWideStringField;
    QrSaveEmailsReciveAddress: TWideStringField;
    QrSaveEmailsMemo: TBlobField;
    QrSaveEmailsAttachFile: TBlobField;
    QrSaveEmailsStatus: TSmallintField;
    QrSaveEmailsDateEmail: TWideStringField;
    QrSaveEmailsTimeEmail: TWideStringField;
    QrSaveEmailsIsRead: TBooleanField;
    QrSaveEmailsIsAnswer: TBooleanField;
    QrSaveEmailsUsersID: TIntegerField;
    QrUsers: TADOQuery;
    DSUsers: TDataSource;
    QrUsersId: TAutoIncField;
    QrUsersTitle: TWideStringField;
    QrUsersUserName: TWideStringField;
    QrUsersPassWord: TWideStringField;
    DSSrchPhone: TDataSource;
    QrSrchPhone: TADOQuery;
    QrSrchPhonePhoneID: TAutoIncField;
    QrSrchPhoneAddress: TWideStringField;
    QrSrchPhoneTitle: TWideStringField;
    QrSrchPhonePersonName: TWideStringField;
    QrSrchPhoneTel1: TWideStringField;
    QrSrchPhoneTel2: TWideStringField;
    QrSrchPhoneMobile: TWideStringField;
    QrSrchPhoneEmail: TWideStringField;
    QrSaveEmailsAttachFileName: TWideStringField;
    QrSaveEmailsIsReciveEmail: TBooleanField;
    SpEmailsAttachFileName: TWideStringField;
    SpEmailsIsRead: TBooleanField;
    SpEmailsIsAnswer: TBooleanField;
    QrSrchEmails: TADOQuery;
    QrSrchEmailsEmailsID: TAutoIncField;
    QrSrchEmailsSubject: TWideStringField;
    QrSrchEmailsSendAddress: TWideStringField;
    QrSrchEmailsDateEmail: TWideStringField;
    QrSrchEmailsStatus: TSmallintField;
    SpEmailsIsReciveEmail: TBooleanField;
    QrSrchEmailsCode: TIntegerField;
    SpEmailsEmailCount: TIntegerField;
    QrSaveEmailsIsPersonal: TBooleanField;
    QrSaveEmailsIsImportant: TBooleanField;
    QrSaveEmailsIsSecret: TBooleanField;
    QrEmailNuFromDate: TADOQuery;
    QrEmailNuFromDateEmailsID: TAutoIncField;
    QrSaveEmailsEmailNuFromDate: TWideStringField;
    QrEmailNuFromDateEmailNuFromDate: TWideStringField;
    EmailAddresses: TADOTable;
    DEmailAddresses: TDataSource;
    EmailAddressesID: TAutoIncField;
    EmailAddressesEmailAddress: TStringField;
    EmailAddressesUserName: TStringField;
    EmailAddressesPassWord: TStringField;
    EmailAddressesRecievehost: TStringField;
    EmailAddressesSendHost: TStringField;
    EmailAddressesRecivePort: TSmallintField;
    EmailAddressesSendPort: TSmallintField;
    EmailAddressesAuthenticationType: TStringField;
    EmailAddressesSSLOption: TStringField;
    EmailAddressesReciverOrgID: TIntegerField;
    EmailAddressesReciverSecID: TIntegerField;
    EmailAddressesIsActive: TBooleanField;
    EmailAddressesConnectionTimeOut: TSmallintField;
    EmailAddressesSecTitle: TStringField;
    procedure SpEmailsAfterEdit(DataSet: TDataSet);
    procedure SpEmailsBeforePost(DataSet: TDataSet);
    procedure QrSaveEmailsAfterInsert(DataSet: TDataSet);
    procedure SpEmailsAfterScroll(DataSet: TDataSet);
    procedure SpEmailsAfterCancel(DataSet: TDataSet);
    procedure SpEmailsBeforeDelete(DataSet: TDataSet);
    procedure SpEmailsCalcFields(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMEmails: TDMEmails;

implementation

uses Dmu , YShamsiDate, EmailsFm, BaseUnit, businessLayer, dialogs, controls;

{$R *.dfm}

procedure TDMEmails.SpEmailsAfterEdit(DataSet: TDataSet);
begin
   QrSaveEmails.Edit;
   FmEmails.wwDBREMemo.DataField := 'Memo';
end;

procedure TDMEmails.SpEmailsBeforePost(DataSet: TDataSet);
Var
   ID,Status : integer;
begin
   IFFieldIsEmpty(QrSaveEmailsSubject,'„Ê÷Ê⁄ «Ì„Ì·');
   {//œ—”   «ÌÅ ﬂ—œ‰ «œ—” «Ì„Ì·
   if (Email_IsCorrect(Trim(QrSaveEmailsSendAddress.AsString)))or(Email_IsCorrect(Trim(QrSaveEmailsReciveAddress.AsString))) then
   begin
      MBaseForm.MessageShowString('¬œ—” «Ì„Ì· ›—” ‰œÂ  Ì« êÌ—‰œÂ «‘ »«Â „Ì»«‘œ . ·ÿ›«  ’ÕÌÕ ‰„«ÌÌœ', False);
      Abort;
   end;}

   QrSaveEmails.Post;
   
   ID := SpEmailsEmailsID.AsInteger;
   Status := SpEmailsStatus.AsInteger;
   SpEmails.Close;
   SpEmails.Parameters.ParamByName('@Status').Value := Status;
   SpEmails.Open;
   if ID > 0 then
      SpEmails.Locate('EmailsID',ID,[])
   else
      SpEmails.Last;
   
   Abort;//SpEmails »œ·Ì· –ŒÌ—Â ‰‘œÂ «ÿ·«⁄«  œ— 
end;

procedure TDMEmails.QrSaveEmailsAfterInsert(DataSet: TDataSet);
begin
   QrSaveEmailsCode.AsInteger := StrToIntDef(Qry_GetResult('Select IsNull(Max(Code)+1,1)as MaxCode From Emails',dm.YeganehConnection),1);
   if FmEmails.SBNotSend.Down then
      QrSaveEmailsSubject.AsString := GetUserSetting('DefaultEmailSubject'); //ÅÌ‘ ›—÷
   QrSaveEmailsSendAddress.AsString :=  Qry_GetResult('Select Email From Users Where Id = '+ IntToStr(_Userid),dm.YeganehConnection); //'Ranjbar4424@GMail.Com';
   QrSaveEmailsReciveAddress.AsString := GetUserSetting('EmailReciveAddress'); // «Ì„Ì· êÌ—‰œÂ Ì« «Ì„Ì· ﬂ«—»—

   QrSaveEmailsStatus.AsInteger := 0;
   QrSaveEmailsDateEmail.AsString := ShamsiString(Date);
   QrSaveEmailsTimeEmail.AsString := Time_GetTime(dm.YeganehConnection,False);
   QrSaveEmailsIsRead.AsBoolean := False; //¬Ì« «Ì‰ «Ì„Ì· ŒÊ«‰œÂ ‘œÂ
   QrSaveEmailsIsPersonal.AsBoolean := False;
   QrSaveEmailsIsImportant.AsBoolean := False;
   QrSaveEmailsIsSecret.AsBoolean := False;
   QrSaveEmailsIsAnswer.AsBoolean := False;//¬Ì« »—«Ì «Ì‰ «Ì„Ì· Å«”ŒÌ œ«œÂ ‘œÂ
   QrSaveEmailsIsReciveEmail.AsBoolean := False;//¬Ì« «Ì„Ì· œ—Ì«› Ì „Ì»«‘œ
   QrSaveEmailsUsersID.AsInteger := _Userid;
end;

procedure TDMEmails.SpEmailsAfterScroll(DataSet: TDataSet);
begin
   QrSaveEmails.Close;
   //QrSaveEmails.Parameters.ParamByName('Status').Value := SpEmailsStatus.AsInteger;
   QrSaveEmails.Parameters.ParamByName('EmailsID').Value := SpEmailsEmailsID.AsInteger;
   QrSaveEmails.Open;
   if SpEmails.State = dsInsert then
      QrSaveEmails.Append;

   QrUsers.Close;
   QrUsers.Parameters.ParamByName('Pa_UserID').Value := SpEmailsUsersID.AsInteger;
   QrUsers.Open;

   if SpEmails.State in [dsEdit,dsInsert] then
      FmEmails.wwDBREMemo.DataField := 'Memo'
   else
      FmEmails.wwDBREMemo.DataField := '';
    
end;

procedure TDMEmails.SpEmailsAfterCancel(DataSet: TDataSet);
begin
   QrSaveEmails.Cancel;
end;

procedure TDMEmails.SpEmailsBeforeDelete(DataSet: TDataSet);
begin
   if not MBaseForm.messageShowString('¬Ì« „«Ì· »Â Õ–› «Ì„Ì· Ã«—Ì Â” Ìœø', True) then
      Abort;
end;

procedure TDMEmails.SpEmailsCalcFields(DataSet: TDataSet);
begin
   SpEmailsEmailCount.AsInteger := SpEmails.RecordCount;
end;

procedure TDMEmails.DataModuleCreate(Sender: TObject);
begin
try EmailAddresses.Open; except end;
end;

end.
