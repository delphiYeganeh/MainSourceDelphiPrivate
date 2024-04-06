unit QrPaymentU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, QRCtrls, QuickRpt, ExtCtrls, ActnList,
  StdCtrls, Mask, DBCtrls, UemsVCL, jpeg, Buttons,Printers, Menus,
  frxClass, frxDBSet, DB, ADODB, DBTables, frxCross;

type
  TFrQrPayment = class(TYBaseForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRImage3: TQRImage;
    QRImage4: TQRImage;
    QRImage5: TQRImage;
    QRImage6: TQRImage;
    QRImage7: TQRImage;
    QRImage8: TQRImage;
    QRImage10: TQRImage;
    QRImage11: TQRImage;
    QRImage12: TQRImage;
    QLPayTitle: TQRLabel;
    QRLabel3: TQRLabel;
    QlAccountTitle: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText1: TQRDBText;
    QlPayStatus1: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QuickRep3: TQuickRep;
    TitleBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText9: TQRDBText;
    QuickRep2: TQuickRep;
    qrdesc: TQRLabel;
    qrPaydate: TQRLabel;
    qrcredit: TQRLabel;
    qrdebtor: TQRLabel;
    Qrremain: TQRLabel;
    DetailBand1: TQRBand;
    QrTitle: TQRLabel;
    QRLblSoftTitle: TQRLabel;
    QRImage9: TQRImage;
    QRImage2: TQRImage;
    QRImage1: TQRImage;
    QRImage13: TQRImage;
    QRImage14: TQRImage;
    QRImage15: TQRImage;
    QRImage16: TQRImage;
    QRImage17: TQRImage;
    QRImage18: TQRImage;
    QRImage19: TQRImage;
    QRImage20: TQRImage;
    QLPayTitle2: TQRLabel;
    QRLabel2: TQRLabel;
    QlAccountTitle2: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText11: TQRDBText;
    QlPayStatus2: TQRLabel;
    QRLabel23: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRLblSoftTitle2: TQRLabel;
    QRImage22: TQRImage;
    QRImage23: TQRImage;
    QRImage24: TQRImage;
    QRImage25: TQRImage;
    QRImage26: TQRImage;
    QRImage27: TQRImage;
    QRImage28: TQRImage;
    QRImage29: TQRImage;
    QRImage30: TQRImage;
    QRImage31: TQRImage;
    QRImage32: TQRImage;
    QLPayTitle3: TQRLabel;
    QRLabel26: TQRLabel;
    QlAccountTitle3: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QlPayStatus3: TQRLabel;
    QRLabel35: TQRLabel;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    CashLogo3: TQRImage;
    QRLblSoftTitle3: TQRLabel;
    QRImage34: TQRImage;
    QRImage35: TQRImage;
    QRImage36: TQRImage;
    QRImage37: TQRImage;
    QRImage38: TQRImage;
    QRImage39: TQRImage;
    QRImage40: TQRImage;
    QRImage41: TQRImage;
    QRImage42: TQRImage;
    QRImage43: TQRImage;
    QRImage44: TQRImage;
    QLPayTitle4: TQRLabel;
    QRLabel38: TQRLabel;
    QlAccountTitle4: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QlPayStatus4: TQRLabel;
    QRLabel47: TQRLabel;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    CashLogo4: TQRImage;
    QRLblSoftTitle4: TQRLabel;
    QRImage46: TQRImage;
    QRImage47: TQRImage;
    CashLogo1: TQRImage;
    CashLogo2: TQRImage;
    QRDBText10: TQRDBText;
    QuickRep4: TQuickRep;
    QRBand2: TQRBand;
    QRImage56: TQRImage;
    QRImage57: TQRImage;
    QRImage58: TQRImage;
    QRImage59: TQRImage;
    QRImage60: TQRImage;
    QRImage61: TQRImage;
    QRImage62: TQRImage;
    QRImage63: TQRImage;
    QRImage64: TQRImage;
    QLPayTitle_n1: TQRLabel;
    QRLabel59: TQRLabel;
    QlAccountTitle_n1: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QLPaySignature_N1: TQRLabel;
    QRDBText29: TQRDBText;
    QlPayStatus1_N1: TQRLabel;
    QRLabel68: TQRLabel;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRLblSoftTitle_N1: TQRLabel;
    QRImage65: TQRImage;
    QRImage66: TQRImage;
    CashLogo5: TQRImage;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRBand3: TQRBand;
    QRImage89: TQRImage;
    QRImage90: TQRImage;
    QRImage79: TQRImage;
    QRImage81: TQRImage;
    QRImage82: TQRImage;
    QRImage83: TQRImage;
    QRImage84: TQRImage;
    QRImage85: TQRImage;
    QRImage86: TQRImage;
    QRImage87: TQRImage;
    QLPayTitle_n2: TQRLabel;
    QRLabel83: TQRLabel;
    QlAccountTitle_n2: TQRLabel;
    QRLabel85: TQRLabel;
    QRLabel86: TQRLabel;
    QRLabel87: TQRLabel;
    QRLabel88: TQRLabel;
    QRLabel89: TQRLabel;
    QLPaySignature_N2: TQRLabel;
    QRDBText35: TQRDBText;
    QlPayStatus1_N2: TQRLabel;
    QRLabel92: TQRLabel;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    CashLogo6: TQRImage;
    QRLblSoftTitle_N2: TQRLabel;
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    QRImage21: TQRImage;
    QRShape1: TQRShape;
    frxReport1: TfrxReport;
    AdoPerfraj2: TADOQuery;
    AdoPerfraj2AccountNo: TStringField;
    AdoPerfraj2AccountDate: TStringField;
    AdoPerfraj2FirstName: TWideStringField;
    AdoPerfraj2LastName: TWideStringField;
    AdoPerfraj2FatherName: TWideStringField;
    AdoPerfraj2BirthPlace: TWideStringField;
    AdoPerfraj2BirthDate: TStringField;
    AdoPerfraj2Address: TWideStringField;
    AdoPerfraj2Phones: TWideStringField;
    AdoPerfraj2ContactID: TAutoIncField;
    AdoPerfraj2AccountID: TAutoIncField;
    AdoPerfraj2Idno: TWideStringField;
    DataSource1: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    Sp_ShowBill: TfrxDBDataset;
    frxReport2: TfrxReport;
    procedure FormCreate(Sender: TObject);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;var PrintReport: Boolean);
    procedure QuickRep1Preview(Sender: TObject);
    procedure QuickRep3Preview(Sender: TObject);
    procedure QuickRep4Preview(Sender: TObject);
    procedure QuickRep4BeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
    procedure frxReport2Preview(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    IsPay:boolean;
    PayForm:string;
  end;

var
  FrQrPayment: TFrQrPayment;

implementation

uses dmu, BusinessLayer, FinancialNoteDetailU, Upreview,
  FinancialNoteDetail_NewU;


{$R *.dfm}

{ TBillForm }

procedure  SetData (Sender: TObject);
begin
end;

procedure TFrQrPayment.FormCreate(Sender: TObject);
begin
  inherited;
    PayForm:='‰ﬁœÌ';
  try
    if FrFinancialNoteDetail_New.FinancialNoteid>0 then
      PayForm:=FrFinancialNoteDetail_New.NoteType.Text
  except
  end;
end;

procedure TFrQrPayment.QuickRep1BeforePrint(Sender: TCustomQuickRep;var PrintReport: Boolean);
begin
  inherited;
  if IsPay then
  begin
    QLPayTitle.Caption:=  'ﬁ»÷ Å—œ«Œ ';
    QLPayTitle2.Caption:=  'ﬁ»÷ Å—œ«Œ ';
    QLPayTitle3.Caption:=  'ﬁ»÷ Å—œ«Œ ';
    QLPayTitle4.Caption:=  'ﬁ»÷ Å—œ«Œ ';
    QLPayTitle_n1.Caption:=  'ﬁ»÷ Å—œ«Œ ';
    QLPayTitle_n2.Caption:=  'ﬁ»÷ Å—œ«Œ ';

    QlAccountTitle.Caption:=' ‰«„ Å—œ«Œ  ò‰‰œÂ';
    QlAccountTitle2.Caption:=' ‰«„ Å—œ«Œ  ò‰‰œÂ';
    QlAccountTitle3.Caption:=' ‰«„ Å—œ«Œ  ò‰‰œÂ';
    QlAccountTitle4.Caption:=' ‰«„ Å—œ«Œ  ò‰‰œÂ';
    QlAccountTitle_n1.Caption:=' ‰«„ Å—œ«Œ  ò‰‰œÂ';
    QlAccountTitle_n2.Caption:=' ‰«„ Å—œ«Œ  ò‰‰œÂ';

    QlPayStatus1.Caption    :='Å—œ«Œ ' +'-'+PayForm;
    QlPayStatus2.Caption    :=QlPayStatus1.Caption;
    QlPayStatus3.Caption    :=QlPayStatus1.Caption;
    QlPayStatus4.Caption    :=QlPayStatus1.Caption;
    QlPayStatus1_N1.Caption :=QlPayStatus1.Caption;
    QlPayStatus1_N2.Caption :=QlPayStatus1.Caption;
  end
  else
  begin
    QLPayTitle.Caption:=  'ﬁ»÷ œ—Ì«› ';
    QLPayTitle2.Caption:=  'ﬁ»÷ œ—Ì«› ';
    QLPayTitle3.Caption:=  'ﬁ»÷ œ—Ì«› ';
    QLPayTitle4.Caption:=  'ﬁ»÷ œ—Ì«› ';
    QLPayTitle_n1.Caption:=  'ﬁ»÷ œ—Ì«› ';
    QLPayTitle_n2.Caption:=  'ﬁ»÷ œ—Ì«› ';


    QlAccountTitle.Caption:=' ‰«„ œ—Ì«›  ò‰‰œÂ' ;
    QlAccountTitle2.Caption:=' ‰«„ œ—Ì«›  ò‰‰œÂ' ;
    QlAccountTitle3.Caption:=' ‰«„ œ—Ì«›  ò‰‰œÂ' ;
    QlAccountTitle4.Caption:=' ‰«„ œ—Ì«›  ò‰‰œÂ' ;
    QlAccountTitle_n1.Caption:=' ‰«„ œ—Ì«›  ò‰‰œÂ' ;
    QlAccountTitle_n2.Caption:=' ‰«„ œ—Ì«›  ò‰‰œÂ' ;


    QlPayStatus1.Caption:='œ—Ì«› '+'-'+PayForm;
    QlPayStatus2.Caption := QlPayStatus1.Caption;
    QlPayStatus3.Caption := QlPayStatus1.Caption;
    QlPayStatus4.Caption := QlPayStatus1.Caption;
    QlPayStatus1_N1.Caption := QlPayStatus1.Caption;
    QlPayStatus1_N2.Caption := QlPayStatus1.Caption;
  end;
end;

procedure TFrQrPayment.QuickRep1Preview(Sender: TObject);
begin
  inherited;
  Fpreview:=Tfpreview.Create(Application);
  Fpreview.Show;
  Fpreview.QrPreview1.QrPrinter:= QuickRep1.QRPrinter;
end;

procedure TFrQrPayment.QuickRep3Preview(Sender: TObject);
begin
  inherited;
  Fpreview:=Tfpreview.Create(Application);
  Fpreview.Show;
  Fpreview.QrPreview1.QrPrinter:= QuickRep3.QRPrinter;
end;

procedure TFrQrPayment.QuickRep4Preview(Sender: TObject);
begin
  inherited;
  Fpreview:=Tfpreview.Create(Application);
  Fpreview.Show;
  Fpreview.QrPreview1.QrPrinter:= QuickRep4.QRPrinter;
end;

procedure TFrQrPayment.QuickRep4BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  Case Get_SystemSetting('PrintBill') of
   1: FrQrPayment.QRBand3.Enabled:=FALSE;
   2: FrQrPayment.QRBand3.Enabled:=True;
  End;

  if IsPay then
  begin
    QLPayTitle.Caption:=  'ﬁ»÷ Å—œ«Œ ';
    QLPayTitle2.Caption:=  'ﬁ»÷ Å—œ«Œ ';
    QLPayTitle3.Caption:=  'ﬁ»÷ Å—œ«Œ ';
    QLPayTitle4.Caption:=  'ﬁ»÷ Å—œ«Œ ';
    QLPayTitle_n1.Caption:=  'ﬁ»÷ Å—œ«Œ ';
    QLPayTitle_n2.Caption:=  'ﬁ»÷ Å—œ«Œ ';

    QlAccountTitle.Caption:=' ‰«„ Å—œ«Œ  ò‰‰œÂ';
    QlAccountTitle2.Caption:=' ‰«„ Å—œ«Œ  ò‰‰œÂ';
    QlAccountTitle3.Caption:=' ‰«„ Å—œ«Œ  ò‰‰œÂ';
    QlAccountTitle4.Caption:=' ‰«„ Å—œ«Œ  ò‰‰œÂ';
    QlAccountTitle_n1.Caption:=' ‰«„ Å—œ«Œ  ò‰‰œÂ';
    QlAccountTitle_n2.Caption:=' ‰«„ Å—œ«Œ  ò‰‰œÂ';

    QlPayStatus1.Caption := 'Å—œ«Œ ' +'-'+PayForm;
    QlPayStatus2.Caption := QlPayStatus1.Caption;
    QlPayStatus3.Caption := QlPayStatus1.Caption;
    QlPayStatus4.Caption := QlPayStatus1.Caption;
    QlPayStatus1_N1.Caption :=QlPayStatus1.Caption;
    QlPayStatus1_N2.Caption :=QlPayStatus1.Caption;

    QRLblSoftTitle_N1.Caption := _SoftTitle;
    QRLblSoftTitle_N2.Caption := _SoftTitle;
  end
  else
  begin
    QLPayTitle.Caption:=  'ﬁ»÷ œ—Ì«› ';
    QLPayTitle2.Caption:=  'ﬁ»÷ œ—Ì«› ';
    QLPayTitle3.Caption:=  'ﬁ»÷ œ—Ì«› ';
    QLPayTitle4.Caption:=  'ﬁ»÷ œ—Ì«› ';
    QLPayTitle_n1.Caption:=  'ﬁ»÷ œ—Ì«› ';
    QLPayTitle_n2.Caption:=  'ﬁ»÷ œ—Ì«› ';


    QlAccountTitle.Caption:=' ‰«„ œ—Ì«›  ò‰‰œÂ' ;
    QlAccountTitle2.Caption:=' ‰«„ œ—Ì«›  ò‰‰œÂ' ;
    QlAccountTitle3.Caption:=' ‰«„ œ—Ì«›  ò‰‰œÂ' ;
    QlAccountTitle4.Caption:=' ‰«„ œ—Ì«›  ò‰‰œÂ' ;
    QlAccountTitle_n1.Caption:=' ‰«„ œ—Ì«›  ò‰‰œÂ' ;
    QlAccountTitle_n2.Caption:=' ‰«„ œ—Ì«›  ò‰‰œÂ' ;


    QlPayStatus1.Caption:='œ—Ì«› '+'-'+PayForm;
    QlPayStatus2.Caption := QlPayStatus1.Caption;
    QlPayStatus3.Caption := QlPayStatus1.Caption;
    QlPayStatus4.Caption := QlPayStatus1.Caption;
    QlPayStatus1_N1.Caption := QlPayStatus1.Caption;
    QlPayStatus1_N2.Caption := QlPayStatus1.Caption;

    QRLblSoftTitle_N1.Caption := _SoftTitle;
    QRLblSoftTitle_N2.Caption := _SoftTitle;
  end;
end;

procedure TFrQrPayment.frxReport2Preview(Sender: TObject);
begin
  inherited;
  TfrxPictureView(frxReport2.FindComponent('CashLogo')).Picture.LoadFromFile(_LogoPath);
  TfrxMemoView(frxReport2.FindComponent('SoftTitle')).Text:=_SoftTitle;
end;

end.
