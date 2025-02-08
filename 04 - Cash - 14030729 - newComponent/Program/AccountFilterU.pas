 unit AccountFilterU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, YWhereEdit, ActnList, Menus, Mask,
  Buttons, DB, ADODB, SolarCalendarPackage, ExtCtrls, AdvGlowButton;

type
  TFrAccountFilter = class(TYBaseForm)
    Label8: TLabel;
    Label3: TLabel;
    label1: TLabel;
    Label2: TLabel;
    Label9: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    LblPersonal: TLabel;
    Label15: TLabel;
    LblFamily: TLabel;
    ywhereedit15: TYWhereEdit;
    ywhereedit12: TYWhereEdit;
    YWhereedit11: TYWhereEdit;
    userField1: TLabel;
    userField2: TLabel;
    YWhereEdit17: TYWhereEdit;
    YWhereEdit16: TYWhereEdit;
    YWhereEdit14: TYWhereEdit;
    YWhereEdit13: TYWhereEdit;
    YWhereEdit5: TYWhereEdit;
    YWhereEdit2: TYWhereEdit;
    YWhereEdit8: TYWhereEdit;
    YWhereEdit4: TYWhereEdit;
    YWhereEdit3: TYWhereEdit;
    YWhereEdit6: TYWhereEdit;
    Label11: TLabel;
    YWhereEdit19: TYWhereEdit;
    MEBirthDate: TSolarDatePicker;
    MEAccountDate: TSolarDatePicker;
    MEMonthlyBeginDate: TSolarDatePicker;
    SpeedButton1: TAdvGlowButton;
    SpeedButton2: TAdvGlowButton;
    chbIsActive: TCheckBox;
    chbShowLoanPaymentFinished: TCheckBox;
    pnlMain: TPanel;
    function  Where:string;
    Procedure ShowInPanel(P:TWinControl);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Var
   FrAccountFilter: TFrAccountFilter;

implementation

uses DMU , BusinessLayer , YShamsiDate;

{$R *.dfm}

function TFrAccountFilter.Where:string;
var
  I : integer;
  Date : String;
begin
  Result:='';
  for i:=0 to ComponentCount-1 do
    if Components[i].ClassNameIs('TYWhereEdit') then
      if TYWhereEdit(Components[i]).Resultwhere<>'' then
        Result:=Result+' and '+TYWhereEdit(Components[i]).Resultwhere;

  {Ranjbar}
  Date := Txt_Del254(MEBirthDate.Text);
  if Date <> '' then
    Result := Result + ' And Contact.BirthDate = ' + QuotedStr(Date);

  Date := Txt_Del254(MEAccountDate.Text);
  if Date <> '' then
    Result := Result + ' And Account.AccountDate = ' + QuotedStr(Date);

  Date := Txt_Del254(MEMonthlyBeginDate.Text);
  if Date <> '' then
    Result := Result + ' And Account.MonthlyBeginDate = ' + QuotedStr(Date);

  if  not chbIsActive.Checked then
    Result := Result + ' And ACCOUNT.IsActive = 1' ;

  if  not chbShowLoanPaymentFinished.Checked then
    Result := Result + ' AND  (ISNULL((SELECT  COUNT(Loanid) FROM LOAN WHERE Loanid IN (SELECT  L.Loanid '+
                       '   FROM   Loan AS L INNER JOIN  ForcePayment AS F ON L.LoanID = F.ParentID '+
                       '   WHERE  L.AccountID = ACCOUNT.ACCOUNTID  AND F.ForceTypeID = 1  AND F.Paid = 0 '+
                       '   Group by l.LoanID)   ),0)) >0 ' ;
  if Result<>'' then
    Delete(Result,1,5);
end;

Procedure TFrAccountFilter.ShowInPanel(P:TWinControl);
begin
  ManualDock(p,nil,alleft);
  Show;
  Align:=alClient;
end;

procedure TFrAccountFilter.FormCreate(Sender: TObject);
begin
  inherited;

  with dm do
    try
      {Ranjbar 88.04.22}
      //userField1.Caption := Get_SystemSetting('UserField1');
      //userField2.Caption := Get_SystemSetting('UserField2');;
      userField1.Caption := Trim(ContactTypeUserField1Title.AsString);
      userField2.Caption := Trim(ContactTypeUserField2Title.AsString);
      LblFamily.Caption  := Get_SystemSetting('FamilyTitle');
      LblPersonal.Caption:= Get_SystemSetting('PersonalTitle');
    except
    end;
end;

procedure TFrAccountFilter.SpeedButton1Click(Sender: TObject);
var
  Key: Word;
  Shift: TShiftState;
begin
  inherited;
  Key:=32;
  shift:=  [ssCtrl,ssRight..ssDouble];
  GotoNext(YWhereedit11,key,Shift);
end;

procedure TFrAccountFilter.SpeedButton2Click(Sender: TObject);
var
  Key: Word;
  Shift: TShiftState;
begin
  inherited;
  Key:=32;
  shift:=  [ssCtrl,ssRight..ssDouble];
  GotoNext(ywhereedit15,key,shift);
end;

end.
