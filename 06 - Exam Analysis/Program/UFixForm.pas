unit UFixForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, xpBitBtn, ExtCtrls, Grids, DBGrids, YDbgrid, ComCtrls,
  xpPages, xpWindow, ActnList;

type
  TFrFixForm = class(TMBaseForm)
    xpPageControl1: TxpPageControl;
    xpTabSheet1: TxpTabSheet;
    DBGrid1: TYDBGrid;
    xpTabSheet2: TxpTabSheet;
    DBGrid2: TYDBGrid;
    xpTabSheet3: TxpTabSheet;
    DBGrid3: TYDBGrid;
    Image1: TImage;
    BitBtn1: TxpBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrFixForm: TFrFixForm;

implementation

uses dmu;

{$R *.dfm}

procedure TFrFixForm.FormCreate(Sender: TObject);
begin
  inherited;
dm.Difficulty.Open;
dm.ExamType.Open;
dm.Discrimination.Open;
end;

procedure TFrFixForm.BitBtn1Click(Sender: TObject);
begin
  inherited;
close;
end;

end.
