unit FrFileKeepingPRpt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, QuickRpt, QRCtrls, DB, ADODB,baseunit, xpWindow,
  ExtActns, ActnList, Buttons;

type
  TFileKeepingPRptFrm = class(TmbaseForm)
    QuickRep1: TQuickRep;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRGroup1: TQRGroup;
    QRBand1: TQRBand;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    ChildBand1: TQRChildBand;
    QRExpr1: TQRExpr;
    ChildBand2: TQRChildBand;
    ChildBand3: TQRChildBand;
    QRShape1: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRExpr2: TQRExpr;
    QryEmployer: TADOQuery;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FileKeepingPRptFrm: TFileKeepingPRptFrm;

implementation

{$R *.dfm}

end.
