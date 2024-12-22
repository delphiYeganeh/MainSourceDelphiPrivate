unit ArchiveOrganize;

interface

uses
jpeg, BaseUnit, DBActns, ActnMan, StdCtrls, DBLookupEdit, Grids, DBGrids,
  YDbgrid, ComCtrls, DBTreeView, Mask, DBCtrls, Controls, Buttons,
  Graphics, ExtCtrls, Classes, ActnList, DB,dialogs,SysUtils,Forms,
  ExtActns, ADODB, XPStyleActnCtrls, xpWindow, xpBitBtn, AdvGlowButton,
  xpPanel, Menus, dxGDIPlusClasses;

type
  TArchiveOrganizeForm = class(TMBaseForm)
    ActionManager1: TActionManager;
    AClose: TAction;
    AInsert: TAction;
    Adelete: TAction;
    Dlist: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGFromORG: TYDBGrid;
    Panel4: TxpPanel;
    Image2: TImage;
    BBOK: TAdvGlowButton;
    BBInsert: TAdvGlowButton;
    BBCancel: TAdvGlowButton;
    DeleteBtn: TAdvGlowButton;
    Sp_SetAccessToArchiveFolder: TADOStoredProc;
    acNewZoonkanBaygani: TAction;
    acDeleteZoonkanBaygani: TAction;
    acEditZoonkanBaygani: TAction;
    acCutZoonkanBaygani: TAction;
    acPasteZoonkanBaygani: TAction;
    SpeedButton3: TAdvGlowButton;
    ArchiveTree: TDBTreeView;
    pnlMain: TPanel;
    Panel5: TPanel;
    Cut: TAdvGlowButton;
    Paste: TAdvGlowButton;
    PopupRightTree: TPopupMenu;
    c1: TMenuItem;
    p1: TMenuItem;
    Panel6: TPanel;
    LblPaste: TLabel;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit1: TDBEdit;
    Panel7: TPanel;
    Panel3: TPanel;
    SpeedButton1: TAdvGlowButton;
    SpeedButton2: TAdvGlowButton;
    Panel8: TPanel;
    Panel9: TPanel;
    SEdit: TEdit;
    Label2: TLabel;
    Label6: TLabel;
    DBText1: TDBText;
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
    procedure PageControl1Change(Sender: TObject);
    procedure c1Click(Sender: TObject);
    procedure p1Click(Sender: TObject);
    procedure DBGFromORGCellClick(Column: TColumn);

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
  if (dsform.DataSet.fieldbyname('ParentFolderId').AsInteger = 0 ) and (dsform.DataSet.fieldbyname('Title').AsString ='»«Ìê«‰Ì' ) then
    ShowMsgString('„ÃÊ“ ÊÌ—«Ì‘ ‰œ«—Ìœ')
  else
  begin

    if (acEditZoonkanBaygani.Enabled)  then
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
  if (dsform.DataSet.fieldbyname('ParentFolderId').AsInteger = 0 )  then
  begin
    ShowMessage('„Ã«“ »Â Õ–› ”—‘«ŒÂ ‰„Ì »«‘Ìœ');
    Exit;
  end ;

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
  done := True;

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
  s:= YeganehTrim(SEdit.Text);
  Dlist.DataSet:= Get_ArchiveFolder_byArchiveCenterID_and_Title(_ArchiveCenterID,s)
end;

procedure TArchiveOrganizeForm.FormShow(Sender: TObject);
begin
   inherited;
  // PageControl1.TabWidth := 1;
  // PageControl1.TabHeight := 1;
   {Ranjbar 89.06.30 ID=23}
   //DSForm.DataSet:=Get_ArchiveFolder_byArchiveCenterID(_ArchiveCenterID);
   //---
  DSForm.DataSet := Get_ArchiveFolder_byArchiveCenterID(_ArchiveCenterId,_UserId,Dm.SecID);
  Dlist.DataSet  := DSForm.DataSet ;

  LblPaste.Caption := '';
  Paste.Hide;
  Cut.Hide;    

  if dm.ListFromorg then
  begin
    PageControl1.ActivePageIndex := 0  ;
    SpeedButton2.Down := True ;
  end
  else
  begin
    PageControl1.ActivePageIndex := 1  ;
    SpeedButton1.Down := True ;
  end;
  PageControl1Change(Sender);

end;

procedure TArchiveOrganizeForm.FormClose(Sender: TObject;
var
  Action: TCloseAction);
begin
  inherited;
  {Ranjbar 89.06.30 ID=23}
  Sp_SetAccessToArchiveFolder.Close;
  //---
  dm.ListFromorg := PageControl1.ActivePageIndex=0;
  dm.SetValue(114,dm.ListFromorg);
end;

procedure TArchiveOrganizeForm.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  PageControl1.ActivePageIndex:=0;
  PageControl1Change(Sender);
end;

procedure TArchiveOrganizeForm.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  PageControl1.ActivePageIndex:=1;
  PageControl1Change(Sender);  
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
var parentid : Integer;
begin
  inherited;
   {Ranjbar 89.05.27 ID=22}
   //Hamed_Ansari_MRM_990716_S
   {
  if dsform.DataSet.fieldbyname('ParentFolderId').AsInteger = 0 then
  begin
    ShowMessage('„Ã«“ »Â Ã«»Ã«ÌÌ ”—‘«ŒÂ ‰„Ì »«‘Ìœ');
    Exit;
  end;
  }
   //Hamed_Ansari_MRM_990716_E

  { TODO -oparsa : 14030627 }
  parentid := 0 ;
  if PageControl1.ActivePageIndex = 1 then //·Ì” Ì
  begin
    if (Dlist.DataSet = nil) or  (Dlist.DataSet.RecordCount = 0) then
      Exit ;
    SelectedNodeID := Dlist.DataSet.Fieldbyname('FolderID').AsInteger ;
    parentid       := Dlist.DataSet.Fieldbyname('ParentFolderId').AsInteger ;
  end
  else
  { TODO -oparsa : 14030627 }
  begin       // œ—Œ Ì
    SelectedNodeID:=dsform.DataSet.fieldbyname('folderid').AsInteger;
    parentid      :=dsform.DataSet.fieldbyname('ParentFolderId').AsInteger;
  end;
  { TODO -oparsa : 14030926 }
  if parentid = 0 then
  begin
    ShowMessage('„Ã«“ »Â Ã«»Ã«ÌÌ ”—‘«ŒÂ ‰„Ì »«‘Ìœ');
    Exit;
  end;
  { TODO -oparsa : 14030926 }
  if PageControl1.ActivePageIndex = 0 then
    SelectedNodeTitle := ArchiveTree.Selected.text
  else SelectedNodeTitle := Dlist.DataSet.Fieldbyname('Title').asString ;
  
  LblPaste.Caption := 'ò«  ‘œÂ  = ' + SelectedNodeTitle;
  LblPaste.Visible := True;
  Paste.Enabled := True;
   //---
  { TODO -oparsa : 14030627 }
  Cut.Hide;
  { TODO -oparsa : 14030627 }
  if PageControl1.ActivePageIndex = 0 then
    Paste.Show;   
end;

procedure TArchiveOrganizeForm.acPasteZoonkanBayganiExecute(
  Sender: TObject);
var
  ParentID : integer;
begin
  inherited;
   {Ranjbar 89.05.27 ID=22}
  ParentID:=dsform.DataSet.fieldbyname('folderid').AsInteger;

  { TODO -oparsa : 14030627 }
  if ParentID = 0 then
    Exit;
  { TODO -oparsa : 14030627 }
    
  if messageShowString(' ¬Ì« «“ «‰ ﬁ«· ‘«ŒÂ "'+SelectedNodeTitle+'" »Â “Ì— „Ã„Ê⁄Â "'+ArchiveTree.Selected.text+'" „ÿ„∆‰ Â” Ìœø ', true) then
  begin
    if ParentID <> SelectedNodeID then
      Dm.YeganehConnection.Execute('update ArchiveFolder set ParentFolderID = '+IntToStr(ParentID)+' where FolderID ='+IntToStr(SelectedNodeID));
    try
      ArchiveTree.Selected.Parent.Collapse(False);
    except
     // Get_ArchiveFolder_byArchiveCenterID(_ArchiveCenterId,_UserId,Dm.SecID);
    end ;
    //SelectedNodeID:=0;
    Paste.Enabled := False;
    Paste.Hide;
    Cut.Show;    
    LblPaste.Caption := '';
    LblPaste.Visible := False;
    {Ranjbar 89.06.30 ID=23}
    //DSForm.DataSet := Get_ArchiveFolder_byArchiveCenterID(_ArchiveCenterID);
    DSForm.DataSet := Get_ArchiveFolder_byArchiveCenterID(_ArchiveCenterId,_UserId,Dm.SecID);
    if YeganehTrim(SEdit.Text) <> '' then
      Dlist.DataSet:= Get_ArchiveFolder_byArchiveCenterID_and_Title(_ArchiveCenterID,YeganehTrim(SEdit.Text))
    else Dlist.DataSet:=  DSForm.DataSet ;
    //---
    DSForm.DataSet.Locate('folderid',SelectedNodeID,[]);
    SelectedNodeID:=0;
  end;
   //---
end;

procedure TArchiveOrganizeForm.acEditZoonkanBayganiExecute(
  Sender: TObject);
begin
  inherited;
  //
end;

procedure TArchiveOrganizeForm.PageControl1Change(Sender: TObject);
begin
  inherited;
  if PageControl1.ActivePageIndex = 0 then  //œ—Œ Ì
  begin

    { TODO -oparsa : 14030627 }
    if trim(LblPaste.Caption) <> '' then
      paste.Show
    else
     Cut.Show;
    { TODO -oparsa : 14030627 }
  end
  else
  begin

    { TODO -oparsa : 14030627 }
    paste.Hide;
    Cut.Show;
    { TODO -oparsa : 14030627 }
  end;
end;

procedure TArchiveOrganizeForm.c1Click(Sender: TObject);
begin
  inherited;
  if Cut.Showing then
    acCutZoonkanBayganiExecute(self) ;
end;

procedure TArchiveOrganizeForm.p1Click(Sender: TObject);
begin
  inherited;
  if Paste.Showing then
    acPasteZoonkanBayganiExecute(self) ;
end;

procedure TArchiveOrganizeForm.DBGFromORGCellClick(Column: TColumn);
begin

  if (Dlist.DataSet = nil) or  (Dlist.DataSet.RecordCount = 0) then
      Exit ;
  inherited;      
  if Dlist.DataSet.Fieldbyname('FolderID').AsInteger >0 then
    DSForm.DataSet.Locate('folderid',Dlist.DataSet.Fieldbyname('FolderID').AsInteger,[]);

end;

end.
