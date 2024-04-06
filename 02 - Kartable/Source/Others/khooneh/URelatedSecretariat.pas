unit URelatedSecretariat;

interface

uses
   YDbgrid, BaseUnit, ActnMan, Controls, Grids, DBGrids, Buttons, SysUtils,Classes,
  ActnList, DB, StdCtrls, ExtActns, XPStyleActnCtrls,DIALOGS, xpWindow,
  xpBitBtn;

type
  TFrRelatedSecretariat = class(TMBaseForm)
    BitBtn1: TxpBitBtn;
    ActionManager: TActionManager;
    Action1: TAction;
    DBGrid2: TYDBGrid;
    Button1: TxpBitBtn;
    Button2: TxpBitBtn;
    Button3: TxpBitBtn;
    Action2: TAction;
    Secid: TLabel;
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
  FrRelatedSecretariat: TFrRelatedSecretariat;

implementation

uses  Dmu, businessLayer, UAddSecretariat, UAddRelatedSecretariat;

{$R *.dfm}

procedure TFrRelatedSecretariat.BitBtn1Click(Sender: TObject);
begin
  inherited;
// dm.SetSystemValue(34,ServerID.Text);
close;
end;

procedure TFrRelatedSecretariat.Action1Execute(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFrRelatedSecretariat.FormCreate(Sender: TObject);
begin
  inherited;
 DBGrid2.Color:=dm.GetValue(1009);
 if not dm.RelatedSecretariats.Active then
   dm.RelatedSecretariats.Open;
//   ServerID.Text:=dm.GetSystemValue(34);
   Secid.Caption:=' òœ œ»Ì—Œ«‰Â Ã«—Ì '+IntToStr(dm.SecID);
end;

procedure TFrRelatedSecretariat.Button1Click(Sender: TObject);
begin
  inherited;
   with  dm,RelatedSecretariats do
    begin
     Insert;
     RelatedSecretariatsDestinationSecID.AsInteger :=1;
     RelatedSecretariatsDestinationServerDB.AsString:='ydabir';
     FrAddRelatedSecretariat:=TFrAddRelatedSecretariat.Create(self);
     FrAddRelatedSecretariat.ShowModal;
   end;
end;


procedure TFrRelatedSecretariat.Button2Click(Sender: TObject);
begin
  inherited;
    if messageShowString('¬Ì« «“   »«œ· «ÿ·«⁄«  »« «Ì‰ œ»Ì—Œ«‰Â ’—› ‰Ÿ— „Ì ò‰Ìœø',True) then
   dm.RelatedSecretariats.Delete;
end;

procedure TFrRelatedSecretariat.Button3Click(Sender: TObject);
begin
  inherited;
   with  dm,RelatedSecretariats do
    begin
     edit;
     FrAddRelatedSecretariat:=TFrAddRelatedSecretariat.Create(self);
     FrAddRelatedSecretariat.ShowModal;
   end;

end;

end.
