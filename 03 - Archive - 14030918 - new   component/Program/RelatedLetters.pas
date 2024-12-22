unit RelatedLetters;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FrmFarsi, ExtCtrls, StdCtrls, DB, Grids, DBGrids, YDbgrid,
  AdvGlowButton;

type
  TfmRelatedLetters = class(TfmFarsi)
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TAdvGlowButton;
    YDBGrid1: TYDBGrid;
    DataSource1: TDataSource;
    pnlMain: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRelatedLetters: TfmRelatedLetters;

implementation

uses Dmu,UAddDocument;

{$R *.dfm}

procedure TfmRelatedLetters.Button1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfmRelatedLetters.FormCreate(Sender: TObject);
begin
  inherited;
  Self.Color := _Color1 ;
  Self.Font.Name :=  _MainFont ;
end;

end.
