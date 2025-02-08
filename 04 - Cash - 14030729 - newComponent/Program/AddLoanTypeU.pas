 unit AddLoanTypeU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtCtrls, StdCtrls, Mask, DBCtrls, ActnList, Buttons,
  DBActns, ActnMan, XPStyleActnCtrls, Menus, DB, ADODB, Grids, DBGrids,
  AdvGlowButton;

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
    btnGroupLoan: TAdvGlowButton;
    BitBtn4: TAdvGlowButton;
    BitBtn2: TAdvGlowButton;
    BitBtn8: TAdvGlowButton;
    BitBtn7: TAdvGlowButton;
    BitBtn6: TAdvGlowButton;
    BitBtn5: TAdvGlowButton;
    btnSave: TAdvGlowButton;
    BitBtn1: TAdvGlowButton;
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
    dbeLoanTypeTitle: TDBEdit;
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
    dbeLoanAmountType: TDBEdit;
    DBCheckBox2: TDBCheckBox;
    pnlMain: TPanel;
    procedure DataSetDelete1Execute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBCheckBox1Click(Sender: TObject);
    procedure btnGroupLoanClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSaveClick(Sender: TObject);
    procedure AExitExecute(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
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
   Dm.LoanTypeLoanTypeTitle.AsString  := '' ;
   Dm.LoanTypeLoanAmounGroup.AsString  := '' ;

   //---
    BitBtn2.Enabled := not( Dm.LoanType.State in [dsEdit, dsInsert]) ;
    BitBtn4.Enabled := not( Dm.LoanType.State in [dsEdit, dsInsert]) ;
    BitBtn1.Enabled := not( Dm.LoanType.State in [dsEdit, dsInsert]) ;
   dbeLoanTypeTitle.SetFocus;
end;
                               
procedure TFrAddLoanType.DBCheckBox1Click(Sender: TObject);
begin
   inherited;
   Panel1.Visible:=TDBCheckBox(sender).Checked;
end;

procedure TFrAddLoanType.btnGroupLoanClick(Sender: TObject);
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
  if Dm.LoanType.State in [dsEdit, dsInsert] then
     Dm.LoanType.Cancel;
   QrPeriod.Close;
   //---
end;

procedure TFrAddLoanType.btnSaveClick(Sender: TObject);
begin
  inherited;
  btnSave.SetFocus ;
  if (dm.LoanTypeLoanTypeTitle.IsNull)or(dm.LoanTypeLoanTypeTitle.AsString='') Then
  BEGIN
    YBaseForm.MessageShowString('·ÿ›« „ﬁœ«— ⁄‰Ê«‰ Ê«„ Ê«—œ ‰„«ÌÌœ',false);
    dbeLoanTypeTitle.SetFocus;
    ABORT;
  END;

  if (dm.LoanTypeLoanAmounGroup.IsNull)or(dm.LoanTypeLoanAmounGroup.AsString='') Then
  BEGIN
    YBaseForm.MessageShowString('·ÿ›« ê—ÊÂ „»«·€ ÅÌ‘ ›—÷ —« „‘Œ’ ‰„«ÌÌœ',false);
    dbeLoanAmountType.SetFocus;
    ABORT;
  END;
   If (Qry_GetResult( ' Select  isnull((Select Top 1 LoanAmounGroup '+
                      ' From LoanAmount '+
                      ' Where LoanAmounGroup='+Dm.LoanTypeLoanAmounGroup.AsString+') ,0)',Dm.YeganehConnection)='0') then
   Begin
      //YBaseForm.MessageShowString('ê—ÊÂ ‰«„⁄ »— „Ì »«‘œ.',false);
      YBaseForm.MessageShowString('ê—ÊÂ „»«·€ ÅÌ‘ ›—÷ Ê«—œ ‘œÂ ’ÕÌÕ ‰„Ì »«‘œ »—«Ì »——”Ì »Â ›—„ ê—ÊÂ „»«·€ ÅÌ‘ ›—÷ „—«Ã⁄Â ‰„«ÌÌœ',false);
      btnGroupLoan.SetFocus;
      Abort;
   end;
   Dm.LoanType.Post ;
  BitBtn2.Enabled := not( Dm.LoanType.State in [dsEdit, dsInsert]) ;
  BitBtn4.Enabled := not( Dm.LoanType.State in [dsEdit, dsInsert]) ;
  BitBtn1.Enabled := not( Dm.LoanType.State in [dsEdit, dsInsert]) ;
end;

procedure TFrAddLoanType.AExitExecute(Sender: TObject);
begin
  inherited;
  if Dm.LoanType.State in [dsEdit, dsInsert] then
     Dm.LoanType.Cancel;

end;

procedure TFrAddLoanType.BitBtn5Click(Sender: TObject);
begin
  inherited;
  BitBtn2.Enabled := not( Dm.LoanType.State in [dsEdit, dsInsert]) ;
  BitBtn4.Enabled := not( Dm.LoanType.State in [dsEdit, dsInsert]) ;
  BitBtn1.Enabled := not( Dm.LoanType.State in [dsEdit, dsInsert]) ;
end;

procedure TFrAddLoanType.BitBtn7Click(Sender: TObject);
begin
  inherited;
  if Dm.LoanType.State in [dsEdit, dsInsert] then
     Dm.LoanType.Cancel;
  BitBtn2.Enabled := not( Dm.LoanType.State in [dsEdit, dsInsert]) ;
  BitBtn4.Enabled := not( Dm.LoanType.State in [dsEdit, dsInsert]) ;
  BitBtn1.Enabled := not( Dm.LoanType.State in [dsEdit, dsInsert]) ;
end;

end.
