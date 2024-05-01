unit SMSBirthDateU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtActns, ActnList, DB, StdCtrls, Grids, DBGrids,
  YDbgrid, ExtCtrls, Buttons, ADODB, Menus, SmsCenter1;

type
  TFSMSBirthDate = class(TMBaseForm)
    QTMP: TADOQuery;
    Customers: TADOQuery;
    CustomersCustomerID: TAutoIncField;
    CustomersPersonTitle: TWideStringField;
    CustomersCompanyName: TWideStringField;
    spGetCustomersBirthDateSMS: TADOStoredProc;
    spGetCustomersBirthDateSMSCustomerID: TIntegerField;
    spGetCustomersBirthDateSMSCustomerNo: TStringField;
    spGetCustomersBirthDateSMSPersonTitle: TWideStringField;
    spGetCustomersBirthDateSMSCompanyName: TWideStringField;
    spGetCustomersBirthDateSMSPhone: TWideStringField;
    spGetCustomersBirthDateSMSMobilePhone: TWideStringField;
    spGetCustomersBirthDateSMSToday_SMS_Recieve: TBooleanField;
    spGetCustomersBirthDateSMSMean: TStringField;
    pm1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    pnlMain: TPanel;
    Panel1: TPanel;
    lblCount: TLabel;
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    Button1: TButton;
    RadioGroup1: TRadioGroup;
    Panel2: TPanel;
    YDBGrid1: TYDBGrid;
    Panel4: TPanel;
    YDBGrid2: TYDBGrid;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button2: TButton;
    edtMessage: TEdit;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure YDBGrid2NeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
    procedure BitBtn1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure OpenCustomersForSMS;
    procedure InsertLog;

  public
    { Public declarations }
  end;

var
  FSMSBirthDate: TFSMSBirthDate;

implementation

uses dmu;

{$R *.dfm}

procedure TFSMSBirthDate.FormCreate(Sender: TObject);
begin
  inherited;
  Customers.Close;
  Customers.Open;
end;

procedure TFSMSBirthDate.Button1Click(Sender: TObject);
begin
  inherited;
  OpenCustomersForSMS;
end;

procedure TFSMSBirthDate.InsertLog;
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
  QTMP.SQL.Add(','+spGetCustomersBirthDateSMSCustomerID.AsString);
  QTMP.SQL.Add(','+'1');
  QTMP.SQL.Add(','+'3');
  QTMP.SQL.Add(','+QuotedStr(edtMessage.Text));
  QTMP.SQL.Add(','+IntToStr(_UserID));
  QTMP.SQL.Add(','+QuotedStr(_WorkSationName));
  QTMP.SQL.Add(','+QuotedStr(_WinOrDomainUserName));
  QTMP.SQL.Add(','+spGetCustomersBirthDateSMSMobilePhone.AsString);
  QTMP.SQL.Add(','+QuotedStr(Memo1.Text));
  QTMP.SQL.Add(')');

  //ShowMessage(QTMP.SQL.Text);

  QTMP.ExecSQL;

end;

procedure TFSMSBirthDate.OpenCustomersForSMS;
var
  d:String;
begin
  spGetCustomersBirthDateSMS.Close;
  spGetCustomersBirthDateSMS.Parameters.ParamByName('@ToDay').Value:=_Today;
  spGetCustomersBirthDateSMS.Parameters.ParamByName('@SMSGroupSID').Value:=1;
  spGetCustomersBirthDateSMS.Parameters.ParamByName('@SMSSubGroupsID').Value:=3;
  spGetCustomersBirthDateSMS.Parameters.ParamByName('@Flag').Value:=RadioGroup1.ItemIndex;
  spGetCustomersBirthDateSMS.Open;

  //ShowMessage(IntToStr(spGetCustomersBirthDateSMS.RecordCount));

  if not spGetCustomersBirthDateSMS.IsEmpty then lblCount.Caption:=IntToStr(spGetCustomersBirthDateSMS.RecordCount)+' „Ê—œ Ì«›  ‘œ ' else lblCount.Caption:='„Ê—œÌ Ì«›  ‰‘œ';


end;

procedure TFSMSBirthDate.Button2Click(Sender: TObject);
begin
  inherited;
  pm1.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TFSMSBirthDate.N1Click(Sender: TObject);
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
      ShowMessage('·ÿ›« «» œ« »Â ›—„  ‰ŸÌ„«  ÅÌ«„ò „—«Ã⁄Â ‰„«ÌÌœ');
      Exit;
  end;

  if Trim(edtMessage.Text)='' then
      ShowMessage('„ ‰ ÅÌ«„ Œ«·Ì «” ')
  else
  begin
       if not spGetCustomersBirthDateSMS.IsEmpty then
       begin
         if _SendSMS or _SendSMSType2 then
         begin
           try
//               Button2.Caption:='œ— Õ«· «—”«·';
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
                              Rio.snedOneSms(_TerminalID,_SmsPassWord,spGetCustomersBirthDateSMSMobilePhone.AsString,edtMessage.Text);
                            { TODO -oparsa : 14030204 }
                            end
                            else if _SendSMSType2 then
                              dm.SendSmsToOutBox(spGetCustomersBirthDateSMSMobilePhone.AsString,edtMessage.Text);
                            { TODO -oparsa : 14030204 }
                          except
                              ShowMessage('Œÿ« œ— «—”«· ÅÌ«„ò');
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
                      Rio.snedOneSms(_TerminalID,_SmsPassWord,spGetCustomersBirthDateSMSMobilePhone.AsString,edtMessage.Text);
                    { TODO -oparsa : 14030204 }
                    end
                    else if _SendSMSType2 then
                      dm.SendSmsToOutBox(spGetCustomersBirthDateSMSMobilePhone.AsString,edtMessage.Text);
                    { TODO -oparsa : 14030204 }
                  except
                      ShowMessage('Œÿ« œ— «—”«· ÅÌ«„ò');
                  end;
                  InsertLog;
               end;
           finally
               Button2.Caption:='«—”«· SMS';
               Button2.Enabled:=True;
//               Screen.Cursor:=crDefault;
           end;
           end;
       end
       else
       begin
          ShowMessage('„Ê—œÌ ÊÃÊœ ‰œ«—œ');
       end;
  end;
  Button1Click(Application);

end;

procedure TFSMSBirthDate.N2Click(Sender: TObject);
var
  i,j:Integer;
  Rio:SmsCenter;
  MessageSend:WideString;
begin
  inherited;
  if not Dm.SmsSettingIsCorrect then
  begin
      ShowMessage('·ÿ›« «» œ« »Â ›—„  ‰ŸÌ„«  ÅÌ«„ò „—«Ã⁄Â ‰„«ÌÌœ');
      Exit;
  end;
  if Trim(edtMessage.Text)='' then
      ShowMessage('„ ‰ ÅÌ«„ Œ«·Ì «” ')
  else
  begin
       if not spGetCustomersBirthDateSMS.IsEmpty then
       begin
         if _SendSMS then
         begin
           try
               Button2.Enabled:=False;
               spGetCustomersBirthDateSMS.First;
              while not spGetCustomersBirthDateSMS.Eof do
              begin
                  try
                      Rio:=GetSmsCenter(True,'',nil);
                      Rio.snedOneSms(_TerminalID,_SmsPassWord,spGetCustomersBirthDateSMSMobilePhone.AsString,edtMessage.Text);
                  except
                      ShowMessage('Œÿ« œ— «—”«· ÅÌ«„ò');
                  end;
                  InsertLog;
                 spGetCustomersBirthDateSMS.Next;
              end;
           finally
               Button2.Caption:='«—”«· SMS';
               Button2.Enabled:=True;
           end;
         end;
       end
       else
           ShowMessage('„Ê—œÌ ÊÃÊœ ‰œ«—œ');
  end;
  Button1Click(Application);

end;

procedure TFSMSBirthDate.YDBGrid2NeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Color: TColor);
begin
  inherited;
  if spGetCustomersBirthDateSMSToday_SMS_Recieve.AsBoolean=True then
       Color:=$00D9D9FF
  else
       Color:=clWhite;
end;

procedure TFSMSBirthDate.BitBtn1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFSMSBirthDate.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  OpenCustomersForSMS;
end;

procedure TFSMSBirthDate.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  { TODO -oparsa : 14030203 }
  if (NewWidth < 794)  or (NewHeight < 596) then
    Resize := False
  else Resize := True;
   { TODO -oparsa : 14030203 }
  inherited;

end;

procedure TFSMSBirthDate.FormShow(Sender: TObject);
begin
  inherited;
  ShapeBase.Brush.Color := _Color1 ;
  pnlMain.Color := _Color1 ;

end;

end.
