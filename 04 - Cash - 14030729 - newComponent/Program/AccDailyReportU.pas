unit AccDailyReportU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtCtrls,  Menus, ActnList, Grids, DBGrids,
  YDbgrid, StdCtrls, Buttons, Mask, DB, ADODB, SolarCalendarPackage,
  AdvGlowButton;

type
  TFrAccDailyReport = class(TYBaseForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    BitBtn1: TAdvGlowButton;
    BitBtn2: TAdvGlowButton;
    YDBGrid1: TYDBGrid;
    MEdtDate: TSolarDatePicker;
    SBSearch: TAdvGlowButton;
    pnlMain: TPanel;
    procedure SBSearchClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure MEdtDateKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrAccDailyReport: TFrAccDailyReport;

implementation

uses dmu, BusinessLayer;

{$R *.dfm}

procedure TFrAccDailyReport.SBSearchClick(Sender: TObject);
begin
  inherited;
  Open_AccDailyReport(MEdtDate.Text);
end;

procedure TFrAccDailyReport.BitBtn2Click(Sender: TObject);
begin
  inherited;
  YDBGrid1.ExportToExcel;
end;

procedure TFrAccDailyReport.MEdtDateKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then
    SBSearch.Click;
end;

procedure TFrAccDailyReport.FormShow(Sender: TObject);
begin
  inherited;
  MEdtDate.Text := _Today;
  SBSearch.Click;
end;
end.
