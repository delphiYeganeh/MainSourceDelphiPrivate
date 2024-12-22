//Add Sanaye 950828
// €ÌÌ—«  ﬁ›· »—‰«„Â

unit untARMDongle;

interface

uses
    Forms,DB, AppEvnts, ADODB, ImgList, Controls, Classes,ComCtrls,SysUtils,Graphics,DBCtrls,YwhereEdit,
    variants,dialogs,dateutils,windows,Word2000, OleServer, ExtCtrls, WordXP,ActnList,YdbGrid, officeXP,
    uCiaTrayIcon, StdCtrls;

type
  TfrmARMDongle = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtAUSKey: TEdit;
    edtIPServer: TEdit;
    edtReadKey: TMemo;
    edtSafeKey1: TMemo;
    edtSafeKey2: TMemo;
    Label5: TLabel;
    Label6: TLabel;
    edtWriteKey: TMemo;
    btnOK: TButton;
    edtCoName: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    ckbxNewDongle: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure ckbxNewDongleClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmARMDongle: TfrmARMDongle;

implementation

{$R *.dfm}

uses yShamsiDate, Uconnect, LogOn, Settingsu, UMain, Registry,
     YInputQuery, businessLayer, ShowmessageU,
     BaseUnit, StrUtils, UchangePassword, OfficeCommandbarButton,
     LetterSigners, UaddLetterData, ARM_TLB, Dmu;

procedure TfrmARMDongle.FormShow(Sender: TObject);
begin
  edtCoName.Text := GetSystemSetting('ARM_CoName');
  edtIPServer.Text :=GetSystemSetting('ARM_IPServer');
  edtAUSKey.Text := GetSystemSetting('ARM_AUSKey');
  edtReadKey.Text := GetSystemSetting('ARM_ReadKey');
  edtWriteKey.Text := GetSystemSetting('ARM_WriteKey');
  edtSafeKey1.Text := GetSystemSetting('ARM_SafeKey1');
  edtSafeKey2.Text := GetSystemSetting('ARM_SafeKey2');
end;

procedure TfrmARMDongle.btnOKClick(Sender: TObject);
begin
  if MessageDlg('¬Ì« «“ ’Õ   ‰ŸÌ„«  ﬁ›· «ÿ„Ì‰«‰ œ«—Ìœø', mtInformation , [mbYes, mbNo], 0) = mrYes then
  begin
    SetSystemSetting('ARM_CoName', edtCoName.Text);
    SetSystemSetting('ARM_IPServer', edtIPServer.Text);
    SetSystemSetting('ARM_AUSKey', edtAUSKey.Text);
    SetSystemSetting('ARM_ReadKey', edtReadKey.Text);
    SetSystemSetting('ARM_WriteKey', edtWriteKey.Text);
    SetSystemSetting('ARM_SafeKey1', edtSafeKey1.Text);
    SetSystemSetting('ARM_SafeKey2', edtSafeKey2.Text);
    if ckbxNewDongle.Checked then
      SetSystemSetting('ARM_DongleType', '1')
    else
      SetSystemSetting('ARM_DongleType', '0');

    ShowMessage(' ‰ŸÌ„«  ﬁ›· »—«Ì »—‰«„Â –ŒÌ—Â ‘œ');
    Close;
  end;
end;

procedure TfrmARMDongle.ckbxNewDongleClick(Sender: TObject);
begin
  if ckbxNewDongle.Checked then
  begin
     edtCoName.Enabled := True;
     edtIPServer.Enabled := True;
     edtAUSKey.Enabled := True;
     edtReadKey.Enabled := True;
     edtWriteKey.Enabled := True;
     edtSafeKey1.Enabled := True;
     edtSafeKey2.Enabled := True;
  end
  else
  begin
     edtCoName.Enabled := False;
     edtIPServer.Enabled := False;
     edtAUSKey.Enabled := False;
     edtReadKey.Enabled := False;
     edtWriteKey.Enabled := False;
     edtSafeKey1.Enabled := False;
     edtSafeKey2.Enabled := False;
  end;
end;

end.
//End Sanaye...
