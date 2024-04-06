unit Report_userLog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, YWhereEdit, xpWindow, ExtActns, ActnList, DB,
  ExtCtrls, xpBitBtn, Grids, DBGrids, YDbgrid, ADODB, Buttons, DBCtrls,
  Spin;

type
  TFrReport_userLog = class(TMBaseForm)
    YDBGrid1: TYDBGrid;
    Panel1: TPanel;
    Report_UserLog: TADOStoredProc;
    Label27: TLabel;
    Label13: TLabel;
    Label3: TLabel;
    YWhereEdit27: TYWhereEdit;
    YWhereEdit11: TYWhereEdit;
    YWhereEdit3: TYWhereEdit;
    Label1: TLabel;
    Label2: TLabel;
    YWhereEdit2: TYWhereEdit;
    Label11: TLabel;
    YWhereEdit13: TYWhereEdit;
    Panel2: TPanel;
    Number: TLabel;
    MakeRep: TBitBtn;
    Button6: TBitBtn;
    Button3: TBitBtn;
    Button4: TBitBtn;
    Button5: TBitBtn;
    SpeedButton4: TSpeedButton;
    SpeedButton1: TSpeedButton;
    dblActions: TDBLookupComboBox;
    qryActions: TADOQuery;
    qryActionsFormTag: TWordField;
    qryActionsActionName: TWideStringField;
    qryActionsTitle: TWideStringField;
    dsActions: TDataSource;
    Label4: TLabel;
    SpinEdit1: TSpinEdit;
    SpeedButton2: TSpeedButton;
    YWhereEdit1: TYWhereEdit;
    Label5: TLabel;
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    function  Where:string;
    procedure MakeRepClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure YDBGrid1MouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RenameLables();
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrReport_userLog: TFrReport_userLog;

implementation

uses
  Dmu, FromOrgU, businessLayer,yShamsiDate, URenameColumn, UMain;

{$R *.dfm}

function TFrReport_userLog.Where:string;
var
  i: byte;
begin
  for i:=0 to ComponentCount-1 do
    if Components[i].ClassNameIs('TYWhereEdit') then
      if TYWhereEdit(Components[i]).Resultwhere <>'' then
        Result:=Result+' and '+TYWhereEdit(Components[i]).Resultwhere+'';

  if dblActions.Text<>'' then
    Result := Result+' and UserLog.ActionName = '''+qryActionsActionName.AsString+'''';

  if Result<>'' then
    Result:=copy(Result,6,length(Result)-5);
end;


procedure TFrReport_userLog.Button4Click(Sender: TObject);
begin
  inherited;
  YDBGrid1.ExportToExcel;
end;

procedure TFrReport_userLog.Button3Click(Sender: TObject);
begin
  inherited;
  YDBGrid1.ExportToWord;
end;

procedure TFrReport_userLog.Button6Click(Sender: TObject);
begin
  inherited;
  YDBGrid1.CustomizePrint;
end;

procedure TFrReport_userLog.MakeRepClick(Sender: TObject);
begin
  inherited;
  {with Report_UserLog,Parameters do
  begin
    close;
    if MainForm.searchAll.Checked then
    begin
      ParamByName('@SecretariatID').Value:=0;
      ParamByName('@myear').Value:= 0;
    end
    else
    begin
      ParamByName('@SecretariatID').Value:= dm.SecID;
      ParamByName('@myear').Value:=dm.CurrentMyear;
    end;
    ParamByName('@where').Value:= where;
    ParamByName('@topCnt').Value:= StrToInt(SpinEdit1.Text);
    if Trim(YWhereEdit1.Text) = '' then
      ParamByName('@IncommingNO').Value:= '0'
    else
      ParamByName('@IncommingNO').Value:= YWhereEdit1.Text;
    Report_UserLog.
    Open;
    Number.Caption:=' ⁄œ«œ  : '+ IntToStr(RecordCount)
  end;
  }
  Report_UserLog.Close;
  if MainForm.searchAll.Checked then
  begin
    Report_UserLog.Parameters.ParamByName('@SecretariatID').Value:=0;
    Report_UserLog.Parameters.ParamByName('@myear').Value:= 0;
  end
  else
  begin
    Report_UserLog.Parameters.ParamByName('@SecretariatID').Value:= dm.SecID;
    Report_UserLog.Parameters.ParamByName('@myear').Value:=dm.CurrentMyear;
  end;
  Report_UserLog.Parameters.ParamByName('@where').Value:= where;
  Report_UserLog.Parameters.ParamByName('@topCnt').Value:= StrToInt(SpinEdit1.Text);
  { if Trim(YWhereEdit1.Text) = '' then
      Report_UserLog.Parameters.ParamByName('@IncommingNO').Value:= '0'
   else
      Report_UserLog.Parameters.ParamByName('@IncommingNO').Value:= YWhereEdit1.Text;}
  Report_UserLog.Open;
  Number.Caption:=' ⁄œ«œ  : '+ IntToStr(Report_UserLog.RecordCount);
end;

procedure TFrReport_userLog.Button5Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFrReport_userLog.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  //‘»ÌÂ ”«“Ì ’›ÕÂ ﬂÌ»—œ
  Keyboard_Simulation(YWhereEdit11,VK_SPACE,True,False,False);
end;

procedure TFrReport_userLog.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  //‘»ÌÂ ”«“Ì ’›ÕÂ ﬂÌ»—œ
  Keyboard_Simulation(YWhereEdit27,VK_SPACE,True,False,False);
end;

procedure TFrReport_userLog.YDBGrid1MouseWheel(Sender: TObject;
  Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
  var Handled: Boolean);
begin
  inherited;
  {Ranjbar 89.06.23 ID=69}
  if Report_UserLog.IsEmpty then
    Abort;
  //---
end;

procedure TFrReport_userLog.FormShow(Sender: TObject);
begin
  inherited;
  // Label13.Caption := 'ò«—»—';
{  YDBGrid1.Columns.Items[0].Title.Caption := 'ò«—»—';
  YDBGrid1.Columns.Items[3].Title.Caption :=  ' «—ÌŒ';}
  if FileExists(_AppPath+'UserFolder\Bilan.Cfg') then
    YDBGrid1.Columns.LoadFromFile(_AppPath+'UserFolder\Bilan.Cfg');
  LoadColumnTitlesFromDB(FrReport_userLog.Name,YDBGrid1);

  RenameLables();
  qryActions.Open;
end;

procedure TFrReport_userLog.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  SaveColumnTitlesToDB(FrReport_userLog.Name,YDBGrid1);
  YDBGrid1.Columns.SaveToFile(_AppPath+'UserFolder\Bilan.Cfg');
end;

procedure TFrReport_userLog.RenameLables;
begin
{   Label13.Caption := YDBGrid1.Columns.Items[0].Title.Caption;
   Label1.Caption := YDBGrid1.Columns.Items[1].Title.Caption;
   Label27.Caption := YDBGrid1.Columns.Items[2].Title.Caption;
   Label2.Caption := YDBGrid1.Columns.Items[3].Title.Caption;
   Label3.Caption := YDBGrid1.Columns.Items[5].Title.Caption;
//   Label11.Caption := YDBGrid1.Columns.Items[6].Title.Caption;}
  if Trim(dm.GetSystemValue(54)) = '' then
  begin
    Label11.Caption := 'Œ·«’Â ”‰œ';
    YDBGrid1.Columns.Items[6].Title.Caption:= Label11.Caption;
  end
  else
  begin
    Label11.Caption := Trim(dm.GetSystemValue(54));
    YDBGrid1.Columns.Items[6].Title.Caption:= Label11.Caption;
  end;

  if Trim(dm.GetSystemValue(52)) = '' then
  begin
    Label5.Caption := ' ‘„«—Â ”‰œ';
    YDBGrid1.Columns.Items[8].Title.Caption:= Label5.Caption; //' ‘„«—Â ' + Label11.Caption;
    YDBGrid1.Columns.Items[9].Title.Caption:= ' «—ÌŒ ”‰œ' //' ‘„«—Â ' + Label11.Caption;
  end
  else
  begin
    Label5.Caption := Trim(dm.GetSystemValue(52));
    YDBGrid1.Columns.Items[8].Title.Caption:= Label5.Caption;//' ‘„«—Â ' +Label11.Caption;
    YDBGrid1.Columns.Items[9].Title.Caption:= '  «—ÌŒ ' +Trim(dm.GetSystemValue(52)) ; //' ‘„«—Â ' + Label11.Caption;
  end
end;

procedure TFrReport_userLog.SpeedButton2Click(Sender: TObject);
var
  i: integer;
begin
  inherited;
  FmRenameColumn := TFmRenameColumn.Create(nil);
  FmRenameColumn.ComboBox1.Items.Clear;
  for i :=0 to YDBGrid1.Columns.Count -1 do
    FmRenameColumn.ComboBox1.Items.Add(YDBGrid1.Columns.Items[i].Title.Caption);
  FmRenameColumn.ShowModal;
  YDBGrid1.Columns.Items[FmRenameColumn.OldID].Title.Caption := FmRenameColumn.NewName;
  RenameLables();
end;

procedure TFrReport_userLog.FormCreate(Sender: TObject);
begin
  inherited;
  if dm.YeganehConnection.Execute('Select accessID from users where id='+IntToStr(_Userid)).Fields[0].Value = 1 then
    SpeedButton2.Visible := true;
end;

end.
