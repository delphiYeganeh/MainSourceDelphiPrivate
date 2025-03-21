 unit ExactCopy;

interface

uses
   Graphics,Forms,  Dialogs, BaseUnit, DB, ActnList, ActnMan, ADODB,
  Controls, Grids, DBGrids, YDbgrid, Buttons, StdCtrls, Classes,sysutils,
  ExtActns, XPStyleActnCtrls, Menus, ExtCtrls, TntStdCtrls, TntDBCtrls,
  AppEvnts, AdvGlowButton, xpPanel;

type
  TExactCopyF = class(TMBaseForm)
    Label2: TLabel;
    ActionManager: TActionManager;
    Add: TAction;
    Delete: TAction;
    Aexit: TAction;
    APost: TAction;
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    SpeedButton2: TAdvGlowButton;
    Button1: TAdvGlowButton;
    SpeedButton1: TAdvGlowButton;
    BitBtn1: TAdvGlowButton;
    Panel2: TxpPanel;
    DBG: TYDBGrid;
    TntDBMemo1: TTntDBMemo;
    CheckAccessForErja: TADOStoredProc;
    CheckAccessForErjaResult: TIntegerField;
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
    procedure BitBtn1Click(Sender: TObject);


  private
  public
  TypeId: byte ;
  LetterID:integer;
  Finallized: boolean;
  end;

var
  ExactCopyF: TExactCopyF;

implementation


uses FromOrgU,  Dmu,  UMain, businessLayer;


{$R *.dfm}


procedure TExactCopyF.AddExecute(Sender: TObject);
VAR i:integer;
begin
   inherited;

   if dm.Select_LetterReCommite.state in [dsedit,dsinsert] then
      dm.Select_LetterReCommite.Post;
      
   i:= OrgId;

  if i<>0 then
  begin
    CheckAccessForErja.Close;
    CheckAccessForErja.Parameters.ParamByName('@FromOrgID').Value := _UserFromOrgID;
    CheckAccessForErja.Parameters.ParamByName('@ToOrgID').Value   := i;//Select_LetterFromOrgID.AsInteger;
    CheckAccessForErja.Open;
  end;
  
  if CheckAccessForErjaResult.AsInteger = 0 then
  Begin
    ShowMsgString('������ ���� �� ���� ���� ��� ����� ���� ���� �����');
   Exec_Select_LetterReCommite(letterID,typeid);
    Abort;
  end;

  if not Finallized then
     Exec_insert_OtherRecievers(newid(TypeId),true,letterid,i,'',0,false,_Today,TypeId,_userid)
  else
     Exec_insert_ReCommites(newid(TypeId),true,letterid,i,'',0,false,_Today,TypeId,_userid);
   Exec_Select_LetterReCommite(LetterID,TypeId);
end;

function TExactCopyF.OrgId:integer;
begin
   inherited;
   Dm.Select_LetterReCommite.Close;
   if MainForm.GetSearch then
   begin
      Result:=_ResultOrgID
   end
      else Result:=0;
end;


procedure TExactCopyF.DeleteExecute(Sender: TObject);
begin
  inherited;
  if dm.Select_LetterReCommite.RecordCount=0 then
     Exit;
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
    if GetSystemSetting('RecommiteOtherAfterAssignNo') then
       Finallized:=True;
       
  Exec_Select_LetterReCommite(letterID,typeid);
end;

procedure TExactCopyF.FormCreate(Sender: TObject);
begin
  inherited;

Finallized:=True;
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
  i:= Exec_Get_FromOrganizationsID_ByCode(Edit1.Text);
  if i>0 then
  begin
    CheckAccessForErja.Close;
    CheckAccessForErja.Parameters.ParamByName('@FromOrgID').Value := _UserFromOrgID;
    CheckAccessForErja.Parameters.ParamByName('@ToOrgID').Value   := i;//Select_LetterFromOrgID.AsInteger;
    CheckAccessForErja.Open;
    if CheckAccessForErjaResult.AsInteger = 0 then
    Begin
      ShowMsgString('������ ���� �� ���� ���� ��� ����� ���� ���� �����');
         Exec_Select_LetterReCommite(letterID,typeid);
      Abort;
    end;

    if not Finallized then
     Exec_insert_OtherRecievers(newid(TypeId),true,letterid,i,'',0,false,_Today,TypeId,_userid)
    else
     Exec_insert_ReCommites(newid(TypeId),true,letterid,i,'',0,false,_Today,TypeId,_userid);
    Exec_Select_LetterReCommite(letterID,typeid);
    
  end ;
  //else ShowMsgString('���� �� ������ ����� ���� ������');

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

procedure TExactCopyF.BitBtn1Click(Sender: TObject);
begin
  inherited;
  close;
end;

end.
