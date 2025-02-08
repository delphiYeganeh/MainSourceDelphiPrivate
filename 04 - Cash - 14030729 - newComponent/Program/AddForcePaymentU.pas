unit AddForcePaymentU;

interface

uses
  DB, BaseUnit, ExtActns, ActnMan, Buttons, StdCtrls, Mask, DBCtrls,
  Controls, Classes, ActnList, XPStyleActnCtrls, ADODB,
  Menus, UemsVCL, ExtCtrls,DIALOGS, SolarCalendarPackage, AdvGlowButton;

type
  TfrAddForcePayment = class(TYBaseForm)
    ActionManager: TActionManager;
    Panel1: TPanel;
    BitBtn1: TAdvGlowButton;
    BitBtn2: TAdvGlowButton;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    DBEdit5: TDBEdit;
    OrderNo: TDBEdit;
    InterestPanel: TPanel;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    DBEMatureDate: TSolarDatePicker;
    pnlMain: TPanel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
   done:boolean;
    { Public declarations }
  end;

var
  frAddForcePayment: TfrAddForcePayment;
  IntrestPart:Real; // Amin 1391/10/13

implementation

uses dmu, BusinessLayer, ConvUtils, SysUtils;


{$R *.dfm}

procedure TfrAddForcePayment.BitBtn1Click(Sender: TObject);
var
  Wage, Intrest:int64;
  Msg : string;
begin
  inherited;

  if (Dm.Select_ForcePayment_byForcePaymentIDMatureDate.AsString = '') or (Dm.Select_ForcePayment_byForcePaymentIDMatureDate.IsNull) then
  begin
    ShowMessage(' «—ÌŒ ”——”Ìœ ‰„Ì  Ê«‰œ Œ«·Ì »«‘œ');
    DBEMatureDate.SetFocus ;
    exit;
  end;

  if Dm.Select_ForcePayment_byForcePaymentIDForceTypeID.AsInteger=2 then
  begin
    if not CanChangeTheMonthlyPayment(
           Dm.Select_ForcePayment_byForcePaymentIDForcePaymentID.AsInteger,
           Dm.Select_ForcePayment_byForcePaymentIDParentID.AsInteger,
           Dm.Select_ForcePayment_byForcePaymentIDMatureDate.AsString) then
    begin
      ShowMessage('œ— «Ì‰ „«Â „«ÂÌ«‰Â ÊÃÊœ œ«—œ.«„ò«‰ œ—Ã œÊ „«ÂÌ«‰Â œ— Ìò „«Â ÊÃÊœ ‰œ«—œ.');
      exit;
    end;
  end;

  if Dm.Select_ForcePayment_byForcePaymentIDForceTypeID.AsInteger=1 then
  begin
    if not CanChangeTheInvestmentPayment(
           Dm.Select_ForcePayment_byForcePaymentIDForcePaymentID.AsInteger,
           Dm.Select_ForcePayment_byForcePaymentIDParentID.AsInteger,
           Dm.Select_ForcePayment_byForcePaymentIDMatureDate.AsString) THEN
    begin
      ShowMessage(' ⁄—Ì› œÊ ﬁ”ÿ œ— Ìò  «—ÌŒ «„ò«‰ Å–Ì— ‰Ì” .');
      exit;
    end;
  end;

  Calculate_Wage_Interest(Dm.Report_LoanAmount.AsLargeInt,Dm.Report_LoanLoanTypeID.AsInteger,Wage,Intrest);
  if Dm.Select_ForcePayment_byForcePaymentIDForceTypeID.AsInteger=1 then
  begin
    if Intrest<>0 then
      IntrestPart:=Intrest div Dm.LoanTypePartNumber.AsInteger;

    if (Dm.Select_ForcePayment_byForcePaymentIDInterestAmount.AsInteger<>IntrestPart) then
    begin
      //Hamed_Ansari_Hasan_Ahmadvand_990520_S
      Msg := '”Êœ „Õ«”»Â ‘œÂ »— «”«” ¬Œ—Ì‰ «ÿ·«⁄«  ‰Ê⁄ Ê«„ „‘Œ’ ‘œÂ ° »—«»— «”  »«'+CurrToStr(IntrestPart)+'¬Ì«  «ÌÌœ „Ì ‰„«ÌÌœ »« ' + DBEdit9.Text + ' Ã«Ìê“Ì‰ ê—œœø ';
      //Hamed_Ansari_Hasan_Ahmadvand_990520_E
      if not messageShowString(Msg,true,'«ÿ·«⁄ —”«‰Ì') then
        Dm.Select_ForcePayment_byForcePaymentIDInterestAmount.AsFloat:=IntrestPart;
    end;
  end;

  dm.Select_ForcePayment_byForcePaymentID.Post;
  close;
end;

procedure TfrAddForcePayment.BitBtn2Click(Sender: TObject);
begin
  inherited;
  dm.Select_ForcePayment_byForcePaymentID.Cancel;
  close;
end;

procedure TfrAddForcePayment.FormShow(Sender: TObject);
begin
  inherited;
  DBEdit2.SetFocus;
  IntrestPart:= Dm.Select_ForcePayment_byForcePaymentIDInterestAmount.AsFloat;
end;

end.
