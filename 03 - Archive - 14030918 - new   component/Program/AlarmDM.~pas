unit AlarmDM;

interface

uses
  SysUtils, Classes, DB, ADODB,Dialogs,Controls;

type
  TDMAlarm = class(TDataModule)
    DSAlarm: TDataSource;
    DSUsers: TDataSource;
    DSAlarm_Users: TDataSource;
    QrAlarm: TADOQuery;
    QrUsers: TADOQuery;
    QrAlarm_Users: TADOQuery;
    QrUsersId: TAutoIncField;
    QrUsersTitle: TWideStringField;
    QrAlarmAlarmID: TAutoIncField;
    QrAlarmTitle: TWideStringField;
    QrAlarmMemo: TWideStringField;
    QrAlarmDateAlarm: TWideStringField;
    QrAlarmTimeAlarm: TWideStringField;
    QrAlarmTagText: TWideStringField;
    QrAlarmUsersID: TIntegerField;
    QrAlarm_UsersAlarmUsersID: TAutoIncField;
    QrAlarm_UsersAlarmID: TIntegerField;
    QrAlarm_UsersUsersID: TIntegerField;
    QrAlarmLetterID: TIntegerField;
    QrAlarmUsersTitle_LK: TStringField;
    procedure QrAlarmAfterInsert(DataSet: TDataSet);
    procedure QrAlarmBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    LetterID2 : Integer;
  end;

var
  DMAlarm: TDMAlarm;

implementation

Uses DMu,YShamsidate;

{$R *.dfm}

procedure TDMAlarm.QrAlarmAfterInsert(DataSet: TDataSet);
begin                           
   QrAlarmDateAlarm.AsString := ShamsiIncDate(_Today,0,0,1);
   QrAlarmTimeAlarm.AsString := Time_GetTime(Dm.YeganehConnection,False);
   QrAlarmTagText.AsString := 'LetterAlerm';
   QrAlarmLetterID.AsInteger := LetterID2;
   QrAlarmUsersID.AsInteger := _UserId;
end;

procedure TDMAlarm.QrAlarmBeforeDelete(DataSet: TDataSet);
begin
   if ShowMyMessage('íÛÇã','ÂíÇ ãÇíá Èå ÍÐÝ ÂáÇÑã ÌÇÑí åÓÊíÏ¿',mbOKCancel,mtWarning) = mrCancel then
      Abort;

   While QrAlarm_Users.RecordCount > 0 do
      QrAlarm_Users.Delete;
end;

end.
