unit addUserSecs;

interface

uses
  YDbgrid, BaseUnit, ActnMan, Controls, Grids, DBGrids, Buttons, Classes,
  ActnList, DB, StdCtrls, ExtActns, XPStyleActnCtrls, CheckLst,SysUtils,
  YchecklistBox,dialogs,  xpBitBtn, DBCtrls, Menus;

type
  TFaddUserSecs = class(TMBaseForm)
    Label1: TLabel;
    SecList: TYchecklistBox;
    BitBtn2: TBitBtn;
    Button1: TBitBtn;
    Button2: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure SecListClearInDb;
    procedure SecListNeedCheck(ID: Integer; var checked: Boolean);
    procedure SecListChecked(ID: Integer);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    function GetDefaultSecreteriat:Integer;
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

  for i := 0 to SecList.Count-1 do
  begin
    if (SecList.codes[i] = GetDefaultSecreteriat) then
      if not (SecList.Checked[i]) then
      begin
         messageShowString('œ” —”Ì »Â œ»Ì—Œ«‰Â ÅÌ‘ ›—÷ —« ‰„Ì  Ê«‰Ìœ »—œ«—Ìœ',false);
         SecList.Checked[i]:=True;
         Exit;
      end;
  end;    
   SecList.Post;
   close;

end;

procedure TFaddUserSecs.Button2Click(Sender: TObject);
var  i: integer;
begin
  inherited;
  FOR I:= 0 to SecList.Count-1 do
       SecList.Checked[i]:=false;

end;

function TFaddUserSecs.GetDefaultSecreteriat: Integer;
begin
  Result:=0;
  with dm do
  begin
     qtemp.Close;
     qtemp.SQL.Clear;
     qtemp.SQL.Add('SELECT DefualtSecretariatID FROM Users WHERE Id='+IntToStr(dm.UsersId.AsInteger));
     qtemp.Open;

     if not qtemp.IsEmpty then
     begin
         Result:=qtemp.FieldValues['DefualtSecretariatID'];
     end;
  end;

end;

procedure TFaddUserSecs.Button1Click(Sender: TObject);
var
  i : Integer;
begin
  inherited;
  FOR I:= 0 to SecList.Count-1 do
       SecList.Checked[i]:=True;
end;

end.
