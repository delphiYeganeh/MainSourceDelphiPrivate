 unit ExactCopy;

interface

uses
   Graphics,Forms,  Dialogs, BaseUnit, DB, ActnList, ActnMan, ADODB,
  Controls, Grids, DBGrids, YDbgrid, Buttons, StdCtrls, Classes,sysutils,
  ExtActns, XPStyleActnCtrls, xpWindow, xpBitBtn, ExtCtrls, AdvGlowButton ;

type
  TExactCopyF = class(TMBaseForm)
    ActionManager: TActionManager;
    Add: TAction;
    Delete: TAction;
    Aexit: TAction;
    APost: TAction;
    Panel1: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TAdvGlowButton;
    SpeedButton2: TAdvGlowButton;
    SpeedButton1: TAdvGlowButton;
    Panel2: TPanel;
    DBG: TYDBGrid;
    BitBtn2: TAdvGlowButton;
    pnlMain: TPanel;
    procedure AddExecute(Sender: TObject);
    procedure DeleteExecute(Sender: TObject);
    procedure AexitExecute(Sender: TObject);
    function  OrgId:integer;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure APostExecute(Sender: TObject);
    procedure DBGNeedColorCondition(Column: TColumn; State: TGridDrawState;
      var Color: TColor);
    function NewID(i:byte):integer;
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);


  private
  public
  TypeId: byte ;
  LetterID:integer;
  end;

var
  ExactCopyF: TExactCopyF;

implementation


uses FromOrgU,  Dmu,  UMain, businessLayer, YShamsiDate;


{$R *.dfm}


procedure TExactCopyF.AddExecute(Sender: TObject);
VAR i:integer;
begin
  inherited;
if  dm.Select_LetterReCommite.state in [dsedit,dsinsert] then
   dm.Select_LetterReCommite.Post;
 i:=OrgId;
if i<>0 then
 Exec_insert_ReCommites(newid(TypeId),true,letterid,i,'',0,false,ShamsiString(now),TypeId,_userid);
 Exec_Select_LetterReCommite(LetterID,TypeId);
end;

function TExactCopyF.OrgId:integer;
begin
  inherited;
    dm.Select_LetterReCommite.Close;
    if MainForm.GetSearch then
     begin
       Result:=_ResultOrgID
     end
     ELSE Result:=0;
end;


procedure TExactCopyF.DeleteExecute(Sender: TObject);
begin
  inherited;
if dm.Select_LetterReCommite.RecordCount=0 then exit;
Exec_delete_ReCommites(dm.Select_LetterReCommiteRecommiteID.AsInteger);
Exec_Select_LetterReCommite(letterID,typeid);
end;

procedure TExactCopyF.AexitExecute(Sender: TObject);
begin
  inherited;
 close;
end;


procedure TExactCopyF.FormShow(Sender: TObject);
begin
  inherited;
  Exec_Select_LetterReCommite(letterID,typeid);
end;

procedure TExactCopyF.FormCreate(Sender: TObject);
begin
  inherited;
DBG.Color:=dm.GetValue(1009);
end;

procedure TExactCopyF.CheckBox1Click(Sender: TObject);
begin
  inherited;
               ShowMsg(47);
end;

procedure TExactCopyF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
if dm.Select_LetterReCommite.State in [dsedit,dsinsert]  then
   dm.Select_LetterReCommite.Post;

end;

procedure TExactCopyF.APostExecute(Sender: TObject);
var i: integer;
begin
  inherited;
 i:=Exec_Get_FromOrganizationsID_ByCode(Edit1.Text);
 if i>0 then
  begin
   Exec_insert_ReCommites(NewID(TypeId),true,LetterID,i,'',0,false,'',typeid,_userid);
   Exec_Select_LetterReCommite(letterID,typeid);
  end; 
 edit1.Text:='';
 Edit1.SetFocus;
end;

procedure TExactCopyF.DBGNeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Color: TColor);
begin
  inherited;
  if dm.Select_LetterReCommiteIsInnerOrg.AsBoolean then
    Color:=$00FFE6FF
   else
    Color:=$00FFD3A8;

end;
function TExactCopyF.NewID(i:byte):integer;
begin
  inherited;
 Result:=Exec_NewRecommiteID(LetterID,i);
end;

procedure TExactCopyF.Button1Click(Sender: TObject);
begin
  inherited;
APost.Execute;
end;

procedure TExactCopyF.SpeedButton2Click(Sender: TObject);
begin
  inherited;
Add.Execute
end;

procedure TExactCopyF.SpeedButton1Click(Sender: TObject);
begin
  inherited;
Delete.Execute;
end;

procedure TExactCopyF.BitBtn2Click(Sender: TObject);
begin
  inherited;
   close;
end;

end.
