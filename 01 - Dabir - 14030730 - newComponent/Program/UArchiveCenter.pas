unit UArchiveCenter;

interface

uses
   YDbgrid, BaseUnit, ActnMan, Controls, Grids, DBGrids, Buttons, SysUtils,Classes,
  ActnList, DB, StdCtrls, ExtActns, XPStyleActnCtrls,DIALOGS, 
  xpBitBtn, Menus, ExtCtrls, AppEvnts, AdvGlowButton;

type
  TFrArchiveCenter = class(TMBaseForm)
    BitBtn1: TAdvGlowButton;
    ActionManager: TActionManager;
    Action1: TAction;
    Button1: TAdvGlowButton;
    Button2: TAdvGlowButton;
    Button3: TAdvGlowButton;
    Action2: TAction;
    DBGrid2: TYDBGrid;
    Panel1: TPanel;
    pnlMain: TPanel;
    procedure BitBtn1Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrArchiveCenter: TFrArchiveCenter;

implementation

uses  Dmu, businessLayer, UAddSecretariat, ADODB, Math;

{$R *.dfm}

procedure TFrArchiveCenter.BitBtn1Click(Sender: TObject);
begin
  inherited;
  dm.SecID:=dm.SecID;
close;
end;

procedure TFrArchiveCenter.Action1Execute(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFrArchiveCenter.Button1Click(Sender: TObject);
 var s: string;
begin
  inherited;
   with  dm,ArchiveCenter do
    if Y_InputQuery('„—«ò“ »«Ìê«‰Ì', '„—ò“ »«Ìê«‰Ì ÃœÌœ',s,'') then
    begin
     Insert;
     ArchiveCenterArchiveCenterID.AsInteger:=dm.YeganehConnection.Execute('select max(ArchiveCenterID)+1 from ArchiveCenter').Fields[0].Value;
     ArchiveCenterArchiveCenterTitle.AsString:=s;
   end;
end;


procedure TFrArchiveCenter.Button2Click(Sender: TObject);
begin
  inherited;
  if messageShowString('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœ',true) then
    dm.ArchiveCenter.Delete;

end;

procedure TFrArchiveCenter.Button3Click(Sender: TObject);
 var s: string;
begin
  inherited;
   with  dm,ArchiveCenter do
    if Y_InputQuery('„—«ò“ »«Ìê«‰Ì', ArchiveCenterArchiveCenterTitle.AsString,s,'') then
    begin
     edit;
     ArchiveCenterArchiveCenterTitle.AsString:=s;
     Post;
   end;
end;

end.
