unit WorkSheetAllRepUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Menus, ExtActns, ActnList, DB, ExtCtrls, MssPanelPro,
  StdCtrls, Buttons, MssCalendarPro, Mask, MssSearchPro, ADODB, Grids,
  DBGrids, MssDBGrid, MssExportToWord, MssExportToExcel, ADO_QExport3Dialog, AdvGlowButton;

type
  TFWorkSheetAllRep = class(TMBaseForm)
    MssPanelPro1: TMssPanelPro;
    MssPanelPro2: TMssPanelPro;
    MssCalendarPro1: TMssCalendarPro;
    MssSearchPro1: TMssSearchPro;
    QGetUserName: TADOQuery;
    QGetUserNameTitle: TWideStringField;
    SpeedButton4: TAdvGlowButton;
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
    MssDBGrid2: TMssDBGrid;
    GroupBox1: TGroupBox;
    SpeedButton1: TAdvGlowButton;
    edtFromDate: TMaskEdit;
    Label1: TLabel;
    SpeedButton2: TAdvGlowButton;
    edtToDate: TMaskEdit;
    Label2: TLabel;
    QSessionsDate_Shamsi: TStringField;
    QSessionsDate_Miladi: TStringField;
    QSessionsID_1: TAutoIncField;
    QSessionsWorkSheetBaseID: TIntegerField;
    QSessionsUserID: TIntegerField;
    QSessionsDescription_1: TStringField;
    QSessionsAddedSubject: TStringField;
    QSessionsMustCome: TIntegerField;
    QSessionsUserResponse: TIntegerField;
    QSessionsUserDescription: TStringField;
    QSessionsRegUserID_1: TIntegerField;
    QSessionsRegDate_Shamsi_1: TStringField;
    QSessionsRegDate_Miladi_1: TStringField;
    QSessionsWithAlarm: TBooleanField;
    QSessionsID_2: TAutoIncField;
    QSessionsWorkSheetBaseID_1: TIntegerField;
    QSessionsUserID_1: TIntegerField;
    QSessionsDescription_2: TStringField;
    QSessionsUserResponse_1: TIntegerField;
    QSessionsUserDescription_1: TStringField;
    QSessionsRegUserID_2: TIntegerField;
    QSessionsRegDate_Shamsi_2: TStringField;
    QSessionsRegDate_Miladi_2: TStringField;
    QSessionsWithAlarm_1: TBooleanField;
    QSessionsID_3: TAutoIncField;
    QSessionsWorkSheetBaseID_2: TIntegerField;
    QSessionsDescription_3: TStringField;
    QSessionsStatus_1: TIntegerField;
    QSessionsWithAlarm_2: TBooleanField;
    QSessionsRegUserID_3: TIntegerField;
    QSessionsRegDate_Shamsi_3: TStringField;
    QSessionsRegDate_Miladi_3: TStringField;
    QSessionsUserID_2: TIntegerField;
    QSessionsUserResponse_2: TIntegerField;
    QSessionsUserDescription_2: TStringField;
    QSessionslkwssUserID: TStringField;
    QSessionslkwsvUserID: TStringField;
    QSessionslkwstUserID: TStringField;
    QSessionslkwssRegUserID: TStringField;
    QSessionslkMustCome: TStringField;
    QSessionslkwssUserResponse: TStringField;
    QSessionslkwsvUserResponse: TStringField;
    QSessionslkwsvRegUserID: TStringField;
    QSessionslkwstRegUserID: TStringField;
    QSessionslkwstUserResponse: TStringField;
    QSessionslkwstStatus: TStringField;
    MssExportToExcel1: TMssExportToExcel;
    MssExportToWord1: TMssExportToWord;
    SpeedButton3: TAdvGlowButton;
    Bevel1: TBevel;
    GroupBox2: TGroupBox;
    chkSession: TCheckBox;
    chkVisit: TCheckBox;
    chkTask: TCheckBox;
    ADO_QExport3Dialog1: TADO_QExport3Dialog;
    SpeedButton7: TAdvGlowButton;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    Word1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    QSessionsSendNews: TBooleanField;
    QSessionsMonshi: TIntegerField;
    QSessionsBeginTimeHour: TStringField;
    QSessionsBeginTimeMinute: TStringField;
    QSessionsEndTimeHour: TStringField;
    QSessionsEndTimeMinute: TStringField;
    QSessionsBeginTime: TStringField;
    QSessionsEndTime: TStringField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure QSessionsAfterInsert(DataSet: TDataSet);
    procedure SpeedButton7Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure Word1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure chkSessionClick(Sender: TObject);
    procedure chkVisitClick(Sender: TObject);
    procedure chkTaskClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QSessionsBeforeInsert(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FWorkSheetAllRep: TFWorkSheetAllRep;

implementation

uses Dmu;

{$R *.dfm}

procedure TFWorkSheetAllRep.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  edtFromDate.Text:=MssCalendarPro1.Execute('/');
end;

procedure TFWorkSheetAllRep.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  edtToDate.Text:=MssCalendarPro1.Execute('/');
end;

procedure TFWorkSheetAllRep.FormShow(Sender: TObject);
var
  p : String;
begin
  inherited;
  edtFromDate.Text:='';
  edtToDate.Text:='';
  p:=ExtractFilePath(Application.ExeName)+ 'UserFolder\WorkSheetAllRep.cfg';
  if FileExists(p) then
  begin
      MssDBGrid2.Columns.LoadFromFile(p);
  end;
end;

procedure TFWorkSheetAllRep.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFWorkSheetAllRep.SpeedButton3Click(Sender: TObject);
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

 // ShowMessage(QSessions.SQL.Text);

  QSessions.Open;
end;

procedure TFWorkSheetAllRep.QSessionsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.Cancel;
end;

procedure TFWorkSheetAllRep.SpeedButton7Click(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TFWorkSheetAllRep.Excel1Click(Sender: TObject);
begin
  inherited;
  MssExportToExcel1.DoExport;
end;

procedure TFWorkSheetAllRep.Word1Click(Sender: TObject);
begin
  inherited;
  MssExportToWord1.DoExport;
end;

procedure TFWorkSheetAllRep.N2Click(Sender: TObject);
begin
  inherited;
  ADO_QExport3Dialog1.Execute;
end;

procedure TFWorkSheetAllRep.chkSessionClick(Sender: TObject);
var
  i : Integer;
begin
  inherited;
  if chkSession.Checked then
  begin
     for  i:=0  to MssDBGrid2.Columns.Count-1 do
         if MssDBGrid2.Columns.Items[i].BandIndex=0 then
              MssDBGrid2.Columns.Items[i].Visible:=True;
  end
  else
  begin
     for  i:=0  to MssDBGrid2.Columns.Count-1 do
         if MssDBGrid2.Columns.Items[i].BandIndex=0 then
              MssDBGrid2.Columns.Items[i].Visible:=False;

  end;
end;

procedure TFWorkSheetAllRep.chkVisitClick(Sender: TObject);
var
  i : Integer;
begin
  inherited;
  if chkVisit.Checked then
  begin
     for  i:=0  to MssDBGrid2.Columns.Count-1 do
         if MssDBGrid2.Columns.Items[i].BandIndex=1 then
              MssDBGrid2.Columns.Items[i].Visible:=True;
  end
  else
  begin
     for  i:=0  to MssDBGrid2.Columns.Count-1 do
         if MssDBGrid2.Columns.Items[i].BandIndex=1 then
              MssDBGrid2.Columns.Items[i].Visible:=False;

  end;
end;

procedure TFWorkSheetAllRep.chkTaskClick(Sender: TObject);
var
  i : Integer;
begin
  inherited;
  if chkTask.Checked then
  begin
     for  i:=0  to MssDBGrid2.Columns.Count-1 do
         if MssDBGrid2.Columns.Items[i].BandIndex=2 then
              MssDBGrid2.Columns.Items[i].Visible:=True;
  end
  else
  begin
     for  i:=0  to MssDBGrid2.Columns.Count-1 do
         if MssDBGrid2.Columns.Items[i].BandIndex=2 then
              MssDBGrid2.Columns.Items[i].Visible:=False;

  end;
end;

procedure TFWorkSheetAllRep.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key=#27 then
  begin
      Key:=#0;
      SpeedButton4Click(Application);
  end;
end;

procedure TFWorkSheetAllRep.QSessionsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.Cancel;
end;

procedure TFWorkSheetAllRep.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  p : String;
begin
  inherited;
  p:=ExtractFilePath(Application.ExeName)+ 'UserFolder\WorkSheetAllRep.cfg';
  MssDBGrid2.Columns.SaveToFile(p);
end;

end.
