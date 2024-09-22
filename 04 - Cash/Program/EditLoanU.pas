 unit EditLoanU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ActnMan, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList,
  Buttons, DBActns, ComCtrls, DB, ADODB, Grids, DBGrids, YDbgrid, UemsVCL,
  XPStyleActnCtrls, Menus;

type
  TFrEditLoan = class(TYBaseForm)
    ActionManager1: TActionManager;
    ARec: TDataSetPost;
    Acancel: TDataSetCancel;
    PageControl: TPageControl;
    TabSheet3: TTabSheet;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit1: TDBEdit;
    DBC_LoanAmount: TDBComboBox;
    DBComboBox1: TDBLookupComboBox;
    DBComboBox2: TDBLookupComboBox;
    TabSheet5: TTabSheet;
    Panel3: TPanel;
    TabSheet1: TTabSheet;
    YDBGrid1: TYDBGrid;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button7: TButton;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    xpBitBtn1: TBitBtn;
    xpBitBtn3: TBitBtn;
    xpBitBtn4: TBitBtn;
    YDBGrid4: TYDBGrid;
    GaranteeGrid: TYDBGrid;
    DBELoanDate: TDBEdit;
    DBEPartsBeginDate: TDBEdit;
    Label9: TLabel;
    RbPerson: TRadioButton;
    FinancialNotePanel: TPanel;
    Label1: TLabel;
    FinancialNotePanelHesab: TPanel;
    RbHesab: TRadioButton;
    Button1: TButton;
    PnlNoteNoEdit: TPanel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    BitBtn3: TBitBtn;
    edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Panel4: TPanel;
    BitBtn4: TBitBtn;
    Panel5: TPanel;
    BitBtn2: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure xpBitBtn3Click(Sender: TObject);
    procedure xpBitBtn4Click(Sender: TObject);
    procedure GaranteeGridEditButtonClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure DBC_LoanAmountClick(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button7Click(Sender: TObject);
    procedure DBC_LoanAmountKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    LoanID:integer;
    { Public declarations }

  end;

var
  FrEditLoan: TFrEditLoan;

implementation

uses DMU, YShamsiDate, BusinessLayer, PrintPartU, LoanPriorityU,
   MainU, AddattachmentU, FinancialNoteDetailU,
  AddFinancialNoteU, EditPartu, AddFinancialNote_NewU,
  FinancialNoteDetail_NewU;
{$R *.dfm}
procedure TFrEditLoan.FormShow(Sender: TObject);
var
  SqlText:string;
begin
  inherited;

  PageControl.ActivePageIndex:=0;
  Open_Loan(LoanID);
  Open_Loan_Parts(LoanID);
  Open_LoanGaurantor(LoanID);
  Open_LoanAttachment(LoanID);
  dm.Select_Loan.Edit;
  Open_Sponsor;
  {Ranjbar Ver3}
  DBGrid_LoadColumns(Self.Name,GaranteeGrid);
  DBGrid_LoadColumns(Self.Name,YDBGrid4);
  DBGrid_LoadColumns(Self.Name,YDBGrid1);

//didarians
//   ‰Ê⁄ Ê«„
  Label7.Enabled:=False;
  DBComboBox1.Enabled:=False;

// «—ÌŒ «⁄ÿ«Ì Ê«„
  DBELoanDate.Enabled:=False;
  Label8.Enabled:=False;

// «—ÌŒ ‘—Ê⁄ «ﬁ”«ÿ
  DBEPartsBeginDate.Enabled:=False;
  Label10.Enabled:=False;

  _FinancialNote_Field1:='LoanID';
  _FinancialNote_Field2:='LoanNo'    ;
  _FinancialNote_Table :='Loan'  ;
  _FinancialNote_Where :=' AND LoanID='+Dm.Select_LoanLoanID.AsString;
  _AddLoan:=True;

  SqlText:=' Select NoteNo from  FinancialNote_Detail  '+
           ' where FinancialNote_DetailID=(select FINANCIALNOTE_DETAILID '+
           ' From payment where paymentid='+Dm.Select_LoanPaymentID.AsString+')';
  Edit2.Text:=Qry_GetResult(sqlText,Dm.YeganehConnection);
  if (Edit2.Text='') or (Edit2.Text='0') then
  begin
    { TODO -oparsa : 14030701 }
    {
    FrFinancialNoteDetail_New:=TFrFinancialNoteDetail_New.Create(Application);
    FrFinancialNoteDetail_New.ShowInPanel(FinancialNotePanelHesab);
    }
    { TODO -oparsa : 14030701 }
    Label1.Visible := True;
    RbHesab.Visible:= True;
  end
  else
  begin
    Label1.Visible := False;
    RbHesab.Visible:= False;
  end;
end;

procedure TFrEditLoan.xpBitBtn3Click(Sender: TObject);
{begin
  inherited;
 if MessageDlg('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœ',mtConfirmation,[mbyes,mbno],0)=mryes then
   begin
    Delete_LoanGaurantor(dm.Select_LoanGaurantorLoanGaurantorID.AsInteger);
    Open_LoanGaurantor(dm.Select_LoanLoanID.AsInteger);
   end;
end;
}
begin
  inherited;
{ if MessageDlg('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœ',mtConfirmation,[mbyes,mbno],0)=mryes then
   begin
    Delete_LoanGaurantor(dm.Select_LoanGaurantorLoanGaurantorID.AsInteger);
    Open_LoanGaurantor(dm.Select_LoanLoanID.AsInteger);
   end;}
  if MessageDlg('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœ',mtConfirmation,[mbyes,mbno],0)=mryes then
  begin
    UPDATE_AccountForGaurantyInfo(dm.Select_LoanGaurantorGaurantorContactID.AsInteger,
                                  dm.Select_LoanLoanID.AsInteger,
                                  dm.Select_LoanAmount.AsInteger ,2);// --ADD=1 DELETE=2);
    Delete_LoanGaurantor(dm.Select_LoanGaurantorLoanGaurantorID.AsInteger);
    Open_LoanGaurantor(dm.Select_LoanLoanID.AsInteger);
  end;
end;

procedure TFrEditLoan.xpBitBtn4Click(Sender: TObject);
begin
  inherited;
  FrAddAttachment:=TFrAddAttachment.Create(Application);
  FrAddAttachment.DocumnetID:=dm.Select_LoanLoanID.AsInteger;
  FrAddAttachment.documentTypeID:=2;
  FrAddAttachment.ShowModal;
  Open_LoanAttachment(dm.Select_LoanLoanID.AsInteger);
end;

procedure TFrEditLoan.GaranteeGridEditButtonClick(Sender: TObject);
begin
  inherited;
  FrAddFinancialNote_New:=TFrAddFinancialNote_New.Create(Application);
  FrAddFinancialNote_New.PageControl1.ActivePageIndex:=0;
  FrAddFinancialNote_New.ShowModal;
  if _FinancialNoteID > 0 then
    if _FinancialNoteid <> Dm.Select_LoanGaurantorFinancialNoteID.AsInteger then
    begin
      UPDATE_LoanGaurantor_FinancialNoteID(Dm.Select_LoanGaurantorLoanGaurantorID.AsInteger,_FinancialNoteid);
      Open_LoanGaurantor(dm.Select_LoanLoanID.AsInteger);
    end;
end;

procedure TFrEditLoan.Button1Click(Sender: TObject);
begin
  inherited;
  if Dm.Select_Loan.State in [dsedit,dsinsert] then
    if messageShowString('«ÿ·«⁄«  Ê«„  €ÌÌ— ò—œÂ «”  ¬Ì« „«Ì· »Â –ŒÌ—Â «ÿ·«⁄«  Â” Ìœø',true) then
      dm.Select_Loan.Post
    else
      dm.Select_Loan.Cancel;

  FrEditPart:=TFrEditPart.Create(Application);
  FrEditPart.ShowModal;
end;

procedure TFrEditLoan.Button3Click(Sender: TObject);
begin
  inherited;
  YDBGrid1.Print;
end;

procedure TFrEditLoan.Button4Click(Sender: TObject);
begin
  inherited;
  YDBGrid1.ExportToWord;
end;

procedure TFrEditLoan.Button5Click(Sender: TObject);
begin
  inherited;
  PrintParts:=TPrintParts.Create(Application);
  //PrintParts:=TPrintParts.Create(nil);
  LoanID:=Dm.Select_LoanLoanID.AsInteger;//dm.Select_Loan_ByAccountIDLoanId.AsInteger;
  //PrintParts.LoanID:=dm.Select_Loan_ByAccountIDLoanId.AsInteger;
  PrintParts.ShowModal;
end;

procedure TFrEditLoan.DBC_LoanAmountClick(Sender: TObject);
begin
  inherited;
  ShowMessage('„»·€ Ê ‰Ê⁄ Ê«„ —« ‰„Ì  Ê«‰ ÊÌ—«Ì‘ ‰„Êœ');
end;

procedure TFrEditLoan.xpBitBtn1Click(Sender: TObject);
{begin
  inherited;
  FrMain.FindContact(true,3,False);
  if _FoundContactID>0 then
   begin
    Insert_LoanGaurantor(dm.Select_LoanLoanID.AsInteger,_FoundContactID);
    Open_LoanGaurantor(dm.Select_LoanLoanID.AsInteger);
   end

end;
}
var
  Percent,MessageText:string;
  Result:Boolean;
begin
  inherited;
{  FrMain.FindContact(true,3,False);
  if _FoundContactID>0 then
   begin
    Insert_LoanGaurantor(dm.Select_LoanLoanID.AsInteger,_FoundContactID);
    Open_LoanGaurantor(dm.Select_LoanLoanID.AsInteger);
   end
 }
  FrMain.FindContact(true,3,False);

  if _FoundContactID > 0 then
  begin
    {Ranjbar}
    IsValidGaurantor(_FoundContactID,Dm.Select_LoanLoanID.AsInteger,MessageText,Result)  ;
    if not Result then
    begin
      MessageShowString(MessageText, False);
      ABORT;
    end;

{      IF NOT IsValidGaurantor(_FoundContactID,Dm.Select_LoanLoanID.AsInteger)  THEN
      BEGIN
        MessageShowString('«Ì‰ ÷«„‰ ﬁ»·« »—«Ì «Ì‰ Ê«„ «‰ Œ«» ‘œÂ «”  °«‰ Œ«» „Ãœœ €Ì— „Ã«“ «” .', False);
        ABORT;
      END;

      IF NOT IsValidAccountId(Get_AccountID_ByContactID(_FoundContactID),Dm.Select_LoanAmount.AsInteger)  THEN
      BEGIN
        MessageShowString('„ÊÃÊœÌ ÷«„‰ «‰ Œ«» ‘œÂ ° ÃÂ  ÷„«‰  ò«›Ì ‰Ì”  ', False);
        ABORT;
      END;  }

    LoanGrtLimite;//«⁄„«· „ÕœÊœÌ  œ— ÷«„‰ ‘œ‰ ⁄÷ÊÂ«
    //---
    if IsMemberOfCash(_FoundContactID) then
    begin
      if MessageDlg('¬Ì« »·ÊòÂ ‘œ‰ Õ”«» ÷«„‰ —«  «ÌÌœ „Ì ò‰Ìœø',mtConfirmation,[mbyes,mbno],0)=mryes then
      begin
        if dm.Y_InputQuery(' œ—’œ ÷„«‰  ',inttostr(PercentofGauranty(dm.Select_LoanLoanID.AsInteger)),Percent) then
          if strtoint(Percent)>PercentofGauranty(dm.Select_LoanLoanID.AsInteger)  then
          begin
            ShowMessage('œ—’œ «‰ Œ«» ‘œÂ »Ì‘ — «“ Õœ „Ã«“ «”  ° Õœ „Ã«“'+#13+inttostr(PercentofGauranty(dm.Select_LoanLoanID.AsInteger))+' œ—’œ „Ì »«‘œ ' );
            ABORT;
          end
          else
            UPDATE_AccountForGaurantyInfo(Get_AccountID_ByContactID(_FoundContactID), 0, ((dm.Select_LoanAmount.AsInteger * strtoint(Percent ))  /100),1);// --ADD=1 DELETE=2);
      end;
    end;//IsMemberOfCash(AccountID)

    if Percent='' then
      Percent:='0';

    Insert_LoanGaurantor(dm.Select_LoanLoanID.AsInteger,_FoundContactID,STRTOINT(Percent));
    Open_LoanGaurantor(dm.Select_LoanLoanID.AsInteger);
  end
end;

procedure TFrEditLoan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Dm.Select_Loan.State in [dsedit,dsinsert] then
  begin
    if messageShowString('«ÿ·«⁄«  Ê«„  €ÌÌ— ò—œÂ «”  ¬Ì« „«Ì· »Â –ŒÌ—Â «ÿ·«⁄«  Â” Ìœø',true) then
    begin
      if (dm.Select_LoanPartsBeginDate.OldValue<>dm.Select_LoanPartsBeginDate.Value)  or
         (dm.Select_LoanAmount.OldValue<>dm.Select_LoanAmount.Value) then
      begin
        ShowMessage('Å” «“  €ÌÌ— „»·€ Ê«„ Ì«  «—ÌŒ ‘—Ê⁄ «ﬁ”«ÿ »«Ìœ «ﬁ”«ÿ «Ì‰ Ê«„ —« ÊÌ—«Ì‘ ‰„«ÌÌœ');
        abort;
      end;

      dm.Select_Loan.Post;
      Open_Payment(dm.Select_LoanPaymentID.AsInteger);
      dm.Select_Payment.Edit;
      dm.Select_PaymentAmount.Value:=dm.Select_LoanAmount.Value;

      Qry_SetResult(' Update FinancialNote_Detail '+
                    ' Set NoteNo= '+edit2.Text +
                    ' WHERE FinancialNote_DetailId='+
                    ' (SELECT  FINANCIALNOTE_DETAILID FROM PAYMENT WHERE PAYMENTID ='+
                    ' (SELECT     PaymentID  FROM  Loan WHERE LOANID='+Dm.Select_LoanLoanID.AsString+')) ',dm.YeganehConnection);

{     Qry_SetResult(' Update Payment '+
                   ' Set FINANCIALNOTE_DETAILID='+inttostr(_FinancialNoteid) +
                   ' WHERE PaymentID= '+Dm.Select_Loan_PartsPaymentID.AsString,dm.YeganehConnection);
 }

      PnlNoteNoEdit.Visible:=False;


    end
    else
      dm.Select_Loan.Cancel;
  end;
  {Ranjbar Ver3}
  DBGrid_SaveColumns(Self.Name,GaranteeGrid);
  DBGrid_SaveColumns(Self.Name,YDBGrid4);
  DBGrid_SaveColumns(Self.Name,YDBGrid1);
end;

procedure TFrEditLoan.Button7Click(Sender: TObject);
begin
  inherited;
  if (Dm.Select_Loan_PartsNoteNo.AsString='') or
     (Dm.Select_Loan_PartsNoteNo.AsString='0')then
  begin
    ShowMessage('œ— “„«‰ ﬁ”ÿ »‰œÌ çò „‘Œ’ ‰‘œÂ «” .');
  end
  else
  begin
    edit1.Text:=Dm.Select_Loan_PartsNoteNo.AsString;
    PnlNoteNoEdit.Visible:=True;
    PnlNoteNoEdit.Height:= 180;
    PnlNoteNoEdit.Align:=alBottom;
  end;
end;

procedure TFrEditLoan.DBC_LoanAmountKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  DBC_LoanAmount.Text:=CommaSeperate(DBC_LoanAmount.Text);
  DBC_LoanAmount.SelStart:=length(DBC_LoanAmount.Text);
end;

procedure TFrEditLoan.BitBtn2Click(Sender: TObject);
var
  SqlText,FNoteTypeID,_PaymentCr,_PaymentDb,_Desc,mid,_DocNo:string;
  CheckAmount, _WageAmount, _Crtr_DetAccountID, _Cr, _Db, PID, PercentOfPaid,
  _MainCr, _MainDb:Integer;
begin
  inherited;

  SqlText:=' SELECT CASE WHEN CreditorAccountID=(SELECT ACCOUNTID FROM ACCOUNT WHERE ACCOUNTNO IN (SELECT TOP 1 VALUE FROM Setting WHERE VariableName=''EdtResiveAccount''))THEN Crtr_DetAccountID '+
           ' WHEN CreditorAccountID=(SELECT ACCOUNTID FROM ACCOUNT WHERE ACCOUNTNO IN (SELECT TOP 1 VALUE FROM Setting WHERE VariableName=''EDTPAYACCOUNT''))THEN Crtr_DetAccountID '+
           ' ELSE  CreditorAccountID END '+
           ' FROM   PaymenT '+
           ' WHERE PaymentID='+DM.Select_LoanPaymentID.ASSTRING;

  _PaymentCr:=Qry_GetResult(sqlText,Dm.YeganehConnection);

  SqlText:=' SELECT CASE WHEN DebtorAccountID=(SELECT ACCOUNTID FROM ACCOUNT WHERE ACCOUNTNO IN (SELECT TOP 1 VALUE FROM Setting WHERE VariableName=''EdtResiveAccount''))THEN Crtr_DetAccountID '+
           ' WHEN DebtorAccountID=(SELECT ACCOUNTID FROM ACCOUNT WHERE ACCOUNTNO IN (SELECT TOP 1 VALUE FROM Setting WHERE VariableName=''EDTPAYACCOUNT''))THEN Crtr_DetAccountID  '+
           ' ELSE  DebtorAccountID END   '+
           '  FROM   PaymenT  '+
           ' WHERE  PaymentID='+DM.Select_LoanPaymentID.ASSTRING;
  _PaymentDb:=Qry_GetResult(sqlText,Dm.YeganehConnection);

  SqlText:=' SELECT FinancialNote_Master.FinancialNoteTypeID '+
           ' FROM   FinancialNote_Detail INNER JOIN '+
           '        FinancialNote_Master ON FinancialNote_Detail.FinancialNote_MasterID = FinancialNote_Master.FinancialNote_MasterID '+
           ' WHERE  FinancialNote_Detail.FinancialNote_DetailID='+IntToStr(FrFinancialNoteDetail_New.FinancialNoteid);
  FNoteTypeID:=Qry_GetResult(sqlText,Dm.YeganehConnection);

  if (FrFinancialNoteDetail_New.FinancialNoteid>0) then
  begin
    if MessageDlg('¬Ì« «“ ‘„«—Â çòÂ«Ì „‘Œ’ ‘œÂ „ÿ„∆‰ Â” Ìœø',mtConfirmation,[mbyes,mbno],0)=MRNO then
      Exit
    else
    begin
      SqlText:=' SELECT FinancialNote_Detail.amount '+
               ' FROM   FinancialNote_Detail INNER JOIN '+
               '        FinancialNote_Master ON FinancialNote_Detail.FinancialNote_MasterID = FinancialNote_Master.FinancialNote_MasterID '+
               ' WHERE  FinancialNote_Detail.FinancialNote_DetailID='+IntToStr(FrFinancialNoteDetail_New.FinancialNoteid);
      CheckAmount:=strtoint(Qry_GetResult(sqlText,Dm.YeganehConnection));
      if (CheckAmount>dm.Select_LoanAmount.AsInteger) then
        raise Exception.Create('Ã„⁄ „»·€ çò Â« «“ ò· „»·€ «Ì‰ Ê«„ Ã«—Ì »Ì‘ — «” ');

      if (FNoteTypeID='1') then      //«ê— çò »«‘œ
      begin
        if RbPerson.Checked then   //«ê— ‘Œ’ »«‘œ
        begin
          SqlText:=' SELECT ISNULL((Select ISNULL(Amount,0) From Payment where paymentid=(select WagePaymentId from loan where loanid='+Dm.FinancialNote_DetailFND_Loanid.AsString+')),0)';
          _WageAmount:=strtoint(Qry_GetResult(sqlText,Dm.YeganehConnection));

          if (DM.FinancialNote_Detail.RecordCount=1) and
             (DM.FinancialNote_DetailAmount.AsInteger+_WageAmount=DM.Select_LoanAmount.AsInteger) then
            Raise Exception.Create('Å—œ«Œ  ò‰‰œÂ çò ‘Œ’ „Ì »«‘œ »Â «“«Ì Â— ﬁ”ÿ »«Ìœ çò œ—Ì«›  ‰„«ÌÌœ.');

          if (Get_SystemSetting('EdtResiveAccount')=NULL) or
             (Get_SystemSetting('EdtResiveAccount')<1)   then
            Raise Exception.Create('œ— ﬁ”„   ‰ŸÌ„«  ”Ì” „ ‘„«—Â Õ”«» «”‰«œ œ—Ì«› ‰Ì —« „‘Œ’ ‰„«ÌÌœ');

          _Crtr_DetAccountID:=dm.Select_LoanAccountID.AsInteger;
          _Cr:=strtoint(_PAYMENTCR);//MajorAccount.KeyValue;
          _Db:=Get_AccountID_ByAccountNo(Get_SystemSetting('EdtResiveAccount'));
          _Desc:=' Å—œ«Œ  «ﬁ”«ÿ «“ ÿ—Ìﬁ çò »«»  Ê«„ »Â ‘„«—Â'+Dm.FinancialNote_DetailFND_LoanNo.AsString;

//////«‰Ã«„ „—«Õ· çò
          _MainCr:= StrToInt(_PAYMENTCR);//MajorAccount.KeyValue;
          _MainDb:=StrToInt(_PaymentDb);//; dm.Select_LoanAccountID.AsInteger;
          SqlText:=' Select FinancialNote_MasterID   from FinancialNote_Detail Where FinancialNote_DetailID='+inttostr(FrFinancialNoteDetail_New.FinancialNoteid);
          MID:=Qry_GetResult(sqlText,Dm.YeganehConnection);
          DM.FinancialNote_Detail.First;
          while not DM.FinancialNote_Detail.EOF do
          begin
            _DocNo:=Get_NewDocumnetNo(DBELoanDate.text);
            PID:=Insert_Payment(PartPayTypeID,  //3
                                _Cr ,
                                _Db ,
                                0 ,
                                DM.FinancialNote_DetailAmount.AsInteger,
                                _Desc,
                                0 ,
                                _DocNo,//dm.Select_PaymentDocumentNo.AsString,
                                ''  ,
                                DM.FinancialNote_DetailFinancialNote_DetailID.AsInteger,
                                _Crtr_DetAccountID,
                                _MainCr,
                                _Maindb);

            Qry_SetResult(' Update ForcePayment '+
                          ' Set Paid=1, PaymentID='+Inttostr(PID)+
                          ' Where ForcePaymentID = '+Dm.FinancialNote_DetailForcePaymentID.AsString,dm.YeganehConnection);

            DM.FinancialNote_Detail.Next;
          end;
        end//RbPerson.Checked
        else
        if RbHesab.Checked then    //«ê— Õ”«» »«‘œ
        begin
          SqlText:=' SELECT ISNULL((Select ISNULL(Amount,0) From Payment where paymentid=(select WagePaymentId from loan where loanid='+Dm.FinancialNote_DetailFND_Loanid.AsString+')),0)';
          _WageAmount:=strtoint(Qry_GetResult(sqlText,Dm.YeganehConnection));

          if (DM.FinancialNote_Detail.RecordCount>1) or
             (DM.FinancialNote_DetailAmount.AsInteger+_WageAmount<>DM.Select_LoanAmount.AsInteger) then
            raise Exception.Create('‰Ê⁄ Å—œ«Œ  —« Õ”«» «‰ Œ«» ò—œÂ «Ìœ «Ê·«  ⁄œ«œ çòÂ« 1 ⁄œœ »«Ìœ »«‘œ œÊ„« „»·€ çò »« „»·€ Ê«„ - „»·€ ò«—„“œ »«Ìœ »—«»— »«‘œ');

          if (Get_SystemSetting('EdtPayAccount')=NULL) or
             (Get_SystemSetting('EdtPayAccount')<1) then
            raise Exception.Create('œ— ﬁ”„   ‰ŸÌ„«  ”Ì” „ ‘„«—Â Õ”«» «”‰«œ Å—œ«Œ ‰Ì —« „‘Œ’ ‰„«ÌÌœ');

          _Crtr_DetAccountID:=strtoint(_PaymentCR);//MajorAccount.KeyValue;//dm.Select_LoanAccountID.AsInteger;
          _Cr:=Get_AccountID_ByAccountNo(Get_SystemSetting('EdtPayAccount'));
          _Db:=dm.Select_LoanAccountID.AsInteger;//Get_AccountID_ByAccountNo(Get_SystemSetting('EdtResiveAccount'));
          _Desc:=' Å—œ«Œ  çò ° «“ Õ”«» »Â ‘Œ’ »«»  Ê«„ »Â ‘„«—Â '+Dm.FinancialNote_DetailFND_LoanNo.AsString;

          Qry_SetResult(' Update Payment '+
                        ' Set   CRTR_DETACCOUNTID='+inttostr(_Crtr_DetAccountID)+','+
                        '       CreditorAccountID='+inttostr(_Cr)+','+
                        '       DebtorAccountID  ='+inttostr(_Db)+'  , '+
                        '       FINANCIALNOTE_DETAILID='+Dm.FinancialNote_DetailFinancialNote_DetailID.AsString+','+
                        '       Amount='+DM.FinancialNote_DetailAmount.AsString+
                        ' Where PaymentID = '+Dm.Select_LoanPaymentID.AsString  ,dm.YeganehConnection);

        end;//RbHesab.Checked
      end
      else if (FNoteTypeID <> '0') and (FNoteTypeID <> '1') then //«ê— ”› Â Ê ÕÊ«·Â »«‘œ
      begin
        Qry_SetResult(' Update FinancialNote_Detail  '+
                      ' Set    NoteStatusID=3 '+
                      ' Where  FinancialNote_DetailID='+INTTOSTR(FrFinancialNoteDetail_New.FinancialNoteid),dm.YeganehConnection);
      end
    end;
  end;

end;

procedure TFrEditLoan.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  FrAddFinancialNote_New :=TFrAddFinancialNote_New .Create(Application);
  FrAddFinancialNote_New .PageControl1.ActivePageIndex:=0;
  FrAddFinancialNote_New .ShowModal;
  //FinancialNoteid :=_FinancialNoteid;

  if _FinancialNoteid>0 then
    if _FinancialNoteid<>0 then
      if DM.Select_Loan_PartsAmount.AsInteger<>dm.FinancialNote_DetailAmount.asinteger then
      begin
        ShowMsgString('„»·€ çò »« „»·€ „Ê—œ «‰ Ÿ«— Â„ŒÊ«‰Ì ‰œ«—œ');
        abort;
      end;

  if _FinancialNoteid=-1 then
  begin
    DM.FinancialNote_Detail.Close;
    DM.FinancialNote_Master.Close;
  end;
  edit1.Text:=dm.FinancialNote_DetailNoteNo.AsString;
end;

procedure TFrEditLoan.BitBtn3Click(Sender: TObject);
begin
  inherited;
  Qry_SetResult(' Update FinancialNote_Detail '+
                ' Set NoteNo= '+edit1.Text +
                ' WHERE ForcePaymentID= '+Dm.Select_Loan_PartsForcePaymentID.ASSTRING,dm.YeganehConnection);

{     Qry_SetResult(' Update Payment '+
                   ' Set FINANCIALNOTE_DETAILID='+inttostr(_FinancialNoteid) +
                   ' WHERE PaymentID= '+Dm.Select_Loan_PartsPaymentID.AsString,dm.YeganehConnection);
 }

  PnlNoteNoEdit.Visible:=False;
end;

procedure TFrEditLoan.BitBtn4Click(Sender: TObject);
var
  SqlText,FNoteTypeID,_PaymentCr,_PaymentDb,_Desc,mid,_DocNo:string;
  CheckAmount, _WageAmount, _Crtr_DetAccountID, _Cr, _Db, PID, PercentOfPaid,
  _MainCr, _MainDb:Integer;
begin
  inherited;

  SqlText:=' SELECT CASE WHEN CreditorAccountID=(SELECT ACCOUNTID FROM ACCOUNT WHERE ACCOUNTNO IN (SELECT TOP 1 VALUE FROM Setting WHERE VariableName=''EdtResiveAccount''))THEN Crtr_DetAccountID '+
           ' WHEN CreditorAccountID=(SELECT ACCOUNTID FROM ACCOUNT WHERE ACCOUNTNO IN (SELECT TOP 1 VALUE FROM Setting WHERE VariableName=''EDTPAYACCOUNT''))THEN Crtr_DetAccountID '+
           ' ELSE  CreditorAccountID END '+
           ' FROM   PaymenT '+
           ' WHERE PaymentID='+DM.Select_LoanPaymentID.ASSTRING;
  _PaymentCr:=Qry_GetResult(sqlText,Dm.YeganehConnection);

  SqlText:=' SELECT CASE WHEN DebtorAccountID=(SELECT ACCOUNTID FROM ACCOUNT WHERE ACCOUNTNO IN (SELECT TOP 1 VALUE FROM Setting WHERE VariableName=''EdtResiveAccount''))THEN Crtr_DetAccountID '+
           ' WHEN DebtorAccountID=(SELECT ACCOUNTID FROM ACCOUNT WHERE ACCOUNTNO IN (SELECT TOP 1 VALUE FROM Setting WHERE VariableName=''EDTPAYACCOUNT''))THEN Crtr_DetAccountID  '+
           ' ELSE  DebtorAccountID END   '+
           '  FROM   PaymenT  '+
           ' WHERE  PaymentID='+DM.Select_LoanPaymentID.ASSTRING;
  _PaymentDb:=Qry_GetResult(sqlText,Dm.YeganehConnection);

  SqlText:=' SELECT FinancialNote_Master.FinancialNoteTypeID '+
           ' FROM   FinancialNote_Detail INNER JOIN '+
           '        FinancialNote_Master ON FinancialNote_Detail.FinancialNote_MasterID = FinancialNote_Master.FinancialNote_MasterID '+
           ' WHERE  FinancialNote_Detail.FinancialNote_DetailID='+IntToStr(FrFinancialNoteDetail_New.FinancialNoteid);
  FNoteTypeID:=Qry_GetResult(sqlText,Dm.YeganehConnection);


  if (FrFinancialNoteDetail_New.FinancialNoteid>0) then
  begin
    if MessageDlg('¬Ì« «“ ‘„«—Â çòÂ«Ì „‘Œ’ ‘œÂ „ÿ„∆‰ Â” Ìœø',mtConfirmation,[mbyes,mbno],0)=MRNO then
      Exit
    else
    begin
      SqlText:=' SELECT FinancialNote_Detail.amount '+
               ' FROM   FinancialNote_Detail INNER JOIN '+
               '        FinancialNote_Master ON FinancialNote_Detail.FinancialNote_MasterID = FinancialNote_Master.FinancialNote_MasterID '+
               ' WHERE  FinancialNote_Detail.FinancialNote_DetailID='+IntToStr(FrFinancialNoteDetail_New.FinancialNoteid);
      CheckAmount:=strtoint(Qry_GetResult(sqlText,Dm.YeganehConnection));

      if (CheckAmount>dm.Select_LoanAmount.AsInteger) then
        raise Exception.Create('Ã„⁄ „»·€ çò Â« «“ ò· „»·€ «Ì‰ Ê«„ Ã«—Ì »Ì‘ — «” ');

      if (FNoteTypeID='1') then      //«ê— çò »«‘œ
      begin
        if RbHesab.Checked then    //«ê— Õ”«» »«‘œ
        begin
          Qry_SetResult(' Update FinancialNote_Detail  '+
                        ' Set    FND_LoanId='+Dm.Select_LoanLoanID.AsString+' , FND_LoanNo='+Dm.Select_LoanLoanNO.AsString+
                        ' Where  FinancialNote_DetailID='+INTTOSTR(FrFinancialNoteDetail_New.FinancialNoteid),dm.YeganehConnection);

          SqlText:=' SELECT ISNULL((Select ISNULL(Amount,0) From Payment where paymentid=(select WagePaymentId from loan where loanNo='+Dm.FinancialNote_DetailFND_LoanNo.AsString+')),0)';
          _WageAmount:=strtoint(Qry_GetResult(sqlText,Dm.YeganehConnection));

          if (DM.FinancialNote_Detail.RecordCount>1) or
             (DM.FinancialNote_DetailAmount.AsInteger+_WageAmount<>DM.Select_LoanAmount.AsInteger) then
            raise Exception.Create('‰Ê⁄ Å—œ«Œ  —« Õ”«» «‰ Œ«» ò—œÂ «Ìœ «Ê·«  ⁄œ«œ çòÂ« 1 ⁄œœ »«Ìœ »«‘œ œÊ„« „»·€ çò »« „»·€ Ê«„ - „»·€ ò«—„“œ »«Ìœ »—«»— »«‘œ');

          if (Get_SystemSetting('EdtPayAccount')=NULL) or
             (Get_SystemSetting('EdtPayAccount')<1) then
            raise Exception.Create('œ— ﬁ”„   ‰ŸÌ„«  ”Ì” „ ‘„«—Â Õ”«» «”‰«œ Å—œ«Œ ‰Ì —« „‘Œ’ ‰„«ÌÌœ');

          _Crtr_DetAccountID:=strtoint(_PaymentCR);//MajorAccount.KeyValue;//dm.Select_LoanAccountID.AsInteger;
          _Cr:=Get_AccountID_ByAccountNo(Get_SystemSetting('EdtPayAccount'));
          _Db:=StrToInt(_PaymentDB);//dm.Select_LoanAccountID.AsInteger;//Get_AccountID_ByAccountNo(Get_SystemSetting('EdtResiveAccount'));
          _Desc:=' Å—œ«Œ  çò ° «“ Õ”«» »Â ‘Œ’ »«»  Ê«„ »Â ‘„«—Â '+Dm.FinancialNote_DetailFND_LoanNo.AsString;

          Qry_SetResult(' Update Payment '+
                        ' Set   CRTR_DETACCOUNTID='+inttostr(_Crtr_DetAccountID)+','+
                        '       CreditorAccountID='+inttostr(_Cr)+','+
                        '       DebtorAccountID  ='+inttostr(_Db)+'  , '+
                        '       FINANCIALNOTE_DETAILID='+Dm.FinancialNote_DetailFinancialNote_DetailID.AsString+','+
                        '       Amount='+DM.FinancialNote_DetailAmount.AsString+
                        ' Where PaymentID = '+Dm.Select_LoanPaymentID.AsString  ,dm.YeganehConnection);
        end;//RbHesab.Checked
        end
        else if (FNoteTypeID<>'0') and (FNoteTypeID<>'1') then //«ê— ”› Â Ê ÕÊ«·Â »«‘œ
        begin
          Qry_SetResult(' Update FinancialNote_Detail  '+
                        ' Set    NoteStatusID=3 '+
                        ' Where  FinancialNote_DetailID='+INTTOSTR(FrFinancialNoteDetail_New.FinancialNoteid),dm.YeganehConnection);
        end
      end;
    end;
end;

procedure TFrEditLoan.PageControlChange(Sender: TObject);
begin
  inherited;
  if UpperCase(PageControl.ActivePage.Name) = UpperCase('TabSheet1') then
  begin
    _FinancialNote_Field1:='ForcePaymentID';
    _FinancialNote_Field2:='MatureDate'    ;
    _FinancialNote_Table :='ForcePayment'  ;
    //_FinancialNote_Where :=' AND ParentID='+Dm.Select_Loan_PartsParentID.AsString +'AND NOT ForcePaymentID IN (SELECT     ForcePaymentID FROM   FinancialNote_Detail )';
    _AddLoan:=True;
    _FinancialNote_Where :=' AND  ParentID = '+Dm.Select_Loan_PartsParentID.AsString +' AND ForcePaymentID NOT IN ( '+
                           ' SELECT ForcePayment.ForcePaymentID '+
                           ' FROM   ForcePayment INNER JOIN '+
                           '        FinancialNote_Detail ON ForcePayment.ForcePaymentID = FinancialNote_Detail.ForcePaymentID '+
                           ' WHERE (1 = 1) AND (ForcePayment.ParentID = '+Dm.Select_Loan_PartsParentID.AsString +')) ';

    { TODO -oparsa : 14030701 }
    {
    FrFinancialNoteDetail_New:=TFrFinancialNoteDetail_New.Create(Application);
    FrFinancialNoteDetail_New.ShowInPanel(FinancialNotePanel);
    }
    { TODO -oparsa : 14030701 }
  end;

  if UpperCase(PageControl.ActivePage.Name) = UpperCase('TabSheet3') then
  begin
    _FinancialNote_Field1:='LoanID';
    _FinancialNote_Field2:='LoanNo';
    _FinancialNote_Table :='Loan';
    _FinancialNote_Where :=' AND LoanID='+Dm.Select_LoanLoanID.AsString;
    _AddLoan:=True;
  end;
end;

procedure TFrEditLoan.BitBtn5Click(Sender: TObject);
begin
  inherited;
  { TODO -oparsa : 14030701 }
  {
  FrFinancialNoteDetail_New:=TFrFinancialNoteDetail_New.Create(Application);
  FrFinancialNoteDetail_New.ShowInPanel(FinancialNotePanel);
  }
  { TODO -oparsa : 14030701 }
end;

procedure TFrEditLoan.FormCreate(Sender: TObject);
begin
  inherited;
  { TODO -oparsa : 14030701 }
  FrFinancialNoteDetail_New:=TFrFinancialNoteDetail_New.Create(Application);
  FrFinancialNoteDetail_New.ShowInPanel(FinancialNotePanelHesab);

  FrFinancialNoteDetail_New:=TFrFinancialNoteDetail_New.Create(Application);
  FrFinancialNoteDetail_New.ShowInPanel(FinancialNotePanel);

  { TODO -oparsa : 14030701 }
end;

end.
