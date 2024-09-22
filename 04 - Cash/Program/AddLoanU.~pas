unit AddLoanU;

interface

uses
  BaseUnit,Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnMan, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList,
  Buttons, DBActns, ComCtrls, DB, ADODB, Grids, DBGrids, YDbgrid, UemsVCL,
  XPStyleActnCtrls, Menus, SolarCalendarPackage;

type
  TFrAddLoan = class(TYBaseForm)
    ActionManager1: TActionManager;
    ARec: TDataSetPost;
    Acancel: TDataSetCancel;
    PageControl: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    SearchEdit: TEdit;
    Panel1: TPanel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    LoanAmount: TLabel;
    DBEdit1_old: TDBEdit;
    DBC_LoanAmount: TDBComboBox;
    TabSheet5: TTabSheet;
    YDBGrid1: TYDBGrid;
    DBText1: TDBText;
    DBText2: TDBText;
    YDBGrid3: TYDBGrid;
    Button6: TButton;
    PAccountDeatil: TPanel;
    Label2: TLabel;
    EditWage: TEdit;
    EditInterest: TEdit;
    Panel4: TGroupBox;
    StatusLabel: TLabel;
    MajorAccount: TDBLookupComboBox;
    FinancialNotePanel: TPanel;
    DocNo: TLabel;
    Label4: TLabel;
    Panel5: TPanel;
    BitBtn1: TBitBtn;
    Nex: TBitBtn;
    prev: TBitBtn;
    Panel6: TPanel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button7: TButton;
    Panel7: TPanel;
    xpBitBtn2: TBitBtn;
    xpBitBtn4: TBitBtn;
    xpBitBtn3: TBitBtn;
    xpBitBtn1: TBitBtn;
    Panel3: TPanel;
    GaranteeGrid: TYDBGrid;
    YDBGrid4: TYDBGrid;
    SBLoanType: TSpeedButton;
    MEDate: TSolarDatePicker;
    BitBtn2: TBitBtn;
    DBELoanDate: TSolarDatePicker;
    DBEPartsBeginDate: TSolarDatePicker;
    QrGetLoanGrtCount: TADOQuery;
    QrGetLoanGrtCountLoanGaurantorCount: TIntegerField;
    QrGetLoanGrtPrice: TADOQuery;
    QrGetLoanGrtPriceLoanGaurantorPrice: TIntegerField;
    BitBtn3: TBitBtn;
    DBTPeriod: TDBText;
    DBELoanComment: TDBEdit;
    Label6: TLabel;
    Button8: TButton;
    Label12: TLabel;
    DBEdit2: TDBEdit;
    Button9: TButton;
    RbPerson: TRadioButton;
    RbHesab: TRadioButton;
    Label9: TLabel;
    DBCRemain: TDBLookupComboBox;
    DBCMain: TDBLookupComboBox;
    EdtAddLoan: TEdit;
    CheckBox1: TCheckBox;
    GroupBox1: TGroupBox;
    rbOldFormula: TRadioButton;
    rbNewFormula: TRadioButton;
    lblWage: TLabel;
    lblInterest: TLabel;
    DBEdit1: TEdit;
    ADOQuery1: TADOQuery;
    ADOQuery1maxloanno: TStringField;
    procedure SearchEditKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure NexClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button4Click(Sender: TObject);
    procedure DBC_LoanAmountChange(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure RefreshData;
    procedure FormCreate(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure xpBitBtn3Click(Sender: TObject);
    procedure xpBitBtn4Click(Sender: TObject);
    procedure RefreshWage;
    procedure DBCRemainClick(Sender: TObject);
    procedure addFinancialNote;
    procedure Button5Click(Sender: TObject);
    procedure GaranteeGridEditButtonClick(Sender: TObject);
    procedure xpBitBtn2Click(Sender: TObject);
    procedure DBC_LoanAmountKeyUp(Sender: TObject;var Key:Word;Shift:TShiftState);
    procedure Button7Click(Sender: TObject);
    procedure SBLoanTypeClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure prevClick(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure DBCMainClick(Sender: TObject);
    procedure DBEdit2Change(Sender: TObject);
    procedure rbOldFormulaMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure EditWageChange(Sender: TObject);
    procedure EditInterestChange(Sender: TObject);
    procedure EditWageExit(Sender: TObject);
    procedure EditInterestExit(Sender: TObject);
    procedure DBEdit1_oldChange(Sender: TObject);
  private
    procedure LoanGrtLimite;
    Function ChangePage(NewPage:byte):boolean;
  public
    AccountID : Integer;
    _SelectedForcePaymentID:String;

    { Public declarations }

  end;

var
  FrAddLoan: TFrAddLoan;

implementation

Uses DMU, YShamsiDate, BusinessLayer, PrintPartU, LoanPriorityU,
     AccountDetailsU, MainU, AddattachmentU, FinancialNoteDetailU,
     AddLoanTypeU, SystemSettingU, RepLoanGrtFm,
     AddFinancialNote_NewU, FinancialNoteDetail_NewU;

var //AccountID : integer;
     Wage,Interest:Int64;
     DocumentNo:string;

{$R *.dfm}

procedure TFrAddLoan.RefreshData;
begin
  with dm do
  begin
    FrAccountDetails.AccountID:=AccountID;
    SearchEdit.Text:=Select_Account_DetailsAccountNo.AsString;
    Open_Loan_ByAccountID(AccountID);
    Nex.Enabled:=true;
    if Select_Account_DetailsNumberOfNotPaidPart.AsInteger > 0 then
      if MessageDlg('œ«—‰œÂ «Ì‰ Õ”«» Â‰Ê“ ﬁ”ÿ Â«Ì Å—œ«Œ  ‰‘œÂ œ«—œ ¬Ì« »Â «Ì‰ ‘„«—Â Õ”«» Ê«„ „Ì œÂÌœø',mtConfirmation,[mbYes,mbNo],0)<>mryes then
      begin
        if FrAddLoan.Panel2.Enabled then
          SearchEdit.SetFocus;
        nex.Enabled:=False;
      end
  end;
end;

procedure TFrAddLoan.SearchEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 13 then
  begin
    AccountID := Get_AccountID_ByAccountNo(SearchEdit.Text);
    if AccountID = 0 then
    begin
      ShowMessage('«Ì‰ ‘„«—Â Õ”«» ÊÃÊœ ‰œ«—œ');
      if FrAddLoan.Panel2.Enabled then
        SearchEdit.SetFocus;
    end
    else
    if AccountID < 0 then
    begin
      ShowMessage('«Ì‰ Õ”«» »” Â ‘œÂ «” ');
      if FrAddLoan.Panel2.Enabled then
        SearchEdit.SetFocus;
    end;

    RefreshData;
    {Ranjbar}
    if Nex.Enabled then
      Nex.SetFocus;
  end;
end;

procedure TFrAddLoan.FormShow(Sender: TObject);
begin
  inherited;
  PageControl.ActivePageIndex:=0;
  if Panel2.Enabled then
    if SearchEdit.Enabled then
      SearchEdit.SetFocus;
  { TODO -oparsa : 14030701 }
  {
  FrAccountDetails:=TFrAccountDetails.Create(Application);
  FrAccountDetails.ShowInPanel(PAccountDeatil);
  FrFinancialNoteDetail_New:=TFrFinancialNoteDetail_New.Create(Application);
  FrFinancialNoteDetail_New.ShowInPanel(FinancialNotePanel);
  }
  { TODO -oparsa : 14030701 }
  {Ranjbar Ver3}
  DBGrid_LoadColumns(Self.Name,YDBGrid3);
  DBGrid_LoadColumns(Self.Name,YDBGrid1);
  DBGrid_LoadColumns(Self.Name,GaranteeGrid);
  DBGrid_LoadColumns(Self.Name,YDBGrid4);
  FinancialNotePanel.Visible:=False;
end;

procedure TFrAddLoan.NexClick(Sender: TObject);
var
  _Crtr_DetAccountID,_Cr,_Db,PID,PercentOfPaid:INTEGER;
  SqlText,mid,_DocNo,FNoteTypeID,_Desc:string;
  _MainCr: INTEGER;
  _MainDb:INTEGER;
  CheckAmount:Int64;
  _WageAmount:Int64;
begin
  inherited;
  {Ranjbar 88.05.10 Code=14}
  BitBtn1.Visible:=true;
  if UpperCase(PageControl.ActivePage.Name) = UpperCase('TabSheet3') then
  begin
    MEDate.Text:=DBELoanDate.Text;
{     IF NOT  IsValidAccountIdForLoan(Dm.Select_LoanAccountID.AsInteger,Dm.Select_LoanAmount.AsInteger)  THEN
      BEGIN
        MessageShowString('„ÊÃÊœÌ «Ì‰ ›—œ »Â œ·Ì·  ﬁ»· ÷„«‰  ° »·ÊòÂ ‘œÂ «”  Ê «„ò«‰ œ«œ‰ Ê«„ ÊÃÊœ ‰œ«—œ', False);
        ABORT;
      END; }
    if (Dm.LoanTypeIsUrgency.AsBoolean)and(Dm.LoanTypeMinAcountExist.AsFloat >  Dm.Select_Account_DetailsExist.AsFloat{„ÊÃÊœÌ}) then
    begin
      MessageShowString(' ﬂ„ —Ì‰ „ÊÃÊœÌ »—«Ì «Œ ’«’ «Ì‰ ‰Ê⁄ Ê«„ „»·€ '
                       +' ' +Get_SystemSetting('EdtMoneyUnit')+' '
                       + Dm.Select_Account_DetailsExist.AsString + ' „Ì»«‘œ.·ÿ›« «’·«Õ ‰„«ÌÌœ ', False);
      Exit;
    end;

    if not Dm.LoanTypeMinLastPartPercent.IsNull then
    begin
      PercentOfPaid:=Get_PercentOfLastPaidLoan(AccountID);
      if PercentOfPaid< Dm.LoanTypeMinLastPartPercent.AsInteger then
      begin
        MessageShowString(IntToStr(PercentOfPaid)+' œ—’œ «“ «ﬁ”«ÿ Å—œ«Œ  ‘œÂ «” .œ— ’Ê— ÌòÂ Õœ«ﬁ·'+Dm.LoanTypeMinLastPartPercent.AsString+' œ—’œ «“ ò· ﬁ”ÿ »«Ìœ Å—œ«Œ  ‘Êœ ' , False);
        Exit;
      end;
    end;
  end;
//--
//--
  SqlText:=' SELECT FinancialNote_Master.FinancialNoteTypeID '+
           ' FROM   FinancialNote_Detail INNER JOIN '+
           '        FinancialNote_Master ON FinancialNote_Detail.FinancialNote_MasterID = FinancialNote_Master.FinancialNote_MasterID '+
           ' WHERE  FinancialNote_Detail.FinancialNote_DetailID='+IntToStr(FrFinancialNoteDetail_New.FinancialNoteid);
  FNoteTypeID:=Qry_GetResult(sqlText,Dm.YeganehConnection);

  if UpperCase(PageControl.ActivePage.Name) = UpperCase('TabSheet2') then
    if (FrFinancialNoteDetail_New.FinancialNoteid>0) then
    begin
      if MessageDlg('¬Ì« «“ ‘„«—Â çòÂ«Ì „‘Œ’ ‘œÂ „ÿ„∆‰ Â” Ìœø',mtConfirmation,[mbyes,mbno],0)=MRNO then
        Exit
      else
//       if messageShowString('¬Ì« «“ ‘„«—Â çòÂ«Ì „‘Œ’ ‘œÂ „ÿ„∆‰ Â” Ìœø',True) then
      begin
        SqlText:=' SELECT FinancialNote_Detail.amount '+
                  ' FROM   FinancialNote_Detail INNER JOIN '+
                  '        FinancialNote_Master ON FinancialNote_Detail.FinancialNote_MasterID = FinancialNote_Master.FinancialNote_MasterID '+
                  ' WHERE  FinancialNote_Detail.FinancialNote_DetailID='+IntToStr(FrFinancialNoteDetail_New.FinancialNoteid);
        CheckAmount:=StrToInt64(Qry_GetResult(sqlText,Dm.YeganehConnection));
        if (CheckAmount>dm.Select_LoanAmount.AsLargeInt) then
          raise Exception.Create('Ã„⁄ „»·€ çò Â« «“ ò· „»·€ «Ì‰ Ê«„ Ã«—Ì »Ì‘ — «” ');

        if (FNoteTypeID='1') then      //«ê— çò »«‘œ
        begin
          if RbPerson.Checked then   //«ê— ‘Œ’ »«‘œ
          begin
            SqlText:=' SELECT ISNULL((Select ISNULL(Amount,0) From Payment where paymentid=(select WagePaymentId from loan where loanid='+dm.Select_Loan_PartsParentID.AsString+')),0)';
            _WageAmount:=StrToInt64(Qry_GetResult(sqlText,Dm.YeganehConnection));

            if (DM.FinancialNote_Detail.RecordCount=1) and
               (DM.FinancialNote_DetailAmount.AsLargeInt+_WageAmount=DM.Select_LoanAmount.AsLargeInt) then
              raise Exception.Create('Å—œ«Œ  ò‰‰œÂ çò ‘Œ’ „Ì »«‘œ »Â «“«Ì Â— ﬁ”ÿ »«Ìœ çò œ—Ì«›  ‰„«ÌÌœ.');

            if (Get_SystemSetting('EdtResiveAccount')=NULL) or
               (Get_SystemSetting('EdtResiveAccount')<1) then
              raise Exception.Create('œ— ﬁ”„   ‰ŸÌ„«  ”Ì” „ ‘„«—Â Õ”«» «”‰«œ œ—Ì«› ‰Ì —« „‘Œ’ ‰„«ÌÌœ');

            _Crtr_DetAccountID:=dm.Select_LoanAccountID.AsInteger;
            _Cr:=MajorAccount.KeyValue;
            _Db:=Get_AccountID_ByAccountNo(Get_SystemSetting('EdtResiveAccount'));
            _Desc:=' Å—œ«Œ  «ﬁ”«ÿ «“ ÿ—Ìﬁ çò »«»  Ê«„ »Â ‘„«—Â'+Dm.FinancialNote_DetailFND_LoanNo.AsString;

//////«‰Ã«„ „—«Õ· çò
            _MainCr:= MajorAccount.KeyValue;
            _MainDb:= dm.Select_LoanAccountID.AsInteger;
            SqlText:=' Select FinancialNote_MasterID   from FinancialNote_Detail Where FinancialNote_DetailID='+inttostr(FrFinancialNoteDetail_New.FinancialNoteid);
            MID:=Qry_GetResult(sqlText,Dm.YeganehConnection);
            //DM.FinancialNote_Detail.First;       commented by hadi.mohamed    921015
            dm.Select_Loan_Parts.First;
            while not DM.FinancialNote_Detail.EOF do
            begin
              _DocNo:=Get_NewDocumnetNo(DBELoanDate.text);
              PID:=Insert_Payment(PartPayTypeID,  //3
                                  _Cr ,
                                  _Db ,
                                  0   ,
                                  DM.FinancialNote_DetailAmount.AsLargeInt,
                                  _Desc,
                                  0   ,
                                  _DocNo,//dm.Select_PaymentDocumentNo.AsString,
                                  ''  ,
                                  DM.FinancialNote_DetailFinancialNote_DetailID.AsInteger,
                                  _Crtr_DetAccountID,
                                  _MainCr,
                                  _Maindb
                                  );

              Qry_SetResult(' Update ForcePayment '+
                            ' Set Paid=1, PaymentID='+Inttostr(PID)+
                            ' Where ForcePaymentID = '+dm.Select_Loan_PartsPaymentID.AsString,dm.YeganehConnection);

              dm.Select_Loan_Parts.Next;
            end;
          end//RbPerson.Checked
          else
          if RbHesab.Checked then    //«ê— Õ”«» »«‘œ
          begin
            //SqlText:='Select ISNULL(Amount,0) From Payment where paymentid=(select WagePaymentId from loan where loanid='+Dm.FinancialNote_DetailFND_Loanid.AsString+')';
            SqlText:=' SELECT ISNULL((Select ISNULL(Amount,0) From Payment where paymentid=(select WagePaymentId from loan where loanid='+Dm.FinancialNote_DetailFND_Loanid.AsString+')),0)';
            _WageAmount:=StrToInt64(Qry_GetResult(sqlText,Dm.YeganehConnection));

            if (DM.FinancialNote_Detail.RecordCount>1) or
               (DM.FinancialNote_DetailAmount.AsLargeInt+_WageAmount<>DM.Select_LoanAmount.AsLargeInt) then
              raise Exception.Create('·ÿ›« Ìò çò »« „»·€ '+IntToStr(DM.Select_LoanAmount.AsLargeInt - _WageAmount)+' —Ì«· '+' '+ 'À»  ò‰Ìœ');

            if (Get_SystemSetting('EdtPayAccount')=NULL) or
               (Get_SystemSetting('EdtPayAccount')<1) then
              raise Exception.Create('œ— ﬁ”„   ‰ŸÌ„«  ”Ì” „ ‘„«—Â Õ”«» «”‰«œ Å—œ«Œ ‰Ì —« „‘Œ’ ‰„«ÌÌœ');

            _Crtr_DetAccountID:=MajorAccount.KeyValue;//dm.Select_LoanAccountID.AsInteger;
            _Cr:=Get_AccountID_ByAccountNo(Get_SystemSetting('EdtPayAccount'));
            _Db:=dm.Select_LoanAccountID.AsInteger;//Get_AccountID_ByAccountNo(Get_SystemSetting('EdtResiveAccount'));
            _Desc:=' Å—œ«Œ  çò ° «“ Õ”«» »Â ‘Œ’ »«»  Ê«„ »Â ‘„«—Â '+Dm.FinancialNote_DetailFND_LoanNo.AsString;

            Qry_SetResult(' Update Payment '+
                          ' Set   CRTR_DETACCOUNTID='+inttostr(_Crtr_DetAccountID)+','+
                          '       CreditorAccountID='+inttostr(_Cr)+','+
                          '       DebtorAccountID  ='+inttostr(_Db)+'  , '+
                          '       FINANCIALNOTE_DETAILID='+Dm.FinancialNote_DetailFinancialNote_DetailID.AsString+','+
                          '       Amount='+DM.FinancialNote_DetailAmount.AsString+
                          ' Where PaymentID = (select paymentid from Loan where Loanid='+Dm.FinancialNote_DetailFND_LoanId.AsString+')',dm.YeganehConnection);

            Qry_SetResult(' Update Payment '+
                          ' Set   DebtorAccountID  ='+inttostr(_Db)+
                          ' Where PaymentID = (select WagePaymentID from Loan where Loanid='+Dm.FinancialNote_DetailFND_LoanId.AsString+')',dm.YeganehConnection);
                        {   Insert_Payment( 1,  //3

                                                        dm.Select_Cash_AccountsAccountID.AsInteger ,
                                                        dm.Select_LoanAccountID.AsInteger ,
                                                        0   ,
                                                        _WageAmount,
                                                        '',
                                                        0   ,
                                                        '',//dm.Select_PaymentDocumentNo.AsString,
                                                        ShamsiString(now)  ,
                                                        0,
                                                        _Crtr_DetAccountID,
                                                        _MainCr,
                                                        _Maindb
                                                        );   }


          end;//RbHesab.Checked


{                             _MainCr:= MajorAccount.KeyValue;
                              _MainDb:= dm.Select_LoanAccountID.AsInteger;
                              SqlText:=' Select FinancialNote_MasterID   from FinancialNote_Detail Where FinancialNote_DetailID='+inttostr(FrFinancialNoteDetail_New.FinancialNoteid);
                              MID:=Qry_GetResult(sqlText,Dm.YeganehConnection);
                              DM.FinancialNote_Detail.First;
                              WHILE NOT DM.FinancialNote_Detail.EOF DO
                              BEGIN
                                   _DocNo:=Get_NewDocumnetNo;
                                   PID:=Insert_Payment( PartPayTypeID,  //3
                                                        _Cr ,
                                                        _Db ,
                                                        0   ,
                                                        DM.FinancialNote_DetailAmount.AsInteger,
                                                        _Desc,
                                                        0   ,
                                                        _DocNo,//dm.Select_PaymentDocumentNo.AsString,
                                                        ''  ,
                                                        DM.FinancialNote_DetailFinancialNote_DetailID.AsInteger,
                                                        _Crtr_DetAccountID,
                                                        _MainCr,
                                                        _Maindb
                                                        );

                                   Qry_SetResult(' Update ForcePayment '+
                                                 ' Set Paid=1, PaymentID='+Inttostr(PID)+
                                                 ' Where ForcePaymentID = '+Dm.FinancialNote_DetailForcePaymentID.AsString,dm.YeganehConnection);

                                   DM.FinancialNote_Detail.Next;
                              END;}

{                              IF (DM.FinancialNote_Detail.RecordCount=1) AND
                                 (DM.FinancialNote_DetailAmount.AsInteger=DM.Select_LoanAmount.AsInteger) THEN
                              Qry_SetResult(' Update ForcePayment '+
                                            ' Set Paid=1, PaymentID='+Inttostr(PID)+
                                            ' Where ParentID = '+Dm.FinancialNote_DetailFND_LoanId.AsString,dm.YeganehConnection);
 }


        end
        else if (FNoteTypeID<>'0') and (FNoteTypeID<>'1') then //«ê— ”› Â Ê ÕÊ«·Â »«‘œ
        begin
          Qry_SetResult(' Update FinancialNote_Detail  '+
                        ' Set    NoteStatusID=3 '+
                        ' Where  FinancialNote_DetailID='+INTTOSTR(FrFinancialNoteDetail_New.FinancialNoteid),dm.YeganehConnection);
        end
      end;
    end;
{   IF (FNoteTypeID<>'0') AND (FNoteTypeID<>'1') THEN //«ê— çò ‰»«‘œ
   BEGIN
     Qry_SetResult(' Update FinancialNote_Detail  '+
                   ' Set    NoteStatusID=3 '+
                   ' Where  FinancialNote_DetailID='+FrFinancialNoteDetail_New.FinancialNoteid,dm.YeganehConnection);

   END;
 }

//---
    if ChangePage(PageControl.ActivePageIndex+1) then
    begin
      PageControl.ActivePageIndex:=PageControl.ActivePageIndex+1;
      if PageControl.ActivePageIndex=1 then
        DBC_LoanAmount.SetFocus;
    end;
//--
    if DBC_LoanAmount.DataSource.State IN [dsInsert] then
    begin
      if UpperCase(PageControl.ActivePage.Name) = UpperCase('TabSheet3') then
      begin
//         DM.LoanAmount.locate('LoanAmountID',DM.LoanAmountLoanAmountID.AsString,[]);
        dm.LoanAmount.Locate('LoanAmounGroup',dm.LoanTypeLoanAmounGroup.AsString,[]);
        DM.Select_LoanAmount.AsString:=DM.LoanAmountLoanAmount.AsString;
        if _AgainMakeParts then
          DM.Select_LoanAmount.AsString:=EdtAddLoan.text;

         //DM.Select_LoanPartNumber.AsInteger:=DM.LoanTypePartNumber.AsInteger;
        DM.Select_LoanPartNumber.AsInteger:=DM.LoanTypePartNumber.AsInteger;

        try
//           LoanAmount.Caption:=Bill(strtoint(DeleteComma(DM.DSelect_Loan.DataSet.FieldByName('Amount').AsString)))+' —Ì«·';
          LoanAmount.Caption:=Bill(strtoint(DeleteComma(DM.DSelect_Loan.DataSet.FieldByName('Amount').AsString)))+' ' +Get_SystemSetting('EdtMoneyUnit')+' ';
          RefreshWage;
        except
        end;
      end;
    end;
end;

function TFrAddLoan.ChangePage(NewPage:byte):boolean;
begin
  inherited;
  Result:=true;

  case NewPage of
    1: with dm do
        if AccountID<=0 then
        begin
          ShowMessage('«» œ« ‘„«—Â Õ”«» —« Ê«—œ ò‰Ìœ');
          if FrAddLoan.Panel2.Enabled then
            SearchEdit.SetFocus;
          Result:=False;
        end
        else
        begin
          if not Select_Loan.Active then
            Open_Loan(0);
          if not(Select_Loan.State  in [dsedit,dsinsert]) then
            Select_Loan.Insert;

          Select_LoanAccountID.AsInteger := AccountID;
          Select_LoanLoanTypeID.AsInteger := LoanTypeLoanTypeID.AsInteger;
          if Select_LoanLoanDate.AsString ='' then
            Select_LoanLoanDate.AsString := _Today;
          {Ranjbar 88.07.18}// ⁄ÌÌ‰  «—ÌŒ ‘—Ê⁄ ﬁ”ÿ
          //Select_LoanPartsBeginDate.AsString := ShamsiIncDate(_Today,0,LoanTypePartMonths.AsInteger,0);
          if (Trim(LoanTypePeriod.AsString)='„«Â') or (Trim(LoanTypePeriod.AsString)='') then //„œ  »Â „«Â
            Select_LoanPartsBeginDate.AsString := ShamsiIncDate(_Today,0,LoanTypePartMonths.AsInteger,0);
          if Trim(LoanTypePeriod.AsString)='Â› Â' then //„œ  »Â Â› Â
            Select_LoanPartsBeginDate.AsString := ShamsiIncDate(_Today,0,0,LoanTypePartMonths.AsInteger * 7);
          if Trim(LoanTypePeriod.AsString)='—Ê“' then  //„œ  »Â —Ê“
            Select_LoanPartsBeginDate.AsString := ShamsiIncDate(_Today,0,0,LoanTypePartMonths.AsInteger);
          //---
          try
            Select_LoanLoanNO.AsString := Get_NewAccountNo(7)
          except ShowMessage('”Ì” „ ﬁ«œ— »Â œ«œ‰ ‘„«—Â Ê«„ ‰Ì”  ·ÿ›« ‘„«—Â Ê«„ —« »Â ÿÊ— œ” Ì Ê«—œ ‰„«ÌÌœ');
          end;
        end;
    2: with dm,Select_Loan do
        begin
          if Select_LoanLoanNo.IsNull or
            Select_LoanLoanTypeID.IsNull or
            Select_LoanLoanDate.IsNull   or
            Select_LoanPartsBeginDate.IsNull or
            Select_LoanAmount.IsNull            then
          begin
            ShowMessage(' Ê«„ —« »Â ÿÊ— ò«„· Ê«—œ ò‰Ìœ');
            Result:=false;
          end;

          if Duplicate_Loanno(Select_LoanLoanNO.AsString) then
          begin
            ShowMessage(' «Ì‰ ‘„«—Â Ê«„ ﬁ»·« »Â Ê«„ œÌê—Ì «Œ ’«’ Ì«› Â «” ');
            Result:=false;
          end;

          if dm.LoanTypeMaxLoanAmount.AsFloat>0 then
            if Select_LoanAmount.Value>(dm.LoanTypeMaxLoanAmount.AsFloat*dm.Select_Account_DetailsExist.Value) then
            begin
              ShowMessage(' „»·€ Ê«„ «“ ”ﬁ› „Ã«“ «Œ– Ê«„ »—«Ì «Ì‰ Õ”«» »Ì‘ — «” ');
              Result:=false;
            end;

          //if not Select_LoanSponsorAccountID.IsNull then
          //if Select_Sponsorbalance.AsInteger<Dm.Select_LoanAmount.AsInteger then
          //ShowMessage('„ÊÃÊœÌ Õ”«» „”œÊœÌ «“ «Ì‰ Ê«„ ò„ — «” ');
          Open_Loan_Parts(Select_LoanLoanID.AsInteger);
          FrFinancialNoteDetail_New.DefaultAmount:=Dm.Select_LoanAmount.AsLargeInt;
        end;
    3: with dm do
        begin
          try
            Select_Loan_Parts.post
          except
          end;

          if Select_LoanAmount.AsLargeInt<>Get_SumPartAmount(Select_LoanLoanID.AsInteger)  then
          begin
            ShowMessage('„»·€ Ê«„ »«Ìœ »« Ã„⁄ «ﬁ”«ÿ »—«»— »«‘œ');
            Result:=false;
          end;

          Open_LoanGaurantor(Select_LoanLoanID.AsInteger);
          Open_LoanAttachment(Select_LoanLoanID.AsInteger)
        end;
  end;

  if Result then
  begin
    AExit.Enabled:=(NewPage in [0,3]) or ((NewPage in [1,2]) and (dm.Select_Loan.State in [dsedit,dsinsert]));
    prev.Visible:=NewPage in [1,2] ;
    Nex.Visible:=NewPage<>3 ;
  end;

  Dm.FinancialNote_Detail.Close;
end;

procedure TFrAddLoan.Button1Click(Sender: TObject);
var
  PaymentID:integer; _MSG1,_MSG2:String;
  RelatedID:integer; // Esmaeily 91/05/09
  MemoSms:Tmemo;
begin
{
   With dm,Select_Loan_Parts do
   begin
      //if recourdcount>0 then ...     ﬁ”ÿ »‰œÌ „Ãœœ
      IF (Dm.LoanTypeForGivenLoan.AsBoolean) THEN
      BEGIN
        _MSG1:='«Ì‰ Ê«„ »·«⁄Ê÷ „Ì »«‘œ ¬Ì« «“ À»  «Ì‰ Ê«„ Ê ﬁ”ÿ »‰œÌ ﬁÿ⁄Ì ¬‰ „ÿ„∆‰ Â” Ìœø';
        _MSG2:='»«»  Ê«„ »·«⁄Ê÷ ‘„«—Â '
      END
      ELSE
      BEGIN
        _MSG1:='¬Ì« «“ À»  «Ì‰ Ê«„ Ê ﬁ”ÿ »‰œÌ ﬁÿ⁄Ì ¬‰ „ÿ„∆‰ Â” Ìœø';
        _MSG2:='»«»  Ê«„ ‘„«—Â ';
      END ;

        if MessageDlg(_MSG1,mtConfirmation,[mbyes,mbno],0)=Mrno then
         exit;

         DocumentNo:=Get_NewDocumnetNo;


try
  YeganehConnection.BeginTrans;
       PaymentID:=Insert_Payment(LoanPayTypeID,
                                 MajorAccount.KeyValue,
                                 Select_LoanAccountID.AsInteger,
                                 FrFinancialNoteDetail_New.FinancialNoteid,
                                 Select_LoanAmount.AsInteger,
                                  _MSG2+Select_LoanLoanNO.AsString,
                                  Select_LoanLoanID.AsInteger,
                                  DocumentNo,
                                  Txt_Del254(MEDate.Text),
                                  0,
                                  -1,
                                  MajorAccount.KeyValue,
                                  Select_LoanAccountID.AsInteger

                                  );
      IF (Dm.LoanTypeForGivenLoan.AsBoolean) THEN
      Insert_Payment(LoanPayTypeID,
                                 Select_LoanAccountID.AsInteger,//MajorAccount.KeyValue,
                                 Get_AccountID_ByAccountNo(Get_SystemSetting('EdtForGivenAccount')),
                                 FrFinancialNoteDetail_New.FinancialNoteid,
                                 Select_LoanAmount.AsInteger,
                                  '»«»  Ê«„ »·«⁄Ê÷ ‘„«—Â'+Select_LoanLoanNO.AsString,
                                  Select_LoanLoanID.AsInteger,
                                  DocumentNo,
                                  Txt_Del254(MEDate.Text),
                                  0,
                                  -1,
                                  MajorAccount.KeyValue,
                                  Select_LoanAccountID.AsInteger
                                  );



      if PaymentID>0 then
         Select_LoanPaymentID.AsInteger:=PaymentID
      else
         exit;

      IF(Trim(EditWage.Text)<>'' ) And
        (Trim(EditWage.Text)<>'0') Then
          Select_LoanWagePaymentID.AsInteger := Insert_Payment(WagePayTypeID,
                                                            WageAccountID,
                                                            MajorAccount.KeyValue,
                                                            0,
                                                            StrToInt(EditWage.Text),
                                                            '»«»  ò«—„“œ Ê«„ ‘„«—Â'+Select_LoanLoanNO.AsString+ ' Õ”«» ‘„«—Â '+Select_Account_DetailsAccountNo.AsString+'   »Â ‰«„ '+Select_Account_DetailsAccountTitle.AsString,
                                                            Select_LoanLoanID.AsInteger,
                                                            DocumentNo,
                                                            Txt_Del254(MEDate.Text),
                                                            Select_Loan_PartsFinancialNote_DetailID_Look.AsInteger,
                                                            AccountID,
                                                            WageAccountID,
                                                            MajorAccount.KeyValue
                                                            );

          Select_Loan.Post;
          YeganehConnection.CommitTrans;
      except
          ShowMessage('ﬁ”ÿ »‰œÌ «‰Ã«„ ‰‘œ');
          YeganehConnection.RollbackTrans;
      end;
      Delete_LoanPriority_byAccountID(dm.Select_LoanAccountID.AsInteger, _FoundPriorityUrgency);
      IF   _AgainMakeParts THEN
         Dm.Insert_RemainOfLoan(_SelectedForcePaymentID,MajorAccount.KeyValue);

      MakeParts(Select_LoanLoanID.AsInteger,StrToInt(EditInterest.text)); // Ê·Ìœ ·Ì”  «ﬁ”«ÿ «“ —ÊÌ ‘„«—Â Ê«„
      IF (Dm.LoanTypeForGivenLoan.AsBoolean) THEN
         dm.Insert_ForGivenPayment(Select_LoanLoanID.AsInteger,Select_LoanAccountID.AsInteger,Select_LoanLoanNO.AsString);

      Open_Loan_Parts(Select_LoanLoanID.AsInteger);
      prev.Enabled:=false;
      DocNo.Caption:='‘„«—Â ”‰œ : '+DocumentNo;
      _FinancialNote_Field1:='ForcePaymentID';
      _FinancialNote_Field2:='MatureDate'    ;
      _FinancialNote_Table :='ForcePayment'  ;
      _FinancialNote_Where :=' AND ParentID='+Dm.Select_Loan_PartsParentID.AsString;
      FinancialNotePanel.Visible:=True;
      Dm.FinancialNote_Master.Close;
      Dm.FinancialNote_Detail.Close;
    end;
    TButton(Sender).Enabled:=false;
}
  inherited;
  {Ranjbar}
  BitBtn1.Visible:=false;
  if MajorAccount.KeyValue <= 0 then
  begin
    ShowMyMessage('ÅÌ€«„','·ÿ›« ›Ì·œ "»—œ«‘  «“ Õ”«»" —« „ﬁœ«— œÂÌ ‰„«ÌÌœ',[mbOK],mtInformation);
    Exit;
  end;

  if not IsLoanTypeIDIsCorrect(Dm.LoanTypeLoanTypeID.AsInteger) then
  begin
    ShowMyMessage('ÅÌ€«„','›«’·Â œÊ ﬁ”ÿ œ—  ⁄—Ì› ‰Ê⁄ Ê«„ „‘Œ’ ‰‘œÂ «” .·ÿ›« ò«„· ‰„«ÌÌœ.',[mbOK],mtInformation);
    Exit;
  end;

  with dm,Select_Loan_Parts do
  begin
    //if recourdcount>0 then ...     ﬁ”ÿ »‰œÌ „Ãœœ
    if (Dm.LoanTypeForGivenLoan.AsBoolean) then
    begin
      _MSG1:='«Ì‰ Ê«„ »·«⁄Ê÷ „Ì »«‘œ ¬Ì« «“ À»  «Ì‰ Ê«„ Ê ﬁ”ÿ »‰œÌ ﬁÿ⁄Ì ¬‰ „ÿ„∆‰ Â” Ìœø';
      _MSG2:='»«»  Ê«„ »·«⁄Ê÷ ‘„«—Â '
    end
    else
    begin
      _MSG1:='¬Ì« «“ À»  «Ì‰ Ê«„ Ê ﬁ”ÿ »‰œÌ ﬁÿ⁄Ì ¬‰ „ÿ„∆‰ Â” Ìœø';
       _MSG2:='»«»  Ê«„ ‘„«—Â ';
    end;

    if MessageDlg(_MSG1,mtConfirmation,[mbyes,mbno],0)=Mrno then
      Exit;

    DocumentNo:=Get_NewDocumnetNo(DBELoanDate.Text);

    try
      try
        if YeganehConnection.InTransaction then
          YeganehConnection.CommitTrans;
      except
        YeganehConnection.RollbackTrans;
        ShowMessage('»Â œ·Ì· »—Ê“ «‘ò«· œ— »«‰ò «ÿ·«⁄« Ì  „«„Ì ⁄„·Ì«  »—ê‘  œ«œÂ ‘œ ·ÿ›« „Ãœœ« «‰Ã«„ œÂÌœ.');
      end;

      YeganehConnection.BeginTrans;

      PaymentID:=Insert_Payment(LoanPayTypeID,
                                 MajorAccount.KeyValue,
                                 Select_LoanAccountID.AsInteger,
                                 FrFinancialNoteDetail_New.FinancialNoteid,
                                 Select_LoanAmount.AsLargeInt,
                                  _MSG2+Select_LoanLoanNO.AsString,
                                  Select_LoanLoanID.AsInteger,
                                  DocumentNo,
                                  Txt_Del254(MEDate.Text),
                                  0,
                                  -1,
                                  MajorAccount.KeyValue,
                                  Select_LoanAccountID.AsInteger
                                  );
      if (Dm.LoanTypeForGivenLoan.AsBoolean) then
        Insert_Payment(LoanPayTypeID,
                                 Select_LoanAccountID.AsInteger,//MajorAccount.KeyValue,
                                 Get_AccountID_ByAccountNo(Get_SystemSetting('EdtForGivenAccount')),
                                 FrFinancialNoteDetail_New.FinancialNoteid,
                                 Select_LoanAmount.AsLargeInt,
                                  '»«»  Ê«„ »·«⁄Ê÷ ‘„«—Â'+Select_LoanLoanNO.AsString,
                                  Select_LoanLoanID.AsInteger,
                                  DocumentNo,
                                  Txt_Del254(MEDate.Text),
                                  0,
                                  -1,
                                  MajorAccount.KeyValue,
                                  Select_LoanAccountID.AsInteger
                                  );



      if PaymentID>0 then
        Select_LoanPaymentID.AsInteger:=PaymentID
      else
        exit;

      // Esmaeily 91/05/09 Start

      RelatedID:= Select_LoanLoanID.AsInteger;
      if RelatedID=0 then
        RelatedID:= Select_Account_DetailsAccountID.AsInteger;  //  AccountID;//
      // Esmaeily 91/05/09 End

      if (Trim(EditWage.Text)<>'' ) and (Trim(EditWage.Text)<>'0') then
        Select_LoanWagePaymentID.AsInteger := Insert_Payment(WagePayTypeID,
                                                             WageAccountID,
                                                             MajorAccount.KeyValue,
                                                             0,
                                                             StrToInt(EditWage.Text),
                                                             '»«»  ò«—„“œ Ê«„ ‘„«—Â'+Select_LoanLoanNO.AsString+ ' Õ”«» ‘„«—Â '+Select_Account_DetailsAccountNo.AsString+'   »Â ‰«„ '+Select_Account_DetailsAccountTitle.AsString,
                                                             RelatedID, //Select_LoanLoanID.AsInteger, Esmaeily 91/05/09
                                                             DocumentNo,
                                                             Txt_Del254(MEDate.Text),
                                                             Select_Loan_PartsFinancialNote_DetailID_Look.AsInteger,
                                                             AccountID,
                                                             WageAccountID,
                                                             MajorAccount.KeyValue
                                                             );

      //Hamed_Ansari_990231_S
      //Select_LoanLoanNO.AsInteger :=  ADOQuery1maxloanno.AsInteger;
      //Hamed_Ansari_990231_E
      Select_Loan.Post;
      YeganehConnection.CommitTrans;
    except
      YeganehConnection.RollbackTrans;
      ShowMessage('ﬁ”ÿ »‰œÌ «‰Ã«„ ‰‘œ');
      //Hamed_Ansari_Hasan_Ahmadvand_990605_S
      Exit;
      //Hamed_Ansari_Hasan_Ahmadvand_990605_E
    end;

    Delete_LoanPriority_byAccountID(dm.Select_LoanAccountID.AsInteger, _FoundPriorityUrgency);
    if _AgainMakeParts then
      Dm.Insert_RemainOfLoan(_SelectedForcePaymentID,MajorAccount.KeyValue);

    MakeParts(Select_LoanLoanID.AsInteger,StrToInt64(EditInterest.text)); // Ê·Ìœ ·Ì”  «ﬁ”«ÿ «“ —ÊÌ ‘„«—Â Ê«„

    if (Dm.LoanTypeForGivenLoan.AsBoolean) then
      dm.Insert_ForGivenPayment(Select_LoanLoanID.AsInteger,Select_LoanAccountID.AsInteger,Select_LoanLoanNO.AsString);

    Open_Loan_Parts(Select_LoanLoanID.AsInteger);
    prev.Enabled:=false;
    DocNo.Caption:='‘„«—Â ”‰œ : '+DocumentNo;
    _FinancialNote_Field1:='ForcePaymentID';
    _FinancialNote_Field2:='MatureDate'    ;
    _FinancialNote_Table :='ForcePayment'  ;
    _FinancialNote_Where :=' AND ParentID='+Dm.Select_Loan_PartsParentID.AsString;
    FinancialNotePanel.Visible:=True;
    _AddLoan:=True;
    Dm.FinancialNote_Master.Close;
    Dm.FinancialNote_Detail.Close;
  end;
  TButton(Sender).Enabled:=false;
///// Send SMS
  MemoSms:=TMemo.Create(Application);
  MemoSms.Parent:=Self;
  MemoSms.Visible:=False;

  with  MemoSms.Lines do
  begin
    text:=text+' '+('”·«„ ');
    text:=text+('Ê«„ '+dm.Select_Account_DetailsAccountTitle.AsString);
    text:=text+' '+('»Â „»·€ '+ dm.Select_LoanAmount.AsString+' ' +Get_SystemSetting('EdtMoneyUnit'));
    //Hamed_Ansari_Hasan_Ahmadvand_990605_S
    Text:=Text+' '+('»« ”Êœ ' + dm.LoanTypeInterestPercent.AsString + ' œ—’œ');
    //Hamed_Ansari_Hasan_Ahmadvand_990605_E
    text:=text+' '+('œ—  «—ÌŒ '+DBELoanDate.Text);
    text:=text+' '+('»Â  ⁄œ«œ '+DBEdit2.Text+' ﬁ”ÿ «⁄ÿ« ê—œÌœ');
    text:=text+' '+(' «—ÌŒ «Ê·Ì‰ ﬁ”ÿ ' +dm.Select_Loan_PartsMatureDate.AsString+' »Â „»·€'+
    //Hamed_Ansari_Hasan_Ahmadvand_990605_S
    //dm.Select_Loan_PartsAmount.AsString+' „Ì»«‘œ');
    IntToStr(dm.Select_Loan_PartsAmount.AsLargeInt + dm.Select_Loan_PartsInterestAmount.AsInteger) +' „Ì»«‘œ');
    //Hamed_Ansari_Hasan_Ahmadvand_990605_E
    text:=text+' '+(_CashNameForSms);
    if _EnableSms then
    begin
      dm.SendSmsToOutBox(dm.Select_Account_DetailsPhone.AsString,memoSms.Text);
    end;
    FreeAndNil(MemoSms);
  end;
end;

procedure TFrAddLoan.Button2Click(Sender: TObject);
begin
  inherited;
  YDBGrid1.Print;
end;

procedure TFrAddLoan.Button3Click(Sender: TObject);
begin
  inherited;
  YDBGrid1.ExportToWord;
end;

procedure TFrAddLoan.FormClose(Sender: TObject;var Action: TCloseAction);
begin
 inherited;

  if AExit.Enabled then
  begin
   dm.Select_Loan.Cancel;
   dm.Select_Loan.Close;
   AExit.Execute;
  end
  else
  begin
    if nex.Visible then nex.Click;
      abort;
  end;
   {Ranjbar Ver3}
  DBGrid_SaveColumns(Self.Name,YDBGrid3);
  DBGrid_SaveColumns(Self.Name,YDBGrid1);
  DBGrid_SaveColumns(Self.Name,GaranteeGrid);
  DBGrid_SaveColumns(Self.Name,YDBGrid4);
  _FinancialNote_Field1:='';
  _FinancialNote_Field2:='';
  _FinancialNote_Table :='';
  _FinancialNote_Where :='';
  DM.FinancialNote_Detail.Close;
  DM.FinancialNote_Master.Close;
  _FinancialNoteid:=-1;
  _AddLoan:=False;

end;

procedure TFrAddLoan.Button4Click(Sender: TObject);
begin
  inherited;
  PrintParts:=TPrintParts.Create(Application);
  PrintParts.LoanID:=dm.Select_LoanLoanID.AsInteger;
  PrintParts.ShowModal;
end;

procedure TFrAddLoan.DBC_LoanAmountChange(Sender: TObject);
begin
  inherited;
  if _AgainMakeParts then
    DM.Select_LoanAmount.AsString:=EdtAddLoan.text;

//  try LoanAmount.Caption:=Bill(strtoint(DeleteComma(TDBEdit(sender).Text)))+' —Ì«·';
  try
    LoanAmount.Caption:=Bill(StrToInt64(DeleteComma(TDBEdit(sender).Text))) +' ' +Get_SystemSetting('EdtMoneyUnit')+' ';
    RefreshWage;
  except
  end;
end;

procedure TFrAddLoan.Button6Click(Sender: TObject);
begin
  inherited;
  FrLoanPriority:=TFrLoanPriority.Create(Application);
  FrLoanPriority.ShowModal;
  if _FoundPriorityAccountID>0 then
    AccountID:= _FoundPriorityAccountID;
  RefreshData;
end;

procedure TFrAddLoan.FormCreate(Sender: TObject);
begin
  inherited;
  if not _AgainMakeParts then
    with dm,LoanAmount do
    begin
      First;

      DBC_LoanAmount.Items.Clear;
      while not eof do
      begin
        DBC_LoanAmount.Items.add(LoanAmountLoanAmount.AsString);
        next;
      end
    end;
  DBC_LoanAmount.ItemIndex:=1;
  Open_Sponsor;
  _FoundPriorityUrgency := False;
  {Ranjbar}
  //DateEdit.Text:=_Today;
  MEDate.Text := #254 + _Today;
  //---
  {Ranjbar}
  PageControl.TabHeight := 1;
  PageControl.TabWidth := 1;
  //---
  { TODO -oparsa : 14030701 }
  FrAccountDetails:=TFrAccountDetails.Create(Application);
  FrAccountDetails.ShowInPanel(PAccountDeatil);
  FrFinancialNoteDetail_New:=TFrFinancialNoteDetail_New.Create(Application);
  FrFinancialNoteDetail_New.ShowInPanel(FinancialNotePanel);
  { TODO -oparsa : 14030701 }
end;

procedure TFrAddLoan.LoanGrtLimite; //«⁄„«· „ÕœÊœÌ  œ— ÷«„‰ ‘œ‰ ⁄÷ÊÂ«
Var
  LoanGrtCount1,LoanGrtCount2 : Integer;
  LoanGrtPrice1,LoanGrtPrice2,TempPrice:Double;
begin
   {Ranjbar}
   //„ÕœÊœÌ  ÷«„‰ ‘œ‰
   Case Get_SystemSetting('LoanGrt') of
      //0: »œÊ‰ „ÕœÊœÌ 
      1: begin //÷«„‰ ‘œ‰ »— «”«”  ⁄œ«œ Ê«„
            Try
               QrGetLoanGrtCount.Close;
               QrGetLoanGrtCount.Parameters.ParamByName('ContactID').Value := _FoundContactID;
               QrGetLoanGrtCount.Open;
               LoanGrtCount1 := QrGetLoanGrtCountLoanGaurantorCount.AsInteger;
               LoanGrtCount2 := Get_SystemSetting('LoanGrtCount');
               if LoanGrtCount1+1 > LoanGrtCount2 then //+1: »«»  Ê«„ ÃœÌœ
               begin
                  ShowMyMessage('ÅÌ€«„','  ÊÃÂ: ⁄÷ÊÂ« ‰„Ì  Ê«‰‰œ »Ì‘ — «“ '+IntToStr(LoanGrtCount1)+' »«— ÷«„‰ ‘Ê‰œ ',[mbOK],mtInformation);
                  Abort;
               end;
            Finally
               QrGetLoanGrtCount.Close;
            End;
         end;
      2: begin //÷«„‰ ‘œ‰ »— «”«” „»·€ Ê«„
            Try
               QrGetLoanGrtPrice.Close;
               QrGetLoanGrtPrice.Parameters.ParamByName('ContactID').Value := _FoundContactID;
               QrGetLoanGrtPrice.Open;

               LoanGrtPrice1 := QrGetLoanGrtPriceLoanGaurantorPrice.AsInteger;
               TempPrice := QrGetLoanGrtPriceLoanGaurantorPrice.AsInteger + Dm.Select_LoanAmount.AsLargeInt {„»·€ Ê«„ ÃœÌœ};
               LoanGrtPrice2 := Get_SystemSetting('LoanGrtPrice');
               if TempPrice > LoanGrtPrice2 then
               begin
                  ShowMyMessage('ÅÌ€«„',' Ã„⁄ „»·€ Ê«„Â«ÌÌ ﬂÂ «Ì‰ ⁄÷Ê ÷«„‰ ¬‰ ‘œÂ «”  '
                                +' ' +Get_SystemSetting('EdtMoneyUnit')+' '+
                                      FloatToStr(LoanGrtPrice1) + ' „Ì»«‘œ Ê ⁄÷ÊÂ« œÌê— ‰„Ì   Ê«‰‰œ »Ì‘ — «“ „»·€ '
                                +' ' +Get_SystemSetting('EdtMoneyUnit')+' '+
                     FloatToStr(LoanGrtPrice2) + '  ÷«„‰ ‘Ê‰œ ',[mbOK],mtInformation);
                  Abort;
               end;
            Finally
               QrGetLoanGrtCount.Close;
            End;
         end;
   end;
end;

procedure TFrAddLoan.xpBitBtn1Click(Sender: TObject);
{begin
   inherited;
   FrMain.FindContact(true,3,False);

   if _FoundContactID > 0 then
   begin
      LoanGrtLimite;//«⁄„«· „ÕœÊœÌ  œ— ÷«„‰ ‘œ‰ ⁄÷ÊÂ«
      Insert_LoanGaurantor(dm.Select_LoanLoanID.AsInteger,_FoundContactID);
      Open_LoanGaurantor(dm.Select_LoanLoanID.AsInteger);
   end
end;}
var
  Percent,MessageText:String;
  Result:Boolean;
begin
  inherited;
  if DM.LoanTypeForGivenLoan.AsBoolean then
  begin
    MessageShowString(' Ê«„ «‰ Œ«» ‘œÂ »·«⁄Ê÷ „Ì »«‘œ Ê «„ò«‰ «‰ Œ«» ÷«„‰ ÊÃÊœ ‰œ«—œ ', False);
    ABORT;
  end;
  FrMain.FindContact(true,3,False);

  if _FoundContactID > 0 then
  begin
    //AccountID;
    if AccountID {Dm.Select_LoanAccountID.AsInteger}=_FoundAccountID then
    begin
      MessageShowString('÷«„‰ «‰ Œ«» ‘œÂ °êÌ—‰œÂ Ê«„ Ã«—Ì «”  .«„ò«‰ «‰ Œ«» ÊÃÊœ ‰œ«—œ', False);
      ABORT;
    end;
//      IF NOT IsValidGaurantor(_FoundContactID,Dm.Select_LoanLoanID.AsInteger)  THEN
//      BEGIN
//        MessageShowString('«Ì‰ ÷«„‰ ﬁ»·« »—«Ì «Ì‰ Ê«„ «‰ Œ«» ‘œÂ «”  °«‰ Œ«» „Ãœœ €Ì— „Ã«“ «” .', False);
//        ABORT;
//      END;
      IsValidGaurantor(_FoundContactID,Dm.Select_LoanLoanID.AsInteger,MessageText,Result)  ;
    if not Result then
    begin
      MessageShowString(MessageText, False);
      ABORT;
    end;
//      IF Get_SystemSetting('LoanGrt')='0' THEN // ÷«„‰ »œÊ‰ „ÕœÊœÌ 
//      IF Get_SystemSetting('LoanGrt')='1' THEN // ÷«„‰ ‘œ‰ »— «”«”  ⁄œ«œ Ê«„
//      Get_SystemSetting('LoanGrtCount')// ⁄œ«œ Ê«„
//      IF Get_SystemSetting('LoanGrt')='2' THEN // ÷«„‰ ‘œ‰ »— «”«” „»·€ Ê«„
//      Get_SystemSetting('LoanGrtPrice')//Õœ«òÀ— „»·€ Ê«„
//      BEGIN
//          IF NOT   IsValidAccountIdForGauruntor(_FoundAccountID,Dm.Select_LoanAmount.AsInteger)  THEN
//          BEGIN
//            MessageShowString('„ÊÃÊœÌ ÷«„‰ «‰ Œ«» ‘œÂ ° ÃÂ  ÷„«‰  ò«›Ì ‰Ì”  ', False);
//            ABORT;
//          END;
//      END;

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
            UPDATE_AccountForGaurantyInfo(_FoundAccountID, 0, ((dm.Select_LoanAmount.AsLargeInt * strtoint(Percent ))  /100),1);// --ADD=1 DELETE=2);
      end;
    end;//IsMemberOfCash(AccountID) then

    if Percent='' then
      Percent:='0';
    Insert_LoanGaurantor(dm.Select_LoanLoanID.AsInteger,_FoundContactID,STRTOINT(Percent));
    Open_LoanGaurantor(dm.Select_LoanLoanID.AsInteger);
  end
end;

procedure TFrAddLoan.xpBitBtn3Click(Sender: TObject);
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
                                  dm.Select_LoanLoanID.AsInteger                     ,
                                  dm.Select_LoanAmount.AsLargeInt                     ,
                                  2);// --ADD=1 DELETE=2);
    Delete_LoanGaurantor(dm.Select_LoanGaurantorLoanGaurantorID.AsInteger);
    Open_LoanGaurantor(dm.Select_LoanLoanID.AsInteger);
  end;
end;

procedure TFrAddLoan.xpBitBtn4Click(Sender: TObject);
begin
  inherited;
  FrAddAttachment:=TFrAddAttachment.Create(Application);
  FrAddAttachment.DocumnetID:=dm.Select_LoanLoanID.AsInteger;
  FrAddAttachment.documentTypeID:=2;
  FrAddAttachment.ShowModal;
  Open_LoanAttachment(dm.Select_LoanLoanID.AsInteger);
end;

procedure TFrAddLoan.RefreshWage;
var
  partNum : integer;
begin
  inherited;
  if not is_integer(DeleteComma(DBC_LoanAmount.Text)) then
    exit;

  if trim(DBEdit2.Text)='' then
    partNum :=0
  else
    try
      partNum := StrToInt(DBEdit2.Text);
    except partNum := 1
    end;

  if rbOldFormula.Checked then
    Calculate_Wage_Interest(StrToInt64(DeleteComma( DBC_LoanAmount.Text)),Dm.Select_LoanLoanTypeID.AsInteger,Wage,Interest)
  else
    Calculate_Wage_Interest(StrToInt64(DeleteComma( DBC_LoanAmount.Text)),partNum,Dm.Select_LoanLoanTypeID.AsInteger,Wage,Interest);

  EditWage.Text:= IntToStr(Wage);
  EditInterest.Text:=IntToStr(Interest);

end;

procedure TFrAddLoan.DBCRemainClick(Sender: TObject);
begin

  inherited;
  RefreshWage;

   {Ranjbar 88.07.18}// ⁄ÌÌ‰  «—ÌŒ ‘—Ê⁄ ﬁ”ÿ
  with Dm do
  begin
    if (Trim(LoanTypePeriod.AsString)='„«Â') or (Trim(LoanTypePeriod.AsString)='') then //„œ  »Â „«Â
      Select_LoanPartsBeginDate.AsString := ShamsiIncDate(_Today,0,LoanTypePartMonths.AsInteger,0);
    if Trim(LoanTypePeriod.AsString)='Â› Â' then //„œ  »Â Â› Â
      Select_LoanPartsBeginDate.AsString := ShamsiIncDate(_Today,0,0,LoanTypePartMonths.AsInteger * 7);
    if Trim(LoanTypePeriod.AsString)='—Ê“' then  //„œ  »Â —Ê“
      Select_LoanPartsBeginDate.AsString := ShamsiIncDate(_Today,0,0,LoanTypePartMonths.AsInteger);

    LoanAmount.Locate('LoanAmounGroup',LoanTypeLoanAmounGroup.AsString,[]);
    Select_LoanAmount.AsFloat:=LoanAmountLoanAmount.AsFloat;
    if _AgainMakeParts then
      Select_LoanAmount.AsFloat:=StrToFloat(EdtAddLoan.Text);
    Select_LoanPartNumber.AsInteger:=LoanTypePartNumber.AsInteger;

{//--
  IF UpperCase(PageControl.ActivePage.Name) = UpperCase('TabSheet3') then
  BEGIN
     DM.LoanAmount.First;
     DBC_LoanAmount.DataSource.Edit;
     Dm.DSelect_Loan.DataSet.FieldByName('Amount').AsString:=DM.LoanAmountLoanAmount.AsString;
     Dm.DSelect_Loan.DataSet.Post;
  END;
//--}
  end;
   //---
end;

procedure TFrAddLoan.addFinancialNote;
begin
  inherited;
  FrAddFinancialNote_New:=TFrAddFinancialNote_New.Create(Application);
  FrAddFinancialNote_New.PageControl1.ActivePageIndex:=0;
  FrAddFinancialNote_New.ShowModal;
  if _FinancialNoteid>0 then
    if _FinancialNoteid<>Dm.Select_LoanGaurantorFinancialNoteID.AsInteger then
    begin
      UPDATE_LoanGaurantor_FinancialNoteID(Dm.Select_LoanGaurantorLoanGaurantorID.AsInteger,_FinancialNoteid);
      Open_LoanGaurantor(dm.Select_LoanLoanID.AsInteger);
    end;
end;

procedure TFrAddLoan.Button5Click(Sender: TObject);
begin
  inherited;
  if DocumentNo<>'' then
    dm.PrintPayment_ByDocumentNo(DocumentNo);
end;

procedure TFrAddLoan.GaranteeGridEditButtonClick(Sender: TObject);
begin
  inherited;
  addFinancialNote;
end;

procedure TFrAddLoan.xpBitBtn2Click(Sender: TObject);
begin
  inherited;
  addFinancialNote;
end;

procedure TFrAddLoan.DBC_LoanAmountKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
//Commented by Hamed_Ansari_990228_
//  DBC_LoanAmount.Text:=CommaSeperate(DBC_LoanAmount.Text);
//  DBC_LoanAmount.SelStart:=length(DBC_LoanAmount.Text);
//-----------------------------------
end;

procedure TFrAddLoan.Button7Click(Sender: TObject);
begin
  inherited;
  dm.PrintHeader(dm.Select_LoanLoanNO.AsString+' '+dm.Select_Account_DetailsAccountTitle.AsString);
end;

procedure TFrAddLoan.SBLoanTypeClick(Sender: TObject);
Var
  LoanTypeID : Integer;
begin
  inherited;
  LoanTypeID := Dm.LoanTypeLoanTypeID.AsInteger;
  FrAddLoanType := TFrAddLoanType.Create(Application);
  FrAddLoanType.ShowModal;
  DBCmainClick(nil);
  Dm.LoanType.Refresh;
  Dm.LoanType.Locate('LoanTypeID',LoanTypeID,[]);
  //---
end;

procedure TFrAddLoan.BitBtn2Click(Sender: TObject);
begin
  inherited;
  {Ranjbar}
  FrSystemSetting := TFrSystemSetting.Create(Application);
  PageControl_SetTabSheet(FrSystemSetting.PageControl1,'TShValue');
  FrSystemSetting.GBLoanGaurantor.Font.Color := clBlue;
  FrSystemSetting.ShowModal;
  //---
end;

procedure TFrAddLoan.BitBtn3Click(Sender: TObject);
begin
  inherited;
  FmRepLoanGrt := TFmRepLoanGrt.Create(nil);
  FmRepLoanGrt.ShowModal;
end;

procedure TFrAddLoan.prevClick(Sender: TObject);
begin
  inherited;
  BitBtn1.Visible:=True;
  if ChangePage(PageControl.ActivePageIndex-1) then
    PageControl.ActivePageIndex:=PageControl.ActivePageIndex-1;
end;

procedure TFrAddLoan.Button8Click(Sender: TObject);
begin
  inherited;
  Dm.Select_Loan_Parts.Refresh;
end;

procedure TFrAddLoan.Button9Click(Sender: TObject);
begin
  inherited;
  AccountID:=StrToInt(SELECT_RANDOM_ACCOUNTID);
  if AccountID = 0 then
   begin
     MessageShowString('ﬁ—⁄Â ò‘Ì «‰Ã«„ ‰‘œ' + #13#13 + '“Ì—« »Â  „«„Ì ‘„«—Â Õ”«» Â«Ì „ÊÃÊœ Ê«„  ⁄·ﬁ ê—› Â «” ',False,' ÊÃÂ');
     Exit;
   end;
  RefreshData;
  ADOQuery1.Close;
  ADOQuery1.Open;
  DBEdit1.Text := ADOQuery1maxloanno.AsString;
end;

procedure TFrAddLoan.DBCMainClick(Sender: TObject);
VAR
  SqlText:STRING;
begin
  inherited;
  {Ranjbar 88.07.18}// ⁄ÌÌ‰  «—ÌŒ ‘—Ê⁄ ﬁ”ÿ
  with dm do
  begin
    if (Trim(LoanTypePeriod.AsString)='„«Â') or (Trim(LoanTypePeriod.AsString)='') then //„œ  »Â „«Â
      Select_LoanPartsBeginDate.AsString := ShamsiIncDate(_Today,0,LoanTypePartMonths.AsInteger,0);
    if Trim(LoanTypePeriod.AsString)='Â› Â' then //„œ  »Â Â› Â
      Select_LoanPartsBeginDate.AsString := ShamsiIncDate(_Today,0,0,LoanTypePartMonths.AsInteger * 7);
    if Trim(LoanTypePeriod.AsString)='—Ê“' then  //„œ  »Â —Ê“
      Select_LoanPartsBeginDate.AsString := ShamsiIncDate(_Today,0,0,LoanTypePartMonths.AsInteger);

{     LoanAmount.Locate('LoanAmounGroup',LoanTypeLoanAmounGroup.AsString,[]);
     Select_LoanAmount.AsFloat:=LoanAmountLoanAmount.AsFloat;}
      Select_LoanPartNumber.AsInteger:=LoanTypePartNumber.AsInteger;

    SqlText := ' SELECT TOP 1 LoanAmount FROM LoanAmount WHERE  LOANAMOUNGROUP=(SELECT DISTINCT TOP 1  LoanAmount.LOANAMOUNGROUP '+
               ' FROM  LoanAmount INNER JOIN '+
               '       LoanType ON LoanAmount.LOANAMOUNGROUP = LoanType.LOANAMOUNGROUP '+
               ' Where LoanTypeId= '+LoanTypeLoanTypeID.AsSTRING+' ) ';
    Select_LoanAmount.AsFloat := StrToFloat(Qry_GetResult(SqlText,Dm.YeganehConnection));
//      Select_LoanAmount.AsFloat      :=LoanAmountLoanAmount.AsFloat;
    Select_LoanPartNumber.AsInteger:=LoanTypePartNumber.AsInteger;
  end;

  try
    LoanAmount.Caption:=Bill(strtoint(DeleteComma(DBC_LoanAmount.Text))) +' ' +Get_SystemSetting('EdtMoneyUnit')+' ';
  except
  end;

  RefreshWage;
end;

procedure TFrAddLoan.DBEdit2Change(Sender: TObject);
begin
  inherited;
  RefreshWage;
end;

procedure TFrAddLoan.rbOldFormulaMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  RefreshWage;
end;

procedure TFrAddLoan.EditWageChange(Sender: TObject);
begin
  inherited;

  lblWage.Caption:=Bill(StrToInt64(DeleteComma(EditWage.Text))) +' ' +Get_SystemSetting('EdtMoneyUnit')+' ';
end;

procedure TFrAddLoan.EditInterestChange(Sender: TObject);
begin
  inherited;

  lblInterest.Caption:=Bill(strtoint(DeleteComma(EditInterest.Text))) +' ' +Get_SystemSetting('EdtMoneyUnit')+' ';
end;

procedure TFrAddLoan.EditWageExit(Sender: TObject);
begin
  inherited;
  EditWage.Text :=  CommaSeperate(EditWage.Text);
end;

procedure TFrAddLoan.EditInterestExit(Sender: TObject);
begin
  inherited;
  EditInterest.Text :=  CommaSeperate(EditInterest.Text);
end;

procedure TFrAddLoan.DBEdit1_oldChange(Sender: TObject);
begin
  inherited;
  DBEdit1.Text := DBEdit1_old.Text;
end;

end.
