unit ArchiveOrganize;

interface

uses
jpeg, BaseUnit, DBActns, ActnMan, StdCtrls, DBLookupEdit, Grids, DBGrids,
  YDbgrid, ComCtrls, DBTreeView, Mask, DBCtrls, Controls, Buttons,
  Graphics, ExtCtrls, Classes, ActnList, DB,dialogs,SysUtils,Forms,
  ExtActns, ADODB, Windows, Menus, XPStyleActnCtrls, AdvGlowButton,
  dxGDIPlusClasses, xpPanel;

type
  TArchiveOrganizeForm = class(TMBaseForm)
    ActionManager1: TActionManager;
    AClose: TAction;             
    AInsert: TAction;
    Apost: TAction;
    Adelete: TAction;
    Dlist: TDataSource;
    Panel2: TPanel;
    Label2: TLabel;
    SEdit: TEdit;
    Panel3: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGFromORG: TYDBGrid;
    Panel1: TPanel;
    SpeedButton1: TAdvGlowButton;
    SpeedButton2: TAdvGlowButton;
    DBText1: TDBText;
    Label3: TLabel;
    ArchiveTree: TDBTreeView;
    Panel4: TPanel;
    Cut: TAdvGlowButton;
    Paste: TAdvGlowButton;
    Panel5: TPanel;
    BBOK: TAdvGlowButton;
    BBCancel: TAdvGlowButton;
    BBInsert: TAdvGlowButton;
    DeleteBtn: TAdvGlowButton;
    BBEdit: TAdvGlowButton;
    AEdit: TAction;
    pnlMain: TPanel;
    SBExpand: TAdvGlowButton;
    SBCollapse: TAdvGlowButton;
    LblPaste: TLabel;
    Panel6: TxpPanel;
    Image1: TImage;
    Label5: TLabel;
    DBText2: TDBText;
    Panel7: TPanel;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    DBEPlace: TDBEdit;
    DBETitle: TDBEdit;
    DBENotes: TDBEdit;
    Panel9: TPanel;
    PopupMenu_Right: TPopupMenu;
    C1: TMenuItem;
    p1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure ACloseExecute(Sender: TObject);
    procedure SetOrganizeMode(Value:boolean);
    procedure ArchiveTreeDblClick(Sender: TObject);
    procedure AInsertExecute(Sender: TObject);
    procedure ApostExecute(Sender: TObject);
    procedure AdeleteExecute(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure ArchiveTreeGetImageIndex(Sender: TObject;Node: TTreeNode);
    procedure BBOKClick(Sender: TObject);
    procedure SEditChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BBCancelClick(Sender: TObject);
    procedure BBInsertClick(Sender: TObject);
    procedure DeleteBtnClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SEditExit(Sender: TObject);
    procedure CutClick(Sender: TObject);
    procedure PasteClick(Sender: TObject);
    procedure SBExpandClick(Sender: TObject);
    procedure SBCollapseClick(Sender: TObject);
    procedure DBGFromORGDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BBEditClick(Sender: TObject);
    procedure AEditExecute(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure p1Click(Sender: TObject);

  private
     FOrganizeMode: boolean;
  public
    Done : Boolean;
    Property OrganizeMode:Boolean read FOrganizeMode write SetOrganizeMode;
  end;

var
  ArchiveOrganizeForm: TArchiveOrganizeForm;

implementation

uses FromOrgDialog, UMain, YShamsiDate, Dmu, Math, businessLayer,
     ArchiveDialog , YWhereEdit;
{$R *.dfm}

var SelectedNodeID:integer ;
    SelectedNodeTitle:string;

procedure TArchiveOrganizeForm.SetOrganizeMode(Value:boolean);
begin
   FOrganizeMode := Value;
   Cut.Visible := Value;
   Paste.Visible := Value;
   BBInsert.Visible := Value;
   {Ranjbar 89.10.06 ID=251}
   BBEdit.Visible := Value;
   //---
   DeleteBtn.Visible := Value;
   AInsert.Enabled := Value;
   Adelete.Enabled := Value;
end;

procedure TArchiveOrganizeForm.FormCreate(Sender: TObject);
begin
   inherited;
   OrganizeMode:=false;

   OrganizeMode := False;
   DBGFromORG.Columns[1].Color := $00FAC6FF;
   done := false;
   {Ranjbar 89.09.13 ID=215}
  // PageControl1.TabHeight := 1;
  // PageControl1.TabWidth := 1;
   //---
end;

procedure TArchiveOrganizeForm.ACloseExecute(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TArchiveOrganizeForm.ArchiveTreeDblClick(Sender: TObject);
begin
   inherited;
   BBEdit.Click;
end;

procedure TArchiveOrganizeForm.AInsertExecute(Sender: TObject);
Var
   SelectedId: integer;
begin
   inherited;
   SelectedId := DSForm.DataSet.fieldbyname('FolderID').AsInteger;

   ArchiveDialogForm := TArchiveDialogForm.Create(Application);
   ArchiveDialogForm.ShowModal;

   if ArchiveDialogForm.Done then
   begin
      Exec_insert_ArchiveFolder(SelectedId,_Userid,ArchiveDialogForm.Title.Text,
                                ArchiveDialogForm.Notes.Text,ArchiveDialogForm.Place.Text);
      DSForm.DataSet := Exec_Get_ArchiveFolder_ByUserID(_UserID,1);
   end;
end;


procedure TArchiveOrganizeForm.ApostExecute(Sender: TObject);
begin
   inherited;
   dm.FromOrganizations.Post;
   ArchiveTree.Selected.Text := dm.FromOrganizationsTitle.AsString;
   BBInsert.Enabled:=true;
   {Ranjbar 89.10.06 ID=251}
   BBEdit.Enabled:=true;
   //---
end;

procedure TArchiveOrganizeForm.AdeleteExecute(Sender: TObject);
 var SelectedID :integer;
 b: boolean;
begin
   inherited;
   Selectedid := DSForm.DataSet.FieldByName('folderid').AsInteger;

   if ArchiveTree.Selected.HasChildren then
      ShowMsg(82)
   else
       begin
          if _Kartable then
             b := Exec_Folder_hasRecommite(Selectedid)
          else
             b := Exec_Folder_hasLetter(Selectedid); //���� ����
             
          if b then
             ShowMsg(83)
          else
             if MessageShowString(Get_sysAppMessage(81)+'  '+dsform.DataSet.Fieldbyname('Title').Asstring+'  '+Get_sysAppMessage(37),true)then
             begin
                Exec_Delete_ArchiveFolder(Selectedid);

                DSForm.DataSet := Exec_Get_ArchiveFolder_byUserID(_Userid,1)
             end;
       end;
end;

procedure TArchiveOrganizeForm.TabSheet2Show(Sender: TObject);
begin
  inherited;
  {Ranjbar}
  //BBInsert.Hide;
  BBInsert.Enabled := False;
  BBEdit.Enabled := False;
  //---
  SEdit.SetFocus;
end;


procedure TArchiveOrganizeForm.TabSheet1Show(Sender: TObject);
begin
  inherited;
  {Ranjbar}
  //BBInsert.Show;
  BBInsert.Enabled := True;
  BBEdit.Enabled := True;
  //---
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
Var S:string;
begin
   inherited;
   S := YeganehTrim(SEdit.Text);
   if Length(s) >= 2 then
   begin
      {Ranjbar}
      if (not OrganizeMode) And Not(_Kartable) then //LetterArchiveform
         Dlist.DataSet := Exec_Get_ArchiveFolder_ByAccessAndTitle(s) // ���� ��� ������ �� ���� ��
      else
         Dlist.DataSet := Exec_get_ArchiveFolder_byUserID_and_Title(_Userid,s);//���� ������

      
      {Ranjbar}
      DSForm.DataSet.Locate('FolderID',Dlist.DataSet.FieldByName('FolderID').AsInteger,[]);
      //---
   end;
end;

procedure TArchiveOrganizeForm.FormShow(Sender: TObject);
begin
   inherited;
   {Ranjbar ���� ��� ������ �� ���� ��}
   if (not OrganizeMode)And Not(_Kartable) then //LetterArchiveform
   begin
      BBInsert.Visible := False;
      BBEdit.Visible := False;
      DeleteBtn.Visible := False;
      DSForm.DataSet:=Exec_Get_ArchiveFolder_ByAccess(0);
   end
      else
       //---
         DSForm.DataSet:=Exec_get_ArchiveFolder_byUserID(_Userid,1);

   if Dm.ListFromorg then
   begin
      PageControl1.ActivePageIndex := 0  ;
      SpeedButton2.Down := true;
   end
   else
   begin
      PageControl1.ActivePageIndex := 1;
      SpeedButton1.Down := true;
   end;
   {Ranjbar 87.12.17}
   BidiModeToRight(ArchiveTree);
   //---
 //  if _Kartable then
 //     LabelAccess.Visible := False;

   Paste.Hide ;

end;

procedure TArchiveOrganizeForm.FormClose(Sender: TObject;var Action: TCloseAction);
begin
  inherited;

  dm.ListFromorg:=PageControl1.ActivePageIndex=0;
  SetUserSetting('ListFromorg',dm.ListFromorg);
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
  Close;
end;

procedure TArchiveOrganizeForm.BBInsertClick(Sender: TObject);
begin
   inherited;
   AInsert.Execute;
end;

procedure TArchiveOrganizeForm.DeleteBtnClick(Sender: TObject);
begin
  inherited;
  Adelete.Execute;
end;

procedure TArchiveOrganizeForm.SpeedButton2Click(Sender: TObject);
begin
   inherited;
   PageControl1.ActivePageIndex := 0;
   {Ranjbar 89.09.13 ID=215}
   ArchiveTree.SetFocus;
   SBCollapse.Visible := True;
   SBExpand.Visible := True;
   if (Dlist.DataSet <> nil) And (Dlist.DataSet.Active) And (Dlist.DataSet.RecordCount > 0) then
      DSForm.DataSet.Locate('FolderID',Dlist.DataSet.FieldByName('FolderID').AsInteger,[]);
   //---
end;

procedure TArchiveOrganizeForm.SpeedButton1Click(Sender: TObject);
begin
   inherited;
   PageControl1.ActivePageIndex:=1;
   {Ranjbar 89.09.13 ID=215}
   SBCollapse.Visible := False;
   SBExpand.Visible := False;
   //---   
end;

procedure TArchiveOrganizeForm.SEditExit(Sender: TObject);
begin
   inherited;
   if PageControl1.TabIndex = 0 then
      ArchiveTree.SetFocus;
end;

procedure TArchiveOrganizeForm.CutClick(Sender: TObject);
begin
   inherited;
   {Ranjbar 90.02.07 ID=337}
   if DSForm.DataSet.fieldbyname('ParentFolderID').AsInteger = 0 then
   begin
      LblPaste.Caption := '';
      LblPaste.Visible := False;
      SelectedNodeID := -1;
      SelectedNodeTitle := '';
      ShowMyMessage('�����','����� ����� ����� ������ ����� ������ ���� �����',[mbOK],mtInformation);
      Exit;
   end;
   //---
   SelectedNodeID:=dsform.DataSet.fieldbyname('folderid').AsInteger;

   //Ranjbar
   SelectedNodeTitle := ArchiveTree.Selected.text ;
   LblPaste.Caption := '��� ���  = ' + SelectedNodeTitle;
   LblPaste.Visible := True;
   //---
   Paste.Show;
   Cut.Hide;
end;

procedure TArchiveOrganizeForm.PasteClick(Sender: TObject);
var
   ParentID : integer;
begin
   inherited;
   {Ranjbar 90.02.07 ID=337}
   if Trim(SelectedNodeTitle)='' then
      Exit;
   //---
   ParentID:=dsform.DataSet.fieldbyname('folderid').AsInteger;
   if messageShowString(' ��� �� ������ ���� '+DQuotedStr(SelectedNodeTitle)+' �� ��� ������ '+DQuotedStr(ArchiveTree.Selected.text)+'����� ����Ͽ ', true) then
   begin
      dm.YeganehConnection.Execute('update ArchiveFolder set ParentFolderID= '+IntToStr(ParentID)+' where FolderID='+IntToStr(SelectedNodeID));
      FormShow(self);
      LblPaste.Caption := '';
      LblPaste.Visible := False;
      Paste.Hide;
      Cut.Show;
   end;

end;

procedure TArchiveOrganizeForm.SBExpandClick(Sender: TObject);
begin
   inherited;
   {Ranjbar 89.09.13 ID=215}
   if PageControl1.ActivePageIndex = 0 then
      ArchiveTree.FullCollapse;
   //---
end;

procedure TArchiveOrganizeForm.SBCollapseClick(Sender: TObject);
begin
   inherited;
   {Ranjbar 89.09.13 ID=215}
   if PageControl1.ActivePageIndex = 0 then
      ArchiveTree.FullExpand;
   //---
end;

procedure TArchiveOrganizeForm.DBGFromORGDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   inherited;
   {Ranjbar 89.09.13 ID=215}
   DBGrid_SetFocusAfterExit(DBGFromORG,Rect,DataCol,Column,State,clHighlightText);
   //---
end;

{Ranjbar 89.10.06 ID=251}
procedure TArchiveOrganizeForm.BBEditClick(Sender: TObject);
begin
   inherited;
   AEdit.Execute;
end;

procedure TArchiveOrganizeForm.AEditExecute(Sender: TObject);
begin
   inherited;
   if not OrganizeMode then
   begin
      Done := True;
      if PageControl1.ActivePageIndex=0 then
         _ResultFolderID:=dsform.DataSet.fieldbyname('folderid').AsInteger
      else
         _ResultFolderID := Dlist.DataSet.Fieldbyname('FolderID').AsInteger;
      Close;
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
             DSForm.DataSet:=Exec_get_ArchiveFolder_byUserID(_Userid,1);
          end
       end;
end;

procedure TArchiveOrganizeForm.C1Click(Sender: TObject);
begin
  inherited;
  if Cut.Showing then
    CutClick(self);
end;

procedure TArchiveOrganizeForm.p1Click(Sender: TObject);
begin
  inherited;
  if Paste.Showing then
    PasteClick(self);
end;

end.
