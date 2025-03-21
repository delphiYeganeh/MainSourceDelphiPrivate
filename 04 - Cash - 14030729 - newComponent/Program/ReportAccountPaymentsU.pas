 unit ReportAccountPaymentsU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ActnMan, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList,
  Buttons, DBActns, UemsVCL, Grids, DBGrids, YDbgrid, XPStyleActnCtrls,
  QRCtrls, QuickRpt, DB, YLargeIntField, ADODB, Menus, SolarCalendarPackage,
  AdvGlowButton;

type
  TFrReportAccountPayments = class(TYBaseForm)
    Panel2: TPanel;
    SearchEdit: TEdit;
    Label1: TLabel;
    ActionManager1: TActionManager;
    ARec: TDataSetPost;
    Acancel: TDataSetCancel;
    asearchCheque: TAction;
    Action1: TAction;
    PAccountDeatil: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    MakeRep: TAdvGlowButton;
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    Qrtitle: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape2: TQRShape;
    QRShape1: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape5: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape7: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape6: TQRShape;
    QRShape8: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRDBText4: TQRDBText;
    QRShape11: TQRShape;
    QRDBText5: TQRDBText;
    QRShape12: TQRShape;
    QRDBText6: TQRDBText;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    SummaryBand1: TQRBand;
    QRShape15: TQRShape;
    QRShape17: TQRShape;
    QRLabel13: TQRLabel;
    Sum1: TQRLabel;
    Sum2: TQRLabel;
    sum3: TQRLabel;
    CashLogo3: TQRImage;
    QRDBText3: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel14: TQRLabel;
    MEDateTo: TSolarDatePicker;
    MEDateFrom: TSolarDatePicker;
    Panel1: TPanel;
    Button5: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    xpBitBtn1: TAdvGlowButton;
    delbtn: TAdvGlowButton;
    Panel3: TPanel;
    YDBGrid: TYDBGrid;
    DBLkCBPayTypeTitle: TDBLookupComboBox;
    Label5: TLabel;
    DSQrPayType: TDataSource;
    QrPayType: TADOQuery;
    QrPayTypePayTypeID: TWordField;
    QrPayTypePayTypeTitle: TWideStringField;
    QRBand5: TQRBand;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    Label6: TLabel;
    rbDate: TRadioButton;
    rbDocNo: TRadioButton;
    BitBtn1: TAdvGlowButton;
    procedure RefreshReportPayment;
    procedure FormCreate(Sender: TObject);
    procedure MakeRepClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;var PrintReport: Boolean);
    procedure QuickRep1Preview(Sender: TObject);
    procedure delbtnClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rbDateClick(Sender: TObject);
    procedure rbDocNoClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure YDBGridNeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrReportAccountPayments: TFrReportAccountPayments;
implementation

uses dmu,   YShamsiDate, BusinessLayer, AccountDetailsU, EditPaymentU,
  Upreview;
{$R *.dfm}

var
   AccountID :integer;
   SumDebit,SumCredit: string;

procedure TFrReportAccountPayments.RefreshReportPayment;
begin
   AccountID := Get_AccountID_ByAccountNo(SearchEdit.Text);

   if AccountID=0 then
   begin
      ShowMessage('��� ����� ���� ���� �����');
      SearchEdit.SetFocus;
   end
     else
     with dm,Select_Payment do
     begin
        FrAccountDetails.AccountID := AccountID;
        YDBGrid.PrintTitle:=' ����� ������ � ������ ���� '+ dm.Select_Account_DetailsAccountTitle.AsString+'  �� ����� '+ Trim(MEDateFrom.Text)+' �� '+Trim(MEDateTo.Text);
        {Ranjbar 88.06.23}
        //Open_Report_Payment_ByAccountID(AccountID,datefrom.Text,DateTo.Text,SumDebit,SumCredit);
        if rbDate.Checked then
           Open_Report_Payment_ByAccountID(AccountID,Txt_Del254(MEDateFrom.Text),Txt_Del254(MEDateTo.Text),SumDebit,SumCredit,DBLkCBPayTypeTitle.KeyValue,1);
        if rbDocNo.Checked then
           Open_Report_Payment_ByAccountID(AccountID,Txt_Del254(MEDateFrom.Text),Txt_Del254(MEDateTo.Text),SumDebit,SumCredit,DBLkCBPayTypeTitle.KeyValue,2);
        //---
     end;
end;

procedure TFrReportAccountPayments.FormCreate(Sender: TObject);
begin
   inherited;
   FrAccountDetails:=TFrAccountDetails.Create(Application);
   FrAccountDetails.ShowInPanel( PAccountDeatil);
   {Ranjbar}
   //DateFrom.Text:=Copy(_Today,1,5)+'01/01';
   //DateTo.Text:=_Today;
   MEDateFrom.Text := Copy(_Today,1,5)+'01/01';
   MEDateTo.Text := _Today;
   //---
end;

procedure TFrReportAccountPayments.MakeRepClick(Sender: TObject);
begin
   inherited;
   {Ranjbar 88.05.16 Code=27}
   //�� ���� ��� ����� ������� . ��� ���� ���� �� ����� ������
   if not Date_CheckTwoDate(MEDateFrom.Text,MEDateTo.Text) then
      Exit;
   //---
   RefreshReportPayment;

end;

procedure TFrReportAccountPayments.Button5Click(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFrReportAccountPayments.EditBtnClick(Sender: TObject);
begin
  inherited;
FrEditPayment:=TFrEditPayment.Create(Application);
FrEditPayment.CashIsDebtor:=dm.Report_Payment_ByAccountIDStatus.AsInteger<>1;
FrEditPayment.PaymentID:=dm.Report_Payment_ByAccountIDPaymentID.AsInteger;
FrEditPayment.ShowModal;
end;

procedure TFrReportAccountPayments.xpBitBtn1Click(Sender: TObject);
begin
   inherited;
   {Ranjbar}

   if not Date_CheckTwoDate(MEDateFrom.Text,MEDateTo.Text) then
    Exit;

   if not(Dm.Report_Payment_ByAccountID.Active)or(Dm.Report_Payment_ByAccountID.RecordCount = 0) then
   begin
      ShowMyMessage('�����','�� �������� ���� ���',[mbOK],mtInformation);
      Exit;
   end;

//   Qrtitle.Caption:=' ���� ����� '+Trim(dm.Select_Account_DetailsAccountNo.AsString)+' , '+
//   Trim(dm.Select_Account_DetailsAccountTitle.AsString) +'  �� ����� '+Trim(MEDateFrom.Text)+' �� ����� '+Trim(MEDateTo.Text);
   Qrtitle.Caption:= Trim(dm.Select_Account_DetailsAccountTitle.AsString) +'  �� ����� '+Trim(MEDateFrom.Text)+' �� ����� '+Trim(MEDateTo.Text);
   QuickRep1.Preview;
end;

procedure TFrReportAccountPayments.QuickRep1BeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
 Sum1.Caption:=CommaSeperate(SumDebit);
 Sum2.Caption:=CommaSeperate(SumCredit);
 Sum3.Caption:=CommaSeperate(IntToStr(abs(StrToInt64(SumCredit)-StrToInt64(SumDebit))));
end;

procedure TFrReportAccountPayments.QuickRep1Preview(Sender: TObject);
begin
  inherited;
 Fpreview:=Tfpreview.Create(Application);
 Fpreview.Show;
 Fpreview.QrPreview1.QrPrinter:= QuickRep1.QRPrinter;

end;

procedure TFrReportAccountPayments.delbtnClick(Sender: TObject);
begin
  inherited;
if messageShowString('��� �� ��� ��ǘ�� ����� ����Ͽ',true) then
 begin
   Delete_Payment(Dm.Report_Payment_ByAccountIDPaymentID.AsInteger);
   RefreshReportPayment;
 end;
end;

procedure TFrReportAccountPayments.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   inherited;
   {Ranjbar 88.05.16 Code=27}
   if Key = Vk_Return then
      SelectNext(TWinControl(ActiveControl),True,True);
   //---
end;

procedure TFrReportAccountPayments.FormShow(Sender: TObject);
begin
   inherited;
   {Ranjbar Ver3}
   DBGrid_LoadColumns(Self.Name,YDBGrid);
   QrPayType.Open;
   DBLkCBPayTypeTitle.KeyValue := QrPayTypePayTypeID.AsInteger;
   { TODO -oparsa : 14030125 }
   RefreshReportPayment;
   { TODO -oparsa : 14030125 }
end;

procedure TFrReportAccountPayments.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   inherited;
   {Ranjbar Ver3}
   DBGrid_SaveColumns(Self.Name,YDBGrid);
   QrPayType.Close;
end;

procedure TFrReportAccountPayments.rbDateClick(Sender: TObject);
begin
  inherited;
    MakeRep.Click;
end;

procedure TFrReportAccountPayments.rbDocNoClick(Sender: TObject);
begin
  inherited;
    MakeRep.Click;
end;

procedure TFrReportAccountPayments.BitBtn1Click(Sender: TObject);
begin
  inherited;
  YDBGrid.ExportToExcel;
end;

procedure TFrReportAccountPayments.YDBGridNeedColorCondition(
  Column: TColumn; State: TGridDrawState; var Color: TColor);
 var
   LowOrange :  TColor ;
   relatedcolor :  TColor ;
begin
  inherited;
  LowOrange    := Rgb(255,217,193);
  relatedcolor  := Rgb(234,231,245);

  if dm.Report_Payment_ByAccountIDPayTypeSecondId.AsInteger = 8 then
    Color := LowOrange;

  if dm.Report_Payment_ByAccountIDRelatedID.AsInteger > 0 then
    Color := relatedcolor;
end;

end.
