 unit Report_GroupForcePaymentU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ADODB, ExtCtrls, Grids, DBGrids, YDbgrid,
  StdCtrls, ActnList, Menus, Buttons;

type
  TFrReport_GroupForcePayment = class(TYBaseForm)
    Panel1: TPanel;
    Button5: TBitBtn;
    Panel2: TPanel;
    YDBGrid1: TYDBGrid;
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrReport_GroupForcePayment: TFrReport_GroupForcePayment;

implementation

uses dmu, YShamsiDate;


{$R *.dfm}


procedure TFrReport_GroupForcePayment.Button5Click(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFrReport_GroupForcePayment.FormCreate(Sender: TObject);
begin
  inherited;
 YDBGrid1.UpdateFooter;
end;

procedure TFrReport_GroupForcePayment.FormShow(Sender: TObject);
begin
  inherited;
   {Ranjbar Ver3}
   DBGrid_LoadColumns(Self.Name,YDBGrid1);
end;

procedure TFrReport_GroupForcePayment.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   {Ranjbar Ver3}
   DBGrid_SaveColumns(Self.Name,YDBGrid1);

end;

end.
