unit uSmsSetting;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls,BaseUnit, DB, ADODB,dmu;

type
  TfrmSmsSetting = class(TYBaseForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Button1: TBitBtn;
    lblTerminalID: TLabel;
    lblSmsPassWord: TLabel;
    SmsUser: TEdit;
    SmsPassWord: TEdit;
    EnableSms: TCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    SmsTimer: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    CashNameForSms: TEdit;
    Label6: TLabel;
    SMSCenterNumber: TEdit;
    S: TLabel;
    Label7: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSmsSetting: TfrmSmsSetting;

implementation

{$R *.dfm}

procedure TfrmSmsSetting.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmSmsSetting.BitBtn1Click(Sender: TObject);
begin
  SaveSetting;
end;

procedure TfrmSmsSetting.FormShow(Sender: TObject);
begin
  inherited;
  LoadSetting;

end;

procedure TfrmSmsSetting.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  { TODO -oparsa : 14030203 }
  if (NewWidth < 711)  or (NewHeight < 377) then
    Resize := False
  else Resize := True;
   { TODO -oparsa : 14030203 }
  inherited;

end;

end.

