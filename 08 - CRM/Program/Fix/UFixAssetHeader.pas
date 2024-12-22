unit UFixAssetHeader;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DBCtrls, StdCtrls, Mask, Buttons, Grids, DBGrids,
  ExtCtrls, ExtActns, ActnList, DB;

type
  TFFixAssetHeader = class(TMBaseForm)
    pnlMain: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label14: TLabel;
    Label9: TLabel;
    Label18: TLabel;
    DBECode: TDBEdit;
    DBEName: TDBEdit;
    DBETozihat: TDBEdit;
    DBEBarcode: TDBEdit;
    DBEdit1: TDBEdit;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    DBNavigator1: TDBNavigator;
    Panel5: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFixAssetHeader: TFFixAssetHeader;

implementation

{$R *.dfm}

end.
