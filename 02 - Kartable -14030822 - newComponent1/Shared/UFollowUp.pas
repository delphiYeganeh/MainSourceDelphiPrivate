unit UFollowUp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, Buttons, DBCtrls, Mask, ExtActns, ActnList,
  DB, UemsVCL, ExtCtrls, Grids, DBGrids, YDbgrid, ADODB,  DBActns, Menus,
  AppEvnts, xpPanel, AdvGlowButton;

type
  TFrFollowUp = class(TMBaseForm)
    OpenDialog: TOpenDialog;
    GroupBox3: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit7: TDBShamsiDateEdit;
    DBEdit11: TDBEdit;
    FollowTypeCombo: TDBLookupComboBox;
    DBMemo1: TDBMemo;
    SpeedButton3: TAdvGlowButton;
    SpeedButton4: TAdvGlowButton;
    DayinWeek: TLabel;
    Select_FollowUp_ByStart: TADOStoredProc;
    Select_FollowUp_ByStartFollowUPID: TAutoIncField;
    Select_FollowUp_ByStartFollowUPTypeID: TIntegerField;
    Select_FollowUp_ByStartDoneStatusID: TWordField;
    Select_FollowUp_ByStartUserID: TIntegerField;
    Select_FollowUp_ByStartComment: TWideStringField;
    Select_FollowUp_ByStartToDoDate: TStringField;
    Select_FollowUp_ByStartToDoTime: TStringField;
    Select_FollowUp_ByStartDoneComment: TWideStringField;
    Select_FollowUp_ByStartHasAlarm: TBooleanField;
    Select_FollowUp_ByStartDoneStatusTitle: TStringField;
    Select_FollowUp_ByStartFollowupTypeTitle: TStringField;
    DataSetEdit1: TDataSetEdit;
    DataSetCancel1: TDataSetCancel;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetPost1: TDataSetPost;
    Panel2: TxpPanel;
    BitBtn2: TAdvGlowButton;
    CBNext: TComboBox;
    BitBtn3: TAdvGlowButton;
    Button2: TAdvGlowButton;
    BitBtn4: TAdvGlowButton;
    GroupBox2: TGroupBox;
    YDBGrid3: TYDBGrid;
    Select_FollowUp_ByStartStartFollowUpID: TIntegerField;
    Select_FollowUp_ByStartLetterid: TIntegerField;
    Button1: TAdvGlowButton;
    Panel3: TPanel;
    BitBtn1: TAdvGlowButton;
    pnlMain: TPanel;
    DonePanel: TxpPanel;
    DonePanel2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBMemo2: TDBMemo;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure refreshData;
    procedure BitBtn3Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBEdit7Change(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Select_FollowUp_ByStartAfterInsert(DataSet: TDataSet);
    procedure Select_FollowUp_ByStartAfterPost(DataSet: TDataSet);
    procedure Select_FollowUp_ByStartAfterCancel(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    StartFollowUpID: integer;
    LetterID: integer;
  end;

var
 FrFollowUp: TFrFollowUp;

implementation

uses dmu, YShamsiDate;

{$R *.dfm}

procedure TFrFollowUp.BitBtn1Click(Sender: TObject);
begin
  inherited;
  with Select_FollowUp_ByStart do
    if state in [dsedit,dsinsert] then
      if messageShowString('¬Ì« «ÿ·«⁄«  —« –ŒÌ—Â „Ì ò‰Ìœ',true) then
        Post;

  close;
end;

procedure TFrFollowUp.BitBtn2Click(Sender: TObject);
begin
  inherited;
  with Select_FollowUp_ByStart do
    if state in [dsedit,dsinsert] then
      Cancel;
end;

procedure TFrFollowUp.refreshData;
begin
   inherited;
   with Select_FollowUp_ByStart do
   begin
      Close;
      Parameters.ParamByName('@StartFollowUpID').Value := StartFollowUpID;
      Open;
   end;

   if Select_FollowUp_ByStartLetterid.AsInteger>0 then
      Caption:='ÅÌêÌ—Ì ‰«„Â';
end;

procedure TFrFollowUp.BitBtn3Click(Sender: TObject);
begin
  inherited;
  Select_FollowUp_ByStart.Edit;
end;

procedure TFrFollowUp.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  with dm,Select_FollowUp_ByStart do
  if state in [dsedit,dsinsert] then
    Select_FollowUp_ByStartToDoDate.Value := ShamsiIncDate(Select_FollowUp_ByStartToDoDate.Value,0,0,1);
end;

procedure TFrFollowUp.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  with dm,Select_FollowUp_ByStart do
    if state in [dsedit,dsinsert] then
      Select_FollowUp_ByStartToDoDate.Value:=ShamsiIncDate(Select_FollowUp_ByStartToDoDate.Value,0,0,-1);
end;

procedure TFrFollowUp.Button2Click(Sender: TObject);
begin
  inherited;
  if MessageDlg('Are you sure?',mtConfirmation,[mbyes,mbno],0)=mryes then
    Select_FollowUp_ByStart.Delete;
end;

procedure TFrFollowUp.DBEdit7Change(Sender: TObject);
begin
  inherited;
  if length(TDBEdit(Sender).Text)<>10 then
    exit;

  DayinWeek.Caption := Date_DayName(TDBEdit(Sender).Text);
end;

procedure TFrFollowUp.BitBtn4Click(Sender: TObject);
begin
  inherited;
  //Ranjbar
  if not (Select_FollowUp_ByStartFollowUPTypeID.AsInteger > 0) then
  begin
    MBaseForm.MessageShowString('·ÿ›« ›Ì·œ  "‰Ê⁄ «ﬁœ«„" —« „ﬁœ«— œÂÌ ‰„«ÌÌœ', False);
    Exit;
  end;
  //---
  DonePanel.Visible:=true;

  Select_FollowUp_ByStart.Post;
end;

procedure TFrFollowUp.Select_FollowUp_ByStartAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  DonePanel.Visible:=false;
  Select_FollowUp_ByStartToDoDate.Value:=_Today;
  Select_FollowUp_ByStartUserID.AsInteger:=_userid;
  Select_FollowUp_ByStartDoneStatusID.AsInteger:=1;
  Select_FollowUp_ByStartStartFollowUpID.AsInteger:=StartFollowUpID;
  Select_FollowUp_ByStartLetterid.AsInteger := LetterID;
end;

procedure TFrFollowUp.Select_FollowUp_ByStartAfterPost(DataSet: TDataSet);
begin
  inherited;
  DonePanel.Visible:=true;
end;

procedure TFrFollowUp.Select_FollowUp_ByStartAfterCancel(
  DataSet: TDataSet);
begin
  inherited;
  DonePanel.show;
end;

procedure TFrFollowUp.FormShow(Sender: TObject);
begin
  inherited;
  FollowTypeCombo.SetFocus;
end;

procedure TFrFollowUp.Button1Click(Sender: TObject);
begin
  inherited;

  if StartFollowUpID=0 then
  begin
    if (Select_FollowUp_ByStart.State  in [dsinsert,dsedit]) then
      Select_FollowUp_ByStart.Post;
    Select_FollowUp_ByStart.Edit;
    Select_FollowUp_ByStartStartFollowUpID.AsInteger:=Select_FollowUp_ByStartFollowUPID.AsInteger;
    StartFollowUpID:=Select_FollowUp_ByStartFollowUPID.AsInteger;
  end;

  with Dm,Select_FollowUp_ByStart do
  begin
    Insert;
    case CBNext.ItemIndex of
      0..4  : Select_FollowUp_ByStartToDoDate.Value:=ShamsiIncDate(_Today,0,0,CBNext.ItemIndex);
      5     : Select_FollowUp_ByStartToDoDate.Value:=ShamsiIncDate(_Today,0,0,8-Date_DayNumber(_Today));
      6     : Select_FollowUp_ByStartToDoDate.Value:=ShamsiIncDate(_Today,0,0,7);
      7     : Select_FollowUp_ByStartToDoDate.Value:=ShamsiIncDate(_Today,0,0,14);
      8     : Select_FollowUp_ByStartToDoDate.Value:=ShamsiIncDate(_Today,0,1,0);
    end;
    FollowTypeCombo.SetFocus;
  end;

end;

end.
