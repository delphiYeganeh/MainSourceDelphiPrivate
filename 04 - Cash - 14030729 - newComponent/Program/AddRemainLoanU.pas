unit AddRemainLoanU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtCtrls,  Menus, ActnList, Grids, DBGrids,
  YDbgrid, StdCtrls, Buttons, DBCtrls, Spin, YWhereEdit, DB, ADODB,
  AdvGlowButton;

type
  TFrAddRemainLoan = class(TYBaseForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    SearchEdit: TEdit;
    SpeedButton1: TAdvGlowButton;
    Panel4: TPanel;
    Panel5: TPanel;
    btnReturn: TAdvGlowButton;
    Label22: TLabel;
    FMatureDate: TYWhereEdit;
    FamilyLabel1: TLabel;
    FamilyTitle: TYWhereEdit;
    SpeedButton49: TAdvGlowButton;
    SpeedButton17: TAdvGlowButton;
    Label12: TLabel;
    LoanTitle: TYWhereEdit;
    Button1: TAdvGlowButton;
    SpeedButton23: TAdvGlowButton;
    CbDelay: TLabel;
    DelayDays: TSpinEdit;
    PAccountDeatil: TPanel;
    ForcePaYGrid: TYDBGrid;
    Button5: TAdvGlowButton;
    pnlMain: TPanel;
    Label2: TLabel;
    DBText1: TDBText;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnReturnClick(Sender: TObject);
    procedure SpeedButton49Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton23Click(Sender: TObject);
    procedure SearchEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RefreshData;
    procedure AExitExecute(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    FamilyID,LoanTypeID,AccID:Integer;
    Sum_ForcePayment_Amount , Sum_ForcePayment_Amerce,Sum_ForcePayment_Interest :Int64;

  end;


var
  FrAddRemainLoan: TFrAddRemainLoan;

implementation

uses dmu, BusinessLayer, AccountDetailsU, AddLoanU, YShamsiDate;

{$R *.dfm}

procedure TFrAddRemainLoan.SpeedButton1Click(Sender: TObject);

begin
  inherited;

  AccID:=Get_AccountID_ByAccountNo(SearchEdit.Text);
  if AccID=0 then
  begin
    ShowMessage('��� ����� ���� ���� �����');
    SearchEdit.SetFocus;
    exit;
  end
  else
  if AccID<0 then
  begin
    ShowMessage('��� ���� ���� ��� ���');
    SearchEdit.SetFocus;
    exit;
  end;

  RefreshData;

  //FrAccountDetails.AccountID:=Get_AccountID_ByAccountNo(SearchEdit.Text);
  DM.Report_LoanPerAccount.Close;
  DM.Report_LoanPerAccount.Parameters.ParamByName('@AccountID').Value:=Get_AccountID_ByAccountNo(SearchEdit.Text);
  DM.Report_LoanPerAccount.Parameters.ParamByName('@SelAll').Value:=0;
  DM.Report_LoanPerAccount.Open;
  if DM.Report_LoanPerAccount.IsEmpty then
  begin
    ShowMessage('�������� ��� ����� ���� �����.');
    exit;
  end ;

  Open_Report_ForcePayment2(DelayDays.Value,FamilyID,1,FMatureDate.SinceValue, FMatureDate.ToValue,SearchEdit.Text,FALSE,
                            0 ,FALSE,Sum_ForcePayment_Amount,Sum_ForcePayment_Amerce,Sum_ForcePayment_interest,LoanTypeID,0,1000);
                            
  btnReturn.Enabled := (dm.Report_ForcePayment2.RecordCount > 0) ;

end;

procedure TFrAddRemainLoan.FormShow(Sender: TObject);
begin
  inherited;
   SearchEdit.SetFocus;
   { TODO -oparsa : 14030701 }
   {
   FrAccountDetails:=TFrAccountDetails.Create(Application);
   FrAccountDetails.ShowInPanel(PAccountDeatil);
   }
   { TODO -oparsa : 14030701 }

end;

procedure TFrAddRemainLoan.btnReturnClick(Sender: TObject);
VAR I :INTEGER; Value:STRING;
begin
  inherited;
     IF AccID=0 THEN
     begin
        ShowMessage('����� ���� ���� ����');
        exit;
     end  ;
     _AgainMakeParts:=true;
     FrAddLoan := TFrAddLoan.Create(Application);
     WITH FrAddLoan DO
     BEGIN
         pnlSearch .Enabled:=False;
         //Label1.Enabled:=False;
         FrAddLoan.SearchEdit.Text:= FrAddRemainLoan.SearchEdit.Text;
         //SearchEdit.Enabled:=False;
         //Button6.Enabled :=False;
         //Button9.Enabled :=False;
         AccountID:=Get_AccountID_ByAccountNo(SearchEdit.Text);
         Open_Loan_ByAccountID(AccountID);
         _SelectedForcePaymentID:='0';
         IF ForcePaYGrid.SelectedRows.Count>0 then
         With dm.Report_ForcePayment2 do
             For i:=0 to ForcePaYGrid.SelectedRows.Count-1 do
             Begin
                GotoBookmark(pointer(ForcePaYGrid.SelectedRows.Items[i]));
                _SelectedForcePaymentID := _selectedForcePaymentID+','+Dm.Report_ForcePayment2ForcePaymentID.AsString;
             End  ;
         Value := Qry_GetResult('SELECT ISNULL(SUM(Amount),0) AS S_Amount FROM ForcePayment WHERE (ForcePaymentID IN ('+FrAddLoan._SelectedForcePaymentID+')) '  , Dm.YeganehConnection);//������
         DBCMain.Visible:=False;
         DBCRemain.Visible:=True;;
         SBLoanType.Visible:=false;
         EdtAddLoan.Text:=  Value;
         DBC_LoanAmount.Items.Add(Value);

        // FrAddLoan.SearchEdit.text:= FrAddRemainLoan.SearchEdit.text ;
        // RefreshData ;
         ShowModal;
         _AgainMakeParts:=False;
         //Label1.Enabled:=True;
         //SearchEdit.Enabled:=True;
         //Button6.Enabled :=True;
         //Button9.Enabled :=True;
         pnlSearch .Enabled:=True;
         DBCMain.Visible:=True;
         DBCRemain.Visible:=False;
         SBLoanType.Visible:=True;
     END;
     DM.Report_ForcePayment2.Close;
     DM.Report_ForcePayment2.Open;
     
     btnReturn.Enabled := False ;
end;

procedure TFrAddRemainLoan.SpeedButton49Click(Sender: TObject);
begin
  inherited;
   Dm.SearchTable(dm.Family,'Familyid','FamilyTitle');
   if Dm.SearchResult>0 then
   begin
      FamilyID:=dm.SearchResult;
      FamilyTitle.Text:=dm.FamilyFamilyTitle.AsString;
   end
   ELSE
   begin
      FamilyID:=-1;
      FamilyTitle.Text:='';
   end

end;

procedure TFrAddRemainLoan.SpeedButton17Click(Sender: TObject);
begin
  inherited;
   begin
      FamilyID:=0;
      FamilyTitle.Text:='';
   end

end;

procedure TFrAddRemainLoan.Button1Click(Sender: TObject);
begin
  inherited;
   Dm.SearchTable(dm.LoanType,'LoanTypeid','LoanTypeTitle');
   if Dm.SearchResult>0 then
   begin
      LoanTypeID:=dm.SearchResult;
      LoanTitle.Text:=dm.LoanTypeLoanTypeTitle.AsString;
   end
   ELSE
   begin
      LoanTypeID:=0;
      LoanTitle.Text:='';
   end

end;

procedure TFrAddRemainLoan.SpeedButton23Click(Sender: TObject);
begin
  inherited;
      LoanTypeID:=0;
      LoanTitle.Text:='';

end;

procedure TFrAddRemainLoan.RefreshData;
begin
   with dm do
   begin
      FrAccountDetails.AccountID:=AccID;
      SearchEdit.Text:=Select_Account_DetailsAccountNo.AsString;
      Open_Loan_ByAccountID(AccID);
//      if Select_Account_DetailsNumberOfNotPaidPart.AsInteger > 0 then
//         if MessageDlg('������ ��� ���� ���� ��� ��� ������ ���� ���� ��� �� ��� ����� ���� ��� �� ���Ͽ',mtConfirmation,[mbYes,mbNo],0)<>mryes then
//         begin
//            SearchEdit.SetFocus;
//         end
   end;
end;

procedure TFrAddRemainLoan.SearchEditKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key=13 then
   begin
    AccID:=Get_AccountID_ByAccountNo(SearchEdit.Text);
    if AccID=0 then
     begin
      ShowMessage('��� ����� ���� ���� �����');
      SearchEdit.SetFocus;
     end else
    if AccID<0 then
     begin
      ShowMessage('��� ���� ���� ��� ���');
      SearchEdit.SetFocus;
     end;

   RefreshData;
   {Ranjbar}
  end;
end;

procedure TFrAddRemainLoan.AExitExecute(Sender: TObject);
begin
  inherited;
Close;
end;

procedure TFrAddRemainLoan.Button5Click(Sender: TObject);
begin
  inherited;
    Close;
end;

procedure TFrAddRemainLoan.FormCreate(Sender: TObject);
var
   int64temp :Int64;
begin
  inherited;
   AccID := 0 ;
   Open_Report_ForcePayment2(0,0,1,'1400/01/01', '1400/01/01','0',FALSE, 0 ,FALSE,int64temp,int64temp,int64temp,0,0,0);



   { TODO -oparsa : 14030701 }
   FrAccountDetails:=TFrAccountDetails.Create(Application);
   FrAccountDetails.ShowInPanel(PAccountDeatil);
   { TODO -oparsa : 14030701 }
end;

end.
