unit DocPrintU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, QRCtrls, QuickRpt, ExtCtrls, ActnList,
  StdCtrls, UemsVCL, Grids, DBGrids, YDbgrid, Buttons, Menus,
  YWhereEdit, DB, YLargeIntField, ADODB, DBCtrls;

type
  TFrDocPrint = class(TYBaseForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRDBText8: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText3: TQRDBText;
    QRShape6: TQRShape;
    QRDBText7: TQRDBText;
    QRLblTitle: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText2: TQRDBText;
    Panel2: TPanel;
    Label3: TLabel;
    DocNoFrom: TYWhereEdit;
    CashLogo: TQRImage;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    xpBitBtn1: TBitBtn;
    Button5: TBitBtn;
    Panel3: TPanel;
    YDBGrid: TYDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    PageFooterBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRLabel18: TQRLabel;
    QRGroup1: TQRGroup;
    QRDBText11: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape2: TQRShape;
    QRShape1: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape8: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape5: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape11: TQRShape;
    Panel4: TPanel;
    Label1: TLabel;
    DocNoTo: TYWhereEdit;
    Label2: TLabel;
    Label4: TLabel;
    DateFrom: TYWhereEdit;
    DateTo: TYWhereEdit;
    RBAllDocInaPage: TRadioButton;
    RBSeprateDocInaPage: TRadioButton;
    QuickRep2: TQuickRep;
    QRBand1: TQRBand;
    QRLblTitle2: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel19: TQRLabel;
    CashLogo2: TQRImage;
    QRBand3: TQRBand;
    QRDBText9: TQRDBText;
    QRShape7: TQRShape;
    QRShape12: TQRShape;
    QRDBText10: TQRDBText;
    QRDBText13: TQRDBText;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRDBText14: TQRDBText;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRShape17: TQRShape;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRShape25: TQRShape;
    QRShape28: TQRShape;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    ColumnHeaderBand2: TQRBand;
    QRShape18: TQRShape;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRShape24: TQRShape;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    RBSeprateDocSepratePage: TRadioButton;
    PageFooterBand2: TQRBand;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRShape29: TQRShape;
    QRLabel34: TQRLabel;
    QRShape30: TQRShape;
    QRDBText21: TQRDBText;
//    procedure SetDocumentNo(value:string);
    Procedure OpenDb(DocumentNoFrom,DocumentNoTo,DateFrom,DateTo:STRING);

    procedure QuickRep1Preview(Sender: TObject);
    procedure DocNoFromKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DelBtnClick(Sender: TObject);
    procedure QuickRep2Preview(Sender: TObject);
  private
    { Private declarations }
    FDocumentNo : string;
  public
    { Public declarations }
//     Property DocumentNo : String Read FDocumentNo write SetDocumentNo;
  end;

var
  FrDocPrint: TFrDocPrint;

implementation

uses dmu, BusinessLayer, Upreview, EditPaymentU, YShamsiDate;

{$R *.dfm}

{procedure TFQrPrintPayment_ByDocumentNo1.SetDocumentNo(value:string);
begin
   inherited;

   FDocumentNo := Value;
   IF RBAllDocInaPage.Checked Then
   Else IF RBSeprateDocInaPage.Checked Then
   ELSE IF RBSeprateDocSepratePage.Checked Then
      Open_REPORT_PAYMENT_ForPrint(value,strtoint(Copy(_Today,3,2)));
//   else
      Open_Report_Payment_ByDocumentNo(value,0); //«”‰«œ  „«„Ì ”«·Â«

   with dm.Report_Payment_ByDocumentNo,parameters do
   begin
      Close;
      ParamByName('@documentNo').value := value;
//       if YearStatus.Checked then
//         ParamByName('@Year').value := StrToInt(Copy(_Today,3,2))
//      else
//         ParamByName('@Year').value := 0;
      Open;
   end;
end;  }

Procedure TFrDocPrint.OpenDb(DocumentNoFrom,
                                                DocumentNoTo,
                                                DateFrom,
                                                DateTo:STRING);
Begin
   Inherited;
   if Trim(DocumentNoFrom)='' then
     DocumentNoFrom:='0';
   if Trim(DocumentNoTo)='' then
     DocumentNoTo:='0';
   if Trim(DateFrom)='' then
     DateFrom:='0';
   if Trim(DateTo)='' then
     DateTo:='0';

   Open_REPORT_PAYMENT_ForPrint(DocumentNoFrom,DocumentNoTo,DateFrom,DateTo);
end;

procedure TFrDocPrint.QuickRep1Preview(Sender: TObject);
begin
   inherited;
 Fpreview:=Tfpreview.Create(Application);
 QRLblTitle.Caption := _SoftTitle;

 Fpreview.Show;
 Fpreview.QrPreview1.QrPrinter:= QuickRep1.QRPrinter;
end;

procedure TFrDocPrint.DocNoFromKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   inherited;
   if Key = 13 then
//      DocumentNo := DocNo.Text;
end;

procedure TFrDocPrint.SpeedButton4Click(Sender: TObject);
begin
  inherited;
YDBGrid.CustomizePrint;
end;

procedure TFrDocPrint.SpeedButton3Click(Sender: TObject);
begin
  inherited;
YDBGrid.ExportToExcel;

end;

procedure TFrDocPrint.SpeedButton2Click(Sender: TObject);
begin
  inherited;
YDBGrid.Print
end;

procedure TFrDocPrint.SpeedButton1Click(Sender: TObject);
begin
  inherited;
YDBGrid.ExportToWord;
end;

procedure TFrDocPrint.xpBitBtn1Click(Sender: TObject);
begin
  inherited;
   BitBtn1.Click;
   IF RBAllDocInaPage.Checked Then
      QuickRep2.Preview
   Else IF RBSeprateDocInaPage.Checked Then
   BEGIN
     QRGroup1.ReprintOnNewPage:=False;
     QRGroup1.ForceNewPage:=FALSE;
     QuickRep1.Preview;
   END
   ELSE IF RBSeprateDocSepratePage.Checked Then
   BEGIN
     QRGroup1.ReprintOnNewPage:=True;
     QRGroup1.ForceNewPage:=True;
     QuickRep1.Preview;
   END
end;

procedure TFrDocPrint.EditBtnClick(Sender: TObject);
var sql_Text:string;
begin
   inherited;
   

   IF NOT ISSelectedDbtOrCrtCorrect(dm.Report_Payment_ByDocumentNoDebtorAccountID.AsInteger,dm.Report_Payment_ByDocumentNoCreditorAccountID.AsInteger) THEN
   BEGIN
     ShowMessage('”‰œ »Â ’Ê—  « Ê„« Ìò À»  ‘œÂ «„ò«‰ ÊÌ—«Ì‘ ÊÃÊœ ‰œ«—œ');
     Exit;
   END;


   if not(Dm.Report_Payment_ByDocumentNo.Active)or
         (Dm.Report_Payment_ByDocumentNo.RecordCount=0) then
   begin
      MessageShowString('ÂÌç «ÿ·«⁄« Ì Ì«›  ‰‘œ', False);
      Exit
   end;
   //---

   FrEditPayment := TFrEditPayment.Create(Application);
   sql_Text:='SELECT AccountTypeID FROM Account WHERE AccountID='+dm.Report_Payment_ByDocumentNoDebtorAccountID.AsString;
   if Qry_GetResult(sql_Text,Dm.YeganehConnection)='1' THEN
     FrEditPayment.CashIsDebtor:=FALSE
   else
     FrEditPayment.CashIsDebtor:=true;

   FrEditPayment.PaymentID:=dm.Report_Payment_ByDocumentNoPaymentID.AsInteger;
   {Ranjbar 88.06.30}//«„ﬂ«‰  €ÌÌ— „»·€ ÊÃÊœ ‰œ«‘ Â »«‘œ
   FrEditPayment.DBEAmount.Enabled := False;
   FrEditPayment.LblAmount.Enabled := False;
   //---
   FrEditPayment.ShowModal;

end;

procedure TFrDocPrint.FormShow(Sender: TObject);
begin
  inherited;
//   DocNo.SetFocus;
   {Ranjbar Ver3}
   DBGrid_LoadColumns(Self.Name,YDBGrid);
//   lBDocNo.Caption:='‘„«—Â ¬Œ—Ì‰ ”‰œ :'+IntToStr(strtoint(Get_NewDocumnetNo(_Today))-1);
end;

procedure TFrDocPrint.FormCreate(Sender: TObject);
begin
  inherited;
  {Ranjbar 88.06.07 Code=34}
  //DocumentNo := '0';
//  DocumentNo := '-1';
  //---
  {Ranjbar 88.05.14 Code=26}
  QRLblTitle.Caption := _SoftTitle;
  //---

  DateFrom.Text := '13'+IntToStr(_Year) + '/01/01';
  DateTo.Text := _Today;
end;

procedure TFrDocPrint.Button5Click(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFrDocPrint.BitBtn1Click(Sender: TObject);
begin
   inherited;
   OpenDb(DocNoFrom.Text,DocNoTo.Text,DateFrom.Text,DateTo.Text);
//   DocumentNo := DocNo.Text;
end;

procedure TFrDocPrint.BitBtn2Click(Sender: TObject);
begin
   inherited;
   OpenDb('0','0','0','0');
//   DocumentNo := '0';
end;

procedure TFrDocPrint.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   inherited;
   {Ranjbar Ver3}
   DBGrid_SaveColumns(Self.Name,YDBGrid);
end;

procedure TFrDocPrint.DelBtnClick(Sender: TObject);
var _PaymentId,I:Integer;_DelDate,_ListNotDeletedPaymentId:String;
begin
  inherited;
  _ListNotDeletedPaymentId:='';
  IF (messageShowString('¬Ì« «“ Õ–› ”‰œ „ÿ„∆‰ Â” Ìœø',true)) then
  begin
       IF YDBGrid.SelectedRows.Count>0 then
             FOR i:=0 to YDBGrid.SelectedRows.Count-1 do
             BEGIN
                  DM.Report_Payment_ByDocumentNo.GotoBookmark(pointer(YDBGrid.SelectedRows.Items[i]));
                  _PaymentId:=DM.Report_Payment_ByDocumentNo.FieldByName('PaymentID').AsInteger;
                  _DelDate:=DM.Report_Payment_ByDocumentNo.FieldByName('Date').AsString;

                  IF (CanDelete_Payment(_PaymentId)) Then
                      Delete_Payment_ForcePayment(_PaymentId,_Today,_Userid)
                   Else
                     _ListNotDeletedPaymentId:=_ListNotDeletedPaymentId+inttostr(_PaymentId)+',';
                    // ShowMessage('”‰œ „⁄òÊ” ﬁ»·« ’«œ— ‘œÂ «”  «„ò«‰ Õ–› ÊÃÊœ ‰œ«—œ.');
             END
      Else
      BEGIN
          _PaymentId:=DM.Report_Payment_ByDocumentNo.FieldByName('PaymentID').AsInteger;
          _DelDate:=DM.Report_Payment_ByDocumentNo.FieldByName('Date').AsString;

          IF (CanDelete_Payment(_PaymentId))  then
              Delete_Payment_ForcePayment(_PaymentId,_today,_Userid)
           Else
           ShowMessage('”‰œ „⁄òÊ” ﬁ»·« ’«œ— ‘œÂ «”  «„ò«‰ Õ–› ÊÃÊœ ‰œ«—œ.');
      END;
      if (trim(_ListNotDeletedPaymentId)<>'') then
      ShowMessage('”‰œ „⁄òÊ” »—«Ì òœ Â«Ì '+_ListNotDeletedPaymentId+' ’«œ— ‘œÂ «”  «„ò«‰ Õ–› ÊÃÊœ ‰œ«—œ.');

  end;
end;

procedure TFrDocPrint.QuickRep2Preview(Sender: TObject);
begin
  inherited;
     Fpreview:=Tfpreview.Create(Application);
     QRLblTitle2.Caption := _SoftTitle;

     Fpreview.Show;
     Fpreview.QRPreview1.QrPrinter:= QuickRep2.QRPrinter;

end;

end.
