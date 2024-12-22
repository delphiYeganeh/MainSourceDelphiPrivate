unit ReCommitedialog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtCtrls, DBCtrls, StdCtrls, Buttons, Mask, DB,
  UemsVCL, ComCtrls, Grids, DBGrids, ActnList, ExtActns, xpWindow, xpBitBtn,
  CheckLst, YchecklistBox, ADODB, ImgList, DBTreeView;

type
  TRecommiteSave = class(TMBaseForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel3: TPanel;
    desc: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    DBparaph: TDBMemo;
    DBCIsCopy: TDBCheckBox;
    proceeded: TCheckBox;
    DBShamsiDateEdit2: TDBShamsiDateEdit;
    DBDeadLineDate: TDBShamsiDateEdit;
    BitBtn1: TxpBitBtn;
    BitBtn2: TxpBitBtn;
    Panel2: TPanel;
    Label2: TLabel;
    SpeedButton2: TSpeedButton;
    OrgCombo: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    OneOrg: TRadioButton;
    MoreOrg: TRadioButton;
    DBEdit9: TEdit;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    OrgTree: TDBTreeView;
    statimages: TImageList;
    FromOrganizations: TADOStoredProc;
    FromOrganizationsTitle: TWideStringField;
    FromOrganizationsParentID: TIntegerField;
    FromOrganizationsPhone: TWideStringField;
    FromOrganizationsFax: TWideStringField;
    FromOrganizationsEmail: TWideStringField;
    FromOrganizationsResponsibleStaffer: TWideStringField;
    FromOrganizationsIsActive: TBooleanField;
    FromOrganizationsPreCode: TWideStringField;
    FromOrganizationsIsInnerOrg: TBooleanField;
    FromOrganizationsID: TAutoIncField;
    FromOrganizationsCode: TWideStringField;
    DFromOrganizations: TDataSource;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SetReceiveMode(value:boolean);
    procedure DBEdit9Exit(Sender: TObject);
    procedure OrgComboClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure update_OrgStaffer;
    procedure MoreOrgClick(Sender: TObject);
    procedure DBDeadLineDateEnter(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure OrgTreeClick(Sender: TObject);
    procedure OrgTreeKeyPress(Sender: TObject; var Key: Char);
    procedure  DoGroupRecommite;
    function NodeSelected: integer;
    procedure DoRecommite;
  private
   FReceiveMode:boolean;
    { Private declarations }
  public
   RecommiteID: integer;
   LetterID: integer;
   ParentID: integer;
   property ReceiveMode:boolean read Freceivemode write SetreceiveMode;
    { Public declarations }
  end;

var
  RecommiteSave: TRecommiteSave;

implementation

uses FromOrgU, Dmu, businessLayer, YShamsiDate;

{$R *.dfm}
var    OrgID:integer;
Paraph,RecommiteDate:string;
isCopy:boolean;

procedure TRecommiteSave.BitBtn1Click(Sender: TObject);
var i: integer;
begin
  inherited;
  i:=NodeSelected;
if MoreOrg.Checked then
 if i<0 then
  begin
   messageShowString('ÍÏ ÇÞá í˜ íÑäÏå ÑÇ ÈÇíÏ ãÔÎÕ ˜äíÏ',false);
   exit;
  end
 else
   begin
    dm.Select_LetterReCommiteOrgID.Value:=i;
    OrgCombo.OnClick(OrgCombo);
  end;
DoRecommite;
if MoreOrg.Checked then
 begin
  DoGroupRecommite;
 end;

close;
end;
procedure TRecommiteSave.FormShow(Sender: TObject);
begin
  inherited;
 DBEdit9.SetFocus;
 OneOrg.Checked:=true;
 OrgTree.Hide;
end;

procedure TRecommiteSave.BitBtn2Click(Sender: TObject);
begin
  inherited;
Dm.Select_LetterReCommite.Cancel;
close;
end;

procedure TRecommiteSave.SpeedButton2Click(Sender: TObject);
begin
  inherited;
FromOrgForm:=TFromOrgForm.Create(Application);
FromOrgForm.OrganizeMode:=false;
FromOrgForm.ShowModal;
if FromOrgForm.done then
  begin
    dm.Select_LetterReCommiteOrgID.AsInteger:=_ResultOrgID;
    DBEdit9.Text:=_ResultOrgCode;
  end;

end;


procedure TRecommiteSave.SetReceiveMode(value:boolean);
begin
 FReceiveMode:=value;
 DBCIsCopy.Visible:=ReceiveMode;
end;
procedure TRecommiteSave.update_OrgStaffer;
var _id:integer ;
ResponsibleStaffer:widestring;
begin
  inherited;
   if dm.FromOrganizations.Locate('Code',DBEdit9.Text,[]) then
     begin
      dm.Select_LetterReCommiteOrgID.AsInteger:= dm.FromOrganizationsID.AsInteger;
      dm.Select_LetterReCommiteOrgStaff.AsString:= dm.FromOrganizationsResponsibleStaffer.AsString;
     end
   else
     try
         Exec_Get_FromOrganizations_ByCode(DBEdit9.Text,_id,ResponsibleStaffer);
         dm.Select_LetterReCommiteOrgStaff.AsString:=ResponsibleStaffer;
         dm.Select_LetterReCommiteOrgID.AsInteger:=_id ;
      except end;
end;
procedure TRecommiteSave.DBEdit9Exit(Sender: TObject);
begin
  inherited;
  update_OrgStaffer;
   TEditExit(sender);
end;

procedure TRecommiteSave.OrgComboClick(Sender: TObject);
begin
  inherited;
   dbedit9.Text:=dm.FromOrganizationsCode.AsString;
   update_OrgStaffer;
end;

procedure TRecommiteSave.FormCreate(Sender: TObject);
begin
  inherited;

DSForm.DataSet:=dm.Select_LetterReCommite;
  if DSForm.DataSet.State<>dsinsert then
   dbedit9.Text:=dm.FromOrganizationsCode.AsString;
 proceeded.Checked:=dm.DefaultProceed;
 DBCIsCopy.Checked:=dm.DefaultisCopy;
end;

procedure TRecommiteSave.MoreOrgClick(Sender: TObject);
 var i: integer;
begin
  inherited;
orgtree.Visible:=moreOrg.Checked;
 if OrgTree.DataSource=nil then
  begin
   FromOrganizations.Open;
   OrgTree.DataSource:=DFromOrganizations;
   for i:=0 to OrgTree.Items.Count-1 do
    OrgTree.Items.Item[i].StateIndex:=1;
  end;
end;

procedure TRecommiteSave.DBDeadLineDateEnter(Sender: TObject);
begin
  inherited;
 if TDBShamsiDateEdit(Sender).DataSource.DataSet.State in [dsedit,dsinsert] then
   TDBShamsiDateEdit(Sender).Text:=ShamsiIncDate(dm.today,0,0,2);

end;

procedure TRecommiteSave.SpeedButton3Click(Sender: TObject);
begin
  inherited;
 if DBDeadLineDate.DataSource.DataSet.State in [dsedit,dsinsert] then
   begin
     if DBDeadLineDate.Text='' then DBDeadLineDate.Text:=dm.today;
     DBDeadLineDate.Text:=ShamsiIncDate(DBDeadLineDate.Text,0,0,1);
   end;

end;

procedure TRecommiteSave.SpeedButton4Click(Sender: TObject);
begin
  inherited;
 if DBDeadLineDate.DataSource.DataSet.State in [dsedit,dsinsert] then
   begin
     if DBDeadLineDate.Text='' then DBDeadLineDate.Text:=dm.today;
     DBDeadLineDate.Text:=ShamsiIncDate(DBDeadLineDate.Text,0,0,-1);
   end;

end;


procedure ToggleTreeViewCheckBoxes(Node:TTreeNode; cUnChecked, cChecked:integer);
var
  tmp:TTreeNode;
begin
  if Assigned(Node) then
  begin
    if Node.StateIndex = cUnChecked then
      Node.StateIndex := cChecked
    else
      Node.StateIndex := cUnChecked;

    if Node.GetNext<>nil then
      if Node.Level<Node.GetNext.Level then
      begin
        tmp := Node.GetNext;
        while (Assigned(tmp)) and (tmp.Level>Node.Level) do
        begin
          tmp.StateIndex := Node.StateIndex;
          tmp := tmp.getNext;
        end;
      end;

  end;
end;


procedure TRecommiteSave.OrgTreeClick(Sender: TObject);
var
  P:TPoint;
begin
  GetCursorPos(P);
  P := TDBTreeView(Sender).ScreenToClient(P);
  if (htOnStateIcon in TDBTreeView(Sender).GetHitTestInfoAt(P.X,P.Y)) then
    ToggleTreeViewCheckBoxes(        TDBTreeView(Sender).Selected,       1,       2)
end;
procedure TRecommiteSave.OrgTreeKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#32 then
    ToggleTreeViewCheckBoxes(TDBTreeView(Sender).Selected,       1,       2)
end;

procedure TRecommiteSave.DoGroupRecommite;
var  tmp:TTreeNode;
begin
tmp:=OrgTree.Items[0];
 while (Assigned(tmp)) do
  begin
   if (tmp.StateIndex=2) and (integer(tmp.Data)<>orgid) then
     Exec_insertReCommites_autoID(LetterID,3,ParentId,integer(tmp.Data),Paraph,RecommiteDate,_userid,isCopy);
    tmp := tmp.getNext;
  end;
end;

function TRecommiteSave.NodeSelected: integer;
var i: integer;
begin
Result:=-1;
  for i:=0 to OrgTree.Items.Count-1 do
   if OrgTree.Items.Item[i].StateIndex=2 then
    begin
     Result:=Integer(OrgTree.Items.Item[i].data);
     Break;
    end;
end;

procedure TRecommiteSave.DoRecommite;
begin
  with dm.Select_LetterReCommite do
   begin
    Post;

    Paraph        := FieldByName('Paraph').AsString;
    RecommiteDate := FieldByName('RecommiteDate').AsString;
    OrgID         := FieldByName('OrgID').AsInteger;
    isCopy        := FieldByName('IsCopy').AsBoolean;

    Locate('id',ParentId,[]);
    Edit;
    FieldByName('proceeded').AsBoolean:=Proceeded.Checked;
    FieldByName('proceedDate').AsString:=dm.today;
    FieldByName('ActionTypeID').AsInteger:=atRecommited;
    Post;
   end;
end;

end.



