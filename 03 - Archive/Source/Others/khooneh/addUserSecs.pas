unit addUserSecs;

interface

uses
  YDbgrid, BaseUnit, ActnMan, Controls, Grids, DBGrids, Buttons, Classes,
  ActnList, DB, StdCtrls, ExtActns, XPStyleActnCtrls, CheckLst,
  YchecklistBox,dialogs, xpWindow, xpBitBtn, DBCtrls;

type
  TFaddUserSecs = class(TMBaseForm)
    Label1: TLabel;
    SecList: TYchecklistBox;
    BitBtn2: TxpBitBtn;
    Button1: TxpBitBtn;
    Button2: TxpBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure SecListClearInDb;
    procedure SecListNeedCheck(ID: Integer; var checked: Boolean);
    procedure SecListChecked(ID: Integer);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FaddUserSecs: TFaddUserSecs;

implementation

uses  Dmu, businessLayer, Math, ADODB;

{$R *.dfm}

procedure TFaddUserSecs.FormCreate(Sender: TObject);
begin
  inherited;
  SecList.Fill;
end;

procedure TFaddUserSecs.SecListClearInDb;
begin
  inherited;
 Exec_Delete_All_Secretariats_Of_User(dm.UsersId.AsInteger);
 dm.UserSecretariat.Close;
 dm.UserSecretariat.Open;
end;

procedure TFaddUserSecs.SecListNeedCheck(ID: Integer;
  var checked: Boolean);
begin
  inherited;
 checked:=dm.UserSecretariat.Locate('secid',id,[]);
end;

procedure TFaddUserSecs.SecListChecked(ID: Integer);
begin
  inherited;
  with dm,UserSecretariat do
   begin
     insert;
     UserSecretariatSecId.AsInteger:=id;
     Post;
   end;
end;

procedure TFaddUserSecs.BitBtn2Click(Sender: TObject);
var One_checked: Boolean;
i: byte;
begin
  inherited;
  One_checked:=false;
  FOR I:= 0 to SecList.Count-1 do
      One_checked:=One_checked or  SecList.Checked[i];
if not One_checked then
   begin
     messageShowString('ò«—»— ‰„Ì  Ê«‰œ »Â ÂÌç œ»Ì—Œ«‰Â «Ì œ” —”Ì ‰œ«‘ Â »«‘œ',false);
     exit;
   end;
SecList.Post;
close;

end;

procedure TFaddUserSecs.Button1Click(Sender: TObject);
var  i: integer;
begin
  inherited;
  FOR I:= 0 to SecList.Count-1 do
       SecList.Checked[i]:=true;

end;

procedure TFaddUserSecs.Button2Click(Sender: TObject);
var  i: integer;
begin
  inherited;
  FOR I:= 0 to SecList.Count-1 do
       SecList.Checked[i]:=false;

end;

end.
