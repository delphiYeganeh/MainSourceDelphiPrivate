unit USMSEndContract;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtActns, ActnList, DB, StdCtrls, Grids, DBGrids,
  YDbgrid, ExtCtrls, Buttons, ADODB, SmsCenter1, YShamsiDate, Menus,
  DBCtrls;

type
  TFSMSEndContract = class(TMBaseForm)
    QTMP: TADOQuery;
    Customers: TADOQuery;
    CustomersCustomerID: TAutoIncField;
    CustomersPersonTitle: TWideStringField;
    CustomersCompanyName: TWideStringField;
    spGetCustomersForEndContractSMS: TADOStoredProc;
    spGetCustomersForEndContractSMSCustomerID: TIntegerField;
    spGetCustomersForEndContractSMSCustomerNo: TStringField;
    spGetCustomersForEndContractSMSPersonTitle: TWideStringField;
    spGetCustomersForEndContractSMSCompanyName: TWideStringField;
    spGetCustomersForEndContractSMSPhone: TWideStringField;
    spGetCustomersForEndContractSMSMobilePhone: TWideStringField;
    spGetCustomersForEndContractSMSEndDate: TStringField;
    spGetCustomersForEndContractSMSToday_SMS_Recieve: TBooleanField;
    spGetCustomersForEndContractSMSMean: TStringField;
    pm1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    QProducts: TADOQuery;
    QProductsProductID: TWordField;
    QProductsProductTitle: TWideStringField;
    DsProducts: TDataSource;
    spGetCustomersForEndContractSMSProductTitle: TStringField;
    pnlMain: TPanel;
    Panel3: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Button2: TButton;
    edtMessage: TEdit;
    Memo1: TMemo;
    Panel2: TPanel;
    YDBGrid1: TYDBGrid;
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
    GroupBox2: TGroupBox;
    DBLookupComboBox1: TDBLookupComboBox;
    ChkCustomerWithoutContract: TCheckBox;
    procedure RadioGroup1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure YDBGrid1NeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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
  FSMSEndContract: TFSMSEndContract;

implementation

uses dmu;

{$R *.dfm}

procedure TFSMSEndContract.RadioGroup1Click(Sender: TObject);
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

procedure TFSMSEndContract.Button1Click(Sender: TObject);
begin
  inherited;
  OpenCustomersForSMS;
end;

procedure TFSMSEndContract.RadioGroup2Click(Sender: TObject);
begin
  inherited;
  OpenCustomersForSMS;
end;

procedure TFSMSEndContract.Button2Click(Sender: TObject);

begin
  inherited;

  pm1.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);

end;

procedure TFSMSEndContract.BitBtn1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFSMSEndContract.YDBGrid1NeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Color: TColor);
begin
  inherited;
  if spGetCustomersForEndContractSMSToday_SMS_Recieve.AsBoolean=True then
       Color:=$00D9D9FF
  else
       Color:=clWhite;
end;

procedure TFSMSEndContract.InsertLog;
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
  QTMP.SQL.Add(','+spGetCustomersForEndContractSMSCustomerID.AsString);
  QTMP.SQL.Add(','+'1');
  QTMP.SQL.Add(','+'2');
  QTMP.SQL.Add(','+QuotedStr(edtMessage.Text));
  QTMP.SQL.Add(','+IntToStr(_UserID));
  QTMP.SQL.Add(','+QuotedStr(_WorkSationName));
  QTMP.SQL.Add(','+QuotedStr(_WinOrDomainUserName));
  QTMP.SQL.Add(','+spGetCustomersForEndContractSMSMobilePhone.AsString);
  QTMP.SQL.Add(','+QuotedStr(Memo1.Text));
  QTMP.SQL.Add(')');

  //ShowMessage(QTMP.SQL.Text);

  QTMP.ExecSQL;
end;

procedure TFSMSEndContract.OpenCustomersForSMS;
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
  spGetCustomersForEndContractSMS.Close;
  spGetCustomersForEndContractSMS.Parameters.ParamByName('@FromDate').Value:=_Today;
  spGetCustomersForEndContractSMS.Parameters.ParamByName('@ToDate').Value:=d;
  spGetCustomersForEndContractSMS.Parameters.ParamByName('@ToDay').Value:=_Today;
  spGetCustomersForEndContractSMS.Parameters.ParamByName('@SMSGroupSID').Value:=1;
  spGetCustomersForEndContractSMS.Parameters.ParamByName('@SMSSubGroupsID').Value:=2;
  spGetCustomersForEndContractSMS.Parameters.ParamByName('@Flag').Value:=RadioGroup2.ItemIndex;
  spGetCustomersForEndContractSMS.Parameters.ParamByName('@ProductID').Value:=QProductsProductID.AsInteger;
  if ChkCustomerWithoutContract.Checked then
          spGetCustomersForEndContractSMS.Parameters.ParamByName('@CustomerWithoutContract').Value:=1
  else
          spGetCustomersForEndContractSMS.Parameters.ParamByName('@CustomerWithoutContract').Value:=0;
  spGetCustomersForEndContractSMS.Open;

  if not spGetCustomersForEndContractSMS.IsEmpty then lblCount.Caption:=IntToStr(spGetCustomersForEndContractSMS.RecordCount)+' ���� ���� �� ' else lblCount.Caption:='����� ���� ���';

end;

procedure TFSMSEndContract.FormShow(Sender: TObject);
begin
  inherited;
  ShapeBase.Brush.Color := _Color1 ;
  pnlMain.Color := _Color1 ;   
  cmbYears.Visible:=False;
  cmbMonths.Visible:=False;
  cmbDays.Visible:=True;
end;

procedure TFSMSEndContract.FormCreate(Sender: TObject);
begin
  inherited;
  Customers.Close;
  Customers.Open;

  QProducts.Close;
  QProducts.Open;

end;

procedure TFSMSEndContract.N1Click(Sender: TObject);
var
  i,j:Integer;
  Rio:SmsCenter;
  MessageSend:WideString;
begin
  inherited;
  { TODO -oparsa : 14030204 }
  //if not Dm.SmsSettingIsCorrect then
  if (not Dm.SmsSettingIsCorrect) and (_SendSMSType2 or _SendSMS) then
  { TODO -oparsa : 14030204 }
  begin
      ShowMessage('���� ����� �� ��� ������� ���� ������ ������');
      Exit;
  end;

  if Trim(edtMessage.Text)='' then
      ShowMessage('��� ���� ���� ���')
  else
  begin
       if not spGetCustomersForEndContractSMS.IsEmpty then
       begin
          if _SendSMS or _SendSMSType2 then
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
                              if  _SendSMS then
                              begin
                                Rio:=GetSmsCenter(True,'',nil);
                                Rio.snedOneSms(_TerminalID,_SmsPassWord,spGetCustomersForEndContractSMSMobilePhone.AsString,edtMessage.Text);
                              { TODO -oparsa : 14030204 }
                              end
                              else if _SendSMSType2 then
                                dm.SendSmsToOutBox(spGetCustomersForEndContractSMSMobilePhone.AsString,edtMessage.Text);
                              { TODO -oparsa : 14030204 }
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
                      if  _SendSMS then
                      begin
                        Rio:=GetSmsCenter(True,'',nil);
                        Rio.snedOneSms(_TerminalID,_SmsPassWord,spGetCustomersForEndContractSMSMobilePhone.AsString,edtMessage.Text);
                      { TODO -oparsa : 14030204 }
                      end
                      else if _SendSMSType2 then
                        dm.SendSmsToOutBox(spGetCustomersForEndContractSMSMobilePhone.AsString,edtMessage.Text);
                      { TODO -oparsa : 14030204 }
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

procedure TFSMSEndContract.N2Click(Sender: TObject);
var
  i,j:Integer;
  Rio:SmsCenter;
  MessageSend:WideString;
begin
  inherited;
  { TODO -oparsa : 14030204 }
  //if not Dm.SmsSettingIsCorrect then
  if (not Dm.SmsSettingIsCorrect) and (_SendSMSType2 or _SendSMS) then
  { TODO -oparsa : 14030204 }
  begin
      ShowMessage('���� ����� �� ��� ������� ���� ������ ������');
      Exit;
  end;
  if Trim(edtMessage.Text)='' then
      ShowMessage('��� ���� ���� ���')
  else
  begin
       if not spGetCustomersForEndContractSMS.IsEmpty then
       begin
          { TODO -oparsa : 14030204 }
          //if _SendSMS then
          if _SendSMS or _SendSMSType2 then
          { TODO -oparsa : 14030204 }
          begin
             try
                 Button2.Enabled:=False;
                 spGetCustomersForEndContractSMS.First;
                while not spGetCustomersForEndContractSMS.Eof do
                begin
                    try
                        if  _SendSMS then
                        begin
                          Rio:=GetSmsCenter(True,'',nil);
                          Rio.snedOneSms(_TerminalID,_SmsPassWord,spGetCustomersForEndContractSMSMobilePhone.AsString,edtMessage.Text);
                        { TODO -oparsa : 14030204 }
                        end
                        else if _SendSMSType2 then
                          dm.SendSmsToOutBox(spGetCustomersForEndContractSMSMobilePhone.AsString,edtMessage.Text);
                        { TODO -oparsa : 14030204 }
                    except
                        ShowMessage('��� �� ����� ����');
                    end;
                    InsertLog;
                   spGetCustomersForEndContractSMS.Next;
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

procedure TFSMSEndContract.Button3Click(Sender: TObject);
begin
  inherited;
//        ShowMessage(QProductsProductID.AsString);
 //       ShowMessage(VarToStr(DBLookupComboBox1.KeyValue));
end;

procedure TFSMSEndContract.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  { TODO -oparsa : 14030203 }
  if (NewWidth < 978)  or (NewHeight < 658) then
    Resize := False
  else Resize := True;
   { TODO -oparsa : 14030203 }
  inherited;

end;

end.
