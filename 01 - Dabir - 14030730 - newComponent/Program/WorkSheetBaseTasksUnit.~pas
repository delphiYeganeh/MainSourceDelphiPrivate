unit WorkSheetBaseTasksUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Menus, ExtActns, ActnList, DB, Grids, DBGrids,
  MssDBGrid, StdCtrls, ExtCtrls, MssPanelPro, Buttons, MssMessage, ADODB,
  DBCtrls, AppEvnts, AdvGlowButton;

type
  TFWorkSheetBaseTasks = class(TMBaseForm)
    MssPanelPro3: TMssPanelPro;
    MssPanelPro1: TMssPanelPro;
    MssDBGrid1: TMssDBGrid;
    MssPanelPro5: TMssPanelPro;
    Label1: TLabel;
    MssPanelPro2: TMssPanelPro;
    MssPanelPro4: TMssPanelPro;
    MssDBGrid3: TMssDBGrid;
    MssPanelPro7: TMssPanelPro;
    SpeedButton3: TAdvGlowButton;
    SpeedButton2: TAdvGlowButton;
    MssPanelPro9: TMssPanelPro;
    SpeedButton1: TAdvGlowButton;
    SpeedButton13: TAdvGlowButton;
    QSession: TADOQuery;
    QTaskUsers: TADOQuery;
    QTaskUsersID: TAutoIncField;
    QTaskUsersWorkSheetBaseID: TIntegerField;
    QTaskUsersUserID: TIntegerField;
    QTaskUserslkUserID: TStringField;
    QTaskUsersDescription: TStringField;
    QTaskUsersUserResponse: TIntegerField;
    QTaskUserslkUserResponse: TStringField;
    QTaskUsersUserDescription: TStringField;
    QAddUserToTask: TADOQuery;
    QUserInTask: TADOQuery;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    dsTaskUsers: TDataSource;
    MssMessage1: TMssMessage;
    dsUsers: TDataSource;
    QTaskUsersStatus: TIntegerField;
    QTaskUsersRegUserID: TIntegerField;
    QTaskUsersRegDate_Shamsi: TStringField;
    QTaskUsersRegDate_Miladi: TStringField;
    QTaskUserslkRegUserID: TStringField;
    QTaskUsersWithAlarm: TBooleanField;
    QTaskUserslkStatus: TStringField;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    DBText1: TDBText;
    Label3: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Label4: TLabel;
    Label5: TLabel;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText9: TDBText;
    DBText10: TDBText;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBText11: TDBText;
    DBText12: TDBText;
    DBText13: TDBText;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBMemo1: TDBMemo;
    DBCheckBox1: TDBCheckBox;
    QSessionID: TAutoIncField;
    QSessionType: TIntegerField;
    QSessionlkType: TStringField;
    QSessionRegUserID: TIntegerField;
    QSessionlkRegUserID: TStringField;
    QSessionRegDate_Shamsi: TStringField;
    QSessionRegDate_Miladi: TStringField;
    QSessionYear_Shamsi: TStringField;
    QSessionYear_Miladi: TStringField;
    QSessionMonth_Shamsi: TStringField;
    QSessionMonth_Miladi: TStringField;
    QSessionDay_Shamsi: TStringField;
    QSessionDay_Miladi: TStringField;
    QSessionPlace: TStringField;
    QSessionSubject: TStringField;
    QSessionImportantLevel: TIntegerField;
    QSessionlkImportantLevel: TStringField;
    QSessionDescription: TStringField;
    QSessionManagerUserID: TIntegerField;
    QSessionlkManagerUserID: TStringField;
    QSessionStatus: TIntegerField;
    QSessionlkStatus: TStringField;
    QSessionBeginTimeToMinute: TIntegerField;
    QSessionEndTimeToMinute: TIntegerField;
    QSessionSendNews: TBooleanField;
    QSessionMonshi: TIntegerField;
    QSessionlkMonshi: TStringField;
    QSessionBeginTimeHour: TStringField;
    QSessionBeginTimeMinute: TStringField;
    QSessionEndTimeHour: TStringField;
    QSessionEndTimeMinute: TStringField;
    QSessionDate_Shamsi: TStringField;
    QSessionDate_Miladi: TStringField;
    SpeedButton4: TAdvGlowButton;
    pnlMain: TPanel;
    procedure FormShow(Sender: TObject);
    procedure DSFormDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure MssDBGrid1DblClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QTaskUsersBeforePost(DataSet: TDataSet);
  private
    FWorkSheetID: Integer;
    procedure SetWorkSheetID(const Value: Integer);
    procedure OpenDataSets;
    procedure AddUserToTask;
    procedure TaskUserOpen;
    function UserInTask:Boolean;
  public
    { Public declarations }
    property WorkSheetID:Integer read FWorkSheetID write SetWorkSheetID;
  end;

var
  FWorkSheetBaseTasks: TFWorkSheetBaseTasks;

implementation

uses Dmu, NewsFm, TadakholUnit, WorkSheetAllRepUnit, WorkSheetNewsUnit;

{$R *.dfm}

{ TFWorkSheetBaseTasks }

procedure TFWorkSheetBaseTasks.SetWorkSheetID(const Value: Integer);
begin
  FWorkSheetID := Value;
end;

procedure TFWorkSheetBaseTasks.FormShow(Sender: TObject);
begin
  inherited;
  OpenDataSets;
end;

procedure TFWorkSheetBaseTasks.AddUserToTask;
begin
  try
    QAddUserToTask.Close;
    QAddUserToTask.SQL.Clear;
    QAddUserToTask.SQL.Add('INSERT INTO WorkSheet_Tasks(WorkSheetBaseID,UserID,Description,UserResponse,UserDescription,RegUserID,RegDate_Shamsi,Status)');
    QAddUserToTask.SQL.Add('VALUES('+QSessionID.AsString+','+Dm.QWorkSheetUsersID.AsString+','+'NULL,3,Null,'+IntToStr(_UserID)+','''+_Today+''',1)');
    QAddUserToTask.ExecSQL;
    TaskUserOpen;
    MssMessage1.DialogSize:=550;
    MssMessage1.MessageType:=MssInformation;
    QSession.Edit;
    QSessionSendNews.AsBoolean:=False;
    QSession.Post;
    //MssMessage1.execute('ò«—»— „Ê—œ ‰Ÿ— ‘„« »Â ·Ì”  ò«—»—«‰ ‘—ò  ò‰‰œÂ œ— Task «÷«›Â ê—œÌœ');
  except on e : exception do
    ShowMessage(e.Message);
  end;
end;

procedure TFWorkSheetBaseTasks.OpenDataSets;
begin
  Dm.QWorkSheetUsers.Close;
  Dm.QWorkSheetUsers.Open;

  QSession.Close;
  QSession.SQL.Clear;
  QSession.SQL.Add('SELECT * FROM WorkSheet_Base WHERE ID='+IntToStr(WorkSheetID));
  QSession.Open;
end;

procedure TFWorkSheetBaseTasks.TaskUserOpen;
begin
  if not QSession.IsEmpty then
  begin
      QTaskUsers.Close;
      QTaskUsers.SQL.Clear;
      QTaskUsers.SQL.Add('SELECT * FROM WorkSheet_Tasks WHERE WorkSheetBaseID='+IntToStr(QSessionID.AsInteger));
      QTaskUsers.Open;
  end;
end;

function TFWorkSheetBaseTasks.UserInTask: Boolean;
begin
  Result:=False;
  QUserInTask.Close;
  QUserInTask.SQL.Clear;
  QUserInTask.SQL.Add('SELECT ID FROM WorkSheet_Tasks');
  QUserInTask.SQL.Add('WHERE WorkSheetBaseID='+QSessionID.AsString+' AND UserID='+Dm.QWorkSheetUsersID.AsString+'');
  QUserInTask.Open;
  if not QUserInTask.IsEmpty then Result:=True else Result:=False;
end;

procedure TFWorkSheetBaseTasks.DSFormDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  TaskUserOpen;
end;

procedure TFWorkSheetBaseTasks.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if UserInTask then
  begin
    MssMessage1.DialogSize:=460;
    MssMessage1.MessageType:=MssError;
    MssMessage1.execute('«Ì‰ ò«—»— œ— ·Ì”  ‘—ò  ò‰‰œê«‰ œ— Task ÊÃÊœ œ«—œ');
  end
  else
  begin
   if not QSession.IsEmpty then
    if not Dm.QWorkSheetUsers.IsEmpty then
      if Dm.CheckTadakhol(QSessionYear_Shamsi.AsInteger,QSessionMonth_Shamsi.AsString,QSessionDay_Shamsi.AsInteger,QSessionBeginTimeToMinute.AsInteger,QSessionEndTimeToMinute.AsInteger,Dm.QWorkSheetUsersID.AsInteger,QSessionID.AsInteger) then
      begin
          MssMessage1.DialogSize:=460;
          MssMessage1.MessageType:=MssError;
          MssMessage1.execute('“„«‰ Task »—«Ì «Ì‰ ò«—»—  œ«Œ· œ«—œ');
      end
      else
      begin
         AddUserToTask;
      end;
  end;
end;

procedure TFWorkSheetBaseTasks.SpeedButton13Click(Sender: TObject);
begin
  inherited;
  MssMessage1.DialogSize:=460;
  MssMessage1.MessageType:=MssConfirme;
  if UpperCase(MssMessage1.execute('¬Ì« ò«—»— „Ê—œ ‰Ÿ— «“ ·Ì”  Õ–› ‘Êœø'))=UpperCase('Ok') then
  begin
     if (QTaskUsersUserID.AsInteger=QSessionManagerUserID.AsInteger) then
     begin
        MssMessage1.DialogSize:=460;
        MssMessage1.MessageType:=MssError;
        MssMessage1.execute('ê—œ«‰‰œÂ Task —« ‰„Ì  Ê«‰ Õ–› ò—œ');
     end
     else
        dsTaskUsers.DataSet.Delete;
  end;
end;

procedure TFWorkSheetBaseTasks.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  if not QSession.IsEmpty then
  begin
      FWorkSheetNews := TFWorkSheetNews.Create(Application);
      FWorkSheetNews.WorkSheetType:=3;
      FWorkSheetNews.WorkSheetID:=QSessionID.AsInteger;
      FWorkSheetNews.NewsTitle:=QSessionSubject.AsString;
      FWorkSheetNews.NewsContent:='œ⁄Ê  »Â «‰Ã«„ ò«— »« òœ :' + IntToStr(QSessionID.AsInteger);
      FWorkSheetNews.ShowModal;
      OpenDataSets;
  end;
end;

procedure TFWorkSheetBaseTasks.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TFWorkSheetBaseTasks.N1Click(Sender: TObject);
begin
  inherited;
  if not QSession.IsEmpty then
    if not Dm.QWorkSheetUsers.IsEmpty then
    begin
       FTadakhol:=TFTadakhol.Create(Application);
       FTadakhol.Year:=QSessionYear_Shamsi.AsInteger;
       FTadakhol.Month:=QSessionMonth_Shamsi.AsString;
       FTadakhol.Day:=QSessionDay_Shamsi.AsInteger;
       FTadakhol.BeginTimeToMinute:=QSessionBeginTimeToMinute.AsInteger;
       FTadakhol.EndTimeToMinute:=QSessionEndTimeToMinute.AsInteger;
       FTadakhol.UsersID:=Dm.QWorkSheetUsersID.AsInteger;
       FTadakhol.ShowModal;
    end;
end;

procedure TFWorkSheetBaseTasks.N2Click(Sender: TObject);
begin
  inherited;
   FWorkSheetAllRep:=TFWorkSheetAllRep.Create(Application);
   FWorkSheetAllRep.ShowModal;
end;

procedure TFWorkSheetBaseTasks.MssDBGrid1DblClick(Sender: TObject);
begin
  inherited;
  SpeedButton1Click(Application);
end;

procedure TFWorkSheetBaseTasks.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFWorkSheetBaseTasks.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#27 then
  begin
      Key:=#0;
      SpeedButton4Click(Application);
  end;
end;

procedure TFWorkSheetBaseTasks.QTaskUsersBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (QTaskUsersStatus.AsInteger<>1) and (QSessionSendNews.AsBoolean=False) then
  begin
    MssMessage1.DialogSize:=460;
    MssMessage1.MessageType:=MssError;
    MssMessage1.execute('Ê÷⁄Ì  ò«— »«Ìœ ‘—Ê⁄ ‰‘œÂ »«‘œ');
    Abort;
  end;
end;

end.
