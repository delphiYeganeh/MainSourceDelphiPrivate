unit UArchiveCenter;

interface

uses
   YDbgrid, BaseUnit, ActnMan, Controls, Grids, DBGrids, Buttons, SysUtils,Classes,
  ActnList, DB, StdCtrls, ExtActns, XPStyleActnCtrls,DIALOGS, xpWindow,
  xpBitBtn, Menus, ExtCtrls, AdvGlowButton;

type
  TFrArchiveCenter = class(TMBaseForm)
    ActionManager: TActionManager;
    Action1: TAction;
    Action2: TAction;
    Panel1: TPanel;
    Button1: TAdvGlowButton;
    Button2: TAdvGlowButton;
    Button3: TAdvGlowButton;
    BitBtn1: TAdvGlowButton;
    Panel2: TPanel;
    DBGrid2: TYDBGrid;
    pnlMain: TPanel;
    procedure BitBtn1Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
  dm.SecID := dm.SecID;
close;
end;

procedure TFrArchiveCenter.Action1Execute(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFrArchiveCenter.FormCreate(Sender: TObject);
begin
  inherited;
 DBGrid2.Color := dm.GetValue(1009);
end;

procedure TFrArchiveCenter.Button1Click(Sender: TObject);
var s: string;
begin
   inherited;
   With Dm,ArchiveCenter do
      if Y_InputQuery('„—«ò“ »«Ìê«‰Ì', '„—ò“ »«Ìê«‰Ì ÃœÌœ',s) then
      begin
         Insert;
         ArchiveCenterArchiveCenterID.AsInteger   := dm.YeganehConnection.Execute('select ISNULL(max(ArchiveCenterID),0)+1 from ArchiveCenter').Fields[0].Value;
         ArchiveCenterArchiveCenterTitle.AsString := s ;
         Post;
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
    if Y_InputQuery('„—«ò“ »«Ìê«‰Ì', ArchiveCenterArchiveCenterTitle.AsString,s) then
    begin
     edit;
     ArchiveCenterArchiveCenterTitle.AsString := s;
     Post;
   end;
end;

end.
