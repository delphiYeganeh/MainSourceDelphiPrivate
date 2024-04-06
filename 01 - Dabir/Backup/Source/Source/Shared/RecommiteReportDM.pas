unit RecommiteReportDM;

interface

uses
  SysUtils, Classes, DB, ADODB, frxExportTXT, frxExportText,
  frxExportImage, frxExportRTF, frxExportXML, frxExportXLS, frxClass,
  frxExportPDF, frxDesgn, frxDBSet;

type
  TDMRecommiteReport = class(TDataModule)
    QrOrg: TADOQuery;
    QrOrgID: TAutoIncField;
    QrOrgTitle: TWideStringField;
    QrOrgResponsibleStaffer: TWideStringField;
    DSOrg: TDataSource;
    frxDesigner1: TfrxDesigner;
    frxDBRecommite_report: TfrxDBDataset;
    sp_recommite_report_1: TADOStoredProc;
    DS_recommite_report: TDataSource;
    frxRepRecommite_report: TfrxReport;
    sp_recommite_report_1LetterID: TAutoIncField;
    sp_recommite_report_1IndicatorID: TIntegerField;
    sp_recommite_report_1IncommingDate: TWideStringField;
    sp_recommite_report_1Memo: TWideStringField;
    sp_recommite_report_1RetroactionNo: TWideStringField;
    sp_recommite_report_1RegistrationDate: TStringField;
    sp_recommite_report_1FollowLetterNo: TWideStringField;
    sp_recommite_report_1ToStaffer: TWideStringField;
    sp_recommite_report_1SenderTitle: TWideStringField;
    sp_recommite_report_1DeliverTitle: TWideStringField;
    sp_recommite_report_1LetterTypeTitle: TWideStringField;
    sp_recommite_report_1LetterRecommites: TWideStringField;
    sp_recommite_report_1Paraph: TWideStringField;
    sp_recommite_report_1RecommiteDate: TStringField;
    sp_recommite_report_1Proceeded: TBooleanField;
    sp_recommite_report_1ProceedDate: TStringField;
    sp_recommite_report_1RecommitTypeTitle: TWideStringField;
    sp_recommite_report_1RecommiterTitle: TWideStringField;
    sp_recommite_report_1Recommited: TWideStringField;
    sp_recommite_report_1ViewDate: TStringField;
    sp_recommite_report_1StaffMemo: TWideStringField;
    sp_recommite_report_1DeadlineDays: TIntegerField;
    sp_recommite_report_1ProgressDays: TIntegerField;
    sp_recommite_report_1DeadLineDate: TStringField;
    sp_recommite_report_1ActionTypeTitle: TWideStringField;
    sp_recommite_report_1IncommingNo: TWideStringField;
    sp_recommite_report_1SecTitle: TWideStringField;
    sp_recommite_report_old: TADOStoredProc;
    AutoIncField1: TAutoIncField;
    IntegerField1: TIntegerField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    StringField1: TStringField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    WideStringField8: TWideStringField;
    WideStringField9: TWideStringField;
    WideStringField10: TWideStringField;
    StringField2: TStringField;
    BooleanField1: TBooleanField;
    StringField3: TStringField;
    WideStringField11: TWideStringField;
    WideStringField12: TWideStringField;
    WideStringField13: TWideStringField;
    StringField4: TStringField;
    WideStringField14: TWideStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    StringField5: TStringField;
    WideStringField15: TWideStringField;
    WideStringField16: TWideStringField;
    WideStringField17: TWideStringField;
    sp_recommite_report: TADOQuery;
    sp_recommite_reportLetterID: TAutoIncField;
    sp_recommite_reportIndicatorID: TIntegerField;
    sp_recommite_reportIncommingDate: TWideStringField;
    sp_recommite_reportMemo: TWideStringField;
    sp_recommite_reportRetroactionNo: TWideStringField;
    sp_recommite_reportRegistrationDate: TStringField;
    sp_recommite_reportFollowLetterNo: TWideStringField;
    sp_recommite_reportToStaffer: TWideStringField;
    sp_recommite_reportSenderTitle: TWideStringField;
    sp_recommite_reportDeliverTitle: TWideStringField;
    sp_recommite_reportLetterTypeTitle: TWideStringField;
    sp_recommite_reportLetterRecommites: TWideStringField;
    sp_recommite_reportParaph: TWideStringField;
    sp_recommite_reportRecommiteDate: TStringField;
    sp_recommite_reportProceeded: TBooleanField;
    sp_recommite_reportProceedDate: TStringField;
    sp_recommite_reportRecommitTypeTitle: TWideStringField;
    sp_recommite_reportRecommiterTitle: TWideStringField;
    sp_recommite_reportRecommited: TWideStringField;
    sp_recommite_reportViewDate: TStringField;
    sp_recommite_reportStaffMemo: TWideStringField;
    sp_recommite_reportDeadlineDays: TIntegerField;
    sp_recommite_reportProgressDays: TIntegerField;
    sp_recommite_reportDeadLineDate: TStringField;
    sp_recommite_reportActionTypeTitle: TWideStringField;
    sp_recommite_reportIncommingNo: TWideStringField;
    sp_recommite_reportSecTitle: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMRecommiteReport: TDMRecommiteReport;

implementation

{$R *.dfm}

{frxDBRecommite_report
IndicatorID=‘ «‰œÌò« Ê—
IncommingDate= «—ÌŒ «—Ã«⁄
Memo=„÷„Ê‰ ‰«„Â
RetroactionNo=⁄ÿ›
RegistrationDate= «—ÌŒ À»  ‰«„Â
FollowLetterNo=ÅÌ—Ê
ToStaffer=‘Œ’ ÿ—› „ò« »Â
SenderTitle=›—” ‰œÂ
DeliverTitle=êÌ—‰œÂ
LetterTypeTitle=‰Ê⁄ ‰«„Â
LetterRecommites=«—Ã«⁄«  ‰«„Â
Paraph=„ ‰ «—Ã«⁄
RecommiteDate= «—ÌŒ «—Ã«⁄
ProceedDate= «—ÌŒ «ﬁœ«„
RecommiterTitle=«—Ã«⁄ œÂ‰œÂ
Recommited=«—Ã«⁄ ‘Ê‰œÂ
ViewDate= «—ÌŒ ŒÊ«‰œ‰
DeadlineDays= ⁄œ«œ —Ê“  «ŒÌ—
ProgressDays= ⁄œ«œ —Ê“ «ﬁœ«„
DeadLineDate=„Â·  «ﬁœ«„
ActionTypeTitle=‰Ê⁄ «ﬁœ«„
-Proceeded=Proceeded
-LetterID=LetterID
-RecommitTypeTitle=RecommitTypeTitle
-StaffMemo=StaffMemo
}

end.
