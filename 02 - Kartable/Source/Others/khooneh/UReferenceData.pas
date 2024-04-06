unit UReferenceData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ADODB, xpBitBtn, Grids, DBGrids, YDbgrid,
  xpWindow, ExtActns, ActnList;

type
  TFrReferenceData = class(TMBaseForm)
    YDBGrid1: TYDBGrid;
    xpBitBtn1: TxpBitBtn;
    xpBitBtn2: TxpBitBtn;
    xpBitBtn3: TxpBitBtn;
    xpBitBtn4: TxpBitBtn;
    procedure xpBitBtn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure xpBitBtn2Click(Sender: TObject);
    procedure xpBitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    TableID: integer;
  end;

var
  FrReferenceData: TFrReferenceData;

implementation

uses Dmu, UFieldDialog, businessLayer;

{$R *.dfm}

procedure TFrReferenceData.xpBitBtn4Click(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFrReferenceData.FormShow(Sender: TObject);
begin
  inherited;
dm.Refresh_ReferenceTableData(TableID);
end;

procedure TFrReferenceData.xpBitBtn1Click(Sender: TObject);
var s: string;
begin
  inherited;
if dm.Y_InputQuery('�����',dm.get_ReferenceTableData_by_tableIDDataTitle.AsString,s) then
with dm,get_ReferenceTableData_by_tableID do
 begin
  edit;
  get_ReferenceTableData_by_tableIDDataTitle.AsString:=s;
  post;
 end;
end;

procedure TFrReferenceData.xpBitBtn2Click(Sender: TObject);
var s: string;
begin
  inherited;
if dm.Y_InputQuery('����� ����',dm.get_ReferenceTableData_by_tableIDDataTitle.AsString,s) then
with dm,get_ReferenceTableData_by_tableID do
 begin
  insert;
  get_ReferenceTableData_by_tableIDTableID.AsInteger:=TableID;
  get_ReferenceTableData_by_tableIDDataID.AsInteger:=Exec_get_MaxReferenceDataID_By_TableID(TableID);
  get_ReferenceTableData_by_tableIDDataTitle.AsString:=s;
  post;
 end;

end;

procedure TFrReferenceData.xpBitBtn3Click(Sender: TObject);
begin
  inherited;
if messageShowString('��� �� ��� ����� �����',true) then
  dm.get_ReferenceTableData_by_tableID.Delete;
end;

end.
