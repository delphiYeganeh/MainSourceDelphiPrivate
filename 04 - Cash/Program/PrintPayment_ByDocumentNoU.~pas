unit PrintPayment_ByDocumentNoU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, QRCtrls, QuickRpt, ExtCtrls, ActnList,
  StdCtrls, UemsVCL, Grids, DBGrids, YDbgrid, Buttons, Menus,
  YWhereEdit, DB, YLargeIntField, ADODB, DBCtrls, SolarCalendarPackage;

type
  TFQrPrintPayment_ByDocumentNo = class(TYBaseForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRDBText8: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText3: TQRDBText;
    QRShape6: TQRShape;
    QRDBText7: TQRDBText;
    QRLblTitle: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText2: TQRDBText;
    Panel2: TPanel;
    Label3: TLabel;
    DocNo: TYWhereEdit;
    CashLogo: TQRImage;
    YearStatus: TCheckBox;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    xpBitBtn1: TBitBtn;
    Button5: TBitBtn;
    EditBtn: TBitBtn;
    Panel3: TPanel;
    YDBGrid: TYDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    PageFooterBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRLabel18: TQRLabel;
    QRGroup1: TQRGroup;
    QRDBText11: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText12: TQRDBText;
    DelBtn: TBitBtn;
    lBDocNo: TLabel;
    QRLabel2: TQRLabel;
    QRShape2: TQRShape;
    QRShape1: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape8: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape5: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape11: TQRShape;
    BitBtn3: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    FromDate: TSolarDatePicker;
    ToDate: TSolarDatePicker;
    ADOQDoclist: TADOQuery;
    DataSource1: TDataSource;
    ADOQDoclistPaymentID: TAutoIncField;
    ADOQDoclistCreditorAccountID: TIntegerField;
    ADOQDoclistDebtorAccountID: TIntegerField;
    ADOQDoclistDate: TWideStringField;
    ADOQDoclistTime: TWideStringField;
    ADOQDoclistAmount: TLargeintField;
    ADOQDoclistComment: TStringField;
    ADOQDoclistFinancialNoteID: TIntegerField;
    ADOQDoclistInsertUserID: TIntegerField;
    ADOQDoclistInsertDate: TStringField;
    ADOQDoclistLastUpDate: TStringField;
    ADOQDoclistLastUserID: TIntegerField;
    ADOQDoclistPayTypeID: TWordField;
    ADOQDoclistRelatedID: TIntegerField;
    ADOQDoclistdocumentno: TStringField;
    ADOQDoclistCRTR_DETACCOUNTID: TIntegerField;
    ADOQDoclistFINANCIALNOTE_DETAILID: TIntegerField;
    ADOQDoclistWasPrinted: TSmallintField;
    ADOQDoclistPayTypeSecondId: TIntegerField;
    ADOQDoclistRefrencePaymentId: TIntegerField;
    ADOQDoclistCREDITORACCOUNTTITLE: TWideStringField;
    ADOQDoclistDEBTORACCOUNTTITLE: TWideStringField;
    ADOQDoclistPAYTYPETITLE: TWideStringField;
    ADOQDoclistNOTENO: TStringField;
    ADOQDoclistMATUREDATE: TStringField;
    ADOQDoclistFINANCIALNOTEAMOUNT: TLargeintField;
    ADOQDoclistFINANCIALNOTETYPETITLE: TWideStringField;
    ADOQDoclistFULLNAME: TWideStringField;
    ADOQDoclistCOMMENT2: TStringField;
    ADOQDoclistNOTE_DETAILAMOUNT: TLargeintField;
    ADOQDoclistNOTE_DETAILNOTENO: TStringField;
    ADOQDoclistDETAILNOTEDATE: TStringField;
    ADOQDoclistSTATUSFINANCIALNOTESTATUSDESC: TWideStringField;
    ADOQDoclistMASTERFINANCIALNOTETYPEID: TWordField;
    ADOQDoclistNOTE_DETAILFINANCIALNOTETYPETITLE: TWideStringField;
    procedure SetDocumentNo(value:string);
    procedure QuickRep1Preview(Sender: TObject);
    procedure DocNoKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DelBtnClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
    FDocumentNo : string;
  public
    { Public declarations }
    Property DocumentNo : string Read FDocumentNo Write SetDocumentNo;
  end;

var
  FQrPrintPayment_ByDocumentNo: TFQrPrintPayment_ByDocumentNo;

implementation

uses dmu, BusinessLayer, Upreview, EditPaymentU, YShamsiDate;

{$R *.dfm}

procedure TFQrPrintPayment_ByDocumentNo.SetDocumentNo(value:string);
begin
   inherited;
   FDocumentNo := Value;
   if YearStatus.Checked then
      Open_Report_Payment_ByDocumentNo(value,strtoint(Copy(_Today,1,4))) //”‰œÂ«Ì ”«· Ã«—Ì}
   else
      Open_Report_Payment_ByDocumentNo(value,0); //«”‰«œ  „«„Ì ”«·Â«

   with dm.Report_Payment_ByDocumentNo,parameters do
   begin
      Close;
      ParamByName('@documentNo').value := value;
      if YearStatus.Checked then
         ParamByName('@Year').value := StrToInt(Copy(_Today,1,4))
      else
         ParamByName('@Year').value := 0;
      Open;
   end;
end;

procedure TFQrPrintPayment_ByDocumentNo.QuickRep1Preview(Sender: TObject);
begin
   inherited;
 Fpreview:=Tfpreview.Create(Application);
 QRLblTitle.Caption := _SoftTitle;

 Fpreview.Show;
 Fpreview.QrPreview1.QrPrinter:= QuickRep1.QRPrinter;
end;

procedure TFQrPrintPayment_ByDocumentNo.DocNoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   inherited;
   if Key = 13 then
    BitBtn1.Click;
end;

procedure TFQrPrintPayment_ByDocumentNo.SpeedButton4Click(Sender: TObject);
begin
  inherited;
YDBGrid.CustomizePrint;
end;

procedure TFQrPrintPayment_ByDocumentNo.SpeedButton3Click(Sender: TObject);
begin
  inherited;
YDBGrid.ExportToExcel;
end;

procedure TFQrPrintPayment_ByDocumentNo.SpeedButton2Click(Sender: TObject);
begin
  inherited;
YDBGrid.Print
end;

procedure TFQrPrintPayment_ByDocumentNo.SpeedButton1Click(Sender: TObject);
begin
  inherited;
YDBGrid.ExportToWord;
end;

procedure TFQrPrintPayment_ByDocumentNo.xpBitBtn1Click(Sender: TObject);
begin
  inherited;
  QuickRep1.Preview;

end;

procedure TFQrPrintPayment_ByDocumentNo.EditBtnClick(Sender: TObject);
var sql_Text:string;
begin
   inherited;
   IF NOT ISSelectedDbtOrCrtCorrect(ADOQDoclistDebtorAccountID.AsInteger,ADOQDoclistCreditorAccountID.AsInteger) THEN
   BEGIN
     ShowMessage('”‰œ »Â ’Ê—  « Ê„« Ìò À»  ‘œÂ «„ò«‰ ÊÌ—«Ì‘ ÊÃÊœ ‰œ«—œ');
     Exit;
   END;
   if not(ADOQDoclist.Active)or
         (ADOQDoclist.RecordCount=0) then
   begin
      MessageShowString('ÂÌç «ÿ·«⁄« Ì Ì«›  ‰‘œ', False);
      Exit
   end;
   sql_Text:='SELECT AccountTypeID FROM Account WHERE AccountID='+ ADOQDoclistDebtorAccountID.AsString;
   FrEditPayment := TFrEditPayment.Create(Nil);
   if Qry_GetResult(sql_Text,Dm.YeganehConnection)='1' THEN
     FrEditPayment.CashIsDebtor:=FALSE
   else
     FrEditPayment.CashIsDebtor:=true;
   FrEditPayment.PaymentID := ADOQDoclistPaymentID.AsInteger;
   FrEditPayment.DBEAmount.Enabled := False;
   FrEditPayment.LblAmount.Enabled := False;
   FrEditPayment.ShowModal;
   FrEditPayment.Free;
end;

procedure TFQrPrintPayment_ByDocumentNo.FormShow(Sender: TObject);
begin
  inherited;
   FromDate.Text := Copy(_Today,0,4) + '/01/01';
   DocNo.SetFocus;
   {Ranjbar Ver3}
   DBGrid_LoadColumns(Self.Name,YDBGrid);
   lBDocNo.Caption:='‘„«—Â ¬Œ—Ì‰ ”‰œ :'+IntToStr(strtoint(Get_NewDocumnetNo(_Today))-1);
end;

procedure TFQrPrintPayment_ByDocumentNo.FormCreate(Sender: TObject);
begin
  inherited;
  {Ranjbar 88.06.07 Code=34}
  //DocumentNo := '0';
  DocumentNo := '-1';
  //---
  {Ranjbar 88.05.14 Code=26}
  QRLblTitle.Caption := _SoftTitle;
  //---
end;

procedure TFQrPrintPayment_ByDocumentNo.Button5Click(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFQrPrintPayment_ByDocumentNo.BitBtn1Click(Sender: TObject);
var
 SqlString, SqlWhereClause : String;
begin
   inherited;
   //Hamed_Ansari_990514_S
   //   DocumentNo := DocNo.Text;
   SqlString := '';
   SqlWhereClause := '';
   SqlString :=
     ' SELECT PAYMENT.*, ' +
     ' CREDITORACCOUNT.ACCOUNTTITLE AS CREDITORACCOUNTTITLE, ' +
     ' DEBTORACCOUNT.ACCOUNTTITLE   AS DEBTORACCOUNTTITLE, ' +
     ' RTRIM(PAYTYPE.PAYTYPETITLE) +  (CASE WHEN PAYMENT.PAYTYPEID = 3 THEN ( SELECT  '' - ‘ ﬁ ''+(CAST(ORDERNO AS NVARCHAR(10)))AS ORDERNODESC FROM FORCEPAYMENT WHERE FORCEPAYMENT.PAYMENTID = PAYMENT.PAYMENTID ) END) AS PAYTYPETITLE, ' +
     ' FINANCIALNOTE.NOTENO, FINANCIALNOTE.MATUREDATE, FINANCIALNOTE.AMOUNT FINANCIALNOTEAMOUNT,FINANCIALNOTETYPE.FINANCIALNOTETYPETITLE, ' +
     ' USERS.FULLNAME, ' +
     ' ISNULL(COMMENT,PAYTYPETITLE) COMMENT2 , ' +
     ' FINANCIALNOTE_DETAIL.AMOUNT AS NOTE_DETAILAMOUNT, ' +
     ' FINANCIALNOTE_DETAIL.NOTENO AS NOTE_DETAILNOTENO, ' +
     ' FINANCIALNOTE_DETAIL.NOTEDATE AS DETAILNOTEDATE, ' +
     ' FINANCIALNOTESTATUS.FINANCIALNOTESTATUSDESC AS STATUSFINANCIALNOTESTATUSDESC, ' +
     ' FINANCIALNOTE_MASTER.FINANCIALNOTETYPEID AS MASTERFINANCIALNOTETYPEID, ' +
     ' PayType.PayTypeTitle AS NOTE_DETAILFINANCIALNOTETYPETITLE ' +
     ' FROM FINANCIALNOTE_MASTER ' +
     ' INNER JOIN FINANCIALNOTE_DETAIL ON FINANCIALNOTE_MASTER.FINANCIALNOTE_MASTERID = FINANCIALNOTE_DETAIL.FINANCIALNOTE_MASTERID ' +
     ' INNER JOIN FINANCIALNOTESTATUS ON FINANCIALNOTE_DETAIL.NOTESTATUSID = FINANCIALNOTESTATUS.FINANCIALNOTESTATUSID ' +
     ' INNER JOIN FINANCIALNOTETYPE FINANCIALNOTETYPE ON FINANCIALNOTE_MASTER.FINANCIALNOTETYPEID = FINANCIALNOTETYPE.FINANCIALNOTETYPEID ' +
     ' RIGHT OUTER JOIN PAYMENT INNER JOIN PAYTYPE ON PAYMENT.PAYTYPEID = PAYTYPE.PAYTYPEID ' +
     ' INNER JOIN ACCOUNT CREDITORACCOUNT ON PAYMENT.CREDITORACCOUNTID = CREDITORACCOUNT.ACCOUNTID ' +
     ' INNER JOIN ACCOUNT DEBTORACCOUNT ON PAYMENT.DEBTORACCOUNTID = DEBTORACCOUNT.ACCOUNTID ON FINANCIALNOTE_DETAIL.FINANCIALNOTE_DETAILID = PAYMENT.FINANCIALNOTE_DETAILID ' +
     ' LEFT OUTER JOIN USERS ON PAYMENT.INSERTUSERID = USERS.USERID ' +
     ' LEFT OUTER JOIN FINANCIALNOTE ON FINANCIALNOTE_DETAIL.FinancialNote_MasterID = FINANCIALNOTE.FINANCIALNOTEID ' +
     ' LEFT OUTER JOIN FINANCIALNOTETYPE FINANCIALNOTETYPE_1 ON FinancialNote_Master.FINANCIALNOTETYPEID = FINANCIALNOTETYPE_1.FINANCIALNOTETYPEID Where 1 = 1 ';
   if Trim(DocNo.Text) <> '' then
    SqlWhereClause := SqlWhereClause + ' And PAYMENT.documentno = ' + DocNo.Text;
   if (FromDate.Text <> '') and (ToDate.Text <> '') then
    SqlWhereClause := SqlWhereClause + ' And PAYMENT.Date Between ' + QuotedStr(FromDate.Text) + ' And ' + QuotedStr(ToDate.Text);
   SqlWhereClause := SqlWhereClause + ' ORDER BY CAST(PAYMENT.DOCUMENTNO AS INT), PAYMENT.[DATE]';
   ADOQDoclist.Close;
   ADOQDoclist.SQL.Text := SqlString + SqlWhereClause;
   ADOQDoclist.Open;
   //Hamed_Ansari_990514_E
end;

procedure TFQrPrintPayment_ByDocumentNo.BitBtn2Click(Sender: TObject);
begin
   inherited;
   DocumentNo := '0';
end;

procedure TFQrPrintPayment_ByDocumentNo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   inherited;
   {Ranjbar Ver3}
   DBGrid_SaveColumns(Self.Name,YDBGrid);
end;

procedure TFQrPrintPayment_ByDocumentNo.DelBtnClick(Sender: TObject);
var _PaymentId,I:Integer;_DelDate,_ListNotDeletedPaymentId:String;
begin
  inherited;
  _ListNotDeletedPaymentId:='';
  if (messageShowString('¬Ì« «“ Õ–› ”‰œ „ÿ„∆‰ Â” Ìœø',true)) then
  begin
    if YDBGrid.SelectedRows.Count>0 then
      for i:=0 to YDBGrid.SelectedRows.Count-1 do
      begin
        //DM.Report_Payment_ByDocumentNo.GotoBookmark(pointer(YDBGrid.SelectedRows.Items[i]));
        //Hamed_Ansari_990623_S
        //_PaymentId:=DM.Report_Payment_ByDocumentNo.FieldByName('PaymentID').AsInteger;
        //_DelDate:=DM.Report_Payment_ByDocumentNo.FieldByName('Date').AsString;
        _PaymentId:=ADOQDoclist.FieldByName('PaymentID').AsInteger;
        _DelDate:=ADOQDoclist.FieldByName('Date').AsString;
        //Hamed_Ansari_990623_E
        if (CanDelete_Payment(_PaymentId)) then
          Delete_Payment_ForcePayment(_PaymentId,_Today,_Userid)
        else
          _ListNotDeletedPaymentId:=_ListNotDeletedPaymentId+inttostr(_PaymentId)+',';
          //ShowMessage('”‰œ „⁄òÊ” ﬁ»·« ’«œ— ‘œÂ «”  «„ò«‰ Õ–› ÊÃÊœ ‰œ«—œ.');
    end
    else
    begin
      //Hamed_Ansari_990623_S
      //_PaymentId:=DM.Report_Payment_ByDocumentNo.FieldByName('PaymentID').AsInteger;
      //_DelDate:=DM.Report_Payment_ByDocumentNo.FieldByName('Date').AsString;
      _PaymentId:=ADOQDoclist.FieldByName('PaymentID').AsInteger;
      _DelDate:=ADOQDoclist.FieldByName('Date').AsString;
      //Hamed_Ansari_990623_E
      if (CanDelete_Payment(_PaymentId))  then
        Delete_Payment_ForcePayment(_PaymentId,_today,_Userid)
      else
        ShowMessage('”‰œ „⁄òÊ” ﬁ»·« ’«œ— ‘œÂ «”  «„ò«‰ Õ–› ÊÃÊœ ‰œ«—œ.');
    end;

    if (trim(_ListNotDeletedPaymentId)<>'') then
    ShowMessage('”‰œ „⁄òÊ” »—«Ì òœ Â«Ì '+_ListNotDeletedPaymentId+' ’«œ— ‘œÂ «”  «„ò«‰ Õ–› ÊÃÊœ ‰œ«—œ.');

  end;
  BitBtn1.Click;
end;

procedure TFQrPrintPayment_ByDocumentNo.BitBtn3Click(Sender: TObject);
var
  _PaymentId,I:Integer;
  _DelDate,_ListNotDeletedPaymentId:String;
begin
  inherited;
  if (messageShowString('¬Ì« «“ Õ–› ”‰œ „ÿ„∆‰ Â” Ìœø',true)) then
  begin
    //Hamed_Ansari_990623_S
    //_PaymentId:=DM.Report_Payment_ByDocumentNo.FieldByName('PaymentID').AsInteger;
    //_DelDate:=DM.Report_Payment_ByDocumentNo.FieldByName('Date').AsString;
    _PaymentId:=ADOQDoclist.FieldByName('PaymentID').AsInteger;
    _DelDate:=ADOQDoclist.FieldByName('Date').AsString;
    //Hamed_Ansari_990623_E
    if (messageShowString('  ⁄œ«œ «”‰«œ Ê«»” Â  '+INTTOSTR((Count_PAYMENT(_PaymentId,_DelDate)))+ '  « «” .¬Ì«  „«Ì· »Â Õ–› œ«—Ìœø ',true))  THEN
        DELETE_PAYMENT_AllFORCEPAYMENT(_PaymentId,_today,_Userid)

  end;
end;

end.
