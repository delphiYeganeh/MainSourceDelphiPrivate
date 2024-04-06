unit PayPartU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ActnMan, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList,
  Buttons, DBActns, UemsVCL, Grids, DBGrids, YDbgrid, XPStyleActnCtrls,
  YCheckGroupBox, Menus, YAmountEdit, DB, ADODB, SolarCalendarPackage;

type
    TFrPayPart = class(TYBaseForm)
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
    FinancialNotePanel: TYCheckGroupBox;
    Apost:  TAction;
    Panel3: TGroupBox;
    Label4: TLabel;
    DBEdit3 :TDBEdit;
    Label6  :TLabel;
    DBEdit6 :TDBEdit;
    Label9  :TLabel;
    DBEdit7 :TDBEdit;
    Label10 :TLabel;
    DBEdit8 :TDBEdit;
    Label11 :TLabel;
    DBEdit9 :TDBEdit;
    Label13 :TLabel;
    DBEdit10:TDBEdit;
    Label14 :TLabel;
    DBEdit11:TDBEdit;
    Label16 :TLabel;
    DBEdit13:TDBEdit;
    PAccountDeatil: TPanel;
    DBEdit12:TDBEdit;
    Label15 :TLabel;
    EAmerce :TYAmountEdit;
    Label3  :TLabel;
    DBEdit2: TDBEdit;
    Label17: TLabel;
    Label18: TLabel;
    DBEdit14: TDBEdit;
    Label19: TLabel;
    DBEdit15    :TDBEdit;
    Panel4      :TPanel;
    DoBtn       :TBitBtn;
    PrintBtn    :TBitBtn;
    PerferazeBtn:TBitBtn;
    DocPrintBtn :TBitBtn;
    BitBtn1     :TBitBtn;
    MonthlyBeginDate: TSolarDatePicker;
    Label20: TLabel;
    DBEdit4: TDBEdit;
    DBEdit16:TDBEdit;
    Label21: TLabel;
    RepPopMnu: TPopupMenu;
    NShow: TMenuItem;
    NPrint: TMenuItem;
    NDesign: TMenuItem;
    NOldVersion: TMenuItem;
    N8: TMenuItem;
    N11: TMenuItem;
    PopupMenuBill: TPopupMenu;
    BillShow: TMenuItem;
    BillPrint: TMenuItem;
    BillDesign: TMenuItem;
    N1: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    procedure SearchEditKeyDown(Sender:TObject;var Key:Word;Shift:TShiftState);
    procedure FormShow(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure RefreshPart;
    procedure FormCreate(Sender: TObject);
    procedure PrintBtnClick(Sender: TObject);
    procedure AExitExecute(Sender: TObject);
    procedure DoBtnClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ApostExecute(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DocPrintBtnClick(Sender: TObject);
    procedure PerferazeBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NShowClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure BillShowClick(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure Panel1Resize(Sender: TObject);
    procedure EAmerceChange(Sender: TObject);

    function IsStrANumber(const S: string): Boolean;
  private
    { Private declarations }
  public
    { Public declarations }
    _FirstPaymentId:Integer;
  end;

var
  FrPayPart: TFrPayPart;
implementation

uses dmu,   YShamsiDate, BusinessLayer, AccountDetailsU,
  QrPaymentU, AddFinancialNoteU,
  FinancialNoteDetail_NewU, AddReportNameU;
{$R *.dfm}

var  LoanID,AccountID :integer;
      DocumentNo:string;

procedure TFrPayPart.SearchEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=13 then
    RefreshPart
end;

procedure TFrPayPart.RefreshPart;
Begin
  Get_LoanID_ByLoanNo(SearchEdit.Text,LoanID,AccountID);//LoanID , AccountID »œ”  ¬Ê—œ‰
  IF LoanID<0 Then
  Begin
    ShowMessage('Ê«„Ì »« «Ì‰ ‘„«—Â ÊÃÊœ ‰œ«—œ');
    SearchEdit.SetFocus;
    Exit;
  End;

   With dm,Select_Payment do
   Begin
      FrAccountDetails.AccountID:=AccountID;
      Open_LastPart(LoanID);
      dm.Select_LastPart.Edit;
      EAmerce.Text := CommaSeperate( Dm.Select_LastPartAmerce.AsString);
      FrFinancialNoteDetail_New.FinancialNoteid:=0;
      FrAccountDetails.AccountID:=AccountID;

      Open_Payment(0);

      Insert;
//      Dm.Select_PaymentDocumentNo.AsString:=Get_NewDocumnetNo(MonthlyBeginDate.Text);
      DoBtn.Enabled:=true;
      PerferazeBtn.Enabled:=false;
//      PerferazeBtn2.Enabled:=false;
      DocPrintBtn.Enabled:=false;
      PrintBtn.Enabled:=false;

      Select_PaymentCreditorAccountID.AsInteger:=AccountID;
      Select_PaymentAmount.AsInteger:=Select_LastPartAmount.AsInteger;
      {Ranjbar}//Select_PaymentDate.AsString:=_Today;
      Select_PaymentDate.AsString:=_Today;
       //---
      Select_PaymentTime.AsString:=Get_Time;
      Select_PaymentPayTypeID.AsInteger:=PartPayTypeID;
      Select_PaymentInsertUserID.AsInteger:=_Userid;
   End;
End;

procedure TFrPayPart.FormShow(Sender: TObject);
var _fDId:Integer;
begin
  inherited;
  IF dm.Select_Payment.State=dsedit then
    MajorAccount.SetFocus
  Else
    SearchEdit.SetFocus;

  Dm.FinancialNote_Detail.CLOSE;
  Dm.FinancialNote_Master.CLOSE;
//  _fMId:=Dm.Select_LastPartFinancialNote_DetailID.AsInteger;
  _fDId:=Dm.Select_LastPartFinancialNote_DetailID.AsInteger;

  IF (_fDId<>0) AND
     (Dm.FinancialNote_Detail<> NIL) THEN
   Begin
    Dm.FinancialNote_Master.open;
    Dm.FinancialNote_Detail.Open;
    Dm.FinancialNote_Detail.Locate('FinancialNote_DetailID',_fDId,[loCaseInsensitive]);
  End;
 _FinancialNote_Field1:='ForcePaymentID';
 _FinancialNote_Field2:='MatureDate'    ;
 _FinancialNote_Table :='ForcePayment'  ;
 _FinancialNote_Where :=' AND ParentID='+Dm.Select_LastPartParentID.AsString;
  EAmerceChange(self);
end;

procedure TFrPayPart.DBEdit1Change(Sender: TObject);
begin
  Inherited;
//  try Label12.Caption:=Bill(strtoint(TDBEdit(sender).Text))+' —Ì«·'
  Try
    Label12.Caption:=Bill(strtoint(TDBEdit(sender).Text))+' ' +Get_SystemSetting('EdtMoneyUnit')+' ';
  Except
  End;
end;

procedure TFrPayPart.FormCreate(Sender: TObject);
begin
  inherited;
  FrAccountDetails:=TFrAccountDetails.Create(Application);
  FrAccountDetails.ShowInPanel(PAccountDeatil);
  FrFinancialNoteDetail_New:=TFrFinancialNoteDetail_New.Create(Application);
  FrFinancialNoteDetail_New.ShowInPanel(FinancialNotePanel);
end;

procedure TFrPayPart.PrintBtnClick(Sender: TObject);
begin
  inherited;
  Cursor_SetPos(Self,PrintBtn,PopupMenuBill);


{  FrQrPayment := TFrQrPayment.Create(Application);
  FrQrPayment.IsPay:=True;
//  Ranjbar 88.05.14 Code=26
  FrQrPayment.QRLblSoftTitle.Caption    := _SoftTitle;
  FrQrPayment.QRLblSoftTitle2.Caption   := _SoftTitle;
  FrQrPayment.QRLblSoftTitle3.Caption   := _SoftTitle;
  FrQrPayment.QRLblSoftTitle4.Caption   := _SoftTitle;
  FrQrPayment.QRLblSoftTitle_N1.Caption := _SoftTitle;
  FrQrPayment.QRLblSoftTitle_N2.Caption := _SoftTitle;
  //---
  FrQrPayment.QuickRep4.Preview;
                            }
end;

procedure TFrPayPart.AExitExecute(Sender: TObject);
begin
  inherited;
  dm.Select_Payment.Cancel;
  Close;
end;

procedure TFrPayPart.DoBtnClick(Sender: TObject);
begin
  inherited;
  if not ISSelectedDbtOrCrtCorrect(Dm.Select_PaymentDebtorAccountID.AsInteger ,Dm.Select_PaymentDebtorAccountID.AsInteger) then
  begin
     ShowMessage('Õ”«» «‰ Œ«» ‘œÂ „Ã«“ ‰Ì” ');
     Exit;
  end;
  Apost.Execute;
  showmessage('À»  »« „Ê›ﬁÌ  «‰Ã«„ ‘œ');
end;

procedure TFrPayPart.BitBtn1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFrPayPart.ApostExecute(Sender: TObject);
var
  _Crtr_DetAccountID, _Cr,_Db:Integer;
  FNoteTypeID,SqlText,MID:string;
  SumAll : int64;
  AmercePayedByNote, InterestPayedByNote : boolean; // Å—œ«Œ  ‘œ‰ ”Êœ Ê Ã—Ì„Â »« çò Ì« ÕÊ«·Â —« ‰‘«‰ „Ì œÂœ
  AmercePayedByNote2, InterestPayedByNote2 : boolean;
  MemoSms :TMemo;
  qry:TADOQuery;
  smsText: string;
begin
  inherited;

  with dm ,Select_Payment do
  begin
    {Ranjbar 88.06.07 Code=41}
    if not(Dm.Select_Payment.State in [dsEdit, dsInsert]) then
      Exit;

    Dm.Select_PaymentDocumentNo.AsString:=Get_NewDocumnetNo(MonthlyBeginDate.Text);
    IFFieldIsEmpty(Select_PaymentDebtorAccountID,'Ê«—Ì“ »Â Õ”«»');
    //---
    //dm.Select_PaymentFinancialNoteID.AsInteger:=FrFinancialNoteDetail_new.FinancialNoteid;
    //dm.Select_PaymentFinancialNote_DetailID.AsInteger:=FrFinancialNoteDetail_New.FinancialNoteid;
    //dm.Select_PaymentCrtr_DetAccountID.AsInteger:=AccountID;
    SqlText:=' SELECT FinancialNote_Master.FinancialNoteTypeID '+
             ' FROM   FinancialNote_Detail INNER JOIN '+
             '        FinancialNote_Master ON FinancialNote_Detail.FinancialNote_MasterID = FinancialNote_Master.FinancialNote_MasterID '+
             ' WHERE  FinancialNote_Detail.FinancialNote_DetailID='+IntToStr(FrFinancialNoteDetail_New.FinancialNoteid);
    FNoteTypeID:=Qry_GetResult(sqlText,Dm.YeganehConnection);

    IF FNoteTypeID='' THEN
      FNoteTypeID:='0';

    IF (FrFinancialNoteDetail_New.FinancialNoteid>0)then// AND (FNoteTypeID='1') THEN       //hadi mohamed 92/02/22
    BEGIN
      IF (Get_SystemSetting('EdtResiveAccount')=NULL) OR
         (Get_SystemSetting('EdtResiveAccount')<1)   THEN
         Raise Exception.Create('œ— ﬁ”„   ‰ŸÌ„«  ”Ì” „ ‘„«—Â Õ”«» «”‰«œ œ—Ì«› ‰Ì —« „‘Œ’ ‰„«ÌÌœ');

             _Crtr_DetAccountID:=Dm.Select_PaymentDebtorAccountID.AsInteger;
             _Cr:=Dm.Select_PaymentCreditorAccountID.AsInteger;
             _Db:=Get_AccountID_ByAccountNo(Get_SystemSetting('EdtResiveAccount'));
             if dm.FinancialNote_MasterAmount.AsInteger<dm.Select_PaymentAmount.AsInteger then
             begin
               if FNoteTypeID='0' then
                 ShowMessage('„Ã„Ê⁄ „»·€ çò Â« «“ „»·€ ﬁ”ÿ Ê«„ ò„ — «” ')
               else
                 ShowMessage('„Ã„Ê⁄ „»·€ ÕÊ«·Â Â« «“ „»·€ ﬁ”ÿ Ê«„ ò„ — «” ');
               exit;
             end
             else if dm.FinancialNote_MasterAmount.AsInteger=dm.Select_PaymentAmount.AsInteger then
             begin
               if EAmerce.Text<>'0' then
                 ShowMessage('„»·€ Ã—Ì„Â »’Ê—  ‰ﬁœÌ œ—Ì«›  ‘Êœ'+EAmerce.Text+' —Ì«·');
               if DBEdit15.Text<>'0' then
                 ShowMessage('„»·€ ”Êœ »’Ê—  ‰ﬁœÌ œ—Ì«›  ‘Êœ'+DBEdit15.Text+' —Ì«·');
             end
             else if dm.FinancialNote_MasterAmount.AsInteger>dm.Select_PaymentAmount.AsInteger then
             begin
               Dm.FinancialNote_Detail.First;
               while not Dm.FinancialNote_Detail.Eof do
               begin
                 if (not AmercePayedByNote)and(StrToInt(Replace(EAmerce.Text,',',''))>0)and(dm.FinancialNote_DetailAmount.AsInteger= StrToInt(Replace(EAmerce.Text,',',''))) then
                   AmercePayedByNote := true
                 else if (StrToInt(Replace(DBEdit15.Text,',',''))>0)and(dm.FinancialNote_DetailAmount.AsInteger= StrToInt(Replace(DBEdit15.Text,',',''))) then
                   InterestPayedByNote := true;
                 dm.FinancialNote_Detail.Next;
               end;
               SumAll := StrToInt(Replace(DBEdit15.Text,',',''))+StrToInt(Replace(EAmerce.Text,',',''))+dm.Select_PaymentAmount.AsInteger;


                if (not AmercePayedByNote) and (not InterestPayedByNote) then
                begin
                   if (EAmerce.Text<>'0') then
                       ShowMessage('·ÿ›« „»·€ '+EAmerce.Text+' —Ì«· »«»  Ã—Ì„Â ﬁ”ÿ »’Ê—  ‰ﬁœÌ œ—Ì«›  ò‰Ìœ');
                   if (DBEdit15.Text<>'0') then
                       ShowMessage('·ÿ›« „»·€ '+DBEdit15.Text+' —Ì«· »«»  ”Êœ ﬁ”ÿ »’Ê—  ‰ﬁœÌ œ—Ì«›  ò‰Ìœ');
                end;

                if (not AmercePayedByNote) and (InterestPayedByNote) then
                begin
                  if (dm.FinancialNote_MasterAmount.AsInteger>=(StrToInt(Replace(DBEdit15.Text,',',''))+dm.Select_PaymentAmount.AsInteger)) then
                  begin
                    if FNoteTypeID='0' then
                      ShowMessage('„»·€ ”Êœ »’Ê—  çò Å—œ«Œ  „Ì‘Êœ')
                    else
                      ShowMessage('„»·€ ”Êœ »’Ê—  ÕÊ«·Â Å—œ«Œ  „Ì‘Êœ') ;
                  end
                  else
                  begin
                    ShowMessage('·ÿ›« „»·€ '+DBEdit15.Text+' —Ì«· »«»  ”Êœ ﬁ”ÿ »’Ê—  ‰ﬁœÌ œ—Ì«›  ò‰Ìœ');
                    InterestPayedByNote := false;
                  end;

                  if (EAmerce.Text<>'0') then
                    ShowMessage('·ÿ›« „»·€ '+EAmerce.Text+' —Ì«· »«»  Ã—Ì„Â ﬁ”ÿ »’Ê—  ‰ﬁœÌ œ—Ì«›  ò‰Ìœ');
                end;

                if (AmercePayedByNote) and (not InterestPayedByNote) then
                begin
                  if (dm.FinancialNote_MasterAmount.AsInteger>=(StrToInt(Replace(EAmerce.Text,',',''))+dm.Select_PaymentAmount.AsInteger)) then
                  begin
                    if FNoteTypeID='0' then
                      ShowMessage('„»·€ Ã—Ì„Â »’Ê—  çò Å—œ«Œ  „Ì‘Êœ')
                    else
                      ShowMessage('„»·€ Ã—Ì„Â »’Ê—  ÕÊ«·Â Å—œ«Œ  „Ì‘Êœ');
                  end
                  else
                  begin
                    ShowMessage('·ÿ›« „»·€ '+EAmerce.Text+' —Ì«· »«»  Ã—Ì„Â ﬁ”ÿ »’Ê—  ‰ﬁœÌ œ—Ì«›  ò‰Ìœ');
                    AmercePayedByNote := false;
                  end;

                  if (DBEdit15.Text<>'0') then
                    ShowMessage('·ÿ›« „»·€ '+DBEdit15.Text+' —Ì«· »«»  ”Êœ ﬁ”ÿ »’Ê—  ‰ﬁœÌ œ—Ì«›  ò‰Ìœ');
                end;

                if (AmercePayedByNote) and (InterestPayedByNote)then
                begin
                  if (dm.FinancialNote_MasterAmount.AsInteger>=(SumAll)) then
                  begin
                    if FNoteTypeID='0' then
                       ShowMessage('„»·€ ”Êœ Ê Ã—Ì„Â »’Ê—  çò Å—œ«Œ  „Ì‘Êœ ')
                    else
                       ShowMessage('„»·€ ”Êœ Ê Ã—Ì„Â »’Ê—  ÕÊ«·Â Å—œ«Œ  „Ì‘Êœ ');
                  end
                  else if (dm.FinancialNote_MasterAmount.AsInteger>=(StrToInt(Replace(DBEdit15.Text,',',''))+dm.Select_PaymentAmount.AsInteger)) then
                  begin
                    AmercePayedByNote := false;
                    if FNoteTypeID='0' then
                      ShowMessage('„»·€ ”Êœ »’Ê—  çò Å—œ«Œ  „Ì‘Êœ')
                    else
                      ShowMessage('„»·€ ”Êœ »’Ê—  ÕÊ«·Â Å—œ«Œ  „Ì‘Êœ');
                    ShowMessage('·ÿ›« „»·€ '+EAmerce.Text+' —Ì«· »«»  Ã—Ì„Â ﬁ”ÿ »’Ê—  ‰ﬁœÌ œ—Ì«›  ò‰Ìœ');
                  end
                  else if (dm.FinancialNote_MasterAmount.AsInteger>=(StrToInt(Replace(EAmerce.Text,',',''))+dm.Select_PaymentAmount.AsInteger)) then
                  begin
                    InterestPayedByNote := false;
                    if FNoteTypeID='0' then
                      ShowMessage('„»·€ Ã—Ì„Â »’Ê—  çò Å—œ«Œ  „Ì‘Êœ')
                    else
                      ShowMessage('„»·€ Ã—Ì„Â »’Ê—  ÕÊ«·Â Å—œ«Œ  „Ì‘Êœ');
                    ShowMessage('·ÿ›« „»·€ '+DBEdit15.Text+' —Ì«· »«»  ”Êœ ﬁ”ÿ »’Ê—  ‰ﬁœÌ œ—Ì«›  ò‰Ìœ');
                  end
                  else
                  begin
                    InterestPayedByNote := false;
                    AmercePayedByNote := false;
                    ShowMessage('·ÿ›« „»·€ '+DBEdit15.Text+' —Ì«· »«»  ”Êœ ﬁ”ÿ »’Ê—  ‰ﬁœÌ œ—Ì«›  ò‰Ìœ');
                    ShowMessage('·ÿ›« „»·€ '+EAmerce.Text+' —Ì«· »«»  Ã—Ì„Â ﬁ”ÿ »’Ê—  ‰ﬁœÌ œ—Ì«›  ò‰Ìœ');
                  end;
                end;
             end;

             if (not AmercePayedByNote)and(not InterestPayedByNote)and(dm.FinancialNote_MasterAmount.AsInteger>dm.Select_PaymentAmount.AsInteger) then
             begin
                ShowMessage('„Ã„Ê⁄ „»·€ çò Â« «“ „»·€ Ê«„ »Ì‘ — «” ');
                ShowMessage('⁄„·Ì«  Å—œ«Œ  ﬁ”ÿ ﬁ«»· «‰Ã«„ ‰Ì”  ·ÿ›« „»·€ çò Â« —« „Ãœœ« ò‰ —· ò‰Ìœ');
                exit;
             end;
             if (not AmercePayedByNote)and(InterestPayedByNote)and(dm.FinancialNote_MasterAmount.AsInteger>dm.Select_PaymentAmount.AsInteger+StrToInt(Replace(DBEdit15.Text,',',''))) then
             begin
                ShowMessage('„Ã„Ê⁄ „»·€ çò Â« «“ „Ã„Ê⁄ „»·€ ﬁ”ÿ Ê ”Êœ »Ì‘ — «” ');
                ShowMessage('⁄„·Ì«  Å—œ«Œ  ﬁ”ÿ ﬁ«»· «‰Ã«„ ‰Ì”  ·ÿ›« „»·€ çò Â« —« „Ãœœ« ò‰ —· ò‰Ìœ');
                exit;
             end;
             if (AmercePayedByNote)and(not InterestPayedByNote)and(dm.FinancialNote_MasterAmount.AsInteger>dm.Select_PaymentAmount.AsInteger+StrToInt(Replace(EAmerce.Text,',',''))) then
             begin
                ShowMessage('„Ã„Ê⁄ „»·€ çò Â« «“ „Ã„Ê⁄ „»·€ ﬁ”ÿ Ê Ã—Ì„Â »Ì‘ — «” ');
                ShowMessage('⁄„·Ì«  Å—œ«Œ  ﬁ”ÿ ﬁ«»· «‰Ã«„ ‰Ì”  ·ÿ›« „»·€ çò Â« —« „Ãœœ« ò‰ —· ò‰Ìœ');
                exit;
             end;
             if (AmercePayedByNote)and(InterestPayedByNote)and(dm.FinancialNote_MasterAmount.AsInteger>dm.Select_PaymentAmount.AsInteger+StrToInt(Replace(EAmerce.Text,',',''))+StrToInt(Replace(DBEdit15.Text,',',''))) then
             begin
                ShowMessage('„Ã„Ê⁄ „»·€ çò Â« «“ „Ã„Ê⁄ „»·€ ﬁ”ÿ Ê ”Êœ Ê Ã—Ì„Â »Ì‘ — «” ');
                ShowMessage('⁄„·Ì«  Å—œ«Œ  ﬁ”ÿ ﬁ«»· «‰Ã«„ ‰Ì”  ·ÿ›« „»·€ çò Â« —« „Ãœœ« ò‰ —· ò‰Ìœ');
                exit;
             end;

             Dm.FinancialNote_Detail.First;
             try
             while not Dm.FinancialNote_Detail.Eof do
             begin
             //ShowMessage(Dm.FinancialNote_DetailAmount.AsString);
               if FNoteTypeID='1' then
               begin
                 if (InterestPayedByNote)and(Dm.FinancialNote_DetailAmount.AsInteger= StrToInt(Replace(DBEdit15.Text,',','')))then
                 begin
                   Insert_Payment(7,
                                _cr,
                                _Db,
                                dm.Select_PaymentFinancialNoteID.AsInteger,
                                Dm.FinancialNote_DetailAmount.AsInteger,
                                DBEdit12.Text+'('+' Å—œ«Œ  ”Êœ ﬁ”ÿ «“ ÿ—Ìﬁ çò'+')',
                                 0,//dm.Select_LastPartForcePaymentID.AsInteger, //0,
                                dm.Select_PaymentDocumentNo.AsString,
                                '',
                                Dm.FinancialNote_DetailFinancialNote_DetailID.AsInteger,
                                _Crtr_DetAccountID,
                                _Cr,
                                _Crtr_DetAccountID);
                        InterestPayedByNote := false;
                        InterestPayedByNote2 := true;
                     end
                     else if (AmercePayedByNote)and(Dm.FinancialNote_DetailAmount.AsInteger= StrToInt(Replace(EAmerce.Text,',','')))then
                     begin
                        Insert_Payment(7,
                                _cr,
                                _Db,
                                dm.Select_PaymentFinancialNoteID.AsInteger,
                                Dm.FinancialNote_DetailAmount.AsInteger,
                                DBEdit12.Text+'('+' Å—œ«Œ  Ã—Ì„Â ﬁ”ÿ «“ ÿ—Ìﬁ çò'+')',
                                 0,//dm.Select_LastPartForcePaymentID.AsInteger, //0,
                                dm.Select_PaymentDocumentNo.AsString,
                                '',
                                Dm.FinancialNote_DetailFinancialNote_DetailID.AsInteger,
                                _Crtr_DetAccountID,
                                _Cr,
                                _Crtr_DetAccountID);
                        AmercePayedByNote := false;
                        AmercePayedByNote2 := true;
                     end
                     else
                        Insert_Payment(PartPayTypeID,
                                _cr,
                                _Db,
                                dm.Select_PaymentFinancialNoteID.AsInteger,
                                Dm.FinancialNote_DetailAmount.AsInteger,
                                DBEdit12.Text+'('+' Å—œ«Œ  «ﬁ”«ÿ «“ ÿ—Ìﬁ çò'+')',
                                 0,//dm.Select_LastPartForcePaymentID.AsInteger, //0,
                                dm.Select_PaymentDocumentNo.AsString,
                                '',
                                Dm.FinancialNote_DetailFinancialNote_DetailID.AsInteger,
                                _Crtr_DetAccountID,
                                _Cr,
                                _Crtr_DetAccountID);
                 end
                 else if FNoteTypeID='2' then
                 begin
                    if (InterestPayedByNote)and(Dm.FinancialNote_DetailAmount.AsInteger= StrToInt(Replace(DBEdit15.Text,',','')))then
                     begin
                        Insert_Payment(7,
                                _cr,
                                dm.Select_PaymentDebtorAccountID.AsInteger,
                                dm.Select_PaymentFinancialNoteID.AsInteger,
                                Dm.FinancialNote_DetailAmount.AsInteger,
                                DBEdit12.Text+'('+' Å—œ«Œ  ”Êœ ﬁ”ÿ «“ ÿ—Ìﬁ ÕÊ«·Â'+')',
                                 0,//dm.Select_LastPartForcePaymentID.AsInteger, //0,
                                dm.Select_PaymentDocumentNo.AsString,
                                '',
                                Dm.FinancialNote_DetailFinancialNote_DetailID.AsInteger,
                                _Crtr_DetAccountID,
                                _Cr,
                                _Crtr_DetAccountID);
                        InterestPayedByNote := false;
                        InterestPayedByNote2 := true;
                     end
                     else if (AmercePayedByNote)and(Dm.FinancialNote_DetailAmount.AsInteger= StrToInt(Replace(EAmerce.Text,',','')))then
                     begin
                        Insert_Payment(7,
                                _cr,
                                dm.Select_PaymentDebtorAccountID.AsInteger,
                                dm.Select_PaymentFinancialNoteID.AsInteger,
                                Dm.FinancialNote_DetailAmount.AsInteger,
                                DBEdit12.Text+'('+' Å—œ«Œ  Ã—Ì„Â ﬁ”ÿ «“ ÿ—Ìﬁ ÕÊ«·Â'+')',
                                 0,//dm.Select_LastPartForcePaymentID.AsInteger, //0,
                                dm.Select_PaymentDocumentNo.AsString,
                                '',
                                Dm.FinancialNote_DetailFinancialNote_DetailID.AsInteger,
                                _Crtr_DetAccountID,
                                _Cr,
                                _Crtr_DetAccountID);
                        AmercePayedByNote := false;
                        AmercePayedByNote2 := true;
                     end
                     else
                        Insert_Payment(PartPayTypeID,
                                _cr,
                                dm.Select_PaymentDebtorAccountID.AsInteger ,
                                dm.Select_PaymentFinancialNoteID.AsInteger,
                                Dm.FinancialNote_DetailAmount.AsInteger,
                                DBEdit12.Text+'('+' Å—œ«Œ  «ﬁ”«ÿ «“ ÿ—Ìﬁ ÕÊ«·Â'+')',
                                 0,//dm.Select_LastPartForcePaymentID.AsInteger, //0,
                                dm.Select_PaymentDocumentNo.AsString,
                                '',
                                Dm.FinancialNote_DetailFinancialNote_DetailID.AsInteger,
                                _Crtr_DetAccountID,
                                _Cr,
                                _Crtr_DetAccountID);
                 end
                 else if FNoteTypeID='3' then
                 begin
                    if (InterestPayedByNote)and(Dm.FinancialNote_DetailAmount.AsInteger= StrToInt(Replace(DBEdit15.Text,',','')))then
                     begin
                        Insert_Payment(7,
                                _cr,
                                dm.Select_PaymentDebtorAccountID.AsInteger,
                                dm.Select_PaymentFinancialNoteID.AsInteger,
                                Dm.FinancialNote_DetailAmount.AsInteger,
                                DBEdit12.Text+'('+' Å—œ«Œ  ”Êœ ﬁ”ÿ «“ ÿ—Ìﬁ ”› Â'+')',
                                 0,//dm.Select_LastPartForcePaymentID.AsInteger, //0,
                                dm.Select_PaymentDocumentNo.AsString,
                                '',
                                Dm.FinancialNote_DetailFinancialNote_DetailID.AsInteger,
                                _Crtr_DetAccountID,
                                _Cr,
                                _Crtr_DetAccountID);
                        InterestPayedByNote := false;
                        InterestPayedByNote2 := true;
                     end
                     else if (AmercePayedByNote)and(Dm.FinancialNote_DetailAmount.AsInteger= StrToInt(Replace(EAmerce.Text,',','')))then
                     begin
                        Insert_Payment(7,
                                _cr,
                                dm.Select_PaymentDebtorAccountID.AsInteger,
                                dm.Select_PaymentFinancialNoteID.AsInteger,
                                Dm.FinancialNote_DetailAmount.AsInteger,
                                DBEdit12.Text+'('+' Å—œ«Œ  Ã—Ì„Â ﬁ”ÿ «“ ÿ—Ìﬁ ”› Â'+')',
                                 0,//dm.Select_LastPartForcePaymentID.AsInteger, //0,
                                dm.Select_PaymentDocumentNo.AsString,
                                '',
                                Dm.FinancialNote_DetailFinancialNote_DetailID.AsInteger,
                                _Crtr_DetAccountID,
                                _Cr,
                                _Crtr_DetAccountID);
                        AmercePayedByNote := false;
                        AmercePayedByNote2 := true;
                     end
                     else
                        Insert_Payment(PartPayTypeID,
                                _cr,
                                dm.Select_PaymentDebtorAccountID.AsInteger ,
                                dm.Select_PaymentFinancialNoteID.AsInteger,
                                Dm.FinancialNote_DetailAmount.AsInteger,
                                DBEdit12.Text+'('+' Å—œ«Œ  «ﬁ”«ÿ «“ ÿ—Ìﬁ ”› Â'+')',
                                 0,//dm.Select_LastPartForcePaymentID.AsInteger, //0,
                                dm.Select_PaymentDocumentNo.AsString,
                                '',
                                Dm.FinancialNote_DetailFinancialNote_DetailID.AsInteger,
                                _Crtr_DetAccountID,
                                _Cr,
                                _Crtr_DetAccountID);
                 end;
                 DM.FinancialNote_Detail.Next;

             END
             EXCEPT
             END;
 END
 Else
 Begin

      if dm.Select_Payment.state=dsinsert then
         Dm.Select_PaymentDocumentNo.AsString:=Get_NewDocumnetNo(MonthlyBeginDate.Text);

      DocumentNo:=dm.Select_PaymentDocumentNo.AsString;
      Select_PaymentComment.AsString := Select_LastPartComment.AsString;
      Select_PaymentFinancialNote_DetailID.AsInteger:=Dm.Select_LastPartFinancialNote_DetailID.AsInteger;
      Select_PaymentCrtr_DetAccountID.AsInteger:=AccountID;
      Post;
      _FirstPaymentId:=0;

      IF NOT Dm.Select_PaymentPaymentID.IsNull THEN
        _FirstPaymentId:=Dm.Select_PaymentPaymentID.AsInteger;
      IF (FNoteTypeID<>'0') AND (FNoteTypeID<>'1') THEN //«ê— çò ‰»«‘œ
      BEGIN
         Dm.Select_LastPartFinancialNote_DetailID.AsInteger:=FrFinancialNoteDetail_New.FinancialNoteid;
         Qry_SetResult(' Update FinancialNote_Detail  '+
                       ' Set    NoteStatusID=3 '+
                       ' Where  FinancialNote_DetailID='+INTTOSTR(FrFinancialNoteDetail_New.FinancialNoteid),dm.YeganehConnection);

      END;

      dm.Select_LastPart.Post;
  END;

      //„Ì ‰„«Ìœ Paid=1 —Ê«· “Ì— ›Ì·œ
      Pay_ForcePayment(Select_LastPartForcePaymentID.AsInteger,Select_PaymentPaymentID.AsInteger);
      //Ranjbar 88.06.24
      //Ins_AccountToLoanPriority(AccountID , LoanID);       //Commented by Hadi Mohamed 920628
      //---
      if (dm.Select_LastPartInterestAmount.AsInteger>0)and(not(InterestPayedByNote2)) then   // Hadi Mohamed 920320
         Insert_Payment(IntersetPayTypeID,
                        Dm.Select_PaymentCreditorAccountID.AsInteger,//IntersetAccountID,
                        MajorAccount.KeyValue ,
                        Select_PaymentFinancialNoteID.AsInteger,
                        Select_LastPartInterestAmount.AsInteger,
                        '”Êœ ﬁ”ÿ   «—ÌŒ '+dm.Select_LastPartMatureDate.AsString+' Ê«„ ‘„«—Â'+dm.Select_LastPartLoanNO.AsString,
                        dm.Select_LastPartForcePaymentID.AsInteger,
                        DocumentNo,
                        Dm.Select_PaymentDate.AsString,
                        Dm.Select_LastPartFinancialNote_DetailID.AsInteger,
                        dm.Select_Account_DetailsAccountID.AsInteger,
                        IntersetAccountID,
                        MajorAccount.KeyValue);

      if (trim(EAmerce.yText)<>'')and
         ((trim(EAmerce.yText)<>'0'))and(not(AmercePayedByNote2)) then // Hadi Mohamed 920320
         Insert_Payment(amercePayTypeID,
                        AmerceAccountID,
                        MajorAccount.KeyValue,
                        0,
                        StrToInt(EAmerce.YText),
                        'Ã—Ì„Â ﬁ”ÿ   «—ÌŒ '+dm.Select_LastPartMatureDate.AsString+'  Ê«„ '+dm.Select_LastPartLoanNO.AsString,
                        dm.Select_LastPartForcePaymentID.AsInteger,
                        DocumentNo,
//                        '',
                        Dm.Select_PaymentDate.AsString,

                        Dm.Select_LastPartFinancialNote_DetailID.AsInteger,
                        dm.Select_Account_DetailsAccountID.AsInteger,
                        AmerceAccountID,
                        MajorAccount.KeyValue);

////////////////////////////////////////////////////////////////////////////////////////////
{      if (dm.Select_LastPartInterestAmount.AsInteger>0)and(FrFinancialNoteDetail_New.FinancialNoteid>0) then   // Hadi Mohamed 920320
          Insert_PaymentInterestAmerce(IntersetPayTypeID,
                        Dm.Select_PaymentCreditorAccountID.AsInteger,//IntersetAccountID,
                        MajorAccount.KeyValue ,
                        Select_PaymentFinancialNoteID.AsInteger,
                        Select_LastPartInterestAmount.AsInteger,
                        '”Êœ ﬁ”ÿ   «—ÌŒ '+dm.Select_LastPartMatureDate.AsString+' Ê«„ ‘„«—Â'+dm.Select_LastPartLoanNO.AsString,
                        dm.Select_LastPartForcePaymentID.AsInteger,
                        DocumentNo,
                        Dm.Select_PaymentDate.AsString,
                        Dm.Select_LastPartFinancialNote_DetailID.AsInteger,
                        dm.Select_Account_DetailsAccountID.AsInteger,
                        IntersetAccountID,
                        MajorAccount.KeyValue);
      if (trim(EAmerce.yText)<>'')and(trim(EAmerce.yText)<>'0')and(FrFinancialNoteDetail_New.FinancialNoteid>0) then // Hadi Mohamed 920320
          Insert_PaymentInterestAmerce(amercePayTypeID,
                        AmerceAccountID,
                        MajorAccount.KeyValue,
                        0,
                        StrToInt(EAmerce.YText),
                        'Ã—Ì„Â ﬁ”ÿ   «—ÌŒ '+dm.Select_LastPartMatureDate.AsString+'  Ê«„ '+dm.Select_LastPartLoanNO.AsString,
                        dm.Select_LastPartForcePaymentID.AsInteger,
                        DocumentNo,
//                        '',
                        Dm.Select_PaymentDate.AsString,

                        Dm.Select_LastPartFinancialNote_DetailID.AsInteger,
                        dm.Select_Account_DetailsAccountID.AsInteger,
                        AmerceAccountID,
                        MajorAccount.KeyValue);   }
////////////////////////////////////////////////////////////////////////////////////////////
   end;//with

   DoBtn.Enabled:=false;
   PerferazeBtn.Enabled:=true;
//   PerferazeBtn2.Enabled:=true;
   DocPrintBtn.Enabled:=true;
   PrintBtn.Enabled:=true;
   Open_Payment(_FirstPaymentId);

///// Send SMS
  MemoSms:=TMemo.Create(Application);
  MemoSms.Parent:=Self;
  MemoSms.Visible:=False;

  qry:=TADOQuery.Create(Self);
  qry.Connection:=dm.YeganehConnection;
  //Hamed_Ansari_Hasan_Ahmadvand_990605_S
  //qry.SQL.Text := 'SELECT  isnull(SUM(Amount),0)BM FROM dbo.ForcePayment WHERE ParentID='+dm.Select_LastPartParentID.AsString+
  qry.SQL.Text := 'SELECT  isnull(SUM(Amount + InterestAmount),0)BM FROM dbo.ForcePayment WHERE ParentID='+dm.Select_LastPartParentID.AsString+
  //Hamed_Ansari_Hasan_Ahmadvand_990605_E
  ' AND Paid=0 and ForceTypeID = 1';
  qry.Open;

  {
  with  MemoSms.Lines do
  begin

    Text:=('”·«„')+' '+
    ('ﬁ”ÿ ‘„«—Â '+DBEdit13.Text)+' '+
    ('Ê«„ '+dm.Select_Account_DetailsAccountTitle.AsString)+' '+
    ('»Â „»·€ '+DBEdit2.Text)+' '+
    ('œ—  «—ÌŒ '+MonthlyBeginDate.text+' œ—Ì«›  ê—œÌœ')+' '+
    '»«ﬁÌ„«‰œÂ Ê«„ '+qry.Fields.FieldByname('BM').AsString+' '+

    (_CashNameForSms);

    if _EnableSms then
    begin
      dm.SendSmsToOutBox(dm.Select_Account_DetailsPhone.AsString,memoSms.Text);
    end;
    FreeAndNil(MemoSms);
  }

     smsText:= '';
     smsText:= '”·«„ ';
     smsText:=smsText+' ﬁ”ÿ ‘„«—Â ' + DBEdit13.Text;
     smsText:=smsText+' Ê«„ '       + dm.Select_Account_DetailsAccountTitle.AsString;
     //Hamed_Ansari_Hasan_Ahmadvand_990605_S
//     smsText:=smsText+' »Â „»·€ '   + DBEdit2.Text+'—Ì«·';
     smsText:=smsText+' »Â „»·€ '   + IntToStr(dm.Select_LastPartAmount.AsInteger + dm.Select_LastPartInterestAmount.AsInteger)  +'—Ì«·';
     //Hamed_Ansari_Hasan_Ahmadvand_990605_E
     smsText:=smsText+' œ—  «—ÌŒ '  + MonthlyBeginDate.text;
     smsText:=smsText+' œ—Ì«›  ê—œÌœ.„«‰œÂ Ê«„ ' + qry.Fields.FieldByname('BM').AsString +'—Ì«·';
     smsText:=smsText+' ' + _CashNameForSms;

     if (_EnableSms) then
     begin
     if IsStrANumber(dm.Select_Account_DetailsPhone.AsString) then
        dm.SendSmsToOutBox(dm.Select_Account_DetailsPhone.AsString,smstext)
     else
        ShowMessage('‘„«—Â „Ê»«Ì· ÃÂ  «—”«· ÅÌ«„ò „⁄ »— ‰„Ì »«‘œ');
     end;

    qry.Free;
  //end;
End;

function TFrPayPart.IsStrANumber(const S: string): Boolean;
var
  P: PChar;
begin
  P      := PChar(S);
  Result := False;
  while P^ <> #0 do
  begin
    if not (P^ in ['0'..'9']) then Exit;
    Inc(P);
  end;
  Result := True;
end;

procedure TFrPayPart.DBEdit1Exit(Sender: TObject);
begin
  inherited;
  TEditExit(sender);
  FrFinancialNoteDetail_new.DefaultAmount:=strtoint(Tdbedit(Sender).Text);
end;

procedure TFrPayPart.DBEdit4Exit(Sender: TObject);
var s:String;
begin
  inherited;
  TEditExit(Sender);
  s := TEdit(Sender).Text;
  //delete(s,1,1);
  EAmerce.Text := CommaSeperate(IntToStr(Get_Amerce(PartForceTypeID,dm.Select_LastPartMatureDate.AsString,s)));
end;

procedure TFrPayPart.DocPrintBtnClick(Sender: TObject);
begin
  inherited;
  if DocumentNo<>'' then
    dm.PrintPayment_ByDocumentNo(DocumentNo);
end;

procedure TFrPayPart.PerferazeBtnClick(Sender: TObject);
begin
  inherited;
  Cursor_SetPos(Self,PerferazeBtn,RepPopMnu);

  //dm.LinePrint(LoanID,false, dm.Select_PaymentDate.AsString,'Å—œ«Œ  ﬁ”ÿ ‘„«—Â '+dm.Select_LastPartOrderNo.AsString,dm.Select_PaymentAmount.AsString,'0',IntToStr(get_RemainOfLoan_byLoanID(loanid)),dm.Select_PaymentDocumentNo.AsString,'NShow');
end;

procedure TFrPayPart.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  _FinancialNoteid:=-1;
end;

procedure TFrPayPart.NShowClick(Sender: TObject);
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


//      dm.LinePrint(LoanID,false, dm.Select_PaymentDate.AsString,'Å—œ«Œ  ﬁ”ÿ ‘„«—Â '+dm.Select_LastPartOrderNo.AsString,dm.Select_PaymentAmount.AsString,'0',IntToStr(get_RemainOfLoan_byLoanID(loanid)),dm.Select_PaymentDocumentNo.AsString,Get_AccountNo_ByAccountId(AccountID),Get_AccountTitle_ByAccountId(AccountID),PopupOption,dm.Select_LastPartInterestAmount.AsString,GetReportName('Btn32','PerfrajRep.fr3'));
      dm.LinePrint(
      LoanID,
      false,
      dm.Select_PaymentDate.AsString,
      'Å—œ«Œ  ﬁ”ÿ ‘„«—Â '+dm.Select_LastPartOrderNo.AsString,
      dm.Select_PaymentAmount.AsString,
      '0',
      IntToStr(get_RemainOfLoan_byLoanID(loanid)),
      dm.Select_PaymentDocumentNo.AsString,
      Get_AccountNo_ByAccountId(AccountID),
      Get_AccountTitle_ByAccountId(AccountID),
      PopupOption,
      dm.Select_LastPartInterestAmount.AsString,
      'btn_AM_PardakhteAghsat'
      ,      IntToStr(dm.Select_LastPartLoanAmount.AsLargeInt-get_RemainOfLoan_byLoanID(loanid)));
end;

procedure TFrPayPart.N1Click(Sender: TObject);
begin
  inherited;
  FrQrPayment := TFrQrPayment.Create(Application);
  FrQrPayment.IsPay:=True;
//  Ranjbar 88.05.14 Code=26
  FrQrPayment.QRLblSoftTitle.Caption    := _SoftTitle;
  FrQrPayment.QRLblSoftTitle2.Caption   := _SoftTitle;
  FrQrPayment.QRLblSoftTitle3.Caption   := _SoftTitle;
  FrQrPayment.QRLblSoftTitle4.Caption   := _SoftTitle;
  FrQrPayment.QRLblSoftTitle_N1.Caption := _SoftTitle;
  FrQrPayment.QRLblSoftTitle_N2.Caption := _SoftTitle;
  //---
  FrQrPayment.QuickRep4.Preview;
end;

procedure TFrPayPart.BillShowClick(Sender: TObject);
begin
  inherited;
  FrQrPayment:=TFrQrPayment.Create(Application);
     OpenSp_ShowBill(Dm.Select_PaymentPaymentID.AsInteger);

    FrQrPayment.frxReport2.Pages[1].Visible:=true;
    Rep_LoadFile_New(FrQrPayment.frxReport2,'Bill_PaymentPrint.fr3','btn_AM_PardakhteAghsat');


     IF Sender = BillShow    Then
            Rep_Show(FrQrPayment.frxReport2 ,rtShow);//ÅÌ‘ ‰„«Ì‘

     IF Sender = BillPrint   Then
            Rep_Show(FrQrPayment.frxReport2 ,rtPrint);//ç«Å ”—Ì⁄

     IF (Sender = BillDesign)Then
            Rep_Show(FrQrPayment.frxReport2 ,rtDesign);//ÿ—«ÕÌ

end;

procedure TFrPayPart.N11Click(Sender: TObject);
begin
  inherited;
   Rep_CorrectDesign('PerfrajRep.fr3');
end;

procedure TFrPayPart.MenuItem6Click(Sender: TObject);
begin
  inherited;
   Rep_CorrectDesign('Bill_PaymentPrint.fr3');

end;

procedure TFrPayPart.Panel1Resize(Sender: TObject);
begin
  inherited;
  if FinancialNotePanel.Height>20 then
  begin
    FrPayPart.Height := 522+133;
    FrPayPart.top := FrPayPart.top-30;
  end
  else
  begin
    FrPayPart.Height := 522;
    FrPayPart.top := FrPayPart.top+30;
  end;

end;

procedure TFrPayPart.EAmerceChange(Sender: TObject);
var
   A,B,C : longint;
begin
  inherited;
  try
     A := StrToInt((Replace(DBEdit1.Text,',','')));
  except
  end;
  try
     B := StrToInt((Replace(DBEdit15.Text,',','')));
  except
  end;
  try
     C := StrToInt((Replace(EAmerce.Text,',','')));
  except
  end;
  Label26.Caption := ' „Ã„Ê⁄ ﬁ”ÿ°”Êœ Ê Ã—Ì„Â '+':'+NumStrToCommaStr(IntToStr(A+B+C))+' '+'—Ì«·'  ;
  EAmerce.Text := NumStrToCommaStr(EAmerce.Text);
end;

end.
