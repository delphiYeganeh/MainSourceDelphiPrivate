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
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
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

end.

