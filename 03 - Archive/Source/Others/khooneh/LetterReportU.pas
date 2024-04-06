unit LetterReportU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Grids, DBGrids, YDbgrid, ExtCtrls, ActnList, DB,
  StdCtrls, ADODB, ExtActns, Buttons, xpWindow, xpBitBtn, Menus;

type
  TLetterReport = class(TMBaseForm)
    Panel1: TPanel;
    YDBGrid1: TYDBGrid;
    MakeRep: TxpBitBtn;
    Button3: TxpBitBtn;
    Button4: TxpBitBtn;
    Button5: TxpBitBtn;
    SelectLetter: TADOStoredProc;
    Number: TLabel;
    Button6: TxpBitBtn;
    Action1: TAction;
    Allsec: TCheckBox;
    Label1: TLabel;
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
  end;

var
  LetterReport: TLetterReport;

implementation

uses Dmu, LetterFilterU, UMain;

{$R *.dfm}

procedure TLetterReport.MakeRepClick(Sender: TObject);
 var w:string;
begin
  inherited;
  if Allsec.Checked then
    w:=''
  else
   w:='(l.SecretariatID='+IntToStr(Dm.SecId)+')';

  if LetterFilter.Where<>'' then
   if w<>'' then
    w:=w+' and '+LetterFilter.Where
   else
    w:=LetterFilter.Where ;

with SelectLetter do
 begin
  Close;
  Parameters.ParamByName('@where').Value:=w;
  Open;
  Number.Caption:=' йзого :'+IntToStr(RecordCount)
 end;
end;

procedure TLetterReport.FormShow(Sender: TObject);
begin
  inherited;
 LetterFilter:=TLetterFilter.Create(self);
 LetterFilter.ShowInPanel(Panel1);

end;

procedure TLetterReport.Button4Click(Sender: TObject);
begin
  inherited;
  YDBGrid1.ExportToExcel;
end;

procedure TLetterReport.Button3Click(Sender: TObject);
begin
  inherited;
 YDBGrid1.ExportToWord;
end;

procedure TLetterReport.Button6Click(Sender: TObject);
begin
  inherited;
 YDBGrid1.CustomizePrint;
end;

procedure TLetterReport.Action1Execute(Sender: TObject);
begin
  inherited;
 MakeRepClick(MakeRep);

end;

procedure TLetterReport.Button5Click(Sender: TObject);
begin
  inherited;
close;
end;

end.

