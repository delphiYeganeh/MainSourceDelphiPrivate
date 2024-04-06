unit SystemSetting;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, ComCtrls, DB,  Buttons, DBCtrls, ADODB,
  ActnList, ExtCtrls, ExtActns, Mask, Spin, xpWindow, xpBitBtn,FileCtrl;

type
  TSystemSettings = class(TMBaseForm)
    BitBtn1: TxpBitBtn;
    BitBtn2: TxpBitBtn;
    GroupBox5: TGroupBox;
    Label12: TLabel;
    EqualAnswerIndicatorlabel: TLabel;
    Label14: TLabel;
    Label1: TLabel;
    EqualAnswerIndicator: TCheckBox;
    BeginIndicator: TEdit;
    LetterHasArchiveCopy: TCheckBox;
    GroupBox6: TGroupBox;
    Label15: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    UserMemo: TEdit;
    DefaultPreCode: TEdit;
    ORGANAME: TEdit;
    AllowMultiUser: TCheckBox;
    RecommiteCopy: TCheckBox;
    UseTemplate: TCheckBox;
    ShowFarsiCaption: TCheckBox;
    GroupBox7: TGroupBox;
    Label26: TLabel;
    Label27: TLabel;
    Label32: TLabel;
    Label37: TLabel;
    Label5: TLabel;
    MaxNumber_Of_Letter: TEdit;
    DayInWeekForBackup: TComboBox;
    InsertLog: TCheckBox;
    FulltextSearch: TCheckBox;
    Refresh_PriodTime: TSpinEdit;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    maintablename: TDBLookupComboBox;
    codefield: TEdit;
    titlefield: TEdit;
    GroupBox2: TGroupBox;
    Label11: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    TransferPriod: TEdit;
    MaxSize: TEdit;
    Label16: TLabel;
    Uniqeindicator: TComboBox;
    Label17: TLabel;
    ServerID: TEdit;
    hasReplicate: TCheckBox;
    Label18: TLabel;
    ShowLifeTips: TCheckBox;
    Label19: TLabel;
    GroupBox3: TGroupBox;
    Label21: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    FaxExtention: TEdit;
    FaxUpdate: TCheckBox;
    FaxDirectory: TEdit;
    SpeedButton1: TSpeedButton;
    Label20: TLabel;
    FaxOrgID: TDBLookupComboBox;
   procedure GetFromDm;
   procedure SetFromDm;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure UniqeindicatorChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FaxDirectoryEnter(Sender: TObject);
    procedure FaxDirectoryExit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SystemSettings: TSystemSettings;

implementation

uses Dmu, colorSetting;

{$R *.dfm}

procedure TSystemSettings.GetFromDm;
begin
  inherited;

  MaxNumber_Of_Letter.Text:=Dm.GetSystemValue(2);
  BeginIndicator.Text:=Dm.GetSystemValue(3);
  EqualAnswerIndicator.Checked:=Dm.GetSystemValue(4);
  UniqeIndicator.ItemIndex:=Dm.GetSystemValue(5);
  DayInWeekForBackup.ItemIndex :=Dm.GetSystemValue(8);
  DefaultPreCode.Text:=dm.GetSystemValue(9) ;
  UserMemo.Text:=dm.GetSystemValue(15);
  ORGANAME.Text:=dm.GetSystemValue(16);
  FullTextSearch.Checked:=dm.GetSystemValue(17);
  LetterHasArchiveCopy.Checked:=dm.GetSystemValue(18);

  maintablename.KeyValue:=dm.GetSystemValue(24);
  FaxOrgID.KeyValue:=dm.GetSystemValue(9);

  titlefield.Text:=dm.GetSystemValue(25);
  codefield.Text:=dm.GetSystemValue(26);
  Refresh_PriodTime.Value:=dm.GetSystemValue(28);
  AllowMultiUser.Checked:=Dm.GetSystemValue(29);
  RecommiteCopy.Checked:=dm.GetSystemValue(30);
  UseTemplate.Checked:=Dm.GetSystemValue(31);
  InsertLog.Checked:=dm.GetSystemValue(32);
  ShowFarsiCaption.Checked:=dm.GetSystemValue(33);
  MaxSize.Text:=dm.GetSystemValue(42);
  TransferPriod.Text:=dm.GetSystemValue(41);
  ServerID.Text:=dm.GetSystemValue(34);
  hasReplicate.Checked:=dm.GetSystemValue(45);
  ShowLifeTips.Checked:=dm.GetSystemValue(43);

  FaxExtention.Text:=dm.GetSystemValue(21);
  FaxDirectory.Text:=dm.GetSystemValue(22);
  FaxUpdate.Checked:=dm.GetSystemValue(23);

end;

procedure TSystemSettings.SetFromDm;
begin
  inherited;

 dm.SetSystemValue(5,UniqeIndicator.ItemIndex);
 dm.SetSystemValue(4,EqualAnswerIndicator.Checked);
 dm.SetSystemValue(2,MaxNumber_Of_Letter.Text);
 dm.SetSystemValue(3,BeginIndicator.Text);
 dm.SetSystemValue(8,DayInWeekForBackup.ItemIndex);
 dm.SetSystemValue(9,DefaultPreCode.Text);
 dm.SetSystemValue(15,UserMemo.Text);
 dm.SetSystemValue(16,ORGANAME.Text);
 dm.SetSystemValue(17,FulltextSearch.Checked);
 dm.SetSystemValue(18,LetterHasArchiveCopy.Checked);

 dm.SetSystemValue(21,FaxExtention.Text);
 dm.SetSystemValue(22,FaxDirectory.Text);
 dm.SetSystemValue(23,FaxUpdate.Checked);

 dm.SetSystemValue(24,maintablename.KeyValue);
 dm.SetSystemValue(9,FaxOrgID.KeyValue);
 dm.SetSystemValue(25,titlefield.Text);
 dm.SetSystemValue(26,codefield.Text);


 dm.SetSystemValue(28,Refresh_PriodTime.Text);
 dm.SetSystemValue(29,AllowMultiUser.Checked);
 dm.SetSystemValue(30,RecommiteCopy.Checked);
 dm.SetSystemValue(31,UseTemplate.Checked);
 dm.SetSystemValue(32,InsertLog.Checked);
 dm.SetSystemValue(33,ShowFarsiCaption.Checked);
 dm.SetSystemValue(42,MaxSize.Text);
 dm.SetSystemValue(41,TransferPriod.Text);
 dm.SetSystemValue(34,ServerID.Text);
 dm.SetSystemValue(45,hasReplicate.Checked);
  dm.SetSystemValue(43,ShowLifeTips.Checked);
end;
procedure TSystemSettings.FormCreate(Sender: TObject);
begin
  inherited;
 dm.Signers.Open;
 GetFromDm;
UniqeindicatorChange(Uniqeindicator);
 with dm.Tables do
  if not Active then
   Open;
end;

procedure TSystemSettings.BitBtn1Click(Sender: TObject);
begin
  inherited;
SetFromDm;
dm.GetValues;
close;
end;

procedure TSystemSettings.SpeedButton2Click(Sender: TObject);
begin
  inherited;
 ColorSettingF:=TColorSettingF.Create(Application);
 ColorSettingF.ShowModal;
end;

procedure TSystemSettings.BitBtn2Click(Sender: TObject);
begin
  inherited;
close;
end;

procedure TSystemSettings.UniqeindicatorChange(Sender: TObject);
begin
  inherited;
if not Uniqeindicator.ItemIndex=1 then
 begin
  EqualAnswerIndicator.Checked:=false;
  EqualAnswerIndicator.Enabled:=false;
  EqualAnswerIndicatorlabel.Font.Color:=clGrayText;
 end
 else
 begin
  EqualAnswerIndicator.Enabled:=true;
  EqualAnswerIndicatorlabel.Font.Color:=clBlack;
 end
end;

procedure TSystemSettings.SpeedButton1Click(Sender: TObject);
 var s: string;
begin
  inherited;
if SelectDirectory('םַהו','c:',s) then
  FaxDirectory.Text:=s+'\';

end;

procedure TSystemSettings.FaxDirectoryEnter(Sender: TObject);
begin
  inherited;
ActivateKeyboardLayout(HKL_NEXT, KLF_REORDER);

end;

procedure TSystemSettings.FaxDirectoryExit(Sender: TObject);
begin
  inherited;
ActivateKeyboardLayout(HKL_NEXT, KLF_REORDER);

end;

end.
