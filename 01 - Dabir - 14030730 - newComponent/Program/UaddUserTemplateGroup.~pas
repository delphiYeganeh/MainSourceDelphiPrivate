unit UaddUserTemplateGroup;

interface

uses
  YDbgrid, BaseUnit, ActnMan, Controls, Grids, DBGrids, Buttons, Classes,
  ActnList, DB, StdCtrls, ExtActns, XPStyleActnCtrls, CheckLst,
  YchecklistBox,dialogs,  xpBitBtn, Menus, ExtCtrls, AppEvnts,
  AdvGlowButton;

type
  TFaddUserTemplateGroup = class(TMBaseForm)
    Label1: TLabel;
    GroupList: TYchecklistBox;
    Panel1: TPanel;
    pnlMain: TPanel;
    BitBtn1: TAdvGlowButton;
    Button1: TAdvGlowButton;
    Button2: TAdvGlowButton;
    procedure FormCreate(Sender: TObject);
    procedure GroupListClearInDb;
    procedure GroupListNeedCheck(ID: Integer; var checked: Boolean);
    procedure GroupListChecked(ID: Integer);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FaddUserTemplateGroup: TFaddUserTemplateGroup;

implementation

uses  Dmu, businessLayer, Math, ADODB;

{$R *.dfm}

procedure TFaddUserTemplateGroup.FormCreate(Sender: TObject);
begin
  inherited;
  GroupList.Fill;
end;

procedure TFaddUserTemplateGroup.GroupListClearInDb;
begin
  inherited;
 Exec_Delete_All_TemplateGroup_Of_User(dm.UsersId.AsInteger);
 dm.UserTemplateGroup.Close;
 dm.UserTemplateGroup.Open;
end;

procedure TFaddUserTemplateGroup.GroupListNeedCheck(ID: Integer;
  var checked: Boolean);
begin
  inherited;
 checked:=dm.UserTemplateGroup.Locate('TemplateGroupID',id,[]);
end;

procedure TFaddUserTemplateGroup.GroupListChecked(ID: Integer);
begin
  inherited;
  with dm,UserTemplateGroup do
   begin
     insert;
     UserTemplateGroupTemplateGroupID.AsInteger:=id;
     Post;
   end;
end;

procedure TFaddUserTemplateGroup.BitBtn1Click(Sender: TObject);
begin
  inherited;
 GroupList.Post;
close;

end;

procedure TFaddUserTemplateGroup.Button1Click(Sender: TObject);
 VAR I: INTEGER;
begin
  inherited;
  FOR I:= 0 to GroupList.Count-1 do
       GroupList.Checked[i]:=true;
  end;

procedure TFaddUserTemplateGroup.Button2Click(Sender: TObject);
var  i: integer; 
begin
  inherited;
  FOR I:= 0 to GroupList.Count-1 do
       GroupList.Checked[i]:=false;

end;

end.
