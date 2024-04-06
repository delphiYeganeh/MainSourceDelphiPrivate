unit RelatedLetters;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FrmFarsi, ExtCtrls, StdCtrls, DB, Grids, DBGrids, YDbgrid;

type
  TfmRelatedLetters = class(TfmFarsi)
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    YDBGrid1: TYDBGrid;
    DataSource1: TDataSource;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRelatedLetters: TfmRelatedLetters;

implementation

uses UAddDocument;

{$R *.dfm}

procedure TfmRelatedLetters.Button1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
