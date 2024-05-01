unit city;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ADODB, Grids, DBGrids, YDbgrid, DB, Buttons, ExtCtrls, StdCtrls,
  DBCtrls, Mask, BaseUnit, ExtActns, ActnList;

type
  TFrCityEdit = class(TMBaseForm)
    DltCity: TDataSource;
    DltState: TDataSource;
    State: TADOQuery;
    City: TADOQuery;
    StateStateID: TWordField;
    StateStateTitle: TWideStringField;
    CityCityID: TAutoIncField;
    CityCityTitle: TWideStringField;
    CityStateId: TIntegerField;
    CityStateNum: TStringField;
    pnlMain: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    DBEStateTitle: TDBEdit;
    DBECityTitle: TDBEdit;
    Panel2: TPanel;
    YDBGrid1: TYDBGrid;
    YDBGrid2: TYDBGrid;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure StateAfterScroll(DataSet: TDataSet);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
    procedure CityBeforePost(DataSet: TDataSet);
    procedure YDBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure YDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrCityEdit: TFrCityEdit;

implementation

uses Dmu,YShamsiDate;

{$R *.dfm}

procedure TFrCityEdit.FormCreate(Sender: TObject);
begin
  City.Open;
  State.Open;
end;

procedure TFrCityEdit.StateAfterScroll(DataSet: TDataSet);
begin
   City.Close;
   City.Parameters.ParamByName('StateId').Value := StateStateId.AsInteger;
   City.Open;
end;

procedure TFrCityEdit.SpeedButton5Click(Sender: TObject);
begin
   Close;
end;

procedure TFrCityEdit.FormShow(Sender: TObject);
begin
  ShapeBase.Brush.Color := _Color1 ;
  pnlMain.Color := _Color1 ;

   DBNav_Setup(DBNavigator1);
   DBNav_Setup(DBNavigator2);
end;

procedure TFrCityEdit.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
   DBEStateTitle.SetFocus;
end;

procedure TFrCityEdit.DBNavigator2Click(Sender: TObject;
  Button: TNavigateBtn);
begin
   DBECityTitle.SetFocus;
end;

procedure TFrCityEdit.CityBeforePost(DataSet: TDataSet);
begin
   if City.State = dsInsert then
      CityStateId.AsInteger := StateStateID.AsInteger;
end;

procedure TFrCityEdit.YDBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   DBGrid_SetFocusAfterExit(YDBGrid2,Rect,DataCol,Column,State,clHighlightText);
end;

procedure TFrCityEdit.YDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
begin
   DBGrid_SetFocusAfterExit(YDBGrid1,Rect,DataCol,Column,State,clHighlightText);
end;

procedure TFrCityEdit.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  { TODO -oparsa : 14030203 }
  if (NewWidth < 552)  or (NewHeight < 537) then
    Resize := False
  else Resize := True;
   { TODO -oparsa : 14030203 }
  inherited;

end;

end.
