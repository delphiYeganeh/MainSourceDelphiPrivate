unit USingleMessage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, ExtCtrls, ExtActns, ActnList, DB, Buttons, SmsCenter1,
  ADODB;

type
  TFSingleMessage = class(TMBaseForm)
    pnlMain: TPanel;
    RGMediaType: TRadioGroup;
    btnMessage: TSpeedButton;
    phonenumber: TLabel;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    edtMessage: TMemo;
    GroupBox2: TGroupBox;
    Etebar: TLabel;
    Edit1: TEdit;
    procedure pnlMainCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure btnMessageClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
  private
    { Private declarations }
    procedure InsertLog(Comment : String);
    procedure onlyNumberMobile(mobileStr : String);
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
  Str:String ;
begin
  inherited;
  if (RGMediaType.ItemIndex = 0) and (not Dm.SmsSettingIsCorrect) then
  begin
      ShowMessage('���� ����� �� ��� ������� ���� ������ ������');
      Exit;
  end;
  
  if Trim(edtMessage.Text)='' then
  begin
      ShowMessage('��� ���� ���� ���');
       Exit;
  end
  else
  begin
     if RGMediaType.ItemIndex = 0 then
     begin
       if _SendSMS or _SendSMSType2 then
       begin
         try
           btnMessage.Enabled:=False;
              try
                 if  _SendSMS then
                 begin
                   Rio:= GetSmsCenter(True,'',nil);
                   Rio.snedOneSms(_TerminalID,_SmsPassWord,MobileNumber,edtMessage.Text);
                  end
                  else if _SendSMSType2 then
                 begin
                    dm.SendSmsToOutBox(MobileNumber,edtMessage.Text);
                 end;
                 Str :=  '����� ����'
                 //ShowMessage(Str);
              except
                 Str := '��� �� ����� ����' ;
                // ShowMessage(Str);
              end;
              ShowMessage(Str);
              InsertLog(STR);
         finally
            // btnMessage.Caption:='����� ����';
             btnMessage.Enabled:=True;
         end;
       end;
     end
     else
     begin
       try
          btnMessage.Enabled := False;
          with Dm do
          begin
            try
              Select_MediaMessage.Append;
              Select_MediaMessageSenderUserId.Value := _UserID;
              Select_MediaMessageCustomerId.AsInteger   := StrToInt(CustomerId);
              Select_MediaMessageMessage.Value := Trim(edtMessage.text) ;
              if RGMediaType.ItemIndex  = 0 then
                Select_MediaMessageMedia.Value := 'SMS'
              else
              if RGMediaType.ItemIndex  = 1 then
                Select_MediaMessageMedia.Value := 'Telegram'
              else
              if RGMediaType.ItemIndex  = 2 then
                Select_MediaMessageMedia.Value := 'WhatsApp'
              else
              if RGMediaType.ItemIndex  = 3 then
                Select_MediaMessageMedia.Value := 'Ita'  ;

              Select_MediaMessagePhoneNumber.Value := MobileNumber;
              Select_MediaMessageDescription.Value := '����� ���� �� ��� �����';
              Select_MediaMessageType.AsInteger:=  1;
              Select_MediaMessage.Post;
              except
                  ShowMessage('��� �� ����� ����');
              end;
          end;
       finally
         btnMessage.Enabled := True;
       end;
     
     end;
  end;
  Close;
end;

procedure TFSingleMessage.InsertLog(Comment : String);
var
  QTMP: TADOQuery;
begin
  Comment :=  '����� ���� �� ��� �����' +'-'+Comment ;
  QTMP := TADOQuery.Create(self);
  QTMP.Connection := dm.YeganehConnection;
  QTMP.CommandTimeout := 1200;

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
  QTMP.SQL.Add(','+QuotedStr( Comment));

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
  onlyNumberMobile(MobileNumber) ;
  phonenumber.Caption :=  MobileNumber ;



  try
    url := 'http://parsasms.com/tools/urlservice/credit/?username='+  dmu._SmsUser+'&password='+dmu._SmsPassWordType2;
    Etebar.Caption:='������ ���� ����� ����� ��� �� : '+dm.POST(url)+' ���� ';
  except
    Etebar.Caption:='��� �� ������� ������';
  end;

  with Dm.Select_MediaMessage do
  begin
    Close;
    Parameters.ParamByName('@CustomerID').Value := CustomerId  ;
    Open;

  end;

end;

procedure TFSingleMessage.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  inherited;
  Resize :=  False;
end;



procedure TFSingleMessage.onlyNumberMobile(mobileStr: String);
var indx : Integer;
  ResultText : string;
begin
  ResultText := '';
  for indx := 1 to length(mobileStr) do
  begin
    if mobileStr[indx] in ['0'..'9'] then
      ResultText := ResultText + mobileStr[indx] ;
  end;
  mobileStr := ResultText ;
  MobileNumber :=  ResultText ;
end;

end.
