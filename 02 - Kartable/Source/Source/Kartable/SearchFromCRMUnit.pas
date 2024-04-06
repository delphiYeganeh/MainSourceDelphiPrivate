unit SearchFromCRMUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, DB, YDbgrid, ComCtrls;

type
  TSearchFromCRM = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    DSYDabir_Select_List_Customers: TDataSource;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    StatusBar1: TStatusBar;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1NeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
    procedure OpenDataSet;
    procedure SetColumnWidth;
    procedure DeleteFilter;
    procedure ShowCount;
  public
    { Public declarations }
  end;

var
  SearchFromCRM: TSearchFromCRM;

implementation

uses Dmu;

{$R *.dfm}

procedure TSearchFromCRM.OpenDataSet;
begin
  dm.YDabir_Select_List_Customers.Close;
  dm.YDabir_Select_List_Customers.Parameters.ParamByName('@DBName').Value:=_CRMDatabaseName;
  dm.YDabir_Select_List_Customers.Open;
end;

procedure TSearchFromCRM.FormCreate(Sender: TObject);
begin
  DSYDabir_Select_List_Customers.DataSet:=Dm.YDabir_Select_List_Customers;
  OpenDataSet;
  SetColumnWidth;
end;

procedure TSearchFromCRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  SearchFromCRM.Hide;
end;

procedure TSearchFromCRM.Edit1Change(Sender: TObject);
var
  FieldName,s : String;
begin
  if dm.YDabir_Select_List_Customers.Active then
  begin
     if Length(Edit1.Text)>0 then
     begin
        dm.YDabir_Select_List_Customers.Filtered:=False;
        dm.YDabir_Select_List_Customers.Filter:='';     
        FieldName:=Trim(DBGrid1.SelectedField.FieldName);
        s:=Edit1.Text;
        if FieldName<>'CustomerID' then
        begin
            s:=Dm.ReplaceCharacter(Edit1.Text,char(223),char(152));
            dm.YDabir_Select_List_Customers.Filter:=FieldName+' Like ''%'+s+'%''';
        end
        else
            dm.YDabir_Select_List_Customers.Filter:=FieldName+' Like ''%'+s+'%''';
        dm.YDabir_Select_List_Customers.Filtered:=True;
        ShowCount;
     end
     else
     begin
        DeleteFilter;
        ShowCount;
     end;
  end;
end;

procedure TSearchFromCRM.SetColumnWidth;
var
  i : Integer;
begin
  for  i:=0  to DBGrid1.Columns.Count-1 do
  begin
     if DBGrid1.Columns[i].FieldName='CustomerID' then
        DBGrid1.Columns[i].Width:=70
     else if DBGrid1.Columns[i].FieldName='PersonTitle' then
        DBGrid1.Columns[i].Width:=150
     else if DBGrid1.Columns[i].FieldName='CustomerNO' then
        DBGrid1.Columns[i].Width:=145;
  end;
end;

procedure TSearchFromCRM.DeleteFilter;
begin
    dm.YDabir_Select_List_Customers.Filter:='';
    dm.YDabir_Select_List_Customers.Filtered:=True;
end;

procedure TSearchFromCRM.FormActivate(Sender: TObject);
begin
  DeleteFilter;
  DBGrid1TitleClick(DBGrid1.Columns.Items[0]);
  Edit1.SetFocus;
  ShowCount;
end;

procedure TSearchFromCRM.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then
  begin
      Key:=0;
      Close;
  end;
end;

procedure TSearchFromCRM.DBGrid1NeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Color: TColor);
begin
  if Column.Grid.DataSource.DataSet.RecNo mod 2=0 then
     Color := clWhite
  else
     Color := clBtnFace;
end;

procedure TSearchFromCRM.DBGrid1DblClick(Sender: TObject);
begin
  Close;
end;

procedure TSearchFromCRM.DBGrid1TitleClick(Column: TColumn);
var
  I : Integer;
begin
   For I:=0 to DBGrid1.Columns.Count-1 do
       DBGrid1.Columns.Items[I].Color := DBGrid1.Color;

   DBGrid1.SelectedIndex := Column.Index;
   DBGrid1.Columns.Items[Column.Index].Color := clCream;
   Label2.Caption := 'Ã” ÃÊ »— «”«” ” Ê‰' +' : '+ Trim(DBGrid1.Columns.Items[Column.Index].Title.caption);
   Edit1.SetFocus;
end;

procedure TSearchFromCRM.ShowCount;
begin
  StatusBar1.Panels.Items[1].Text:='  ⁄œ«œ ' +IntToStr(DBGrid1.DataSource.DataSet.RecordCount)+' „Ê—œ Ì«›  ‘œ ';
end;

end.
