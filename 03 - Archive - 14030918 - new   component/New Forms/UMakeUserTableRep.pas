unit UMakeUserTableRep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ADODB, xpBitBtn, Grids, DBGrids, YDbgrid,
  StdCtrls, xpEdit, ExtCtrls, ComCtrls, xpPages, xpWindow, ExtActns,
  ActnList, Buttons, AdvGlowButton;

type
  TFrMakeUserTableRep = class(TMBaseForm)
    Get_UserTable: TADOStoredProc;
    Panel1: TPanel;
    Label1: TLabel;
    SearchEdit: TEdit;
    Get_UserTableTableId: TWordField;
    Get_UserTableTableName: TWideStringField;
    Get_UserTableDescription: TWideStringField;
    Get_UserTableTableType: TWordField;
    Panel2: TPanel;
    xpBitBtn4: TAdvGlowButton;
    xpBitBtn3: TAdvGlowButton;
    Panel3: TPanel;
    YDBGrid1: TYDBGrid;
    pnlMain: TPanel;
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

uses Dmu, uUserTablefields, UReportUserTableLetter;

{$R *.dfm}

procedure TFrMakeUserTableRep.SearchEditChange(Sender: TObject);
begin
  inherited;
  with get_userTable do
   begin
     close;
      Parameters.ParamByName('@like').Value:=SearchEdit.Text;
     Open;
   end;
end;

procedure TFrMakeUserTableRep.xpBitBtn4Click(Sender: TObject);
begin
   inherited;
   //TLetterReport
   FrReportUserTableLetter := TFrReportUserTableLetter.Create(Application);
   FrReportUserTableLetter.TableID:= get_userTableTableId.AsInteger;
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
SearchEdit.OnChange(SearchEdit);
end;

end.
