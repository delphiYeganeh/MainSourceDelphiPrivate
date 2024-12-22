unit TadakholUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Menus, ExtActns, ActnList, DB, ExtCtrls, MssPanelPro,
  Grids, DBGrids, MssDBGrid, ADODB;

type
  TFTadakhol = class(TMBaseForm)
    MssPanelPro2: TMssPanelPro;
    MssDBGrid2: TMssDBGrid;
    QSessions: TADOQuery;
    QSessionsID: TAutoIncField;
    QSessionsType: TIntegerField;
    QSessionslkType: TStringField;
    QSessionsRegUserID: TIntegerField;
    QSessionslkRegUserID: TStringField;
    QSessionsRegDate_Shamsi: TStringField;
    QSessionsRegDate_Miladi: TStringField;
    QSessionsYear_Shamsi: TStringField;
    QSessionsYear_Miladi: TStringField;
    QSessionsMonth_Shamsi: TStringField;
    QSessionsMonth_Miladi: TStringField;
    QSessionsDay_Shamsi: TStringField;
    QSessionsDay_Miladi: TStringField;
    QSessionsPlace: TStringField;
    QSessionsSubject: TStringField;
    QSessionsImportantLevel: TIntegerField;
    QSessionslkImportantLevel: TStringField;
    QSessionsDescription: TStringField;
    QSessionsManagerUserID: TIntegerField;
    QSessionslkManagerUserID: TStringField;
    QSessionsStatus: TIntegerField;
    QSessionslkStatus: TStringField;
    QSessionsBeginTimeToMinute: TIntegerField;
    QSessionsEndTimeToMinute: TIntegerField;
    QSessionsDate_Shamsi: TStringField;
    QSessionsBeginTimeHour: TStringField;
    QSessionsBeginTimeMinute: TStringField;
    QSessionsEndTimeHour: TStringField;
    QSessionsEndTimeMinute: TStringField;
    QSessionsBeginTime: TStringField;
    QSessionsEndTime: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    FBeginTimeToMinute: Integer;
    FUsersID: Integer;
    FDay: Integer;
    FEndTimeToMinute: Integer;
    FYear: Integer;
    FMonth: String;
    procedure SetBeginTimeToMinute(const Value: Integer);
    procedure SetDay(const Value: Integer);
    procedure SetEndTimeToMinute(const Value: Integer);
    procedure SetMonth(const Value: String);
    procedure SetUsersID(const Value: Integer);
    procedure SetYear(const Value: Integer);
    { Private declarations }
  public
    { Public declarations }
    property Year:Integer read FYear write SetYear;
    property Month:String read FMonth write SetMonth;
    property Day:Integer read FDay write SetDay;
    property BeginTimeToMinute:Integer read FBeginTimeToMinute write SetBeginTimeToMinute;
    property EndTimeToMinute:Integer read FEndTimeToMinute write SetEndTimeToMinute;
    property UsersID:Integer read FUsersID write SetUsersID;
  end;

var
  FTadakhol: TFTadakhol;

implementation

uses Dmu;

{$R *.dfm}

{ TFTadakhol }

procedure TFTadakhol.SetBeginTimeToMinute(const Value: Integer);
begin
  FBeginTimeToMinute := Value;
end;

procedure TFTadakhol.SetDay(const Value: Integer);
begin
  FDay := Value;
end;

procedure TFTadakhol.SetEndTimeToMinute(const Value: Integer);
begin
  FEndTimeToMinute := Value;
end;

procedure TFTadakhol.SetMonth(const Value: String);
begin
  FMonth := Value;
end;

procedure TFTadakhol.SetUsersID(const Value: Integer);
begin
  FUsersID := Value;
end;

procedure TFTadakhol.SetYear(const Value: Integer);
begin
  FYear := Value;
end;

procedure TFTadakhol.FormShow(Sender: TObject);
begin
  inherited;
  QSessions.Close;
  QSessions.SQL.Clear;
  QSessions.SQL.Add('SELECT *,BeginTimeHour+'':''+BeginTimeMinute AS ''BeginTime'',EndTimeHour+'':''+EndTimeMinute AS ''EndTime'' FROM WorkSheet_Base WHERE ID in (');
  QSessions.SQL.Add('SELECT wsb.ID FROM WorkSheet_Base wsb');
  QSessions.SQL.Add('LEFT JOIN WorkSheet_Sessions wss ON wsb.ID=wss.WorkSheetBaseID');
  QSessions.SQL.Add('LEFT JOIN WorkSheet_Tasks wst ON wsb.ID=wst.WorkSheetBaseID');
  QSessions.SQL.Add('LEFT JOIN WorkSheet_Visits wsv ON wsb.ID=wsv.WorkSheetBaseID');
  QSessions.SQL.Add('WHERE ((wsb.Year_Shamsi='+IntToStr(Year)+') AND (wsb.Month_Shamsi='''+Month+''') AND (wsb.Day_Shamsi='+IntToStr(Day)+'))');
  QSessions.SQL.Add('AND');
  QSessions.SQL.Add('(('+IntToStr(BeginTimeToMinute)+' BETWEEN wsb.BeginTimeToMinute AND wsb.EndTimeToMinute) OR ('+IntToStr(EndTimeToMinute)+' BETWEEN wsb.BeginTimeToMinute AND wsb.EndTimeToMinute) OR ('+IntToStr(BeginTimeToMinute)+'<wsb.BeginTimeToMinute AND '+IntToStr(EndTimeToMinute)+'>wsb.EndTimeToMinute))');
  QSessions.SQL.Add('AND');
  QSessions.SQL.Add('((wss.UserID='+IntToStr(UsersID)+') OR (wst.UserID='+IntToStr(UsersID)+') OR (wsv.UserID='+IntToStr(UsersID)+'))');
  QSessions.SQL.Add(')');
  QSessions.Open;
end;

procedure TFTadakhol.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key=#27 then
  begin
      Key:=#0;
      Close;
  end;
end;

end.
