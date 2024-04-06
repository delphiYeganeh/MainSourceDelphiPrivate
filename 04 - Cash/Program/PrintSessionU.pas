unit PrintSessionU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, QRCtrls, QuickRpt, ExtCtrls, ActnList,
  Menus, Mask, DB, ADODB, SolarCalendarPackage;

type
  TFrPrintSession = class(TYBaseForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    cashTitle: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QREdit: TQRLabel;
    QrNo: TQRLabel;
    QRRespons1: TQRLabel;
    QRRespons2: TQRLabel;
    QRRespons3: TQRLabel;
    QRRespons4: TQRLabel;
    QRPerson1: TQRLabel;
    QRPerson2: TQRLabel;
    QRPerson3: TQRLabel;
    QRPerson4: TQRLabel;
    CashLogo3: TQRImage;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    NoEdit: TEdit;
    Person1: TEdit;
    Response1: TEdit;
    Person2: TEdit;
    Response2: TEdit;
    Person3: TEdit;
    Response3: TEdit;
    Person4: TEdit;
    Response4: TEdit;
    MEDate: TSolarDatePicker;
    Memo1: TMemo;
    Label11: TLabel;
    QRMemo1: TQRMemo;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure QuickRep1Preview(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrPrintSession: TFrPrintSession;

implementation

uses DMU, Upreview;

{$R *.dfm}

procedure TFrPrintSession.Button2Click(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFrPrintSession.Button1Click(Sender: TObject);
begin
   inherited;
   cashTitle.Caption:=_SoftTitle;
   {Ranjbar}
   //QREdit.Caption:=DateEdit.Text;
   QREdit.Caption := MEDate.Text;
   //---
   QrNo.Caption:=NoEdit.Text;

   QRPerson1.Caption:=Person1.Text;
   QRPerson2.Caption:=Person2.Text;
   QRPerson3.Caption:=Person3.Text;
   QRPerson4.Caption:=Person4.Text;

   QRRespons1.Caption:=Response1.Text;
   QRRespons2.Caption:=Response2.Text;
   QRRespons3.Caption:=Response3.Text;
   QRRespons4.Caption:=Response4.Text;
   QRMemo1.Lines.Clear;
   QRMemo1.Lines.Add(Memo1.Text);
   QuickRep1.PrinterSettings.FirstPage:=1;
   QuickRep1.PrinterSettings.LastPage:=1;
   QuickRep1.Preview;
end;

procedure TFrPrintSession.FormShow(Sender: TObject);
begin
  inherited;
  {Ranjbar}
  //DateEdit.Text:=_today;
  MEDate.Text:=#254+_Today;
  //---  
end;

procedure TFrPrintSession.QuickRep1Preview(Sender: TObject);
begin
  inherited;
 Fpreview:=Tfpreview.Create(Application);
 Fpreview.Show;
 Fpreview.QrPreview1.QrPrinter:= QuickRep1.QRPrinter;

end;

procedure TFrPrintSession.FormCreate(Sender: TObject);
begin
   inherited;
   {Ranjbar 88.05.14 Code=}
   cashTitle.Caption := _SoftTitle;
   //---
end;

end.
