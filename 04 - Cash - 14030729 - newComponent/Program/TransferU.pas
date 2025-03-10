 unit TransferU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ActnMan, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList,
  Buttons, DBActns, UemsVCL, Grids, DBGrids, YDbgrid, XPStyleActnCtrls,
  Menus, ComCtrls, xpPages, DB, YLargeIntField, ADODB, AdvGlowButton;

type
  TFrTransfer = class(TYBaseForm)
    SearchPanel: TPanel;
    SearchEdit1: TEdit;
    ActionManager1: TActionManager;
    Acancel: TDataSetCancel;
    asearchCheque: TAction;
    Action1: TAction;
    PAccountDeatil: TPanel;
    Label2: TLabel;
    PanelData: TPanel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    DBEdit1: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit8: TDBEdit;
    FinancialNotePanel: TPanel;
    Apost: TAction;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBEdit4: TDBShamsiDateEdit;
    Panel2: TPanel;
    SearchEdit2: TEdit;
    Panel1: TPanel;
    PopupMenu1: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    xpPageControl2: TPageControl;
    xpTabSheet3: TTabSheet;
    PicImage: TImage;
    sign: TTabSheet;
    SignImage: TImage;
    Select_Account_Details: TADOStoredProc;
    Select_Account_DetailsAccountID: TAutoIncField;
    Select_Account_DetailsAccountNo: TStringField;
    Select_Account_DetailsAccountDate: TStringField;
    Select_Account_DetailsPersonalNo: TWideStringField;
    Select_Account_DetailsSign: TBlobField;
    Select_Account_Detailspicture: TBlobField;
    Select_Account_DetailsAccountTitle: TWideStringField;
    Select_Account_DetailsDebitstatus: TStringField;
    Select_Account_DetailsNumberOfNotPaidPart: TIntegerField;
    DSelect_Account_Details: TDataSource;
    Select_Account_Detailsexist: TLargeintField;
    Select_Account_DetailsPayBalance: TLargeintField;
    Select_Account_DetailsMonthlyBalance: TLargeintField;
    Panel3: TPanel;
    BitBtn1: TAdvGlowButton;
    PrintBtn: TAdvGlowButton;
    xpBitBtn2: TAdvGlowButton;
    xpBitBtn1: TAdvGlowButton;
    DoBtn: TAdvGlowButton;
    Shape1: TShape;
    Label6: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    PersonalNo: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBText1: TDBText;
    Label18: TLabel;
    DBEdit3: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    Select_Account_DetailsTOTALEXIST: TLargeintField;
    Select_Account_DetailsDEBITSTATUSTITLE: TStringField;
    Select_Account_DetailsCONTACTID: TIntegerField;
    Label1: TLabel;
    Label19: TLabel;
    procedure SearchEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PrintBtnClick(Sender: TObject);
    procedure AExitExecute(Sender: TObject);
    procedure DoBtnClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ApostExecute(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure xpBitBtn2Click(Sender: TObject);
    procedure SearchEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    Procedure  Open_Creditor_Details;
    Procedure  ShowCreditorDetails;
  private
    { Private declarations }
  public
   BalanceMode: boolean;
    { Public declarations }

  end;

var
  FrTransfer: TFrTransfer;
implementation

uses dmu,   YShamsiDate, BusinessLayer, AccountDetailsU,
  QrPaymentU, AddFinancialNoteU,
  FinancialNoteDetail_NewU;
{$R *.dfm}

var  CreditorAccountID,DebtorAccountID :integer;


procedure TFrTransfer.SearchEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);

begin
  inherited;
  if key<>13 then
    exit;
    DebtorAccountID:=Get_AccountID_ByAccountNo(SearchEdit1.Text);
    if DebtorAccountID<0 then

     begin
      ShowMessage('��� ���� ���� ��� ���');
      SearchEdit1.SetFocus;
      exit;
     end;
     if DebtorAccountID=0 then
     begin
      ShowMessage('��� ����� ���� ���� �����');
      SearchEdit1.SetFocus;
      exit;
     end;

      FrAccountDetails.AccountID:=DebtorAccountID;
      SearchEdit2.SetFocus;
end;
procedure TFrTransfer.DBEdit1Change(Sender: TObject);
begin
  inherited;
  if Tdbedit(Sender).Text<>'' then
    FrFinancialNoteDetail_New.DefaultAmount:= StrToInt64(DeleteComma(Tdbedit(Sender).Text))
  else
    FrFinancialNoteDetail_New.DefaultAmount:=0;

//  try Label12.Caption:=Bill(StrToInt64(DeleteComma(Tdbedit(Sender).Text)))+' ����'; except end;
  try Label12.Caption:=Bill(StrToInt64(DeleteComma(Tdbedit(Sender).Text)))+' ' +Get_SystemSetting('EdtMoneyUnit')+' '; except end;
  end;

procedure TFrTransfer.FormCreate(Sender: TObject);
begin
  inherited;
 BalanceMode:=false;
 FrAccountDetails:=TFrAccountDetails.Create(Application);
 FrAccountDetails.ShowInPanel( PAccountDeatil);
 FrFinancialNoteDetail_New:=TFrFinancialNoteDetail_New.Create(Application);
 FrFinancialNoteDetail_New.ShowInPanel(FinancialNotePanel);
end;

procedure TFrTransfer.PrintBtnClick(Sender: TObject);
begin
  inherited;

  FrQrPayment:=TFrQrPayment.Create(Application);
  FrQrPayment.IsPay:=True;
//  FrQrPayment.QuickRep1.Preview;
  FrQrPayment.QRLblSoftTitle.Caption := _SoftTitle;
  FrQrPayment.QRLblSoftTitle2.Caption := _SoftTitle;
  FrQrPayment.QRLblSoftTitle3.Caption := _SoftTitle;
  FrQrPayment.QRLblSoftTitle4.Caption := _SoftTitle;
  FrQrPayment.QRLblSoftTitle_N1.Caption := _SoftTitle;
  FrQrPayment.QRLblSoftTitle_N2.Caption := _SoftTitle;
  //---
  FrQrPayment.QuickRep4.Preview;

end;

procedure TFrTransfer.AExitExecute(Sender: TObject);
begin
  inherited;
dm.Select_Payment.Cancel;
Close;
end;

procedure TFrTransfer.DoBtnClick(Sender: TObject);
begin
  inherited;
   if Dm.Select_PaymentCreditorAccountID.IsNull or Dm.Select_PaymentDebtorAccountID.IsNull then
     begin
      ShowMessage('����� ���� �� �� ���� ������');
      SearchEdit1.SetFocus;
     end
   else
    Apost.Execute;
end;

procedure TFrTransfer.BitBtn1Click(Sender: TObject);
begin
  inherited;
Close;
end;

procedure TFrTransfer.ApostExecute(Sender: TObject);
begin
  inherited;
 dm.Select_PaymentFinancialNoteID.AsInteger:=FrFinancialNoteDetail_New.FinancialNoteid;
 if not BalanceMode then
 if not Account_Has_Balance(dm.Select_PaymentCreditorAccountID.AsInteger,dm.Select_PaymentdebtorAccountID.AsInteger,dm.Select_PaymentAmount.AsLargeInt,1) then
   begin
     ShowMessage('������ ���� ���� ����');
     exit;
   end;
if dm.Select_Payment.State=dsinsert then
   dm.Select_PaymentDocumentNo.AsString:=Get_NewDocumnetNo(_Today);

dm.Select_Payment.Post;
PrintBtn.show;
DoBtn.Enabled:=false;
ShowMessage('������ ��� �� ������ ����� ��.');
end;

procedure TFrTransfer.xpBitBtn1Click(Sender: TObject);
begin
  inherited;
  FrQrPayment:=TFrQrPayment.Create(Application);
//  FrQrPayment.QuickRep1.Preview;
  FrQrPayment.QRLblSoftTitle.Caption := _SoftTitle;
  FrQrPayment.QRLblSoftTitle2.Caption := _SoftTitle;
  FrQrPayment.QRLblSoftTitle3.Caption := _SoftTitle;
  FrQrPayment.QRLblSoftTitle4.Caption := _SoftTitle;
  FrQrPayment.QRLblSoftTitle_N1.Caption := _SoftTitle;
  FrQrPayment.QRLblSoftTitle_N2.Caption := _SoftTitle;
  //---
  FrQrPayment.QuickRep4.Preview;

end;

procedure TFrTransfer.xpBitBtn2Click(Sender: TObject);
begin
  inherited;
 dm.PrintPayment_ByDocumentNo(dm.Select_PaymentDocumentNo.AsString);
end;

procedure TFrTransfer.SearchEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key<>13 then
    exit;

  if DebtorAccountID<=0 then
   begin
      ShowMessage('����� ����� ���� ������ ����� �� ���� ������');
      SearchEdit1.SetFocus;
      exit;

   end;
    CreditorAccountID:=Get_AccountID_ByAccountNo(SearchEdit2.Text);
    if CreditorAccountID<0 then
     begin
      ShowMessage('��� ���� ���� ��� ���');
      SearchEdit2.SetFocus;
      exit;
     end;
    if CreditorAccountID=0 then
     begin
      ShowMessage('��� ����� ���� ���� �����');
      SearchEdit2.SetFocus;
      exit;
     end;

     ShowCreditorDetails;
     with dm,Select_Payment do
     begin
      FrFinancialNoteDetail_New.FinancialNoteid:=0;

       Open_Payment(0);
       Insert;
       Select_PaymentDocumentNo.AsString:=Get_NewDocumnetNo(_Today);
       DoBtn.Enabled:=true;

       Select_PaymentCreditorAccountID.AsInteger:=CreditorAccountID;//
       Select_PaymentDebtorAccountID.AsInteger:=DebtorAccountID;//
       {Ranjbar}
       //Select_PaymentDate.AsString:=_Today;
       Select_PaymentDate.AsString:=_Today;
       //---
       Select_PaymentTime.AsString:=Get_Time;
       Select_PaymentInsertUserID.AsInteger:=_Userid;
     end;
    DBEdit1.SetFocus; 

end;

Procedure  TFrTransfer.Open_Creditor_Details;
  begin
  with Select_Account_Details,parameters do
     begin
       Close;
      ParamByName('@AccountID').value:=CreditorAccountID;
      Open;
   end;
end;

Procedure  TFrTransfer.ShowCreditorDetails;
 begin
  Open_Creditor_Details;
    if not Select_Account_Detailspicture.IsNull then
    begin
      dm.Select_Account_Detailspicture.SaveToFile(_TempPath+'\Pic.jpg');
       PicImage.Picture.LoadFromFile(_TempPath+'\Pic.jpg');
    end;

    if not Select_Account_DetailsSign.IsNull then
    begin
     dm.Select_Account_DetailsSign.SaveToFile(_TempPath+'\sign.jpg');
     SignImage.Picture.LoadFromFile(_TempPath+'\sign.jpg');
    end;
 end;


end.
