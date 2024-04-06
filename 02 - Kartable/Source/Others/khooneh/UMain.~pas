unit UMain;

interface
uses shellapi, windows,forms, BaseUnit, ExtCtrls, Menus, ExtActns, BandActn, Classes,SysUtils,StdCtrls,Dialogs,
  ActnList, ActnMan, ToolWin, ActnCtrls, Controls, ComCtrls,ADODB,Grids,Variants,DB,DBGrids,
  QuickRpt, QRCtrls, OleServer, WordXP, OleCtnrs, XPStyleActnCtrls,Types,
  ActnMenus, Buttons, DBCtrls, YDbgrid,Graphics, DBTreeView, Spin, xpWindow,
  ImgList,Registry, OleCtrls, uCiaTrayIcon, xpBitBtn, YRotateLabel;

type
 DisplayModes=(Notany,Archive,Search);
 TDblclickAction=(viewLetter,ViewJpg,ViewWord,ViewPdf);
  TMainForm = class(TMBaseForm)
    MainActionManager: TActionManager;
    ReceiveInsert: TAction;
    SendInsert: TAction;
    Arecommite: TAction;
    Afix: TAction;
    Aclose: TAction;
    AARCHIVE: TAction;
    AChangeColor: TAction;
    AAnswer: TAction;
    AFollow: TAction;
    AFromOrganize: TAction;
    AretroAction: TAction;
    ABackup: TAction;
    AShrinck: TAction;
    access: TAction;
    AviewAllletter: TAction;
    AUsers: TAction;
    AUserSetting: TAction;
    ATExactCopy: TAction;
    AOtherReceivers: TAction;
    Apicture: TAction;
    AAbout: TAction;
    ActionPanel: TPanel;
    ChangeYear: TAction;
    ATemplate: TAction;
    AExpotToWord: TAction;
    AWordMain: TAction;
    ADarftIns: TAction;
    ADraftToLetter: TAction;
    ALetterReport: TAction;
    ASentense: TAction;
    AFulltext: TAction;
    AsecChange: TAction;
    AEditSecs: TAction;
    AErrorMsg: TAction;
    ASystemSetting: TAction;
    Astatistic: TAction;
    Adailyrep: TAction;
    AfillLetterData: TAction;
    QueryRefresher: TTimer;
    AshortCut: TAction;
    ActionMainMenuBar1: TActionMainMenuBar;
    Adeleted_toLetter: TAction;
    AchangePassword: TAction;
    PtoolBar: TPanel;
    GroupingPanel: TPanel;
    PArchive: TPanel;
    Panel8: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton4: TSpeedButton;
    List: TPanel;
    PSearch: TPanel;
    Splitter1: TSplitter;
    Pdata: TPanel;
    Label1: TLabel;
    DBMemo1: TDBMemo;
    Splitter2: TSplitter;
    alock: TAction;
    Ahome: TAction;
    Asearch: TAction;
    AArchiveFolders: TAction;
    ArchiveTree: TDBTreeView;
    Panel2: TPanel;
    status0: TPanel;
    status1: TPanel;
    status2: TPanel;
    status3: TPanel;
    YEGANEH: TPanel;
    status4: TPanel;
    userTimer: TTimer;
    GetList3: TADOStoredProc;
    GetList4: TADOStoredProc;
    DGetList3: TDataSource;
    DgetList4: TDataSource;
    Action2: TAction;
    ArchiveFolders: TMemo;
    Action4: TAction;
    AexportData: TAction;
    ArestorLtterData: TAction;
    AActiveUser: TAction;
    status6: TPanel;
    ArecDraftIns: TAction;
    adeleteWord: TAction;
    ARecommiteGroup: TAction;
    DBMemo3: TDBMemo;
    Action1: TAction;
    Action3: TAction;
    ATemplateGroup: TAction;
    AAddExtention: TAction;
    AaddLetterData: TAction;
    AnewRecommite: TAction;
    ADoCommite: TAction;
    ImageList: TImageList;
    ActionToolBar1: TActionToolBar;
    Label4: TLabel;
    AloadPDF: TAction;
    ACustomizeGrid: TAction;
    AinnerLetter: TAction;
    ASendToOtherSec: TAction;
    adeleteScan: TAction;
    ARelatedSecretariat: TAction;
    Action6: TAction;
    Aimport: TAction;
    AmonitorTables: TAction;
    ARecommiteList: TAction;
    ALetterNoSetting: TAction;
    AUserTable: TAction;
    AInputRefferenceTable: TAction;
    aReportUserTable: TAction;
    lettersDbGrid: TYDBGrid;
    AARchiveLetter: TAction;
    Aadd_Externaldata: TAction;
    aSENDMessage: TAction;
    AgetMessage: TAction;
    AEditSubject: TAction;
    ABrowsArchive: TAction;
    Action7: TAction;
    Action8: TAction;
    Action9: TAction;
    Action10: TAction;
    Action11: TAction;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    ADelete: TAction;
    ASwitchUser: TAction;
    ALetterHistory: TAction;
    MessagePanel: TPanel;
    okLabel: TLabel;
    CancelLabel: TLabel;
    MessageLabel: TLabel;
    AArchiveCenter: TAction;
    Action12: TAction;
    ARecommiteReport: TAction;
    ARecommiteStat: TAction;
    FollowupPanel: TPanel;
    Panel1: TPanel;
    SpeedButton2: TSpeedButton;
    CloseBtn: TSpeedButton;
    openBtn: TSpeedButton;
    MinimizedPanel: TPanel;
    labell: TYRotateLabel;
    PDJRotoLabel1: TYRotateLabel;
    TaskPanel: TPanel;
    YDBGrid2: TYDBGrid;
    Panel4: TPanel;
    Button1: TxpBitBtn;
    Button2: TxpBitBtn;
    Button3: TxpBitBtn;
    ImageList1: TImageList;
    Action13: TAction;
    Action14: TAction;
    Action15: TAction;
    Action16: TAction;
    ScanL: TAction;
    charset: TTimer;
    SaveDialog: TSaveDialog;
    Action17: TAction;
    Action18: TAction;
    LockOldYear: TAction;
    Alarm: TCheckBox;
    Label6: TLabel;
    AAccessField: TAction;
    FaxRefresher: TTimer;
    AUpdateFax: TAction;
    PopupMenu: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Excel1: TMenuItem;
    Word1: TMenuItem;
    AloadFile: TAction;
    Panel3: TPanel;
    SpeedButton9: TSpeedButton;
    SpeedButton11: TSpeedButton;
    Label2: TLabel;
    Label3: TLabel;
    SpinEdit: TEdit;
    CBFormat: TDBLookupComboBox;
    CBReceive: TDBLookupComboBox;
    GetList7: TADOStoredProc;
    DgetList7: TDataSource;
    CBArchiveStatus: TDBLookupComboBox;
    Areport_userLog: TAction;
    procedure FormCreate(Sender: TObject);
    procedure ReceiveInsertExecute(Sender: TObject);
    procedure SendInsertExecute(Sender: TObject);
    procedure AcloseExecute(Sender: TObject);
    procedure RefreshQuery;
    procedure ShowFixTables;
    procedure AChangeColorExecute(Sender: TObject);
    procedure AAnswerExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AFromOrganizeExecute(Sender: TObject);
    procedure AfixExecute(Sender: TObject);
    procedure MainActionManagerExecute(Action: TBasicAction;var Handled: Boolean);
    procedure ABackupExecute(Sender: TObject);
    procedure AShrinckExecute(Sender: TObject);
    procedure accessExecute(Sender: TObject);
    procedure AUsersExecute(Sender: TObject);
    procedure AUserSettingExecute(Sender: TObject);
    procedure ArecommiteExecute(Sender: TObject);
    procedure AARCHIVEExecute(Sender: TObject);
    procedure AretroActionExecute(Sender: TObject);
    procedure AFollowExecute(Sender: TObject);
    procedure AviewAllletterExecute(Sender: TObject);
    Procedure SetLetterFormat(value:byte);
    Procedure SetarchiveFolderID(value:integer);
    Procedure SetLetter_Type(value:byte);
    Procedure SetWhere(Value:String);
    procedure GetExactCopy(id:byte);
    procedure ApictureExecute(Sender: TObject);
    Function  GetSearch:boolean;
    function  DataSetPost:boolean;
    procedure ArecommiteStatisticsExecute(Sender: TObject);
    procedure ChangeYearExecute(Sender: TObject);
    procedure ATemplateExecute(Sender: TObject);
    procedure AExpotToWordExecute(Sender: TObject);
    procedure AWordMainExecute(Sender: TObject);
    procedure ADarftInsExecute(Sender: TObject);
    procedure ADraftToLetterExecute(Sender: TObject);
    procedure ReplaceInWord(w:twordapplication;old,new:widestring);
    procedure ALetterReportExecute(Sender: TObject);
    procedure ASentenseExecute(Sender: TObject);
    procedure AFulltextExecute(Sender: TObject);
    procedure AsecChangeExecute(Sender: TObject);
    procedure AEditSecsExecute(Sender: TObject);
    procedure AErrorMsgExecute(Sender: TObject);
    procedure ASystemSettingExecute(Sender: TObject);
    procedure AstatisticExecute(Sender: TObject);
    procedure AdailyrepExecute(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure AfillLetterDataExecute(Sender: TObject);
    procedure ATExactCopyExecute(Sender: TObject);
    procedure QueryRefresherTimer(Sender: TObject);
    procedure AOtherReceiversExecute(Sender: TObject);
    procedure AshortCutExecute(Sender: TObject);
    procedure Adeleted_toLetterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AchangePasswordExecute(Sender: TObject);
    procedure CBFormatChange(Sender: TObject);
    procedure ViewReceivedLetter(LetterID:integer);
    procedure ViewInnerLetter(LetterID:integer);
    procedure ViewDocument(LetterID:integer);
    procedure ViewSentLetter(LetterID:integer);
    procedure SpeedButton9Click(Sender: TObject);
    procedure lettersDbGridNeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
    procedure alockExecute(Sender: TObject);
    procedure SetColors;
    procedure AarchivecExecute(Sender: TObject);
    procedure SetDisplayMode(value:DisplayModes);
    procedure ANotAnyExecute(Sender: TObject);
    procedure AHomeExecute(Sender: TObject);
    procedure ASearchExecute(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure AArchiveFoldersExecute(Sender: TObject);
    procedure userTimerTimer(Sender: TObject);
    procedure CBReceiveClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action4Execute(Sender: TObject);
    procedure AexportDataExecute(Sender: TObject);
    procedure FromOrgOrganize;
    procedure ArchiveTreeClick(Sender: TObject);
    procedure ArestorLtterDataExecute(Sender: TObject);
    procedure lettersDbGridNeedFontCondition(Column: TColumn;
      State: TGridDrawState; var F: TFont);
    procedure Get_All_LetterAfterScroll(DataSet: TDataSet);
    procedure AActiveUserExecute(Sender: TObject);
    procedure Only_CurrentClick(Sender: TObject);
    procedure ArecDraftInsExecute(Sender: TObject);
    procedure adeleteWordExecute(Sender: TObject);
    Procedure MakeSelectedRecommites ;
    procedure ARecommiteGroupExecute(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure AAboutExecute(Sender: TObject);
    procedure ATemplateGroupExecute(Sender: TObject);
    procedure AAddExtentionExecute(Sender: TObject);
    procedure AaddLetterDataExecute(Sender: TObject);
    procedure lettersDbGridDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure lettersDbGridNeedImageIndex(Column: TColumn;
      var ImageIndex: Integer);
    procedure AloadPDFExecute(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure Word1Click(Sender: TObject);
    procedure AinnerLetterExecute(Sender: TObject);
    procedure ASendToOtherSecExecute(Sender: TObject);
    procedure ARelatedSecretariatExecute(Sender: TObject);

    procedure AimportExecute(Sender: TObject);
    procedure AmonitorTablesExecute(Sender: TObject);
    procedure SetStatisticMode(value: boolean);
    procedure lettersDbGridMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure ARecommiteListExecute(Sender: TObject);
    procedure ALetterNoSettingExecute(Sender: TObject);
    procedure AUserTableExecute(Sender: TObject);
    procedure AInputRefferenceTableExecute(Sender: TObject);
    procedure aReportUserTableExecute(Sender: TObject);
    procedure AARchiveLetterExecute(Sender: TObject);
    procedure Aadd_ExternaldataExecute(Sender: TObject);
    procedure aSENDMessageExecute(Sender: TObject);
    procedure AgetMessageExecute(Sender: TObject);
    procedure AEditSubjectExecute(Sender: TObject);
    procedure ABrowsArchiveExecute(Sender: TObject);
    procedure ADeleteExecute(Sender: TObject);
    procedure ASwitchUserExecute(Sender: TObject);
    procedure ALetterHistoryExecute(Sender: TObject);
    procedure SLowMessage(s:string;ShowButton:boolean);
    procedure CancelLabelClick(Sender: TObject);
    procedure okLabelClick(Sender: TObject);
    procedure AArchiveCenterExecute(Sender: TObject);
    procedure ARecommiteReportExecute(Sender: TObject);
    procedure ARecommiteStatExecute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure RefreshFollowUP;
    procedure Button2Click(Sender: TObject);
    procedure YDBGrid2DblClick(Sender: TObject);
    procedure YDBGrid2NeedFontCondition(Column: TColumn;
      State: TGridDrawState; var F: TFont);
    procedure YDBGrid2NeedImageIndex(Column: TColumn;
      var ImageIndex: Integer);
Procedure SetShowFollowUp(Value: boolean);
    procedure SpeedButton2Click(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure labellClick(Sender: TObject);
    procedure Action13Execute(Sender: TObject);
    procedure Action14Execute(Sender: TObject);
    procedure Action15Execute(Sender: TObject);
    procedure Action12Execute(Sender: TObject);
    procedure Action16Execute(Sender: TObject);
    procedure ScanLExecute(Sender: TObject);
    procedure charsetTimer(Sender: TObject);
    procedure Action17Execute(Sender: TObject);
    procedure Action18Execute(Sender: TObject);
    procedure AlarmClick(Sender: TObject);
    procedure AAccessFieldExecute(Sender: TObject);
    procedure UpdateFax;
    procedure FaxRefresherTimer(Sender: TObject);
    procedure AUpdateFaxExecute(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure AloadFileExecute(Sender: TObject);
    procedure ACustomizeGridExecute(Sender: TObject);
    procedure CBArchiveStatusClick(Sender: TObject);
    procedure Areport_userLogExecute(Sender: TObject);

  private
    FDisplayMode  :DisplayModes;
    FWhere: String;
    FLetter_Type  :byte;
    FLetterFormat:byte;
    FarchiveFolderID : integer;
    FStatisticMode: boolean;
    FShowFollowUp: boolean;
    { Private declarations }
  public
     DoRefresh:boolean;

     Property StatisticMode : boolean read FStatisticMode write SetStatisticMode;
     Property DisplayMode : DisplayModes read FDisplayMode write SetDisplayMode;
     Property Letter_Type : byte read FLetter_Type write SetLetter_Type;
     Property LetterFormat : byte read FLetterFormat write SetLetterFormat;
     Property Where : string read Fwhere write SetWhere;
     Property archiveFolderID : integer read FarchiveFolderID write SetarchiveFolderID;
     Property ShowFollowing: Boolean read FShowFollowUp write SetShowFollowUp;
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses Dmu,  FixedTableF, EnteredLetterInputF, ExitedLetterInputF,
  FromOrgU,  ColorSetting, QuickSearch,  backupF,
  AccessInput, userDefine, Settingsu, ReCommiteU, ExactCopy, yShamsiDate,
       LogOn,   UInputTemplate, ExportToWord,
   LetterReportU, CreateTextU,   EditSentense, FullTextSearch,
   Fsecretariats,  USecChange, addUserSecs, ErrorMsg, SystemSetting,ustatistic,
  Udailyrep, UFillLetterData, HelpU,
   ScanImageU1,ScanImageU, FUserShortCut,
  UchangePassword, businessLayer, ArchiveOrganize, LetterArchive,
  UImportFax, UserLoginLogoutReportU, YArchiveLetterData, RestorLetterData,
  FActiveUsers, UTotalRecommite, UTotalExactCopy, UchangeCricitalFields,
  about, UTemplateGroup, uAddExtention, UEditUserExtention, UaddLetterData,
  UloadPDF, UinnerLetter, UsearchShortCut, UselectSec, URelatedSecretariat,
  MakeInputData, MakeReport, GroupExport, Import, UTableMonitoring,
  uRecommiteList, ULetterNoSetting, UInputUserTable, UinputRefferenceTable,
  UReportUserTable, UReportUserTableLetter, UMakeUserTableRep, 
  UGetMessage, USendMessage, USubject, UEditSubject, UBrowsArchive,
  UAddDocument, UArchiveCenter, URecommiteReport, URecommitestat,
  UFollowUp, DateUtils, FrReport_scan, FieldAccessU, Report_userLog;

{$R *.DFM}

var  DblclickAction:TDblclickAction;
Procedure TMainForm.SetWhere(Value:String);
 begin
     FWhere:=Value;
     RefreshQuery;
end;

Procedure TMainForm.SetShowFollowUp(Value: boolean);

begin
  FShowFollowUp:=value;
  if  value then
   begin
     CloseBtn.show;
     openBtn.hide;
     FollowupPanel.Width:=300;
     TaskPanel.Show;
     MinimizedPanel.Hide;
     RefreshFollowUP;
   end
  else
   begin
     CloseBtn.hide;
     openBtn.show;
     FollowupPanel.Width:=25;
     TaskPanel.Hide;
     MinimizedPanel.Show;
   end

end;

Procedure TMainForm.SetarchiveFolderID(value:integer);
begin
  FarchiveFolderID:=value;
  RefreshQuery;
end;
Procedure TMainForm.SetLetterFormat(value:byte);
begin
  FLetterFormat:=value;
  RefreshQuery;
end;

Procedure TMainForm.SetStatisticMode(value:boolean);
begin
 FStatisticMode:=value;
 ActionPanel.Visible:=not value;

end;

Procedure TMainForm.SetLetter_Type(value:byte);
var i: byte;
begin
  FLetter_Type:=value;
  with lettersDbGrid,Columns do
   for i:=0 to Count-1 do
      if UpperCase(Columns[i].FieldName)='USERMEMO'  then
         Columns[i].Title.Caption:=dm.UserMem else
      if UpperCase(Columns[i].FieldName)='SENDERTITLE'  then
       case value of
         1:Columns[i].Title.Caption:='›—” ‰œÂ';
         2,3:Columns[i].Title.Caption:='êÌ—‰œÂ';
       end
     else
      if UpperCase(Columns[i].FieldName)='DELIVERTITLE' then
       case value of
         1:Columns[i].Title.Caption:='êÌ—‰œÂ';
         2,3:Columns[i].Title.Caption:='›—” ‰œÂ';
       end;
       
  RefreshQuery;

end;
 procedure TMainForm.FormCreate(Sender: TObject);
begin
  inherited;
 CBArchiveStatus.KeyValue:=0;
 Status0.Caption:='‰«„ ò«—»—: '+_userName;
 Status1.Caption:=dm.today;
 Status6.Caption:= dm.Orgname;
 dm.Secretariats.Locate('secid',_DefaultSec,[]);
 status4.Caption:=dm.SecretariatsSecTitle.AsString;
 GetList3.Open;
 GetList7.Open;
 GetList4.Open;
 QueryRefresher.Interval:=dm.Refresh_PriodTime*1000;
 dm.Get_All_Letter.AfterScroll:=Get_All_LetterAfterScroll;
 _selectedLettersID:=TStringList.Create;
 StatisticMode:=false;
 ABrowsArchive.Caption:='»——”Ì ”«»ﬁÂ »— «”«” '+dm.UserMem;
 MessagePanel.Height:=0;
 ShowFollowing:=false;
 if FaxUpdate then
   FaxRefresher.Enabled:=true;
   YEGANEH.Caption:='‰—„ «›“«—Ì '+_Yeganeh;
end;



procedure TMainForm.ReceiveInsertExecute(Sender: TObject);
begin
  inherited;
   with ReceivedLetterInputForm do
   begin
     ReceivedLetterInputForm:=TReceivedLetterInputForm.Create(Application);
     GetLetter(0);
     DataSetInsert.Execute;
     ShowModal;
   end;
   if Letter_Type in [1,0] then RefreshQuery
end;

procedure TMainForm.SendInsertExecute(Sender: TObject);
begin
  inherited;
   with SentLetterInputForm do
   begin
     SentLetterInputForm:=TSentLetterInputForm.Create(Application);
     GetLetter(0);
     DataSetInsert.Execute;
     ShowModal;
   end;
   if Letter_Type in [2,0] then RefreshQuery
end;

procedure TMainForm.AcloseExecute(Sender: TObject);
begin
  inherited;
  CLOSE;
end;

procedure TMainForm.RefreshQuery;
var receivedNum,SentNum,recommitesNum:integer;
 current_index:integer;
 srt,w: string;
 SearchI_All_Year_and_Sec: boolean;

begin
  inherited;
 ActionMainMenuBar1.Font.Charset:=178;
 if not DoRefresh then exit ;


 SearchI_All_Year_and_Sec:=False;

 try current_index:=dm.Get_All_LetterLetterID.AsInteger; except end;
 try SearchI_All_Year_and_Sec:=QuickSearchF.cmbSearch_In_All.Checked except end;



 w:=FWhere;
 if not _AccessToClassifieldLetter then
   if w<>'' then
     w:=w +' and  (letter.ClassificationID=1)'
   else
     w :=' (letter.ClassificationID=1) ' ;
     srt:=dm.Get_All_Letter.Sort;

     if SearchI_All_Year_and_Sec then
      dm.ExecGet_All_Letter(CBArchiveStatus.keyValue, archiveFolderID,Letter_Type,LetterFormat,0,0,strtoint(SpinEdit.Text),w)
     else
      dm.ExecGet_All_Letter(CBArchiveStatus.keyValue, archiveFolderID,Letter_Type,LetterFormat,dm.CurrentMYear,dm.SecID,strtoint(SpinEdit.Text),w);

     dm.Get_All_Letter.Sort:=srt;
     dm.Get_All_Letter.Locate('LetterID',current_index,[]);

      status3.Caption:=' ⁄œ«œ:'+IntToStr(dm.Get_All_Letter.RecordCount);
      Label2.Caption:=' ”«· : '+IntToStr(1300+dm.CurrentMYear);

      DoRefresh:=false;
      CBReceive.KeyValue:=Letter_Type;
      CBFormat.KeyValue:=LetterFormat;

      dm.Secretariats.Locate('secid',dm.SecID,[]);
      status4.Caption:=dm.SecretariatsSecTitle.AsString;

       DoRefresh:=true;



       Exec_sp_Letter_Numbers(dm.today,dm.today,dm.secid,receivedNum,SentNum,recommitesNum);
       Status2.Caption :=' ⁄œ«œ ‰«„Â Ê«—œÂ ='+IntToStr(receivedNum)+'   '+
                          ' ⁄œ«œ ‰«„Â ’«œ—Â ='+IntToStr(SentNum)+'   '+
                          ' ⁄œ«œ  «—Ã«⁄«  ='  +IntToStr(recommitesNum);

       AAnswer.Visible:=(dm.Get_All_LetterLetter_Type.AsInteger=1) and dm.GetActionAccess(AAnswer.Tag,tag);
       AAnswer.Enabled:=AAnswer.Visible;



  case LetterFormat of
   1: begin
       Adeleted_toLetter.Visible:=False;
       Adeleted_toLetter.Enabled:=False;
       ADraftToLetter.Visible:=false;
       ADraftToLetter.Enabled:=false;
     end;
   2:begin
       Adeleted_toLetter.Visible:=False;
       Adeleted_toLetter.Enabled:=False;
       ADraftToLetter.Visible:=dm.GetActionAccess(ADraftToLetter.Tag,tag);
       ADraftToLetter.Enabled:=ADraftToLetter.Visible;
     end;
   3:begin
       Adeleted_toLetter.Visible:=true;
       Adeleted_toLetter.Enabled:=true;
       ADraftToLetter.Visible:=false;
       ADraftToLetter.Enabled:=false;
     end;
   end;

  if StatisticMode then
    statisticForm.RefreshQuery
   else
if DisplayMode=Search then
   lettersDbGrid.SetFocus;
 end;

procedure TMainForm.ShowFixTables;
begin
  inherited;
 FixedForm:=TFixedForm.Create(Application);
 FixedForm.ShowModal;
end;
procedure TMainForm.ViewReceivedLetter(LetterID:integer);
begin
  inherited;
with ReceivedLetterInputForm do
  begin
     ReceivedLetterInputForm:=TReceivedLetterInputForm.Create(Application);
     GetLetter(LetterID);
     ShowModal;
   end
end;
procedure TMainForm.ViewSentLetter(LetterID:integer);
begin
  inherited;
with sentLetterInputForm do
  begin
     SentLetterInputForm:=TSentLetterInputForm.Create(Application);
     GetLetter(LetterID);
     ShowModal;
   end
end;

procedure TMainForm.ViewInnerLetter(LetterID:integer);
begin
  inherited;
with FinnerLetter do
  begin
     FinnerLetter:=TFinnerLetter.Create(Application);
     GetLetter(LetterID);
     ShowModal;
   end
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


procedure TMainForm.AChangeColorExecute(Sender: TObject);
begin
  inherited;
ColorSettingF:=TColorSettingF.Create(Application);
ColorSettingF.ShowModal;
SetColors;
end;

procedure TMainForm.AAnswerExecute(Sender: TObject);
 var
  NewIndicator,NewMyear:string;
procedure insertletter;
begin


 with SentLetterInputForm do
   begin

      if dm.EqualAnswerIndicator then
        begin
          NewIndicator:=dm.Get_All_Letter.FieldByName('IndicatorID').AsString;
          NewMyear:=dm.Get_All_Letter.FieldByName('myear').AsString;
        end
       else
        begin
         NewIndicator:=IntToStr(dm.LastIndicatorID(2,LetterFormat));
         NewMyear:=IntToStr(dm.CurrentMYear);
        end;

       GetLetter(0);
       LetterFormat:=1;
       DataSetInsert.Execute;

       Select_letterIndicatorID.AsString:=NewIndicator;
       Select_letterMYear.AsString:=NewMyear;
       Select_letterRetroactionNO.AsString:=dm.Get_All_Letter.FieldByName('incommingNo').AsString;
       Select_letterFromOrgID.AsInteger:=dm.Get_All_Letter.FieldByName('FromOrgID').AsInteger;
       Select_letterToOrgID.AsInteger:=dm.Get_All_Letter.FieldByName('ToOrgID').AsInteger;
       Select_letterMemo.AsString:=dm.Get_All_Letter.FieldByName('Memo').AsString;
       Select_letterToStaffer.AsString:=dm.Get_All_Letter.FieldByName('ToStaffer').AsString;
       ToOrgTitleEdit.Text:=dm.Get_All_LetterSenderTitle.AsString;
       ShowModal;
   end;
end;
begin
  inherited;
if Not DataSetPost then exit;

 SentLetterInputForm:=TSentLetterInputForm.Create(Application);
 SentLetterInputForm.IsAnswer:=true;

 with SentLetterInputForm,dm.Get_All_Letter do
   if GetLetter(FieldByName('SentLetterID').AsInteger)  then
    begin
        ShowModal;
        Exit;
    end{if}
    else
     insertletter;

   if Letter_Type in [2,0] then RefreshQuery
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
 begin
  inherited;
 if not messageShow(25,True) then
  abort
 else
  with dm.Users do
begin
  lettersDbGrid.columns.savetoFile(_TempPath+'\yeganeh.text');
  if not Active then Open;

  Locate('userid',_userid,[]);
  Edit;
  dm.UsersDabirGridInfo.LoadFromFile(_TempPath+'\yeganeh.text');
  Post;

  DeleteFile(pchar( _TempPath+'\yeganeh.text'));

 if (dm.DayInWeekForBackup=8) OR (dm.DayInWeek=dm.DayInWeekForBackup) then
   if not dm.GetSystemValue(13) then
  if messageShowString(Get_sysAppMessage(31)+' '+  farsiDay[dm.DayInWeek]+' '+Get_sysAppMessage(32),true) then
   ABackup.Execute;
 Exec_update_UserLoginLogout(_UserLoginLogoutID,true);
   DeleteFile(_TempPath+'temp.tif');
end
end;

procedure TMainForm.AFromOrganizeExecute(Sender: TObject);
begin
  inherited;
FromOrgOrganize;
end;
procedure TMainForm.UpdateFax;
begin
  inherited;
  Cursor:=crHourGlass;
  With FImportFax do
   begin
    FImportFax:=TFImportFax.Create(Application);
    EFolder.Text:=FaxDirectory;

    if UpperCase(FaxExtention)='TIF' then
      Extention.ItemIndex:=1 ELSE
    if UpperCase(FaxExtention)='JPG' then
      Extention.ItemIndex:=1;

    Extention.Text:=FaxExtention;
    MoveAfter:=true;
    DoBtn.OnClick(DoBtn);
    DoBtn.Enabled:=false;
    Close;
   end;
  Cursor:=crDefault;
end;

procedure TMainForm.AfixExecute(Sender: TObject);
begin
  inherited;
  ShowFixTables;
end;


procedure TMainForm.MainActionManagerExecute(Action: TBasicAction;
  var Handled: Boolean);
begin
  inherited;
 if not dm.GetActionAccess(Action.tag,tag) then abort;
try Exec_insert_UserLog(1000+Action.Tag,dm.Get_All_LetterLetterID.AsInteger); except end;
end;

procedure TMainForm.ABackupExecute(Sender: TObject);
begin
  inherited;
 BackupRestore:=TBackupRestore.Create(Application);
 BackupRestore.Mode:=backup;
 BackupRestore.ShowModal;
end;

procedure TMainForm.AShrinckExecute(Sender: TObject);
begin
  inherited;
 BackupRestore:=TBackupRestore.Create(Application);
 BackupRestore.Mode:=shrink;
 BackupRestore.ShowModal;
end;

procedure TMainForm.accessExecute(Sender: TObject);
begin
  inherited;
 AccessForm:=TAccessForm.Create(Application);
 AccessForm.showmodal;
end;

procedure TMainForm.AUsersExecute(Sender: TObject);
begin
  inherited;
 UserDefineF:=TUserDefineF.Create(Application);
 UserDefineF.ShowModal;
end;

procedure TMainForm.AUserSettingExecute(Sender: TObject);
begin
  inherited;
 Settings:=TSettings.Create(Application);
 Settings.ShowModal;
end;



procedure TMainForm.ArecommiteExecute(Sender: TObject);
begin
  inherited;
with dm.Get_All_Letter do
 begin
   if Not DataSetPost then exit;
   ReCommite:=TReCommite.Create(Application);
   with ReCommite do
    begin
     LetterID:=dm.Get_All_LetterLetterID.AsInteger;
     ShowModal;
   end;
end;
end;

procedure TMainForm.AARCHIVEExecute(Sender: TObject);
begin
  inherited;
 with dm.Get_All_Letter do
   begin
    if Not DataSetPost then exit;
    LetterArchiveform:=TLetterArchiveform.Create(application);
    LetterArchiveform.LetterID:=dm.Get_All_LetterLetterID.AsInteger;
    LetterArchiveform.ShowModal;
    RefreshQuery;
 end

end;

procedure TMainForm.AretroActionExecute(Sender: TObject);
 var LetterID:integer;
     rr          :Boolean;
begin
  inherited;
if Not DataSetPost then exit;

if dm.GetFollowAndRetRoAction(false,(dm.Get_All_LetterLetter_Type.AsInteger=1),dm.Get_All_Letter.fieldbyName('RetroactionNo').asstring,LetterID,rr) then
begin
 if Rr then
  ViewReceivedLetter(LetterID)
 else
   ViewSentLetter(LetterID);
end else ShowMsg(4);

end;

procedure TMainForm.AFollowExecute(Sender: TObject);
var LetterID:integer;
    rr          :Boolean;
begin
  inherited;
if Not DataSetPost then exit;
if dm.GetFollowAndRetRoAction(true,(dm.Get_All_LetterLetter_Type.AsInteger=1),dm.Get_All_Letter.fieldbyName('FollowLetterNo').asstring,LetterID,rr) then
begin
 if RR then
  ViewReceivedLetter(LetterID)
 else
  ViewSentLetter(LetterID);
end else ShowMsg(3);
end;

procedure TMainForm.AviewAllletterExecute(Sender: TObject);
procedure viewDetail;
begin
  case dm.Get_All_LetterLetter_Type.AsInteger of
   1: ViewReceivedLetter(dm.Get_All_LetterLetterID.AsInteger);
   2: ViewSentLetter(dm.Get_All_LetterLetterID.AsInteger);
   3: ViewInnerLetter(dm.Get_All_LetterLetterID.AsInteger);
   4: ViewDocument(dm.Get_All_LetterLetterID.AsInteger);
  end;
end;

begin
  inherited;
 if (DblclickAction = ViewJpg ) and  dm.Get_All_Letterhas_Page.AsBoolean then Apicture.Execute else
 if (DblclickAction = ViewWord) and  dm.Get_All_Letterhas_WordPage.AsBoolean then AExpotToWord.Execute else
 if (DblclickAction = viewPdf ) and  dm.Get_All_Letterhas_file.AsBoolean then
  begin
   if has_pdf(dm.Get_All_LetterLetterID.AsInteger) then
    AloadPDF.Execute
   else
    AloadFile.Execute
  end
 else
  viewDetail;

 RefreshQuery;
try Exec_insert_UserLog(1016,dm.Get_All_LetterLetterID.AsInteger); except end;

end;
procedure TMainForm.GetExactCopy(id:byte);
begin
  inherited;
if Not DataSetPost then exit;
 ExactCopyF:=TExactCopyF.Create(Application);
 with ExactCopyF do
  begin
   ExactCopyF.LetterID:=dm.Get_All_LetterLetterID.AsInteger;
   ExactCopyF.TypeId:=id;
   ShowModal;
  end;
                                                           
end;

procedure TMainForm.ApictureExecute(Sender: TObject);
 var extiontion : byte;
begin
  inherited;
 if Not DataSetPost then exit;

extiontion:=Exec_Get_LetterdataExtention(dm.Get_All_LetterLetterID.AsInteger);


if (extiontion=1) or ((extiontion=0) and  dm.HasJpg) then
 begin
   ScanImageF:=TScanImageF.Create(Application);
 with ScanImageF do
  begin
   LetterID:=dm.Get_All_LetterLetterID.AsInteger;
   ShowModal;
  end;
 end
else
begin
  with TifImageF do
   try
     
    LetterID:=dm.Get_All_LetterLetterID.AsInteger;
    TifImageF.ShowModal;
   except

    TifImageF:=TTifImageF.Create(Application);

    LetterID:=dm.Get_All_LetterLetterID.AsInteger;
    ShowModal;
    end  ;
 end;
 RefreshQuery

end;

Function TMainForm.GetSearch:boolean;
begin
      FromOrgForm:=TFromOrgForm.Create(Application);
      FromOrgForm.ShowModal;
      Result:=FromOrgForm.done;

end;

function TMainForm.DataSetPost:boolean;
begin
  inherited;
Result:=false;
with dm.Get_All_Letter do
 begin
  if not Active then exit
  else if RecordCount=0 then exit;
  if State in [dsEdit,dsInsert] then
  begin
 if messageShow(26,true) then
     try Post;
     Result:=true;
     except exit end
   else
     exit;
  end else Result:=True ;
end;

end;

procedure TMainForm.ArecommiteStatisticsExecute(Sender: TObject);
begin
  inherited;
 ShowMsg(47);
end;


procedure TMainForm.ChangeYearExecute(Sender: TObject);
var s: string;
dbname:string;
R: TRegistry;
intS: Integer;
begin
  inherited;
  if dm.Y_InputQuery('”«· Ã«—Ì',IntToStr(dm.CurrentMyear),s) then
  // if StrToInt(s)<1300 then
  //  dm.CurrentMyear:=StrToInt(s)
  // else
  //  dm.CurrentMyear:=StrToInt(copy(s,3,2));

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

   dbname:=UpperCase(Get_DatabaseName_By_Year(dm.CurrentMyear));
   if dbname='NOTHING' then  exit;
   if dbname<>UpperCase(DatabaseName) then
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
     WinExec('yeganeh_dabir.exe',0);
     halt;
   end;
end;

procedure TMainForm.ATemplateExecute(Sender: TObject);
begin
  inherited;
  EditTemplates:=TEditTemplates.Create(Application);
  EditTemplates.ShowModal;
end;

procedure TMainForm.AExpotToWordExecute(Sender: TObject);
begin
  inherited;
if Not DataSetPost then exit;
    if _Word_Is_Opened then
     if Application_Is_Run('winword.exe') then
      begin
        messageShow(86,FALSE) ;
       exit;
      end;
      
with dm.Get_All_Letter do
if not dm.ExecGet_LetterWordFile(FieldByName('Letterid').AsInteger,not _AllowToEditWordFiles) then
 begin
  FExportToWord:=TFExportToWord.Create(Application);
   with FExportToWord do
    begin
     Letterid:=FieldByName('Letterid').AsInteger;
     LetterFormat:=FieldByName('LetterFormat').AsInteger;
     if not dm.Use_Template then
      begin
      FExportToWord.FormShow(FExportToWord);  
        OpenFileClick(OpenFile);
      end {use template}
     else
      ShowModal;
   end;{with}
 end;{if dm.exec..}
 RefreshQuery;
end;{proc}
        
procedure TMainForm.AWordMainExecute(Sender: TObject);
begin
  inherited;
  with dm.Get_All_Letter do
if not dm.ExecGet_LetterWordFile(FieldByName('LetterID').AsInteger,not _AllowToEditWordFiles) then
 ShowMsg(53);

end;


procedure TMainForm.ADarftInsExecute(Sender: TObject);
begin
  inherited;
   with SentLetterInputForm do
    begin
     SentLetterInputForm:=TSentLetterInputForm.Create(Application);
     GetLetter(0);
     LetterFormat:=2;
     DataSetInsert.Execute;
     Properties.Hide;
     ShowModal;
   end;
  RefreshQuery;
end;

procedure TMainForm.ADraftToLetterExecute(Sender: TObject);
 var  newId:integer;
      no:string;
      L:integer;
begin
  inherited;
  if Not DataSetPost then exit;
  if not messageShowString(Get_sysAppMessage(34)+' '+dm.Get_All_LetterIndicatorID.AsString+' '+
                 Get_sysAppMessage(35),true) then
     exit;

  newId:=dm.LastIndicatorID(dm.Get_All_LetterLetter_Type.AsInteger,1);
  if dm.EqualAnswerIndicator then
   begin
    L:=Exec_get_indicatorID_BySentLetterID(dm.Get_All_LetterLetterID.AsInteger);
    if l>0 then  newId:=l
   end;

     Exec_Draft_to_SentLetter(dm.Get_All_LetterLetterID.AsInteger,newid);
     ShowMsgString(Get_sysAppMessage(54)+IntToStr(newId)+Get_sysAppMessage(55));

try
 no:=dm.Cdate(Exec_get_OrgPreCodeByID(dm.Get_All_LetterFromOrgID.AsInteger)+'/'+IntToStr(newId));
 except
  no:=IntToStr(newId);
 end;

 if not dm.ExecGet_LetterWordFile(dm.Get_All_LetterLetterID.AsInteger,false) then
    exit;
 with dm.WordApplication do
  begin
     If ActiveWindow.ActivePane.View.Type_ in[ wdNormalView ,wdOutlineView] Then
        ActiveWindow.ActivePane.View.Type_:= wdPrintView;
    ActiveWindow.ActivePane.View.SeekView := wdSeekCurrentPageHeader;

  ReplaceInWord(dm.WordApplication,'ÅÌ‘‰ÊÌ”',no);
  ReplaceInWord(dm.WordApplication,' «—ÌŒ  ÂÌÂ',dm.Cdate(dm.today));
  ActiveWindow.ActivePane.View.SeekView := wdSeekMainDocument;
end;
  LetterFormat:=1;

end;

procedure TMainForm.ReplaceInWord(w:twordapplication;old,new:widestring);
var r,Wap,txt,reptxt,fals,tru:OleVariant;
begin
    with w.Selection.Find do
     begin
       ClearFormatting;
       Replacement.ClearFormatting;
       Wap := wdFindContinue;
       r:=wdReplaceAll;
       Txt :=old;
       RepTxt := new;
       Execute(txt,fals,fals,fals,fals,fals,tru,wap,fals,reptxt,r,fals,fals,fals,fals);
     end;
end;{proc}

procedure TMainForm.ALetterReportExecute(Sender: TObject);
begin
  inherited;
LetterReport:=TLetterReport.Create(Self);
LetterReport.ShowModal;
end;

procedure TMainForm.ASentenseExecute(Sender: TObject);
begin
  inherited;
 FEditSentense:=TFEditSentense.Create(self);
 FEditSentense.ShowModal;
end;

procedure TMainForm.AFulltextExecute(Sender: TObject);
begin
  inherited;
FullTextSearchF:=TFullTextSearchF.Create(Application);
FullTextSearchF.ShowModal;
end;

procedure TMainForm.AsecChangeExecute(Sender: TObject);
begin
  inherited;
 SecChange:=TSecChange.Create(Application);
 SecChange.ShowModal;
 status4.Caption:=dm.SecretariatsSecTitle.AsString;

end;

procedure TMainForm.AEditSecsExecute(Sender: TObject);
begin
  inherited;
 FEditSecs:=TFEditSecs.Create(Application);
 FEditSecs.ShowModal;
end;

procedure TMainForm.AErrorMsgExecute(Sender: TObject);
begin
  inherited;
  FErrorMsg:=TFErrorMsg.Create(Application);
  FErrorMsg.ShowModal;
end;

procedure TMainForm.ASystemSettingExecute(Sender: TObject);
begin
  inherited;
 SystemSettings:=TSystemSettings.Create(Application);
 SystemSettings.ShowModal;

end;

procedure TMainForm.AstatisticExecute(Sender: TObject);
begin
  inherited;
  StatisticForm:=TStatisticForm.Create(self);
  list.Hide;
  StatisticForm.Show;
  StatisticMode:=true;

end;

procedure TMainForm.AdailyrepExecute(Sender: TObject);
begin
  inherited;
Fdailyrep:=tFdailyrep.create(Application);
Fdailyrep.ShowModal;
end;

procedure TMainForm.AFillLetterDataExecute(Sender: TObject);
begin
  inherited;
FillLetterData :=TFillLetterData.Create(Application);
FillLetterData.ShowModal;
end;

procedure TMainForm.N27Click(Sender: TObject);
begin
  inherited;
 FHelp:=TFHelp.Create(Application);
 FHelp.ShowModal;
end;


procedure TMainForm.ATExactCopyExecute(Sender: TObject);
begin
  inherited;
 GetExactCopy(1)
 
end;

procedure TMainForm.QueryRefresherTimer(Sender: TObject);
begin
  inherited;
 RefreshQuery;
 
end;

procedure TMainForm.AOtherReceiversExecute(Sender: TObject);
begin
  inherited;
 GetExactCopy(2);
end;

procedure TMainForm.AshortCutExecute(Sender: TObject);
begin
  inherited;
  UserShortCutF:=TUserShortCutF.Create(Application);
  UserShortCutF.ShowModal;
end;

procedure TMainForm.Adeleted_toLetterExecute(Sender: TObject);
var      newId:integer;
begin
  inherited;
with dm.Get_All_Letter do
 begin
  if Not DataSetPost then exit;
  if not messageShowString(Get_sysAppMessage(77)+dm.Get_All_Letter.FieldByName('Indicatorid').AsString+
                 Get_sysAppMessage(35),true) then
     exit;


  with dm do
   begin
     newId:=LastIndicatorID(Get_All_LetterLetter_Type.AsInteger,1);
     Exec_Deleted_to_Letter(Get_All_LetterLetterID.AsInteger,newId);
     LetterFormat:=1;
     ShowMsgString(Get_sysAppMessage(54)+IntToStr(newId)+Get_sysAppMessage(55));
     RefreshQuery;
   end;
 end;

end;

procedure TMainForm.AchangePasswordExecute(Sender: TObject);
begin
  inherited;
FchangePassword:=TFchangePassword.Create(Application);
FchangePassword.showmodal;
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
  inherited;
 SetColors;
 dm.SecID:=_DefaultSec;
 AHome.Execute;
 if not _IsSecretariatStaffer then
    try QuickSearchF.Refresh; except end;
  dm.UsersDabirGridInfo.SaveToFile(_TempPath+'\yeganeh.text');
//  try lettersDbGrid.columns.LoadFromFile(_TempPath+'\yeganeh.text'); except end;
  DeleteFile(_TempPath+'\yeganeh.text');
RefreshFollowUP;
end;

procedure TMainForm.CBFormatChange(Sender: TObject);
begin
  inherited;
 LetterFormat:=CBFormat.KeyValue;

end;

procedure TMainForm.SpeedButton9Click(Sender: TObject);
begin
  inherited;
 AHome.Execute;
end;

procedure TMainForm.lettersDbGridNeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Color: TColor);
  var c1,c2,c3:Tcolor;
begin
  inherited;
     c1:=lettersDbGrid.Color;
     c2:=lettersDbGrid.NearColor(c1,30);
     c3:=lettersDbGrid.NearColor(c2,30);

  if MainForm.Letter_Type=0 then
      case dm.Get_All_LetterLetter_Type.AsInteger of
       1: Color:=c1;
       2: Color:=c2;
       3: Color:=c3;
      end
  else
      if Column.Grid.DataSource.DataSet.RecNo mod 2=0 then
      Color:=c1
      else
      Color:=c2;

end;

procedure TMainForm.alockExecute(Sender: TObject);
begin
  inherited;
  PSearch.Hide;
  LoginForm:=TLoginForm.Create(Application);
  LoginForm.IsLock:=true;
  LoginForm.ShowModal;
  PSearch.Show;

end;
procedure  TMainForm.SetColors;
begin
with dm do
 begin
  lettersDbGrid.Color:=GetValue(1009);
  ArchiveTree.Color:=GetValue(1014);
 end;
end;

type code=^integer;

 procedure TMainForm.SetDisplayMode(value:DisplayModes);
 begin

 if FDisplayMode=Search then QuickSearchF.Close;
  FDisplayMode:=value;
  PArchive.Hide;


  GroupingPanel.Visible:=value<>Notany;
  Splitter2.Visible:=value<>Notany;


  case value of
 Archive:begin
          PArchive.Show;
          DSForm.DataSet:=Exec_get_ArchiveFolder_byUserID(_ArchiveCenterID);
          CBArchiveStatus.KeyValue:=0;
         end;
 Search: with QuickSearchF do
          begin
           QuickSearchF:=TQuickSearchF.Create(Application);
           ManualDock(GroupingPanel,nil,alClient);
           Align:=alClient;
           Show;
           archiveFolderID:=0;
          end;
  end;
end;

procedure TMainForm.AarchivecExecute(Sender: TObject);
begin
  inherited;
   DisplayMode:=Archive;
end;

procedure TMainForm.ANotAnyExecute(Sender: TObject);
begin
  inherited;
 DisplayMode:=Notany;
end;
procedure TMainForm.AHomeExecute(Sender: TObject);
begin
  inherited;
    DoRefresh:=false;
    CBArchiveStatus.KeyValue:=0;
 DisplayMode:=DisplayModes(dm.InitialDisplyMode);
 with MainForm do
   begin
     Letter_Type:=dm.InitialReceivedMode;
     LetterFormat:=1;
     DoRefresh:=true;
     SpinEdit.Text:=IntToStr( dm.MaxNumber_Of_Letter);
     try
       QuickSearchF.ANewSearch.Execute;
       QuickSearchF.Refresh;
     except
       Where:='';
       RefreshQuery;
     end
   end;
 ShowFollowing:=false;
end;


procedure TMainForm.ASearchExecute(Sender: TObject);
begin
  inherited;
 if DisplayMode<>Search then
  DisplayMode:=Search;
end;

procedure TMainForm.SpeedButton6Click(Sender: TObject);
begin
  inherited;
   AFromOrganize.Execute;
end;procedure TMainForm.SpeedButton11Click(Sender: TObject);
begin
  inherited;
IF DisplayMode=Archive THEN
 Ahome.Execute
ELSE
 DisplayMode:=Archive;
end;

procedure TMainForm.AArchiveFoldersExecute(Sender: TObject);
begin
  inherited;
  ArchiveOrganizeForm:=TArchiveOrganizeForm.Create(Application);
  ArchiveOrganizeForm.OrganizeMode:=true;
  ArchiveOrganizeForm.ShowModal;
end;

procedure TMainForm.userTimerTimer(Sender: TObject);
var i: integer;
begin
  inherited;
  i:=Get_DraftReceivedLetter_count(dm.CurrentMyear, dm.SecID);
 if  i>0 then
   SLowMessage(IntToStr(i)+'  ‰«„Â ÅÌ‘ ‰ÊÌ” Ê«—œÂ ÊÃÊœ œ«—œ ·ÿ›« ¬‰Â« —« À»  ò‰Ìœ',false);

 Exec_update_UserLoginLogout(_UserLoginLogoutID,false);
  i:=Exec_Get_UserMessageCount;
  if i>0 then
   SLowMessage('‘„«  '+IntToStr(i)+'   ÅÌ€«„ ŒÊ«‰œÂ ‰‘œÂ œ«—Ìœ ¬Ì« „«Ì· »Â ŒÊ«‰œ‰ ¬‰Â« Â” Ìœ',true);
end;

procedure TMainForm.CBReceiveClick(Sender: TObject);
begin
  inherited;
 Letter_Type:=CBReceive.KeyValue;

end;

procedure TMainForm.SpeedButton4Click(Sender: TObject);
begin
  inherited;
AArchiveFolders.Execute;
end;

procedure TMainForm.SpeedButton1Click(Sender: TObject);
begin
  inherited;
DisplayMode:=Search;
end;

procedure TMainForm.Action2Execute(Sender: TObject);
begin
  inherited;
 fimportfax:=TFImportFax.Create(Application);
 FImportFax.ShowModal;
end;

procedure TMainForm.Action4Execute(Sender: TObject);
begin
  inherited;
FUserLoginLogoutReport:=TFUserLoginLogoutReport.Create(Application);
FUserLoginLogoutReport.ShowModal;

end;

procedure TMainForm.AexportDataExecute(Sender: TObject);
begin
  inherited;
FArchiveLetterData:=TFArchiveLetterData.Create(Application);
FArchiveLetterData.ShowModal;
end;

procedure TMainForm.FromOrgOrganize;
begin
  inherited;
 FromOrgForm:=TFromOrgForm.Create(Application);
 FromOrgForm.OrganizeMode:=true;
 FromOrgForm.ShowModal;
end;

procedure TMainForm.ArchiveTreeClick(Sender: TObject);
begin
  inherited;
  archiveFolderID:=dsform.DataSet.fieldbyname('folderid').AsInteger;

end;

procedure TMainForm.ArestorLtterDataExecute(Sender: TObject);
begin
  inherited;
FRestorLetterData:=TFRestorLetterData.Create(Application);
FRestorLetterData.ShowModal;
end;

procedure TMainForm.lettersDbGridNeedFontCondition(Column: TColumn;
  State: TGridDrawState; var F: TFont);
begin
  inherited;
      case dm.Get_All_LetterLetter_Type.AsInteger of
        1:f.color:=clNavy;
        2:F.Color:=clMaroon;
        3:f.Color:=clblue;
       end; 
end;
procedure TMainForm.Get_All_LetterAfterScroll(DataSet: TDataSet);
 Var i:BYTE;
begin
   AAnswer.Visible:=(dm.Get_All_LetterLetter_Type.AsInteger=1) and dm.GetActionAccess(AAnswer.Tag,tag);
   AAnswer.Enabled:=(dm.Get_All_LetterLetter_Type.AsInteger=1) and dm.GetActionAccess(AAnswer.Tag,tag);
  with lettersDbGrid,Columns do
   for i:=0 to Count-1 do
      if UpperCase(Columns[i].FieldName)='SENDERTITLE'  then
       case dm.Get_All_LetterLetter_Type.AsInteger of
         1:Columns[i].Title.Caption:='›—” ‰œÂ';
         2,3:Columns[i].Title.Caption:='êÌ—‰œÂ';
       end
     else
      if UpperCase(Columns[i].FieldName)='DELIVERTITLE' then
       case dm.Get_All_LetterLetter_Type.AsInteger of
         1:Columns[i].Title.Caption:='êÌ—‰œÂ';
         2,3:Columns[i].Title.Caption:='›—” ‰œÂ';
       end;
if dm.Get_All_LetterArchived.AsBoolean then
 AARchiveLetter.Caption:='›⁄«· ò—œ‰ ‰«„Â'
else
 AARchiveLetter.Caption:='¬—‘ÌÊ ‰«„Â';
  ArchiveFolders.Text:=Exec_sp_ArchivePlaces(dm.Get_All_LetterLetterID.AsInteger,0);
  ArchiveFolders.Visible:=ArchiveFolders.Text<>'';
end;

procedure TMainForm.AActiveUserExecute(Sender: TObject);
begin
  inherited;
ActiveUsers:=TActiveUsers.Create(Application);
ActiveUsers.ShowModal;
end;

procedure TMainForm.Only_CurrentClick(Sender: TObject);
begin
  inherited;
RefreshQuery;
end;

procedure TMainForm.ArecDraftInsExecute(Sender: TObject);
begin
  inherited;
   with ReceivedLetterInputForm do
    begin
     ReceivedLetterInputForm:=TReceivedLetterInputForm.Create(Application);
     GetLetter(0);
     LetterFormat:=2;
     DataSetInsert.Execute;
     Properties.Hide;
     attachs.Hide;
     ShowModal;
   end;
  RefreshQuery;

end;

procedure TMainForm.adeleteWordExecute(Sender: TObject);
begin
  inherited;
  if messageShow(39,true) then
     begin
       Exec_delete_LetterWord(dm.Get_All_LetterLetterID.AsInteger);
       RefreshQuery;
     end;
end;
procedure TMainForm.MakeSelectedRecommites;
 var i: integer;
 begin

_selectedLettersID.Clear;

  if lettersDbGrid.SelectedRows.Count>0 then
    with dm.Get_All_Letter do
      for i:=0 to lettersDbGrid.SelectedRows.Count-1 do
      begin
         GotoBookmark(pointer(lettersDbGrid.SelectedRows.Items[i]));
         _selectedLettersID.Add(dm.Get_All_LetterLetterID.AsString);
      end
    else
         _selectedLettersID.Add(dm.Get_All_LetterLetterID.AsString);

 end;
procedure TMainForm.ARecommiteGroupExecute(Sender: TObject);
begin
  inherited;
 QueryRefresher.Enabled:=false;
 MakeSelectedRecommites;
 if _selectedLettersID.Count=0 then
   exit;

RecommiteGroup:=TRecommiteGroup.Create(Application);

Exec_Select_LetterReCommite(0,3);
dm.Select_LetterReCommite.Insert;

RecommiteGroup.ShowModal;

QueryRefresher.Enabled:=True;

end;

procedure TMainForm.Action1Execute(Sender: TObject);
begin
  inherited;
 QueryRefresher.Enabled:=false;
 MakeSelectedRecommites;
 if _selectedLettersID.Count=0 then
   exit;

FExactGroup:=TFExactGroup.Create(Application);

Exec_Select_LetterReCommite(0,1);
dm.Select_LetterReCommite.Insert;

FExactGroup.ShowModal;

QueryRefresher.Enabled:=True;

end;

procedure TMainForm.Action3Execute(Sender: TObject);
begin
  inherited;
FchangeCricitalFields:=TFchangeCricitalFields.Create(Application);
FchangeCricitalFields.ShowModal;
end;

procedure TMainForm.AAboutExecute(Sender: TObject);
begin
  inherited;
  AboutBox:=TAboutBox.Create(Application);
  AboutBox.ShowModal;
end;

procedure TMainForm.ATemplateGroupExecute(Sender: TObject);
begin
  inherited;
FrUTemplateGroup:=TFrUTemplateGroup.Create(Application);
FrUTemplateGroup.ShowModal;
end;

procedure TMainForm.AAddExtentionExecute(Sender: TObject);
begin
  inherited;
FrAddExtention:=TFrAddExtention.create(application);
FrAddExtention.ShowModal;

end;

procedure TMainForm.AaddLetterDataExecute(Sender: TObject);
begin
  inherited;
FraddLetterData:=TFraddLetterData.Create(Application);
FraddLetterData.LetterID:=dm.Get_All_LetterLetterID.AsInteger;
FraddLetterData.ShowModal;
RefreshQuery;
end;

procedure TMainForm.lettersDbGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var Icon: TBitmap;
begin
 Icon:=TBitmap.Create;
  if  (Column.FieldName='IndicatorID' ) then
    with  lettersDbGrid.Canvas do
     begin
      Brush.Color:=clWhite;
      FillRect(Rect);
      if (dm.Get_All_Letter.FieldByName('IndicatorID').Value>200)  then
       dm.LetterImages.GetBitmap(1,Icon)
      else
       dm.LetterImages.GetBitmap(0,Icon);
      Draw(round((Rect.Left+Rect.Right-Icon.Width)/2),Rect.Top,Icon);
   end;
end;

procedure TMainForm.lettersDbGridNeedImageIndex(Column: TColumn;
  var ImageIndex: Integer);
begin
  inherited;
  if Column.FieldName='has_Page' then
   if dm.Get_All_Letterhas_Page.AsBoolean then
   ImageIndex:=3
  else
   ImageIndex:=0;

  if Column.FieldName='has_WordPage' then
   if dm.Get_All_Letterhas_WordPage.AsBoolean then
   ImageIndex:=2
  else
   ImageIndex:=0;

  if Column.FieldName='has_file' then
   if dm.Get_All_Letterhas_file.AsBoolean then
   ImageIndex:=1
  else
   ImageIndex:=0

end;

procedure TMainForm.AloadPDFExecute(Sender: TObject);
begin
  inherited;
if Not DataSetPost then exit;
 FLoadPDF:=TFLoadPDF.Create(Application);
 with FLoadPDF do
  begin
   LetterID:=dm.Get_All_LetterLetterID.AsInteger;
   ShowModal;
  end;
  RefreshQuery;
end;

procedure TMainForm.N2Click(Sender: TObject);
begin
  inherited;
lettersDbGrid.Print;

end;

procedure TMainForm.Excel1Click(Sender: TObject);
begin
  inherited;
lettersDbGrid.ExportToExcel;

end;

procedure TMainForm.Word1Click(Sender: TObject);
begin
  inherited;
lettersDbGrid.ExportToWord;

end;


procedure TMainForm.AinnerLetterExecute(Sender: TObject);
begin
  inherited;
   with FinnerLetter do
   begin
     FinnerLetter:=TFinnerLetter.Create(Application);
     GetLetter(0);
     SecID:=dm.SecID;
     DataSetInsert.Execute;
     ShowModal;
   end;
   if Letter_Type in [3,0] then RefreshQuery

end;

procedure TMainForm.ASendToOtherSecExecute(Sender: TObject);
var i: integer;
begin
  inherited;
  MakeSelectedRecommites;
if _selectedLettersID.Count>0 then
 with FselectSec do
  begin
   FselectSec:=TFselectSec.Create(Application);
   ShowModal;

   if (SelectedSecID<>dm.SecID) and (SelectedSecID<>-1) then
     for i:=0 to _selectedLettersID.Count-1 do
       Exec_SendLetter_To_Other_sec(SelectedSecID,strtoint(_selectedLettersID[i]));
   end;
   RefreshQuery;
end;
procedure TMainForm.ARelatedSecretariatExecute(Sender: TObject);
begin
  inherited;
FrRelatedSecretariat:=TFrRelatedSecretariat.Create(Application);
FrRelatedSecretariat.ShowModal;
end;

procedure TMainForm.AimportExecute(Sender: TObject);
begin
  inherited;
FrImport:=TFrImport.Create(Application);
FrImport.ShowModal;
end;

procedure TMainForm.AmonitorTablesExecute(Sender: TObject);
begin
  inherited;
FrMonitorTables:=TFrMonitorTables.Create(Application);
FrMonitorTables.ShowModal;
end;

procedure TMainForm.lettersDbGridMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var  pt: TGridcoord;
r,j,i: byte;
begin
   DblclickAction :=viewLetter;

  pt:= lettersDbGrid.MouseCoord(x, y);
  j:=0;
  for i:=1 to 3 do
    if  lettersDbGrid.Columns[i-1].Visible then
     begin
       inc(j);
       if j=pt.x then r:=i
     end;

  if r=1 then DblclickAction:=ViewJpg else
  if r=2 then DblclickAction:=ViewWord else
  if r=3 then DblclickAction:=ViewPdf else
  DblclickAction:=viewLetter;
end;

procedure TMainForm.ARecommiteListExecute(Sender: TObject);
begin
  inherited;
frRecommiteList:=TFrRecommiteList.Create(Application);
FrRecommiteList.LetterID:=dm.Get_All_LetterLetterID.AsInteger;
FrRecommiteList.ShowModal;
end;

procedure TMainForm.ALetterNoSettingExecute(Sender: TObject);
begin
  inherited;
FrLetterNoSetting:=TFrLetterNoSetting.Create(Application);
FrLetterNoSetting.ShowModal;
end;

procedure TMainForm.AUserTableExecute(Sender: TObject);
begin
  inherited;
FrInputUserTable:=TFrInputUserTable.Create(Application);
FrInputUserTable.showmodal;
end;

procedure TMainForm.AInputRefferenceTableExecute(Sender: TObject);
begin
  inherited;
FrInputRefferenceTable:=TFrInputRefferenceTable.Create(Application);
FrInputRefferenceTable.ShowModal;
end;

procedure TMainForm.aReportUserTableExecute(Sender: TObject);
begin
  inherited;
FrMakeUserTableRep:=TFrMakeUserTableRep.Create(Application);
FrMakeUserTableRep.ShowModal;
end;

procedure TMainForm.AARchiveLetterExecute(Sender: TObject);
 VAR I: INTEGER;
begin
  inherited;
MakeSelectedRecommites;
  if dm.Get_All_LetterArchived.AsBoolean then
   begin
    if messageShowString('¬Ì« «“  «‰ ﬁ«· ‰«„Â »Â ÅÊ‘Â ‰«„Â Â«Ì Ã«—Ì „ÿ„∆‰ Â” Ìœ',True) then
     Exec_Update_Archived_letter(dm.Get_All_LetterLetterID.AsInteger,false) ;
     RefreshQuery;
   end else
   begin
    if NOT messageShowString('¬Ì« «“ ¬—‘ÌÊ ‰«„Â „ÿ„∆‰ Â” Ìœ',True)  then exit;
    if _selectedLettersID.Count>0  then
     for i:=0 to _selectedLettersID.Count-1 do
       Exec_Update_Archived_letter(strtoint(_selectedLettersID[i]),true)
      ELSE
       Exec_Update_Archived_letter(dm.Get_All_LetterLetterID.AsInteger,true);
       RefreshQuery;
     end;
end;

procedure TMainForm.Aadd_ExternaldataExecute(Sender: TObject);
begin
  inherited;
   if messageShowString('«Ì‰ ⁄„· ç‰œ œﬁÌﬁÂ ÿÊ· „Ì ò‘œ° ¬Ì« «“ «‰Ã«„ «Ì‰ ⁄„· „ÿ„∆‰ Â” Ìœ',true) then
      begin
        Exec_sp_add_datato_dabir;
        ShowMsgString('»« „Ê›ﬁÌ  «‰Ã«„ ‘œ');
      end;  
end;

procedure TMainForm.aSENDMessageExecute(Sender: TObject);
begin
  inherited;
  FrSendMessage:=TFrSendMessage.Create(Application);
  FrSendMessage.ShowModal;

end;

procedure TMainForm.AgetMessageExecute(Sender: TObject);
begin
  inherited;
  FrGetMessage:=TFrGetMessage.Create(Application);
  FrGetMessage.ShowModal;

end;

procedure TMainForm.AEditSubjectExecute(Sender: TObject);
begin
  inherited;
with FrEditSubject do
  begin
     FrEditSubject:=TFrEditSubject.Create(Application);
     GetLetter(dm.Get_All_LetterLetterID.AsInteger);
     ShowModal;
   end

end;

procedure TMainForm.ABrowsArchiveExecute(Sender: TObject);
begin
  inherited;
frBrowsArchive:=TFrBrowsArchive.Create(Application);
FrBrowsArchive.ShowModal;
end;

procedure TMainForm.ADeleteExecute(Sender: TObject);
begin
  inherited;
IF NOT dm.GetActionAccess(TAction(SENDER).Tag,TAG) THEN exit;
   if messageShow(38,True) then
    begin
     Exec_delete_Letter(dm.Get_All_LetterLetterID.AsInteger,dm.LastIndicatorID(dm.Get_All_LetterLetter_Type.AsInteger,3));
     RefreshQuery;
   end;

end;

procedure TMainForm.ASwitchUserExecute(Sender: TObject);
begin
  inherited;
WinExec('Yeganeh_Dabir.exe',0);
Application.Terminate;

end;

procedure TMainForm.ALetterHistoryExecute(Sender: TObject);
begin
  inherited;
FrLetterHistory:=TFrLetterHistory.Create(Application);
FrLetterHistory.LetterId:=dm.Get_All_LetterLetterID.AsInteger;
FrLetterHistory.ShowModal;
end;

procedure TMainForm.SLowMessage(s:string;showbutton:boolean);
 var i: byte;
begin
  inherited;
   if MessagePanel.Height>0 then exit;
   okLabel.Visible:=ShowButton;
   MessageLabel.Caption:=s;
    for i:=1 to 17 do
     begin
      Sleep(10);
      MessagePanel.Height:=MessagePanel.Height+3;
     end;
end;

procedure TMainForm.CancelLabelClick(Sender: TObject);
begin
  inherited;
MessagePanel.Height:=0;
end;

procedure TMainForm.okLabelClick(Sender: TObject);
begin
  inherited;
        MessagePanel.Height:=0;
   FrGetMessage:=TFrGetMessage.Create(Application);
    userTimer.Enabled:=false;
   FrGetMessage.ShowModal;
    userTimer.Enabled:=not Alarm.Checked;

end;

procedure TMainForm.AArchiveCenterExecute(Sender: TObject);
begin
  inherited;
FrArchiveCenter:=TFrArchiveCenter.Create(Application);
FrArchiveCenter.ShowModal;
end;

procedure TMainForm.ARecommiteReportExecute(Sender: TObject);
begin
  inherited;
  FrRecommiteReport:=TFrRecommiteReport.Create(Application);
  FrRecommiteReport.ShowModal;

end;

procedure TMainForm.ARecommiteStatExecute(Sender: TObject);
begin
  inherited;
FrRecommiteStat:=TFrRecommiteStat.Create(Application);
FrRecommiteStat.ShowModal;
end;

procedure TMainForm.Button1Click(Sender: TObject);
begin
  inherited;
FrFollowUp:=TFrFollowUp.Create(Application);
FrFollowUp.StartFollowUpID:=0;
FrFollowUp.refreshData;
FrFollowUp.Select_FollowUp_ByStart.Insert;
FrFollowUp.ShowModal;
RefreshFollowUP;
end;

procedure TMainForm.RefreshFollowUP;
 var i,j: integer;
begin
  inherited;
  i:=0;
 try i:=dm.Select_FollowUP_By_DateFollowUPID.AsInteger; except end;
   dm.Exec_Select_FollowUP_By_Date(ShamsiIncDate(dm.today,0,-2,0),ShamsiIncDate(dm.today,0,1,0),1);
   dm.Select_FollowUP_By_Date.Locate('FollowUPID',i,[]);
  j:=Exec_Get_FollowUP_Count(_userid,ShamsiIncDate(dm.today,0,-2,0),ShamsiIncDate(dm.today,0,1,0),1);
   if j>0 then
     labell.Caption:=Bill(j)+  '  ÅÌêÌ—Ì »—«Ì «‰Ã«„ ÊÃÊœ œ«—œ '
   else
     labell.Caption:='„Ê—œÌ »—«Ì ÅÌêÌ—Ì  ÊÃÊœ ‰œ«—œ';

end;

procedure TMainForm.Button3Click(Sender: TObject);
var i: integer;
begin
  inherited;
  with dm ,Select_FollowUP_By_Date,FrFollowUp do
   begin
    if Recordcount=0 then exit;
    i:=Select_FollowUP_By_DateFollowUPID.AsInteger;
    FrFollowUp:=TFrFollowUp.Create(Application);
    StartFollowUpID:=Select_FollowUP_By_DateStartFollowUpID.AsInteger;
    refreshData;
    Select_FollowUp_ByStart.Locate('FollowUPID',i,[]);
    Select_FollowUp_ByStart.edit;
    ShowModal;
    RefreshFollowUP;
   end

end;

procedure TMainForm.Button2Click(Sender: TObject);
 var i: integer;
begin
  inherited;

    with dm,Select_FollowUP_By_Date do
     begin
      if Recordcount=0 then exit;

       if not eof then
        begin
         next;
         i:=Select_FollowUP_By_DateFollowUPID.AsInteger;
         Prior;
       end
      else
       begin
         Prior;
         i:=Select_FollowUP_By_DateFollowUPID.AsInteger;
         Next;
       end;

         Edit;
         Select_FollowUP_By_DateDoneStatusID.AsInteger:=2;
         post;
         RefreshFollowUP;
         Locate('FollowUPID',i,[]);
   end;  { with}

end;

procedure TMainForm.YDBGrid2DblClick(Sender: TObject);
 var lt: integer;
begin
  inherited;
 if dm.Select_FollowUP_By_DateLetterid.AsInteger>0 then
   begin
    lt:=dm.YeganehConnection.Execute('select Letter_Type from letter where letterid='+dm.Select_FollowUP_By_DateLetterid.AsString).Fields[0].Value;
    with MainForm do
    case lt of
    1:ViewReceivedLetter(dm.Select_FollowUP_By_DateLetterid.AsInteger);
    2:ViewSentLetter(dm.Select_FollowUP_By_DateLetterid.AsInteger);
    3:ViewInnerLetter(dm.Select_FollowUP_By_DateLetterid.AsInteger)
    end;
  end
   else
   Button3.OnClick(Button3);

end;

procedure TMainForm.YDBGrid2NeedFontCondition(Column: TColumn;
  State: TGridDrawState; var F: TFont);
begin
  inherited;
  case dm.Select_FollowUP_By_DateDelayStatus.AsInteger of
   -1 : begin
         F.Color:=clRed;
         F.Style:=Font.Style+[fsBold];
        end;
   0 : begin
         F.Color:=clBlack;
         F.Style:=Font.Style-[fsBold];
        end;
   1 : begin
         F.Color:=clBlue;
         F.Style:=Font.Style-[fsBold];
        end;
   end
end;


procedure TMainForm.YDBGrid2NeedImageIndex(Column: TColumn;
  var ImageIndex: Integer);
begin
  inherited;
  if  Column.Index=2 then ImageIndex:=dm.Select_FollowUP_By_DateFollowUPTypeID.AsInteger-1
end;


procedure TMainForm.SpeedButton2Click(Sender: TObject);
begin
  inherited;
FollowupPanel.Hide;

end;

procedure TMainForm.CloseBtnClick(Sender: TObject);
begin
  inherited;
ShowFollowing:=not ShowFollowing;

end;

procedure TMainForm.labellClick(Sender: TObject);
begin
  inherited;
ShowFollowing:=true;

end;

procedure TMainForm.Action13Execute(Sender: TObject);
 var sf: integer;
begin
  inherited;
  sf:=Exec_Select_FolllowUp_ByLetterID(dm.Get_All_LetterLetterID.AsInteger,_userid);
FrFollowUp:=TFrFollowUp.Create(Application);
FrFollowUp.StartFollowUpID:=sf;
FrFollowUp.LetterID:=dm.Get_All_LetterLetterID.AsInteger;
FrFollowUp.refreshData;
 if sf=0 then
  FrFollowUp.Select_FollowUp_ByStart.Insert;
FrFollowUp.ShowModal;
RefreshFollowUP;

end;

procedure TMainForm.Action14Execute(Sender: TObject);
begin
  inherited;
Button1.OnClick(nil)

end;

procedure TMainForm.Action15Execute(Sender: TObject);
begin
  inherited;
FollowupPanel.Show;

end;

procedure TMainForm.Action12Execute(Sender: TObject);
begin
  inherited;
FrSubject:=TFrSubject.Create(Application);
FrSubject.ShowModal;

end;

procedure TMainForm.Action16Execute(Sender: TObject);
begin
  inherited;
with FrAddDocument do
  begin
     FrAddDocument:=TFrAddDocument.Create(Application);
     GetLetter(0);
     SecID:=dm.SecID;
     DataSetInsert.Execute;
     ShowModal;
   end

end;

procedure TMainForm.ScanLExecute(Sender: TObject);
begin
  inherited;
ScanReport:=TScanReport.Create(Application);
ScanReport.ShowModal;
end;

procedure TMainForm.charsetTimer(Sender: TObject);
begin
  inherited;
 if  ActionMainMenuBar1.Font.Charset<>178 then
   ActionMainMenuBar1.Font.Charset:=178;
end;

procedure TMainForm.Action17Execute(Sender: TObject);
begin
  inherited;
 if dm.Get_All_Letterhas_WordPage.AsBoolean then
   if SaveDialog.Execute then
     if pos('.doc',SaveDialog.FileName)<>0 then
      SaveWordFile(dm.Get_All_LetterLetterID.AsInteger,SaveDialog.FileName)
     else
      SaveWordFile(dm.Get_All_LetterLetterID.AsInteger,SaveDialog.FileName+'.doc');
end;

procedure TMainForm.Action18Execute(Sender: TObject);
begin
  inherited;
 ExactCopyF:=TExactCopyF.Create(Application);
 ExactCopyF.LetterID:=dm.Get_All_LetterLetterID.AsInteger;
 ExactCopyF.TypeId:=1;
 ExactCopyF.ShowModal;

end;

procedure TMainForm.AlarmClick(Sender: TObject);
begin
  inherited;
 if TCheckBox(Sender).Checked then
   userTimer.Enabled:=false
 else
  userTimer.Enabled:=true;
end;

procedure TMainForm.AAccessFieldExecute(Sender: TObject);
begin
  inherited;
FrFieldAccess:=TFrFieldAccess.Create(Application);
FrFieldAccess.ShowModal;

end;

procedure TMainForm.FaxRefresherTimer(Sender: TObject);
begin
  inherited;
   UpdateFax;
end;

procedure TMainForm.AUpdateFaxExecute(Sender: TObject);
begin
  inherited;
UpdateFax;
end;

procedure TMainForm.N1Click(Sender: TObject);
begin
  inherited;
 lettersDbGrid.CustomizePrint;

end;

procedure TMainForm.AloadFileExecute(Sender: TObject);

begin
  inherited;

 ShellExecute(Handle, 'open',loadLetterdata(dm.Get_All_LetterLetterID.AsInteger),nil,nil,SW_SHOWNORMAL)

end;

procedure TMainForm.ACustomizeGridExecute(Sender: TObject);
begin
  inherited;
lettersDbGrid.CustomizePrint;
end;

procedure TMainForm.CBArchiveStatusClick(Sender: TObject);
begin
  inherited;
 RefreshQuery;
end;

procedure TMainForm.Areport_userLogExecute(Sender: TObject);
begin
  inherited;
FrReport_userLog:=TFrReport_userLog.Create(Application);
FrReport_userLog.ShowModal;
end;

end.


