unit Fsecretariats;

interface

uses
   YDbgrid, BaseUnit, ActnMan, Controls, Grids, DBGrids, Buttons, SysUtils,Classes,
  ActnList, DB, StdCtrls, ExtActns, XPStyleActnCtrls,DIALOGS, 
  xpBitBtn, ADODB, ExtCtrls, Menus, AppEvnts, AdvGlowButton;

type
  TFEditSecs = class(TMBaseForm)
    ActionManager: TActionManager;
    Action1: TAction;
    Action2: TAction;
    QrDelUserSec: TADOQuery;
    Panel1: TPanel;
    BitBtn1: TAdvGlowButton;
    Button1: TAdvGlowButton;
    Button2: TAdvGlowButton;
    Button3: TAdvGlowButton;
    Panel2: TPanel;
    DBGrid2: TYDBGrid;
    pnlMain: TPanel;
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
        MessageShowString(' ������ ��� �������� �� �� ���� ����� ����� �� ������� ������ ������ ����',false);
   end;
end;


procedure TFEditSecs.Button2Click(Sender: TObject);
var i: integer;
begin
   inherited;
   if MBaseForm.MessageShowString('��� ���� �� ��� �������� ����Ͽ', True) = False then
      Exit;
      
   i := Exec_NumberOfLetter_By_SecID(dm.SecretariatsSecID.AsInteger);
   if i>0 then
      messageShowString(inttostr(i) + '  ' + Get_sysAppMessage(84),false)
   else
      begin
         {Ranjbar ��� �������� ��� ���� ������ ���� �������}
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
