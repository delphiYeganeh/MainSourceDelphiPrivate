unit FrResearchEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, DBCtrls,baseunit, xpWindow, ExtActns, ActnList,
  DB;

type
  TResearchEditFrm = class(TmbaseForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ResearchEditFrm: TResearchEditFrm;

implementation

uses UzistDM;

{$R *.dfm}

procedure TResearchEditFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ;
end;

procedure TResearchEditFrm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  ;
end;

procedure TResearchEditFrm.BitBtn1Click(Sender: TObject);
begin
ZistDm.QryResearch.Post  ;
close;
end;

procedure TResearchEditFrm.BitBtn2Click(Sender: TObject);
begin
ZistDm.QryResearch.Cancel  ;
close;
end;

end.
