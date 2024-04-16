unit CancleReportU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Buttons, StdCtrls, DBCtrls, xpPanel, Grids, DBGrids,
  YDbgrid, ExtCtrls, ExtActns, ActnList, DB, SolarCalendarPackage;

type
  TFrCancleReport = class(TMBaseForm)
    Panel1: TPanel;
    Panel2: TPanel;
    YDBGrid1: TYDBGrid;
    xpPanel1: TxpPanel;
    Label5: TLabel;
    Label8: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    dblsrchMarketerID: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    SpeedButton3: TSpeedButton;
    BBOK: TBitBtn;
    dblsrchProductID: TDBLookupComboBox;
    dblsrchCancelReasonID: TDBLookupComboBox;
    edtSrchInsertDateFrom: TSolarDatePicker;
    edtSrchInsertDateTo: TSolarDatePicker;
    edtSrchCancleDateTo: TSolarDatePicker;
    edtSrchCancleDateFrom: TSolarDatePicker;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrCancleReport: TFrCancleReport;

implementation

uses dmu, BusinessLayer;

{$R *.dfm}

procedure TFrCancleReport.FormCreate(Sender: TObject);
begin
  inherited;
  Dm.Marketer.Open;
  Dm.CancelReason.Open;
end;

procedure TFrCancleReport.FormShow(Sender: TObject);
begin
  inherited;
  OpenReportCancle(0,0,0,'0','0','0','0' )
end;

procedure TFrCancleReport.BitBtn1Click(Sender: TObject);
VAR _CancelReasonID,_MarketerID ,_ProductID:Integer;
begin
  inherited;
  _CancelReasonID:=0;
  _MarketerID:= 0;
  _ProductID:=0;


  IF dblsrchCancelReasonID.KeyValue<>NULL THEN
  _CancelReasonID:=dblsrchCancelReasonID.KeyValue;

  IF dblsrchMarketerID.KeyValue<>NULL THEN
  _MarketerID:= dblsrchMarketerID.KeyValue;

  IF dblsrchProductID.KeyValue<>NULL THEN
  _ProductID:= dblsrchProductID.KeyValue;


  OpenReportCancle(_CancelReasonID,
                   _MarketerID,
                   _ProductID,
                   edtSrchInsertDateFrom.Text,
                   edtSrchInsertDateTo.Text,
                   edtSrchCancleDateFrom.Text,
                   edtSrchCancleDateTo.Text )

end;

procedure TFrCancleReport.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  YDBGrid1.ExportToExcel;
end;

end.
