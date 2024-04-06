 unit LetterArchive;

interface

uses
   Graphics,Forms,  Dialogs, BaseUnit, DB, ActnList, ActnMan, ADODB,
  Controls, Grids, DBGrids, YDbgrid, Buttons, StdCtrls, Classes,sysutils,
  ExtActns,  Menus, XPStyleActnCtrls, ExtCtrls ;

type
  TLetterArchiveform = class(TMBaseForm)
    Label2: TLabel;
    ActionManager: TActionManager;
    Add: TAction;
    Delete: TAction;
    Aexit: TAction;
    APost: TAction;
    Panel1: TPanel;
    SpeedButton4: TBitBtn;
    SpeedButton3: TBitBtn;
    xpBitBtn1: TBitBtn;
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    DBG: TYDBGrid;
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
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);


  private
  public
  TypeId: byte ;
  LetterID:integer;
  end;

var
  LetterArchiveform: TLetterArchiveform;

implementation


uses FromOrgU,  Dmu,  UMain, businessLayer, ArchiveOrganize;


{$R *.dfm}

 var SelectedItems: TStrings;
 
procedure TLetterArchiveform.AddExecute(Sender: TObject);
VAR i,J:integer;
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

     DSForm.DataSet:= Exec_get_ArchiveFolder_byUserID_and_Letterid(LetterID,_Userid);
  end;
end;

function TLetterArchiveform.FolderId:integer;
begin
  inherited;
  ArchiveOrganizeForm := TArchiveOrganizeForm.Create(Application);
  {Ranjbar}
  ArchiveOrganizeForm.OrganizeMode := False;
  //---
  ArchiveOrganizeForm.ShowModal;
  
  if ArchiveOrganizeForm.done then
     Result:=_ResultFolderID
  else
     Result:=0;
end;


procedure TLetterArchiveform.DeleteExecute(Sender: TObject);
var index: integer; // Amin 1391/11/08
   Items : TStrings;   // Amin 1391/11/08
begin
   inherited;
   // Amin 1391/11/28 Exec_delete_LetterArchiveFolder(DSForm.DataSet.fieldbyname('LetterArchiveid').AsInteger);
   // Amin 1391/11/28 Start
   {    if (Project = 'Dabir') then
         Items := _SelectedLettersID
       else
         Items := _SelectedRecommitesID;
         
      for index:= 0 to Items.Count - 1 do
         Exec_delete_LetterArchive(DSForm.DataSet.fieldbyname('ArchiveFolderID').AsInteger, StrToInt(Items[index]));     }


//  ShowMessage(IntToStr(DSForm.DataSet.fieldbyname('LetterArchiveid').AsInteger));

   // Amin 1391/11/28 End
   Exec_delete_LetterArchiveFolder(DSForm.DataSet.fieldbyname('LetterArchiveid').AsInteger);
   DSForm.DataSet:= Exec_get_ArchiveFolder_byUserID_and_Letterid(LetterID,_Userid);
end;


procedure TLetterArchiveform.AexitExecute(Sender: TObject);
begin
  inherited;
 close;
end;


procedure TLetterArchiveform.FormShow(Sender: TObject);
begin
  inherited;
  DSForm.DataSet := Exec_get_ArchiveFolder_byUserID_and_Letterid(LetterID,_Userid);
end;

procedure TLetterArchiveform.FormCreate(Sender: TObject);
begin
  inherited;
  if _Kartable then
     SelectedItems := _selectedRecommitesID
  else
     SelectedItems := _selectedLettersID;

end;

procedure TLetterArchiveform.CheckBox1Click(Sender: TObject);
begin
  inherited;
  ShowMsg(47);
end;

procedure TLetterArchiveform.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if DSForm.DataSet.state in [dsedit,dsinsert] then
     DSForm.DataSet.Post;
end;

procedure TLetterArchiveform.APostExecute(Sender: TObject);
var i, index: integer; // Amin 1391/11/08
   Items : TStrings;   // Amin 1391/11/08
begin
  inherited;
  i:=0;
  if trim(Edit1.Text)<>'' then
   i:=Exec_get_ArchiveFolder_byUserID_and_Place(_Userid ,Edit1.Text);

 if i<>0 then
   begin
       // Amin 1391/11/08 Start
       if Project = 'Dabir' then
         Items := _SelectedLettersID
       else
         Items := _SelectedRecommitesID;
      for index:= 0 to Items.Count - 1 do  // Amin 1391/11/08
          Exec_insert_LetterArchiveFolder(i,StrToInt(Items[index]),_Today,1,'');  // Amin 1391/11/08
      // Amin 1391/11/08 Exec_insert_LetterArchiveFolder(i,Letterid,_Today,1,'');
       // Amin 1391/11/08 End
    DSForm.DataSet:= Exec_get_ArchiveFolder_byUserID_and_Letterid(LetterID,_Userid);
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

procedure TLetterArchiveform.BitBtn1Click(Sender: TObject);
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
  Add.Execute;
end;

procedure TLetterArchiveform.SpeedButton3Click(Sender: TObject);
begin
  inherited;
Delete.Execute;
end;

procedure TLetterArchiveform.xpBitBtn1Click(Sender: TObject);
var s: string;
begin
   inherited;
   with DSForm.DataSet do
   if RecordCount>0 then
   if dm.Y_InputQuery(' Ê÷ÌÕ« ',FieldByName('ArchiveNotes').Value,s,'') then 
     begin
      edit;
      FieldByName('ArchiveNotes').Value:=s;
      post;
     end;
end;

end.
