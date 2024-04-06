unit WorkSheetSelectionUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Menus, ExtActns, ActnList, DB, ExtCtrls, MssPanelPro,
  Buttons, StdCtrls, Mask, ADODB, MssCalendarPro, Grids, DBGrids, MssDBGrid;

type
  TFWorkSheetSelection = class(TMBaseForm)
    MssPanelPro1: TMssPanelPro;
    MssPanelPro2: TMssPanelPro;
    SpeedButton10: TSpeedButton;
    GroupBox1: TGroupBox;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    SpeedButton2: TSpeedButton;
    Label2: TLabel;
    edtFromDate: TMaskEdit;
    edtToDate: TMaskEdit;
    SpeedButton3: TSpeedButton;
    MssDBGrid2: TMssDBGrid;
    MssPanelPro3: TMssPanelPro;
    MssDBGrid1: TMssDBGrid;
    MssCalendarPro1: TMssCalendarPro;
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
    QSessionsDate_Miladi: TStringField;
    QSessionsSendNews: TBooleanField;
    QSessionsMonshi: TIntegerField;
    QSessionsBeginTimeHour: TStringField;
    QSessionsBeginTimeMinute: TStringField;
    QSessionsEndTimeHour: TStringField;
    QSessionsEndTimeMinute: TStringField;
    QSessionsBeginTime: TStringField;
    QSessionsEndTime: TStringField;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure MssDBGrid1DblClick(Sender: TObject);
  private
    FWorkSheetBaseID: Integer;
    procedure SetWorkSheetBaseID(const Value: Integer);
    { Private declarations }
  public
    { Public declarations }
    property WorkSheetBaseID:Integer read FWorkSheetBaseID write SetWorkSheetBaseID;
  end;

var
  FWorkSheetSelection: TFWorkSheetSelection;

implementation

uses Dmu;

{$R *.dfm}

{ TFWorkSheetSelection }

procedure TFWorkSheetSelection.SetWorkSheetBaseID(const Value: Integer);
begin
  FWorkSheetBaseID := Value;
end;

procedure TFWorkSheetSelection.FormShow(Sender: TObject);
begin
  inherited;
  WorkSheetBaseID:=0;
end;

procedure TFWorkSheetSelection.SpeedButton10Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFWorkSheetSelection.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  edtFromDate.Text:=MssCalendarPro1.Execute('/');
end;

procedure TFWorkSheetSelection.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  edtToDate.Text:=MssCalendarPro1.Execute('/');
end;

procedure TFWorkSheetSelection.SpeedButton3Click(Sender: TObject);
var
  FromYear,FromMonth,FromDay,ToYear,ToMonth,ToDay:String;
  BeginTimeToMinute,EndTimeToMinute:Integer;
begin
  inherited;
  QSessions.Close;
  QSessions.SQL.Clear;
  QSessions.SQL.Add('SELECT wsb.*,wsb.BeginTimeHour+'':''+wsb.BeginTimeMinute AS ''BeginTime'',wsb.EndTimeHour+'':''+wsb.EndTimeMinute AS ''EndTime'' FROM WorkSheet_Base wsb');
  QSessions.SQL.Add('WHERE (wsb.Type=1) or (wsb.Type=2)');
  if edtFromDate.Text<>'    /  /  ' then  QSessions.SQL.Add('AND (wsb.Date_Shamsi>='''+edtFromDate.Text+''')');
  if edtToDate  .Text<>'    /  /  ' then  QSessions.SQL.Add('AND (wsb.Date_Shamsi<='''+edtToDate.Text+''')');
  QSessions.Open;
end;

procedure TFWorkSheetSelection.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if not QSessions.IsEmpty then
      WorkSheetBaseID:=QSessionsID.AsInteger ;
end;

procedure TFWorkSheetSelection.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#27 then
  begin
     Key:=#0;
     SpeedButton10Click(Application);
  end;
end;

procedure TFWorkSheetSelection.MssDBGrid1DblClick(Sender: TObject);
begin
  inherited;
   close;
end;

end.
