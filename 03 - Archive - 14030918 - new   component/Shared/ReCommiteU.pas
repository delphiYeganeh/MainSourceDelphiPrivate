
unit ReCommiteU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Buttons, ComCtrls, ExtCtrls, DB, ADODB, StdCtrls,
  Grids, DBGrids, DBActns, ActnList, ActnMan, ToolWin, Mask, DBCtrls,
  ActnCtrls, ActnMenus, jpeg, UemsVCL, Menus, DBTreeView, ExtActns,
  XPStyleActnCtrls, xpWindow, xpBitBtn;

type
  TReCommite = class(TMBaseForm)
    ActionManager1: TActionManager;
    DataSetDelete1: TDataSetDelete;
    Action1: TAction;
    GroupBox1: TGroupBox;
    BBOK: TxpBitBtn;
    desc: TLabel;
    Label8: TLabel;
    Image2: TImage;
    NewRecommite: TxpBitBtn;
    AInsert: TAction;
    Label6: TLabel;
    DBShamsiDateEdit2: TDBShamsiDateEdit;
    DBParaph: TDBMemo;
    ReCommitesTree: TDBTreeView;
    DBCIsCopy: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    AArchiveRecommite: TAction;
    AtypeRecommite: TAction;
    Action2: TAction;
    BitBtn1: TxpBitBtn;
    BitBtn2: TxpBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    procedure Action1Execute(Sender: TObject);
    procedure AInsertExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure refresh;
    procedure ReCommitesTreeGetImageIndex(Sender: TObject;
      Node: TTreeNode);
    procedure FormShow(Sender: TObject);
    procedure ReCommitesTreeDblClick(Sender: TObject);
    procedure DoRecommite(FromOrgID:integer);
    procedure AnswerClick(Sender: TObject);
    procedure AArchiveRecommiteExecute(Sender: TObject);
    procedure AtypeRecommiteExecute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure DBShamsiDateEdit2Enter(Sender: TObject);
    procedure DBShamsiDateEdit2Exit(Sender: TObject);
    procedure DataSetDelete1Execute(Sender: TObject);
    procedure NewRecommiteClick(Sender: TObject);


  private
    { Private declarations }
  public
   LetterID:Integer;

    { Public declarations }
  end;

var
  ReCommite: TReCommite;

implementation

uses  ReCommitedialog, yShamsiDate, Dmu, UMain, businessLayer;
{$R *.dfm}

var Iscopy:boolean;

procedure TReCommite.Action1Execute(Sender: TObject);
begin
  inherited;
close;
end;

procedure TReCommite.AInsertExecute(Sender: TObject);
begin
    DoRecommite(0)
end;

procedure TReCommite.DoRecommite(FromOrgID:integer);
var i,SelectedId: integer;
flag:boolean;
ProceedDate:string;
   UserID,OrgID :integer;
	 RecommiteDate,Paraph:string;

begin
  inherited;

  with dm do
 begin
  RecommiteSave:=TRecommiteSave.Create(Application);
  isCopy:=True;
  if dm.Select_LetterReCommiteIsCopy.AsBoolean then
    ReCommiteSave.DBCIsCopy.Enabled:=false;

  SelectedId:=integer(ReCommitesTree.Selected.Data);

  ReCommitesTree.DataSource:=nil;

  Select_LetterReCommite.Insert;

  Select_LetterReCommiteID.AsInteger:=Exec_NewRecommiteID(LetterID,3);
  Select_LetterReCommiteType.AsInteger:=3;
  Select_LetterReCommiteRecommiteDate.AsString:=dm.today;

  Select_LetterReCommiteParentID.Value:=SelectedId;
  if dm.Select_LetterReCommiteIsCopy.AsBoolean then
     Select_LetterReCommiteIsCopy.AsBoolean:=true
   else
     Select_LetterReCommiteIsCopy.AsBoolean:=Recommite_Copy;

  Select_LetterReCommiteLetterID.AsInteger:=LetterID;
  RecommiteSave.letterid:=LetterID;


  RecommiteSave.ShowModal;


flag:=false;
if  RecommiteSave.done then
with dm.Select_LetterReCommite do
 begin
   Post;

	 Paraph        := FieldByName('Paraph').AsString;
   RecommiteDate := FieldByName('RecommiteDate').AsString;
   OrgID         := FieldByName('OrgID').AsInteger;
 	 UserID        := FieldByName('UserID').asinteger;

   ProceedDate:=dm.Select_LetterReCommiteRecommiteDate.AsString;
   flag:=true;
  end
else
 begin
   Select_LetterReCommite.Cancel;
   exit;
 end;
end;{dm}

 if flag then
 with dm.Select_LetterReCommite do
   begin
     Locate('id',SelectedId,[]);
     Edit;
     FieldByName('proceeded').AsBoolean:=RecommiteSave.proceeded.Checked;
     FieldByName('proceedDate').AsString:=ProceedDate;
     Post;
   end;

    with RecommiteSave,OrgList do
    if SelectedCodes<>'' then
     for i:=0 to Count-1 do
      if Checked[i] then
        if codes[i]<>orgid then
           Exec_insertReCommites_autoID(LetterID,3,SelectedId,codes[i],Paraph,RecommiteDate,UserID,false);

 refresh;
 ReCommitesTree.DataSource:=DSForm;
 ReCommitesTree.Items[0].Expand(true);

end;


procedure TReCommite.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
 bbok.SetFocus;
 dm.Select_LetterReCommite.Close;
end;

procedure TReCommite.refresh;
begin
  inherited;
Exec_Select_LetterReCommite(LetterID,3);
end;
procedure TReCommite.ReCommitesTreeGetImageIndex(Sender: TObject;
  Node: TTreeNode);
begin
  inherited;
 node.ImageIndex:=1;
end;

procedure TReCommite.FormShow(Sender: TObject);
begin
  inherited;
  if _Kartable then
   begin
     AInsert.Enabled:=false;
     NewRecommite.Hide;
   end;
   refresh;
   ReCommitesTree.Items[0].Expand(true);

end;

procedure TReCommite.ReCommitesTreeDblClick(Sender: TObject);
begin
  inherited;

  ReCommitesTree.DataSource:=nil;
  RecommiteSave:=TRecommiteSave.Create(Application);
  RecommiteSave.RecommiteID:=dm.Select_LetterReCommiteRecommiteID.AsInteger;
  RecommiteSave.proceeded.Checked:=dm.Select_LetterReCommiteProceeded.AsBoolean;
  RecommiteSave.DBCIsCopy.Checked:=dm.Select_LetterReCommiteIsCopy.AsBoolean;
  dm.Select_LetterReCommite.Edit;
  RecommiteSave.ShowModal;
  if RecommiteSave.done then
   begin
     dm.Select_LetterReCommiteProceeded.AsBoolean:=RecommiteSave.proceeded.Checked;
     dm.Select_LetterReCommiteIsCopy.AsBoolean:=RecommiteSave.DBCIsCopy.Checked;
     dm.Select_LetterReCommite.Post
   end
     else dm.Select_LetterReCommite.Cancel;
  ReCommitesTree.DataSource:=DSForm;
end;

procedure TReCommite.AnswerClick(Sender: TObject);
begin
  inherited;
MainForm.AAnswer.Execute;
end;

procedure TReCommite.AArchiveRecommiteExecute(Sender: TObject);
begin
  inherited;
 DoRecommite(dm.ArchiveOrgid);

end;

procedure TReCommite.AtypeRecommiteExecute(Sender: TObject);
begin
  inherited;
 DoRecommite(dm.TypeOrgId);

end;

procedure TReCommite.Action2Execute(Sender: TObject);
begin
  inherited;
DoRecommite(dm.BoardID);
end;

procedure TReCommite.DBShamsiDateEdit2Enter(Sender: TObject);
begin
  inherited;
 ReCommitesTree.Changing:=true;

end;

procedure TReCommite.DBShamsiDateEdit2Exit(Sender: TObject);
begin
  inherited;
 dm.Select_LetterReCommite.Post;
 ReCommitesTree.Changing:=false;

end;

procedure TReCommite.DataSetDelete1Execute(Sender: TObject);
begin
  inherited;
  if ReCommitesTree.Selected.HasChildren then
   begin
    ShowMessage('«» œ« «—Ã«⁄«  “Ì—„Ã„Ê⁄Â «Ì‰ «Ì‰ «—Ã«⁄ —« Õ–› ò‰Ìœ');
    exit;
   end;
  if ReCommitesTree.Selected.Level=0 then
   begin
    ShowMessage('«Ê·Ì‰ «—Ã«⁄ —« ‰„Ì  Ê«‰ Õ–› ò—œ');
    exit;
   end;   Exec_delete_ReCommites(dm.Select_LetterReCommiteRecommiteID.AsInteger);
   refresh;
end;

procedure TReCommite.NewRecommiteClick(Sender: TObject);
begin
  inherited;
AInsert.Execute;

end;

end.

