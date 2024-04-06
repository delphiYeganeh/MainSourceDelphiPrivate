unit trackdemo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, dbcgrids, DB, DBTables, ExtCtrls, fcpanel,
  fctrackbar, ComCtrls, fcLabel, StdCtrls, fcDemoRichEdit, Grids;

type
  TTrackbarForm = class(TForm)
    fcGroupBox1: TfcGroupBox;
    fcDemoRichEdit1: TfcDemoRichEdit;
    fcLabel1: TfcLabel;
    fcGroupBox2: TfcGroupBox;
    fcLabel2: TfcLabel;
    fcTrackBar1: TfcTrackBar;
    fcTrackBar7: TfcTrackBar;
    fcDemoRichEdit2: TfcDemoRichEdit;
    fcTrackBar5: TfcTrackBar;
    fcTrackBar4: TfcTrackBar;
    fcGroupBox3: TfcGroupBox;
    fcTrackBar6: TfcTrackBar;
    fcDemoRichEdit3: TfcDemoRichEdit;
    fcGroupBox4: TfcGroupBox;
    DBCtrlGrid1: TDBCtrlGrid;
    fcTrackBar2: TfcTrackBar;
    DataSource1: TDataSource;
    Table1: TTable;
    procedure fcTrackBar6DrawTickText(Sender: TObject; TickValue: Double;
      var ATickText: String; var ARect: TRect; var DoDefault: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TrackbarForm: TTrackbarForm;

implementation

{$R *.dfm}

procedure TTrackbarForm.fcTrackBar6DrawTickText(Sender: TObject;
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

end.
