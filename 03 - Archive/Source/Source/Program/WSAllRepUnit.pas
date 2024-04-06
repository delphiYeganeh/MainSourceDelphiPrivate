unit WSAllRepUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Menus, ExtActns, ActnList, DB, WorkSheetViewsUnit,
  StdCtrls, DBCtrls, Grids, DBGrids, MssDBGrid, ExtCtrls, MssPanelPro;

type
  TFWSAllRep = class(TMBaseForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    DBText1: TDBText;
    Label3: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Label4: TLabel;
    Label5: TLabel;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    DBText10: TDBText;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBText11: TDBText;
    DBText12: TDBText;
    DBText13: TDBText;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBMemo1: TDBMemo;
    DBCheckBox1: TDBCheckBox;
    MssPanelPro2: TMssPanelPro;
    MssDBGrid2: TMssDBGrid;
    procedure FormShow(Sender: TObject);
  private
    FQSessionType: Integer;
    procedure SetQSessionType(const Value: Integer);
    { Private declarations }
  public
    { Public declarations }
    property QSessionType:Integer read FQSessionType write SetQSessionType;
  end;

var
  FWSAllRep: TFWSAllRep;

implementation

{$R *.dfm}

{ TFWSAllRep }

procedure TFWSAllRep.SetQSessionType(const Value: Integer);
begin
  FQSessionType := Value;
end;

procedure TFWSAllRep.FormShow(Sender: TObject);
var
  i : Integer;
begin
  inherited;
  case QSessionType of
    1:
      begin
        GroupBox1.Caption:='„‘Œ’«  Ã·”Â';
        Label10.Visible:=True;
        DBText8.Visible:=True;
        for  i:=0  to MssDBGrid2.Columns.Count-1 do
          if MssDBGrid2.Columns.Items[i].BandIndex=0 then
              MssDBGrid2.Columns.Items[i].Visible:=True
          else
              MssDBGrid2.Columns.Items[i].Visible:=False;
      end;
    2:
      begin
        GroupBox1.Caption:='„‘Œ’«  ﬁ—«—„·«ﬁ« ';
        Label10.Visible:=False;
        DBText8.Visible:=False;
        for  i:=0  to MssDBGrid2.Columns.Count-1 do
          if MssDBGrid2.Columns.Items[i].BandIndex=1 then
              MssDBGrid2.Columns.Items[i].Visible:=True
          else
              MssDBGrid2.Columns.Items[i].Visible:=False;
      end;
    3:
      begin
        GroupBox1.Caption:='„‘Œ’«  Task';
        Label10.Visible:=False;
        DBText8.Visible:=False;
        for  i:=0  to MssDBGrid2.Columns.Count-1 do
          if MssDBGrid2.Columns.Items[i].BandIndex=2 then
              MssDBGrid2.Columns.Items[i].Visible:=True
          else
              MssDBGrid2.Columns.Items[i].Visible:=False;
      end;
  end;
end;

end.
