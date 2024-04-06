unit ArticleDM;

interface

uses
  SysUtils, Classes, DB, DBTables,Dialogs,Controls, ADODB;

type
  TDMArticle = class(TDataModule)
    DSFirstArtGroup: TDataSource;
    DSStore: TDataSource;
    DSSecendArtGroup: TDataSource;
    DSArticle: TDataSource;
    DSUnit: TDataSource;
    QrArticle: TADOQuery;
    QrSrchArticle: TADOQuery;
    QrStore: TADOQuery;
    QrFirstArtGroup: TADOQuery;
    QrSecendArtGroup: TADOQuery;
    QrUnit: TADOQuery;
    QrArticleArticle_ID: TAutoIncField;
    QrArticleStore_Ref: TIntegerField;
    QrArticleArtGroup_Ref1: TIntegerField;
    QrArticleArtGroup_Ref2: TIntegerField;
    QrArticleCode: TIntegerField;
    QrArticleName: TWideStringField;
    QrArticleUnit_Ref: TIntegerField;
    QrArticleMaxBuy: TIntegerField;
    QrArticleSalePrice: TFloatField;
    QrArticleBuyPrice: TFloatField;
    QrArticleEndBuyPrice: TFloatField;
    QrArticleExist: TIntegerField;
    QrArticleAvgPrice: TFloatField;
    QrArticleCountry: TWideStringField;
    QrArticleAttribute1: TWideStringField;
    QrArticleAttribute2: TWideStringField;
    QrArticleModel: TWideStringField;
    QrArticleTozihat: TWideStringField;
    QrArticleIsService: TBooleanField;
    QrArticleOldExist1: TIntegerField;
    QrArticleOldExist2: TIntegerField;
    QrArticleOldEndBuyPrice1: TFloatField;
    QrArticleOldEndBuyPrice2: TFloatField;
    QrArticleBarcode: TWideStringField;
    QrArticleFirstArtGrpName: TWideStringField;
    QrArticleSecArtGrpName: TWideStringField;
    QrSrchArticleArticle_ID: TAutoIncField;
    QrSrchArticleCode: TIntegerField;
    QrSrchArticleName: TWideStringField;
    QrStoreStore_ID: TAutoIncField;
    QrStoreCode: TIntegerField;
    QrStoreName: TWideStringField;
    QrFirstArtGroupArtGroup_ID: TAutoIncField;
    QrFirstArtGroupName: TWideStringField;
    QrFirstArtGroupType: TWordField;
    QrFirstArtGroupStore_Ref: TIntegerField;
    QrFirstArtGroupArtGroup_Ref: TIntegerField;
    QrFirstArtGroupIsService: TBooleanField;
    QrSecendArtGroupArtGroup_ID: TAutoIncField;
    QrSecendArtGroupName: TWideStringField;
    QrSecendArtGroupType: TWordField;
    QrSecendArtGroupStore_Ref: TIntegerField;
    QrSecendArtGroupArtGroup_Ref: TIntegerField;
    QrSecendArtGroupIsService: TBooleanField;
    QrUnitUnit_ID: TAutoIncField;
    QrUnitName: TWideStringField;
    QrUnitUnitCount: TIntegerField;
    procedure QrArticleBuyPriceGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QrArticleBuyPriceSetText(Sender: TField; const Text: String);
    procedure QrArticleAfterInsert(DataSet: TDataSet);
    procedure QrArticleBeforePost(DataSet: TDataSet);
    procedure QrStoreAfterScroll(DataSet: TDataSet);
    procedure QrSecendArtGroupBeforeOpen(DataSet: TDataSet);
    procedure QrFirstArtGroupAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMArticle: TDMArticle;

implementation

Uses DMu , YShamsiDate;

{$R *.dfm}

procedure TDMArticle.QrArticleBuyPriceGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
   Text :=  CommaSeperate(Sender.AsString);
end;

procedure TDMArticle.QrArticleBuyPriceSetText(Sender: TField; const Text: String);
begin
   Sender.AsFloat := StrToIntDef(DeleteComma(Text) ,0);
end;

procedure TDMArticle.QrArticleAfterInsert(DataSet: TDataSet);
begin
   QrArticleIsService.AsBoolean := False;
   QrArticleExist.AsInteger := 0;
   QrArticleEndBuyPrice.AsFloat := 0;
   QrArticleOldExist1.AsInteger := 0;
   QrArticleOldExist2.AsInteger := 0;
   QrArticleOldEndBuyPrice1.AsFloat := 0;
   QrArticleOldEndBuyPrice2.AsFloat := 0;

   if (QrStore.Active) And (QrStore.RecordCount = 1) then
      QrArticleStore_Ref.AsInteger := QrStoreStore_ID.AsInteger;
   if (QrFirstArtGroup.Active) And (QrFirstArtGroup.RecordCount = 1) then
      QrArticleArtGroup_Ref1.AsInteger := QrFirstArtGroupArtGroup_ID.AsInteger;
   if (QrSecendArtGroup.Active) And (QrSecendArtGroup.RecordCount = 1) then
      QrArticleArtGroup_Ref2.AsInteger := QrSecendArtGroupArtGroup_ID.AsInteger;
end;

procedure TDMArticle.QrArticleBeforePost(DataSet: TDataSet);
Var
   BarcodeCount : Integer;
begin
   Qry_IFFieldIsEmpty(QrArticleStore_Ref,'‰«„ «‰»«—');
   Qry_IFFieldIsEmpty(QrArticleArtGroup_Ref1,'‰«„ ê—ÊÂ «’·Ì ò«·«');
   Qry_IFFieldIsEmpty(QrArticleArtGroup_Ref2,'‰«„ ê—ÊÂ ›—⁄Ì ò«·«');
   Qry_IFFieldIsEmpty(QrArticleName,'‰«„ ò«·«');
   Qry_IFFieldIsEmpty(QrArticleUnit_Ref,'‰«„ Ê«Õœ ò«·«');
   Qry_IFFieldIsEmpty(QrArticleSalePrice,'ﬁÌ„  ›—Ê‘');

   if QrArticle.State = dsInsert then
   begin
      if Trim(QrArticleBarcode.AsString) <> '' then
      begin
         BarcodeCount := Dm.YeganehConnection.Execute('Select Count(Article_ID) From Article Where Barcode = ' +
                                                     QuotedStr(Trim(QrArticleBarcode.AsString)) ).Fields[0].Value;
         if BarcodeCount > 0 then
         begin
            ShowMyMessage('ÅÌ€«„','ò«—»— ê—«„Ì «„ò«‰ Ê«—œ ò—œ‰ »«—òœ  ò—«—Ì ÊÃÊœ ‰œ«—œ',[mbOK],mtInformation);
            Abort;
         end;
      end;
      QrArticleCode.AsInteger := Qry_GetMaxNu(Dm.YeganehConnection,'Article','Code')+1;
   end;
end;

procedure TDMArticle.QrStoreAfterScroll(DataSet: TDataSet);
begin
   if QrArticle.State in [dsEdit,dsInsert] then
   begin
      QrFirstArtGroup.Close;
      QrFirstArtGroup.Parameters.ParamByName('Store_ID').Value := QrStoreStore_ID.AsInteger;
      QrFirstArtGroup.Open;
   end;
end;

procedure TDMArticle.QrSecendArtGroupBeforeOpen(DataSet: TDataSet);
begin
   //QrSecendArtGroup.Parameters.ParamByName('Store_ID').Value := QrStoreStore_ID.AsInteger;
   //QrSecendArtGroup.Parameters.ParamByName('ArtGroup_ID').Value := QrFirstArtGroupArtGroup_ID.AsInteger;
end;

procedure TDMArticle.QrFirstArtGroupAfterScroll(DataSet: TDataSet);
begin
   if QrArticle.State in [dsEdit,dsInsert] then
   begin
      QrSecendArtGroup.Close;
      QrSecendArtGroup.Parameters.ParamByName('Store_ID').Value := QrStoreStore_ID.AsInteger;
      QrSecendArtGroup.Parameters.ParamByName('ArtGroup_ID').Value := QrFirstArtGroupArtGroup_ID.AsInteger;
      QrSecendArtGroup.Open;
   end;
end;

end.
