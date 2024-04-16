unit UserSearchUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Buttons, ExtCtrls, ExtActns, ActnList, DB, ADODB,
  Grids, DBGrids, YDbgrid, StdCtrls;

type
  TUserSearch = class(TForm)
    Panel2: TPanel;
    YDBGrid1: TYDBGrid;
    QUsers: TADOQuery;
    QUsersId: TAutoIncField;
    QUsersTitle: TWideStringField;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    edtName: TEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure YDBGrid1NeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
    procedure FormShow(Sender: TObject);
    procedure YDBGrid1DblClick(Sender: TObject);
    procedure edtNameChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UserSearch: TUserSearch;

implementation

uses dmu, RepTasksUnit, YShamsiDate;

{$R *.dfm}

procedure TUserSearch.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
      Key:=#0;
      FRepTasks.UserID:=-1;
      FRepTasks.UserName:='';
      Close;
  end;
end;

procedure TUserSearch.YDBGrid1NeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Color: TColor);
begin
  inherited;
  if (QUsers.RecNo mod 2)=0 then
       Color:=$00EAEAEA
  else
       Color:=clWhite;
end;

procedure TUserSearch.FormShow(Sender: TObject);
begin
  inherited;
  QUsers.Close;
  QUsers.Open;
end;

procedure TUserSearch.YDBGrid1DblClick(Sender: TObject);
begin
  inherited;
  FRepTasks.UserID:=QUsersId.AsInteger;
  FRepTasks.UserName:=QUsersTitle.AsString;
  Close;
end;

procedure TUserSearch.edtNameChange(Sender: TObject);
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

procedure TUserSearch.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  ShowMessage('123');
end;

procedure TUserSearch.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  ShowMessage('456');
end;

end.
