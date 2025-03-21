 unit AddFinancialNote_NewU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, UemsVCL, DBCtrls, StdCtrls, Mask, ComCtrls, Buttons, Grids,
  DBGrids, DBActns, ActnList, ActnMan, DB, ADODB, ExtCtrls,
  XPStyleActnCtrls, xpBitBtn, YDbgrid, YDBEDit, AdvGlowButton;

type
  TFrAddFinancialNote_New = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label3: TLabel;
    Label9: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    BitBtn2: TAdvGlowButton;
    BitBtn3: TAdvGlowButton;
    BitBtn4: TAdvGlowButton;
    BitBtn5: TAdvGlowButton;
    BitBtn6: TAdvGlowButton;
    xpBitBtn2: TAdvGlowButton;
    Button3: TAdvGlowButton;
    ActionManager_Detail: TActionManager;
    DataSetInsert_Detail: TDataSetInsert;
    DataSetDelete_Detail: TDataSetDelete;
    DataSetEdit_Detail: TDataSetEdit;
    DataSetPost_Detail: TDataSetPost;
    DataSetCancel_Detail: TDataSetCancel;
    Action_Detail: TAction;
    amount: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Label10: TLabel;
    SearchEdit: TEdit;
    FinancialNoteStatuse: TDBLookupComboBox;
    CbFinancialType: TCheckBox;
    Panel3: TPanel;
    BitBtn1: TAdvGlowButton;
    Label11: TLabel;
    LBSbj: TLabel;
    LbPrice: TLabel;
    LbResiver: TLabel;
    LbNo: TLabel;
    DBEdit6: TDBEdit;
    DBText1: TDBText;
    DBText2: TDBText;
    Panel4: TPanel;
    BitBtn7: TAdvGlowButton;
    BitBtn8: TAdvGlowButton;
    BitBtn9: TAdvGlowButton;
    BitBtn10: TAdvGlowButton;
    BitBtn11: TAdvGlowButton;
    Shape1: TShape;
    Label2: TLabel;
    LbRemain: TLabel;
    Shape2: TShape;
    Button4: TAdvGlowButton;
    ActionManager_Master: TActionManager;
    DataSetInsert_Master: TDataSetInsert;
    DataSetDelete_Master: TDataSetDelete;
    DataSetEdit_Master: TDataSetEdit;
    DataSetPost_Master: TDataSetPost;
    DataSetCancel_Master: TDataSetCancel;
    Action_Master: TAction;
    DataSetNext_Master: TDataSetNext;
    DataSetPrior_Master: TDataSetPrior;
    DataSetNext_Detail: TDataSetNext;
    DataSetPrior_Detail: TDataSetPrior;
    YDBEdit1: TYDBEdit;
    YDBEdit2: TYDBEdit;
    YDBEdit3: TYDBEdit;
    SpeedButton2: TAdvGlowButton;
    SpeedButton3: TAdvGlowButton;
    SpeedButton4: TAdvGlowButton;
    SpeedButton5: TAdvGlowButton;
    YDBGrid2: TYDBGrid;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    btnSearch: TAdvGlowButton;
    SpeedButton6: TAdvGlowButton;
    BitBtn12: TAdvGlowButton;
    xpBitBtn1: TAdvGlowButton;
    Button2: TAdvGlowButton;
    SpeedButton1: TAdvGlowButton;
    BitBtn13: TAdvGlowButton;
    pnlMain: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBEdit4Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure xpBitBtn2Click(Sender: TObject);
    procedure SearchEditChange(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit2Change(Sender: TObject);
    procedure PageControl1Changing(Sender: TObject;var AllowChange: Boolean);
    procedure YDBEdit2Change(Sender: TObject);
    procedure YDBGrid1EditButtonClick(Sender: TObject);
    procedure DataSetPost_DetailExecute(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure DataSetEdit_DetailExecute(Sender: TObject);
    procedure DataSetDelete_DetailExecute(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure FinancialNoteStatuseCloseUp(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    BaseNewWidth : Integer;
    BaseNewHeight: Integer;
  end;

var
  FrAddFinancialNote_New: TFrAddFinancialNote_New;

implementation

uses DMU, YShamsiDate,   AddattachmentU, BusinessLayer,
  PrintFinancialNoteU, AddPaymentU, MainU, SummeryPaymentU, ConvUtils,
  SumPaymentU;

{$R *.dfm}

procedure TFrAddFinancialNote_New.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
  {Ranjbar Ver3}
  //Dm.FinancialNote_Detail.Close;
  //Dm.FinancialNote_Master.CLOSE;
  DBGrid_SaveColumns(Self.Name,yDBGrid2);
end;

procedure TFrAddFinancialNote_New.BitBtn1Click(Sender: TObject);
begin
  DBNavigator1.Enabled:=True;

  if Dm.FinancialNote_MasterNoteCount.AsInteger<>Dm.FinancialNote_Detail.RecordCount then
  begin
    DBNavigator1.Enabled:=False;
    raise Exception.Create( '����� '+Dm.SetDocTitle+' ������ ��� ');
  end;

  if SumAmountFinancialNote(Dm.FinancialNote_MasterFinancialNote_MasterID.AsInteger) <> Dm.FinancialNote_MasterAmount.AsInteger then
  begin
    DBNavigator1.Enabled:=False;
    Raise Exception.Create( '��� ���� '+Dm.SetDocTitle+'������ ���. ');
  end;

  Dm.FinancialNote_Detail.First;
  while not Dm.FinancialNote_Detail.Eof do
  begin
    if not IsSelectedFinantialNoteCorrect(Dm.FinancialNote_DetailFinancialNote_DetailID.AsInteger) then
      raise Exception.Create( '��� ��� ���� ������� ��� ���');
    Dm.FinancialNote_Detail.Next;
  end;

  //������ ����
  if _FrSumPaymentIsShowing then
    if FrSumPayment<> nil then
      if  FrSumPayment.Showing then
        if Dm.FinancialNote_Detail.RecordCount> 1 then
          raise Exception.Create('�� ������ ���������� '+Dm.SetDocTitle+' ���� ����� �� 1 ����');


  if Dm.FinancialNote_Master.RecordCount > 0 then
  begin
    Dm.FinancialNote_Master.Edit;
    Dm.FinancialNote_MasterUserConfirmer.AsString:=IntToStr(_Userid);
    Dm.FinancialNote_Master.post;
  end;

  _FinancialNoteid:=-1;
  //if PageControl1.ActivePageIndex=1 then
  if dm.FinancialNote_Master.Active then
  begin
    _FinancialNoteid:=dm.FinancialNote_DetailFinancialNote_DetailID.AsInteger;
  end;

  //didarians
  if PageControl1.ActivePageIndex=0 then
    if dm.Select_FinancialNote_Like.Active then
    _FinancialNoteid:=dm.Select_FinancialNote_LikeFinancialNoteID.AsInteger;
  close;
end;

procedure TFrAddFinancialNote_New.DBEdit4Change(Sender: TObject);
begin
//  try amount.Caption:=Bill(StrToInt64(  DeleteComma(TDBEdit(sender).Text)  ))+' ����'; except end;
end;

procedure TFrAddFinancialNote_New.Button2Click(Sender: TObject);
begin
  FrPrintFinancialNote:=TFrPrintFinancialNote.Create(Application);
  FrPrintFinancialNote.ShowModal;
end;

procedure TFrAddFinancialNote_New.xpBitBtn1Click(Sender: TObject);
begin
  FrAddAttachment:=TFrAddAttachment.Create(Application);
  FrAddAttachment.DocumnetID:=dm.Select_FinancialNote_Like_NewFinancialNote_DetailID.AsInteger;
  FrAddAttachment.documentTypeID:=3;
  FrAddAttachment.ShowModal;
  //Open_LoanAttachment(dm.Select_LoanLoanID.AsInteger);
  Open_LoanAttachment(FrAddAttachment.DocumnetID);
end;

procedure TFrAddFinancialNote_New.xpBitBtn2Click(Sender: TObject);
var
  _d,_m:Integer;
begin
  _d:=dm.Select_FinancialNote_Like_NewFinancialNote_DetailID.AsInteger;
  _M:=dm.Select_FinancialNote_Like_NewFinancialNote_MasterID.AsInteger;

  DM.FinancialNote_Master.Locate('FinancialNote_MasterID',_M,[LOCaseInsensitive]);
  DM.FinancialNote_Detail.Locate('FinancialNote_DetailID',_D,[loCaseInsensitive]);
  if not IsSelectedFinantialNoteCorrect(_d) then
    raise Exception.Create( '��� ��� ���� ������� ��� ���.���� ������ ���� �����');

  //NoteId:=Dm.Select_FinancialNote_Like_NewFinancialNote_DetailID.AsInteger   ;
  //Open_FinancialNote(NoteId);
  PageControl1.ActivePageIndex:=1;
end;

procedure TFrAddFinancialNote_New.SearchEditChange(Sender: TObject);
begin
  if not CbFinancialType.Checked then
    Open_FinancialNote_Like_NEW(0,SearchEdit.Text,0)
  else
    Open_FinancialNote_Like_NEW(FinancialNoteStatuse.KeyValue,SearchEdit.Text,0)
end;

procedure TFrAddFinancialNote_New.Button3Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=1;
  DataSetInsert_Master.Execute;
end;

procedure TFrAddFinancialNote_New.TabSheet1Show(Sender: TObject);
begin
  SearchEdit.SetFocus;
end;

procedure TFrAddFinancialNote_New.Button4Click(Sender: TObject);
var
  _d:Integer;
begin
  if PageControl1.ActivePageIndex=1 then
  begin
    _d:=DM.FinancialNote_DetailFinancialNote_DetailID.AsInteger; dm.Select_FinancialNote_Like_NewFinancialNote_DetailID.AsInteger;
    DM.Select_FinancialNote_Like_New.Locate('FinancialNote_DetailID',_D,[loCaseInsensitive]);

    DBNavigator1.Enabled:=True;
    if SumAmountFinancialNote(Dm.FinancialNote_MasterFinancialNote_MasterID.AsInteger) <> Dm.FinancialNote_MasterAmount.AsInteger then
    begin
      ShowMessage( '��� ���� '+Dm.SetDocTitle+' ������ ���. ');
      Exit;
    end;

    if Dm.FinancialNote_MasterNoteCount.AsInteger<>Dm.FinancialNote_Detail.RecordCount then
    begin
      DBNavigator1.Enabled:=False;
      ShowMessage( '����� '+Dm.SetDocTitle+'������ ��� ');
      Exit;
    end;
  end;
  _FinancialNoteid:=-1;
  close;
end;

procedure TFrAddFinancialNote_New.FormShow(Sender: TObject);
begin
  Self.Color    := _Maincolor1 ;
  PageControl1.ActivePage:=TabSheet1;
   {Ranjbar Ver3}
  //DBGrid_LoadColumns(Self.Name,DBGrid1);
  Dm.FinancialNote_Master.Open;
  Dm.FinancialNote_Detail.Open;
  DM.Select_FinancialNote_Like_New.Open;
  //Dm.FinancialNote_Detail_Select.Open;

  Dm.Bank_New.Open;
  FrAddFinancialNote_New.LbRemain.Caption:=inttostr(dm.FinancialNote_MasterAmount.AsInteger-SumAmountFinancialNote(dm.FinancialNote_MasterFinancialNote_MasterID.AsInteger));
  try
    amount.Caption := Bill(StrToInt64(DeleteComma(TDBEdit(sender).Text))) + ' ' + Get_SystemSetting('EdtMoneyUnit') + ' ';
  except
  end;
 { TODO -oparsa : 14030628- bug369 }
 BaseNewWidth := Self.Width;
 BaseNewHeight:= Self.Height;
 { TODO -oparsa : 14030628- bug369 }
  btnSearch.Click;
end;

procedure TFrAddFinancialNote_New.DBEdit2Change(Sender: TObject);
begin
  try
    amount.Caption := Bill(StrToInt64(DeleteComma(TDBEdit(sender).Text))) + ' ' + Get_SystemSetting('EdtMoneyUnit') + ' ';
  except
  end;
end;

procedure TFrAddFinancialNote_New.PageControl1Changing(Sender: TObject;Var AllowChange: Boolean);
var
  _d,_M:Integer;
begin
  if PageControl1.ActivePageIndex=1 then
  begin
    _d:=DM.FinancialNote_DetailFinancialNote_DetailID.AsInteger; dm.Select_FinancialNote_Like_NewFinancialNote_DetailID.AsInteger;
    DM.Select_FinancialNote_Like_New.Locate('FinancialNote_DetailID',_D,[loCaseInsensitive]);

    DBNavigator1.Enabled:=True;
    if SumAmountFinancialNote(Dm.FinancialNote_MasterFinancialNote_MasterID.AsInteger) <> Dm.FinancialNote_MasterAmount.AsInteger then
    begin
      DBNavigator1.Enabled:=False;
      AllowChange:=false;
      ShowMessage( '��� ���� '+Dm.SetDocTitle+' ������ ���. ');
    end;

    if Dm.FinancialNote_MasterNoteCount.AsInteger<>Dm.FinancialNote_Detail.RecordCount then
    begin
      DBNavigator1.Enabled:=False;
      AllowChange:=false;
      ShowMessage( '����� '+Dm.SetDocTitle+' ������ ��� ');
    end;
  end;

  _d:=dm.Select_FinancialNote_Like_NewFinancialNote_DetailID.AsInteger;
  _M:=dm.Select_FinancialNote_Like_NewFinancialNote_MasterID.AsInteger;

  DM.FinancialNote_Master.Locate('FinancialNote_MasterID',_M,[LOCaseInsensitive]);
  DM.FinancialNote_Detail.Locate('FinancialNote_DetailID',_D,[loCaseInsensitive]);
end;

procedure TFrAddFinancialNote_New.YDBEdit2Change(Sender: TObject);
begin
  try
    amount.Caption := Bill(StrToInt64(DeleteComma(TDBEdit(sender).Text))) + ' ' + Get_SystemSetting('EdtMoneyUnit') + ' ';
  except
  end;
end;

procedure TFrAddFinancialNote_New.YDBGrid1EditButtonClick(Sender: TObject);
begin
  if (Trim(_FinancialNote_Field1)<>'') and
     (Trim(_FinancialNote_Field2)<>'') and
     (Trim(_FinancialNote_Where) <>'') and
     (Trim(_FinancialNote_Table) <>'') and
     (DBGrid1.SelectedIndex=2)        then
  begin
    Dm.ADSForcePayment.Close;
    Dm.ADSForcePayment.CommandText:='Select '+_FinancialNote_Field1+' , '+
                                              _FinancialNote_Field2+' From '+
                                              _FinancialNote_Table +' Where 1=1 '+_FinancialNote_Where;
    Dm.ADSForcePayment.Open;
    Dm.SearchTable(dm.ADSForcePayment,_FinancialNote_Field1,_FinancialNote_Field2);
    dm.FinancialNote_DetailForcePaymentID.AsInteger:=dm.SearchResult;
  end;
end;

procedure TFrAddFinancialNote_New.DataSetPost_DetailExecute(Sender: TObject);
//VAR   Value,D:STRING;
begin
{         D := Dm.FinancialNote_DetailNoteDate.AsString;
         IF (Txt_Del254(d)<>'13  /  /  ') and not isValidDate(D) then
         Begin
            ShowMyMessage('�����','����� ���� ���  ������ ������ . ���� ����� ������',[mbOK],mtInformation);
         End;


    IF     (DM.FinancialNote_DetailNoteNo.IsNull) OR
           (TRIM(DM.FinancialNote_DetailNoteNo.AsString)='')OR
           (TRIM(DM.FinancialNote_DetailNoteNo.AsString)='0')  THEN
      RAISE Exception.Create('���� �����   '+DM.SetDocTitle +'�� ���� ������');

   IF (Dm.FinancialNote_DetailAmount.IsNull) OR
      (TRIM(Dm.FinancialNote_DetailAmount.AsString)='0') THEN
      RAISE Exception.Create('���� ����  '+DM.SetDocTitle +' �� ���� ������');

   IF (Dm.FinancialNote_MasterFinancialNoteTypeID.AsInteger=1) THEN
     IF (Dm.FinancialNote_DetailBankAccountNo.IsNull) OR
        (TRIM(Dm.FinancialNote_DetailBankAccountNo.AsString)='')THEN
        RAISE Exception.Create('���� ����� ���� ��� �� ���� ������');

   IF Dm.FinancialNote_DetailNoteDate.IsNull THEN
      RAISE Exception.Create('���� �����  '+DM.SetDocTitle +' �� ���� ������');

   IF (Dm.FinancialNote_DetailNoteDescription.IsNull) OR
      (TRIM(Dm.FinancialNote_DetailNoteDescription.AsString)='') THEN
      RAISE Exception.Create('���� ���  '+DM.SetDocTitle +'�� ���� ������');


   IF (Dm.FinancialNote_MasterFinancialNoteTypeID.AsInteger=1) THEN
   BEGIN
     Value:=Qry_GetResult(' SELECT COUNT(0) AS COUNT '+
                          ' FROM   FinancialNote_Detail  '+
                          ' WHERE  BankID='+Dm.FinancialNote_DetailBankID.AsString+
                          ' AND NoteNo = '''+Dm.FinancialNote_DetailNoteNo.AsString+'''',Dm.YeganehConnection);

     IF (Value>'1') THEN
           RAISE   Exception.Create('�����  '+DM.SetDocTitle +' ʘ���� �� ����.');
   END;


   IF Dm.FinancialNote_DetailForcePaymentID.AsString <> '' THEN
   BEGIN
       Value:=Qry_GetResult('SELECT Amount FROM ForcePayment WHERE (ForcePaymentID='+Dm.FinancialNote_DetailForcePaymentID.AsString+') ',Dm.YeganehConnection);
       IF Value<>Dm.FinancialNote_DetailAmount.AsString THEN
         RAISE   Exception.Create('����  '+DM.SetDocTitle +' �� ���� ��� ����� ����.���� ����� ����.');




     Value:=Qry_GetResult(' SELECT  COUNT(*)  AS COUNT '+
                          ' FROM    FinancialNote_Detail '+
                          ' GROUP BY ForcePaymentID  '+
                          ' HAVING (ForcePaymentID = '+Dm.FinancialNote_DetailForcePaymentID.AsString+')  ',Dm.YeganehConnection);
       IF (Value>'1') THEN
         RAISE   Exception.Create('���� ��� ����� ��� ����  '+DM.SetDocTitle +'������ ����� ���.');

   END;}
   DM.CheckValidityOfFinancialNote_Detail;
   DM.FinancialNote_Detail.Post;
end;

procedure TFrAddFinancialNote_New.BitBtn8Click(Sender: TObject);
begin
  DM.FinancialNote_Detail.Insert;
  if _AddLoan then
  begin
    Dm.FinancialNote_DetailFND_LoanId.AsInteger:=Dm.Select_LoanLoanID.AsInteger;
    Dm.FinancialNote_DetailFND_LoanNo.AsInteger:=Dm.Select_LoanLoanNO.AsInteger;
  end;
end;

procedure TFrAddFinancialNote_New.DataSetEdit_DetailExecute(
  Sender: TObject);
begin
  if not IsSelectedFinantialNoteCorrect(Dm.FinancialNote_DetailFinancialNote_DetailID.AsInteger) then
    raise Exception.Create( '��� ��� ���� ������� ��� ���.���� ������ ���� �����');

  if Dm.FinancialNote_DetailNoteStatusID.AsInteger<>1 then
    raise Exception.Create( '��� �� ����� ����� ����.���� ������ ���� �����');

  dm.FinancialNote_Detail.Edit;
  if _AddLoan then
  begin
    Dm.FinancialNote_DetailFND_LoanId.AsInteger:=Dm.Select_LoanLoanID.AsInteger;
    Dm.FinancialNote_DetailFND_LoanNo.AsInteger:=Dm.Select_LoanLoanNO.AsInteger;
  end;
end;

procedure TFrAddFinancialNote_New.DataSetDelete_DetailExecute(
  Sender: TObject);
begin
  if not IsSelectedFinantialNoteCorrect(Dm.FinancialNote_DetailFinancialNote_DetailID.AsInteger) then
    raise Exception.Create( '���  ��� ���� ������� ��� ���.���� ��� ���� �����');

  if Dm.FinancialNote_DetailNoteStatusID.AsInteger<>1 then
    raise Exception.Create( '��� �� ����� ����� ����.���� ��� ���� �����');

  dm.FinancialNote_Detail.Delete;
end;

procedure TFrAddFinancialNote_New.BitBtn5Click(Sender: TObject);
begin
  dm.FinancialNote_Detail.First;
  while not dm.FinancialNote_Detail.Eof do
  begin
    if not IsSelectedFinantialNoteCorrect(Dm.FinancialNote_DetailFinancialNote_DetailID.AsInteger) then
      raise Exception.Create( '��� ��� ���� ������� ��� ���.���� ��� ���� �����');

    dm.FinancialNote_Detail.Next
  end;
  dm.FinancialNote_Master.Delete;
end;

procedure TFrAddFinancialNote_New.BitBtn3Click(Sender: TObject);
begin
  Dm.FinancialNote_Detail.First;
  while not dm.FinancialNote_Detail.Eof do
  begin
    if not IsSelectedFinantialNoteCorrect(Dm.FinancialNote_DetailFinancialNote_DetailID.AsInteger) then
      raise Exception.Create( '��� ��� ���� ������� ��� ���.���� ������ ���� �����');

    dm.FinancialNote_Detail.Next
  end;
  dm.FinancialNote_Master.Edit;
end;

procedure TFrAddFinancialNote_New.SpeedButton2Click(Sender: TObject);
var
  _Q:TADODataSet;
begin
  _FinancialNoteid:=Dm.Select_FinancialNote_Like_NewFinancialNote_DetailID.AsInteger;

  if DM.Select_FinancialNote_Like_NewFinancialNoteTypeID.AsInteger<>1 then
    raise Exception.Create( '��� ���� �� ��� �� ����');

  if Dm.Select_FinancialNote_Like_NewNoteStatusID.AsInteger<>1 then
    raise Exception.Create( '��� ��� �� ���� ����� ����');

  _Q:=TADODataSet.Create(Nil);
  _Q.Connection:=Dm.YeganehConnection;
  _Q.Close;
  _Q.CommandText:=' SELECT TOP 1   PaymentID , CreditorAccountID  , DebtorAccountID, [Date], [Time], Amount, Comment, '+
                  '                FinancialNoteID, InsertUserID  , InsertDate     , LastUpDate, LastUserID, '+
                  '                PayTypeID , ISNULL(RelatedID,0), documentno     , FinancialNote_DetailID, Crtr_DetAccountID '+
                  ' FROM  Payment '+
                  ' WHERE FinancialNote_DetailID='+DM.Select_FinancialNote_Like_NewFinancialNote_DetailID.AsString+
                  ' ORDER BY PaymentID DESC';
  _Q.Open;
  if _Q.IsEmpty then
    raise Exception.Create('����� �� �� ����� ���� ��� ');

  if Get_AccountID_ByAccountNo(Get_SystemSetting('EDTPAYACCOUNT'))=_Q.FIELDBYNAME('CreditorAccountID').AsInteger then
    raise Exception.Create('��� �������� �� ��� ���� �� ����� ���� ���.');

  UpdateFinancialNote_Detail(Dm.Select_FinancialNote_Like_NewFinancialNote_DetailID.AsString,'2')
end;

procedure TFrAddFinancialNote_New.SpeedButton3Click(Sender: TObject);
var
  _Q   :TADODataSet;
begin
  if DM.Select_FinancialNote_Like_NewFinancialNoteTypeID.AsInteger<>1 then
    raise Exception.Create( '��� ���� �� ��� �� ����');
  _Q:=TADODataSet.Create(Nil);
  _Q.Connection:=Dm.YeganehConnection;
  _Q.Close;
  _Q.CommandText:=' SELECT TOP 1   PaymentID, CreditorAccountID, DebtorAccountID, [Date], [Time], Amount, Comment, '+
                  '                FinancialNoteID, InsertUserID, InsertDate, LastUpDate, LastUserID, '+
                  '                PayTypeID, ISNULL(RelatedID,0), documentno, FinancialNote_DetailID, Crtr_DetAccountID '+
                  ' FROM  Payment '+
                  ' WHERE FinancialNote_DetailID='+DM.Select_FinancialNote_Like_NewFinancialNote_DetailID.AsString+
                  ' ORDER BY PaymentID DESC';
  _Q.Open;

  _IsCheckAccount:=False;

  if Get_AccountID_ByAccountNo(Get_SystemSetting('EDTPAYACCOUNT'))=_Q.FIELDBYNAME('CreditorAccountID').AsInteger then
  begin
    _FinancialNoteid:=Dm.Select_FinancialNote_Like_NewFinancialNote_DetailID.AsInteger;
    _isForReceipt := true; // Amin 1391/11/08
    UpdateFinancialNote_Detail(Dm.Select_FinancialNote_Like_NewFinancialNote_DetailID.AsString,'3');
    _isForReceipt := false; // Amin 1391/11/08
  end
  else
  begin
    _IsCheckAccount:=False;

    // Amin 1391/09/15 Start
    _q.Close;
    _q.CommandText := 'SELECT DebtorAccountID d FROM Payment WHERE FINANCIALNOTE_DETAILID = ' + DM.Select_FinancialNote_Like_NewFinancialNote_DetailID.AsString;
    _q.Open;

    _isDebtorFinancial := false;

    if (Dm.Select_FinancialNote_Like_NewNoteStatusID.AsInteger=1) and (_q.FieldValues['d'] = 8) then
        _isDebtorFinancial:= true;

    //IF Dm.Select_FinancialNote_Like_NewNoteStatusID.AsInteger=2 THEN
    if (Dm.Select_FinancialNote_Like_NewNoteStatusID.AsInteger=2) or (_isDebtorFinancial) then
    // Amin 1391/09/15 End
    begin
      _FinancialNoteid:=Dm.Select_FinancialNote_Like_NewFinancialNote_DetailID.AsInteger;
      UpdateFinancialNote_Detail(Dm.Select_FinancialNote_Like_NewFinancialNote_DetailID.AsString,'3');
    end
    else
    begin
      _IsCheckAccount:=True;
      raise Exception.Create( '��� ��� �� ����� ���� ����');
    end;

    _isDebtorFinancial := false; // Amin 1391/09/15
  end;
  //Raise Exception.Create('��� �������� �� ��� ���� �� ����� ���� ���.');
end;

procedure TFrAddFinancialNote_New.SpeedButton4Click(Sender: TObject);
begin
  _FinancialNoteid:=Dm.Select_FinancialNote_Like_NewFinancialNote_DetailID.AsInteger;
  if DM.Select_FinancialNote_Like_NewFinancialNoteTypeID.AsInteger<>1 then
    raise Exception.Create( '��� ���� �� ��� �� ����');

  if Dm.Select_FinancialNote_Like_NewNoteStatusID.AsInteger=2 then
    UpdateFinancialNote_Detail(Dm.Select_FinancialNote_Like_NewFinancialNote_DetailID.AsString,'4')
  else
    raise Exception.Create( '��� ��� �� ����� ���� ����');
end;

procedure TFrAddFinancialNote_New.SpeedButton5Click(Sender: TObject);
begin
  _FinancialNoteid:=Dm.Select_FinancialNote_Like_NewFinancialNote_DetailID.AsInteger;

  if DM.Select_FinancialNote_Like_NewFinancialNoteTypeID.AsInteger<>1 then
    raise Exception.Create( '��� ���� �� ��� �� ����');

  if (Dm.Select_FinancialNote_Like_NewNoteStatusID.AsInteger=2) or
     (Dm.Select_FinancialNote_Like_NewNoteStatusID.AsInteger=1) then
    UpdateFinancialNote_Detail(Dm.Select_FinancialNote_Like_NewFinancialNote_DetailID.AsString, '5')
  else
    raise Exception.Create( '��� ��� �� ����� ���� �� ����� ����');
end;

procedure TFrAddFinancialNote_New.DBGrid1EditButtonClick(Sender: TObject);
begin
  if (Trim(_FinancialNote_Field1)<>'') and
     (Trim(_FinancialNote_Field2)<>'') and
     (Trim(_FinancialNote_Where) <>'') and
     (Trim(_FinancialNote_Table) <>'') then
  begin
    if (DBGrid1.SelectedIndex=2) then
    begin
      Dm.ADSForcePayment.Close;
      Dm.ADSForcePayment.CommandText:='Select '+_FinancialNote_Field1+' , '+
                                                _FinancialNote_Field2+' From '+
                                                _FinancialNote_Table +' Where 1=1 '+_FinancialNote_Where;
      Dm.ADSForcePayment.Open;
      Dm.SearchTable(dm.ADSForcePayment,_FinancialNote_Field1,_FinancialNote_Field2);
      dm.FinancialNote_DetailForcePaymentID.AsInteger:=dm.SearchResult;
      dm.FinancialNote_DetailNoteDate.asstring:=
      Qry_GetResult('Select MatureDate From ForcePayment Where (ForcePaymentID = '+inttostr(dm.SearchResult)+')',Dm.YeganehConnection)
    end;

    if (DBGrid1.SelectedIndex=3) then
    begin
      Dm.ADSForcePayment.Close;
      Dm.ADSForcePayment.CommandText:='Select '+_FinancialNote_Field1+' , '+
                                                _FinancialNote_Field2+' From '+
                                                _FinancialNote_Table +' Where 1=1 '+_FinancialNote_Where;
      Dm.ADSForcePayment.Open;
      Dm.SearchTable(dm.ADSForcePayment,_FinancialNote_Field1,_FinancialNote_Field2);
      dm.FinancialNote_DetailForcePaymentID.AsInteger:=dm.SearchResult;
      dm.FinancialNote_DetailNoteDate.asstring:=Qry_GetResult('Select MatureDate From ForcePayment Where (ForcePaymentID = '+inttostr(dm.SearchResult)+')',Dm.YeganehConnection);

      try
        dm.FinancialNote_DetailFND_LoanId.asstring:=Qry_GetResult('Select Top 1 LoanId From loan Where loanid=(Select Top 1 [ParentID] From ' + _FinancialNote_Table + ' Where 1=1 ' + _FinancialNote_Where + ') ',Dm.YeganehConnection);
        dm.FinancialNote_DetailFND_LoanNo.asstring:=Qry_GetResult('Select Top 1 LoanNO From loan Where loanid=(Select Top 1 [ParentID] From ' + _FinancialNote_Table + ' Where 1=1 ' + _FinancialNote_Where + ') ',Dm.YeganehConnection);
      except
      end;
    end;
  end;

  if (DBGrid1.SelectedIndex=6) then
  begin
    Dm.adsBank.Close;
    //Dm.adsBank.CommandText:='SELECT BankID,BankTitle,Branch,BranchCode,BankAccountNo FROM  Bank ';
    //Dm.adsBank.CommandText:='SELECT BankID,BankTitle FROM  Bank ';     //Commented   by Hadi Mohamed 920228
    Dm.adsBank.Open;
    Dm.SearchTable(dm.adsBank,'BankID','BankTitle');
    dm.FinancialNote_DetailBankID.AsInteger:=dm.SearchResult;
    {Dm.Bank_New.Locate('BankID',dm.SearchResult,[loCaseInsensitive]);
    Dm.FinancialNote_DetailBankTitle.AsString     := Dm.BankBankTitle.AsString;
    Dm.FinancialNote_DetailBranch.AsString        := Dm.BankBranch.AsString;
    Dm.FinancialNote_DetailBranchCode.AsString    := Dm.BankBranchCode.AsString;
    Dm.FinancialNote_DetailBankAccountNo.AsString := Dm.BankBankAccountNo.AsString;}  //Commented   by Hadi Mohamed 920228
    with TADOQuery.Create(nil) do
    begin
      Connection := dm.YeganehConnection;
      SQL.Text :=  'Select BankID, BankTitle, Branch, BranchCode, BankAccountNo From Bank Where BankID=' + IntToStr(dm.SearchResult);
      Open;
      Dm.FinancialNote_DetailBankTitle.AsString     := fieldbyname('BankTitle').AsString;
      Dm.FinancialNote_DetailBranch.AsString        := fieldbyname('Branch').AsString;
      Dm.FinancialNote_DetailBranchCode.AsString    := fieldbyname('BranchCode').AsString;
      Dm.FinancialNote_DetailBankAccountNo.AsString := fieldbyname('BankAccountNo').AsString;
      free;
    end;
    //Dm.FinancialNote_DetailBankAccountNo.AsString := Qry_GetResult('SELECT BankAccountNo FROM BANK WHERE  (BankID = '+inttostr(dm.SearchResult)+')',Dm.YeganehConnection)
  end;
end;

procedure TFrAddFinancialNote_New.btnSearchClick(Sender: TObject);
begin
  SearchEdit.Text := '';
  FinancialNoteStatuse.KeyValue := Null;
  Open_FinancialNote_Like_NEW(0, SearchEdit.Text, 1);
end;

procedure TFrAddFinancialNote_New.FinancialNoteStatuseCloseUp(Sender: TObject);
begin
  if FinancialNoteStatuse.KeyValue <> NULL then
    Open_FinancialNote_Like_NEW(FinancialNoteStatuse.KeyValue, SearchEdit.Text, 0)
end;

procedure TFrAddFinancialNote_New.SpeedButton6Click(Sender: TObject);
begin
 if not CbFinancialType.Checked then
   Open_FinancialNote_Like_NEW(0,SearchEdit.Text,0)
 else
   Open_FinancialNote_Like_NEW(FinancialNoteStatuse.KeyValue,SearchEdit.Text,0)
end;

procedure TFrAddFinancialNote_New.BitBtn12Click(Sender: TObject);
var strmessage : string;
begin
  { TODO -oparsa : 14030701 }
  (*
  if SumAmountFinancialNote(Dm.FinancialNote_MasterFinancialNote_MasterID.AsInteger) <> Dm.FinancialNote_MasterAmount.AsInteger then
  begin
    DBNavigator1.Enabled:=False;
    ShowMessage( '��� ���� ' + Dm.SetDocTitle + ' ������ ���. ');
  end;

  if Dm.FinancialNote_MasterNoteCount.AsInteger <> Dm.FinancialNote_Detail.RecordCount then
  begin
    DBNavigator1.Enabled := False;
    ShowMessage( '����� ' + Dm.SetDocTitle + ' ������ ��� ');
  end;
  *)
  strmessage := '' ;
  if (SumAmountFinancialNote(Dm.FinancialNote_MasterFinancialNote_MasterID.AsInteger) <> Dm.FinancialNote_MasterAmount.AsInteger )   or
     (Dm.FinancialNote_MasterNoteCount.AsInteger <> Dm.FinancialNote_Detail.RecordCount) then
  begin
    DBNavigator1.Enabled:=False;

    if SumAmountFinancialNote(Dm.FinancialNote_MasterFinancialNote_MasterID.AsInteger) <> Dm.FinancialNote_MasterAmount.AsInteger then
    begin
      strmessage :=  '��� ���� ' + Dm.SetDocTitle + ' ������ ���. ' ;
    end;

    if Dm.FinancialNote_MasterNoteCount.AsInteger <> Dm.FinancialNote_Detail.RecordCount then
    begin

      strmessage :=  strmessage + char(10)+ '����� ' + Dm.SetDocTitle + ' ������ ��� ' ;
    end;

  end;

  if  strmessage <> '' then
   ShowMessage(strmessage)
  else ShowMessage('����/����� �� ���� �� ����') ;
  { TODO -oparsa : 14030701 }

end;

procedure TFrAddFinancialNote_New.BitBtn13Click(Sender: TObject);
begin
  Close;
end;

procedure TFrAddFinancialNote_New.FormCanResize(Sender: TObject;
  var NewWidth, NewHeight: Integer; var Resize: Boolean);
begin
  { TODO -oparsa : 14030628- bug369 }

  if (NewWidth < BaseNewWidth)  or (NewHeight < BaseNewHeight) then
    Resize := False
  else Resize := True;

  { TODO -oparsa : 14030628- bug369 }
end;

procedure TFrAddFinancialNote_New.FormCreate(Sender: TObject);
begin
  //DBNav_Setup(DBNavigator1);  
end;

end.
