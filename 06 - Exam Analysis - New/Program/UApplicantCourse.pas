unit UApplicantCourse;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ExtActns, ActnList, ADODB, ExtCtrls, Grids,
  DBGrids, YDbgrid, StdCtrls, Buttons, YWhereEdit, CheckLst, YchecklistBox,
  ComCtrls, Yeganeh_Word, QuickRpt, QRCtrls, DBCtrls, UemsVCL, Mask,
  xpWindow, xpBitBtn;

type
  TfrApplicantCourse = class(TMBaseForm)
    Number: TLabel;
    Button2: TxpBitBtn;
    Button3: TxpBitBtn;
    Button4: TxpBitBtn;
    Button5: TxpBitBtn;
    Button6: TxpBitBtn;
    YDBGrid1: TYDBGrid;
    DSelect_Applicant_by_Examid: TDataSource;
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
    QuickRep2: TQuickRep;
    QRBand1: TQRBand;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRShape5: TQRShape;
    QRLabel34: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel40: TQRLabel;
    QRLbstName1: TQRLabel;
    QRLabel42: TQRLabel;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    RDate: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText17: TQRDBText;
    QRShape14: TQRShape;
    QRLabel52: TQRLabel;
    QRShape15: TQRShape;
    QRShape23: TQRShape;
    QRLabel64: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    QRExpr2: TQRExpr;
    QRDBText20: TQRDBText;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QrDBStName1: TQRDBText;
    QRShape20: TQRShape;
    Qrmark: TQRDBText;
    QRDBText28: TQRDBText;
    QRShape26: TQRShape;
    QRBand2: TQRBand;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRGroup2: TQRGroup;
    QRBand3: TQRBand;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel18: TQRLabel;
    farsimark: TQRLabel;
    QRLabel1: TQRLabel;
    xpBitBtn1: TxpBitBtn;
    procedure Button6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure QuickRep2Preview(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frApplicantCourse: TfrApplicantCourse;

implementation

uses dmu, BusinessLayer,  ULetterTemplate, YShamsiDate, Upreview;

{$R *.dfm}

procedure TfrApplicantCourse.Button6Click(Sender: TObject);
begin
  inherited;
 YDBGrid1.CustomizePrint;
end;


procedure TfrApplicantCourse.Button2Click(Sender: TObject);
begin
  inherited;
  Qrmark.DataField:='mark20';
 QuickRep2.Preview;


end;

procedure TfrApplicantCourse.Button3Click(Sender: TObject);
begin
  inherited;
 YDBGrid1.ExportToWord;
end;

procedure TfrApplicantCourse.Button4Click(Sender: TObject);
begin
  inherited;
  YDBGrid1.ExportToExcel;

end;

procedure TfrApplicantCourse.Button5Click(Sender: TObject);
begin
  inherited;
close;
end;

procedure TfrApplicantCourse.FormCreate(Sender: TObject);
begin
  inherited;
  RDate.Caption:=_Today;
  with dm,Select_Applicant_by_TrainingCourseID do
  begin
    close;
    Parameters.ParamByName('@TrainingCourseID').Value := dm.Select_TrainingCourse_By_WhereTrainingCourseID.AsInteger;
    Open;
    Number.Caption := '�����:' + IntToStr(RecordCount);
    YDBGrid1.PrintTitle := '���� ��������� ��� ' + dm.Select_TrainingCourse_By_WhereCourseTitle.AsString;
  end;

end;

procedure TfrApplicantCourse.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  farsimark.Caption:=FloatBill(Select_Applicant_by_TrainingCourseID.Fieldbyname(Qrmark.DataField).AsFloat);
end;

procedure TfrApplicantCourse.xpBitBtn1Click(Sender: TObject);
begin
  inherited;
  Qrmark.DataField:='finalMark';
  QuickRep2.Preview;

end;

procedure TfrApplicantCourse.QuickRep2Preview(Sender: TObject);
begin
  inherited;
  Fpreview:=TFpreview.Create(Application);
  Fpreview.QRPreview1.QRPrinter:=QuickRep2.QRPrinter;
  Fpreview.Show;

end;

end.
