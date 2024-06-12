unit USingleMessage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, ExtCtrls, ExtActns, ActnList, DB, Buttons, SmsCenter1,
  ADODB;

type
  TFSingleMessage = class(TMBaseForm)
    pnlMain: TPanel;
    Label1: TLabel;
    edtMessage: TEdit;
    RadioGroup1: TRadioGroup;
    btnMessage: TSpeedButton;
    phonenumber: TLabel;
    Label2: TLabel;
    Etebar: TLabel;
    procedure pnlMainCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure btnMessageClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure InsertLog;
  public
    { Public declarations }
    MobileNumber : string ;
    CustomerId : string ;
  end;

var
  FSingleMessage: TFSingleMessage;

implementation

uses dmu;

{$R *.dfm}

procedure TFSingleMessage.pnlMainCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  inherited;
  if (NewWidth < 546)  or (NewHeight < 203) then
    Resize := False
  else Resize := True;

end;

procedure TFSingleMessage.btnMessageClick(Sender: TObject);
var
  Rio:SmsCenter;

begin
  inherited;
  if not Dm.SmsSettingIsCorrect then
  begin
      ShowMessage('áØÝÇ ÇÈÊÏÇ Èå ÝÑã ÊäÙíãÇÊ íÇã˜ ãÑÇÌÚå äãÇííÏ');
      Exit;
  end;
  if Trim(edtMessage.Text)='' then
      ShowMessage('ãÊä íÇã ÎÇáí ÇÓÊ')
  else
  begin
     if _SendSMS then
     begin
       try
         btnMessage.Enabled:=False;
            try
                Rio:=GetSmsCenter(True,'',nil);
                Rio.snedOneSms(_TerminalID,_SmsPassWord,MobileNumber,edtMessage.Text);
            except
                ShowMessage('ÎØÇ ÏÑ ÇÑÓÇá íÇã˜');
            end;
            InsertLog;
       finally
          // btnMessage.Caption:='ÇÑÓÇá íÇã';
           btnMessage.Enabled:=True;
       end;
     end;
  end;
end;

procedure TFSingleMessage.InsertLog;
var
  QTMP: TADOQuery;
begin
  QTMP := TADOQuery.Create(self);
  QTMP.Connection := dm.YeganehConnection;

  QTMP.Close;
  QTMP.SQL.Clear;
  QTMP.SQL.Add('INSERT INTO SMSLogs');
  QTMP.SQL.Add('(SentDate,SentTime,CustomerID,SMSGroupSID,SMSSubGroupsID,Message,');
  QTMP.SQL.Add('SenderUserID,SenderWorkStationName,SenderWinorDomainUserName,');
  QTMP.SQL.Add('MobileNo,Comment)');
  QTMP.SQL.Add('VALUES');
  QTMP.SQL.Add('(');
  QTMP.SQL.Add(QuotedStr(_Today));

  QTMP.SQL.Add(','+'''12:12''');
  QTMP.SQL.Add(','+ CustomerId);
  QTMP.SQL.Add(','+'1');
  QTMP.SQL.Add(','+'3');
  QTMP.SQL.Add(','+QuotedStr(edtMessage.Text));
  QTMP.SQL.Add(','+IntToStr(_UserID));
  QTMP.SQL.Add(','+QuotedStr(_WorkSationName));
  QTMP.SQL.Add(','+QuotedStr(_WinOrDomainUserName));
  QTMP.SQL.Add(','+MobileNumber);

  QTMP.SQL.Add(')');


  QTMP.ExecSQL;
end;

procedure TFSingleMessage.FormShow(Sender: TObject);
var
  url : string ;
begin
  inherited;
  ShapeBase.Brush.Color := _Color1 ;
  pnlMain.Color := _Color1 ;  
  phonenumber.Caption :=  MobileNumber ;

  try
    url := 'http://parsasms.com/tools/urlservice/credit/?username='+  dmu._SmsUser+'&password='+dmu._SmsPassWordType2;
    Etebar.Caption:='ÇÚÊÈÇÑ ÈÇÞí ãÇäÏå ÈÑÇÈÑ ÇÓÊ ÈÇ : '+dm.POST(url)+' ÑíÇá ';
  except
    Etebar.Caption:='ÎØÇ ÏÑ ÈÑÞÑÇÑí ÇÑÊÈÇØ';
  end;

end;

end.
