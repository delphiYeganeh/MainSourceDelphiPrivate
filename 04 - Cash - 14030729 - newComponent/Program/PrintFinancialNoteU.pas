 unit PrintFinancialNoteU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, QRCtrls, QuickRpt, ExtCtrls, ActnList,
  Menus;

type
  TFrPrintFinancialNote = class(TYBaseForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    cashTitle: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    Qrmessage: TQRLabel;
    chequename: TQRLabel;
    CashLogo: TQRImage;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    QRBand5: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel11: TQRLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure QuickRep1Preview(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrPrintFinancialNote: TFrPrintFinancialNote;

implementation

uses DMU, Upreview;

{$R *.dfm}

procedure TFrPrintFinancialNote.Button2Click(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFrPrintFinancialNote.Button1Click(Sender: TObject);
begin
  inherited;
 chequename.Caption:=edit1.Text;
 cashTitle.Caption:=_SoftTitle;
 Qrmessage.Caption:=edit2.Text;

 QuickRep1.Preview;
end;

procedure TFrPrintFinancialNote.QuickRep1Preview(Sender: TObject);
begin
  inherited;
 Fpreview:=Tfpreview.Create(Application);
 Fpreview.Show;
 Fpreview.QrPreview1.QrPrinter:= QuickRep1.QRPrinter;

end;

procedure TFrPrintFinancialNote.FormCreate(Sender: TObject);
begin
   inherited;
   cashTitle.Caption := _SoftTitle;
end;

end.
