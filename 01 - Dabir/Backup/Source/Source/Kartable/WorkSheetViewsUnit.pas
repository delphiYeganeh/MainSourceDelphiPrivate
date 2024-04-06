unit WorkSheetViewsUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Menus, ExtActns, ActnList, DB, StdCtrls, Mask,
  ExtCtrls, Buttons, MssPanelPro, Grids, DBGrids, MssDBGrid, MssSearchPro,
  MssCalendarPro, ADODB, ADO_QExport3Dialog, MssExportToWord,
  MssExportToExcel, DBCtrls;

type
  TFWorkSheetViews = class(TMBaseForm)
    MssPanelPro1: TMssPanelPro;
    SpeedButton4: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Bevel1: TBevel;
    SpeedButton7: TSpeedButton;
    GroupBox1: TGroupBox;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    SpeedButton2: TSpeedButton;
    Label2: TLabel;
    edtFromDate: TMaskEdit;
    edtToDate: TMaskEdit;
    GroupBox2: TGroupBox;
    chkSession: TCheckBox;
    chkVisit: TCheckBox;
    chkTask: TCheckBox;
    MssExportToExcel1: TMssExportToExcel;
    MssExportToWord1: TMssExportToWord;
    QGetUserName: TADOQuery;
    QGetUserNameTitle: TWideStringField;
    MssCalendarPro1: TMssCalendarPro;
    MssSearchPro1: TMssSearchPro;
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
    QSessionsID_1: TAutoIncField;
    QSessionsWorkSheetBaseID: TIntegerField;
    QSessionsUserID: TIntegerField;
    QSessionslkwssUserID: TStringField;
    QSessionsDescription_1: TStringField;
    QSessionsAddedSubject: TStringField;
    QSessionsMustCome: TIntegerField;
    QSessionslkMustCome: TStringField;
    QSessionsUserResponse: TIntegerField;
    QSessionslkwssUserResponse: TStringField;
    QSessionsUserDescription: TStringField;
    QSessionsRegUserID_1: TIntegerField;
    QSessionslkwssRegUserID: TStringField;
    QSessionsRegDate_Shamsi_1: TStringField;
    QSessionsRegDate_Miladi_1: TStringField;
    QSessionsWithAlarm: TBooleanField;
    QSessionsID_2: TAutoIncField;
    QSessionsWorkSheetBaseID_1: TIntegerField;
    QSessionsUserID_1: TIntegerField;
    QSessionslkwsvUserID: TStringField;
    QSessionsDescription_2: TStringField;
    QSessionsUserResponse_1: TIntegerField;
    QSessionslkwsvUserResponse: TStringField;
    QSessionsUserDescription_1: TStringField;
    QSessionsRegUserID_2: TIntegerField;
    QSessionslkwsvRegUserID: TStringField;
    QSessionsRegDate_Shamsi_2: TStringField;
    QSessionsRegDate_Miladi_2: TStringField;
    QSessionsWithAlarm_1: TBooleanField;
    QSessionsID_3: TAutoIncField;
    QSessionsWorkSheetBaseID_2: TIntegerField;
    QSessionsDescription_3: TStringField;
    QSessionsStatus_1: TIntegerField;
    QSessionslkwstStatus: TStringField;
    QSessionsWithAlarm_2: TBooleanField;
    QSessionsRegUserID_3: TIntegerField;
    QSessionslkwstRegUserID: TStringField;
    QSessionsRegDate_Shamsi_3: TStringField;
    QSessionsRegDate_Miladi_3: TStringField;
    QSessionsUserID_2: TIntegerField;
    QSessionslkwstUserID: TStringField;
    QSessionsUserResponse_2: TIntegerField;
    QSessionslkwstUserResponse: TStringField;
    QSessionsUserDescription_2: TStringField;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    Word1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    MssPanelPro2: TMssPanelPro;
    MssDBGrid2: TMssDBGrid;
    SpeedButton5: TSpeedButton;
    QSessionsSendNews: TBooleanField;
    QSessionsMonshi: TIntegerField;
    QSessionsBeginTimeHour: TStringField;
    QSessionsBeginTimeMinute: TStringField;
    QSessionsEndTimeHour: TStringField;
    QSessionsEndTimeMinute: TStringField;
    QSessionsSendLetter: TBooleanField;
    QSessionsBeginTime: TStringField;
    QSessionsEndTime: TStringField;
    acEnableAnswer: TAction;
    QSessionslkMonshi: TStringField;
    MssDBGrid1: TMssDBGrid;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    procedure SpeedButton7Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure Word1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure chkSessionClick(Sender: TObject);
    procedure chkVisitClick(Sender: TObject);
    procedure chkTaskClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure acEnableAnswerExecute(Sender: TObject);
    procedure acEnableAnswerUpdate(Sender: TObject);
    procedure MssDBGrid2DblClick(Sender: TObject);
    procedure QSessionsAfterScroll(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    FWorkSheetID: Integer;
    procedure SetWorkSheetID(const Value: Integer);
    { Private declarations }
  public
    { Public declarations }
    property WorkSheetID:Integer read FWorkSheetID write SetWorkSheetID;
  end;

var
  FWorkSheetViews: TFWorkSheetViews;

implementation

uses Dmu, WorkSheetSessionResponseUnit, WorkSheetVisitResponseUnit,
  WorkSheetTaskResponseUnit, WSAllRepUnit;

{$R *.dfm}

procedure TFWorkSheetViews.SpeedButton7Click(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TFWorkSheetViews.Excel1Click(Sender: TObject);
begin
  inherited;
  MssExportToExcel1.DoExport;
end;

procedure TFWorkSheetViews.Word1Click(Sender: TObject);
begin
  inherited;
  MssExportToWord1.DoExport;
end;

procedure TFWorkSheetViews.N2Click(Sender: TObject);
begin
  inherited;
//  ADO_QExport3Dialog1.Execute;
end;

procedure TFWorkSheetViews.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  edtFromDate.Text:=MssCalendarPro1.Execute('/');
end;

procedure TFWorkSheetViews.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  edtToDate.Text:=MssCalendarPro1.Execute('/');
end;

procedure TFWorkSheetViews.chkSessionClick(Sender: TObject);
var
  i : Integer;
begin
  inherited;
  if chkSession.Checked then
  begin
     for  i:=0  to MssDBGrid1.Columns.Count-1 do
         if MssDBGrid1.Columns.Items[i].BandIndex=0 then
              MssDBGrid1.Columns.Items[i].Visible:=True;
  end
  else
  begin
     for  i:=0  to MssDBGrid1.Columns.Count-1 do
         if MssDBGrid1.Columns.Items[i].BandIndex=0 then
              MssDBGrid1.Columns.Items[i].Visible:=False;

  end;
end;

procedure TFWorkSheetViews.chkVisitClick(Sender: TObject);
var
  i : Integer;
begin
  inherited;
  if chkVisit.Checked then
  begin
     for  i:=0  to MssDBGrid1.Columns.Count-1 do
         if MssDBGrid1.Columns.Items[i].BandIndex=1 then
              MssDBGrid1.Columns.Items[i].Visible:=True;
  end
  else
  begin
     for  i:=0  to MssDBGrid1.Columns.Count-1 do
         if MssDBGrid1.Columns.Items[i].BandIndex=1 then
              MssDBGrid1.Columns.Items[i].Visible:=False;

  end;

end;

procedure TFWorkSheetViews.chkTaskClick(Sender: TObject);
var
  i : Integer;
begin
  inherited;
  if chkTask.Checked then
  begin
     for  i:=0  to MssDBGrid1.Columns.Count-1 do
         if MssDBGrid1.Columns.Items[i].BandIndex=2 then
              MssDBGrid1.Columns.Items[i].Visible:=True;
  end
  else
  begin
     for  i:=0  to MssDBGrid1.Columns.Count-1 do
         if MssDBGrid1.Columns.Items[i].BandIndex=2 then
              MssDBGrid1.Columns.Items[i].Visible:=False;

  end;
end;

procedure TFWorkSheetViews.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFWorkSheetViews.SpeedButton3Click(Sender: TObject);
var
  FromYear,FromMonth,FromDay,ToYear,ToMonth,ToDay:String;
  BeginTimeToMinute,EndTimeToMinute:Integer;
begin
  inherited;
  QSessions.Close;
  QSessions.SQL.Clear;
  QSessions.SQL.Add('SELECT wsb.*,wsb.BeginTimeHour+'':''+wsb.BeginTimeMinute AS ''BeginTime'',wsb.EndTimeHour+'':''+wsb.EndTimeMinute AS ''EndTime'',wss.*,wsv.*,wst.* FROM WorkSheet_Base wsb');
  QSessions.SQL.Add('LEFT JOIN WorkSheet_Sessions wss ON wsb.ID=wss.WorkSheetBaseID');
  QSessions.SQL.Add('LEFT JOIN WorkSheet_Tasks wst ON wsb.ID=wst.WorkSheetBaseID');
  QSessions.SQL.Add('LEFT JOIN WorkSheet_Visits wsv ON wsb.ID=wsv.WorkSheetBaseID');
  QSessions.SQL.Add('WHERE (1=1)');
  if edtFromDate.Text<>'    /  /  ' then  QSessions.SQL.Add('AND (wsb.Date_Shamsi>='''+edtFromDate.Text+''')');
  if edtToDate  .Text<>'    /  /  ' then  QSessions.SQL.Add('AND (wsb.Date_Shamsi<='''+edtToDate.Text+''')');

  QSessions.SQL.Add('AND ( (wss.UserID='+IntToStr(_UserID)+') or (wsv.UserID='+IntToStr(_UserID)+') or (wst.UserID='+IntToStr(_UserID)+') )');
 // ShowMessage(QSessions.SQL.Text);

  QSessions.Open;
end;

procedure TFWorkSheetViews.SetWorkSheetID(const Value: Integer);
begin
  FWorkSheetID := Value;
end;

procedure TFWorkSheetViews.FormShow(Sender: TObject);
var
  FromYear,FromMonth,FromDay,ToYear,ToMonth,ToDay:String;
  BeginTimeToMinute,EndTimeToMinute:Integer;
begin
  inherited;
  if WorkSheetID>0 then
  begin
      QSessions.Close;
      QSessions.SQL.Clear;
      QSessions.SQL.Add('SELECT wsb.*,wsb.BeginTimeHour+'':''+wsb.BeginTimeMinute AS ''BeginTime'',wsb.EndTimeHour+'':''+wsb.EndTimeMinute AS ''EndTime'',wss.*,wsv.*,wst.* FROM WorkSheet_Base wsb');
      QSessions.SQL.Add('LEFT JOIN WorkSheet_Sessions wss ON wsb.ID=wss.WorkSheetBaseID');
      QSessions.SQL.Add('LEFT JOIN WorkSheet_Tasks wst ON wsb.ID=wst.WorkSheetBaseID');
      QSessions.SQL.Add('LEFT JOIN WorkSheet_Visits wsv ON wsb.ID=wsv.WorkSheetBaseID');
      QSessions.SQL.Add('WHERE (1=1)');
      if edtFromDate.Text<>'    /  /  ' then  QSessions.SQL.Add('AND (wsb.Date_Shamsi>='''+edtFromDate.Text+''')');
      if edtToDate  .Text<>'    /  /  ' then  QSessions.SQL.Add('AND (wsb.Date_Shamsi<='''+edtToDate.Text+''')');

      QSessions.SQL.Add('AND (wsb.ID='+IntToStr(WorkSheetID)+')');
      QSessions.SQL.Add('AND ( (wss.UserID='+IntToStr(_UserID)+') or (wsv.UserID='+IntToStr(_UserID)+') or (wst.UserID='+IntToStr(_UserID)+') )');
     // ShowMessage(QSessions.SQL.Text);

      QSessions.Open;
  end;
end;

procedure TFWorkSheetViews.acEnableAnswerExecute(Sender: TObject);
begin
  inherited;
  if not QSessions.IsEmpty then
  begin
      case QSessionsType.AsInteger of
        1:// ÌÇÓå
          begin
              FWorkSheetSessionResponse:=TFWorkSheetSessionResponse.Create(Application);
              FWorkSheetSessionResponse.WorkSheetBaseID:=QSessionsID.AsInteger;
              FWorkSheetSessionResponse.ShowModal;
          end;
        2:// ãáÇÞÇÊ
          begin
              FWorkSheetVisitResponse:=TFWorkSheetVisitResponse.Create(Application);
              FWorkSheetVisitResponse.WorkSheetBaseID:=QSessionsID.AsInteger;
              FWorkSheetVisitResponse.ShowModal;
          end;
        3:// Task
          begin
              FWorkSheetTaskResponse:=TFWorkSheetTaskResponse.Create(Application);
              FWorkSheetTaskResponse.WorkSheetBaseID:=QSessionsID.AsInteger;
              FWorkSheetTaskResponse.ShowModal;
          end;
      end;
  end;
  DSForm.DataSet.Close;
  DSForm.DataSet.Open;
end;

procedure TFWorkSheetViews.acEnableAnswerUpdate(Sender: TObject);
begin
  inherited;
  if not QSessions.IsEmpty then
  begin
      if QSessionsManagerUserID.AsInteger=_UserID then
         acEnableAnswer.Enabled:=False
      else
         acEnableAnswer.Enabled:=True;
  end;
end;

procedure TFWorkSheetViews.MssDBGrid2DblClick(Sender: TObject);
begin
  inherited;
  if not QSessions.IsEmpty then
  begin
      case QSessionsType.AsInteger of
        1://ÌáÓå
          begin
                FWSAllRep:=TFWSAllRep.Create(Application);
                FWSAllRep.QSessionType:=1;
                FWSAllRep.ShowModal;
          end;
        2:// ÞÑÇÑ ãáÇÞÇÊ
          begin
                FWSAllRep:=TFWSAllRep.Create(Application);
                FWSAllRep.QSessionType:=2;
                FWSAllRep.ShowModal;
          end;
        3:// Task
          begin
                FWSAllRep:=TFWSAllRep.Create(Application);
                FWSAllRep.QSessionType:=3;
                FWSAllRep.ShowModal;
          end;
      end;
  end;  
end;

procedure TFWorkSheetViews.QSessionsAfterScroll(DataSet: TDataSet);
var
  i : Integer;
begin
  inherited;
  case QSessionsType.AsInteger of
    1:
      begin
         for  i:=0  to MssDBGrid1.Columns.Count-1 do
            if MssDBGrid1.Columns.Items[i].BandIndex=0 then
                 MssDBGrid1.Columns.Items[i].Visible:=True
            else
                 MssDBGrid1.Columns.Items[i].Visible:=False;
      end;
    2:
      begin
         for  i:=0  to MssDBGrid1.Columns.Count-1 do
            if MssDBGrid1.Columns.Items[i].BandIndex=1 then
                 MssDBGrid1.Columns.Items[i].Visible:=True
            else
                 MssDBGrid1.Columns.Items[i].Visible:=False;
      end;
    3:
      begin
         for  i:=0  to MssDBGrid1.Columns.Count-1 do
            if MssDBGrid1.Columns.Items[i].BandIndex=2 then
                 MssDBGrid1.Columns.Items[i].Visible:=True
            else
                 MssDBGrid1.Columns.Items[i].Visible:=False;
      end;
  end;
end;

procedure TFWorkSheetViews.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key=#27 then
  begin
      Key:=#0;
      SpeedButton4Click(Application);
  end;
end;

end.
