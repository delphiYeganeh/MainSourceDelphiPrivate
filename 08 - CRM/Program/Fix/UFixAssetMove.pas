unit UFixAssetMove;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DBCtrls, StdCtrls, Mask, Buttons, Grids, DBGrids,
  ExtCtrls, ExtActns, ActnList, DB;

type
  TFFixAssetMove = class(TMBaseForm)
    pnlMain: TPanel;
    Panel1: TPanel;
    SBSearch: TBitBtn;
    SBEmkanat: TBitBtn;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label9: TLabel;
    SBUnit: TSpeedButton;
    Label18: TLabel;
    DBEEndBuyPrice: TDBEdit;
    DBESalePrice: TDBEdit;
    DBEAvgPrice: TDBEdit;
    DBETozihat: TDBEdit;
    DBEExist: TDBEdit;
    DBEMaxBuy: TDBEdit;
    DBLCBoUnit_Ref: TDBLookupComboBox;
    DBEBarcode: TDBEdit;
    DBEdit1: TDBEdit;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEModel: TDBEdit;
    DBECountry: TDBEdit;
    DBEAttribute1: TDBEdit;
    DBEAttribute2: TDBEdit;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    DBNavigator1: TDBNavigator;
    Panel5: TPanel;
    LabHelp: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFixAssetMove: TFFixAssetMove;

implementation

{$R *.dfm}

end.
