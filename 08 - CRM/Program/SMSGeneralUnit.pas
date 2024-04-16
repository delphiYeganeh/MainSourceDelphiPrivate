unit SMSGeneralUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtActns, ActnList, DB, StdCtrls, ExtCtrls, Buttons,
  Grids, DBGrids, YDbgrid, ADODB, DBCtrls, YShamsiDate, Menus;

type
  TFSMSGeneral = class(TMBaseForm)
    Panel3: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Button2: TButton;
    edtMessage: TEdit;
    Memo1: TMemo;
    Panel2: TPanel;
    Panel1: TPanel;
    lblCount: TLabel;
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    Button3: TButton;
    dblCustomerStatus: TDBLookupComboBox;
    Label12: TLabel;
    dblProduct: TDBLookupComboBox;
    Label30: TLabel;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    edtName: TEdit;
    Label4: TLabel;
    edtCompany: TEdit;
    Label5: TLabel;
    edtMobile: TEdit;
    Button1: TButton;
    spFillSMSTMPFromCustomer: TADOStoredProc;
    spFillSMSTMPFromCustomerID: TAutoIncField;
    spFillSMSTMPFromCustomerCustomerID: TIntegerField;
    spFillSMSTMPFromCustomerCustomerNo: TStringField;
    spFillSMSTMPFromCustomerPersonTitle: TWideStringField;
    spFillSMSTMPFromCustomerCompanyName: TWideStringField;
    spFillSMSTMPFromCustomerProductTitle: TWideStringField;
    spFillSMSTMPFromCustomerCustomerStatusTitle: TWideStringField;
    spFillSMSTMPFromCustomerPhone: TWideStringField;
    spFillSMSTMPFromCustomerMobilePhone: TWideStringField;
    QDelDataFromSMSTMP: TADOQuery;
    spFillSMSTMPFromOther: TADOStoredProc;
    spFillSMSTMPFromOtherID: TAutoIncField;
    spFillSMSTMPFromOtherCustomerID: TIntegerField;
    spFillSMSTMPFromOtherCustomerNo: TStringField;
    spFillSMSTMPFromOtherPersonTitle: TWideStringField;
    spFillSMSTMPFromOtherCompanyName: TWideStringField;
    spFillSMSTMPFromOtherPhone: TWideStringField;
    spFillSMSTMPFromOtherMobilePhone: TWideStringField;
    spFillSMSTMPFromOtherProductTitle: TWideStringField;
    spFillSMSTMPFromOtherCustomerStatusTitle: TWideStringField;
    QSMSTMP: TADOQuery;
    QSMSTMPID: TAutoIncField;
    QSMSTMPCustomerID: TIntegerField;
    QSMSTMPCustomerNo: TStringField;
    QSMSTMPPersonTitle: TWideStringField;
    QSMSTMPCompanyName: TWideStringField;
    QSMSTMPPhone: TWideStringField;
    QSMSTMPMobilePhone: TWideStringField;
    QSMSTMPProductTitle: TWideStringField;
    QSMSTMPCustomerStatusTitle: TWideStringField;
    YDBGrid1: TYDBGrid;
    QTMP: TADOQuery;
    lblCost: TLabel;
    Label6: TLabel;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure spFillSMSTMPFromCustomerAfterInsert(DataSet: TDataSet);
    procedure spFillSMSTMPFromCustomerAfterDelete(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure spFillSMSTMPFromOtherAfterInsert(DataSet: TDataSet);
    procedure spFillSMSTMPFromOtherAfterDelete(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure QSMSTMPAfterDelete(DataSet: TDataSet);
    procedure QSMSTMPAfterInsert(DataSet: TDataSet);
    procedure YDBGrid1NeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
    procedure Button2Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ShowCount;
    procedure SMSTMPClear;
    procedure FillSMSTMPFromCustomers;
    procedure InsertLog;
    function GetCost:Double;
    function GetSMSPeice:Integer;
    procedure CostShow;
    procedure CostNotShow;
  public
    { Public declarations }
  end;

var
  FSMSGeneral: TFSMSGeneral;

implementation

uses dmu, SmsCenter1;

{$R *.dfm}

procedure TFSMSGeneral.BitBtn1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFSMSGeneral.Button3Click(Sender: TObject);
begin
  inherited;
  CostNotShow;
  if QSMSTMP.RecordCount>0 then
  begin
    if ShowMyMessage('íÛÇã','ÂíÇ ãÇíá Èå ÍĞİ áíÓÊ  åÓÊíÏ¿',mbOKCancel,mtWarning)= mrOK then
         FillSMSTMPFromCustomers;
  end       
  else
         FillSMSTMPFromCustomers;
end;

procedure TFSMSGeneral.ShowCount;
begin
  if QSMSTMP.Active then
      if not QSMSTMP.IsEmpty then lblCount.Caption:=IntToStr(QSMSTMP.RecordCount)+' ãæÑÏ íÇİÊ ÔÏ ' else lblCount.Caption:='ãæÑÏí íÇİÊ äÔÏ'
  else
     lblCount.Caption:='ãæÑÏí íÇİÊ äÔÏ';
end;

procedure TFSMSGeneral.spFillSMSTMPFromCustomerAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  ShowCount;
end;

procedure TFSMSGeneral.spFillSMSTMPFromCustomerAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  ShowCount;
end;

procedure TFSMSGeneral.Button1Click(Sender: TObject);
begin
  inherited;
  CostNotShow;
  spFillSMSTMPFromOther.Close;
  spFillSMSTMPFromOther.Parameters.ParamByName('@CompanyName').Value:=Trim(edtCompany.Text);
  spFillSMSTMPFromOther.Parameters.ParamByName('@PersonTitle').Value:=Trim(edtName.Text);
  spFillSMSTMPFromOther.Parameters.ParamByName('@MobilePhone').Value:=Trim(edtMobile.Text);
  spFillSMSTMPFromOther.ExecProc;
  QSMSTMP.Close;
  QSMSTMP.Open;
  QSMSTMP.Last;
  ShowCount;
//  DSForm.DataSet:=spFillSMSTMPFromOther;
end;

procedure TFSMSGeneral.SMSTMPClear;
begin
  QDelDataFromSMSTMP.Close;
  QDelDataFromSMSTMP.ExecSQL;
end;

procedure TFSMSGeneral.spFillSMSTMPFromOtherAfterInsert(DataSet: TDataSet);
begin
  inherited;
  ShowCount;
end;

procedure TFSMSGeneral.spFillSMSTMPFromOtherAfterDelete(DataSet: TDataSet);
begin
  inherited;
  ShowCount;
end;

procedure TFSMSGeneral.FormCreate(Sender: TObject);
begin
  inherited;
  SMSTMPClear;
  QSMSTMP.Close;
  QSMSTMP.Open;
  CostNotShow;
end;

procedure TFSMSGeneral.FillSMSTMPFromCustomers;
begin
    SMSTMPClear;
    spFillSMSTMPFromCustomer.Close;
    spFillSMSTMPFromCustomer.Parameters.ParamByName('@CustomerStatusID').Value:=dblCustomerStatus.KeyValue;
    spFillSMSTMPFromCustomer.Parameters.ParamByName('@ProductID').Value:=dblProduct.KeyValue;
    spFillSMSTMPFromCustomer.ExecProc;
    QSMSTMP.Close;
    QSMSTMP.Open;
    ShowCount;
end;

procedure TFSMSGeneral.QSMSTMPAfterDelete(DataSet: TDataSet);
begin
  inherited;
  ShowCount;
  QSMSTMP.Last;
end;

procedure TFSMSGeneral.QSMSTMPAfterInsert(DataSet: TDataSet);
begin
  inherited;
  ShowCount;
  QSMSTMP.Last;
end;

procedure TFSMSGeneral.YDBGrid1NeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Color: TColor);
begin
  inherited;
  if QSMSTMP.RecNo mod 2=0then
       Color:=$00EAF3F4
  else
       Color:=clWhite;
end;

procedure TFSMSGeneral.Button2Click(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TFSMSGeneral.InsertLog;
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
  QTMP.SQL.Add(','+VarToStr(YDBGrid1.DataSource.DataSet.FieldValues['CustomerID']));
  QTMP.SQL.Add(','+'0');
  QTMP.SQL.Add(','+'0');
  QTMP.SQL.Add(','+QuotedStr(edtMessage.Text));
  QTMP.SQL.Add(','+IntToStr(_UserID));
  QTMP.SQL.Add(','+QuotedStr(_WorkSationName));
  QTMP.SQL.Add(','+QuotedStr(_WinOrDomainUserName));
  QTMP.SQL.Add(','+VarToStr(YDBGrid1.DataSource.DataSet.FieldValues['MobilePhone']));
  QTMP.SQL.Add(','+QuotedStr(Memo1.Text));
  QTMP.SQL.Add(')');

  //ShowMessage(QTMP.SQL.Text);

  QTMP.ExecSQL;

end;

function TFSMSGeneral.GetCost: Double;
begin
  if not QSMSTMP.IsEmpty then
      Result:=GetSMSPeice * 14 * QSMSTMP.RecordCount
  else
      Result:=0;    
end;

function TFSMSGeneral.GetSMSPeice: Integer;
var
  i : Integer;
begin
  Result:=0;
  i:=Length(Trim(edtMessage.Text));
  if (i>=1) and (i<=70) then Result:=1;
  if (i>70) and (i<=140) then Result:=2;
  if (i>140) and (i<=210) then Result:=3;
  if (i>210) and (i<=280) then Result:=4;
  if (i>280) and (i<=350) then Result:=5;
  if (i>350) and (i<=420) then Result:=6;
  if (i>420) and (i<=490) then Result:=7;
  if (i>490) and (i<=560) then Result:=8;
  if (i>560) and (i<=630) then Result:=9;
  if (i>630) and (i<=700) then Result:=10;
end;

procedure TFSMSGeneral.N2Click(Sender: TObject);
var
  Rio:SmsCenter;
begin
  inherited;
  if not Dm.SmsSettingIsCorrect then
  begin
      ShowMessage('áØİÇ ÇÈÊÏÇ Èå İÑã ÊäÙíãÇÊ íÇã˜ ãÑÇÌÚå äãÇííÏ');
      Exit;
  end;

  if Trim(edtMessage.Text)='' then
      ShowMessage('ãÊä íÇã ÎÇáí ÇÓÊ')
  else
  begin
       if not QSMSTMP.IsEmpty then
       begin
         if _SendSMS then
         begin
             try
                 Button2.Caption:='ÏÑ ÍÇá ÇÑÓÇá';
                 Button2.Enabled:=False;
  //               Screen.Cursor:=crHourGlass;
                 QSMSTMP.First;
                 while not QSMSTMP.Eof  do
                 begin
                     try
                         Rio:=GetSmsCenter(True,'',nil);
                         Rio.snedOneSms(_TerminalID,_SmsPassWord,QSMSTMPMobilePhone.AsString,edtMessage.Text);
                     except
                         ShowMessage('ÎØÇ ÏÑ ÇÑÓÇá íÇã˜');
                     end;
                     InsertLog;

                     QSMSTMP.Next;
                 end;
             finally
                 Button2.Caption:='ÇÑÓÇá SMS';
                 Button2.Enabled:=True;
  //               Screen.Cursor:=crDefault;
             end;
          end;
       end
       else
           ShowMessage('ãæÑÏí æÌæÏ äÏÇÑÏ');
  end;

end;

procedure TFSMSGeneral.N1Click(Sender: TObject);
begin
  inherited;
  CostShow;
end;

procedure TFSMSGeneral.CostNotShow;
begin
  Label6.Visible:=False;
  lblCost.Visible:=False;
  lblCost.Caption:='';
end;

procedure TFSMSGeneral.CostShow;
begin
  Label6.Visible:=True;
  lblCost.Visible:=True;
  lblCost.Caption:=FloatToStr(GetCost);
end;

end.
