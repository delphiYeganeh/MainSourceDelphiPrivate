unit UReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Buttons, Grids, DBGrids, Mask, DBCtrls,
  ExtCtrls;

type
  TFReport = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    quReports: TADOQuery;
    dReports: TDataSource;
    quReportsreportID: TAutoIncField;
    quReportsreportName: TWideStringField;
    quReportsfirstLeft: TFloatField;
    quReportsfirstTop: TFloatField;
    quReportswidth: TFloatField;
    quReportsheight: TFloatField;
    quReportswidthDistance: TFloatField;
    quReportsheighDistance: TFloatField;
    quReportsreportFile: TBlobField;
    Edit1: TEdit;
    procedure quReportsBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FReport: TFReport;

implementation

uses dmu;

{$R *.dfm}

procedure TFReport.quReportsBeforePost(DataSet: TDataSet);
begin
   if (trim(Edit1.Text)='') then
   begin
      ShowMessage('·ÿ›« „”Ì— ›«Ì· —« «‰ Œ«» ò‰Ìœ');
      quReportsreportFile.Clear;
   end
   else if not FileExists(Edit1.Text) then
   begin
      ShowMessage('„”Ì— ›«Ì· «‘ »«Â «” ');
      quReportsreportFile.Clear;
   end
   else
      quReportsreportFile.LoadFromFile(Edit1.Text);

end;

procedure TFReport.FormCreate(Sender: TObject);
begin
   quReports.Open;
end;

end.
