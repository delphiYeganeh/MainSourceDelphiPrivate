program Zist_Dabir;

uses
  Forms,
  windows,
  BaseUnit in '..\shared\BaseUnit.pas' {MBaseForm},
  colorSetting in '..\shared\colorSetting.pas' {ColorSettingF},
  FromOrgU in '..\shared\FromOrgU.pas' {FromOrgForm},
  FromOrgDialog in '..\shared\FromOrgDialog.pas' {FromOrgDialogF},
  ExactCopy in '..\shared\ExactCopy.pas' {ExactCopyF},
  Settingsu in '..\shared\Settingsu.pas' {Settings},
  ExportToWord in '..\shared\ExportToWord.pas' {FExportToWord},
  USearchTitle in '..\shared\USearchTitle.pas' {SearchAdoDataSet},
  USecChange in '..\shared\USecChange.pas' {SecChange},
  ErrorMsg in '..\shared\ErrorMsg.pas' {FErrorMsg},
  UsearchStno in '..\shared\UsearchStno.pas' {SearchStno},
  HelpU in '..\shared\HelpU.pas' {FHelp},
  Uconnect in '..\shared\Uconnect.pas' {Fconnect},
  FUserShortCut in '..\shared\FUserShortCut.pas' {UserShortCutF},
  ShowmessageU in '..\..\..\yeganeh shared\ShowmessageU.pas' {ShowMessageF},
  UchangePassword in '..\shared\UchangePassword.pas' {FchangePassword},
  LetterArchive in '..\shared\LetterArchive.pas' {LetterArchiveform},
  CodePage in '..\shared\CodePage.pas',
  UTotalRecommite in '..\shared\UTotalRecommite.pas' {RecommiteGroup},
  UTotalExactCopy in '..\shared\UTotalExactCopy.pas' {FExactGroup},
  UchangeCricitalFields in '..\Program\UchangeCricitalFields.pas' {FchangeCricitalFields},
  YShamsiDate in '..\..\..\Vcl\YShamsiDate.pas',
  YInputQuery in '..\..\..\yeganeh shared\YInputQuery.pas' {YInputQueryF},
  about in '..\shared\ABOUT.PAS' {AboutBox},
  YeganehDemo in '..\..\..\yeganeh shared\YeganehDemo.pas' {Yeganeh},
  UAddShortCut in '..\shared\UAddShortCut.pas' {FrAddShortCut},
  UsearchShortCut in '..\shared\UsearchShortCut.pas' {FrsearchShortCut},
  businessLayer in '..\shared\businessLayer.pas',
  ArchiveOrganize in '..\shared\ArchiveOrganize.pas' {ArchiveOrganizeForm},
  ArchiveDialog in '..\shared\ArchiveDialog.pas' {ArchiveDialogForm},
  URetroExist in '..\shared\URetroExist.pas' {RetroExist},
  InsertText in '..\shared\InsertText.pas' {InsertTextForm},
  ReCommiteU in '..\shared\ReCommiteU.pas' {Recommite},
  LetterFilterU in '..\Program\LetterFilterU.pas' {LetterFilter},
  UMain in 'UMain.pas' {MainForm},
  Udailyrep in '..\Program\Udailyrep.pas' {Fdailyrep},
  UFillLetterData in '..\Program\UFillLetterData.pas' {FillLetterData},
  UImportFax in '..\Program\UImportFax.pas' {FImportFax},
  userDefine in '..\Program\userDefine.pas' {UserDefineF},
  LogOn in '..\Program\LogOn.pas' {LoginForm},
  ExitedLetterInputF in '..\Program\ExitedLetterInputF.pas' {SentLetterInputForm},
  EnteredLetterInputF in '..\Program\EnteredLetterInputF.pas' {ReceivedLetterInputForm},
  FixedTableF in '..\Program\FixedTableF.pas' {FixedForm},
  QuickSearch in '..\Program\QuickSearch.pas' {QuickSearchF},
  ReCommitedialog in '..\Program\ReCommitedialog.pas' {RecommiteSave},
  AccessInput in '..\Program\AccessInput.pas' {AccessForm},
  backupF in '..\Program\backupF.pas' {BackupRestore},
  Dmu in '..\Program\Dmu.pas' {dm: TDataModule},
  DuplicateNo in '..\Program\DuplicateNo.pas' {FDuplicate},
  UInputTemplate in '..\Program\UInputTemplate.pas' {EditTemplates},
  LetterReportU in '..\Program\LetterReportU.pas' {LetterReport},
  CreateTextU in '..\Program\CreateTextU.pas' {CreateText},
  EditSentense in '..\Program\EditSentense.pas' {FEditSentense},
  FullTextSearch in '..\Program\FullTextSearch.pas' {FullTextSearchF},
  Fsecretariats in '..\Program\Fsecretariats.pas' {FEditSecs},
  addUserSecs in '..\Program\addUserSecs.pas' {FaddUserSecs},
  SystemSetting in '..\Program\SystemSetting.pas' {SystemSettings},
  ustatistic in '..\Program\ustatistic.pas' {StatisticForm},
  UserLoginLogoutReportU in '..\Program\UserLoginLogoutReportU.pas' {FUserLoginLogoutReport},
  YArchiveLetterData in '..\Program\YArchiveLetterData.pas' {FArchiveLetterData},
  RestorLetterData in '..\Program\RestorLetterData.pas' {FRestorLetterData},
  FActiveUsers in '..\shared\FActiveUsers.pas' {ActiveUsers},
  UTemplateGroup in '..\Program\UTemplateGroup.pas' {FrUTemplateGroup},
  UEditLetterGroup in '..\Program\UEditLetterGroup.pas' {FEditLetterGroup},
  UaddUserTemplateGroup in '..\Program\UaddUserTemplateGroup.pas' {FaddUserTemplateGroup},
  uAddExtention in '..\Program\uAddExtention.pas' {FrAddExtention},
  UEditUserExtention in '..\Program\UEditUserExtention.pas' {FrLetterHistory},
  UaddLetterData in '..\shared\UaddLetterData.pas' {FraddLetterData},
  uAddExtentionDialog in '..\Program\uAddExtentionDialog.pas' {FrAddExtentionDialog},
  UAddLetterDataDialog in '..\shared\UAddLetterDataDialog.pas' {FrAddLetterDataDialog},
  UPrinterSetting in '..\shared\UPrinterSetting.pas' {frPrinterSetting},
  UloadPDF in '..\shared\UloadPDF.pas' {FLoadPDF},
  UAddSecretariat in '..\Program\UAddSecretariat.pas' {FrAddSecretariat},
  UinnerLetter in '..\shared\UinnerLetter.pas' {FinnerLetter},
  UselectSec in '..\Program\UselectSec.pas' {FselectSec},
  URelatedSecretariat in '..\Program\URelatedSecretariat.pas' {FrRelatedSecretariat},
  UAddRelatedSecretariat in '..\Program\UAddRelatedSecretariat.pas' {FrAddRelatedSecretariat},
  Import in '..\import\Import.pas' {FrImport},
  UEditTables in '..\import\UEditTables.pas' {EditTables},
  UFillPicture in '..\import\UFillPicture.pas' {FFillPicture},
  MakeInputData in '..\import\MakeInputData.pas' {FrMakeInputData},
  MakeReport in '..\import\MakeReport.pas' {FrMakeReport},
  GroupExport in '..\import\GroupExport.pas' {FrMakeGroupExport},
  FExcelAttach in '..\shared\FExcelAttach.pas' {FExportToExecl},
  UTableMonitoring in '..\import\UTableMonitoring.pas' {FrMonitorTables},
  uRecommiteList in '..\shared\uRecommiteList.pas' {FrRecommiteList},
  ULetterNoSetting in '..\Program\ULetterNoSetting.pas' {FrLetterNoSetting},
  UInputUserTable in '..\Program\UInputUserTable.pas' {FrInputUserTable},
  uUserTablefields in '..\Program\uUserTablefields.pas' {FrTableFields},
  UFieldDialog in '..\Program\UFieldDialog.pas' {FrFieldDialog},
  UinputRefferenceTable in '..\Program\UinputRefferenceTable.pas' {FrInputRefferenceTable},
  UReferenceData in '..\Program\UReferenceData.pas' {FrReferenceData},
  UUserTable_Input in '..\shared\UUserTable_Input.pas' {FrUserTable_Input},
  UReportUserTable in '..\shared\UReportUserTable.pas' {FrReportUserTable},
  UReportUserTableLetter in '..\shared\UReportUserTableLetter.pas' {FrReportUserTableLetter},
  UMakeUserTableRep in '..\shared\UMakeUserTableRep.pas' {FrMakeUserTableRep},
  UGetMessage in '..\shared\UGetMessage.pas' {FrGetMessage},
  USendMessage in '..\shared\USendMessage.pas' {FrSendMessage},
  USubject in '..\Program\USubject.pas' {FrSubject},
  UEditSubject in '..\shared\UEditSubject.pas' {FrEditSubject},
  UBrowsArchive in '..\shared\UBrowsArchive.pas' {FrBrowsArchive},
  UAddDocument in '..\shared\UAddDocument.pas' {FrAddDocument},
  UArchiveCenter in '..\Program\UArchiveCenter.pas' {FrArchiveCenter},
  URecommiteReport in '..\shared\URecommiteReport.pas' {FrRecommiteReport},
  URecommitestat in '..\shared\URecommitestat.pas' {FrRecommiteStat},
  UFollowUp in '..\shared\UFollowUp.pas' {FrFollowUp},
  UAddUserTableDlg in '..\Program\UAddUserTableDlg.pas' {FrAddUserTableDlg},
  ScanImageU in '..\shared\ScanImageU.pas' {ScanImageF},
  ScanImageU1 in '..\shared\ScanImageU1.pas' {TifImageF},
  FrReport_scan in '..\Program\FrReport_scan.pas' {ScanReport},
  UPagePreview in '..\shared\UPagePreview.pas' {FrPagePreview},
  FieldAccessU in '..\Program\FieldAccessU.pas' {FrFieldAccess},
  FrCity in 'FrCity.pas' {CityFrm},
  FrCityEdit in 'FrCityEdit.pas' {CityEditFrm},
  FrEmployer in 'FrEmployer.pas' {EmployerFrm},
  FrEmployerEdit in 'FrEmployerEdit.pas' {EmployerEditFrm},
  FrFileKeeping in 'FrFileKeeping.pas' {FileKeepingFrm},
  FrFileKeepingEdit in 'FrFileKeepingEdit.pas' {FileKeepingEditFrm},
  FrFileKeepingPRpt in 'FrFileKeepingPRpt.pas' {FileKeepingPRptFrm},
  FrFileKeepingSlct in 'FrFileKeepingSlct.pas' {FileKeepingSlctFrm},
  FrResearch in 'FrResearch.pas' {ResearchFrm},
  FrResearchEdit in 'FrResearchEdit.pas' {ResearchEditFrm},
  UzistDM in 'UzistDM.pas' {ZistDm: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := '** Yeganeh Software Company **';
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TZistDm, ZistDm);
  Application.Run;
end.
