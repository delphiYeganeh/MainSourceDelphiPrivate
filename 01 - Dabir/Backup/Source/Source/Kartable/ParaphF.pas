unit ParaphF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Buttons, ComCtrls, ExtCtrls, DB, ADODB, StdCtrls,
  Grids, DBGrids, DBActns, ActnList, ActnMan, ToolWin, Mask, DBCtrls,
  ActnCtrls, ActnMenus, jpeg, UemsVCL, Menus;

type
  TParaph = class(TBaseForm)
    ActionManager1: TActionManager;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    Action1: TAction;
    GroupBox1: TGroupBox;
    BBOK: TBitBtn;
    Label10: TLabel;
    Label1: TLabel;
    DBECode: TDBEdit;
    Label8: TLabel;
    Image2: TImage;
    BitBtn2: TBitBtn;
    AInsert: TAction;
    Apost: TAction;
    ReCommitesTree: TTreeView;
    Label5: TLabel;
    Label6: TLabel;
    DBShamsiDateEdit1: TDBShamsiDateEdit;
    DBShamsiDateEdit2: TDBShamsiDateEdit;
    DBParaph: TDBMemo;
    DBCIsCopy: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    procedure ReCommitesTreeChange(Sender: TObject; Node: TTreeNode);
    function  SelectedID:integer;
    procedure Action1Execute(Sender: TObject);
    procedure ReCommitesDeleteError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure ReCommitesPostError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure AInsertExecute(Sender: TObject);
    procedure ApostExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ReCommitesAfterDelete(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure Expanding(TreeView:TTreeView;Node: TTreeNode);
    procedure ReCommitesTreeExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure ActionManager1Execute(Action: TBasicAction;
      var Handled: Boolean);


  private
    { Private declarations }
  public
   indicatorID:Word;
   Myear:byte;
IsActive:boolean;

    { Public declarations }
  end;

var
  Paraph: TParaph;

implementation

uses Dmu, ReCommitedialog, ShamsiDate;
{$R *.dfm}

var Iscopy:boolean;
procedure TParaph.Expanding(TreeView:TTreeView;Node: TTreeNode);
  var c:code;
  newnode :TTREENODE;
begin
 node.DeleteChildren;
 with DM,sp_ReCommites_By_ParentID do
 begin
  GetReCommites_By_ParentID(code(node.Data)^,indicatorID,myear);
  while not sp_ReCommites_By_ParentID.eof do
  begin
   New(c);
   c^:=FieldByName('id').AsInteger;
    newnode:=TreeView.Items.AddChildObject(node,FieldByName('Title').AsString,c);
   if FieldByName('isCopy').AsBoolean then
     newnode.ImageIndex:=25
   else
     newnode.ImageIndex:=24;
   if GetReCommitesChildCount(c^,indicatorID,myear)<>0 then TreeView.Items.AddChildObject(newnode,'0',nil)
   else
       if not IsActive then
     newnode.ImageIndex:=19;

   next;
  end;
 end;
end;


function  TParaph.selectedID:integer;
begin
  result:=code(ReCommitesTree.Selected.data)^
end;


procedure TParaph.ReCommitesTreeChange(Sender: TObject; Node: TTreeNode);
begin
  inherited;
 DBCIsCopy.Enabled:=true;
  dm.ReCommites.Locate('id',SelectedID,[]);
end;

procedure TParaph.Action1Execute(Sender: TObject);
begin
  inherited;
close;
end;

procedure TParaph.ReCommitesDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  inherited;
if pos('conflicted',e.Message)<>0 then ShowMessage(
'«Ì‰ ”«“„«‰ Ì« œ«—«Ì “Ì— ”«“„«‰ «”  Ê Ì« œ«—«Ì ‰«„Â Â«Ì Ê«—œÂ Ê’«œ—Â „Ì »«‘œ ·–« ‘„« ‰„Ì  Ê«‰Ìœ ¬‰—« Õ–› ò‰Ìœ');
Abort
end;

procedure TParaph.ReCommitesPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  inherited;
if pos('NULL',E.Message)<>0 then showmessage('‰«„ Ì« „”∆Ê· ”«“„«‰ —« Ê«—œ ‰ò—œÂ «Ìœ');
abort;
end;

procedure TParaph.AInsertExecute(Sender: TObject);
var c: code;
PORGid,pc: integer;
begin
  inherited;
RecommiteSave:=TRecommiteSave.Create(Application);
RecommiteSave.DBCIsCopy.Enabled:=true;
isCopy:=false;
 if dm.ReCommitesIsCopy.AsBoolean then
   begin
    Iscopy:=true;
    RecommiteSave.DBCIsCopy.Enabled:=false;
    DBCIsCopy.Enabled:=false;
   end;

 pc:=SelectedID;
 PORGid:=dm.ReCommitesFromOrgID.AsInteger;
 new(c);
 c^:=dm.newid('ReCommites');
 dm.ReCommites.Insert;
 dm.ReCommitesID.AsInteger:=c^;
 dm.ReCommitesType.AsInteger:=1;
 dm.ReCommitesParentID.Value:=pc;
 dm.ReCommitesLetterIndicatorID.AsInteger:=indicatorID;
 dm.ReCommitesLetterMyear.AsInteger:=Myear;
 dm.ReCommitesDate1.AsString:=dm.today;

// dm.ReCommitesRunDays.AsInteger:=dm.DeadlineForRecommite;
 dm.ReCommitesIsCopy.AsBoolean:=Iscopy;

  dm.FromOrganizations.Filter:='id<>'+IntToStr(PORGid);
  dm.FromOrganizations.Filtered:=true;

  RecommiteSave.ShowModal;

 dm.FromOrganizations.Filtered:=false;

if  RecommiteSave.done then
try
begin
  dm.recommites.Post;
  IF not dm.ReCommitesIsCopy.AsBoolean then ReCommitesTree.Selected.ImageIndex:=25; 
  Expanding(ReCommitesTree, ReCommitesTree.Selected);
  ReCommitesTree.Selected.Expand(false);
end
except showmessage('Œÿ«'); dm.ReCommites.Cancel end
else dm.recommites.Cancel;
end;


procedure TParaph.ApostExecute(Sender: TObject);
begin
  inherited;
with ReCommitesTree.Selected do
 if Level<>0 then
 Text:=dm.ReCommitesFromOrgTitle.AsString;
end;

procedure TParaph.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
 dm.ReCommites.Close;
end;

procedure TParaph.FormShow(Sender: TObject);
  var c:code;
  s:string;
begin
  inherited;
 new(c);//revv
 c^:=0;
 s:=dm.GetQuery('select f.title '+
 'from ReceivedLetters r '+
 'inner join FromOrganizations f on f.id=r.fromorgid '+
 'where r.indicatorid='+IntToStr(indicatorID)+' and r.myear='+IntToStr(Myear));
 dm.ReCommites.Close;
 dm.ReCommites.Parameters.Items[0].Value:=indicatorID;
 dm.ReCommites.Parameters.Items[1].Value:=Myear;
 dm.ReCommites.Open;
   Caption:='«—Ã«⁄ ‰«„Â Ê«—œÂ ‘„«—Â '+IntToStr(indicatorID);
  ReCommitesTree.Items.AddChildObject(
  ReCommitesTree.Items.AddChildObject(nil,s,c),'',nil);
  ReCommitesTree.Items[0].ImageIndex:=7;
  ReCommitesTree.Items[0].Expand(true);
  ReCommitesTree.Selected:=ReCommitesTree.Items[0];
BitBtn2.Visible:=IsActive;

end;

procedure TParaph.ReCommitesAfterDelete(DataSet: TDataSet);
begin
  inherited;
 with ReCommitesTree do
   Selected.Delete;
end;

procedure TParaph.FormCreate(Sender: TObject);
begin
  inherited;
dm.ReCommites.AfterDelete:=ReCommitesAfterDelete;
end;

procedure TParaph.ReCommitesTreeExpanding(Sender: TObject;
  Node: TTreeNode; var AllowExpansion: Boolean);
begin
  inherited;
expanding(TTreeView(sender),node);
end;


procedure TParaph.ActionManager1Execute(Action: TBasicAction;
  var Handled: Boolean);
begin
  inherited;
 dm.SaveAction(tag,Action.Tag);

end;

end.
