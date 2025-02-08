 unit AddCashPaymentU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ActnMan, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList,
  Buttons, DBActns, UemsVCL, Grids, DBGrids, YDbgrid, XPStyleActnCtrls,
  Menus, DB, ADODB, SolarCalendarPackage, AdvGlowButton;

type
  TFrAddCashPayment = class(TYBaseForm)
    ActionManager1: TActionManager;
    Acancel: TDataSetCancel;
    asearchCheque: TAction;
    Action1: TAction;
    PAccountDeatil: TGroupBox;
    YDBGrid1: TYDBGrid;
    Panel1: TPanel;
    Label5: TLabel;
    StatusLabel: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    BillMemo: TMemo;
    DBAmount: TDBEdit;
    DBEdit5: TDBEdit;
    MajorAccount: TDBLookupComboBox;
    FinancialNotePanel: TPanel;
    Apost: TAction;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBEdit8: TDBEdit;
    Panel2: TPanel;
    BitBtn1: TAdvGlowButton;
    DoBtn: TAdvGlowButton;
    PrintBtn: TAdvGlowButton;
    xpBitBtn1: TAdvGlowButton;
    DBEdit4: TSolarDatePicker;
    pnlMain: TPanel;
    procedure SearchEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure DBAmountChange(Sender: TObject);
//    Procedure SetCashIsDebtor(value : boolean);
    Procedure SetCashIsDebtor(value: boolean);

    procedure RefreshPayment;
    procedure FormCreate(Sender: TObject);
    procedure AExitExecute(Sender: TObject);
    procedure DoBtnClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ApostExecute(Sender: TObject);
    procedure DBAmountExit(Sender: TObject);
    procedure PrintBtnClick(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    FCashIsDebtor:boolean;
  public
   AccountID :integer;
   Property CashIsDebtor: boolean read FCashIsDebtor write    SetCashIsDebtor;
    { Public declarations }
  end;

var
  FrAddCashPayment: TFrAddCashPayment;
implementation

uses dmu,YShamsiDate,BusinessLayer,AccountDetailsU,QrPaymentU,AddFinancialNoteU,FinancialNoteDetail_NewU;
{$R *.dfm}


Procedure TFrAddCashPayment.SetCashIsDebtor(value: boolean);
  begin
    FCashIsDebtor:=value;
    IF value then
     Begin
//901112 œÌœ«—Ì«‰”      StatusLabel.Caption  :='Ê«—Ì“ »Â Õ”«»';
//901112 œÌœ«—Ì«‰”      IF _EXCEPTION_SetCashIsDebtor THEN
//901112 œÌœ«—Ì«‰”        StatusLabel.Caption:='»—œ«‘  «“ Õ”«»'
     End
    Else
     Begin
//      PAccountDeatil.Caption:='Ê«—Ì“ »Â Õ”«»';
//901112 œÌœ«—Ì«‰”       StatusLabel.Caption:='»—œ«‘  «“ Õ”«»';
//901112 œÌœ«—Ì«‰”      IF _EXCEPTION_SetCashIsDebtor THEN
//901112 œÌœ«—Ì«‰”       StatusLabel.Caption:='Ê«—Ì“ »Â Õ”«»';
     End;


end;

procedure TFrAddCashPayment.SearchEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);

begin
  inherited;
  if key=13 then
    RefreshPayment
end;
procedure TFrAddCashPayment.RefreshPayment;
begin

  with dm,Select_Payment do
  begin
    Open_Report_LatestPayment_ByAccountID(AccountID);
    FrFinancialNoteDetail_New.FinancialNoteid:=0;
    FrAccountDetails.AccountID:=AccountID;

    Open_Payment(0);
    Insert;
    //dm.Select_PaymentDocumentNo.Value:=Get_NewDocumnetNo(DBEdit4.Text);
    DoBtn.Enabled:=true;
    if CashIsDebtor then
    begin
      Select_PaymentCreditorAccountID.AsInteger:=AccountID;
      MajorAccount.DataField:='DebtorAccountID';
    end
    else
    begin
      Select_PaymentDebtorAccountID.AsInteger:=AccountID;
      MajorAccount.DataField:='CreditorAccountID';
    end;
    {Ranjbar}
    //Select_PaymentDate.AsString:=_Today;
    Select_PaymentDate.AsString:=_Today;
    //---
    Select_PaymentTime.AsString:=Get_Time;
    Select_PaymentInsertUserID.AsInteger:=_Userid;
  end;
end;

procedure TFrAddCashPayment.FormShow(Sender: TObject);
begin
  inherited;
  Open_All_Cash_Accounts(AccountID);
  MajorAccount.SetFocus;
  {Ranjbar Ver3}
  DBGrid_LoadColumns(Self.Name,YDBGrid1);
end;

procedure TFrAddCashPayment.DBAmountChange(Sender: TObject);
begin
  inherited;
//   try BillMemo.Text:=Bill(strtoint64(DeleteComma(TDBEdit(sender).Text)))+' —Ì«·'
  Try BillMemo.Text:=Bill(strtoint64(DeleteComma(TDBEdit(sender).Text)))+' '+Get_SystemSetting('EdtMoneyUnit')+' ';
  Except
  end;
end;

procedure TFrAddCashPayment.FormCreate(Sender: TObject);
begin
  inherited;
   FrAccountDetails:=TFrAccountDetails.Create(Application);
   FrAccountDetails.ShowInPanel( PAccountDeatil);
   FrFinancialNoteDetail_New:=TFrFinancialNoteDetail_New.Create(Application);
   FrFinancialNoteDetail_New.ShowInPanel(FinancialNotePanel);
end;

procedure TFrAddCashPayment.AExitExecute(Sender: TObject);
begin
  inherited;
dm.Select_Payment.Cancel;
Close;
end;

procedure TFrAddCashPayment.DoBtnClick(Sender: TObject);
begin
  inherited;
  if MajorAccount.KeyValue=Null then
  begin
    ShowMessage('«» œ« ’‰œÊﬁ —« «‰ Œ«» ò‰Ìœ');
    MajorAccount.SetFocus;
  end
  else
    if (Dm.Select_PaymentAmount.AsLargeInt=0) or (Dm.Select_PaymentAmount.ISNULL) then
      raise Exception.Create('„»·€ —« „‘Œ’ ‰„«ÌÌœ');

  if MajorAccount.KeyValue=Null then
  begin
    ShowMessage('«» œ« ’‰œÊﬁ —« «‰ Œ«» ò‰Ìœ');
    MajorAccount.SetFocus;
  end
  else
  if  (Dm.FinancialNote_Master <> nil) and
      (Dm.Select_PaymentAmount <> nil) and
      (Dm.FinancialNote_Master.Active) and
      (_AmountForRefreshPayment=0) and
      (Dm.FinancialNote_MasterAmount.AsLargeInt<>Dm.Select_PaymentAmount.AsLargeInt) and
      ((not Dm.FinancialNote_MasterAmount.IsNull) and
      (Dm.FinancialNote_MasterAmount.AsLargeInt<>0)) then
    ShowMessage('„»·€ ò· çò »« „»·€ „‘Œ’ ‘œÂ »—«»— ‰Ì” ')
  else
    Apost.Execute;

  xpBitBtn1.Enabled := True;
  PrintBtn.Enabled :=true;
end;

procedure TFrAddCashPayment.BitBtn1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFrAddCashPayment.ApostExecute(Sender: TObject);
VAR
  FNoteTypeID,SqlText,mid,Desc:string;
  _Crtr_DetAccountID,_cr,_db,_MainCr,_MainDB:INTEGER;
begin
  inherited;
//  if trim(DBEdit8.Text)<>'' then
  Desc := DBEdit8.Text;
//  else
//   desc := dobtn.Caption;
  dm.Select_PaymentDocumentNo.Value:=Get_NewDocumnetNo(DBEdit4.Text);
  dm.Select_PaymentFinancialNoteID.AsInteger:=FrFinancialNoteDetail_New.FinancialNoteid;
    SqlText:=' SELECT FinancialNote_Master.FinancialNoteTypeID '+
             ' FROM   FinancialNote_Detail INNER JOIN '+
             '        FinancialNote_Master ON FinancialNote_Detail.FinancialNote_MasterID = FinancialNote_Master.FinancialNote_MasterID '+
             ' WHERE  FinancialNote_Detail.FinancialNote_DetailID='+IntToStr(FrFinancialNoteDetail_New.FinancialNoteid);
    FNoteTypeID:=Qry_GetResult(sqlText,Dm.YeganehConnection);
  if FNoteTypeID='' then
    FNoteTypeID:='0';
  if (FrFinancialNoteDetail_New.FinancialNoteid>0) and (FNoteTypeID='1') then
  begin
    _MainCr:=Dm.Select_PaymentCreditorAccountID.AsInteger;
    _MainDB:=Dm.Select_PaymentDebtorAccountID.AsInteger;

    if CashIsDebtor then//Ê«—Ì“ »Â Õ”«»
    begin
      if (Get_SystemSetting('EdtResiveAccount')=NULL) or
         (Get_SystemSetting('EdtResiveAccount')<1)   then
         Raise Exception.Create('œ— ﬁ”„   ‰ŸÌ„«  ”Ì” „ ‘„«—Â Õ”«» «”‰«œ œ—Ì«› ‰Ì —« „‘Œ’ ‰„«ÌÌœ');
             _Crtr_DetAccountID:=Dm.Select_PaymentDebtorAccountID.AsInteger;;//Dm.Select_PaymentDebtorAccountID.AsInteger;
             _Cr:=Dm.Select_PaymentCreditorAccountID.AsInteger;
             _Db:=Get_AccountID_ByAccountNo(Get_SystemSetting('EdtResiveAccount'));
    end
    else
    begin
      if (Get_SystemSetting('EdtPayAccount')=NULL) or
         (Get_SystemSetting('EdtPayAccount')<1)   then
         Raise Exception.Create('œ— ﬁ”„   ‰ŸÌ„«  ”Ì” „ ‘„«—Â Õ”«» «”‰«œ Å—œ«Œ ‰Ì —« „‘Œ’ ‰„«ÌÌœ');
             _Crtr_DetAccountID:=Dm.Select_PaymentCreditorAccountID.AsInteger;
             _Cr:=Get_AccountID_ByAccountNo(Get_SystemSetting('EdtPayAccount'));
             _Db:=Dm.Select_PaymentDebtorAccountID.AsInteger;

    end;
    DM.FinancialNote_Detail.First;
    try
    while not DM.FinancialNote_Detail.EOF do
    begin
      Insert_Payment(NormalPayTypeID,
                        _cr,
                        _Db,
                        dm.Select_PaymentFinancialNoteID.AsInteger,
                        dm.FinancialNote_DetailAmount.AsInteger,
                        Desc,
                        0,
                        dm.Select_PaymentDocumentNo.AsString,
                        '',
                        DM.FinancialNote_DetailFinancialNote_DetailID.AsInteger,
                        _Crtr_DetAccountID ,
                        _MainCr,
                        _MaindB
                        );
         DM.FinancialNote_Detail.Next;
    end;
    except
    end;
  end
  else
  begin

// -----------------------------------------------------------------------------
 IF NOT ISSelectedDbtOrCrtCorrect(dm.Select_PaymentDebtorAccountID.AsInteger,
                                  dm.Select_PaymentCreditorAccountID.AsInteger) THEN
 BEGIN
   ShowMessage('Õ”«» «‰ Œ«» ‘œÂ ‰«œ—”  «” ');
   exit;
 END;

  if not Account_Has_Balance(dm.Select_PaymentCreditorAccountID.AsInteger,
                            dm.Select_PaymentDebtorAccountID.AsInteger,StrToInt64(DeleteComma(DBAmount.text)),1) then
   begin
     ShowMessage('„ÊÃÊœÌ Õ”«» ò«›Ì ‰Ì” ');
     exit;
   end;

   if dm.Select_Payment.state=dsinsert then
    dm.Select_PaymentDocumentNo.Value:=Get_NewDocumnetNo(DBEdit4.Text);
   IF (FNoteTypeID<>'0') AND (FNoteTypeID<>'1') THEN //«ê— çò ‰»«‘œ
   BEGIN
     Dm.Select_PaymentFinancialNote_DetailID.AsInteger:=FrFinancialNoteDetail_New.FinancialNoteid;
     Qry_SetResult(' Update FinancialNote_Detail  '+
                   ' Set    NoteStatusID=3 '+
                   ' Where  FinancialNote_DetailID='+INTTOSTR(FrFinancialNoteDetail_New.FinancialNoteid),dm.YeganehConnection);

   END;


   dm.Select_Payment.Post;
END;
// -----------------------------------------------------------------------------
PrintBtn.show;
DoBtn.Enabled:=false;
_FinancialNoteid:=-1;
FrFinancialNoteDetail_New.FinancialNoteid:=0;
end;

procedure TFrAddCashPayment.DBAmountExit(Sender: TObject);
begin
  inherited;
  TEditExit(sender);
  FrFinancialNoteDetail_New.DefaultAmount:=strtoint64(Tdbedit(Sender).Text);

end;

procedure TFrAddCashPayment.PrintBtnClick(Sender: TObject);
begin
  inherited;

  FrQrPayment:=TFrQrPayment.Create(Application);
  FrQrPayment.IsPay:=CashIsDebtor;

  FrQrPayment.QRLblSoftTitle.Caption := _SoftTitle;
  FrQrPayment.QRLblSoftTitle2.Caption := _SoftTitle;
  FrQrPayment.QRLblSoftTitle3.Caption := _SoftTitle;
  FrQrPayment.QRLblSoftTitle4.Caption := _SoftTitle;
  FrQrPayment.QRLblSoftTitle_N1.Caption := _SoftTitle;
  FrQrPayment.QRLblSoftTitle_N2.Caption := _SoftTitle;
  //---
  FrQrPayment.QuickRep4.Preview;
//  FrQrPayment.QuickRep1.Preview;


end;

procedure TFrAddCashPayment.xpBitBtn1Click(Sender: TObject);
begin
  inherited;
    dm.PrintPayment_ByDocumentNo(dm.Select_PaymentDocumentNo.AsString);

end;

procedure TFrAddCashPayment.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   inherited;
   {Ranjbar Ver3}
   DBGrid_SaveColumns(Self.Name,YDBGrid1);
end;

end.
