 unit AddLoanRequestU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ActnMan, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList,
  Buttons, DBActns, UemsVCL, Grids, DBGrids, YDbgrid, XPStyleActnCtrls,
  ComCtrls, xpPages, YWhereEdit, Menus, DB, ADODB, SolarCalendarPackage;

type
  TFrAddLoanRequest = class(TYBaseForm)
    ActionManager1: TActionManager;
    Acancel: TDataSetCancel;
    asearchCheque: TAction;
    Action1: TAction;
    Apost: TAction;
    xpPageControl1: TPageControl;
    xpTabSheet1: TTabSheet;
    xpTabSheet2: TTabSheet;
    PAccountDeatil: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    SearchEdit: TEdit;
    YDBGrid1: TYDBGrid;
    PrintBtn: TBitBtn;
    DoBtn: TBitBtn;
    xpBtnAddLetter: TBitBtn;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    YWhereEdit7: TYWhereEdit;
    YWhereEdit1: TYWhereEdit;
    YWhereEdit3: TYWhereEdit;
    YWhereEdit4: TYWhereEdit;
    YWhereEdit5: TYWhereEdit;
    YWhereEdit6: TYWhereEdit;
    xpBitBtn1: TBitBtn;
    xpBitBtn2: TBitBtn;
    YDBGrid2: TYDBGrid;
    Number: TLabel;
    xpBitBtn3: TBitBtn;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    MERequestDate: TSolarDatePicker;
    Label9: TLabel;
    YWhereEdit2: TYWhereEdit;
    procedure SearchEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RefreshLoanRequest;
    procedure FormCreate(Sender: TObject);
    procedure AExitExecute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ApostExecute(Sender: TObject);
    procedure DoBtnClick(Sender: TObject);
    procedure xpBtnAddLetterClick(Sender: TObject);
    procedure PrintBtnClick(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure xpBitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure xpBitBtn2Click(Sender: TObject);
    procedure xpPageControl1Changing(Sender: TObject;
      var AllowChange: Boolean);
    procedure YWhereEdit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrAddLoanRequest: TFrAddLoanRequest;
implementation

uses dmu, YShamsiDate, BusinessLayer, AccountDetailsU,
  QrPaymentU, AddFinancialNoteU, FinancialNoteDetailU, LoanRequestDialogU,
  AddattachmentU;
{$R *.dfm}

var  AccountID :integer;

procedure TFrAddLoanRequest.SearchEditKeyDown(Sender:TObject;var Key:Word;Shift:TShiftState);
Begin
  inherited;
  if key=13 then
    RefreshLoanRequest
end;
procedure TFrAddLoanRequest.RefreshLoanRequest;
begin

    AccountID:=Get_AccountID_ByAccountNo(SearchEdit.Text);
    if AccountID<0 then
     begin
      ShowMessage('Çíä ÍÓÇÈ ÈÓÊå ÔÏå ÇÓÊ');
      SearchEdit.SetFocus;
     end
   else
    if AccountID=0 then
     begin
       ShowMessage('Çíä ÔãÇÑå ÍÓÇÈ æÌæÏ äÏÇÑÏ');
      IF xpPageControl1.ActivePageIndex=1 THEN
        SearchEdit.SetFocus;
     end
    else
     with dm,Select_LoanRequest do
     begin
      Open_LoanRequest_ByAccountID(AccountID);
      FrAccountDetails.AccountID:=AccountID;
     end;
 end;

procedure TFrAddLoanRequest.FormCreate(Sender: TObject);
begin
  inherited;
 FrAccountDetails:=TFrAccountDetails.Create(Application);
 FrAccountDetails.ShowInPanel( PAccountDeatil);
end;

procedure TFrAddLoanRequest.AExitExecute(Sender: TObject);
begin
  inherited;
dm.Select_Payment.Cancel;
Close;
end;

procedure TFrAddLoanRequest.BitBtn1Click(Sender: TObject);
begin
  inherited;
Close;
end;

procedure TFrAddLoanRequest.ApostExecute(Sender: TObject);
begin
  inherited;
 dm.Select_PaymentFinancialNoteID.AsInteger:=FrFinancialNoteDetail.FinancialNoteid;
dm.Select_Payment.Post;
PrintBtn.show;
DoBtn.Enabled:=false;
end;

procedure TFrAddLoanRequest.DoBtnClick(Sender: TObject);
begin
  inherited;
  Open_LoanRequest(0);
  Dm.Select_LoanRequest.Insert;
  Dm.Select_LoanRequestExpired.AsBoolean:=false;
  Dm.Select_LoanRequestAccountID.AsInteger:=AccountID;
  {Ranjbar}
  //Dm.Select_LoanRequestRequestDate.AsString:=_today;
  Dm.Select_LoanRequestRequestDate.AsString:=_today;
  //---

  FrLoanRequestDialog:=TFrLoanRequestDialog.Create(Application);
  FrLoanRequestDialog.ShowModal;
  Open_LoanRequest_ByAccountID(AccountID);
end;

procedure TFrAddLoanRequest.xpBtnAddLetterClick(Sender: TObject);
begin
  inherited;
  Open_LoanRequest(dm.Select_LoanRequest_ByAccountIDLoanRequestID.AsInteger);
  Dm.Select_LoanRequest.edit;
  FrLoanRequestDialog:=TFrLoanRequestDialog.Create(Application);
  FrLoanRequestDialog.ShowModal;
  Open_LoanRequest_ByAccountID(AccountID);

end;

procedure TFrAddLoanRequest.PrintBtnClick(Sender: TObject);
begin
  inherited;
  if messageShowString('ÂíÇ ÇÒ ÍÐÝ Çíä ÏÑÎæÇÓÊ ãØãÆä åÓÊíÏ',True) then
  begin
    delete_LoanRequest(dm.Select_LoanRequest_ByAccountIDLoanRequestID.AsInteger);
    Open_LoanRequest_ByAccountID(AccountID);
  end;
end;

procedure TFrAddLoanRequest.xpBitBtn1Click(Sender: TObject);
Var
   i: byte;
   Where: string;
   RequestDate : String;
begin
   Where:='';
   {Ranjbar}
   IF (YWhereEdit1.TEXT<>'') AND(YWhereEdit2.TEXT='') THEN
       YWhereEdit2.TEXT:=YWhereEdit1.TEXT;

   IF (YWhereEdit2.TEXT<>'') AND(YWhereEdit1.TEXT='') THEN
       YWhereEdit1.TEXT:=YWhereEdit2.TEXT;

   IF (YWhereEdit1.TEXT <> '') AND
      (YWhereEdit2.TEXT  <>'') THEN
   Where :='REPLACE(Account.AccountNo, ''DEL'', '''') Between '+ YWhereEdit1.TEXT +' AND '+ YWhereEdit2.TEXT ;

   for i:=3 to 7 do
   //---
      if TYWhereEdit(FindComponent('YWhereEdit'+IntToStr(i))).Resultwhere<>'' then
         if Where='' then
            Where := TYWhereEdit(FindComponent('YWhereEdit'+IntToStr(i))).Resultwhere
         else
            Where := Where + ' And ' + TYWhereEdit(FindComponent('YWhereEdit'+IntToStr(i))).Resultwhere;

   {Ranjbar}
   RequestDate := Txt_Del254(MERequestDate.Text);
   if (RequestDate <> '13  /  /  ')And isValidDate(RequestDate) then
      if Where = '' then
         Where := ' RequestDate = ' + QuotedStr(RequestDate)
      else
         Where := Where + ' And RequestDate = ' + QuotedStr(RequestDate);
   //---
   Open_Report_LoanRequest(Where);
   Number.Caption := 'ÊÚÏÇÏ ' + IntToStr(dm.Report_LoanRequest.RecordCount);
end;

procedure TFrAddLoanRequest.xpBitBtn3Click(Sender: TObject);
begin
  inherited;
  FrAddAttachment:=TFrAddAttachment.Create(Application);
  FrAddAttachment.DocumnetID:=dm.Select_LoanRequest_ByAccountIDLoanRequestID.AsInteger;
  FrAddAttachment.documentTypeID:=4;
  FrAddAttachment.ShowModal;
end;

procedure TFrAddLoanRequest.FormShow(Sender: TObject);
begin
  inherited;
  {Ranjbar Ver3}
  DBGrid_LoadColumns(Self.Name,YDBGrid1);
  DBGrid_LoadColumns(Self.Name,YDBGrid2);
  xpBitBtn1.Click;
end;

procedure TFrAddLoanRequest.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  {Ranjbar Ver3}
  DBGrid_SaveColumns(Self.Name,YDBGrid1);
  DBGrid_SaveColumns(Self.Name,YDBGrid2);
end;

procedure TFrAddLoanRequest.xpBitBtn2Click(Sender: TObject);
var
  I:integer;
begin
  inherited;
  {Ranjbar}
  for i:=1 to 6 do
    TYWhereEdit(FindComponent('YWhereEdit'+IntToStr(i))).Clear;
  MERequestDate.Text := 'þ13  /  /  ';
  //---
end;

procedure TFrAddLoanRequest.xpPageControl1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
  inherited;
  if xpPageControl1.ActivePageIndex=0 then
  begin
    SearchEdit.Text:=Dm.Report_LoanRequestAccountNo.AsString;
    RefreshLoanRequest;
  end
  else
  begin
    xpBitBtn1.Click;
    if SearchEdit.Text<>'' then
      Dm.Report_LoanRequest.Locate('AccountNo',SearchEdit.Text,[loCaseInsensitive])
  end;
end;

procedure TFrAddLoanRequest.YWhereEdit1Change(Sender: TObject);
begin
  inherited;
  YWhereEdit2.Text:=YWhereEdit1.Text;
end;

end.
