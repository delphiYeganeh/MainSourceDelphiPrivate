 unit SummeryPayment_allU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ADODB, ExtCtrls, Grids, DBGrids, YDbgrid,
  StdCtrls, ActnList, ComCtrls, xpPages, UemsVCL,
  QuickRpt, QRCtrls, Buttons, DBCtrls, Menus, Mask, SolarCalendarPackage;

type
  TFrSummeryPayment_all = class(TYBaseForm)
    Panel2: TPanel;
    QuickRep6: TQuickRep;
    DetailBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    Qrtitle: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel1: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape14: TQRShape;
    QRDBText8: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QColumnHeader1: TQRLabel;
    QColumnHeader2: TQRLabel;
    QColumnHeader3: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRShape4: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape3: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    MakeRep: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    QuickRep4: TQuickRep;
    QRBand1: TQRBand;
    QRDBText7: TQRDBText;
    QRShape11: TQRShape;
    QRBand2: TQRBand;
    QrTitle2: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape17: TQRShape;
    QRShape20: TQRShape;
    QColumnHeader32: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRShape10: TQRShape;
    QRShape12: TQRShape;
    QRDBText10: TQRDBText;
    QRShape13: TQRShape;
    QRDBText12: TQRDBText;
    QRShape15: TQRShape;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QColumnHeader22: TQRLabel;
    QuickRep2: TQuickRep;
    QRBand3: TQRBand;
    QRDBText13: TQRDBText;
    QRShape16: TQRShape;
    QRDBText14: TQRDBText;
    QRShape19: TQRShape;
    QRDBText16: TQRDBText;
    QRBand4: TQRBand;
    QrTitle3: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QColumnHeader33: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    CashLogo: TQRImage;
    Cashlogo2: TQRImage;
    QRImage1: TQRImage;
    Panel1: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Colheader1: TLabel;
    ColHeader2: TLabel;
    ColHeader3: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    MEDateFrom: TSolarDatePicker;
    MEDateTo: TSolarDatePicker;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Button2: TBitBtn;
    xpBitBtn1: TBitBtn;
    xpBitBtn2: TBitBtn;
    Button5: TBitBtn;
    Panel4: TPanel;
    YDBGrid: TYDBGrid;
    QRBand5: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel11: TQRLabel;
    QRBand6: TQRBand;
    QRLabel15: TQRLabel;
    QRLabel20: TQRLabel;
    QRBand7: TQRBand;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    procedure Button6Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure MakeRepClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MEDateToChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure xpBitBtn2Click(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure QuickRep2Preview(Sender: TObject);
    procedure QuickRep6Preview(Sender: TObject);
    procedure QuickRep4Preview(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    AccountTypeID: integer;
    { Public declarations }
  end;

var
  FrSummeryPayment_all: TFrSummeryPayment_all;

implementation

uses DMU, AccountFilterU, BusinessLayer, YShamsiDate, DateUtils, Upreview;

{$R *.dfm}


procedure TFrSummeryPayment_all.Button6Click(Sender: TObject);
begin
  inherited;
YDBGrid.CustomizePrint;
end;

procedure TFrSummeryPayment_all.Button3Click(Sender: TObject);
begin
  inherited;
YDBGrid.ExportToWord;
end;

procedure TFrSummeryPayment_all.Button4Click(Sender: TObject);
begin
  inherited;
YDBGrid.ExportToExcel;
end;

procedure TFrSummeryPayment_all.Button2Click(Sender: TObject);
begin
  inherited;
QuickRep6.Preview;
  end;

procedure TFrSummeryPayment_all.Button5Click(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFrSummeryPayment_all.MakeRepClick(Sender: TObject);
begin
   inherited;
   {Ranjbar 88.05.16 Code=27}
   //çﬂ ﬂ—œ‰ ’Õ  œ—” Ì  «—ÌŒÂ« . «Ì‰  «»⁄ Â„—« »« ÅÌ€«„ „Ì»«‘œ
   if not Date_CheckTwoDate(MEDateFrom.Text,MEDateTo.Text) then
   begin
      MEDateFrom.SetFocus;
      Exit;
   end;
   //---
   
   if AccountTypeID<>0 then
    Open_Balance_Sheet_all(Txt_Del254(MEDateFrom.Text),Txt_Del254(MEDateTo.Text),AccountTypeID)
   else
    Open_Balance_Sheet_all(Txt_Del254(MEDateFrom.Text),Txt_Del254(MEDateTo.Text),0);
end;

procedure TFrSummeryPayment_all.FormCreate(Sender: TObject);
begin
   inherited;
   AccountTypeID:=0;
   {Ranjbar
   DateFrom.Text:=copy(_Today,1,5)+'01/01';
   DateTo.Text:=_Today;}
   MEDateFrom.Text := copy(_Today,1,5)+'01/01';
   MEDateTo.Text := _Today;
   //---

   Qrtitle.Caption := _SoftTitle;
   Qrtitle2.Caption := _SoftTitle;
   Qrtitle3.Caption := _SoftTitle;
   MEDateToChange(MEDateTo);
end;

procedure TFrSummeryPayment_all.MEDateToChange(Sender: TObject);
begin
   inherited;
   Colheader1.Caption:=' ê—œ‘ ⁄„·Ì«  «“ ' +Trim( MEDateFrom.Text)+'  « '+trim(MEDateTo.Text) ;
   Colheader2.Caption:='Ã„⁄ ê—œ‘ ⁄„·Ì«   «  «—ÌŒ'+trim(MEDateTo.Text) ;
   Colheader3.Caption:='„«‰œÂ ê—œ‘ ⁄„·Ì«   «  «—ÌŒ '+trim(MEDateTo.Text) ;
   QColumnHeader1.Caption:=' ê—œ‘ ⁄„·Ì«  «“ ' +Trim( MEDateFrom.Text)+'  « '+trim(MEDateTo.Text) ;
   QColumnHeader2.Caption:='Ã„⁄ ê—œ‘ ⁄„·Ì«   «  «—ÌŒ'+trim(MEDateTo.Text) ;
   QColumnHeader22.Caption:='Ã„⁄ ê—œ‘ ⁄„·Ì«   «  «—ÌŒ'+trim(MEDateTo.Text) ;
   QColumnHeader3.Caption:='„«‰œÂ ê—œ‘ ⁄„·Ì«   «  «—ÌŒ '+trim(MEDateTo.Text) ;
   QColumnHeader32.Caption:='„«‰œÂ ê—œ‘ ⁄„·Ì«   «  «—ÌŒ '+trim(MEDateTo.Text) ;
   QColumnHeader33.Caption:='„«‰œÂ ê—œ‘ ⁄„·Ì«   «  «—ÌŒ '+trim(MEDateTo.Text) ;
end;

procedure TFrSummeryPayment_all.FormShow(Sender: TObject);
begin
   inherited;
   DBGrid_LoadColumns(Self.Name,YDBGrid);
   MEDateFrom.SetFocus;
end;

procedure TFrSummeryPayment_all.SpeedButton4Click(Sender: TObject);
begin
  inherited;
    YDBGrid.CustomizePrint;
end;

procedure TFrSummeryPayment_all.SpeedButton3Click(Sender: TObject);
begin
  inherited;
YDBGrid.ExportToExcel;

end;

procedure TFrSummeryPayment_all.SpeedButton2Click(Sender: TObject);
begin
  inherited;
YDBGrid.Print

end;

procedure TFrSummeryPayment_all.SpeedButton1Click(Sender: TObject);
begin
  inherited;
YDBGrid.ExportToWord;

end;

procedure TFrSummeryPayment_all.xpBitBtn2Click(Sender: TObject);
begin
  inherited;
QuickRep2.Preview;

end;

procedure TFrSummeryPayment_all.xpBitBtn1Click(Sender: TObject);
begin
  inherited;
QuickRep4.Preview;

end;

procedure TFrSummeryPayment_all.QuickRep2Preview(Sender: TObject);
begin
  inherited;
   Fpreview:=Tfpreview.Create(Application);
   Fpreview.Show;
   Fpreview.QrPreview1.QrPrinter:= QuickRep2.QRPrinter;

end;

procedure TFrSummeryPayment_all.QuickRep6Preview(Sender: TObject);
begin
  inherited;
   Fpreview:=Tfpreview.Create(Application);
   Fpreview.Show;
   Fpreview.QrPreview1.QrPrinter:= QuickRep6.QRPrinter;

end;

procedure TFrSummeryPayment_all.QuickRep4Preview(Sender: TObject);
begin
  inherited;
   Fpreview:=Tfpreview.Create(Application);
   Fpreview.Show;
   Fpreview.QrPreview1.QrPrinter:= QuickRep4.QRPrinter;

end;

procedure TFrSummeryPayment_all.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   {Ranjbar 88.05.16 Code=27}
   if Key = Vk_Return then
      SelectNext(TWinControl(ActiveControl),True,True);
   //---
end;

procedure TFrSummeryPayment_all.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   DBGrid_SaveColumns(Self.Name,YDBGrid);
end;

end.
