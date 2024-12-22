 unit uRecommiteList;

interface

uses
   Graphics,Forms,  Dialogs, BaseUnit, DB, ActnList, ActnMan, ADODB,
  Controls, Grids, DBGrids, YDbgrid, Buttons, StdCtrls, Classes,sysutils,
  ExtActns, XPStyleActnCtrls, xpWindow, xpBitBtn ;

type
  TFrRecommiteList = class(TMBaseForm)
    Label2: TLabel;
    DBG: TYDBGrid;
    Select_recommites_byLetterID: TADOStoredProc;
    Select_recommites_byLetterIDDSDesigner: TWideStringField;
    Select_recommites_byLetterIDDSDesigner2: TWideStringField;
    Select_recommites_byLetterIDDSDesigner3: TWideStringField;
    Select_recommites_byLetterIDDSDesigner4: TWideStringField;
    Select_recommites_byLetterIDDSDesigner5: TWideStringField;
    Select_recommites_byLetterIDDSDesigner6: TWideStringField;
    Select_recommites_byLetterIDDSDesigner7: TStringField;
    Select_recommites_byLetterIDDSDesigner8: TBooleanField;
    Select_recommites_byLetterIDDSDesigner9: TBooleanField;
    Select_recommites_byLetterIDDSDesigner10: TStringField;
    Select_recommites_byLetterIDDSDesigner11: TWideStringField;
    Select_recommites_byLetterIDDSDesigner12: TStringField;
    Select_recommites_byLetterIDDSDesigner13: TWideStringField;
    Select_recommites_byLetterIDDSDesigner14: TStringField;
    Select_recommites_byLetterIDDSDesigner15: TWideStringField;
    Button5: TxpBitBtn;
    Button6: TxpBitBtn;
    Button3: TxpBitBtn;
    Button4: TxpBitBtn;
    procedure AexitExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);


  private
  public
  LetterID:integer;
  end;

var
  FrRecommiteList: TFrRecommiteList;

implementation


uses FromOrgU,  Dmu,  UMain, businessLayer;


{$R *.dfm}


procedure TFrRecommiteList.AexitExecute(Sender: TObject);
begin
  inherited;
 close;
end;


procedure TFrRecommiteList.FormShow(Sender: TObject);
begin
  inherited;
DSForm.DataSet:=Exec_Select_recommites_byLetterID(letterID );
end;

procedure TFrRecommiteList.FormCreate(Sender: TObject);
begin
  inherited;
DBG.Color:=dm.GetValue(1009);
end;

procedure TFrRecommiteList.Button6Click(Sender: TObject);
begin
  inherited;
dbg.CustomizePrint;
end;

procedure TFrRecommiteList.Button3Click(Sender: TObject);
begin
  inherited;
dbg.ExportToWord;
end;

procedure TFrRecommiteList.Button4Click(Sender: TObject);
begin
  inherited;
dbg.ExportToExcel;
end;

procedure TFrRecommiteList.Button5Click(Sender: TObject);
begin
  inherited;
close;
end;

end.
