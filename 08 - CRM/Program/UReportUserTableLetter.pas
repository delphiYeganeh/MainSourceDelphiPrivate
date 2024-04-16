unit UReportUserTableLetter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Grids, DBGrids, YDbgrid, ExtCtrls, ActnList, DB,
  StdCtrls, ADODB, ExtActns, Buttons,  xpBitBtn, ComCtrls, xpPages,
  Menus;

type
  TFrReportUserTableLetter = class(TMBaseForm)
    MakeRep: TBitBtn;
    Button3: TBitBtn;
    Button4: TBitBtn;
    Button5: TBitBtn;
    Report_UserTable: TADOStoredProc;
    Number: TLabel;
    Button6: TBitBtn;
    Action1: TAction;
    xpPageControl1: TxpPageControl;
    xpTabSheet1: TxpTabSheet;
    xpTabSheet2: TxpTabSheet;
    Panel1: TPanel;
    YDBGrid1: TYDBGrid;
    Panel2: TPanel;
    procedure MakeRepClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    TableID:integer;
  end;

var
  FrReportUserTableLetter: TFrReportUserTableLetter;

implementation

uses Dmu,  UReportUserTable;

{$R *.dfm}
procedure TFrReportUserTableLetter.FormShow(Sender: TObject);
begin
  inherited;
 FrReportUserTable:=TFrReportUserTable.Create(Application);
FrReportUserTable.TableID:=TableID;
FrReportUserTable.ShowInPanel(Panel2);
 
end;

procedure TFrReportUserTableLetter.Button4Click(Sender: TObject);
begin
  inherited;
  YDBGrid1.ExportToExcel;
end;

procedure TFrReportUserTableLetter.Button3Click(Sender: TObject);
begin
  inherited;
 YDBGrid1.ExportToWord;
end;

procedure TFrReportUserTableLetter.Button6Click(Sender: TObject);
begin
  inherited;
 YDBGrid1.CustomizePrint;
end;

procedure TFrReportUserTableLetter.Action1Execute(Sender: TObject);
begin
  inherited;
 MakeRepClick(MakeRep);

end;

procedure TFrReportUserTableLetter.Button5Click(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFrReportUserTableLetter.MakeRepClick(Sender: TObject);
 var w:string;
 i: byte;
begin
  inherited;
  (*  w:='(l.SecretariatID='+IntToStr(Dm.SecId)+')';
  if LetterFilter.Where<>'' then
    w:=w+' and '+LetterFilter.Where;
   *)
with Report_UserTable do
 begin
  Close;
  Parameters.ParamByName('@LetterWhere').Value:=w;
  Parameters.ParamByName('@UserTableWhere').Value:=FrReportUserTable.where;
  Parameters.ParamByName('@tableID').Value:=TableID;
  Open;
  Number.Caption:=' йзого :'+IntToStr(RecordCount)
 end;

  with YDBGrid1,Columns do
 for i:=0 to Count-1  do
   begin
     Columns[i].Width:=50;

  end;{for}

end;
end.

