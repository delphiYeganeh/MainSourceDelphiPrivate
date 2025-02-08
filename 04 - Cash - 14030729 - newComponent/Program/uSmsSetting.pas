unit uSmsSetting;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls,BaseUnit, DB, ADODB,dmu,ShellAPI ,
  AdvGlowButton;

type
  TfrmSmsSetting = class(TYBaseForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TAdvGlowButton;
    BitBtn2: TAdvGlowButton;
    Button1: TAdvGlowButton;
    lblTerminalID: TLabel;
    lblSmsPassWord: TLabel;
    SmsUser: TEdit;
    SmsPassWord: TEdit;
    EnableSms: TCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    SmsTimer: TEdit;
    Label5: TLabel;
    CashNameForSms: TEdit;
    Label6: TLabel;
    SMSCenterNumber: TEdit;
    S: TLabel;
    pnlMain: TPanel;
    Panel3: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure Label4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
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

procedure TfrmSmsSetting.Label4Click(Sender: TObject);
var
  MyLink: string;
begin
  //http://sms.ghasedak-ict.com/index.htm
  MyLink := 'http://ghasedaksms.com';
  ShellExecute(Application.Handle, PChar('open'), PChar(MyLink), nil, nil, SW_SHOW);
end;

procedure TfrmSmsSetting.BitBtn2Click(Sender: TObject);
begin
  inherited;
  LoadSetting;
end;

end.

