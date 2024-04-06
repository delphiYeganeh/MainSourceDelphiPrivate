 unit AddAccountAlarmU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ActnMan, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList,
  Buttons, DBActns, UemsVCL, Grids, DBGrids, YDbgrid, XPStyleActnCtrls,
  Menus, DB, ADODB, SolarCalendarPackage;

type
  TFrAddAccountAlarm = class(TYBaseForm)
    Panel2: TPanel;
    SearchEdit: TEdit;
    Label1: TLabel;
    PAccountDeatil: TPanel;
    Label2: TLabel;
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    DoBtn: TBitBtn;
    Panel3: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBMemo1: TDBMemo;
    DBEdit1: TSolarDatePicker;
    DBEdit2: TSolarDatePicker;
    BitBtn1: TBitBtn;
    procedure SearchEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Refreshalarm;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DoBtnClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrAddAccountAlarm: TFrAddAccountAlarm;
implementation

uses dmu, YShamsiDate, BusinessLayer, AccountDetailsU;
{$R *.dfm}

var  AccountID :integer;

procedure TFrAddAccountAlarm.SearchEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);

begin
  inherited;
  if key=13 then
    Refreshalarm
end;

procedure TFrAddAccountAlarm.RefreshAlarm;
begin
  AccountID:=Get_AccountID_ByAccountNo(SearchEdit.Text);
  if AccountID<0 then
  begin
    ShowMessage('Çíä ÍÓÇÈ ÈÓÊå ÔÏå ÇÓÊ');
    SearchEdit.SetFocus;
  end
  else
  if AccountID=0 then
  begin
    ShowMessage('Çíä ÔãÇÑå ÍÓÇÈ æÌæÏ äÏÇÑÏ');
    SearchEdit.SetFocus;
  end
  else
    with dm,Select_Account do
    begin
      FrAccountDetails.AccountID:=AccountID;
      Open_Account(AccountID);
      Edit;
    end;
end;

procedure TFrAddAccountAlarm.FormCreate(Sender: TObject);
begin
  inherited;
  FrAccountDetails:=TFrAccountDetails.Create(Application);
  FrAccountDetails.ShowInPanel( PAccountDeatil);
end;

procedure TFrAddAccountAlarm.BitBtn2Click(Sender: TObject);
begin
  inherited;
  Close
end;

procedure TFrAddAccountAlarm.DoBtnClick(Sender: TObject);
begin
  inherited;
  if dm.Select_Account.State in [dsInsert,dsEdit] then
    dm.Select_Account.Post;
end;

procedure TFrAddAccountAlarm.BitBtn1Click(Sender: TObject);
begin
  Inherited;
  if dm.Select_Account.State in [dsInsert,dsEdit] then
  begin
    dm.Select_AccountAlarmBeginDate.AsString:='';
    dm.Select_AccountAlarmEndDate.AsString:='';
    dm.Select_AccountAlarmText.AsString:='';
    dm.Select_Account.Post;
    dm.Select_Account.Edit;
  end;
end;

end.
