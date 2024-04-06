unit FixedTableF;

interface

uses
  YDbgrid, BaseUnit, ActnMan, Buttons, Controls, Grids, DBGrids, ComCtrls,
  Graphics, ExtCtrls, Classes, ActnList, DB, StdCtrls, ExtActns,
  XPStyleActnCtrls, xpWindow, xpBitBtn, xpPages;

type
  TFixedForm = class(TMBaseForm)
    BitBtn1: TxpBitBtn;
    ActionManager1: TActionManager;
    Action1: TAction;
    Image1: TImage;
    xpPageControl1: TxpPageControl;
    xpTabSheet1: TxpTabSheet;
    DBGrid1: TYDBGrid;
    xpTabSheet2: TxpTabSheet;
    DBGrid2: TYDBGrid;
    xpTabSheet3: TxpTabSheet;
    DBGrid3: TYDBGrid;
    xpTabSheet4: TxpTabSheet;
    YDBGrid1: TYDBGrid;
    Panel1: TPanel;
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
 DBGrid1.Color:=dm.GetValue(1009);
 DBGrid2.Color:=dm.GetValue(1009);
 DBGrid3.Color:=dm.GetValue(1009);
 YDBGrid1.Color:=dm.GetValue(1009);
 dm.ActionType.Open;
end;

end.
