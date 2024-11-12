unit ContractsUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Menus, ExtActns, ActnList, DB, ExtCtrls, StdCtrls,YShamsiDate,
  Buttons, DBCtrls, Grids, DBGrids, YDbgrid, ComCtrls;

type
  TfrmContracts = class(TMBaseForm)
    dbgContractsList: TYDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    StatusBar1: TStatusBar;
    procedure FormActivate(Sender: TObject);
    procedure dbgContractsListDblClick(Sender: TObject);
    procedure dbgContractsListNeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
    procedure dbgContractsListTitleClick(Column: TColumn);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FCustomerID: Integer;
    procedure SetCustomerID(const Value: Integer);
    procedure ShowContracts;
    Function  LoadImageField(Field:TField;Path:String):Boolean;
    procedure DeleteFilter;
    procedure ShowCount;         
  public
    { Public declarations }
    property CustomerID:Integer read FCustomerID write SetCustomerID;
  end;

implementation

uses Dmu;

{$R *.dfm}

{ TfrmContracts }

procedure TfrmContracts.SetCustomerID(const Value: Integer);
begin
  FCustomerID := Value;
end;

procedure TfrmContracts.ShowContracts;
var
  DbName:String;
begin
   DbName:=Dm.GetValueFromRegistry('Software\yeganeh\crm','DataBaseName');
   Dm.YDabir_Select_Contract_By_CustomerID.Close;
   Dm.YDabir_Select_Contract_By_CustomerID.Parameters.ParamByName('@CustomerID').Value:=CustomerID;
   Dm.YDabir_Select_Contract_By_CustomerID.Parameters.ParamByName('@DBName').Value:=DbName;
   Dm.YDabir_Select_Contract_By_CustomerID.Open;
   dbgContractsListTitleClick(dbgContractsList.Columns.Items[0]);
end;

procedure TfrmContracts.FormActivate(Sender: TObject);
begin
  ShowContracts;
  DeleteFilter;
  ShowCount;
end;

function TfrmContracts.LoadImageField(Field: TField;
  Path: String): Boolean;
begin
   if not Field.IsNull then
    begin
       TBlobField(Field).SaveToFile(path);
       Result := True;
    end
    else
    begin
      ShowMessage('›«Ì·Ì ÊÃÊœ ‰œ«—œ');
      Result := False
    end;
end;

procedure TfrmContracts.dbgContractsListDblClick(Sender: TObject);
var
  Path,Directory :String;
begin
    Directory:=ExtractFilePath(Application.ExeName)+'\DataFile\';
    if not (DirectoryExists(Directory)) then
       MkDir(Directory);

   Path := Directory+'Contract'+ Dm.YDabir_Select_Contract_By_CustomerID.FieldByName('ContractID').AsString+Replace(Dm.YDabir_Select_Contract_By_CustomerID.FieldByName('EndDate').AsString,'/','-')+'.doc';
   if LoadImageField(Dm.YDabir_Select_Contract_By_CustomerID.FieldByName('ContractText'),path) then
      dm.OpenWordFile(path,True);
end;

procedure TfrmContracts.dbgContractsListNeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Color: TColor);
begin
  inherited;
  if Column.Grid.DataSource.DataSet.RecNo mod 2=0 then
     Color := clWhite
  else
     Color := clBtnFace;
end;

procedure TfrmContracts.dbgContractsListTitleClick(Column: TColumn);
var
  I : Integer;
begin
   For I:=0 to dbgContractsList.Columns.Count-1 do
       dbgContractsList.Columns.Items[I].Color := dbgContractsList.Color;

   dbgContractsList.SelectedIndex := Column.Index;
   dbgContractsList.Columns.Items[Column.Index].Color := clCream;
   Label1.Caption:='Ã” ÃÊ »— «”«” ” Ê‰' +' : '+ Trim(dbgContractsList.Columns.Items[Column.Index].Title.caption);
   Edit1.SetFocus;

end;

procedure TfrmContracts.Edit1Change(Sender: TObject);
var
  FieldName : String;
begin
  if dm.YDabir_Select_Contract_By_CustomerID.Active then
  begin
     if Length(Edit1.Text)>0 then
     begin
        FieldName:=Trim(dbgContractsList.SelectedField.FieldName);
        dm.YDabir_Select_Contract_By_CustomerID.Filter:=FieldName+' Like ''%'+Edit1.Text+'%''';
        dm.YDabir_Select_Contract_By_CustomerID.Filtered:=True;
        ShowCount;
     end
     else
     begin
        DeleteFilter;
        ShowCount;
     end;
  end;
end;

procedure TfrmContracts.DeleteFilter;
begin
    dm.YDabir_Select_Contract_By_CustomerID.Filter:='';
    dm.YDabir_Select_Contract_By_CustomerID.Filtered:=True;
end;

procedure TfrmContracts.ShowCount;
begin
  StatusBar1.Panels.Items[1].Text:='  ⁄œ«œ ' +IntToStr(dbgContractsList.DataSource.DataSet.RecordCount)+' „Ê—œ Ì«›  ‘œ ';
end;

procedure TfrmContracts.FormCreate(Sender: TObject);
begin
  inherited;
  DSForm.DataSet:=Dm.YDabir_Select_Contract_By_CustomerID;
end;

end.
