unit LoanGaurantorU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Grids, DBGrids, YDbgrid, ActnList,
  Menus, StdCtrls, Buttons, ExtCtrls;

type
  TFrLoanGaurantor = class(TYBaseForm)
    Panel1: TPanel;
    xpBitBtn3: TBitBtn;
    xpBitBtn1: TBitBtn;
    xpBitBtn2: TBitBtn;
    Panel2: TPanel;
    GaranteeGrid: TYDBGrid;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrLoanGaurantor: TFrLoanGaurantor;


implementation

Uses  YShamsiDate ;

{$R *.dfm}

procedure TFrLoanGaurantor.FormShow(Sender: TObject);
begin
  inherited;
   {Ranjbar Ver3}
   DBGrid_LoadColumns(Self.Name,GaranteeGrid);

end;

procedure TFrLoanGaurantor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   {Ranjbar Ver3}
   DBGrid_SaveColumns(Self.Name,GaranteeGrid);

end;

end.
