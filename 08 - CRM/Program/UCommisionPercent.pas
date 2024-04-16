unit UCommisionPercent;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, YDbgrid,
  ExtActns, ActnList, DB, ADODB;

type
  TfrCommisionPercent = class(TMBaseForm)
    GroupBox2: TGroupBox;
    dbgCommisionPercent: TYDBGrid;
    Panel5: TPanel;
    BitBtn3: TBitBtn;
    ADQCommisionPercent: TADOQuery;
    ADQCommisionPercentCommisionPercentID: TAutoIncField;
    ADQCommisionPercentProductID: TIntegerField;
    ADQCommisionPercentCommisionPercent: TWordField;
    ADQCommisionPercentEffectivedate: TWideStringField;
    ADQCommisionPercentProduct: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frCommisionPercent: TfrCommisionPercent;

implementation

uses dmu;

{$R *.dfm}

procedure TfrCommisionPercent.FormCreate(Sender: TObject);

begin

  with ADQCommisionPercent do
  begin
    Close;
    SQL.Text := 'select *  from CommisionPercent ';
    Open;
  end;

end;

procedure TfrCommisionPercent.BitBtn3Click(Sender: TObject);
begin
  inherited;
ADQCommisionPercent.Append;
end;

end.
