unit SendSMSForCustomerLockUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtActns, ActnList, DB, StdCtrls, Buttons, ExtCtrls,
  Grids, DBGrids, YDbgrid, ADODB, Menus;

type
  TFSendSMSForCustomerLock = class(TMBaseForm)
    Customers: TADOQuery;
    CustomersCustomerID: TAutoIncField;
    CustomersPersonTitle: TWideStringField;
    CustomersCompanyName: TWideStringField;
    spGetCustomersForLockSMS: TADOStoredProc;
    spGetCustomersForLockSMSCustomerID: TIntegerField;
    spGetCustomersForLockSMSCustomerNo: TStringField;
    spGetCustomersForLockSMSPersonTitle: TWideStringField;
    spGetCustomersForLockSMSCompanyName: TWideStringField;
    spGetCustomersForLockSMSPhone: TWideStringField;
    spGetCustomersForLockSMSMobilePhone: TWideStringField;
    spGetCustomersForLockSMSEXPIREDATE: TStringField;
    spGetCustomersForLockSMSToday_SMS_Recieve: TBooleanField;
    spGetCustomersForLockSMSMean: TStringField;
    QTMP: TADOQuery;
    pm1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    pnlMain: TPanel;
    Panel1: TPanel;
    lblCount: TLabel;
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    RadioGroup1: TRadioGroup;
    cmbDays: TComboBox;
    cmbMonths: TComboBox;
    cmbYears: TComboBox;
    Button1: TButton;
    RadioGroup2: TRadioGroup;
    Panel2: TPanel;
    YDBGrid1: TYDBGrid;
    Panel3: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Button2: TButton;
    edtMessage: TEdit;
    Memo1: TMemo;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure YDBGrid1NeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
  private
    { Private declarations }
    procedure OpenCustomersForSMS;
    procedure InsertLog;
  public
    { Public declarations }
  end;

var
  FSendSMSForCustomerLock: TFSendSMSForCustomerLock;

implementation

uses dmu, YShamsiDate, SmsCenter1, StrUtils;

{$R *.dfm}

procedure TFSendSMSForCustomerLock.BitBtn1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFSendSMSForCustomerLock.Button1Click(Sender: TObject);
begin
  inherited;
  OpenCustomersForSMS;
end;

procedure TFSendSMSForCustomerLock.YDBGrid1NeedColorCondition(
  Column: TColumn; State: TGridDrawState; var Color: TColor);
begin
  inherited;
  if spGetCustomersForLockSMSToday_SMS_Recieve.AsBoolean=True then
       Color:=$00D9D9FF
  else
       Color:=clWhite;
end;

procedure TFSendSMSForCustomerLock.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  case RadioGroup1.ItemIndex of
    0:
      begin
         cmbYears.Visible:=True;
         cmbMonths.Visible:=False;
         cmbDays.Visible:=False;
      end;
    1:
      begin
         cmbYears.Visible:=False;
         cmbMonths.Visible:=True;
         cmbDays.Visible:=False;
      end;
    2:
      begin
         cmbYears.Visible:=False;
         cmbMonths.Visible:=False;
         cmbDays.Visible:=True;
      end;
  end;
end;

procedure TFSendSMSForCustomerLock.FormShow(Sender: TObject);
begin
  inherited;
  ShapeBase.Brush.Color := _Color1 ;
  pnlMain.Color := _Color1 ;  
  cmbYears.Visible:=False;
  cmbMonths.Visible:=False;
  cmbDays.Visible:=True;
end;

procedure TFSendSMSForCustomerLock.FormCreate(Sender: TObject);
begin
  inherited;
  Customers.Close;
  Customers.Open;
end;

procedure TFSendSMSForCustomerLock.OpenCustomersForSMS;
var
  d:String;
begin
  case RadioGroup1.ItemIndex of
    0:
      begin
         d:=ShamsiIncDate( _Today,StrToInt(Trim(cmbYears.Text)),0,0);
      end;
    1:
      begin
         d:=ShamsiIncDate( _Today,0,StrToInt(Trim(cmbMonths.Text)),0);
      end;
    2:
      begin
         d:=ShamsiIncDate( _Today,0,0,StrToInt(Trim(cmbDays.Text)));
      end;
  end;
  spGetCustomersForLockSMS.Close;
  spGetCustomersForLockSMS.Parameters.ParamByName('@FromDate').Value:=_Today;
  spGetCustomersForLockSMS.Parameters.ParamByName('@ToDate').Value:=d;
  spGetCustomersForLockSMS.Parameters.ParamByName('@ToDay').Value:=_Today;
  spGetCustomersForLockSMS.Parameters.ParamByName('@SMSGroupSID').Value:=1;
  spGetCustomersForLockSMS.Parameters.ParamByName('@SMSSubGroupsID').Value:=1;
  spGetCustomersForLockSMS.Parameters.ParamByName('@Flag').Value:=RadioGroup2.ItemIndex;
  spGetCustomersForLockSMS.Open;

  if not spGetCustomersForLockSMS.IsEmpty then lblCount.Caption:=IntToStr(spGetCustomersForLockSMS.RecordCount)+' ���� ���� �� ' else lblCount.Caption:='����� ���� ���';

end;

procedure TFSendSMSForCustomerLock.RadioGroup2Click(Sender: TObject);
begin
  inherited;
  OpenCustomersForSMS;
end;

procedure TFSendSMSForCustomerLock.Button2Click(Sender: TObject);

begin
  inherited;

  pm1.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);

end;

procedure TFSendSMSForCustomerLock.InsertLog;
begin
  QTMP.Close;
  QTMP.SQL.Clear;
  QTMP.SQL.Add('INSERT INTO SMSLogs');
  QTMP.SQL.Add('(SentDate,SentTime,CustomerID,SMSGroupSID,SMSSubGroupsID,Message,');
  QTMP.SQL.Add('SenderUserID,SenderWorkStationName,SenderWinorDomainUserName,');
  QTMP.SQL.Add('MobileNo,Comment)');
  QTMP.SQL.Add('VALUES');
  QTMP.SQL.Add('(');
  QTMP.SQL.Add(QuotedStr(_Today));
  //QTMP.SQL.Add(QuotedStr(TimeToStr(Time)));
  QTMP.SQL.Add(','+'''12:12''');
  QTMP.SQL.Add(','+spGetCustomersForLockSMSCustomerID.AsString);
  QTMP.SQL.Add(','+'1');
  QTMP.SQL.Add(','+'1');
  QTMP.SQL.Add(','+QuotedStr(edtMessage.Text));
  QTMP.SQL.Add(','+IntToStr(_UserID));
  QTMP.SQL.Add(','+QuotedStr(_WorkSationName));
  QTMP.SQL.Add(','+QuotedStr(_WinOrDomainUserName));
  QTMP.SQL.Add(','+spGetCustomersForLockSMSMobilePhone.AsString);
  QTMP.SQL.Add(','+QuotedStr(Memo1.Text));
  QTMP.SQL.Add(')');

  //ShowMessage(QTMP.SQL.Text);

  QTMP.ExecSQL;
end;

procedure TFSendSMSForCustomerLock.N1Click(Sender: TObject);
var
  i,j:Integer;
  Rio:SmsCenter;
  MessageSend:WideString;
begin
  inherited;
  if not Dm.SmsSettingIsCorrect then
  begin
      ShowMessage('���� ����� �� ��� ������� ���� ������ ������');
      Exit;
  end;

  if Trim(edtMessage.Text)='' then
      ShowMessage('��� ���� ���� ���')
  else
  begin
       if not spGetCustomersForLockSMS.IsEmpty then
       begin
          if _SendSMS then
          begin
               try
    //               Button2.Caption:='�� ��� �����';
                   Button2.Enabled:=False;
    //               Screen.Cursor:=crHourGlass;
                   if YDBGrid1.SelectedRows.Count > 1 then
                   begin
                      with YDBGrid1.DataSource.DataSet do
                      begin
                          for i:=0 to YDBGrid1.SelectedRows.Count-1 do
                          begin
                              GotoBookmark(Pointer(YDBGrid1.SelectedRows.Items[i]));
                              try
                                 Rio:=GetSmsCenter(True,'',nil);
                                 Rio.snedOneSms(_TerminalID,_SmsPassWord,spGetCustomersForLockSMSMobilePhone.AsString,edtMessage.Text);
                              except
                                 ShowMessage('��� �� ����� ����');
                              end;
                              InsertLog;
                          end;
                      end;
                   end
                   else
                   begin
                      try
                          Rio:=GetSmsCenter(True,'',nil);
                          Rio.snedOneSms(_TerminalID,_SmsPassWord,spGetCustomersForLockSMSMobilePhone.AsString,edtMessage.Text);
                      except
                          ShowMessage('��� �� ����� ����');
                      end;
                      InsertLog;
                   end;
               finally
                   Button2.Caption:='����� SMS';
                   Button2.Enabled:=True;
    //               Screen.Cursor:=crDefault;
               end;
           end;    
       end
       else
           ShowMessage('����� ���� �����');
  end;
  Button1Click(Application);
end;

procedure TFSendSMSForCustomerLock.N2Click(Sender: TObject);
var
  i,j:Integer;
  Rio:SmsCenter;
  MessageSend:WideString;
begin
  inherited;
  if not Dm.SmsSettingIsCorrect then
  begin
      ShowMessage('���� ����� �� ��� ������� ���� ������ ������');
      Exit;
  end;
  if Trim(edtMessage.Text)='' then
      ShowMessage('��� ���� ���� ���')
  else
  begin
       if not spGetCustomersForLockSMS.IsEmpty then
       begin
         if _SendSMS then
         begin
             try
                 Button2.Enabled:=False;
                 spGetCustomersForLockSMS.First;
                while not spGetCustomersForLockSMS.Eof do
                begin
                    try
                        Rio:=GetSmsCenter(True,'',nil);
                        Rio.snedOneSms(_TerminalID,_SmsPassWord,spGetCustomersForLockSMSMobilePhone.AsString,edtMessage.Text);
                    except
                        ShowMessage('��� �� ����� ����');
                    end;
                    InsertLog;
                   spGetCustomersForLockSMS.Next;
                end;
             finally
                 Button2.Caption:='����� SMS';
                 Button2.Enabled:=True;
             end;
         end;
       end
       else
           ShowMessage('����� ���� �����');
  end;
  Button1Click(Application);

end;

procedure TFSendSMSForCustomerLock.FormCanResize(Sender: TObject;
  var NewWidth, NewHeight: Integer; var Resize: Boolean);
begin
  { TODO -oparsa : 14030203 }
  if (NewWidth < 879)  or (NewHeight < 631) then
    Resize := False
  else Resize := True;
   { TODO -oparsa : 14030203 }

  inherited;

end;

end.
