 unit LetterArchive;

interface

uses
   Graphics,Forms,  Dialogs, BaseUnit, DB, ActnList, ActnMan, ADODB,
  Controls, Grids, DBGrids, YDbgrid, Buttons, StdCtrls, Classes,sysutils,
  ExtActns, XPStyleActnCtrls, xpWindow, xpBitBtn, ExtCtrls, ComCtrls ;

type
  TLetterArchiveform = class(TMBaseForm)
    ActionManager: TActionManager;
    Add: TAction;
    Delete: TAction;
    Aexit: TAction;
    APost: TAction;
    Panel1: TPanel;
    Panel2: TPanel;
    DBG: TYDBGrid;
    ExitBtn: TBitBtn;
    xpBitBtn1: TBitBtn;
    SpeedButton3: TBitBtn;
    SpeedButton4: TBitBtn;
    BitBtn2: TBitBtn;
    Edit1: TEdit;
    Label1: TLabel;
    procedure AddExecute(Sender: TObject);
    procedure DeleteExecute(Sender: TObject);
    procedure AexitExecute(Sender: TObject);
    function  FolderId:integer;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure APostExecute(Sender: TObject);
    procedure DBGNeedColorCondition(Column: TColumn; State: TGridDrawState;
      var Color: TColor);
    function NewID(i:byte):integer;
    procedure ExitBtnClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);


  private
  public
    TypeId: byte ;
    userID: integer;
    LetterID:integer;
  end;

var
  LetterArchiveform: TLetterArchiveform;

implementation


uses
  FromOrgU, Dmu, UMain, businessLayer, ArchiveOrganize;


{$R *.dfm}
var
  SelectedItems: TStrings;


procedure TLetterArchiveform.AddExecute(Sender: TObject);
var
  i,J:integer;
begin
  inherited;
  J:=FolderId;  //Create ArchiveOrganizeForm
  if J<>0 then
  begin
    Exec_insert_LetterArchiveFolder(J,Letterid,_Today,1,'');

    if SelectedItems.Count>0  then
      for i:=0 to SelectedItems.Count-1 do
      begin
        if StrToInt(SelectedItems[i])<>Letterid then
          Exec_insert_LetterArchiveFolder(J,strtoint(SelectedItems[i]),_Today,1,'');
      end;

    DSForm.DataSet:= Exec_get_ArchiveFolder_byUserID_and_Letterid(LetterID,userid);
  end;
end;

function TLetterArchiveform.FolderId:integer;
begin
  inherited;
  ArchiveOrganizeForm:=TArchiveOrganizeForm.Create(Application);
  ArchiveOrganizeForm.OrganizeMode:=false;
  ArchiveOrganizeForm.ShowModal;
  if ArchiveOrganizeForm.done then
    Result:=_ResultFolderID
  else
    Result:=0;
end;

procedure TLetterArchiveform.DeleteExecute(Sender: TObject);
begin
  inherited;
  Exec_delete_LetterArchiveFolder(DSForm.DataSet.fieldbyname('LetterArchiveid').AsInteger);
  DSForm.DataSet := Exec_get_ArchiveFolder_byUserID_and_Letterid(LetterID,userid);
end;

procedure TLetterArchiveform.AexitExecute(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TLetterArchiveform.FormShow(Sender: TObject);
begin
  inherited;
  DSForm.DataSet:= Exec_get_ArchiveFolder_byUserID_and_Letterid(LetterID,userid);
end;

procedure TLetterArchiveform.FormCreate(Sender: TObject);
begin
  inherited;
  DBG.Color:=dm.GetValue(1009);
  if _Kartable then
    userid:=_userid
  else
    userid:=0;

  SelectedItems := _selectedRecommitesID;
end;

procedure TLetterArchiveform.CheckBox1Click(Sender: TObject);
begin
  inherited;
  ShowMsg(47);
end;

procedure TLetterArchiveform.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if DSForm.DataSet.state in [dsedit, dsinsert] then
    DSForm.DataSet.Post
end;

procedure TLetterArchiveform.APostExecute(Sender: TObject);
var
  i: integer;
begin
  inherited;
  i:=0;
  if trim(Edit1.Text)<>'' then
    if _Kartable then
      i := Exec_get_ArchiveFolder_byUserID_and_Place(_userid ,Edit1.Text)
    else
      i := Exec_get_ArchiveFolder_byUserID_and_Place(0 ,Edit1.Text);

  if i <> 0 then
  begin
    Exec_insert_LetterArchiveFolder(i,Letterid,_Today,1,'');
    DSForm.DataSet:= Exec_get_ArchiveFolder_byUserID_and_Letterid(LetterID,userid);
  end;
  edit1.Text:='';
  Edit1.SetFocus;
end;

procedure TLetterArchiveform.DBGNeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Color: TColor);
begin
  inherited;
  if dm.Select_LetterReCommiteIsInnerOrg.AsBoolean then
    Color:=$00FFE6FF
  else
    Color:=$00FFD3A8;
end;

function TLetterArchiveform.NewID(i:byte):integer;
begin
  inherited;
  Result:=Exec_NewRecommiteID(LetterID,i);
end;

procedure TLetterArchiveform.ExitBtnClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TLetterArchiveform.BitBtn2Click(Sender: TObject);
begin
  inherited;
  APost.Execute
end;

procedure TLetterArchiveform.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  add.Execute;
end;

procedure TLetterArchiveform.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  Delete.Execute;
end;

procedure TLetterArchiveform.xpBitBtn1Click(Sender: TObject);
var
  s: string;
begin
  inherited;
  with DSForm.DataSet do
    if RecordCount>0 then
      if dm.Y_InputQuery(' Ê÷ÌÕ« ',FieldByName('ArchiveNotes').Value,s) then
      begin
        edit;
        FieldByName('ArchiveNotes').Value:=s;
        post;
        ExitBtn.SetFocus;
      end;
end;

end.
