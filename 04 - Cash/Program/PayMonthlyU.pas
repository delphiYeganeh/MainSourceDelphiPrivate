unit PayMonthlyU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ActnMan, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList,
  Buttons, DBActns, UemsVCL, Grids, DBGrids, YDbgrid, XPStyleActnCtrls,
  YCheckGroupBox, Menus, YAmountEdit, DB, ADODB, SolarCalendarPackage;

type
  TFrPayMonthly = class(TYBaseForm)
    Panel2: TPanel;
    SearchEdit: TEdit;
    Label1: TLabel;
    ActionManager1: TActionManager;
    Acancel: TDataSetCancel;
    asearchCheque: TAction;
    Action1: TAction;
    Label2: TLabel;
    Panel1: TPanel;
    Label5: TLabel;
    StatusLabel: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label12: TLabel;
    DBEdit1: TDBEdit;
    DBEdit5: TDBEdit;
    MajorAccount: TDBLookupComboBox;
    Apost: TAction;
    Panel3: TGroupBox;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    Label13: TLabel;
    DBEdit10: TDBEdit;
    Label14: TLabel;
    DBEdit11: TDBEdit;
    Label16: TLabel;
    DBEdit13: TDBEdit;
    PAccountDeatil: TPanel;
    DBEdit12: TDBEdit;
    Label15: TLabel;
    EAmerce: TYAmountEdit;
    Label17: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    DoBtn: TBitBtn;
    PrintBtn: TBitBtn;
    DocPrintBtn: TBitBtn;
    PerferazeBtn: TBitBtn;
    Date: TSolarDatePicker;
    DBEdit4: TDBEdit;
    Label9: TLabel;
    FinancialNotePanel: TPanel;
    RepPopMnu: TPopupMenu;
    NShow: TMenuItem;
    NPrint: TMenuItem;
    NDesign: TMenuItem;
    NOldVersion: TMenuItem;
    N8: TMenuItem;
    N11: TMenuItem;
    Label22: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label23: TLabel;
    PopupMenuBill: TPopupMenu;
    BillShow: TMenuItem;
    BillPrint: TMenuItem;
    BillDesign: TMenuItem;
    N1: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    procedure SearchEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure RefreshMonthly;
    procedure FormCreate(Sender: TObject);
    procedure AExitExecute(Sender: TObject);
    procedure DoBtnClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ApostExecute(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DocPrintBtnClick(Sender: TObject);
    procedure PrintBtnClick(Sender: TObject);
    procedure PerferazeBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NShowClick(Sender: TObject);
    procedure BillShowClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrPayMonthly: TFrPayMonthly;
implementation

uses dmu,   YShamsiDate, BusinessLayer, AccountDetailsU,
  QrPaymentU, AddFinancialNoteU, FinancialNoteDetailU,
  AddFinancialNote_NewU, FinancialNoteDetail_NewU, MainU;
{$R *.dfm}

var  AccountID :integer;
      DocumentNo:string;
procedure TFrPayMonthly.SearchEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);

begin
  inherited;
  if key=13 then
    RefreshMonthly
end;

procedure TFrPayMonthly.RefreshMonthly;
begin
  AccountID:=Get_AccountID_ByAccountNo(SearchEdit.Text);

  if AccountID<0 then
  begin
    ShowMessage('«Ì‰ Õ”«» »” Â ‘œÂ «” ');
    SearchEdit.SetFocus;
  end
  else
  if AccountID=0 then
  begin
    ShowMessage('«Ì‰ ‘„«—Â Õ”«» ÊÃÊœ ‰œ«—œ');
    SearchEdit.SetFocus;
  end
  else
    with dm,Select_Payment do
    begin
      FrAccountDetails.AccountID:=AccountID;
      Open_LastMonthly(AccountID);
      EAmerce.Text:=CommaSeperate(Dm.Select_LastMonthlyAmerce.AsString);
      FrFinancialNoteDetail_New.FinancialNoteid:=0;
      FrAccountDetails.AccountID:=AccountID;

      Open_Payment(0);
      Insert;
      //Dm.Select_PaymentDocumentNo.AsString:=Get_NewDocumnetNo(Date.Text);

      DoBtn.Enabled:=true;
      PerferazeBtn.Enabled:=false;
      //PerferazeBtn2.Enabled:=false;
      DocPrintBtn.Enabled:=false;
      PrintBtn.Enabled:=false;

      Select_PaymentCreditorAccountID.AsInteger:=AccountID;
      Select_PaymentAmount.AsInteger:=Select_LastMonthlyAmount.AsInteger;
      {Ranjbar}
      //Select_PaymentDate.AsString:=_Today;
      Select_PaymentDate.AsString:=_Today;
      ///---
      Select_PaymentTime.AsString:=Get_Time;
      Select_PaymentPayTypeID.AsInteger:=MonthlyPayTypeID;
      Select_PaymentInsertUserID.AsInteger:=_Userid;
    end;
end;

procedure TFrPayMonthly.FormShow(Sender: TObject);
begin
  inherited;
   if dm.Select_Payment.State=dsedit then
      MajorAccount.SetFocus
   else
      SearchEdit.SetFocus;
end;

procedure TFrPayMonthly.DBEdit1Change(Sender: TObject);
begin
  inherited;
//  try Label12.Caption:=Bill(strtoint(TDBEdit(sender).Text))+' —Ì«·'
  try Label12.Caption:=Bill(strtoint(TDBEdit(sender).Text))+' ' +Get_SystemSetting('EdtMoneyUnit')+' ';
  except
  end;
end;

procedure TFrPayMonthly.FormCreate(Sender: TObject);
begin
 Inherited;
   FrAccountDetails:=TFrAccountDetails.Create(Application);
   FrAccountDetails.ShowInPanel(PAccountDeatil);

   FrFinancialNoteDetail_New:=TFrFinancialNoteDetail_New.Create(Application);
   FrFinancialNoteDetail_New.ShowInPanel(FinancialNotePanel);
end;

procedure TFrPayMonthly.AExitExecute(Sender: TObject);
begin
  inherited;
dm.Select_Payment.Cancel;
Close;
end;

procedure TFrPayMonthly.DoBtnClick(Sender: TObject);
var _keyV:integer;
begin
   Inherited;
   IF MajorAccount.KeyValue=NULL then
     _KeyV:=-1
   Else
     _KeyV:=MajorAccount.KeyValue;

   IF NOT ISSelectedDbtOrCrtCorrect(_keyV,0) THEN
   BEGIN
     ShowMessage('Õ”«» «‰ Œ«» ‘œÂ „Ã«“ ‰Ì” ');
     Exit;
   END;
   Apost.Execute;
end;

procedure TFrPayMonthly.BitBtn1Click(Sender: TObject);
begin
  inherited;
Close;
end;

procedure TFrPayMonthly.ApostExecute(Sender: TObject);
var _Crtr_DetAccountID, _cr  ,_Db:Integer;
    FNoteTypeID,SqlText,MID:String;
    MemoSms :TMemo;
begin
  inherited;
  Dm.Select_PaymentDocumentNo.AsString:=Get_NewDocumnetNo(Date.Text);

  dm.Select_PaymentFinancialNoteID.AsInteger:=FrFinancialNoteDetail_New.FinancialNoteid;
    IF  (Dm.FinancialNote_Master <> NIL) THEN
     IF  (Dm.Select_PaymentAmount <> NIL)  THEN
      IF  (Dm.FinancialNote_Master.Active ) THEN
        IF (_AmountForRefreshPayment=0) AND
           (Dm.FinancialNote_MasterAmount.AsLargeInt<>Dm.Select_PaymentAmount.AsLargeInt) AND
           ((NOT Dm.FinancialNote_MasterAmount.IsNull)AND
           (Dm.FinancialNote_MasterAmount.AsLargeInt<>0)) THEN
           BEGIN
              ShowMessage('„»·€ ò· çò »« „»·€ „‘Œ’ ‘œÂ »—«»— ‰Ì” ');
              ABORT;
           END;
// ELSE
// BEGIN

    SqlText:=' SELECT FinancialNote_Master.FinancialNoteTypeID '+
             ' FROM   FinancialNote_Detail INNER JOIN '+
             '        FinancialNote_Master ON FinancialNote_Detail.FinancialNote_MasterID = FinancialNote_Master.FinancialNote_MasterID '+
             ' WHERE  FinancialNote_Detail.FinancialNote_DetailID='+IntToStr(FrFinancialNoteDetail_New.FinancialNoteid);
    FNoteTypeID:=Qry_GetResult(sqlText,Dm.YeganehConnection);

       IF (FrFinancialNoteDetail_New.FinancialNoteid>0) AND (FNoteTypeID='1') THEN
       BEGIN
            IF (Get_SystemSetting('EdtResiveAccount')=NULL) OR
               (Get_SystemSetting('EdtResiveAccount')<1)   THEN
               Raise Exception.Create('œ— ﬁ”„   ‰ŸÌ„«  ”Ì” „ ‘„«—Â Õ”«» «”‰«œ œ—Ì«› ‰Ì —« „‘Œ’ ‰„«ÌÌœ');
               _Crtr_DetAccountID:=Dm.Select_PaymentDebtorAccountID.AsInteger;
               _Cr:=Dm.Select_PaymentCreditorAccountID.AsInteger;
               _Db:=Get_AccountID_ByAccountNo(Get_SystemSetting('EdtResiveAccount'));

               Dm.FinancialNote_Detail.First;
               WHILE Not Dm.FinancialNote_Detail.Eof do
               BEGIN
                 Insert_Payment(MonthlyPayTypeID,//IntersetPayTypeID,
                                _cr,
                                _Db,
                                dm.Select_PaymentFinancialNoteID.AsInteger,
                                Dm.FinancialNote_DetailAmount.AsInteger,
                                ' Å—œ«Œ  „«ÂÌ«‰Â «“ ÿ—Ìﬁ çò',
                                0,
                                dm.Select_PaymentDocumentNo.AsString,
                                '',
                                Dm.FinancialNote_DetailFinancialNote_DetailID.AsInteger,
                                _Crtr_DetAccountID,
                                _cr,
                                 _Crtr_DetAccountID
                                );
                 DM.FinancialNote_Detail.Next;
               END
       END
       Else
       Begin
           IF  dm.Select_Payment.state=dsinsert Then
              Dm.Select_PaymentDocumentNo.AsString:=Get_NewDocumnetNo(Date.Text);
           DocumentNo:=dm.Select_PaymentDocumentNo.AsString;
           dm.Select_PaymentComment.AsString:=dm.Select_LastMonthlyComment.AsString;
           IF (FNoteTypeID<>'0') AND (FNoteTypeID<>'1') THEN //«ê— çò ‰»«‘œ
           BEGIN
             Dm.Select_PaymentFinancialNote_DetailID.AsInteger:=FrFinancialNoteDetail_New.FinancialNoteid;
             Qry_SetResult(' Update FinancialNote_Detail  '+
                           ' Set    NoteStatusID=3 '+
                           ' Where  FinancialNote_DetailID='+IntToStr(FrFinancialNoteDetail_New.FinancialNoteid),dm.YeganehConnection);

           END;

           dm.Select_Payment.Post;
       End;

       //////////////////////////////////////////////////////////////////////////////////

       Pay_ForcePayment(dm.Select_LastMonthlyForcePaymentID.AsInteger,dm.Select_PaymentPaymentID.AsInteger);

       if (trim(EAmerce.YText)<>'')and ((trim(EAmerce.YText)<>'0')) then
        Insert_Payment(amercePayTypeID,
                       AmerceAccountID,
                       MajorAccount.KeyValue,
                        0,
                        StrToInt(EAmerce.YText),
                        'Ã—Ì„Â „«ÂÌ«‰Â   «—ÌŒ '+dm.Select_LastMonthlyMatureDate.AsString+'  Õ”«» '+dm.Select_LastMonthlyAccountNO.AsString,
                        dm.Select_LastMonthlyForcePaymentID.AsInteger,
                        DocumentNo,
                        '',
                        dm.Select_PaymentFinancialNote_DetailID.AsInteger,
                        AccountID,
                        AmerceAccountID,
                        MajorAccount.KeyValue);

      DoBtn.Enabled:=false;
      PerferazeBtn.Enabled:=true;
//      PerferazeBtn2.Enabled:=true;
      DocPrintBtn.Enabled:=true;
      PrintBtn.Enabled:=true;
//      END;


///// Send SMS
  dm.Select_Account_Details.Close;
  dm.Select_Account_Details.Open;
  MemoSms:=TMemo.Create(Application);
  MemoSms.Parent:=Self;
  MemoSms.Visible:=False;
  with  MemoSms.Lines do
  begin

    text:=text+' '+('”·«„');
    text:=text+' '+('„«ÂÌ«‰Â ‘„«—Â '+DBEdit13.Text+' '+dm.Select_Account_DetailsAccountTitle.AsString);
    text:=text+' '+('»Â „»·€ '+DBEdit10.Text+' ' +Get_SystemSetting('EdtMoneyUnit'));
    text:=text+' '+('œ—  «—ÌŒ '+Date.text+' œ—Ì«›  ê—œÌœ');
    text:=text+' '+('„ÊÃÊœÌ :'+dm.Select_Account_DetailsExist.AsString);


    text:=text+' '+(_CashNameForSms);
    if _EnableSms then
    begin
      dm.SendSmsToOutBox(dm.Select_Account_DetailsPhone.AsString,memoSms.Text);
    end;
    FreeAndNil(MemoSms);
  end;
End;

procedure TFrPayMonthly.DBEdit1Exit(Sender: TObject);
begin
  inherited;
  TEditExit(sender);
  FrFinancialNoteDetail_New.DefaultAmount:=strtoint(Tdbedit(Sender).Text);

end;

procedure TFrPayMonthly.DBEdit4Exit(Sender: TObject);
begin
  inherited;
 EAmerce.Text:=CommaSeperate(IntToStr(Get_Amerce(MonthlyForceTypeID,dm.Select_LastPartMatureDate.AsString,TEdit(Sender).Text)));
 TEditExit(Sender);

end;

procedure TFrPayMonthly.DocPrintBtnClick(Sender: TObject);
begin
  inherited;
  if DocumentNo<>'' then
    dm.PrintPayment_ByDocumentNo(DocumentNo);

end;

procedure TFrPayMonthly.PrintBtnClick(Sender: TObject);
begin
  inherited;
   Cursor_SetPos(Self,PrintBtn,PopupMenuBill);

{  FrQrPayment:=TFrQrPayment.Create(Application);
  FrQrPayment.IsPay:=True;
  Case Get_SystemSetting('PrintBill') of
   1: FrQrPayment.QRBand3.Enabled:=FALSE;
   2: FrQrPayment.QRBand3.Enabled:=True;
  End;
  FrQrPayment.QuickRep4.Preview;
}
end;

procedure TFrPayMonthly.PerferazeBtnClick(Sender: TObject);
begin
  inherited;
   Cursor_SetPos(Self,PerferazeBtn,RepPopMnu);

   //  dm.LinePrint(dm.Select_Account_DetailsContactID.AsInteger,true, dm.Select_PaymentDate.AsString,'Å—œ«Œ  „«ÂÌ«‰Â',dm.Select_PaymentAmount.AsString,'0',dm.Select_Account_DetailsExist.AsString,dm.Select_PaymentDocumentNo.AsString,'Nshow')
end;

procedure TFrPayMonthly.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  _FinancialNoteid:=-1;
end;

procedure TFrPayMonthly.NShowClick(Sender: TObject);
VAR PopupOption:STRING;
begin
  inherited;
     IF Sender = NShow  then
            PopupOption:='NShow';//ÅÌ‘ ‰„«Ì‘
     IF Sender = NPrint  then
            PopupOption:='NPrint';//ç«Å
     IF Sender = NDesign  then
            PopupOption:='NDesign';//ÿ—«ÕÌ
     IF Sender = NOldVersion  then
            PopupOption:='NOldVersion';//Ê—é‰ ﬁœÌ„Ì


     dm.LinePrint(dm.Select_Account_DetailsContactID.AsInteger,true, dm.Select_PaymentDate.AsString,
     'Å—œ«Œ  „«ÂÌ«‰Â',dm.Select_PaymentAmount.AsString,'0',dm.Select_Account_DetailsExist.AsString,
     dm.Select_PaymentDocumentNo.AsString,dm.Select_Account_DetailsAccountNo.AsString,
     dm.Select_Account_DetailsAccountTitle.AsString,PopupOption,'0','btn_AM_PardakhteMahiyaneh',
     IntToStr(dm.Select_PaymentAmount.AsInteger+dm.Select_Account_DetailsExist.AsInteger){GetReportName('Btn33','PerfrajRep.fr3')})
end;

procedure TFrPayMonthly.BillShowClick(Sender: TObject);
begin
  inherited;
    FrQrPayment:=TFrQrPayment.Create(Application);
    OpenSp_ShowBill(Dm.Select_PaymentPaymentID.AsInteger);


    FrQrPayment.frxReport2.Pages[1].Visible:=true;
    Rep_LoadFile_New(FrQrPayment.frxReport2,'Bill_MonthlyPrint.fr3','btn_AM_PardakhteMahiyaneh');//GetReportName('Btn33','Bill_MonthlyPrint.fr3'));


     IF Sender = BillShow    Then
            Rep_Show(FrQrPayment.frxReport2 ,rtShow);//ÅÌ‘ ‰„«Ì‘

     IF Sender = BillPrint   Then
            Rep_Show(FrQrPayment.frxReport2 ,rtPrint);//ç«Å ”—Ì⁄

     IF (Sender = BillDesign)Then
            Rep_Show(FrQrPayment.frxReport2 ,rtDesign);//ÿ—«ÕÌ

end;

procedure TFrPayMonthly.N1Click(Sender: TObject);
begin
  inherited;
  FrQrPayment:=TFrQrPayment.Create(Application);
  FrQrPayment.IsPay:=True;
  Case Get_SystemSetting('PrintBill') of
   1: FrQrPayment.QRBand3.Enabled:=FALSE;
   2: FrQrPayment.QRBand3.Enabled:=True;
  End;
  FrQrPayment.QuickRep4.Preview;

end;

procedure TFrPayMonthly.MenuItem6Click(Sender: TObject);
begin
  inherited;
   Rep_CorrectDesign('Bill_MonthlyPrint.fr3');

end;

end.
