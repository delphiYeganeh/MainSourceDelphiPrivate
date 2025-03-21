unit UExamReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ExtActns, ActnList, ADODB, ExtCtrls, Grids,
  DBGrids, YDbgrid, StdCtrls, Buttons, YWhereEdit, CheckLst, YchecklistBox,
  ComCtrls, Yeganeh_Word, QuickRpt, QRCtrls, DBCtrls, UemsVCL, Mask,
  xpWindow, xpBitBtn;

type
  TFrExamReport = class(TMBaseForm)
    FilterPanel: TPanel;
    YDBGrid1: TYDBGrid;
    Panel1: TPanel;
    Number: TLabel;
    Button2: TxpBitBtn;
    Button3: TxpBitBtn;
    Button4: TxpBitBtn;
    Button5: TxpBitBtn;
    Button6: TxpBitBtn;
    Button7: TxpBitBtn;
    xpBitBtn1: TxpBitBtn;
    procedure Button6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrExamReport: TFrExamReport;

implementation

uses dmu, BusinessLayer,  ULetterTemplate, UExamFilter;

{$R *.dfm}

procedure TFrExamReport.Button6Click(Sender: TObject);
begin
  inherited;
  YDBGrid1.CustomizePrint;
end;


procedure TFrExamReport.Button2Click(Sender: TObject);
begin
  inherited;
  YDBGrid1.Print;

end;

procedure TFrExamReport.Button3Click(Sender: TObject);
begin
  inherited;
  YDBGrid1.ExportToWord;
end;

procedure TFrExamReport.Button4Click(Sender: TObject);
begin
  inherited;
  YDBGrid1.ExportToExcel;

end;

procedure TFrExamReport.Button5Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFrExamReport.Button7Click(Sender: TObject);
begin
  inherited;
  FLetterTemplate:= TFletterTemplate.Create(Application,DM.Select_ExamDetail_by_where);
  FletterTemplate.ShowModal;

end;

procedure TFrExamReport.FormShow(Sender: TObject);
begin
  inherited;
  FrExamFilter:= TFrExamFilter.Create(Application);
  FrExamFilter.ManualDock(FilterPanel);
  FrExamFilter.Show;
  FrExamFilter.Align:=alClient;
end;

procedure TFrExamReport.xpBitBtn1Click(Sender: TObject);
begin
  inherited;
  with dm,Select_ExamDetail_by_where do
  begin
    close;
    Parameters.ParamByName('@where').Value:= FrExamFilter.Where;
    Parameters.ParamByName('@UTID').Value := _UTID;    
    Open;
    Number.Caption:='�����:'+IntToStr(RecordCount);
  end;
 
end;

end.
