unit PrintDeletedPayment_ByDocumentNoU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, QRCtrls, QuickRpt, ExtCtrls, ActnList,
  StdCtrls, UemsVCL, Grids, DBGrids, YDbgrid, Buttons, Menus,
  YWhereEdit, DB, YLargeIntField, ADODB, DBCtrls, AdvGlowButton;

type
  TFrPrintDeletedPayment_ByDocumentNo = class(TYBaseForm)
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
    DocNo: TYWhereEdit;
    CashLogo: TQRImage;
    Panel1: TPanel;
    SpeedButton1: TAdvGlowButton;
    SpeedButton2: TAdvGlowButton;
    SpeedButton3: TAdvGlowButton;
    SpeedButton4: TAdvGlowButton;
    xpBitBtn1: TAdvGlowButton;
    Button5: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    Panel3: TPanel;
    YDBGrid: TYDBGrid;
    BitBtn1: TAdvGlowButton;
    PageFooterBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRLabel18: TQRLabel;
    QRGroup1: TQRGroup;
    QRDBText11: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText12: TQRDBText;
    DelBtn: TAdvGlowButton;
    lBDocNo: TLabel;
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
    pnlMain: TPanel;
    rgYearStatus: TRadioGroup;
    BitBtn2: TAdvGlowButton;
    procedure SetDocumentNo(value:string);
    procedure QuickRep1Preview(Sender: TObject);
    procedure DocNoKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
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
  private
    { Private declarations }
    FDocumentNo : string;
  public
    { Public declarations }
    Property DocumentNo : string Read FDocumentNo write SetDocumentNo;
  end;

var
  FrPrintDeletedPayment_ByDocumentNo: TFrPrintDeletedPayment_ByDocumentNo;

implementation

uses dmu, BusinessLayer, Upreview, EditPaymentU, YShamsiDate;

{$R *.dfm}

procedure TFrPrintDeletedPayment_ByDocumentNo.SetDocumentNo(value:string);
begin
   inherited;

   FDocumentNo := Value;
   //if YearStatus.Checked then
   if  rgYearStatus.ItemIndex = 0 then
      Open_Report_DeletedPayment_ByDocumentNo(value,strtoint(Copy(_Today,1,4))) //”‰œÂ«Ì ”«· Ã«—Ì}
   else
      Open_Report_DeletedPayment_ByDocumentNo(value,0); //«”‰«œ  „«„Ì ”«·Â«

   with dm.Report_DeletedPayment_ByDocumentNo,parameters do
   begin
      Close;
      ParamByName('@documentNo').value := value;
      //if YearStatus.Checked then
      if  rgYearStatus.ItemIndex = 0 then
         ParamByName('@Year').value := StrToInt(Copy(_Today,1,4))
      else
         ParamByName('@Year').value := 0;
      Open;
   end;
end;

procedure TFrPrintDeletedPayment_ByDocumentNo.QuickRep1Preview(Sender: TObject);
begin
  inherited;
  Fpreview:=Tfpreview.Create(Application);
  QRLblTitle.Caption := _SoftTitle;

  Fpreview.Show;
  Fpreview.QrPreview1.QrPrinter:= QuickRep1.QRPrinter;
end;

procedure TFrPrintDeletedPayment_ByDocumentNo.DocNoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = 13 then
    DocumentNo := DocNo.Text;
end;

procedure TFrPrintDeletedPayment_ByDocumentNo.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  YDBGrid.CustomizePrint;
end;

procedure TFrPrintDeletedPayment_ByDocumentNo.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  YDBGrid.ExportToExcel;
end;

procedure TFrPrintDeletedPayment_ByDocumentNo.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  YDBGrid.Print
end;

procedure TFrPrintDeletedPayment_ByDocumentNo.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  YDBGrid.ExportToWord;
end;

procedure TFrPrintDeletedPayment_ByDocumentNo.xpBitBtn1Click(Sender: TObject);
begin
  inherited;
  QuickRep1.Preview;
end;

procedure TFrPrintDeletedPayment_ByDocumentNo.EditBtnClick(Sender: TObject);
var
  sql_Text:string;
begin
  inherited;
  {Ranjbar 88.06.30}

  if not ISSelectedDbtOrCrtCorrect(dm.Report_Payment_ByDocumentNoDebtorAccountID.AsInteger,dm.Report_Payment_ByDocumentNoCreditorAccountID.AsInteger) then
  begin
     ShowMessage('”‰œ »Â ’Ê—  « Ê„« Ìò À»  ‘œÂ «„ò«‰ ÊÌ—«Ì‘ ÊÃÊœ ‰œ«—œ');
     Exit;
  end;


  if not(Dm.Report_Payment_ByDocumentNo.Active)or
         (Dm.Report_Payment_ByDocumentNo.RecordCount=0) then
  begin
    MessageShowString('ÂÌç «ÿ·«⁄« Ì Ì«›  ‰‘œ', False);
    Exit
  end;
   //---

  FrEditPayment := TFrEditPayment.Create(Application);
  sql_Text:='SELECT AccountTypeID FROM Account WHERE AccountID='+dm.Report_Payment_ByDocumentNoDebtorAccountID.AsString;
  if Qry_GetResult(sql_Text,Dm.YeganehConnection)='1' then
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

procedure TFrPrintDeletedPayment_ByDocumentNo.FormShow(Sender: TObject);
begin
  inherited;
  DocNo.SetFocus;
  {Ranjbar Ver3}
  DBGrid_LoadColumns(Self.Name,YDBGrid);
  lBDocNo.Caption:='‘„«—Â ¬Œ—Ì‰ ”‰œ :'+IntToStr(strtoint(Get_NewDocumnetNo(_Today))-1);

  DocumentNo := '0';
end;

procedure TFrPrintDeletedPayment_ByDocumentNo.FormCreate(Sender: TObject);
begin
  inherited;
  {Ranjbar 88.06.07 Code=34}
  //DocumentNo := '0';
  DocumentNo := '-1';
  //---
  {Ranjbar 88.05.14 Code=26}
  QRLblTitle.Caption := _SoftTitle;
  //---
end;

procedure TFrPrintDeletedPayment_ByDocumentNo.Button5Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFrPrintDeletedPayment_ByDocumentNo.BitBtn1Click(Sender: TObject);
begin
  inherited;
  DocumentNo := DocNo.Text;
end;

procedure TFrPrintDeletedPayment_ByDocumentNo.BitBtn2Click(Sender: TObject);
begin
  inherited;
  DocumentNo := '0';
end;

procedure TFrPrintDeletedPayment_ByDocumentNo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  {Ranjbar Ver3}
  DBGrid_SaveColumns(Self.Name,YDBGrid);
end;

procedure TFrPrintDeletedPayment_ByDocumentNo.DelBtnClick(Sender: TObject);
var
  _PaymentId,I:Integer;
  _DelDate,_ListNotDeletedPaymentId:String;
  msgstr : string;
begin
  inherited;
  _ListNotDeletedPaymentId:='';

  if YDBGrid.SelectedRows.Count>0 then
    msgstr  := '¬Ì« «“ Õ–› '+ IntToStr(YDBGrid.SelectedRows.Count) + ' ”‰œ «‰ Œ«»Ì „ÿ„⁄‰ „Ì »«‘Ìœ ø '
  else  msgstr := ' ¬Ì« «“ Õ–› ”‰œ Ã«—Ì „ÿ„⁄‰ „Ì »«‘Ìœø' ;


  //if (messageShowString('¬Ì« «“ Õ–› ”‰œ „ÿ„∆‰ Â” Ìœø',true)) then

  if (messageShowString(msgstr,true)) then
  begin
    if YDBGrid.SelectedRows.Count>0 then
      for i:=0 to YDBGrid.SelectedRows.Count-1 do
      begin
        DM.Report_DeletedPayment_ByDocumentNo.GotoBookmark(pointer(YDBGrid.SelectedRows.Items[i]));
        _PaymentId:=DM.Report_DeletedPayment_ByDocumentNo.FieldByName('PaymentID').AsInteger;
        Delete_PaymentFromReverse(_PaymentId);
        ShowMessage('Õ–› «”‰«œ „⁄òÊ” »« „Ê›ﬁÌ  «‰Ã«„ ‘œ');
      end
    else
    begin
      _PaymentId:=DM.Report_DeletedPayment_ByDocumentNo.FieldByName('PaymentID').AsInteger;
      Delete_PaymentFromReverse(_PaymentId);
      ShowMessage('Õ–› ”‰œ „⁄òÊ” »« „Ê›ﬁÌ  «‰Ã«„ ‘œ');
    end;
  end;

  lBDocNo.Caption:='‘„«—Â ¬Œ—Ì‰ ”‰œ :'+IntToStr(strtoint(Get_NewDocumnetNo(_Today))-1);
  BitBtn1.Click;

  DocumentNo := '0';
end;

end.
