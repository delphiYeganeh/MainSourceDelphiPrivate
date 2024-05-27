unit AddPaymentU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ActnMan, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList,
  Buttons, DBActns, UemsVCL, Grids, DBGrids, YDbgrid, XPStyleActnCtrls,
   Menus, DB, ADODB, SolarCalendarPackage;

type
  TFrAddPayment = class(TYBaseForm)
    SearchPanel: TPanel;
    SearchEdit: TEdit;
    Label1: TLabel;
    ActionManager1: TActionManager;
    Acancel: TDataSetCancel;
    asearchCheque: TAction;
    Action1: TAction;
    PAccountDeatil: TPanel;
    YDBGrid1: TYDBGrid;
    PanelData: TPanel;
    Label5: TLabel;
    StatusLabel: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    AmountTitle: TLabel;
    DBAmount: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit8: TDBEdit;
    MajorAccount: TDBLookupComboBox;
    FinancialNotePanel: TPanel;
    Apost: TAction;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Panel1: TPanel;
    PerferazeBtn: TBitBtn;
    DocPrintBtn: TBitBtn;
    PrintBtn: TBitBtn;
    DoBtn: TBitBtn;
    BitBtn1: TBitBtn;
    DBEDate: TSolarDatePicker;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    RepPopMnu: TPopupMenu;
    NShow: TMenuItem;
    NPrint: TMenuItem;
    NDesign: TMenuItem;
    N8: TMenuItem;
    N11: TMenuItem;
    Label4: TLabel;
    NOldVersion: TMenuItem;
    PopupMenuBill: TPopupMenu;
    BillShow: TMenuItem;
    BillPrint: TMenuItem;
    BillDesign: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    N1: TMenuItem;
    Label6: TLabel;
    AddPaymentInsert: TBitBtn;
    procedure SearchEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure DBAmountChange(Sender: TObject);
    Procedure SetCashIsDebtor(value : boolean);
    procedure RefreshPayment;
    procedure FormCreate(Sender: TObject);
    procedure PrintBtnClick(Sender: TObject);
    procedure AExitExecute(Sender: TObject);
    procedure DoBtnClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ApostExecute(Sender: TObject);
    procedure PerferazeBtnClick(Sender: TObject);
    procedure DocPrintBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SbReportClick(Sender: TObject);
    procedure NShowClick(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure BillShowClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure AddPaymentInsertClick(Sender: TObject);
  private
    { Private declarations }
    FCashIsDebtor:boolean;
  public
   BalanceMode: boolean;
   VosulMode : boolean;
   Property CashIsDebtor: boolean read FCashIsDebtor write    SetCashIsDebtor;
    { Public declarations }

  end;

var
  FrAddPayment: TFrAddPayment;

implementation

uses dmu, YShamsiDate, BusinessLayer, AccountDetailsU,
     QrPaymentU, AddFinancialNoteU, FinancialNoteDetailU,
     AddFinancialNote_NewU, FinancialNoteDetail_NewU, ConvUtils,
     AddReportNameU;
{$R *.dfm}

var
  AccountID :Integer;

Procedure TFrAddPayment.SetCashIsDebtor(value : boolean);
begin
  FCashIsDebtor := value;
  if value then
  begin
    //StatusLabel.Caption:='»—œ«‘  «“ Õ”«»';
    Caption:='Ê«—Ì“ »Â Õ”«»';
    DoBtn.Caption:=Caption
  end
  else
  begin
    //StatusLabel.Caption:='Ê«—Ì“ »Â Õ”«»' ;
    Caption:='»—œ«‘  «“ Õ”«»';
    DoBtn.Caption:=Caption
  end
  //Caption:=StatusLabel.Caption;
  //DoBtn.Caption:=StatusLabel.Caption;
end;

procedure TFrAddPayment.SearchEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  _fDId,_fMId:Integer;
begin
  inherited;
  if key = 13 then
    RefreshPayment;

  if _SWCanClose then
  begin
    Dm.FinancialNote_Master.CLOSE;
    Dm.FinancialNote_Detail.CLOSE;
    _fDId:=Dm.Select_PaymentFinancialNote_DetailID.AsInteger;

    if (_fDId <> 0) and
       (Dm.FinancialNote_Detail <> NIL) then
    begin
      Dm.FinancialNote_Master.Open;
      Dm.FinancialNote_Detail.Open;
      Dm.FinancialNote_Detail.Locate('FinancialNote_DetailID',_fDId,[loCaseInsensitive]);
    end;
  end;
end;

procedure TFrAddPayment.RefreshPayment;
begin
try
  AccountID:=Get_AccountID_ByAccountNo(SearchEdit.Text);
  if AccountID<0 then
  begin
    ShowMessage('«Ì‰ Õ”«» »” Â ‘œÂ «” ');
    SearchEdit.SetFocus;
    Exit;
  end;

  if AccountID=0 then
  begin
    ShowMessage('«Ì‰ ‘„«—Â Õ”«» ÊÃÊœ ‰œ«—œ');
    SearchEdit.SetFocus;
    Exit;
  end;

  with dm,Select_Payment do
  begin
    Open_Report_LatestPayment_ByAccountID(AccountID);
    // Amin 1391/09/15 FrFinancialNoteDetail_New.FinancialNoteid:=0;

    FrFinancialNoteDetail_New.FinancialNoteid:= _DeatailIdForRefreshPayment; // Amin 1391/09/15
    FrAccountDetails.AccountID:=AccountID;

    Open_Payment(0);
    AmountTitle.Caption:='';

    Insert;
    //Select_PaymentDocumentNo.AsString:=Get_NewDocumnetNo(DBEDate.Text);

    if _AmountForRefreshPayment <> 0 then
      Select_PaymentAmount.AsInteger:=_AmountForRefreshPayment;

    //if trim(_NotNoForRefreshPayment)<>'' then
    //Select_PaymentNoteNo.AsInteger:=_NotNoForRefreshPayment;

    if (_DeatailIdForRefreshPayment)<>0 then
      Select_PaymentFinancialNote_DetailID.AsInteger:=_DeatailIdForRefreshPayment;

    if CashIsDebtor then  //Ê«—Ì“ »Â Õ”«»
    begin
      if _CrOrDbForRefreshPayment<>0 then
        Select_PaymentDebtorAccountID.AsInteger:=_CrOrDbForRefreshPayment;
      Select_PaymentCreditorAccountID.AsInteger:=AccountID;
      MajorAccount.DataField:='DebtorAccountID';
    end
    else
    begin  //»—œ«‘  «“ Õ”«»
      if _CrOrDbForRefreshPayment <> 0 then
        Select_PaymentCreditorAccountID.AsInteger:=_CrOrDbForRefreshPayment;

      Select_PaymentDebtorAccountID.AsInteger:=AccountID;
      MajorAccount.DataField:='CreditorAccountID';
    end;
    {Ranjbar}
    //Select_PaymentDate.AsString:=_Today;
    Select_PaymentDate.AsString:=_Today;
    //---
    Select_PaymentTime.AsString:=Get_Time;
    Select_PaymentInsertUserID.AsInteger:=_userid;

    DoBtn.Enabled:=True;
    SearchPanel.Enabled:=DoBtn.Enabled;
    PerferazeBtn.Enabled:=False;
    //PerferazeBtn2.Enabled:=false;
    DocPrintBtn.Enabled:=False;
    PrintBtn.Enabled:=False;
  end;
except On E:Exception do
      ShowMessage('ERROR RefreshPayment :: ' + E.Message);
end;
end;

procedure TFrAddPayment.FormShow(Sender: TObject);
var
  _fDId,_fMId:Integer;
begin
  inherited;

  AddPaymentInsert.Visible := False;
  //FrAccountDetails:=TFrAccountDetails.Create(Application);
  _FrAddPaymentCloseWithoutDoEnything:=False;
  MajorAccount.SetFocus;
  {Ranjbar Ver3}
  DBGrid_LoadColumns(Self.Name,YDBGrid1);

  if _SWCanClose then
  begin
    Dm.FinancialNote_Master.CLOSE;
    Dm.FinancialNote_Detail.CLOSE;
    try
      _fDId := dm.Select_PaymentFinancialNote_DetailID.AsInteger;

    except On E:Exception do
      ShowMessage('ERRRRRRRRRRRRRRROR :: ' + E.Message);
    end;

    if (_fDId <> 0) and (Dm.FinancialNote_Detail <> NIL) then
    begin
      Dm.FinancialNote_Master.Open;
      Dm.FinancialNote_Detail.Open;
      Dm.FinancialNote_Detail.Locate('FinancialNote_DetailID',_fDId,[loCaseInsensitive]);
    end;
  end;
end;

procedure TFrAddPayment.DBAmountChange(Sender: TObject);
begin
  inherited;

  if FrFinancialNoteDetail_New <> nil then
    if Tdbedit(Sender).Text <> '' then
      FrFinancialNoteDetail_New.DefaultAmount:= StrToInt64(DeleteComma(Tdbedit(Sender).Text))
    else
      FrFinancialNoteDetail_New.DefaultAmount:=0;
   
//  try AmountTitle.Caption:=Bill(StrToInt64(DeleteComma(Tdbedit(Sender).Text)))+' —Ì«·'; except end;
  try AmountTitle.Caption:=Bill(StrToInt64(DeleteComma(Tdbedit(Sender).Text)))+' '+ Get_SystemSetting('EdtMoneyUnit')+' ';
  except
  end;
end;

procedure TFrAddPayment.FormCreate(Sender: TObject);
begin
  inherited;

  BalanceMode := False;

  FrAccountDetails := TFrAccountDetails.Create(Application);
  FrAccountDetails.ShowInPanel(PAccountDeatil);

  FrFinancialNoteDetail_New := TFrFinancialNoteDetail_New.Create(Application);
  FrFinancialNoteDetail_New.ShowInPanel(FinancialNotePanel);

  DBEDate.Text := _Today;
  if not _CanEditPaymentDate then
    DBEDate.ReadOnly := True;
end;

procedure TFrAddPayment.PrintBtnClick(Sender: TObject);
begin
  inherited;
   Cursor_SetPos(Self,PrintBtn,PopupMenuBill);

  {
  FrQrPayment:=TFrQrPayment.Create(Application);
  FrQrPayment.IsPay:=CashIsDebtor;
//  FrQrPayment.QuickRep1.Preview;
  FrQrPayment.QRLblSoftTitle.Caption  := _SoftTitle;
  FrQrPayment.QRLblSoftTitle2.Caption := _SoftTitle;
  FrQrPayment.QRLblSoftTitle3.Caption := _SoftTitle;
  FrQrPayment.QRLblSoftTitle4.Caption := _SoftTitle;
  FrQrPayment.QRLblSoftTitle_N1.Caption := _SoftTitle;
  FrQrPayment.QRLblSoftTitle_N2.Caption := _SoftTitle;
  //---
  FrQrPayment.QuickRep4.Preview;
   }
end;

procedure TFrAddPayment.AExitExecute(Sender: TObject);
begin
  inherited;
try
  Dm.Select_Payment.Cancel;

  _FrAddPaymentCloseWithoutDoEnything:=DoBtn.Enabled;
  SearchPanel.Enabled:=DoBtn.Enabled;

  Close;
except On E:Exception do
      ShowMessage('ERROR TFrAddPayment.AExitExecute :: ' + E.Message);
end;
end;

procedure TFrAddPayment.DoBtnClick(Sender: TObject);
var
   MemoSms:Tmemo;
begin
  inherited;
  AddPaymentInsert.Enabled := False;
  if UsedForMountly then
     Dm.Select_PaymentPayTypeID.AsInteger := 2;

  if (Dm.Select_PaymentAmount.AsLargeInt=0) or
     (Dm.Select_PaymentAmount.ISNULL) then
    raise Exception.Create('„»·€ —« „‘Œ’ ‰„«ÌÌœ') ;

  if (_AmountForRefreshPayment <>0) and
     (Dm.Select_PaymentAmount.AsLargeInt<>_AmountForRefreshPayment) then
    raise Exception.Create('„»·€ çò »« „»·€ „‘Œ’ ‘œÂ »—«»— ‰Ì” ') ;

  if UsedForMountly then
    if (Get_Balance_ByPayTypeID(dm.Report_AccountAccountID.AsInteger,2,'9')-Dm.Select_PaymentAmount.AsInteger)<0 then
      raise Exception.Create('„ÊÃÊœÌ Õ”«» „«ÂÌ«‰Â ò«›Ì ‰Ì” ');

  if MajorAccount.KeyValue = Null then
  begin
    ShowMessage('«» œ« '+StatusLabel.Caption+' —« «‰ Œ«» ò‰Ìœ');
    MajorAccount.SetFocus;
  end
  else
  begin
    if (Dm.FinancialNote_Master <> nil) and
       (Dm.Select_PaymentAmount <> nil) and
       (Dm.FinancialNote_Master.Active ) and
       (_AmountForRefreshPayment = 0) and
       (Dm.FinancialNote_MasterAmount.AsLargeInt <> Dm.Select_PaymentAmount.AsLargeInt) and
       ((not Dm.FinancialNote_MasterAmount.IsNull) and
       (Dm.FinancialNote_MasterAmount.AsLargeInt <> 0)) then
      ShowMessage('„»·€ ò· çò »« „»·€ „‘Œ’ ‘œÂ »—«»— ‰Ì” ')
    else
    begin
      try
        Apost.Execute;
        _FinancialNoteid := -1;
        _FrAddPaymentCloseWithoutDoEnything := DoBtn.Enabled;

        AddPaymentInsert.Visible := True;
        AddPaymentInsert.Enabled := True;
        //SearchPanel.Enabled:=False;
      except
      end;
    end;
  end;

  ///// Send SMS
  if _EnableSms then
  begin
    MemoSms:=TMemo.Create(Application);
    MemoSms.Parent:=Self;
    MemoSms.Visible:=False;
    with  MemoSms.Lines do
    begin
      Text := ('”·«„');
      Text := Text + ' ' + ('„»·€ ' + DBAmount.Text + ' ' + Get_SystemSetting('EdtMoneyUnit'));
      Text := Text + ' ' + ('œ—  «—ÌŒ : ' + DBEDate.Text);
      if CashIsDebtor then
      begin
        Text := Text + ' ' + ('»Â Õ”«» ' + dm.Select_Account_DetailsAccountTitle.AsString + ' Ê«—Ì“ ê—œÌœ ');
      end
      else
      begin
        Text := Text + ' ' + ('«“ Õ”«» ' + dm.Select_Account_DetailsAccountTitle.AsString + ' »—œ«‘  ê—œÌœ');
      end;
      Text := Text + ' ' + ('„ÊÃÊœÌ ò· : ' + FrAccountDetails.DBEdit2.Text + ' ' + Get_SystemSetting('EdtMoneyUnit'));
//        Add('„ÊÃÊœÌ »« «Õ ”«» Ê«„ : '+FrAccountDetails.DBedit9.Text+' '+Get_SystemSetting('EdtMoneyUnit')+' '+FrAccountDetails.DBtext5.Caption);
//        Add(' „ÊÃÊœÌ „«ÂÌ«‰Â : '+FrAccountDetails.DBedit6.Text+' ' +Get_SystemSetting('EdtMoneyUnit'));
      Text := Text + ' ' + (_CashNameForSms);

      dm.SendSmsToOutBox(dm.Select_Account_DetailsPhone.AsString,memoSms.Text);

      FreeAndNil(MemoSms);
    end;
  end;
end;

procedure TFrAddPayment.BitBtn1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFrAddPayment.ApostExecute(Sender: TObject);
var
  SqlText,
  Mid,
  FNoteTypeID:string;
  _Crtr_DetAccountID,
  _Cr,
  _db,
  _MainCr,
  _MainDB,
  PayTypeID : Integer; // Amin 1391/09/12
  balance : int64;
begin
  inherited;
// dm.Select_PaymentFinancialNoteID.AsInteger:=FrFinancialNoteDetail.FinancialNoteid;
//     dm.Select_PaymentFinancialNote_DetailID.AsInteger:=FrFinancialNoteDetail_New.FinancialNoteid;
//     dm.Select_PaymentCrtr_DetAccountID.AsInteger:=AccountID;

  dm.Select_PaymentDocumentNo.AsString:=Get_NewDocumnetNo(DBEDate.Text);

  SqlText:=' SELECT FinancialNote_Master.FinancialNoteTypeID '+
           ' FROM   FinancialNote_Detail INNER JOIN '+
           '        FinancialNote_Master ON FinancialNote_Detail.FinancialNote_MasterID = FinancialNote_Master.FinancialNote_MasterID '+
           ' WHERE  FinancialNote_Detail.FinancialNote_DetailID='+IntToStr(FrFinancialNoteDetail_New.FinancialNoteid);
  FNoteTypeID:=Qry_GetResult(sqlText,Dm.YeganehConnection);

  if FNoteTypeID='' then
    FNoteTypeID:='0';

  if (FrFinancialNoteDetail_New.FinancialNoteid > 0) and (FNoteTypeID = '1') then
  begin
    // Amin 1391/09/15 Start
    if _isDebtorFinancial then
    begin
      _MainCr:=Dm.Select_PaymentDebtorAccountID.AsInteger;
      _MainDB:=Dm.Select_PaymentCreditorAccountID.AsInteger;
    end
    else
    begin
    // Amin 1391/09/15 End
      _MainCr:=dm.Select_PaymentCreditorAccountID.AsInteger;
      _MainDB:=Dm.Select_PaymentDebtorAccountID.AsInteger;
    end;

    if CashIsDebtor then//Ê«—Ì“ »Â Õ”«»
    begin
      if (Get_SystemSetting('EdtResiveAccount')=NULL) or
         (Get_SystemSetting('EdtResiveAccount')<1) then
         Raise Exception.Create('œ— ﬁ”„   ‰ŸÌ„«  ”Ì” „ ‘„«—Â Õ”«» «”‰«œ œ—Ì«› ‰Ì —« „‘Œ’ ‰„«ÌÌœ');
             _Crtr_DetAccountID:=Dm.Select_PaymentDebtorAccountID.AsInteger;
             _Cr:=Dm.Select_PaymentCreditorAccountID.AsInteger;
             _Db:=Get_AccountID_ByAccountNo(Get_SystemSetting('EdtResiveAccount'));
      if VosulMode then
      begin
        _Db:= dm.Select_Cash_AccountsAccountID.AsInteger;
      end;
    end
    else
    begin
      if (Get_SystemSetting('EdtPayAccount')=NULL) or
         (Get_SystemSetting('EdtPayAccount')<1) then
         Raise Exception.Create('œ— ﬁ”„   ‰ŸÌ„«  ”Ì” „ ‘„«—Â Õ”«» «”‰«œ Å—œ«Œ ‰Ì —« „‘Œ’ ‰„«ÌÌœ');
       _Crtr_DetAccountID:=Dm.Select_PaymentCreditorAccountID.AsInteger;

       // Amin 1391/11/08 Start
       if _isForReceipt then
       begin
          _Db:= Get_AccountID_ByAccountNo(Get_SystemSetting('EdtPayAccount'));
          _Cr:= Dm.Select_PaymentCreditorAccountID.AsInteger;
       end
       else
       begin
       // Amin 1391/11/08 End
         _Cr:=Get_AccountID_ByAccountNo(Get_SystemSetting('EdtPayAccount'));
         // Amin 1391/09/15 _Db:=Dm.Select_PaymentDebtorAccountID.AsInteger;
         _Db:=_MainDB;   // Amin 1391/09/15
       end;

    end;

    SqlText:=' Select FinancialNote_MasterID from FinancialNote_Detail Where FinancialNote_DetailID='+inttostr(FrFinancialNoteDetail_New.FinancialNoteid);
    MID:=Qry_GetResult(sqlText,Dm.YeganehConnection);
    DM.FinancialNote_Detail.Open;
    DM.FinancialNote_Detail.First;
    try
      while not DM.FinancialNote_Detail.EOF do
      begin
        if (DM.FinancialNote_DetailFinancialNote_DetailID.IsNull)then
          raise Exception.Create( '‘„«—Â çò Ì« ÕÊ«·Â Ì« ”› Â „‘Œ’ ‰Ì” ');
         // Amin 1391/09/12 Insert_Payment(NormalPayTypeID,
        if UsedForMountly then
          PayTypeID := 2
        else
          PayTypeID := 1; // Amin 1391/09/12

        if trim(DBEdit8.Text)='' then
          DBEdit8.Text := DoBtn.Caption;

        Insert_Payment(PayTypeID, // Amin 1391/09/12
                        _Cr,
                        _Db,
                        dm.Select_PaymentFinancialNoteID.AsInteger,
                        dm.FinancialNote_DetailAmount.AsInteger,
                        DBEdit8.Text,
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
    if _IsCheckAccount then
    begin
      if not ISSelectedDbtOrCrtCorrect(dm.Select_PaymentDebtorAccountID.AsInteger,
                                       dm.Select_PaymentCreditorAccountID.AsInteger) then
      begin
         ShowMessage('Õ”«» «‰ Œ«» ‘œÂ ‰«œ—”  «” ');
         Exit;
      end;

      if (not UsedForMountly) and (not BalanceMode) then
      begin
               //92/02/24   Hadi Mohamed
        balance := dm.YeganehConnection.Execute('select dbo.exist('+dm.Select_PaymentDebtorAccountID.AsString+',''' + IntToStr(_Year) + '/12/29'')').Fields[0].value;
        if (balance<StrToInt64(DeleteComma(DBAmount.text)))AND(not CashIsDebtor) then
        begin
           { TODO -oparsa : 14030125 }
           //ShowMessage('„ÊÃÊœÌ Õ”«» ò«›Ì ‰Ì” ');
           ShowMessage('„ÊÃÊœÌ Õ”«» ò«›Ì ‰Ì” '+char(10)+ ' „»·€ ' +Inttostr(Abs(balance ))+' »œÂò«— „Ì »«‘œ ');
           { TODO -oparsa : 14030125 }
           Abort;
        end;

        if not Account_Has_Balance(dm.Select_PaymentCreditorAccountID.AsInteger,
                                   dm.Select_PaymentdebtorAccountID.AsInteger,
                                   StrToInt64(DeleteComma(DBAmount.text)),1) then
        begin
           ShowMessage('„ÊÃÊœÌ Õ”«» ò«›Ì ‰Ì” ');
           Abort;
        end;
        IsValidAccountId(dm.Select_PaymentdebtorAccountID.AsInteger ,StrToInt64(DeleteComma(DBAmount.text)));

        if (not CashIsDebtor) and (not IsValidAccountId(dm.Select_PaymentdebtorAccountID.AsInteger ,StrToInt64(DeleteComma(DBAmount.text)))) then
        //if (not IsValidAccountId(dm.Select_PaymentdebtorAccountID.AsInteger ,StrToInt64(DeleteComma(DBAmount.text)))) then
        begin
          MessageShowString('„ÊÃÊœÌ «Ì‰ Õ”«» ÃÂ  ÷„«‰  »·ÊòÂ ‘œÂ «” .', False);
          Abort;
        end;
      end;
    end;

    if Dm.Select_Payment.State=dsinsert then
      Dm.Select_PaymentDocumentNo.AsString:=Get_NewDocumnetNo(DBEDate.Text);

    if (FNoteTypeID<>'0') and (FNoteTypeID<>'1') then //«ê— çò ‰»«‘œ
    begin
      Dm.Select_PaymentFinancialNote_DetailID.AsInteger:=FrFinancialNoteDetail_New.FinancialNoteid;
      Qry_SetResult(' Update FinancialNote_Detail '+
                    ' Set    NoteStatusID=3 '+
                    ' Where  FinancialNote_DetailID='+INTTOSTR(FrFinancialNoteDetail_New.FinancialNoteid),dm.YeganehConnection);
    end;

    if trim(dm.Select_PaymentComment.AsString) ='' then
    begin
      if CashIsDebtor then
        dm.Select_PaymentComment.AsString := 'Ê«—Ì“'
      else
        dm.Select_PaymentComment.AsString := '»—œ«‘ ';
    end;

    try
      dm.Select_Payment.Post;
      ShowMessage('À»  ‘œ');
    except On E:Exception do
      ShowMessage('ERROR POST Select_Payment :: ' + E.Message);
    end;
  end;
  FrAccountDetails.AccountID:=AccountID;// refresh

  DoBtn.Enabled:=False;
  SearchPanel.Enabled:=DoBtn.Enabled;

  PerferazeBtn.Enabled:=True;
  //PerferazeBtn2.Enabled:=true;
  DocPrintBtn.Enabled:=True;
  PrintBtn.Enabled:=True;
end;

procedure TFrAddPayment.PerferazeBtnClick(Sender: TObject);
begin
  inherited;

  Cursor_SetPos(Self,PerferazeBtn,RepPopMnu);

   {
     IF CashIsDebtor then
      dm.LinePrint(dm.Select_Account_DetailsContactID.AsInteger,true, dm.Select_PaymentDate.AsString,'Ê«—Ì“ »Â Õ”«»',dm.Select_PaymentAmount.AsString,'0',dm.Select_Account_DetailsExist.AsString,dm.Select_PaymentDocumentNo.AsString,'Nshow')
     Else
      dm.LinePrint(dm.Select_Account_DetailsContactID.AsInteger,true, dm.Select_PaymentDate.AsString,'»—œ«‘  «“ Õ”«»','0',dm.Select_PaymentAmount.AsString,dm.Select_Account_DetailsExist.AsString,dm.Select_PaymentDocumentNo.AsString,'Nshow')
 }
end;

procedure TFrAddPayment.DocPrintBtnClick(Sender: TObject);
begin
  inherited;
  dm.PrintPayment_ByDocumentNo(dm.Select_PaymentDocumentNo.AsString);
end;

procedure TFrAddPayment.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  {Ranjbar Ver3}
  _FinancialNoteid:=-1;
  _FrAddPaymentCloseWithoutDoEnything:=DoBtn.Enabled;
  //DBGrid_SaveColumns(Self.Name,YDBGrid1);

  //AAAA
  if Assigned(FrAccountDetails) then
    FrAccountDetails := nil;
  if Assigned(FrFinancialNoteDetail_New) then
    FrFinancialNoteDetail_New := nil;
end;

procedure TFrAddPayment.SbReportClick(Sender: TObject);
begin
  inherited;
  Cursor_SetPos(Self,PerferazeBtn,RepPopMnu);
end;

procedure TFrAddPayment.NShowClick(Sender: TObject);
var
  PopupOption:string;
begin
  inherited;

  if Sender = NShow  then
    PopupOption:='NShow';//ÅÌ‘ ‰„«Ì‘

  if Sender = NPrint  then
    PopupOption:='NPrint';//ç«Å

  if Sender = NDesign  then
    PopupOption:='NDesign';//ÿ—«ÕÌ

  if Sender = NOldVersion  then
    PopupOption:='NOldVersion';//ÿ—«ÕÌ

  if CashIsDebtor then
    dm.LinePrint(dm.Select_Account_DetailsContactID.AsInteger,true, dm.Select_PaymentDate.AsString,'Ê«—Ì“ »Â Õ”«»' ,dm.Select_PaymentAmount.AsString,'0',dm.Select_Account_DetailsExist.AsString ,dm.Select_PaymentDocumentNo.AsString,dm.Select_Account_DetailsAccountNo.AsString,dm.Select_Account_DetailsAccountTitle.AsString,PopupOption,'0','btn_H_VarizHesab')
  else
    dm.LinePrint(dm.Select_Account_DetailsContactID.AsInteger,true, dm.Select_PaymentDate.AsString,'»—œ«‘  «“ Õ”«»','0',dm.Select_PaymentAmount.AsString,dm.Select_Account_DetailsExist.AsString,dm.Select_PaymentDocumentNo.AsString,dm.Select_Account_DetailsAccountNo.AsString,dm.Select_Account_DetailsAccountTitle.AsString,PopupOption,'0','btn_H_BardashtHesab');
end;

procedure TFrAddPayment.N11Click(Sender: TObject);
begin
  inherited;
  Rep_CorrectDesign('PerfrajRep.fr3');
end;

procedure TFrAddPayment.MenuItem6Click(Sender: TObject);
begin
  inherited;
  Rep_CorrectDesign('BillPrint.fr3');
end;

procedure TFrAddPayment.BillShowClick(Sender: TObject);
var
  FormName:String;
begin
  inherited;
  FrQrPayment := TFrQrPayment.Create(Application);
  OpenSp_ShowBill(Dm.Select_PaymentPaymentID.AsInteger);

  if CashIsDebtor then
    FormName := 'btn_H_VarizHesab' //GetReportName('Btn53','BillPrint.fr3')
  else
    FormName := 'btn_H_BardashtHesab';//ReportName:=GetReportName('Btn54','BillPrint.fr3');

  FrQrPayment.frxReport2.Pages[1].Visible := True;
  Rep_LoadFile_New(FrQrPayment.frxReport2,'BillPrint.fr3',FormName);

  if Sender = BillShow then
    Rep_Show(FrQrPayment.frxReport2 ,rtShow);//ÅÌ‘ ‰„«Ì‘

  if Sender = BillPrint then
    Rep_Show(FrQrPayment.frxReport2 ,rtPrint);//ç«Å ”—Ì⁄

  if (Sender = BillDesign) then
    Rep_Show(FrQrPayment.frxReport2 ,rtDesign);//ÿ—«ÕÌ
end;

procedure TFrAddPayment.N1Click(Sender: TObject);
begin
  inherited;
  FrQrPayment := TFrQrPayment.Create(Application);
  FrQrPayment.IsPay := CashIsDebtor;
  //FrQrPayment.QuickRep1.Preview;
  FrQrPayment.QRLblSoftTitle.Caption  := _SoftTitle;
  FrQrPayment.QRLblSoftTitle2.Caption := _SoftTitle;
  FrQrPayment.QRLblSoftTitle3.Caption := _SoftTitle;
  FrQrPayment.QRLblSoftTitle4.Caption := _SoftTitle;
  FrQrPayment.QRLblSoftTitle_N1.Caption := _SoftTitle;
  FrQrPayment.QRLblSoftTitle_N2.Caption := _SoftTitle;
  //---
  FrQrPayment.QuickRep4.Preview;
end;

procedure TFrAddPayment.AddPaymentInsertClick(Sender: TObject);
var
  _fDId,
  _fMId:INTEGER;
begin
  inherited;
  _FinancialNoteid:=-1;
  _FrAddPaymentCloseWithoutDoEnything:=DoBtn.Enabled;
  AddPaymentInsert.Enabled:=False;
  //SearchEdit.Text:=dm.Report_AccountAccountNo.AsString;
  RefreshPayment;

  //FrAccountDetails:=TFrAccountDetails.Create(Application);
  _FrAddPaymentCloseWithoutDoEnything:=False;
  MajorAccount.SetFocus;
  DBGrid_LoadColumns(Self.Name,YDBGrid1);

  if _SWCanClose then
  begin
    Dm.FinancialNote_Master.CLOSE;
    Dm.FinancialNote_Detail.CLOSE;
    _fDId:=Dm.Select_PaymentFinancialNote_DetailID.AsInteger;

    if (_fDId <> 0) and (Dm.FinancialNote_Detail <> nil) then
    begin
      Dm.FinancialNote_Master.Open;
      Dm.FinancialNote_Detail.Open;
      Dm.FinancialNote_Detail.Locate('FinancialNote_DetailID',_fDId,[loCaseInsensitive]);
    end;
  end;
end;

end.




