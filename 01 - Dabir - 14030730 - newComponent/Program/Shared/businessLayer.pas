unit BusinessLayer;

interface

uses
  DB,ADODB,dialogs,Graphics,Jpeg,Types ,Forms,Classes ,Controls , BaseUnit, SysUtils, TlHelp32;

  Procedure Exec_delete_ArchiveFolder(FolderID:integer);
  Procedure Exec_Activate_Recommite(RecommiteID:integer);
  Procedure Exec_update_ReCommites_proceed(RecommiteID:integer;Proceeded:boolean;ProceedDate:widestring;actionTypeID:integer);    overload;
  Procedure Exec_update_ReCommites_proceed(RecommiteID:integer;Proceeded:boolean;ProceedDate:widestring;ProceedTime:widestring;actionTypeID:integer); overload;
  Procedure Exec_delete_LetterArchiveFolder(LetterArchiveID:integer);
  Procedure Exec_delete_LetterArchive(ArchiveFolderID:integer; LetterID: integer); // Amin 1391/11/28
  Procedure  Draft_to_SentLetter(LetterID:integer;newInd:integer;IsCopy:boolean;Proceed:boolean;IsCopy_In_Dabir:Boolean);
  Procedure Exec_Insert_ReCommites(_ID:integer;IsCopy:boolean;LetterID:integer;OrgID:integer;Paraph:widestring;
            ParentId:integer;Proceeded:boolean;RecommiteDate:string;_Type:byte;UserID:byte); overload;
  Procedure Exec_Insert_ReCommites(_ID:integer;IsCopy:boolean;LetterID:integer;OrgID:integer;Paraph:widestring;
            ParentId:integer;Proceeded:boolean;RecommiteDate:string;RecommiteTime:string;_Type:byte;UserID:byte; DeadLineDate: string = ''); overload;
  Procedure  Exec_insert_OtherRecievers(_ID:integer;IsCopy:boolean;LetterID:integer;OrgID:integer;Paraph:widestring;
  ParentId:integer;Proceeded:boolean;RecommiteDate:string;_Type:byte;UserID:byte);

  Procedure Exec_min_page(LetterID:integer;var haspage:boolean; var minpage:integer);
  Procedure Exec_update_ArchiveFolder(FolderID:integer;Title:widestring;Notes,Place:widestring);
  Procedure Exec_update_Letter_Finalized(LetterID:integer;Finalized:boolean;WordDocumentReadOnly:Boolean);
  Procedure Exec_update_ReCommites_viewDate(RecommiteID:integer;ViewDate:string);
  Procedure Exec_delete_Letter(LetterID:integer;newInd:integer);
  Procedure Exec_Select_LetterReCommite(letterID:integer; TypeID: byte);
  Procedure Exec_delete_ReCommites(RecommiteID:integer);
  Procedure Exec_AnswerLetter(AnswerLetterID:integer;LetterID:integer;Today:string);
  Procedure Exec_Insert_LetterText(LetterID:integer;TypeText:Widestring);
  Procedure Exec_insert_Actions(FormName : string;FormTag:byte;Title:widestring;ComponentTag :Integer);
  Procedure Exec_Insert_NewActionsAccess;
  Procedure Exec_delete_Actions_ByFormID(FormTag:byte);
  Procedure Exec_ysp_shrink(dbname:widestring;path:widestring);
  Procedure Exec_ysp_Backup(dbname:widestring;path:widestring);
  Procedure Exec_delete_Accesses(AccessID:byte);
  Procedure Exec_sp_Letter_Numbers(bdate:string;edate:string;SecID:integer;var receivedNum,SentNum,recommitesNum:integer);
  Procedure Exec_Delete_All_Secretariats_Of_User(userid:integer);
  Procedure Exec_Delete_All_TemplateGroup_Of_User(userid:integer);
  Procedure Exec_Deleted_to_Letter(LetterID:integer;newInd:integer);
  Procedure Exec_get_FromOrganizationsTitle_byID(_ID:integer; var Title,ResponsibleStaffer,Code:widestring);
  Procedure Exec_update_UserLoginLogout(UserLoginLogoutID:integer;isSafeLogout:boolean;isCartable:boolean);
  Procedure Exec_GetUserLogout_status(UserID:integer;var logout,isSafeLogout:boolean);
  function get_UserName(UserID: integer) : string;
  Procedure Exec_Ysp_create_Temp_Database(Path:widestring);
  Procedure Exec_Import_LetterData(LetterDataID:integer);
  Procedure Exec_delete_letterImage(LetterDataID:integer);
  Procedure Exec_Delete_Exported_LetterData(SecretariatID:integer;myear:integer);
  Procedure Exec_Export_LetterData(LetterdataID:integer);
  Procedure Exec_ysp_DELETE_Temp_Database;
  Procedure Exec_Get_FromOrganizations_ByCode(Code:widestring;var _ID:integer; var ResponsibleStaffer:widestring);
  Procedure Exec_insert_UserLog(FormTag:integer;ActionID:string;LetterID:integer);
  Procedure Exec_Delete_LetterWord(LetterID:integer);
  Procedure Exec_Sp_Add_GroupRecommite(letterid:integer;_Type:integer;OrgID:integer;Paraph:widestring;RecommiteDate:string;UserID:integer;IsCopy:boolean;Proceeded:boolean;OrgStaff:widestring);
  Procedure Exec_Delete_Extention(ExtentionID:integer);
  Procedure Exec_Insert_Extention(ExtentionID:integer);
  Procedure Exec_Delete_LetterData(LetterDataID:integer);
  Procedure Exec_Delete_RecommitePayvast(RecommitePayvastID:integer);
  Procedure Exec_AnswerNote(recommiteID:integer);
  Procedure Exec_Sp_makeRecommited(RecommiteID:integer;staffmemo:widestring;ProceedDate:string);
  //Hamed_Ansari_990230_S
  //Procedure Exec_InsertReCommites_autoID(LetterID:integer;_Type:integer;ParentId:integer;OrgID:integer;Paraph:widestring;RecommiteDate:string;UserID:integer;IsCopy:boolean;GroupFalg:Integer;ISSecure:Boolean);
  Procedure  Exec_insertReCommites_autoID(LetterID:integer;_Type:integer;ParentId:integer;OrgID:integer;Paraph:widestring;RecommiteDate:string;UserID:integer;IsCopy:boolean;GroupFalg:Integer;ISSecure:Boolean;DeadLineDate:String; DeadLineToInt:Integer);
  //Hamed_Ansari_990230_E
  Procedure Exec_Make_FieldValues_by_LetterID(LetterID:integer;FormOrder:byte);
  Procedure Exec_Update_Archived_letter(Letterid:integer;archived:boolean);
  Procedure Exec_Sp_add_datato_dabir;
  //Hamed_Ansari_981120_S
  Procedure Exec_SendLetter_To_Other_Sec(NewSecID:integer;LetterID:Integer; intChboxSendLetterWithoutChange : Integer);
  //Procedure Exec_SendLetter_To_Other_Sec(NewSecID:integer;LetterID:Integer;Copy:Boolean);
  //Hamed_Ansari_981120_E
  procedure MakeRecommite(Letterformat,Letter_Type,LetterID,FromorgID:integer);
  Procedure Open_FieldAccess_by_TableID(TableID:integer;UserID:integer);
  Procedure SaveWordFile(Letterid:integer;_FileName:string);
  Procedure Exec_Update_LetterActiontype(LetterID:integer;LatestActionTypeID:integer);
  Procedure Exec_Get_LetterAction_By_LetterID(letterID:integer);
  Procedure Exec_Delete_UserTable(TableID:integer);
  Procedure LoadHelp(Tag:integer);
  Procedure Exec_Select_letter_details(letterid:integer;var IndicatorID:string;var RegistrationDate:string;var Memo,LetterRecommites,latestParaph:widestring);
  Procedure Move_ParaphTemplate(ParaphTemplateID:integer;Step:integer);
  Procedure Insert_ParaphTemplate(Title:widestring;Paraph:widestring;typ : integer);
  Procedure Open_ParaphTemplate(typ: integer);
  Procedure Delete_ParaphTemplate(ParaphTemplateID:integer);
  Procedure Update_ParaphTemplate(ParaphTemplateID:integer;Title:widestring;Paraph:widestring);
  procedure Open_UserTable(like:string);

  Procedure insert_FieldAccess;
  Procedure Open_UserSign(UserID:integer);
  procedure PasteSign( Dest:TCanvas;x,y: integer);
  function loadLetterdata(LetterID: integer): Pchar;
  function Exec_Has_Access(userID, frmID: integer; actionID:string):boolean;
  Function Exec_select_userLoginLogout(bdate:string;edate:string;userid:integer):TADODataSet;
  function Exec_insert_UserLoginLogout(UserID:integer;IPAddress:string;isCartable:boolean):integer;
  function Exec_Folder_hasLetter(Folderid:integer):boolean;
  Procedure Exec_UserChange_pass(userID:integer;newPass:widestring);
  Function Exec_Get_ArchiveFolder_byUserID(userID:integer;DabirOrCartable:integer):TADODataSet;
  Function Exec_Get_ArchiveFolder_ByAccess(Order:smallint):TADODataSet;
  Function Exec_Get_ArchiveFolder_ByAccessAndTitle(like:widestring):TADODataSet;
  Function Exec_get_ArchiveFolder_byUserID_and_Title(userID:integer;like:widestring):TadoDataset; overload;
  Function Exec_get_ArchiveFolder_byUserID_and_Title(userID:integer;like:widestring;ArchiveCenterID: integer):TAdoDataSet; overload;
  Function Exec_get_ArchiveFolder_byUserID_and_Letterid(Letterid:integer;userid:integer) :TAdoDataSet;
  function Exec_get_ArchiveFolder_byUserID_and_Place(userID:integer;Place:widestring):integer;
  function Get_SysAppMessage(MsgID:integer):wideString;
  function Exec_Org_HasLetter(orgid:integer):boolean;
  function Exec_Folder_hasRecommite(Folderid:integer):boolean;
  function Exec_Folder_hasChild(userid:integer;ParentID:integer):boolean;
  function Exec_insert_LetterArchiveFolder(ArchiveFolderID:integer;LetterID:integer;ArchiveDate:string;Page:integer;ArchiveNotes:widestring):integer;
  function Exec_insert_ArchiveFolder(ParentFolderID:integer;UserID:integer;Title:widestring;Notes,Place:widestring):integer;
  Function Exec_SaveAs_Accesses(oldaccessID:integer;Title:widestring):integer;
  function Exec_insert_ToOrganizations(Title:widestring):integer;
  Function Exec_get_LetterID_ByRetroActionNo(RetroActionNo:widestring;LetterFormat:byte;Myear:Integer;SecretariatID:integer):integer;
  Function Exec_Get_DayID_InWeek:byte;
  Function Exec_Get_OrgTitleByID(d:integer):widestring;
  Function Exec_Get_NewOrgID(isInner:boolean):integer;
  Function Exec_Get_LetterMemo_ByID(LetterID:integer):widestring;
  Function Exec_Get_LetterDate_ByID(LetterID:integer):widestring;
  Function Exec_Get_LetterID_ByInCommingNo(InCommingNo:widestring;LetterFormat:byte;Myear:Integer;SecretariatID:integer):integer;
  Function Exec_Get_LetterID_ByIndicatorid(indicatrid:integer;letter_type:byte;LetterFormat:byte;Myear:Integer;SecretariatID:integer):integer;
  Function Exec_Get_LastIndicatorID(letter_type:byte;LetterFormat:byte;Myear:integer;SecretariatID:integer):integer;
  Function Exec_Get_NowTime:string;
  Function Exec_Get_NowDate:tdatetime;
  Function Exec_Get_MaxPage_ByLetterID(extention:byte;letterid:integer):integer;
  Function Exec_Get_indicatorID_BySentLetterID(SentLetterID:integer):integer;
  Function Exec_Get_OrgPreCodeByID(d:integer):widestring;
  Function Exec_Org_hasChild(ParentID:integer):boolean;
  Function Exec_NewRecommiteID(letterID:integer;_Type: integer):integer;
  Function Exec_Hassame_orgtitle(title:widestring):integer;
  function Exec_NumberOfLetter_By_SecID(secID:integer):integer;
  function Exec_update_Letter_Indicator(LetterID:integer;NewIndicatorID:integer;NewSecretariatID:integer;NewLetter_Type:integer;Newletterformat:integer;NewRegistrationDate:string):boolean;
  Function Exec_get_Letter_ByIndicator(IndicatorID:integer;MYear:integer;SecretariatID:integer;Letter_Type:integer;letterformat:integer):TADODataSet;
  function Exec_insert_LetterData(LetterID:integer;PageNumber:integer;extention:integer):integer;
  function Exec_insert_Letter(IndicatorID:integer;MYear:integer;SecretariatID:integer;Letter_Type:integer;letterformat:integer;Memo:widestring;UserID:integer;RegistrationDate:string;RegistrationTime:string):integer;
  function Exec_Get_FromOrganizationsID_ByCode(Code:widestring):integer;
  function Exec_update_FromOrganizations_Title(_ID:integer;Newtitle:widestring;NewResponsibleStaffer:widestring):integer;
  function Exec_ysp_exists_Temp_Database:boolean;
  function Exec_Get_LetterDataIDs(SecretariatID:integer;myear:integer):TADOStoredProc;
  function Exec_Get_tmp_LetterDataIDs:TADOStoredProc;
  Function Exec_Get_ActiveUser:TADOStoredProc;
  function Exec_Recommite_has_JpgFile(RecommiteID:integer):boolean;
  function Exec_NumberOfTemplate_By_TemplateGroupID(TemplateGroupID:integer):integer;

  function Exec_Get_innerLetterMemo(Letterid:integer; var memo:widestring):boolean;
  function Exec_Org_is_Secretariat(orgid:integer):boolean;
  function Exec_Number_Of_Letter_RelatedSecretariatID(RelatedSecretariatID:integer):integer;
  function Exec_insert_ReciveLetter(IndicatorID:integer;MYear:integer;SecretariatID:integer;Letter_Type:integer;letterformat:integer;Memo:widestring;UserID:integer;RegistrationDate:string;RegistrationTime:string;OrgID :integer):integer;
  function Exec_Select_recommites_byLetterID(letterId:integer):TADOStoredProc;
  function Exec_Get_LastUserId:integer;
  function Exec_sp_DelayedLetter(SecretariatID:integer;myear:integer;DeadLine:integer;userID:integer;Tag:Smallint):integer;
  function Exec_get_MaxReferenceDataID_By_TableID(tableID:integer):integer;

  function Exec_sp_duplicateOrg(code:widestring;title:widestring):boolean;
  function Exec_Get_UserMessageCount:integer;
  function Exec_get_NewOrgCode(ParentID:integer):widestring;
  function Exec_sp_ArchivePlaces(LetterID:integer;UserID:integer):widestring;
  function Exec_Get_LetterdataExtention(LetterID:integer):integer;
  function Exec_Select_FolllowUp_ByLetterID(LetterID:integer;userID:integer):integer;
  function Exec_Get_LifeTip_byUserid(Userid:integer):widestring;
  Procedure  Exec_UPDATE_Acction_Access(NewAccess : boolean; AccessID : Integer; ActionID : String; FormTag : Integer);

  function Exec_Get_FollowUP_Count(UserID:integer;BDate:string;Edate:string;DonStatusID:integer):integer;
  function Get_DatabaseName_By_Year(myear:integer):string;
  function Get_DraftReceivedLetter_count(Myear:integer;secretariatid:integer):integer;
  Function Get_ParaphTemplate_title(OrderID:integer):string;
  Function Get_ParaphTemplate_Paraph(OrderID:integer):string;
  function Next_page(LetterID:integer;CurrentPage:integer;Next:boolean):integer;
  function EmptyDir(path:string):boolean;
  function Get_FieldAccess_By_FieldID(UserID:integer;FieldID:integer):integer;
  function Get_FieldValue_by_LetterID_FieldID(LetterID:integer;FieldID:integer):widestring;
  function has_PDF(LetterID:integer):boolean;
  function Check_duplicate_UserName(UserName:widestring):boolean;
  Procedure insert_FieldAccess_by_TableID(TableID:integer);
  Procedure update_filekeeping_letter(LetterID:integer;FileKeepingKind:integer;FileKeepingID:integer);
  function Duplicate_UserShortCut(UserID:integer;altKey:string):boolean;
  function DQuotedStr(s:string):string;
  Procedure  delete_user(userid:integer);
  function GetLastFormOrderByLetterID(LetterID:integer):integer;
  function GetFollowCode(letterID:integer):string;
  function Get_DraftLetter_Count(Myear:integer;secretariatid:integer):integer;
  function GetRecommiter(Recommiteid:integer):integer;
  Procedure  Exec_Insert_LetterDataText(LetterDataID:integer; FileText:Widestring; Connection: TADOConnection);

  function GetNumberOfLetterAttach(LetterID:integer):integer;
  function ShowModalForm:boolean;

  function GetUserSetting(VariableName:string):Variant;
  function GetSystemSetting(VariableName:string):Variant;
  Procedure  SetUserSetting(VariableName:string;_Value:Variant);
  Procedure  SetSystemSetting(VariableName:string;_Value:Variant);

  function CalcEncodedSize(InSize: DWord): DWord;
  function CalcDecodedSize(const InBuffer; InSize: DWord): DWord;

  procedure Base64Encode(const InBuffer; InSize: DWord; var OutBuffer);
  procedure Base64Decode(const InBuffer; InSize: DWord; var OutBuffer);

  function Base64EncodeString(const InText: AnsiString): AnsiString;
  function Base64DecodeString(const InText: AnsiString): AnsiString;
  function Base64EncodeToString(const InBuffer; InSize: DWord): AnsiString;

  function DecodeEmailHeaderItem(inputSTR : string): string;
  function DecodeSTR(charset, encoding, codedText : string ): string;
  function DecodeQuatedPrintable(S: string): string;
  function ForceToClose: boolean;
  function processExists(exeFileName: string): Boolean;
  function Exec_GetLetterTemplateGroupType(Id : Integer):String;
  function Exec_has_WordExcel(LetterId : Integer):Integer;
  function Exec_GetExcelId():Integer;
  function IncommingNoRevers(strSource : String):String;

  function LetterHasViewDate(LetterId:Integer): boolean;
const
   {$IFDEF ADA}
        RegistryKey = 'Software\ADA\dabir';
        CrmRegistryKey = 'Software\ADA\crm';
        ArchiveRegistryKey = 'Software\ADA\Archive';

   {$ELSE}
        RegistryKey = 'Software\yeganeh\dabir';
        CrmRegistryKey = 'Software\yeganeh\crm';
        ArchiveRegistryKey = 'Software\yeganeh\Archive';
        dabirRegistryKey = 'Software\yeganeh\dabir' ;
   {$ENDIF}

  atDefault = 1;
  atRecommited = 2;
  atDone_Archived = 3;
  atDraft = 4;
  atAnswerd = 5;
  cBase64Codec: array[0..63] of AnsiChar =
    'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/';
  Base64Filler: AnsiChar = '=';
 
type
  TAByte = array[0..MaxInt - 1] of Byte;
  TPAByte = ^TAByte;

var
tmpYear : Integer;

implementation

uses Dmu, YShamsiDate, ADOInt, ShowArchiveDoc, Variants;

function  Get_SysAppMessage(MsgID:integer):wideString;
var ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.Create(nil);
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ProcedureName:='Get_sys_AppMessage';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@ID';
    Value :=msgid;
  end;

  ADOSP.Open;
  try
    Result:=ADOSP.FieldByname('FarsiMessage').Value;
  except
    result:='„⁄«œ· ›«—”Ì Œÿ«Ì òœ '+IntToStr(MsgID)+ ' œ— »«‰ò «ÿ·«⁄« Ì ‘„« »—Ê“ ‰Ì”  »« ‘—ò    „«” »êÌ—Ìœ'
  end;
end;

Procedure  Exec_Delete_LetterWord(LetterID:integer);
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='delete_LetterWord';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@LetterID';
    Value :=LetterID;

  end;
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  FreeAndNil(ADOSP);
end;

function Exec_Has_Access(userID, frmID: integer; actionID:string):boolean;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='HAS_ACCESS';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;;
    Direction := pdInput;
    Name:='@userID';
    Value :=userID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;;
    Direction := pdInput;
    Name:='@frmID';
    Value :=frmID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftstring;
    Direction := pdInput;
    Name:='@actionID';
    Value :=ActionID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftBoolean;
    Direction := pdoutput;
    Name:='@res';
  end;

  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  Result := False;
  try
    Result := ADOSP.Parameters.parambyname('@res').Value;
  except
  end;
end;


Procedure  Exec_insert_OtherRecievers(_ID:integer;IsCopy:boolean;LetterID:integer;OrgID:integer;Paraph:widestring;
ParentId:integer;Proceeded:boolean;RecommiteDate:string;_Type:byte;UserID:byte);
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='insert_OtherRecievers';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;;
    Direction := pdInput;
    Name:='@LetterID';
    Value :=LetterID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;;
    Direction := pdInput;
    Name:='@ID';
    Value:=_id;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@_Type';
    Value :=_Type;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@ParentId';
    Value :=ParentId;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@OrgID';
    Value :=OrgID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftwidestring;
    Direction := pdInput;
    Name:='@Paraph';
    Value :=Paraph;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftstring;
    Direction := pdInput;
    Name:='@RecommiteDate';
    Value :=RecommiteDate;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@UserID';
    Value :=UserID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftboolean;;
    Direction := pdInput;
    Name:='@IsCopy';
    Value :=IsCopy;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftboolean;
    Direction := pdInput;
    Name:='@Proceeded';
    Value :=Proceeded;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdoutput;
    Name:='@RecommiteID';
  end;

  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  FreeAndNil(ADOSP);
end;

Procedure Exec_Insert_ReCommites(_ID:integer;IsCopy:boolean;LetterID:integer;OrgID:integer;Paraph:widestring;
          ParentId:integer;Proceeded:boolean;RecommiteDate:string;RecommiteTime:string;_Type:byte;UserID:byte; DeadLineDate: string = '');
var
  siscopy,sProceeded,orgstaff : string;
begin

  if IsCopy then
    siscopy := '1'
  else
    siscopy := '0';

  if Proceeded then
    sProceeded := '1'
  else
    sProceeded := '0';

  with TADOQuery.Create(nil) do
  begin
    Connection := dm.YeganehConnection;
    SQL.Text := 'select ResponsibleStaffer from dbo.FromOrganizations WHERE 	id	 ='+IntToStr(OrgID);
    Active := true;
    orgstaff := Fields[0].AsString;
  end;

  with TADOQuery.Create(nil) do
  begin
    Connection := dm.YeganehConnection;
    SQL.Text := ' INSERT INTO ReCommites ([LetterID],[ID],[Type],[ParentId],[OrgID],[Paraph],[RecommiteDate],[RecommiteTime],[UserID],[IsCopy],[Proceeded],[OrgStaff],[DeadLineDate])'+
                ' VALUES('+IntToStr(LetterID)+','+IntToStr(_ID)+','+IntToStr(_Type)+','+IntToStr(ParentId)+','+IntToStr(OrgID)+','''+Paraph
               +''','''+RecommiteDate+''','''+RecommiteTime+''','+IntToStr(UserID)+','+siscopy+','+sProceeded+','''+orgstaff+''','''+DeadLineDate+''')';
    ExecSQL;
  end;

end;

Procedure Exec_Insert_ReCommites(
                                 _ID:integer;
                                 IsCopy:boolean;
                                 LetterID:integer;
                                 OrgID:integer;
                                 Paraph:widestring;
                                 ParentId:integer;
                                 Proceeded:boolean;
                                 RecommiteDate:string;
                                 _Type:byte;
                                 UserID:byte
                                 );
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='insert_ReCommites';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;;
    Direction := pdInput;
    Name:='@LetterID';
    Value :=LetterID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;;
    Direction := pdInput;
    Name:='@ID';
    Value:=_id;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@_Type';
    Value :=_Type;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@ParentId';
    Value :=ParentId;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@OrgID';
    Value :=OrgID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftwidestring;
    Direction := pdInput;
    Name:='@Paraph';
    Value :=Paraph;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftstring;
    Direction := pdInput;
    Name:='@RecommiteDate';
    Value :=RecommiteDate;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@UserID';
    Value :=UserID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftboolean;;
    Direction := pdInput;
    Name:='@IsCopy';
    Value :=IsCopy;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftboolean;
    Direction := pdInput;
    Name:='@Proceeded';
    Value :=Proceeded;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdoutput;
    Name:='@RecommiteID';
  end;

  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  FreeAndNil(ADOSP);
end;

Function  Exec_NewRecommiteID(letterID:integer;_Type: integer):integer;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='NewRecommiteID';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;;
    Direction := pdInput;
    Name:='@letterID';
    Value :=letterID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;;
    Direction := pdInput;
    Name:='@Type';
    Value :=_Type;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;;
    Direction := pdoutput;
    Name:='@NewID';
  end;
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  Result:=ADOSP.Parameters.parambyname('@NewID').Value;
  FreeAndNil(ADOSP);
end;

Procedure  Exec_Delete_Letter(LetterID:integer;newInd:integer);
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Delete_Letter';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;;
    Direction := pdInput;
    Name:='@LetterID';
    Value :=LetterID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;;
    Direction := pdInput;
    Name:='@newInd';
    Value :=newInd;
  end;
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  FreeAndNil(ADOSP);
end;

Procedure Exec_Select_LetterReCommite(letterID:integer;TypeID: byte);
begin
  with dm,Select_LetterReCommite,parameters do
  begin
    Close;
    ParamByName('@letterID').value := letterID;
    ParamByName('@Type').value := TypeID;
    open;
  end;
end;

Procedure  Exec_Get_LetterAction_By_LetterID(letterID:integer);
begin
   with Dm,Get_LetterAction_By_LetterID,Parameters do
   begin
      Close;
      ParamByName('@letterID').value := letterID;
      Open;
   end;
end;

Procedure  Exec_delete_ReCommites(RecommiteID:integer);
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='delete_ReCommites';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;;
    Direction := pdInput;
    Name:='@RecommiteID';
    Value :=RecommiteID;
  end;
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  FreeAndNil(ADOSP);
end;

//‰«„Â «Ê· Ì« ‰«„Â «Ì ﬂÂ »—«Ì ¬‰ ÃÊ«» “œÂ ‘œÂ SentLetterID ﬁ—«— œ«œ‰ ¬ÌœÌ ‰«„ ÅÌ‘‰ÊÌ” œ— ›Ì·œ
//(ReCommites.Proceeded=1) Ê ‰Ì“ Œ«—Ã ﬂ—œ‰ ‰«„Â «Ê·Ì «“ ﬂ«— «»·
Procedure Exec_AnswerLetter(AnswerLetterID:integer;LetterID:integer;Today:string);
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='AnswerLetter';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;;
    Direction := pdInput;
    Name:='@LetterID';
    Value :=LetterID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;;
    Direction := pdInput;
    Name:='@AnswerLetterID';
    Value := AnswerLetterID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftstring;;
    Direction := pdInput;
    Name:='@Today';
    Value :=Today;
  end;
  ADOSP.Connection := Dm.YeganehConnection;
  ADOSP.ExecProc;
  FreeAndNil(ADOSP);
end;

Procedure  Exec_Insert_LetterText(LetterID:Integer;TypeText:WideString);
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='insert_LetterText';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;;
    Direction := pdInput;
    Name:='@LetterID';
    Value :=LetterID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftWideString;;
    Direction := pdInput;
    Name:='@TypeText';
    Value :=TypeText;
  end;
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  FreeAndNil(ADOSP);
end;

Procedure  Exec_Insert_LetterDataText(LetterDataID:integer; FileText:Widestring; Connection: TADOConnection);
var
   ADOSP:TADOStoredProc;
   TextPart : string;
   i : integer;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='insert_LetterDataText';
  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;;
    Direction := pdInput;
    Name:='@LetterDataID';
    Value := LetterDataID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftWideString;;
    Direction := pdInput;
    Name:='@TextPart';
  end;

  while length(FileText)>0 do
  begin
    if length(FileText)<=450 then
    begin
      TextPart := FileText;
      FileText := '';
    end
    else
    begin
      TextPart := copy(FileText,0,450);
      for i := length(TextPart) downto 1 do
        if TextPart[i] = ' ' then
          break;
      TextPart := copy(TextPart , 0 , i);
      FileText := copy(FileText, length(TextPart), length(FileText)- length(TextPart)+1);
    end;
    ADOSP.Parameters[1].Value := TextPart;
    ADOSP.Connection := Connection;//dm.YeganehConnection;
    ADOSP.ExecProc;
  end;
end;

Procedure  Exec_UPDATE_Acction_Access(NewAccess : boolean; AccessID : Integer; ActionID : String; FormTag : Integer);
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='UPDATE_Acction_Access';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftBoolean;
    Direction := pdInput;
    Name:='@NewAccess';
    Value :=NewAccess;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@AccessID';
    Value :=AccessID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftString;
    Direction := pdInput;
    Name:='@ActionID';
    Value :=ActionID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@FormTag';
    Value :=FormTag;
  end;

  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  FreeAndNil(ADOSP);
end;

Procedure Draft_to_SentLetter(LetterID:integer;NewInd:integer;IsCopy:boolean;Proceed:boolean;IsCopy_In_Dabir:Boolean);
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Draft_to_SentLetter';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@LetterID';
    Value :=LetterID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@newInd';
    Value :=newInd;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftstring;
    Direction := pdInput;
    Name:='@today';
    size:= 10;
    Value :=_today;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftboolean;
    Direction := pdInput;
    Name:='@IsCopy';
    Value :=IsCopy;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftboolean;
    Direction := pdInput;
    Name:='@Proceed';
    Value :=Proceed;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftboolean;
    Direction := pdInput;
    Name:='@IsCopy_In_Dabir';
    Value :=IsCopy_In_Dabir;
  end;

  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  //FreeAndNil(ADOSP);
end;

Procedure  Exec_Deleted_to_Letter(LetterID:integer;newInd:integer);
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Deleted_to_Letter';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;;
    Direction := pdInput;
    Name:='@LetterID';
    Value :=LetterID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;;
    Direction := pdInput;
    Name:='@newInd';
    Value :=newInd;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftstring;;
    Direction := pdInput;
    Name:='@today';
    Value :=_Today;
  end;
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  FreeAndNil(ADOSP);
end;

Function  Exec_hassame_orgtitle(title:widestring):integer;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='hassame_orgtitle';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftwidestring;;
    Direction := pdInput;
    Name:='@title';
    Value :=title;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;;
    Direction := pdoutPut;
    Name:='@id';
  end;

  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  Result:=ADOSP.Parameters.ParamByname('@id').Value;
  FreeAndNil(ADOSP);
end;

function Exec_get_OrgTitleByID(d:integer):widestring;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='get_OrgTitleByID';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;;
    Direction := pdInput;
    Name:='@ID';
    value:=d;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftWideString;;
    Direction := pdInputOutput;
    size:=255;
    Name:='@title';
  end;
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  result:=ADOSP.Parameters.ParamByName('@Title').Value;
  FreeAndNil(ADOSP);
end;

Function Exec_get_NewOrgID(isInner:boolean):integer;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='get_NewOrgID';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftboolean;;
    Direction := pdInput;
    Name:='@isInner';
    Value :=isInner;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;;
    Direction := pdoutput;
    Name:='@NewID';
  end;
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;

  Result:=ADOSP.Parameters.ParamByName('@NewID').Value;
  FreeAndNil(ADOSP);
end;

Function Exec_get_LetterMemo_ByID(LetterID:integer):widestring;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='get_LetterMemo_ByID';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;;
    Direction := pdInput;
    Name:='@LetterID';
    Value :=LetterID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftwidestring;;
    Direction := pdoutput;
    size:=255;
    Name:='@memo';
  end;
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  Result := ADOSP.Parameters.ParamByName('@memo').Value;
  FreeAndNil(ADOSP);
end;

Function Exec_get_LetterDate_ByID(LetterID:integer):widestring;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='get_LetterDate_ByID';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;;
    Direction := pdInput;
    Name:='@LetterID';
    Value :=LetterID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftwidestring;;
    Direction := pdoutput;
    size:=255;
    Name:='@Date';
  end;
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  result:=ADOSP.Parameters.ParamByName('@Date').Value;
  FreeAndNil(ADOSP);
end;

Function Exec_get_LetterID_ByInCommingNo(InCommingNo:widestring;LetterFormat:byte;Myear:Integer;SecretariatID:integer):integer;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='get_LetterID_ByInCommingNo';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftwidestring;;
    Direction := pdInput;
    Name:='@InCommingNo';
    Value :=InCommingNo;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@Myear';
    Value :=Myear;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@LetterFormat';
    Value :=LetterFormat;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@SecretariatID';
    Value :=SecretariatID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;;
    Direction := pdoutput;
    Name:='@LetterID';
  end;

  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  Result:=ADOSP.Parameters.ParamByName('@LetterID').Value;
  FreeAndNil(ADOSP);
end;

Function Exec_get_LetterID_ByIndicatorid(indicatrid:integer;letter_type:byte;LetterFormat:byte;
                                             Myear:Integer;SecretariatID:integer):integer;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='get_LetterID_ByIndicatorid';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;;
    Direction := pdInput;
    Name:='@indicatrid';
    Value :=indicatrid;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@Myear';
    Value :=Myear;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@LetterFormat';
    Value :=LetterFormat;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;;
    Direction := pdInput;
    Name:='@letter_type';
    Value :=letter_type;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@SecretariatID';
    Value :=SecretariatID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdoutput;
    Name:='@LetterID';
  end;
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  result:=ADOSP.Parameters.ParamByName('@LetterID').Value;
  FreeAndNil(ADOSP);
end;

Function Exec_Get_DayID_InWeek:byte;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_DayID_InWeek';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdoutput;
    Name:='@DayID';
  end;
  ADOSP.Connection := Dm.YeganehConnection;
  ADOSP.ExecProc;
  Result := ADOSP.Parameters.ParamByName('@DayID').Value;
  FreeAndNil(ADOSP);
end;

Function Exec_get_LastIndicatorID(letter_type:byte;LetterFormat:byte;Myear:integer;SecretariatID:integer):integer;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='get_LastIndicatorID';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@letter_type';
    Value :=letter_type;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger ;
    Direction := pdInput;
    Name:='@SecretariatID';
    Value :=SecretariatID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger ;
    Direction := pdInput;
    Name:='@Myear';
    Value :=Myear;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@LetterFormat';
    Value :=LetterFormat;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger ;
    Direction := pdoutput;
    Name:='@newIndicatorid';
  end;

  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  Result := ADOSP.Parameters.ParamByName('@newIndicatorid').Value;
  Application.ProcessMessages;
  FreeAndNil(ADOSP);
end;

Function Exec_get_NowTime:string;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='get_NowTime';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftFixedChar;
    Direction := pdoutput;
    Size:=5;
    Name:='@time';
  end;
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  Result:=ADOSP.Parameters.ParamByName('@time').Value;
  FreeAndNil(ADOSP);
end;

Function Exec_get_MaxPage_ByLetterID(extention:byte;letterid:integer):integer;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='get_MaxPage_ByLetterID';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@extention';
    Value :=extention;
  end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@letterid';
      Value :=letterid;
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@PageNumber';
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
    result:=ADOSP.Parameters.ParamByName('@PageNumber').Value
end;

Function Exec_get_indicatorID_BySentLetterID(SentLetterID:integer):integer;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='get_indicatorID_BySentLetterID';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@SentLetterID';
    Value :=SentLetterID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdoutput;
    Name:='@indicatorID';
  end;
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  result:=ADOSP.Parameters.ParamByName('@indicatorID').Value;
  FreeAndNil(ADOSP);
end;

//»œ”  ¬Ê—œ‰ ﬂœ ç«—  ”«“„«‰Ì
Function Exec_get_OrgPreCodeByID(d:integer):widestring;
var ADOSP:TADOStoredProc;
begin
   ADOSP:=TADOStoredProc.create(nil);
   ADOSP.ProcedureName:='get_OrgPreCodeByID';

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@ID';
      Value :=d;
   end;

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftwidestring ;
      Direction := pdoutput;
      size:=50;
      Name:='@PreCode';
   end;
   ADOSP.Connection:=dm.YeganehConnection;
   ADOSP.ExecProc;
   result:=ADOSP.Parameters.ParamByName('@PreCode').Value;
end;

function  Exec_Org_hasChild(ParentID:integer):boolean;
var
  ADOSP:TADOStoredProc;
begin
   ADOSP:=TADOStoredProc.create(nil);
   ADOSP.ProcedureName:='Org_hasChild';

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftinteger;;
      Direction := pdInput;
      Name:='@ParentID';
      Value :=ParentID;
   end;

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftboolean;;
      Direction := pdoutput;
      Name:='@hasChild';
   end;

   ADOSP.Connection:=dm.YeganehConnection;
   ADOSP.ExecProc;
   Result := ADOSP.Parameters.ParamByName('@hasChild').Value;
end;

Function Exec_get_LetterID_ByRetroActionNo(RetroActionNo:widestring;LetterFormat:byte;Myear:Integer;SecretariatID:integer):integer;
var ADOSP:TADOStoredProc;
begin
   ADOSP:=TADOStoredProc.create(nil);
   ADOSP.ProcedureName:='get_LetterID_ByRetroActionNo';

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftwidestring;;
      Direction := pdInput;
      Name:='@RetroActionNo';
      Value :=RetroActionNo;
   end;
   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@Myear';
      Value :=Myear;
   end;

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@LetterFormat';
      Value :=LetterFormat;
   end;

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@SecretariatID';
      Value :=SecretariatID;
   end;

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftinteger;;
      Direction := pdoutput;
      Name:='@LetterID';
   end;
   ADOSP.Connection:=dm.YeganehConnection;
   ADOSP.ExecProc;
   Result := ADOSP.Parameters.ParamByName('@LetterID').Value;
end;

function Exec_insert_ToOrganizations(Title:widestring):integer;
 var ADOSP:TADOStoredProc;  
begin
   ADOSP:=TADOStoredProc.create(nil);
   ADOSP.ProcedureName:='insert_ToOrganizations';

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@Title';
      size:= 200;
      Value :=Title;
   end;

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@id';
   end;
   ADOSP.Connection:=dm.YeganehConnection;
   ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@id').value;
end;


Function Exec_get_Nowdate:tdatetime;
 var ADOSP:TADOStoredProc;
begin
   ADOSP:=TADOStoredProc.create(nil);
   ADOSP.ProcedureName:='get_Nowdate';

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftDateTime;
      Direction := pdoutput;
      Name:='@date';
   end;
   ADOSP.Connection:=dm.YeganehConnection;
   ADOSP.ExecProc;
   result:=ADOSP.Parameters.ParamByName('@date').Value;
end;

Procedure  Exec_Insert_NewActionsAccess;
var ADOSP:TADOStoredProc;
begin
   ADOSP := TADOStoredProc.create(nil);
   ADOSP.CommandTimeout := 0;
   ADOSP.ProcedureName:='Insert_NewActionsAccess';
   ADOSP.Connection:=dm.YeganehConnection;
   ADOSP.ExecProc;
end;

function  Exec_Select_recommites_byLetterID(letterId:integer):TADOStoredProc;
var ADOSP:TADOStoredProc;
begin
   ADOSP:=TADOStoredProc.create(nil);
   ADOSP.ProcedureName:='Select_recommites_byLetterID';

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@letterId';
      Value :=letterId;
   end;
   ADOSP.Connection:=dm.YeganehConnection;
   ADOSP.open;
   Result:=ADOSP;
end;

Procedure  Exec_delete_Actions_ByFormID(FormTag:byte);
var ADOSP:TADOStoredProc;  
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='delete_Actions_ByFormID';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@FormTag';
      Value :=FormTag;
    end;
    ADOSP.Connection:=dm.YeganehConnection; 
    ADOSP.ExecProc;    
end;

procedure  Exec_insert_Actions(FormName : string;FormTag:byte;Title:widestring;ComponentTag :Integer);
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='insert_Actions';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@FormTag';
    Value :=FormTag;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftString;
    Direction := pdInput;
    Name:='@ID';
    Value :=FormName;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftwidestring;
    Direction := pdInput;
    Name:='@Title';
    Value :=Title;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@ComponentTag';
    Value :=ComponentTag;
  end;
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  FreeAndNil(ADOSP);
end;


function  Exec_SaveAs_Accesses(oldaccessID:integer; Title:widestring):integer;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.CommandTimeout := 0;
  ADOSP.ProcedureName:='SaveAs_Accesses';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftwidestring;;
    Direction := pdInput;
    Name:='@Title';
    Value :=Title;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;;
    Direction := pdInput;
    Name:='@oldaccessID';
    Value :=oldaccessID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;;
    Direction := pdoutput;
    Name:='@newID';
  end;

  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  result:=ADOSP.Parameters.ParamByName('@newID').Value
end;


Procedure  Exec_ysp_Backup(dbname:widestring;path:widestring);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='ysp_Backup';
  ADOSP.CommandTimeout:=20000000;
  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;;
      Direction := pdInput;
      Name:='@dbname';
      Value :=dbname;
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;;
      Direction := pdInput;
      Name:='@path';
      Value :=path;
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.CommandTimeout:=6000;
    ADOSP.ExecProc;
end;

Procedure  Exec_ysp_shrink(dbname:widestring;path:widestring);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='ysp_shrink';
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.CommandTimeout:=6000;
    ADOSP.ExecProc;
end;

Procedure  Exec_Delete_Accesses(AccessID:byte);
var ADOSP:TADOStoredProc;
begin
   ADOSP := TADOStoredProc.Create(nil);
   ADOSP.ProcedureName:='delete_Accesses';

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@AccessID';
      Value := AccessID;
   end;
   ADOSP.Connection:=dm.YeganehConnection;
   ADOSP.ExecProc;
end;

Procedure  Exec_sp_Letter_Numbers(bdate:string;edate:string;SecID:integer;
var receivedNum,SentNum,recommitesNum:integer);
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='sp_Letter_Numbers';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftstring;;
    Direction := pdInput;
    Name:='@bdate';
    Value :=bdate;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftstring;;
    Direction := pdInput;
    Name:='@edate';
    Value :=edate;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;;
    Direction := pdoutput;
    Name:='@receivedNum';
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;;
    Direction := pdoutput;
    Name:='@SentNum';
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;;
    Direction := pdoutput;
    Name:='@recommitesNum';
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;;
    Direction := pdInput;
    Name:='@SecID';
    Value :=SecID;
  end;
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  receivedNum:=ADOSP.Parameters.ParamByName('@receivedNum').Value;
  SentNum:=ADOSP.Parameters.ParamByName('@SentNum').Value;
  recommitesNum:=ADOSP.Parameters.ParamByName('@recommitesNum').Value

end;

//»œ”  ¬Ê—œ‰  ⁄œ«œ ‰«„Â Â«Ì «—Ã«⁄ ‘œÂ »Â Ìﬂ ç«—  ”«“„«‰Ì
function Exec_Org_HasLetter(orgid:integer):boolean;
 var ADOSP:TADOStoredProc;
begin
ADOSP:=TADOStoredProc.Create(nil);
     ADOSP.ProcedureName:='Org_HasLetter';
     with ADOSP.Parameters.AddParameter do
      begin
       DataType := ftInteger;
       Direction := pdInput;
       Name:='@orgid';
       Value :=orgid;
     end;
     with ADOSP.Parameters.AddParameter do
      begin
       DataType := ftInteger;
       Direction := pdOutput;
       Name:='@Count';
     end;
     ADOSP.Connection:=dm.YeganehConnection;
     ADOSP.ExecProc;
     Result:=adosp.Parameters.ParamByName('@count').Value>0
    end;




Procedure  delete_ArchiveFolder(FolderID:integer);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='delete_ArchiveFolder';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@FolderID';
      Value :=FolderID;
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;



Procedure  Exec_delete_ArchiveFolder(FolderID:integer);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='delete_ArchiveFolder';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@FolderID';
      Value :=FolderID;
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
end;

Procedure  Exec_delete_LetterArchiveFolder(LetterArchiveID:integer);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='delete_LetterArchiveFolder';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@LetterArchiveID';
      Value :=LetterArchiveID;
    end;

    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
end;

// Amin 1391/11/28 Start
Procedure Exec_delete_LetterArchive(ArchiveFolderID:integer; LetterID: integer);
 var ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='delete_LetterArchive';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@ArchiveFolderID';
      Value :=ArchiveFolderID;
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@LetterID';
      Value :=LetterID;
    end;

    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
end;
// Amin 1391/11/28 End

function Exec_insert_ArchiveFolder(ParentFolderID:integer;UserID:integer;Title:widestring;Notes,Place:widestring):integer;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='insert_ArchiveFolder';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@FolderID';
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@ParentFolderID';
      Value :=ParentFolderID;
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@Title';
      size:= 200;
      Value :=Title;
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@ArchiveCenterID';
      Value :=_ArchiveCenterID;
    end;
  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@UserID';
      Value :=UserID;
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@Notes';
      Value :=Notes;
    end;
  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@Place';
      Value :=Place;
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@FolderID').value;
end;


function Exec_insert_LetterArchiveFolder(ArchiveFolderID:integer;LetterID:integer;ArchiveDate:string;Page:integer;ArchiveNotes:widestring):integer;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='insert_LetterArchiveFolder';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@LetterArchiveID';
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@ArchiveFolderID';
      Value :=ArchiveFolderID;
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@LetterID';
      Value :=LetterID;
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@ArchiveDate';
      size:= 10;
      Value :=ArchiveDate;
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@Page';
      Value :=Page;
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@ArchiveNotes';
      size:= 100;
      Value :=ArchiveNotes;
    end;
  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@UserID';
      Value :=_userID;
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@LetterArchiveID').value;
end;

function Exec_Folder_hasChild(userid:integer;ParentID:integer):boolean;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Folder_hasChild';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@userid';
      Value :=userid;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@ParentID';
      Value :=ParentID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftboolean;
      Direction := pdoutput;
      Name:='@hasChild';
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@hasChild').value;
end;

Function  Exec_Get_ArchiveFolder_byUserID(userID:integer;DabirOrCartable:integer):TADODataSet;
var ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='get_ArchiveFolder_byUserID';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@userID';
      Value :=userID;

    end;
  with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@SecID';
      Value := dm.SecID;
   end;
   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@ArchiveCenterID';
      Value := _ArchiveCenterID;
   end;

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@DabirOrKartable';
      Value := DabirOrCartable;
   end;


    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.open;
  Result:=TADODataSet(ADOSP);
end;

{Ranjbar}
Function  Exec_Get_ArchiveFolder_ByAccess(Order:Smallint):TADODataSet;
var
   ADOSP:TADOStoredProc;
begin
   ADOSP:=TADOStoredProc.create(nil);
   ADOSP.ProcedureName:='Get_ArchiveFolder_ByAccess';

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@userID';
      Value := _userid ;
   end;
 with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@SecID';
      Value :=dm.SecID;
    end;
 with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@Order';
      Value :=Order;
    end;
   ADOSP.Connection:=dm.YeganehConnection;
   ADOSP.open;
   Result := TADODataSet(ADOSP);
end;

Function Exec_get_ArchiveFolder_byUserID_and_Letterid(Letterid:integer;userid:integer) :TAdoDataSet;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='get_ArchiveFolder_byUserID_and_Letterid';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@Letterid';
      Value :=Letterid;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@userid';
      Value :=userid;
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@archiveCenterId';
      Value :=_ArchiveCenterID;
    end;

    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.Open;
  Result:=TADODataSet(ADOSP);
end;

Function Exec_get_ArchiveFolder_byUserID_and_Title(userID:integer;like:widestring):TAdoDataSet;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='get_ArchiveFolder_byUserID_and_Title';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@userID';
      Value :=userID;
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@like';
      size:= 200;
      Value :=like;

    end;

 with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@ArchiveCenterID';
      Value := _ArchiveCenterID ;
   end;

    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.Open;
  Result:=TADODataSet(ADOSP);

end;


Function Exec_get_ArchiveFolder_byUserID_and_Title(userID:integer;like:widestring;ArchiveCenterID: integer):TAdoDataSet;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='get_ArchiveFolder_byUserID_and_Title';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@userID';
      Value :=userID;
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@like';
      size:= 200;
      Value :=like;

    end;

 with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@ArchiveCenterID';
      Value := _ArchiveCenterID ;
   end;

    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.Open;
  Result:=TADODataSet(ADOSP);

end;

{Ranjbar}
Function Exec_Get_ArchiveFolder_ByAccessAndTitle(like:widestring):TADODataSet;
var
   ADOSP:TADOStoredProc;
begin
   ADOSP:=TADOStoredProc.create(nil);
   ADOSP.ProcedureName:='Get_ArchiveFolder_ByAccessAndTitle';

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@userID';
      Value := _userid ;
   end;
   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@SecID';
      Value := dm.SecretariatsSecID.AsInteger;
   end;
   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@ArchiveCenterID';
      Value := _ArchiveCenterID ;
   end;
   with ADOSP.Parameters.AddParameter do
   begin
   DataType := ftwidestring;
   Direction := pdInput;
   Name:='@like';
   size:= 200;
   Value :=like;
   end;
   
   ADOSP.Connection:=dm.YeganehConnection;
   ADOSP.open;
   Result := TADODataSet(ADOSP);
end;
//---

function Exec_get_ArchiveFolder_byUserID_and_Place(userID:integer;Place:widestring):integer;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='get_ArchiveFolder_byUserID_and_Place';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@userID';
      Value :=userID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@Place';
      size:= 200;
      Value :=Place;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@FolderID';
    end;


  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@archiveCenterId';
      Value :=_ArchiveCenterID;
    end;


    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   try Result:=ADOSP.Parameters.ParamByname('@FolderID').value; except Result:=0 end;
end;


Procedure  Exec_min_page(LetterID:integer;var haspage:boolean; var minpage:integer);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='min_page';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@LetterID';
      Value :=LetterID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftboolean;
      Direction := pdoutput;
      Name:='@haspage';
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@minpage';
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
haspage:= ADOSP.Parameters.parambyname('@haspage').value;
minpage:= ADOSP.Parameters.parambyname('@minpage').value;
end;
Procedure Exec_UserChange_pass(userID:integer;newPass:widestring);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='UserChange_pass';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@userID';
      Value :=userID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@newPass';
      size:= 200;
      Value :=newPass;

    end;

    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
end;

Procedure  Exec_update_ArchiveFolder(FolderID:integer;Title:widestring;Notes,Place:widestring);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='update_ArchiveFolder';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@FolderID';
      Value :=FolderID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@Title';
      size:= 200;
      Value :=Title;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@Notes';
      size:= 1000;
      Value :=Notes;

    end;
  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@Place';
      Value :=Place;
    end;

    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;

function Exec_Folder_hasLetter(Folderid:integer):boolean;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Folder_hasLetter';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@Folderid';
      Value :=Folderid;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftboolean;
      Direction := pdoutput;
      Name:='@hasLetter';
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@hasLetter').value;
end;

function Exec_Folder_hasRecommite(Folderid:integer):boolean;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Folder_hasRecommite';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@Folderid';
      Value :=Folderid;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftboolean;
      Direction := pdoutput;
      Name:='@hasLetter';
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@hasLetter').value;
end;



function Exec_Number_Of_Letter_RelatedSecretariatID(RelatedSecretariatID:integer):integer;
 var ADOSP:TADOStoredProc;  
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Number_Of_Letter_RelatedSecretariatID';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@RelatedSecretariatID';
      Value :=RelatedSecretariatID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@Number_Of_Letter';
    end;
    ADOSP.Connection:=dm.YeganehConnection; 
    ADOSP.ExecProc;    
   Result:=ADOSP.Parameters.ParamByname('@Number_Of_Letter').value;
end;

function Exec_NumberOfLetter_By_SecID(secID:integer):integer;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='NumberOfLetter_By_SecID';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@secID';
      Value :=secID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@Number_OF_Letter';
    end;
    ADOSP.Connection:=dm.YeganehConnection; 
    ADOSP.ExecProc;    
   Result:=ADOSP.Parameters.ParamByname('@Number_OF_Letter').value;
end;

Procedure  Exec_Delete_All_Secretariats_Of_User(userid:integer);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Delete_All_Secretariats_Of_User';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@userid';
      Value :=userid;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;

Procedure  Exec_Delete_All_TemplateGroup_Of_User(userid:integer);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Delete_All_TemplateGroup_Of_User';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@userid';
      Value :=userid;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;

Function  Exec_get_Letter_ByIndicator(IndicatorID:integer;MYear:integer;SecretariatID:integer;Letter_Type:integer;letterformat:integer):TADODataSet;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='get_Letter_ByIndicator';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@IndicatorID';
      Value :=IndicatorID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@MYear';
      Value :=MYear;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@SecretariatID';
      Value :=SecretariatID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@Letter_Type';
      Value :=Letter_Type;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@letterformat';
      Value :=letterformat;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.Open;
  Result:=TADODataSet(ADOSP);

end;

function Exec_update_Letter_Indicator(LetterID:integer;NewIndicatorID:integer;NewSecretariatID:integer;NewLetter_Type:integer;Newletterformat:integer;NewRegistrationDate:string):boolean;
 var ADOSP:TADOStoredProc;  
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='update_Letter_Indicator';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@LetterID';
      Value :=LetterID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@NewIndicatorID';
      Value :=NewIndicatorID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@NewSecretariatID';
      Value :=NewSecretariatID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@NewLetter_Type';
      Value :=NewLetter_Type;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@Newletterformat';
      Value :=Newletterformat;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@NewRegistrationDate';
      size:= 10;
      Value :=NewRegistrationDate;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftboolean;
      Direction := pdoutput;
      Name:='@Updated';
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@Updated').value;
end;

function Exec_insert_Letter(IndicatorID:integer;MYear:integer;SecretariatID:integer;Letter_Type:integer;letterformat:integer;Memo:widestring;UserID:integer;RegistrationDate:string;RegistrationTime:string):integer;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='insert_Letter';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@letterID';
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@IndicatorID';
      Value :=IndicatorID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@MYear';
      Value :=MYear;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@SecretariatID';
      Value :=SecretariatID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@Letter_Type';
      Value :=Letter_Type;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@letterformat';
      Value :=letterformat;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@Memo';
      size:= 1000;
      Value :=Memo;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@UserID';
      Value :=UserID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@RegistrationDate';
      size:= 10;
      Value :=RegistrationDate;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@RegistrationTime';
      size:= 5;
      Value :=RegistrationTime;

    end;
    ADOSP.Connection:=dm.YeganehConnection; 
    ADOSP.ExecProc;    
   Result:=ADOSP.Parameters.ParamByname('@letterID').value;
end;


function Exec_insert_LetterData(LetterID:integer;PageNumber:integer;extention:integer):integer;
 var ADOSP:TADOStoredProc;  
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='insert_LetterData';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@LetterDataID';
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@LetterID';
      Value :=LetterID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@PageNumber';
      Value :=PageNumber;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@extention';
      Value :=extention;

    end;

   ADOSP.Connection:=dm.YeganehConnection;
   ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@LetterDataID').value;
end;

function Exec_Get_FromOrganizationsID_ByCode(Code:widestring):integer;
  var ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_FromOrganizationsID_ByCode';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftwidestring;
    Direction := pdInput;
    Name:='@Code';
    size:= 20;
    Value :=Code;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdoutput;
    Name:='@ID';
  end;

  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  Result:=ADOSP.Parameters.ParamByname('@ID').value;
end;

function Exec_update_FromOrganizations_Title(_ID:integer;Newtitle:widestring;NewResponsibleStaffer:widestring):integer;
  var ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='update_FromOrganizations_Title';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@ID';
    Value :=_ID;
  end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@Newtitle';
      size:= 200;
      Value :=Newtitle;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@NewResponsibleStaffer';
      size:= 100;
      Value :=NewResponsibleStaffer;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@newID';
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@newID').value;
end;

Procedure  Exec_get_FromOrganizationsTitle_byID(_ID:integer;
    var Title,ResponsibleStaffer,Code:widestring);
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='get_FromOrganizationsTitle_byID';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@ID';
    Value :=_ID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftwidestring;
    Direction := pdoutput;
    Name:='@Title';
    size:= 200;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftwidestring;
    Direction := pdoutput;
    Name:='@ResponsibleStaffer';
    size:= 100;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftwidestring;
    Direction := pdoutput;
    Name:='@Code';
    size:= 20;
  end;

  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  Title:=ADOSP.Parameters.ParamByname('@Title').value;
  ResponsibleStaffer:=ADOSP.Parameters.ParamByname('@ResponsibleStaffer').value;
  Code:=ADOSP.Parameters.ParamByname('@Code').value;

end;

Procedure Exec_GetUserLogout_status(UserID:integer;var logout,isSafeLogout:boolean);
Var
   ADOSP:TADOStoredProc;
begin
   ADOSP:=TADOStoredProc.create(nil);
   ADOSP.ProcedureName:='GetUserLogout_status';

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@UserID';
      Value :=UserID;
   end;

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftboolean;
      Direction := pdoutput;
      Name:='@logout';
   end;

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftboolean;
      Direction := pdoutput;
      Name:='@isSafeLogout';
   end;
   ADOSP.Connection:=dm.YeganehConnection;
   ADOSP.ExecProc;
   isSafeLogout:=ADOSP.Parameters.ParamByname('@isSafeLogout').value;
   logout:=ADOSP.Parameters.ParamByname('@logout').value;
end;

function ForceToClose: boolean;
Var
   ADOSP:TADOStoredProc;
begin
   ADOSP:=TADOStoredProc.create(nil);
   ADOSP.ProcedureName:='ForceToExit';

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@UserLoginLogoutID';
      Value :=_UserLoginLogoutID;
   end;

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftboolean;
      Direction := pdoutput;
      Name:='@res';
   end;

   ADOSP.Connection:=dm.YeganehConnection;
   ADOSP.ExecProc;
   Result := ADOSP.Parameters.ParamByname('@res').value;
end;

function get_UserName(UserID: integer) : string;
begin
   with TADOQuery.Create(nil) do
   begin
      Connection := dm.YeganehConnection;
      SQL.Text := 'SELECT Title FROM Users WHERE id ='+IntToStr(UserID);
      open;
      Result := Fields[0].AsString;
   end;
end;

Procedure  Exec_update_UserLoginLogout(UserLoginLogoutID:Integer;isSafeLogout:Boolean;isCartable:Boolean);
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='update_UserLoginLogout';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@UserLoginLogoutID';
    Value :=UserLoginLogoutID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftboolean;
    Direction := pdInput;
    Name:='@isSafeLogout';
    Value :=isSafeLogout;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftboolean;
    Direction := pdInput;
    Name:='@isCartable';
    Value :=isCartable;
  end;
  ADOSP.Connection:= dm.YeganehConnection;
  ADOSP.ExecProc;
end;

function Exec_insert_UserLoginLogout(UserID:integer;IPAddress:string;isCartable:boolean):integer;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='insert_UserLoginLogout';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@UserID';
      Value :=UserID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@IPAddress';
      size:= 15;
      Value :=IPAddress;

    end;
  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftBoolean;
      Direction := pdInput;
      Name:='@IsCartable';
      Value :=IsCartable;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@UserLoginLogoutID';
    end;
    try
       ADOSP.Connection:=dm.YeganehConnection;
       ADOSP.ExecProc;
       Result:=ADOSP.Parameters.ParamByname('@UserLoginLogoutID').value;
    except
       with TADOQuery.Create(nil) do
       begin
           Connection := dm.YeganehConnection;
           SQL.Text := 'ALTER PROCEDURE [dbo].[insert_UserLoginLogout] '+
                        '	( @UserID 	[int], '+
                        '	 @IPAddress 	[char](15), '+
                        '	 @isCartable [bit], '+
                        '@UserLoginLogoutID int output) '+
                        'AS '+
                        'INSERT INTO [dbo].[UserLoginLogout] '+
                        '	 ( [UserID], '+
                        '	 [IPAddress],isCartable) '+
                        'VALUES '+
                        '	( '+
                        '	 @UserID, '+
                        '	 @IPAddress,@isCartable) '+
                        'set @UserLoginLogoutID=@@identity' ;
           ExecSQL;
       end;
       ADOSP.Connection:=dm.YeganehConnection;
       ADOSP.ExecProc;
       Result:=ADOSP.Parameters.ParamByname('@UserLoginLogoutID').value;
    end;
end;



Function  Exec_select_userLoginLogout(bdate:string;edate:string;userid:integer):TADODataSet;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='select_userLoginLogout';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@bdate';
      size:= 10;
      Value :=bdate;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@edate';
      size:= 10;
      Value :=edate;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@userid';
      Value :=userid;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.open;
  Result:=TADODataSet(ADOSP);

end;




Procedure  Exec_Delete_Exported_LetterData(SecretariatID:integer;myear:integer);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Delete_Exported_LetterData';
  ADOSP.CommandTimeout:=20000000;
  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@SecretariatID';
      Value :=SecretariatID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@myear';
      Value :=myear;
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;



Procedure  Exec_Export_LetterData(LetterdataID:integer);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Export_LetterData';
  ADOSP.CommandTimeout:=20000000;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@LetterdataID';
      Value :=LetterdataID;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;






Procedure  Exec_Ysp_create_Temp_Database(Path:widestring);
 var ADOSP:TADOStoredProc;  
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Ysp_create_Temp_Database';
  ADOSP.CommandTimeout:=20000000;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@Path';
      size:= 510;
      Value :=Path;

    end;
    ADOSP.Connection:=dm.YeganehConnection; 
    ADOSP.ExecProc;    

end;



Procedure  Exec_ysp_DELETE_Temp_Database;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='ysp_DELETE_Temp_Database';
  ADOSP.CommandTimeout:=20000000;

    ADOSP.Connection:=dm.YeganehConnection; 
    ADOSP.ExecProc;    

end;



function Exec_ysp_exists_Temp_Database:boolean;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='ysp_exists_Temp_Database';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftboolean;
      Direction := pdoutput;
      Name:='@exists';
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@exists').value;
end;

function  Exec_Get_LetterDataIDs(SecretariatID:integer;myear:integer):TADOStoredProc;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_LetterDataIDs';
  ADOSP.CommandTimeout:=20000000;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@SecretariatID';
      Value :=SecretariatID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@myear';
      Value :=myear;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.Open;
   Result:=adosp;
end;


function  Exec_Get_tmp_LetterDataIDs:TADOStoredProc;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_tmp_LetterDataIDs';
  ADOSP.CommandTimeout:=200000;
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.Open;
  Result:=adosp;
end;

Procedure  Exec_Import_LetterData(LetterDataID:integer);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Import_LetterData';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@LetterDataID';
      Value :=LetterDataID;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;
Procedure  Exec_Get_FromOrganizations_ByCode(Code:widestring; var _ID:integer;var ResponsibleStaffer:widestring);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_FromOrganizations_ByCode';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@Code';
      size:= 20;
      Value :=Code;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@ID';
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdoutput;
      Name:='@ResponsibleStaffer';
      size:= 100;
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
    _ID:=ADOSP.Parameters.ParamByname('@ID').value;
    ResponsibleStaffer:=ADOSP.Parameters.ParamByname('@ResponsibleStaffer').value;

end;

Function Exec_Get_ActiveUser:TADOStoredProc;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_ActiveUser';
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.Open;
  Result:=ADOSP;
end;


//Actions,ApplicationForms „— »ÿ »« Ãœ«Ê·
Procedure Exec_insert_UserLog(FormTag:integer;ActionID:String;LetterID:integer);
var
  ADOSP:TADOStoredProc;
begin
  if not dm.InsertLog then
    Exit;

  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='insert_UserLog';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@UserID';
    Value :=_userid;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@FormTag';
    Value :=FormTag;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftString;
    Direction := pdInput;
    Name:='@ActionID';
    Value :=ActionID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@LetterID';
    Value :=LetterID;
  end;

  ADOSP.Connection:=dm.YeganehConnection;
  try
    ADOSP.ExecProc;
  except
  end;
  FreeAndNil(ADOSP);
end;

Procedure  Exec_sp_Add_GroupRecommite(letterid:integer;_Type:integer;OrgID:integer;Paraph:widestring;RecommiteDate:string;UserID:integer;IsCopy:boolean;Proceeded:boolean;OrgStaff:widestring);
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='sp_Add_GroupRecommite';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@letterid';
    Value :=letterid;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@_Type';
    Value :=_Type;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@OrgID';
    Value :=OrgID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftwidestring;
    Direction := pdInput;
    Name:='@Paraph';
    size:= 1000;
    Value :=Paraph;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftstring;
    Direction := pdInput;
    Name:='@RecommiteDate';
    size:= 10;
    Value :=RecommiteDate;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@UserID';
    Value :=UserID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftboolean;
    Direction := pdInput;
    Name:='@IsCopy';
    Value :=IsCopy;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftboolean;
    Direction := pdInput;
    Name:='@Proceeded';
    Value :=Proceeded;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftwidestring;
    Direction := pdInput;
    Name:='@OrgStaff';
    size:= 200;
    Value :=OrgStaff;
  end;

  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  FreeAndNil(ADOSP);
end;


function Exec_NumberOfTemplate_By_TemplateGroupID(TemplateGroupID:integer):integer;
 var ADOSP:TADOStoredProc;  
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='NumberOfTemplate_By_TemplateGroupID';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@TemplateGroupID';
      Value :=TemplateGroupID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@Number_OF_Template';
    end;
    ADOSP.Connection:=dm.YeganehConnection; 
    ADOSP.ExecProc;    
   Result:=ADOSP.Parameters.ParamByname('@Number_OF_Template').value;
end;
Procedure  Exec_delete_Extention(ExtentionID:integer);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='delete_Extention';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@ExtentionID';
      Value :=ExtentionID;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;

Procedure  Exec_insert_Extention(ExtentionID:integer);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='insert_Extention';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@ExtentionID';
      Value :=ExtentionID;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
end;

Procedure  Exec_delete_letterImage(LetterDataID:integer);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='delete_letterImage';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@LetterDataID';
      Value :=LetterDataID;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;
Procedure  Exec_delete_LetterData(LetterDataID:integer);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='delete_LetterData';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@LetterDataID';
      Value :=LetterDataID;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;
Procedure  Exec_Delete_RecommitePayvast(RecommitePayvastID:integer);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='delete_RecommitePayvast';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@ID';
      Value :=RecommitePayvastID;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;
function Exec_Recommite_has_JpgFile(RecommiteID:integer):boolean;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Recommite_has_JpgFile';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@RecommiteID';
      Value :=RecommiteID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftboolean;
      Direction := pdoutput;
      Name:='@hasJpg';
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@hasJpg').value;
end;

//"‰«„Â «Ê·Ì ‰Ê‘ Â „Ì ‘Êœ "ÅÌ‘‰ÊÌ” ’«œ—Â ¬„«œÂ ‘œ ReCommites.StaffMemo œ— ›Ì·œ
Procedure  Exec_AnswerNote(recommiteID:integer);
var ADOSP:TADOStoredProc;
begin
   ADOSP:=TADOStoredProc.create(nil);
   ADOSP.ProcedureName:='AnswerNote';

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@recommiteID';
      Value :=recommiteID;
   end;
   ADOSP.Connection:=dm.YeganehConnection;
   ADOSP.ExecProc;
end;

Procedure  Exec_sp_makeRecommited(RecommiteID:integer;staffmemo:widestring;ProceedDate:string);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='sp_makeRecommited';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@RecommiteID';
      Value :=RecommiteID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@staffmemo';
      size:= 510;
      Value :=staffmemo;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@ProceedDate';
      size:= 10;
      Value :=ProceedDate;

    end;
    ADOSP.Connection:=dm.YeganehConnection; 
    ADOSP.ExecProc;    

end;

Procedure Exec_update_ReCommites_proceed(RecommiteID:integer;Proceeded:boolean;ProceedDate:widestring;ProceedTime:widestring;actionTypeID:integer); overload;
var
   ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='update_ReCommites_proceed';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@RecommiteID';
      Value :=RecommiteID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftboolean;
      Direction := pdInput;
      Name:='@Proceeded';
      Value :=Proceeded;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@ProceedDate';
      size:= 20;
      Value :=ProceedDate;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@actionTypeID';
      Value :=actionTypeID;

    end;
    ADOSP.Connection:=dm.YeganehConnection; 
    ADOSP.ExecProc;

end;

Procedure  Exec_update_ReCommites_proceed(RecommiteID:integer;Proceeded:boolean;ProceedDate:widestring;actionTypeID:integer);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='update_ReCommites_proceed';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@RecommiteID';
      Value :=RecommiteID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftboolean;
      Direction := pdInput;
      Name:='@Proceeded';
      Value :=Proceeded;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@ProceedDate';
      size:= 20;
      Value :=ProceedDate;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@actionTypeID';
      Value :=actionTypeID;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;

//Hamed_Ansari_990230_S
//Procedure  Exec_insertReCommites_autoID(LetterID:integer;
//_Type:integer;ParentId:integer;OrgID:integer;Paraph:widestring;RecommiteDate:string;UserID:integer;IsCopy:boolean;GroupFalg:Integer;ISSecure:Boolean);
Procedure  Exec_insertReCommites_autoID(LetterID:integer;
_Type:integer;ParentId:integer;OrgID:integer;Paraph:widestring;RecommiteDate:string;UserID:integer;IsCopy:boolean;GroupFalg:Integer;ISSecure:Boolean;
DeadLineDate:String; DeadLineToInt:Integer);
//Hamed_Ansari_990230_E
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='insertReCommites_autoID';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@LetterID';
      Value :=LetterID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@_Type';
      Value :=_Type;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@ParentId';
      Value :=ParentId;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@OrgID';
      Value :=OrgID;

    end;

    with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@Paraph';
      size:= 1000;
      Value :=Paraph;

    end;

    with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@RecommiteDate';
      size:= 10;
      Value :=RecommiteDate;

    end;

    with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@UserID';
      Value :=UserID;

    end;

    with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftboolean;
      Direction := pdInput;
      Name:='@IsCopy';
      Value :=IsCopy;

    end;

    with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftInteger;
      Direction := pdInput;
      Name:='@GroupFlag';
      Value :=GroupFalg;

    end;

    with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftBoolean;
      Direction := pdInput;
      Name:='@ISSecure';
      Value :=ISSecure;
    end;
//Hamed_Ansari_990230_S
    with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftString;
      Direction := pdInput;
      Name:='@DeadLineDate';
      Value :=DeadLineDate;
    end;

      with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftInteger;
      Direction := pdInput;
      Name:='@DeadLineToInt';
      Value :=DeadLineToInt;
    end;

    with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftString;
      Direction := pdInput;
      Name:='@ReCommiteTime';
      Value :=Exec_get_NowTime;
    end;

//Hamed_Ansari_990230_E
    ADOSP.Connection:=dm.YeganehConnection;
    try
       ADOSP.ExecProc;
    except on e:Exception do
       ShowMessage(e.Message);
    end;

end;

Procedure  Exec_Activate_Recommite(RecommiteID:integer);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(NIL);
  ADOSP.ProcedureName:='Activate_Recommite';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;;
      Direction := pdInput;
      Name:='@RecommiteID';
      Value :=RecommiteID;
    end;


    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
end;

Procedure  Exec_update_ReCommites_viewDate(RecommiteID:integer;ViewDate:string);
var ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(dm);
  ADOSP.ProcedureName:='update_ReCommites_viewDate';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;;
      Direction := pdInput;
      Name:='@RecommiteID';
      Value :=RecommiteID;
    end;
  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;;
      Direction := pdInput;
      Name:='@ViewDate';
      Value :=ViewDate;
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
end;

Procedure  Exec_update_Letter_Finalized(LetterID:integer;Finalized:boolean;WordDocumentReadOnly:Boolean);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='update_Letter_Finalized';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@LetterID';
      Value :=LetterID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftboolean;
      Direction := pdInput;
      Name:='@Finalized';
      Value :=Finalized;  //«ê— Ìﬂ »«‘œ Ì⁄‰Ì ‰«„Â ÅÌ‘ ‰ÊÌ” ‰Â«ÌÌ ‘œÂ «” 

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftboolean;
      Direction := pdInput;
      Name:='@ISCopy_InDabir';
      Value :=WordDocumentReadOnly;

    end;


    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;

//ﬂÅÌ Ìﬂ ‰«„Â »Â œ»Ì—Œ«‰Â œÌê— Ê  »œÌ· ¬‰ »Â ÅÌ‘ ‰ÊÌ” Ê«—œÂ œ— œ»Ì—Œ«‰Â ÃœÌœ
Procedure Exec_SendLetter_To_Other_Sec(NewSecID:integer;LetterID:Integer; intChboxSendLetterWithoutChange : Integer);
Var
   ADOSP:TADOStoredProc;
begin
   ADOSP := TADOStoredProc.create(nil);
   //Hamed_Ansari981120_S
   try
   //Hamed_Ansari981120_E
   ADOSP.ProcedureName:='SendLetter_To_Other_sec';
   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftinteger;
      Direction := pdInput;
      Name := '@NewSecID';
      Value := NewSecID;
   end;

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftinteger;
      Direction := pdInput;
      Name := '@letterid';
      Value := letterid;
   end;

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftInteger;
      Direction := pdInput;
      Name := '@withoutChange';
      Value := intChboxSendLetterWithoutChange;
   end;
   //Hamed_Ansari981120_S
   //   with ADOSP.Parameters.AddParameter do
   //begin
   //   DataType := ftBoolean;
   //   Direction := pdInput;
   //   Name := '@Copy';
   //   Value := Copy;
   //end;
   //Hamed_Ansari981120_E
   ADOSP.Connection:=dm.YeganehConnection;
   ADOSP.ExecProc;
   //Hamed_Ansari981120_S
   finally
     FreeAndNil(ADOSP);
   end;
   //Hamed_Ansari981120_E
end;

// «»⁄ «—Ã«⁄ ‰«„Â
procedure MakeRecommite(Letterformat,Letter_type,LetterID,FromorgID:integer);
var
  Memo:string;
begin
  Memo := '';

  if (Letterformat=1) and (Letter_Type=2) then
    Memo := ' ‰«„Â œ— œ»Ì—Œ«‰Â ’«œ— ‘œ';
  if (Letterformat=2) and (Letter_Type=2) then
    Memo := 'ÅÌ‘ ‰ÊÌ” ‰«„Â ’«œ—Â';
  if (Letter_Type=3) then
    Memo := '«ÌÃ«œ ‰«„Â ';

  if Letterformat = 2 then //ÅÌ‘ ‰ÊÌ” :  ÊÃÂ ‰«„Â Â«Ì ÅÌ‘ ‰ÊÌ‘ Õ«·  ›ﬁÿ ŒÊ«‰œ‰Ì —« ‰œ«—‰œ
    Exec_insert_ReCommites(1,False,LetterID,FromorgID,Memo,0,False,_Today,3,_UserID)
  else
  begin
    //IsCopy :  ⁄ÌÌ‰ ﬂ—œ‰ «Ì‰ﬂÂ ‰«„Â Â« ›ﬁÿ ŒÊ«‰œ‰Ì »«‘œ Ì« ŒÌ—
    if Letter_Type = 1 then //‰«„Â Ê«—œÂ
      Exec_Insert_ReCommites(1, Dm.ReciveIsCopy , LetterID , FromorgID,memo,0,Letter_Type=2,_Today,3,_UserID)
    else
      Exec_insert_ReCommites(1,(Letter_Type<>3) and Dm.DefaultIsCopy,LetterID,FromorgID,memo,0,Letter_Type=2,_Today,3,_userid);
  end;
end;

function Exec_Get_innerLetterMemo(Letterid:integer; var memo:widestring):boolean;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_innerLetterMemo';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@Letterid';
    Value :=Letterid;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftwidestring;
    Direction := pdoutput;
    Name:='@memo';
    size:= 1000;
    Value :=memo;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftboolean;
    Direction := pdoutput;
    Name:='@is_Inner';
  end;
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  Result:=ADOSP.Parameters.ParamByname('@is_Inner').value;
  memo:=ADOSP.Parameters.ParamByname('@memo').value;
end;


function Exec_Org_is_Secretariat(orgid:integer):boolean;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Org_is_Secretariat';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@orgid';
    Value :=orgid;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftboolean;
    Direction := pdoutput;
    Name:='@IsSecretariat';
  end;
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  Result:=ADOSP.Parameters.ParamByname('@IsSecretariat').value;
end;

function Exec_insert_ReciveLetter(IndicatorID:integer;   MYear:integer;   SecretariatID:integer;    Letter_Type:integer;    letterformat:integer;
Memo:widestring;UserID:integer;RegistrationDate:string;RegistrationTime:string;OrgID :integer):integer;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='insert_ReciveLetter';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdoutput;
    Name:='@letterID';
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@IndicatorID';
    Value :=IndicatorID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@MYear';
    Value :=MYear;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@SecretariatID';
    Value :=SecretariatID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@Letter_Type';
    Value :=Letter_Type;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@letterformat';
    Value :=letterformat;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftwidestring;
    Direction := pdInput;
    Name:='@Memo';
    size:= 1000;
    Value :=Memo;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@UserID';
    Value :=UserID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftstring;
    Direction := pdInput;
    Name:='@RegistrationDate';
    size:= 10;
    Value :=RegistrationDate;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftstring;
    Direction := pdInput;
    Name:='@RegistrationTime';
    size:= 5;
    Value :=RegistrationTime;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@OrgID';
    Value :=OrgID;
  end;

  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  Result:=ADOSP.Parameters.ParamByname('@letterID').value;
end;

function Exec_Get_LastUserId:integer;
var
   ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_LastUserId';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdoutput;
    Name:='@id';
  end;
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  Result := ADOSP.Parameters.ParamByname('@id').value;
end;

function  Exec_sp_DelayedLetter(SecretariatID:integer;myear:integer;DeadLine:integer;userID:integer;Tag:Smallint):integer;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='sp_DelayedLetter';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@SecretariatID';
    Value :=SecretariatID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@myear';
    Value :=myear;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@DeadLine';
    Value :=DeadLine;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@userID';
    Value :=userID;
  end;

  {Ranjbar 88.03.16}
  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@Tag';
    Value := Tag;
  end;
  //----

  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.open;
  Result:=ADOSP.Fields[0].AsInteger;
end;


function Exec_get_MaxReferenceDataID_By_TableID(tableID:integer):integer;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='get_MaxReferenceDataID_By_TableID';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@tableID';
    Value :=tableID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdoutput;
    Name:='@maxDataID';
  end;
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  Result:=ADOSP.Parameters.ParamByname('@maxDataID').value;
end;

Procedure  Exec_Make_FieldValues_by_LetterID(LetterID:integer;FormOrder:byte);
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Make_FieldValues_by_LetterID';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@LetterID';
    Value :=LetterID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@FormOrder';
    Value :=FormOrder;
  end;
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
end;

function Exec_sp_duplicateOrg(code:widestring;title:widestring):boolean;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='sp_duplicateOrg';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftwidestring;
    Direction := pdInput;
    Name:='@code';
    size:= 100;
    Value :=code;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftwidestring;
    Direction := pdInput;
    Name:='@title';
    size:= 200;
    Value :=title;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftboolean;
    Direction := pdoutput;
    Name:='@exsits';
  end;
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  Result:=ADOSP.Parameters.ParamByname('@exsits').value;
end;


Procedure  Exec_Update_Archived_letter(Letterid:integer;archived:Boolean);
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Update_Archived_letter';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@Letterid';
    Value :=Letterid;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftboolean;
    Direction := pdInput;
    Name:='@archived';
    Value :=archived;
  end;
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
end;

Procedure  Exec_sp_add_datato_dabir;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='sp_add_datato_dabir';

  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
end;

function Exec_Get_UserMessageCount:integer;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_UserMessageCount';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@to';
    Value :=_userid;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdoutput;
    Name:='@count';
  end;
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  Result:=ADOSP.Parameters.ParamByname('@count').value;
end;

function Exec_get_NewOrgCode(ParentID:integer):widestring;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='get_NewOrgCode';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@ParentID';
    Value :=ParentID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftwidestring;
    Direction := pdoutput;
    Name:='@newCode';
    size:= 100;
  end;
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  Result:=ADOSP.Parameters.ParamByname('@newCode').value;
end;

function Exec_sp_ArchivePlaces(LetterID:integer;UserID:integer):widestring;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='sp_ArchivePlaces';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@LetterID';
    Value :=LetterID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@UserID';
    Value :=UserID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftwidestring;
    Direction := pdoutput;
    Name:='@result';
    size:= 2000;
  end;

  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  Result:=ADOSP.Parameters.ParamByname('@result').value;
end;

function Exec_Get_LetterdataExtention(LetterID:integer):integer;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_LetterdataExtention';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@LetterID';
    Value :=LetterID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdoutput;
    Name:='@result';
  end;

  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  Result:=ADOSP.Parameters.ParamByname('@result').value;
end;

function Exec_Select_FolllowUp_ByLetterID(LetterID:integer;userID:integer):integer;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Select_FolllowUp_ByLetterID';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@LetterID';
    Value :=LetterID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@userID';
    Value :=userID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdoutput;
    Name:='@StartFollowUpID';
  end;

  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  Result:=ADOSP.Parameters.ParamByname('@StartFollowUpID').value;
end;

function Exec_Get_LifeTip_byUserid(Userid:integer):widestring;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_LifeTip_byUserid';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@Userid';
    Value :=Userid;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftwidestring;
    Direction := pdoutput;
    Name:='@lifeTip';
    size:= 510;
  end;

  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  Result:=ADOSP.Parameters.ParamByname('@lifeTip').value;
end;

Procedure  Exec_update_LetterActiontype(LetterID:integer;LatestActionTypeID:integer);
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='update_LetterActiontype';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@LetterID';
    Value :=LetterID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@LatestActionTypeID';
    Value :=LatestActionTypeID;
  end;

  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
end;

//LetterFieldValue ,Fields,tables  Õ–› «ÿ·«⁄«  «“ Ãœ«Ê·
Procedure  Exec_delete_UserTable(TableID:integer);
var
   ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='delete_UserTable';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@TableID';
    Value :=TableID;
  end;

  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
end;

function Exec_Get_FollowUP_Count(UserID:integer;BDate:string;Edate:string;DonStatusID:integer):integer;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_FollowUP_Count';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@UserID';
    Value :=UserID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftstring;
    Direction := pdInput;
    Name:='@BDate';
    size:= 10;
    Value :=BDate;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftstring;
    Direction := pdInput;
    Name:='@Edate';
    size:= 10;
    Value :=Edate;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@DonStatusID';
    Value :=DonStatusID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdoutput;
    Name:='@Count';
  end;

  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  Result:=ADOSP.Parameters.ParamByname('@Count').value;
end;

Procedure LoadHelp(Tag:integer);
begin
end;

function Get_DraftReceivedLetter_count(Myear:integer;secretariatid:integer):integer;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_DraftReceivedLetter_count';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@Myear';
    Value :=Myear;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@secretariatid';
    Value :=secretariatid;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdoutput;
    Name:='@count';
  end;

  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  Result:=ADOSP.Parameters.ParamByname('@count').value;
end;

Procedure  Exec_Select_letter_details(letterid:integer;var IndicatorID:string;var RegistrationDate:string;var Memo,LetterRecommites,latestParaph:widestring);
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Select_letter_details';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@letterid';
    Value :=letterid;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftstring;
    Direction := pdoutput;
    Name:='@IndicatorID';
    size:= 10;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftstring;
    Direction := pdoutput;
    Name:='@RegistrationDate';
    size:= 10;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftwidestring;
    Direction := pdoutput;
    Name:='@Memo';
    size:= 1000;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftwidestring;
    Direction := pdoutput;
    Name:='@LetterRecommites';
    size:= 1000;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftwidestring;
    Direction := pdoutput;
    Name:='@latestParaph';
    size:= 1000;
  end;

  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  IndicatorID:=ADOSP.Parameters.parambyname('@IndicatorID').Value;
  RegistrationDate:=ADOSP.Parameters.parambyname('@RegistrationDate').Value;
  Memo:=ADOSP.Parameters.parambyname('@Memo').Value;
  LetterRecommites:=ADOSP.Parameters.parambyname('@LetterRecommites').Value;
  LatestParaph:=ADOSP.Parameters.parambyname('@latestParaph').Value;
end;

function Get_DatabaseName_By_Year(myear:integer):string;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_DatabaseName_By_Year';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@myear';
    Value :=myear;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftstring;
    Direction := pdoutput;
    Name:='@dbName';
    size:= 50;
  end;
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  Result := ADOSP.Parameters.ParamByname('@dbName').value;

{„ ‰ —Ê«·
CREATE Procedure Get_DatabaseName_By_Year
@myear tinyint,@dbName varchar(50) output
as
set @dbName='Nothing'
if @myear>=86
   set @dbName='ydabir'
else
   set @dbName='ahwaz'
}
end;

Procedure  Insert_ParaphTemplate(Title:widestring;Paraph:widestring;typ : integer);
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Insert_ParaphTemplate';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;;
    Direction := pdInput;
    Name:='@UserID';
    Value :=_UserID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftwidestring;;
    Direction := pdInput;
    Name:='@Title';
    size:= 100;
    Value :=Title;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftwidestring;;
    Direction := pdInput;
    Name:='@Paraph';
    size:= 1000;
    Value :=Paraph;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftInteger;;
    Direction := pdInput;
    Name:='@type';
    Value :=typ;
  end;
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
end;

Procedure  Open_ParaphTemplate(typ: integer);
begin
  with Dm.SELECT_ParaphTemplate,parameters do
  begin
    Close;
    ParamByName('@UserID').value:=_userid;
    ParamByName('@Type').value:= typ;
    Open;
  end;
end;

Procedure  Move_ParaphTemplate(ParaphTemplateID:integer;Step:integer);
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Move_ParaphTemplate';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;;
    Direction := pdInput;
    Name:='@ParaphTemplateID';
    Value :=ParaphTemplateID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;;
    Direction := pdInput;
    Name:='@Step';
    Value :=Step;
  end;

  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
end;

Procedure  delete_ParaphTemplate(ParaphTemplateID:integer);
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='delete_ParaphTemplate';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;;
    Direction := pdInput;
    Name:='@ParaphTemplateID';
    Value :=ParaphTemplateID;
  end;

  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
end;

Procedure  Update_ParaphTemplate(ParaphTemplateID:integer;Title:widestring;Paraph:widestring);
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Update_ParaphTemplate';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;;
    Direction := pdInput;
    Name:='@ParaphTemplateID';
    Value :=ParaphTemplateID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftwidestring;;
    Direction := pdInput;
    Name:='@Title';
    size:= 100;
    Value :=Title;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftwidestring;;
    Direction := pdInput;
    Name:='@Paraph';
    size:= 1000;
    Value :=Paraph;
  end;

  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
end;

Function Get_ParaphTemplate_title(OrderID:integer):string;
var
   i : Integer;
begin
  Result:='';
 //if dm.SELECT_ParaphTemplate.Locate('OrderID',orderid,[]) then
 //Result:=dm.SELECT_ParaphTemplateTitle.AsString;
  try
    dm.SELECT_ParaphTemplate.First;
    if OrderID = 1 then
      Result := dm.SELECT_ParaphTemplateTitle.AsString
    else
    if OrderID <= dm.SELECT_ParaphTemplate.RecordCount then
      for i := 2 to orderid do
      begin
        dm.Select_ParaphTemplate.Next;
        Result := dm.SELECT_ParaphTemplateTitle.AsString;
      end;
  except
    Result := '';
  end;
end;

Function Get_ParaphTemplate_Paraph(OrderID:integer):string;
var
   i : integer;
begin
  Result:='';
// if dm.SELECT_ParaphTemplate.Locate('OrderID',orderid,[]) then
// Result:=dm.SELECT_ParaphTemplateParaph.AsString;
  try
    dm.SELECT_ParaphTemplate.First;
    if OrderID = 1 then
      Result := dm.SELECT_ParaphTemplateParaph.AsString
    else
    if OrderID <= dm.SELECT_ParaphTemplate.RecordCount then
      for i := 2 to orderid do
      begin
        dm.Select_ParaphTemplate.Next;
        Result := dm.SELECT_ParaphTemplateParaph.AsString;
      end;
  except
    Result := '';
  end;
end;

function Next_page(LetterID:integer;CurrentPage:integer;Next:boolean):integer;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Next_page';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@LetterID';
    Value :=LetterID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@CurrentPage';
    Value :=CurrentPage;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftboolean;
    Direction := pdInput;
    Name:='@Next';
    Value :=Next;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdoutput;
    Name:='@newPage';
  end;

  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  Result:=ADOSP.Parameters.ParamByname('@newPage').value;
end;

function EmptyDir(path:string):boolean;
var
  FileName: string;
  sr: TSearchRec;
  FileAttrs: Integer;
begin
  Result:=True;
  FileName:=path + '\*.*';
  FileAttrs := 0;

  if FindFirst(fileName, FileAttrs, sr) = 0 then
    repeat
      try
        SysUtils.FileSetReadOnly(pchar(path + '\'+ sr.Name), false);
        if not DeleteFile(pchar(path + '\'+ sr.Name)) then
          result:=false
      except
      end;
    until FindNext(sr) <> 0;

  FindClose(sr);
end;

Procedure SaveWordFile(Letterid:integer;_FileName:string);
begin
  with dm,Get_LetterWordFile,Parameters do
  begin
    Close;
    ParamByName('@LetterID').Value:=Letterid;
    Open;
    if recordcount=0 then
      Exit;
    Get_LetterWordFileImage.SaveToFile(_FileName);
  end;
end;

function Get_FieldAccess_By_FieldID(UserID:integer;FieldID:integer):integer;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_FieldAccess_By_FieldID';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@UserID';
    Value :=UserID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@FieldID';
    Value :=FieldID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdoutput;
    Name:='@AccessTypeID';
  end;
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  Result:=ADOSP.Parameters.ParamByname('@AccessTypeID').value;
end;

Procedure  Open_FieldAccess_by_TableID(TableID:integer;UserID:integer);
begin
  with Dm.Select_FieldAccess_by_TableID,parameters do
  begin
    Close;
    ParamByName('@TableID').value:=TableID;
    ParamByName('@UserID').value:=UserID;
    Open;
  end;
end;

procedure Open_UserTable(like:string);
begin
  with dm.get_userTable do
  begin
    close;
    Parameters.ParamByName('@like').Value:=like;
    Open;
  end;
end;


Procedure  insert_FieldAccess;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='insert_FieldAccess';

  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
end;

//»«“ ﬂ—œ‰  ’ÊÌ— «„÷«Ì ﬂ«—»— Ã«—Ì
Procedure  Open_UserSign(UserID:integer);
begin
  with Dm.Select_UserSign,parameters do
  begin
    Close;
    ParamByName('@UserID').value:=UserID;
    Open;
  end;
end;

procedure PasteSign( Dest:TCanvas;x,y: integer);
var
  jpg:TJPEGImage;
  Bitmap: TBitmap;
begin

  Open_UserSign(_userid);//»«“ ﬂ—œ‰  ’ÊÌ— «„÷«Ì ﬂ«—»— Ã«—Ì
  if dm.Select_UserSignUserSign.IsNull then
    Exit;

  jpg:=TJPEGImage.Create;

  dm.Select_UserSignUserSign.SaveToFile(_TempPath+'\yeganehsign.jpg');
  jpg.LoadFromFile(_TempPath+'\yeganehsign.jpg');
  Bitmap := TBitmap.Create;
  Bitmap.Assign(jpg);
  dest.CopyMode:=cmSrcAnd;
  dest.CopyRect(rect(x,y,x+Bitmap.Width,y+Bitmap.Height),Bitmap.Canvas,rect(0,0,Bitmap.Width,Bitmap.Height));
end;

function Get_FieldValue_by_LetterID_FieldID(LetterID:integer;FieldID:integer):widestring;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_FieldValue_by_LetterID_FieldID';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@LetterID';
    Value :=LetterID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@FieldID';
    Value :=FieldID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftwidestring;
    Direction := pdoutput;
    Name:='@fieldValue';
    size:= 4000;
  end;
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  Result:=ADOSP.Parameters.ParamByname('@fieldValue').value;
end;

function has_PDF(LetterID:integer):boolean;
var
   ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='has_PDF';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@LetterID';
    Value :=LetterID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftboolean;
    Direction := pdoutput;
    Name:='@result';
  end;
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  Result:=ADOSP.Parameters.ParamByname('@result').value;
end;

function ShowArchiveAttachment(ID: integer; isDoc: boolean): Pchar;
var
   ArchLetID: integer;
   f : string;
begin
  if isDoc then
  begin
    ArchLetID := ID;
  end
  else
  begin
    with TADOQuery.Create(nil)do
    begin
      Connection := dm.ArchiveConnection;
      SQL.Text := 'SELECT LetterID FROM LetterData WHERE LetterDataID='+IntToStr(ID);
      Open;
      if not IsEmpty then
        ArchLetID := fields[0].Value;
    end;
  end;

  if ArchLetID=0 then
    Exit;

  if(not _Can_View_Classified_Archive_Docs) then
  with TADOQuery.Create(nil)do
  begin
    Connection := dm.ArchiveConnection;
    SQL.Text := 'SELECT ClassificationID FROM Letter WHERE LetterID='+IntToStr(ArchLetID);
    Open;
    if (Fields[0].AsInteger >1) then
    begin
      ShowMessage('«Ì‰ ”‰œ œ«—«Ì ”ÿÕ „Õ—„«‰Â „Ì »«‘œ');
      Exit;
    end;
  end;

  if isDoc then
  begin
    fmShowArchiveDoc := TfmShowArchiveDoc.Create(Application);
    fmShowArchiveDoc.LetterID := dm.Get_LetterData_by_LetterIDarchiveID.Value;
    fmShowArchiveDoc.ShowModal;
  end
  else
  begin
    dm.qryArchiveAttachment.close;
    dm.qryArchiveAttachment.Parameters[0].Value:= ID;
    dm.qryArchiveAttachment.Open;
    f:=_TempPath + 'temp'+dm.qryArchiveAttachmentLetterDataID.AsString+'.'+dm.qryArchiveAttachmentextention.AsString;
    SysUtils.FileSetReadOnly(pchar(f), false);
    DeleteFile(pchar(f));
    dm.qryArchiveAttachmentIMAGE.SaveToFile(f);
    Result := pchar(f);
  end;
end;

function loadLetterdata(LetterID: integer): Pchar;
var
  f:string;
  res : pchar;
begin
  with dm,Get_LetterData_by_LetterID do
  begin
    Close;
    Parameters.ParamByName('@LetterID').Value:=LetterID;
    Open;
  end;

  with TADOQuery.Create(nil) do
  begin
    Connection := dm.YeganehConnection;
    SQL.Text := 'SELECT archiveID, isDocument FROM LetterData WHERE archiveID>0 AND LetterDataID =' + dm.Get_LetterData_by_LetterIDLetterDataID.AsString;
    Open;
    if not IsEmpty then
    begin
      result := ShowArchiveAttachment(Fields[0].AsInteger, Fields[1].AsBoolean);
      exit;
    end;
  end;

  with dm,Get_LetterData_by_LetterDataID do
  begin
    close;
    Parameters.ParamByName('@LetterdataID').Value:=Get_LetterData_by_LetterIDLetterDataID.Value;
    Open;
    f:=_TempPath + 'temp'+Get_LetterData_by_LetterDataIDLetterDataID.AsString+'.'+Get_LetterData_by_LetterIDExt.AsString;
    SysUtils.FileSetReadOnly(pchar(f), false);
    DeleteFile(pchar(f));
    Get_LetterData_by_LetterDataIDImage.SaveToFile(f);
    res := pchar(f);
    Result:= res;
  end;
end;

function Check_duplicate_UserName(UserName:widestring):boolean;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Check_duplicate_UserName';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftwidestring;
    Direction := pdInput;
    Name:='@UserName';
    size:= 100;
    Value :=UserName;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftboolean;
    Direction := pdoutput;
    Name:='@Result';
  end;
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  Result:=ADOSP.Parameters.ParamByname('@Result').value;
  FreeAndNil(ADOSP);
end;

Procedure insert_FieldAccess_by_TableID(TableID:integer);
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='insert_FieldAccess_by_TableID';
  ADOSP.CommandTimeout:= 3000000;
  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@TableID';
    Value :=TableID;
  end;
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  FreeAndNil(ADOSP);
end;

Procedure insert_gira(Sharh:string;Asl:boolean;letterid:integer);
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='insert_gira';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftstring;
    Direction := pdInput;
    Name:='@Sharh';
    size:= 40;
    Value :=Sharh;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftboolean;
    Direction := pdInput;
    Name:='@Asl';
    Value :=Asl;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@letterid';
    Value :=letterid;
  end;
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  FreeAndNil(ADOSP)
end;

Procedure update_filekeeping_letter(LetterID:integer;FileKeepingKind:integer;FileKeepingID:integer);
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='update_filekeeping_letter';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@LetterID';
    Value :=LetterID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@FileKeepingKind';
    Value :=FileKeepingKind;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@FileKeepingID';
    Value :=FileKeepingID;
  end;
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  FreeAndNil(ADOSP);
end;

function Duplicate_UserShortCut(UserID:integer;altKey:string):boolean;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Duplicate_UserShortCut';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@UserID';
    Value :=UserID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftstring;
    Direction := pdInput;
    Name:='@altKey';
    size:= 1;
    Value :=altKey;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftboolean;
    Direction := pdoutput;
    Name:='@result';
  end;

  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  Result:=ADOSP.Parameters.ParamByname('@result').value;
  FreeAndNil(ADOSP);
end;

function DQuotedStr(s:string):string;
begin
  Result:=' "'+s+'" ';
end;

function GetNumberOfLetterAttach(LetterID:integer):integer;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='GetNumberOfLetterAttach';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@LetterID';
    Value :=LetterID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdoutput;
    Name:='@number';
  end;

  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  Result:=ADOSP.Parameters.ParamByname('@number').value;
  FreeAndNil(ADOSP);
end;

Procedure  delete_user(userid:integer);
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='delete_user';
  adosp.CommandTimeout:=60;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@userid';
    Value :=userid;
  end;
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  FreeAndNil(ADOSP);
end;

function GetLastFormOrderByLetterID(LetterID:integer):integer;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='GetLastFormOrderByLetterID';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@LetterID';
    Value :=LetterID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdoutput;
    Name:='@formOrder';
  end;
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  Result:=ADOSP.Parameters.ParamByname('@formOrder').value;
  FreeAndNil(ADOSP);
end;

function GetFollowCode(letterID:integer):string;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='GetFollowCode';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@letterID';
    Value :=letterID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftstring;
    Direction := pdoutput;
    Name:='@Code';
    size:= 100;
  end;

  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  Result:=ADOSP.Parameters.ParamByname('@Code').value;
  FreeAndNil(ADOSP);
end;

function Get_DraftLetter_Count(Myear:integer;secretariatid:integer):integer;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_DraftLetter_count';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@Myear';
    Value :=Myear;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@secretariatid';
    Value :=secretariatid;
  end;
   {Ranjbar 89.09.29 ID=241}
  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@UserID';
    Value :=_UserID;
  end;
   //---
  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdoutput;
    Name:='@count';
  end;
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  Result:=ADOSP.Parameters.ParamByname('@count').value;
  FreeAndNil(ADOSP);
end;

function GetRecommiter(Recommiteid:integer):integer;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='GetRecommiter';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@Recommiteid';
    Value :=Recommiteid;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdoutput;
    Name:='@orgid';
  end;

  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  Result:=ADOSP.Parameters.ParamByname('@orgid').value;
  FreeAndNil(ADOSP);
end;

function ShowModalForm:boolean;
var
  i: integer;
begin

  Result:=False;
  for i:=0 to Application.ComponentCount-1 do
  begin
    if Application.Components[i].InheritsFrom(TForm) then
      if (TForm(Application.Components[i]).Showing)  then
        Result := True;
  end;
end;

Procedure  SetUserSetting(VariableName:string;_Value:Variant);
var
  ADOSP:TADOStoredProc;
begin
   ADOSP:=TADOStoredProc.create(nil);
   ADOSP.ProcedureName:='SetUserSetting';

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@UserID';
      Value :=_Userid;
   end;

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@VariableName';
      size:= 50;
      Value :=VariableName;
   end;

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftWideString;
      Direction := pdInput;
      Name:='@Value';
      size:= 510;
      Value :=VarToStr(_Value);
   end;
   ADOSP.Connection:=dm.YeganehConnection;
   ADOSP.ExecProc;
   FreeAndNil(ADOSP);
end;

function GetUserSetting(VariableName:string):Variant;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP := TADOStoredProc.create(nil);
  ADOSP.ProcedureName := 'GetUserSetting';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name := '@UserID';
    Value :=_Userid;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftstring;
    Direction := pdInput;
    Name := '@VariableName';
    size := 50;
    Value :=VariableName;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftWideString;
    Direction := pdoutput;
    Name := '@Value';
    size := 510;
  end;

  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  Result:=ADOSP.Parameters.ParamByname('@Value').value;

  if Result = 'Not Found' then
  begin
    //ShowMessage('„‘Œ’ ‰Ì” !'+VariableName+ '„ﬁœ«— „ €ÌÌ— ò«—»—Ì ' );
    Result := '0';
  end;
  FreeAndNil(ADOSP);
end;

function GetSystemSetting(VariableName:string):Variant;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='GetSystemSetting';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftstring;
    Direction := pdInput;
    Name:='@VariableName';
    size:= 50;
    Value :=VariableName;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftWideString;
    Direction := pdoutput;
    Name:='@Value';
    size:= 510;
  end;
  ADOSP.Connection := dm.YeganehConnection;
  ADOSP.ExecProc;
  Result := ADOSP.Parameters.ParamByname('@Value').value;

  if Result='Not Found' then
  begin
//      ShowMessage('„‘Œ’ ‰Ì” !'+VariableName+ '„ﬁœ«— „ €ÌÌ— ”Ì” „Ì ' );
    Result:='0';
  end;
  FreeAndNil(ADOSP);
end;

Procedure SetSystemSetting(VariableName:string;_Value:Variant);
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='SetSystemSetting';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftstring;
    Direction := pdInput;
    Name:='@VariableName';
    size:= 50;
    Value :=VariableName;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftWideString;
    Direction := pdInput;
    Name:='@Value';
    size:= 510;
    Value :=_Value;
  end;

  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  FreeAndNil(ADOSP);
end;

function CalcEncodedSize(InSize: DWord): DWord;
begin
  // no buffers passed along, calculate outbuffer size needed
  Result := (InSize div 3) shl 2;
  if (InSize mod 3) > 0 then
    Inc(Result, 4);
end;
 
function CalcDecodedSize(const InBuffer; InSize: DWord): DWord;
begin
  Result := 0;
  if InSize = 0 then
    Exit;
  if (InSize mod 4 <> 0) then
    Exit;
 
  Result := InSize div 4 * 3;
  if (PByte(DWord(InBuffer) + InSize - 2)^ = Ord(Base64Filler)) then
    Dec(Result, 2)
  else
  if (PByte(DWord(InBuffer) + InSize - 1)^ = Ord(Base64Filler)) then
    Dec(Result);
end;
 
procedure Base64Encode(const InBuffer; InSize: DWord; var OutBuffer);
var
  X: Integer;
  PIn, POut: TPAByte;
  Acc: Cardinal;
begin
  if InSize > 0 then
  begin
    PIn := @InBuffer;
    POut := @OutBuffer;
 
    for X := 1 to InSize div 3 do
    begin
      Acc := PIn^[0] shl 16 + PIn^[1] shl 8 + PIn^[2];
 
      POut^[0] := Byte(cBase64Codec[(Acc shr 18) and $3f]);
      POut^[1] := Byte(cBase64Codec[(Acc shr 12) and $3f]);
      POut^[2] := Byte(cBase64Codec[(Acc shr 6 ) and $3f]);
      POut^[3] := Byte(cBase64Codec[(Acc       ) and $3f]);
 
      Inc(Cardinal(POut), 4);
      Inc(Cardinal(PIn),  3);
    end;
    case InSize mod 3 of
      1 :
      begin
        Acc := PIn^[0] shl 16;
 
        POut^[0] := Byte(cBase64Codec[(Acc shr 18) and $3f]);
        POut^[1] := Byte(cBase64Codec[(Acc shr 12) and $3f]);
        POut^[2] := Byte(Base64Filler);
        POut^[3] := Byte(Base64Filler);
      end;
      2 :
      begin
        Acc := PIn^[0] shl 16 + PIn^[1] shl 8;
 
        POut^[0] := Byte(cBase64Codec[(Acc shr 18) and $3f]);
        POut^[1] := Byte(cBase64Codec[(Acc shr 12) and $3f]);
        POut^[2] := Byte(cBase64Codec[(Acc shr 6 ) and $3f]);
        POut^[3] := Byte(Base64Filler);
      end;
    end;
  end;
end;
 
procedure Base64Decode(const InBuffer; InSize: DWord; var OutBuffer);
const
  cBase64Codec: array[0..255] of Byte =
  (
    $FF, $FF, $FF, $FF, $FF, {005>} $FF, $FF, $FF, $FF, $FF, // 000..009
    $FF, $FF, $FF, $FF, $FF, {015>} $FF, $FF, $FF, $FF, $FF, // 010..019
    $FF, $FF, $FF, $FF, $FF, {025>} $FF, $FF, $FF, $FF, $FF, // 020..029
    $FF, $FF, $FF, $FF, $FF, {035>} $FF, $FF, $FF, $FF, $FF, // 030..039
    $FF, $FF, $FF, $3E, $FF, {045>} $FF, $FF, $3F, $34, $35, // 040..049
    $36, $37, $38, $39, $3A, {055>} $3B, $3C, $3D, $FF, $FF, // 050..059
    $FF, $00, $FF, $FF, $FF, {065>} $00, $01, $02, $03, $04, // 060..069
    $05, $06, $07, $08, $09, {075>} $0A, $0B, $0C, $0D, $0E, // 070..079
    $0F, $10, $11, $12, $13, {085>} $14, $15, $16, $17, $18, // 080..089
    $19, $FF, $FF, $FF, $FF, {095>} $FF, $FF, $1A, $1B, $1C, // 090..099
    $1D, $1E, $1F, $20, $21, {105>} $22, $23, $24, $25, $26, // 100..109
    $27, $28, $29, $2A, $2B, {115>} $2C, $2D, $2E, $2F, $30, // 110..119
    $31, $32, $33, $FF, $FF, {125>} $FF, $FF, $FF, $FF, $FF, // 120..129
    $FF, $FF, $FF, $FF, $FF, {135>} $FF, $FF, $FF, $FF, $FF, // 130..139
    $FF, $FF, $FF, $FF, $FF, {145>} $FF, $FF, $FF, $FF, $FF, // 140..149
    $FF, $FF, $FF, $FF, $FF, {155>} $FF, $FF, $FF, $FF, $FF, // 150..159
    $FF, $FF, $FF, $FF, $FF, {165>} $FF, $FF, $FF, $FF, $FF, // 160..169
    $FF, $FF, $FF, $FF, $FF, {175>} $FF, $FF, $FF, $FF, $FF, // 170..179
    $FF, $FF, $FF, $FF, $FF, {185>} $FF, $FF, $FF, $FF, $FF, // 180..189
    $FF, $FF, $FF, $FF, $FF, {195>} $FF, $FF, $FF, $FF, $FF, // 190..199
    $FF, $FF, $FF, $FF, $FF, {205>} $FF, $FF, $FF, $FF, $FF, // 200..209
    $FF, $FF, $FF, $FF, $FF, {215>} $FF, $FF, $FF, $FF, $FF, // 210..219
    $FF, $FF, $FF, $FF, $FF, {225>} $FF, $FF, $FF, $FF, $FF, // 220..229
    $FF, $FF, $FF, $FF, $FF, {235>} $FF, $FF, $FF, $FF, $FF, // 230..239
    $FF, $FF, $FF, $FF, $FF, {245>} $FF, $FF, $FF, $FF, $FF, // 240..249
    $FF, $FF, $FF, $FF, $FF, {255>} $FF                      // 250..255
  );
var
  X, Y: Integer;
  PIn, POut: TPAByte;
  Acc : dword;
begin
  if (InSize > 0) and (InSize mod 4 = 0) then
  begin
    InSize := InSize shr 2;
    PIn := @InBuffer;
    POut := @OutBuffer;
 
    for X := 1 to InSize - 1 do
    begin
      Acc := 0;
      Y := -1;
 
      repeat
        Inc(Y);
        Acc := Acc shl 6;
        Acc := Acc or cBase64Codec[PIn^[Y]];
      until Y = 3;
 
      POut^[0] := Acc shr 16;
      POut^[1] := Byte(Acc shr 8);
      POut^[2] := Byte(Acc);
 
      Inc(Cardinal(PIn),  4);
      Inc(Cardinal(POut), 3);
    end;
    Acc := 0;
    Y := -1;
 
    repeat
      Inc(Y);
      Acc := Acc shl 6;
 
      if PIn^[Y] = Byte(Base64Filler) then
      begin
        if Y = 3 then
        begin
          POut^[0] := Acc shr 16;
          POut^[1] := Byte(Acc shr 8);
        end
        else
          POut^[0] := Acc shr 10;
        Exit;
      end;
 
      Acc := Acc or cBase64Codec[PIn^[Y]];
    until Y = 3;
 
    POut^[0] := Acc shr 16;
    POut^[1] := Byte(Acc shr 8);
    POut^[2] := Byte(Acc);
  end;
end;
 
procedure Base64EncodeStr(const InText: AnsiString; var OutText: AnsiString);
var
  InSize, OutSize: DWord;
  PIn, POut: Pointer;
begin
  // get size of source
  InSize := Length(InText);
  // calculate size for destination
  OutSize := CalcEncodedSize(InSize);
 
  // prepare AnsiString length to fit result data
  SetLength(OutText, OutSize);
 
  if OutSize > 0 then
  begin
    PIn := @InText[1];
    POut := @OutText[1];
 
    // encode !
    Base64Encode(PIn^, InSize, POut^);
  end;
end;
 
procedure Base64DecodeStr(const InText: AnsiString; var OutText: AnsiString);
var
  InSize, OutSize: DWord;
  PIn, POut: Pointer;
begin
  // get size of source
  InSize := Length(InText);
  // calculate size for destination
  PIn := @InText[1];
  OutSize := CalcDecodedSize(PIn, InSize);
 
  // prepare AnsiString length to fit result data
  SetLength(OutText, OutSize);
 
  if OutSize > 0 then
  begin
    FillChar(OutText[1], OutSize, '.');
    POut := @OutText[1];
 
    // encode !
    Base64Decode(PIn^, InSize, POut^);
  end;
end;
 
function Base64EncodeString(const InText: AnsiString): AnsiString;
begin
  Base64EncodeStr(InText, Result);
end;
 
function Base64DecodeString(const InText: AnsiString): AnsiString;
begin
  Base64DecodeStr(InText, Result);
end;
 
function Base64EncodeToString(const InBuffer; InSize: DWord): AnsiString;
var
  POut: Pointer;
begin
  SetLength(Result, CalcEncodedSize(InSize));
  POut := @Result[1];
  Base64Encode(InBuffer, InSize, POut^);
end;


function DecodeEmailHeaderItem(inputSTR:string):String;
var
  charset, encoding, codedText, tmpSTR, ResultSTR : string;
  s1,s2 : string;
begin
  ResultSTR := '';
  s1 := copy(inputSTR,1,1);
  s2 := copy(inputSTR,2,1);
  if (s1 = '=') and (s2 = '?')   then
  begin
    tmpSTR := inputSTR;
    while length(tmpSTR)>0 do
    begin
      tmpSTR := copy(tmpSTR,3,length(tmpSTR)-2);
      charset := copy(tmpSTR,1,pos('?',tmpSTR)-1);
      tmpSTR := copy(tmpSTR,length(charset)+2,length(tmpSTR)-length(charset)-1);
      encoding := copy(tmpSTR,1,pos('?',tmpSTR)-1);
      tmpSTR := copy(tmpSTR,length(encoding)+2,length(tmpSTR)-length(encoding)-1);
      codedText := copy(tmpSTR,1,pos('?=',tmpSTR)-1);
      tmpSTR := copy(tmpSTR,length(codedText)+1,length(tmpSTR)-length(codedText));
      if length(tmpSTR)<2 then
        Break
      else
      begin
        s1 := copy(tmpSTR,1,1);
        s2 := copy(tmpSTR,2,1);
        if (s1 = '?') and (s2 = '=')   then
        begin
          tmpSTR := copy(tmpSTR,3,length(tmpSTR)-2);
          ResultSTR := ResultSTR + DecodeSTR(charset,encoding,codedText);
          tmpSTR := trim(tmpSTR);
        end
        else
          Break;
      end;
       //  ShowMessage(charset + ' : ' + encoding + ' : ' + codedText + ' : ' + tmpSTR);
    end;
  end;

  if trim(ResultSTR) <> '' then
    Result := ResultSTR
  else
    Result := inputSTR;
end;

function DecodeSTR(charset, encoding, codedText : string ): string;
var
  resultSTR : string;
begin
  if UpperCase(encoding) = 'B' then
    resultSTR := Base64DecodeString(codedText)
  else if UpperCase(encoding) = 'Q' then
    resultSTR := DecodeQuatedPrintable(codedText)
  else
    resultSTR := codedText;

  if UpperCase(charset) = 'UTF-8' then
    resultSTR := UTF8Decode(resultSTR)
  else if UpperCase(charset) =  'WINDOWS-1256' then
    resultSTR := resultSTR
  else
    resultSTR := resultSTR;
  Result := resultSTR;
end;

//Ataie 990924
function DecodeQuatedPrintable(S: string): string;
var
  nPos: Integer;
  nLastPos: Integer;
  lFound: Boolean;
begin
  Result := S;
  lFound := True;
  nLastPos := 0;
  while lFound do
  begin
    lFound := False;
    if nLastPos < Length(Result) then
      nPos := Pos('=', Copy(Result, nLastPos+1, Length(Result)-nLastPos))+nLastPos
    else
      nPos := 0;

    if (nPos < (Length(Result)-1)) and (nPos > nLastPos) then
    begin
      if (Result[nPos+1] in ['A'..'F', '0'..'9']) and (Result[nPos+2] in ['A'..'F', '0'..'9']) then
      begin
        Insert(Char(StrToInt('$'+Result[nPos+1]+Result[nPos+2])), Result, nPos);
        Delete(Result, nPos+1, 3);
      end
      else
      begin
        if (Result[nPos+1] = #13) and (Result[nPos+2] = #10) then
        begin
          Delete(Result, nPos, 3);
        end
        else
        begin
          if (Result[nPos+1] = #10) and (Result[nPos+2] = #13) then
          begin
            Delete(Result, nPos, 3);
          end
          else
          begin
            if (Result[nPos+1] = #13) and (Result[nPos+2] <> #10) then
            begin
              Delete(Result, nPos, 2);
            end
            else
            begin
              if (Result[nPos+1] = #10) and (Result[nPos+2] <> #13) then
              begin
                Delete(Result, nPos, 2);
              end;
            end;
          end;
        end;
      end;
      lFound := True;
      nLastPos := nPos;
    end
    else
    begin
      if nPos = Length(Result) then
      begin
        Delete(Result, nPos, 1);
      end;
    end;
  end;
end;

function processExists(exeFileName: string): Boolean;
var
  ContinueLoop: Boolean;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);
  Result := False;
  while ContinueLoop do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) =
      UpperCase(ExeFileName)) or (UpperCase(FProcessEntry32.szExeFile) =
      UpperCase(ExeFileName))) then
    begin
      Result := True;
    end;
    ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  //CloseHandle(FSnapshotHandle);
end;

function Exec_GetLetterTemplateGroupType(Id : Integer):String;
var
  ADOSP:TADOStoredProc;
  P1, P2: TParam;
begin

  try
    ADOSP := TADOStoredProc.create(nil);
    with ADOSP do
    begin
      Connection := dm.YeganehConnection;
      ProcedureName := 'GetLetterTemplateGroupType';
      Parameters.Clear;
      Parameters.CreateParameter('@ID', ftInteger, pdInput, 4, Id);
      Parameters.CreateParameter('@type', ftString, pdOutput, 1, Null);
      ExecProc;
      Result := Parameters.ParamByName('@type').Value;
    end;
  finally
    FreeAndNil(ADOSP);
  end;
end;

function Exec_has_WordExcel(LetterId : Integer):Integer;
begin
  Result := 3;

  if _Has_Excel_Template then
  begin
    with TADOQuery.Create(nil) do
    begin
      Connection := dm.YeganehConnection;
      SQL.Text := 'Select dbo.has_WordExcel('+IntToStr(LetterId) + ')';
      open;
      Result := Fields[0].AsInteger;
      free;
    end;
  end;
end;

function Exec_GetExcelId():Integer;
begin
  with TADOQuery.Create(nil) do
   begin
      Connection := dm.YeganehConnection;
      SQL.Text := 'Select dbo.GetExcelId()';
      open;
      Result := Fields[0].AsInteger;
      free;
   end;
end;

function IncommingNoRevers(strSource : String):String;
var
  i : Integer;
  strTarget, strTemp : String;
  List: TStrings;
begin
  List := TStringList.Create;

  strTemp := '';
  for i := 1 to Length(strSource) do
  begin
    if strSource[i] <> ' ' then
    begin
      if strSource[i] in ['/','_','-','.'] then
      begin
        if Length(strTemp) > 0 then
          List.Add(strTemp);
        List.Add(' ' + strSource[i] + ' ');
        strTemp := '';
      end
      else
        strTemp := strTemp + strSource[i];
    end;

  end;

  if Length(strTemp) > 0 then
    List.Add(strTemp);

  strTarget := '';
  for i := List.Count downto 1 do
    strTarget := strTarget + List.Strings[i-1];

  Result := strTarget;
end;

function LetterHasViewDate(LetterId:Integer): boolean;
Var
   ADOSP:TADOStoredProc;
begin
   ADOSP:=TADOStoredProc.create(nil);
   ADOSP.ProcedureName:='LetterHasViewDate';

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftInteger;
      Direction := pdInput;
      Name:='@LetterId';
      Value :=LetterId;
   end;

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftInteger;
      Direction := pdOutput;
      Name:='@res';
   end;

   ADOSP.Connection:=dm.YeganehConnection;
   ADOSP.ExecProc;
   Result := (ADOSP.Parameters.ParamByname('@res').value = 1);
end;

end.
