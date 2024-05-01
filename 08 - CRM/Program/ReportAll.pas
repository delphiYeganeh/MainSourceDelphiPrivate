unit ReportAll;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ADODB, ExtActns, ActnList, StdCtrls, Grids,
  DBGrids, YDbgrid, ExtCtrls, YWhereEdit, ComCtrls, YINtegerField, Menus;

type
  TFrReportAll = class(TMBaseForm)
    rpContractMarketer: TADOStoredProc;
    DrpContractMarketer: TDataSource;
    rpContractProduct: TADOStoredProc;
    DrpContractProduct: TDataSource;
    DrpConactByDate: TDataSource;
    rpConactByWeek: TADOStoredProc;
    rpConactByWeekProduct: TADOStoredProc;
    DrpConactByWeekProduct: TDataSource;
    DrpConactByWeek: TDataSource;
    rpMarketer: TADOStoredProc;
    DrpMarketer: TDataSource;
    rpConactByDate: TADOStoredProc;
    rpContractMarketerRate: TADOStoredProc;
    DrpContractMarketerRate: TDataSource;
    PopupMenu1: TPopupMenu;
    excel1: TMenuItem;
    Excel2: TMenuItem;
    pnlMain: TPanel;
    GroupBox1: TGroupBox;
    allEdit: TEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    dbgCountContact: TYDBGrid;
    YWhereEdit1: TYWhereEdit;
    Button1: TButton;
    Panel6: TPanel;
    dbgCountContactweek: TYDBGrid;
    dbgCountContactWeekSoftware: TYDBGrid;
    Panel5: TPanel;
    Label3: TLabel;
    YWhereEdit3: TYWhereEdit;
    Button3: TButton;
    Panel7: TPanel;
    Label2: TLabel;
    YWhereEdit2: TYWhereEdit;
    Button2: TButton;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Panel9: TPanel;
    Label5: TLabel;
    Label8: TLabel;
    dbgReportMarketerSales: TYDBGrid;
    Button4: TButton;
    wredtReportMarketerSales: TYWhereEdit;
    Panel10: TPanel;
    Label6: TLabel;
    dbgMarketerTurnover: TYDBGrid;
    YWhereEdit6: TYWhereEdit;
    Button6: TButton;
    Panel8: TPanel;
    Label4: TLabel;
    dbgMonthSoftwareSale: TYDBGrid;
    YWhereEdit5: TYWhereEdit;
    Button5: TButton;
    Panel4: TPanel;
    Label7: TLabel;
    dbgSaleToMonthNumber: TYDBGrid;
    YWhereEdit7: TYWhereEdit;
    Button7: TButton;
Procedure  OpenConactByDate(FromDate:string;ToDate:string);
Procedure  OpenConactByWeek(FromDate:string;ToDate:string);
Procedure  OpenConactByWeekProduct(FromDate:string;ToDate:string);
Procedure  OpenContractMarketer(FromDate:string;ToDate:string);
Procedure  OpenContractProduct(FromDate:string;ToDate:string);
Procedure  OpenContractMarketerRate(FromDate:string;ToDate:string);
Procedure  OpenMarketer(FromDate:string;ToDate:string);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure allEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure excel1Click(Sender: TObject);
    procedure Excel2Click(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure FormShow(Sender: TObject);
  private
    procedure MakePrintTitle;
    procedure MakeReportTitle(Grid :TYDBGrid);
    procedure initialPrintTitle;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrReportAll: TFrReportAll;

implementation

uses dmu, YShamsiDate;

{$R *.dfm}

Procedure  TFrReportAll.OpenContractMarketer(FromDate:string;ToDate:string);
  begin
  with rpContractMarketer,parameters do
   begin
    Close;
     ParamByName('@FromDate').value:=FromDate;
     ParamByName('@ToDate').value:=Todate;
    Open;
   end;
end;

Procedure  TFrReportAll.OpenContractProduct(FromDate:string;ToDate:string);
  begin
  with rpContractProduct,parameters do
   begin
    Close;
     ParamByName('@FromDate').value:=FromDate;
     ParamByName('@ToDate').value:=Todate;
    Open;
   end;
end;

Procedure  TFrReportAll.OpenContractMarketerRate(FromDate:string;ToDate:string);
  begin
  with rpContractMarketerRate,parameters do
   begin
    Close;
     ParamByName('@FromDate').value:=FromDate;
     ParamByName('@ToDate').value:=Todate;
    Open;
   end;
end;

Procedure  TFrReportAll.OpenConactByDate(FromDate:string;ToDate:string);
  begin
  with rpConactByDate,parameters do
   begin
     Close;
     ParamByName('@FromDate').value:=FromDate;
     ParamByName('@ToDate').value:=Todate;
    Open;
   end;
end;
Procedure  TFrReportAll.OpenConactByWeek(FromDate:string;ToDate:string);
  begin
  with rpConactByWeek,parameters do
   begin
     Close;
     ParamByName('@FromDate').value:=FromDate;
     ParamByName('@ToDate').value:=Todate;
     Open;
   end;
end;
Procedure  TFrReportAll.OpenConactByWeekProduct(FromDate:string;ToDate:string);
  begin
  with rpConactByWeekProduct,parameters do
   begin
    Close;
     ParamByName('@FromDate').value:=FromDate;
     ParamByName('@ToDate').value:=Todate;
    Open;
   end;
end;
Procedure  TFrReportAll.OpenMarketer(FromDate:string;ToDate:string);
  begin
  with rpMarketer,parameters do
   begin
    Close;
     ParamByName('@FromDate').value:=FromDate;
     ParamByName('@ToDate').value:=Todate;
    Open;
   end;
end;

procedure TFrReportAll.Button1Click(Sender: TObject);
begin
  inherited;
  OpenConactByDate(YWhereEdit1.SinceValue,YWhereEdit1.ToValue);
end;

procedure TFrReportAll.Button2Click(Sender: TObject);
begin
  inherited;
OpenConactByWeek(YWhereEdit2.SinceValue,YWhereEdit2.ToValue);
end;

procedure TFrReportAll.Button3Click(Sender: TObject);
begin
  inherited;
OpenConactByWeekProduct(YWhereEdit3.SinceValue,YWhereEdit3.ToValue);

end;

procedure TFrReportAll.Button4Click(Sender: TObject);
begin
  inherited;
OpenContractMarketer(wredtReportMarketerSales.SinceValue,wredtReportMarketerSales.ToValue);
end;

procedure TFrReportAll.Button5Click(Sender: TObject);
begin
  inherited;
OpenContractProduct(YWhereEdit5.SinceValue,YWhereEdit5.ToValue);

end;

procedure TFrReportAll.Button6Click(Sender: TObject);
begin
  inherited;
OpenMarketer(YWhereEdit6.SinceValue,YWhereEdit6.ToValue);

end;

procedure TFrReportAll.FormCreate(Sender: TObject);
var CurrentMonth,Current3Month:string;
//    StartMonth,EndMonth   :String;
begin
  inherited;
CurrentMonth:= replace(copy(_today,3,5),'/0','/');

Current3Month:= replace(copy(ShamsiIncDate(_today,0,-5,0),3,5)+'-'+ copy(_today,3,5),'/0','/');

//  StartMonth  := replace(copy(ShamsiIncDate(_today,0,-5,0),3,5),'/0','/');;
//  EndMonth    := replace(copy(_today,3,5),'/0','/');

YWhereEdit1.Text:=CurrentMonth;
YWhereEdit2.Text:=Current3Month;
YWhereEdit3.Text:=Current3Month;
wredtReportMarketerSales.Text:=Current3Month;
YWhereEdit5.Text:=Current3Month;
YWhereEdit6.Text:=Current3Month;
YWhereEdit7.Text:=Current3Month;
 OpenConactByDate(YWhereEdit1.SinceValue,YWhereEdit1.ToValue);
 OpenConactByWeek(YWhereEdit2.SinceValue,YWhereEdit2.ToValue);
 OpenConactByWeekProduct(YWhereEdit3.SinceValue,YWhereEdit3.ToValue);
 OpenContractMarketer( wredtReportMarketerSales.SinceValue,wredtReportMarketerSales.ToValue);
 OpenContractProduct(YWhereEdit5.SinceValue,YWhereEdit5.ToValue);
 OpenMarketer(YWhereEdit6.SinceValue,YWhereEdit6.ToValue);
 OpenContractMarketerRate(YWhereEdit7.SinceValue,YWhereEdit7.ToValue);
  initialPrintTitle;


end;

procedure TFrReportAll.Button7Click(Sender: TObject);
begin
  inherited;
OpenContractMarketerRate(YWhereEdit7.SinceValue,YWhereEdit7.ToValue);

end;

procedure TFrReportAll.Edit1Change(Sender: TObject);
begin
  inherited;
YWhereEdit1.Text:=allEdit.Text;
YWhereEdit2.Text:=allEdit.Text;
YWhereEdit3.Text:=allEdit.Text;
wredtReportMarketerSales.Text:=allEdit.Text;
YWhereEdit5.Text:=allEdit.Text;
YWhereEdit6.Text:=allEdit.Text;
YWhereEdit7.Text:=allEdit.Text;
end;

procedure TFrReportAll.allEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if key<>13 then exit;
 OpenConactByDate(YWhereEdit1.SinceValue,YWhereEdit1.ToValue);
 OpenConactByWeek(YWhereEdit2.SinceValue,YWhereEdit2.ToValue);
 OpenConactByWeekProduct(YWhereEdit3.SinceValue,YWhereEdit3.ToValue);
 OpenContractMarketer(wredtReportMarketerSales.SinceValue,wredtReportMarketerSales.ToValue);
 OpenContractProduct(YWhereEdit5.SinceValue,YWhereEdit5.ToValue);
 OpenMarketer(YWhereEdit6.SinceValue,YWhereEdit6.ToValue);
OpenContractMarketerRate(YWhereEdit7.SinceValue,YWhereEdit7.ToValue);

end;

procedure TFrReportAll.excel1Click(Sender: TObject);
begin
  inherited;
  TYDBGrid(ActiveControl).ExportToExcel;
end;

procedure TFrReportAll.Excel2Click(Sender: TObject);
begin
  inherited;
  MakePrintTitle;
  TYDBGrid(ActiveControl).ExportToWord;
  initialPrintTitle;
end;

Procedure TFrReportAll.MakePrintTitle;
begin
    if ActiveControl is TYDBGrid then
      MakeReportTitle(TYDBGrid(ActiveControl));
end;

procedure TFrReportAll.MakeReportTitle(Grid :TYDBGrid);
begin
      Grid.PrintTitle :=   Grid.PrintTitle+' «“ ' + wredtReportMarketerSales.SinceValue +'   « '+wredtReportMarketerSales.ToValue;
end;

procedure TFrReportAll.initialPrintTitle;
begin
    dbgReportMarketerSales.PrintTitle := ' ê“«—‘ ›—Ê‘ »«“«—Ì«» Â« ';
    dbgMarketerTurnover   .PrintTitle := ' ê“«—‘ ⁄„·ò—œ »«“«—Ì«»«‰ ';
    dbgMonthSoftwareSale  .PrintTitle := ' ê“«—‘ ›—Ê‘ »Â „«Â Ê ‰—„ «›“«— ';
    dbgSaleToMonthNumber  .PrintTitle := ' ê“«—‘ ‰”»  ›—Ê‘ »Â  ⁄œ«œ  „«” ';
    dbgCountContact       .PrintTitle := ' ê“«—‘  ⁄œ«œ  „«” »Â —Ê“ ';
    dbgCountContactweek   .PrintTitle := ' ê“«—‘  ⁄œ«œ  „«” »Â Â› Â ';
    dbgCountContactWeekSoftware.PrintTitle := 'ê“«—‘  ⁄œ«œ  „«” »Â Â› Â Ê ‰—„ «›“«— ';

end;

procedure TFrReportAll.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  { TODO -oparsa : 14030203 }
  if (NewWidth < 1070)  or (NewHeight < 791) then
    Resize := False
  else Resize := True;
   { TODO -oparsa : 14030203 }

  inherited;

end;

procedure TFrReportAll.FormShow(Sender: TObject);
begin
  inherited;
  ShapeBase.Brush.Color := _Color1 ;
  pnlMain.Color := _Color1 ;
end;

end.
