unit UnitDM;

interface                   

uses
  SysUtils, Classes, DB, DBTables,Dialogs,Controls, ADODB;

type
  TDMUnit = class(TDataModule)
    DSUnit: TDataSource;
    QrUnit: TADOQuery;
    QrUnitUnit_ID: TAutoIncField;
    QrUnitName: TWideStringField;
    QrUnitUnitCount: TIntegerField;
    procedure QrUnit1AfterInsert(DataSet: TDataSet);
    procedure QrUnit1BeforeDelete(DataSet: TDataSet);
    procedure QrUnit1BeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMUnit: TDMUnit;

implementation

Uses DMu , YShamsiDate;

{$R *.dfm}

procedure TDMUnit.QrUnit1AfterInsert(DataSet: TDataSet);
begin
   QrUnitUnitCount.AsInteger := 1;
end;

procedure TDMUnit.QrUnit1BeforeDelete(DataSet: TDataSet);
Var
   Count : Integer;
begin
   if QrUnitUnit_ID.AsInteger = 1 then //���� ������� ������
   begin
      ShowMyMessage('�����','����� ����� � ����� ��� ���� ������� ������ ���� �����',[mbOK],mtInformation);
      Abort;
   end;

   Count := Dm.YeganehConnection.Execute('Select Count(Article_ID) from Article Where Unit_Ref = ' + QrUnitUnit_ID.AsString).Fields[0].Value;
   if Count > 0 then
   begin
      ShowMyMessage('�����','����� ������� ��� ���� ���� ������ ���� ��� �� ���� �����',[mbOK],mtInformation);
      Abort;
   end;

   Count := 0;
   Count := Dm.YeganehConnection.Execute('Select Count(FacDetails_ID) from FacDetails Where Unit_Ref = ' + QrUnitUnit_ID.AsString).Fields[0].Value;
   if Count > 0 then
   begin
      ShowMyMessage('�����','����� ������� ��� ���� ���� �ǘ����� ���� ��� �� ���� �����',[mbOK],mtInformation);
      Abort;
   end;
end;

procedure TDMUnit.QrUnit1BeforePost(DataSet: TDataSet);
begin
   Qry_IFFieldIsEmpty(QrUnitName,'��� ���� ����');
end;

end.
