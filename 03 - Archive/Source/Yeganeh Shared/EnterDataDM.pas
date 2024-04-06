unit EnterDataDM;

interface

uses
  SysUtils, Classes, DB, DBTables,Dialogs,Controls, ADODB;

type
  TDMEnterData = class(TDataModule)
    DSEnterData: TDataSource;
    QrEnterData: TADOQuery;
    QrEnterDataEnterData_ID: TIntegerField;
    QrEnterDataEDCode: TIntegerField;
    QrEnterDataEDName: TStringField;
    QrEnterDataEDDesc: TStringField;
    QrEnterDataData_Ref: TIntegerField;
    QrEnterDataUsers_Ref: TIntegerField;
    procedure DataModuleDestroy(Sender: TObject);
    procedure QrEnterDataAfterInsert(DataSet: TDataSet);
    procedure QrEnterDataBeforePost(DataSet: TDataSet);
  private

  public
    DM_Users_ID:Integer;
  end;

var
  DMEnterData: TDMEnterData;

implementation

Uses DMu , YShamsiDate ;

{$R *.dfm}

procedure TDMEnterData.DataModuleDestroy(Sender: TObject);
begin
   Qry_CloseAllQry(Self);
end;

procedure TDMEnterData.QrEnterDataAfterInsert(DataSet: TDataSet);
begin
   if DM_Users_ID > 0 then
   begin
      QrEnterDataEDCode.AsInteger :=
             Dm.YeganehConnection.Execute('Select IsNull(Max(EDCode),0)+1 From EnterData Where Data_Ref = '+
             IntToStr(DMEnterData.QrEnterData.Parameters.ParamValues['Pa_Data_Ref']) +
             ' And Uses_Ref = '+ IntToStr(DMEnterData.QrEnterData.Parameters.ParamValues['USers_ID1']) ).Fields[0].Value;

      QrEnterDataUsers_Ref.AsInteger := DM_Users_ID;
   end
      else
         QrEnterDataEDCode.AsInteger :=
             Dm.YeganehConnection.Execute('Select IsNull(Max(EDCode),0)+1 From EnterData Where Data_Ref = '+
             IntToStr(DMEnterData.QrEnterData.Parameters.ParamValues['Pa_Data_Ref']) ).Fields[0].Value;
end;

procedure TDMEnterData.QrEnterDataBeforePost(DataSet: TDataSet);
begin
   Qry_IFFieldIsEmpty(QrEnterDataEDName,'ÚäæÇä');

   if QrEnterDataEDCode.IsNull then
      QrEnterDataEDCode.AsInteger := 1;
   QrEnterDataData_Ref.AsInteger := QrEnterData.Parameters.ParamValues['Pa_Data_Ref'];
end;

end.
