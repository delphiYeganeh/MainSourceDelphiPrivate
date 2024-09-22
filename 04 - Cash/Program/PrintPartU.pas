 unit PrintPartU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, QuickRpt, ExtCtrls, ActnList, QRCtrls, DB,
  ADODB, UemsVCL, Menus, YQRAngelLabel, Grids, DBGrids, YDbgrid,
  Mask, CheckLst, YchecklistBox, Buttons, SolarCalendarPackage;

type
  TPrintParts = class(TYBaseForm)
    Panel1: TPanel;
    Label3: TLabel;
    APrint: TAction;
    Label4: TLabel;
    messageMember: TEdit;
    QuickRep1    : TQuickRep;
    DetailBand1  : TQRBand;
    QRShape3     : TQRShape;
    QRShape2     : TQRShape;
    QRShape1     : TQRShape;
    QRLabel1     : TQRLabel;
    QRLabel2 : TQRLabel;
    QRLabel3 : TQRLabel;
    QRLabel4 : TQRLabel;
    QRLabel5 : TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel8 : TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel10: TQRLabel;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText14: TQRDBText;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    messMember: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QuickRep2: TQuickRep;
    QRBand1: TQRBand;
    Cashtitle2: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRLabel27: TQRLabel;
    QRDBText22: TQRDBText;
    QRLabel29: TQRLabel;
    QRDBText23: TQRDBText;
    QRShape15: TQRShape;
    Payam_M: TQRLabel;
    QRDBText32: TQRDBText;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape14: TQRShape;
    Cashtitle1: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRLabel35: TQRLabel;
    QRDBText29: TQRDBText;
    QRLabel37: TQRLabel;
    QRDBText30: TQRDBText;
    Payam_S: TQRLabel;
    QRDBText31: TQRDBText;
    QRShape13: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRLabel20: TQRLabel;
    QRDBText33: TQRDBText;
    QRLabel26: TQRLabel;
    QRDBText34: TQRDBText;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRShape20: TQRShape;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText3: TQRDBText;
    QRAngledLabel4: TQRAngledLabel;
    QRAngledLabel3: TQRAngledLabel;
    QRAngledLabel2: TQRAngledLabel;
    QRAngledLabel1: TQRAngledLabel;
    CashLogo1: TQRImage;
    CashLogo2: TQRImage;
    CashLogo3: TQRImage;
    Panel2: TPanel;
    Button2: TButton;
    Button1: TButton;
    Panel3: TPanel;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    QRDBText35: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText36: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText37: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText38: TQRDBText;
    MEDateFrom: TSolarDatePicker;
    MEDateTo: TSolarDatePicker;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    SBChRev1: TSpeedButton;
    SBChNone1: TSpeedButton;
    SBChAll1: TSpeedButton;
    SBChSrch1: TSpeedButton;
    Label2: TLabel;
    CKLBLoanAcc: TYchecklistBox;
    DSLoanAcc: TDataSource;
    QrLoanAcc: TADOQuery;
    QrLoanAccAccountID: TAutoIncField;
    QrLoanAccLoanNOAcc: TWideStringField;
    QrLoanAccAccountNo: TStringField;
    QrLoanAccLoanID: TAutoIncField;
    DSSrchLoanAcc: TDataSource;
    QrSrchLoanAcc: TADOQuery;
    QrSrchLoanAccAccountID: TAutoIncField;
    QrSrchLoanAccAccountTitle: TWideStringField;
    QrSrchLoanAccAccountNo: TStringField;
    QrSrchLoanAccLoanID: TAutoIncField;
    QrSrchLoanAccLoanNO: TStringField;
    ChBoPreview: TCheckBox;
    QRLabel9: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel38: TQRLabel;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRDBText10: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel17: TQRLabel;
    messageSandoogh: TEdit;
    Label5: TLabel;
    messSandoogh: TQRLabel;
    QRLabel39: TQRLabel;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    QRLabel44: TQRLabel;
    Cashtitle3: TQRLabel;
    Cashtitle4: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText41: TQRDBText;
    procedure FormCreate(Sender: TObject);
    procedure APrintExecute(Sender: TObject);
    procedure AExitExecute(Sender: TObject);
    procedure QRTitle1Print(sender: TObject; var Value: String);
    procedure QuickRep1Preview(Sender: TObject);
    procedure QuickRep2Preview(Sender: TObject);
    procedure SBChSrch1Click(Sender: TObject);
    procedure SBChAll1Click(Sender: TObject);
    procedure SBChNone1Click(Sender: TObject);
    procedure SBChRev1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
  private
    { Private declarations }
  public
    LoanID:integer;
    LoanFirstNo,LoanLastNo,LoanDate : string;
    { Public declarations }
  end;

var
  PrintParts: TPrintParts;

implementation

uses DMU, YShamsiDate, BusinessLayer, Upreview, SearchFM;

{$R *.dfm}

procedure TPrintParts.FormCreate(Sender: TObject);
begin
   inherited;
//   QRTitle1.Caption   := _SoftTitle;
//   QRTitle2.Caption   := _SoftTitle;
   Cashtitle1.Caption := _SoftTitle;
   Cashtitle2.Caption := _SoftTitle;
   messageMember.Text:=Get_SystemSetting('Edit7');
   messageSandoogh.Text:=Get_SystemSetting('Edit7');
// Ranjbar
// MEDateFrom.Text := #254 + '1300/01/01';
   MEDateFrom.Text:= Copy(_Today,1,5)+'01/01';
   MEDateTo.Text  := Copy(_Today,1,5)+'01/01';
//   MEDateTo.Text  :=#254 + Get_MaxMatureDateInForcePayment;

//   MEDateTo.Text := #254 + _Today;
//---

end;

procedure TPrintParts.APrintExecute(Sender: TObject);
Var
   I , TempLoanID :Integer;
begin
   inherited;
   {Ranjbar 88.07.20}
   for I:=0 to CKLBLoanAcc.Items.Count -1 do
      if CKLBLoanAcc.Checked[I] then
      begin
         //---
         messMember.Caption := messageMember.Text;
         messSandoogh.Caption := messageSandoogh.Text;
         Cashtitle1.Caption := _SoftTitle;
         Cashtitle2.Caption := _SoftTitle;
         Payam_M.Caption := messageMember.Text;
         Payam_S.Caption := messageSandoogh.Text;

         TempLoanID :=  CKLBLoanAcc.codes[I];
//         Open_Loan_Parts_Details(TempLoanID,Txt_Del254(MEDateFrom.Text),Txt_Del254(MEDateTo.Text),RadioGroup1.ItemIndex);// €ÌÌ— ﬂ—œ Sp „ ‰
         Open_Loan_Parts_Details(TempLoanID,MEDateFrom.Text,MEDateTo.Text,RadioGroup1.ItemIndex);// €ÌÌ— ﬂ—œ Sp „ ‰
         //if Pos(',', CKLBLoanAcc.SelectedCodes) = 0 then // œ— ’Ê— ÌﬂÂ Ìﬂ ¬ „ «‰ Œ«» ‘œÂ »Êœ
         IF ChBoPreview.Checked Then
         Begin
            IF RadioGroup2.ItemIndex = 0 Then
               QuickRep1.Preview
            Else
               QuickRep2.Preview;
         End
            Else
            Begin
               IF RadioGroup2.ItemIndex = 0 Then
                  QuickRep1.Print
               Else
                  QuickRep2.Print;
            End;
      End;
End;

procedure TPrintParts.AExitExecute(Sender: TObject);
begin
  inherited;
//Set_SystemSetting('PayBookMessage',messageMember.Text);
//Set_SystemSetting('PayBookMessage_S',messageSandoogh.Text);
  valueID := '';
end;

procedure TPrintParts.QRTitle1Print(sender: TObject; var Value: String);
begin
  inherited;
value:=_SoftTitle;

end;

procedure TPrintParts.QuickRep1Preview(Sender: TObject);
begin
  inherited;
 Fpreview:=Tfpreview.Create(Application);
 Cashtitle3.Caption := _SoftTitle;
 Cashtitle4.Caption := _SoftTitle;
 Fpreview.Show;
 Fpreview.QrPreview1.QrPrinter:= QuickRep1.QRPrinter;

end;

procedure TPrintParts.QuickRep2Preview(Sender: TObject);
begin
  inherited;
 Fpreview:=Tfpreview.Create(Application);
 Fpreview.Show;
 Fpreview.QrPreview1.QrPrinter:= QuickRep2.QRPrinter;

end;

procedure TPrintParts.SBChSrch1Click(Sender: TObject);
begin
   inherited;
   {Ranjbar 88.07.20}
   dm.FormName := 'PrintParts';
   if FmSearch.GetSearchValue(QrSrchLoanAcc,'LoanID','LoanNo',' ',400,400)<>'0' then
      ChLB_SelectItemsFromStr( CKLBLoanAcc , QrSrchLoanAccLoanID.AsString,False);
end;

procedure TPrintParts.SBChAll1Click(Sender: TObject);
Var
   I:integer;
begin
   inherited;
   {Ranjbar 88.07.20}
   For I:=0 to CKLBLoanAcc.Items.Count-1 do
      CKLBLoanAcc.Checked[I] := True ;
end;

procedure TPrintParts.SBChNone1Click(Sender: TObject);
Var
   I:integer;
begin
   inherited;
   {Ranjbar 88.07.20}
   For I:=0 to CKLBLoanAcc.Items.Count-1 do
      CKLBLoanAcc.Checked[I] := False ;
end;

procedure TPrintParts.SBChRev1Click(Sender: TObject);
Var
   I:integer;
begin
   inherited;
   {Ranjbar 88.07.20}
   For I:=0 to CKLBLoanAcc.Items.Count-1 do
      CKLBLoanAcc.Checked[I] := Not CKLBLoanAcc.Checked[I];
end;

procedure TPrintParts.FormShow(Sender: TObject);
begin
   inherited;
{   QRTitle1.Caption := _SoftTitle;
   QRTitle2.Caption := _SoftTitle;
   Cashtitle1.Caption := _SoftTitle;
   Cashtitle2.Caption := _SoftTitle;
   messageMember.Text:=Get_SystemSetting('Edit7');
   messageSandoogh.Text:=Get_SystemSetting('Edit7');
   MEDateFrom.Text := #254 + Copy(_Today,1,5)+'01/01';
   MEDateTo.Text   :=#254 + Get_MaxMatureDateInForcePayment;
 }
   MEDateFrom.Text := LoanDate;
   {Ranjbar 88.07.20}
   valueID := IntToStr(LoanID);
//   if valueID <> '' then
//   begin
     QrLoanAcc.Close;

     QrLoanAcc.sql.Text:=' Select  Acc.AccountID , (Rtrim(L.LoanNO)+'' - ''+RTrim(Acc.AccountTitle)) as LoanNOAcc , Acc.AccountNo , L.LoanID '+
                         ' From Loan L '+
                         ' Inner join Account Acc ON L.AccountID = Acc.AccountID WHERE AccountNo not like ''DEL%''  ';
     IF (LoanFirstNo<>'' ) and (LoanLastNo<>'') THEN
  //   QrLoanAcc.sql.Text:=   QrLoanAcc.sql.Text+' where LoanNO between '''+LoanFirstNo+''' and '''+LoanLastNo+'''';
       QrLoanAcc.sql.Text:=   QrLoanAcc.sql.Text+' AND LoanNO between '''+LoanFirstNo+''' and '''+LoanLastNo+'''';
     if (LoanFirstNo='' ) and (LoanLastNo='')  then
       QrLoanAcc.sql.Text:=   QrLoanAcc.sql.Text+' AND l.Loanid in ( ' + valueID + ' ) ';
     QrLoanAcc.sql.Text:=   QrLoanAcc.sql.Text+' Order By L.LoanNO ';
     QrLoanAcc.sql.SaveToFile('c:\line.txt');
     QrLoanAcc.Open;
     CKLBLoanAcc.Fill;
     QrLoanAcc.Locate('LoanID',LoanID,[]);
     ChLB_SelectItemsFromStr( CKLBLoanAcc , IntToStr(LoanID),False);
     //SBChSrch1Click(Self);
//   end
   //---
end;

procedure TPrintParts.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  inherited;
  { TODO -oparsa : 14030628- bug369 }
  Resize := False;
  { TODO -oparsa : 14030628- bug369 }
end;

end.
