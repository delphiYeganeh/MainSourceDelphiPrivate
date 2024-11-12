unit UMakeUserTableRep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ADODB, xpBitBtn, Grids, DBGrids, YDbgrid,
  StdCtrls, xpEdit, ExtCtrls, ComCtrls, xpPages,  ExtActns,
  ActnList, Buttons, Menus , U_REP_CUSTOM_01_FRM, AppEvnts, AdvGlowButton;

type
  TFrMakeUserTableRep = class(TMBaseForm)
    Panel1: TPanel;
    Label1: TLabel;
    SearchEdit: TEdit;
    Panel2: TPanel;
    xpBitBtn4: TAdvGlowButton;
    xpBitBtn3: TAdvGlowButton;
    Panel3: TPanel;
    YDBGrid1: TYDBGrid;
    BitBtn1: TAdvGlowButton;
    pnlMain: TPanel;
    procedure SearchEditChange(Sender: TObject);
    procedure xpBitBtn4Click(Sender: TObject);
    procedure xpBitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
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
   FrReportUserTableLetter := TFrReportUserTableLetter.Create(Application);
   FrReportUserTableLetter.TableID := Dm.Get_userTableTableId.AsInteger;
   FrReportUserTableLetter.Panel2.Constraints.MaxHeight := 500;
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

procedure TFrMakeUserTableRep.BitBtn1Click(Sender: TObject);
VAR
CUSTOM_REP : TREP_CUSTOM_01_FRM;
begin
  inherited;

   if Dm.Get_userTable.FieldByName('Description').AsString = '„—Œ’Ì —Ê“«‰Â' then
   begin
   CUSTOM_REP := TREP_CUSTOM_01_FRM.Create(Self);
   CUSTOM_REP.TableID := Dm.Get_userTableTableId.AsInteger;
   CUSTOM_REP.ShowModal;
   CUSTOM_REP.Free;
   //REP_CUSTOM_01_FRM.TableID := Dm.Get_userTableTableId.AsInteger;
   //REP_CUSTOM_01_FRM.ShowModal;
   end;
end;

end.
