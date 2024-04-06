unit SubCourse_Organize;

interface

uses
jpeg, BaseUnit, DBActns, ActnMan, StdCtrls, DBLookupEdit, Grids, DBGrids,
  YDbgrid, ComCtrls, DBTreeView, Mask, DBCtrls, Controls, Buttons,
  Graphics, ExtCtrls, Classes, ActnList, DB,dialogs,SysUtils,Forms,
  ExtActns, ADODB, XPStyleActnCtrls, xpWindow, xpBitBtn;

type
  TArchiveOrganizeForm = class(TMBaseForm)
    ActionManager1: TActionManager;
    AClose: TAction;
    BBOK: TxpBitBtn;
    Label10: TLabel;
    BBInsert: TxpBitBtn;
    AInsert: TAction;
    Apost: TAction;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label9: TLabel;
    DBEdit4: TDBEdit;
    DBEdit9: TDBEdit;
    Adelete: TAction;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGFromORG: TYDbgrid;
    Label2: TLabel;
    SEdit: TEdit;
    BBCancel: TxpBitBtn;
    BitBtn1: TxpBitBtn;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    ArchiveTree: TDBTreeView;
    Image2: TImage;
    Dlist: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure ACloseExecute(Sender: TObject);
   procedure SetOrganizeMode(value:boolean);
    procedure ArchiveTreeDblClick(Sender: TObject);
    procedure AInsertExecute(Sender: TObject);
    procedure ApostExecute(Sender: TObject);
    procedure AdeleteExecute(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure ArchiveTreeGetImageIndex(Sender: TObject;
      Node: TTreeNode);
    procedure BBOKClick(Sender: TObject);
    procedure SEditChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BBCancelClick(Sender: TObject);
    procedure BBInsertClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);

  private
     FOrganizeMode: boolean;
    { Private declarations }
  public
    done:boolean;
    UserID: integer;
    Property OrganizeMode:boolean read FOrganizeMode write SetOrganizeMode;
    { Public declarations }
  end;

var
  ArchiveOrganizeForm: TArchiveOrganizeForm;

implementation
uses  FromOrgDialog, UMain, YShamsiDate, Dmu, Math, businessLayer,
  ArchiveDialog;
{$R *.dfm}
type IPointer =^integer;
 procedure TArchiveOrganizeForm.SetOrganizeMode(value:boolean);
  begin
   FOrganizeMode:=value;
   BBOK.Visible:= not value
  end;
procedure TArchiveOrganizeForm.FormCreate(Sender: TObject);
begin
  inherited;
if _Kartable then
 userid:=_userid
else
 userid:=0;

 OrganizeMode:=false;
DBGFromORG.Color:=dm.GetValue(1009);
DBGFromORG.Columns[1].Color:=$00FAC6FF;
done:=false;
end;

procedure TArchiveOrganizeForm.ACloseExecute(Sender: TObject);
begin
  inherited;
close;
end;

procedure TArchiveOrganizeForm.ArchiveTreeDblClick(Sender: TObject);
begin
  inherited;
 if not OrganizeMode then
 begin
   close;
   done:=true;
 end
 else
  begin
   ArchiveDialogForm:=TArchiveDialogForm.Create(Application);
   ArchiveDialogForm.Title.Text:=dsform.DataSet.fieldbyname('title').Asstring;
   ArchiveDialogForm.notes.Text:=dsform.DataSet.fieldbyname('notes').AsString;
   ArchiveDialogForm.Place.Text:=dsform.DataSet.fieldbyname('place').AsString;
   ArchiveDialogForm.ShowModal;
   if ArchiveDialogForm.done then
    Begin
    Exec_update_ArchiveFolder(dsform.DataSet.fieldbyname('FolderID').AsInteger,
     ArchiveDialogForm.Title.Text,
     ArchiveDialogForm.notes.text,
     ArchiveDialogForm.Place.Text  );
     DSForm.DataSet:=Exec_get_ArchiveFolder_byUserID(UserID);
     end
  end;
end;

procedure TArchiveOrganizeForm.AInsertExecute(Sender: TObject);
var SelectedId: integer;
begin
  inherited;
 SelectedId:=dsform.DataSet.fieldbyname('folderid').AsInteger;

ArchiveDialogForm:=TArchiveDialogForm.Create(Application);
ArchiveDialogForm.ShowModal;
if  ArchiveDialogForm.done then
 begin

  Exec_insert_ArchiveFolder(
  SelectedId,
  ArchiveDialogForm.Title.Text,
      UserID,
  ArchiveDialogForm.notes.text,
  ArchiveDialogForm.Place.Text
  );

  DSForm.DataSet:=Exec_get_ArchiveFolder_byUserID(UserID)
 end;
end;


procedure TArchiveOrganizeForm.ApostExecute(Sender: TObject);
begin
  inherited;
 dm.FromOrganizations.Post;
 ArchiveTree.Selected.Text:=dm.FromOrganizationsTitle.AsString;
 BBInsert.Enabled:=true;
end;

procedure TArchiveOrganizeForm.AdeleteExecute(Sender: TObject);
 var Selectedid :integer;
begin
  inherited;
   Selectedid:=dsform.DataSet.fieldbyname('folderid').AsInteger;

  if ArchiveTree.Selected.HasChildren then
               ShowMsg(82)
   else
    begin
     if Exec_Folder_hasLetter(Selectedid) then
               ShowMsg(83)
    else
  if messageShowString(Get_sysAppMessage(81)+'  '+dsform.DataSet.fieldbyname('title').Asstring+'  '+Get_sysAppMessage(37),true)then
      begin
       Exec_delete_ArchiveFolder(Selectedid);
       DSForm.DataSet:=Exec_get_ArchiveFolder_byUserID(UserID)
      end;
end;
end;

procedure TArchiveOrganizeForm.TabSheet2Show(Sender: TObject);
begin
  inherited;
 BBInsert.Hide;
 SEdit.SetFocus;
end;


procedure TArchiveOrganizeForm.TabSheet1Show(Sender: TObject);
begin
  inherited;
 BBInsert.Show;
 ArchiveTree.SetFocus;
end;


procedure TArchiveOrganizeForm.BBOKClick(Sender: TObject);
begin
  inherited;
done:=True;
if PageControl1.ActivePageIndex=0 then
   _ResultFolderID:=dsform.DataSet.fieldbyname('folderid').AsInteger
 else
  _ResultFolderID := Dlist.DataSet.Fieldbyname('FolderID').AsInteger;
Close;
end;

procedure TArchiveOrganizeForm.SEditChange(Sender: TObject);
var s:string;
begin
  inherited;
  s:=YeganehTrim(SEdit.Text);
 if length(s)>=2  then
 Dlist.DataSet:=Exec_get_ArchiveFolder_byUserID_and_Title(UserID,s)
end;

procedure TArchiveOrganizeForm.FormShow(Sender: TObject);
begin
  inherited;
DSForm.DataSet:=Exec_get_ArchiveFolder_byUserID(UserID);
  
 if dm.ListFromorg then
   PageControl1.ActivePageIndex:=0
 else
   PageControl1.ActivePageIndex:=1
end;

procedure TArchiveOrganizeForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;

dm.ListFromorg:=PageControl1.ActivePageIndex=0;
dm.SetValue(114,dm.ListFromorg);

end;

procedure TArchiveOrganizeForm.SpeedButton2Click(Sender: TObject);
begin
  inherited;
 PageControl1.ActivePageIndex:=0;

end;

procedure TArchiveOrganizeForm.SpeedButton1Click(Sender: TObject);
begin
  inherited;
 PageControl1.ActivePageIndex:=1;

end;


procedure TArchiveOrganizeForm.ArchiveTreeGetImageIndex(Sender: TObject;
  Node: TTreeNode);
begin
  inherited;
 node.ImageIndex:=32;

end;

procedure TArchiveOrganizeForm.BBCancelClick(Sender: TObject);
begin
  inherited;
close ;
end;

procedure TArchiveOrganizeForm.BBInsertClick(Sender: TObject);
begin
  inherited;
AInsert.Execute;
end;

procedure TArchiveOrganizeForm.BitBtn1Click(Sender: TObject);
begin
  inherited;
Adelete.Execute;
end;

end.
