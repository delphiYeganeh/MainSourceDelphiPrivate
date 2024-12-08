unit Fsecretariats;

interface

uses
   YDbgrid, BaseUnit, ActnMan, Controls, Grids, DBGrids, Buttons, SysUtils,Classes,
  ActnList, DB, StdCtrls, ExtActns, XPStyleActnCtrls,DIALOGS, 
  xpBitBtn, ADODB, ExtCtrls, Menus;

type
  TFEditSecs = class(TMBaseForm)
    ActionManager: TActionManager;
    Action1: TAction;
    Action2: TAction;
    QrDelUserSec: TADOQuery;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    Button1: TBitBtn;
    Button2: TBitBtn;
    Button3: TBitBtn;
    Panel2: TPanel;
    DBGrid2: TYDBGrid;
    procedure BitBtn1Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    Modale : Boolean;
  end;

var
  FEditSecs: TFEditSecs;

implementation

uses  Dmu, businessLayer, UAddSecretariat,YShamsiDate;

{$R *.dfm}

procedure TFEditSecs.BitBtn1Click(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFEditSecs.Action1Execute(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFEditSecs.Button1Click(Sender: TObject);
begin
  inherited;
   with  dm,secretariats do
    begin
     Insert;
     FrAddSecretariat:=TFrAddSecretariat.Create(self);
     FrAddSecretariat.ShowModal;
     if Modale = True then  //Ranjbar
        MessageShowString(' œ” —”Ì «Ì‰ œ»Ì—Œ«‰Â —« œ— ﬁ”„   ⁄—Ì› ò«—»— »Â ò«—»—«‰ „—»ÊÿÂ «Œ ’«’ œÂÌœ',false);
   end;
end;


procedure TFEditSecs.Button2Click(Sender: TObject);
var i: integer;
begin
   inherited;
   if MBaseForm.MessageShowString('¬Ì« „«Ì· »Â Õ–› œ»Ì—Œ«‰Â Â” Ìœø', True) = False then
      Exit;
      
   i := Exec_NumberOfLetter_By_SecID(dm.SecretariatsSecID.AsInteger);
   if i>0 then
      messageShowString(inttostr(i) + '  ' + Get_sysAppMessage(84),false)
   else
      begin
         {Ranjbar Õ–› œ»Ì—Œ«‰Â Â«Ì ﬁ«»· œ” —”Ì  Ê”ÿ ﬂ«—»—«‰}
         Qry_SetResult('Delete UserSecretariats Where SecID = ' + dm.SecretariatsSecID.AsString ,Dm.YeganehConnection);
         //---
         Dm.Secretariats.Delete;
      end;
end;

procedure TFEditSecs.Button3Click(Sender: TObject);
begin
  inherited;
   with  dm,secretariats do
    begin
     edit;
     FrAddSecretariat:=TFrAddSecretariat.Create(self);
     FrAddSecretariat.ShowModal;
   end;

end;

end.
