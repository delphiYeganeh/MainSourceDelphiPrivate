unit UEarthReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, YWhereEdit, ExtActns, ActnList, DB, ComCtrls,
  Grids, DBGrids, YDbgrid, ADODB;

type
  TEarthReport = class(TMBaseForm)
    Button1: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label5: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    DBEDit40: TYWhereEdit;
    DBEDit41: TYWhereEdit;
    DBEDit44: TYWhereEdit;
    DBEDit45: TYWhereEdit;
    DBEdit36: TYWhereEdit;
    DBEdit37: TYWhereEdit;
    DBEdit38: TYWhereEdit;
    DBEdit39: TYWhereEdit;
    DBEdit42: TYWhereEdit;
    DBEdit43: TYWhereEdit;
    DBEdit47: TYWhereEdit;
    DBLookupComboBox36: TYWhereEdit;
    DBLookupComboBox37: TYWhereEdit;
    DBLookupComboBox38: TYWhereEdit;
    DBLookupComboBox39: TYWhereEdit;
    DBLookupComboBox42: TYWhereEdit;
    DBLookupComboBox43: TYWhereEdit;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label64: TLabel;
    Label70: TLabel;
    DBLookupComboBox4: TYWhereEdit;
    DBLookupComboBox15: TYWhereEdit;
    DBLookupComboBox16: TYWhereEdit;
    DBEdit48: TYWhereEdit;
    DBEdit49: TYWhereEdit;
    DBEdit50: TYWhereEdit;
    DBEdit51: TYWhereEdit;
    Label0: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label57: TLabel;
    DBEDit0: TYWhereEdit;
    DBLookupComboBox5: TYWhereEdit;
    DBLookupComboBox9: TYWhereEdit;
    DBEDit5: TYWhereEdit;
    DBEdit2: TYWhereEdit;
    DBLookupComboBox10: TYWhereEdit;
    DBEdit4: TYWhereEdit;
    DBEdit7: TYWhereEdit;
    DBEDit46: TYWhereEdit;
    DBLookupComboBox14: TYWhereEdit;
    DBLookupComboBox13: TYWhereEdit;
    DBLookupComboBox12: TYWhereEdit;
    DBLookupComboBox11: TYWhereEdit;
    DBLookupComboBox8: TYWhereEdit;
    DBLookupComboBox6: TYWhereEdit;
    Label11: TLabel;
    DBEdit12: TYWhereEdit;
    Label3: TLabel;
    DBEdit3: TYWhereEdit;
    Label4: TLabel;
    DBShamsiDateEdit: TYWhereEdit;
    DBMemo2: TYWhereEdit;
    Label1: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label29: TLabel;
    DBEDit18: TYWhereEdit;
    DBEDit19: TYWhereEdit;
    DBEDit20: TYWhereEdit;
    DBEDit21: TYWhereEdit;
    DBEDit22: TYWhereEdit;
    DBEdit11: TYWhereEdit;
    DBEdit13: TYWhereEdit;
    DBEDit25: TYWhereEdit;
    DBEDit26: TYWhereEdit;
    DBEDit27: TYWhereEdit;
    DBEDit28: TYWhereEdit;
    DBEDit29: TYWhereEdit;
    DBEDit30: TYWhereEdit;
    DBEDit31: TYWhereEdit;
    DBEDit32: TYWhereEdit;
    DBEDit33: TYWhereEdit;
    DBEDit34: TYWhereEdit;
    DBEDit35: TYWhereEdit;
    DBEDit17: TYWhereEdit;
    Label28: TLabel;
    Label27: TLabel;
    DBEDit16: TYWhereEdit;
    Label26: TLabel;
    DBEDit15: TYWhereEdit;
    Label25: TLabel;
    DBEdit10: TYWhereEdit;
    sp_Earth_Report: TADOStoredProc;
    Dsp_Earth_Report: TDataSource;
    YDBGrid: TYDBGrid;
    Number: TLabel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    function Where:string;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EarthReport: TEarthReport;

implementation

uses Dmu;

{$R *.dfm}
function TEarthReport.Where:string;
 var i: integer;
 begin
  Result:='';
  for i:=0 to ComponentCount-1 do
    begin
    if Components[i].ClassNameIs('TYWhereEdit') then
    if TYWhereEdit(Components[i]).Resultwhere<>'' then
      Result:=Result+' and '+TYWhereEdit(Components[i]).Resultwhere;

    end;

   if Result<>'' then
     delete(Result,1,5);
 end;


procedure TEarthReport.Button1Click(Sender: TObject);
begin
  inherited;
  with sp_Earth_Report do
   begin
     Close;
     Parameters.ParamByName('@where').value:=Where;
     Open;
     Number.Caption:=IntToStr(RecordCount);
   end;

end;

procedure TEarthReport.Button2Click(Sender: TObject);
begin
  inherited;
YDBGrid.Print;

end;

procedure TEarthReport.Button6Click(Sender: TObject);
begin
  inherited;
YDBGrid.CustomizePrint;
end;

procedure TEarthReport.Button5Click(Sender: TObject);
begin
  inherited;
close;
end;

procedure TEarthReport.Button4Click(Sender: TObject);
begin
  inherited;
  YDBGrid.ExportToExcel;
end;

procedure TEarthReport.Button3Click(Sender: TObject);
begin
  inherited;
YDBGrid.ExportToWord;
end;

end.
