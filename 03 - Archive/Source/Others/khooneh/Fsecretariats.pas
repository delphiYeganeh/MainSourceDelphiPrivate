unit Fsecretariats;

interface

uses
   YDbgrid, BaseUnit, ActnMan, Controls, Grids, DBGrids, Buttons, SysUtils,Classes,
  ActnList, DB, StdCtrls, ExtActns, XPStyleActnCtrls,DIALOGS, xpWindow,
  xpBitBtn;

type
  TFEditSecs = class(TMBaseForm)
    BitBtn1: TxpBitBtn;
    ActionManager: TActionManager;
    Action1: TAction;
    Button1: TxpBitBtn;
    Button2: TxpBitBtn;
    Button3: TxpBitBtn;
    Action2: TAction;
    DBGrid2: TYDBGrid;
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
  FEditSecs: TFEditSecs;

implementation

uses  Dmu, businessLayer, UAddSecretariat;

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

procedure TFEditSecs.FormCreate(Sender: TObject);
begin
  inherited;
 DBGrid2.Color:=dm.GetValue(1009);
end;

procedure TFEditSecs.Button1Click(Sender: TObject);
begin
  inherited;
   with  dm,secretariats do
    begin
     Insert;
     FrAddSecretariat:=TFrAddSecretariat.Create(self);
     FrAddSecretariat.ShowModal;
     messageShowString(' ÏÓÊÑÓí Çíä ÏÈíÑÎÇäå ÑÇ ÏÑ ÞÓãÊ ÊÚÑíÝ ˜ÇÑÈÑ Èå ˜ÇÑÈÑÇä ãÑÈæØå ÇÎÊÕÇÕ ÏåíÏ',false);
   end;
end;


procedure TFEditSecs.Button2Click(Sender: TObject);
 var i: integer;
begin
  inherited;
 i:=Exec_NumberOfLetter_By_SecID(dm.SecretariatsSecID.AsInteger);
  if i>0 then
   messageShowString(inttostr(i)+'  '+ Get_sysAppMessage(84),false)
  else
   dm.Secretariats.Delete;

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
