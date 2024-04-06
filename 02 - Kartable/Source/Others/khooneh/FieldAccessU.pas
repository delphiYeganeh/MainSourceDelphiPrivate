unit FieldAccessU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Grids, DBGrids, YDbgrid, ExtCtrls, xpWindow, ExtActns,
  ActnList, DB, StdCtrls, DBCtrls, xpBitBtn;

type
  TFrFieldAccess = class(TMBaseForm)
    Panel1: TPanel;
    Panel3: TPanel;
    YDBGrid1: TYDBGrid;
    Panel2: TPanel;
    YDBGrid2: TYDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    xpBitBtn1: TxpBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure YDBGrid2CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrFieldAccess: TFrFieldAccess;

implementation

uses Dmu, businessLayer;

{$R *.dfm}

procedure TFrFieldAccess.FormCreate(Sender: TObject);
begin
  inherited;
insert_FieldAccess;
Open_UserTable('');

end;

procedure TFrFieldAccess.DBLookupComboBox1Click(Sender: TObject);
begin
  inherited;
Open_FieldAccess_by_TableID(dm.get_userTableTableId.AsInteger,DBLookupComboBox1.KeyValue);
end;

procedure TFrFieldAccess.xpBitBtn1Click(Sender: TObject);
begin
  inherited;
 close;
end;

procedure TFrFieldAccess.YDBGrid2CellClick(Column: TColumn);
begin
  inherited;
Open_FieldAccess_by_TableID(dm.get_userTableTableId.AsInteger,DBLookupComboBox1.KeyValue);
end;

end.
