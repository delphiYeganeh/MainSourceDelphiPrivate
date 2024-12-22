unit CancleReportU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Buttons, StdCtrls, DBCtrls, xpPanel, Grids, DBGrids,
  YDbgrid, ExtCtrls, ExtActns, ActnList, DB, SolarCalendarPackage;

type
  TFrCancleReport = class(TMBaseForm)
    pnlMain: TPanel;
    Panel1: TPanel;
    YDBGrid1: TYDBGrid;
    xpPanel1: TxpPanel;
    Label5: TLabel;
    Label7: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    dblsrchMarketerID: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    dblsrchProductID: TDBLookupComboBox;
    dblsrchCancelReasonID: TDBLookupComboBox;
    edtSrchInsertDateFrom: TSolarDatePicker;
    edtSrchInsertDateTo: TSolarDatePicker;
    edtSrchCancleDateTo: TSolarDatePicker;
    edtSrchCancleDateFrom: TSolarDatePicker;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    BBOK: TBitBtn;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
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
  ShapeBase.Brush.Color := _Color1 ;
  pnlMain.Color := _Color1 ;

  xpPanel1.StartColor := _Color1 ;
  xpPanel1.EndColor   := _Color2 ;

  xpPanel1.TitleStartColor :=  _Color3;
  xpPanel1.TitleEndColor   :=  _Color4;  
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

procedure TFrCancleReport.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  YDBGrid1.ExportToExcel;
end;

procedure TFrCancleReport.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  { TODO -oparsa : 14030203 }
  if (NewWidth < 801)  or (NewHeight < 458) then
    Resize := False
  else Resize := True;
   { TODO -oparsa : 14030203 }
  inherited;

end;

procedure TFrCancleReport.Button2Click(Sender: TObject);
begin
  inherited;
  dblsrchMarketerID.KeyValue := null ;
end;

procedure TFrCancleReport.Button3Click(Sender: TObject);
begin
  inherited;
  dblsrchProductID.KeyValue := null ;
end;

procedure TFrCancleReport.Button1Click(Sender: TObject);
begin
  inherited;
  dblsrchCancelReasonID.KeyValue := null ;
end;

end.
