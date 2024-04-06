unit ShowRouneveshtUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Menus, ExtActns, ActnList, DB, Grids, DBGrids, YDbgrid,
  StdCtrls, DBCtrls, ExtCtrls;

type
  TFShowRounevesht = class(TMBaseForm)
    YDBGrid1: TYDBGrid;
    Panel1: TPanel;
    DBMemo1: TDBMemo;
    Label1: TLabel;
    procedure YDBGrid1NeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FShowRounevesht: TFShowRounevesht;

implementation

uses Dmu;

{$R *.dfm}

{ TFShowRounevesht }

procedure TFShowRounevesht.YDBGrid1NeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Color: TColor);
begin
  inherited;
      if Column.Grid.DataSource.DataSet.RecNo mod 2=0 then
         Color := clBtnFace
      else
         Color := clWhite;
end;

end.
