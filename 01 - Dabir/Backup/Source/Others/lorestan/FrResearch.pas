unit FrResearch;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DB, DBGrids, ADODB,baseunit, xpWindow,
  ExtActns, ActnList;

type
  TResearchFrm = class(TmbaseForm)
    GroupBox1: TGroupBox;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ResearchFrm: TResearchFrm;

implementation

uses UzistDM, FrResearchEdit;

{$R *.dfm}

procedure TResearchFrm.FormCreate(Sender: TObject);
begin
  ;
end;

procedure TResearchFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ;
end;

procedure TResearchFrm.BitBtn3Click(Sender: TObject);
begin
if MessageDlg('«Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœø',mtConfirmation,[mbyes,mbno],0)=mryes then
 ZistDm.QryResearch.Delete;
end;

procedure TResearchFrm.BitBtn4Click(Sender: TObject);
begin
 close ;
end;

procedure TResearchFrm.BitBtn2Click(Sender: TObject);
begin
ZistDm.QryResearch.edit  ;
ResearchEditFrm:=TResearchEditFrm.Create(Application);
ResearchEditFrm.ShowModal;
end;

procedure TResearchFrm.BitBtn1Click(Sender: TObject);
begin
ZistDm.QryResearch.Insert  ;
ResearchEditFrm:=TResearchEditFrm.Create(Application);
ResearchEditFrm.ShowModal;
end;

end.
