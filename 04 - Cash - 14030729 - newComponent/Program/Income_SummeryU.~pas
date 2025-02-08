 unit Income_SummeryU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ADODB, ExtCtrls, Grids, DBGrids, YDbgrid,
  StdCtrls, ActnList, ComCtrls, xpPages, UemsVCL,
  QuickRpt, QRCtrls, Buttons, DBCtrls, YLargeIntField, Menus, Mask,
  SolarCalendarPackage, AdvGlowButton;

type
  TFrIncome_Summery = class(TYBaseForm)
    Panel2: TPanel;
    MakeRep: TAdvGlowButton;
    Label3: TLabel;
    Label4: TLabel;
    QuickRep2: TQuickRep;
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
    QRChildBand1: TQRSubDetail;
    QRDBText13: TQRDBText;
    QRShape16: TQRShape;
    QRDBText14: TQRDBText;
    QRShape19: TQRShape;
    QRDBText16: TQRDBText;
    Balance_Sheet1: TADOStoredProc;
    Balance_Sheet1id: TAutoIncField;
    Balance_Sheet1accounttitle: TWideStringField;
    Balance_Sheet1c1: TYLargeIntField;
    Balance_Sheet1c2: TYLargeIntField;
    Balance_Sheet1c3: TYLargeIntField;
    Balance_Sheet1c4: TYLargeIntField;
    Balance_Sheet1c5: TYLargeIntField;
    Balance_Sheet1c6: TYLargeIntField;
    Balance_Sheet2: TADOStoredProc;
    QRSubDetail1: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRShape1: TQRShape;
    QRDBText2: TQRDBText;
    QRShape2: TQRShape;
    QRDBText3: TQRDBText;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    SumAmount1: TQRLabel;
    SumAmount3: TQRLabel;
    SumAmount2: TQRLabel;
    Balance_Sheet2id: TAutoIncField;
    Balance_Sheet2accounttitle: TWideStringField;
    Balance_Sheet2c1: TLargeintField;
    Balance_Sheet2c2: TLargeintField;
    Balance_Sheet2c3: TLargeintField;
    Balance_Sheet2c4: TLargeintField;
    Balance_Sheet2c5: TLargeintField;
    Balance_Sheet2c6: TLargeintField;
    DBalance_Sheet2: TDataSource;
    DBalance_Sheet1: TDataSource;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRImage1: TQRImage;
    Panel4: TPanel;
    Button5: TAdvGlowButton;
    Button2: TAdvGlowButton;
    QRBand5: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel11: TQRLabel;
    xpPageControl1: TPageControl;
    xpTabSheet1: TTabSheet;
    YDBGrid: TYDBGrid;
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
    xpTabSheet2: TTabSheet;
    Panel3: TPanel;
    Label1: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    ColHeader12: TLabel;
    ColHeader22: TLabel;
    ColHeader32: TLabel;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    YDBGrid1: TYDBGrid;
    DateFrom: TSolarDatePicker;
    DateTo: TSolarDatePicker;
    pnlMain: TPanel;
    procedure Button6Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure MakeRepClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DateToChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure xpBitBtn2Click(Sender: TObject);
    Procedure  Open_Balance_Sheet;
    procedure SumAmount1Print(sender: TObject; var Value: String);
    procedure SumAmount2Print(sender: TObject; var Value: String);
    procedure SumAmount3Print(sender: TObject; var Value: String);
    procedure Button2Click(Sender: TObject);
    procedure QuickRep2Preview(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DateFromEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrIncome_Summery: TFrIncome_Summery;

implementation

uses DMU, AccountFilterU, BusinessLayer, YShamsiDate, DateUtils, Upreview;

{$R *.dfm}


procedure TFrIncome_Summery.Button6Click(Sender: TObject);
begin
  inherited;
  YDBGrid.CustomizePrint;
end;

procedure TFrIncome_Summery.Button3Click(Sender: TObject);
begin
  inherited;
  YDBGrid.ExportToWord;
end;

procedure TFrIncome_Summery.Button4Click(Sender: TObject);
begin
  inherited;
  YDBGrid.ExportToExcel;
end;

procedure TFrIncome_Summery.Button5Click(Sender: TObject);
begin
  inherited;
  Close;
end;

Procedure  TFrIncome_Summery.Open_Balance_Sheet;
begin
  with Balance_Sheet1,parameters do
  begin
    Close;
    ParamByName('@dateFrom').value:=Txt_Del254(DateFrom.Text);
    ParamByName('@DateTo').value:=Txt_Del254(DateTo.Text);
    ParamByName('@ParentID').value:=9;
    Open;
  end;

  with Balance_Sheet2,parameters do
  begin
    Close;
    ParamByName('@dateFrom').value:=Txt_Del254(DateFrom.Text);
    ParamByName('@DateTo').value:=Txt_Del254(DateTo.Text);
    ParamByName('@ParentID').value:=8;
    Open;
  end;
end;

procedure TFrIncome_Summery.MakeRepClick(Sender: TObject);
begin
  inherited;
  {Ranjbar 88.05.16 Code=27}
  //ß ßÑÏä ÕÍÊ ÏÑÓÊí ÊÇÑíÎåÇ . Çíä ÊÇÈÚ åãÑÇ ÈÇ íÛÇã ãíÈÇÔÏ
  if not Date_CheckTwoDate(DateFrom.Text,DateTo.Text) then
  begin
    DateFrom.SetFocus;
    Exit;
  end;
  //---
  Open_Balance_Sheet;
end;

procedure TFrIncome_Summery.FormCreate(Sender: TObject);
begin
  inherited;
  {Ranjbar
  DateFrom.Text := copy(_Today,1,5)+'01/01';
  DateTo.Text := _Today;}
  DateFrom.Text := copy(_Today,1,5)+'01/01';
  DateTo.Text := _Today;
  //---

  Qrtitle3.Caption:=_SoftTitle;
  DateToChange(DateTo);
end;

procedure TFrIncome_Summery.DateToChange(Sender: TObject);
begin
  inherited;
  Colheader1.Caption:=' ÑÏÔ ÚãáíÇÊ ÇÒ ' +Trim( DateFrom.Text)+' ÊÇ '+trim(DateTo.Text) ;
  Colheader2.Caption:='ÌãÚ ÑÏÔ ÚãáíÇÊ ÊÇ ÊÇÑíÎ'+trim(DateTo.Text) ;
  Colheader3.Caption:='ãÇäÏå ÑÏÔ ÚãáíÇÊ ÊÇ ÊÇÑíÎ '+trim(DateTo.Text) ;
  Colheader12.Caption:=' ÑÏÔ ÚãáíÇÊ ÇÒ ' +Trim( DateFrom.Text)+' ÊÇ '+trim(DateTo.Text) ;
  Colheader22.Caption:='ÌãÚ ÑÏÔ ÚãáíÇÊ ÊÇ ÊÇÑíÎ'+trim(DateTo.Text) ;
  Colheader32.Caption:='ãÇäÏå ÑÏÔ ÚãáíÇÊ ÊÇ ÊÇÑíÎ '+trim(DateTo.Text) ;
  QColumnHeader33.Caption:='ãÇäÏå ÑÏÔ ÚãáíÇÊ ÊÇ ÊÇÑíÎ '+trim(DateTo.Text) ;
end;

procedure TFrIncome_Summery.FormShow(Sender: TObject);
begin
  inherited;
  DateFrom.SetFocus;
  {Ranjbar Ver3}
  DBGrid_LoadColumns(Self.Name,YDBGrid);
end;

procedure TFrIncome_Summery.xpBitBtn2Click(Sender: TObject);
begin
  inherited;
  QuickRep2.Preview;
end;

procedure TFrIncome_Summery.SumAmount1Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := CommaSeperate(IntToStr(Balance_Sheet1c6.AsLargeInt - Balance_Sheet1c5.AsLargeInt));
end;

procedure TFrIncome_Summery.SumAmount2Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := CommaSeperate(IntToStr(Balance_Sheet2c5.AsLargeInt - Balance_Sheet2c6.AsLargeInt));
end;

procedure TFrIncome_Summery.SumAmount3Print(sender: TObject; var Value: String);
var
  tmp:largeint;
begin
  inherited;
  tmp := Balance_Sheet1c6.AsLargeInt - Balance_Sheet1c5.AsLargeInt + Balance_Sheet2c6.AsLargeInt - Balance_Sheet2c5.AsLargeInt;
  if tmp>=0 then
    Value := CommaSeperate(IntToStr(tmp))
  else
    Value:='( -'+CommaSeperate(IntToStr(-tmp))+' )';  // Amin 1391/12/20
    //Value:=CommaSeperate('('+IntToStr(tmp)+' )');   // Amin 1391/12/20
end;

procedure TFrIncome_Summery.Button2Click(Sender: TObject);
begin
  inherited;
  QuickRep2.Preview;
end;

procedure TFrIncome_Summery.QuickRep2Preview(Sender: TObject);
begin
  inherited;
  Fpreview := Tfpreview.Create(Application);
  Fpreview.Show;
  Fpreview.QrPreview1.QrPrinter := QuickRep2.QRPrinter;
end;

procedure TFrIncome_Summery.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  {Ranjbar 88.05.16 Code=27}
  if Key = Vk_Return then
    SelectNext(TWinControl(ActiveControl),True,True);
  //---
end;

procedure TFrIncome_Summery.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  {Ranjbar Ver3}
  DBGrid_SaveColumns(Self.Name,YDBGrid);
end;

procedure TFrIncome_Summery.DateFromEnter(Sender: TObject);
begin
  inherited;
  {Ranjbar}
  TMaskEdit(Sender).SelStart := 1;
  //---
end;

end.
