unit WorkSheetBaseVisitsUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Menus, ExtActns, ActnList, DB, Buttons, Grids,
  DBGrids, MssDBGrid, StdCtrls, ExtCtrls, MssPanelPro, MssMessage, ADODB,
  DBCtrls, AppEvnts, AdvGlowButton;

type
  TFWorkSheetBaseVisits = class(TMBaseForm)
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
    QAddUserToVisit: TADOQuery;
    QUserInVisit: TADOQuery;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    dsVisitUsers: TDataSource;
    MssMessage1: TMssMessage;
    QVisitUsers: TADOQuery;
    QVisitUsersID: TAutoIncField;
    QVisitUsersWorkSheetBaseID: TIntegerField;
    QVisitUsersUserID: TIntegerField;
    QVisitUserslkUserID: TStringField;
    QVisitUsersDescription: TStringField;
    QVisitUsersUserResponse: TIntegerField;
    QVisitUserslkUserResponse: TStringField;
    QVisitUsersUserDescription: TStringField;
    QSession: TADOQuery;
    dsUsers: TDataSource;
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
    procedure SpeedButton2Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DSFormDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure MssDBGrid1DblClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    FWorkSheetID: Integer;
    procedure SetWorkSheetID(const Value: Integer);
    procedure OpenDataSets;
    procedure AddUserToVisit;
    procedure VisitUserOpen;
    function UserInVisit:Boolean;
  public
    { Public declarations }
    property WorkSheetID:Integer read FWorkSheetID write SetWorkSheetID;
  end;

var
  FWorkSheetBaseVisits: TFWorkSheetBaseVisits;

implementation

uses Dmu, NewsFm, TadakholUnit, WorkSheetAllRepUnit, WorkSheetNewsUnit;

{$R *.dfm}

procedure TFWorkSheetBaseVisits.AddUserToVisit;
begin
  try
    QAddUserToVisit.Close;
    QAddUserToVisit.SQL.Clear;
    QAddUserToVisit.SQL.Add('INSERT INTO WorkSheet_Visits(WorkSheetBaseID,UserID,Description,UserResponse,UserDescription,RegUserID,RegDate_Shamsi)');
    QAddUserToVisit.SQL.Add('VALUES('+QSessionID.AsString+','+Dm.QWorkSheetUsersID.AsString+','+'NULL,3,Null,'+IntToStr(_UserID)+','''+_Today+''')');
    QAddUserToVisit.ExecSQL;
    VisitUserOpen;
    MssMessage1.DialogSize:=550;
    MssMessage1.MessageType:=MssInformation;
//    MssMessage1.execute('ò«—»— „Ê—œ ‰Ÿ— ‘„« »Â ·Ì”  ò«—»—«‰ ‘—ò  ò‰‰œÂ œ— „·«ﬁ«  «÷«›Â ê—œÌœ');
  except on e : exception do
    ShowMessage(e.Message);
  end;
end;

procedure TFWorkSheetBaseVisits.FormShow(Sender: TObject);
begin
  inherited;
  OpenDataSets;
end;

procedure TFWorkSheetBaseVisits.OpenDataSets;
begin
  Dm.QWorkSheetUsers.Close;
  Dm.QWorkSheetUsers.Open;

  QSession.Close;
  QSession.SQL.Clear;
  QSession.SQL.Add('SELECT * FROM WorkSheet_Base WHERE ID='+IntToStr(WorkSheetID));
  QSession.Open;
end;

procedure TFWorkSheetBaseVisits.VisitUserOpen;
begin
  if not QSession.IsEmpty then
  begin
      QVisitUsers.Close;
      QVisitUsers.SQL.Clear;
      QVisitUsers.SQL.Add('SELECT * FROM WorkSheet_Visits WHERE WorkSheetBaseID='+IntToStr(QSessionID.AsInteger));
      QVisitUsers.Open;
  end;
end;

procedure TFWorkSheetBaseVisits.SetWorkSheetID(const Value: Integer);
begin
  FWorkSheetID := Value;
end;

function TFWorkSheetBaseVisits.UserInVisit: Boolean;
begin
  Result:=False;
  QUserInVisit.Close;
  QUserInVisit.SQL.Clear;
  QUserInVisit.SQL.Add('SELECT ID FROM WorkSheet_Visits');
  QUserInVisit.SQL.Add('WHERE WorkSheetBaseID='+QSessionID.AsString+' AND UserID='+Dm.QWorkSheetUsersID.AsString+'');
  QUserInVisit.Open;
  if not QUserInVisit.IsEmpty then Result:=True else Result:=False;
end;

procedure TFWorkSheetBaseVisits.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TFWorkSheetBaseVisits.N2Click(Sender: TObject);
begin
  inherited;
   FWorkSheetAllRep:=TFWorkSheetAllRep.Create(Application);
   FWorkSheetAllRep.ShowModal;
end;

procedure TFWorkSheetBaseVisits.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  if not QSession.IsEmpty then
  begin
      FWorkSheetNews := TFWorkSheetNews.Create(Application);
      FWorkSheetNews.WorkSheetType:=2;
      FWorkSheetNews.WorkSheetID:=QSessionID.AsInteger;
      FWorkSheetNews.NewsTitle:=QSessionSubject.AsString;
      FWorkSheetNews.NewsContent:='œ⁄Ê  »Â „·«ﬁ«  »« òœ :' + IntToStr(QSessionID.AsInteger);
      FWorkSheetNews.ShowModal;
      OpenDataSets;
  end;
end;

procedure TFWorkSheetBaseVisits.DSFormDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  VisitUserOpen;
end;

procedure TFWorkSheetBaseVisits.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if UserInVisit then
  begin
    MssMessage1.DialogSize:=460;
    MssMessage1.MessageType:=MssError;
    MssMessage1.execute('«Ì‰ ò«—»— œ— ·Ì”  ‘—ò  ò‰‰œê«‰ œ— „·«ﬁ«  ÊÃÊœ œ«—œ');
  end
  else
  begin
   if not QSession.IsEmpty then
    if not Dm.QWorkSheetUsers.IsEmpty then
      if Dm.CheckTadakhol(QSessionYear_Shamsi.AsInteger,QSessionMonth_Shamsi.AsString,QSessionDay_Shamsi.AsInteger,QSessionBeginTimeToMinute.AsInteger,QSessionEndTimeToMinute.AsInteger,Dm.QWorkSheetUsersID.AsInteger,QSessionID.AsInteger) then
      begin
          MssMessage1.DialogSize:=460;
          MssMessage1.MessageType:=MssError;
          MssMessage1.execute('“„«‰ „·«ﬁ«  »—«Ì «Ì‰ ò«—»—  œ«Œ· œ«—œ');
      end
      else
      begin
         AddUserToVisit;
      end;
  end;
end;

procedure TFWorkSheetBaseVisits.SpeedButton13Click(Sender: TObject);
begin
  inherited;
  MssMessage1.DialogSize:=460;
  MssMessage1.MessageType:=MssConfirme;
  if UpperCase(MssMessage1.execute('¬Ì« ò«—»— „Ê—œ ‰Ÿ— «“ ·Ì”  Õ–› ‘Êœø'))=UpperCase('Ok') then
  begin
     if (QVisitUsersUserID.AsInteger=QSessionManagerUserID.AsInteger) then
     begin
        MssMessage1.DialogSize:=460;
        MssMessage1.MessageType:=MssError;
        MssMessage1.execute('ê—œ«‰‰œÂ ﬁ—«—„·«ﬁ«  —« ‰„Ì  Ê«‰ Õ–› ò—œ');
     end
     else
        dsVisitUsers.DataSet.Delete;
  end;
end;

procedure TFWorkSheetBaseVisits.N1Click(Sender: TObject);
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

procedure TFWorkSheetBaseVisits.MssDBGrid1DblClick(Sender: TObject);
begin
  inherited;
  SpeedButton1Click(Application);
end;

procedure TFWorkSheetBaseVisits.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFWorkSheetBaseVisits.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#27 then
  begin
      Key:=#0;
      SpeedButton4Click(Application);
  end;
end;

end.
