unit uExamCard;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtCtrls, QuickRpt, xpWindow, ActnList, DB, ADODB,
  QRCtrls, StdCtrls, Buttons, YWhereEdit, Grids, DBGrids, frxClass,
  frxDBSet, frxChBox, frxDesgn, xpBitBtn, Spin, Menus, YCheckGroupBox,
  DBCtrls, frxBarcode;

type
  TfrmExamCard = class(TMBaseForm)
    QuickRep2: TQuickRep;
    DataSource1: TDataSource;
    DetailBand2: TQRBand;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    Q_2_8: TQRShape;
    Q_2_7: TQRShape;
    Q_2_10: TQRShape;
    Q_2_9: TQRShape;
    Q_2_6: TQRShape;
    Q_2_3: TQRShape;
    Q_2_2: TQRShape;
    Q_2_5: TQRShape;
    Q_2_4: TQRShape;
    Q_2_1: TQRShape;
    Q_2_12: TQRShape;
    Q_2_11: TQRShape;
    QuickRep3: TQuickRep;
    QRBand1: TQRBand;
    QRDBText9: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    Q_3_8: TQRShape;
    Q_3_7: TQRShape;
    Q_3_10: TQRShape;
    Q_3_9: TQRShape;
    Q_3_6: TQRShape;
    Q_3_3: TQRShape;
    Q_3_2: TQRShape;
    Q_3_5: TQRShape;
    Q_3_4: TQRShape;
    Q_3_1: TQRShape;
    Q_3_12: TQRShape;
    Q_3_11: TQRShape;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    Appcode: TQRDBText;
    QRDBText20: TQRDBText;
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText2: TQRDBText;
    Q8: TQRShape;
    Q7: TQRShape;
    Q10: TQRShape;
    Q9: TQRShape;
    Q6: TQRShape;
    Q3: TQRShape;
    Q2: TQRShape;
    Q5: TQRShape;
    Q4: TQRShape;
    Q1: TQRShape;
    Q11: TQRShape;
    Q12: TQRShape;
    QuickRep5: TQuickRep;
    QRBand2: TQRBand;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText37: TQRDBText;
    Q_4_8: TQRShape;
    Q_4_7: TQRShape;
    Q_4_10: TQRShape;
    Q_4_9: TQRShape;
    Q_4_6: TQRShape;
    Q_4_3: TQRShape;
    Q_4_2: TQRShape;
    Q_4_5: TQRShape;
    Q_4_4: TQRShape;
    Q_4_1: TQRShape;
    Q_4_12: TQRShape;
    Q_4_11: TQRShape;
    QuickRep4: TQuickRep;
    DetailBand3: TQRBand;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    Qa8: TQRShape;
    Qa7: TQRShape;
    Qa9: TQRShape;
    Qa6: TQRShape;
    Qa3: TQRShape;
    Qa2: TQRShape;
    Qa5: TQRShape;
    Qa4: TQRShape;
    Qa1: TQRShape;
    Qa12: TQRShape;
    Qa11: TQRShape;
    Qa10: TQRShape;
    QRSysData1: TQRSysData;
    QRLabel1: TQRLabel;
    QRSysData2: TQRSysData;
    QuickRep6: TQuickRep;
    QRBand3: TQRBand;
    QRDBText29: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    Q_6_8: TQRShape;
    Q_6_7: TQRShape;
    Q_6_12: TQRShape;
    Q_6_9: TQRShape;
    Q_6_6: TQRShape;
    Q_6_3: TQRShape;
    Q_6_1: TQRShape;
    Q_6_5: TQRShape;
    Q_6_4: TQRShape;
    Q_6_2: TQRShape;
    Q_6_11: TQRShape;
    Q_6_10: TQRShape;
    QRDBText40: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    frxRepAnswerPaper: TfrxReport;
    frxReport: TfrxDBDataset;
    ppmReport: TPopupMenu;
    N11: TMenuItem;
    N21: TMenuItem;
    N31: TMenuItem;
    N41: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Action1: TAction;
    N3: TMenuItem;
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
    Select_Applicant_by_TrainingCourseIDExamDate: TStringField;
    Select_Applicant_by_TrainingCourseIDExamTitle: TStringField;
    Select_Applicant_by_TrainingCourseIDEducationGroupTitle: TStringField;
    Select_Applicant_by_TrainingCourseIDExamTerm: TStringField;
    chkPnl: TYCheckGroupBox;
    Panel1: TPanel;
    ordering: TRadioGroup;
    btnReport: TxpBitBtn;
    Select_Applicant_by_ExamAndWhere: TADOStoredProc;
    Select_Applicant_by_ExamAndWhereApplicantCode: TStringField;
    Select_Applicant_by_ExamAndWhereFirstName: TWideStringField;
    Select_Applicant_by_ExamAndWhereLastName: TWideStringField;
    Select_Applicant_by_ExamAndWhereFullName: TWideStringField;
    Select_Applicant_by_ExamAndWhereMajorID: TSmallintField;
    Select_Applicant_by_ExamAndWhereTermcode: TStringField;
    Select_Applicant_by_ExamAndWhereFatherName: TWideStringField;
    Select_Applicant_by_ExamAndWhereCustomField1: TWideStringField;
    Select_Applicant_by_ExamAndWhereCustomField2: TWideStringField;
    Select_Applicant_by_ExamAndWhereFacultyTitle: TWideStringField;
    Select_Applicant_by_ExamAndWhereMajorTitle: TWideStringField;
    Select_Applicant_by_ExamAndWhereExamTitle: TWideStringField;
    Select_Applicant_by_ExamAndWhereCourseCode: TStringField;
    Select_Applicant_by_ExamAndWhereCourseTitle: TWideStringField;
    Select_Applicant_by_ExamAndWhereExamDate: TStringField;
    Select_Applicant_by_ExamAndWhereExamTerm: TStringField;
    Select_Applicant_by_ExamAndWhereEducationGroupTitle: TWideStringField;
    Select_Applicant_by_ExamAndWhereTeacherTitle: TStringField;
    Label2: TLabel;
    spnReport: TSpinEdit;
    Stno: TYWhereEdit;
    Label1: TLabel;
    btnDesign: TxpBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edtFirstLeft: TEdit;
    edtWidth: TEdit;
    edtWidthDistance: TEdit;
    edtHeightDistance: TEdit;
    edtHeight: TEdit;
    edtFirstTop: TEdit;
    dReports: TDataSource;
    quReports: TADOQuery;
    xpBitBtn1: TxpBitBtn;
    xpBitBtn2: TxpBitBtn;
    xpBitBtn3: TxpBitBtn;
    OpenDialog1: TOpenDialog;
    BitBtn2: TxpBitBtn;
    xpBitBtn4: TxpBitBtn;
    Select_Applicant_by_ExamAndWhereCustomField3: TStringField;
    Select_Applicant_by_ExamAndWhereCustomField4: TStringField;
    Select_Applicant_by_ExamAndWhereCustomField5: TStringField;
    Select_Applicant_by_TrainingCourseIDCustomField3: TStringField;
    Select_Applicant_by_TrainingCourseIDCustomField4: TStringField;
    Select_Applicant_by_TrainingCourseIDCustomField5: TStringField;
    Select_Applicant_by_ExamAndWhereFullName_1: TWideStringField;
    Select_Applicant_by_ExamAndWhereECF1: TStringField;
    Select_Applicant_by_ExamAndWhereECF2: TStringField;
    Select_Applicant_by_ExamAndWhereECF3: TStringField;
    Select_Applicant_by_ExamAndWhereECF4: TStringField;
    Select_Applicant_by_ExamAndWhereECF5: TStringField;
    spAssignGroupExamToApplicanet: TADOStoredProc;
    Select_Applicant_by_ExamAndWhereGroupExamTitle: TStringField;
    Select_Applicant_by_ExamAndWhereSeatNumber: TIntegerField;
    Select_Applicant_by_ExamAndWherePic: TBlobField;
    frxBarCodeObject1: TfrxBarCodeObject;
    Select_Applicant_by_ExamAndWhereBarcode: TStringField;
    procedure OpenApplicants;
    procedure QuickRep1Preview(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure QuickRep2Preview(Sender: TObject);
    procedure PrintAppNo(ShapeName:string);
    procedure PrintAppNofrx(ShapeName:string);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText39Print(sender: TObject; var Value: String);
    procedure btnDesignClick(Sender: TObject);
    procedure btnReportClick(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure N41Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure frxRepAnswerPaperProgress(Sender: TfrxReport;
      ProgressType: TfrxProgressType; Progress: Integer);
    procedure frxRepAnswerPaperProgressStart(Sender: TfrxReport;
      ProgressType: TfrxProgressType; Progress: Integer);
    procedure FormCreate(Sender: TObject);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure chkPnlContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure spnReportChange(Sender: TObject);
    procedure edtHeightDistanceChange(Sender: TObject);
    procedure Panel1Resize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure xpBitBtn2Click(Sender: TObject);
    procedure xpBitBtn3Click(Sender: TObject);
    procedure EditsToReport;
    procedure ReportToEdits;
    procedure xpBitBtn4Click(Sender: TObject);
    procedure SaveCustomCaptions;
    procedure LoadCustomCaptions;
    procedure orderingClick(Sender: TObject);
  private
    { Private declarations }
    _formSender : integer;  // Amin 1391/10/11
    ReportFileName: string;
    procedure SetFormSender(value: integer); // Amin 1391/10/11
    procedure AssignGroupExamToApplicanet(ExamId :integer ; _Type :integer );
  public
    { Public declarations }
    property FormSender : integer read _formSender write SetFormSender;     // Amin 1391/10/11
  end;

var
  frmExamCard: TfrmExamCard;

implementation

uses dmu, YShamsiDate, Upreview, UReport, ADOInt, UApplicantQuestionRep;

{$R *.dfm}

var lleft,ttop,rright,ddown:Integer ;

    RepfileName :String;
    boxHeight,boxtop :Real;
procedure TfrmExamCard.OpenApplicants;
begin
  inherited;
  Stno.Text:=trim(Stno.Text);
with Select_Applicant_by_ExamAndWhere do
 begin
   close;
   Parameters.ParamByName('@examID').Value:=dm.Browse_ExamExamID.AsInteger;
   Parameters.ParamByName('@Where').Value:=Stno.Resultwhere;
    if ordering.ItemIndex=1 then
     Parameters.ParamByName('@Order').Value:='ApplicantCode'
   else
     Parameters.ParamByName('@Order').Value:='Applicant.LastName';

   Open;
 end;

end;

// Amin 1391/10/11 Start
procedure TfrmExamCard.SetFormSender(value: integer);
begin
   _formSender := value;

   if FormSender = 1 then
      frxReport.DataSet := Select_Applicant_by_ExamAndWhere
   else
      frxReport.DataSet := Select_Applicant_by_TrainingCourseID;
   //N3.Visible := value <> 2;
end;
// Amin 1391/10/11 End

procedure TfrmExamCard.QuickRep1Preview(Sender: TObject);
begin
  inherited;
  Fpreview:=TFpreview.Create(Application);
  Fpreview.QRPreview1.QRPrinter:=QuickRep1.QRPrinter;
  Fpreview.Show;

end;

procedure TfrmExamCard.BitBtn2Click(Sender: TObject);
begin
  inherited;
close;
end;

procedure TfrmExamCard.QuickRep2Preview(Sender: TObject);
begin
  inherited;
  Fpreview:=TFpreview.Create(Application);
  Fpreview.QRPreview1.QRPrinter:=QuickRep2.QRPrinter;
  Fpreview.Show;

end;
procedure TfrmExamCard.PrintAppNofrx(ShapeName:string);
  var AppNo,name: string;
  i,j,number:byte;
begin
  inherited;
   if FormSender = 1 then // Amin 1391/10/11
      AppNo:=trim(Select_Applicant_by_ExamAndWhereApplicantCode.AsString)
   else  // Amin 1391/10/11
      AppNo:=trim(Select_Applicant_by_TrainingCourseIDApplicantCode.AsString);  // Amin 1391/10/11

   // Hadi Mohamed 920327 for Pro Setting
   for i:= 1 to 12 do
      TfrxCheckBoxView(frxRepAnswerPaper.FindComponent(ShapeName+IntToStr(i))).Left :=
                     StrToFloat(edtFirstLeft.Text)+(i-1)*(StrToFloat(edtWidth.Text)+StrToFloat(edtWidthDistance.Text));
   for i:= 1 to 12 do
      TfrxCheckBoxView(frxRepAnswerPaper.FindComponent(ShapeName+IntToStr(i))).Top  := StrToFloat(edtFirstTop.Text);
   for i:= 1 to 12 do
      TfrxCheckBoxView(frxRepAnswerPaper.FindComponent(ShapeName+IntToStr(i))).Width := StrToFloat(edtWidth.Text);
   for i:= 1 to 12 do
      TfrxCheckBoxView(frxRepAnswerPaper.FindComponent(ShapeName+IntToStr(i))).Height:= StrToFloat(edtHeight.Text);

   for i:= 2 to 12 do
      TfrxCheckBoxView(frxRepAnswerPaper.FindComponent(ShapeName+IntToStr(i))).left:=
                     TfrxCheckBoxView(frxRepAnswerPaper.FindComponent(ShapeName+IntToStr(i-1))).left+
                     TfrxCheckBoxView(frxRepAnswerPaper.FindComponent(ShapeName+IntToStr(i-1))).Width+
                     StrToFloat(edtWidthDistance.Text);
   try
      TfrxMemoView(frxRepAnswerPaper.FindComponent('PageNumber')).Memo.Clear;
      if FormSender = 1 then
         TfrxMemoView(frxRepAnswerPaper.FindComponent('PageNumber')).Memo.Add( '���� '+IntToStr(Select_Applicant_by_ExamAndWhere.RecNo)+' �� '+IntToStr(Select_Applicant_by_ExamAndWhere.RecordCount))
      else
         TfrxMemoView(frxRepAnswerPaper.FindComponent('PageNumber')).Memo.Add( '���� '+IntToStr(Select_Applicant_by_TrainingCourseID.RecNo)+' �� '+IntToStr(Select_Applicant_by_TrainingCourseID.RecordCount));
   except
   end;
   //END Hadi Mohamed for Pro Setting
   for i:=1 to frxRepAnswerPaper.ComponentCount -1 do
        if frxRepAnswerPaper.Components[i] is TfrxMemoView then TfrxMemoView(frxRepAnswerPaper.Components[i]).RTLReading := true;

   for i:=1 to 12 do
    TfrxCheckBoxView(frxRepAnswerPaper.FindComponent(ShapeName+IntToStr(i))).Visible:=False;

 {  for i:=1 to 12 do
   begin
     elleft  :=  TfrxCheckBoxView(frxRepAnswerPaper.FindComponent(ShapeName+IntToStr(i))).Left;
     erright :=  frxRepAnswerPaper.Pages[1].Width - (TfrxCheckBoxView(frxRepAnswerPaper.FindComponent(ShapeName+IntToStr(i))).Left +
                                            TfrxCheckBoxView(frxRepAnswerPaper.FindComponent(ShapeName+IntToStr(i))).Width);

    TfrxCheckBoxView(frxRepAnswerPaper.FindComponent(ShapeName+IntToStr(i))).Left:=elleft+((i-1)*(erright-elleft) ) / 140;
   end; }

    if length(AppNo)>12 then
      AppNo:=copy(AppNo,length(AppNo)-11,12);
    //  ShowMessage(AppNo);

   if is_integer(AppNo) then
   for i:=1 to length(AppNo) do
    begin
     j:=strtoint(AppNo[i])+1;
     number := strtoint(AppNo[i]);
     TfrxCheckBoxView(frxRepAnswerPaper.FindComponent(ShapeName+IntToStr(i))).Top:=
                                       StrToFloat(edtFirstTop.Text)+
                                       number*(StrToFloat(edtHeight.Text)+StrToFloat(edtHeightDistance.Text));
     TfrxCheckBoxView(frxRepAnswerPaper.FindComponent(ShapeName+IntToStr(i))).Visible:=True
    end;
{  if is_integer(AppNo) then
   for i:=1 to length(AppNo) do
    begin
     j:=strtoint(AppNo[i])+1;
     number := strtoint(AppNo[i]);
     TfrxCheckBoxView(frxRepAnswerPaper.FindComponent(ShapeName+IntToStr(i))).Top:=  boxTop +
                                                                              (  (number*boxHeight )
                                                                                    +((number-1)* (StrToint(spnReport.Text)+4))
                                                                              );
     TfrxCheckBoxView(frxRepAnswerPaper.FindComponent(ShapeName+IntToStr(i))).Visible:=True
    end;     }

end;

procedure TfrmExamCard.PrintAppNo(ShapeName:string);
  var AppNo: string;
  i,j:byte;
begin
  inherited;

  // Amin 1391/10/11 Start
  if FormSender = 2 then
     AppNo:=trim(Select_Applicant_by_TrainingCourseIDApplicantCode.AsString)
  else
  // Amin 1391/10/11 End
AppNo:=trim(Select_Applicant_by_ExamAndWhereApplicantCode.AsString);

 for i:=1 to 12 do
  TQRShape(FindComponent(ShapeName+IntToStr(i))).Enabled:=False;

 for i:=1 to 12 do
    TQRShape(FindComponent(ShapeName+IntToStr(i))).Left:=lleft+((i-1)*(rright-lleft) ) div 11;

  if length(AppNo)>12 then
    AppNo:=copy(AppNo,length(AppNo)-11,12);

  if is_integer(AppNo) then
 for i:=1 to length(AppNo) do
  begin
   j:=strtoint(AppNo[i])+1;
   TQRShape(FindComponent(ShapeName+IntToStr(i))).Top:=ttop+((j-1)*(ddown-ttop)) div 9;
   TQRShape(FindComponent(ShapeName+IntToStr(i))).Enabled:=True
  end;
end;

procedure TfrmExamCard.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
 PrintAppNo('Q');
end;

procedure TfrmExamCard.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
 PrintAppNo('Q_3_');
end;

procedure TfrmExamCard.DetailBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
PrintAppNo('Q_2_');
end;

procedure TfrmExamCard.DetailBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
PrintAppNo('Qa');

end;

procedure TfrmExamCard.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
 PrintAppNo('Q_4_');

end;

procedure TfrmExamCard.QRDBText39Print(sender: TObject; var Value: String);
begin
  inherited;
 PrintAppNo('Q_6_');

end;

procedure TfrmExamCard.btnDesignClick(Sender: TObject);
var
   str : string;
begin
  inherited;
   with TADOQuery.Create(nil)do
   begin
      Connection := dm.YeganehConnection;
      SQL.Text := 'SELECT top 1 ApplicantID FROM ApplicantExam WHERE ExamID='+dm.Browse_ExamExamID.AsString;
      Open;
      str := Fields[0].AsString;
      close;
      Destroy;
   end;
   if trim(str)<>'' then
      with Select_Applicant_by_ExamAndWhere do
      begin
         close;
         Parameters.ParamByName('@examID').Value:=dm.Browse_ExamExamID.AsInteger;
         Parameters.ParamByName('@Where').Value:= 'ApplicantExam.ApplicantID = '+str;
         if ordering.ItemIndex=1 then
            Parameters.ParamByName('@Order').Value:='ApplicantCode'
         else
            Parameters.ParamByName('@Order').Value:='Applicant.LastName';
         Open;
      end;

   if not DirectoryExists(ExtractFilePath(Application.ExeName)+'Reports') then
      CreateDir(ExtractFilePath(Application.ExeName)+'Reports');

   if ReportFileName='' then
      ReportFileName := ExtractFilePath(Application.ExeName)+'Reports\ReportApplication.fr3';

   if Not FileExists(ReportFileName) then
      frxRepAnswerPaper.SaveToFile(ReportFileName)
   else
   begin
      frxRepAnswerPaper.Clear;
      frxRepAnswerPaper.LoadFromFile(ReportFileName);
      LoadCustomCaptions;
   end;
   EditsToReport;

   frxRepAnswerPaper.DesignReport();
   ReportToEdits;

end;

procedure TfrmExamCard.btnReportClick(Sender: TObject);
begin
  inherited;
  OpenApplicants;
  ppmReport.Popup(Left+btnReport.Left+40,Top+btnReport.Top+35);
end;

procedure TfrmExamCard.N11Click(Sender: TObject);
var
   i : integer;  // Amin 1391/10/11
begin
  inherited;
 with QuickRep1 do
   begin
    Zoom:=200;
    lleft:=376;
    ttop:=74;
    rright:=718;
    ddown:=362;

    // Amin 1391/10/11 Start
    if FormSender = 2 then
    begin
      DataSet := Select_Applicant_by_TrainingCourseID;

      for i:= 1 to 6 do
      begin
         try
            (Self.FindComponent('QRDBText'+inttostr(i)) as TQRDBText).DataSet := Select_Applicant_by_TrainingCourseID;
         except
         end;
      end;
    end;
    // Amin 1391/10/11 End

    Preview;
   end;

end;

procedure TfrmExamCard.N21Click(Sender: TObject);
var
   i : integer;  // Amin 1391/10/11
begin
  inherited;
 with QuickRep2 do
   begin
    Zoom:=200;
    lleft:=825;
    ttop:=120;
    rright:=1322;
    ddown:=390;

    // Amin 1391/10/11 Start
    if FormSender = 2 then
    begin
      DataSet := Select_Applicant_by_TrainingCourseID;

      for i:= 7 to 11 do
      begin
         try
            (Self.FindComponent('QRDBText'+inttostr(i)) as TQRDBText).DataSet := Select_Applicant_by_TrainingCourseID;
         except
         end;
      end;
    end;
    // Amin 1391/10/11 End

    Preview;
   end;

end;

procedure TfrmExamCard.N31Click(Sender: TObject);
var
   i : integer;  // Amin 1391/10/11
begin
  inherited;
 with QuickRep3 do
   begin
    Zoom:=200;
    lleft:=101;
    ttop:=246;
    rright:=458;
    ddown:=477; 

    // Amin 1391/10/11 Start
    if FormSender = 2 then
    begin
      DataSet := Select_Applicant_by_TrainingCourseID;
      Appcode.DataSet := Select_Applicant_by_TrainingCourseID;
      for i:= 12 to 20 do
      begin
         try
            (Self.FindComponent('QRDBText'+inttostr(i)) as TQRDBText).DataSet := Select_Applicant_by_TrainingCourseID;
         except
         end;
      end;
    end;
    // Amin 1391/10/11 End

    Preview;
   end;

end;

procedure TfrmExamCard.N41Click(Sender: TObject);
var
   i : integer;  // Amin 1391/10/11
begin
  inherited;
 with QuickRep4 do
   begin
    Zoom:=200;
    lleft:=108;
    ttop:=140;
    rright:=448;
    ddown:=477;

    // Amin 1391/10/11 Start
    if FormSender = 2 then
    begin
      DataSet := Select_Applicant_by_TrainingCourseID;

      for i:= 21 to 28 do
      begin
         try
            (Self.FindComponent('QRDBText'+inttostr(i)) as TQRDBText).DataSet := Select_Applicant_by_TrainingCourseID;
         except
         end;
      end;
    end;
    // Amin 1391/10/11 End

    Preview;
   end;

end;

procedure TfrmExamCard.N1Click(Sender: TObject);
var
   i : integer;  // Amin 1391/10/11
begin
  inherited;
 with QuickRep5 do
   begin
    Zoom:=200;
    lleft:=101;
    ttop:=246;
    rright:=458;
    ddown:=477;

    // Amin 1391/10/11 Start
    if FormSender = 2 then
    begin
      DataSet := Select_Applicant_by_TrainingCourseID;

      for i:= 29 to 40 do
      begin
         try
            (Self.FindComponent('QRDBText'+inttostr(i)) as TQRDBText).DataSet := Select_Applicant_by_TrainingCourseID;
         except
         end;
      end;
    end;
    // Amin 1391/10/11 End

    Preview;
   end;

end;

procedure TfrmExamCard.N2Click(Sender: TObject);
var
   i : integer;  // Amin 1391/10/11
begin
  inherited;
 with QuickRep6 do
   begin
    Zoom:=200;
    lleft:=40;
    ttop:=201;
    rright:=395;
    ddown:=433;

    // Amin 1391/10/11 Start
    if FormSender = 2 then
    begin
      DataSet := Select_Applicant_by_TrainingCourseID;

      for i:= 19 to 42 do
      begin
         try
            (Self.FindComponent('QRDBText'+inttostr(i)) as TQRDBText).DataSet := Select_Applicant_by_TrainingCourseID;
         except
         end;
      end;
    end;
    // Amin 1391/10/11 End

    Preview;
   end;

end;

procedure TfrmExamCard.N3Click(Sender: TObject);
begin
  inherited;

//  OpenApplicants;
//  frxRepAnswerPaper.Clear;
//  if FileExists('Reports\ReportApplicationQue.fr3') then
   frxReport.DataSet := Select_Applicant_by_ExamAndWhere;

   if ReportFileName='' then
      ReportFileName := ExtractFilePath(Application.ExeName)+'Reports\ReportApplication.fr3';
   if not DirectoryExists(ExtractFilePath(Application.ExeName)+'Reports') then
      CreateDir(ExtractFilePath(Application.ExeName)+'Reports');
   if Not FileExists(ReportFileName) then
      frxRepAnswerPaper.SaveToFile(ReportFileName)
   else
      begin
         frxRepAnswerPaper.Clear;
         frxRepAnswerPaper.LoadFromFile(ReportFileName);
         LoadCustomCaptions;
      end;

   frxRepAnswerPaper.ShowReport();
   ReportToEdits;

//  ShowMessage(IntToStr(FormSender));
end;

procedure TfrmExamCard.frxRepAnswerPaperProgress(Sender: TfrxReport;
  ProgressType: TfrxProgressType; Progress: Integer);
begin
  inherited;
 //  PrintAppNofrx('q');
end;

procedure TfrmExamCard.frxRepAnswerPaperProgressStart(Sender: TfrxReport;
  ProgressType: TfrxProgressType; Progress: Integer);
begin
  inherited;
   //  boxTop     :=  TfrxCheckBoxView(frxRepAnswerPaper.FindComponent('q2')).Top;
   //  boxHeight  :=  TfrxCheckBoxView(frxRepAnswerPaper.FindComponent('q1')).Height;
end;

procedure TfrmExamCard.FormCreate(Sender: TObject);
begin
  inherited;
  FormSender := 1; // Amin 1391/10/11
  frxRepAnswerPaper.SaveToFile(ExtractFilePath(Application.ExeName)+'rep.def');
end;

procedure TfrmExamCard.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
   PrintAppNo('Q_6_');     // Amin 1391/10/11
end;

procedure TfrmExamCard.chkPnlContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
//  FrExamQRep.Height := 100+chkPnl.Height;
end;

procedure TfrmExamCard.FormShow(Sender: TObject);
var
   ScrText : TStrings;
   i: integer;
begin
  inherited;
  AssignGroupExamToApplicanet (dm.Browse_ExamExamID.AsInteger,ordering.ItemIndex);
   // Hadi Mohamed 920327 for Pro Setting
//   FrExamQRep.Height := 161;
//   FrExamQRep.Width := 517;
//   if FileExists(ExtractFilePath(Application.ExeName)+'\Reports\Rep.cfg') then
//   begin
//      ScrText := TStringList.Create;
//      ScrText.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Reports\Rep.cfg');
//      edtFirstLeft.Text := ScrText.Strings[0];
//      edtFirstTop.Text := ScrText.Strings[1];
//      edtWidth.Text := ScrText.Strings[2];
//      edtHeight.Text := ScrText.Strings[3];
//      edtWidthDistance.Text := ScrText.Strings[4];
//      edtHeightDistance.Text := ScrText.Strings[5];
//   end
//   else
//   begin
//      edtFirstLeft.Text := FloatToStr(TfrxCheckBoxView(frxRepAnswerPaper.FindComponent('q1')).Left);
//      edtFirstTop.Text  := FloatToStr(TfrxCheckBoxView(frxRepAnswerPaper.FindComponent('q1')).Top);
//
//      edtWidth.Text  := FloatToStr(TfrxCheckBoxView(frxRepAnswerPaper.FindComponent('q1')).Width);
//      edtHeight.Text := FloatToStr(TfrxCheckBoxView(frxRepAnswerPaper.FindComponent('q1')).Height);
//
//      edtWidthDistance.Text  := FloatToStr(TfrxCheckBoxView(frxRepAnswerPaper.FindComponent('q2')).Left-TfrxCheckBoxView(frxRepAnswerPaper.FindComponent('q1')).Left-TfrxCheckBoxView(frxRepAnswerPaper.FindComponent('q1')).Width);
//      try
//         edtHeightDistance.Text := FloatToStr(TfrxCheckBoxView(frxRepAnswerPaper.FindComponent('Memo1')).Height);
//      except
//         edtHeightDistance.Text := '5';
//      end;
//   end;
   //END Hadi Mohamed for Pro Setting

end;


procedure TfrmExamCard.spnReportChange(Sender: TObject);
begin
  inherited;
   edtHeightDistance.Text := spnReport.Text;
end;

procedure TfrmExamCard.edtHeightDistanceChange(Sender: TObject);
begin
  inherited;
   spnReport.Text := edtHeightDistance.Text;
end;

procedure TfrmExamCard.Panel1Resize(Sender: TObject);
begin
  inherited;
   if chkPnl.Height<20 then
      FrExamQRep.Height := 175
   else
      FrExamQRep.Height := 250;
end;

procedure TfrmExamCard.FormClose(Sender: TObject; var Action: TCloseAction);
var
   TxtFile : TStrings;
begin
  inherited;
  TxtFile := TStringList.Create;
  TxtFile.Add(edtFirstLeft.Text);
  TxtFile.Add(edtFirstTop.Text);
  TxtFile.Add(edtWidth.Text);
  TxtFile.Add(edtHeight.Text);
  TxtFile.Add(edtWidthDistance.Text);
  TxtFile.Add(edtHeightDistance.Text);
  TxtFile.SaveToFile(ExtractFilePath(Application.ExeName)+'\Reports\Rep.cfg');
  SaveCustomCaptions;
end;

procedure TfrmExamCard.xpBitBtn1Click(Sender: TObject);
begin
  inherited;
   FReport := TFReport.Create(self);
   FReport.ShowModal;
end;

procedure TfrmExamCard.xpBitBtn2Click(Sender: TObject);
begin
  inherited;
   EditsToReport;
  ReportFileName := ExtractFilePath(Application.ExeName)+'\Reports\'+InputBox('������ �����',
	     '��� �����', '')+'.fr3';
  frxRepAnswerPaper.SaveToFile(ReportFileName);
end;

procedure TfrmExamCard.xpBitBtn3Click(Sender: TObject);
begin
  inherited;
   if OpenDialog1.Execute then
      ReportFileName := OpenDialog1.FileName;
   if FileExists(ReportFileName) then
   begin
      frxRepAnswerPaper.Clear;
      frxRepAnswerPaper.LoadFromFile(ReportFileName);
      LoadCustomCaptions;
      ReportToEdits;

   end;
end;

procedure TfrmExamCard.EditsToReport;
var
   i: integer;
begin
   exit;
  for i:= 1 to 12 do
      TfrxCheckBoxView(frxRepAnswerPaper.FindComponent('q'+IntToStr(i))).Left :=
                     StrToFloat(edtFirstLeft.Text)+(i-1)*(StrToFloat(edtWidth.Text)+StrToFloat(edtWidthDistance.Text));
   for i:= 1 to 12 do
      TfrxCheckBoxView(frxRepAnswerPaper.FindComponent('q'+IntToStr(i))).Top  := StrToFloat(edtFirstTop.Text);
   for i:= 1 to 12 do
      TfrxCheckBoxView(frxRepAnswerPaper.FindComponent('q'+IntToStr(i))).Width := StrToFloat(edtWidth.Text);
   for i:= 1 to 12 do
      TfrxCheckBoxView(frxRepAnswerPaper.FindComponent('q'+IntToStr(i))).Height:= StrToFloat(edtHeight.Text);
   try
      TfrxCheckBoxView(frxRepAnswerPaper.FindComponent('Memo1')).Height:= StrToFloat(edtHeightDistance.Text);
   except
   end;
   for i:= 2 to 12 do
      TfrxCheckBoxView(frxRepAnswerPaper.FindComponent('q'+IntToStr(i))).left:=
                     TfrxCheckBoxView(frxRepAnswerPaper.FindComponent('q'+IntToStr(i-1))).left+
                     TfrxCheckBoxView(frxRepAnswerPaper.FindComponent('q'+IntToStr(i-1))).Width+
                     StrToFloat(edtWidthDistance.Text);

end;

procedure TfrmExamCard.ReportToEdits;
begin
//exit;
//   edtFirstLeft.Text := FloatToStr(TfrxCheckBoxView(frxRepAnswerPaper.FindComponent('q1')).Left);
//   edtFirstTop.Text  := FloatToStr(TfrxCheckBoxView(frxRepAnswerPaper.FindComponent('q1')).Top);
//
//   edtWidth.Text  := FloatToStr(TfrxCheckBoxView(frxRepAnswerPaper.FindComponent('q1')).Width);
//   edtHeight.Text := FloatToStr(TfrxCheckBoxView(frxRepAnswerPaper.FindComponent('q1')).Height);
//
//   edtWidthDistance.Text  := FloatToStr(TfrxCheckBoxView(frxRepAnswerPaper.FindComponent('q2')).Left-TfrxCheckBoxView(frxRepAnswerPaper.FindComponent('q1')).Left-TfrxCheckBoxView(frxRepAnswerPaper.FindComponent('q1')).Width);
//   try
//      edtHeightDistance.Text := FloatToStr(TfrxCheckBoxView(frxRepAnswerPaper.FindComponent('Memo1')).Height);
//   except
//      edtHeightDistance.Text := '5';
//   end;
end;

procedure TfrmExamCard.xpBitBtn4Click(Sender: TObject);
begin
  inherited;
   frxRepAnswerPaper.LoadFromFile(ExtractFilePath(Application.ExeName)+'rep.def');
   LoadCustomCaptions;
   ReportToEdits;

end;

procedure TfrmExamCard.SaveCustomCaptions;
var
   strs : tstrings;
begin
   strs := TStringList.Create();

   dm.sp_Table_CustomFieldsCaption.Close;
   dm.sp_Table_CustomFieldsCaption.Parameters.ParamByName('@TableName').Value := 'Applicant';
   dm.sp_Table_CustomFieldsCaption.Open;
   Strs.Add( ' ������ ' + dm.sp_Table_CustomFieldsCaptionCFC1.AsString);
   Strs.Add( ' ������ ' + dm.sp_Table_CustomFieldsCaptionCFC2.AsString);
   Strs.Add( ' ������ ' + dm.sp_Table_CustomFieldsCaptionCFC3.AsString);
   Strs.Add( ' ������ ' + dm.sp_Table_CustomFieldsCaptionCFC4.AsString);
   Strs.Add( ' ������ ' + dm.sp_Table_CustomFieldsCaptionCFC5.AsString);

   dm.sp_Table_CustomFieldsCaption.Close;
   dm.sp_Table_CustomFieldsCaption.Parameters.ParamByName('@TableName').Value := 'Exam';
   dm.sp_Table_CustomFieldsCaption.Open;
   Strs.Add( ' ����� ' + dm.sp_Table_CustomFieldsCaptionCFC1.AsString);
   Strs.Add( ' ����� ' + dm.sp_Table_CustomFieldsCaptionCFC2.AsString);
   Strs.Add( ' ����� ' + dm.sp_Table_CustomFieldsCaptionCFC3.AsString);
   Strs.Add( ' ����� ' + dm.sp_Table_CustomFieldsCaptionCFC4.AsString);
   Strs.Add( ' ����� ' + dm.sp_Table_CustomFieldsCaptionCFC5.AsString);

   strs.SaveToFile(ExtractFilePath(Application.ExeName)+'RepCustomFields.YGN');
end;
//   for i:= 0 to frxRepAnswerPaper.ComponentCount -1 do
//      if frxRepAnswerPaper.Components[i] is TfrxMemoView then
//      begin
//         if TfrxMemoView(frxRepAnswerPaper.Components[i]).DataField = '' then
//            TfrxMemoView(frxRepAnswerPaper.Components[i]).DataField := '';
//      end;

procedure TfrmExamCard.LoadCustomCaptions;
var
   i, j: integer;
   strs , newstrs: TStrings;
begin
   // Hadi Mohamed 921203 for Pro Setting
   strs := TStringList.Create();
   newstrs := TStringList.Create();
   if FileExists(ExtractFilePath(Application.ExeName)+'RepCustomFields.YGN')then
      strs.LoadFromFile(ExtractFilePath(Application.ExeName)+'RepCustomFields.YGN')
   else
   begin
   end;

   dm.sp_Table_CustomFieldsCaption.Close;
   dm.sp_Table_CustomFieldsCaption.Parameters.ParamByName('@TableName').Value := 'Applicant';
   dm.sp_Table_CustomFieldsCaption.Open;

   for i:= 0 to frxReport.FieldAliases.Count -1 do
   begin
      frxReport.FieldAliases[i] := StringReplace(frxReport.FieldAliases[i],'CFC1',' ������ '+dm.sp_Table_CustomFieldsCaptionCFC1.AsString,[rfReplaceAll]);
      frxReport.FieldAliases[i] := StringReplace(frxReport.FieldAliases[i],'CFC2',' ������ '+dm.sp_Table_CustomFieldsCaptionCFC2.AsString,[rfReplaceAll]);
      frxReport.FieldAliases[i] := StringReplace(frxReport.FieldAliases[i],'CFC3',' ������ '+dm.sp_Table_CustomFieldsCaptionCFC3.AsString,[rfReplaceAll]);
      frxReport.FieldAliases[i] := StringReplace(frxReport.FieldAliases[i],'CFC4',' ������ '+dm.sp_Table_CustomFieldsCaptionCFC4.AsString,[rfReplaceAll]);
      frxReport.FieldAliases[i] := StringReplace(frxReport.FieldAliases[i],'CFC5',' ������ '+dm.sp_Table_CustomFieldsCaptionCFC5.AsString,[rfReplaceAll]);
   end;
   newstrs.Add(' ������ '+dm.sp_Table_CustomFieldsCaptionCFC1.AsString);
   newstrs.Add(' ������ '+dm.sp_Table_CustomFieldsCaptionCFC2.AsString);
   newstrs.Add(' ������ '+dm.sp_Table_CustomFieldsCaptionCFC3.AsString);
   newstrs.Add(' ������ '+dm.sp_Table_CustomFieldsCaptionCFC4.AsString);
   newstrs.Add(' ������ '+dm.sp_Table_CustomFieldsCaptionCFC5.AsString);

   dm.sp_Table_CustomFieldsCaption.Close;
   dm.sp_Table_CustomFieldsCaption.Parameters.ParamByName('@TableName').Value := 'Exam';
   dm.sp_Table_CustomFieldsCaption.Open;
   for i:= 0 to frxReport.FieldAliases.Count -1 do
   begin
      frxReport.FieldAliases[i] := StringReplace(frxReport.FieldAliases[i],'ECuFC1',' ����� '+dm.sp_Table_CustomFieldsCaptionCFC1.AsString,[rfReplaceAll]);
      frxReport.FieldAliases[i] := StringReplace(frxReport.FieldAliases[i],'ECuFC2',' ����� '+dm.sp_Table_CustomFieldsCaptionCFC2.AsString,[rfReplaceAll]);
      frxReport.FieldAliases[i] := StringReplace(frxReport.FieldAliases[i],'ECuFC3',' ����� '+dm.sp_Table_CustomFieldsCaptionCFC3.AsString,[rfReplaceAll]);
      frxReport.FieldAliases[i] := StringReplace(frxReport.FieldAliases[i],'ECuFC4',' ����� '+dm.sp_Table_CustomFieldsCaptionCFC4.AsString,[rfReplaceAll]);
      frxReport.FieldAliases[i] := StringReplace(frxReport.FieldAliases[i],'ECuFC5',' ����� '+dm.sp_Table_CustomFieldsCaptionCFC5.AsString,[rfReplaceAll]);
   end;
   newstrs.Add(' ����� '+dm.sp_Table_CustomFieldsCaptionCFC1.AsString);
   newstrs.Add(' ����� '+dm.sp_Table_CustomFieldsCaptionCFC2.AsString);
   newstrs.Add(' ����� '+dm.sp_Table_CustomFieldsCaptionCFC3.AsString);
   newstrs.Add(' ����� '+dm.sp_Table_CustomFieldsCaptionCFC4.AsString);
   newstrs.Add(' ����� '+dm.sp_Table_CustomFieldsCaptionCFC5.AsString);

      for i:= 0 to frxRepAnswerPaper.ComponentCount -1 do
      if frxRepAnswerPaper.Components[i] is TfrxMemoView then
      begin
         if Strs.Count>0 then
            for j := 0 to strs.Count -1 do
            begin
               if TfrxMemoView(frxRepAnswerPaper.Components[i]).DataField = strs[j] then
                  TfrxMemoView(frxRepAnswerPaper.Components[i]).DataField := newstrs[j];
            end;
      end;
   if ReportFileName='' then
      ReportFileName := ExtractFilePath(Application.ExeName)+'Reports\ReportApplication.fr3';
   frxRepAnswerPaper.SaveToFile(ReportFileName);
end;

procedure TfrmExamCard.AssignGroupExamToApplicanet(ExamId, _Type: integer);
begin
  spAssignGroupExamToApplicanet.Close;
  spAssignGroupExamToApplicanet.Parameters.Refresh;
  spAssignGroupExamToApplicanet.Parameters.ParamByName('@ExamId').Value :=ExamId;
  spAssignGroupExamToApplicanet.Parameters.ParamByName('@Type').Value := _Type;
  spAssignGroupExamToApplicanet.ExecProc;

end;

procedure TfrmExamCard.orderingClick(Sender: TObject);
begin
  inherited;
  AssignGroupExamToApplicanet (dm.Browse_ExamExamID.AsInteger,ordering.ItemIndex);
end;

end.

