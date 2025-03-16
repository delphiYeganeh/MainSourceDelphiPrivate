unit ArtServiceDM;

interface

uses
  SysUtils, Classes, DB, DBTables,Dialogs,Controls, ADODB;

type
  TDMArtService = class(TDataModule)
    DSFirstArtGroup: TDataSource;
    DSSecendArtGroup: TDataSource;
    DSArticle: TDataSource;
    QrArticle: TADOQuery;
    QrFirstArtGroup: TADOQuery;
    QrSecendArtGroup: TADOQuery;
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
    procedure QrArticleSalePriceSetText(Sender: TField;
      const Text: String);
    procedure QrArticleSalePriceGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QrArticleAfterInsert(DataSet: TDataSet);
    procedure QrArticleBeforePost(DataSet: TDataSet);
    procedure QrFirstArtGroupAfterScroll(DataSet: TDataSet);
    procedure QrSecendArtGroupBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMArtService: TDMArtService;

implementation

Uses DMu , YShamsiDate;

{$R *.dfm}

procedure TDMArtService.QrArticleSalePriceGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
   Text := CommaSeperate(Sender.AsString);
end;

procedure TDMArtService.QrArticleSalePriceSetText(Sender: TField; const Text: String);
begin
   Sender.AsFloat := StrToFloatDef(DeleteComma(Text),0);
end;



procedure TDMArtService.QrArticleAfterInsert(DataSet: TDataSet);
begin
   QrArticleIsService.AsBoolean := True;
   QrArticleUnit_Ref.AsInteger := 1; //Ê«Õœ ò«·«Â«Ì Œœ„« Ì
   QrArticleArtGroup_Ref1.AsInteger := 1; //QrFirstArtGroupArtGroup_ID.AsInteger;
   QrArticleArtGroup_Ref2.AsInteger := 2; //QrSecendArtGroupArtGroup_ID.AsInteger;
end;

procedure TDMArtService.QrArticleBeforePost(DataSet: TDataSet);
Var
   BarcodeCount : Integer;
begin
   Qry_IFFieldIsEmpty(QrArticleArtGroup_Ref1,'ê—ÊÂ «’·Ì ò«—Â«Ì Œœ„« Ì');
   Qry_IFFieldIsEmpty(QrArticleArtGroup_Ref2,'ê—ÊÂ ›—⁄Ì ò«—Â«Ì Œœ„« Ì');
   Qry_IFFieldIsEmpty(QrArticleName,'‰«„ ò«— Œœ„« Ì');

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
      QrArticleCode.AsInteger := Dm.YeganehConnection.Execute('Select IsNull(Max(Code),0)+1 as MaxNu From Article Where(IsService=1)' ).Fields[0].Value;
   end;
end;

procedure TDMArtService.QrFirstArtGroupAfterScroll(DataSet: TDataSet);
begin
   QrSecendArtGroup.Close;
   QrSecendArtGroup.Open;
end;

procedure TDMArtService.QrSecendArtGroupBeforeOpen(DataSet: TDataSet);
begin
   QrSecendArtGroup.Parameters.ParamByName('ArtGroup_ID').Value := QrFirstArtGroupArtGroup_ID.AsInteger;
end;

end.
