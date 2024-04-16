unit UMakeUserTableRep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ADODB, xpBitBtn, Grids, DBGrids, YDbgrid,
  StdCtrls, xpEdit, ExtCtrls, ComCtrls, xpPages,  ExtActns,
  ActnList, Buttons, Menus;

type
  TFrMakeUserTableRep = class(TMBaseForm)
    Panel1: TPanel;
    Label1: TLabel;
    SearchEdit: TEdit;
    YDBGrid1: TYDBGrid;
    xpBitBtn3: TBitBtn;
    xpBitBtn4: TBitBtn;
    procedure SearchEditChange(Sender: TObject);
    procedure xpBitBtn4Click(Sender: TObject);
    procedure xpBitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrMakeUserTableRep: TFrMakeUserTableRep;

implementation

uses Dmu, uUserTablefields, UReportUserTableLetter, businessLayer;

{$R *.dfm}

procedure TFrMakeUserTableRep.SearchEditChange(Sender: TObject);
begin
  inherited;
 Open_UserTable(SearchEdit.Text);
end;

procedure TFrMakeUserTableRep.xpBitBtn4Click(Sender: TObject);
begin
  inherited;
FrReportUserTableLetter:=TFrReportUserTableLetter.Create(Application);
FrReportUserTableLetter.TableID:=dm.get_userTableTableId.AsInteger;
FrReportUserTableLetter.ShowModal;

end;

procedure TFrMakeUserTableRep.xpBitBtn3Click(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFrMakeUserTableRep.FormCreate(Sender: TObject);
begin
  inherited;
Open_UserTable('');
end;

end.
