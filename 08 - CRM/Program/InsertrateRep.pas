unit InsertrateRep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, YDbgrid, DB, ADODB, StdCtrls, Buttons,
  YWhereEdit, ExtCtrls,BaseUnit, ExtActns, ActnList, CheckLst,
  YchecklistBox, UemsVCL, Menus;

type
  TFrInsertrateRep = class(TMBaseForm)
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    ahmadvand: TLabel;
    MarketerInsertRate: TADOStoredProc;
    Panel1: TPanel;
    Panel3: TPanel;
    ContractGrid: TYDBGrid;
    ToDate: TShamsiDateEdit;
    Label2: TLabel;
    FromDate: TShamsiDateEdit;
    Label1: TLabel;
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn6Click(Sender: TObject);
    Procedure  Open_MarketerInsertRate;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrInsertrateRep: TFrInsertrateRep;

implementation

uses dmu, ExportToWord;

{$R *.dfm}


procedure TFrInsertrateRep.BitBtn5Click(Sender: TObject);
begin
close;
end;

procedure TFrInsertrateRep.BitBtn2Click(Sender: TObject);
begin
 ContractGrid.Print;
end;

procedure TFrInsertrateRep.BitBtn3Click(Sender: TObject);
begin
 ContractGrid.ExportToWord;
end;

procedure TFrInsertrateRep.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TFrInsertrateRep.BitBtn6Click(Sender: TObject);
begin
  inherited;
 ContractGrid.CustomizePrint;

end;

Procedure  TFrInsertrateRep.Open_MarketerInsertRate;
  begin
  with MarketerInsertRate,parameters do
   begin
    Close;
    ParamByName('@FromDate').value:=FromDate.Text;
    ParamByName('@ToDate').value:=ToDate.Text;
    Open;
   end;
end;

procedure TFrInsertrateRep.BitBtn1Click(Sender: TObject);
begin
  inherited;
Open_MarketerInsertRate;
end;

procedure TFrInsertrateRep.FormCreate(Sender: TObject);
begin
  inherited;
FromDate.Text:=copy(_today,1,8)+'01';
ToDate.Text:=_today;
Open_MarketerInsertRate;
end;

end.



