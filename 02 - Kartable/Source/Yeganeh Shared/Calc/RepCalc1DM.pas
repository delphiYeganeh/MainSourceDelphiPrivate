unit RepCalc1DM;

interface

uses
  SysUtils, Classes, frxExportTXT, frxExportText, frxExportImage,
  frxExportRTF, frxExportXML, frxExportXLS, frxClass, frxExportPDF,
  frxDesgn, DB, DBTables, frxDBSet, frxExportMail;

type
  TDMRepCalc1 = class(TDataModule)
    frxDesigner1: TfrxDesigner;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    frxXMLExport1: TfrxXMLExport;
    frxRTFExport1: TfrxRTFExport;
    frxBMPExport1: TfrxBMPExport;
    frxJPEGExport1: TfrxJPEGExport;
    frxTIFFExport1: TfrxTIFFExport;
    frxGIFExport1: TfrxGIFExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    frxTXTExport1: TfrxTXTExport;
    QrFactor: TQuery;
    DSFactor: TDataSource;
    QrSrchFactor: TQuery;
    QrSrchFactorFactor_ID: TIntegerField;
    QrSrchFactorNumber: TIntegerField;
    QrSrchFactorFacDate: TStringField;
    QrSrchFactorRegisterDate: TStringField;
    QrSrchFactorCuName: TStringField;
    QrSrchFactorCuTel: TStringField;
    QrSrchFactorPersNaFa: TStringField;
    frxDBFactor: TfrxDBDataset;
    frxRepFactor: TfrxReport;
    QrCust: TQuery;
    QrCustCust_ID: TIntegerField;
    QrCustCode: TIntegerField;
    QrCustName: TStringField;
    QrCustGender: TSmallintField;
    QrCustCodeMeli: TStringField;
    QrCustBornDate: TStringField;
    QrCustAge: TIntegerField;
    QrCustTel1: TStringField;
    QrCustTel2: TStringField;
    QrCustMobail: TStringField;
    QrCustAddress: TStringField;
    QrFacType: TQuery;
    DSFacType: TDataSource;
    QrArticle: TQuery;
    QrPersonel: TQuery;
    QrArticleArticle_ID: TStringField;
    QrArticleCode: TIntegerField;
    QrArticleName: TStringField;
    QrArticleExist: TIntegerField;
    QrPersonelCode: TIntegerField;
    QrPersonelName: TStringField;
    QrPersonelFamily: TStringField;
    QrPersonelPersonel_ID: TIntegerField;
    QrFacTypeFacType_ID: TIntegerField;
    QrFacTypeTypeName: TStringField;
    QrFacTypeType: TStringField;
    QrFactorFactor_ID: TIntegerField;
    QrFactorCust_Ref: TIntegerField;
    QrFactorFacDate: TStringField;
    QrFactorFacTime: TStringField;
    QrFactorRegisterDate: TStringField;
    QrFactorNumber: TIntegerField;
    QrFactorType: TStringField;
    QrFactorFactorePrice: TFloatField;
    QrFactorReducePrice: TFloatField;
    QrFactorCashPrice: TFloatField;
    QrFactorCheckPrice: TFloatField;
    QrFactorPersonel_Ref: TIntegerField;
    QrFactorCreditPrice: TFloatField;
    QrFactorTozihat: TStringField;
    QrFactorTypeName: TStringField;
    QrFactorRemaindPrice: TFloatField;
    QrFactorCuName: TStringField;
    QrFactorCuTel: TStringField;
    QrFactorCuAddress: TStringField;
    QrFactorPersNaFa: TStringField;
    QrFactorFacPrBeHorof_Calc: TStringField;
    QrFacDetails: TQuery;
    DSFacDetails: TDataSource;
    QrFacDetailsFactor_Ref: TIntegerField;
    QrFacDetailsArtCode: TIntegerField;
    QrFacDetailsArtName: TStringField;
    QrFacDetailsArtUnitName: TStringField;
    QrFacDetailsArtTozihat: TStringField;
    QrFacDetailsArtCount: TIntegerField;
    QrFacDetailsArtUnitPrice: TFloatField;
    frxDBFacDetails: TfrxDBDataset;
    QrFacDetailsArtTotalPrice: TFloatField;
    QrFactorRecivePrice: TFloatField;
    QrFactorLiquidate: TBooleanField;
    QrCustShenasnameh: TStringField;
    frxMailExport1: TfrxMailExport;
    procedure QrFactorCalcFields(DataSet: TDataSet);
    procedure QrFactorFacDateGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QrFactorFactorePriceGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QrSrchFactorBeforeOpen(DataSet: TDataSet);
    procedure QrFacDetailsBeforeOpen(DataSet: TDataSet);
    procedure QrFactorAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMRepCalc1: TDMRepCalc1;

implementation

Uses VertionDM , Myutil;

{$R *.dfm}




procedure TDMRepCalc1.QrFactorCalcFields(DataSet: TDataSet);
begin
   QrFactorFacPrBeHorof_Calc.AsString := AdadBeHorof(QrFactorFactorePrice.AsInteger)+ ' —Ì«· ';
end;

procedure TDMRepCalc1.QrFactorFacDateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
   Text := #254 + Sender.AsString;
end;

procedure TDMRepCalc1.QrFactorFactorePriceGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
   Text := #254 + Txt_AddKama(Sender.AsString);//„»«·€
end;

procedure TDMRepCalc1.QrSrchFactorBeforeOpen(DataSet: TDataSet);
begin
   QrSrchFactor.ParamByName('Type').AsString := Trim(QrFacTypeType.AsString);//‰Ê⁄ ›«ò Ê—
end;

procedure TDMRepCalc1.QrFacDetailsBeforeOpen(DataSet: TDataSet);
begin
   QrFacDetails.ParamByName('Factor_ID').AsInteger := QrFactorFactor_ID.AsInteger;
end;


procedure TDMRepCalc1.QrFactorAfterScroll(DataSet: TDataSet);
begin
   QrFacDetails.Close;
   QrFacDetails.Open;
end;

{frxDBFactor
-Factor_ID=Factor_ID
CuName=‰«„ „‘ —Ì
CuTel= ·›‰ „‘ —Ì
CuAddress=¬œ—” „‘ —Ì
TypeName=‰Ê⁄ ›«ò Ê—
Number=‘„«—Â ›«ò Ê—
FacDate= «—ÌŒ ›«ò Ê—
RegisterDate= «—ÌŒ À»  ›«ò Ê—
FacTime=”«⁄  À»  ›«ò Ê—
FactorePrice=Ã„⁄ ò· ›«ò Ê—
FacPrBeHorof_Calc=Ã„⁄ ò· »Â Õ—Ê›
ReducePrice= Œ›Ì›
CashPrice=„»·€ ‰ﬁœ
CheckPrice=Ã„⁄ „»·€ çò Â«
CreditPrice=„»·€ ‰”ÌÂ
RecivePrice=„»·€ œ—Ì«› Ì
RemaindPrice=„»·€ »«ﬁÌ„«‰œÂ
Tozihat= Ê÷ÌÕ«  ›«ò Ê—
PersNaFa=‰«„ ò«—»— À»  ò‰‰œÂ
-Personel_Ref=Personel_Ref
-Cust_Ref=Cust_Ref
-Type=Type
}

//----------------------------------------

{QrFacDetails
-Factor_Ref=Factor_Ref
ArtCode=òœ ò«·«
ArtName=‰«„ ò«·«
ArtUnitName=Ê«Õœ ò«·«
ArtCount= ⁄œ«œ
ArtUnitPrice=ﬁÌ„  Ê«Õœ
ArtTozihat=‘—Õ ò«·«
ArtTotalPrice=„»·€ ò·
}



end.
