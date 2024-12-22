unit EditSentense;

interface

uses
 YDbgrid, BaseUnit, ActnMan, Controls, Grids, DBGrids, Buttons, Classes,
  ActnList, DB, StdCtrls, ExtActns, XPStyleActnCtrls, xpWindow, xpBitBtn,
  ExtCtrls, AdvGlowButton;

type
  TFEditSentense = class(TMBaseForm)
    ActionManager: TActionManager;
    Action1: TAction;
    Panel1: TPanel;
    BitBtn1: TAdvGlowButton;
    Panel2: TPanel;
    DBGrid2: TDBGrid;
    pnlMain: TPanel;
    procedure BitBtn1Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEditSentense: TFEditSentense;

implementation

uses  Dmu;

{$R *.dfm}

procedure TFEditSentense.BitBtn1Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFEditSentense.Action1Execute(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFEditSentense.FormCreate(Sender: TObject);
begin
  inherited;
  DBGrid2.Color:=dm.GetValue(1009);
  if not dm.Sentenses.Active then
    dm.Sentenses.Open;
end;

end.
