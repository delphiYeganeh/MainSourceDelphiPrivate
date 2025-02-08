unit Report_LoanPerAccountU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtCtrls, QuickRpt, Menus, ActnList,
  StdCtrls, Buttons, YWhereEdit, QRCtrls, DB, ADODB, ToolWin, ComCtrls,
  AdvGlowButton;

type
  TfrReport_LoanPerAccount = class(TYBaseForm)
    Panel1: TPanel;
    SearchEdit: TYWhereEdit;
    Label1: TLabel;
    MakeRep: TAdvGlowButton;
    Report_LoanPerAccount: TADOStoredProc;
    Report_LoanPerAccountAccountID: TIntegerField;
    Report_LoanPerAccountAccountTitle: TWideStringField;
    Report_LoanPerAccountAccountNo: TStringField;
    Report_LoanPerAccountAccountDate: TStringField;
    Report_LoanPerAccountLoanTypeTitle: TWideStringField;
    Report_LoanPerAccountTedadAghsat: TIntegerField;
    Report_LoanPerAccounttedadAghsatPardakhtShode: TIntegerField;
    DReport_LoanPerAccount: TDataSource;
    Report_LoanPerAccountTOTALEXIST: TLargeintField;
    Panel2: TPanel;
    BitBtn1: TAdvGlowButton;
    Report_LoanPerAccountIntrestAmount: TIntegerField;
    Report_LoanPerAccountPaidIntrestAmount: TIntegerField;
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel7: TQRLabel;
    QRShape5: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape6: TQRShape;
    QRShape8: TQRShape;
    QRShape10: TQRShape;
    QRShape12: TQRShape;
    QRShape14: TQRShape;
    QRShape16: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText11: TQRDBText;
    qrshp1: TQRShape;
    QRShape37: TQRShape;
    qrlbl1: TQRLabel;
    QRShape38: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel14: TQRLabel;
    DetailBand1: TQRBand;
    QRShape7: TQRShape;
    QRShape9: TQRShape;
    QRShape11: TQRShape;
    QRShape13: TQRShape;
    QRShape15: TQRShape;
    QRShape17: TQRShape;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRSysData1: TQRSysData;
    qrshp2: TQRShape;
    qrdbtxtmandehVam: TQRDBText;
    QRShape39: TQRShape;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    SummaryBand1: TQRBand;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRLabel15: TQRLabel;
    QRShape27: TQRShape;
    qrshp3: TQRShape;
    QRShape40: TQRShape;
    TitleBand1: TQRBand;
    CashLogo1: TQRImage;
    QRLblSoftTitle: TQRLabel;
    QRShape41: TQRShape;
    QRShape44: TQRShape;
    QRShape36: TQRShape;
    QRShape43: TQRShape;
    Sum1: TQRLabel;
    Sum2: TQRLabel;
    Sum3: TQRLabel;
    Sum4: TQRLabel;
    Sum5: TQRLabel;
    Sum7: TQRLabel;
    Sum8: TQRLabel;
    Report_LoanPerAccountMablaghVam: TLargeintField;
    Report_LoanPerAccountMablaghYekGhest: TLargeintField;
    Report_LoanPerAccountAghsatPardakhti: TLargeintField;
    Report_LoanPerAccountmandehVam: TLargeintField;
    Report_LoanPerAccountTotalMandehVam: TLargeintField;
    Report_LoanPerAccountJamePardakhti: TLargeintField;
    pnlMain: TPanel;
    procedure MakeRepClick(Sender: TObject);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure AExitExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frReport_LoanPerAccount: TfrReport_LoanPerAccount;

implementation

uses dmu, BusinessLayer, MainU;

{$R *.dfm}

procedure TfrReport_LoanPerAccount.MakeRepClick(Sender: TObject);
var
   I: array[1..8] of int64;
   S: array[1..8] of string;
   j: integer;
begin
  inherited;
  if Get_AccountID_ByAccountNo(SearchEdit.Text)<1 then
  begin
    ShowMessage('ÔãÇÑå ÍÓÇÈ ÇÔÊÈÇå ÇÓÊ');
    Exit;
  end;

  Report_LoanPerAccount.close;
  Report_LoanPerAccount.Parameters.ParamByName('@AccountID').Value:=Get_AccountID_ByAccountNo(SearchEdit.Text);
  Report_LoanPerAccount.Parameters.ParamByName('@SelAll').Value:=0;
  Report_LoanPerAccount.Open;
  IF   Report_LoanPerAccount.IsEmpty THEN
    ShowMessage('ÇØáÇÚÇÊí ÌåÊ äãÇíÔ æÌæÏ äÏÇÑÏ.')
  ELSE
  begin
     Report_LoanPerAccount.First;
     while not Report_LoanPerAccount.Eof do
     begin
        I[1] := I[1] + Report_LoanPerAccountMablaghVam.AsInteger;
        I[2] := I[2] + Report_LoanPerAccountIntrestAmount.AsInteger;
        I[3] := I[3] + Report_LoanPerAccountTedadAghsat.AsInteger;
        I[4] := I[4] + Report_LoanPerAccountMablaghYekGhest.AsInteger;
        I[5] := I[5] + Report_LoanPerAccounttedadAghsatPardakhtShode.AsInteger;
        I[6] := I[6] + Report_LoanPerAccountAghsatPardakhti.AsInteger;
        I[7] := I[7] + Report_LoanPerAccountJamePardakhti.AsInteger;
        I[8] := I[8] + Report_LoanPerAccountTotalMandehVam.AsInteger;
        Report_LoanPerAccount.Next;
     end;
     for j:= 1 to 8 do
        S[j] := IntToStr(I[j]);
     for j:= 1 to 8 do
        S[j] := NumStrToCommaStr(S[j]);
     for j:= 1 to 8 do
        if j<>6 then
           TQRLabel(FindComponent('Sum'+IntToStr(j))).Caption := S[j];
     QuickRep1.Preview;
  end;
end;

procedure TfrReport_LoanPerAccount.QuickRep1BeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
   QRLblSoftTitle.Caption:=_SoftTitle;
end;

procedure TfrReport_LoanPerAccount.AExitExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrReport_LoanPerAccount.FormCreate(Sender: TObject);
begin
  inherited;
   width := 413;
  // height := 145;
  height := 140;
end;

end.
