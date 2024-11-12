 unit uRecommiteList;

interface

uses
   Graphics,Forms,  Dialogs, BaseUnit, DB, ActnList, ActnMan, ADODB,
  Controls, Grids, DBGrids, YDbgrid, Buttons, StdCtrls, Classes,sysutils,
  ExtActns, XPStyleActnCtrls, xpWindow, xpBitBtn, Menus, ExtCtrls, AppEvnts,
  AdvGlowButton ;

type
  TFrRecommiteList = class(TMBaseForm)
    Select_Recommites_ByLetterID: TADOStoredProc;
    Select_Recommites_ByLetterIDDSDesigner: TWideStringField;
    Select_Recommites_ByLetterIDDSDesigner2: TWideStringField;
    Select_Recommites_ByLetterIDDSDesigner3: TWideStringField;
    Select_Recommites_ByLetterIDDSDesigner4: TWideStringField;
    Select_Recommites_ByLetterIDDSDesigner5: TWideStringField;
    Select_Recommites_ByLetterIDDSDesigner6: TWideStringField;
    Select_Recommites_ByLetterIDDSDesigner7: TStringField;
    Select_Recommites_ByLetterIDDSDesigner8: TBooleanField;
    Select_Recommites_ByLetterIDDSDesigner9: TBooleanField;
    Select_Recommites_ByLetterIDDSDesigner10: TStringField;
    Select_Recommites_ByLetterIDDSDesigner11: TWideStringField;
    Select_Recommites_ByLetterIDDSDesigner12: TStringField;
    Select_Recommites_ByLetterIDDSDesigner13: TWideStringField;
    Select_Recommites_ByLetterIDDSDesigner14: TStringField;
    Select_Recommites_ByLetterIDDSDesigner15: TWideStringField;
    Panel1: TPanel;
    Button6: TAdvGlowButton;
    Button3: TAdvGlowButton;
    Button4: TAdvGlowButton;
    Button5: TAdvGlowButton;
    Panel2: TPanel;
    DBG: TYDBGrid;
    Select_Recommites_ByLetterIDField: TStringField;
    Select_Recommites_ByLetterIDField2: TStringField;
    pnlMain: TPanel;
    procedure AexitExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
