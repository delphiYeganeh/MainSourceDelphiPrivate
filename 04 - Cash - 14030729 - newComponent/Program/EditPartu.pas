unit EditPartu;

interface

uses
  Windows, baseunit,Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList,DBGrids,StdCtrls,DBCtrls, Mask, UemsVCL,Ydbgrid,db,
  ComCtrls, Grids, ExtCtrls, Menus, Buttons, ADODB, AdvGlowButton;

type
  TFrEditPart = class(TYBaseForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Panel2: TPanel;
    DeletePart: TAdvGlowButton;
    xpBitBtn2: TAdvGlowButton;
    xpBitBtn1: TAdvGlowButton;
    xpBitBtn3: TAdvGlowButton;
    xpBitBtn4: TAdvGlowButton;
    Panel3: TPanel;
    YDBGrid1: TYDBGrid;
    pnlMain: TPanel;
    procedure xpBitBtn2Click(Sender: TObject);
    procedure DeletePartClick(Sender: TObject);
    procedure YDBGrid1NeedFontCondition(Column:TColumn;State:TGridDrawState;var F:TFont);
    procedure FormShow(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure xpBitBtn3Click(Sender: TObject);
    procedure xpBitBtn4Click(Sender: TObject);
    procedure YDBGrid1DblClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    
  end;

var
  FrEditPart: TFrEditPart;

implementation

uses
  dmu, BusinessLayer, AddForcePaymentU, YShamsiDate, MainU, PayPartU;

{$R *.dfm}

procedure TFrEditPart.xpBitBtn2Click(Sender: TObject);
begin
  inherited;
  Close;
  with dm,Select_Loan_Parts do
    if state=dsedit then
      post;
end;

procedure TFrEditPart.DeletePartClick(Sender: TObject);
begin
  inherited;
  if dm.Select_Loan_PartsPaid.AsBoolean then
    if messageShowString('ÂíÇ ÇÒ ÍĞİ ÑÏÇÎÊí Çíä ŞÓØ ãØãÆä åÓÊíÏ',true) then
    begin
      UnPay_ForcePayment(Dm.Select_Loan_PartsForcePaymentID.AsInteger);
      Open_Loan_Parts(dm.Select_LoanLoanID.AsInteger);
    end;
end;

procedure TFrEditPart.YDBGrid1NeedFontCondition(Column: TColumn;
  State: TGridDrawState; var F: TFont);
begin
  inherited;
  if dm.Select_Loan_PartsPaid.AsBoolean then
    f.Style:=f.Style+[fsbold]
  else
    f.Style:=f.Style-[fsbold]
end;

procedure TFrEditPart.FormShow(Sender: TObject);
begin
  inherited;
  Open_Loan_Parts(dm.Select_LoanLoanID.AsInteger);
   {Ranjbar Ver3}
  DBGrid_LoadColumns(Self.Name,YDBGrid1);
end;

procedure TFrEditPart.xpBitBtn1Click(Sender: TObject);
VAR
  SqlText:STRING;
begin
  inherited;
  with Dm,Select_ForcePayment_byForcePaymentID do
  begin
    Open_ForcePayment_byForcePaymentID(0);
    Insert;
    Select_ForcePayment_byForcePaymentIDParentID.AsInteger:=Select_LoanLoanID.AsInteger;
    Select_ForcePayment_byForcePaymentIDForceTypeID.AsInteger:=1;
    Select_ForcePayment_byForcePaymentIDPaid.AsBoolean:=False;
    SqlText:=' SELECT     ISNULL(MAX(OrderNo),0)+1 AS MAXO  FROM ForcePayment WHERE     (ParentID = '+Select_LoanLoanID.AsString+') AND (ForceTypeID = 1)';

    Select_ForcePayment_byForcePaymentIDOrderNo.AsInteger:=strtoint(Qry_GetResult(sqlText,Dm.YeganehConnection));
    frAddForcePayment:=TfrAddForcePayment.Create(Application);
    frAddForcePayment.ShowModal;
    Open_Loan_Parts(dm.Select_LoanLoanID.AsInteger);
  end;
end;

procedure TFrEditPart.FormClose(Sender: TObject; var Action: TCloseAction);
var
  sum: integer;
begin
  inherited;

  with dm,Select_Loan_Parts do
  begin
    if state=dsedit then
      post;
    first;
    sum:=0;

    while not eof do
    begin
      sum:=sum+Select_Loan_PartsAmount.AsInteger;
      next;
    end;

    if sum>Dm.Select_LoanAmount.AsInteger then
    begin
      ShowMessage('ãÈáÛ ÇŞÓÇØ '+ IntToStr(sum-Dm.Select_LoanAmount.AsInteger)+' '+Get_SystemSetting('EdtMoneyUnit')+' '+' ÇÒ ãÈáÛ æÇã ÈíÔÊÑ ÇÓÊ  áØİÇ Âä ÑÇ ÇÕáÇÍ İÑãÇííÏ');
      abort;
    end;

    if sum<Dm.Select_LoanAmount.AsInteger then
    begin
      ShowMessage('ãÈáÛ ÇŞÓÇØ '+ IntToStr(Dm.Select_LoanAmount.AsInteger-sum)+' '+Get_SystemSetting('EdtMoneyUnit')+' '+'  ÇÒ ãÈáÛ æÇã ˜ãÊÑ ÇÓÊ áØİÇ Âä ÑÇ ÇÕáÇÍ İÑãÇííÏ');
      abort;
    end;
  end ;
  {Ranjbar Ver3}
  DBGrid_SaveColumns(Self.Name,YDBGrid1);
end;

procedure TFrEditPart.xpBitBtn3Click(Sender: TObject);
begin
  inherited;
  if dm.Select_Loan_PartsPaid.AsBoolean then
  begin
    ShowMessage(' ÇŞÓÇØ ÑÏÇÎÊ ÔÏå ÑÇ äãí ÊæÇä ÍĞİ ˜ÑÏ');
    exit;
  end
  else
  if messageShowString('ãÌãæÚ ãÈÇáÛ ÇŞÓÇØ ÈÇíÏ ÈÇ ãÈáÛ æÇã åãÎæÇäí ÏÇÔÊå ÈÇÔÏ ÂíÇ ÇÒ ÍĞİ Çíä ŞÓØ ÇØãíäÇä ÏÇÑíÏ',true) then
    dm.Select_Loan_Parts.Delete;
end;

procedure TFrEditPart.xpBitBtn4Click(Sender: TObject);
begin
  inherited;
  if dm.Select_Loan_PartsPaid.AsBoolean then
  begin
    ShowMessage(' ÇŞÓÇØ ÑÏÇÎÊ ÔÏå ÑÇ äãí ÊæÇä æíÑÇíÔ ˜ÑÏ');
    exit;
  end;

  with Dm,Select_ForcePayment_byForcePaymentID do
  begin
    Open_ForcePayment_byForcePaymentID(dm.Select_Loan_PartsForcePaymentID.AsInteger);
    edit;
    frAddForcePayment:=TfrAddForcePayment.Create(Application);
    frAddForcePayment.ShowModal;
    Open_Loan_Parts(dm.Select_LoanLoanID.AsInteger);
  end;
end;

procedure TFrEditPart.YDBGrid1DblClick(Sender: TObject);
var
  Book : TBookmark;
begin
  inherited;
  //Hamed_Ansari_Hasan_Ahmadvand_990520_S
  (*
  FrPayPart := TFrPayPart.Create(Application);
  try
   FrPayPart.SearchEdit.Text:=dm.Report_ForcePaymentLoanNO.AsString;
   FrPayPart.RefreshPart;
  except
  end;
   FrPayPart.ShowModal;
  *)
  Book := YDBGrid1.DataSource.DataSet.GetBookmark;
  xpBitBtn4.Click;
  YDBGrid1.DataSource.DataSet.GotoBookmark(Book);
  YDBGrid1.DataSource.DataSet.FreeBookmark(Book);
  //Hamed_Ansari_Hasan_Ahmadvand_990520_E
end;

end.
