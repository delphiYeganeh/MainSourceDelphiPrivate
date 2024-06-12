unit FirstArtGroupDM;

interface

uses
  SysUtils, Classes, DB, DBTables , Dialogs,Controls, ADODB;

type
  TDMFirstArtGroup = class(TDataModule)
    DSFirstArtGroup: TDataSource;
    DSStore: TDataSource;
    QrStore: TADOQuery;
    QrFirstArtGroup: TADOQuery;
    QrStoreStore_ID: TAutoIncField;
    QrStoreCode: TIntegerField;
    QrStoreName: TWideStringField;
    QrFirstArtGroupArtGroup_ID: TIntegerField;
    QrFirstArtGroupName: TWideStringField;
    QrFirstArtGroupType: TWordField;
    QrFirstArtGroupStore_Ref: TIntegerField;
    QrFirstArtGroupArtGroup_Ref: TIntegerField;
    QrFirstArtGroupIsService: TBooleanField;
    procedure QrFirstArtGroupBeforeDelete(DataSet: TDataSet);
    procedure QrFirstArtGroupBeforePost(DataSet: TDataSet);
    procedure QrFirstArtGroupAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMFirstArtGroup: TDMFirstArtGroup;

implementation

Uses Dmu ,YShamsiDate;

{$R *.dfm}

procedure TDMFirstArtGroup.QrFirstArtGroupBeforeDelete(DataSet: TDataSet);
Var
   FirstCount : Integer;
begin
   if QrFirstArtGroupArtGroup_ID.AsInteger > 0 then
   begin
      FirstCount := Dm.YeganehConnection.Execute('Select Count(ArtGroup_ID) From ArtGroup Where ArtGroup_Ref = '+
                    QrFirstArtGroupArtGroup_ID.AsString ).Fields[0].Value;

      if FirstCount > 0 then
      begin
         ShowMyMessage('ÅÌ€«„','»œ·Ì· «” ›«œÂ «Ì‰ —òÊ—œ œ— œÌê— ›—„Â« ° «„ò«‰ Õ–› ¬‰ ÊÃÊœ ‰œ«—œ',[mbOK],mtInformation);
         Abort;
      end;
   end;
end;

procedure TDMFirstArtGroup.QrFirstArtGroupBeforePost(DataSet: TDataSet);
begin
   Qry_IFFieldIsEmpty(QrFirstArtGroupStore_Ref,'‰«„ «‰»«—');
   Qry_IFFieldIsEmpty(QrFirstArtGroupName,'‰«„ ê—ÊÂ «’·Ì');

   if QrFirstArtGroup.State = dsInsert then
   begin
      //QrFirstArtGroupArtGroup_ID.AsInteger := Qry_GetNextID('ArtGroup');
      QrFirstArtGroupType.AsInteger := 1;  //1= First Group  2= Secend Group
   end;

end;

procedure TDMFirstArtGroup.QrFirstArtGroupAfterInsert(DataSet: TDataSet);
begin
   QrFirstArtGroupIsService.AsBoolean := False; //»—«Ì ﬂ«·«Ì €Ì— Œœ„« Ì
end;

end.
