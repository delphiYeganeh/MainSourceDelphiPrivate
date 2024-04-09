unit DividBenefit_NewU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtCtrls, Grids, DBGrids,  Menus, ActnList,
  StdCtrls, Mask, Buttons, YDbgrid, DBCtrls, DB, YLargeIntField, ADODB;

type
  TFrDividBenefit_New = class(TYBaseForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label3: TLabel;
    Label1: TLabel;
    SearchEdit: TEdit;
    SpeedButton6: TSpeedButton;
    YDBGrid1: TYDBGrid;
    Button5: TBitBtn;
    MEYear: TMaskEdit;
    SpeedButton1: TSpeedButton;
    EdtBenefitPercent: TEdit;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Report_CashAccount: TADOStoredProc;
    Report_CashAccountBankTitle: TWideStringField;
    Report_CashAccountAccountID: TAutoIncField;
    Report_CashAccountAccountTitle: TWideStringField;
    Report_CashAccountAccountNo: TStringField;
    Report_CashAccountAccountDate: TStringField;
    Report_CashAccountIsActive: TBooleanField;
    Report_CashAccountAccountTypeID: TWordField;
    Report_CashAccountAccountTypeTitle: TWideStringField;
    Report_CashAccountAbs_Balance: TYLargeIntField;
    Report_CashAccountbalance: TYLargeIntField;
    Report_CashAccountDebitStatusTitle: TStringField;
    lblTitle: TLabel;
    lblSum: TLabel;
    btnSoodSeporde: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure EdtBenefitPercentKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    function CheckMaxBenifitPercent : real;
    procedure ShowSum;
    procedure btnSoodSepordeClick(Sender: TObject);
  private
    { Private declarations }
     AccountID :integer;
     function CheckDate : Boolean;
     procedure SetPrimeryProp;

  public
    { Public declarations }
  end;

var
  FrDividBenefit_New: TFrDividBenefit_New;

implementation

uses dmu,BusinessLayer,AccountDetailsU, YShamsiDate, URepSoodSepordeh;

{$R *.dfm}

procedure TFrDividBenefit_New.FormShow(Sender: TObject);
begin
  inherited;
  MEYear.Text := IntToStr(_Year);
end;

procedure TFrDividBenefit_New.SetPrimeryProp;
begin
  if (Trim(MEYear.Text) = '') then
    MEYear.Text := COPY(_Today,1,4);

  if Trim(EdtBenefitPercent.Text) = '' then
    EdtBenefitPercent.Text := '0';

  if (TRIM(SearchEdit.Text) = '') or (Trim(SearchEdit.Text) = '0') then
     SearchEdit.Text:='0'
  else
  begin
    AccountID := Get_AccountID_ByAccountNo(SearchEdit.Text);
    if AccountID=0 then
    begin
      ShowMessage('«Ì‰ ‘„«—Â Õ”«» ÊÃÊœ ‰œ«—œ');
      SearchEdit.SetFocus;
    end
  end;
end;

procedure TFrDividBenefit_New.SpeedButton6Click(Sender: TObject);
begin
  inherited;

  if not CheckDate then
    Exit;

  lblTitle.Visible := false;
  lblSum.Visible := false;
  SetPrimeryProp;
  YDBGrid1.DataSource := Dm.DPAY_BENEFIT_New;
  Open_PAY_BENEFIT_New(MEYear.Text, AccountID, StrToFloat(EdtBenefitPercent.Text), 0);
  YDBGrid1.Columns[4].Visible := False;
  YDBGrid1.Columns[5].Visible := False;
  YDBGrid1.Columns[6].Visible := False;
  YDBGrid1.Columns[4].FieldName := '';
  YDBGrid1.Columns[5].FieldName := '';
  YDBGrid1.Columns[6].FieldName := '';


  if DM.PAY_BENEFIT_New.IsEmpty then
  begin
    OPEN_REPORT_BENEFIT(MEYear.Text, AccountID);
    IF DM.REPORT_BENEFIT.IsEmpty then
    begin
      ShowMessage('«ÿ·«⁄« Ì ÃÂ  ‰„«Ì‘ ÊÃÊœ ‰œ«—œ');
      exit;
    end;

    if MessageDlg('”Êœ ”Å—œÂ ê–«—Ì ﬁ»·« „Õ«”»Â Ê Å—œ«Œ  ‘œÂ «” .¬Ì« „«Ì· »Â ‰„«Ì‘ «ÿ·«⁄«  À»  ‘œÂ „Ì»«‘Ìœø',mtConfirmation,[mbYes,mbNo],0) = mryes then
    begin
      YDBGrid1.DataSource := Dm.DREPORT_BENEFIT;
      OPEN_REPORT_BENEFIT(MEYear.Text, AccountID);
      YDBGrid1.Columns[4].Visible := True;
      YDBGrid1.Columns[5].Visible := True;
      YDBGrid1.Columns[6].Visible := True;
      YDBGrid1.Columns[4].FieldName := 'DocumentNo';
      YDBGrid1.Columns[5].FieldName := 'InsertedDate';
      YDBGrid1.Columns[6].FieldName := 'BenefitPercent';

      ShowSum;
    end
  end;

end;

procedure TFrDividBenefit_New.FormCreate(Sender: TObject);
begin
  inherited;
{
  FrAccountDetails:=TFrAccountDetails.Create(Application);
  FrAccountDetails.ShowInPanel( PAccountDeatil);
}
end;

procedure TFrDividBenefit_New.btnSearchClick(Sender: TObject);
begin
  inherited;
  Open_DailyAverage_All(MEYear.Text,0);
end;

procedure TFrDividBenefit_New.DBGrid2DblClick(Sender: TObject);
begin
  inherited;
  Open_DailyAverage_Detail(MEYear.Text,DM.DailyAverage_AllACCOUNTID.AsInteger);
end;

procedure TFrDividBenefit_New.Button5Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFrDividBenefit_New.BitBtn1Click(Sender: TObject);
begin
  inherited;
  YDBGrid1.ExportToExcel;
end;

procedure TFrDividBenefit_New.SpeedButton1Click(Sender: TObject);
var
   maxPercent : real;
begin
  inherited;

  if (Get_SystemSetting('BenefitAccountID') ='0') or
     (Get_SystemSetting('BenefitAccountID') ='') then
  begin
    ShowMessage('·ÿ›« œ— ﬁ”„   ‰ŸÌ„«  ‘„«—Â Õ”«» ”Êœ ”Å—œÂ —« „‘Œ’ ‰„«ÌÌœ');
    ABORT ;
  end;

  maxPercent := CheckMaxBenifitPercent;
  if  maxPercent < StrToFloat(EdtBenefitPercent.Text) then
  begin
    ShowMessage('„ÊÃÊœÌ Õ”«» ”Êœ ”Å—œÂ «“ „Ã„Ê⁄ ”Êœ „Õ«”»Â ‘œÂ ò„ — «” '+#13 +'»Ì‘ —Ì‰ œ—’œ ”Êœ „Ã«“'+' %'+FloatToStr(maxPercent)+' '+ '„Ì »«‘œ');
    exit;
  end;

  if (Trim(MEYear.Text)='') then
    MEYear.Text:=COPY(_Today,1,4);

  if (Trim(EdtBenefitPercent.Text)='') or
     (Trim(EdtBenefitPercent.Text)='0') then
  begin
    ShowMessage('œ—’œ ”Êœ „‘Œ’ ‰‘œÂ «” .');
    Abort;
  end;

  try
    //Open_PAY_BENEFIT_New(MEYear.Text,AccountID,StrToInt(EdtBenefitPercent.Text),1);
    Open_PAY_BENEFIT_New(MEYear.Text,AccountID,StrToFloat(EdtBenefitPercent.Text),1);
    ShowMessage('⁄„·Ì«  »« „Ê›ﬁÌ  »Â « „«„ —”Ìœ');
  except
    ShowMessage('⁄„·Ì«  „ Êﬁ› ‘œ');
  end;
end;

procedure TFrDividBenefit_New.EdtBenefitPercentKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
{   IF not(Key in ['1'..'9','0']) and
      not(ord(Key)=VK_BACK) then
   abort;
 }
end;

procedure TFrDividBenefit_New.SpeedButton2Click(Sender: TObject);
begin
  inherited;

  if not CheckDate then
    Exit;

  lblTitle.Visible := false;
  lblSum.Visible := false;
  YDBGrid1.DataSource:=Dm.DREPORT_BENEFIT;
  OPEN_REPORT_BENEFIT(MEYear.Text,AccountID);
  YDBGrid1.Columns[4].Visible:=True;
  YDBGrid1.Columns[5].Visible:=True;
  YDBGrid1.Columns[6].Visible:=True;
  YDBGrid1.Columns[4].FieldName:='DocumentNo';
  YDBGrid1.Columns[5].FieldName:='InsertedDate';
  YDBGrid1.Columns[6].FieldName:='BenefitPercent';

  ShowSum;
end;

procedure TFrDividBenefit_New.SpeedButton3Click(Sender: TObject);
VAR
  MSG:STRING;
begin
  inherited;

  if not CheckDate then
    Exit;

  lblTitle.Visible := false;
  lblSum.Visible := false;

  SetPrimeryProp;
  if AccountID=0 then
    MSG:=' „«„Ì ”Êœ ”Å—œÂ ê–«—Ì œ— ”«· '+MEYear.Text+' Õ–› ŒÊ«Âœ ‘œ .¬Ì«  «ÌÌœ „Ì ‰„«ÌÌœø '
  else
    MSG:='¬Ì« „«Ì· »Â Õ–› ”Êœ ”Å—œÂ ê–«—Ì òÂ ﬁ»·« Å—œ«Œ  ‰„ÊœÂ «Ìœ Â” Ìœø';

  if MessageDlg(MSG,mtConfirmation,[mbYes,mbNo],0)=mryes then
    try
      Delete_PayedBenefit(MEYear.Text,AccountID );
      ShowMessage('⁄„·Ì«  Õ–› »« „Ê›ﬁÌ  »Â « „«„ —”Ìœ');
    except
      ShowMessage('⁄„·Ì«  „ Êﬁ› ‘œ');
    end;
end;

function TFrDividBenefit_New.CheckMaxBenifitPercent: real;
var
   //sumAnualAvg,
   balanceBaseAccount : Largeint;
   sumAnualAvg :Real;
   i : integer;
   canDo : boolean;
begin
  sumAnualAvg := 0;

  if not dm.PAY_BENEFIT_New.Active then
    SpeedButton6Click(nil);

  dm.PAY_BENEFIT_New.First;
  while not dm.PAY_BENEFIT_New.Eof do
  begin
    { TODO -oparsa : 1403.01.21 }
    //sumAnualAvg := sumAnualAvg + dm.PAY_BENEFIT_NewAnnualAvragePrice.AsInteger;
    sumAnualAvg := sumAnualAvg + dm.PAY_BENEFIT_NewAnnualAvragePrice.AsFloat;
    { TODO -oparsa : 1403.01.21 }
    dm.PAY_BENEFIT_New.Next;
  end;

  with Report_CashAccount,parameters do
  begin
    Close;
    ParamByName('@where').value:='Account.AccountID = ' + Get_SystemSetting('BenefitAccountID');
    ParamByName('@IsLoan').value:=0;
    Open;
  end;

  balanceBaseAccount := Report_CashAccountbalance.AsInteger;

  if trim(Report_CashAccountDebitStatusTitle.AsString) = '»” «‰ò«—'  then
    canDo := true
  else
    canDo := false;

  if canDo = false then
     Result := 0
  else if balanceBaseAccount<0 then
    Result := -1
  else if balanceBaseAccount = 0 then
    Result := 0
  else if balanceBaseAccount >0 then
  begin
    if sumAnualAvg <>0 then
      Result := (balanceBaseAccount)/sumAnualAvg * 100
    else
    begin
      ShowMessage('«„ò«‰ Å—œ«Œ  „Ãœœ ”Êœ ÊÃÊœ ‰œ«—œ');
      Result := 0;
    end;
  end;
end;

procedure TFrDividBenefit_New.ShowSum;
var
  sum : Longint;
begin
  sum := 0;

  if not Dm.REPORT_BENEFIT.Active then
    exit;

  dm.REPORT_BENEFIT.First;
  while not dm.REPORT_BENEFIT.Eof do
  begin
    sum := sum + dm.REPORT_BENEFITInsertedBenefitPrice.AsInteger;
    dm.REPORT_BENEFIT.Next;
  end;
  lblSum.Caption := CommaSeperate(IntToStr(sum)) +' '+ Get_SystemSetting('EdtMoneyUnit')+' ';
  lblTitle.Visible := True;
  lblSum.Visible := true;
end;

procedure TFrDividBenefit_New.btnSoodSepordeClick(Sender: TObject);
begin
  inherited;
  FrmRepSoodSepordeh := TFrmRepSoodSepordeh.Create(Application);
  FrmRepSoodSepordeh.ShowModal;
end;

function TFrDividBenefit_New.CheckDate: Boolean;
var
  result_value : Boolean;
begin
  result_value := True;

  if Length(Trim(MEYear.Text)) <> 4 then
  begin
    result_value := False;
    ShowMessage('”«· —« œ—”  Ê«—œ ‰„«ÌÌœ');
  end;

  Result := result_value;
end;

end.
