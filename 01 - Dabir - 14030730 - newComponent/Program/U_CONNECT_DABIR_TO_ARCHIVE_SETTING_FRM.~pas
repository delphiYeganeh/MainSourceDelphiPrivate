unit U_CONNECT_DABIR_TO_ARCHIVE_SETTING_FRM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,BusinessLayer,YShamsiDate,ShowmessageU,
  ExtCtrls, AdvGlowButton;

type
  TCONNECT_DABIR_TO_ARCHIVE_SETTING_FRM = class(TForm)
    Label1: TLabel;
    OK_BTN: TAdvGlowButton;
    BitBtn2: TAdvGlowButton;
    ARCHIVE_DB_NAME: TEdit;
    Label2: TLabel;
    ARCHIVE_SERVER_NAME: TEdit;
    chkConnect: TCheckBox;
    pnlMain: TPanel;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ARCHIVE_DB_NAMEChange(Sender: TObject);
    procedure OK_BTNClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CONNECT_DABIR_TO_ARCHIVE_SETTING_FRM: TCONNECT_DABIR_TO_ARCHIVE_SETTING_FRM;

implementation

uses  Dmu;

{$R *.dfm}

procedure TCONNECT_DABIR_TO_ARCHIVE_SETTING_FRM.BitBtn2Click(
  Sender: TObject);
begin
  Close;
end;

procedure TCONNECT_DABIR_TO_ARCHIVE_SETTING_FRM.FormShow(Sender: TObject);
begin
  OK_BTN.Enabled := False;

  ARCHIVE_DB_NAME.Text     := GetSystemSetting('ArchiveDBName');
  ARCHIVE_SERVER_NAME.Text := GetSystemSetting('ArchiveServerName');
  chkConnect.Checked := GetSystemSetting('ArchiveCheck');
end;

procedure TCONNECT_DABIR_TO_ARCHIVE_SETTING_FRM.ARCHIVE_DB_NAMEChange(
  Sender: TObject);
begin
  OK_BTN.Enabled := TRUE;
end;

function MessageShowString(AppMessage: String;ShowCancel:Boolean):Boolean;
begin
  ShowMessageF := TShowMessageF.Create(NIL);
  ShowMessageF.Label1.Caption:=AppMessage;
  ShowMessageF.ShowCancel:=ShowCancel;
  ShowMessageF.ShowModal;
  Result:=ShowMessageF.Done;
end;

procedure TCONNECT_DABIR_TO_ARCHIVE_SETTING_FRM.OK_BTNClick(Sender: TObject);
begin

  try
    SetSystemSetting('ArchiveServerName' , ARCHIVE_SERVER_NAME.Text);
    SetSystemSetting('ArchiveDBName'     , ARCHIVE_DB_NAME.Text);
    SetSystemSetting('ArchiveCheck'     , chkConnect.Checked);
    ShowMessage(' ‰ŸÌ„«  »« „Ê›ﬁÌ  œ— œÌ «»Ì” –ŒÌ—Â ê—œÌœ');
    MessageShowString('»Â „‰ŸÊ— «⁄„«·  €ÌÌ—«  œ— ‰—„ «›“«— „Ì »«Ì”  Ìò»«— «“ ‰—„ «›“«— Œ«—Ã ‘ÊÌœ Ê œÊ»«—Â Ê«—œ ‘ÊÌœ', False);
    Close;
  except
    ShowMessage('Œÿ« œ— –ŒÌ—Â  ‰ŸÌ„« ');
  end;
end;

end.
