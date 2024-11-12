unit UserAccArchiveFm;
{Ranjbar}
interface

uses
  BaseUnit , Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, CheckLst, YchecklistBox, DBActns, ActnList,
  XPStyleActnCtrls, ActnMan, ToolWin, ActnCtrls, ExtCtrls, DBCtrls, DB,
  ADODB, Grids, DBGrids, ImgList, ComCtrls, DBTreeView, xpPanel,
  AdvGlowButton;

type
  TFmUserAccArchive = class(TMBaseForm)
    Panel1: TxpPanel;
    Label1: TLabel;
    Panel3: TPanel;
    Label2: TLabel;
    DBTextUserName: TDBText;
    SpeedButton1: TAdvGlowButton;
    DBLkCBUserSec: TDBLookupComboBox;
    Label3: TLabel;
    StatImages: TImageList;
    DBTreeArchive: TDBTreeView;
    SBAll: TAdvGlowButton;
    SBNone: TAdvGlowButton;
    BitBtnEdit: TAdvGlowButton;
    BitBtnPost: TAdvGlowButton;
    pnlMain: TPanel;
    procedure FormShow(Sender: TObject);
    procedure BitBtnEditClick(Sender: TObject);
    procedure BitBtnPostClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBLkCBUserSecClick(Sender: TObject);
    procedure DBTreeArchiveClick(Sender: TObject);
    procedure DBTreeArchiveKeyPress(Sender: TObject; var Key: Char);
    procedure SBAllClick(Sender: TObject);
    procedure SBNoneClick(Sender: TObject);
  private
    procedure ToggleTreeViewCheckBoxes(Node:TTreeNode; cUnChecked, cChecked:integer;All:boolean);
  public
    //procedure ChangeChLiBoArchiveData;

  end;

var
  FmUserAccArchive: TFmUserAccArchive;

implementation

uses userDefine, UserDefineDM, Dmu, UMain,YShamsiDate;

{$R *.dfm}

procedure TFmUserAccArchive.FormShow(Sender: TObject);
begin
  inherited;
  {if _Kartable then
     ArchiveCenterID := _userid
  else
     ArchiveCenterID := _ArchiveCenterID;//“Ê‰ò‰ „—ò“Ì}

  With DMUserDefine do
  begin
     //œ»Ì—Œ«‰Â Â«Ì ﬁ«Ì· œ” —”Ì  Ê”ÿ ﬂ«—»—«‰
     QrUserSec.Close;
     QrUserSec.Parameters.ParamByName('ArchiveCenterID').Value := dm.UsersId.AsInteger;
     QrUserSec.Open;

     DBLkCBUserSec.KeyValue := QrUserSecSecID.AsInteger;
     DBLkCBUserSecClick(Nil);
  end;
  //MainForm.BidiModeToRight(ArchiveTree);
  //DBTreeArchive.FullExpand;
end;


procedure TFmUserAccArchive.BitBtnEditClick(Sender: TObject);
begin
  inherited;
  if DMUserDefine.QrUserSec.RecordCount = 0 then
  begin
     ShowMessage('«Ì‰ ò«—»— »Â ÂÌç œ»Ì—Œ«‰Â «Ì œ” —”Ì ‰œ«—œ');
     Exit;
  end;
     
  DMUserDefine.Sp_Sel_UserAccArchive.Edit;
  DBTreeArchive.ReadOnly := False;
  BitBtnPost.Enabled := True;
  BitBtnEdit.Enabled := False;
  SBAll.Enabled := True;
  SBNone.Enabled := True;
  DBLkCBUserSec.Enabled := False;
end;

procedure TFmUserAccArchive.BitBtnPostClick(Sender: TObject);
Var
   I:integer;
begin
  inherited;
  With DMUserDefine ,Sp_Sel_UserAccArchive do
     if State in [dsInsert,dsEdit] then
     begin
        For I:=0 to DBTreeArchive.Items.Count - 1 do
            if Locate('ArchiveFolderID',Integer(DBTreeArchive.Items.Item[I].Data),[]) then
            begin
               Edit;
               Sp_Sel_UserAccArchiveSecID.AsInteger:=DBLkCBUserSec.KeyValue;

               if DBTreeArchive.Items.Item[I].StateIndex = 2 then //1:UnChecked  2:Checked
                  Sp_Sel_UserAccArchiveISAccess.AsBoolean := True
               else
                  Sp_Sel_UserAccArchiveISAccess.AsBoolean := False;
               Post;
            end;
        BitBtnPost.Enabled := False;
        BitBtnEdit.Enabled := True;
        DBTreeArchive.ReadOnly := True;
        SBAll.Enabled := False;
        SBNone.Enabled := False;
     end;
  DBLkCBUserSec.Enabled := True;
end;

procedure TFmUserAccArchive.SpeedButton1Click(Sender: TObject);
begin
  inherited;
   if DMUserDefine.Sp_Sel_UserAccArchive.State in [dsEdit,dsInsert] then
   begin
      if messageShowString('»«‰ò «ÿ·«⁄« Ì œ— Õ«·  ÊÌ—«Ì‘ „Ì»«‘œ . ¬Ì« „«Ì· »Â –ŒÌ—Â «ÿ·«⁄«  ŒÊœ Â” Ìœø',True) then
         BitBtnPost.Click;
   end;
   Close;
end;

procedure TFmUserAccArchive.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   inherited;
   With DMUserDefine do
   begin
      QrUserSec.Close;
      QrArchiveFolder.Close;
      Sp_Sel_UserAccArchive.Close;
   end;
end;

procedure TFmUserAccArchive.DBLkCBUserSecClick(Sender: TObject);
Var
   I:integer;
begin
  inherited;
  With DMUserDefine do
  begin
     if QrUserSec.RecordCount = 0 then
        Exit;
     Try
        Screen.Cursor := crHourGlass;
        QrArchiveFolder.Close;
        QrArchiveFolder.Parameters.ParamByName('ArchiveCenterID').Value := QrUserSecArchiveCenterID.AsInteger;
        QrArchiveFolder.Open;

        if QrArchiveFolder.RecordCount > 0 then
        begin
           Sp_Sel_UserAccArchive.Close;
           Sp_Sel_UserAccArchive.Parameters.ParamByName('@UserID').Value := dm.UsersId.AsInteger;
           Sp_Sel_UserAccArchive.Parameters.ParamByName('@SecID').Value := QrUserSecSecID.AsInteger;
           Sp_Sel_UserAccArchive.Open;

           //QrArchiveFolder.First;
           //œ«œ‰ œ” —”Ì »Â “Ê‰ò‰ Â«Ì ÃœÌœ  ⁄—Ì› ‘œÂ
           For I:=0 to DBTreeArchive.Items.Count-1 do
           begin
              if not Sp_Sel_UserAccArchive.Locate('ArchiveFolderID',Integer(DBTreeArchive.Items.Item[I].Data),[]) then
              begin
                 Sp_Sel_UserAccArchive.Insert;
                 Sp_Sel_UserAccArchiveUserID.AsInteger := dm.UsersId.AsInteger;
                 Sp_Sel_UserAccArchiveArchiveFolderID.AsInteger := Integer(DBTreeArchive.Items.Item[I].Data) ;
                 Sp_Sel_UserAccArchiveISAccess.AsBoolean := False;
                 Sp_Sel_UserAccArchiveSecID.AsInteger := QrUserSecSecID.AsInteger;
                 Sp_Sel_UserAccArchive.Post;
              end;

              Sp_Sel_UserAccArchive.Locate('ArchiveFolderID',Integer(DBTreeArchive.Items.Item[I].Data),[]);
              if Sp_Sel_UserAccArchiveISAccess.AsBoolean then
                 DBTreeArchive.Items.Item[I].StateIndex := 2
              else
                 DBTreeArchive.Items.Item[I].StateIndex := 1;
           end;
        end;
     Finally
        Screen.Cursor := crDefault;
     End;
  end;
end;


procedure TFmUserAccArchive.ToggleTreeViewCheckBoxes(Node:TTreeNode; cUnChecked, cChecked:integer;All:boolean);
var
  tmp:TTreeNode;
begin
  if Assigned(Node) then
  begin
    if not Node.Expanded then
     Node.Expand(false);

    if Node.StateIndex = cUnChecked then
      Node.StateIndex := cChecked

    else if Node.StateIndex = cChecked then
      Node.StateIndex := cUnChecked;

     if not all then exit;

    if Node.GetNext<>nil then
      if Node.Level<Node.GetNext.Level then
      begin
        tmp := Node.GetNext;
        while (Assigned(tmp)) and (tmp.Level>Node.Level) do
        begin
          tmp.StateIndex := Node.StateIndex;
          tmp := tmp.getNext;
        end;
      end;
  end;
end;




procedure TFmUserAccArchive.DBTreeArchiveClick(Sender: TObject);
Var
  P:TPoint;
  I,J,StateIndex,LastChildAbIndex,Count:Integer;

begin
  inherited;
  if DBTreeArchive.ReadOnly then
     Exit;

  GetCursorPos(P);
  P := TTreeView(Sender).ScreenToClient(P);
  if (htOnStateIcon in TTreeView(Sender).GetHitTestInfoAt(P.X,P.Y)) then
     ToggleTreeViewCheckBoxes(TDBTreeView(Sender).Selected,1,2,false);

  {Ranjbar}
  //Count := DBTreeArchive.DataSource.DataSet.RecordCount;
  //DBTree_SetCheckState(DBTreeArchive,2,1,Count);
  DBTree_SetCheckState(DBTreeArchive,2,1);
  //---
end;

procedure TFmUserAccArchive.DBTreeArchiveKeyPress(Sender: TObject;var Key: Char);
begin
  inherited;
  if Key = #32 then
     ToggleTreeViewCheckBoxes(TDBTreeView(Sender).Selected,1,2,true);
end;

procedure TFmUserAccArchive.SBAllClick(Sender: TObject);
Var
   I:integer;
begin
  inherited;
   For I:=0 to DBTreeArchive.Items.Count-1 do
      DBTreeArchive.Items.Item[I].StateIndex := 2 ;
end;

procedure TFmUserAccArchive.SBNoneClick(Sender: TObject);
Var
   I:integer;
begin
  inherited;
   For I:=0 to DBTreeArchive.Items.Count-1 do
      DBTreeArchive.Items.Item[I].StateIndex := 1 ;
end;

end.



