 unit AddLoanTypeU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtCtrls, StdCtrls, Mask, DBCtrls, ActnList, Buttons,
  DBActns, ActnMan, XPStyleActnCtrls, Menus, DB, ADODB, Grids, DBGrids;

type
  TFrAddLoanType = class(TYBaseForm)
    ActionManager1: TActionManager;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    DataSetNext1: TDataSetNext;
    DataSetPrior1: TDataSetPrior;
    Panel2: TPanel;
    xpBitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    Panel11: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label1: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Panel1: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit9: TDBEdit;
    DBLkCBPeriod: TDBLookupComboBox;
    QrPeriod: TADOQuery;
    DSPeriod: TDataSource;
    QrPeriodPeriod: TStringField;
    Label13: TLabel;
    DBEdit10: TDBEdit;
    DBCheckBox2: TDBCheckBox;
    procedure DataSetDelete1Execute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBCheckBox1Click(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public
    declarations }

  end;

var
  FrAddLoanType: TFrAddLoanType;

implementation

uses DMU, AddLoanU, AddLoanAmountU, BusinessLayer, YShamsiDate;

{$R *.dfm}

procedure TFrAddLoanType.DataSetDelete1Execute(Sender: TObject);
begin
  inherited;
  if LoanTypeID_Has_loan(dm.LoanTypeLoanTypeID.AsInteger) then
    ShowMessage('Ê«„ Â«ÌÌ »« «Ì‰ ‰Ê⁄ Ê«„ ÊÃÊœ œ«—œ  ·–« ‰„Ì  Ê«‰ ¬‰ —« Õ–› ò—œ')
  else
  if MessageDlg('«Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœ', mtWarning,[mbYes,mbno],0)=mryes then
    dm.LoanType.Delete;
end;

procedure TFrAddLoanType.BitBtn1Click(Sender: TObject);
begin
   inherited;
   Dm.LoanType.Insert;
   {Ranjbar 88.07.18}
   Dm.LoanTypePeriod.AsString := '„«Â';
   //---
   DBEdit2.SetFocus;
end;
                               
procedure TFrAddLoanType.DBCheckBox1Click(Sender: TObject);
begin
   inherited;
   Panel1.Visible:=TDBCheckBox(sender).Checked;
end;

procedure TFrAddLoanType.xpBitBtn1Click(Sender: TObject);
begin
  inherited;
    FrAddLoanAmount:=TFrAddLoanAmount.Create(Application);
    FrAddLoanAmount.ShowModal;
//    if (Dm.DLoanType.State in [dsInsert,dsEdit]) and
//       (dm._dEfultGroup<>0) then
//      Dm.LoanTypeLoanAmounGroup.AsInteger:= dm._dEfultGroup;
 

end;

procedure TFrAddLoanType.FormCreate(Sender: TObject);
begin
  inherited;
    //
end;

procedure TFrAddLoanType.FormShow(Sender: TObject);
begin
   inherited;
   {Ranjbar 88.07.18}
   QrPeriod.Open;
   //---
end;

procedure TFrAddLoanType.FormClose(Sender:TObject;
                               Var Action:TCloseAction);
begin
   inherited;
   {Ranjbar 88.07.18}
   QrPeriod.Close;
   //---
end;

procedure TFrAddLoanType.BitBtn3Click(Sender: TObject);
begin
  inherited;
  if (dm.LoanTypeLoanAmounGroup.IsNull)or(dm.LoanTypeLoanAmounGroup.AsString='') Then
  BEGIN
    YBaseForm.MessageShowString('·ÿ›« ê—ÊÂ „»«·€ ÅÌ‘ ›—÷ —« „‘Œ’ ‰„«ÌÌœ',false);
    ABORT;
  END;
   If (Qry_GetResult( ' Select  isnull((Select Top 1 LoanAmounGroup '+
                      ' From LoanAmount '+
                      ' Where LoanAmounGroup='+Dm.LoanTypeLoanAmounGroup.AsString+') ,0)',Dm.YeganehConnection)='0') then
   Begin
      YBaseForm.MessageShowString('ê—ÊÂ ‰«„⁄ »— „Ì »«‘œ.',false);
      Abort;
   end;
   Dm.LoanType.Post
end;

end.
