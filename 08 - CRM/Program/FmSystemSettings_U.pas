unit FmSystemSettings_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Buttons, BaseUnit, ExtActns,
  ActnList, DB;

type
  TFmSystemSettings = class(TMBaseForm)
    Panel1: TPanel;
    Panel2: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label20: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    EdtFreeField01: TEdit;
    EdtFreeField02: TEdit;
    EdtFreeField03: TEdit;
    EdtFreeField04: TEdit;
    EdtFreeField05: TEdit;
    EdtFreeField06: TEdit;
    EdtFreeField07: TEdit;
    EdtFreeField08: TEdit;
    EdtFreeField09: TEdit;
    EdtFreeField10: TEdit;
    EdtFreeField11: TEdit;
    EdtFreeField12: TEdit;
    EdtFreeField13: TEdit;
    EdtFreeField14: TEdit;
    EdtFreeField15: TEdit;
    EdtFreeField16: TEdit;
    EdtFreeField17: TEdit;
    Label16: TLabel;
    SBOtherPerson: TSpeedButton;
    SpeedButton1: TSpeedButton;
    EdtFreeField18: TEdit;
    Label17: TLabel;
    TabSheet2: TTabSheet;
    Label18: TLabel;
    EdtSequenceTime: TEdit;
    Label19: TLabel;
    TabSheet3: TTabSheet;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    EdtFreeField19: TEdit;
    EdtFreeField20: TEdit;
    EdtFreeField21: TEdit;
    EdtFreeField22: TEdit;
    EdtFreeField23: TEdit;
    EdtFreeField24: TEdit;
    EdtFreeField26: TEdit;
    EdtFreeField27: TEdit;
    EdtFreeField28: TEdit;
    EdtFreeField25: TEdit;
    procedure SBOtherPersonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSystemSettings: TFmSystemSettings;

implementation

Uses BusinessLayer, dmu, MainU;

{$R *.dfm}

procedure TFmSystemSettings.FormShow(Sender: TObject);
begin
   inherited;
   EdtFreeField01.Text := GetSystemSetting('EdtFreeField01');
   EdtFreeField02.Text := GetSystemSetting('EdtFreeField02');
   EdtFreeField03.Text := GetSystemSetting('EdtFreeField03');
   EdtFreeField04.Text := GetSystemSetting('EdtFreeField04');
   EdtFreeField05.Text := GetSystemSetting('EdtFreeField05');
   EdtFreeField06.Text := GetSystemSetting('EdtFreeField06');
   EdtFreeField07.Text := GetSystemSetting('EdtFreeField07');
   EdtFreeField08.Text := GetSystemSetting('EdtFreeField08');
   EdtFreeField09.Text := GetSystemSetting('EdtFreeField09');
   EdtFreeField10.Text := GetSystemSetting('EdtFreeField10');
   EdtFreeField11.Text := GetSystemSetting('EdtFreeField11');
   EdtFreeField12.Text := GetSystemSetting('EdtFreeField12');
   EdtFreeField13.Text := GetSystemSetting('EdtFreeField13');
   EdtFreeField14.Text := GetSystemSetting('EdtFreeField14');
   EdtFreeField15.Text := GetSystemSetting('EdtFreeField15');
   EdtFreeField16.Text := GetSystemSetting('EdtFreeField16');
   EdtFreeField17.Text := GetSystemSetting('EdtFreeField17');
   EdtFreeField18.Text := GetSystemSetting('EdtFreeField18');
   EdtFreeField19.Text := GetSystemSetting('EdtFreeField19');
   EdtFreeField20.Text := GetSystemSetting('EdtFreeField20');
   EdtFreeField21.Text := GetSystemSetting('EdtFreeField21');
   EdtFreeField22.Text := GetSystemSetting('EdtFreeField22');
   EdtFreeField23.Text := GetSystemSetting('EdtFreeField23');
   EdtFreeField24.Text := GetSystemSetting('EdtFreeField24');
   EdtFreeField25.Text := GetSystemSetting('EdtFreeField25');
   EdtFreeField26.Text := GetSystemSetting('EdtFreeField26');
   EdtFreeField27.Text := GetSystemSetting('EdtFreeField27');
   EdtFreeField28.Text := GetSystemSetting('EdtFreeField28');
   EdtSequenceTime.Text := GetSystemSetting('EdtSequenceTime');
end;

procedure TFmSystemSettings.SBOtherPersonClick(Sender: TObject);
begin
   inherited;
   SetSystemSetting('EdtFreeField01',EdtFreeField01.Text);
   SetSystemSetting('EdtFreeField02',EdtFreeField02.Text);
   SetSystemSetting('EdtFreeField03',EdtFreeField03.Text);
   SetSystemSetting('EdtFreeField04',EdtFreeField04.Text);
   SetSystemSetting('EdtFreeField05',EdtFreeField05.Text);
   SetSystemSetting('EdtFreeField06',EdtFreeField06.Text);
   SetSystemSetting('EdtFreeField07',EdtFreeField07.Text);
   SetSystemSetting('EdtFreeField08',EdtFreeField08.Text);
   SetSystemSetting('EdtFreeField09',EdtFreeField09.Text);
   SetSystemSetting('EdtFreeField10',EdtFreeField10.Text);
   SetSystemSetting('EdtFreeField11',EdtFreeField11.Text);
   SetSystemSetting('EdtFreeField12',EdtFreeField12.Text);
   SetSystemSetting('EdtFreeField13',EdtFreeField13.Text);
   SetSystemSetting('EdtFreeField14',EdtFreeField14.Text);
   SetSystemSetting('EdtFreeField15',EdtFreeField15.Text);
   SetSystemSetting('EdtFreeField16',EdtFreeField16.Text);
   SetSystemSetting('EdtFreeField17',EdtFreeField17.Text);
   SetSystemSetting('EdtFreeField18',EdtFreeField18.Text);
   SetSystemSetting('EdtFreeField19',EdtFreeField19.Text);
   SetSystemSetting('EdtFreeField20',EdtFreeField20.Text);
   SetSystemSetting('EdtFreeField21',EdtFreeField21.Text);
   SetSystemSetting('EdtFreeField22',EdtFreeField22.Text);
   SetSystemSetting('EdtFreeField23',EdtFreeField23.Text);
   SetSystemSetting('EdtFreeField24',EdtFreeField24.Text);
   SetSystemSetting('EdtFreeField25',EdtFreeField25.Text);
   SetSystemSetting('EdtFreeField26',EdtFreeField26.Text);
   SetSystemSetting('EdtFreeField27',EdtFreeField27.Text);
   SetSystemSetting('EdtFreeField28',EdtFreeField28.Text);
   SetSystemSetting('EdtSequenceTime',EdtSequenceTime.Text);

   _ActiveUserRefreshTime:=StrToInt(Trim(EdtSequenceTime.Text));
   MainForm.SetActiveUser.Enabled:=False;
   MainForm.SetActiveUser.Interval:=_ActiveUserRefreshTime;
   MainForm.SetActiveUser.Enabled:=True;

   Close;
end;

procedure TFmSystemSettings.SpeedButton1Click(Sender: TObject);
begin
   inherited;
   Close;
end;

procedure TFmSystemSettings.PageControl1Change(Sender: TObject);
begin
  inherited;
  with dm do
  begin
    if PageControl1.activePageIndex= 1 then
      if _UserTypeID<>1 then
        begin
          ShowMessage('��� ���� �� ������ ��� ����');
          PageControl1.ActivePageIndex:=0;
        end;
  end;

end;

procedure TFmSystemSettings.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  { TODO -oparsa : 14030203 }
  if (NewWidth < 661)  or (NewHeight < 397) then
    Resize := False
  else Resize := True;
   { TODO -oparsa : 14030203 }
  inherited;

end;

end.
