unit FlowUpUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Menus, ExtActns, ActnList, DB, ExtCtrls, Grids,
  DBGrids, YDbgrid, StdCtrls, ComCtrls;

type
  TfrmFlowUp = class(TMBaseForm)
    dbgFollow: TYDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    StatusBar1: TStatusBar;
    procedure FormActivate(Sender: TObject);
    procedure dbgFollowNeedColorCondition(Column: TColumn; State: TGridDrawState; var Color: TColor);
    procedure dbgFollowTitleClick(Column: TColumn);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FCustomerID: Integer;
    procedure SetCustomerID(const Value: Integer);
    procedure ShowFlowUp;
    procedure DeleteFilter;
    procedure ShowCount;
  public
    { Public declarations }
    property CustomerID:Integer read FCustomerID write SetCustomerID;
  end;

implementation

uses Dmu;

{$R *.dfm}

{ TfrmFlowUp }

procedure TfrmFlowUp.SetCustomerID(const Value: Integer);
begin
  FCustomerID := Value;
end;

procedure TfrmFlowUp.ShowFlowUp;
var
  DbName:String;
begin
   DbName:=Dm.GetValueFromRegistry('Software\yeganeh\crm','DataBaseName');
   Dm.YDabir_Select_FollowUP_By_CustomerID.Close;
   Dm.YDabir_Select_FollowUP_By_CustomerID.Parameters.ParamByName('@CustomerID').Value:=CustomerID;
   Dm.YDabir_Select_FollowUP_By_CustomerID.Parameters.ParamByName('@DBName').Value:=DbName;
   Dm.YDabir_Select_FollowUP_By_CustomerID.Open;

   dbgFollowTitleClick(dbgFollow.Columns.Items[0]);
end;

procedure TfrmFlowUp.FormActivate(Sender: TObject);
begin
  inherited;
  ShowFlowUp;
  DeleteFilter;
  ShowCount;
end;

procedure TfrmFlowUp.dbgFollowNeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Color: TColor);
begin
  inherited;
  if Column.Grid.DataSource.DataSet.RecNo mod 2=0 then
    Color := clWhite
  else
    Color := clBtnFace;
end;

procedure TfrmFlowUp.dbgFollowTitleClick(Column: TColumn);
var
  I : Integer;
begin
  for I:=0 to dbgFollow.Columns.Count-1 do
    dbgFollow.Columns.Items[I].Color := dbgFollow.Color;

  dbgFollow.SelectedIndex := Column.Index;
  dbgFollow.Columns.Items[Column.Index].Color := clCream;
  Label1.Caption := 'Ã” ÃÊ »— «”«” ” Ê‰' + ' : ' +Trim(dbgFollow.Columns.Items[Column.Index].Title.caption);
  Edit1.SetFocus;
end;

procedure TfrmFlowUp.Edit1Change(Sender: TObject);
var
  FieldName : String;
begin
  if dm.YDabir_Select_FollowUP_By_CustomerID.Active then
  begin
    if Length(Edit1.Text)>0 then
    begin
      FieldName:=Trim(dbgFollow.SelectedField.FieldName);
      dm.YDabir_Select_FollowUP_By_CustomerID.Filter:=FieldName+' Like ''%'+Edit1.Text+'%''';
      dm.YDabir_Select_FollowUP_By_CustomerID.Filtered:=True;
      ShowCount;
    end
    else
    begin
      DeleteFilter;
      ShowCount;
    end;
  end;
end;

procedure TfrmFlowUp.DeleteFilter;
begin
  dm.YDabir_Select_FollowUP_By_CustomerID.Filter:='';
  dm.YDabir_Select_FollowUP_By_CustomerID.Filtered:=True;
end;

procedure TfrmFlowUp.ShowCount;
begin
  StatusBar1.Panels.Items[1].Text:='  ⁄œ«œ ' +IntToStr(dbgFollow.DataSource.DataSet.RecordCount)+' „Ê—œ Ì«›  ‘œ ';
end;

procedure TfrmFlowUp.FormCreate(Sender: TObject);
begin
  inherited;
  DSForm.DataSet:=Dm.YDabir_Select_FollowUP_By_CustomerID;
end;

end.
