unit SearchUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, YDbgrid, DB, ADODB, ExtCtrls;

type
  TSearchForm = class(TForm)
    QUsers: TADOQuery;
    QUsersId: TAutoIncField;
    QUsersTitle: TWideStringField;
    DataSource1: TDataSource;
    ShapeBase: TShape;
    pnlMain: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edtName: TEdit;
    YDBGrid1: TYDBGrid;
    procedure edtNameChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure YDBGrid1NeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
    procedure YDBGrid1DblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SearchForm: TSearchForm;

implementation

uses dmu, RepTasksUnit, YShamsiDate, BusinessLayer;

{$R *.dfm}

procedure TSearchForm.edtNameChange(Sender: TObject);
var
  S:String;
begin
  inherited;
  S := Trim(edtName.Text);
  if Length(S)>0 then
  begin
      S:=Replace1(s,char(223),char(152));
      QUsers.Close;
      QUsers.SQL.Clear;
      QUsers.SQL.Add('SELECT 0 AS Id,''���'' AS Title');
      QUsers.SQL.Add('UNION ALL');
      QUsers.SQL.Add('SELECT id,Title FROM Users WHERE Title LIKE ''%'+S+'%''');
      QUsers.Open;
  end
  else
  begin
      QUsers.Close;
      QUsers.SQL.Clear;
      QUsers.SQL.Add('SELECT 0 AS Id,''���'' AS Title');
      QUsers.SQL.Add('UNION ALL');
      QUsers.SQL.Add('SELECT id,Title FROM Users');
      QUsers.Open;
  end;
end;

procedure TSearchForm.FormCreate(Sender: TObject);
begin
  QUsers.Close;
  QUsers.Open;
end;

procedure TSearchForm.YDBGrid1NeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Color: TColor);
begin
  if (QUsers.RecNo mod 2)=0 then
       Color:=$00EAEAEA
  else
       Color:=clWhite;
end;

procedure TSearchForm.YDBGrid1DblClick(Sender: TObject);
begin
  FRepTasks.UserID:=QUsersId.AsInteger;
  FRepTasks.UserName:=QUsersTitle.AsString;
  Close;
end;

procedure TSearchForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
      Key:=#0;
      FRepTasks.UserID:=-1;
      FRepTasks.UserName:='';
      Close;
  end;
end;

procedure TSearchForm.FormShow(Sender: TObject);
begin
  ShapeBase.Brush.Color := _Color1 ;
  pnlMain.Color := _Color1 ;
end;

end.
