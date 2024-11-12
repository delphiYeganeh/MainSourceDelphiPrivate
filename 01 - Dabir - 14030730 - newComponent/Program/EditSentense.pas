unit EditSentense;

interface

uses
 YDbgrid, BaseUnit, ActnMan, Controls, Grids, DBGrids, Buttons, Classes,
  ActnList, DB, StdCtrls, ExtActns, XPStyleActnCtrls,  xpBitBtn, Menus;

type
  TFEditSentense = class(TMBaseForm)
    BitBtn1: TBitBtn;
    ActionManager: TActionManager;
    Action1: TAction;
    DBGrid2: TDBGrid;
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
 if not dm.Sentenses.Active then dm.Sentenses.Open;
end;

end.
