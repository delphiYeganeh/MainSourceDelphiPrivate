unit SearchUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, YDbgrid, DB, ADODB;

type
  TSearchForm = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    edtName: TEdit;
    YDBGrid1: TYDBGrid;
    QUsers: TADOQuery;
    QUsersId: TAutoIncField;
    QUsersTitle: TWideStringField;
    DataSource1: TDataSource;
    procedure edtNameChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure YDBGrid1NeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
    procedure YDBGrid1DblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
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
      QUsers.SQL.Add('SELECT 0 AS Id,''еге'' AS Title');
      QUsers.SQL.Add('UNION ALL');
      QUsers.SQL.Add('SELECT id,Title FROM Users WHERE Title LIKE ''%'+S+'%''');
      QUsers.Open;
  end
  else
  begin
      QUsers.Close;
      QUsers.SQL.Clear;
      QUsers.SQL.Add('SELECT 0 AS Id,''еге'' AS Title');
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

end.
