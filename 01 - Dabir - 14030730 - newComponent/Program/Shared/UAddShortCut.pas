unit UAddShortCut;

interface

uses
 dialogs,DB, BaseUnit, ExtActns, ActnMan, Buttons, StdCtrls, Mask, DBCtrls,
  Controls, Classes, Windows,ActnList, Menus, ExtCtrls, AppEvnts,
  AdvGlowButton;

type
  TFrAddShortCut = class(TMBaseForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Title: TDBEdit;
    BitBtn2: TAdvGlowButton;
    BitBtn1: TAdvGlowButton;
    Label1: TLabel;
    Label3: TLabel;
    Key: TDBComboBox;
    pnlMain: TPanel;
    Panel1: TPanel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrAddShortCut: TFrAddShortCut;

implementation

uses Dmu, businessLayer;

{$R *.dfm}

procedure TFrAddShortCut.BitBtn1Click(Sender: TObject);
begin
  inherited;
if Duplicate_UserShortCut(_userid,key.Text) then
 begin
  ShowMessage('«Ì‰ ò·Ìœ ﬁ»·« «” ›«œÂ ‘œÂ «”  «“ ò·Ìœ Â«Ì œÌê— «” ›«œÂ ò‰Ìœ');
  key.SetFocus;
  exit;
 end;

dm.UserShortCut.Post;
close;
end;

procedure TFrAddShortCut.BitBtn2Click(Sender: TObject);
begin
  inherited;
dm.UserShortCut.Cancel;
close;
end;

procedure TFrAddShortCut.FormShow(Sender: TObject);
begin
  inherited;
Title.SetFocus;
end;

end.
