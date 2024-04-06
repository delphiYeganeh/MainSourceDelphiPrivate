unit PhoneDM;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDMPhone = class(TDataModule)
    QrPhoneGroup: TADOQuery;
    DSPhoneGroup: TDataSource;
    SpPhone: TADOStoredProc;
    DSPhone: TDataSource;
    QrUsers: TADOQuery;
    QrUsersId: TAutoIncField;
    QrUsersTitle: TWideStringField;
    DSUsers: TDataSource;
    DSSrchPhone: TDataSource;
    QrSrchPhone: TADOQuery;
    SpPhonePhoneID: TAutoIncField;
    SpPhoneCode: TIntegerField;
    SpPhoneTitle: TWideStringField;
    SpPhonePersonName: TWideStringField;
    SpPhoneTel1: TWideStringField;
    SpPhoneTel2: TWideStringField;
    SpPhoneMobile: TWideStringField;
    SpPhoneFax: TWideStringField;
    SpPhoneEmail: TWideStringField;
    SpPhoneInternet: TWideStringField;
    SpPhoneAddress: TWideStringField;
    SpPhoneDescript: TWideStringField;
    SpPhonePhoneGroupID: TIntegerField;
    SpPhoneUsersID: TIntegerField;
    QrSrchPhonePhoneID: TAutoIncField;
    QrSrchPhoneCode: TIntegerField;
    QrSrchPhoneTitle: TWideStringField;
    QrSrchPhonePersonName: TWideStringField;
    QrSrchPhoneTel1: TWideStringField;
    QrSrchPhoneTel2: TWideStringField;
    QrSrchPhoneMobile: TWideStringField;
    QrSrchPhoneFax: TWideStringField;
    QrSrchPhoneEmail: TWideStringField;
    QrSrchPhoneInternet: TWideStringField;
    QrSrchPhoneAddress: TWideStringField;
    QrSrchPhoneDescript: TWideStringField;
    QrSrchPhonePhoneGroupID: TIntegerField;
    QrSrchPhoneUsersID: TIntegerField;
    QrPhoneGroupPhoneGroupID: TAutoIncField;
    QrPhoneGroupCode: TIntegerField;
    QrPhoneGroupTitle: TWideStringField;
    QrPhoneGroupUsersID: TIntegerField;
    SpPhoneUsersTitle: TStringField;
    SpPhoneIsPublic: TBooleanField;
    QrSrchPhoneIsPublic: TBooleanField;
    SpPhoneZipCode: TWideStringField;
    SpPhoneShowPhone: TStringField;
    QrSrchPhoneZipCode: TWideStringField;
    QrSrchPhoneGroupName: TWideStringField;
    Q_NonAccessUsers: TADOQuery;
    DS_NonAccessUsers: TDataSource;
    Q_AccessUsers: TADOQuery;
    DS_AccessUsers: TDataSource;
    Q_NonAccessUsersUserID: TIntegerField;
    Q_NonAccessUsersUserTitle: TWideStringField;
    Q_NonAccessUsersContactTitle: TWideStringField;
    Q_AccessUsersUserID: TIntegerField;
    Q_AccessUsersUserTitle: TWideStringField;
    Q_AccessUsersContactTitle: TWideStringField;
    procedure SpPhoneAfterInsert(DataSet: TDataSet);
    procedure SpPhoneBeforePost(DataSet: TDataSet);
    procedure SpPhoneBeforeDelete(DataSet: TDataSet);
    procedure QrSrchPhoneBeforeOpen(DataSet: TDataSet);
    procedure SpPhoneCalcFields(DataSet: TDataSet);
    procedure DSPhoneDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMPhone: TDMPhone;

implementation

uses Dmu , yShamsiDate, BaseUnit, PhoneFm;

{$R *.dfm}

procedure TDMPhone.SpPhoneAfterInsert(DataSet: TDataSet);
begin
   SPPhoneUsersID.AsInteger := _Userid;
   SpPhoneIsPublic.AsBoolean := False;
end;

procedure TDMPhone.SpPhoneBeforePost(DataSet: TDataSet);
begin
   IFFieldIsEmpty(SpPhoneTitle,'‰«„ ‘—ò ');

   if Not Email_IsCorrect(Trim(SPPhoneEmail.AsString)) then
   begin
      MBaseForm.messageShowString('¬œ—” «Ì„Ì· Ê«—œ  ‘œÂ «‘ »«Â „Ì »«‘œ . ·ÿ›«  ’ÕÌÕ ‰„«ÌÌœ', False);
      Abort;
   end;
   SPPhoneCode.AsInteger := StrToIntDef( Qry_GetResult('Select IsNull(Max(Code)+1,1)as MaxCode From Phone ' ,dm.YeganehConnection),1);
   SPPhoneUsersID.AsInteger := _Userid;
end;

procedure TDMPhone.SpPhoneBeforeDelete(DataSet: TDataSet);
begin
   if not MBaseForm.messageShowString('¬Ì« „«Ì· »Â Õ–› ¬œ—” «Ì„Ì· Ã«—Ì Â” Ìœø', True) then
      Abort;

end;

procedure TDMPhone.QrSrchPhoneBeforeOpen(DataSet: TDataSet);
begin
   QrSrchPhone.Parameters.ParamByName('UsersID').Value := _UserID;

end;

procedure TDMPhone.SpPhoneCalcFields(DataSet: TDataSet);
Var
   Tel:String;
begin
   Tel := Trim(SpPhoneTel1.AsString);
   if Trim(SpPhoneTel2.AsString) <> '' then
      Tel := Trim(SpPhoneTel2.AsString) + ' , ' + Tel ;
   if Trim(SpPhoneMobile.AsString) <> '' then
      Tel := Trim(SpPhoneMobile.AsString) + ' , ' + Tel ;
   SpPhoneShowPhone.AsString := Tel ;
end;

procedure TDMPhone.DSPhoneDataChange(Sender: TObject; Field: TField);
begin
   // Amin 1391/10/03 Start
   if Q_NonAccessUsers.Active then
      Q_NonAccessUsers.Active := false;

   if Q_AccessUsers.Active then
      Q_AccessUsers.Active := false;

   Q_AccessUsers.Parameters.ParamByName('PhoneID').Value := SpPhonePhoneID.Value;
   Q_NonAccessUsers.Parameters.ParamByName('PhoneID').Value := SpPhonePhoneID.Value;

   Q_NonAccessUsers.Active := true;
   Q_AccessUsers.Active := true;
   // Amin 1391/10/03 End
end;

end.
