unit OrdersDM;

interface

uses
  SysUtils, Classes, DB, DBTables, frxClass, frxDBSet, frxExportTXT,
  frxExportText, frxExportImage, frxExportRTF, frxExportXML, frxExportXLS,
  frxExportPDF, frxDesgn, frxExportMail;

type
  TDMOrders = class(TDataModule)
    QrOrders: TQuery;
    USOrders: TUpdateSQL;
    DSOrders: TDataSource;
    QrSrchOrders: TQuery;
    QrSrchPrs: TQuery;
    QrSrchPrsPersonel_ID: TIntegerField;
    QrSrchPrsCode: TIntegerField;
    QrSrchPrsFamily: TStringField;
    QrSrchPrsName: TStringField;
    QrSrchPrsBirthCardNu: TIntegerField;
    QrSrchPrsTel1: TStringField;
    QrSrchPrsMobail: TStringField;
    QrSrchArticle: TQuery;
    QrSrchArticleArticle_ID: TStringField;
    QrSrchArticleCode: TIntegerField;
    QrSrchArticleName: TStringField;
    QrOrdersOrders_ID: TIntegerField;
    QrOrdersCode: TIntegerField;
    QrOrdersDateOrders: TStringField;
    QrOrdersDateDo: TStringField;
    QrOrdersArtName: TStringField;
    QrOrdersArtCount: TIntegerField;
    QrOrdersArtPrice: TFloatField;
    QrOrdersPersonelName: TStringField;
    QrOrdersComment: TStringField;
    QrOrdersType: TQuery;
    DSOrdersType: TDataSource;
    QrOrdersTypeEnterData_ID: TIntegerField;
    QrOrdersTypeEDName: TStringField;
    QrSrchOrdersOrders_ID: TIntegerField;
    QrSrchOrdersCode: TIntegerField;
    QrSrchOrdersDateOrders: TStringField;
    QrSrchOrdersArtName: TStringField;
    QrSrchOrdersPersonelName: TStringField;
    QrSrchOrdersComment: TStringField;
    QrOrdersED_OrdersType_Ref: TIntegerField;
    QrOrdersOrdersTypeName: TStringField;
    QrRepOrders: TQuery;
    QrRepOrdersOrders_ID: TIntegerField;
    QrRepOrdersCode: TIntegerField;
    QrRepOrdersDateOrders: TStringField;
    QrRepOrdersDateDo: TStringField;
    QrRepOrdersArtName: TStringField;
    QrRepOrdersArtCount: TIntegerField;
    QrRepOrdersArtPrice: TFloatField;
    QrRepOrdersPersonelName: TStringField;
    QrRepOrdersComment: TStringField;
    QrRepOrdersED_OrdersType_Ref: TIntegerField;
    QrRepOrdersOrdersTypeName: TStringField;
    DSRepOrders: TDataSource;
    frxRepOrders: TfrxReport;
    frxDBDRepOrders: TfrxDBDataset;
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
    QrSrchArticleMaxBuy: TIntegerField;
    QrSrchArticleEndBuyPrice: TFloatField;
    frxMailExport1: TfrxMailExport;
    procedure QrOrdersBeforePost(DataSet: TDataSet);
    procedure QrOrdersBeforeDelete(DataSet: TDataSet);
    procedure QrOrdersDateOrdersGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QrOrdersDateOrdersSetText(Sender: TField;
      const Text: String);
    procedure QrOrdersAfterInsert(DataSet: TDataSet);
    procedure QrOrdersArtPriceSetText(Sender: TField; const Text: String);
    procedure QrOrdersArtPriceGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMOrders: TDMOrders;

implementation

uses VertionDM , Myutil;

{$R *.dfm}

procedure TDMOrders.QrOrdersBeforePost(DataSet: TDataSet);
begin
   //IFFieldIsEmpty(QrCustCode,'ﬂœ „‘ —Ì');

   if QrOrders.State = dsInsert then
   begin
      QrOrdersOrders_ID.AsInteger := Qry_GetNextID('Orders');
      QrOrdersCode.AsInteger := StrToIntDef(Qry_GetResult('Select Max(Code)+1 From Orders'),1);
   end;
   Qry_SaveBDE(Dataset);
end;

procedure TDMOrders.QrOrdersBeforeDelete(DataSet: TDataSet);
begin
   Qry_DeleteBDE(Dataset,True);
end;

procedure TDMOrders.QrOrdersDateOrdersGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
   Text := #254 + Sender.AsString;
end;

procedure TDMOrders.QrOrdersDateOrdersSetText(Sender: TField;
  const Text: String);
begin
   Sender.AsString := Txt_Del254(Text);
end;

procedure TDMOrders.QrOrdersAfterInsert(DataSet: TDataSet);
begin
   QrOrdersDateOrders.AsString := #254 + _TodayDate;
   QrOrdersDateDo.AsString     := #254 + _TodayDate;
end;

procedure TDMOrders.QrOrdersArtPriceSetText(Sender: TField;
  const Text: String);
begin
   Sender.AsFloat := StrToIntDef(Txt_DelKama(Text) ,0);
end;

procedure TDMOrders.QrOrdersArtPriceGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
   Text := Txt_AddKama(Sender.AsString);
end;


{QrRepOrders
-Orders_ID=Orders_ID
Code=òœ
DateOrders= «—ÌŒ ”›«—‘
DateDo= «—ÌŒ «‰Ã«„
ArtName=‰«„ ò«·«
ArtCount= ⁄œ«œ
ArtPrice=ﬁÌ„ 
PersonelName=‰«„ ”›«—‘ œÂ‰œÂ
Comment= Ê÷ÌÕ« 
OrdersTypeName=‰Ê⁄ ”›«—‘
-ED_OrdersType_Ref=ED_OrdersType_Ref
}
end.
