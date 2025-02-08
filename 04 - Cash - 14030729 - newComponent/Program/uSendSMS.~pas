unit uSendSMS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SmsCenter1, ExtCtrls,BaseUnit,dmu, DB, ADODB, Grids,
  DBGrids, YDbgrid, ComCtrls, Spin, UemsVCL, DBCtrls,v2, YRotateLabel,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  SolarCalendarPackage, AdvGlowButton;

type
  TfrmSendSMS = class(TYBaseForm)
    Panel1: TPanel;
    Label1: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    YDBGrid1: TYDBGrid;
    spREPORT_FORCEPAYMENTSMS: TADOStoredProc;
    dREPORT_FORCEPAYMENTSMS: TDataSource;
    Button3: TAdvGlowButton;
    SpDay: TSpinEdit;
    qShamsiDate: TADOQuery;
    ShamsiDateEdit1: TSolarDatePicker;
    Label6: TLabel;
    Panel4: TPanel;
    Label7: TLabel;
    edSerach: TEdit;
    Panel5: TPanel;
    YDBGrid2: TYDBGrid;
    dSelectContact: TDataSource;
    spSelectContact: TADOStoredProc;
    spSelectContactContactID: TAutoIncField;
    spSelectContactPersonalNo: TWideStringField;
    spSelectContactFirstName: TWideStringField;
    spSelectContactLastName: TWideStringField;
    spSelectContactFatherName: TWideStringField;
    spSelectContactIdno: TWideStringField;
    spSelectContactBirthPlace: TWideStringField;
    spSelectContactBirthDate: TStringField;
    spSelectContactAddress: TWideStringField;
    spSelectContactPhones: TWideStringField;
    spSelectContactJob: TWideStringField;
    spSelectContactIsActive: TBooleanField;
    spSelectContactSign: TBlobField;
    spSelectContactMemo: TWideStringField;
    spSelectContactUserField1: TWideStringField;
    spSelectContactUserField2: TWideStringField;
    spSelectContactpicture: TBlobField;
    spSelectContactCalField: TIntegerField;
    spSelectContactContactTypeID: TWordField;
    spSelectContactHAVEINTEREST: TBooleanField;
    spSelectContactContactTitle: TStringField;
    spSelectContactSexId: TIntegerField;
    spSelectContactSendSms: TBooleanField;
    Button1: TAdvGlowButton;
    Label2: TLabel;
    edFirstName: TEdit;
    Label3: TLabel;
    edLastName: TEdit;
    Label4: TLabel;
    dlcbSexes: TDBLookupComboBox;
    Label9: TLabel;
    edBirthdate: TSolarDatePicker;
    TabSheet3: TTabSheet;
    YDBGrid3: TYDBGrid;
    qSentSMS: TADOQuery;
    dSentSMS: TDataSource;
    qSentSMSOutBoxId: TAutoIncField;
    qSentSMSSmsNumber: TStringField;
    qSentSMSSmsText: TMemoField;
    qSentSMSSendDate: TDateTimeField;
    qSentSMSInProcess: TBooleanField;
    qSentSMSIsSend: TBooleanField;
    Panel6: TPanel;
    Button2: TAdvGlowButton;
    Label10: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    qSentSMSShamsi: TStringField;
    qSentSMSSmsStatus: TStringField;
    Button5: TAdvGlowButton;
    YRotateLabel1: TYRotateLabel;
    spREPORT_FORCEPAYMENTSMSaccountno: TStringField;
    spREPORT_FORCEPAYMENTSMSaccounttitle: TWideStringField;
    spREPORT_FORCEPAYMENTSMSloanno: TStringField;
    spREPORT_FORCEPAYMENTSMSFOCETYPETITLE: TWideStringField;
    spREPORT_FORCEPAYMENTSMSDelayCount: TIntegerField;
    spREPORT_FORCEPAYMENTSMSFOCETYPEID: TWordField;
    spREPORT_FORCEPAYMENTSMSContactID: TIntegerField;
    spREPORT_FORCEPAYMENTSMSPhones: TWideStringField;
    spREPORT_FORCEPAYMENTSMSSimilarWord: TStringField;
    spREPORT_FORCEPAYMENTSMSFromDate: TStringField;
    pnlMain: TPanel;
    GroupBox1: TGroupBox;
    Label11: TLabel;
    Panel7: TPanel;
    Label5: TLabel;
    Label8: TLabel;
    memoSms: TEdit;
    rgSendSms: TRadioGroup;
    Button4: TAdvGlowButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure GetCreditSms;
    procedure Button3Click(Sender: TObject);
    procedure edSerachChange(Sender: TObject);
    procedure SpDayChange(Sender: TObject);
    procedure AddShamsi;
    procedure spREPORT_FORCEPAYMENTSMSAfterScroll(DataSet: TDataSet);
    procedure PageControl1Change(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure qSentSMSAfterScroll(DataSet: TDataSet);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSendSMS: TfrmSendSMS;
  OldCredit ,NewCredit: Real;
  Rio:SmsCenter;

implementation

{$R *.dfm}

procedure TfrmSendSMS.FormCreate(Sender: TObject);
//var   Rio:SmsCenter;
begin
  AddShamsi;
  dm.tblSexes.Open;

//  exit;
//  inherited;
//  OldCredit:=0;
//  NewCredit:=0;
//  Rio:=GetSmsCenter(True,'',nil);
//  OldCredit := StrToFloat( Rio.getCredit(_TerminalID,_SmsPassWord));
//  Label1.Caption:='»«ﬁÌ„«‰œÂ «⁄ »«— »—«»— «”  »« :'+FloatToStr(OldCredit) + ' —Ì«· ';

end;

procedure TfrmSendSMS.Button1Click(Sender: TObject);
//var   Rio:SmsCenter;
begin
//   try
//
////     Label.Caption := 'œ— Õ«· «—”«· ÅÌ«„ò';
//     Application.ProcessMessages;
//     Rio:=GetSmsCenter(True,'',nil);
//     OldCredit := StrToFloat( Rio.getCredit(_TerminalID,_SmsPassWord));
////     Label4.Caption := '';
////     Rio.snedOneSms(_TerminalID,_SmsPassWord,edSmsNumber.Text,SmsDetail.Text);
//   except
////     Label4.Caption := 'Œÿ« œ— «—”«· ÅÌ«„ò';
////     Label4.Font.Color := clRed;
//   end;
//   GetCreditSms;
  with spSelectContact do
  begin
    Close;
    Parameters.Refresh;
    Parameters.ParamByName('@FirstName').Value := trim(edFirstName.Text);
    Parameters.ParamByName('@LastName').Value := Trim(edLastName.Text);
    Parameters.ParamByName('@BirthDate').Value :=edBirthdate.Text ;
    Parameters.ParamByName('@SexId').Value := dlcbSexes.KeyValue;
    open;
  end;
end;

procedure TfrmSendSMS.GetCreditSms;
//var   Rio:SmsCenter;
begin
//  inherited;
//  Rio:=GetSmsCenter(True,'',nil);
//  NewCredit :=StrToFloat( Rio.getCredit(_TerminalID,_SmsPassWord));
//  Label1.Caption:='»«ﬁÌ„«‰œÂ «⁄ »«— »—«»— «”  »« :'+FloatToStr(NewCredit) + ' —Ì«· ';
//  Label5.Caption:='«⁄ »«— „’—› ‘œÂ »—«»— «”  »« :'+FloatToStr(OldCredit-NewCredit) + ' —Ì«· ';
//  if OldCredit-NewCredit>0 then
//   begin
////     Label4.Caption := 'ÅÌ«„ò «—”«· ‘œ';
////     Label4.Font.Color := clYellow;
//   end
//   else
//   begin
////     Label4.Caption := 'ÅÌ«„ò «—”«· ‰‘œ';
////     Label4.Font.Color := clRed;
//   end;
end;

procedure TfrmSendSMS.Button3Click(Sender: TObject);
begin
  inherited;
  with spREPORT_FORCEPAYMENTSMS do
  begin
    Close;

    Parameters.Refresh;
    Parameters.ParamByName('@FOCETYPEID').Value :=1;
    Parameters.ParamByName('@PAYSTATUS').Value :=0;
    Parameters.ParamByName('@GROUPINGBYACCOUNT').Value :=0;
    Parameters.ParamByName('@DELAYDAYS').Value :=0;
    Parameters.ParamByName('@ONLYLATEST').Value := 0;
    Parameters.ParamByName('@NO').Value :='';
    Parameters.ParamByName('@SEARCHBYLOANNO').Value :=0;
    Parameters.ParamByName('@MATUREDATEFROM').Value :='1300/01/01';
    Parameters.ParamByName('@MATUREDATETO').Value :='1499/12/30';
    Parameters.ParamByName('@FAMILYID').Value :=0;
    Parameters.ParamByName('@LOANTYPEID').Value :=0;
    Parameters.ParamByName('@MONTHLYTYPEID').Value :=0;
    Parameters.ParamByName('@TODAY').Value :=ShamsiDateEdit1.Text;
    Parameters.ParamByName('@TOP').Value :=10000;
    Parameters.ParamByName('@SUMAMOUNT').Value :=Null;
    Parameters.ParamByName('@SUMAMERCE').Value :=Null;
    Parameters.ParamByName('@SUMINTEREST').Value :=Null;
    open;
  end;
end;

procedure TfrmSendSMS.edSerachChange(Sender: TObject);
begin
  inherited;
  spREPORT_FORCEPAYMENTSMS.Locate('AccountNo',edSerach.Text,[])
end;

procedure TfrmSendSMS.SpDayChange(Sender: TObject);
begin
  inherited;
  AddShamsi;
end;

procedure TfrmSendSMS.AddShamsi;
begin
  qShamsiDate.Close;
  qShamsiDate.SQL.Text := 'SELECT dbo.addshamsi('+SpDay.Text+') _Date';
  qShamsiDate.Open;
  ShamsiDateEdit1.Text := qShamsiDate.Fields.FieldByName('_Date').AsString;

  if strtoint(SpDay.Text) >=0 then
  begin
      if strtoint(SpDay.Text) >0 then
        Label6.Caption := '—Ê“ »⁄œ ,  «  «—ÌŒ'
      else
        Label6.Caption := '—Ê“  «  «—ÌŒ'
  end

  else
    Label6.Caption := '—Ê“ ﬁ»·  «  «—ÌŒ';

end;

procedure TfrmSendSMS.spREPORT_FORCEPAYMENTSMSAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  with memoSms do
  begin
    Text := '';
    Text := '”·«„ ';
    Text := Text + ' ' + 'Ê«—Ì“ ﬁ”ÿ ' + spREPORT_FORCEPAYMENTSMS.Fields.fieldByName('accountTitle').AsString;
    Text := Text + ' ' + '«“  «—ÌŒ' + spREPORT_FORCEPAYMENTSMSFromDate.AsString;
    Text := Text + ' ' + ' « ' + Trim(ShamsiDateEdit1.Text);
    Text := Text + ' ' + '»Â  ⁄œ«œ ' + spREPORT_FORCEPAYMENTSMS.Fields.fieldByName('DelayCount').AsString + ' ﬁ”ÿ';
    Text := Text + ' ' + '»Â  «ŒÌ— «› «œÂ «”  ';

    Text := Text + ' ' + (_CashNameForSms);
  end;
end;

procedure TfrmSendSMS.PageControl1Change(Sender: TObject);
begin
  inherited;
  memoSms.Clear;
  if PageControl1.ActivePageIndex = 0 then
    memoSms.ReadOnly := False
  else
    memoSms.ReadOnly := True;

  if PageControl1.ActivePageIndex = 2 then
    Button2.Click;
end;

procedure TfrmSendSMS.Button4Click(Sender: TObject);
begin
  inherited;
  if not(_EnableSms) then
  begin
    ShowMessage('«—”«· ÅÌ«„ò €Ì— ›⁄«· „Ì»«‘œ');
    Abort;
  end;

  if PageControl1.TabIndex=0
  then
  begin
    spSelectContact.First;
    while not(spSelectContact.Eof) do
    begin
      if rgSendSms.ItemIndex=1 then
      begin
        if YDBGrid2.SelectedRows.CurrentRowSelected then
          dm.SendSmsToOutBox(spSelectContactPhones.AsString,memoSms.Text);
      end
      else
        dm.SendSmsToOutBox(spSelectContactPhones.AsString,memoSms.Text);
      spSelectContact.Next;
    end;
    ShowMessage('À»  «” «„ «” œ— ’› «—”«· »« „Ê›ﬁÌ  «‰Ã«„ ‘œ');
  end;

  if PageControl1.TabIndex=1
    then
    begin
      spREPORT_FORCEPAYMENTSMS.First;
      while not(spREPORT_FORCEPAYMENTSMS.Eof) do
      begin
        if rgSendSms.ItemIndex=1 then
        begin
          if YDBGrid1.SelectedRows.CurrentRowSelected then
            dm.SendSmsToOutBox(spREPORT_FORCEPAYMENTSMS.Fields.fieldByName('Phones').AsString,memoSms.Text);
        end
        else
          dm.SendSmsToOutBox(spREPORT_FORCEPAYMENTSMS.Fields.fieldByName('Phones').AsString,memoSms.Text);
        spREPORT_FORCEPAYMENTSMS.Next;
      end;
    end;

  if PageControl1.TabIndex=2
    Then
    begin
      qSentSMS.First;
      while not(qSentSMS.Eof) do
      begin
        if rgSendSms.ItemIndex=1 then
        begin
          if YDBGrid3.SelectedRows.CurrentRowSelected then
           begin
            qSentSMS.Edit;
            qSentSMSIsSend.Value:=False;
            qSentSMSInProcess.Value:=False;
            qSentSMS.Fields.FieldByName('SmsStatus').Value:=Null;
            qSentSMS.Post;
          end;
        end
        else
           begin
            qSentSMS.Edit;
            qSentSMSIsSend.Value:=False;
            qSentSMSInProcess.Value:=False;
            qSentSMS.Fields.FieldByName('SmsStatus').Value:=Null;
            qSentSMS.Post;
          end;
        qSentSMS.Next;
      end;
    end;

  {
  if PageControl1.TabIndex=0
  then
  begin
    spSelectContact.First;
    while not(spSelectContact.Eof) do
    begin
      if rgSendSms.ItemIndex=1 then
      begin
        if YDBGrid2.SelectedRows.CurrentRowSelected then
          dm.SendSmsToOutBox(spSelectContactPhones.AsString,memoSms.Text);
      end
      else
        dm.SendSmsToOutBox(spSelectContactPhones.AsString,memoSms.Text);
      spSelectContact.Next;
    end;
  end;

  if PageControl1.TabIndex=1
    then
    begin
      spREPORT_FORCEPAYMENTSMS.First;
      while not(spREPORT_FORCEPAYMENTSMS.Eof) do
      begin
        if rgSendSms.ItemIndex=1 then
        begin
          if YDBGrid1.SelectedRows.CurrentRowSelected then
            dm.SendSmsToOutBox(spREPORT_FORCEPAYMENTSMS.Fields.fieldByName('Phones').AsString,memoSms.Text);
        end
        else
          dm.SendSmsToOutBox(spREPORT_FORCEPAYMENTSMS.Fields.fieldByName('Phones').AsString,memoSms.Text);
        spREPORT_FORCEPAYMENTSMS.Next;
      end;
    end;
   }
{
  if PageControl1.TabIndex=2
    Then
    begin
      qSentSMS.First;
      while not(qSentSMS.Eof) do
      begin
        if rgSendSms.ItemIndex=1 then
        begin
          if YDBGrid3.SelectedRows.CurrentRowSelected then
           begin
            qSentSMS.Edit;
            qSentSMSIsSend.Value:=False;
            qSentSMSInProcess.Value:=False;
            qSentSMS.Fields.FieldByName('SmsStatus').Value:=Null;
            qSentSMS.Post;
          end;
        end
        else
           begin
            qSentSMS.Edit;
            qSentSMSIsSend.Value:=False;
            qSentSMSInProcess.Value:=False;
            qSentSMS.Fields.FieldByName('SmsStatus').Value:=Null;
            qSentSMS.Post;
          end;
        qSentSMS.Next;
      end;
    end;
}

end;

procedure TfrmSendSMS.FormShow(Sender: TObject);
begin
  inherited;
  Button5.Click;
  dlcbSexes.KeyValue:=1;
end;

procedure TfrmSendSMS.Button2Click(Sender: TObject);
var SqlStr : String;
begin
  inherited;
  SqlStr :=' Select * ,dbo.Shamsi(SendDate) Shamsi from OutBox where 1=1 ';
  if RadioButton2.Checked then
    //SqlStr := SqlStr+' and IsSend=0 '
    SqlStr := SqlStr+' and SmsStatus = ''Œÿ« œ— »—ﬁ—«—Ì «— »«ÿ'''
  else
  if RadioButton3.Checked then
//    SqlStr := SqlStr+' and IsSend=1 ';
    SqlStr := SqlStr+' and SmsStatus <> ''Œÿ« œ— »—ﬁ—«—Ì «— »«ÿ'''  ;
  qSentSMS.Close;
  qSentSMS.SQL.Text := SqlStr;
  qSentSMS.open;

end;

procedure TfrmSendSMS.qSentSMSAfterScroll(DataSet: TDataSet);
begin
  inherited;
  memoSms.Text := qSentSMSSmsText.AsString;
end;

procedure TfrmSendSMS.Button5Click(Sender: TObject);
var url:String;
begin
  inherited;
  try
    url := 'http://parsasms.com/tools/urlservice/credit/?username='+dmu._SmsUser+'&password='+dmu._SmsPassWord;
    Label1.Caption:='«⁄ »«— »«ﬁÌ „«‰œÂ »—«»— «”  »« : '+dm.POST(url)+' —Ì«· ';
  except
    Label1.Caption:='Œÿ« œ— »—ﬁ—«—Ì «— »«ÿ';
  end;
end;

end.
