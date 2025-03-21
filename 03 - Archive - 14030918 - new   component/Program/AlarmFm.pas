unit AlarmFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, CheckLst, YchecklistBox, UemsVCL, ComCtrls,
  wwriched, Mask, DBCtrls, Buttons, BaseUnit, xpWindow, ExtActns, ActnList,
  DB, AdvGlowButton, xpPanel, dxGDIPlusClasses;

type
  TFmAlarm = class(TMBaseForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBNav1: TDBNavigator;
    SpeedButton1: TAdvGlowButton;
    pnlMain: TPanel;
    GroupBox1: TGroupBox;
    ChLBUsers: TYchecklistBox;
    GroupBox2: TGroupBox;
    Panel3: TxpPanel;
    Label2: TLabel;
    DBETitle: TDBEdit;
    RichEdit1: TDBMemo;
    Panel4: TPanel;
    Label4: TLabel;
    DBEDateAlarm: TDBEdit;
    Label5: TLabel;
    DBETimeAlarm: TDBEdit;
    Panel5: TxpPanel;
    Label1: TLabel;
    DBEUsersTitle_LK: TDBEdit;
    Image1: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBNav1Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBNav1BeforeAction(Sender: TObject; Button: TNavigateBtn);
  private

  public
    LetterID : Integer;
  end;

var
  FmAlarm: TFmAlarm;

implementation

Uses AlarmDM,DMu,YShamsiDate, StrUtils;

{$R *.dfm}

procedure TFmAlarm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if DMAlarm.QrAlarm.State in [dsEdit,dsInsert] then
    if ShowMyMessage('�����','����� ����� � ������� �� ���� ������ �� ���� ��� ���� �� ����� ������� ����Ͽ',mbOKCancel,mtWarning)=mrok then
      DMAlarm.QrAlarm.Post
    else
      DMAlarm.QrAlarm.Cancel;

  Qry_CloseAllQry(DMAlarm);
  FreeAndNil(DMAlarm);
end;

procedure TFmAlarm.FormCreate(Sender: TObject);
begin
  inherited;
  DMAlarm := TDMAlarm.Create(Self);
  DBNav_Setup(DBNav1);
end;

procedure TFmAlarm.FormShow(Sender: TObject);
begin
  inherited;

  With DMAlarm do
  begin
    LetterID2 := Self.LetterID;
    QrUsers.Open;
    //ChLBUsers �� ���� ��� ������� �� �����
    ChLBUsers.Fill;

    QrAlarm.Close;
    QrAlarm.Parameters.ParamByName('LetterID').Value := Self.LetterID;
    QrAlarm.Parameters.ParamByName('UsersID').Value := _UserId;
    QrAlarm.Open;
    if QrAlarm.RecordCount = 0 then
      //QrAlarm.Insert;
      DBNav1.BtnClick(nbInsert);

    QrAlarm_Users.Close;
    QrAlarm_Users.Parameters.ParamByName('AlarmID').Value := QrAlarmAlarmID.AsInteger;
    QrAlarm_Users.Open;
    //AlarmUsers ������ ��� ������� �� ��� ����
    ChLB_SelectItemsFromTable(ChLBUsers,QrAlarm_Users,'UsersID');
  end;
end;

procedure TFmAlarm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  //DBNav1 �������� ������� ������ ���� ��� ��� � �����
  Form_SetShortCut(FmAlarm,DBNav1,nil,nil,Sender,Key,Shift);

  if Key = Vk_Return then
    SelectNext(ActiveControl as TWinControl,True,True);
end;

procedure TFmAlarm.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  Close;
end;


procedure TFmAlarm.DBNav1Click(Sender: TObject; Button: TNavigateBtn);
Var
  I : Integer;
begin
  inherited;

  With DMAlarm do
    if Button = nbPost then
    begin
      While QrAlarm_Users.RecordCount > 0 do
        QrAlarm_Users.Delete;

      for I:=0 to ChLBUsers.Items.Count -1 do
      begin
        //����� ������ ����� ��� ���� ����� ��� ���
        if ChLBUsers.Codes[I] = _UserId then
          ChLBUsers.Checked[I] := True;

        if ChLBUsers.Checked[I] then
        begin
          QrAlarm_Users.Insert;
          QrAlarm_UsersUsersID.AsInteger := ChLBUsers.Codes[I];
          QrAlarm_UsersAlarmID.AsInteger := QrAlarmAlarmID.AsInteger;
          QrAlarm_Users.Post;
        end;
      end;
    end;

    if Button in [nbInsert,nbEdit] then
    begin
      ChLBUsers.Enabled := True;
      DBETitle.SetFocus;
    end
    else
    begin
      if Button = nbDelete then
      begin
        ChLBUsers.Enabled := True;
        For I:=0 to ChLBUsers.Items.Count-1 do
          ChLBUsers.Checked[I] := False;
      end;
      //AlarmUsers ������ ��� ������� �� ��� ����
      ChLB_SelectItemsFromTable(ChLBUsers,DMAlarm.QrAlarm_Users,'UsersID');
      ChLBUsers.Enabled := False;
    end;
end;

procedure TFmAlarm.DBNav1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;
  if Button = nbPost then
  begin
    DBEUsersTitle_LK.Enabled :=  True;
    DBEUsersTitle_LK.SetFocus;
    DBEUsersTitle_LK.Enabled :=  False;
    if Time_IsTime(DMAlarm.QrAlarmTimeAlarm.AsString) = False then
    begin
      ShowMessage('����� ����� ����� ���� "����" ������ �� ���� � ���� ����� ������');
      DBETimeAlarm.SetFocus;
      Abort;
    end;
  end;
end;

end.
