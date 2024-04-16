unit uCategoryEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ADODB, Grids, DBGrids, YDbgrid, DB, Buttons, ExtCtrls, StdCtrls,
  DBCtrls, Mask, BaseUnit, ExtActns, ActnList;

type
  TFrCategoryEdit = class(TMBaseForm)
    Panel1: TPanel;
    Panel2: TPanel;
    YDBGrid1: TYDBGrid;
    YDBGrid2: TYDBGrid;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    DBEStateTitle: TDBEdit;
    Label1: TLabel;
    DBECityTitle: TDBEdit;
    Label2: TLabel;
    Bevel1: TBevel;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrCategoryEdit: TFrCategoryEdit;

implementation

uses Dmu,YShamsiDate;

{$R *.dfm}

procedure TFrCategoryEdit.StateAfterScroll(DataSet: TDataSet);
begin
//   City.Close;
//   City.Parameters.ParamByName('StateId').Value := StateStateId.AsInteger;
//   City.Open;
end;

procedure TFrCategoryEdit.SpeedButton5Click(Sender: TObject);
begin
   Close;
end;

procedure TFrCategoryEdit.FormShow(Sender: TObject);
begin
   DBNav_Setup(DBNavigator1);
   DBNav_Setup(DBNavigator2);
end;

procedure TFrCategoryEdit.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
   DBEStateTitle.SetFocus;
end;

procedure TFrCategoryEdit.DBNavigator2Click(Sender: TObject;
  Button: TNavigateBtn);
begin
   DBECityTitle.SetFocus;
end;

procedure TFrCategoryEdit.CityBeforePost(DataSet: TDataSet);
begin
//   if City.State = dsInsert then
//      CityStateId.AsInteger := StateStateID.AsInteger;
end;

procedure TFrCategoryEdit.YDBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   DBGrid_SetFocusAfterExit(YDBGrid2,Rect,DataCol,Column,State,clHighlightText);
end;

procedure TFrCategoryEdit.YDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
begin
   DBGrid_SetFocusAfterExit(YDBGrid1,Rect,DataCol,Column,State,clHighlightText);
end;

end.
