unit ExamSessionReportU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Mask, Buttons, quickrpt, Qrctrls, Db, DBTables,
  Grids, DBGrids, Menus, UfrBase, ADODB, UemsVCL, Spin, xpBitBtn;

type
  TFqr32 = class(TForm)
    BitBtn4: TxpBitBtn;
    BitBtn1: TxpBitBtn;
    BitBtn3: TxpBitBtn;
    Panel2: TPanel;
    Label6: TLabel;
    TermEdit: TMaskEdit;
    Label5: TLabel;
    DateEdit: TShamsiDateEdit;
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRShape2: TQRShape;
    Head: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape3: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRShape9: TQRShape;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel37: TQRLabel;
    QRShape10: TQRShape;
    Rdate: TQRLabel;
    QRLabel39: TQRLabel;
    Lc1: TQRLabel;
    Lc2: TQRLabel;
    Lc3: TQRLabel;
    Lc4: TQRLabel;
    Lc5: TQRLabel;
    Lc6: TQRLabel;
    Lc7: TQRLabel;
    Lc8: TQRLabel;
    Lc9: TQRLabel;
    Lc10: TQRLabel;
    Lc11: TQRLabel;
    Lc12: TQRLabel;
    Lc13: TQRLabel;
    Lc14: TQRLabel;
    Ln1: TQRLabel;
    Ln2: TQRLabel;
    Ln3: TQRLabel;
    Ln4: TQRLabel;
    Ln5: TQRLabel;
    Ln6: TQRLabel;
    Ln7: TQRLabel;
    Ln8: TQRLabel;
    Ln9: TQRLabel;
    Ln10: TQRLabel;
    Ln11: TQRLabel;
    Ln12: TQRLabel;
    Ln13: TQRLabel;
    Ln14: TQRLabel;
    Lu1: TQRLabel;
    Lu2: TQRLabel;
    Lu3: TQRLabel;
    Lu4: TQRLabel;
    Lu5: TQRLabel;
    Lu6: TQRLabel;
    Lu7: TQRLabel;
    Lu8: TQRLabel;
    Lu9: TQRLabel;
    Lu10: TQRLabel;
    Lu11: TQRLabel;
    Lu12: TQRLabel;
    Lu13: TQRLabel;
    Lu14: TQRLabel;
    Ls1: TQRLabel;
    Ls2: TQRLabel;
    Ls3: TQRLabel;
    Ls4: TQRLabel;
    Ls5: TQRLabel;
    Ls6: TQRLabel;
    Ls7: TQRLabel;
    Ls8: TQRLabel;
    Ls9: TQRLabel;
    Ls10: TQRLabel;
    Ls11: TQRLabel;
    Ls12: TQRLabel;
    Ls13: TQRLabel;
    Ls14: TQRLabel;
    QRDBText9: TQRDBText;
    Lm1: TQRLabel;
    Lm2: TQRLabel;
    Lm3: TQRLabel;
    Lm4: TQRLabel;
    Lm5: TQRLabel;
    Lm6: TQRLabel;
    Lm7: TQRLabel;
    Lm8: TQRLabel;
    Lm9: TQRLabel;
    Lm10: TQRLabel;
    Lm11: TQRLabel;
    Lm12: TQRLabel;
    Lm13: TQRLabel;
    Lm14: TQRLabel;
    QRShape5: TQRShape;
    QRLabel38: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel43: TQRLabel;
    ChildBand1: TQRChildBand;
    QRShape4: TQRShape;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    Student_For_ExamCard: TADOStoredProc;
    TermSUnit: TQRDBText;
    QRDBText11: TQRDBText;
    lbPassedBefore: TQRLabel;
    cmPassedUnitsBefore: TADOCommand;
    cmReshteAvg: TADOCommand;
    Student_For_ExamCardstno: TStringField;
    Student_For_ExamCardtermcode: TStringField;
    Student_For_ExamCardStTermStatus_Title: TStringField;
    Student_For_ExamCardsusStatus: TIntegerField;
    Student_For_ExamCardName: TStringField;
    Student_For_ExamCardDaneshkadeh_Title: TStringField;
    Student_For_ExamCardReshteh_Title: TStringField;
    Student_For_ExamCardMaghta_Title: TStringField;
    Student_For_ExamCardSahmN_Title: TStringField;
    Student_For_ExamCardDon_Title: TStringField;
    Student_For_ExamCardisActive: TIntegerField;
    Student_For_ExamCardCourseType_Title: TStringField;
    Student_For_ExamCardPUnitCount: TFloatField;
    Student_For_ExamCardMPMark: TIntegerField;
    Student_For_ExamCardTermPUnit: TFloatField;
    Student_For_ExamCardTermSUnit: TFloatField;
    Student_For_ExamCardTermAvg: TBCDField;
    Student_For_ExamCardTotalAvg: TBCDField;
    Student_For_ExamCardPic: TBlobField;
    QRLabel3: TQRLabel;
    Student_For_ExamCardMaliStat: TBooleanField;
    Student_For_ExamCardTbMaliStatTitle: TStringField;
    GroupPrint: TCheckBox;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    seHeight: TSpinEdit;
    seWidth: TSpinEdit;
    Chk_Place: TCheckBox;
    cbPrintPic: TCheckBox;
    qrPic: TQRImage;
    Sp_Report_Kart: TADOStoredProc;
    Sp_Report_KartLessonCode: TStringField;
    Sp_Report_KartStNo: TStringField;
    Sp_Report_KartLessonName: TStringField;
    Sp_Report_KartTeacherName: TStringField;
    Sp_Report_KartExamTime: TStringField;
    Sp_Report_KartExamDate: TStringField;
    Sp_Report_KartPalce: TStringField;
    procedure NullValue;
    procedure SetFilter;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure QuickRep1Preview(Sender: TObject);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fqr32: TFqr32;
  Flag:Boolean;
  __MinPassedMark:integer;
  __TotalSumMark:double;
  __TotalUnitCount:double;
  __OverPUnit:double;
  __OverSUnit:double;

implementation
  Uses tools, Upreview;
{$R *.DFM}
procedure  TFqr32.SetFilter;
begin
   with Student_For_ExamCard do
    begin
     Close;
     Open;
    end;

end;

procedure TFqr32.NullValue;
var
 j: integer;
begin
  for j:=1 to 14 do
  begin
   (FindComponent('Lc'+IntToStr(j)) as TQrLabel).caption:='';
   (FindComponent('Ln'+IntToStr(j)) as TQrLabel).caption:='';
   (FindComponent('Lu'+IntToStr(j)) as TQrLabel).caption:='';
   (FindComponent('Lm'+IntToStr(j)) as TQrLabel).caption:='';
   (FindComponent('Ls'+IntToStr(j)) as TQrLabel).caption:='';
  end;
  TermSunit.Caption:='';
end;

procedure TFqr32.BitBtn1Click(Sender: TObject);
 begin
  QuickRep1.Print;
 end;

procedure TFqr32.BitBtn4Click(Sender: TObject);
 begin
  Close;
 end;

function CalcTotal(_S,_E: Double): string;
 var
  t:double;
  t1:String[5];
 begin
  __TotalSumMark:=__TotalSumMark+_S;
  __TotalUnitCount:=__TotalUnitCount+_E;
  if __TotalUnitCount=0 then t:=0 Else
  t:=__TotalSumMark /__TotalUnitCount;
  Str(t:5:2,t1);
  CalcTotal:=t1;
 end;

procedure TFqr32.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
 i,k:integer;
 _Status:String;
 _Savg:String[5];
 _TermAvg,_TermSunit:double;
 _SumMark,_EUCount,_SumofEMark:double;
begin
  qrPic.Picture := nil;
  NullValue;
  __MinPassedMark:=Student_For_ExamCardMPMark.asInteger;
  _TermSUnit:=0;
  _EUCount:=0;
  _SumofEMark:=0;
  _SumMark:=0;
  k:=1;i:=0;


 with Sp_Report_Kart do
 begin
   Close;
   if GroupPrint.Checked then
     Parameters.ParamByName('@AGrp').Value := 1
   else
     Parameters.ParamByName('@AGrp').Value := 0;
   Parameters.ParamByName('@ATermCode').Value := Student_For_ExamCardtermcode.Value;
   Parameters.ParamByName('@AStNo').Value := Student_For_ExamCardstno.Value;
   
   Open;
 end;


  if i=0 then
    PrintBand:=False
  else
  begin
    PrintBand:=True;

  with cmPassedUnitsBefore do
  begin
    Parameters.ParamValues['@Stno']:=Student_For_ExamCard.FieldValues['Stno'];
    Parameters.ParamValues['@TermCode']:=Student_For_ExamCard.FieldValues['TermCode'];
    Execute;
    lbPassedBefore.Caption:=Parameters.paramvalues['@Result'];
  end;
 end;
end;

procedure TFqr32.FormActivate(Sender: TObject);
var ss,pp:integer;
 begin
  inherited;

//  TermEdit.Text:=_TermCode;
  //DateEdit.Text:=_Date;
 end;

procedure TFqr32.N2Click(Sender: TObject);
 begin
  Close;
 end;

procedure TFqr32.QuickRep1Preview(Sender: TObject);
 begin
  Fpreview:=Tfpreview.Create(Fqr32);
  Fpreview.Show;
  Fpreview.QrPreview1.QrPrinter:=QuickRep1.QRPrinter;
 end;

procedure TFqr32.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  Rdate.Caption:=Trim(DateEdit.Text);
  qrPic.Enabled:=cbPrintPic.Checked ;
  qrPic.Height:=seHeight.Value;
  qrPic.Width:=seWidth.Value;
end;

end.
