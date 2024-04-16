unit Fgrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, LookupEdit,Grids, DBGrids, YDbgrid;

type
  TGrid = class(TForm)
    DBGrid: TYDBGrid;
    query: TADODataSet;
    Dquery: TDataSource;
    procedure DBGridCellClick(Column: TColumn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridNeedFontCondition(Column: TColumn;
      State: TGridDrawState; var F: TFont);
    procedure DBGridNeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
  private
    { Private declarations }
  public
    { Public declarations }
    ylookup:TLookupEdit;
  end;

var
  Grid: TGrid;

implementation

uses Math;


{$R *.dfm}

procedure TGrid.DBGridCellClick(Column: TColumn);
begin
  ylookup.isdbg:=true;
  ylookup.SetFocus;
  ylookup.Text:=query.FieldByname('title').AsString;
  ylookup.KeyValue:=query.FieldByname('code').AsInteger;
    if ylookup.CodeField2<>'' then
      ylookup.KeyValue2:=query.FieldByname('code2').AsString;
  ylookup.isdbg:=false;
  hide;
end;

procedure TGrid.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=cafree;
end;

procedure TGrid.DBGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key =13 then
   begin
    ylookup.isdbg:=true;
    ylookup.SetFocus;
    ylookup.Text:=query.FieldByname('title').AsString;
    ylookup.KeyValue:=query.FieldByname('code').AsInteger;
    if ylookup.CodeField2<>'' then
      ylookup.KeyValue2:=query.FieldByname('code2').AsString;

    ylookup.isdbg:=false;
    hide;
  end;

end;

procedure TGrid.DBGridNeedFontCondition(Column: TColumn;
  State: TGridDrawState; var F: TFont);
begin
   f.Style:=f.Style-[fsbold];
  if ylookup.StatusField<>'' then
   if not query.FieldByName('status').IsNull then
    if query.FieldByName('status').AsBoolean then
      f.Style:=f.Style+[fsbold];

end;

procedure TGrid.DBGridNeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Color: TColor);
begin
   Color:=clWhite;
  if ylookup.StatusField<>'' then
   if not query.FieldByName('status').IsNull then
    if query.FieldByName('status').AsBoolean then
      Color:=clMoneyGreen;

end;

end.
