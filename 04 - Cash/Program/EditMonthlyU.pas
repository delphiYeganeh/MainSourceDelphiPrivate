unit EditMonthlyU;

interface

uses
  Windows, baseunit,Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList,DBGrids,StdCtrls,DBCtrls, Mask, UemsVCL,Ydbgrid,db,
  ComCtrls, Grids, ExtCtrls, Menus, Buttons, ADODB;

type
  TFrEditMonthly = class(TYBaseForm)
    Panel1: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    YDBGrid1: TYDBGrid;
    xpBitBtn2: TBitBtn;
    DeletePart: TBitBtn;
    xpBitBtn4: TBitBtn;
    xpBitBtn1: TBitBtn;
    xpBitBtn3: TBitBtn;
    procedure xpBitBtn2Click(Sender: TObject);
    procedure DeletePartClick(Sender: TObject);
    procedure YDBGrid1NeedFontCondition(Column: TColumn;
      State: TGridDrawState; var F: TFont);
    procedure xpBitBtn3Click(Sender: TObject);
    procedure xpBitBtn4Click(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FrEditMonthly: TFrEditMonthly;

implementation

uses dmu, BusinessLayer, AddForcePaymentU, YShamsiDate;

{$R *.dfm}

procedure TFrEditMonthly.xpBitBtn2Click(Sender: TObject);
begin
  inherited;
  with dm,Select_Account_Monthlys do
    if state=dsedit then
      post;
  Close;
end;

procedure TFrEditMonthly.DeletePartClick(Sender: TObject);
begin
  inherited;
  if CanDelete_MonthlyPayment(dm.Report_AccountAccountID.AsInteger) then
  begin
    if messageShowString('¬Ì« «“ Õ–› Å—œ«Œ Ì «Ì‰ „«ÂÌ«‰Â „ÿ„∆‰ Â” Ìœ',true) then
    begin
      UnPay_ForcePayment(Dm.Select_Account_MonthlysForcePaymentID.AsInteger);
      Open_Account_Monthlys(dm.Report_AccountAccountID.AsInteger);
    end;
  end
  else
    ShowMessage('«Ì‰ ‘Œ’  ”ÊÌÂ ‰„ÊœÂ «”  . «„ò«‰ Õ–› ÊÃÊœ ‰œ«—œ');
end;

procedure TFrEditMonthly.YDBGrid1NeedFontCondition(Column: TColumn;
  State: TGridDrawState; var F: TFont);
begin
  inherited;
  if dm.Select_Account_MonthlysPaid.AsBoolean then
    f.Style:=f.Style+[fsbold]
  else
    f.Style:=f.Style-[fsbold]
end;

procedure TFrEditMonthly.xpBitBtn3Click(Sender: TObject);
begin
  inherited;
  with Dm,Select_ForcePayment_byForcePaymentID do
  begin
    Open_ForcePayment_byForcePaymentID(0);
    Insert;
    Select_ForcePayment_byForcePaymentIDParentID.AsInteger:=Report_AccountAccountID.AsInteger;
    Select_ForcePayment_byForcePaymentIDForceTypeID.AsInteger:=2;

    Select_ForcePayment_byForcePaymentIDPaid.AsBoolean:=False;
    frAddForcePayment:=TfrAddForcePayment.Create(Application);
    frAddForcePayment.InterestPanel.Hide;
    frAddForcePayment.ShowModal;
    Open_Account_Monthlys(dm.Report_AccountAccountID.AsInteger);
  end;
end;

procedure TFrEditMonthly.xpBitBtn4Click(Sender: TObject);
begin
  inherited;
  if dm.Select_Account_MonthlysPaid.AsBoolean then
  begin
    ShowMessage(' „«ÂÌ«‰Â Å—œ«Œ  ‘œÂ —« ‰„Ì  Ê«‰ ÊÌ—«Ì‘ ò—œ');
    exit;
  end
  else
  if messageShowString(' ¬Ì« «“ Õ–› «Ì‰ „«ÂÌ«‰Â «ÿ„Ì‰«‰ œ«—Ìœ',true) then
    dm.Select_Account_Monthlys.Delete;
end;

procedure TFrEditMonthly.xpBitBtn1Click(Sender: TObject);
begin
  inherited;
  if dm.Select_Account_MonthlysPaid.AsBoolean then
  begin
    ShowMessage(' „«ÂÌ«‰Â Å—œ«Œ  ‘œÂ —« ‰„Ì  Ê«‰ ÊÌ—«Ì‘ ò—œ');
    exit;
  end;

  with Dm,Select_ForcePayment_byForcePaymentID do
  begin
    Open_ForcePayment_byForcePaymentID(dm.Select_Account_MonthlysForcePaymentID.AsInteger);
    Edit;
    frAddForcePayment:=TfrAddForcePayment.Create(Application);
    frAddForcePayment.InterestPanel.Hide;
    frAddForcePayment.ShowModal;
    Open_Account_Monthlys(dm.Report_AccountAccountID.AsInteger);
  end;
end;

procedure TFrEditMonthly.FormShow(Sender: TObject);
begin
  inherited;
  {Ranjbar Ver3}
  DBGrid_LoadColumns(Self.Name,YDBGrid1);
end;

procedure TFrEditMonthly.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  {Ranjbar Ver3}
  DBGrid_SaveColumns(Self.Name,YDBGrid1);
end;

end.
