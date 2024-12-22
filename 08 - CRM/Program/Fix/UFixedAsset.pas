unit UFixedAsset;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DBCtrls, StdCtrls, Mask, Buttons, Grids, DBGrids,
  ExtCtrls, ExtActns, ActnList, DB, dxGDIPlusClasses;

type
  TFFixedAsset = class(TMBaseForm)
    pnlMain: TPanel;
    Panel1: TPanel;
    SBSearch: TBitBtn;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Image1: TImage;
    procedure SpeedButton4Click(Sender: TObject);
    procedure SBSearchClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFixedAsset: TFFixedAsset;

implementation

uses dmu,UFixAssetHeader, SearchFM;

{$R *.dfm}

procedure TFFixedAsset.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  FFixAssetHeader := TFFixAssetHeader.Create(Application);
  FFixAssetHeader.ShowModal;
  if Assigned(FFixAssetHeader) then
   FreeAndNil(FFixAssetHeader);
end;

procedure TFFixedAsset.SBSearchClick(Sender: TObject);
begin
  inherited;
   if FmSearch.GetSearchValue(DM.QrFixAsset ,'FixID', 'Name' , ' ' , 400 , 400 ) <> '0' then
      DM.QrFixAsset.Locate('FixID',DM.QrFixAssetFixID.AsInteger,[]);
end;

end.
