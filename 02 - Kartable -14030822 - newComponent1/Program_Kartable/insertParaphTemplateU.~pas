 unit insertParaphTemplateU;

interface

uses
   Graphics,Forms,  Dialogs, BaseUnit, DB, ActnList, ActnMan, ADODB,
  Controls, Grids, DBGrids, YDbgrid, Buttons, StdCtrls, Classes,sysutils,
  ExtActns, XPStyleActnCtrls, xpWindow, xpBitBtn, DBCtrls, ExtCtrls, Menus,
  AdvGlowButton ;

type
  TFrInsertParaphTemplate = class(TMBaseForm)
    Label2: TLabel;
    BitBtn1: TAdvGlowButton;
    Panel2: TPanel;
    DBMemo1: TDBMemo;
    Panel1: TPanel;
    SpeedButton3: TAdvGlowButton;
    SpeedButton4: TAdvGlowButton;
    DBG: TYDBGrid;
    pnlMain: TPanel;
    GroupBox1: TGroupBox;
    SpeedButton2: TAdvGlowButton;
    Button1: TAdvGlowButton;
    SpeedButton1: TAdvGlowButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);


  private
  public
      TemplateType : integer;
  end;

var
  FrInsertParaphTemplate: TFrInsertParaphTemplate;

implementation


uses FromOrgU,  Dmu,  UMain, businessLayer, ParaphDialogU;


{$R *.dfm}


procedure TFrInsertParaphTemplate.BitBtn1Click(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFrInsertParaphTemplate.SpeedButton3Click(Sender: TObject);
 var i: integer;
begin
  inherited;
  i:=dm.SELECT_ParaphTemplateParaphTemplateID.AsInteger;
Move_ParaphTemplate(i,-1);
Open_ParaphTemplate(TemplateType);
dm.SELECT_ParaphTemplate.Locate('ParaphTemplateID',i,[]);
end;

procedure TFrInsertParaphTemplate.SpeedButton4Click(Sender: TObject);
 var i: integer;
begin
  inherited;
  i:=dm.SELECT_ParaphTemplateParaphTemplateID.AsInteger;
Move_ParaphTemplate(i,+1);
Open_ParaphTemplate(TemplateType);
dm.SELECT_ParaphTemplate.Locate('ParaphTemplateID',i,[]);
end;

procedure TFrInsertParaphTemplate.SpeedButton1Click(Sender: TObject);
begin
  inherited;
if messageShowString('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœ',true) then
 begin
  delete_ParaphTemplate(dm.SELECT_ParaphTemplateParaphTemplateID.AsInteger);
  Open_ParaphTemplate(TemplateType);
 end;

end;

procedure TFrInsertParaphTemplate.SpeedButton2Click(Sender: TObject);
begin
  inherited;
FrParaphDialog:=TFrParaphDialog.Create(Application);
with FrParaphDialog do
 begin
   ShowModal;
   if not done then exit;
         Insert_ParaphTemplate(Title.Text,Paraph.Text,TemplateType);
   Open_ParaphTemplate(TemplateType);
 end;
end;

procedure TFrInsertParaphTemplate.Button1Click(Sender: TObject);
var i: integer;
begin
  inherited;
  i:=dm.SELECT_ParaphTemplateParaphTemplateID.AsInteger;
FrParaphDialog:=TFrParaphDialog.Create(Application);
with FrParaphDialog do
 begin
   Title.Text:=dm.SELECT_ParaphTemplateTitle.AsString;
   Paraph.Text:=dm.SELECT_ParaphTemplateParaph.AsString;
   ShowModal;
   if not done then exit;

   Update_ParaphTemplate(i,Title.Text,Paraph.Text);
   Open_ParaphTemplate(TemplateType);
   dm.SELECT_ParaphTemplate.Locate('ParaphTemplateID',i,[]);

 end;

end;

procedure TFrInsertParaphTemplate.FormShow(Sender: TObject);
begin
  inherited;
   Open_ParaphTemplate(TemplateType);
end;

end.
