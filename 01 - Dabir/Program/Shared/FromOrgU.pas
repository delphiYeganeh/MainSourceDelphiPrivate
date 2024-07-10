unit FromOrgU;

interface

uses
  jpeg, BaseUnit, DBActns, ActnMan, StdCtrls, DBLookupEdit, Grids, DBGrids,
  YDbgrid, ComCtrls, DBTreeView, Mask, DBCtrls, Controls, Buttons,
  Graphics, ExtCtrls, Classes, ActnList, DB,dialogs,SysUtils,Forms,
  ExtActns, ADODB, businessLayer, ImgList, Menus, XPStyleActnCtrls,Types,
  VirtualTrees, VirtualDBTree, dxtree, dxdbtree, RzTreeVw, AppEvnts;

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
    BBOK: TBitBtn;
    BBCancel: TBitBtn;
    BBInsert: TBitBtn;
    EditBtn: TBitBtn;
    deleteBtn: TBitBtn;
    Label5: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    orderByTitle: TCheckBox;
    innerOrg: TCheckBox;
    outerOrg: TCheckBox;
    Panel2: TPanel;
    PageControl: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGFromORG: TYDBGrid;
    Panel1: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    SEdit: TEdit;
    Label2: TLabel;
    LblPaste: TLabel;
    Cut: TSpeedButton;
    Paste: TSpeedButton;
    RBInnerOrg: TRadioButton;
    RBOuterOrg: TRadioButton;
    RBAllOrg: TRadioButton;
    SBExpand: TSpeedButton;
    SBCollapse: TSpeedButton;
    acUserGroup: TAction;
    BitBtn1: TBitBtn;
    Button1: TButton;
    N1: TMenuItem;
    qryTree: TADOQuery;
    dsTree: TDataSource;
    vdbTree: TVirtualDBTree;
    PFromOrgIsInnerOrg: TBooleanField;
    procedure FormCreate(Sender: TObject);
    procedure ACloseExecute(Sender: TObject);
    procedure SetOrganizeMode(value:boolean);
    procedure AInsertExecute(Sender: TObject);
    procedure ApostExecute(Sender: TObject);
    procedure AdeleteExecute(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure BBOKClick(Sender: TObject);
    procedure SEditChange(Sender: TObject);
    procedure FromOrg_oldAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BBCancelClick(Sender: TObject);
    procedure BBInsertClick(Sender: TObject);
    procedure deleteBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure CutClick(Sender: TObject);
    procedure PasteClick(Sender: TObject);
    procedure RBAllOrgClick(Sender: TObject);
    procedure RBInnerOrgClick(Sender: TObject);
    procedure RBOuterOrgClick(Sender: TObject);
    procedure DBGFromORGDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SBExpandClick(Sender: TObject);
    procedure SBCollapseClick(Sender: TObject);
    procedure acUserGroupExecute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FromOrgAfterScroll(DataSet: TDataSet);
    procedure N1Click(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure LoadTree(intType: Integer; intSelected : Integer);
    procedure terminateLosd(Sender: TObject);
    function Orgwhere:String;
    procedure vdbTreeDblClick(Sender: TObject);
    procedure vdbTreeGetImageIndex(Sender: TBaseVirtualTree;
      Node: PVirtualNode; Kind: TVTImageKind; Column: TColumnIndex;
      var Ghosted: Boolean; var ImageIndex: Integer);
    procedure vdbTreeFocusChanged(Sender: TBaseVirtualTree;
      Node: PVirtualNode; Column: TColumnIndex);
    procedure DBGFromORGDblClick(Sender: TObject);
    procedure qryTreeFetchProgress(DataSet: TCustomADODataSet; Progress,
      MaxProgress: Integer; var EventStatus: TEventStatus);
    procedure FormActivate(Sender: TObject);

  private
    FOrganizeMode : Boolean;
    _FirstTree:Boolean;


  public
    Done:boolean;
    Rootid:integer;
    SelectedId_new :Integer;
    InnerMode : Boolean;
    Property OrganizeMode:boolean read FOrganizeMode write SetOrganizeMode;
  end;

  type
    TOpenQuery = Class(TThread)
    private
      FReturnInt: Integer;
      FSelectedInt: Integer;
    Public
      constructor Create(vdb:TVirtualDBTree; qry: TADOQuery; intType : Integer; intSelectedId : Integer);
    protected
      qryThread: TADOQuery;
      vdbTreeThread: TVirtualDBTree;
      procedure Execute; override;
      property ReturnInt: Integer read FReturnInt write FReturnInt;
      property SelectedInt: Integer read FSelectedInt write FSelectedInt;
    end;

var
  FromOrgForm: TFromOrgForm;
  loadThread : TThread;
  Thread_Alive : Boolean;

implementation

uses
  FromOrgDialog, UMain, YShamsiDate, Dmu, Math , UGroupUser,
  DefineUserGroupUnit, WorkGroupDM, ComObj;
{$R *.dfm}
var
  SelectedNodeID:integer;
  SelectedNodeTitle:string;

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
    Result := '(IsInnerOrg=1)'
  else
    if not innerOrg.Checked and outerOrg.Checked then
      Result := '(isInnerOrg=0)'
    else
      Result := '';
end;

procedure TFromOrgForm.AInsertExecute(Sender: TObject);
var
  SelectedId : integer;
  S : string;
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

  SelectedId := qryTree.FieldByName('ID').AsInteger;
  if SelectedId = 1 then
    Exit;
  //showmessage(inttostr(SelectedId));
  IsInnerOrg := Dm.FromOrganizationsIsInnerOrg.AsBoolean;

  with TADOQuery.Create(nil) do
  begin
    Connection := Dm.YeganehConnection;
    SQL.Text := 'Select dbo.IS_Inner_ORG('+IntToStr(SelectedId)+')';
    open;
    IsInnerOrg := Fields[0].AsBoolean;
  end;

  FromOrgDialogF := TFromOrgDialogF.Create(Application);
  FromOrgDialogF.Fromorg.Open;
  FromOrgDialogF.FromOrg.Insert;
  FromOrgDialogF.FromorgPreCode.Value := Dm.DefaultOrgPreCode;
  FromOrgDialogF.FromOrgParentID.Value := SelectedID;//
  FromOrgDialogF.FromOrgCode.AsString := Exec_Get_NewOrgCode(SelectedId);
  FromOrgDialogF.FromOrgIsActive.AsBoolean := True;
  FromOrgDialogF.FromOrgIsInnerOrg.AsBoolean := IsInnerOrg;//
  FromOrgDialogF.FromorgGroupID.AsInteger := 0;

    FromOrgDialogF.ShowModal;
  if FromOrgDialogF.Done then
    LoadTree(1, SelectedId)
  else
    FromOrgDialogF.FromOrg.Cancel;

end;

procedure TFromOrgForm.ApostExecute(Sender: TObject);
begin
  inherited;
  Dm.FromOrganizations.Post;
  LoadTree(2, Dm.FromOrganizationsID.AsInteger);
  BBInsert.Enabled := True;
  Cut.Enabled := True;
end;

procedure TFromOrgForm.AdeleteExecute(Sender: TObject);
Var
  SelectedID, SelectedParentID : Integer;
begin
  inherited;
  SelectedId := qryTree.FieldByName('ID').AsInteger;

  if SelectedId < 5 then
  begin
    ShowMyMessage('ÅÌ€«„','”«“„«‰ „Ê—œ ‰Ÿ— ﬁ«»· ÊÌ—«Ì‘ ‰„Ì »«‘œ',[mbOK],mtInformation);
    Exit;
  end;

  SelectedParentId := qryTree.FieldByName('ParentID').AsInteger;

  if SelectedId <= 3 then
    Exit;

  if vdbTree.GetFirstSelected.ChildCount > 0 then
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
      if messageShowString(Get_sysAppMessage(36)+' '+qryTree.FieldByName('D').AsString+' '+Get_sysAppMessage(37),true)then
      begin
        dm.YeganehConnection.Execute('Delete From fromorganizations Where id='+IntToStr(Selectedid));
        //vdbTree.DeleteSelectedNodes;
        LoadTree(2, SelectedParentID);
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
  vdbTree.SetFocus;
end;

procedure TFromOrgForm.BBOKClick(Sender: TObject);
begin
  inherited;
  try
    if Assigned(loadThread) then
    begin
      Thread_Alive := False;
      //loadThread.Free;
      //qryTree.Cancel;
      loadThread.Terminate;
    end;

    done:=True;
    Close;
  except on e:Exception do
    ShowMessage('AB::' + e.Message);
  end;
end;

procedure TFromOrgForm.SEditChange(Sender: TObject);
var
  s:string;
  OrgType : String[1];
begin
  inherited;
  S := YeganehTrim(SEdit.Text);
  With FromOrg do
    if length(s)>=0  then
    begin
      Close;
      CommandText := 'Select ID,code, Title,ResponsibleStaffer,ParentID ' +
                     ' FROM dbo.FromOrganizations_fn( ' + IntToStr(_UserFromOrgID) + ')'+
                     ' Where isactive=1 and (Title like ''%' + S + '%'' or  ' +
                     ' ResponsibleStaffer like ''%' + S + '%'' or code like ''%' + S +'%'')';

      {Ranjbar 89.07.26 ID=144}  //›ﬁÿ ‰„«Ì‘ ·Ì”  œ—Ê‰ ”«“„«‰Ì
      if (RBInnerOrg.Checked)And(RBInnerOrg.Visible) then
       begin
        OrgType := '1';
        innerOrg.Visible := True;
        Label3.Visible := True;
       end;
      if (RBOuterOrg.Checked)And(RBOuterOrg.Visible) then
       begin
        OrgType := '0';
        innerOrg.Visible := False;
        Label3.Visible := False;
       end;
      if (RBInnerOrg.Checked)or(RBOuterOrg.Checked) then
        CommandText := 'Select ID,code, Title,ResponsibleStaffer,ParentID,IsInnerOrg ' +
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

procedure TFromOrgForm.FromOrg_oldAfterScroll(DataSet: TDataSet);
begin
  inherited;
  ECode.Text:=FromOrgcode.AsString;
  Erespon.Text:=FromOrgResponsibleStaffer.AsString;
end;

procedure TFromOrgForm.FormShow(Sender: TObject);
begin
  inherited;
  try
    PageControl.TabWidth := (PageControl.ClientWidth div Round(PageControl.PageCount)) - 3;
    _FirstTree := false;

    Dm.FromOrganizations.Close;
    Dm.FromOrganizations.Parameters.ParamByName('@FromOrgID').Value := IntToStr(_UserFromOrgID);
    Dm.FromOrganizations.Open;

    //LoadTree(2, Rootid);

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

    PageControl.ActivePageIndex := 1;

    //Ranjbar
    if _Kartable then
      Panel4.Visible := False; //Cut and Paste Button
    //BidiModeToRight(FromOrganizationsTree);
    //---
    SEditChange(Self);

    //SpeedButton1.OnClick(Self);
    RBAllOrg.Visible := True;
    RBInnerOrg.Visible := True;
    RBOuterOrg.Visible := True;

    SBCollapse.Enabled := False;
    SBExpand.Enabled := False;
    BitBtn1.Enabled:=False;

    BBInsert.Visible := false;
    EditBtn.Visible := false;
    deleteBtn.Visible := false;

    if  InnerMode then
      RBInnerOrg.Checked:= True
    else  RBOuterOrg.Checked:= True;

    //RBAllOrg.Checked:= True;
  except on e:Exception do
    ShowMessage('AB::' + e.Message);
  end;
end;

procedure TFromOrgForm.FormClose(Sender: TObject; var Action: TCloseAction);
var
  SelectedId:integer;
  title,respon,Code:widestring;
begin
  inherited;

  if Assigned(loadThread) then
  begin
    Thread_Alive := False;
    //qryTree.Cancel;
    loadThread.Terminate;
  end;

  dm.ListFromorg:=PageControl.ActivePageIndex=0;
  SetUserSetting('ListFromorg',dm.ListFromorg);

  dm.ChartorderbyTitle:=orderByTitle.Checked;

  SetUserSetting('ChartOrderByTitle',dm.ChartorderbyTitle);

  if Done then
  begin
    if PageControl.ActivePageIndex=0 then
    begin
      SelectedId:= qryTree.FieldByName('ID').AsInteger;
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
  end
  else
  begin
    _ResultOrgID := -1;
    _ResultOrgCode := '-1';
  end;
  //ShowMessage('Close Form');
  //if not qryTree.Active then
    //qryTree.Close;
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

procedure TFromOrgForm.EditBtnClick(Sender: TObject);
var
  SelectedId : integer;
begin
  inherited;
  SelectedId := qryTree.FieldByName('ID').AsInteger;

  if SelectedId < 5 then
  begin
    ShowMyMessage('ÅÌ€«„','”«“„«‰ „Ê—œ ‰Ÿ— ﬁ«»· ÊÌ—«Ì‘ ‰„Ì »«‘œ',[mbOK],mtInformation);
    Exit;
  end;

  FromOrgDialogF := TFromOrgDialogF.Create(Application);
  with FromOrgDialogF.Fromorg do
  begin
    Close;
    Parameters.ParamByName('id').Value := selectedid;
    Open;
  end;
  FromOrgDialogF.ShowModal;

  Dm.FromOrganizations.Locate('id',SelectedId,[]);

  if PageControl.ActivePageIndex = 0 then
    LoadTree(2, SelectedId)
end;

procedure TFromOrgForm.CutClick(Sender: TObject);
begin
  inherited;

  SelectedNodeID := qryTree.FieldByName('ID').AsInteger;

  if SelectedNodeID in [1,2,3,4] then
    exit;

  SelectedNodeTitle := qryTree.FieldByName('D').AsString;
  LblPaste.Caption := SelectedNodeTitle;
  LblPaste.Visible := True;

  Paste.Show;
end;

procedure TFromOrgForm.PasteClick(Sender: TObject);
var
  ParentID : integer;
  IsInnerOrg : Boolean;
begin
  inherited;

  ParentID := qryTree.FieldByName('ID').AsInteger;
  with TADOQuery.Create(nil) do
  begin
    Connection := Dm.YeganehConnection;
    SQL.Text := 'Select dbo.IS_Inner_ORG('+IntToStr(ParentID)+')';
    open;
    IsInnerOrg := Fields[0].AsBoolean;
  end;

  if messageShowString(' ¬Ì« «“ «‰ ﬁ«· ‘«ŒÂ '+DQuotedStr(SelectedNodeTitle)+' »Â “Ì— „Ã„Ê⁄Â '+DQuotedStr(qryTree.FieldByName('D').AsString)+'„ÿ„∆‰ Â” Ìœø ', true) then
  begin
    dm.YeganehConnection.Execute('update Fromorganizations set ParentId= '+IntToStr(ParentID)+' ,IsInnerOrg  = '+IntToStr(ifthen(IsInnerOrg,1,0))+' where id='+IntToStr(SelectedNodeID));
    LoadTree(2, ParentID);
    SelectedNodeID:=0;
    Paste.Hide;
    LblPaste.Caption := '';
    LblPaste.Visible := False;
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
    vdbTree.FullCollapse(nil);
  //---
end;

procedure TFromOrgForm.SBCollapseClick(Sender: TObject);
begin
  inherited;
  {Ranjbar 89.09.13 ID=215}
  if PageControl.ActivePageIndex = 0 then
    vdbTree.FullExpand(nil);
  //---
end;

procedure TFromOrgForm.acUserGroupExecute(Sender: TObject);
var
  SelectedId:Integer;
begin
  inherited;
  SelectedId := qryTree.FieldByName('ID').AsInteger;
  if FGroupUser=nil then
    FGroupUser:=TFGroupUser.Create(Self);
  FGroupUser.OrgID:=SelectedId;
  FGroupUser.ShowModal;
end;

procedure TFromOrgForm.Button1Click(Sender: TObject);
begin
  inherited;
  //flag := 1;
  SelectedId_new := qryTree.FieldByName('ID').AsInteger;
  DefineUserGroup:=TDefineUserGroup.Create(Application);
  DefineUserGroup.QChartWorkGroup.Close;
  DefineUserGroup.QChartWorkGroup.Open;
  DefineUserGroup.ShowModal;
  //flag := 0;
end;

procedure TFromOrgForm.FromOrgAfterScroll(DataSet: TDataSet);
begin
  inherited;
  ECode.Text:=FromOrgcode.AsString;
  Erespon.Text:=FromOrgResponsibleStaffer.AsString;
end;

procedure TFromOrgForm.N1Click(Sender: TObject);
begin
  inherited;
  PageControl.ActivePageIndex := 0;

  PageControlChange(Application);

  if (FromOrg.Active) And (FromOrg.RecordCount > 0) then
    qryTree.Locate('ID', FromOrgID.AsInteger, [loCaseInsensitive])
end;

procedure TFromOrgForm.PageControlChange(Sender: TObject);
begin
  if PageControl.ActivePageIndex = 0 then
  begin
    RBAllOrg.Visible := False;
//    RBAllOrg.Checked := True;
    RBInnerOrg.Visible := False;
    RBOuterOrg.Visible := False;

    SBCollapse.Enabled := True;
    SBExpand.Enabled := True;
    BitBtn1.Enabled:=True;
    //SBExpandClick(Self);

    BBInsert.Visible := true;
    EditBtn.Visible := true;
    deleteBtn.Visible := true;
  end
  else
  begin
    RBAllOrg.Visible := True;
    RBInnerOrg.Visible := True;
    RBOuterOrg.Visible := True;

    SBCollapse.Enabled := False;
    SBExpand.Enabled := False;
    BitBtn1.Enabled:=False;

    BBInsert.Visible := false;
    EditBtn.Visible := false;
    deleteBtn.Visible := false;
  end;
end;

procedure TFromOrgForm.vdbTreeDblClick(Sender: TObject);
begin
  inherited;
  if not OrganizeMode then
  begin
    close;
    done:=true;
  end;
end;

procedure TFromOrgForm.vdbTreeGetImageIndex(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Kind: TVTImageKind; Column: TColumnIndex;
  var Ghosted: Boolean; var ImageIndex: Integer);
begin
  inherited;

  if Assigned(Node) then
  begin
    if Kind = ikSelected then
      ImageIndex := 31
    else
      ImageIndex := 32;
  end;
end;

procedure TFromOrgForm.vdbTreeFocusChanged(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex);
Var
  SelectedId:integer;
  title,respon,Code:widestring;
begin
  inherited;
    SelectedId := qryTree.FieldByName('ID').AsInteger;
    Exec_get_FromOrganizationsTitle_byID(SelectedId,title,respon,Code);
    ECode.Text := code;
    Erespon.Text := respon;
end;

procedure TFromOrgForm.LoadTree(intType: Integer; intSelected: Integer);
var
  SelectedNode : PVirtualNode;
begin

  Application.ProcessMessages;

  try
    try
      vdbTree.BeginUpdate;
      with qryTree do
      begin
        close;
        Open;
      end;
      vdbTree.EndUpdate;
    except on e:Exception do
      ShowMessage(e.Message);
    end;
  finally
    Case intType of
      1 :
        begin
          qryTree.Locate('ID', intSelected, [loCaseInsensitive]);
          SelectedNode := vdbTree.GetFirstSelected;

          vdbTree.Expanded[SelectedNode] := True;

          if PageControl.ActivePageIndex = 0 then
            vdbTree.SetFocus;
        end;
      2 :
        begin
          qryTree.Locate('ID', intSelected, [loCaseInsensitive]);

          if PageControl.ActivePageIndex = 0 then
            vdbTree.SetFocus;

        end;
    else
      //
    end;
  end;

{  try
    loadThread := TOpenQuery.Create(vdbTree, qryTree, intType, intSelected);
    loadThread.OnTerminate := terminateLosd;
    loadThread.Resume;
  except on e:Exception do
    ShowMessage('ABC::' + e.Message);
  end;
}
end;

{ TOpenQuery }

constructor TOpenQuery.Create(vdb: TVirtualDBTree; qry: TADOQuery; intType : Integer; intSelectedId : Integer);
begin
  try
    inherited Create(False);
    Thread_Alive := True;

    FreeOnTerminate := True;

    vdbTreeThread := vdb;
    qryThread := qry;
    FReturnInt := intType;
    FSelectedInt := intSelectedId;
  except on e:Exception do
    ShowMessage('ABD::' + e.Message);
  end;
end;

procedure TOpenQuery.Execute;
var
  strTime : String;
begin
  inherited;

  Screen.Cursor := crAppStart;
  //strTime := FormatDateTime('hh:mm:ss.zzz', Now());
  vdbTreeThread.BeginUpdate;

  qryThread.close;

  try
    try
      qryThread.Open;
    except on e:Exception do
      ShowMessage('BA::' + e.Message);
    end;
  finally
    vdbTreeThread.EndUpdate;

    Screen.Cursor := crDefault;
    //strTime := strTime + '   ' + FormatDateTime('hh:mm:ss.zzz', Now());
    //ShowMessage(strTime);
  end;
end;

procedure TFromOrgForm.terminateLosd(Sender: TObject);
var
  oq: TOpenQuery;
  intType, intSelected : Integer;
  SelectedNode : PVirtualNode;
begin
//  Application.ProcessMessages;

  if not Thread_Alive then
    Exit;

  if not qryTree.Active then
    Exit;

  try
    //if not Thread_Alive then
      //qryTree.Recordset.Cancel;

    oq := TOpenQuery(Sender);
    intType := oq.ReturnInt;
    intSelected := oq.SelectedInt;

    Case intType of
      1 :
        begin
          qryTree.Locate('ID', intSelected, [loCaseInsensitive]);
          SelectedNode := vdbTree.GetFirstSelected;

          vdbTree.Expanded[SelectedNode] := True;

          if PageControl.ActivePageIndex = 0 then
            vdbTree.SetFocus;
        end;
      2 :
        begin
          qryTree.Locate('ID', intSelected, [loCaseInsensitive]);

          if PageControl.ActivePageIndex = 0 then
            vdbTree.SetFocus;

        end;
    else
      //
    end;

  except on e:Exception do
    ShowMessage('AKJ::' + e.Message);
  end;
end;

procedure TFromOrgForm.DBGFromORGDblClick(Sender: TObject);
begin
  try
    inherited;
    if Assigned(loadThread) then
    begin
      Thread_Alive := False;
      //qryTree.Cancel;
      loadThread.Terminate;
    end;

    done:=True;
    Close;
  except on e:Exception do
    ShowMessage('ABKJKL::' + e.Message);
  end;

end;

procedure TFromOrgForm.qryTreeFetchProgress(DataSet: TCustomADODataSet;
  Progress, MaxProgress: Integer; var EventStatus: TEventStatus);
begin
  inherited;
//  if not Thread_Alive then
//    EventStatus := esCancel;
end;

procedure TFromOrgForm.FormActivate(Sender: TObject);
begin
  inherited;
  LoadTree(2, Rootid);
end;

end.
