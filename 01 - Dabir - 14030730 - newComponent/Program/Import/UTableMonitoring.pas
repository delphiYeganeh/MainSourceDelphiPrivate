unit UTableMonitoring;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Menus, xpWindow, ExtActns, ActnList, DB, StdCtrls,
  AppEvnts, ExtCtrls;

type
  TFrMonitorTables = class(TMBaseForm)
    MainMenu1: TMainMenu;
    N21: TMenuItem;
    N32: TMenuItem;
    pnlMain: TPanel;
    procedure MakemenuItems;
    procedure ReportMenuClick(Sender: TObject);
    procedure GroupExportClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrMonitorTables: TFrMonitorTables;

implementation

uses Dmu, MakeReport, GroupExport, MakeInputData;

{$R *.dfm}
var Menues:array[1..3,0..30] of TMenuItem;

procedure TFrMonitorTables.MakemenuItems;
var i:integer;
begin
  inherited;

  with dm,Tables do
  begin
   Close;
   Open;
   if Tables.RecordCount>0 then
   for i:=0 to Tables.RecordCount-1 do
    begin
      Menues[2,i]:= TMenuItem.Create(self);
      Menues[2,i].Caption:= TablesDescription.AsString;
      Menues[2,i].OnClick:= ReportMenuClick;
      n21.Insert(0,Menues[2,i]);

      Menues[3,i]:= TMenuItem.Create(self);
      Menues[3,i].Caption:= TablesDescription.AsString;
      Menues[3,i].OnClick:= GroupExportClick;
      N32.Insert(0,Menues[3,i]);
      Next;
    end;
  end;

end;

procedure TFrMonitorTables.ReportMenuClick(Sender: TObject);
begin
  inherited;
  dm.Tables.Locate('description',TMenuItem(sender).Caption,[]);
   FrMakeReport:=TFrMakeReport.Create(self);

  with dm,FrMakeReport do
   begin
     Connection := YeganehConnection;
     TableID    := TablesTableId.AsInteger;
     TableName  := TablesTableName.AsString;
     TableDescription := TablesDescription.AsString;
     ShowModal;
   end;

end;

procedure TFrMonitorTables.GroupExportClick(Sender: TObject);
begin
  inherited;
  dm.Tables.Locate('description',TMenuItem(sender).Caption,[]);
  FrMakeGroupExport:=TFrMakeGroupExport.Create(self);
  with dm,FrMakeGroupExport do
   begin
     Connection:=YeganehConnection;
     TableID:=TablesTableId.AsInteger;
     TableName:=TablesTableName.AsString;
     TableDescription:=TablesDescription.AsString;
     ShowModal;
   end;
end;


procedure TFrMonitorTables.FormCreate(Sender: TObject);
begin
  inherited;
 MakemenuItems

end;

end.
