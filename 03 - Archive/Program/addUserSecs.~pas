unit addUserSecs;

interface

uses
  YDbgrid, BaseUnit, ActnMan, Controls, Grids, DBGrids, Buttons, Classes,
  ActnList, DB, StdCtrls, ExtActns, XPStyleActnCtrls, CheckLst,
  YchecklistBox,dialogs, xpWindow, xpBitBtn, ExtCtrls, windows, DBCtrls,
  ADODB, Variants , SysUtils, ComCtrls;

type
  TFaddUserSecs = class(TMBaseForm)
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    SecList: TYchecklistBox;
    Label1: TLabel;
    SBAll: TSpeedButton;
    SBNone: TSpeedButton;
    YDBGrid1: TYDBGrid;
    tblAccesses: TADOTable;
    tblAccessesID: TWordField;
    tblAccessesTitle: TWideStringField;
    tblUserSec: TADODataSet;
    tblUserSecUserId: TIntegerField;
    tblUserSecSecId: TIntegerField;
    dsUserSec: TDataSource;
    tblUserSecAccessId: TIntegerField;
    tblUserSecSecTitle: TStringField;
    tblUserSecAccessTitle: TStringField;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    ProgressBar1: TProgressBar;
    procedure FormCreate(Sender: TObject);
    procedure SecListClearInDb;
    procedure SecListNeedCheck(ID: Integer; var checked: Boolean);
    procedure SecListChecked(ID: Integer);
    procedure BitBtn2Click(Sender: TObject);
    procedure SBAllClick(Sender: TObject);
    procedure SBNoneClick(Sender: TObject);
    procedure SecListClickCheck(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure RefreshData;
  public
    { Public declarations }
  end;

var
  FaddUserSecs: TFaddUserSecs;

implementation

uses  Dmu, businessLayer, Math;

{$R *.dfm}

procedure SetWinControlBiDi(Control: TWinControl);
var
 ExStyle: Longint;
begin
   ExStyle := GetWindowLong(Control.Handle, GWL_EXSTYLE);
   SetWindowLong(Control.Handle, GWL_EXSTYLE, ExStyle or WS_EX_RTLREADING or WS_EX_RIGHT
   or WS_EX_LAYOUTRTL or WS_EX_NOINHERITLAYOUT );
end;

procedure TFaddUserSecs.FormCreate(Sender: TObject);
begin
  inherited;
   SecList.Fill;
   SetWinControlBiDi(SecList);
end;

procedure TFaddUserSecs.SecListClearInDb;
begin
  inherited;
  //Add Sanaye 941121
  //«ÌÃ«œ ”ÿÕ œ” —”Ì »—ÊÌ »«Ìê«‰Ì
  Exec_Delete_All_Secretariats_Of_User(dm.UsersId.AsInteger, Dm.SecretariatsSecID.AsInteger);
  dm.UserSecs.Close;
  dm.UserSecs.Open;
  //End Sanaye...
end;

procedure TFaddUserSecs.SecListNeedCheck(ID: Integer;
  var checked: Boolean);
begin
  inherited;
 checked:=dm.UserSecs.Locate('secid',id,[]);
end;

procedure TFaddUserSecs.SecListChecked(ID: Integer);
begin
  inherited;
  //Add Sanaye 941121
  //«ÌÃ«œ ”ÿÕ œ” —”Ì »—ÊÌ »«Ìê«‰Ì
  with dm,UserSecs do
  begin
     if not(Locate('UserId;SecId', VarArrayOf([Dm.UsersId.AsInteger, Id]),[])) then
     begin
       insert;
       UserSecsSecId.AsInteger:=id;
       Post;
     end;
  end;
  //End Sanaye...
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
     ShowMessage('·ÿ›« Õœ«ﬁ· Ìò œ› — »«Ìê«‰Ì —« «‰ Œ«» ò‰Ìœ');
     exit;
  end;

  //Add Sanaye 941121
  //«ÌÃ«œ ”ÿÕ œ” —”Ì »—ÊÌ »«Ìê«‰Ì
  if tblUserSec.State in [dsInsert , dsEdit] then
    tblUserSec.Post;
  //End Sanaye

  close;
end;

procedure TFaddUserSecs.SBAllClick(Sender: TObject);
begin
  inherited;
  Dm.Secretariats.First;
  Dm.Secretariats.DisableControls;
  while not Dm.Secretariats.Eof do
  begin
    with dm,UserSecs do
    begin
       if not(Locate('UserId;SecId', VarArrayOf([Dm.UsersId.AsInteger, Dm.SecretariatsSecID.AsInteger]),[])) then
       begin
         insert;
         UserSecsSecId.AsInteger:=Dm.SecretariatsSecID.AsInteger;
         Post;
       end;
    end;
    Dm.Secretariats.Next;
  end;
  Dm.Secretariats.First;
  Dm.Secretariats.EnableControls;
  RefreshData;
end;

procedure TFaddUserSecs.SBNoneClick(Sender: TObject);
begin
  inherited;
  Dm.Secretariats.First;
  Dm.Secretariats.DisableControls;
  while not Dm.Secretariats.Eof do
  begin
    with dm,UserSecs do
    begin
       if Locate('UserId;SecId', VarArrayOf([Dm.UsersId.AsInteger, Dm.SecretariatsSecID.AsInteger]),[]) then
         Delete;
    end;
    Dm.Secretariats.Next;
  end;
  Dm.Secretariats.First;
  Dm.Secretariats.EnableControls;
  RefreshData;
end;


procedure TFaddUserSecs.SecListClickCheck(Sender: TObject);
begin
  inherited;
  //Add Sanaye 941121
  //«ÌÃ«œ ”ÿÕ œ” —”Ì »—ÊÌ »«Ìê«‰Ì
  Dm.Secretariats.Locate('SecTitle',SecList.Items[SecList.ItemIndex],[]);
  SecList.Post;
  RefreshData;
  //End Sanaye
end;

procedure TFaddUserSecs.BitBtn1Click(Sender: TObject);
var
i : Integer;
qry : TADOQuery;
begin
  inherited;

try

ProgressBar1.Max := SecList.Items.Count;
for i:=0 to SecList.Items.Count-1 do
   begin
   if SecList.Checked[i] then
      begin
      //ShowMessage('* : ' + SecList.Items.Strings[i] + ' = ' + IntToStr(SecList.Codes[i]) )
      qry := TADOQuery.Create(nil);
      qry.Connection := Dm.YeganehConnection;
      qry.Close;
      qry.SQL.Clear;
      qry.SQL.Add('update UserAccArchive set ISAccess = 1 where SecID = ' + IntToStr(SecList.Codes[i]) + ' and UserID = ' + Dm.UsersId.AsString);
      qry.ExecSQL;
      end
   else
      begin
      //ShowMessage('  : ' + SecList.Items.Strings[i] + ' = ' + inttostr(SecList.Codes[i]) );
      qry := TADOQuery.Create(nil);
      qry.Connection := Dm.YeganehConnection;
      qry.Close;
      qry.SQL.Clear;
      qry.SQL.Add('update UserAccArchive set ISAccess = 0 where SecID = ' + IntToStr(SecList.Codes[i]) + ' and UserID = ' + Dm.UsersId.AsString);
      qry.ExecSQL;
      end;

   ProgressBar1.Position := ProgressBar1.Position + 1;
   end;

ShowMessage('”ÿÕ œ” —”Ì Â« »« „Ê›ﬁÌ  »—Ê“ ‘œ');

ShowMessage('»—«Ì «⁄„«· „Ì »«Ì”  Ìò»«— «“ ‰—„ «›“«— Œ«—Ã ‘ÊÌœ Ê œÊ»«—Â Ê«—œ ‘ÊÌœ');
except
ShowMessage('Œÿ« œ— »—Ê“ —”«‰Ì œ«œÂ Â«');
end;

end;

procedure TFaddUserSecs.RefreshData;
begin
  //Add Sanaye 941121
  //«ÌÃ«œ ”ÿÕ œ” —”Ì »—ÊÌ »«Ìê«‰Ì
  with tblUserSec do
  begin
    Close;
    Parameters.ParamByName('UserId').Value := Dm.UsersId.Value;
    Open;
  end;
  tblAccesses.Open;
  //end Sanaye
end;

procedure TFaddUserSecs.FormShow(Sender: TObject);
begin
  inherited;
  RefreshData;
end;

end.
