unit WorkSheetBaseSessionsUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Menus, ExtActns, ActnList, DB, ExtCtrls, MssPanelPro,
  Buttons, StdCtrls, Grids, DBGrids, MssDBGrid, ADODB, MssMessage, DBCtrls;

type
  TFWorkSheetBaseSessions = class(TMBaseForm)
    MssPanelPro1: TMssPanelPro;
    MssPanelPro2: TMssPanelPro;
    MssPanelPro4: TMssPanelPro;
    MssDBGrid1: TMssDBGrid;
    MssDBGrid3: TMssDBGrid;
    MssPanelPro5: TMssPanelPro;
    Label1: TLabel;
    dsSessionUsers: TDataSource;
    dsUsers: TDataSource;
    QSession: TADOQuery;
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
    QSessionUsers: TADOQuery;
    QSessionUsersID: TAutoIncField;
    QSessionUsersWorkSheetBaseID: TIntegerField;
    QSessionUsersUserID: TIntegerField;
    QSessionUsersDescription: TStringField;
    QSessionUsersAddedSubject: TStringField;
    QSessionUsersMustCome: TIntegerField;
    QSessionUsersUserResponse: TIntegerField;
    QSessionUsersUserDescription: TStringField;
    QSessionUserslkUserID: TStringField;
    QSessionUserslkMustCome: TStringField;
    QSessionUserslkUserResponse: TStringField;
    MssPanelPro7: TMssPanelPro;
    SpeedButton3: TSpeedButton;
    QSessionBeginTimeToMinute: TIntegerField;
    QSessionEndTimeToMinute: TIntegerField;
    QAddUserToSession: TADOQuery;
    QUserInSession: TADOQuery;
    MssMessage1: TMssMessage;
    MssPanelPro3: TMssPanelPro;
    MssPanelPro9: TMssPanelPro;
    SpeedButton1: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton2: TSpeedButton;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    QSessionUsersRegUserID: TIntegerField;
    QSessionUsersRegDate_Shamsi: TStringField;
    QSessionUsersRegDate_Miladi: TStringField;
    QSessionUserslkRegUserID: TStringField;
    QSessionSendNews: TBooleanField;
    QSessionMonshi: TIntegerField;
    QSessionBeginTimeHour: TStringField;
    QSessionBeginTimeMinute: TStringField;
    QSessionEndTimeHour: TStringField;
    QSessionEndTimeMinute: TStringField;
    QSessionlkMonshi: TStringField;
    GroupBox1: TGroupBox;
    QSessionDate_Shamsi: TStringField;
    QSessionDate_Miladi: TStringField;
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
    DBText8: TDBText;
    DBText9: TDBText;
    DBText10: TDBText;
    Label6: TLabel;
    Label7: TLabel;
    DBMemo1: TDBMemo;
    Label8: TLabel;
    Label9: TLabel;
    DBCheckBox1: TDBCheckBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBText11: TDBText;
    DBText12: TDBText;
    DBText13: TDBText;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    SpeedButton4: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure DSFormDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton3Click(Sender: TObject);
    procedure MssDBGrid1DblClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FWorkSheetID: Integer;
    procedure SetWorkSheetID(const Value: Integer);
    procedure OpenDataSets;
    procedure AddUserToSession;
    procedure SessionUserOpen;
    function UserInSession:Boolean;
  public
    { Public declarations }
    property WorkSheetID:Integer read FWorkSheetID write SetWorkSheetID;
  end;

var
  FWorkSheetBaseSessions: TFWorkSheetBaseSessions;

implementation

uses Dmu, NewsFm, TadakholUnit, WorkSheetAllRepUnit, WorkSheetNewsUnit;

{$R *.dfm}

{ TFWorkSheetBaseSessions }

procedure TFWorkSheetBaseSessions.SetWorkSheetID(const Value: Integer);
begin
  FWorkSheetID := Value;
end;

procedure TFWorkSheetBaseSessions.OpenDataSets;
begin
  Dm.QWorkSheetUsers.Close;
  Dm.QWorkSheetUsers.Open;

  QSession.Close;
  QSession.SQL.Clear;
  QSession.SQL.Add('SELECT * FROM WorkSheet_Base WHERE ID='+IntToStr(WorkSheetID));
  QSession.Open;
end;

procedure TFWorkSheetBaseSessions.FormShow(Sender: TObject);
begin
  inherited;
  OpenDataSets;
end;

procedure TFWorkSheetBaseSessions.DSFormDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  SessionUserOpen;
end;

procedure TFWorkSheetBaseSessions.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  if not QSession.IsEmpty then
  begin
      FWorkSheetNews := TFWorkSheetNews.Create(Application);
      FWorkSheetNews.WorkSheetType:=1;
      FWorkSheetNews.WorkSheetID:=QSessionID.AsInteger;
      FWorkSheetNews.NewsTitle:=QSessionSubject.AsString;
      FWorkSheetNews.NewsContent:='œ⁄Ê  »Â Ã·”Â »« òœ :' + IntToStr(QSessionID.AsInteger) +  '    ' + QSessionDescription.AsString;
      FWorkSheetNews.ShowModal;
      OpenDataSets;
  end;
end;

procedure TFWorkSheetBaseSessions.AddUserToSession;
begin
  try
    QAddUserToSession.Close;
    QAddUserToSession.SQL.Clear;
    QAddUserToSession.SQL.Add('INSERT INTO WorkSheet_Sessions(WorkSheetBaseID,UserID,Description,AddedSubject,MustCome,UserResponse,UserDescription,RegUserID,RegDate_Shamsi)');
    QAddUserToSession.SQL.Add('VALUES('+QSessionID.AsString+','+Dm.QWorkSheetUsersID.AsString+','+'NULL,NULL,Null,3,Null,'+IntToStr(_UserID)+','''+_Today+''')');
    QAddUserToSession.ExecSQL;
    SessionUserOpen;
    MssMessage1.DialogSize:=550;
    MssMessage1.MessageType:=MssInformation;
    //MssMessage1.execute('ò«—»— „Ê—œ ‰Ÿ— ‘„« »Â ·Ì”  ò«—»—«‰ ‘—ò  ò‰‰œÂ œ— Ã·”Â «÷«›Â ê—œÌœ');
  except on e : exception do
    ShowMessage(e.Message);
  end;
end;

procedure TFWorkSheetBaseSessions.SessionUserOpen;
begin
  if not QSession.IsEmpty then
  begin
      QSessionUsers.Close;
      QSessionUsers.SQL.Clear;
      QSessionUsers.SQL.Add('SELECT * FROM WorkSheet_Sessions WHERE WorkSheetBaseID='+IntToStr(QSessionID.AsInteger));
      QSessionUsers.Open;
  end;
end;

procedure TFWorkSheetBaseSessions.MssDBGrid1DblClick(Sender: TObject);
begin
  inherited;
  SpeedButton1Click(Application);
end;

function TFWorkSheetBaseSessions.UserInSession: Boolean;
begin
  Result:=False;
  QUserInSession.Close;
  QUserInSession.SQL.Clear;
  QUserInSession.SQL.Add('SELECT ID FROM WorkSheet_Sessions');
  QUserInSession.SQL.Add('WHERE WorkSheetBaseID='+QSessionID.AsString+' AND UserID='+Dm.QWorkSheetUsersID.AsString+'');
  QUserInSession.Open;
  if not QUserInSession.IsEmpty then Result:=True else Result:=False; 
end;

procedure TFWorkSheetBaseSessions.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if UserInSession then
  begin
    MssMessage1.DialogSize:=460;
    MssMessage1.MessageType:=MssError;
    MssMessage1.execute('«Ì‰ ò«—»— œ— ·Ì”  ‘—ò  ò‰‰œê«‰ œ— Ã·”Â ÊÃÊœ œ«—œ');
  end
  else
  begin
   if not QSession.IsEmpty then
    if not Dm.QWorkSheetUsers.IsEmpty then
      if Dm.CheckTadakhol(QSessionYear_Shamsi.AsInteger,QSessionMonth_Shamsi.AsString,QSessionDay_Shamsi.AsInteger,QSessionBeginTimeToMinute.AsInteger,QSessionEndTimeToMinute.AsInteger,Dm.QWorkSheetUsersID.AsInteger,QSessionID.AsInteger) then
      begin
          MssMessage1.DialogSize:=460;
          MssMessage1.MessageType:=MssError;
          MssMessage1.execute('“„«‰ Ã·”Â »—«Ì «Ì‰ ò«—»—  œ«Œ· œ«—œ');
      end
      else
      begin
         AddUserToSession;
      end;
  end;
end;

procedure TFWorkSheetBaseSessions.SpeedButton13Click(Sender: TObject);
begin
  inherited;
  MssMessage1.DialogSize:=460;
  MssMessage1.MessageType:=MssConfirme;
  if UpperCase(MssMessage1.execute('¬Ì« ò«—»— „Ê—œ ‰Ÿ— «“ ·Ì”  Õ–› ‘Êœø'))=UpperCase('Ok') then
  begin
     if (QSessionUsersUserID.AsInteger=QSessionManagerUserID.AsInteger)
          or
        (QSessionUsersUserID.AsInteger=QSessionMonshi.AsInteger)
     then
     begin
        MssMessage1.DialogSize:=460;
        MssMessage1.MessageType:=MssError;
        MssMessage1.execute('ò«»— „œÌ—Ã·”Â Ì« „‰‘Ì —« ‰„Ì  Ê«‰ Õ–› ò—œ');
     end
     else
       dsSessionUsers.DataSet.Delete;
  end;
end;

procedure TFWorkSheetBaseSessions.N1Click(Sender: TObject);
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

procedure TFWorkSheetBaseSessions.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TFWorkSheetBaseSessions.N2Click(Sender: TObject);
begin
   inherited;
   FWorkSheetAllRep:=TFWorkSheetAllRep.Create(Application);
   FWorkSheetAllRep.ShowModal;
end;

procedure TFWorkSheetBaseSessions.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFWorkSheetBaseSessions.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#27 then
  begin
      Key:=#0;
      SpeedButton4Click(Application);
  end;
end;

procedure TFWorkSheetBaseSessions.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
//
end;

end.
