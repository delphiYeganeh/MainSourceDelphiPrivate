unit FrReport_scan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Grids, DBGrids, YDbgrid, ExtCtrls, ActnList, DB,
  StdCtrls, ADODB, ExtActns, Buttons,  xpBitBtn, YWhereEdit,
  ComCtrls, xpPages, UemsVCL, Menus, AppEvnts, AdvGlowButton;

type
  TScanReport = class(TMBaseForm)
    Panel1: TPanel;
    SelectLetter: TADOStoredProc;
    Action1: TAction;
    xpPageControl1: TxpPageControl;
    xpTabSheet1: TxpTabSheet;
    xpTabSheet2: TxpTabSheet;
    YDBGrid1: TYDBGrid;
    Label3: TLabel;
    SpeedButton1: TAdvGlowButton;
    YWhereEdit1: TYWhereEdit;
    YWhereEdit2: TYWhereEdit;
    YWhereEdit5: TYWhereEdit;
    Label5: TLabel;
    Label23: TLabel;
    YWhereEdit3: TYWhereEdit;
    SpeedButton3: TAdvGlowButton;
    Label6: TLabel;
    YWhereEdit4: TYWhereEdit;
    SpeedButton2: TAdvGlowButton;
    YDBGrid2: TYDBGrid;
    Label1: TLabel;
    Label4: TLabel;
    DateTo: TShamsiDateEdit;
    Label7: TLabel;
    DateFrom: TShamsiDateEdit;
    Report_Scan: TADOStoredProc;
    DReport_Scan: TDataSource;
    Report_ScanFormatTitle: TWideStringField;
    Report_ScanLetterTypeTitle: TWideStringField;
    Report_ScanAll_cnt: TIntegerField;
    Report_ScanScanned: TIntegerField;
    Panel2: TPanel;
    MakeRep: TAdvGlowButton;
    Button6: TAdvGlowButton;
    Button3: TAdvGlowButton;
    Button4: TAdvGlowButton;
    Button5: TAdvGlowButton;
    pnlMain: TPanel;
    procedure MakeRepClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    function Where:string;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanReport: TScanReport;

implementation

uses Dmu, LetterFilterU, UMain;

{$R *.dfm}

function TScanReport.Where:string;
 var
  i: byte;
  s:string;
begin
 for i:=1 to 5 do
   begin
    s:=TYWhereEdit(FindComponent('YwhereEdit'+IntToStr(i))).Resultwhere;
    if s<>'' then
     begin
      Result:=Result+' and '+s;
     end;
   end;
if Result<>'' then Result:=copy(Result,6,length(Result)-5);
end;

procedure TScanReport.MakeRepClick(Sender: TObject);
 var w:string;
begin
  inherited;
  w:=' l.Registrationdate  Between '+QuotedStr(DateFrom.Text)+' and '+QuotedStr(DateTo.Text);
  if Where<>'' then
    w:=w+' and '+Where;

  with SelectLetter do
  begin
    Close;
    Parameters.ParamByName('@where').Value:=w+' and dbo.has_page(l.letterid)=0';
    Open;
  end;

 with Report_Scan do
 begin
   Close;
   Parameters.ParamByName('@where').Value:=w;
   Open;
 end;

end;

procedure TScanReport.Button4Click(Sender: TObject);
begin
  inherited;
  if xpPageControl1.ActivePageIndex=0 then   YDBGrid1.ExportToExcel else YDBGrid2.ExportToExcel;
end;

procedure TScanReport.Button3Click(Sender: TObject);
begin
  inherited;
  if xpPageControl1.ActivePageIndex=0 then  YDBGrid1.ExportToWord else YDBGrid2.ExportToWord;
end;

procedure TScanReport.Button6Click(Sender: TObject);
begin
  inherited;
  if xpPageControl1.ActivePageIndex=0 then YDBGrid1.CustomizePrint
  else YDBGrid2.CustomizePrint;
end;

procedure TScanReport.Action1Execute(Sender: TObject);
begin
  inherited;
  MakeRepClick(MakeRep);

end;

procedure TScanReport.Button5Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TScanReport.FormCreate(Sender: TObject);
begin
  inherited;
  DateFrom.Text:=copy(_Today,1,8)+'01' ;
  DateTo.Text:=copy(_Today,1,8)+'29' ;
end;

procedure TScanReport.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  dm.SearchTitle(YWhereEdit1);
end;

procedure TScanReport.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  dm.SearchTitle(YWhereEdit4);
end;

procedure TScanReport.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  dm.SearchTitle(YWhereEdit3);
end;

end.

