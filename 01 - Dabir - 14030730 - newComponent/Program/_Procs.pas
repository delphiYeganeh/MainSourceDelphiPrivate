unit _Procs;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, DB,
  ExtCtrls, DBCtrls, StdCtrls, System.Generics.Collections, System.Generics.Defaults,
  System.Win.Registry, ActiveX, ComObj, System.Variants;

const
  AppRegistryRoot = '\Software\TICS';
  CKEY1 = 53761;
  CKEY2 = 32618;
  TaxtpUrl = 'https://tp.tax.gov.ir/req/api/self-tsp';
  TaxSandBoxUrl = 'https://sandboxrc.tax.gov.ir/req/api/self-tsp';

  STR_CHOOSE = 'انتخاب ';
  STR_CodeLable = 'کد ';
  STR_TitleLabel = 'عنوان ';

  LkpUnits = 1;
  LkpBusType = 2;
  LkpTransType = 3;
  LkpTransPattern = 4;
  LkpDepartment = 5;
  LkpBusiness = 6;
  LkpItems = 7;
  LkpPaymentType = 8;
  LkpRefTransaction = 9;

  XlsRadin = 1;
  XlsMaral = 2;

  RadinDateField = 'تاریخ';
  RadinTransNoField = 'شماره فاکتور';
  RadinNationalCodeField = 'کد ملی';
  RadinItemCodeField = 'کد کالا';
  RadinItemTitleField = 'شرح کالا';
  RadinItemUnitField = 'واحد اندازه گیری';
  RadinNQtyField = 'مقدار';
  RadinPriceField = 'فی';
  RadinDiscountPriceField = 'مبلغ تخفیف';
  RadinBusTypeField = 'نوع خریدار';
  RadinPostalCodeField = 'کد پستی';

  MaralTransNoField = 'شماره فاكتور';
  MaralNationalCodeField = 'codeMeli';
  MaralItemCodeField = 'کد ملی';
  MaralItemTitleField = 'نام كالا';
  MaralItemUnitField = 'واحد کل';
  MaralNQtyField = 'مقدار';
  MaralPriceField = 'قيمت جز';
  MaralDiscountField = 'مبلغ تخفیف';
  MaralBusTitleField = 'نام خريدار';
  MaralDateField = 'تاريخ';
  MaralBusPostalCodeField = 'codePosti';

  type
  TObjectParameters = Record
     ID1, ID2, ID3, ID4, ID5, ID6, ID7, ID8, ID9, ID10 : integer;
     Str1, Str2, Str3, Str4, Str5, Str6, Str7, Str8, Str9, Str10 : String;
     bTag1, bTag2, bTag3, bTag4, bTag5, bTag6, bTag7, bTag8, bTag9, bTag10 : Boolean;
     aFloat1, aFloat2, aFloat3, aFloat4, aFloat5, aFloat6, aFloat7, aFloat8, aFloat9, aFloat10 : Double;
     Date1, Date2 : TDateTime;
   End;

  TRtts = Record
      ID : integer;
      Name : String;
      Code : string;
      ObjPrm : TObjectParameters;
   End;

  TRttsList = TList<TRtts>;

  function UserLogin(): boolean;
  procedure TerminateApp();
  function LoadLicenseFromRegistry(KeyName: string; ValueName:string; DefaultValue: string): string; overload;
  function LoadLicenseCountFromRegistry(KeyName: string; ValueName:string; DefaultValue: integer):integer; overload;
  function LoadFromRegistry(KeyName: string; ValueName:string; DefaultValue: string): string; overload;
  function LoadFromRegistry(KeyName: string; ValueName:string; DefaultValue: Integer): Integer; overload;
  function LoadFromRegistry(KeyName: string; ValueName:string; DefaultValue: Boolean): Boolean; overload;
  function LoadFromRegistry(KeyName: string; ValueName:string; DefaultValue: Double): Double; overload;
  function SaveToRegistry(KeyName: string; ValueName:string; Value: string) : Boolean; overload;
  function SaveToRegistry(KeyName: string; ValueName:string; Value: Integer) : Boolean; overload;
  function SaveToRegistry(KeyName: string; ValueName:string; Value: Boolean) : Boolean; overload;
  function SaveToRegistry(KeyName: string; ValueName:string; Value: Double) : Boolean; overload;
  function EncryptStr(const S: WideString): string;
  function DecryptStr(const S: string): string;
  function MakeEmptyLookup: TRtts;
  function Lookup(LKPType: Integer; FilterID: integer = 0): TRtts;
  function GetItemsData(ItemID: Integer):Boolean;
  function GetItemsDataByCode(Code: String):Boolean;
  function GetUnitDataByTitle(Title: String):Boolean;
  function GetBusinessData(NatCode: string):Boolean;
  function GetDepartmentData(Code: string):Boolean;
  function GetOrderData(TransNo, DepartmentID: Integer; NatCode: string):Boolean;
  function InsertNewBusiness(NatCode, Title, BusPostalCode: string; BusType: integer): integer;
  function InsertNewItem(Code, Title: string; UnitID: integer): integer;
  {============ Persian Message Show ===========}
  function FaShowResult(const AMessage: string): Integer;
  function FaShowAlarm(const AMessage: string): Boolean;
  function FaQuestion(const AMessage: string): Boolean;
  function FaMsgDlg(const Msg: string; DlgType: TMsgDlgType; Buttons: TMsgDlgButtons): Integer;
  function GetSolarMonthName(MonthID: integer): string;
  function ParseError(MainError: string): string;
  function GetNextSerial(TransactionID: integer): integer;
  function GetMotherBoardSerial:String;
  procedure FaShowError(const AMessage: string; IfAbort: Boolean = True);
  procedure SetKeyBoardToPersian;
  procedure SetKeyBoardToEnglish;
  {============ Form Show ===========}
  procedure ShowOptionsUI;
  procedure ShowItemsUI;
  procedure ShowUnitsUI;
  procedure ShowDBBackUpUI;
  procedure ShowTICSSetting(OpenForTest : Boolean = True);
  procedure ShowOrdersUI;
  procedure ShowBusinessUI;
  procedure ShowSendHistoryUI(TransactionID : Integer = 0);
  procedure ShowImportRadinXls;
  procedure ShowHistoryReportUI;
var
  TmpParam: TRtts;
  gUserID, LicenseCount : integer;
  gUserName : string;
  License, UdlPath, PCID : String;

implementation
uses _dmMain, _DBBackUp, TICSSetting, _Options, _Login, _UnitsUI, _ItemsUI, _LookupUI,
    _OrdersUI, _BusinessUI, _SendHistoryUI, _ImportRadinXlsUI, _HistoryReportUI;

{$region '============ Form Show ==========='}
procedure ShowHistoryReportUI;
var
  frmHistoryReport: TfrmHistoryReport;
begin
  frmHistoryReport := TfrmHistoryReport.Create(Application);
  frmHistoryReport.Show;
end;

procedure ShowImportRadinXls;
var
  frmImportRadinXls: TfrmImportRadinXls;
begin
  frmImportRadinXls := TfrmImportRadinXls.Create(Application);
  frmImportRadinXls.Show;
end;

procedure ShowSendHistoryUI(TransactionID : Integer = 0);
var
  frmSendHistory: TfrmSendHistory;
begin
  frmSendHistory := TfrmSendHistory.Create(Application);
  frmSendHistory.TransactionID := TransactionID;
  frmSendHistory.ShowModal;
  FreeAndNil(frmSendHistory);
end;

procedure ShowBusinessUI;
var
  frmBusiness: TfrmBusiness;
begin
  frmBusiness := TfrmBusiness.Create(Application);
  frmBusiness.Show;
end;

procedure ShowOrdersUI;
var
  frmOrders: TfrmOrders;
begin
  frmOrders := TfrmOrders.Create(Application);
  frmOrders.Show;
end;

procedure ShowUnitsUI;
var
  frmUnits: TfrmUnits;
begin
  frmUnits := TfrmUnits.Create(Application);
  frmUnits.Show;
end;

procedure ShowItemsUI;
var
  frmItems: TfrmItems;
begin
  frmItems := TfrmItems.Create(Application);
  frmItems.Show;
end;

procedure ShowOptionsUI;
var
  frmOptions: TfrmOptions;
begin
  frmOptions := TfrmOptions.Create(Application);
  frmOptions.Show;
end;

procedure ShowTICSSetting(OpenForTest : Boolean = True);
var
  frmTICSSetting: TfrmTICSSetting;
begin
  frmTICSSetting := TfrmTICSSetting.Create(Application);
  frmTICSSetting.OpenForTest := OpenForTest;
  frmTICSSetting.Show;
end;

procedure ShowDBBackUpUI;
var
  frmDBBackup: TfrmDBBackup;
begin
  frmDBBackup := TfrmDBBackup.Create(Application);
  frmDBBackup.ShowModal;
  FreeAndNil(frmDBBackup);
end;

function Lookup(LKPType: Integer; FilterID: integer = 0): TRtts;
begin
  frmLookup := TfrmLookup.Create(Application);
  frmLookup.LKPType := LKPType;
  frmLookup.FilterID := FilterID;
  case LKPType of
    LkpUnits : frmLookup.LookupName := 'واحد سنجش';
    LkpBusType : frmLookup.LookupName := 'نوع طرف حساب';
    LkpTransType : frmLookup.LookupName := 'نوع صورت حساب';
    LkpTransPattern : frmLookup.LookupName := 'الگوی صورت حساب';
    LkpDepartment : frmLookup.LookupName := 'حافظه مالیاتی';
    LkpBusiness : frmLookup.LookupName := 'طرف حساب';
    LkpItems : frmLookup.LookupName := 'کالا و خدمات';
    LkpPaymentType : frmLookup.LookupName := 'نحوه تسویه';
    LkpRefTransaction : frmLookup.LookupName := 'صورت حساب مرجع';
  end;
  if frmLookup.ShowModal = mrOk then
    Result := frmLookup.LookupValue
  else
    Result := MakeEmptyLookup;
  FreeAndNil(frmLookup);
end;

function MakeEmptyLookup: TRtts;
Begin
  Result.ID := 0;
  Result.Name := '';
  Result.Code := '';
End;
{$endregion}

{$REGION 'ModifyDialog'}
procedure ModifyDialog(var Frm: Tform);
var
  I: Integer;
begin
  for I := 0 to Frm.ComponentCount - 1 do
  begin
    if Frm.Components[I] is TButton then
    begin
      if TButton(Frm.Components[I]).Name = 'Yes' then
        TButton(Frm.Components[I]).Caption := 'بلی';
      if TButton(Frm.Components[I]).Name = 'No' then
        TButton(Frm.Components[I]).Caption := 'خیر';
      if TButton(Frm.Components[I]).Name = 'OK' then
        TButton(Frm.Components[I]).Caption := 'تایید';
      if TButton(Frm.Components[I]).Name = 'Cancel' then
        TButton(Frm.Components[I]).Caption := 'انصراف';
      if TButton(Frm.Components[I]).Name = 'Abort' then
        TButton(Frm.Components[I]).Caption := 'لغو';
      if TButton(Frm.Components[I]).Name = 'Retry' then
        TButton(Frm.Components[I]).Caption := 'تلاش مجدد';
      if TButton(Frm.Components[I]).Name = 'Ignore' then
        TButton(Frm.Components[I]).Caption := 'نادیده گرفتن';
      if TButton(Frm.Components[I]).Name = 'All' then
        TButton(Frm.Components[I]).Caption := 'همه';
      if TButton(Frm.Components[I]).Name = 'YesToAll' then
        TButton(Frm.Components[I]).Caption := 'بله همه';
      if TButton(Frm.Components[I]).Name = 'NoToAll' then
        TButton(Frm.Components[I]).Caption := 'خیر هیچکدام';
      if TButton(Frm.Components[I]).Name = 'Help' then
        TButton(Frm.Components[I]).Caption := 'راهنما';
      if TButton(Frm.Components[I]).Name = 'Close' then
        TButton(Frm.Components[I]).Caption := 'بستن';
    end;
  end;
end;
{$ENDREGION}
{$REGION 'Dialogs and Messages initialization'}
function FaMsgDlg(const Msg: string; DlgType: TMsgDlgType; Buttons: TMsgDlgButtons): Integer;
var
  dialog: Tform;
begin
  try
    dialog := CreateMessageDialog(Msg, DlgType, Buttons);
    dialog.BiDiMode := bdRightToLeft;
    dialog.Position := poScreenCenter;
    case DlgType of
      TMsgDlgType.mtWarning:
        dialog.Caption := 'هشدار';
      TMsgDlgType.mtError:
        dialog.Caption := 'خطا';
      TMsgDlgType.mtInformation:
        dialog.Caption := 'جهت اطلاع';
      TMsgDlgType.mtConfirmation:
        dialog.Caption := 'تایید';
      TMsgDlgType.mtCustom:
        dialog.Caption := 'دلخواه';
    end;
    ModifyDialog(dialog);
    Result := dialog.ShowModal;
  finally
    dialog.Release;
  end;
end;

function FaQuestion(const AMessage: string): Boolean;
begin
  Result := FaMsgDlg(AMessage, mtConfirmation, [mbYes, mbNo]) = mrYes;
end;

procedure SetKeyBoardToPersian;
begin
  LoadKeyboardLayout('00000429', KLF_ACTIVATE);
end;

procedure SetKeyBoardToEnglish;
begin
  LoadKeyboardLayout('00000210', KLF_ACTIVATE);
end;

function FaShowAlarm(const AMessage: string): Boolean;
begin
  case FaMsgDlg(AMessage, mtConfirmation, [mbYes, mbNo, mbCancel]) of
    mrYes:
      Result := True;
    mrCancel:
      begin
        Result := False;
        Abort;
      end;
    mrNo:
      Result := False;
  end;
end;

procedure FaShowError(const AMessage: string; IfAbort: Boolean = True);
begin
  FaMsgDlg(AMessage, mtError, [mbClose]);
  if IfAbort then
    abort;
end;

function FaShowResult(const AMessage: string): Integer;
var
  csButton: TButton;
begin
  with CreateMessageDialog(AMessage, mtConfirmation, [mbYes]) do
  begin
    try
      BiDiMode := bdRightToLeft;
      Caption := 'جهت اطلاع';
      csButton := TButton(FindComponent('Yes'));
      if csButton <> nil then
      begin
        csButton.Caption := 'بستن';
      end;
      Icon := Application.Icon;
      Position := poScreenCenter;
      Result := ShowModal;
    finally
      Free
    end;
  end;
end;
{$ENDREGION}
{$REGION 'function EncryptStr(const S: WideString; Key: Word): string;'}
function EncryptStr(const S: WideString): string;
var
  i: Integer;
  RStr: RawByteString;
  RStrB: TBytes absolute RStr;
  Key: Word;
begin
  Key := 666;
  Result := '';
  RStr := UTF8Encode(S);
  for i := 0 to Length(RStr) - 1 do
  begin
    RStrB[i] := RStrB[i] xor (Key shr 8);
    Key := (RStrB[i] + Key) * CKEY1 + CKEY2;
  end;
  for i := 0 to Length(RStr) - 1 do
  begin
    Result := Result + IntToHex(RStrB[i], 2);
  end;
end;
{$ENDREGION}
{$REGION 'function DecryptStr(const S: string; Key: Word): string;'}
function DecryptStr(const S: string): string;
var
  i, tmpKey: Integer;
  RStr: RawByteString;
  RStrB: TBytes absolute RStr;
  tmpStr: string;
  Key: Word;
begin
  Key := 666;
  tmpStr := UpperCase(S);
  SetLength(RStr, Length(tmpStr) div 2);
  i := 1;
  try
    while (i < Length(tmpStr)) do
    begin
      RStrB[i div 2] := StrToInt('$' + tmpStr[i] + tmpStr[i + 1]);
      Inc(i, 2);
    end;
  except
    Result := '';
    Exit;
  end;
  for i := 0 to Length(RStr) - 1 do
  begin
    tmpKey := RStrB[i];
    RStrB[i] := RStrB[i] xor (Key shr 8);
    Key := (tmpKey + Key) * CKEY1 + CKEY2;
  end;
  Result := UTF8Decode(RStr);
end;
{$ENDREGION}
{$region 'function GetSolarMonthName(MonthID: integer): string;'}
function GetSolarMonthName(MonthID: integer): string;
begin
  case MonthID of
    1: Result := 'فروردین';
    2: Result := 'اردیبهشت';
    3: Result := 'خرداد';
    4: Result := 'تیر';
    5: Result := 'مرداد';
    6: Result := 'شهریور';
    7: Result := 'مهر';
    8: Result := 'آبان';
    9: Result := 'آذر';
    10: Result := 'دی';
    11: Result := 'بهمن';
    12: Result := 'اسفند';
  end;
end;

function ParseError(MainError: string): string;
var
  I: Integer;
begin
//  for I := 33 to 127 do
//  begin
//    if (I in [47..59]){or(I in [34,39])} then
//      Continue;
//    MainError := StringReplace(MainError, Chr(I), '', [rfReplaceAll, rfIgnoreCase]);
//  end;
//  Result := MainError;
  Result := 'خطایی در عملیات بانک اطلاعاتی رخ داده است' + #13#10 + MainError;
end;
{$endregion}
{$region 'function UserLogin(): boolean;'}
function UserLogin(): boolean;
begin
  Result := False;
  fmLogin := TfmLogin.Create(Application);
  fmLogin.ShowModal;
  if fmLogin.ModalResult = mrOk then
    Result := True;
  FreeAndNil(fmLogin);
end;
{$endregion}
function GetItemsData(ItemID: Integer):Boolean;
begin
  dmMain.TmpQry.Close;
  dmMain.TmpQry.SQL.Clear;
  dmMain.TmpQry.SQL.Text := 'SELECT I.UnitID, U.Title, U.Code FROM dbo.Items AS I LEFT JOIN Units AS U ON U.ID = I.UnitID WHERE I.ID = :ItemID';
  dmMain.TmpQry.ParamByName('ItemID').AsInteger := ItemID;
  dmMain.TmpQry.Open;
  Result := not dmMain.TmpQry.IsEmpty;
end;

function GetItemsDataByCode(Code: String):Boolean;
begin
  dmMain.TmpQry.Close;
  dmMain.TmpQry.SQL.Clear;
  dmMain.TmpQry.SQL.Text := 'SELECT I.*, U.Code AS UnitTaxGovCode FROM dbo.Items AS I LEFT JOIN dbo.Units AS U ON U.ID = I.UnitID WHERE I.Code = :Code';
  dmMain.TmpQry.ParamByName('Code').AsString := Code;
  dmMain.TmpQry.Open;
  Result := not dmMain.TmpQry.IsEmpty;
end;

function GetUnitDataByTitle(Title: String):Boolean;
begin
  dmMain.TmpQry.Close;
  dmMain.TmpQry.SQL.Clear;
  dmMain.TmpQry.SQL.Text := 'SELECT * FROM dbo.Units AS U WHERE U.Title = :Title';
  dmMain.TmpQry.ParamByName('Title').AsString := Title;
  dmMain.TmpQry.Open;
  Result := not dmMain.TmpQry.IsEmpty;
end;

function GetBusinessData(NatCode: String):Boolean;
begin
  dmMain.TmpQry.Close;
  dmMain.TmpQry.SQL.Clear;
  dmMain.TmpQry.SQL.Text := 'SELECT * FROM Business AS B WHERE B.BusNatCode = :NatCode';
  dmMain.TmpQry.ParamByName('NatCode').AsString := NatCode;
  dmMain.TmpQry.Open;
  Result := not dmMain.TmpQry.IsEmpty;
end;

function GetDepartmentData(Code: string):Boolean;
begin
  dmMain.TmpQry.Close;
  dmMain.TmpQry.SQL.Clear;
  dmMain.TmpQry.SQL.Text := 'SELECT * FROM dbo.TICSOptions WHERE TaxGovClientID = :Code';
  dmMain.TmpQry.ParamByName('Code').AsString := Code;
  dmMain.TmpQry.Open;
  Result := not dmMain.TmpQry.IsEmpty;
end;

function GetOrderData(TransNo, DepartmentID: Integer; NatCode: string):Boolean;
begin
  dmMain.TmpQry.Close;
  dmMain.TmpQry.SQL.Clear;
  dmMain.TmpQry.SQL.Text := 'SELECT * FROM dbo.Transactions AS T WHERE T.DepartmentID = :DepartmentID AND T.TransNumber = :TransNo AND T.NationalCode = :NatCode';
  dmMain.TmpQry.ParamByName('DepartmentID').AsInteger := DepartmentID;
  dmMain.TmpQry.ParamByName('TransNo').AsInteger := TransNo;
  dmMain.TmpQry.ParamByName('NatCode').AsString := NatCode;
  dmMain.TmpQry.Open;
  Result := not dmMain.TmpQry.IsEmpty;
end;

function InsertNewBusiness(NatCode, Title, BusPostalCode: string; BusType: integer): integer;
begin
  dmMain.msqBusiness.Close;
  dmMain.msqBusiness.Open;
  dmMain.msqBusiness.Insert;
  dmMain.msqBusinessBusNatCode.AsString := NatCode;
  dmMain.msqBusinessEconomicType.AsInteger := BusType;
  dmMain.msqBusinessTitle.AsString := Title;
  dmMain.msqBusinessBusPostalCode.AsString := BusPostalCode;
  dmMain.msqBusinessCode.AsString := 'xls';
  dmMain.msqBusiness.Post;
  Result := dmMain.msqBusinessID.AsInteger;
end;

function InsertNewItem(Code, Title: string; UnitID: integer): integer;
begin
  dmMain.msqItems.Close;
  dmMain.msqItems.Open;
  dmMain.msqItems.Insert;
  dmMain.msqItemsCode.AsString := Code;
  dmMain.msqItemsTitle.AsString := Title;
  dmMain.msqItemsUnitID.AsInteger := UnitID;
  dmMain.msqItems.Post;
  Result := dmMain.msqItemsID.AsInteger;
end;

function GetNextSerial(TransactionID: integer): integer;
begin
  dmMain.msqNextSerial.Close;
  dmMain.msqNextSerial.ParamByName('@TransactionID').AsInteger := TransactionID;
  dmMain.msqNextSerial.ExecSQL;
  Result := dmMain.msqNextSerial.Params[0].AsInteger;
end;

{$region 'procedure TerminateApp();'}
procedure TerminateApp();
begin
  Application.Terminate;
end;
{$endregion}

{$REGION ' L O A D  F R O M  R E G I S T R Y '}
function LoadLicenseFromRegistry(KeyName: string; ValueName:string; DefaultValue: string):string;
var
  Registry : TRegistry;
begin
  Result := DefaultValue;
  KeyName := '\Software\' + KeyName;
  try
    Registry := TRegistry.Create;
    Registry.RootKey := HKEY_CURRENT_USER;
    try
      Registry.OpenKey(KeyName ,False);
      if Registry.ValueExists(ValueName) then
        Result := Registry.ReadString(ValueName);
    finally
      Registry.Free;
    end;
  except
    Result := DefaultValue;
  end;
end;

function LoadLicenseCountFromRegistry(KeyName: string; ValueName:string; DefaultValue: integer):integer;
var
  Registry : TRegistry;
begin
  Result := DefaultValue;
  KeyName := '\Software\' + KeyName;
  try
    Registry := TRegistry.Create;
    Registry.RootKey := HKEY_CURRENT_USER;
    try
      Registry.OpenKey(KeyName ,False);
      if Registry.ValueExists(ValueName) then
        Result := Registry.ReadInteger(ValueName);
    finally
      Registry.Free;
    end;
  except
    Result := DefaultValue;
  end;
end;

function LoadFromRegistry(KeyName: string; ValueName:string; DefaultValue: string):string;
var
  Registry : TRegistry;
begin
  Result := DefaultValue;
  KeyName := AppRegistryRoot + KeyName;
  try
    Registry := TRegistry.Create;
    Registry.RootKey := HKEY_CURRENT_USER;
    try
      Registry.OpenKey(KeyName ,False);
      if Registry.ValueExists(ValueName) then
        Result := Registry.ReadString(ValueName);
    finally
      Registry.Free;
    end;
  except
    Result := DefaultValue;
  end;
end;

function LoadFromRegistry(KeyName: string; ValueName:string; DefaultValue: Integer):Integer;
var
  Registry : TRegistry;
begin
  Result := DefaultValue;
  KeyName := AppRegistryRoot + KeyName;
  try
    Registry := TRegistry.Create;
    Registry.RootKey := HKEY_CURRENT_USER;
    try
      Registry.OpenKey(KeyName ,False);
      if Registry.ValueExists(ValueName) then
        Result := Registry.ReadInteger(ValueName);
    finally
      Registry.Free;
    end;
  except
    Result := DefaultValue;
  end;
end;

function LoadFromRegistry(KeyName: string; ValueName:string; DefaultValue: Boolean):Boolean;
var
  Registry : TRegistry;
begin
  Result := DefaultValue;
  KeyName := AppRegistryRoot + KeyName;
  try
    Registry := TRegistry.Create;
    Registry.RootKey := HKEY_CURRENT_USER;
    try
      Registry.OpenKey(KeyName ,False);
      if Registry.ValueExists(ValueName) then
        Result := Registry.ReadBool(ValueName);
    finally
      Registry.Free;
    end;
  except
    Result := DefaultValue;
  end;
end;

function LoadFromRegistry(KeyName: string; ValueName:string; DefaultValue: Double):Double;
var
  Registry : TRegistry;
begin
  Result := DefaultValue;
  KeyName := AppRegistryRoot + KeyName;
  try
    Registry := TRegistry.Create;
    Registry.RootKey := HKEY_CURRENT_USER;
    try
      Registry.OpenKey(KeyName ,False);
      if Registry.ValueExists(ValueName) then
        Result := Registry.ReadFloat(ValueName);
    finally
      Registry.Free;
    end;
  except
    Result := DefaultValue;
  end;
end;
{$ENDREGION}

{$REGION ' S A V E  T O  R E G I S T R Y '}
function SaveToRegistry(KeyName: string; ValueName:string; Value: string):Boolean;
var
  Registry : TRegistry;
begin
  KeyName := AppRegistryRoot + KeyName;
  try
    Registry := TRegistry.Create;
    try
      Registry.RootKey := HKEY_CURRENT_USER;
      Registry.OpenKey(KeyName ,True);
      Registry.WriteString(ValueName, Value);
      Result := True;
    finally
      Registry.Free;
    end;
  except
    Result := False;
  end;
end;

function SaveToRegistry(KeyName: string; ValueName:string; Value: Integer):Boolean;
var
  Registry : TRegistry;
begin
  KeyName := AppRegistryRoot + KeyName;
  try
    Registry := TRegistry.Create;
    try
      Registry.RootKey := HKEY_CURRENT_USER;
      Registry.OpenKey(KeyName ,True);
      Registry.WriteInteger(ValueName, Value);
      Result := True;
    finally
      Registry.Free;
    end;
  except
    Result := False;
  end;
end;

function SaveToRegistry(KeyName: string; ValueName:string; Value: Boolean):Boolean;
var
  Registry : TRegistry;
begin
  KeyName := AppRegistryRoot + KeyName;
  try
    Registry := TRegistry.Create;
    try
      Registry.RootKey := HKEY_CURRENT_USER;
      Registry.OpenKey(KeyName ,True);
      Registry.WriteBool(ValueName, Value);
      Result := True;
    finally
      Registry.Free;
    end;
  except
    Result := False;
  end;
end;

function SaveToRegistry(KeyName: string; ValueName:string; Value: Double):Boolean;
var
  Registry : TRegistry;
begin
  KeyName := AppRegistryRoot + KeyName;
  try
    Registry := TRegistry.Create;
    try
      Registry.RootKey := HKEY_CURRENT_USER;
      Registry.OpenKey(KeyName ,True);
      Registry.WriteFloat(ValueName, Value);
      Result := True;
    finally
      Registry.Free;
    end;
  except
    Result := False;
  end;
end;
{$ENDREGION}

function GetMotherBoardSerial:String;
var
  objWMIService : OLEVariant;
  colItems      : OLEVariant;
  colItem       : OLEVariant;
  oEnum         : IEnumvariant;
  iValue        : LongWord;
  function GetWMIObject(const objectName: String): IDispatch;
  var
    chEaten: Integer;
    BindCtx: IBindCtx;
    Moniker: IMoniker;
  begin
    OleCheck(CreateBindCtx(0, bindCtx));
    OleCheck(MkParseDisplayName(BindCtx, StringToOleStr(objectName), chEaten, Moniker));
    OleCheck(Moniker.BindToObject(BindCtx, nil, IDispatch, Result));
  end;
begin
  Result:='';
  objWMIService := GetWMIObject('winmgmts:\\localhost\root\cimv2');
  colItems      := objWMIService.ExecQuery('SELECT SerialNumber FROM Win32_BaseBoard','WQL',0);
  oEnum         := IUnknown(colItems._NewEnum) as IEnumVariant;
  if oEnum.Next(1, colItem, iValue) = 0 then
  Result:=VarToStr(colItem.SerialNumber);
end;

end.
