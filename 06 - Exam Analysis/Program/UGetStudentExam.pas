unit UGetStudentExam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ExtActns, ActnList, ADODB, ExtCtrls, Grids,
  DBGrids, YDbgrid, StdCtrls, Buttons, YWhereEdit, CheckLst, YchecklistBox,
  ComCtrls, Yeganeh_Word, QuickRpt, QRCtrls, DBCtrls, UemsVCL, Mask,
  xpWindow, xpBitBtn;

type
  TFrGet_StnoExam = class(TMBaseForm)
    btnMakeReport: TxpBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    studentNumber: TEdit;
    Get_ApplicantExamDetails_by_ApplicantCode: TADOStoredProc;
    DGet_StnoExam: TDataSource;
    Panel2: TPanel;
    YDBGrid1: TYDBGrid;
    Get_ApplicantCodeExam_Info: TADOStoredProc;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DGet_StnoExam_Info: TDataSource;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    DBEdit6: TDBEdit;
    Panel6: TPanel;
    Panel5: TPanel;
    Panel4: TPanel;
    Panel3: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    Button2: TxpBitBtn;
    Button3: TxpBitBtn;
    Button4: TxpBitBtn;
    Button5: TxpBitBtn;
    Button6: TxpBitBtn;
    Get_ApplicantExamDetails_by_ApplicantCodeNumber: TSmallintField;
    Get_ApplicantExamDetails_by_ApplicantCodeAnswerItemNumber: TWordField;
    Get_ApplicantExamDetails_by_ApplicantCodeItem1: TBooleanField;
    Get_ApplicantExamDetails_by_ApplicantCodeItem2: TBooleanField;
    Get_ApplicantExamDetails_by_ApplicantCodeItem3: TBooleanField;
    Get_ApplicantExamDetails_by_ApplicantCodeItem4: TBooleanField;
    Get_ApplicantCodeExam_InfoApplicantCode: TStringField;
    Get_ApplicantCodeExam_InfoFirstName: TWideStringField;
    Get_ApplicantCodeExam_InfoLastName: TWideStringField;
    Get_ApplicantCodeExam_InfoTermcode: TStringField;
    Get_ApplicantCodeExam_InfoMajorTitle: TWideStringField;
    Get_ApplicantCodeExam_InfoFinalMark: TFloatField;
    Get_ApplicantCodeExam_InfoGroupingTitle: TWideStringField;
    Get_ApplicantCodeExam_Infoord: TIntegerField;
    Get_ApplicantCodeExam_InfoCorrect_answer: TIntegerField;
    Get_ApplicantCodeExam_InfoWrong_answer: TIntegerField;
    Get_ApplicantCodeExam_InfoWithot_answer: TIntegerField;
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    Button7: TxpBitBtn;
    backGround: TQRShape;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText15: TQRDBText;
    QRShape5: TQRShape;
    Get_ApplicantExamDetails_by_ApplicantCodeCorrectItemNumber: TWordField;
    Get_ApplicantExamDetails_by_ApplicantCodeItem5: TBooleanField;
    Get_ApplicantExamDetails_by_ApplicantCodeCorrectItemNumber2: TWordField;
    Panel7: TPanel;
    Get_ApplicantExamDetails_by_ApplicantCodeItem6: TBooleanField;
    Get_ApplicantExamDetails_by_ApplicantCodeCorrectItemNumber3: TWordField;
    Get_ApplicantExamDetails_by_ApplicantCodeCorrectItemNumber4: TWordField;
    Get_ApplicantExamDetails_by_ApplicantCodeCorrectItemNumber5: TWordField;
    Get_ApplicantExamDetails_by_ApplicantCodeCorrectItemNumber6: TWordField;
    procedure btnMakeReportClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure YDBGrid1NeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
    procedure studentNumberKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button7Click(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1Preview(Sender: TObject);
  private
    { Private declarations }
  public
    constructor create(AOwner: TComponent;stNumber :String = '');reintroduce;virtual;
    { Public declarations }
  end;

var
  FrGet_StnoExam: TFrGet_StnoExam;

implementation

uses dmu, BusinessLayer,  ULetterTemplate, Upreview;

{$R *.dfm}

procedure TFrGet_StnoExam.btnMakeReportClick(Sender: TObject);

begin
  inherited;
  with dm,Get_ApplicantExamDetails_by_ApplicantCode do
   begin
     close;
     Parameters.ParamByName('@ExamId').Value:=dm.Browse_ExamExamID.AsInteger;
     Parameters.ParamByName('@ApplicantCode').Value:=studentNumber.Text;
     Open;
   end;
  with dm,Get_ApplicantCodeExam_Info do
   begin
     close;
     Parameters.ParamByName('@ExamId').Value:=dm.Browse_ExamExamID.AsInteger;
     Parameters.ParamByName('@ApplicantCode').Value:=studentNumber.Text;
     Open;
  end;
end;

procedure TFrGet_StnoExam.Button6Click(Sender: TObject);
begin
  inherited;
 YDBGrid1.CustomizePrint;
end;


procedure TFrGet_StnoExam.Button2Click(Sender: TObject);
begin
  inherited;
 YDBGrid1.Print;

end;

procedure TFrGet_StnoExam.Button3Click(Sender: TObject);
begin
  inherited;
 YDBGrid1.ExportToWord;
end;

procedure TFrGet_StnoExam.Button4Click(Sender: TObject);
begin
  inherited;
  YDBGrid1.ExportToExcel;

end;

procedure TFrGet_StnoExam.Button5Click(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFrGet_StnoExam.YDBGrid1NeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Color: TColor);
begin
  inherited;
 with Get_ApplicantExamDetails_by_ApplicantCode do
  if (FieldByName('CorrectItemNumber').Value=FieldByName('AnswerItemNumber').Value)
                    or (FieldByName('CorrectItemNumber2').Value = FieldByName('AnswerItemNumber').Value)
                      or (FieldByName('CorrectItemNumber').Value = 8) then
    if (FieldByName('CorrectItemNumber').Value = 8) then color:=  $00F8BFB1 else color:=  clMoneyGreen

  else
  if FieldByName('AnswerItemNumber').Value=0 then
    color:=clCream
   else
    color:=$00D8A0CD;


end;

procedure TFrGet_StnoExam.studentNumberKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
if key=13 then
 btnMakeReport.onclick(Self)
end;

procedure TFrGet_StnoExam.Button7Click(Sender: TObject);
begin
  inherited;
QuickRep1.Preview;
end;

procedure TFrGet_StnoExam.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
 with Get_ApplicantExamDetails_by_ApplicantCode do
  begin

    if FieldByName('AnswerItemNumber').Value=0 then
       begin
         backGround.Brush.color:=clWhite;
         backGround.Pen.Color:=clBlack;
       end
     else
      if FieldByName('CorrectItemNumber').Value=FieldByName('AnswerItemNumber').Value then
       begin
         backGround.Brush.color:=clWhite;
         backGround.Pen.Color:=backGround.Brush.color;
       end
     else
       begin
         backGround.Brush.color:=$00DDDDDD;
         backGround.Pen.Color:=backGround.Brush.color;
       end;


    QRShape1.Brush.Color:=clWhite;
    QRShape2.Brush.Color:=clWhite;
    QRShape3.Brush.Color:=clWhite;
    QRShape4.Brush.Color:=clWhite;

    QRShape1.Brush.Style:=bsClear;
    QRShape2.Brush.Style:=bsClear;
    QRShape3.Brush.Style:=bsClear;
    QRShape4.Brush.Style:=bsClear;

   case FieldByName('CorrectItemNumber').Value  of
    1:QRShape1.Brush.Color:=clGray;
    2:QRShape2.Brush.Color:=clGray;
    3:QRShape3.Brush.Color:=clGray;
    4:QRShape4.Brush.Color:=clGray;
   end;

if not FieldByName('CorrectItemNumber2').IsNull then
     case FieldByName('CorrectItemNumber2').Value  of
      1:
      Begin
        QRShape1.Brush.Color      := clBlack;
        QRShape1.Brush.Style      := bsFDiagonal;
      End;
      2:
      Begin
        QRShape2.Brush.Color      := clBlack;
        QRShape2.Brush.Style      := bsFDiagonal;

      End;
      3:
      Begin
        QRShape3.Brush.Color      :=clBlack;
        QRShape3.Brush.Style      := bsFDiagonal;
      End;
      4:
      Begin
        QRShape4.Brush.Style      := bsFDiagonal;
        QRShape4.Brush.Color      :=clBlack;
      End;

     end;

   case FieldByName('AnswerItemNumber').Value  of
    1:QRShape1.Brush.Color:=clBlack;
    2:QRShape2.Brush.Color:=clBlack;
    3:QRShape3.Brush.Color:=clBlack;
    4:QRShape4.Brush.Color:=clBlack;
   end
   end;
end;

procedure TFrGet_StnoExam.QuickRep1Preview(Sender: TObject);
begin
  inherited;
  Fpreview:=TFpreview.Create(Application);
  Fpreview.QRPreview1.QRPrinter:=QuickRep1.QRPrinter;
  Fpreview.Show;

end;

constructor TFrGet_StnoExam.create(AOwner: TComponent;
  stNumber: String);
begin
  inherited create(AOwner);
  studentNumber.Text := stNumber;
  if stNumber <> '' then  btnMakeReportClick(btnMakeReport);
end;

end.
