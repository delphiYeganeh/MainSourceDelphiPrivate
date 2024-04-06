unit UExamDetailLog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtCtrls, QuickRpt, xpWindow, ActnList, DB, ADODB,
  QRCtrls, StdCtrls, Buttons, YWhereEdit, frxClass, frxDBSet;

type
  TFrExamCourseLog = class(TMBaseForm)
    Select_Applicant_by_Examid: TADOStoredProc;
    Select_Applicant_by_ExamidApplicantID: TAutoIncField;
    Select_Applicant_by_ExamidApplicantCode: TStringField;
    Select_Applicant_by_ExamidFirstName: TWideStringField;
    Select_Applicant_by_ExamidLastName: TWideStringField;
    Select_Applicant_by_ExamidFullName: TWideStringField;
    Select_Applicant_by_ExamidMajorID: TSmallintField;
    Select_Applicant_by_ExamidTermcode: TStringField;
    Select_Applicant_by_ExamidFacultyTitle: TWideStringField;
    Select_Applicant_by_ExamidMajorTitle: TWideStringField;
    Select_Applicant_by_ExamidFinalMark: TFloatField;
    Select_Applicant_by_Examidord: TIntegerField;
    Select_Applicant_by_ExamidACCEPT: TStringField;
    Select_Applicant_by_ExamidGroupingTitle: TWideStringField;
    Select_Applicant_by_Examidmark20: TFloatField;
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ordering: TRadioGroup;
    Select_Applicant_by_ExamidFullPoint: TFloatField;
    Select_ApplicantExam_Log: TADOStoredProc;
    Select_ApplicantExam_Logcoursetitle: TWideStringField;
    Select_ApplicantExam_LogPercentMark: TFloatField;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText7: TQRDBText;
    QRShape2: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    Qc3: TQRLabel;
    QC4: TQRLabel;
    QC5: TQRLabel;
    QC2: TQRLabel;
    QC6: TQRLabel;
    QC7: TQRLabel;
    QC8: TQRLabel;
    QC9: TQRLabel;
    QC10: TQRLabel;
    QM1: TQRLabel;
    QM2: TQRLabel;
    QM3: TQRLabel;
    QM4: TQRLabel;
    QM5: TQRLabel;
    QM10: TQRLabel;
    QM9: TQRLabel;
    QM8: TQRLabel;
    QM7: TQRLabel;
    QM6: TQRLabel;
    QC1: TQRLabel;
    QRShape6: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    Select_Applicant_by_Examidmark100: TFloatField;
    QuickRep2: TQuickRep;
    QRBand1: TQRBand;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRShape13: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRShape14: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRShape15: TQRShape;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    frxReport1: TfrxReport;
    frxDB_Browse_Exam: TfrxDBDataset;
    frxDB_Select_Applicant_by_Examid: TfrxDBDataset;
    frxDB_Select_ApplicantExam_Log: TfrxDBDataset;
    QRShape16: TQRShape;
    Rect1: TQRShape;
    Course1: TQRLabel;
    Line1: TQRShape;
    Num1: TQRLabel;
    Line2: TQRShape;
    Course2: TQRLabel;
    Num2: TQRLabel;
    Rect2: TQRShape;
    Line3: TQRShape;
    Course3: TQRLabel;
    Num3: TQRLabel;
    Rect3: TQRShape;
    Line4: TQRShape;
    Course4: TQRLabel;
    Num4: TQRLabel;
    Rect4: TQRShape;
    Line5: TQRShape;
    Course5: TQRLabel;
    Num5: TQRLabel;
    Rect5: TQRShape;
    Line6: TQRShape;
    Course6: TQRLabel;
    Num6: TQRLabel;
    Rect6: TQRShape;
    Line11: TQRShape;
    Course11: TQRLabel;
    Num11: TQRLabel;
    Rect11: TQRShape;
    Line16: TQRShape;
    Course16: TQRLabel;
    Num16: TQRLabel;
    Rect16: TQRShape;
    Line21: TQRShape;
    Course21: TQRLabel;
    Num21: TQRLabel;
    Rect21: TQRShape;
    Line7: TQRShape;
    Course7: TQRLabel;
    Num7: TQRLabel;
    Rect7: TQRShape;
    Line12: TQRShape;
    Course12: TQRLabel;
    Num12: TQRLabel;
    Rect12: TQRShape;
    Line17: TQRShape;
    Course17: TQRLabel;
    Num17: TQRLabel;
    Rect17: TQRShape;
    Line22: TQRShape;
    Course22: TQRLabel;
    Num22: TQRLabel;
    Rect22: TQRShape;
    Line8: TQRShape;
    Course8: TQRLabel;
    Num8: TQRLabel;
    Rect8: TQRShape;
    Line13: TQRShape;
    Course13: TQRLabel;
    Num13: TQRLabel;
    Rect13: TQRShape;
    Line18: TQRShape;
    Course18: TQRLabel;
    Num18: TQRLabel;
    Rect18: TQRShape;
    Line23: TQRShape;
    Course23: TQRLabel;
    Num23: TQRLabel;
    Rect23: TQRShape;
    Line9: TQRShape;
    Num9: TQRLabel;
    Course9: TQRLabel;
    Rect9: TQRShape;
    Line14: TQRShape;
    Num14: TQRLabel;
    Course14: TQRLabel;
    Rect14: TQRShape;
    Line19: TQRShape;
    Num19: TQRLabel;
    Course19: TQRLabel;
    Rect19: TQRShape;
    Line24: TQRShape;
    Num24: TQRLabel;
    Course24: TQRLabel;
    Rect24: TQRShape;
    Line10: TQRShape;
    Num10: TQRLabel;
    Course10: TQRLabel;
    Rect10: TQRShape;
    Line15: TQRShape;
    Num15: TQRLabel;
    Course15: TQRLabel;
    Rect15: TQRShape;
    Line20: TQRShape;
    Num20: TQRLabel;
    Course20: TQRLabel;
    Rect20: TQRShape;
    Line25: TQRShape;
    Num25: TQRLabel;
    Course25: TQRLabel;
    Rect25: TQRShape;
    procedure FormCreate(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1Preview(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure QuickRep2Preview(Sender: TObject);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrExamCourseLog: TFrExamCourseLog;

implementation

uses dmu, YShamsiDate, Upreview;

{$R *.dfm}
var l,t,r,d:integer ;
procedure TFrExamCourseLog.FormCreate(Sender: TObject);
begin
  inherited;
with Select_Applicant_by_Examid do
 begin
   close;
   Parameters.ParamByName('@examID').Value:=dm.Browse_ExamExamID.AsInteger;
   Open;
 end;
 ClientHeight := 110;
 Width := 300;
end;

procedure TFrExamCourseLog.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var i,j: byte;
begin
  inherited;
  with Select_ApplicantExam_Log do
   begin
    close;
    Parameters.ParamByName('@ApplicantID').Value:=Select_Applicant_by_ExamidApplicantID.AsInteger;
    Parameters.ParamByName('@ExamID').Value:=dm.Browse_ExamExamID.AsInteger;
    Open;
     first;
   end;
     i:=1;
    while not Select_ApplicantExam_Log.eof do
      begin
         TQRLabel( FindComponent('QC'+IntToStr(i))).Caption:=Select_ApplicantExam_Logcoursetitle.AsString;
         TQRLabel( FindComponent('Qm'+IntToStr(i))).Caption:=Select_ApplicantExam_LogPercentMark.AsString;
         Select_ApplicantExam_Log.Next;
         i:=i+1
      end;
     for j:=i to 10 do
      begin
         TQRLabel( FindComponent('QC'+IntToStr(j))).Caption:='';
         TQRLabel( FindComponent('Qm'+IntToStr(j))).Caption:='';
      end;


  end;

procedure TFrExamCourseLog.QuickRep1Preview(Sender: TObject);
begin
  inherited;
  Fpreview:=TFpreview.Create(Application);
  Fpreview.QRPreview1.QRPrinter:=QuickRep1.QRPrinter;
  Fpreview.Show;

end;

procedure TFrExamCourseLog.BitBtn2Click(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFrExamCourseLog.BitBtn1Click(Sender: TObject);
begin
  inherited;
  QuickRep2.Preview;
end;

procedure TFrExamCourseLog.QuickRep2Preview(Sender: TObject);
begin
  inherited;
  Fpreview:=TFpreview.Create(Application);
  Fpreview.QRPreview1.QRPrinter:=QuickRep2.QRPrinter;
  Fpreview.Show;
end;

procedure TFrExamCourseLog.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
   i,j: byte;
   qrShape : array [1..30] of TQRShape;
   qrlable : TQRLabel;
begin
    inherited;
    with Select_ApplicantExam_Log do
    begin
       close;
       Parameters.ParamByName('@ApplicantID').Value:=Select_Applicant_by_ExamidApplicantID.AsInteger;
       Parameters.ParamByName('@ExamID').Value:=dm.Browse_ExamExamID.AsInteger;
       Open;
       first;
    end;
    i:=1;
    while not Select_ApplicantExam_Log.eof do
      begin
         TQRShape(FindComponent('Line'+IntToStr(i))).Enabled := true;
         TQRShape(FindComponent('Rect'+IntToStr(i))).Enabled := true;
         TQRLabel(FindComponent('Course'+IntToStr(i))).Enabled := true;
         TQRLabel(FindComponent('Num'+IntToStr(i))).Enabled := true;
         TQRLabel(FindComponent('Course'+IntToStr(i))).Caption:=Select_ApplicantExam_Logcoursetitle.AsString;
         TQRLabel(FindComponent('Num'+IntToStr(i))).Caption:=Select_ApplicantExam_LogPercentMark.AsString;
         Select_ApplicantExam_Log.Next;
         inc(i);
      end;

end;

end.
