unit UTraningCourseRep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtCtrls, QuickRpt, xpWindow, ActnList, DB, ADODB,
  QRCtrls;

type
  TFrTraningCourseRep = class(TMBaseForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    Select_Applicant_by_TrainingCourseID: TADOStoredProc;
    Select_Applicant_by_TrainingCourseIDApplicantID: TAutoIncField;
    Select_Applicant_by_TrainingCourseIDApplicantCode: TStringField;
    Select_Applicant_by_TrainingCourseIDFirstName: TWideStringField;
    Select_Applicant_by_TrainingCourseIDLastName: TWideStringField;
    Select_Applicant_by_TrainingCourseIDFullName: TWideStringField;
    Select_Applicant_by_TrainingCourseIDMajorID: TSmallintField;
    Select_Applicant_by_TrainingCourseIDTermcode: TStringField;
    Select_Applicant_by_TrainingCourseIDFacultyTitle: TWideStringField;
    Select_Applicant_by_TrainingCourseIDMajorTitle: TWideStringField;
    Select_Applicant_by_TrainingCourseIDFinalMark: TFloatField;
    Select_Applicant_by_TrainingCourseIDord: TIntegerField;
    Select_Applicant_by_TrainingCourseIDACCEPT: TStringField;
    Select_Applicant_by_TrainingCourseIDGroupingTitle: TWideStringField;
    Select_Applicant_by_TrainingCourseIDmark20: TFloatField;
    QG2: TQRShape;
    QG1: TQRShape;
    QRDBText2: TQRDBText;
    QuickRep2: TQuickRep;
    QRBand1: TQRBand;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    Select_Applicant_by_TrainingCourseIDFatherName: TWideStringField;
    Select_Applicant_by_TrainingCourseIDCustomField1: TWideStringField;
    Select_Applicant_by_TrainingCourseIDCustomField2: TWideStringField;
    Select_Applicant_by_TrainingCourseIDCourseTitle: TWideStringField;
    Select_Applicant_by_TrainingCourseIDCourseCode: TStringField;
    Select_Applicant_by_TrainingCourseIDCourseTerm: TStringField;
    Select_Applicant_by_TrainingCourseIDGrourpCode: TStringField;
    Select_Applicant_by_TrainingCourseIDStartDate: TStringField;
    Select_Applicant_by_TrainingCourseIDTeacherCode: TStringField;
    Select_Applicant_by_TrainingCourseIDTeacherTitle: TWideStringField;
    Qa8: TQRShape;
    Qa7: TQRShape;
    Qa9: TQRShape;
    Qa6: TQRShape;
    Qa3: TQRShape;
    Qa2: TQRShape;
    Qa5: TQRShape;
    Qa4: TQRShape;
    Qa1: TQRShape;
    QCa7: TQRShape;
    QCa6: TQRShape;
    QCa3: TQRShape;
    QCa2: TQRShape;
    QCa5: TQRShape;
    QCa4: TQRShape;
    QCa1: TQRShape;
    QGa2: TQRShape;
    QGa1: TQRShape;
    QRSysData1: TQRSysData;
    QRLabel1: TQRLabel;
    QRSysData2: TQRSysData;
    Qa10: TQRShape;
    procedure FormCreate(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1Preview(Sender: TObject);
    procedure QuickRep2Preview(Sender: TObject);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrTraningCourseRep: TFrTraningCourseRep;

implementation

uses dmu, YShamsiDate, Upreview;

{$R *.dfm}

procedure TFrTraningCourseRep.FormCreate(Sender: TObject);
begin
  inherited;
with Select_Applicant_by_TrainingCourseID do
 begin
   close;
   Parameters.ParamByName('@TrainingCourseID').Value:= dm.Select_TrainingCourse_By_WhereTrainingCourseID.AsInteger;
   Open;
 end;

end;

procedure TFrTraningCourseRep.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var AppNo,CNo,Gno: string;
  i,j:byte;
begin
  inherited;
 AppNo:=Select_Applicant_by_TrainingCourseIDApplicantCode.AsString;
     Gno:=Dm.Select_TrainingCourse_By_WhereGrourpCode.AsString;
     CNo:=dm.Select_TrainingCourse_By_WhereCourseCode.AsString;
  gno:=copy (Gno,1,Pos('.',gno)-1);
  if length(gno)<2 then
    gno:='0'+Gno;

 for i:=1 to 10 do
   TQRShape(FindComponent('Q'+IntToStr(i))).Enabled:=false;

 for i:=1 to 2 do
   TQRShape(FindComponent('QG'+IntToStr(i))).Enabled:=False;

 for i:=1 to 7 do
   TQRShape(FindComponent('QC'+IntToStr(i))).Enabled:=False;

if is_integer(AppNo) then
 for i:=1 to length(AppNo) do
  begin
   j:=strtoint(AppNo[i])+1;
   TQRShape(FindComponent('Q'+IntToStr(i))).Top:=25+19*j-(j*2 div 5);
   TQRShape(FindComponent('Q'+IntToStr(i))).Enabled:=True
  end;

 if is_integer(Gno) then
 for i:=1 to length(Gno) do
  begin
    j:=strtoint(Gno[i])+1;
    TQRShape(FindComponent('QG'+IntToStr(i))).Top:=25+19*j-(j*2 div 5);
    TQRShape(FindComponent('QG'+IntToStr(i))).Enabled:=True
  end;
if is_integer(CNo) then
 for i:=1 to length(Cno) do
  begin
    j:=strtoint(CNo[i])+1;
    TQRShape(FindComponent('QC'+IntToStr(i))).Top:=25+19*j-(j*2 div 5);
    TQRShape(FindComponent('QC'+IntToStr(i))).Enabled:=True
  end;




 end;

procedure TFrTraningCourseRep.QuickRep1Preview(Sender: TObject);
begin
  inherited;
  Fpreview:=TFpreview.Create(Application);
  Fpreview.QRPreview1.QRPrinter:=QuickRep1.QRPrinter;
  Fpreview.Show;

end;

procedure TFrTraningCourseRep.QuickRep2Preview(Sender: TObject);
begin
  inherited;
  Fpreview:=TFpreview.Create(Application);
  Fpreview.QRPreview1.QRPrinter:=QuickRep2.QRPrinter;
  Fpreview.Show;

end;

procedure TFrTraningCourseRep.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
// Amin 1391/10/06 Start
var AppNo,CNo,Gno: string;
  i,j:byte;
begin
  inherited;
 {AppNo:=Select_Applicant_by_TrainingCourseIDApplicantCode.AsString;
     Gno:=Dm.Select_TrainingCourse_By_WhereGrourpCode.AsString;
     CNo:=dm.Select_TrainingCourse_By_WhereCourseCode.AsString;
  gno:=copy (Gno,1,Pos('.',gno)-1);
  if length(gno)<2 then
    gno:='0'+Gno;

 for i:=1 to 10 do
   TQRShape(FindComponent('Qa'+IntToStr(i))).Enabled:=false;

 for i:=1 to 2 do
   TQRShape(FindComponent('QGa'+IntToStr(i))).Enabled:=False;

 for i:=1 to 7 do
   TQRShape(FindComponent('QCa'+IntToStr(i))).Enabled:=False;

if is_integer(AppNo) then
 for i:=1 to length(AppNo) do
  begin
   j:=strtoint(AppNo[i])+1;
   TQRShape(FindComponent('Qa'+IntToStr(i))).Top:=25+19*j-(j*2 div 5);
   TQRShape(FindComponent('Qa'+IntToStr(i))).Enabled:=True
  end;

 if is_integer(Gno) then
 for i:=1 to length(Gno) do
  begin
    j:=strtoint(Gno[i])+1;
    TQRShape(FindComponent('QGa'+IntToStr(i))).Top:=25+19*j-(j*2 div 5);
    TQRShape(FindComponent('QGa'+IntToStr(i))).Enabled:=True
  end;
if is_integer(CNo) then
 for i:=1 to length(Cno) do
  begin
    j:=strtoint(CNo[i])+1;
    TQRShape(FindComponent('QCa'+IntToStr(i))).Top:=25+19*j-(j*2 div 5);
    TQRShape(FindComponent('QCa'+IntToStr(i))).Enabled:=True
  end;   }
 // Amin 1391/10/06 End
end;

end.
