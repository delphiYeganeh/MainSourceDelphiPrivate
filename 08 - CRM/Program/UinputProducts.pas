unit UinputProducts;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Mask,BaseUnit, ExtActns,
  ActnList, DB, Grids, DBGrids, YDbgrid;

type
  TFinputProducts = class(TMBaseForm)
    YDBGrid1: TYDBGrid;
    Panel1: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBNavigator1: TDBNavigator;
    BtnCancel: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FinputProducts: TFinputProducts;

implementation

uses dmu;

{$R *.dfm}

end.
