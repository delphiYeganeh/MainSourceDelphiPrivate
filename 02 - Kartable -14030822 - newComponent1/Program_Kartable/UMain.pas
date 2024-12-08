unit UMain;

interface
uses shellapi, forms, BaseUnit, ExtCtrls, Menus, ExtActns, BandActn, Classes, SysUtils, StdCtrls, Dialogs,
  ActnList, ActnMan, ToolWin, ActnCtrls, Controls, ComCtrls, ADODB, Grids, Variants, DB, DBGrids, shlobj,
  QuickRpt, QRCtrls, ComObj, OleServer, Wordxp, XPStyleActnCtrls, ActnMenus, graphics, windows, dateutils,
  Buttons, uCiaTrayIcon, Registry, Math, StdStyleActnCtrls, frxClass, wwriched, RpDefine, RpRender, RpRenderPDF,
  OleCtnrs, OleCtrls, U_SHOW_ATF_PEYRO_FRM, U_VERSION_INFO_FRM, U_SEE_PAYVAST_ERJA_FRM, frmmain;

type
  {Ranjbar}
  TReportType = (rtShow , rtPrint , rtDesign);
  TMainForm = class(TMBaseForm)
    MainActionManager: TActionManager;
    Arecommite: TAction;
    Aclose: TAction;
    AChangeColor: TAction;
    AAnswer: TAction;
    AFollow: TAction;
    AretroAction: TAction;
    AviewAllletter: TAction;
    AUserSetting: TAction;
    Apicture: TAction;
    Aspace: TAction;
    Arefresh: TAction;
    AAbout: TAction;
    pnlAction: TPanel;
    ActionToolBar1: TActionToolBar;
    AEdit: TAction;
    ChangeYear: TAction;
    AExpotToWord: TAction;
    AWordMain: TAction;
    ADarftIns: TAction;
    Ahelp: TAction;
    AsecChange: TAction;
    ADoCommite: TAction;
    AnewRecommite: TAction;
    AshortCut: TAction;
    ActionMainMenuBar1: TActionMainMenuBar;
    pnlBottom: TPanel;
    status0: TPanel;
    status1: TPanel;
    status2: TPanel;
    status3: TPanel;
    status6: TPanel;
    status4: TPanel;
    AchangePassword: TAction;
    AActivate: TAction;
    AArchive: TAction;
    aarchiveOrganize: TAction;
    Timer: TTimer;
    AswitchUser: TAction;
    AviewArchiveNote: TAction;
    AnotePad: TAction;
    Action2: TAction;
    SendToSecretariat: TAction;
    AviewRecommite: TAction;
    ACustomizeGrid: TAction;
    AinnerLetter: TAction;
    ASendMessage: TAction;
    AGetMessage: TAction;
    AEditSubject: TAction;
    ABrowsArchive: TAction;
    CiaTray: TCiaTray;
    Action3: TAction;
    PopupMenu1: TPopupMenu;
    o1: TMenuItem;
    N1: TMenuItem;
    Action4: TAction;
    AaddLetterData: TAction;
    AdeleteWord: TAction;
    LetterFollowUp: TAction;
    Action7: TAction;
    Action8: TAction;
    F9Key: TAction;
    Action1: TAction;
    Action6: TAction;
    AAddAlternativeUser: TAction;
    AChangeOrgID: TAction;
    Action9: TAction;
    SaveDialog: TSaveDialog;
    aLoadFile: TAction;
    Action5: TAction;
    Email: TAction;
    Act_WorkGroup: TAction;
    ActPhone: TAction;
    ADraftToLetter: TAction;
    Action12: TAction;
    ARecommiteList: TAction;
    acRepMohlateEghdam: TAction;
    QTemp: TADOQuery;
    acShowWorkSheetBaseInCartable: TAction;
    acMyWorkSheet: TAction;
    acWorkSheetAllRepInCartable: TAction;
    acShowWorkSheetResult: TAction;
    statusSemat: TPanel;
    AFulltext: TAction;
    ASign: TAction;
    APrintWord: TAction;
    Charset: TTimer;
    ASearchAttachments: TAction;
    word2: TAction;
    Services: TAction;
    ASendMail: TAction;
    qryAllAttachmentsWithoutWord: TADOQuery;
    qryAllAttachmentsWithoutWordLetterDataID: TAutoIncField;
    qryAllAttachmentsWithoutWordImage: TBlobField;
    qryAllAttachmentsWithoutWordExtention: TStringField;
    AppTerminate: TTimer;
    ASaveAttachments: TAction;
    Action10: TAction;
    ADOQuery1: TADOQuery;
    ADOQuery1DefualtSecretariatID: TIntegerField;
    Sp_Inbox2: TADODataSet;
    Sp_Inbox2SubjectTitle: TStringField;
    Sp_Inbox2ToOrgRsponsibleStafferTitle: TWideStringField;
    Sp_Inbox2FromResponsibleStafferTitle: TWideStringField;
    Sp_Inbox2ToOrgTitle: TWideStringField;
    Sp_Inbox2UrgencyTitle: TWideStringField;
    Sp_Inbox2ClassificationTitle: TWideStringField;
    Sp_Inbox2FromOrgTitle: TWideStringField;
    Sp_Inbox2ActionTypeTitle: TWideStringField;
    Sp_Inbox2LetterID: TAutoIncField;
    Sp_Inbox2IndicatorID: TIntegerField;
    Sp_Inbox2MYear: TWordField;
    Sp_Inbox2SecretariatID: TWordField;
    Sp_Inbox2ClassificationID: TWordField;
    Sp_Inbox2UrgencyID: TSmallintField;
    Sp_Inbox2ReceiveTypeID: TWordField;
    Sp_Inbox2UserID: TIntegerField;
    Sp_Inbox2OrgID: TIntegerField;
    Sp_Inbox2ParentId: TSmallintField;
    Sp_Inbox2Proceeded: TBooleanField;
    Sp_Inbox2recommiteid: TAutoIncField;
    Sp_Inbox2id: TSmallintField;
    Sp_Inbox2IsCopy: TBooleanField;
    Sp_Inbox2has_Page: TBooleanField;
    Sp_Inbox2has_WordPage: TBooleanField;
    Sp_Inbox2has_file: TBooleanField;
    Sp_Inbox2ActionTypeID: TWordField;
    Sp_Inbox2toorgid: TIntegerField;
    Sp_Inbox2fromorgid: TIntegerField;
    Sp_Inbox2finalized: TBooleanField;
    Sp_Inbox2sentletterid: TIntegerField;
    Sp_Inbox2SignerID: TWideStringField;
    Sp_Inbox2templateID: TIntegerField;
    Sp_Inbox2headerID: TIntegerField;
    Sp_Inbox2fromstaffer: TWideStringField;
    Sp_Inbox2sendStatusID: TWordField;
    Sp_Inbox2LastUpdate: TDateTimeField;
    Sp_Inbox2UserTableID: TIntegerField;
    Sp_Inbox2UserRecomCount: TIntegerField;
    Sp_Inbox2IsAnswer: TBooleanField;
    Sp_Inbox2ISFollowup: TBooleanField;
    Sp_Inbox2IsAnswerTitle: TStringField;
    Sp_Inbox2subjectid: TIntegerField;
    Sp_Inbox2MyTmp_ID: TAutoIncField;
    Sp_Inbox2IsCopy_In_Dabir: TBooleanField;
    Sp_Inbox2SentToDabir: TBooleanField;
    Sp_Inbox2Letter_Type: TIntegerField;
    Sp_Inbox2letterformat: TIntegerField;
    Sp_Inbox2IncommingNO: TStringField;
    Sp_Inbox2Incommingdate: TStringField;
    Sp_Inbox2Memo: TStringField;
    Sp_Inbox2Tostaffer: TStringField;
    Sp_Inbox2AttachTitle: TStringField;
    Sp_Inbox2NumberOfAttachPages: TIntegerField;
    Sp_Inbox2NumberOfPage: TIntegerField;
    Sp_Inbox2RetroactionNo: TStringField;
    Sp_Inbox2UserMemo: TStringField;
    Sp_Inbox2RegistrationDate: TStringField;
    Sp_Inbox2FollowLetterNo: TStringField;
    Sp_Inbox2LetterRecommites: TStringField;
    Sp_Inbox2CenterNo: TStringField;
    Sp_Inbox2CenterDate: TStringField;
    Sp_Inbox2registrationTime: TStringField;
    Sp_Inbox2InnerNo: TStringField;
    Sp_Inbox2Paraph: TStringField;
    Sp_Inbox2RecommiteDate: TStringField;
    Sp_Inbox2ProceedDate: TStringField;
    Sp_Inbox2ReType: TSmallintField;
    Sp_Inbox2RecommitTypeTitle: TStringField;
    Sp_Inbox2IsInner: TIntegerField;
    Sp_Inbox2RecommiterTitle: TStringField;
    Sp_Inbox2sendertitle: TStringField;
    Sp_Inbox2StaffMemo: TStringField;
    Sp_Inbox2Yincommingno: TStringField;
    Sp_Inbox2PreCode: TStringField;
    Sp_Inbox2DeadLineDays: TIntegerField;
    Sp_Inbox2ViewDate: TStringField;
    Sp_Inbox2DeadLineDate: TStringField;
    Sp_Inbox2ChildParaph: TStringField;
    Sp_Inbox2ChildOrg: TStringField;
    Sp_Inbox2Erja_Or_Answer_Date: TStringField;
    Sp_Inbox2ColorFlag: TStringField;
    Sp_Inbox2IsSecure: TBooleanField;
    Sp_Inbox2MemoAndRecomUserCount: TStringField;
    Sp_Inbox2Has_Sign: TBooleanField;
    Sp_Inbox2SecretariatTitle: TStringField;
    Sp_Inbox2innerNo2: TStringField;
    Sp_Inbox2RecommiteTime: TStringField;
    Sp_Inbox2HasLetterForms: TBooleanField;
    Sp_Inbox2anjam_shod_status: TIntegerField;
    pnlTop: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure AcloseExecute(Sender: TObject);
    procedure RefreshQuery;
    procedure AChangeColorExecute(Sender: TObject);
    procedure AAnswerExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MainActionManagerExecute(Action: TBasicAction;var Handled: Boolean);
    procedure lettersDbGridNeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Condition: Boolean);
    procedure ArecommiteExecute(Sender: TObject);
    procedure AretroActionExecute(Sender: TObject);
    procedure ViewDocument(LetterID:integer);
    procedure AFollowExecute(Sender: TObject);
    procedure AviewAllletterExecute(Sender: TObject);
    // procedure ViewInnerLetter; // Amin 1391/07/15
    Procedure SetLetterFormat(value:byte);
    Procedure SetLetter_Type(value:byte);
    procedure ViewInnerLetter(LetterID : integer); // Amin 1391/07/15 

    Procedure SetWhere(Value:String);
    procedure GetExactCopy(typid:byte);
    procedure ApictureExecute(Sender: TObject);
    Function  GetSearch:boolean;
    function  DataSetPost:boolean;
    procedure ArefreshExecute(Sender: TObject);
    procedure ChangeYearExecute(Sender: TObject);
    procedure AExpotToWordExecute(Sender: TObject);
    procedure AWordMainExecute(Sender: TObject);
    procedure ADarftInsExecute(Sender: TObject);
    procedure ReplaceInWord(w:twordapplication;old,new:widestring);
    procedure AhelpExecute(Sender: TObject);
    procedure AsecChangeExecute(Sender: TObject);
    procedure AUserSettingExecute(Sender: TObject);
    procedure ADoCommiteExecute(Sender: TObject);
    procedure AnewRecommiteExecute(Sender: TObject);
    procedure AshortCutExecute(Sender: TObject);
    procedure AchangePasswordExecute(Sender: TObject);
    procedure AActivateExecute(Sender: TObject);
    procedure ViewReceivedLetter(LetterID:integer);
    procedure ViewSentLetter(LetterID:integer);
    Procedure SetarchiveFolderID(value:integer);
    procedure AEditExecute(Sender: TObject);
    procedure AArchiveExecute(Sender: TObject);
    procedure aarchiveOrganizeExecute(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure AswitchUserExecute(Sender: TObject);
    procedure AviewArchiveNoteExecute(Sender: TObject);
    procedure MakeSelectedRecommites;
    procedure AnotePadExecute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure SendToSecretariatExecute(Sender: TObject);
    procedure ALoadPDFExecute(Sender: TObject);
    procedure AviewRecommiteExecute(Sender: TObject);
    procedure ACustomizeGridExecute(Sender: TObject);
    procedure AinnerLetterExecute(Sender: TObject);
    procedure AGetMessageExecute(Sender: TObject);
    procedure ASendMessageExecute(Sender: TObject);
    procedure AEditSubjectExecute(Sender: TObject);
    procedure ABrowsArchiveExecute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure o1Click(Sender: TObject);
    procedure Action4Execute(Sender: TObject);
    procedure AaddLetterDataExecute(Sender: TObject);
    procedure AdeleteWordExecute(Sender: TObject);
    procedure Action8Execute(Sender: TObject);
    procedure Action7Execute(Sender: TObject);
    procedure LetterFollowUpExecute(Sender: TObject);
    procedure F9KeyExecute(Sender: TObject);
    procedure Action6Execute(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure AAddAlternativeUserExecute(Sender: TObject);
    procedure AChangeOrgIDExecute(Sender: TObject);
    procedure Action9Execute(Sender: TObject);
    procedure aLoadFileExecute(Sender: TObject);
    procedure Action5Execute(Sender: TObject);
    procedure EmailExecute(Sender: TObject);
    procedure Act_WorkGroupExecute(Sender: TObject);
    procedure ActPhoneExecute(Sender: TObject);
    procedure ADraftToLetterExecute(Sender: TObject);
    procedure Action12Execute(Sender: TObject);
    procedure ARecommiteListExecute(Sender: TObject);
    procedure acRepMohlateEghdamExecute(Sender: TObject);
    procedure acMyWorkSheetExecute(Sender: TObject);
    procedure acWorkSheetAllRepInCartableExecute(Sender: TObject);
    procedure acShowWorkSheetBaseInCartableExecute(Sender: TObject);
    procedure acShowWorkSheetResultExecute(Sender: TObject);
    procedure AFulltextExecute(Sender: TObject);
    procedure ASignExecute(Sender: TObject);
    procedure APrintWordExecute(Sender: TObject);
    procedure CharsetTimer(Sender: TObject);
    procedure DeleteSignLog(LetterID: Integer);
    procedure ASearchAttachmentsExecute(Sender: TObject);
    procedure ASendMailExecute(Sender: TObject);
    procedure AppTerminateTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ASaveAttachmentsExecute(Sender: TObject);
    procedure Action10Execute(Sender: TObject);
  private
    FWhere: String;
    FLetterFormat:byte;
    FLetter_Type: byte;
    FarchiveFolderID : integer;


  public

     SHOW_NOT_READ : Boolean;

     VERSION_INFO_FRM      : TVERSION_INFO_FRM;

     {Ranjbar}
     ReCommiteTag : Boolean;
     ReCommiteTagVal : Integer;
     do_srch      : Boolean;


     //---
     DoRefresh: boolean;
     DeadLine:integer;
     DeadLineWhere: string;
     Property LetterFormat : byte read FLetterFormat write SetLetterFormat;
     Property Letter_Type : byte read FLetter_Type write SetLetter_Type;
     Property archiveFolderID : integer read FarchiveFolderID write SetarchiveFolderID;
     Property Where : String read FWhere write SetWhere;
     {Ranjbar}
     Procedure Form_Animate(aForm:TForm;aAniTime:Integer=250);
     Procedure Cursor_SetPos(aForm:TForm;Sender:TObject;aPopupMenu:TPopupMenu);
     Procedure Rep_CorrectDesign(aFileName:String);
     Procedure Rep_LoadFile(afrxReport:TfrxReport;aFileName:String);
     Procedure Rep_Show(afrxReport:TfrxReport;ReportType:TReportType);
     Function FillBlobField(aForm:TForm;aDBMemoText:WideString;aEditoCaption:String):WideString;
     procedure ShowFmNewsUsers(aLocateID:integer=0);
     Procedure Message_News;
     procedure ViewLetterAttachment(LetterID, LetterType, LetDataID:integer);
     //---
     procedure ShowInnerLetter(aLetterID:Integer);
     function GetUserOrgID:Integer;
  end;

var
  MainForm: TMainForm;
  ArchiveYear, terminationDownCounter:integer;
 // ISMessageShow : Boolean;
implementation

uses Dmu, Inbox, EnteredLetterInputF, ExitedLetterInputF{, colorSetting},
  ReCommiteU, ExactCopy,  FromOrgU, ExportToWord,
  HelpU, USecChange, Settingsu, DoCommite, ReCommitedialog, FUserShortCut,
  UchangePassword, UinnerLetter, LetterArchive, ArchiveOrganize, UUsernote,
  FActiveUsers, UloadPDF , businessLayer, QuickSearch, CheckLst,
  YchecklistBox, YShamsiDate, UGetMessage, USendMessage, UEditSubject,
  UBrowsArchive, UaddLetterData, UFollowUp, URecommitestat,
  URecommiteReport, AddAlternativeUserU, ChangeOrgIDU, NewsUsersFm,
  ScanImageFm, EmailsFm, WorkGroupFM, PhoneFm, RecommiteReportDM,
  ScanImageDM, PhoneGroupDM, PhoneDM, EmailsDM, WorkGroupDM, NewsUsersDM,
  UAddDocument, AssignLetterIndicatorFm, uRecommiteList,
  RepMohlateEghdamUnit, UDP, UMyMessage, WorkSheetViewsUnit,
  WorkSheetAllRepUnit, WorkSheetBaseResultsUnit, WorkSheetBaseSessionsUnit,
  WorkSheetBaseTasksUnit, WorkSheetBaseUnit, WorkSheetBaseVisitsUnit,
  WorkSheetNewsUnit, FullTextSearch, InputPassU, TextSearch;

var
   ReplyMode : Boolean;
   d : TDateTime;


{$R *.DFM}

Procedure TMainForm.SetWhere(Value:String);
begin
   FWhere:=Value;
   RefreshQuery;
end;

Procedure TMainForm.SetarchiveFolderID(value:integer);
begin
  FarchiveFolderID := value;
  if FarchiveFolderID=0 then
     ArchiveYear:=-1;
  RefreshQuery;
end;

Procedure TMainForm.SetLetterFormat(value:byte);
begin
  FLetterFormat := value;
  RefreshQuery;
end;

Procedure TMainForm.SetLetter_Type(value:byte);
begin
  FLetter_Type := value;
  RefreshQuery;
end;

procedure TMainForm.ViewLetterAttachment(LetterID, LetterType, LetDataID:integer);
begin
   inherited;
   if LetterType = 1 then
   begin
      with ReceivedLetterInputForm do
      begin
         ReceivedLetterInputForm := TReceivedLetterInputForm.Create(Application);
         LetterDataID := LetDataID;
         GetLetter(LetterID);
         ShowModal;
      end;
  end
  else if LetterType = 2 then
   begin
      with sentLetterInputForm do
      begin
         SentLetterInputForm:=TSentLetterInputForm.Create(Application);
         LetterDataID := LetDataID;
         GetLetter(LetterID);
         ShowModal;
      end;
  end
  else if LetterType = 3 then
   begin
      with FinnerLetter do
      begin
         FinnerLetter:=TFinnerLetter.Create(Application);
         LetterDataID := LetDataID;
         GetLetter(LetterID);
         ShowModal;
      end;
  end
  else if LetterType = 4 then
   begin
      with FrAddDocument do
      begin
         FrAddDocument:=TFrAddDocument.Create(Application);
         LetterDataID := LetDataID;
         GetLetter(LetterID);
         ShowModal;
      end;
  end;
end;

procedure TMainForm.FormCreate(Sender: TObject);
Var
   SkinName : String;
begin
  inherited;
  ArchiveYear := -1;
  terminationDownCounter := 60;
  DMRecommiteReport:= TDMRecommiteReport.Create(self);
  DMScanImage      := TDMScanImage.Create(self);
  DMPhoneGroup     := TDMPhoneGroup.Create(self);
  DMPhone          := TDMPhone.Create(self);
  DMEmails         := TDMEmails.Create(self);
  DMWorkGroup      := TDMWorkGroup.Create(self) ;
  DMNewsUsers      := TDMNewsUsers.Create(self);

  ReplyMode := False;
  ActionMainMenuBar1.Font.Charset := 178;
  DoRefresh := True;
  Status0.Caption := '‰«„ ò«—»—: '+_userName;
 // Status1.Caption := _Today;
  Status1.Caption := Time_GetTime(Dm.YeganehConnection,False) + '  ' + _Today;
  Status2.Caption := dm.Orgname;

  statusSemat.Caption := Dm.GetSemat(_ActiveSemat);
 
  ADOQuery1.Close;
  ADOQuery1.Parameters.ParamByName('ID').Value := _UserID;
  ADOQuery1.Open;

  dm.Secretariats.Filtered := False;
  dm.Secretariats.Filter   := 'SecID = ' + ADOQuery1DefualtSecretariatID.AsString;
  //Dm.UsersDefualtSecretariatID.AsString ;
  dm.Secretariats.Filtered := True;
  
  status4.Caption := dm.SecretariatsSecTitle.AsString;

  ABrowsArchive.Caption := '»——”Ì ”«»ﬁÂ »— «”«” ' + dm.UserMemoDisplay;
  DeadLine := -2;

   // Commented By Saeedi On 1390/05/09
  //SkinName := GetUserSetting('SkinfileName');
  //if Trim(SkinName)='' then
     //SkinName := 'mxskin66.skn';

  //SkinData1.LoadFromFile(ExtractFilePath(Application.ExeName)+ 'Skins\'+SkinName);
  //if not SkinData1.Active then
    // SkinData1.Active := True;
  Dm.ISMessageShow := true;

  SysLocale.DefaultLCID := $0429;
  SysLocale.MiddleEast  := True;
  ActionMainMenuBar1.BiDiMode := bdRightToLeft;
end;

procedure TMainForm.AcloseExecute(Sender: TObject);
begin
   inherited;
   Close;
end;

procedure TMainForm.RefreshQuery;
var
  srt: string;
  current_index1:integer;
  current_index2:integer;
  //valueLocate : string;
  //Bm : TBookMark;
begin
  inherited;
  if not DoRefresh then //„Â„
    exit;

  if FInbox.SBArchive.Down then
  begin
    //current_index2 := dm.sp_inbox2.FIELDBYNAME('recommiteid').AsInteger;
    //srt := dm.Sp_Inbox2.sort;
  end
  else
  begin
    if dm.sp_inbox.Active then
      current_index1 := dm.sp_inboxrecommiteid.AsInteger;
    srt := dm.sp_inbox.sort;
    //current_index1 := dm.Sp_InboxLetterID.AsInteger;
    //BM := dm.sp_inbox.GetBookmark;
  end;

  //srt := dm.sp_inbox.sort;

  if FInbox.SBArchive.Down then
  begin
    with dm,sp_inbox2,Parameters do
    begin
      close;

      if FInbox.Proceed then
        ParamByName('@Proceeded').Value := 1//HKH -> old Type nnnnnnnnn1
      elSe
        ParamByName('@Proceeded').Value := 0;

      ParamByName('@LetterFormat').Value := letterFormat;

      if (FInbox.SBHome.Down) or (FInbox.SBArchive.Down)  then
        ParamByName('@OrgID').Value:=_ActiveSemat
      else
        ParamByName('@OrgID').Value := FInbox.CurrentOrgId;

      ParamByName('@Type').Value := FInbox.IBType;
      if ArchiveYear>=0 then
        ParamByName('@Myear').Value := ArchiveYear
      else
        ParamByName('@Myear').Value := dm.CurrentmYear;

      if FInbox.chkbAllYear.Checked then
        ParamByName('@Myear').Value := 0;

      ParamByName('@archiveFolderid').Value := archiveFolderID;
      if (archiveFolderID=0) and (not FInbox.chkJustNotArchived.Checked) then
        ParamByName('@archiveFolderid').Value := -1;

      ParamByName('@top').Value   := StrToInt64Def(FInbox.SpinEdit.Text,100);
      ParamByName('@Date').Value  := FInbox.Rdate;
      ParamByName('@where').Value := Where;

      if DeadLineWhere<>'' then
        if ParamByName('@where').Value <>'' then
          ParamByName('@where').Value := ParamByName('@where').Value+ ' and '+DeadLineWhere
        else
          ParamByName('@where').Value := DeadLineWhere;

      if ReCommiteTag then
      begin
        if Trim((ParamByName('@where').Value)) <>'' then
        begin
          ParamByName('@where').Value := ParamByName('@where').Value+ ' and ';
        end;

        ParamByName('@where').Value := ParamByName('@where').Value+
        ' not exists (SELECT  * FROM   LetterArchiveFolder,ArchiveFolder Where '+
        ' LetterArchiveFolder.ArchiveFolderID = ArchiveFolder.FolderID '+
        ' and  ArchiveFolder.UserID=' + IntToStr(_userid) + ' and Letterid = RC.RecommiteID)';
      end;

      ParamByName('@Letter_Type').Value := Letter_Type;

      if FInbox.ChbAllSec.Checked then
        ParamByName('@SecretariatID').Value := 0
      else
        ParamByName('@SecretariatID').Value := dm.secid;

      ParamByName('@UserID').Value := _userid;
      ParamByName('@DeadLine').Value := DeadLine;
      ParamByName('@DayOfNow').Value := _Today;
      ParamByName('@WebOrWin').Value := 'WIN';

      Open;
      MainForm.Sp_Inbox2.Sort:=srt;
     // dm.Sp_Inbox2.Locate('recommiteid',  dm.sp_inbox2.FIELDBYNAME('recommiteid').AsInteger,[loCaseInsensitive]);
     {if  valueLocate > 0 then
       dm.Sp_Inbox2.Locate('recommiteid', valueLocate,[loCaseInsensitive]);
     }
{         if Trim(FInbox.SpinEdit.Text) <> '' then
       begin
         Dm.Sp_Inbox2.Filtered:= False;
         Dm.Sp_Inbox2.Filter:= 'top' + FInbox.SpinEdit.Text;
         Dm.Sp_Inbox2.Filtered:= True;
       end
}
    end;

  end
  else
  if do_srch then
  begin
    with dm,sp_inbox,Parameters do
    begin
      close;
//-----------------------------begin movahed 13970230----------------
      //ParamByName('@NOTREAD').Value   := 0;
      if SHOW_NOT_READ then
        ParamByName('@NOTREAD').Value := 1 //
      elSe
        ParamByName('@NOTREAD').Value := 0;
//-----------------------------end movahed 13970230----------------

//    ParamByName('@Proceeded').Value := 0;
      if FInbox.Proceed then
        ParamByName('@Proceeded').Value := 1 //moghadam // -->HKH old = 1
      elSe
        ParamByName('@Proceeded').Value := 0;

      ParamByName('@LetterFormat').Value := letterFormat;

      if (FInbox.SBHome.Down) or (FInbox.SBArchive.Down) then
        ParamByName('@OrgID').Value:=_ActiveSemat
      else
        ParamByName('@OrgID').Value := FInbox.CurrentOrgId;

      ParamByName('@Type').Value := FInbox.IBType;
      if ArchiveYear>=0 then
        ParamByName('@Myear').Value := ArchiveYear
      else
        ParamByName('@Myear').Value := dm.CurrentmYear;

      if FInbox.chkbAllYear.Checked then
        ParamByName('@Myear').Value := 0;

      ParamByName('@archiveFolderid').Value := archiveFolderID;
      if (archiveFolderID=0) and (not FInbox.chkJustNotArchived.Checked) then
        ParamByName('@archiveFolderid').Value := -1;
      ParamByName('@top').Value := StrToInt64Def(FInbox.SpinEdit.Text,100);
      ParamByName('@Date').Value := FInbox.Rdate;
      ParamByName('@where').Value := Where;

      if DeadLineWhere<>'' then
        if ParamByName('@where').Value <>'' then
          ParamByName('@where').Value := ParamByName('@where').Value+ ' and '+DeadLineWhere
        else
          ParamByName('@where').Value := DeadLineWhere;

      if ReCommiteTag then
      begin
        if TRIM((ParamByName('@where').Value)) <>'' then
        begin
          ParamByName('@where').Value := ParamByName('@where').Value+ ' and ';
        end;

        ParamByName('@where').Value := ParamByName('@where').Value+
        ' not exists (SELECT  * FROM   LetterArchiveFolder,ArchiveFolder Where '+
        ' LetterArchiveFolder.ArchiveFolderID = ArchiveFolder.FolderID '+
        ' and  ArchiveFolder.UserID=' + IntToStr(_userid) + ' and Letterid =RC.RecommiteID)';
      end;

      ParamByName('@Letter_Type').Value := Letter_Type;

      //if FInbox.ChbAllSec.Checked then
      //    ParamByName('@SecretariatID').Value := 0
      //else
          ParamByName('@SecretariatID').Value := dm.secid;

      ParamByName('@UserID').Value := _userid;
      ParamByName('@DeadLine').Value := DeadLine;
      ParamByName('@Mytoday').Value := _Today;
      ParamByName('@WebOrWin').Value := 'WIN';

      Open;
      dm.sp_inbox.Sort:=srt;
      Locate('recommiteid',  current_index1,[]);
      //dm.sp_inbox.GotoBookmark(bm);
      //dm.sp_inbox.FreebookMark(bm);

    end;

  end
  else
  begin
    // try
    with dm,sp_inbox,Parameters do
    begin
      close;

      //if FInbox.SBArchive.Down then
      //  begin
      //  ParamByName('@NOTREAD').Value   := 2;
      //  ParamByName('@Proceeded').Value := 0;
      //  end
      //else
      //begin
      if SHOW_NOT_READ then
        ParamByName('@NOTREAD').Value := 1
      elSe
        ParamByName('@NOTREAD').Value := 0;

      if FInbox.Proceed then
        ParamByName('@Proceeded').Value := 1 //moghadam   //hkh oLD = 1
      elSe
        ParamByName('@Proceeded').Value := 0;
      //end;



      //if FInbox.SBArchive.Down then
      //  ParamByName('@Proceeded').Value := 0;

      ParamByName('@LetterFormat').Value := letterFormat;

      //if (FInbox.SBHome.Down) or (FInbox.SBArchive.Down)  then ParamByName('@OrgID').Value:=GetUserOrgID
      //else ParamByName('@OrgID').Value := FInbox.CurrentOrgId;

      if (FInbox.SBHome.Down) or (FInbox.SBArchive.Down) then
        ParamByName('@OrgID').Value:=_ActiveSemat
        // Amin 1391/05/31 else ParamByName('@OrgID').Value := _ActiveSemat;
      else
        ParamByName('@OrgID').Value := FInbox.CurrentOrgId; // Amin 1391/05/31

      ParamByName('@Type').Value := FInbox.IBType;
      
      if ArchiveYear>=0 then
        ParamByName('@Myear').Value := ArchiveYear
      else
        ParamByName('@Myear').Value := dm.CurrentmYear;

      if FInbox.chkbAllYear.Checked then
        ParamByName('@Myear').Value := 0;

      ParamByName('@archiveFolderid').Value := archiveFolderID;
      if (archiveFolderID=0) and (not FInbox.chkJustNotArchived.Checked) then
        ParamByName('@archiveFolderid').Value := -1;
      ParamByName('@top').Value := StrToInt64Def(FInbox.SpinEdit.Text,100);
      ParamByName('@Date').Value := FInbox.Rdate;
      ParamByName('@where').Value := Where;

      if DeadLineWhere<>'' then
        if ParamByName('@where').Value <>'' then
          ParamByName('@where').Value := ParamByName('@where').Value+ ' and '+DeadLineWhere
        else
          ParamByName('@where').Value := DeadLineWhere;

      if ReCommiteTag then
      begin
        if TRIM((ParamByName('@where').Value)) <>'' then
        begin
          ParamByName('@where').Value := ParamByName('@where').Value+ ' and ';
        end;

        ParamByName('@where').Value := ParamByName('@where').Value+
        ' not exists (SELECT  * FROM   LetterArchiveFolder,ArchiveFolder Where '+
        ' LetterArchiveFolder.ArchiveFolderID = ArchiveFolder.FolderID '+
        ' and  ArchiveFolder.UserID=' + IntToStr(_userid) + ' and Letterid =RC.RecommiteID)';
      end;

      ParamByName('@Letter_Type').Value := Letter_Type;

      if FInbox.ChbAllSec.Checked then
        ParamByName('@SecretariatID').Value := 0
      else
        ParamByName('@SecretariatID').Value := dm.secid;

      ParamByName('@UserID').Value := _userid;
      ParamByName('@DeadLine').Value := DeadLine;
      ParamByName('@Mytoday').Value := _Today;
      ParamByName('@WebOrWin').Value := 'WIN';

      Open;

      dm.sp_inbox.Sort:=srt;
      dm.sp_inbox.Locate('recommiteid',  current_index1,[]);
      //dm.sp_inbox.Locate('LetterID',  current_index1,[loPartialKey]);
      //dm.sp_inbox.Bookmark:=MyPoint;
      //dm.sp_inbox.GotoBookmark(bm);
      //dm.sp_inbox.FreebookMark(bm);
    end;
  end;
//   except on e:exception do
//
//   end;


  MainForm.Status3.Caption := ' ⁄œ«œ:'+IntToStr(dm.sp_inbox.RecordCount);

//   ADoCommite.Visible := Not FInbox.Proceed;
//   ADoCommite.Enabled := ADoCommite.Visible;
  ADoCommite.Enabled := Not FInbox.Proceed;
  AArchive.Enabled   := FInbox.Proceed;
   //Ranjbar
  FInbox.DisplayStatus;
   //---

   {Ranjbar}
//   ADraftToLetter.Visible:=false;
  ADraftToLetter.Enabled := False;
  FInbox.lblYear.Caption := ' ”«· : '+IntToStr(dm.CurrentMYear);

  Case LetterFormat of
      0,2:begin  //ÅÌ‘ ‰ÊÌ” = 2 Ê Â„Â ‰«„Â Â« = ’›—
//           ADraftToLetter.Visible:=dm.GetActionAccess(ADraftToLetter.name,tag);
//           ADraftToLetter.Enabled:=ADraftToLetter.Visible;
            ADraftToLetter.Enabled:=dm.GetActionAccess(ADraftToLetter.name,tag);
        end;
   end;
   FInbox.RGStateClick(Nil);
end;

procedure TMainForm.ViewReceivedLetter(LetterID:integer);
begin
   inherited;
   With ReceivedLetterInputForm do
   begin
      ReceivedLetterInputForm := TReceivedLetterInputForm.Create(Application);
      Dm.FromOrganizations.Close;
      Dm.FromOrganizations.Parameters.ParamByName('@FromOrgID').Value := IntToStr(_UserFromOrgID);
      Dm.FromOrganizations.Open;
      GetLetter(LetterID);
      ShowModal;
   end
end;

procedure TMainForm.ViewSentLetter(LetterID:integer);
begin
   inherited;
   With sentLetterInputForm do
   begin
      SentLetterInputForm := TSentLetterInputForm.Create(Application);
      SentLetterInputForm.SecID := Dm.sp_inboxSecretariatID.AsInteger;
      Dm.FromOrganizations.Close;
      Dm.FromOrganizations.Parameters.ParamByName('@FromOrgID').Value := IntToStr(_UserFromOrgID);
      Dm.FromOrganizations.Open;

      {Ranjbar 89.08.30 ID=202}
      {if (Dm.sp_inboxFromOrgID.AsInteger <> _UserFromOrgID) or (Dm.sp_inboxletterformat.AsInteger <> 2) then //_UserFromOrgID ”„  ﬂ«—»—
         Select_Letter.LockType := ltReadOnly; }

      if Dm.Sp_Inboxletterformat.AsInteger <> 2 then //ÅÌ‘‰ÊÌ”
         Readonly := True;
      //«ê— «—Ã«⁄ »’Ê—  ›ﬁÿ ŒÊ«‰œ‰Ì »«‘œ ¬‰ê«Â - ›ﬁÿ »—«Ì ÅÌ‘ ‰ÊÌ” Â«
      if (Dm.Sp_InboxIsCopy.AsBoolean)And(Dm.Sp_Inboxletterformat.AsInteger = 2) then //ÅÌ‘‰ÊÌ”
         Readonly := True;

      //«„ﬂ«‰ ÊÌ—«Ì‘ »—«Ì  Ê·Ìœ ﬂ‰‰œÂ ‰«„Â ’«œ—Â
      if Dm.Sp_Inboxfromorgid.AsInteger = _UserFromOrgID then
         ReadOnly := False;

      if ReadOnly then
         Select_Letter.LockType := ltReadOnly; //›ﬁÿ ŒÊ«‰œ‰Ì ﬂ—œ‰ œÌ «»Ì”
      //---
      GetLetter(LetterID);
      ShowModal;
   end;
end;

procedure TMainForm.AChangeColorExecute(Sender: TObject);
begin
   inherited;
   Settings := TSettings.Create(Application);
   PageControl_SetTabSheet(Settings.PageControl1,'TShGraphic');//PageControl «‰ Œ«» »—êÂ ò‰ —·
   Settings.ShowModal;
end;


procedure TMainForm.AAnswerExecute(Sender: TObject);
Var
   NewIndicator,NewMyear:string;

   procedure Insertletter;
   begin
      with SentLetterInputForm do
      begin
         SecID := Dm.sp_inboxSecretariatID.AsInteger;
         LetterFormat := 2;
         NewIndicator := IntToStr(Exec_get_LastIndicatorID(2,2,dm.CurrentmYear,SecID));
         NewMyear := IntToStr(dm.CurrentMYear);

         GetLetter(0);
         DataSetInsert.Execute;

         if Select_Letter.State <> dsInsert then Select_Letter.Insert;// Added By Saeedi on 1390/06/28
         with Select_Letter do
         Begin
            FieldByName('IndicatorID').  value := NewIndicator;
            FieldByName('MYear').        value := NewMyear;
            FieldByName('Secretariatid').value := dm.sp_inboxSecretariatID.AsInteger;
            FieldByName('FromOrgID').    value := dm.sp_inboxFromOrgID.AsInteger;
            FieldByName('ToOrgID').      value := dm.sp_inboxToOrgID.AsInteger;
            FieldByName('Memo').         value := dm.sp_inboxMemo.AsString;
            FieldByName('ToStaffer').    value := dm.sp_inboxToStaffer.AsString;
            FieldByName('letterformat'). value := 2;
            ToOrgTitleEdit.Text:=dm.sp_inboxSenderTitle.AsString;
            //FieldByName('RetroactionNO').value := dm.sp_inboxYincommingno.AsString;
         end;
         ShowModal;
       end;{with}
   end;
begin
   //ShowMessage('1111111'); 
   inherited;

   if not DataSetPost then
      Exit;

   if Dm.Sp_inboxLetter_Type.AsInteger in [2,3] then
   begin
      ReplyMode:= True;
      AnewRecommite.Execute;
      ReplyMode:= False;
      exit;
   end;

   SentLetterInputForm := TSentLetterInputForm.Create(Application);
   SentLetterInputForm.IsAnswer := True;
   _SelectedRecommiteID:=dm.sp_inboxrecommiteid.AsInteger;
   with SentLetterInputForm,dm.sp_inbox do
      if GetLetter(FieldByName('SentLetterID').AsInteger)  then
      begin
         ShowModal;
         Exit;
      end
      else
        Insertletter;
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   inherited;
   if (Sender is TMainForm) then //»Œ«ÿ— œﬂ„Â Ê—Êœ ﬂ«—»— œÌê—
      if not messageShow(25,true) then
         abort;

   Exec_update_UserLoginLogout(_UserLoginLogoutID,true,true);
   {Ranjbar  »—«Ì »⁄÷Ì «“ ” Ê‰Â« »œ—” Ì ⁄„· ‰„Ì ﬂ‰œ
   FInbox.lettersDbGrid.columns.savetoFile(_TempPath+'\yeganeh.txt');
   dm.Users.Edit;
   dm.UsersKartableGridInfo.LoadFromFile(_TempPath+'\yeganeh.txt');
   dm.Users.Post;
   DeleteFile(pchar( _TempPath+'\yeganeh.txt'));
   }
   //Ranjbar
   DBGrid_SaveColumns('Kartabl_'+FInbox.Name,FInbox.lettersDbGrid);
   FInbox.Qrletterformats.Close;
   CiaTray.Free;
   if Dm.processExists('WINWORD.EXE') then Dm.KillTask('WINWORD.EXE');
end;

procedure TMainForm.MainActionManagerExecute(Action: TBasicAction;
  var Handled: Boolean);
begin
  inherited;
  if not dm.GetActionAccess(Action.name,Tag) then
     Abort;
   if dm.sp_inbox.Active then
        Exec_insert_UserLog(self.Tag,Action.name,dm.sp_inboxLetterID.AsInteger);
end;

procedure TMainForm.lettersDbGridNeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Condition: Boolean);
begin
  inherited;
  Condition:=Column.Grid.DataSource.DataSet.FieldByName('indicatorid').AsInteger mod 2=0
end;

procedure TMainForm.ArecommiteExecute(Sender: TObject);
begin
  inherited;
  if Not DataSetPost then
    Exit;

  if FInbox.SBArchive.Down then
  begin
    with MainForm.sp_inbox2 do
    begin
      ReCommite := TReCommite.Create(Application);
      with ReCommite do
      begin
        AInsert.Visible := not sp_inbox2.FIELDBYNAME('Proceeded').AsBoolean;
        AInsert.Enabled := not sp_inbox2.FIELDBYNAME('Proceeded').AsBoolean;
        LetterID        := sp_inbox2.FIELDBYNAME('LetterID').AsInteger;
        ReCommiteID     := sp_inbox2.FIELDBYNAME('recommiteid').AsInteger;
        ShowModal;

        {AInsert.Visible := not dm.sp_inboxProceeded.AsBoolean;
        AInsert.Enabled := not dm.sp_inboxProceeded.AsBoolean;
        LetterID        := dm.sp_inboxLetterID.AsInteger;
        ReCommiteID     := dm.Sp_Inboxrecommiteid.AsInteger;
        ShowModal;}
      end;
    end;
  end
  else
  begin
    with dm.sp_inbox do
    begin
      if not DataSetPost then
        Exit;

      ReCommite := TReCommite.Create(Application);
      with ReCommite do
      begin
        AInsert.Visible := not dm.sp_inboxProceeded.AsBoolean;
        AInsert.Enabled := not dm.sp_inboxProceeded.AsBoolean;
        LetterID        := dm.sp_inboxLetterID.AsInteger;
        ReCommiteID     := dm.sp_inboxrecommiteid.AsInteger;
        ShowModal;
      end;
    end;
  end;
end;

procedure TMainForm.AretroActionExecute(Sender: TObject);
var
  FR_LetterID:integer;
  SHOW_ATF_PEYRO_FRM : TSHOW_ATF_PEYRO_FRM;
begin
  inherited;

  with TADOQuery.Create(Nil) do
  begin
    try
      Connection := Dm.YeganehConnection;
      Close;
      SQL.Text := 'select FR_LetterId from Follow_Retroaction_Letter where LetterID = ' + Dm.Sp_InboxLetterID.AsString + ' and FR_Kind = 1 ';
      Open;
      if RecordCount = 0  then
      begin
        MessageShowString('«Ì‰ ‰«„Â ⁄ÿ› ‰œ«—œ', False);
        Abort;
      end
      else
      begin
        try
          SHOW_ATF_PEYRO_FRM := TSHOW_ATF_PEYRO_FRM.Create(Application);
          SHOW_ATF_PEYRO_FRM.KIND     := 1;
          SHOW_ATF_PEYRO_FRM.LetterID := Dm.Sp_InboxLetterID.AsString;
          SHOW_ATF_PEYRO_FRM.Caption  := '·Ì”  ‰«„ Â«Ì ⁄ÿ›';
          SHOW_ATF_PEYRO_FRM.ShowModal;
        finally
          SHOW_ATF_PEYRO_FRM.Free;
        end;
      end;
    finally
      Free;
    end;
  end;

  //Add Sanaye 950306
  //«÷«›Â ò—œ‰ ç‰œÌ‰ ⁄ÿ› Ê ÅÌ—Ê »Â ‰«„Â

  (*
    if Not DataSetPost then exit;

    if dm.GetFollowAndRetRoAction(false,(dm.sp_inboxLetter_Type.AsInteger=1),dm.sp_inbox.fieldbyName('RetroactionNo').asstring,_Year, LetterID,rr) then // Amin 1391/12/05 Edited
    begin
     if Rr then
      ViewReceivedLetter(LetterID)
     else
       ViewSentLetter(LetterID);
    end else ShowMsg(4);
   *)

   {
   with TADOQuery.Create(Nil) do
   begin
     try
       Connection := Dm.YeganehConnection;
       Close;
       SQL.Text := 'select FR_LetterId from Follow_Retroaction_Letter where LetterID = ' + Dm.Sp_InboxLetterID.AsString + ' and FR_Kind = 1 ';
       Open;
       if RecordCount = 0  then
       begin
        ShowMessage('«Ì‰ ‰«„Â ⁄ÿ› ‰œ«—œ');
        Abort;
       end;

       FR_LetterID := Fields[0].AsInteger;
       Close;
       SQL.Text := 'select Letter_Type from Letter where LetterID = ' + IntToStr(FR_LetterID);
       Open;
       if RecordCount > 0  then
       begin
          Case Fields[0].AsInteger of
            1: MainForm.ViewReceivedLetter(FR_LetterID);//»—«Ì ‰«„Â Â«Ì Ê«—œÂ
            2: MainForm.ViewSentLetter(FR_LetterID);//»—«Ì ‰«„Â Â«Ì ’«œ—Â
            3: MainForm.ViewInnerLetter(FR_LetterID);
            4: MainForm.ViewDocument(FR_LetterID);
          end;
       end;
     finally
       Free;
     end;
   end;
   //end Sanaye...
   }
end;

procedure TMainForm.AFollowExecute(Sender: TObject);
var
  FR_LetterID:integer;
  SHOW_ATF_PEYRO_FRM : TSHOW_ATF_PEYRO_FRM;
begin
  inherited;

  with TADOQuery.Create(Nil) do
  begin
    try
      Connection := Dm.YeganehConnection;
      Close;
      SQL.Text := 'select FR_LetterId from Follow_Retroaction_Letter where LetterID = ' + Dm.Sp_InboxLetterID.AsString + ' and FR_Kind = 0 ';
      Open;
      if RecordCount = 0  then
      begin
        MessageShowString('«Ì‰ ‰«„Â ÅÌ—Ê ‰œ«—œ', False);
        Abort;
      end
      else
      begin
        try
          SHOW_ATF_PEYRO_FRM := TSHOW_ATF_PEYRO_FRM.Create(Application);
          SHOW_ATF_PEYRO_FRM.KIND     := 0;
          SHOW_ATF_PEYRO_FRM.LetterID := Dm.Sp_InboxLetterID.AsString;
          SHOW_ATF_PEYRO_FRM.Caption  := '·Ì”  ‰«„Â Â«Ì ÅÌ—Ê';
          SHOW_ATF_PEYRO_FRM.ShowModal;
        finally
         SHOW_ATF_PEYRO_FRM.Free;
        end;
      end;
    finally
      Free;
    end;
  end;

  //Add Sanaye 950306
  //«÷«›Â ò—œ‰ ç‰œÌ‰ ⁄ÿ› Ê ÅÌ—Ê »Â ‰«„Â

  (*
    if Not DataSetPost then exit;
    if dm.GetFollowAndRetRoAction(true,(dm.sp_inboxLetter_Type.AsInteger=1),dm.sp_inbox.fieldbyName('FollowLetterNo').asstring,_Year, LetterID,rr) then // Amin 1391/12/05 Edited
    begin
     if RR then
      ViewReceivedLetter(LetterID)
     else
      ViewSentLetter(LetterID);
    end else ShowMsg(3);
  *)

  {
   with TADOQuery.Create(Nil) do
   begin
     try
       Connection := Dm.YeganehConnection;
       Close;
       SQL.Text := 'select FR_LetterId from Follow_Retroaction_Letter where LetterID = ' + Dm.Sp_InboxLetterID.AsString + ' and FR_Kind = 0 ';
       Open;
       if RecordCount = 0  then
       begin
        ShowMessage('«Ì‰ ‰«„Â ÅÌ—Ê ‰œ«—œ');
        Abort;
       end;

       FR_LetterID := Fields[0].AsInteger;
       Close;
       SQL.Text := 'select Letter_Type from Letter where LetterID = ' + IntToStr(FR_LetterID);
       Open;
       if RecordCount > 0  then
       begin
          Case Fields[0].AsInteger of
            1: MainForm.ViewReceivedLetter(FR_LetterID);//»—«Ì ‰«„Â Â«Ì Ê«—œÂ
            2: MainForm.ViewSentLetter(FR_LetterID);//»—«Ì ‰«„Â Â«Ì ’«œ—Â
            3: MainForm.ViewInnerLetter(FR_LetterID);
            4: MainForm.ViewDocument(FR_LetterID);
          end;
       end;
     finally
       Free;
     end;
   end;
   //end Sanaye...
   }
end;

procedure TMainForm.ViewDocument(LetterID:integer);
begin
  inherited;
  with FrAddDocument do
  begin
    FrAddDocument:=TFrAddDocument.Create(Application);
    GetLetter(LetterID);
    ShowModal;
  end
end;

procedure TMainForm.AviewAllletterExecute(Sender: TObject);
begin
  inherited;
  if FInbox.SBArchive.Down then
  begin
    Case MainForm.sp_inbox2.fieldbyname('Letter_Type').AsInteger of
       1: ViewReceivedLetter(MainForm.sp_inbox2.fieldbyname('LetterID').AsInteger);//»—«Ì ‰«„Â Â«Ì Ê«—œÂ
       2: ViewSentLetter(MainForm.sp_inbox2.fieldbyname('LetterID').AsInteger);//»—«Ì ‰«„Â Â«Ì ’«œ—Â
       3: ViewInnerLetter(MainForm.sp_inbox2.fieldbyname('LetterID').AsInteger); // Amin 1391/07/15
       4: ViewDocument(MainForm.sp_inbox2.fieldbyname('LetterID').AsInteger);
    end;
    
    if Trim(MainForm.sp_inbox2.fieldbyname('ViewDate').AsString) = '' then
       Exec_update_ReCommites_viewDate(MainForm.sp_inbox2.fieldbyname('recommiteid').AsInteger,_Today);
    //---
  end
  else
  begin
    Case dm.sp_inboxLetter_Type.AsInteger of
       1: ViewReceivedLetter(dm.sp_inboxLetterID.AsInteger);//»—«Ì ‰«„Â Â«Ì Ê«—œÂ
       2: ViewSentLetter(dm.sp_inboxLetterID.AsInteger);//»—«Ì ‰«„Â Â«Ì ’«œ—Â
       // 3: ViewInnerLetter;//»—«Ì ‰«„Â Â«Ì œ«Œ·Ì        // Amin 1391/07/15
       3: ViewInnerLetter(Dm.sp_inboxLetterID.AsInteger); // Amin 1391/07/15
       4: ViewDocument(dm.sp_inboxLetterID.AsInteger);
    end;
    //‰«„Â ŒÊ«‰œÂ ‘œÂ
    {Ranjbar 87.12.14}
    if Trim(dm.sp_inboxViewDate.AsString) = '' then
       Exec_update_ReCommites_viewDate(dm.sp_inboxrecommiteid.AsInteger,_Today);
    //---
  end;
  RefreshQuery;
  if FInbox.valueLocate > 0 then
    MainForm.Sp_Inbox2.Locate('recommiteid', FInbox.valueLocate,[loCaseInsensitive])
end;

procedure TMainForm.GetExactCopy(typid:byte);
begin
  inherited;
  if not DataSetPost then
    exit;

  ExactCopyF:=TExactCopyF.Create(Application);

  with ExactCopyF do
  begin
    ExactCopyF.LetterID:=dm.sp_inboxLetterID.AsInteger;
    ExactCopyF.TypeId:=typid;
    ShowModal;
  end;
end;

procedure TMainForm.ApictureExecute(Sender: TObject);
var
  extiontion : byte;
  i: integer;
begin
  inherited;
  if FInbox.SBArchive.Down then
  begin
    if not DataSetPost then
      Exit;

    i:=MainForm.Sp_Inbox2.fieldbyname('recommiteid').AsInteger;
    FmScanImage := TFmScanImage.Create(Application);
    With FmScanImage do
    begin
      LetterID  := MainForm.sp_inbox2.fieldbyname('LetterID').AsInteger;
      RReadOnly := MainForm.Sp_inbox2.fieldbyname('IsCopy').AsBoolean;
      ReceiveTypeID := MainForm.sp_inbox2.fieldbyname('ReceiveTypeID').AsInteger;
      ShowModal;
    end;

    DoRefresh := True;
    Exec_update_ReCommites_viewDate(i,_Today);
  end
  else
  begin
    if not DataSetPost then
      Exit;

    i:=dm.sp_inboxrecommiteid.AsInteger;
    FmScanImage := TFmScanImage.Create(Application);
    with FmScanImage do
    begin
      LetterID  := dm.sp_inboxLetterID.AsInteger;
      RReadOnly := dm.Sp_inboxIsCopy.AsBoolean;
      ReceiveTypeID := dm.sp_inboxReceiveTypeID.AsInteger;
      ShowModal;
    end;

    DoRefresh := True;
    Exec_update_ReCommites_viewDate(i,_Today);
  end;

  RefreshQuery;
  if FInbox.SBArchive.Down then
  begin
    if FInbox.valueLocate > 0 then
    begin
      MainForm.Sp_Inbox2.Locate('recommiteid',FInbox.valueLocate,[loCaseInsensitive]);
    end
  end
end;

Procedure  Exec_update_ReCommites_viewDate(RecommiteID:integer;ViewDate:string);
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
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

Procedure TMainForm.Message_News;
begin
  FInbox.labellClick(nil);
  PageControl_SetTabSheet(FInbox.PageControl2,'TshMessage');
end;

Function TMainForm.GetSearch:boolean;
begin
  FromOrgForm := TFromOrgForm.Create(Application);
  FromOrgForm.ShowModal;
  Result := FromOrgForm.done;
end;

procedure TMainForm.ArefreshExecute(Sender: TObject);
begin
  inherited;
  RefreshQuery;
end;

function TMainForm.DataSetPost:boolean;
begin
  inherited;
  if FInbox.SBArchive.Down then
  begin
    Result := False;
    with MainForm.Sp_Inbox2 do
    begin
      if not Active then
        exit
      else if RecordCount=0 then
        exit;

      if State in [dsEdit,dsInsert] then
      begin
        if messageShow(26,true) then
          try
            Post;
            Result:= True;
          except
            exit
          end
        else
          exit;
      end
      else
        Result:=True;
    end;
  end
  else
  begin
    Result:=false;
    with dm.Sp_Inbox do
    begin
      if not Active then
        exit
      else if RecordCount=0 then
        exit;

      if State in [dsEdit,dsInsert] then
      begin
        if messageShow(26,true) then
          try
            Post;
            Result:=true;
          except
            exit
          end
        else
          exit;
      end
      else
        Result:=True;
    end;
  end;
end;

procedure TMainForm.ChangeYearExecute(Sender: TObject);
var
  dbname:String;
  R: TRegistry;
  s:string;
  intS : Integer;
begin
  DoRefresh := False;
  inherited;
  if not dm.Y_InputQuery('”«· Ã«—Ì',IntToStr(dm.CurrentmYear),s,' €ÌÌ— ”«· Ã«—Ì') then
     Exit;
   //if StrToInt(s)<1300 then
   //   dm.CurrentMyear:=StrToInt(s)
   //else
   //   dm.CurrentMyear:=StrToInt(copy(s,1,4));

  try
    intS := StrToInt(S);
    if (intS < 1500) and (intS > 1300) then
    begin
      S := IntToStr(intS);
      Dm.CurrentMyear := intS;
    end
    else
      raise Exception.Create('ERROR');
      //ATAIE 1400
      //Dm.CurrentMyear := StrToInt(Copy(S,3,2));
  except on E : Exception do
    begin
      ShowMsgString('”«· „Ê—œ ‰Ÿ— —« œ—”  Ê«—œ ‰„«ÌÌœ');
      Exit;
    end;
  end;

  dbname := UpperCase(Get_DatabaseName_By_Year(dm.CurrentMyear));

  if dbname <> 'NOTHING' then
    if dbname <> UpperCase(_DatabaseName) then
      if messageShowString(' »—«Ì œ” Ì«»Ì »Â ‰«„Â Â«Ì «Ì‰ ”«· »«Ìœ  ‰—„ «›“«— œÊ»«—Â «Ã—« ‘Êœ ¬Ì« „«Ì·Ìœø', true) then
      begin
        r:=TRegistry.Create;
        with R do
        begin
          RootKey:=HKEY_CURRENT_USER;
          OpenKey(RegistryKey, True);
          WriteString('tmpDataBaseName', dbname);
          WriteString('tmpYear', IntToStr(dm.CurrentMyear));
        end;
        WinExec(PAnsiChar(Application.ExeName) ,0);
        halt;
      end;

  //Ranjbar
  //‰„«Ì‘ ‰«„Â Â«Ì ”«·Â«Ì ﬁ»· »— «”«”  «—ÌŒ
  if dm.CurrentMyear <> StrToInt(Copy(_Today,1,4)) then
     FInbox.OpenCloseSp_DistinctDate;

  DoRefresh:=true;
  FInbox.BringKartabl;
end;

procedure TMainForm.AExpotToWordExecute(Sender: TObject);
var
  otherUserID : integer;
begin
  inherited;
  if Not DataSetPost then
    Exit;

  if _Word_Is_Opened then
  begin
    MessageShow(86,False) ;
    Exit;
  end;

  if FInbox.SBArchive.Down then
  begin
    with MainForm.Sp_Inbox2 do
    begin
      otherUserID := dm.OpendByAnotherUser(FieldByName('Letterid').AsInteger);
      if otherUserID>0 then
      begin
        MessageShowString('«Ì‰ ‰«„Â  Ê”ÿ '+''''+ get_UserName(otherUserID) +''''+' œ— Õ«· ÊÌ—«Ì‘ «” °  €ÌÌ—«  ‘„« «⁄„«· ‰ŒÊ«Âœ ‘œ.',False);
        _Dont_save_Word := True;
      end
      else
        _Dont_save_Word := False;

      if not Dm.ExecGet_LetterWordFile(FieldByName('LetterID').AsInteger, Dm.Sp_InboxIsCopy.AsBoolean,
                                        True, Exec_has_WordExcel(FieldByName('Letterid').AsInteger)) then
      begin
        if Dm.Sp_InboxIsCopy.AsBoolean then //›ﬁÿ ŒÊ«‰œ‰Ì
        begin
          MBaseForm.MessageShowString('«Ì‰ ‰«„Â ›ﬁÿ ﬁ«»· ŒÊ«‰œ‰ „Ì»«‘œ Ê €Ì—ﬁ«»·  €ÌÌ— «” ', False);
          Exit;
        end;

        FExportToWord := TFExportToWord.Create(Application);
        with FExportToWord do
        begin
          Letterid:=FieldByName('Letterid').AsInteger;
          LetterFormat:=FieldByName('LetterFormat').AsInteger;
          if not dm.UseTemplate then
          begin
            FExportToWord.FormShow(FExportToWord);
            OpenFileClick(OpenFile);
          end
          else
            ShowModal;
        end;
      end;
    end;
  end
  else
  begin
    with Dm.Sp_Inbox do
    begin
      otherUserID := dm.OpendByAnotherUser(FieldByName('Letterid').AsInteger);
      if otherUserID>0 then
      begin
        MessageShowString('«Ì‰ ‰«„Â  Ê”ÿ '+''''+ get_UserName(otherUserID) +''''+' œ— Õ«· ÊÌ—«Ì‘ «” °  €ÌÌ—«  ‘„« «⁄„«· ‰ŒÊ«Âœ ‘œ.',False);
        _Dont_save_Word := true;
      end
      else
        _Dont_save_Word := false;

      if not Dm.ExecGet_LetterWordFile(FieldByName('LetterID').AsInteger,Dm.Sp_InboxIsCopy.AsBoolean,
                                        True, Exec_has_WordExcel(FieldByName('Letterid').AsInteger)) then
      begin
        if Dm.Sp_InboxIsCopy.AsBoolean then //›ﬁÿ ŒÊ«‰œ‰Ì
        begin
          MBaseForm.MessageShowString('«Ì‰ ‰«„Â ›ﬁÿ ﬁ«»· ŒÊ«‰œ‰ „Ì»«‘œ Ê €Ì—ﬁ«»·  €ÌÌ— «” ', False);
          Exit;
        end;

        FExportToWord := TFExportToWord.Create(Application);
        with FExportToWord do
        begin
          Letterid:=FieldByName('Letterid').AsInteger;
          LetterFormat:=FieldByName('LetterFormat').AsInteger;
          if not dm.UseTemplate then
          begin
            FExportToWord.FormShow(FExportToWord);
            OpenFileClick(OpenFile);
          end
          else
            ShowModal;
        end;
      end;
    end;
  end;

  if Dm.Sp_InboxViewDate.AsString='' then
    Exec_update_ReCommites_viewDate(dm.sp_inboxrecommiteid.AsInteger,_Today);

  RefreshQuery;
  if FInbox.SBArchive.Down then
  begin
    if FInbox.valueLocate > 0 then
    begin
      MainForm.Sp_Inbox2.Locate('recommiteid',FInbox.valueLocate,[loCaseInsensitive]);
    end
  end
end;

procedure TMainForm.AWordMainExecute(Sender: TObject);
begin
  inherited;
  if not dm.ExecGet_LetterWordFile(dm.sp_inboxLetterID.AsInteger,dm.sp_inboxIsCopy.AsBoolean) then
    ShowMsg(53);
end;

procedure TMainForm.ADarftInsExecute(Sender: TObject);
begin
   inherited;
   if dm.SecID=0 then
   begin
      messageShowString('«» œ« œ»Ì—Œ«‰Â «Ì —« òÂ „Ì ŒÊ«ÂÌœ ‰«„Â œ—¬‰ À»  ò‰Ìœ „‘Œ’ ò‰Ìœ',false);
      //Ranjbar 88.03.13
      AsecChangeExecute(Sender);
      if Dm.SecId <= 0 then
         Exit;
      //---
   end;

   with SentLetterInputForm do
   begin
      SentLetterInputForm := TSentLetterInputForm.Create(Application);
      SecID := dm.SecID;
      GetLetter(0);
      LetterFormat:=2;
      DataSetInsert.Execute;
      Properties.Hide;
      ShowModal;
   end;
   RefreshQuery;
   if FInbox.SBArchive.Down then
   begin
     if FInbox.valueLocate > 0 then
     begin
       MainForm.Sp_Inbox2.Locate('recommiteid',FInbox.valueLocate,[loCaseInsensitive]);
     end
   end

end;

procedure TMainForm.ReplaceInWord(w:twordapplication;old,new:widestring);
var
   r,Wap,txt,reptxt,fals,tru:OleVariant;
begin
   with w.Selection.Find do
   begin
      ClearFormatting;
      Replacement.ClearFormatting;
      Wap := wdFindContinue;
      r := wdReplaceAll;
      Txt := old;
      RepTxt := new;
      Execute(txt,fals,fals,fals,fals,fals,tru,wap,fals,reptxt,r,fals,fals,fals,fals);
   end;
end;{proc}

procedure TMainForm.AhelpExecute(Sender: TObject);
begin
   inherited;
   FHelp := TFHelp.Create(Application);
   FHelp.ShowModal;
end;

procedure TMainForm.AsecChangeExecute(Sender: TObject);
begin
   inherited;
   SecChange := TSecChange.Create(Application);
   SecChange.ShowModal;
   status4.Caption := dm.SecretariatsSecTitle.AsString;
end;

procedure TMainForm.AUserSettingExecute(Sender: TObject);
begin
   inherited;
   Settings := TSettings.Create(Application);
   Settings.ShowModal;
end;

procedure TMainForm.ADoCommiteExecute(Sender: TObject);
begin
  inherited;
  MakeSelectedRecommites;
  FDoCommite := TFDoCommite.Create(Application);
  with FDoCommite do
  begin
     ReCommites.Close;
     ReCommites.Parameters[0].Value := dm.sp_inboxRecommiteID.AsInteger;
     ReCommites.Open;
     ReCommites.edit;
     ShowModal;
  end;
  RefreshQuery;
end;


procedure TMainForm.AnewRecommiteExecute(Sender: TObject);
var
  OrgID :integer;
	RecommiteDate,Paraph:string;
  isCopy:Boolean;
begin
  inherited;
  {Ranjbar}
  Keyboard_Farsi;
  if FInbox.lettersDbGrid.DataSource.DataSet.RecordCount = 0 then
    Exit;
  //---

  //»œ”  ¬Ê—œ‰ —ﬂÊ—œÂ«Ì «‰ Œ«» ‘œÂ
  MakeSelectedRecommites;
  {Ranjbar 87.12.14}
  RecommiteSave := TRecommiteSave.Create(Application);
  RecommiteSave.ShowReadOnly:= False;
  RecommiteSave.ReplyModeRS := ReplyMode;

   (*with dm do
   begin
    RecommiteSave := TRecommiteSave.Create(Application);
    RecommiteSave.ParentID := sp_inbox.FieldByName('ID')         .Value;
    RecommiteSave.Recommiteid := sp_inbox.FieldByName('recommiteid').Value;
    dm.ExecSelect_LetterReCommite(sp_inboxLetterID.AsInteger,3);//Open Select_LetterReCommite
    RecommiteSave.DBCIsCopy.Enabled := not dm.sp_inboxIsCopy.AsBoolean;

    with dm.Select_LetterReCommite do
    begin
       Insert; //
       FieldByName('Type').Value:= 3;
       FieldByName('ID')           .Value := Exec_NewRecommiteID(sp_inboxLetterID.AsInteger,3);//3 : «—Ã«⁄
       FieldByName('LetterID')     .Value := Sp_inboxLetterID.AsInteger;
       FieldByName('RecommiteDate').Value := _Today;
       FieldByName('ParentID')     .Value := RecommiteSave.ParentID;
       FieldByName('ActionTypeID') .Value := atDefault;
       FieldByName('ActionTypeID') .Value := atDefault;
       {Ranjbar}
       FieldByName('ISFollowup').AsBoolean := False;//ÅÌêÌ—Ì ‘Êœ
       //---
    end;

    RecommiteSave.letterid := sp_inboxLetterID.AsInteger;

    //œò„Â ÃÊ«»
    if ReplyMode then
    begin
       if sp_inbox.FieldByName('OrgID').AsInteger > 0 then
          RecommiteSave.Orgid := sp_inbox.FieldByName('OrgID').AsInteger;
       {Ranjbar}
       Select_LetterReCommiteIsAnswer.AsBoolean := True; //ÃÊ«» Ì« «—Ã«⁄
       //---
    end;

    if not RecommiteSave.DBCIsCopy.Enabled then//›ﬁÿ ŒÊ«‰œ‰Ì
       RecommiteSave.DBCIsCopy.Checked:=true
    else
       dm.Select_LetterReCommiteIsCopy.AsBoolean:=dm.DefaultisCopy;

    RecommiteSave.MoreOrg.Enabled := _selectedRecommitesID.Count <= 1; *)
  RecommiteSave.ShowModal;
  //end;{dm}

  RefreshQuery;
end;

procedure TMainForm.AshortCutExecute(Sender: TObject);
begin
  inherited;
  UserShortCutF := TUserShortCutF.Create(Application);
  UserShortCutF.ShowModal;
end;

procedure TMainForm.AchangePasswordExecute(Sender: TObject);
begin
  inherited;
  FchangePassword := TFchangePassword.Create(Application);
  FchangePassword.ShowModal;
end;

procedure TMainForm.AActivateExecute(Sender: TObject);
begin
  inherited;
  if messageShow(80,true) then
  begin
    //with dm do
    begin
      //Exec_Activate_Recommite(sp_inboxrecommiteid.AsInteger);

      if FInbox.lettersDbGrid.DataSource.DataSet = dm.Sp_Inbox then
        Exec_Activate_Recommite(dm.sp_inboxrecommiteid.AsInteger)
      else
        Exec_Activate_Recommite(Sp_Inbox2recommiteid.AsInteger);

      RefreshQuery;
    end;
  end;
end;

procedure TMainForm.AEditExecute(Sender: TObject);
begin
  inherited;
  case dm.sp_inboxLetter_Type.AsInteger of
    1:ViewReceivedLetter(dm.sp_inboxLetterID.AsInteger);
    2:ViewSentLetter(dm.sp_inboxLetterID.AsInteger);
    //3:ViewInnerLetter; // Amin 1391/07/15
    3:ViewInnerLetter(Dm.sp_inboxLetterID.AsInteger); // Amin 1391/07/15
   end;
  RefreshQuery;
end;

//procedure TMainForm.ViewInnerLetter;  // Amin 1391/07/15
procedure TMainForm.ViewInnerLetter(LetterID : integer); // Amin 1391/07/15
begin
   inherited;
   with FinnerLetter do
   begin
      FinnerLetter := TFinnerLetter.Create(Application);
      FinnerLetter.SecID := Dm.sp_inboxSecretariatID.AsInteger;
      //GetLetter(Dm.sp_inboxLetterID.AsInteger); // Amin 1391/07/15
      GetLetter(LetterID); // Amin 1391/07/15
      Read_only := (Dm.sp_inboxIsCopy.AsBoolean and (select_LetterFromOrgID.AsInteger<>_UserFromOrgID))
                   or Dm.sp_inboxProceeded.AsBoolean;
      ShowModal;
   end
end;

procedure TMainForm.AArchiveExecute(Sender: TObject);
begin
   inherited;

   if FInbox.SBArchive.Down then
   begin
     MakeSelectedRecommites;

     with MainForm.sp_inbox2 do
     begin
        if Not DataSetPost then
          Exit;
     end;
     LetterArchiveform := TLetterArchiveform.Create(application);
     LetterArchiveform.LetterID := MainForm.sp_inbox2.FieldByName('recommiteid').AsInteger;
     LetterArchiveform.ShowModal;

     // Commented by saeedi on 96/11/02
//     with dm.sp_inbox2 do
//     begin
//        if Not DataSetPost then
//           Exit;
//        LetterArchiveform := TLetterArchiveform.Create(application);
//        LetterArchiveform.LetterID := Dm.sp_inboxrecommiteid.AsInteger;// recommiteid insteed letterid
//        LetterArchiveform.ShowModal;
//     end;
   end
   else
   begin
     MakeSelectedRecommites;
     with dm.sp_inbox do
     begin
        if Not DataSetPost then
           Exit;
        LetterArchiveform := TLetterArchiveform.Create(application);
        LetterArchiveform.LetterID := Dm.sp_inboxrecommiteid.AsInteger;// recommiteid insteed letterid
        LetterArchiveform.ShowModal;
     end;
   end;

   RefreshQuery;
   if FInbox.SBArchive.Down then
   begin
     if FInbox.valueLocate > 0 then
     begin
       MainForm.Sp_Inbox2.Locate('recommiteid',FInbox.valueLocate,[loCaseInsensitive]);
     end
   end
end;

procedure TMainForm.aarchiveOrganizeExecute(Sender: TObject);
begin
  inherited;
  ArchiveOrganizeForm := TArchiveOrganizeForm.Create(Application);
  ArchiveOrganizeForm.OrganizeMode:= True;
  ArchiveOrganizeForm.ShowModal;
  FInbox.DSForm.DataSet := Exec_Get_ArchiveFolder_byUserID(_userid,1); //·Ì”  “Ê‰ﬂ‰Â«
end;

procedure TMainForm.TimerTimer(Sender: TObject);
begin
  inherited;
  ActionMainMenuBar1.Font.Charset:=178;
end;

procedure TMainForm.AswitchUserExecute(Sender: TObject);
begin
  inherited;
  WinExec(pchar('yeganehbox.exe'),0);
  Application.Terminate;
end;

procedure TMainForm.AviewArchiveNoteExecute(Sender: TObject);
begin
  inherited;
  FDoCommite:=TFDoCommite.Create(Application);
  with FDoCommite do
  begin
     ReCommites.Close;
     ReCommites.Parameters[0].Value:=dm.sp_inboxRecommiteID.AsInteger;
     ReCommites.Open ;
     ReCommites.edit;
     ArchivePanel.Hide;
     ShowModal;
  end;
end;

procedure TMainForm.MakeSelectedRecommites;
var
  i:Integer;
begin

  _selectedRecommitesID.Clear;
  _selectedLettersID.Clear;
  if FInbox.lettersDbGrid.Focused then
    if FInbox.lettersDbGrid.SelectedRows.Count>0 then
      if FInbox.SBArchive.Down then
      begin
        with MainForm.sp_inbox2 do
        for i:=0 to FInbox.lettersDbGrid.SelectedRows.Count-1 do
        begin
          GotoBookmark(pointer(FInbox.lettersDbGrid.SelectedRows.Items[i]));
          // _SelectedRecommitesID.Add(dm.Sp_Inbox2recommiteid.AsString);
          //_SelectedLettersID.Add(dm.Sp_Inbox2LetterID.AsString);
        end;
      end
      else
      begin
        with dm.sp_inbox do
        for i:=0 to FInbox.lettersDbGrid.SelectedRows.Count-1 do
        begin
          GotoBookmark(pointer(FInbox.lettersDbGrid.SelectedRows.Items[i]));
          _selectedRecommitesID.Add(dm.Sp_Inboxrecommiteid.AsString);
          _selectedLettersID.Add(dm.sp_inboxLetterID.AsString);
        end;
      end
end;

procedure TMainForm.AnotePadExecute(Sender: TObject);
begin
  inherited;
  FUserNote := TFUserNote.Create(Application);
  FUserNote.ShowModal;
end;

procedure TMainForm.Action2Execute(Sender: TObject);
begin
  inherited;
  ActiveUsers := TActiveUsers.Create(Application);
  ActiveUsers.ShowModal;
end;

procedure TMainForm.SendToSecretariatExecute(Sender: TObject);
var
  ReadOnly:Boolean;
  AQry : TADOQuery;
begin
  inherited;
  if messageShow(46, True) then
  begin
    ReadOnly := False;
    AQry := TADOQuery.Create(Self);
    try
      AQry.Connection := Dm.YeganehConnection;
      AQry.Close;
      AQry.SQL.Text := 'Select 1 From LetterData Where Extention = 3 and LetterId = ' + IntToStr(dm.sp_inboxLetterID.AsInteger);
      AQry.Open;
      if not AQry.IsEmpty then
      begin
        if MessageDlg('¬Ì« ÅÌÊ”  Ê—œ »’Ê—  ›ﬁÿ ŒÊ«‰œ‰Ì »Â œ»Ì—Œ«‰Â «—”«· ê—œœø',mtConfirmation,[mbyes,mbno],0)=mryes then
          ReadOnly:=True
        else
          ReadOnly:=False;
      end;
    finally
      FreeAndNil(AQry);
    end;

    if FInbox.SBArchive.Down then
    begin
      Exec_update_Letter_Finalized(MainForm.sp_inbox2.FieldByName('LetterID').AsInteger, True, ReadOnly);
    end
    else
    begin
      // ⁄ÌÌ‰ „Ì ﬂ‰œ ﬂÂ ‰«„Â ÅÌ‘ ‰ÊÌ” ‰Â«ÌÌ ‘œÂ «”  Ê »Â œ»Ì—Œ«‰Â «—”«· „Ì ê—œœ
      Exec_update_Letter_Finalized(dm.sp_inboxLetterID.AsInteger, True, ReadOnly);
    end;
    MBaseForm.MessageShowString('ò«—»— ê—«„Ì ° ‰«„Â ‘„« »« „Ê›ﬁÌ  «—”«· ‘œ',False);
    RefreshQuery;
  end;
end;

procedure TMainForm.ALoadPDFExecute(Sender: TObject);
begin
  inherited;
  if Not DataSetPost then
    Exit;

  FLoadPDF := TFLoadPDF.Create(Application);
  with FLoadPDF do
  begin
    LetterID  := dm.sp_inboxLetterID.AsInteger;
    RReadOnly := dm.sp_inboxIsCopy.AsBoolean;
    ShowModal;
  end;

end;

procedure TMainForm.AviewRecommiteExecute(Sender: TObject);
begin
  inherited;
  {Ranjbar}
  if FInbox.lettersDbGrid.DataSource.DataSet.RecordCount = 0 then
     Exit;
  //---
  RecommiteSave := TRecommiteSave.Create(Application);
  {Ranjbar 88.05.31 Code=133}
  //dm.ExecSelect_LetterReCommite(dm.sp_inboxLetterID.AsInteger,3);
  RecommiteSave.ShowReadOnly := True;
  dm.ExecSelect_LetterReCommite(dm.sp_inboxLetterID.AsInteger,dm.sp_inboxReType.AsInteger{‰Ê⁄ «—Ã«⁄});
  //---
  try
    //dm.Select_LetterReCommite.Locate('id',dm.sp_inboxid.AsInteger,[]); //›Ì·œ  — Ì» «—Ã«⁄« 
    dm.Select_LetterReCommite.First;
    while not dm.Select_LetterReCommite.eof do
    begin
      try
        dm.Select_LetterReCommite.Next;
        if dm.Select_LetterReCommiteID.AsInteger = dm.sp_inboxReType.AsInteger then
          exit;
      except
      end;
    end;
  except
  end;
  {Ranjbar 88.05.31 Code=133} //«—”«·Â«Ì »«Ìê«‰Ì ‰‘œÂ Ê  „«„Ì «—”«· ‘œÂ Â«
  if (FInbox.Get_UserSecretariat_TreeTag.AsInteger in [2,3]) And (FInbox.PageControl1.TabIndex = 0) then
     dm.Select_LetterReCommite.Locate('id',dm.sp_inboxid.AsInteger + 1 ,[]); //›Ì·œ  — Ì» «—Ã«⁄« 
  //---
  RecommiteSave.RecommiteID := dm.sp_inboxrecommiteid.AsInteger;
  dm.Select_LetterReCommite.edit;
  RecommiteSave.ShowModal;
end;

procedure TMainForm.ACustomizeGridExecute(Sender: TObject);
begin
  inherited;
  FInbox.lettersDbGrid.CustomizePrint;
end;

procedure TMainForm.AinnerLetterExecute(Sender: TObject);
begin
   inherited;
   if dm.SecID=0 then
   begin
      messageShowString('«» œ« œ»Ì—Œ«‰Â «Ì —« òÂ „Ì ŒÊ«ÂÌœ ‰«„Â œ—¬‰ À»  ò‰Ìœ „‘Œ’ ò‰Ìœ',false);
      //Ranjbar 88.03.13
      AsecChangeExecute(Sender);
      if Dm.SecId > 0 then
         AinnerLetterExecute(Sender);
      //---
      Exit;
   end;

   with FinnerLetter do
   begin
      FinnerLetter := TFinnerLetter.Create(Application);
      FinnerLetter.SecID := dm.SecID;
      GetLetter(0);
      DataSetInsert.Execute;
      select_LetterFromOrgID.AsInteger := _UserFromOrgID;
      DBLKCBFormOrgTitle.OnClick(DBLKCBFormOrgTitle);
      OwnerPanel.Enabled := False;
      OwnerLabel.Caption := '«ÌÃ«œ ò‰‰œÂ';
      //FinnerLetter.SenderCode.Text:= FinnerLetter.ADOQuery1code.AsString;
      ShowModal;
   end;
   RefreshQuery;
end;

procedure TMainForm.AGetMessageExecute(Sender: TObject);
begin
  inherited;
  FrGetMessage := TFrGetMessage.Create(Application);
  FrGetMessage.ShowModal;
end;

procedure TMainForm.ASendMessageExecute(Sender: TObject);
begin
  inherited;
  FrSendMessage := TFrSendMessage.Create(Application);
  FrSendMessage.ShowModal;
end;

procedure TMainForm.AEditSubjectExecute(Sender: TObject);
begin
  inherited;
  with FrEditSubject do
  begin
     FrEditSubject := TFrEditSubject.Create(Application);
     GetLetter(dm.sp_inboxLetterID.AsInteger);
     ReCommites.Close;
     ReCommites.Parameters[0].Value:=dm.sp_inboxRecommiteID.AsInteger;
     ReCommites.Open;
     ReCommites.edit;
     ShowModal;
   end;
  RefreshQuery;
end;

procedure TMainForm.ABrowsArchiveExecute(Sender: TObject);
begin
   inherited;
   {Ranjbar}
   if Dm.SecId = 0 then //œ»Ì—Œ«‰Â
   begin
      MBaseForm.MessageShowString('·ÿ›« «» œ« œ»Ì—Œ«‰Â ŒÊœ —« «‰ Œ«» ‰„«ÌÌœ', False);
      SecChange := TSecChange.Create(Application);
      SecChange.ShowModal;
      Status4.Caption := dm.SecretariatsSecTitle.AsString;
      if Dm.SecId = 0 then
         Exit;
   end;
   //---

   frBrowsArchive := TFrBrowsArchive.Create(Application);
   FrBrowsArchive.ShowModal;

end;

procedure TMainForm.Action3Execute(Sender: TObject);
begin
   inherited;
   ShowWindow(Application.Handle, SW_HIDE);
   hide;
   {Ranjbar 90.02.14 ID=367}
   FInbox.IsSoftInWaitting := True;
   //---
end;

procedure TMainForm.N1Click(Sender: TObject);
begin
   inherited;
   Show;
   ShowWindow(Application.Handle, SW_SHOW);

   {Ranjbar 90.02.14 ID=367}
   FInbox.IsSoftInWaitting := False;
   Application.ProcessMessages;
   RefreshQuery;
   FInbox.UserTimerTimer(Sender); //Å‰Ã—Â ‰„«Ì‘ ÅÌ€«„ Ì« ¬·«—„
   //---
end;

procedure TMainForm.o1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TMainForm.Action4Execute(Sender: TObject);
Var
   Action : TCloseAction;
begin
   inherited;
   FormClose(Sender,Action);
   //WinExec('yeganehbox.exe',0);
   WinExec(Pchar(ExtractFileName(Application.ExeName)),0);
   Application.Terminate;
end;

procedure TMainForm.AaddLetterDataExecute(Sender: TObject);
begin
   inherited;
   if FInbox.SBArchive.Down then
   begin
     FraddLetterData := TFraddLetterData.Create(Application);
     with FraddLetterData,dm do
     begin
        LetterID       := Sp_Inbox2.fieldbyname('LetterID').AsInteger;
        ReadOnly       := sp_inbox2.FieldByName('IsCopy').AsBoolean;
        Letter_Or_Erja := 'Letter';
        DSForm.DataSet := Dm.Get_LetterData_by_LetterID;
        RecommitID     := MainForm.Sp_Inbox2.fieldbyname('recommiteid').Value;
        ShowModal;
        UpdateFinalized(Sp_Inbox2.fieldbyname('LetterID').AsInteger,MainForm.Sp_Inbox2.fieldbyname('recommiteid').Value);
     end;
   end
   else
   begin
     FraddLetterData := TFraddLetterData.Create(Application);
     with FraddLetterData,dm do
     begin
        LetterID       := sp_inboxLetterID.AsInteger;
        ReadOnly       := sp_inboxIsCopy.AsBoolean;
        Letter_Or_Erja := 'Letter';
        DSForm.DataSet := Dm.Get_LetterData_by_LetterID;
        RecommitID     := dm.Sp_Inboxrecommiteid.Value;
        ShowModal;
        UpdateFinalized(sp_inboxLetterID.AsInteger,dm.Sp_Inboxrecommiteid.Value);
     end;
   end;

   RefreshQuery;
   if FInbox.SBArchive.Down then
   begin
     if FInbox.valueLocate > 0 then
     begin
       MainForm.Sp_Inbox2.Locate('recommiteid',FInbox.valueLocate,[loCaseInsensitive]);
     end
   end

end;

procedure TMainForm.AdeleteWordExecute(Sender: TObject);
begin
   inherited;
   {Ranjbar 89.09.17 ID=243}
   //if Dm.Sp_InboxSignerID.AsInteger<>_UserFromOrgID then
   if not(Dm.Sp_InboxSignerID.IsNull)And(Dm.Sp_InboxSignerID.AsInteger <> _UserFromOrgID) then
   //---
   begin
      {Ranjbar 89.09.17 ID=243}
      //MessageShowString(' «Ì‰ ‰«„Â „ ⁄·ﬁ »Â ‘„« ‰Ì”  ·–« ‰„Ì  Ê«‰Ìœ Word ¬‰ —« Õ–› ò‰Ìœ',false);
      MessageShowString('ﬂ«—»— ê—«„Ì »œ·Ì· «Ì‰ﬂÂ ›Ì·œ «ﬁœ«„ ﬂ‰‰œÂ  «Ì‰ ‰«„Â ﬂ«—»— œÌê—Ì „Ì»«‘œ° «„ﬂ«‰ Õ–› ›«Ì· Ê—œ  Ê”ÿ ‘„« ÊÃÊœ ‰œ«—œ' ,false);
                        {#13 + 'œ— œ»Ì—Œ«‰Â »—«Ì ‰«„Â Â«Ì Ê«—œÂ ° À»  ﬂ‰‰œÂ ‰«„Â Ê »—«Ì ‰«„Â Â«Ì ’«œ—Â ﬂ«—»—)' +
                        #13 + ' ⁄ÌÌ‰ ‘œÂ œ— ›—„  ‰ŸÌ„«  ﬂ«—»—Ì „Ì  Ê«‰‰œ Ê—œ ‰«„Â —« Õ–› ‰„«Ì‰œ'+
                        #13 + '(Ê œ— ﬂ«— «»· ﬂ«—»— À»  ﬂ‰‰œÂ ‰«„Â ’«œ— »⁄‰Ê«‰ «ﬁœ«„ ﬂ‰‰œÂ „⁄—›Ì „Ì ‘Êœ',false);}
      //---
      Exit;
   end;

   if MessageShow(39,True) then
   begin
      if Dm.Sp_InboxIsCopy.AsBoolean then
      begin
         MBaseForm.MessageShowString('«Ì‰ ‰«„Â ›ﬁÿ ﬁ«»· ŒÊ«‰œ‰ „Ì»«‘œ Ê €Ì—ﬁ«»·  €ÌÌ— «” ', False);
         Exit;
      end;
      Exec_Delete_LetterWord(dm.sp_inboxLetterID.AsInteger);
      DeleteSignLog(dm.sp_inboxLetterID.AsInteger);
      RefreshQuery;
   end;
end;

procedure TMainForm.DeleteSignLog(LetterID: Integer);
begin
   with TADOQuery.Create(nil)do
   begin
      Connection := dm.YeganehConnection;
      SQL.Text := 'DELETE FROM LetterSign WHERE LetterID='+IntToStr(LetterID);
      ExecSQL;
   end;
end;

procedure TMainForm.Action8Execute(Sender: TObject);
begin
  inherited;
  FInbox.FollowupPanel.Show;
  FInbox.UpAndDownBtn2.Visible := False  ;
end;

procedure TMainForm.Action7Execute(Sender: TObject);
begin
  inherited;
  FInbox.Button1.OnClick(nil)
end;

procedure TMainForm.LetterFollowUpExecute(Sender: TObject);
 var sf: integer;
begin
  inherited;
  sf:=Exec_Select_FolllowUp_ByLetterID(dm.sp_inboxLetterID.AsInteger,_userid);
  FrFollowUp:=TFrFollowUp.Create(Application);
  FrFollowUp.StartFollowUpID:=sf;
  FrFollowUp.LetterID:=dm.sp_inboxLetterID.AsInteger;
  FrFollowUp.refreshData;

  if sf=0 then
    FrFollowUp.Select_FollowUp_ByStart.Insert;
    
  FrFollowUp.ShowModal;
  FInbox.RefreshFollowUP;

end;

procedure TMainForm.F9KeyExecute(Sender: TObject);
begin
  inherited;
  if FInbox.Proceed then
    AArchive.Execute
   else
    ADoCommite.Execute;
end;

procedure TMainForm.Action6Execute(Sender: TObject);
begin
  inherited;
  FrRecommiteStat := TFrRecommiteStat.Create(Application);
  FrRecommiteStat.ShowModal;

end;

procedure TMainForm.Action1Execute(Sender: TObject);
begin
  inherited;
  FrRecommiteReport := TFrRecommiteReport.Create(Application);
  FrRecommiteReport.ShowModal;
end;

procedure TMainForm.AAddAlternativeUserExecute(Sender: TObject);
begin
  inherited;
  FrAddAlternativeUser:=TFrAddAlternativeUser.Create(Application);
  FrAddAlternativeUser.ShowModal;
end;

procedure TMainForm.AChangeOrgIDExecute(Sender: TObject);
begin
  inherited;
  FrChangeOrgID:=TFrChangeOrgID.Create(Application);
  FrChangeOrgID.ShowModal;
end;

procedure TMainForm.Action9Execute(Sender: TObject);
begin
  inherited;
  if dm.sp_inboxhas_WordPage.AsBoolean then
    if SaveDialog.Execute then
      if pos('.doc',SaveDialog.FileName)<>0 then
        SaveWordFile(dm.sp_inboxLetterID.AsInteger,SaveDialog.FileName)
      else
        SaveWordFile(dm.sp_inboxLetterID.AsInteger,SaveDialog.FileName+'.doc');
end;

procedure TMainForm.aLoadFileExecute(Sender: TObject);
var
//Hamed_Ansari_990701_S
   //f: pchar;
   f: String;
//Hamed_Ansari_990701_E
begin
  inherited;
  if FInbox.SBArchive.Down then
  begin
    f:= loadLetterdata(MainForm.sp_inbox2.fieldbyname('LetterID').AsInteger);
    if FileExists(f) then
//Hamed_Ansari_990701_S
//     ShellExecute(Handle,'open',f,nil,nil,SW_SHOWNORMAL)
    ShellExecute(Handle,'open',PChar(f),nil,nil,SW_SHOWNORMAL)
//Hamed_Ansari_990701_E
  end
  else
  begin
    f:= loadLetterdata(dm.sp_inboxLetterID.AsInteger);
    if FileExists(f) then
//Hamed_Ansari_990701_S
//     ShellExecute(Handle,'open',f,nil,nil,SW_SHOWNORMAL)
    begin
      Sleep(500);
      ShellExecute(Handle,'open',PChar(f),nil,nil,SW_SHOWNORMAL);
      Sleep(500);
    end;
//Hamed_Ansari_990701_E
  end;
end;

{Ranjbar 87.10.30}
//ﬂ‰ —·Â« «“ çÅ »Â —«”  BidiMode  €ÌÌ—

//‰„«Ì‘ ›—„Â« Â„—«Â »« «‰Ì„Ì‘‰
//Form_Animate(Self,Setting_GetValue('AnimateTime',dtInteger,250));
//   ‰ò Â: »Ã«Ì ‰«„ ›—„ «“ «Ì‰ ò·„Â «” ›«œÂ ‘Êœ
//‰ò Â: ”—⁄  «‰Ì„Ì‘‰ ‰»«Ìœ ò„ — «“ 100 »«‘œ
Procedure TMainForm.Form_Animate(aForm:TForm;aAniTime:Integer=250);
Var
   I,X,Y:integer;
   AniTime:integer;
begin
   X := (Screen.DesktopWidth - aForm.Width) Div 2;
   Y := ((Screen.DesktopHeight - aForm.Height) Div 2)-17;
   aForm.SetBounds(X, Y, aForm.Width, aForm.Height);

   Randomize;
   I:=RandomRange(1,9);
   Case I of
     1:begin
          AnimateWindow(aForm.Handle , aAniTime , AW_HOR_POSITIVE or AW_HOR_NEGATIVE or AW_CENTER);
          AnimateWindow(aForm.Handle , aAniTime-50, AW_HOR_POSITIVE or AW_HOR_NEGATIVE or AW_Hide);
       end;
     2:begin
          AnimateWindow(aForm.Handle , aAniTime , AW_HOR_POSITIVE or AW_HOR_NEGATIVE or AW_SLIDE);
          AnimateWindow(aForm.Handle , aAniTime-50, AW_HOR_NEGATIVE or AW_HOR_POSITIVE or AW_Hide);
       end;
     3:begin
          AnimateWindow(aForm.Handle , aAniTime , AW_VER_NEGATIVE or AW_SLIDE);
          AnimateWindow(aForm.Handle , aAniTime-50, AW_VER_POSITIVE or AW_Hide);
       end;
     4:begin
          AnimateWindow(aForm.Handle , aAniTime , AW_HOR_POSITIVE or AW_VER_NEGATIVE or AW_SLIDE);
          AnimateWindow(aForm.Handle , aAniTime-50, AW_HOR_POSITIVE or AW_VER_POSITIVE or AW_Hide);
       end;
     5:begin
          AnimateWindow(aForm.Handle , aAniTime , AW_HOR_POSITIVE or AW_HOR_NEGATIVE or AW_CENTER) ;
          AnimateWindow(aForm.Handle , aAniTime-50, AW_HOR_POSITIVE or AW_HOR_NEGATIVE or AW_Hide) ;
       end;
     6:begin
          AnimateWindow(aForm.Handle , aAniTime , AW_HOR_POSITIVE or AW_VER_NEGATIVE or AW_SLIDE);
          AnimateWindow(aForm.Handle , aAniTime-50, AW_HOR_POSITIVE or AW_VER_POSITIVE or AW_Hide);
       end;
     7:begin
          AnimateWindow(aForm.Handle , aAniTime , AW_HOR_NEGATIVE or AW_VER_NEGATIVE or AW_SLIDE);
          AnimateWindow(aForm.Handle , aAniTime-50 , AW_HOR_POSITIVE or AW_VER_POSITIVE or AW_Hide);
       end;
     8:begin
          AnimateWindow(aForm.Handle , aAniTime , AW_VER_NEGATIVE or AW_HOR_NEGATIVE or AW_SLIDE);
          AnimateWindow(aForm.Handle , aAniTime-50, AW_VER_POSITIVE or AW_HOR_POSITIVE or AW_Hide);
       end;
     9:begin
          AnimateWindow(aForm.Handle , aAniTime , AW_HOR_POSITIVE or AW_HOR_NEGATIVE or AW_CENTER) ;
          AnimateWindow(aForm.Handle , aAniTime-50, AW_HOR_POSITIVE or AW_HOR_NEGATIVE or AW_Hide) ;
       end;
     {10:begin
          AnimateWindow(aForm.Handle , aAniTime , AW_HOR_POSITIVE or AW_VER_NEGATIVE or AW_Blend);
          AnimateWindow(aForm.Handle , aAniTime-50, AW_HOR_POSITIVE or AW_VER_POSITIVE or AW_Hide);
       end;
     11:begin
          AnimateWindow(aForm.Handle , aAniTime , AW_HOR_POSITIVE or AW_VER_POSITIVE or AW_Blend);
          AnimateWindow(aForm.Handle , aAniTime-50, AW_HOR_NEGATIVE or AW_VER_NEGATIVE or AW_Hide);
       end;}
    end;
end;

//«Ì‰  «»⁄ ò—”— —« œ— „Œ ’«  ò‰ —· „Ê—œ ‰Ÿ— ﬁ—«— „Ì œÂœÊ „‰ÊÌ —«”  ò·Ìò —« »«“ „Ìò‰œ
//Cursor_SetPos(Self,SBEmkanat,PopupMenu1);
//»«‘œ œÌê— „‰ÊÌ —«”  ò·Ìò »«“ ‰„Ì‘Êœ Nil œ— ’Ê— ÌòÂ Å«—«„ — ”Ê„ »—«»—
//Cursor_SetPos(Self,SBEmkanat,Nil);
Procedure TMainForm.Cursor_SetPos(aForm:TForm;Sender:TObject;aPopupMenu:TPopupMenu);
Var
   Pt:TPoint;
   X1,Y1,X2,Y2:integer;
begin
   X1 := 0;
   Y1 := 0;
   X2 := 0;
   Y2 := 0;
   Pt.x := 0;
   Pt.y := 0;
   Windows.ClientToScreen(aForm.Handle,Pt) ;
   if Not(TControl(Sender).Parent is TForm) then
   begin
      X1 := TControl(Sender).Parent.Left;
      Y1 := TControl(Sender).Parent.Top;
   end;
   if Not(TControl(Sender).Parent.Parent is TForm) then
   begin
      X2 := TControl(Sender).Parent.Parent.Left;
      Y2 := TControl(Sender).Parent.Parent.Top;
   end;
   Pt.x := Pt.x + X1 + X2 + TControl(Sender).Left+(TControl(Sender).Width Div 2);
   Pt.y := Pt.y + Y1 + Y2 + TControl(Sender).Top +(TControl(Sender).Height Div 2);
   SetCursorPos(pt.X,pt.Y);  //GetCursorPos()
   //Windows.ScreenToClient (FormName.Handle,pt) ;
   if aPopupMenu <> Nil then
      aPopupMenu.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

Procedure TMainForm.Rep_CorrectDesign(aFileName:String);
Var
   FN:String;
begin
   FN := ExtractFilePath(Application.ExeName)+'Reports\'+aFileName;
   if MBaseForm.messageShowString('¬Ì« „«Ì·Ìœ òÂ ÿ—«ÕÌ «Ì‰ ›—„ ê“«—‘ »Â Õ«·  ÅÌ‘ ›—÷ »«“ ê—œœø',true) then
      if FileExists(FN) then
         if DeleteFile(Pchar(FN)) then
            MBaseForm.messageShowString('›—„ ÿ—«ÕÌ ê“«—‘ «’·«Õ ‘œ',False)
end;

Procedure TMainForm.Rep_LoadFile(afrxReport:TfrxReport;aFileName:String);
Var
   FN ,RepDir : String;
begin
  RepDir := ExtractFilePath(Application.ExeName)+'Reports';
  if not DirectoryExists(RepDir) then
    CreateDir(RepDir);
  FN := RepDir+'\'+aFileName;
  if Not FileExists(FN) then
    afrxReport.SaveToFile(FN)
  else
  begin
    afrxReport.Clear;
    afrxReport.LoadFromFile(FN);
  end;
end;

Procedure TMainForm.Rep_Show(afrxReport:TfrxReport;ReportType:TReportType);
begin
  afrxReport.PrepareReport();
  Case ReportType of
    rtShow   : afrxReport.ShowReport();
    rtPrint  : afrxReport.Print();
    rtDesign : afrxReport.DesignReport();
  end;
end;

//---

{Ranjbar}
//Example =>  Select_LetterMemo.AsString := FillBlobField(Self,DBMemo2.Text,'„ ‰ „÷„Ê‰ ‰«„Â');
Function TMainForm.FillBlobField(aForm:TForm;aDBMemoText:WideString;aEditoCaption:String):WideString;
var
   DBRE : TwwDBRichEdit;
   SpFillBlob : TADOStoredProc;
   DSFillBlob : TDataSource;
begin
  {if not(select_Letter.State in [dsInsert,dsEdit]) then
     Exit;}
  SpFillBlob := TADOStoredProc.Create(Nil);
  SpFillBlob.Connection := dm.YeganehConnection;
  SpFillBlob.ProcedureName := 'Sp_FillBlob;1';
  DSFillBlob := TDataSource.Create(Nil);
  DSFillBlob.DataSet := SpFillBlob;
  SpFillBlob.Close;
  SpFillBlob.Open;
  SpFillBlob.Insert;
  SpFillBlob.FieldByName('MyBlobField').AsString := aDBMemoText;

  DBRE := TwwDBRichEdit.Create(Nil);
  DBRE.Parent := aForm;
  //DBRE.Visible := False;
  DBRE.SendToBack;
  DBRE.EditorCaption := aEditoCaption;
  DBRE.DataSource := DSFillBlob;
  DBRE.DataField := 'MyBlobField';
  DBRE.Execute;

  Result := DBRE.Text;
  SpFillBlob.Cancel;
  SpFillBlob.Close;
end;
//---

procedure TMainForm.ShowFmNewsUsers(aLocateID:integer=0);
begin
  //‰„«Ì‘ ›—„ ·Ì”  Œ»—Â«
  FmNewsUsers := TFmNewsUsers.Create(Application);
  FmNewsUsers.LocateID := aLocateID;
  FmNewsUsers.ShowModal;
end;

procedure TMainForm.Action5Execute(Sender: TObject);
begin
  inherited;
  ShowFmNewsUsers(0);
end;

procedure TMainForm.EmailExecute(Sender: TObject);
begin
  inherited;
  FmEmails := TFmEmails.Create(Application);
  FmEmails.ShowModal;
end;

procedure TMainForm.Act_WorkGroupExecute(Sender: TObject);
begin
  inherited;
  Form_WorkGroupFM.ShowModal;{HKH}
//  FMWorkGroup := TFMWorkGroup.Create(Application);
//  FMWorkGroup.ShowModal;
end;

procedure TMainForm.ActPhoneExecute(Sender: TObject);
begin
   inherited;
   FmPhone := TFmPhone.Create(Application);
   FmPhone.ShowModal;
end;

procedure TMainForm.ADraftToLetterExecute(Sender: TObject);
Var
   l, NewId, oldID:integer;
   InnerNo, IndicatorId : string ;
   
   Procedure SetWordLetterNo;
   Var
      no:string;
   begin
      {Ranjbar 90.02.05 ID=365}
      {try
         //»œ”  ¬Ê—œ‰ ﬂœ ç«—  ”«“„«‰Ì + '/' + NewAndicatorID
         //«ê— ﬂ«—»— »ŒÊ«Âœ œ—  —ﬂÌ» ‘„«—Â ‰«„Â ÅÌ‘ ﬂœ ç«—  ”«“„«‰Ì ﬁ—«— êÌ—œ œ«—Ì„
         No := Dm.Cdate( Exec_Get_OrgPreCodeByID(dm.Get_All_LetterFromOrgID.AsInteger)+'/'+IntToStr(newId) );
      except
         No := IntToStr(newId);
      end;}
      No := IntToStr(NewID);
      //---

      {Ranjbar}
      //çﬂ ﬂ—œ‰ ÊÃÊœ ›«Ì· Ê—œ
      {Ranjbar 89.10.28 ID=271}
      //if Dm.ExecGet_LetterWordFile(dm.Sp_InboxLetterID.AsInteger,False,False) then
  //       ShowMyMessage('ÅÌ€«„','ﬂ«—»— ê—«„Ì ° »œ·Ì·  »œÌ· ‰«„Â ÅÌ‘ ‰ÊÌ” »Â ‰«„Â ﬁÿ⁄Ì ° '+
 //                   '›Ì·œ "‘„«—Â ‰«„Â" «ê— œ— œ«Œ· ›«Ì· Ê—œ ÊÃÊœ œ«‘ Â »«‘œ ° '+
 //                   '¬‰ ‘„«—Â ‰«„Â «’·«Õ ŒÊ«Âœ ‘œ',[mbOK],mtInformation);
      //---

         Dm.spGetInnerNo.Close;
         Dm.spGetInnerNo.Parameters.ParamByName('@LetterID').Value:=Dm.Sp_InboxLetterID.AsInteger;
         Dm.spGetInnerNo.Parameters.ParamByName('@SecID').Value:=Dm.Sp_InboxSecretariatID.AsInteger;
         Dm.spGetInnerNo.Open;

     { if Dm.ExecGet_LetterWordFile(Dm.Sp_InboxLetterID.AsInteger,False,False) then
      begin
         FMyMessage:=TFMyMessage.Create(Self);
         FMyMessage.lblMessage1.Caption:=' ‘„«—Â ‰«„Â  ';
         FMyMessage.OldShomarehNameh.Caption:=Dm.Sp_InboxInnerNo.AsString;
         FMyMessage.Label1.Caption:=' »Â ‘„«—Â ‰«„Â ';
         FMyMessage.NewShomarehNameh.Text:=Dm.spGetInnerNoInnerNo.AsString;
         FMyMessage.lblMessage2.Caption:='  €ÌÌ— Ì«› Â «” . ';
         FMyMessage.ShowModal;

//         ShowMyMessage('ÅÌ€«„',' ‘„«—Â ‰«„Â  '+  Dm.Get_All_LetterInnerNo.AsString +
//                    ' »Â ‘„«—Â ‰«„Â '+ Dm.spGetInnerNoInnerNo.AsString +
//                    '  €ÌÌ— Ì«› . ·ÿ›« «’·«Õ ‰„«ÌÌœ ',[mbOK],mtInformation);
      end;  }

      if not dm.ExecGet_LetterWordFile(Dm.Sp_InboxLetterID.AsInteger,false) then
         exit;
      with dm.WordApplication do
      begin
         If ActiveWindow.ActivePane.View.Type_ in[ wdNormalView ,wdOutlineView] Then
            ActiveWindow.ActivePane.View.Type_:= wdPrintView;

         {Ranjbar 89.10.28 ID=271}
         //ActiveWindow.ActivePane.View.SeekView := wdSeekCurrentPageHeader;//ﬂ·„«  —« ‰„Ì œÂœ Replace «Ã«“Â
         //ReplaceInWord(dm.WordApplication,'ÅÌ‘‰ÊÌ”',no);
        // ReplaceInWord(Dm.WordApplication,Dm.Sp_InboxIndicatorID.AsString,no);//ReplaceInWord(Dm.WordApplication , '/'+Dm.Sp_InboxIndicatorID.AsString+'/' , '/'+no+'/');
         //---

        // ReplaceInWord(dm.WordApplication,' «—ÌŒ  ÂÌÂ',dm.Cdate(_Today));


        // ActiveWindow.ActivePane.View.SeekView := wdSeekMainDocument;
        ActiveWindow.ActivePane.View.SeekView := wdSeekCurrentPageHeader; //«‰ ﬁ«· „ò«‰ ‰„« »Â Âœ— ’›ÕÂ ÊÊ—œ
      end;
   end;

begin
  inherited;
  {Ranjbar}
  if Not DataSetPost then
    Exit;
  fmAssignLetterIndicator := TfmAssignLetterIndicator.Create(self);
  fmAssignLetterIndicator.lblMessage.Caption := Get_sysAppMessage(34)+' '+
             dm.sp_inboxIndicatorID.AsString+' '+Get_sysAppMessage(35);
  oldId := dm.sp_inboxIndicatorID.AsInteger;
  fmAssignLetterIndicator.ShowModal;
  if fmAssignLetterIndicator.ModalResult = mrCancel then
   Exit;

  newId := dm.LastIndicatorID(dm.sp_inboxLetter_Type.AsInteger,1,dm.sp_inboxSecretariatID.AsInteger );
  if dm.EqualAnswerIndicator then // ‰ŸÌ„«  ”Ì” „Ì : ‘„«—Â ‰«„Â ÃÊ«» ‰«„Â Ê«—œÂ »« ‘„«—Â ‰«„Â Ê«—œÂ ÌﬂÌ »«‘œ.
  begin
    L := Exec_Get_indicatorID_BySentLetterID(dm.sp_inboxLetterID.AsInteger);
    if L>0 then
       newId := L;
  end;

  // »œÌ· ‰«„Â ÅÌ‘ ‰ÊÌ” »Â ‰«„Â €Ì— Ê«—œÂ
  with fmAssignLetterIndicator do
  begin
    Draft_to_SentLetter(dm.sp_inboxLetterID.AsInteger,newid,IsCopy.Checked,Proceed.Checked,IsCopy_In_Dabir.Checked);
    //( ⁄ÌÌ‰ „Ì ﬂ‰œ ﬂÂ ‰«„Â ÅÌ‘ ‰ÊÌ” ‰Â«ÌÌ ‘œÂ «”  (Œ«—Ã ﬂ—œ‰ ‰«„Â «“ Õ«·  ÅÌ‘ ‰ÊÌ”
    if ArchiveCurrent.Checked then
       Exec_update_ReCommites_proceed(dm.sp_inboxrecommiteid.AsInteger,true,_Today,atDone_Archived)
    else
       Exec_Activate_Recommite(dm.sp_inboxrecommiteid.AsInteger);
  end;

  Exec_update_Letter_Finalized(dm.sp_inboxLetterID.AsInteger,true,False);
  ShowMsgString(Get_sysAppMessage(54)+ '  ' +IntToStr(newId)+ '  '+ Get_sysAppMessage(55)+
               #13#13+' («‰ ﬁ«· »Â ﬁ”„  "«—”«·Â«Ì »«Ìê«‰Ì ‰‘œÂ") ');
  SetWordLetterNo;
  {Ranjbar}
  //LetterFormat := 1; //Refresh ‰«„Â „⁄„Ê·Ì
  if dm.Sp_Inboxhas_WordPage.AsBoolean then
  begin
        FExportToWord:= TFExportToWord.Create(self);

        (*//Comment By Sanaye 940918
        with TADOQuery.Create(nil)do
        begin
           Connection := dm.YeganehConnection;
           SQL.Text := 'select dbo.InnerNo('+Dm.Sp_InboxLetterID.AsString+')';
           Open;
           if not IsEmpty then
              InnerNo := Fields[0].AsString;

        end;
        ReplaceInWord(FExportToWord.WordApplication, IntToStr(oldID), dm.Cdate(InnerNo) );
        FExportToWord.Close;
        *)

        //add by Sanaye 940918
        //¬ÅœÌ  ò—œ‰ ‘„«—Â ‰«„Â œ— ÊÊ—œ »«  ‰ŸÌ„ ÊÊ—œÌ
        with TADOQuery.Create(self) do
        begin
          try
            Connection := Dm.YeganehConnection;
            sql.Text := 'select IndicatorId from Letter where LetterId = '+dm.sp_inboxLetterID.AsString;
            Open;
            if Not IsEmpty then
              IndicatorId :=  Fields[0].AsString;
          finally
            Free;
          end;
        end;
        ReplaceInWord(FExportToWord.WordApplication,'(('+IntToStr(oldID)+'))',IndicatorId );
        dm.WordApplication.ActiveWindow.ActivePane.View.SeekView := wdSeekMainDocument;// «‰ ﬁ«· „ò«‰ ‰„« »Â ’›ÕÂ «’·Ì ÊÊ—œ
        ReplaceInWord(FExportToWord.WordApplication, '(('+IntToStr(oldID)+'))', IndicatorId );
        FExportToWord.Close;
        //end Sanaye...

  end;
  Try
    RefreshQuery;
  Except
  End;
   //---
end;

procedure TMainForm.Action12Execute(Sender: TObject);
begin
  inherited;
  RefreshAction.Execute;
end;

procedure TMainForm.ARecommiteListExecute(Sender: TObject);
begin
  inherited;
   FrRecommiteList := TFrRecommiteList.Create(Application);
  if FInbox.PageControl1.TabIndex <> 1 then
     FrRecommiteList.LetterID := Dm.Sp_InboxLetterID.AsInteger
   else
     FrRecommiteList.LetterID := MainForm.sp_inbox2.FIELDBYNAME('LetterID').AsInteger;//79597;//Dm.Sp_Inbox2LetterID.AsInteger;
   FrRecommiteList.ShowModal;
end;


procedure TMainForm.ShowInnerLetter(aLetterID:Integer);
begin
  inherited;
  FinnerLetter := TFinnerLetter.Create(Application);
  FinnerLetter.SecID := Dm.Sp_InboxSecretariatID.AsInteger;
  FinnerLetter.GetLetter(aLetterID);
  FinnerLetter.ShowModal;
end;

procedure TMainForm.acRepMohlateEghdamExecute(Sender: TObject);
begin
  FRepMohlateEghdam := TFRepMohlateEghdam.Create(Application);
  FRepMohlateEghdam.ShowModal;
end;

function TMainForm.GetUserOrgID: Integer;
begin
  Result:=0;
  QTemp.Close;
  QTemp.SQL.Clear;
  QTemp.SQL.Add('SELECT FromOrgID FROM Users WHERE Id='+IntToStr(_UserID));
  QTemp.Open;
  if not QTemp.IsEmpty then Result:=QTemp.FieldValues['FromOrgID'];
end;

procedure TMainForm.acMyWorkSheetExecute(Sender: TObject);
begin
  inherited;
  FWorkSheetViews := TFWorkSheetViews.Create(Application);
  FWorkSheetViews.ShowModal;
end;

procedure TMainForm.acWorkSheetAllRepInCartableExecute(Sender: TObject);
begin
  inherited;
  FWorkSheetAllRep := TFWorkSheetAllRep.Create(Application);
  FWorkSheetAllRep.ShowModal;
end;

procedure TMainForm.acShowWorkSheetBaseInCartableExecute(Sender: TObject);
begin
  inherited;
  FWorkSheetBase := TFWorkSheetBase.Create(Application);
  FWorkSheetBase.ShowModal;
end;

procedure TMainForm.acShowWorkSheetResultExecute(Sender: TObject);
begin
  inherited;
   FWorkSheetBaseResults := TFWorkSheetBaseResults.Create(Application);
   FWorkSheetBaseResults.ShowModal;
end;

procedure TMainForm.AFulltextExecute(Sender: TObject);
begin
  inherited;
  // Amin 1391/07/15 Start
  FullTextSearchF := TFullTextSearchF.Create(Application);
  FullTextSearchF.ShowModal;
  // Amin 1391/07/15 End      
end;

procedure TMainForm.ASignExecute(Sender: TObject);
begin
  inherited;
  if (dm.Sp_Inboxhas_WordPage.AsBoolean)and(dm.Sp_InboxLetter_Type.AsInteger <>1) then
     dm.ShowSigners(dm.Sp_InboxLetterID.AsInteger,true);
end;

procedure TMainForm.APrintWordExecute(Sender: TObject);
var
  S: String;
begin
  inherited;
  S := SignedDoc(dm.Sp_InboxLetterID.AsInteger);
  if S <> '' then
    ShellExecute(handle, 'open', pchar(s), nil, nil, SW_SHOWNORMAL);
end;

procedure TMainForm.CharsetTimer(Sender: TObject);
begin
  inherited;
  if ActionMainMenuBar1.Font.Charset<>178 then
    ActionMainMenuBar1.Font.Charset:=178;
  try
   Exec_update_UserLoginLogout(_UserLoginLogoutID,false,true);
   if ForceToClose then
       AppTerminate.Enabled := true;
  except
  end;
end;

procedure TMainForm.ASearchAttachmentsExecute(Sender: TObject);
begin
  inherited;
  TextSearchF := TTextSearchF.Create(Application);
  TextSearchF.ShowModal;
end;

procedure TMainForm.ASendMailExecute(Sender: TObject);
var
   SenderName, Subject, body, toList, ccList, bccList, FileName : string;
   attachments : TStrings;
   senderApp, parameters : pAnsiChar;
   i : integer;
begin
  inherited;
  if not dm.Sp_Inbox.IsEmpty then
  begin
      //if dm.Sp_InboxLetter_Type.AsInteger = 2 then
      begin
         senderApp := pchar(ExtractFilePath(Application.ExeName)+'ServiceApp.exe');

         SenderName := dm.Sp_InboxSenderTitle.AsString;
         Subject := dm.Sp_InboxMemo.AsString;
         body := dm.Sp_InboxMemo.AsString;

         if Trim(Subject)= '' then
            Subject := dm.Sp_InboxInnerNo.AsString;

         attachments := TStringList.Create;

         if dm.Sp_Inboxhas_WordPage.AsBoolean then
         begin
            FileName := SignedDoc(dm.Sp_InboxLetterID.AsInteger);
            if FileName = '' then
               fileName := SaveDoc(dm.Sp_InboxLetterID.AsInteger, ExtractFileDir(Application.ExeName));
            if Trim(FileName)<>'' then
               attachments.Add(FileName);
         end;

         qryAllAttachmentsWithoutWord.Close;
         qryAllAttachmentsWithoutWord.Parameters[0].Value := dm.Sp_InboxLetterID.AsInteger;
         qryAllAttachmentsWithoutWord.Open;

         if not qryAllAttachmentsWithoutWord.IsEmpty then
         begin
            qryAllAttachmentsWithoutWord.First;
            while not qryAllAttachmentsWithoutWord.Eof do
            begin
               FileName := ExtractFileDir(Application.ExeName)+'\'+qryAllAttachmentsWithoutWordLetterDataID.AsString+'.'+qryAllAttachmentsWithoutWordExtention.AsString;
               qryAllAttachmentsWithoutWordImage.SaveToFile(FileName);
               attachments.Add(FileName);
               qryAllAttachmentsWithoutWord.Next;
            end;
         end;

         parameters := pchar('"Send Email" "'+SenderName+'"  "'+Subject+'"  "'+body+'"  "'+toList+'"  "'+ccList+'"  "'+bccList+'"');
         for i := 0 to attachments.Count -1 do
         begin
            parameters := pchar(parameters + ' "'+attachments.Strings[i]+'"');
         end;
         if FileExists(ExtractFilePath(Application.ExeName)+'ServiceApp.exe')then
            ShellExecute(handle, 'open', senderApp, parameters, nil, SW_SHOWNORMAL);
      end;
  end;
end;

procedure TMainForm.AppTerminateTimer(Sender: TObject);
begin
  inherited;
  dec(terminationDownCounter);
  if terminationDownCounter = 0 then
  begin
    Application.Terminate;
    Abort;
  end;
  finbox.Label19.Caption := IntToStr(terminationDownCounter);
  finbox.Label19.Visible := true;
  if terminationDownCounter = 59 then
    MessageShowString('»—‰«„Â Å” «“ Ìò œﬁÌﬁÂ »” Â ŒÊ«Âœ ‘œ° ·ÿ›«  €ÌÌ—«  ŒÊœ —« Â—çÂ ”—Ì⁄ — –ŒÌ—Â ò‰Ìœ',False);
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
  inherited;
  status6.Caption := '‘—ò  ‰—„ «›“«—Ì  '+_yeganeh;
  Caption := '« Ê„«”ÌÊ‰ «œ«—Ì  '+_yeganeh;
end;

function BrowseDialogCallBack (Wnd: HWND; uMsg: UINT; lParam, lpData: LPARAM):integer stdcall;
var
   wa, rect : TRect;
   dialogPT : TPoint;
begin
//center in work area
   if uMsg = BFFM_INITIALIZED then
   begin
      wa := Screen.WorkAreaRect;
      GetWindowRect(Wnd, Rect);
      dialogPT.X := ((wa.Right-wa.Left) div 2) - ((rect.Right-rect.Left) div 2);
      dialogPT.Y := ((wa.Bottom-wa.Top) div 2) - ((rect.Bottom-rect.Top) div 2);
      MoveWindow(Wnd,dialogPT.X,dialogPT.Y,Rect.Right - Rect.Left,Rect.Bottom - Rect.Top,True);
   end;
   Result := 0;
end;

function BrowseDialog(const Title: string; const Flag: integer): string;
var
   lpItemID : PItemIDList;
   BrowseInfo : TBrowseInfo;
   DisplayName : array[0..MAX_PATH] of char;
   TempPath : array[0..MAX_PATH] of char;
begin
   Result:='';
   FillChar(BrowseInfo, sizeof(TBrowseInfo), #0);
   with BrowseInfo do
   begin
      hwndOwner := Application.Handle;
      pszDisplayName := @DisplayName;
      lpszTitle := PChar(Title);
      ulFlags := Flag;
      lpfn := BrowseDialogCallBack;
   end;
   lpItemID := SHBrowseForFolder(BrowseInfo);
   if lpItemId <> nil then
   begin
      SHGetPathFromIDList(lpItemID, TempPath);
      Result := TempPath;
      GlobalFreePtr(lpItemID);
   end;
end;


procedure TMainForm.ASaveAttachmentsExecute(Sender: TObject);
var
   dir,fName: String;
   I:integer;
   j :String;
begin
  inherited;
  {  j := '';
   if lettersDbGrid.SelectedRows.Count > 0 then
      with Dm.Sp_Inbox do
         for i:=0 to lettersDbGrid.SelectedRows.Count-1 do
         begin
            GotoBookmark(pointer(lettersDbGrid.SelectedRows.Items[i]));
            if j= '' then
            begin
             j := 'LetterID=' + Dm.Sp_InboxLetterID.AsString;
            end
            else
            begin
              j:= j + ' OR LetterID=' + Dm.Sp_InboxLetterID.AsString;
            end

         end;

    Dm.Sp_Inbox.Filter := j;//'LetterID IN('+j+')';
    Dm.Sp_Inbox.Filtered := True;
    }
{   if (dm.Sp_Inboxhas_WordPage.AsBoolean)or(dm.Sp_Inboxhas_file.AsBoolean)or(dm.Sp_Inboxhas_Page.AsBoolean) then
   begin
      dir := BrowseDialog('Select a folder', BIF_RETURNONLYFSDIRS)+'\Letter'+Dm.Sp_InboxIndicatorID.AsString;
      if CreateDir(dir)then
         with dm.Get_All_LetterData do
         begin
            close;
            Parameters.ParamByName('@LetterID').Value := dm.Sp_InboxLetterID.AsInteger;
            Open;
            First;
            while not eof do
            begin
               fName := 'Attachment'+IntToStr(recNo)+'.'+dm.Get_All_LetterDataExtention.AsString;
               dm.Get_All_LetterDataImage.SaveToFile(dir+'\'+fName);
               next;
            end;
         end;
   end;
   }
{   if (dm.Sp_Inboxhas_WordPage.AsBoolean)or(dm.Sp_Inboxhas_file.AsBoolean)or(dm.Sp_Inboxhas_Page.AsBoolean) then
   begin
      if FInbox.lettersDbGrid.SelectedRows.Count > 0 then
      begin

        //dir := BrowseDialog('Select a folder', BIF_RETURNONLYFSDIRS);

         for i:=0 to FInbox.lettersDbGrid.SelectedRows.Count-1 do
           begin

            with Dm.Sp_Inbox do
            begin
            dir := BrowseDialog('Select a folder', BIF_RETURNONLYFSDIRS)+'\Letter'+Dm.Sp_InboxIndicatorID.AsString;
            if CreateDir(dir)then
               with dm.Get_All_LetterData do
               begin
                  close;
                  Parameters.ParamByName('@LetterID').Value := dm.Sp_InboxLetterID.AsInteger;
                  Open;
                  First;
                  while not eof do
                  begin
                     fName := 'Attachment'+IntToStr(recNo)+'.'+dm.Get_All_LetterDataExtention.AsString;
                     dm.Get_All_LetterDataImage.SaveToFile(dir+'\'+fName);
                     next;
                  end;
               end;
                next;
            end
          end;
       // end;
      end;
   end;
 }
   if (dm.Sp_Inboxhas_WordPage.AsBoolean)or(dm.Sp_Inboxhas_file.AsBoolean)or(dm.Sp_Inboxhas_Page.AsBoolean) then
   begin
     dir := BrowseDialog('Select a folder', BIF_RETURNONLYFSDIRS)+'\Letter'+Dm.Sp_InboxIndicatorID.AsString;
     if CreateDir(dir)then
       with dm.Get_All_LetterData do
       begin
          close;
          Parameters.ParamByName('@LetterID').Value := dm.Sp_InboxLetterID.AsInteger;
          Open;
          First;
          while not eof do
          begin
            fName := 'Attachment'+IntToStr(recNo)+'.'+dm.Get_All_LetterDataExtention.AsString;
            dm.Get_All_LetterDataImage.SaveToFile(dir+'\'+fName);
            next;
          end;
       end;

   end;

end;

procedure TMainForm.Action10Execute(Sender: TObject);
begin
  VERSION_INFO_FRM               := TVERSION_INFO_FRM.Create(SELF);
  VERSION_INFO_FRM.SOFTWARE_NAME := 'ò«— «»·';
  VERSION_INFO_FRM.VERSION_LIST.Text := _SoftVersion ;
  VERSION_INFO_FRM.REFRESH_VERSION_INFO(_SoftVersion);
  VERSION_INFO_FRM.ShowModal;
  VERSION_INFO_FRM.Free;
end;


end.
