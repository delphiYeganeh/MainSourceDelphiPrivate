 unit Daily_ReportU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ActnMan, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList,
  Buttons, DBActns, UemsVCL, Grids, DBGrids, YDbgrid, XPStyleActnCtrls,
  QRCtrls, QuickRpt, Menus, DB, YLargeIntField, ADODB, SolarCalendarPackage;

type
  TFrDaily_Report = class(TYBaseForm)
    Panel2: TPanel;
    ActionManager1: TActionManager;
    ARec: TDataSetPost;
    Acancel: TDataSetCancel;
    asearchCheque: TAction;
    Action1: TAction;
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
    QRLabel5: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape8: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
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
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRLabel9: TQRLabel;
    QRDBText7: TQRDBText;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    UserPanel: TPanel;
    Label1: TLabel;
    UserId: TDBLookupComboBox;
    MakeRep: TBitBtn;
    QRImage1: TQRImage;
    MEDateTo: TSolarDatePicker;
    MEDateFrom: TSolarDatePicker;
    Panel3: TPanel;
    Button5: TBitBtn;
    xpBitBtn1: TBitBtn;
    Panel4: TPanel;
    YDBGrid: TYDBGrid;
    QRBand5: TQRBand;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    procedure RefreshReportPayment;
    procedure FormCreate(Sender: TObject);
    procedure MakeRepClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure QuickRep1Preview(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrDaily_Report: TFrDaily_Report;
implementation

uses dmu,   YShamsiDate, BusinessLayer, AccountDetailsU, EditPaymentU,
  Upreview;
{$R *.dfm}


procedure TFrDaily_Report.RefreshReportPayment;
begin
  with dm,Report_Daily_Payment do
  begin
    YDBGrid.PrintTitle:=' ê“«—‘ œ—Ì«›  Ê Å—œ«Œ    «“  «—ÌŒ '+ Txt_Del254(MEDateFrom.Text)+'  « '+Txt_Del254(MEDateTo.Text);

    if UserPanel.Visible then
    begin
      if UserId.KeyValue = Null then
        ShowMyMessage(' ÊÃÂ','·ÿ›« ò«—»— „Ê—œ ‰Ÿ— —« «‰ Œ«» ò‰Ìœ', [mbOK], mtWarning)
      else
        Open_Report_Daily_Payment(Txt_Del254(MEDateFrom.Text),Txt_Del254(MEDateTo.Text),Userid.KeyValue);
    end
    else
       Open_Report_Daily_Payment(Txt_Del254(MEDateFrom.Text),Txt_Del254(MEDateTo.Text),0);
  end;

  YDBGrid.UpdateFooter;
end;

procedure TFrDaily_Report.FormCreate(Sender: TObject);
begin
   inherited;
   {Ranjbar}
   {DateFrom.Text:=_Today;
   DateTo.Text:=_Today;}
   MEDateFrom.Text := _Today;
   MEDateTo.Text := _Today;
   //---

end;

procedure TFrDaily_Report.MakeRepClick(Sender: TObject);
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
   RefreshReportPayment;
end;

procedure TFrDaily_Report.Button5Click(Sender: TObject);
begin
   inherited;
   close;
end;

procedure TFrDaily_Report.xpBitBtn1Click(Sender: TObject);
begin
   inherited;
   if UserPanel.Visible then
      Qrtitle.Caption:='  «“  «—ÌŒ '+Trim(MEDateFrom.Text)+'  «  «—ÌŒ '+Trim( MEDateTo.Text) +' ò«—»— : '+userid.Text
   else
      Qrtitle.Caption:='  «“  «—ÌŒ '+Trim(MEDateFrom.Text)+'  «  «—ÌŒ '+Trim( MEDateTo.Text);
   QuickRep1.Preview;
end;

procedure TFrDaily_Report.QuickRep1Preview(Sender: TObject);
begin
   inherited;
   Fpreview:=Tfpreview.Create(Application);
   Fpreview.Show;
   Fpreview.QrPreview1.QrPrinter := QuickRep1.QRPrinter;
end;

procedure TFrDaily_Report.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   {Ranjbar 88.05.16 Code=27}
   if Key = Vk_Return then
      SelectNext(TWinControl(ActiveControl),True,True);
   //---
end;

procedure TFrDaily_Report.FormShow(Sender: TObject);
begin
   inherited;
   {Ranjbar Ver3}
   DBGrid_LoadColumns(Self.Name,YDBGrid);
end;

procedure TFrDaily_Report.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   {Ranjbar Ver3}
   DBGrid_SaveColumns(Self.Name,YDBGrid);
end;

end.
