unit UTaxPerYear;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, YDbgrid, StdCtrls, Buttons, ExtCtrls,BaseUnit,AdoDB,DB;

type
  TFrTaxPerYear = class(TMBaseForm)
    pnlMain: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    edtTaxDate: TEdit;
    Panel1: TPanel;
    btnCancel: TBitBtn;
    btnSave: TBitBtn;
    dbgTaxPerYear: TYDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrTaxPerYear: TFrTaxPerYear;

implementation

uses dmu, BusinessLayer;



{$R *.dfm}
var
 Qry : TADOQuery;

procedure TFrTaxPerYear.FormCreate(Sender: TObject);
var    dsr  : TDataSource;
begin
  inherited;
    Qry := TADOQuery.Create(nil);
    dsr  := TDataSource.Create(nil);
    with Qry  do
    begin
        CommandTimeout := 1200;
        Close;
        Connection :=dm.YeganehConnection;
        SQL.Text := 'Select * from TaxPerYear';
        Open;
    end;
      dsr.DataSet  := Qry  ;
      dbgTaxPerYear.DataSource := dsr;

  edtTaxDate.Text:= getSystemSetting('TaxDate')
end;

procedure TFrTaxPerYear.btnSaveClick(Sender: TObject);
begin
  inherited;
  if Qry.State in [dsinsert,dsedit] then  Qry.Post;
  SetSystemSetting('TaxDate',edtTaxDate.Text);
  close;

end;

procedure TFrTaxPerYear.btnCancelClick(Sender: TObject);
begin
  inherited;
  Qry.Cancel;
close;
end;

procedure TFrTaxPerYear.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  { TODO -oparsa : 14030203 }
  if (NewWidth < 286)  or (NewHeight < 333) then
    Resize := False
  else Resize := True;
   { TODO -oparsa : 14030203 }
  inherited;

end;

procedure TFrTaxPerYear.FormShow(Sender: TObject);
begin
  inherited;
  pnlMain.Color := _Color1 ;
end;

end.
