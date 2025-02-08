unit U_QUICKREP_ADV_SEARCH_VAM_AZA_FRM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, QuickRpt, QRCtrls, ExtCtrls;

type
  TQUICKREP_ADV_SEARCH_VAM_AZA_FRM = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRBand3: TQRBand;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape1: TQRShape;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QUICKREP_ADV_SEARCH_VAM_AZA_FRM: TQUICKREP_ADV_SEARCH_VAM_AZA_FRM;

implementation

uses U_REPORT_BE_TAFKIK_ADV_FRM;

{$R *.dfm}

end.
