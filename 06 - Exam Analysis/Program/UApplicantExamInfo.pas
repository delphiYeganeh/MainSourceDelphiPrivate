unit UApplicantExamInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ExtActns, ActnList, ADODB, ExtCtrls, Grids,
  DBGrids, YDbgrid, StdCtrls, Buttons, YWhereEdit, CheckLst, YchecklistBox,
  ComCtrls, Yeganeh_Word, QuickRpt, QRCtrls, DBCtrls, UemsVCL, Mask,Math,
  xpWindow, xpBitBtn,frmWait
  ,ActiveX;

type
  TFrApplicantExam = class(TMBaseForm)
    YDBGrid1: TYDBGrid;
    DSelect_Applicant_by_Examid: TDataSource;
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
    QuickRep2: TQuickRep;
    QRBand1: TQRBand;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRShape5: TQRShape;
    QRLabel34: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel40: TQRLabel;
    QRLbstName1: TQRLabel;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRLabel43: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    RDate: TQRLabel;
    QRShape14: TQRShape;
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
    QRLabel1: TQRLabel;
    Select_Applicant_by_Examidmark100: TFloatField;
    Select_Applicant_by_ExamidFatherName: TWideStringField;
    Select_Applicant_by_ExamidCustomField1: TWideStringField;
    Select_Applicant_by_ExamidCustomField2: TWideStringField;
    Select_Applicant_by_ExamidFullPoint: TFloatField;
    Select_Applicant_by_Examidmark: TFloatField;
    Select_Applicant_by_Examid_advanced: TADOStoredProc;
    Select_Applicant_by_Examid_advancedApplicantID: TAutoIncField;
    Select_Applicant_by_Examid_advancedApplicantCode: TStringField;
    Select_Applicant_by_Examid_advancedFirstName: TWideStringField;
    Select_Applicant_by_Examid_advancedLastName: TWideStringField;
    Select_Applicant_by_Examid_advancedFullName: TWideStringField;
    Select_Applicant_by_Examid_advancedMajorID: TSmallintField;
    Select_Applicant_by_Examid_advancedTermcode: TStringField;
    Select_Applicant_by_Examid_advancedFatherName: TWideStringField;
    Select_Applicant_by_Examid_advancedCustomField1: TWideStringField;
    Select_Applicant_by_Examid_advancedCustomField2: TWideStringField;
    Select_Applicant_by_Examid_advancedFacultyTitle: TWideStringField;
    Select_Applicant_by_Examid_advancedMajorTitle: TWideStringField;
    Select_Applicant_by_Examid_advancedFullPoint: TFloatField;
    Select_Applicant_by_Examid_advancedmark: TFloatField;
    Panel1: TPanel;
    Button2: TxpBitBtn;
    Button3: TxpBitBtn;
    Button4: TxpBitBtn;
    Button5: TxpBitBtn;
    Button6: TxpBitBtn;
    xpBitBtn1: TxpBitBtn;
    xpBitBtn2: TxpBitBtn;
    xpBitBtn3: TxpBitBtn;
    Select_Applicant_by_ExamidAcceptCount: TIntegerField;
    Select_Applicant_by_ExamidRejectCount: TIntegerField;
    Select_Applicant_by_ExamidAcceptPercent: TBCDField;
    Select_Applicant_by_ExamidRejectPercent: TBCDField;
    Number: TLabel;
    RealTitle: TQRLabel;
    RealDate: TQRLabel;
    Select_Applicant_by_Examid_advancedFarsiMark: TStringField;
    QRDBText1: TQRDBText;
    Select_Applicant_by_ExamidFarsiMark: TStringField;
    Select_Applicant_by_ExamidFarsiMark100: TStringField;
    Select_Applicant_by_ExamidDeleteQuestionCount: TIntegerField;
    Select_Applicant_by_ExamidCorrectItemPoint: TBCDField;
    QRDBText2: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    Select_Applicant_by_ExamidmaxMark: TFloatField;
    QRLabel4: TQRLabel;
    QRDBText4: TQRDBText;
    QuickRep1: TQuickRep;
    Select_ApplicantExam_Log: TADOStoredProc;
    Select_ApplicantExam_Logcoursetitle: TWideStringField;
    Select_ApplicantExam_LogPercentMark: TFloatField;
    QRSubDetail1: TQRSubDetail;
    Rect5: TQRShape;
    Rect4: TQRShape;
    Rect3: TQRShape;
    Rect2: TQRShape;
    QRDBText5: TQRDBText;
    Rect1: TQRShape;
    Num2: TQRLabel;
    Num3: TQRLabel;
    Num4: TQRLabel;
    Num5: TQRLabel;
    QRBand4: TQRBand;
    QRLabel6: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel5: TQRLabel;
    Course2: TQRLabel;
    Course3: TQRLabel;
    Course4: TQRLabel;
    Course5: TQRLabel;
    Rect_5: TQRShape;
    Rect_4: TQRShape;
    Rect_3: TQRShape;
    Rect_2: TQRShape;
    Rect_1: TQRShape;
    QRLabel7: TQRLabel;
    QRDBText7: TQRDBText;
    QRShape1: TQRShape;
    Course6: TQRLabel;
    Rect_6: TQRShape;
    Rect6: TQRShape;
    Num6: TQRLabel;
    xpBitBtn4: TxpBitBtn;
    Select_Applicant_by_ExamidCorrect_answer: TIntegerField;
    Select_Applicant_by_ExamidWrong_answer: TIntegerField;
    Select_Applicant_by_ExamidWithot_answer: TIntegerField;
    QRShape2: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape6: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    usp_ListTafkikiKol: TADOStoredProc;
    Select_Applicant_by_ExamidSumScore: TWideStringField;
    Select_Applicant_by_ExamidRoundFinalMark: TFloatField;
    procedure Button6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure QuickRep1Preview(Sender: TObject);
    procedure xpBitBtn2Click(Sender: TObject);
    procedure QRLabel48Print(sender: TObject; var Value: String);
    procedure xpBitBtn3Click(Sender: TObject);
    procedure Select_Applicant_by_Examid_advancedCalcFields(
      DataSet: TDataSet);
    procedure Select_Applicant_by_ExamidCalcFields(DataSet: TDataSet);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure xpBitBtn4Click(Sender: TObject);
    procedure QuickRep2Preview(Sender: TObject);
  private
    FExamID: Integer;
    TempLenFrac : Integer;
    procedure SetExamID(const Value: Integer);
    { Private declarations }
  public
    { Public declarations }
    property ExamID:Integer read FExamID write SetExamID;
  end;


  TReIndexThread = class(TThread)
  private
    FrmWait : TWaitForm;
  protected
    procedure Execute; override;
  public
    Class procedure Run;
  end;


var
  FrApplicantExam: TFrApplicantExam;

implementation

uses dmu, BusinessLayer,  ULetterTemplate, YShamsiDate, Upreview,
  DetailExamU, TahlilU, unt_ListTafkikiKol;

{$R *.dfm}
Procedure SetDataset(D:TDataSet);
begin
  with FrApplicantExam do
  begin
    Qrmark.DataSet:=d;

    QRSubDetail2.DataSet:=d;
    QuickRep2.DataSet:=d;

    QrDBStName1.DataSet:=d;
    QRDBText20.DataSet:=d;
    QRDBText28.DataSet:=d;
    QRDBText1.DataSet:=d;
    // QRDBText17.DataSet:=d;

  end;

end;

procedure TFrApplicantExam.Button6Click(Sender: TObject);
begin
  inherited;
 YDBGrid1.CustomizePrint;
end;


procedure TFrApplicantExam.Button2Click(Sender: TObject);
begin
  inherited;
  //Add Sanaye 941204
  // ‰„«Ì‘ ·Ì”   ›òÌòÌ ò· Ê ê—› ‰ Œ—ÊÃÌ «ò”·
  frm_ListTafkikiKol :=Tfrm_ListTafkikiKol.create(Application);
  frm_ListTafkikiKol.ShowModal;
  //end Sanaye
end;

procedure TFrApplicantExam.Button3Click(Sender: TObject);
begin
  inherited;
 YDBGrid1.ExportToWord;
end;

procedure TFrApplicantExam.Button4Click(Sender: TObject);
begin
  inherited;
  YDBGrid1.ExportToExcel;
end;

procedure TFrApplicantExam.Button5Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFrApplicantExam.FormCreate(Sender: TObject);
var
  AcceptPercent,RejectPercent:Real;
  temp     : Extended;
  tempStr  : string ;
  apos     : integer ;
  alentemp : Integer;
begin
  inherited;

  with usp_ListTafkikiKol do
  begin
    try
      Parameters.ParamByName('@ExamId').Value := dm.Browse_ExamExamID.AsInteger;
      Open;
    except
    on E : Exception do
     begin
       //ShowMessage('„‘ò· œ— ›—«ŒÊ«‰Ì «ÿ·«⁄« ');
       //ShowMessage('Exception class name = '+E.ClassName);
       //ShowMessage('Exception message = '+E.Message);
       Close;
     end;
    end;
  end;

  TempLenFrac := 0 ;

  RDate.Caption:=_Today;
  with dm,Select_Applicant_by_Examid do
  begin
   close;
   Parameters.ParamByName('@examID').Value:=dm.Browse_ExamExamID.AsInteger;
   Open;
   ExamID:=dm.Browse_ExamExamID.AsInteger;
   Number.Caption:=' ⁄œ«œ:'+IntToStr(RecordCount);
   YDBGrid1.PrintTitle:='·Ì”  œ«‰‘ÃÊÌ«‰ ¬“„Ê‰ '+dm.Browse_ExamExamTitle.AsString;
  end;


end;

procedure TFrApplicantExam.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
 // farsimark.Caption:=FloatBill(Select_Applicant_by_Examid.Fieldbyname(Qrmark.DataField).AsFloat);
end;

procedure TFrApplicantExam.xpBitBtn1Click(Sender: TObject);
begin
  inherited;
  SetDataset(Select_Applicant_by_Examid);
  RealTitle.Caption := dm.Browse_ExamExamTitle.AsString;
  RealDate.Caption := dm.Browse_ExamExamDate.AsString;
  QRLabel34.Caption:='';//{'·Ì”  ‰„—«  +'}frDetailExam.Edit1.Text;
  Qrmark.DataField:='MARK100';
  QRDBText1.DataField := 'FarsiMark100';
  QuickRep2.Preview;
end;

procedure TFrApplicantExam.QuickRep1Preview(Sender: TObject);
begin
  inherited;
  Fpreview:=TFpreview.Create(Application);
  Fpreview.QRPreview1.QRPrinter:=QuickRep1.QRPrinter;
  Fpreview.Show;
end;

procedure TFrApplicantExam.xpBitBtn2Click(Sender: TObject);
begin
  inherited;
  SetDataset(Select_Applicant_by_Examid);
  RealTitle.Caption := dm.Browse_ExamExamTitle.AsString;
  RealDate.Caption := dm.Browse_ExamExamDate.AsString;
  QRLabel34.Caption:='';//{'·Ì”  ‰„—«  +'}frDetailExam.Edit1.Text;
  Qrmark.DataField:='MARK';
  QRDBText1.DataField := 'FarsiMark';
  QuickRep2.Preview;

end;

procedure TFrApplicantExam.QRLabel48Print(sender: TObject;
  var Value: String);
begin
  inherited;
value:=Get_SystemSetting('UniversityTitle');
end;

procedure TFrApplicantExam.xpBitBtn3Click(Sender: TObject);
begin
  inherited;
  FTahlil:=TFTahlil.Create(Application);
  FTahlil.ExamID:=ExamID;
  FTahlil.ShowModal;
end;

procedure TFrApplicantExam.SetExamID(const Value: Integer);
begin
  FExamID := Value;
end;

procedure TFrApplicantExam.Select_Applicant_by_Examid_advancedCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  Select_Applicant_by_Examid_advancedFarsiMark.Value:=FloatBill(Select_Applicant_by_Examid_advancedmark.AsFloat);
end;

procedure TFrApplicantExam.Select_Applicant_by_ExamidCalcFields(
  DataSet: TDataSet);
  var
    roundNumber : Double;
  temp     : Extended;
  tempStr  : string ;
  apos     : integer ;
  alentemp : Integer;
begin
  inherited;
  Select_Applicant_by_ExamidFarsiMark.Value      :=FloatBill(Select_Applicant_by_Examidmark.AsFloat);
  Select_Applicant_by_ExamidFarsiMark100.Value   :=FloatBill(Select_Applicant_by_Examidmark100.AsFloat);

  if  TempLenFrac = 0 then
  begin
    TempLenFrac := 0 ;
    temp        := frac(Select_Applicant_by_ExamidmaxMark.AsFloat) ;
    tempStr     := FloatToStr(temp) ;
    apos        := Pos('/',tempStr) ;
    alentemp    := Length( tempStr) ;
    if apos > 0 then
      TempLenFrac :=  Length( Copy(tempStr,apos+1, (alentemp -apos) ) )
    else  TempLenFrac := 2 ;
  end ;

  if TempLenFrac >0 then
    roundNumber :=  Round(Select_Applicant_by_ExamidFinalMark.AsFloat * Power (10,TempLenFrac))/power(10,TempLenFrac) ;

  Select_Applicant_by_ExamidRoundFinalMark.Value := roundNumber ;
end;

procedure TFrApplicantExam.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
   i,j: byte;
   qrShape : array [1..30] of TQRShape;
   qrlable : TQRLabel;
begin
    inherited;
    //Add Sanaye 941025
    //«ÌÃ«œ ê“«—‘  ›òÌòÌ ò·
    with Select_ApplicantExam_Log do
    begin
       close;
       Parameters.ParamByName('@ApplicantID').Value:=Select_Applicant_by_ExamidApplicantID.AsInteger;
       Parameters.ParamByName('@ExamID').Value:=dm.Browse_ExamExamID.AsInteger;
       Open;
       first;
    end;
    i:=2;
    while not Select_ApplicantExam_Log.eof do
    begin
         //TQRShape(FindComponent('Line'+IntToStr(i))).Enabled := true;
         TQRShape(FindComponent('Rect'+IntToStr(i))).Enabled := true;
         TQRLabel(FindComponent('Course'+IntToStr(i))).Enabled := true;
         TQRLabel(FindComponent('Num'+IntToStr(i))).Enabled := true;
         TQRLabel(FindComponent('Course'+IntToStr(i))).Caption:=Select_ApplicantExam_Logcoursetitle.AsString;
         TQRLabel(FindComponent('Num'+IntToStr(i))).Caption:=Select_ApplicantExam_LogPercentMark.AsString;
         Select_ApplicantExam_Log.Next;
         inc(i);
    end;
    //End Sanaye
end;

procedure TFrApplicantExam.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
   i,j: byte;
   qrShape : array [1..30] of TQRShape;
   qrlable : TQRLabel;
begin
    inherited;
    //Add Sanaye 941025
    //«ÌÃ«œ ê“«—‘  ›òÌòÌ ò·
    with Select_ApplicantExam_Log do
    begin
       close;
       Parameters.ParamByName('@ApplicantID').Value:=Select_Applicant_by_ExamidApplicantID.AsInteger;
       Parameters.ParamByName('@ExamID').Value:=dm.Browse_ExamExamID.AsInteger;
       Open;
       first;
    end;
    i:=2;
    while not Select_ApplicantExam_Log.eof do
    begin
         TQRShape(FindComponent('Rect_'+IntToStr(i))).Enabled := true;
         TQRLabel(FindComponent('Course'+IntToStr(i))).Enabled := true;
         TQRLabel(FindComponent('Course'+IntToStr(i))).Caption:=Select_ApplicantExam_Logcoursetitle.AsString;
         Select_ApplicantExam_Log.Next;
         inc(i);
    end;
    //End Sanaye
end;

procedure TFrApplicantExam.xpBitBtn4Click(Sender: TObject);
begin
  inherited;
  frDetailExam:=tfrDetailExam.Create(Application);
  with frDetailExam,Select_Applicant_by_Examid_advanced do
  begin
    ShowModal;
    if not done then exit;
      close;
    Parameters.ParamByName('@ExamID').Value:=dm.Browse_ExamExamID.AsInteger;
    Parameters.ParamByName('@questionNumber1').Value:=StrToInt(Edit2.Text);
    Parameters.ParamByName('@questionNumber2').Value:=StrToInt(Edit3.Text);
    Parameters.ParamByName('@maxMark').Value:=StrToInt(Edit4.Text);

    open;
  end;
  Qrmark.DataField:='mark';
  QRDBText1.DataField := 'FarsiMark';
  SetDataset(Select_Applicant_by_Examid_advanced);
  RealTitle.Caption := dm.Browse_ExamExamTitle.AsString;
  RealDate.Caption := dm.Browse_ExamExamDate.AsString;
  QRLabel34.Caption:={'·Ì”  ‰„—«  +'}frDetailExam.Edit1.Text;
  QuickRep2.Preview;
end;

procedure TFrApplicantExam.QuickRep2Preview(Sender: TObject);
begin
  inherited;
  Fpreview:=TFpreview.Create(Application);
  Fpreview.QRPreview1.QRPrinter:=QuickRep2.QRPrinter;
  Fpreview.Show;
end;


//-----------------------------------------------------------------------
{ TReIndexThread }

procedure TReIndexThread.Execute;
begin
  inherited;

  CoInitialize(nil);

  try
  FrmWait.Cursor := crSQLWait;

  //WITH TFrApplicantExam(Application).ADOQuery1 DO
  //BEGIN
  //  Open;
  //END;
  //TFrApplicantExam(Application).ADOQuery1.Close;

  finally
  Terminate;
  FrmWait.Close;
  end;

  CoUninitialize();

end;

class procedure TReIndexThread.Run;
begin

  with TReIndexThread.Create( True ) do
  begin
    FreeOnTerminate := True;
    Priority := tpTimeCritical;
    Application.CreateForm(TWaitForm, FrmWait);
    Resume;
    try
    FrmWait.ShowModal;
    finally
    FrmWait.Free;
    end;
  end;

end;
//-----------------------------------------------------------------------


end.
