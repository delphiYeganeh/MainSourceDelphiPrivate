unit FromOrgU;

interface

uses
jpeg, BaseUnit, DBActns, ActnMan, StdCtrls, DBLookupEdit, Grids, DBGrids,
  YDbgrid, ComCtrls, DBTreeView, Mask, DBCtrls, Controls, Buttons,
  Graphics, ExtCtrls, Classes, ActnList, DB,dialogs,SysUtils,Forms,
  ExtActns, ADODB, businessLayer,
  ImgList, Menus, XPStyleActnCtrls,Types, dxGDIPlusClasses, AdvGlowButton;

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
    Panel3: TPanel;
    Image2: TImage;
    BBOK: TAdvGlowButton;
    BBCancel: TAdvGlowButton;
    BBInsert: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    deleteBtn: TAdvGlowButton;
    Label5: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    orderByTitle: TCheckBox;
    innerOrg: TCheckBox;
    outerOrg: TCheckBox;
    Panel2: TPanel;
    PageControl: TPageControl;
    TabSheet1: TTabSheet;
    FromOrganizationsTree: TTreeView;
    TabSheet2: TTabSheet;
    DBGFromORG: TYDBGrid;
    Panel4: TPanel;
    Panel5: TPanel;
    SEdit: TEdit;
    Label2: TLabel;
    LblPaste: TLabel;
    Cut: TAdvGlowButton;
    Paste: TAdvGlowButton;
    SBExpand: TAdvGlowButton;
    SBCollapse: TAdvGlowButton;
    acUserGroup: TAction;
    BitBtn1: TAdvGlowButton;
    pnlHead: TPanel;
    SpeedButton1: TAdvGlowButton;
    SpeedButton2: TAdvGlowButton;
    RBInnerOrg: TRadioButton;
    RBOuterOrg: TRadioButton;
    RBAllOrg: TRadioButton;
    pnlOrg: TPanel;
    pnlMain: TPanel;
    Label6: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure ACloseExecute(Sender: TObject);
    procedure SetOrganizeMode(value:boolean);
    procedure FromOrganizationsTreeDblClick(Sender: TObject);
    procedure AInsertExecute(Sender: TObject);
    procedure ApostExecute(Sender: TObject);
    procedure AdeleteExecute(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure FromOrganizationsTreeGetImageIndex(Sender: TObject;Node: TTreeNode);
    procedure BBOKClick(Sender: TObject);
    procedure SEditChange(Sender: TObject);
    procedure FromOrgAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AddChild(Node:TTreeNode);
    procedure FromOrganizationsTreeExpanding(Sender: TObject;
      Node: TTreeNode; var AllowExpansion: Boolean);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FromOrganizationsTreeChange(Sender: TObject;Node: TTreeNode);
    function Orgwhere:String;
    procedure innerOrgClick(Sender: TObject);
    procedure BBCancelClick(Sender: TObject);
    procedure BBInsertClick(Sender: TObject);
    procedure deleteBtnClick(Sender: TObject);
    procedure FromOrganizationsTreeClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure CutClick(Sender: TObject);
    procedure PasteClick(Sender: TObject);
    procedure RBAllOrgClick(Sender: TObject);
    procedure RBInnerOrgClick(Sender: TObject);
    procedure RBOuterOrgClick(Sender: TObject);
    procedure DBGFromORGDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SBExpandClick(Sender: TObject);
    procedure SBCollapseClick(Sender: TObject);
    procedure acUserGroupExecute(Sender: TObject);

  private
    FOrganizeMode : Boolean;
  public
    Done:boolean;
    Rootid:integer;
    InnerMode : Boolean;    
    Property OrganizeMode:boolean read FOrganizeMode write SetOrganizeMode;
    { Public declarations }
  end;

var
  FromOrgForm: TFromOrgForm;

implementation

uses  FromOrgDialog, UMain, YShamsiDate, Dmu, Math , UGroupUser;
{$R *.dfm}
var SelectedNodeID:integer ;
 SelectedNodeTitle:string ;

procedure TFromOrgForm.SetOrganizeMode(value:boolean);
begin
   FOrganizeMode:=value;
   Cut.Visible:= value;
   Paste.Visible:= value;
   BBInsert.Visible:= value;
   EditBtn.Visible:= value;
   deleteBtn.Visible:= value;
   AInsert.Enabled:= value;
   Adelete.Enabled:= value;
end;

procedure TFromOrgForm.FormCreate(Sender: TObject);
begin
   inherited;
   rootid:=1;
   OrganizeMode:=false;
   DBGFromORG.Columns[1].Color:=$00FAC6FF;

   done:=false;
end;

procedure TFromOrgForm.ACloseExecute(Sender: TObject);
begin
   inherited;
   Close;
end;

// «»⁄ ›Ì· — ﬂ—œ‰ »— «”«” ‰Ê⁄ ”«“„«‰ œ—Ê‰Ì »« »—Ê‰Ì
function TFromOrgForm.Orgwhere:String;
begin
   if innerOrg.Checked and not outerOrg.Checked then
      Result := '(isInnerOrg=1)'
   else
      if not innerOrg.Checked and outerOrg.Checked then
         Result := '(isInnerOrg=0)'
      else
         Result := '';

end;

procedure TFromOrgForm.FromOrganizationsTreeDblClick(Sender: TObject);
begin
   inherited;
   if not OrganizeMode then
   begin
      close;
      done:=true;
   end;
end;

procedure TFromOrgForm.AInsertExecute(Sender: TObject);
Var
   SelectedId : integer;
   S : string;
   C : ^integer;
   IsInnerOrg : boolean;
begin
   inherited;

   if PageControl.ActivePageIndex = 1 then
   begin
      if Dm.Y_InputQuery('⁄‰Ê«‰ ÿ—› „ﬂ« »Â ﬂ‰‰œÂ ','',s,' €ÌÌ— ”«·') then
      begin
         Exec_insert_ToOrganizations(s);
         SEdit.Text := s;
      end;
      Exit;
   end;

   C := FromOrganizationsTree.Selected.Data;
   SelectedId := C^;
   if SelectedId = 1 then
      Exit;

   IsInnerOrg := Dm.FromOrganizationsIsInnerOrg.AsBoolean;

   with TADOQuery.Create(nil) do
   begin
      Connection := Dm.YeganehConnection;
      SQL.Text := 'SELECT dbo.IS_Inner_ORG('+IntToStr(SelectedId)+')';
   //   try
         open;
         IsInnerOrg := Fields[0].AsBoolean;

   //   except
   //   end;
   end;

   FromOrgDialogF := TFromOrgDialogF.Create(Application);
   FromOrgDialogF.Fromorg.Open;
   FromOrgDialogF.FromOrg.Insert;
   FromOrgDialogF.FromorgPreCode.Value := Dm.DefaultOrgPreCode;
   FromOrgDialogF.FromOrgParentID.Value := SelectedID;//
   FromOrgDialogF.FromOrgCode.AsString := Exec_Get_NewOrgCode(SelectedId);
   FromOrgDialogF.FromOrgIsActive.AsBoolean := True;
   FromOrgDialogF.FromOrgIsInnerOrg.AsBoolean := IsInnerOrg;//
   FromOrgDialogF.ShowModal;
   if FromOrgDialogF.Done then
   begin
      AddChild(FromOrganizationsTree.Selected);
      FromOrganizationsTree.OnExpanding := Nil;
      FromOrganizationsTree.Selected := FromOrganizationsTree.Selected.Item[0];
      {Ranjbar 89.09.13 ID=215}
      if PageControl.ActivePageIndex = 0 then
         FromOrganizationsTree.SetFocus;
      //---
   end
      else
         FromOrgDialogF.FromOrg.Cancel;

   FromOrganizationsTree.OnExpanding := FromOrganizationsTreeExpanding;
end;


procedure TFromOrgForm.ApostExecute(Sender: TObject);
begin
   inherited;
   Dm.FromOrganizations.Post;
   FromOrganizationsTree.Selected.Text := Dm.FromOrganizationsTitle.AsString;
   BBInsert.Enabled := True;
   Cut.Enabled := True;
end;

procedure TFromOrgForm.AdeleteExecute(Sender: TObject);
Var
   SelectedID : Integer;
begin
   inherited;
   SelectedId := Integer(FromOrganizationsTree.Selected.Data^);

   If SelectedId <= 3 then
      Exit;

   if FromOrganizationsTree.Selected.HasChildren then 
      ShowMsg(61)    //œ«—«Ì ê—Â Å«ÌÌ‰ —
   else
      begin
         //»œ”  ¬Ê—œ‰  ⁄œ«œ ‰«„Â Â«Ì «—Ã«⁄ ‘œÂ »Â Ìﬂ ç«—  ”«“„«‰Ì
         if Exec_Org_HasLetter(Selectedid) then
         begin
            {Ranjbar 89.09.09 ID=195}
            ShowMyMessage('ÅÌ€«„','»œ·Ì· «—Ã«⁄ ‰«„Â »Â «Ì‰ ”„  «„ﬂ«‰ Õ–› ¬‰ ÊÃÊœ ‰œ«—œ',[mbOK],mtInformation);
            Abort;
            {if messageShowString(' »Â «Ì‰ ”„  ‰«„Â Â«ÌÌ «“ ﬁ»· «—Ã«⁄ œ«œÂ ‘œÂ «”  ¬Ì« «“ €Ì— ›⁄«· ò—œ‰ ¬ „ÿ„∆‰ Â” Ìœ',true) then
            begin
               dm.YeganehConnection.Execute('Update fromorganizations set isactive=0,code=''del''+code where id='+IntToStr(Selectedid));
               FromOrganizationsTree.Items.Delete(FromOrganizationsTree.Selected);
            end;}
            //---
         end
            else
               if messageShowString(Get_sysAppMessage(36)+' '+FromOrganizationsTree.Selected.Text+' '+Get_sysAppMessage(37),true)then
               begin
                  dm.YeganehConnection.Execute('delete from fromorganizations where id='+IntToStr(Selectedid));
                  FromOrganizationsTree.Items.Delete(FromOrganizationsTree.Selected);
               end;
      end;

   {Ranjbar 89.09.13 ID=215}
   if PageControl.ActivePageIndex = 0 then
      FromOrganizationsTree.SetFocus;
   //---   
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
   Node.ImageIndex := 32;
end;

procedure TFromOrgForm.BBOKClick(Sender: TObject);
begin
  inherited;
   done:=True;
  Close;
end;

procedure TFromOrgForm.SEditChange(Sender: TObject);
var s:string;
    OrgType : String[1];
begin
  inherited;
  S := YeganehTrim(SEdit.Text);
  With FromOrg do
     if length(s)>=0  then
     begin
        Close;
        CommandText := 'Select ID,code, Title,ResponsibleStaffer,ParentID ' +
                       //' from FromOrganizations ' +
                       ' FROM dbo.FromOrganizations_fn( ' + IntToStr(_UserFromOrgID) + ')'+
                       ' Where isactive=1 and (Title like ''%' + S + '%'' or  ' +
                       ' ResponsibleStaffer like ''%' + S + '%'' or code like ''%' + S +'%'')';

        {Ranjbar 89.07.26 ID=144}  //›ﬁÿ ‰„«Ì‘ ·Ì”  œ—Ê‰ ”«“„«‰Ì
        if (RBInnerOrg.Checked)And(RBInnerOrg.Visible) then
           OrgType := '1';
        if (RBOuterOrg.Checked)And(RBOuterOrg.Visible) then
           OrgType := '0';
        if (RBInnerOrg.Checked)or(RBOuterOrg.Checked) then
           CommandText := 'Select ID,code, Title,ResponsibleStaffer,ParentID ' +
                          //' from FromOrganizations ' +
                          ' FROM dbo.FromOrganizations_fn( ' + IntToStr(_UserFromOrgID) + ')'+
                          ' Where IsInnerOrg = ' + OrgType +
                          ' And isactive=1 And (Title like ''%' + S + '%'' or  ' +
                          ' ResponsibleStaffer like ''%' + S +'%'' or code like ''%' + S + '%'')';
        //---
        CommandText:=CommandText+' Order by isinnerorg desc ,';

        if orderByTitle.Checked then
           CommandText:=CommandText+'Title'
        else
           CommandText:=CommandText+' Code asc  ';

        Open;
     end;
end;

procedure TFromOrgForm.FromOrgAfterScroll(DataSet: TDataSet);
begin
  inherited;
    ECode.Text:=FromOrgcode.AsString;
    Erespon.Text:=FromOrgResponsibleStaffer.AsString;
end;

procedure TFromOrgForm.FormShow(Sender: TObject);
var c: ^integer;
begin
   inherited;

   New(c);
   c^ := Rootid;
   FromOrganizationsTree.Items.AddChildObject(nil,Exec_Get_OrgTitleByID(rootid),c);
   AddChild(FromOrganizationsTree.Items[0]);

   orderByTitle.Checked:=dm.ChartorderbyTitle;

   if Dm.ListFromorg then
      PageControl.ActivePageIndex:=0
   else
      PageControl.ActivePageIndex:=1;
   if _Kartable then
   begin
      AInsert.Enabled:=false;
      Adelete.Enabled:=false;
      BBInsert.Hide;
      Cut.Hide;
      EditBtn.Hide;
      deleteBtn.Hide;
      OrganizeMode:=false;
    end;
    {Ranjbar 87.12.17}
    PageControl.TabWidth := 1;
    PageControl.TabHeight := 1;
    PageControl.TabIndex := 0;


    //MainForm.BidiModeToRight(FromOrganizationsTree);

    //Ranjbar
    if _Kartable then
       Panel4.Visible := False; //Cut and Paste Button
    BidiModeToRight(FromOrganizationsTree);
    //---
    SEditChange(Self);
    SpeedButton1.OnClick(Self);

    //RBInnerOrg.Checked:= True;
    if  InnerMode then
      RBInnerOrg.Checked:= True
    else  RBOuterOrg.Checked:= True;
end;

procedure TFromOrgForm.FormClose(Sender: TObject; var Action: TCloseAction);
var
   c:^integer;
   SelectedId:integer;
   title,respon,Code:widestring;
begin
   inherited;
   dm.ListFromorg:=PageControl.ActivePageIndex=0;
   SetUserSetting('ListFromorg',dm.ListFromorg);

   dm.ChartorderbyTitle:=orderByTitle.Checked;

   SetUserSetting('ChartOrderByTitle',dm.ChartorderbyTitle);

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
       _ResultOrgID:=FromOrgID.AsInteger; //„ﬁœ«— »œ”  «„œÂ «“ ›—„ ç«—  ”«“„«‰Ì
       _ResultOrgTitle:=FromOrgTitle.AsString;
       _ResultOrgCode:=FromOrgcode.AsString;
       _ResultOrgRespon:=FromOrgResponsibleStaffer.AsString
     end;
end;

procedure TFromOrgForm.AddChild(Node: TTreeNode);
Var
   C : ^integer;
   NewNode :TTREENODE;
   TempS : String;
begin
   Node.DeleteChildren;

   With PFromOrg do
   begin
      Close;
      C := Node.Data;
      {Ranjbar 89.09.13 ID=215}
      //CommandText:='Select Top 200 ID , Title from FromOrganizations '+'where  IsActive=1 And ParentID= '+IntToStr(c^);
      CommandText := 'Select Top 5000 ID , (Case When RTrim(ResponsibleStaffer)=''-'' or RTrim(ResponsibleStaffer)='''' ' +
       //' then RTrim(Title) else RTrim(Title)+'' _ ''+RTrim(ResponsibleStaffer) end) AS Title from FromOrganizations '+
      ' then RTrim(Title) else RTrim(Title)+'' _ ''+RTrim(ResponsibleStaffer) end) AS Title from dbo.FromOrganizations_fn('+ IntToStr(_UserFromOrgID) + ')' +
       ' Where IsActive=1 And ParentID= ' + IntToStr(c^);
       //' Where IsActive=1';
      //---
      
      {Ranjbar 89.07.26 ID=147}
      //if Orgwhere<>'' then
         //CommandText:=CommandText+' and '+Orgwhere;
      //IsInnerOrg=1 »œ·Ì· «Ì‰ﬂÂ »—Ê‰ ”«“„«‰Ì Â«Ì  ⁄—Ì› ‘œÂ œ— ›—„  ⁄—Ì› ç«—  ”«“„«‰Ì œ«—«Ì „ﬁœ«—   
      //---
      
      if OrderByTitle.Checked then
         CommandText:=CommandText+' Order by Title '
      else
         CommandText:=CommandText+' Order by Code Asc  ';

      Open;
      First;
      while not eof do
      begin
         New(c);
         c^ := FieldByName('id').AsInteger;
         TempS := FieldByName('Title').AsString;
         newnode := FromOrganizationsTree.Items.AddChildObject(node,TempS,c);
         if Exec_Org_hasChild(FieldByName('id').AsInteger) then
            FromOrganizationsTree.Items.AddChild(newnode,'');
         Next;
      end;
      {Ranjbar 89.09.09 ID=195}//Refresh
      Dm.FromOrganizations.Close;
      Dm.FromOrganizations.Parameters.ParamByName('@FromOrgID').Value := IntToStr(_UserFromOrgID);
      Dm.FromOrganizations.Open;
      //---
  end;
end;
procedure TFromOrgForm.FromOrganizationsTreeExpanding(Sender: TObject;
  Node: TTreeNode; var AllowExpansion: Boolean);
begin
   inherited;
   AddChild(Node);
end;

procedure TFromOrgForm.SpeedButton2Click(Sender: TObject);
Var
   I : Integer;
begin
   inherited;
   PageControl.ActivePageIndex:=0;
   {Ranjbar 89.07.26 ID=147}
   RBAllOrg.Visible := False;
   RBAllOrg.Checked := True;
   RBInnerOrg.Visible := False;
   RBOuterOrg.Visible := False;
   //---

   {Ranjbar 89.09.13 ID=215}
   SBCollapse.Enabled := True;
   SBExpand.Enabled := True;
   BitBtn1.Enabled:=True;
   //Å” «“ Ã” ÃÊ œ— »—êÂ ·Ì” Ì ° » Ê«‰ œ— »—êÂ œ—Œ Ì ¬Ì „ „Ê—œ Ã” ÃÊ —« «‰ Œ«» ﬂ—œ
   if (FromOrg.Active) And (FromOrg.RecordCount > 0) then
      TreeView_FindItem(FromOrganizationsTree,FromOrgID.AsInteger);
   //---
   
   // Amin 1391/12/06 Start
   BBInsert.Visible := true;
   EditBtn.Visible := true;
   deleteBtn.Visible := true;
   // Amin 1391/12/06 End
end;

procedure TFromOrgForm.SpeedButton1Click(Sender: TObject);
begin
   inherited;
   PageControl.ActivePageIndex:=1;
   {Ranjbar 89.07.26 ID=147}
   RBAllOrg.Visible := True;
   RBInnerOrg.Visible := True;
   RBOuterOrg.Visible := True;
   //---

   {Ranjbar 89.09.13 ID=215}
   SBCollapse.Enabled := False;
   SBExpand.Enabled := False;
   BitBtn1.Enabled:=False;
   //---

   // Amin 1391/12/06 Start
   BBInsert.Visible := false;
   EditBtn.Visible := false;
   deleteBtn.Visible := false;
   // Amin 1391/12/06 End
end;

procedure TFromOrgForm.FromOrganizationsTreeChange(Sender: TObject;Node: TTreeNode);
Var
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
   //FromOrganizationsTree.Items[0].Collapse(true);
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

procedure TFromOrgForm.FromOrganizationsTreeClick(Sender: TObject);
begin
  inherited;
  FromOrganizationsTree.Selected.ImageIndex:=21
end;

procedure TFromOrgForm.EditBtnClick(Sender: TObject);
var SelectedId : integer;
begin
   inherited;
   SelectedId := integer(FromOrganizationsTree.Selected.Data^);
   FromOrgDialogF := TFromOrgDialogF.Create(Application);
   with FromOrgDialogF.Fromorg do
   begin
      Close;
      Parameters.ParamByName('id').Value:=selectedid;
      Open;
   end;
   FromOrgDialogF.ShowModal;
   Dm.FromOrganizations.Locate('id',SelectedId,[]);
   {Ranjbar 89.09.13 ID=215}
   if PageControl.ActivePageIndex = 0 then
   begin
      FromOrganizationsTree.SetFocus;
      FromOrganizationsTree.FullExpand;
      TreeView_FindItem(FromOrganizationsTree,SelectedID);
   end;
   //---
end;

procedure TFromOrgForm.CutClick(Sender: TObject);
var c:^integer;
begin
  inherited;
  c:=FromOrganizationsTree.Selected.Data;
  if c^=1 then exit;
  SelectedNodeID:=c^;

  //Ranjbar
  SelectedNodeTitle := FromOrganizationsTree.Selected.text ;
  //Paste.Caption := 'Paste('+SelectedNodeTitle+')';
  LblPaste.Caption := SelectedNodeTitle;
  LblPaste.Visible := True;
  //---
  Paste.Show;
end;

procedure TFromOrgForm.PasteClick(Sender: TObject);
var
   C : ^integer;
   ParentID : integer;
begin
  inherited;
  C := FromOrganizationsTree.Selected.Data;
  ParentID := C^;
  if messageShowString(' ¬Ì« «“ «‰ ﬁ«· ‘«ŒÂ '+DQuotedStr(SelectedNodeTitle)+' »Â “Ì— „Ã„Ê⁄Â '+DQuotedStr(FromOrganizationsTree.Selected.text)+'„ÿ„∆‰ Â” Ìœø ', true) then
  begin
     dm.YeganehConnection.Execute('update Fromorganizations set ParentId= '+IntToStr(ParentID)+' where id='+IntToStr(SelectedNodeID));
     FromOrganizationsTree.Selected.Parent.Collapse(False);
     SelectedNodeID:=0;
     Paste.Hide;
     //Ranjbar
     LblPaste.Caption := '';
     LblPaste.Visible := False;
     //---
  end;
end;

procedure TFromOrgForm.RBAllOrgClick(Sender: TObject);
begin
   inherited;
   {Ranjbar 89.07.26 ID=144}
   SEditChange(Sender);
   //---
end;

procedure TFromOrgForm.RBInnerOrgClick(Sender: TObject);
begin
   inherited;
   {Ranjbar 89.07.26 ID=144}
   SEditChange(Sender);
   //---
end;

procedure TFromOrgForm.RBOuterOrgClick(Sender: TObject);
begin
   inherited;
   {Ranjbar 89.07.26 ID=144}
   SEditChange(Sender);
   //---
end;

procedure TFromOrgForm.DBGFromORGDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
begin
   inherited;
   {Ranjbar 89.09.13 ID=215}
   DBGrid_SetFocusAfterExit(DBGFromORG,Rect,DataCol,Column,State,clHighlightText);
   //---
end;

procedure TFromOrgForm.SBExpandClick(Sender: TObject);
begin
   inherited;
   {Ranjbar 89.09.13 ID=215}
   if PageControl.ActivePageIndex = 0 then
      FromOrganizationsTree.FullCollapse;
   //---
end;

procedure TFromOrgForm.SBCollapseClick(Sender: TObject);
begin
   inherited;
   {Ranjbar 89.09.13 ID=215}
   if PageControl.ActivePageIndex = 0 then
      FromOrganizationsTree.FullExpand;
   //---
end;

procedure TFromOrgForm.acUserGroupExecute(Sender: TObject);
var
  C : ^integer;
  SelectedId:Integer;
begin
  inherited;
   C := FromOrganizationsTree.Selected.Data;
   SelectedId := C^;
  if FGroupUser=nil then
     FGroupUser:=TFGroupUser.Create(Self);
   FGroupUser.OrgID:=SelectedId;
   FGroupUser.ShowModal;  
end;

end.
