unit SMSSettingsUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtActns, ActnList, DB, ADODB, StdCtrls, Buttons,
  ExtCtrls, Mask, DBCtrls, ImgList;

type
  TFSMSSettings = class(TMBaseForm)
    QSMSSettings: TADOQuery;
    QSMSSettingsID: TAutoIncField;
    QSMSSettingsTerminalID: TStringField;
    QSMSSettingsPassword: TStringField;
    QSMSSettingsRegUserID: TIntegerField;
    QSMSSettingsRegDate: TStringField;
    QCheckSettingsExists: TADOQuery;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    acAdd: TAction;
    ImageList1: TImageList;
    acDel: TAction;
    acEdit: TAction;
    acCancel: TAction;
    acPost: TAction;
    bvl1: TBevel;
    grp1: TGroupBox;
    btn1: TButton;
    QSMSSettingsSendSMS: TBooleanField;
    DBCheckBox1: TDBCheckBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure acAddExecute(Sender: TObject);
    procedure acAddUpdate(Sender: TObject);
    procedure acDelExecute(Sender: TObject);
    procedure acDelUpdate(Sender: TObject);
    procedure acEditExecute(Sender: TObject);
    procedure acEditUpdate(Sender: TObject);
    procedure acCancelExecute(Sender: TObject);
    procedure acCancelUpdate(Sender: TObject);
    procedure acPostExecute(Sender: TObject);
    procedure acPostUpdate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QSMSSettingsBeforePost(DataSet: TDataSet);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
    function CheckSMSSettingsExists:Boolean;
  public
    { Public declarations }
  end;

var
  FSMSSettings: TFSMSSettings;

implementation

uses dmu, YShamsiDate, SmsCenter1;

{$R *.dfm}

procedure TFSMSSettings.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if (QSMSSettings.State=dsEdit) or (QSMSSettings.State=dsInsert) then
        QSMSSettings.Post;
  Close;      
end;

function TFSMSSettings.CheckSMSSettingsExists: Boolean;
begin
  Result:=False;

  QCheckSettingsExists.Close;
  QCheckSettingsExists.Open;

  if not QCheckSettingsExists.IsEmpty then Result:=True;

end;

procedure TFSMSSettings.acAddExecute(Sender: TObject);
begin
  inherited;
  QSMSSettings.Insert;
end;

procedure TFSMSSettings.acAddUpdate(Sender: TObject);
begin
  inherited;
  if CheckSMSSettingsExists then acAdd.Enabled:=False;
end;

procedure TFSMSSettings.acDelExecute(Sender: TObject);
begin
  inherited;
   if ShowMyMessage('ÅÌ€«„','¬Ì« „«Ì· »Â Õ–›  Â” Ìœø',mbOKCancel,mtWarning)= mrOK then
   begin
        QSMSSettings.Delete;
        _TerminalID:='';
        _SmsPassWord:='';
        _SendSMS:=False;
   end;
end;

procedure TFSMSSettings.acDelUpdate(Sender: TObject);
begin
  inherited;
  if CheckSMSSettingsExists then acDel.Enabled:=True else acDel.Enabled:=False;
end;

procedure TFSMSSettings.acEditExecute(Sender: TObject);
begin
  inherited;
  QSMSSettings.Edit;
end;

procedure TFSMSSettings.acEditUpdate(Sender: TObject);
begin
  inherited;
  if CheckSMSSettingsExists then acEdit.Enabled:=True else acEdit.Enabled:=False;
end;

procedure TFSMSSettings.acCancelExecute(Sender: TObject);
begin
  inherited;
  QSMSSettings.Cancel;
end;

procedure TFSMSSettings.acCancelUpdate(Sender: TObject);
begin
  inherited;
  if (QSMSSettings.State=dsEdit) or (QSMSSettings.State=dsInsert) then
        acCancel.Enabled:=True
  else acCancel.Enabled:=False;
end;

procedure TFSMSSettings.acPostExecute(Sender: TObject);
begin
  inherited;
  QSMSSettings.Post;
end;

procedure TFSMSSettings.acPostUpdate(Sender: TObject);
begin
  inherited;
   if (QSMSSettings.State=dsEdit) or (QSMSSettings.State=dsInsert) then
        acPost.Enabled:=True
  else acPost.Enabled:=False;
end;

procedure TFSMSSettings.FormCreate(Sender: TObject);
begin
  inherited;
  QSMSSettings.Close;
  QSMSSettings.Open;
end;

procedure TFSMSSettings.QSMSSettingsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (QSMSSettings.State=dsEdit) or (QSMSSettings.State=dsInsert) then
  begin
      QSMSSettingsRegUserID.AsInteger:=_UserID;
      QSMSSettingsRegDate.AsString:=_Today;
      _TerminalID:=QSMSSettingsTerminalID.AsString;
      _SmsPassWord:=QSMSSettingsPassword.AsString;
      _SendSMS:=QSMSSettingsSendSMS.AsBoolean;
  end;
end;

procedure TFSMSSettings.btn1Click(Sender: TObject);
var
  Rio:SmsCenter;
begin
  inherited;
  Rio:=GetSmsCenter(True,'',nil);
  Btn1.Caption:='»«ﬁÌ„«‰œÂ «⁄ »«— »—«»— «”  »« :'+Rio.getCredit(_TerminalID,_SmsPassWord) + ' —Ì«· ';

end;

end.
