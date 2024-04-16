unit UsetPriority;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, YDbgrid, ExtCtrls, DB, ADODB,
  BaseUnit, ExtActns, ActnList;

type
  TFsetPriority = class(TMBaseForm)
    Panel1: TPanel;
    YDBGrid1: TYDBGrid;
    Button1: TButton;
    ComboBox1: TComboBox;
    Button2: TButton;
    Label1: TLabel;
    sp_SetOrder: TADOStoredProc;
    Dsp_SetOrder: TDataSource;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FsetPriority: TFsetPriority;

implementation

uses dmu;

{$R *.dfm}

procedure TFsetPriority.Button2Click(Sender: TObject);
begin
 with sp_SetOrder do
  begin
   Close;
   Parameters.ParamByName('@grouping').Value:=ComboBox1.ItemIndex;
   Open;
  end;
end;

procedure TFsetPriority.Button1Click(Sender: TObject);
begin
close;

end;

procedure TFsetPriority.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=caFree;
end;

end.
