unit ExamApplicantListU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, quickrpt, Qrctrls, ExtCtrls,
   tools, StdCtrls, Buttons, Mask, UfrBase, ADODB, UemsVCL, Menus,
  YWhereEdit, xpBitBtn;

type
  TFqr5Student = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape1: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel17: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel25: TQRLabel;
    QRShape72: TQRShape;
    QRShape73: TQRShape;
    Rdate: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    DonList: TQRLabel;
    LessonPrg: TQRLabel;
    QRLabel24: TQRLabel;
    PageNo: TQRLabel;
    QRShape74: TQRShape;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    DetailBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRGroup1: TQRGroup;
    SUS: TADOStoredProc;
    Tblt52: TADOQuery;
    Tblt52TermCode: TStringField;
    Tblt52LessonGroup: TFloatField;
    Tblt52ExamDate: TStringField;
    Tblt52ExamTime: TStringField;
    Tblt52Lesson_title: TStringField;
    Tblt52Unit_title: TIntegerField;
    Tblt52LessonCode: TStringField;
    DSlt52: TDataSource;
    QRLabel2: TQRLabel;
    QRShape5: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLabel9: TQRLabel;
    QRShape8: TQRShape;
    PageFooterBand1: TQRBand;
    QRLabel19: TQRLabel;
    QrUser: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    Panel1: TPanel;
    da: TLabel;
    DateEdit: TShamsiDateEdit;
    Panel2: TPanel;
    BitBtn4: TxpBitBtn;
    BitBtn5: TxpBitBtn;
    BitBtn6: TxpBitBtn;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure QRDBText2Print(sender: TObject; var Value: String);
    procedure FormCreate(Sender: TObject);
    procedure QuickRep1Preview(Sender: TObject);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure Tblt52AfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fqr5Student: TFqr5Student;
  Day,Hour:String;
  HazfCount:integer;
  oldX:Integer;
implementation

uses Upreview;

{$R *.DFM}

procedure Tfqr5Student.BitBtn1Click(Sender: TObject);
begin
 With tblt52 Do
  Begin
    Close;
    Open;
  end;

 Tblt52.first;
 QuickRep1.Preview;
end;

procedure Tfqr5Student.BitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure Tfqr5Student.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

      printband:=true;


end;

procedure Tfqr5Student.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
PageNo.Caption:='1';
end;

procedure Tfqr5Student.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
 PageNo.Caption:=InttoStr(StrTOint(PageNo.Caption)+1);
end;

procedure TFqr5Student.FormActivate(Sender: TObject);
begin
  inherited;
  PageNo.Caption:='1';
end;

procedure TFqr5Student.QRDBText2Print(sender: TObject; var Value: String);
begin
 value:='';
end;

procedure TFqr5Student.FormCreate(Sender: TObject);
begin
  inherited;
//  DateEdit.Text:=_Date;
end;

procedure TFqr5Student.QuickRep1Preview(Sender: TObject);
begin
 Fpreview:=Tfpreview.Create(Fqr5Student);
 Fpreview.Show;
 Fpreview.QrPreview1.QrPrinter:=QuickRep1.QRPrinter;
end;

procedure TFqr5Student.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
 Rdate.Caption:=Trim(DateEdit.Text);
end;

procedure TFqr5Student.Tblt52AfterScroll(DataSet: TDataSet);
begin
  inherited;
with SUS do
 begin
  Close;
  Parameters.ParamByName('@Termcode').Value:=Tblt52TermCode.Value;
  Parameters.ParamByName('@lessonGroup').Value:=Tblt52LessonGroup.Value;
  Parameters.ParamByName('@lessoncode').Value:=Tblt52LessonCode.Value;
  Open;
 end;

end;

end.


