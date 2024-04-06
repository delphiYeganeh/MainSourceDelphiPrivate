unit UExamDetails;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ExtActns, ActnList, ADODB, ExtCtrls, Grids,
  DBGrids, YDbgrid, StdCtrls, Buttons, YWhereEdit, CheckLst, YchecklistBox,
  ComCtrls, Yeganeh_Word, QuickRpt, QRCtrls, DBCtrls, UemsVCL, Mask,
  xpWindow, xpBitBtn, xpPages;

type
  TFrExamDetails = class(TMBaseForm)
    xpPageControl1: TxpPageControl;
    xpTabSheet1: TxpTabSheet;
    xpTabSheet2: TxpTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label23: TLabel;
    Button7: TxpBitBtn;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit23: TDBEdit;
    Select_Exam_QuestionActivity: TADOStoredProc;
    Select_Exam_CorrectNumber: TADOStoredProc;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DSelect_Exam_QuestionActivity: TDataSource;
    DSelect_Exam_CorrectNumber: TDataSource;
    Label10: TLabel;
    Label11: TLabel;
    Button5: TxpBitBtn;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label19: TLabel;
    Label20: TLabel;
    DBEdit10: TDBEdit;
    Label14: TLabel;
    DBEdit11: TDBEdit;
    Label34: TLabel;
    spSelect_Applicant_by_Examid: TADOStoredProc;
    atncfldSelect_Applicant_by_ExamidApplicantID: TAutoIncField;
    spSelect_Applicant_by_ExamidApplicantCode: TStringField;
    spSelect_Applicant_by_ExamidFirstName: TWideStringField;
    spSelect_Applicant_by_ExamidLastName: TWideStringField;
    spSelect_Applicant_by_ExamidFullName: TWideStringField;
    spSelect_Applicant_by_ExamidMajorID: TSmallintField;
    spSelect_Applicant_by_ExamidTermcode: TStringField;
    spSelect_Applicant_by_ExamidFacultyTitle: TWideStringField;
    spSelect_Applicant_by_ExamidMajorTitle: TWideStringField;
    spSelect_Applicant_by_ExamidFinalMark: TFloatField;
    intgrfldSelect_Applicant_by_Examidord: TIntegerField;
    spSelect_Applicant_by_ExamidACCEPT: TStringField;
    spSelect_Applicant_by_ExamidGroupingTitle: TWideStringField;
    spSelect_Applicant_by_Examidmark20: TFloatField;
    spSelect_Applicant_by_Examidmark100: TFloatField;
    spSelect_Applicant_by_ExamidFatherName: TWideStringField;
    spSelect_Applicant_by_ExamidCustomField1: TWideStringField;
    spSelect_Applicant_by_ExamidCustomField2: TWideStringField;
    spSelect_Applicant_by_ExamidFullPoint: TFloatField;
    spSelect_Applicant_by_Examidmark: TFloatField;
    intgrfldSelect_Applicant_by_ExamidAcceptCount: TIntegerField;
    intgrfldSelect_Applicant_by_ExamidRejectCount: TIntegerField;
    xpBitBtn1: TxpBitBtn;
    DBEdit14: TDBEdit;
    Label35: TLabel;
    DBEdit34: TDBEdit;
    Label36: TLabel;
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FrExamDetails: TFrExamDetails;

implementation

uses dmu, BusinessLayer,  ULetterTemplate, TahlilU;

{$R *.dfm}

procedure TFrExamDetails.Button5Click(Sender: TObject);
begin
 inherited;
 close;
end;

procedure TFrExamDetails.Button7Click(Sender: TObject);
begin
  inherited;
  FLetterTemplate:=TFletterTemplate.Create(Application,DM.Select_ExamDetail_by_where,true);
  FletterTemplate.ShowModal;
end;

procedure TFrExamDetails.FormCreate(Sender: TObject);
begin
  inherited;
with dm,Select_ExamDetail_by_where do
 begin
   close;
   Parameters.ParamByName('@where').Value:='ExamID='+dm.Browse_ExamExamID.AsString;
   Open;
 end;
with dm,Select_Exam_QuestionActivity do
 begin
   close;
   Parameters.ParamByName('@Examid').Value:= dm.Browse_ExamExamID.Value;
   Open;
 end;

with dm,Select_Exam_CorrectNumber do
 begin
   close;
   Parameters.ParamByName('@Examid').Value:= dm.Browse_ExamExamID.Value;
   Open;
 end;

 with spSelect_Applicant_by_Examid do
 begin
   close;
   Parameters.ParamByName('@examID').Value:=dm.Browse_ExamExamID.AsInteger;
   Open;
 end;


 end;

procedure TFrExamDetails.xpBitBtn1Click(Sender: TObject);
begin
  inherited;
  FTahlil:=TFTahlil.Create(Application);
  FTahlil.ExamID:=dm.Browse_ExamExamID.AsInteger;
  FTahlil.ShowModal;
end;

end.
