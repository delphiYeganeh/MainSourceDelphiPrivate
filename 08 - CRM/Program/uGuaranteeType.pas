unit uGuaranteeType;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, YDbgrid,
  ExtActns, ActnList, DB,adodb;

type
  TfrGuaranteeType = class(TMBaseForm)
    dbgTaxPerYear: TYDBGrid;
    Panel1: TPanel;
    btnCancel: TBitBtn;
    btnSave: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frGuaranteeType: TfrGuaranteeType;

implementation

uses dmu;

{$R *.dfm}
var
 Qry : TADOQuery;

procedure TfrGuaranteeType.FormCreate(Sender: TObject);
var    dsr  : TDataSource;
begin
  inherited;
    Qry := TADOQuery.Create(nil);
    dsr  := TDataSource.Create(nil);
    with Qry  do
    begin
        Close;
        Connection :=dm.YeganehConnection;
        SQL.Text := 'Select * from GuaranteeType';
        Open;
    end;
      dsr.DataSet  := Qry  ;
      dbgTaxPerYear.DataSource := dsr;


end;

procedure TfrGuaranteeType.btnCancelClick(Sender: TObject);
begin
  inherited;
  Qry.Cancel;
  close;
end;

procedure TfrGuaranteeType.btnSaveClick(Sender: TObject);
begin
  inherited;
  if Qry.State in [dsinsert,dsedit] then  Qry.Post;
  close;

end;

end.