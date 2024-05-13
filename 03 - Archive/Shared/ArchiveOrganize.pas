unit ArchiveOrganize;

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
    AInsert: TAction;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label9: TLabel;
    DBEdit4: TDBEdit;
    DBEdit9: TDBEdit;
    Adelete: TAction;
    Dlist: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label2: TLabel;
    DBGFromORG: TYDBGrid;
    SEdit: TEdit;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Panel4: TPanel;
    Image2: TImage;
    BBOK: TBitBtn;
    BBInsert: TBitBtn;
    BBCancel: TBitBtn;
    DeleteBtn: TBitBtn;
    Label10: TLabel;
    Paste: TSpeedButton;
    Cut: TSpeedButton;
    LblPaste: TLabel;
    Sp_SetAccessToArchiveFolder: TADOStoredProc;
    acNewZoonkanBaygani: TAction;
    acDeleteZoonkanBaygani: TAction;
    acEditZoonkanBaygani: TAction;
    acCutZoonkanBaygani: TAction;
    acPasteZoonkanBaygani: TAction;
    SpeedButton3: TSpeedButton;
    ArchiveTree: TDBTreeView;
    procedure FormCreate(Sender: TObject);
    procedure ACloseExecute(Sender: TObject);
    procedure SetOrganizeMode(value:boolean);
    procedure ArchiveTreeDblClick(Sender: TObject);
    procedure AInsertExecute(Sender: TObject);
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
    procedure GroupBox1Click(Sender: TObject);
    procedure acNewZoonkanBayganiExecute(Sender: TObject);
    procedure acDeleteZoonkanBayganiExecute(Sender: TObject);
    procedure acCutZoonkanBayganiExecute(Sender: TObject);
    procedure acPasteZoonkanBayganiExecute(Sender: TObject);
    procedure acEditZoonkanBayganiExecute(Sender: TObject);

  private
     FOrganizeMode: boolean;
    { Private declarations }
  public
    done:boolean;
    Property OrganizeMode:boolean read FOrganizeMode write SetOrganizeMode;
    { Public declarations }
  end;

var
  ArchiveOrganizeForm: TArchiveOrganizeForm;

implementation

Uses FromOrgDialog , UMain , YShamsiDate , Dmu , Math , businessLayer , ArchiveDialog;

{$R *.dfm}

Var SelectedNodeID : Integer ;
    SelectedNodeTitle : String;

Type
   IPointer =^integer;
procedure TArchiveOrganizeForm.SetOrganizeMode(value:boolean);
begin
   FOrganizeMode:=value;
   BBInsert.Visible:= value;
   DeleteBtn.Visible := value;
   AInsert.Enabled:= value;
   Adelete.Enabled:= value;
end;

procedure TArchiveOrganizeForm.FormCreate(Sender: TObject);
begin
  inherited;
  BidiModeToRight(ArchiveTree);
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
  if acEditZoonkanBaygani.Enabled then
  begin
    if not OrganizeMode then
    begin
      if PageControl1.ActivePageIndex=0 then
        _ResultFolderID:=dsform.DataSet.fieldbyname('folderid').AsInteger
      else
        _ResultFolderID := Dlist.DataSet.Fieldbyname('FolderID').AsInteger;
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
         {Ranjbar 89.06.30 ID=23}
         //DSForm.DataSet := Get_ArchiveFolder_byArchiveCenterID(_ArchiveCenterId);
        DSForm.DataSet := Get_ArchiveFolder_byArchiveCenterID(_ArchiveCenterId,_UserId,Dm.SecID);
         //---
      end
    end;
  end
  else
    ShowMsgString('„ÃÊ“ ÊÌ—«Ì‘ ‰œ«—Ìœ');
end;

procedure TArchiveOrganizeForm.AInsertExecute(Sender: TObject);
var SelectedId: integer;
    FolderID : integer;

begin
   inherited;
   //‘Êœ ¬‰ê«Â ¬‰ “Ê‰ﬂ‰ »⁄‰Ê«‰ —Ì‘Â ‰‘«‰ œ«œÂ „Ì ‘Êœ SelectedId=0 œ— ’Ê— ÌﬂÂ
  SelectedId := dsform.DataSet.Fieldbyname('FolderID').AsInteger;

  ArchiveDialogForm := TArchiveDialogForm.Create(Application);
  ArchiveDialogForm.SelectedId  :=   SelectedId ;
  ArchiveDialogForm.ShowModal;

  if ArchiveDialogForm.Done then
  begin
    FolderID := Exec_Insert_ArchiveFolder(SelectedId,ArchiveDialogForm.Title.Text,0,
                  ArchiveDialogForm.notes.text,ArchiveDialogForm.Place.Text,_ArchiveCenterId);

      {Ranjbar 89.06.30 ID=23}
      //»Â Â„Â ﬂ«—»—«‰ UserAccArchive œ«œ‰ œ” —”Ì »Â “Ê‰ﬂ‰ ÃœÌœ œ— ÃœÊ·
    Sp_SetAccessToArchiveFolder.Close;
      //Sp_SetAccessToArchiveFolder.Parameters.ParamByName('@SecID').Value := Dm.SecID;

    Sp_SetAccessToArchiveFolder.Parameters.ParamByName('@UserId').Value := _UserId;
    Sp_SetAccessToArchiveFolder.Parameters.ParamByName('@ArchiveFolderID').Value := FolderID;
    Sp_SetAccessToArchiveFolder.ExecProc;

      //DSForm.DataSet:=Get_ArchiveFolder_byArchiveCenterID(_ArchiveCenterId) ;
    DSForm.DataSet := Get_ArchiveFolder_byArchiveCenterID(_ArchiveCenterId,_UserId,Dm.SecID);
      //---
   end;
end;


procedure TArchiveOrganizeForm.AdeleteExecute(Sender: TObject);
var
  Selectedid :integer;
begin
  inherited;
   //Hamed_Ansari_MRM_990716_S
  if dsform.DataSet.fieldbyname('ParentFolderId').AsInteger = 0 then
  begin
    ShowMessage('„Ã«“ »Â Õ–› ”—‘«ŒÂ ‰„Ì »«‘Ìœ');
    Exit;
  end;
   //Hamed_Ansari_MRM_990716_E
  Selectedid:=dsform.DataSet.fieldbyname('folderid').AsInteger;
  if ArchiveTree.Selected.HasChildren then
    ShowMsg(82)
  else
  if Exec_Folder_hasLetter(Selectedid) then
  begin
    if messageShowString('œ— «Ì‰ “Ê‰ò‰ „„ò‰ «”  «ÿ·«⁄«   »«‘œ (»« Õ–› «Ì‰ “Ê‰ò‰ œ— «ÿ·«⁄«   €ÌÌ—Ì «ÌÃ«œ ‰„Ì ‘Êœ )¬Ì« «“Õ–› „ÿ„∆‰ Â” Ìœø',true)then
    begin
      Exec_delete_ArchiveFolder(Selectedid);
       {Ranjbar 89.06.30 ID=23}
       //DSForm.DataSet:=Get_ArchiveFolder_byArchiveCenterID(_ArchiveCenterId);
      DSForm.DataSet := Get_ArchiveFolder_byArchiveCenterID(_ArchiveCenterId,_UserId,Dm.SecID);
       //---
    end
  end
  else
    if messageShowString(Get_sysAppMessage(81)+'  '+dsform.DataSet.fieldbyname('title').Asstring+'  '+Get_sysAppMessage(37),true)then
    begin
      Exec_delete_ArchiveFolder(Selectedid);
          {Ranjbar 89.06.30 ID=23}
          //DSForm.DataSet:=Get_ArchiveFolder_byArchiveCenterID(_ArchiveCenterId) ;
      DSForm.DataSet := Get_ArchiveFolder_byArchiveCenterID(_ArchiveCenterId,_UserId,Dm.SecID);
          //---
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
  if OrganizeMode then
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
var
  s:string;
begin
  inherited;
  s:=YeganehTrim(SEdit.Text);
  Dlist.DataSet:=Get_ArchiveFolder_byArchiveCenterID_and_Title(_ArchiveCenterID,s)
end;

procedure TArchiveOrganizeForm.FormShow(Sender: TObject);
begin
   inherited;
   {Ranjbar 89.06.30 ID=23}
   //DSForm.DataSet:=Get_ArchiveFolder_byArchiveCenterID(_ArchiveCenterID);
   //---
  DSForm.DataSet := Get_ArchiveFolder_byArchiveCenterID(_ArchiveCenterId,_UserId,Dm.SecID);

  if dm.ListFromorg then
    PageControl1.ActivePageIndex:=0
  else
    PageControl1.ActivePageIndex:=1
end;

procedure TArchiveOrganizeForm.FormClose(Sender: TObject;
var
  Action: TCloseAction);
begin
  inherited;
  {Ranjbar 89.06.30 ID=23}
  Sp_SetAccessToArchiveFolder.Close;
  //---
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
  close;
end;

procedure TArchiveOrganizeForm.GroupBox1Click(Sender: TObject);
begin
  inherited;
  ArchiveTree.ExportToWord;
end;

procedure TArchiveOrganizeForm.acNewZoonkanBayganiExecute(Sender: TObject);
begin
  inherited;
  AInsert.Execute;
end;

procedure TArchiveOrganizeForm.acDeleteZoonkanBayganiExecute(
  Sender: TObject);
begin
  inherited;
  Adelete.Execute;
end;

procedure TArchiveOrganizeForm.acCutZoonkanBayganiExecute(Sender: TObject);
begin
  inherited;
   {Ranjbar 89.05.27 ID=22}
   //Hamed_Ansari_MRM_990716_S
  if dsform.DataSet.fieldbyname('ParentFolderId').AsInteger = 0 then
  begin
    ShowMessage('„Ã«“ »Â Ã«»Ã«ÌÌ ”—‘«ŒÂ ‰„Ì »«‘Ìœ');
    Exit;
  end;
   //Hamed_Ansari_MRM_990716_E
  SelectedNodeID:=dsform.DataSet.fieldbyname('folderid').AsInteger;
  SelectedNodeTitle := ArchiveTree.Selected.text ;
  LblPaste.Caption := SelectedNodeTitle;
  LblPaste.Visible := True;
  Paste.Enabled := True;
   //---
end;

procedure TArchiveOrganizeForm.acPasteZoonkanBayganiExecute(
  Sender: TObject);
var
  ParentID : integer;
begin
  inherited;
   {Ranjbar 89.05.27 ID=22}
  ParentID:=dsform.DataSet.fieldbyname('folderid').AsInteger;
  if messageShowString(' ¬Ì« «“ «‰ ﬁ«· ‘«ŒÂ "'+SelectedNodeTitle+'" »Â “Ì— „Ã„Ê⁄Â "'+ArchiveTree.Selected.text+'" „ÿ„∆‰ Â” Ìœø ', true) then
  begin
    Dm.YeganehConnection.Execute('update ArchiveFolder set ParentFolderID= '+IntToStr(ParentID)+' where FolderID='+IntToStr(SelectedNodeID));
    ArchiveTree.Selected.Parent.Collapse(False);
    SelectedNodeID:=0;
    Paste.Enabled := False;
    LblPaste.Caption := '';
    LblPaste.Visible := False;
    {Ranjbar 89.06.30 ID=23}
    //DSForm.DataSet := Get_ArchiveFolder_byArchiveCenterID(_ArchiveCenterID);
    DSForm.DataSet := Get_ArchiveFolder_byArchiveCenterID(_ArchiveCenterId,_UserId,Dm.SecID);
    //---
    DSForm.DataSet.Locate('folderid',SelectedNodeID,[]);
  end;
   //---
end;

procedure TArchiveOrganizeForm.acEditZoonkanBayganiExecute(
  Sender: TObject);
begin
  inherited;
  //
end;

end.
