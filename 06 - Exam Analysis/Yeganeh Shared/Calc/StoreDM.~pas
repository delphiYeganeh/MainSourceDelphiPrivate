unit StoreDM;

interface

uses
  SysUtils, Classes, DB, DBTables,Controls,Dialogs, ADODB;

type
  TDMStore = class(TDataModule)
    DSStore: TDataSource;
    QrStore: TADOQuery;
    QrStoreStore_ID: TAutoIncField;
    QrStoreCode: TIntegerField;
    QrStoreName: TWideStringField;
    procedure QrStoreBeforeDelete(DataSet: TDataSet);
    procedure QrStoreBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMStore: TDMStore;

implementation

Uses dmu,YShamsiDate;

{$R *.dfm}

procedure TDMStore.QrStoreBeforeDelete(DataSet: TDataSet);
Var
   StoreCount : Integer;
begin

   if QrStoreStore_ID.AsInteger > 0 then
   begin
      if MessageDlg('ÂíÇ ãÇíá Èå ÍĞİ ÑßæÑÏ ÌÇÑí åÓÊíÏ¿', mtInformation,[mbOk,mbCancel],0) = mrCancel then
         Abort;

      StoreCount := Dm.YeganehConnection.Execute('Select Count(ArtGroup_ID) From ArtGroup Where Store_Ref = '+QrStoreStore_ID.AsString ).Fields[0].Value;
      if StoreCount > 0 then
      begin
         ShowMessage('ÈÏáíá ÇÓÊİÇÏå Çíä Ñ˜æÑÏ ÏÑ ÏíÑ İÑãåÇ ¡ Çã˜Çä ÍĞİ Âä æÌæÏ äÏÇÑÏ');
         Abort;
      end;
   end;
end;

procedure TDMStore.QrStoreBeforePost(DataSet: TDataSet);
begin
   if QrStore.State = dsInsert then
   begin
      QrStoreCode.AsInteger := Qry_GetMaxNu(Dm.YeganehConnection,'Store','Code')+1;
   end;
end;

end.
