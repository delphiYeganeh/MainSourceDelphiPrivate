unit FixedTableF;

interface

uses
  YDbgrid, BaseUnit, ActnMan, Buttons, Controls, Grids, DBGrids, ComCtrls,
  Graphics, ExtCtrls, Classes, ActnList, DB, StdCtrls, ExtActns,
  XPStyleActnCtrls, xpWindow, xpBitBtn, xpPages;

type
  TFixedForm = class(TMBaseForm)
    ActionManager1: TActionManager;
    Action1: TAction;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    DBGrid2: TYDBGrid;
    procedure BitBtn1Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FixedForm: TFixedForm;

implementation

uses  Dmu;

{$R *.dfm}

procedure TFixedForm.BitBtn1Click(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFixedForm.Action1Execute(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFixedForm.FormCreate(Sender: TObject);
begin
  inherited;
 DBGrid2.Color:=dm.GetValue(1009);
end;

end.
