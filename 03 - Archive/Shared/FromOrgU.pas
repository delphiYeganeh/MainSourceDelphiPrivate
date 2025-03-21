unit FromOrgU;

interface

uses
jpeg, BaseUnit, DBActns, ActnMan, StdCtrls, DBLookupEdit, Grids, DBGrids,
  YDbgrid, ComCtrls, DBTreeView, Mask, DBCtrls, Controls, Buttons,
  Graphics, ExtCtrls, Classes, ActnList, DB,dialogs,SysUtils,Forms,
  ExtActns, ADODB, XPStyleActnCtrls,businessLayer, xpWindow, xpBitBtn;

type
  TFromOrgForm = class(TMBaseForm)
    ActionManager1: TActionManager;
    DataSetEdit1: TDataSetEdit;
    AClose: TAction;
    Label10: TLabel;
    Action2: TAction;
    AInsert: TAction;
    Apost: TAction;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    Erespon: TEdit;
    Label1: TLabel;
    ECode: TEdit;
    Adelete: TAction;
    FromOrg: TADODataSet;
    DFromOrg: TDataSource;
    FromOrgTitle: TWideStringField;
    FromOrgResponsibleStaffer: TWideStringField;
    PFromOrg: TADODataSet;
    FromOrgparentid: TIntegerField;
    FromOrgID: TAutoIncField;
    FromOrgcode: TWideStringField;
    Action1: TAction;
    PFromOrgID: TAutoIncField;
    PFromOrgTitle: TWideStringField;
    Panel2: TPanel;
    Image2: TImage;
    BBOK: TBitBtn;
    BBCancel: TBitBtn;
    BBInsert: TBitBtn;
    deleteBtn: TBitBtn;
    Label5: TLabel;
    orderByTitle: TCheckBox;
    outerOrg: TCheckBox;
    Label4: TLabel;
    Panel3: TPanel;
    PageControl: TPageControl;
    TabSheet1: TTabSheet;
    FromOrganizationsTree: TTreeView;
    TabSheet2: TTabSheet;
    Label2: TLabel;
    DBGFromORG: TYDBGrid;
    SEdit: TEdit;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure ACloseExecute(Sender: TObject);
    procedure SetOrganizeMode(value:boolean);
    procedure FromOrganizationsTreeDblClick(Sender: TObject);
    procedure AInsertExecute(Sender: TObject);
    procedure ApostExecute(Sender: TObject);
    procedure AdeleteExecute(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure FromOrganizationsTreeGetImageIndex(Sender: TObject; Node: TTreeNode);
    procedure BBOKClick(Sender: TObject);
    procedure SEditChange(Sender: TObject);
    procedure FromOrgAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure addchild(Node: TTreeNode);
    procedure FromOrganizationsTreeExpanding(Sender: TObject; Node: TTreeNode; var AllowExpansion: Boolean);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FromOrganizationsTreeChange(Sender: TObject; Node: TTreeNode);
    procedure innerOrgClick(Sender: TObject);
    procedure BBCancelClick(Sender: TObject);
    procedure BBInsertClick(Sender: TObject);
    procedure deleteBtnClick(Sender: TObject);

  private
     FOrganizeMode: boolean;
    { Private declarations }
  public
    done:boolean;
    Property OrganizeMode:boolean read FOrganizeMode write SetOrganizeMode;
    { Public declarations }
  end;

var
  FromOrgForm: TFromOrgForm;

implementation

uses  FromOrgDialog, UMain, YShamsiDate, Dmu, Math ;
{$R *.dfm}

procedure TFromOrgForm.SetOrganizeMode(value:boolean);
begin
  FOrganizeMode:=value;
  BBOK.Visible:= not value
end;

procedure TFromOrgForm.FormCreate(Sender: TObject);
var
  c: ^integer;
begin
  inherited;
  {Ranjbar Ver5}
  BidiModeToRight(FromOrganizationsTree);
  //---

  OrganizeMode:=false;
  DBGFromORG.Color:=dm.GetValue(1009);
  DBGFromORG.Columns[1].Color:=$00FAC6FF;

  done:=false;
  New(c);
  c^:=1;
  FromOrganizationsTree.Items.AddChildObject(nil,Exec_get_OrgTitleByID(1),c);
  addchild(FromOrganizationsTree.Items[0]);
  SpeedButton2Click(nil);
end;

procedure TFromOrgForm.ACloseExecute(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFromOrgForm.FromOrganizationsTreeDblClick(Sender: TObject);
var
  SelectedId : integer;
begin
  inherited;
  if not OrganizeMode then
  begin
   close;
   done:=true;
  end
  else
  begin
    SelectedId:=integer(FromOrganizationsTree.Selected.Data^);
    FromOrgDialogF:=TFromOrgDialogF.Create(Application);
    with FromOrgDialogF.Fromorg do
    begin
      Close;
      Parameters.ParamByName('id').Value:=selectedid;
      Open;
    end;
    FromOrgDialogF.ShowModal;

    dm.FromOrganizations.Locate('id',SelectedId,[]);
  end;
end;

procedure TFromOrgForm.AInsertExecute(Sender: TObject);
var
  SelectedId: integer;
  s: string;
  d,c:^integer;
begin
  inherited;
  if PageControl.ActivePageIndex=1 then
  begin
    if dm.Y_InputQuery('����� ��� ������ ����� ','',s) then
    begin
      Exec_insert_ToOrganizations(s);
      SEdit.Text:=s;
    end;

    exit;
  end;
  c:=FromOrganizationsTree.Selected.Data;
  SelectedId:=c^;
  if SelectedId=1 then
    exit;

  d:=FromOrganizationsTree.Selected.Parent.Data;

  FromOrgDialogF:=TFromOrgDialogF.Create(Application);
  FromOrgDialogF.Fromorg.Open;
  FromOrgDialogF.FromOrg.Insert;
  FromOrgDialogF.FromOrgParentID.Value:=SelectedID;
  FromOrgDialogF.FromOrgCode.AsInteger:=Exec_get_NewOrgID(false);
  FromOrgDialogF.FromOrgIsActive.AsBoolean:=TRUE;
  FromOrgDialogF.FromOrgIsInnerOrg.AsBoolean:=true;
  FromOrgDialogF.ShowModal;

  if FromOrgDialogF.done then
  begin
    addchild(FromOrganizationsTree.Selected);
    FromOrganizationsTree.OnExpanding:=nil;
    FromOrganizationsTree.Selected:=FromOrganizationsTree.Selected.Item[0];
  end
  else
    FromOrgDialogF.FromOrg.Cancel;

  FromOrganizationsTree.OnExpanding:=FromOrganizationsTreeExpanding;
end;

procedure TFromOrgForm.ApostExecute(Sender: TObject);
begin
  inherited;
  dm.FromOrganizations.Post;
  FromOrganizationsTree.Selected.Text:=dm.FromOrganizationsTitle.AsString;
  BBInsert.Enabled:=true;
end;

procedure TFromOrgForm.AdeleteExecute(Sender: TObject);
var
  Selectedid :integer;
begin
  inherited;
  SelectedId:=integer(FromOrganizationsTree.Selected.Data^);

  if SelectedId<=3 then
    exit;

  if FromOrganizationsTree.Selected.HasChildren then
    ShowMsg(61)
  else
  begin
    if Exec_Org_HasLetter(Selectedid) then
      ShowMsg(62)
    else
      if messageShowString(Get_sysAppMessage(36)+' '+FromOrganizationsTree.Selected.Text+' '+Get_sysAppMessage(37),true)then
      begin
        dm.YeganehConnection.Execute('delete from fromorganizations where id='+IntToStr(Selectedid));
        FromOrganizationsTree.Items.Delete(FromOrganizationsTree.Selected);
      end;
  end;
end;

procedure TFromOrgForm.TabSheet2Show(Sender: TObject);
begin
  inherited;
  SEdit.SetFocus;
end;

procedure TFromOrgForm.TabSheet1Show(Sender: TObject);
begin
  inherited;
  FromOrganizationsTree.SetFocus;
end;

procedure TFromOrgForm.FromOrganizationsTreeGetImageIndex(Sender: TObject;
  Node: TTreeNode);
begin
  inherited;
  node.ImageIndex:=32;
end;

procedure TFromOrgForm.BBOKClick(Sender: TObject);
begin
  inherited;
  done:=True;
  Close;
end;

procedure TFromOrgForm.SEditChange(Sender: TObject);
var
  s:string;
begin
  inherited;
  s:=YeganehTrim(SEdit.Text);
  with FromOrg do
    if length(s)>=2  then
    begin
      Close;
      CommandText:='select ID,code, Title,ResponsibleStaffer,ParentID from FromOrganizations where isactive=1 and (Title like ''%'+s+'%'' or  '+
                    ' ResponsibleStaffer like ''%'+s+'%'' or code like ''%'+s+'%'')  and isinnerorg=1  order by ';

      if orderByTitle.Checked then
        CommandText:=CommandText+'Title'
      else
        CommandText:=CommandText+' Code asc  ';

      open;
    end
end;

procedure TFromOrgForm.FromOrgAfterScroll(DataSet: TDataSet);
begin
  inherited;
  ECode.Text:=FromOrgcode.AsString;
  Erespon.Text:=FromOrgResponsibleStaffer.AsString;
end;

procedure TFromOrgForm.FormShow(Sender: TObject);
begin
  inherited;
  orderByTitle.Checked:=dm.ChartorderbyTitle;

  if dm.ListFromorg then
    PageControl.ActivePageIndex:=0
  else
    PageControl.ActivePageIndex:=1;
    if _Kartable then
    begin
      AInsert.Enabled:=false;
      Adelete.Enabled:=false;
      BBInsert.Hide;
      deleteBtn.Hide;
      OrganizeMode:=false;
    end;
end;

procedure TFromOrgForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  c:^integer;
  SelectedId:integer;
  title,respon,Code:widestring;
begin
  inherited;
  dm.ListFromorg:=PageControl.ActivePageIndex=0;
  dm.SetValue(114,dm.ListFromorg);

  dm.ChartorderbyTitle:=orderByTitle.Checked;
  dm.SetValue(115,dm.ChartorderbyTitle);

  if PageControl.ActivePageIndex=0 then
  begin
    c:=FromOrganizationsTree.Selected.Data;
    SelectedId:=c^;
    _ResultOrgID:=SelectedId;
    Exec_get_FromOrganizationsTitle_byID(SelectedId,title,respon,Code);
    _ResultOrgTitle:=title;
    _ResultOrgCode:=Code;
    _ResultOrgRespon:=respon;
  end
  else
  begin
    if not FromOrg.Active then
    begin
      done:=false;
      exit;
    end;
    _ResultOrgID:=FromOrgID.AsInteger;
    _ResultOrgTitle:=FromOrgTitle.AsString;
    _ResultOrgCode:=FromOrgcode.AsString;
    _ResultOrgRespon:=FromOrgResponsibleStaffer.AsString
  end
end;

procedure TFromOrgForm.addchild(Node: TTreeNode);
var
  c,d:^integer;
  newnode :TTREENODE;
  TempS:String;
begin
  node.DeleteChildren;
  d:=node.Data;

  with PFromOrg do
  begin
    Close;
    c:=Node.Data;
    CommandText:='Select  Top 200 ID, Title from FromOrganizations '+
                  'where  isactive=1 and ParentID= '+IntToStr(c^)+' and isinnerorg=1';

    if orderByTitle.Checked then
      CommandText:=CommandText+'order by Title'
    else
      CommandText:=CommandText+' order by Code asc  ';


    Open;
    first;
    while not eof do
    begin
      New(c);
      c^:=FieldByName('id').AsInteger;
      TempS:=FieldByName('Title').AsString;
      newnode:=FromOrganizationsTree.Items.AddChildObject(node,TempS,c);
      if Exec_Org_hasChild(FieldByName('id').AsInteger) then
        FromOrganizationsTree.Items.AddChild(newnode,'');
      next;
    end;
  end;
end;

procedure TFromOrgForm.FromOrganizationsTreeExpanding(Sender: TObject;
  Node: TTreeNode; var AllowExpansion: Boolean);
begin
  inherited;
  addchild(node);
end;

procedure TFromOrgForm.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  PageControl.ActivePageIndex:=0;
end;

procedure TFromOrgForm.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  PageControl.ActivePageIndex:=1;
end;

procedure TFromOrgForm.FromOrganizationsTreeChange(Sender: TObject;
  Node: TTreeNode);
var
  c:^integer;
  SelectedId:integer;
  title,respon,Code:widestring;
begin
  inherited;
  c:=FromOrganizationsTree.Selected.Data;
  SelectedId:=c^;
  Exec_get_FromOrganizationsTitle_byID(SelectedId,title,respon,Code);
  ECode.Text:=code;
  Erespon.Text:=respon;
end;

procedure TFromOrgForm.innerOrgClick(Sender: TObject);
begin
  inherited;
  FromOrganizationsTree.Items[0].Collapse(true);
end;

procedure TFromOrgForm.BBCancelClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFromOrgForm.BBInsertClick(Sender: TObject);
begin
  inherited;
  AInsert.Execute;
end;

procedure TFromOrgForm.deleteBtnClick(Sender: TObject);
begin
  inherited;
  Adelete.Execute;
end;

end.
