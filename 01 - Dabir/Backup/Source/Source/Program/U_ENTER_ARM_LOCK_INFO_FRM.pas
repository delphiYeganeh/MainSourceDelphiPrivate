unit U_ENTER_ARM_LOCK_INFO_FRM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB,BusinessLayer, Mask, AdvEdit,
  AdvIPEdit;

type
  TENTER_ARM_LOCK_INFO_FRM = class(TForm)
    Label1: TLabel;
    ARM_AUSKey: TEdit;
    Label2: TLabel;
    ARM_ReadKey: TEdit;
    Label3: TLabel;
    ARM_WriteKey: TEdit;
    Label4: TLabel;
    ARM_SafeKey1: TEdit;
    Label5: TLabel;
    ARM_SafeKey2: TEdit;
    Label6: TLabel;
    ARM_DongleType: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label7: TLabel;
    ARM_IPServer: TAdvIPEdit;
    Label8: TLabel;
    ARM_OSVersion: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ENTER_ARM_LOCK_INFO_FRM: TENTER_ARM_LOCK_INFO_FRM;

implementation

uses Dmu;

{$R *.dfm}

procedure TENTER_ARM_LOCK_INFO_FRM.FormShow(Sender: TObject);
begin
ARM_IPServer.IPAddress   := GetSystemSetting('ARM_IPServer')  ;
ARM_AUSKey.Text          := GetSystemSetting('ARM_AUSKey')    ;
ARM_ReadKey.Text         := GetSystemSetting('ARM_ReadKey')   ;
ARM_WriteKey.Text        := GetSystemSetting('ARM_WriteKey')  ;
ARM_SafeKey1.Text        := GetSystemSetting('ARM_SafeKey1')  ;
ARM_SafeKey2.Text        := GetSystemSetting('ARM_SafeKey2')  ;
ARM_DongleType.Text      := GetSystemSetting('ARM_DongleType');
ARM_OSVersion.Text       := GetSystemSetting('ARM_OSVersion') ;
end;

procedure TENTER_ARM_LOCK_INFO_FRM.BitBtn2Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TENTER_ARM_LOCK_INFO_FRM.BitBtn1Click(Sender: TObject);
begin

TRY
SetSystemSetting('ARM_IPServer'  ,ARM_IPServer.IPAddress);
SetSystemSetting('ARM_AUSKey'    ,ARM_AUSKey.Text);
SetSystemSetting('ARM_ReadKey'   ,ARM_ReadKey.Text);
SetSystemSetting('ARM_WriteKey'  ,ARM_WriteKey.Text);
SetSystemSetting('ARM_SafeKey1'  ,ARM_SafeKey1.Text);
SetSystemSetting('ARM_SafeKey2'  ,ARM_SafeKey2.Text);
SetSystemSetting('ARM_DongleType',ARM_DongleType.ItemIndex);
SetSystemSetting('ARM_OSVersion' ,ARM_OSVersion.Text);

ShowMessage('«ÿ·«⁄«  »« „Ê›ﬁÌ  »—Ê“ —”«‰Ì ‘œ');
Except

END;

Application.Terminate;

end;

end.
