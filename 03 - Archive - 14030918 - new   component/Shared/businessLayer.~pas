unit BusinessLayer;
interface

uses DB,ADODB,ydbgrid,StdCtrls,Dialogs, Classes, SynGdiPlus, Graphics;

Procedure  Exec_delete_ArchiveFolder(FolderID:integer);
Procedure  Exec_Activate_Recommite(RecommiteID:integer);
Procedure  Exec_update_ReCommites_proceed(RecommiteID:integer;ProceedDate:string;Proceeded:boolean);
Procedure  Exec_delete_LetterArchiveFolder(LetterArchiveID:integer);
Procedure  Exec_Draft_to_SentLetter(LetterID:integer;newInd:integer);

Procedure  Exec_insert_ReCommites(_ID:integer;IsCopy:boolean;LetterID:integer;OrgID:integer;Paraph:widestring;
                                  ParentId:integer;Proceeded:boolean;RecommiteDate:string;_Type:byte;UserID:byte);

Procedure  Exec_min_page(LetterID:integer;var haspage:boolean; var minpage:integer);
Procedure  Exec_update_ArchiveFolder(FolderID:integer;Title:widestring;Notes,Place:widestring);
Procedure  Exec_update_Letter_Finalized(LetterID:integer;Finalized:boolean);
Procedure  Exec_update_ReCommites_viewDate(RecommiteID:integer;ViewDate:string);
Procedure  Exec_delete_Letter(LetterID:integer;newInd:integer);
Procedure  Exec_Select_LetterReCommite(letterID:integer; TypeID: byte);
Procedure  Exec_delete_ReCommites(RecommiteID:integer);
Procedure  Exec_AnswerLetter(AnswerLetterID:integer;LetterID:integer;Today:string);
Procedure  Exec_Insert_LetterText(LetterID:integer;TypeText:Widestring);
Procedure  Exec_insert_Actions(FormTag:byte;Title:widestring;ActionName:String);
Procedure  Exec_Insert_NewActionsAccess;
Procedure  Exec_Delete_Actions_ByFormID(FormTag:byte);
Procedure  Exec_ysp_shrink(dbname:widestring;path:widestring);
Procedure  Exec_ysp_Backup(dbname:widestring;path:widestring);
Procedure  Exec_delete_Accesses(AccessID:byte);
Procedure  Exec_sp_Letter_Numbers(bdate:string;edate:string;SecID:integer;var receivedNum,SentNum,recommitesNum:integer);
Procedure  Exec_Delete_All_Secretariats_Of_User(userid:integer; SecId : Integer);
Procedure  Exec_Delete_All_TemplateGroup_Of_User(userid:integer);
Procedure  Exec_Deleted_to_Letter(LetterID:integer;newInd:integer);
Procedure  Exec_get_FromOrganizationsTitle_byID(_ID:integer; var Title,ResponsibleStaffer,Code:widestring);
Procedure  Exec_update_UserLoginLogout(UserLoginLogoutID:integer;isSafeLogout:boolean);
Procedure  Exec_GetUserLogout_status(UserID:integer;var logout,isSafeLogout:boolean);
Procedure  Exec_Ysp_create_Temp_Database(Path:widestring);
Procedure  Exec_Import_LetterData(LetterDataID:integer);
Procedure  Exec_delete_letterImage(LetterDataID:integer);
Procedure  Exec_Delete_Exported_LetterData(SecretariatID:integer;myear:integer);
Procedure  Exec_Export_LetterData(LetterdataID:integer);
Procedure  Exec_ysp_DELETE_Temp_Database;
Procedure  Exec_Get_FromOrganizations_ByCode(Code:widestring;var _ID:integer; var ResponsibleStaffer:widestring);
Procedure  Exec_insert_UserLog(ActionName:String;LetterID:integer);
Procedure  Exec_delete_LetterWord(LetterID:integer);
Procedure  Exec_sp_Add_GroupRecommite(letterid:integer;_Type:integer;OrgID:integer;Paraph:widestring;RecommiteDate:string;UserID:integer;IsCopy:boolean;Proceeded:boolean;OrgStaff:widestring);
Procedure  Exec_delete_Extention(ExtentionID:integer);
Procedure  Exec_insert_Extention(ExtentionID:integer);
Procedure  Exec_delete_LetterData(LetterDataID:integer);
Procedure  Exec_AnswerNote(recommiteID:integer);
Procedure  Exec_sp_makeRecommited(RecommiteID:integer;staffmemo:widestring;ProceedDate:string);
Procedure  Exec_insertReCommites_autoID(LetterID:integer;_Type:integer;ParentId:integer;OrgID:integer;Paraph:widestring;RecommiteDate:string;UserID:integer;IsCopy:boolean);
Procedure Exec_Insert_LetterDataText(LetterDataID:integer; FileText:Widestring);
procedure LoadColumnTitlesFromDB(FormName : string; var YDBG: TYDBGrid);
procedure SaveColumnTitlesToDB(FormName : string; var YDBG: TYDBGrid);

Function Exec_select_userLoginLogout(bdate:string;edate:string;userid:integer):TADODataSet;
function Exec_insert_UserLoginLogout(UserID:integer;IPAddress:string;aComputerName:String):integer;
function Exec_Folder_hasLetter(Folderid:integer):boolean;
function Exec_UserChange_pass(userID:integer;newPass:widestring):boolean;
Function Get_ArchiveFolder_byArchiveCenterID(ArchiveCenterID,aUserID,aSecID:integer):TADODataSet;
Function Get_ArchiveFolder_byArchiveCenterID_and_Title(ArchiveCenterID:integer;like:widestring):TadoDataset;
Function Exec_get_ArchiveFolder_byUserID_and_Letterid(Letterid:integer;userid:integer) :TAdoDataSet;
function Get_sysAppMessage(MsgID:integer):wideString;
function Exec_Org_HasLetter(orgid:integer):boolean;
function Exec_Folder_hasChild(userid:integer;ParentID:integer):boolean;
function Exec_insert_LetterArchiveFolder(ArchiveFolderID:integer;LetterID:integer;ArchiveDate:string;Page:integer;ArchiveNotes:widestring):integer;
function Exec_insert_ArchiveFolder(ParentFolderID:integer;Title:widestring;UserID:integer;Notes,Place:widestring;ArchiveCenterID:integer):integer;
Function Exec_SaveAs_Accesses(oldaccessID:integer;Title:widestring):integer;
function Exec_insert_ToOrganizations(Title:widestring):integer;
Function Exec_get_LetterID_ByRetroActionNo(RetroActionNo:widestring;LetterFormat:byte;Myear:Integer;SecretariatID:integer):integer;
Function Exec_get_DayID_InWeek:byte;
Function Exec_get_OrgTitleByID(d:integer):widestring;
Function Exec_get_NewOrgID(isInner:boolean):integer;
Function Exec_get_LetterMemo_ByID(LetterID:integer):widestring;
Function Exec_get_LetterDate_ByID(LetterID:integer):widestring;
Function Exec_get_LetterID_ByInCommingNo(InCommingNo:widestring;LetterFormat:byte;Myear:Integer;SecretariatID:integer):integer;
Function Exec_Get_LetterID_ByIndicatorID(indicatrid:integer;letter_type:byte;LetterFormat:byte;Myear:Integer;SecretariatID:integer):integer;
Function Exec_get_LastIndicatorID(letter_type:byte;LetterFormat:byte;Myear:integer;SecretariatID:integer):integer;
Function Exec_get_NowTime:string;
Function Exec_get_NowDate:tdatetime;
Function Exec_get_MaxPage_ByLetterID(extention:byte;letterid:integer):integer;
Function Exec_get_indicatorID_BySentLetterID(SentLetterID:integer):integer;
Function Exec_get_indicatorID_ByLetterID(LetterID:integer):integer;
Function Exec_get_OrgPreCodeByID(d:integer):widestring;
Function Exec_Org_hasChild(ParentID:integer):boolean;
Function Exec_NewRecommiteID(letterID:integer;_Type: integer):integer;
Function Exec_hassame_orgtitle(title:widestring):integer;
function Exec_NumberOfLetter_By_SecID(secID:integer):integer;
function Exec_update_Letter_Indicator(LetterID:integer;NewIndicatorID:integer;NewSecretariatID:integer;NewLetter_Type:integer;Newletterformat:integer;NewRegistrationDate:string):boolean;
Function Exec_get_Letter_ByIndicator(IndicatorID:integer;MYear:integer;SecretariatID:integer;Letter_Type:integer;letterformat:integer):TADODataSet;
function Exec_insert_LetterData(LetterID:Integer;PageNumber:Integer;extention:Integer; Description :WideString = ''; Image : String = ''):Integer;
function Exec_insert_Letter(IndicatorID, MYear, SecretariatID, Letter_Type, letterformat:Integer;Memo:WideString;UserID:Integer;RegistrationDate, RegistrationTime: String;
                            IncommingNO: String = ''; Incommingdate: String = ''; ClassificationID : Integer = 0; UrgencyID : Smallint = 0; NumberOfPage : Integer = 0;
                            ReceiveTypeID : Integer = 0; FromOrgID : Integer = 0; ToOrgID : Integer = 0; Finalized : Boolean = True;
                            Has_Page : Boolean = True; Has_WordPage : Boolean = False; Has_File : Boolean = False):Integer;
function Exec_Get_FromOrganizationsID_ByCode(Code:widestring):integer;
function Exec_update_FromOrganizations_Title(_ID:integer;Newtitle:widestring;NewResponsibleStaffer:widestring):integer;
function Exec_ysp_exists_Temp_Database:boolean;
function Exec_Get_LetterDataIDs(SecretariatID:integer;myear:integer):TADOStoredProc;
function Exec_Get_tmp_LetterDataIDs:TADOStoredProc;
Function Exec_Get_ActiveUser:TADOStoredProc;
function Exec_Recommite_has_JpgFile(RecommiteID:integer):boolean;
function Exec_get_ArchiveFolder_byUserID_and_Place(userID:integer;Place:widestring):integer;
function Exec_NumberOfTemplate_By_TemplateGroupID(TemplateGroupID:integer):integer;
Procedure Exec_TransFer_SendLetter_To_Inner_Secretariat(NewSecID:integer;letterid:integer);
procedure MakeRecommite(Letterformat,Letter_Type,LetterID,FromorgID:integer);
function Exec_Get_innerLetterMemo(Letterid:integer; var memo:widestring):boolean;
function Exec_Org_is_Secretariat(orgid:integer):boolean;
function Exec_Number_Of_Letter_RelatedSecretariatID(RelatedSecretariatID:integer):integer;
function Exec_insert_ReciveLetter(IndicatorID:integer;MYear:integer;SecretariatID:integer;Letter_Type:integer;letterformat:integer;Memo:widestring;UserID:integer;RegistrationDate:string;RegistrationTime:string):integer;
function Exec_Select_recommites_byLetterID(letterId:integer):TADOStoredProc;
function Exec_Get_LastUserId:integer;
function Exec_sp_DelayedLetter(SecretariatID:integer;myear:integer;DeadLine:integer;userID:integer):integer;
function Exec_get_MaxReferenceDataID_By_TableID(tableID:integer):integer;
Procedure Exec_Make_FieldValues_by_LetterID(LetterID:integer);
function EmptyDir(path:string):boolean;
function loadLetterdata(LetterID: integer): Pchar;
Procedure Remove_UserTable_ByLetterID(LetterID:integer);
function Archive_ParentFolders(LetterID:integer):widestring;
function HasSame_Rentertitle(Rentertitle:widestring):integer;
function Get_RentID_ByLetterID(LetterID:integer):integer;
function HasReferenceTableData(TableID:Integer):Integer;

function GetSystemSetting(VariableName:string):Variant;

Procedure SetSystemSetting(VariableName:string;_Value:Variant);
procedure LoadFromFileToMem(const filename:string; memStream:TMemoryStream);
procedure Exec_Script(Sql : String);



implementation

uses Dmu, SysUtils, YShamsiDate , BaseUnit, DBGrids;


procedure Exec_Script(Sql : String);
var
  AQry : TADOQuery;
begin
 AQry := TADOQuery.Create(Nil);
 try
  AQry.Connection := Dm.YeganehConnection;
  AQry.Close;
  AQry.SQL.Text := Sql;
  AQry.ExecSQL;
 finally
  FreeAndNil(AQry);
 end;
end;

function  Get_sysAppMessage(MsgID:integer):wideString;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.Create(nil);
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ProcedureName:='Get_sys_AppMessage';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@ID';
    Value := msgid;
  end;

  try
    ADOSP.Open;
    try
      Result := ADOSP.FieldByname('FarsiMessage').Value;
    except
      result:='„⁄«œ· ›«—”Ì Œÿ«Ì òœ '+IntToStr(MsgID)+ ' œ— »«‰ò «ÿ·«⁄« Ì ‘„« »—Ê“ ‰Ì”  »« ‘—ò    „«” »êÌ—Ìœ'
    end;

  finally
    FreeAndNil(ADOSP);
  end;
end;

Procedure  Exec_delete_LetterWord(LetterID:integer);
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

Procedure  Exec_insert_ReCommites(_ID:integer;IsCopy:boolean;LetterID:integer;OrgID:integer;Paraph:widestring;
ParentId:integer;Proceeded:boolean;RecommiteDate:string;_Type:byte;UserID:byte);
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='insert_ReCommites';

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
    Name:='@ID';
    Value :=_ID;
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
  ADOSP.ProcedureName:='delete_Letter';

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

Procedure  Exec_Select_LetterReCommite(letterID:integer;TypeID: byte);
begin
  with dm,Select_LetterReCommite,parameters do
  begin
    Close;
    ParamByName('@letterID').value:=letterID;
    ParamByName('@Type').value:=TypeID;
    open;
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

Procedure  Exec_AnswerLetter(AnswerLetterID:integer;LetterID:integer;Today:string);
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
    Value :=AnswerLetterID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftstring;;
    Direction := pdInput;
    Name:='@Today';
    Value :=Today;
  end;

  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  FreeAndNil(ADOSP);
end;

Procedure  Exec_Insert_LetterText(LetterID:integer;TypeText:Widestring);
var
   ADOSP:TADOStoredProc;
   s : AnsiString;
   c : AnsiChar;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='insert_LetterText';

  s := ansistring(TypeText);
  c := s[1];
  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@LetterID';
    Value :=LetterID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftWideString;
    Direction := pdInput;
    Name:='@TypeText';
    Value :=TypeText;
  end;

  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  FreeAndNil(ADOSP);
end;

Procedure  Exec_Draft_to_SentLetter(LetterID:integer;newInd:integer);
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Draft_to_SentLetter';

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

Procedure Exec_Deleted_to_Letter(LetterID:integer;newInd:integer);
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

Function Exec_hassame_orgtitle(title:widestring):integer;
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

Function Exec_get_OrgTitleByID(d:integer):widestring;
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
  result:=ADOSP.Parameters.ParamByName('@memo').Value;
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
  Result:=ADOSP.Parameters.ParamByName('@Date').Value;
  FreeAndNil(ADOSP);
end;

Function Exec_get_LetterID_ByInCommingNo(InCommingNo:WideString;LetterFormat:Byte;Myear:Integer;SecretariatID:Integer):Integer;
var
  ADOSP:TADOStoredProc;
begin
try
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='get_LetterID_ByInCommingNo';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftwidestring;;
    Direction := pdInput;
    Name := '@InCommingNo';
    Value := InCommingNo;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name := '@Myear';
    Value := Myear;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name := '@LetterFormat';
    Value := LetterFormat;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name := '@SecretariatID';
    Value := SecretariatID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;;
    Direction := pdoutput;
    Name:='@LetterID';
  end;

  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  result:=ADOSP.Parameters.ParamByName('@LetterID').Value;
  FreeAndNil(ADOSP);
except on E : Exception do
  ShowMessage(E.Message);
end;
end;

Function Exec_Get_LetterID_ByIndicatorID(indicatrid:Integer;letter_type:Byte;LetterFormat:Byte;
                                             Myear:Integer;SecretariatID:Integer):Integer;
var
  ADOSP:TADOStoredProc;
begin

  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='get_LetterID_ByIndicatorID';

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

Function Exec_get_DayID_InWeek:byte;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='get_DayID_InWeek';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdoutput;
    Name:='@DayID';
  end;
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  result:=ADOSP.Parameters.ParamByName('@DayID').Value;
  FreeAndNil(ADOSP);
end;

Function Exec_get_LastIndicatorID(letter_type:Byte;LetterFormat:Byte;Myear:Integer;SecretariatID:Integer):Integer;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='get_LastIndicatorID';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftInteger;
    Direction := pdInput;
    Name:='@letter_type';
    Value :=letter_type;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftInteger;
    Direction := pdInput;
    Name:='@SecretariatID';
    Value :=SecretariatID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftInteger;
    Direction := pdInput;
    Name:='@Myear';
    Value :=Myear;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftInteger;
    Direction := pdInput;
    Name:='@LetterFormat';
    Value :=LetterFormat;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftInteger;
    Direction := pdoutput;
    Name:='@newIndicatorid';
  end;

  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  result:=ADOSP.Parameters.ParamByName('@newIndicatorid').Value;
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
  result:=ADOSP.Parameters.ParamByName('@time').Value;
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
  result:=ADOSP.Parameters.ParamByName('@PageNumber').Value;
  FreeAndNil(ADOSP);
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
  Result:=ADOSP.Parameters.ParamByName('@indicatorID').Value;
  FreeAndNil(ADOSP);
end;

Function Exec_get_indicatorID_ByLetterID(LetterID:integer):integer;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='get_indicatorID_ByLetterID';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@LetterID';
    Value := LetterID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdoutput;
    Name:='@indicatorID';
  end;
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  Result:=ADOSP.Parameters.ParamByName('@indicatorID').Value;
  FreeAndNil(ADOSP);
end;

Function Exec_get_OrgPreCodeByID(d:integer):widestring;
var
  ADOSP:TADOStoredProc;
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
  Result:=ADOSP.Parameters.ParamByName('@PreCode').Value;
  FreeAndNil(ADOSP);
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
  Result:=ADOSP.Parameters.ParamByName('@hasChild').Value;
  FreeAndNil(ADOSP);
end;

Function Exec_get_LetterID_ByRetroActionNo(RetroActionNo:widestring;LetterFormat:byte;Myear:Integer;SecretariatID:integer):integer;
var
  ADOSP:TADOStoredProc;
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
  Result:=ADOSP.Parameters.ParamByName('@LetterID').Value;
  FreeAndNil(ADOSP);
end;

function Exec_insert_ToOrganizations(Title:widestring):integer;
var
  ADOSP:TADOStoredProc;
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
  FreeAndNil(ADOSP);
end;

Function Exec_get_Nowdate:TDateTime;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='get_Nowdate';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftDateTime;
    Direction := pdOutput;
    Name:='@date';
  end;
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  Result:=ADOSP.Parameters.ParamByName('@date').Value;
  FreeAndNil(ADOSP);
end;

Procedure  Exec_Insert_NewActionsAccess;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Insert_NewActionsAccess';
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  FreeAndNil(ADOSP);
end;

function  Exec_Select_recommites_byLetterID(letterId:integer):TADOStoredProc;
var
  ADOSP:TADOStoredProc;
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

Procedure  Exec_Delete_Actions_ByFormID(FormTag:byte);
var
  ADOSP:TADOStoredProc;
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
  FreeAndNil(ADOSP);
end;

procedure  Exec_insert_Actions(FormTag:byte;Title:widestring;ActionName:String);
Var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Insert_Actions';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@FormTag';
    Value :=FormTag;
  end;

   {Ranjbar 89.06.06 ID=3}
   {with ADOSP.Parameters.AddParameter do
    begin
       DataType := ftinteger;
       Direction := pdInput;
       Name:='@ID';
       Value :=_ID;
    end;}

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftString;
    Direction := pdInput;
    Name:='@ActionName';
    Value :=ActionName;
  end;
   //---
  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftwidestring;
    Direction := pdInput;
    Name:='@Title';
    Value :=Title;
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
  Result:=ADOSP.Parameters.ParamByName('@newID').Value;
  FreeAndNil(ADOSP);
end;

//Å‘ Ì»«‰ êÌ—Ì «“ »«‰ﬂ «ÿ·«⁄« Ì
Procedure  Exec_ysp_Backup(dbname:widestring;path:widestring);
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='ysp_Backup';
  ADOSP.CommandTimeout:=3000000;

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
  FreeAndNil(ADOSP);
end;

Procedure  Exec_ysp_shrink(dbname:widestring;path:widestring);
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='ysp_shrink';

{  with ADOSP.Parameters.AddParameter do
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
    end;    }
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.CommandTimeout:=6000;
  ADOSP.ExecProc;
  FreeAndNil(ADOSP);
end;

Procedure  Exec_delete_Accesses(AccessID:byte);
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='delete_Accesses';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@AccessID';
    Value :=AccessID;
  end;
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  FreeAndNil(ADOSP);
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
  recommitesNum:=ADOSP.Parameters.ParamByName('@recommitesNum').Value;
  FreeAndNil(ADOSP);
end;

function Exec_Org_HasLetter(orgid:integer):boolean;
var
  ADOSP:TADOStoredProc;
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
  Result:=adosp.Parameters.ParamByName('@count').Value>0;
  FreeAndNil(ADOSP);
end;

Procedure  delete_ArchiveFolder(FolderID:integer);
var
  ADOSP:TADOStoredProc;
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
  FreeAndNil(ADOSP);
end;

Procedure  Exec_delete_ArchiveFolder(FolderID:integer);
var
  ADOSP:TADOStoredProc;
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
  FreeAndNil(ADOSP);
end;

Procedure  Exec_delete_LetterArchiveFolder(LetterArchiveID:integer);
var
  ADOSP:TADOStoredProc;
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
  FreeAndNil(ADOSP);
end;

function Exec_insert_ArchiveFolder(ParentFolderID:integer;Title:widestring;UserID:integer;Notes,Place:widestring;ArchiveCenterID:INTEGER):integer;
var
  ADOSP:TADOStoredProc;
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
    Name:='@UserID';
    Value := UserId;
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

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@ArchiveCenterID';
    Value :=ArchiveCenterID;
   end;

  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  Result:=ADOSP.Parameters.ParamByname('@FolderID').value;
  FreeAndNil(ADOSP);
end;

function Exec_insert_LetterArchiveFolder(ArchiveFolderID:integer;LetterID:integer;ArchiveDate:string;Page:integer;ArchiveNotes:widestring):integer;
var
  ADOSP:TADOStoredProc;
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

  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  Result:=ADOSP.Parameters.ParamByname('@LetterArchiveID').value;
  FreeAndNil(ADOSP);
end;

Procedure  Exec_Insert_LetterDataText(LetterDataID:integer; FileText:Widestring);
var
  ADOSP:TADOStoredProc;
  TextPart, Reverse : string;
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
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
    FreeAndNil(ADOSP);
  end;
end;

function Exec_Folder_hasChild(userid:integer;ParentID:integer):boolean;
var
  ADOSP:TADOStoredProc;
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

Function Get_ArchiveFolder_byArchiveCenterID(ArchiveCenterID,aUserID,aSecID:integer):TADODataSet;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP := TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_ArchiveFolder_byArchiveCenterID';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftInteger;
    Direction := pdInput;
    Name := '@ArchiveCenterID';
    Value := ArchiveCenterID;
  end;

   {Ranjbar 89.06.30 ID=23}
  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftInteger;
    Direction := pdInput;
    Name := '@userID';
    Value := aUserID;
  end;
   //---

   // Amin 1391/09/13 Start
  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftInteger;
    Direction := pdInput;
    Name := '@SecID';
    Value := aSecID;
  end;
   // Amin 1391/09/13 End

  ADOSP.Connection := Dm.YeganehConnection;
  ADOSP.Open;
  Result := TADODataSet(ADOSP);
  Sleep(50);
end;

Procedure Exec_min_page(LetterID:integer;var haspage:boolean; var minpage:integer);
var
  ADOSP:TADOStoredProc;
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
  FreeAndNil(ADOSP);
end;

function Exec_UserChange_pass(userID:integer;newPass:widestring):boolean;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='UserChange_pass';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftInteger;
    Direction := pdInput;
    Name:='@userID';
    Value :=userID;
  end;

{  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@oldPass';
      size:= 200;
      Value :=oldPass;

    end;  }

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftWideString;
    Direction := pdInput;
    Name:='@newPass';
    size:= 200;
    Value :=newPass;
  end;

 { with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftboolean;
      Direction := pdoutput;
      Name:='@result';
    end;  }
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  FreeAndNil(ADOSP);
 {  Result:=ADOSP.Parameters.ParamByname('@result').value;    }
end;

Function Exec_get_ArchiveFolder_byUserID_and_Letterid(Letterid:integer;userid:integer) :TAdoDataSet;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP := TADOStoredProc.create(nil);
  ADOSP.ProcedureName := 'Get_ArchiveFolder_byUserID_and_Letterid';
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
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.Open;
  Result := TADODataSet(ADOSP);
end;

Function Get_ArchiveFolder_byArchiveCenterID_and_Title(ArchiveCenterID:integer;like:widestring):TAdoDataSet;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_ArchiveFolder_byArchiveCenterID_and_Title';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@ArchiveCenterID';
    Value :=ArchiveCenterID;
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
  ADOSP.Open;
  Result:=TADODataSet(ADOSP);
end;

Procedure  Exec_update_ArchiveFolder(FolderID:integer;Title:widestring;Notes,Place:widestring);
var
  ADOSP:TADOStoredProc;
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
  FreeAndNil(ADOSP);
end;

function Exec_Folder_hasLetter(Folderid:integer):boolean;
var
  ADOSP:TADOStoredProc;
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
  FreeAndNil(ADOSP);
end;

function Exec_Number_Of_Letter_RelatedSecretariatID(RelatedSecretariatID:integer):integer;
var
  ADOSP:TADOStoredProc;
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
  FreeAndNil(ADOSP);
end;

function Exec_NumberOfLetter_By_SecID(secID:integer):integer;
var
  ADOSP:TADOStoredProc;
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
  FreeAndNil(ADOSP);
end;

Procedure  Exec_Delete_All_Secretariats_Of_User(userid:integer; SecId:Integer);
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Delete_All_Secretariats_Of_User';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@UserId';
    Value :=userid;
  end;

  //Add Sanaye 941121
  //«ÌÃ«œ ”ÿÕ œ” —”Ì »—ÊÌ »«Ìê«‰Ì
  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@SecId';
    Value :=SecId;
  end;
  //End Sanaye...

  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  FreeAndNil(ADOSP);
end;

Procedure  Exec_Delete_All_TemplateGroup_Of_User(userid:integer);
var
  ADOSP:TADOStoredProc;
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
  FreeAndNil(ADOSP);
end;

Function  Exec_get_Letter_ByIndicator(IndicatorID:integer;MYear:integer;SecretariatID:integer;Letter_Type:integer;letterformat:integer):TADODataSet;
var
  ADOSP:TADOStoredProc;
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
var
  ADOSP:TADOStoredProc;
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
  FreeAndNil(ADOSP);
end;

function Exec_insert_Letter(IndicatorID, MYear, SecretariatID, Letter_Type, letterformat:Integer;
                            Memo:WideString;UserID:Integer;RegistrationDate, RegistrationTime: String; IncommingNO: String = ''; Incommingdate: String = '';
                            ClassificationID : Integer = 0;UrgencyID : Smallint = 0; NumberOfPage : Integer = 0; ReceiveTypeID : Integer = 0; FromOrgID : Integer = 0;
                            ToOrgID : Integer = 0; Finalized : Boolean = True; Has_Page : Boolean = True; Has_WordPage : Boolean = False; Has_File : Boolean = False):Integer;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP := TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='insert_Letter';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftInteger;
    Direction := pdoutput;
    Name := '@letterID';
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftInteger;
    Direction := pdInput;
    Name := '@IndicatorID';
    Value := IndicatorID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftInteger;
    Direction := pdInput;
    Name := '@MYear';
    Value := MYear;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftInteger;
    Direction := pdInput;
    Name := '@SecretariatID';
    Value := SecretariatID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftInteger;
    Direction := pdInput;
    Name := '@Letter_Type';
    Value := Letter_Type;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftInteger;
    Direction := pdInput;
    Name := '@letterformat';
    Value := letterformat;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftWideString;
    Direction := pdInput;
    Name := '@Memo';
    size := 2000;
    Value := Memo;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftInteger;
    Direction := pdInput;
    Name := '@UserID';
    Value := UserID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftString;
    Direction := pdInput;
    Name := '@RegistrationDate';
    size := 10;
    Value := RegistrationDate;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftString;
    Direction := pdInput;
    Name := '@RegistrationTime';
    size := 5;
    Value := RegistrationTime;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftString;
    Direction := pdInput;
    Name := '@IncommingNO';
    size := 50;
    Value :=IncommingNO;
  end;

  if Trim(Incommingdate) = '' then
    Incommingdate := _Today;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftString;
    Direction := pdInput;
    Name := '@Incommingdate';
    size := 10;
    Value := Incommingdate;
  end;

  if (ClassificationID = 0) then
    ClassificationID := Dm.DefaultRClassificationID;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftInteger;
    Direction := pdInput;
    Name := '@ClassificationID';
    Value := ClassificationID;
  end;

  if (UrgencyID = 0) then
    UrgencyID := Dm.DefaultRUrgencyID;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftSmallint;
    Direction := pdInput;
    Name := '@UrgencyID';
    Value := UrgencyID;
  end;


  if (NumberOfPage = 0) then
    NumberOfPage := Dm.DefaultNumberOfPage;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftInteger;
    Direction := pdInput;
    Name := '@NumberOfPage';
    Value := NumberOfPage;
  end;


  if (ReceiveTypeID = 0) then
    ReceiveTypeID := Dm.DefaultRReceiveTypeID;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftInteger;
    Direction := pdInput;
    Name := '@ReceiveTypeID';
    Value := ReceiveTypeID;
  end;


  if (FromOrgID = 0) then
    FromOrgID := Dm.DefaultRFromOrgId;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftInteger;
    Direction := pdInput;
    Name := '@FromOrgID';
    Value := FromOrgID;
  end;


  if (ToOrgID = 0) then
    ToOrgID := _UserFromOrgID;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftInteger;
    Direction := pdInput;
    Name := '@ToOrgID';
    Value := ToOrgID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftBoolean;
    Direction := pdInput;
    Name := '@Finalized';
    Value := Finalized;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftBoolean;
    Direction := pdInput;
    Name := '@Has_Page';
    Value := Has_Page;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftBoolean;
    Direction := pdInput;
    Name := '@Has_WordPage';
    Value := Has_WordPage;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftBoolean;
    Direction := pdInput;
    Name := '@Has_File';
    Value := Has_File;
  end;

  ADOSP.Connection := dm.YeganehConnection;
  ADOSP.ExecProc;
  Result := ADOSP.Parameters.ParamByname('@letterID').value;
  FreeAndNil(ADOSP);

end;

function Exec_insert_LetterData(LetterID:Integer;PageNumber:Integer;extention:Integer; Description :WideString = ''; Image : String = ''):Integer;
var
  ADOSP:TADOStoredProc;
  //MemStream: TMemoryStream;
  strName : String;
  FS:TFileStream;
  MS:TMemoryStream;
  AvailableSize, ReadNow:Int64;
  Sequence:Integer;
  m_bitmap : TBitmap;
const MaxPerSequence = 10 * 1024 * 1024;
begin
  try
    ADOSP:=TADOStoredProc.create(nil);
    ADOSP.ProcedureName:='insert_LetterData';
    ADOSP.Parameters.Clear;

    with ADOSP.Parameters.AddParameter do
    begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name := '@LetterDataID';
    end;

    with ADOSP.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdInput;
      Name := '@LetterID';
      Value := LetterID;
    end;

    with ADOSP.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdInput;
      Name := '@PageNumber';
      Value := PageNumber;
    end;

    with ADOSP.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdInput;
      Name := '@extention';
      Value := extention;
    end;

    with ADOSP.Parameters.AddParameter do
    begin
      DataType := ftWideString;
      Direction := pdInput;
      Name := '@Description';
      Value := Description;
    end;

    if Trim(Image) <> '' then
    begin
    ////////////////////////////////////////////////////
       {

    FS := TFileStream.Create(Image, fmOpenRead);
    try
      AvailableSize := FS.Size;
      Sequence := 0;
      while AvailableSize > 0 do
      begin
        if AvailableSize > MaxPerSequence then
          begin
            ReadNow := MaxPerSequence;
            Dec(AvailableSize, MaxPerSequence);
          end
        else
          begin
            ReadNow := AvailableSize;
            AvailableSize := 0;
          end;
        Inc(Sequence); // Prep sequence; First sequence into DB will be "1"
        MS := TMemoryStream.Create;
        try
          MS.CopyFrom(FS, ReadNow);

          with ADOSP.Parameters.AddParameter do
          begin
            DataType := ftVarBytes;
            Direction := pdInput;
            Name := '@Image';
            LoadFromStream(MS, ftBlob);
          end;

          //sqlInsertDoc.ParamByName('ID_DOC_FILE').AsInteger := id_doc;
          //sqlInsertDoc.ParamByName('SEQUENCE').AsInteger := sequence;
          //sqlInsertDoc.ParamByName('DOCUMENT').LoadFromStream(MS, ftblob);
          //sqlInsertDoc.Execute;

        finally MS.Free;
        end;
      end;
    finally FS.Free;
    end;

    //sqlInsertDoc.Close;

      }



      //MemStream := TMemoryStream.Create;
      try
        //LoadFromFileToMem(Image, MemStream);
        //MemStream.Position := 0;
        //MemStream.Seek(0, soFromBeginning);

        strName := GetEnvironmentVariable('TEMP') + '\Temp' + ExtractFileExt(Image);

        if FileExists(strName) then
          DeleteFile(strName);

          m_bitmap := SynGdiPlus.LoadFrom(Image);
          if (m_bitmap = nil) then
          begin
            with ADOSP.Parameters.AddParameter do
            begin
              DataType := ftVarBytes;
              Direction := pdInput;
              Name := '@Image';
              LoadFromFile(Image, ftBlob);
            end;
          end
          else
          begin
            SynGDIPlus.SaveAs(m_bitmap, strName, gptTIF);
            with ADOSP.Parameters.AddParameter do
            begin
              DataType := ftVarBytes;
              Direction := pdInput;
              Name := '@Image';
              LoadFromFile(strName, ftBlob);
            end;
          end;
          FreeAndNil(m_bitmap);

      except on E : Exception do
        begin
          ShowMessage('Exception LetterData 2 = ' + E.Message);
        end;
      end;
    ////////////////////////////////////////////////////
    end
    else
    begin
      with ADOSP.Parameters.AddParameter do
      begin
        DataType := ftVarBytes;
        Direction := pdInput;
        Name := '@Image';
        Value := '';
      end;
    end;


    ADOSP.Connection := dm.YeganehConnection;
    ADOSP.CommandTimeout := 20000;
    ADOSP.CursorLocation := clUseServer;
    ADOSP.Prepared := True;
    ADOSP.ExecProc;
    Result := ADOSP.Parameters.ParamByname('@LetterDataID').value;
    FreeAndNil(ADOSP);
  except on E : Exception do
    begin
      ShowMessage('Exception LetterData = ' + E.Message);
    end;
  end;

end;

function Exec_Get_FromOrganizationsID_ByCode(Code:WideString):Integer;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP := TADOStoredProc.create(nil);
  ADOSP.ProcedureName := 'Get_FromOrganizationsID_ByCode';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftwidestring;
    Direction := pdInput;
    Name := '@Code';
    size := 20;
    Value := Code;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdoutput;
    Name := '@ID';
  end;

  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  Result:=ADOSP.Parameters.ParamByname('@ID').value;
  FreeAndNil(ADOSP);
end;

function Exec_update_FromOrganizations_Title(_ID:integer;Newtitle:widestring;NewResponsibleStaffer:widestring):integer;
var
  ADOSP:TADOStoredProc;
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
  FreeAndNil(ADOSP);
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
  ResponsibleStaffer := ADOSP.Parameters.ParamByname('@ResponsibleStaffer').value;
  Code:=ADOSP.Parameters.ParamByname('@Code').value;
  FreeAndNil(ADOSP);
end;

Procedure  Exec_GetUserLogout_status(UserID:integer;var logout,isSafeLogout:boolean);
var
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
  FreeAndNil(ADOSP);
end;

Procedure  Exec_update_UserLoginLogout(UserLoginLogoutID:integer;isSafeLogout:boolean);
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
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  FreeAndNil(ADOSP);
end;

{Ranjbar 89.05.27 ID=41}
function Exec_insert_UserLoginLogout(UserID:Integer;IPAddress:String;aComputerName:String):Integer;
var
  ADOSP:TADOStoredProc;
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

   {Ranjbar 89.05.27 ID=41}
  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftstring;
    Direction := pdInput;
    Name:='@ComputerName';
    size:= 30;
    Value := aComputerName;
  end;
   //---
  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdoutput;
    Name:='@UserLoginLogoutID';
  end;

  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;

  Result:=ADOSP.Parameters.ParamByname('@UserLoginLogoutID').value;
  FreeAndNil(ADOSP);
end;

Function  Exec_select_userLoginLogout(bdate:string;edate:string;userid:integer):TADODataSet;
var
  ADOSP:TADOStoredProc;
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

Procedure Exec_Delete_Exported_LetterData(SecretariatID:Integer;myear:Integer);
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Delete_Exported_LetterData';
  ADOSP.CommandTimeout:=3000000;

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
  FreeAndNil(ADOSP);
end;

Procedure Exec_Export_LetterData(LetterdataID:integer);
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Export_LetterData';
  ADOSP.CommandTimeout:=3000000;
  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@LetterdataID';
    Value :=LetterdataID;
  end;
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  //FreeAndNil(ADOSP);
end;

Procedure  Exec_Ysp_create_Temp_Database(Path:widestring);
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Ysp_create_Temp_Database';
  ADOSP.CommandTimeout:=3000000;

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
  ADOSP.CommandTimeout:=3000000;

    ADOSP.Connection:=dm.YeganehConnection; 
    ADOSP.ExecProc;    

end;



function Exec_ysp_exists_Temp_Database:boolean;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='ysp_exists_Temp_Database';
   ADOSP.CommandTimeout:=3000000;

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
  ADOSP.CommandTimeout:=3000000;

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
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.CommandTimeout:=3000000;
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
Procedure  Exec_Insert_UserLog(ActionName:String;LetterID:integer);
 var ADOSP:TADOStoredProc;
begin
  if not dm.Insert_Log then
     Exit;
  Try
     Try
        ADOSP:=TADOStoredProc.create(nil);
        ADOSP.ProcedureName:='Insert_UserLog';

        with ADOSP.Parameters.AddParameter do
            begin
            DataType := ftinteger;
            Direction := pdInput;
            Name:='@UserID';
            Value :=_userid;
          end;

        with ADOSP.Parameters.AddParameter do
            begin
            DataType := ftString;
            Direction := pdInput;
            {Ranjbar 89.06.06 ID=0}
            {Name:='@ActionID';
            Value :=ActionID;}
            Name:='@ActionName';
            Value :=ActionName;
            //---
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
     Except
         MBaseForm.MessageShowString('"UserLog" «‘ﬂ«· œ— –ŒÌ—Â «ÿ·«⁄«  œ— ÃœÊ· »Ì·«‰ ﬂ«—Ì', False);
     End;

  Finally
      ADOSP.Close;
      ADOSP.free;
  End;
end;

Procedure  Exec_sp_Add_GroupRecommite(letterid:integer;_Type:integer;OrgID:integer;Paraph:widestring;RecommiteDate:string;UserID:integer;IsCopy:boolean;Proceeded:boolean;OrgStaff:widestring);
 var ADOSP:TADOStoredProc;  
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

end;

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
    ADOSP.Connection:=dm.YeganehConnection; 
    ADOSP.ExecProc;    
   try Result:=ADOSP.Parameters.ParamByname('@FolderID').value; except Result:=0 end;
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
Procedure  Exec_update_ReCommites_proceed(RecommiteID:integer;ProceedDate:string;Proceeded:boolean);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='update_ReCommites_proceed';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;;
      Direction := pdInput;
      Name:='@RecommiteID';
      Value :=RecommiteID;
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftboolean;;
      Direction := pdInput;
      Name:='@Proceeded';
      Value :=Proceeded;
    end;
  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;;
      Direction := pdInput;
      Name:='@ProceedDate';
      Value :=ProceedDate;
    end;



    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
end;

Procedure  Exec_insertReCommites_autoID(LetterID:integer;_Type:integer;ParentId:integer;OrgID:integer;Paraph:widestring;RecommiteDate:string;UserID:integer;IsCopy:boolean);
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
    ADOSP.Connection:=dm.YeganehConnection; 
    ADOSP.ExecProc;    

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
Procedure  Exec_update_Letter_Finalized(LetterID:integer;Finalized:boolean);
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
      Value :=Finalized;

    end;
    ADOSP.Connection:=dm.YeganehConnection; 
    ADOSP.ExecProc;    

end;
Procedure  Exec_TransFer_SendLetter_To_Inner_Secretariat(NewSecID:integer;letterid:integer);
 var ADOSP:TADOStoredProc;  
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='TransFer_SendLetter_To_Inner_Secretariat';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@NewSecID';
      Value :=NewSecID;

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

end;


procedure MakeRecommite(Letterformat,Letter_type,LetterID,FromorgID:integer);
var memo:string;
begin
   memo:='«ÌÃ«œ ”‰œ ';

   if Letterformat=2 then
 Exec_insert_ReCommites(1,false,LetterID,_UserFromOrgID,memo,0,false,_Today,3,_userid)
 else
 Exec_insert_ReCommites(1,false,LetterID,FromorgID,memo,0,Letter_Type=2,_Today,3,_userid)

end;

function Exec_Get_innerLetterMemo(Letterid:integer; var memo:widestring):boolean;
 var ADOSP:TADOStoredProc;  
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
 var ADOSP:TADOStoredProc;  
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

function Exec_insert_ReciveLetter(IndicatorID:integer;MYear:integer;SecretariatID:integer;Letter_Type:integer;letterformat:integer;Memo:widestring;UserID:integer;RegistrationDate:string;RegistrationTime:string):integer;
 var ADOSP:TADOStoredProc;  
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
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@letterID').value;
end;



function Exec_Get_LastUserId:integer;
 var ADOSP:TADOStoredProc;
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
   Result:=ADOSP.Parameters.ParamByname('@id').value;
end;


function  Exec_sp_DelayedLetter(SecretariatID:integer;myear:integer;DeadLine:integer;userID:integer):integer;
 var ADOSP:TADOStoredProc;  
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
    ADOSP.Connection:=dm.YeganehConnection; 
    ADOSP.open;
    Result:=ADOSP.Fields[0].AsInteger;
end;


function Exec_get_MaxReferenceDataID_By_TableID(tableID:integer):integer;
 var ADOSP:TADOStoredProc;  
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



Procedure  Exec_Make_FieldValues_by_LetterID(LetterID:integer);
 var ADOSP:TADOStoredProc;
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
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;
function EmptyDir(path:string):boolean;
var FileName: string;
  sr: TSearchRec;
  FileAttrs: Integer;
begin
 Result:=True;
FileName:=path + '\*.*';
  FileAttrs := 0;

  if FindFirst(fileName, FileAttrs, sr) = 0 then
      repeat
       try
       if not DeleteFile(path + '\'+ sr.Name) then result:=false except end;
      until FindNext(sr) <> 0;


 FindClose(sr);
end;

function loadLetterdata(LetterID: integer): Pchar;
begin
   with dm,Get_LetterData_by_LetterID do
   begin
      Close;
      Parameters.ParamByName('@LetterID').Value:=LetterID;
      Open;
   end;
   
   with dm,Get_LetterData_by_LetterDataID do
   begin
      close;
      Parameters.ParamByName('@LetterdataID').Value:=Get_LetterData_by_LetterIDLetterDataID.Value;
      Open;
      Get_LetterData_by_LetterDataIDImage.SaveToFile(_TempPath +'temp'+dm.Get_LetterData_by_LetterIDLetterDataID.AsString+'.'+dm.Get_LetterData_by_LetterIDExt.AsString);
      Result:=pchar(_TempPath +'temp'+dm.Get_LetterData_by_LetterIDLetterDataID.AsString+'.'+dm.Get_LetterData_by_LetterIDExt.AsString);
   end;

end;


Procedure  Remove_UserTable_ByLetterID(LetterID:integer);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Remove_UserTable_ByLetterID';

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

function Archive_ParentFolders(LetterID:integer):widestring;
var
  ADOSP:TADOStoredProc;
begin

  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Archive_ParentFolders';

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
    Value :=0;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftwidestring;
    Direction := pdoutput;
    Name:='@result';
    size:= 8000;
  end;

  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  Result:=ADOSP.Parameters.ParamByname('@result').value;
end;

function HasSame_Rentertitle(Rentertitle:widestring):integer;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='HasSame_Rentertitle';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@Rentertitle';
      size:= 510;
      Value :=Rentertitle;

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

function Get_RentID_ByLetterID(LetterID:integer):integer;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_RentID_ByLetterID';

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
      Name:='@RentID';
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@RentID').value;
end;

procedure LoadColumnTitlesFromDB(FormName : string; var YDBG: TYDBGrid);
var
   i: integer;
   ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='SelectAppColumns';

  with ADOSP.Parameters.AddParameter do
  begin
      DataType := ftString;
      Direction := pdInput;
      Name:='@formName';
      Value :=FormName;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
      DataType := ftString;
      Direction := pdInput;
      Name:='@gridName';
      Value :=YDBG.Name;
  end;

  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.Open;
   for i := 0 to YDBG.Columns.Count -1 do
   begin
      ADOSP.Filter := ' ColumnEngName = '''+ YDBG.Columns.Items[i].FieldName+'''';
      ADOSP.Filtered := true;
      if adosp.RecNo>0 then
         YDBG.Columns.Items[i].Title.Caption := ADOSP.fieldbyName('ColumnFarsiTitle').AsString;
   end;
end;

procedure SaveColumnTitlesToDB(FormName : string; var YDBG: TYDBGrid);
var
   i : integer;
   ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='SelectAppColumns';

  with ADOSP.Parameters.AddParameter do
  begin
      DataType := ftString;
      Direction := pdInput;
      Name:='@formName';
      Value :=FormName;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
      DataType := ftString;
      Direction := pdInput;
      Name:='@gridName';
      Value :=YDBG.Name;
  end;

  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.Open;

   for i := 0 to YDBG.Columns.Count -1 do
   begin
      ADOSP.Filter := ' ColumnEngName = '''+ YDBG.Columns.Items[i].FieldName+'''';
      ADOSP.Filtered := true;
      if adosp.RecNo>0 then
      begin
         ADOSP.Edit;
         ADOSP.fieldbyName('ColumnFarsiTitle').Value := YDBG.Columns.Items[i].Title.Caption;
         ADOSP.Post;
      end
      else
      begin
         ADOSP.Insert;
         ADOSP.fieldbyName('ColumnFarsiTitle').Value := YDBG.Columns.Items[i].Title.Caption;
         ADOSP.fieldbyName('ColumnEngName').Value := YDBG.Columns.Items[i].FieldName;
         ADOSP.fieldbyName('GridID').Value := dm.YeganehConnection.Execute('SELECT GRIDID from AppGrids WHERE gridName='''+YDBG.Name+''' AND formTag IN(SELECT formTag FROM AppForms WHERE FormEngName = '''+FormName+''')').Fields[0].Value;
         ADOSP.Post;
      end;
   end;
end;

function GetSystemSetting(VariableName:string):Variant;
 var ADOSP:TADOStoredProc;
 QRY : TADOQuery;
 begin
  QRY := TADOQuery.Create(NIL);
  QRY.Connection:=dm.YeganehConnection;
  QRY.SQL.Clear;
  QRY.SQL.Add('IF EXISTS ( SELECT  *                                                    ');
  QRY.SQL.Add('            FROM    sys.objects                                          ');
  QRY.SQL.Add('            WHERE   object_id = OBJECT_ID(N''[dbo].[GetSystemSetting]'') ');
  QRY.SQL.Add('                    AND TYPE IN ( N''P'', N''PC'' ) )                    ');
  QRY.SQL.Add('    DROP PROCEDURE [dbo].[GetSystemSetting]                              ');
  QRY.ExecSQL;

  QRY.SQL.Clear;
  QRY.SQL.Add('CREATE PROCEDURE [dbo].[GetSystemSetting]              ');
  QRY.SQL.Add('@VariableName varchar(50),@Value nvarchar(255)  output ');
  QRY.SQL.Add('AS                                                     ');
  QRY.SQL.Add('exec GetUserSetting -1,@VariableName,@value output     ');
  QRY.ExecSQL;

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
    ADOSP.Connection:=dm.YeganehConnection;
    //ShowMyMessage('',dm.YeganehConnection.ConnectionString,mbOKCancel,mtError);
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@Value').value;
   if Result='Not Found' then
    begin
//      ShowMessage('???? ????!'+VariableName+ '????? ?????? ?????? ' );
    Result:='0';
    end;
end;


Procedure  SetSystemSetting(VariableName:string;_Value:Variant);
 var ADOSP:TADOStoredProc;
 QRY : TADOQuery;
 begin
  QRY := TADOQuery.Create(NIL);
  QRY.Connection:=dm.YeganehConnection;

{----------------------------- SetUserSetting ------------------------------------------------------}
  QRY.SQL.Clear;
  QRY.SQL.Add('IF EXISTS ( SELECT  *                                                    ');
  QRY.SQL.Add('            FROM    sys.objects                                          ');
  QRY.SQL.Add('            WHERE   object_id = OBJECT_ID(N''[dbo].[SetUserSetting]'')   ');
  QRY.SQL.Add('                    AND TYPE IN ( N''P'', N''PC'' ) )                    ');
  QRY.SQL.Add('    DROP PROCEDURE [dbo].[SetUserSetting]                                ');
  QRY.ExecSQL;

  QRY.SQL.Clear;
  QRY.SQL.Add('CREATE PROCEDURE [dbo].[SetUserSetting]                                                           ');
  QRY.SQL.Add('@UserID  int ,@VariableName varchar(50),@Value nvarchar(255)                                     ');
  QRY.SQL.Add('AS                                                                                               ');
  QRY.SQL.Add('	DELETE FROM Settings WHERE  (UserID = @UserID) AND (VariableName = LTRIM(RTRIM(@VariableName))) ');
  QRY.SQL.Add('	insert into Settings(UserID,VariableName,Value) values(@UserID,@VariableName,@Value)            ');
  QRY.SQL.Add('	Update Settings                                                                                 ');
  QRY.SQL.Add('	set Value=@Value                                                                                ');
  QRY.SQL.Add('	WHERE     (UserID = @UserID) AND (VariableName = @VariableName)                                 ');
  QRY.ExecSQL;
{---------------------------------------------------------------------------------------------------}

{----------------------------- SetSystemSetting ----------------------------------------------------}
  QRY.SQL.Clear;
  QRY.SQL.Add('IF EXISTS ( SELECT  *                                                    ');
  QRY.SQL.Add('            FROM    sys.objects                                          ');
  QRY.SQL.Add('            WHERE   object_id = OBJECT_ID(N''[dbo].[SetSystemSetting]'') ');
  QRY.SQL.Add('                    AND TYPE IN ( N''P'', N''PC'' ) )                    ');
  QRY.SQL.Add('    DROP PROCEDURE [dbo].[SetSystemSetting]                              ');
  QRY.ExecSQL;

  QRY.SQL.Clear;
  QRY.SQL.Add('CREATE PROCEDURE [dbo].[SetSystemSetting]              ');
  QRY.SQL.Add('@VariableName varchar(50),@Value nvarchar(255)         ');
  QRY.SQL.Add('AS                                                     ');
  QRY.SQL.Add('exec SetUserSetting -1 ,@VariableName ,@Value          ');
  QRY.ExecSQL;
{---------------------------------------------------------------------------------------------------}



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
end;

procedure LoadFromFileToMem(const filename:string; memStream:TMemoryStream);
var
  afileStream:TFileStream;
begin
  afileStream:=TFileStream.Create(filename,fmOpenRead);
  try
    memStream.CopyFrom(afileStream, afileStream.Size);
  finally
    afileStream.Free;
  end;
end;

function HasReferenceTableData(TableID:Integer):Integer;
var
  ADOSP : TADOStoredProc;
begin
  ADOSP := TADOStoredProc.create(nil);
  ADOSP.ProcedureName := 'HasReferenceTableData';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftInteger;
    Direction := pdInput;
    Name := '@TableId';
    Value := TableID
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftInteger;
    Direction := pdoutput;
    Name := '@Has';
  end;

  ADOSP.Connection := dm.YeganehConnection;
  ADOSP.ExecProc;
  Result := ADOSP.Parameters.parambyname('@Has').Value;
  FreeAndNil(ADOSP);
end;


end.
