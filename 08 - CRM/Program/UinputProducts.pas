unit UinputProducts;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Mask,BaseUnit, ExtActns,
  ActnList, DB, Grids, DBGrids, YDbgrid;

type
  TFinputProducts = class(TMBaseForm)
    pnlMain: TPanel;
    YDBGrid1: TYDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBNavigator1: TDBNavigator;
    BtnCancel: TBitBtn;
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure FormShow(Sender: TObject);
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

procedure TFinputProducts.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  { TODO -oparsa : 14030203 }
  if (NewWidth < 421)  or (NewHeight < 423) then
    Resize := False
  else Resize := True;
   { TODO -oparsa : 14030203 }
  inherited;

end;

procedure TFinputProducts.FormShow(Sender: TObject);
begin
  inherited;
  ShapeBase.Brush.Color := _Color1 ;
  pnlMain.Color := _Color1 ;
end;

end.
