unit progressdemo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, dbcgrids, DB, DBTables, ExtCtrls, fcpanel,
  fctrackbar, ComCtrls, fcLabel, StdCtrls, fcDemoRichEdit, Grids, DBGrids,
  fcProgressBar, Gauges;

type
  TProgressForm = class(TForm)
    fcGroupBox1: TfcGroupBox;
    fcDemoRichEdit1: TfcDemoRichEdit;
    fcGroupBox4: TfcGroupBox;
    DBCtrlGrid1: TDBCtrlGrid;
    DataSource1: TDataSource;
    Table1: TTable;
    fcProgressBar1: TfcProgressBar;
    Table1OrderNo: TFloatField;
    Table1CustNo: TFloatField;
    Table1SaleDate: TDateTimeField;
    Table1ShipDate: TDateTimeField;
    Table1EmpNo: TIntegerField;
    Table1ShipToContact: TStringField;
    Table1ShipToAddr1: TStringField;
    Table1ShipToAddr2: TStringField;
    Table1ShipToCity: TStringField;
    Table1ShipToState: TStringField;
    Table1ShipToZip: TStringField;
    Table1ShipToCountry: TStringField;
    Table1ShipToPhone: TStringField;
    Table1ShipVIA: TStringField;
    Table1PO: TStringField;
    Table1Terms: TStringField;
    Table1PaymentMethod: TStringField;
    Table1ItemsTotal: TCurrencyField;
    Table1TaxRate: TFloatField;
    Table1Freight: TCurrencyField;
    Table1AmountPaid: TCurrencyField;
    Table1PercentPaid: TFloatField;
    fcProgressBar2: TfcProgressBar;
    fcProgressBar3: TfcProgressBar;
    Timer1: TTimer;
    procedure fcTrackBar6DrawTickText(Sender: TObject; TickValue: Double;
      var ATickText: String; var ARect: TRect; var DoDefault: Boolean);
    procedure Table1CalcFields(DataSet: TDataSet);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProgressForm: TProgressForm;

implementation

{$R *.dfm}

procedure TProgressForm.fcTrackBar6DrawTickText(Sender: TObject;
  TickValue: Double; var ATickText: String; var ARect: TRect;
  var DoDefault: Boolean);
var TickInt: integer;
begin
  TickInt:= Round(TickValue);
  if (abs(TickValue-TickInt)<0.01) then
  begin
    case TickInt of
      0: ATickText:= 'Low';
      1: ATickText:= 'Medium';
      2: ATickText:= 'High';
      3: ATickText:= 'Top Priority';
    end;
  end;
end;

procedure TProgressForm.Table1CalcFields(DataSet: TDataSet);
begin
dataset.fieldbyname('PercentPaid').asinteger:=
   trunc(dataset.fieldbyname('AmountPaid').asfloat/
         dataset.fieldbyname('ItemsTotal').asfloat * 100);

end;

procedure TProgressForm.Timer1Timer(Sender: TObject);
begin
  if fcprogressbar2.progress>=100 then
  begin
     fcprogressbar2.Progress:=0;
     fcprogressbar3.progress:=0;
  end;
  fcprogressbar2.StepIt;
  fcprogressbar3.StepIt;
end;

end.
