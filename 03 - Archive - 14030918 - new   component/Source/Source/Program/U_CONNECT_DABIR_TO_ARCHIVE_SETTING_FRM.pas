unit U_CONNECT_DABIR_TO_ARCHIVE_SETTING_FRM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,BusinessLayer,YShamsiDate,ShowmessageU;

type
  TCONNECT_DABIR_TO_ARCHIVE_SETTING_FRM = class(TForm)
    Label1: TLabel;
    OK_BTN: TBitBtn;
    BitBtn2: TBitBtn;
    ARCHIVE_DB_NAME: TEdit;
    Label2: TLabel;
    ARCHIVE_SERVER_NAME: TEdit;
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

{$R *.dfm}

procedure TCONNECT_DABIR_TO_ARCHIVE_SETTING_FRM.BitBtn2Click(
  Sender: TObject);
begin
CLOSE;
end;

procedure TCONNECT_DABIR_TO_ARCHIVE_SETTING_FRM.FormShow(Sender: TObject);
begin
OK_BTN.Enabled := False;

ARCHIVE_DB_NAME.Text     := GetSystemSetting('ArchiveDBName');
ARCHIVE_SERVER_NAME.Text := GetSystemSetting('ArchiveServerName');
end;

procedure TCONNECT_DABIR_TO_ARCHIVE_SETTING_FRM.ARCHIVE_DB_NAMEChange(
  Sender: TObject);
begin
OK_BTN.Enabled := TRUE;
end;

Function MessageShowString(AppMessage: string;ShowCancel:boolean):boolean;
begin
  ShowMessageF := TShowMessageF.Create(NIL);
  ShowMessageF.Label1.Caption:=AppMessage;
  ShowMessageF.ShowCancel:=ShowCancel;
  ShowMessageF.ShowModal;
  Result:=ShowMessageF.Done;
end;

procedure TCONNECT_DABIR_TO_ARCHIVE_SETTING_FRM.OK_BTNClick(
  Sender: TObject);
begin

TRY
SetSystemSetting('ArchiveServerName' , ARCHIVE_SERVER_NAME.Text);
SetSystemSetting('ArchiveDBName'     , ARCHIVE_DB_NAME.Text);
ShowMessage(' ‰ŸÌ„«  »« „Ê›ﬁÌ  œ— œÌ «»Ì” –ŒÌ—Â ê—œÌœ');
MessageShowString('»Â „‰ŸÊ— «⁄„«·  €ÌÌ—«  œ— ‰—„ «›“«— „Ì »«Ì”  Ìò»«— «“ ‰—„ «›“«— Œ«—Ã ‘ÊÌœ Ê œÊ»«—Â Ê«—œ ‘ÊÌœ', False);
CLOSE;
EXCEPT
ShowMessage('Œÿ« œ— –ŒÌ—Â  ‰ŸÌ„« ');
END;

end;

end.
