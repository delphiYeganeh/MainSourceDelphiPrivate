unit PrintMonthlyU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ActnList, StdCtrls, UemsVCL, ExtCtrls, QRCtrls,
  QuickRpt, Mask, DBCtrls, Menus, CheckLst, YchecklistBox, DB,
  YLargeIntField, ADODB, Grids, DBGrids, Buttons, YQRAngelLabel,
  SolarCalendarPackage, AdvGlowButton;

type
  TFrPrintMonthly = class(TYBaseForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRShape3: TQRShape;
    QRShape2: TQRShape;
    QRShape1: TQRShape;
    CashTitle3: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText8: TQRDBText;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel19: TQRLabel;
    QRDBText14: TQRDBText;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    payam3_S: TQRLabel;
    QuickRep2: TQuickRep;
    QRBand1: TQRBand;
    QRShape19: TQRShape;
    QRShape14: TQRShape;
    Cashtitle2: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRLabel27: TQRLabel;
    QRLabel29: TQRLabel;
    QRDBText23: TQRDBText;
    QRShape15: TQRShape;
    Payam2_M: TQRLabel;
    QRDBText32: TQRDBText;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    Cashtitle1: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRLabel35: TQRLabel;
    QRLabel37: TQRLabel;
    QRDBText30: TQRDBText;
    Payam1_S: TQRLabel;
    QRDBText31: TQRDBText;
    QRShape13: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRLabel20: TQRLabel;
    QRDBText33: TQRDBText;
    QRLabel26: TQRLabel;
    QRDBText34: TQRDBText;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRShape20: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    PAccountDetail: TPanel;
    CashLogo3: TQRImage;
    CashLogo4: TQRImage;
    Panel2: TPanel;
    Button1: TAdvGlowButton;
    Button2: TAdvGlowButton;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel1: TPanel;
    PayStatus: TRadioGroup;
    RadioGroup2: TRadioGroup;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    message_M: TEdit;
    MEDateFrom: TSolarDatePicker;
    MEDateTo: TSolarDatePicker;
    Panel5: TPanel;
    CKLBAccount: TYchecklistBox;
    Report_Account: TADOStoredProc;
    Report_AccountMonthlyTypeTitle: TWideStringField;
    Report_AccountBankTitle: TWideStringField;
    Report_AccountAccountID: TAutoIncField;
    Report_AccountAccountTitle: TWideStringField;
    Report_AccountAccountDate: TStringField;
    Report_AccountMonthlyTypeID: TIntegerField;
    Report_AccountMonthlyBeginDate: TStringField;
    Report_AccountFamilyid: TIntegerField;
    Report_AccountAccountTypeID: TWordField;
    Report_AccountContactID: TAutoIncField;
    Report_AccountPersonalNo: TWideStringField;
    Report_AccountFirstName: TWideStringField;
    Report_AccountLastName: TWideStringField;
    Report_AccountFullName: TWideStringField;
    Report_AccountFatherName: TWideStringField;
    Report_AccountIdno: TWideStringField;
    Report_AccountBirthPlace: TWideStringField;
    Report_AccountAddress: TWideStringField;
    Report_AccountPhones: TWideStringField;
    Report_AccountJob: TWideStringField;
    Report_AccountMemo: TWideStringField;
    Report_AccountUserField1: TWideStringField;
    Report_AccountUserField2: TWideStringField;
    Report_AccountContactTypeID: TWordField;
    Report_AccountFamilyTitle: TWideStringField;
    Report_AccountIsActive: TBooleanField;
    Report_AccountBirthDate: TStringField;
    Report_Accountexist: TYLargeIntField;
    Report_AccountAccountNo: TStringField;
    Report_AccountDebitStatusTitle: TStringField;
    DReport_Account: TDataSource;
    SBChRev1: TAdvGlowButton;
    SBChNone1: TAdvGlowButton;
    SBChAll1: TAdvGlowButton;
    SBChSrch1: TAdvGlowButton;
    QrSrchAccount: TADOQuery;
    QrSrchAccountAccountID: TAutoIncField;
    QrSrchAccountAccountTitle: TWideStringField;
    QrSrchAccountAccountNo: TStringField;
    Label1: TLabel;
    ChBoPreview: TCheckBox;
    QRShape21: TQRShape;
    CashTitle4: TQRLabel;
    QRShape22: TQRShape;
    Label5: TLabel;
    message_S: TEdit;
    payam4_M: TQRLabel;
    QRStringsBand1: TQRStringsBand;
    QRAngledLabel1: TQRAngledLabel;
    QRAngledLabel2: TQRAngledLabel;
    Button3: TAdvGlowButton;
    ADOQuery: TADOQuery;
    btnPrintProfile: TAdvGlowButton;
    spGetAccountProfile: TADOStoredProc;
    spGetAccountProfileAccountNo: TStringField;
    spGetAccountProfileLFName: TWideStringField;
    spGetAccountProfileFatherName: TWideStringField;
    spGetAccountProfileAccountDate: TStringField;
    spGetAccountProfileBirthDate: TStringField;
    spGetAccountProfileTitle: TStringField;
    spGetAccountProfilePhones: TWideStringField;
    spGetAccountProfilePersonalNo: TWideStringField;
    spGetAccountProfileExist: TLargeintField;
    spGetAccountProfileTotalExist: TLargeintField;
    spGetAccountProfilepicture: TBlobField;
    spGetAccountProfileMonthlyTypeTitle: TWideStringField;
    qrProfile: TQuickRep;
    TitleBand1: TQRBand;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    ProfileCashTitle: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBImage1: TQRDBImage;
    QRLabel7: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRLabel18: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRLabel22: TQRLabel;
    QRLabel28: TQRLabel;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRLabel30: TQRLabel;
    PAccountDetailTmp: TPanel;
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure QuickRep2Preview(Sender: TObject);
    procedure QuickRep1Preview(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SBChAll1Click(Sender: TObject);
    procedure SBChNone1Click(Sender: TObject);
    procedure SBChSrch1Click(Sender: TObject);
    procedure SBChRev1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure btnPrintProfileClick(Sender: TObject);
    procedure qrProfilePreview(Sender: TObject);
  private

  public
    { Public declarations }
     LoanFirstNo, LoanLastNo : String;
     AccountID: integer;
  end;

var
  FrPrintMonthly: TFrPrintMonthly;

implementation

uses DMU, BusinessLayer, AccountDetailsU, Upreview,YShamsiDate, SearchFM;

{$R *.dfm}
procedure TFrPrintMonthly.Button2Click(Sender: TObject);
Var
  I:integer;
  TempAccountID:integer;
begin
  inherited;
  {Ranjbar 88.07.19}
  {Open_Monthly_Details(AccountID,MEDateFrom.Text,MEDateTo.Text,PayStatus.ItemIndex);
  payam1.Caption := message.Text;
  payam2.Caption := message.Text;
  payam3.Caption := message.Text;
  if RadioGroup2.ItemIndex=0 then
    QuickRep1.Preview
  else
    QuickRep2.Preview;}
  if CKLBAccount.Items.Count=0 then
  begin
    TempAccountID :=  AccountID;
    Open_Monthly_Details(TempAccountID , Txt_Del254(MEDateFrom.Text) , Txt_Del254(MEDateTo.Text) , PayStatus.ItemIndex);
    payam1_S.Caption := message_S.Text;
    Payam2_M.Caption := message_M.Text;
    payam3_S.Caption := message_S.Text;
    Payam4_M.Caption := message_M.Text;

    if dm.Select_Monthly_Details.RecordCount > 0 then
      if ChBoPreview.Checked then
      begin
        if RadioGroup2.ItemIndex=0 then
          QuickRep1.Preview
        else
          QuickRep2.Preview;
      end
      else
      begin
        if RadioGroup2.ItemIndex=0 then
          QuickRep1.Print
        else
          QuickRep2.Print;
      end;
  end;

  for I:=0 to CKLBAccount.Items.Count -1 do
  begin
    if CKLBAccount.Checked[I] then
    begin
      TempAccountID :=  CKLBAccount.codes[I];
      
      Open_Monthly_Details(TempAccountID , Txt_Del254(MEDateFrom.Text) , Txt_Del254(MEDateTo.Text) , PayStatus.ItemIndex);
      payam1_S.Caption := message_S.Text;
      Payam2_M.Caption := message_M.Text;
      payam3_S.Caption := message_S.Text;
      Payam4_M.Caption := message_M.Text;

      //if Pos(',', CKLBAccount.SelectedCodes) = 0 then // �� ������� �� ��� ������ ��� ���
      if dm.Select_Monthly_Details.RecordCount > 0 then
        if ChBoPreview.Checked then
        begin
          if RadioGroup2.ItemIndex=0 then
            QuickRep1.Preview
          else
            QuickRep2.Preview;
        end
        else
        begin
          if RadioGroup2.ItemIndex=0 then
            QuickRep1.Print
          else
            QuickRep2.Print;
        end;
    end;
  end;  
    //---
end;

procedure TFrPrintMonthly.FormCreate(Sender: TObject);
begin
  inherited;
  FrAccountDetails:=TFrAccountDetails.Create(Application);
  { TODO -oparsa : 14030701 }
  //FrAccountDetails.ShowInPanel(PAccountDetail);
  FrAccountDetails.ShowInPanel(PAccountDetailTmp);
  { TODO -oparsa : 14030701 }
  //message.Text:=_PriodTitle;
  Cashtitle1.Caption:=trim(_SoftTitle);
  Cashtitle2.Caption:=trim(_SoftTitle);
  Cashtitle3.Caption:=trim(_SoftTitle);
  Cashtitle4.Caption:=trim(_SoftTitle);

  {Ranjbar
  datefrom.Text:=copy(_today,1,8)+'01';
  dateTo.Text:=copy(_today,1,5)+'12/01';}
  //MEDateFrom.Text := #254+copy(_Today,1,8)+'01';
  //MEDateTo.Text := #254+copy(_today,1,5)+'12/01';
  MEDateFrom.Text:= copy(_Today,1,5)+'01/01';
  MEDateTo.Text  := copy(_Today,1,5)+'12/29';
  message_M.Text:=Get_SystemSetting('PayBookMessage');
  message_S.Text:=Get_SystemSetting('PayBookMessage');
   //---
end;

procedure TFrPrintMonthly.FormShow(Sender: TObject);
begin
  inherited;
  FrAccountDetails.AccountID := AccountID;
  //---
end;

procedure TFrPrintMonthly.QuickRep2Preview(Sender: TObject);
begin
  inherited;
  Fpreview:=Tfpreview.Create(Application);
  Fpreview.Show;
  Fpreview.QrPreview1.QrPrinter:= QuickRep2.QRPrinter;
end;

procedure TFrPrintMonthly.QuickRep1Preview(Sender: TObject);
begin
  inherited;
  Fpreview:=Tfpreview.Create(Application);
  Fpreview.Show;
  Fpreview.QrPreview1.QrPrinter:= QuickRep1.QRPrinter;
end;

procedure TFrPrintMonthly.FormClose(Sender: TObject;var Action: TCloseAction);
begin
  inherited;
  {Ranjbar 88.07.19}
  Report_Account.Close;
  //---
end;

procedure TFrPrintMonthly.SBChAll1Click(Sender: TObject);
Var
  I:integer;
begin
  inherited;
  for I:=0 to CKLBAccount.Items.Count-1 do
    CKLBAccount.Checked[I] := True;
end;

procedure TFrPrintMonthly.SBChNone1Click(Sender: TObject);
var
  I:integer;
begin
  inherited;
  for I:=0 to CKLBAccount.Items.Count-1 do
    CKLBAccount.Checked[I] := False;
end;

procedure TFrPrintMonthly.SBChSrch1Click(Sender: TObject);
begin
  inherited;
 // if CKLBAccount.Items.Count > 0 then
 // begin
    dm.FormName := 'FrPrintMonthly';
    if FmSearch.GetSearchValue(QrSrchAccount,'AccountID','AccountTitle',' ',400,400) <> '0' then
    begin
    //  ChLB_SelectItemsFromStr(CKLBAccount ,QrSrchAccountAccountID.AsString, False);
      ChLB_SelectItemsFromStr(CKLBAccount ,QrSrchAccountAccountID.AsString, True);
    end;
//  end;
end;

procedure TFrPrintMonthly.SBChRev1Click(Sender: TObject);
var
  I:integer;
begin
  inherited;
  for I:=0 to CKLBAccount.Items.Count-1 do
    CKLBAccount.Checked[I] := not CKLBAccount.Checked[I];
end;

procedure TFrPrintMonthly.Button3Click(Sender: TObject);
begin
  inherited;
  FrAccountDetails.AccountID := AccountID;
  //{Ranjbar 88.07.19}
  Report_Account.Close;
  Report_Account.Parameters.ParamByName('@AccountTypeID').value := 1;
  Report_Account.Parameters.ParamByName('@ROWCOUNT').value := 0;
  Report_Account.Parameters.ParamByName('@where').value := Null;
  Report_Account.Open;
  CKLBAccount.Fill;
  Report_Account.Locate('AccountID',AccountID,[]);
  ChLB_SelectItemsFromStr( CKLBAccount , IntToStr(AccountID),False);
end;

procedure TFrPrintMonthly.btnPrintProfileClick(Sender: TObject);
var
  blnOpend : Boolean;
begin
  inherited;

  ProfileCashTitle.Caption:=Trim(_SoftTitle);

  blnOpend := True;
  try
    with spGetAccountProfile do
    begin
      Close;
      Parameters.ParamByName('@AccountId').Value  := AccountID;
      Parameters.ParamByName('@Year').Value       := _Year;
      try
        Open;
      except
        blnOpend := False;
      end;
    end;
  finally
    if blnOpend then
      qrProfile.Preview
    else
      ShowMessage('��� �� ������ �������');
  end;
end;

procedure TFrPrintMonthly.qrProfilePreview(Sender: TObject);
begin
  inherited;
  Fpreview:=Tfpreview.Create(Application);
  Fpreview.Show;
  Fpreview.QrPreview1.QrPrinter:= qrProfile.QRPrinter;
end;

end.


