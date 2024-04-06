unit SecendArtGroupDM;

interface

uses
  SysUtils, Classes, DB, DBTables,Dialogs,Controls, ADODB;

type
  TDMSecendArtGroup = class(TDataModule)
    DSSecendArtGroup: TDataSource;
    DSFirstArtGroup: TDataSource;
    DSStore: TDataSource;
    QrStore: TADOQuery;
    QrFirstArtGroup: TADOQuery;
    QrSecendArtGroup: TADOQuery;
    QrSecendArtGroupArtGroup_ID: TAutoIncField;
    QrSecendArtGroupName: TWideStringField;
    QrSecendArtGroupType: TWordField;
    QrSecendArtGroupStore_Ref: TIntegerField;
    QrSecendArtGroupArtGroup_Ref: TIntegerField;
    QrSecendArtGroupIsService: TBooleanField;
    QrSecendArtGroupFirstArtGrpName: TWideStringField;
    QrFirstArtGroupArtGroup_ID: TIntegerField;
    QrFirstArtGroupName: TWideStringField;
    QrFirstArtGroupType: TWordField;
    QrFirstArtGroupStore_Ref: TIntegerField;
    QrFirstArtGroupArtGroup_Ref: TIntegerField;
    QrFirstArtGroupIsService: TBooleanField;
    QrStoreStore_ID: TAutoIncField;
    QrStoreCode: TIntegerField;
    QrStoreName: TWideStringField;
    procedure QrFirstArtGroupBeforeOpen(DataSet: TDataSet);
    procedure QrStoreAfterScroll(DataSet: TDataSet);
    procedure QrSecendArtGroupBeforeDelete(DataSet: TDataSet);
    procedure QrSecendArtGroupBeforePost(DataSet: TDataSet);
    procedure QrSecendArtGroupAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMSecendArtGroup: TDMSecendArtGroup;

implementation

Uses DMu , YShamsiDate;

{$R *.dfm}

procedure TDMSecendArtGroup.QrFirstArtGroupBeforeOpen(DataSet: TDataSet);
begin
   QrFirstArtGroup.Parameters.ParamByName('Store_ID').Value := QrStoreStore_ID.AsInteger;
end;

procedure TDMSecendArtGroup.QrStoreAfterScroll(DataSet: TDataSet);
begin
   QrFirstArtGroup.Close;
   QrFirstArtGroup.Open;
end;

procedure TDMSecendArtGroup.QrSecendArtGroupBeforeDelete(DataSet: TDataSet);
Var
   SecendCount : Integer;
begin
   if QrSecendArtGroupArtGroup_ID.AsInteger > 0 then
   begin
      SecendCount := Dm.YeganehConnection.Execute('Select Count(Article_ID) from Article Where ArtGroup_Ref2 = '+
                     QrSecendArtGroupArtGroup_ID.AsString ).Fields[0].Value;
      if SecendCount > 0 then
      begin
         ShowMyMessage('ÅÌ€«„','»œ·Ì· «” ›«œÂ «Ì‰ —òÊ—œ œ— œÌê— ›—„Â« ° «„ò«‰ Õ–› ¬‰ ÊÃÊœ ‰œ«—œ',[mbOK],mtInformation);
         Abort;
      end;
   end;
end;

procedure TDMSecendArtGroup.QrSecendArtGroupBeforePost(DataSet: TDataSet);
begin
   Qry_IFFieldIsEmpty(QrSecendArtGroupStore_Ref,'‰«„ «‰»«—');
   Qry_IFFieldIsEmpty(QrSecendArtGroupArtGroup_Ref,'‰«„ ê—ÊÂ «’·Ì');
   Qry_IFFieldIsEmpty(QrSecendArtGroupName,'‰«„ ê—ÊÂ ›—⁄Ì');

   if QrSecendArtGroup.State = dsInsert then
   begin
      //QrSecendArtGroupArtGroup_ID.AsInteger := Qry_GetNextID('ArtGroup');
      QrSecendArtGroupType.AsInteger := 2; //1= First Group  2= Secend Group
   end;
end;

procedure TDMSecendArtGroup.QrSecendArtGroupAfterInsert(DataSet: TDataSet);
begin
   QrSecendArtGroupIsService.AsBoolean := False;  //»—«Ì ﬂ«·«Ì €Ì— Œœ„« Ì
end;

end.
