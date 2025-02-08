 unit Report_PaymentU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ADODB, ExtCtrls, Grids, DBGrids, YDbgrid,
  StdCtrls, ActnList,  Mask, DBCtrls, YWhereEdit,
  Buttons, Menus, QRCtrls, QuickRpt, SolarCalendarPackage, AdvGlowButton;

type
  TFrReport_Payment = class(TYBaseForm)
    FilterPanel: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    YWhereEdit5: TYWhereEdit;
    YWhereEdit6: TYWhereEdit;
    YWhereEdit7: TYWhereEdit;
    YWhereEdit4: TYWhereEdit;
    YWhereEdit3: TYWhereEdit;
    YWhereEdit2: TYWhereEdit;
    Label9: TLabel;
    Label10: TLabel;
    YWhereEdit9: TYWhereEdit;
    YWhereEdit10: TYWhereEdit;
    QuickRep2: TQuickRep;
    DetailBand2: TQRBand;
    PageHeaderBand1: TQRBand;
    QRDBText9: TQRDBText;
    QrTitle: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel16: TQRLabel;
    Cashlogo: TQRImage;
    QRBand2: TQRBand;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRDBText3: TQRDBText;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRDBText8: TQRDBText;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRShape6: TQRShape;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    ColumnHeaderBand2: TQRBand;
    QRLabel6: TQRLabel;
    QRShape2: TQRShape;
    QRShape1: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape8: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape5: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel17: TQRLabel;
    QRGroup1: TQRGroup;
    Panel1: TPanel;
    Button5: TAdvGlowButton;
    Button4: TAdvGlowButton;
    Button3: TAdvGlowButton;
    Button2: TAdvGlowButton;
    Button6: TAdvGlowButton;
    MakeRep: TAdvGlowButton;
    Panel2: TPanel;
    YDBGrid1: TYDBGrid;
    MEDate: TSolarDatePicker;
    MEInsertDate: TSolarDatePicker;
    SpeedButton1: TAdvGlowButton;
    SpeedButton2: TAdvGlowButton;
    pnlMain: TPanel;
    procedure MakeRepClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    function Where:string;
    procedure QuickRep1Preview(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrReport_Payment: TFrReport_Payment;

implementation

Uses DMU,  BusinessLayer, AddFinancialNoteU, Upreview , YShamsiDate;

{$R *.dfm}

Function TFrReport_Payment.Where:string;
Var
   i : Integer;
   S : String;
begin
   Result:='';
   for i:=0 to ComponentCount-1 do
      if Components[i].ClassNameIs('TYWhereEdit') then
         if TYWhereEdit(Components[i]).Resultwhere<>'' then
            Result:=Result+' and '+TYWhereEdit(Components[i]).Resultwhere;

   {Ranjbar}
   S := Txt_Del254(MEDate.Text);
   if (MEDate.Text <> '14  /  /  ')And(isValidDate(S)) then
      Result := Result+' and '+' Payment.Date = '+QuotedStr(S);

   S := '';
   S := Txt_Del254(MEInsertDate.Text);
   if (MEInsertDate.Text <> '14  /  /  ')And(isValidDate(S)) then
      Result := Result+' and '+' Payment.InsertDate = '+QuotedStr(S);
   //---

   if Result <> '' then
      Delete(Result,1,5);
end;

procedure TFrReport_Payment.MakeRepClick(Sender: TObject);
begin
   inherited;
   Open_Report_Payment(Where);
   YDBGrid1.UpdateFooter;
end;

procedure TFrReport_Payment.Button6Click(Sender: TObject);
begin
  inherited;
YDBGrid1.CustomizePrint;
end;

procedure TFrReport_Payment.Button3Click(Sender: TObject);
begin
  inherited;
YDBGrid1.ExportToWord;
end;

procedure TFrReport_Payment.Button4Click(Sender: TObject);
begin
  inherited;
YDBGrid1.ExportToExcel;
end;

procedure TFrReport_Payment.Button2Click(Sender: TObject);
begin
   inherited;
   QRGroup1.ForceNewPage := messageShowString('Â— ”‰œ œ— Ìò ’›ÕÂ ‰„«Ì‘ œ«œÂ ‘Êœø',true);
   QuickRep2.Preview
end;

procedure TFrReport_Payment.Button5Click(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFrReport_Payment.QuickRep1Preview(Sender: TObject);
begin
  inherited;
 Fpreview:=Tfpreview.Create(Application);
 Fpreview.Show;
 Fpreview.QrPreview1.QrPrinter:= QuickRep2.QRPrinter;

end;

procedure TFrReport_Payment.FormCreate(Sender: TObject);
begin
  inherited;
  {Ranjbar 88.05.14 Code=14}
  QrTitle.Caption := _SoftTitle;
  //---
end;

procedure TFrReport_Payment.FormShow(Sender: TObject);
begin
   inherited;
   {Ranjbar Ver3}
   DBGrid_LoadColumns(Self.Name,YDBGrid1);
end;

procedure TFrReport_Payment.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   inherited;
   {Ranjbar Ver3}
   DBGrid_SaveColumns(Self.Name,YDBGrid1);
end;

procedure TFrReport_Payment.SpeedButton1Click(Sender: TObject);
var  Key: Word;
     Shift: TShiftState;
     begin
  inherited;
  Key:=32;
  shift:=  [ssCtrl,ssRight..ssDouble];
  GotoNext(YWhereEdit7,key,Shift);

end;

procedure TFrReport_Payment.SpeedButton2Click(Sender: TObject);
var  Key: Word;
     Shift: TShiftState;
     begin
  inherited;
   Key:=32;
  shift:=  [ssCtrl,ssRight..ssDouble];
  GotoNext(YWhereEdit5,key,Shift);
end;

end.
