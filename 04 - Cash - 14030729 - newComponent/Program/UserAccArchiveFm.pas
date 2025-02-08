unit UserAccArchiveFm;
{Ranjbar}
interface

uses
  BaseUnit , Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, CheckLst, YchecklistBox, DBActns, ActnList,
  XPStyleActnCtrls, ActnMan, ToolWin, ActnCtrls, ExtCtrls, DBCtrls, DB,
  ADODB, Grids, DBGrids, ImgList, ComCtrls, DBTreeView;

type
  TFmUserAccArchive = class(TMBaseForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    StatImages: TImageList;
    DBTreeArchive: TDBTreeView;
    SBAll: TSpeedButton;
    SBNone: TSpeedButton;
    BitBtnPost: TBitBtn;
    BitBtnEdit: TBitBtn;
    SpeedButton3: TSpeedButton;
    SpeedButton2: TSpeedButton;
    BBCancel: TBitBtn;
    Panel2: TPanel;
    Label2: TLabel;
    DBTextUserName: TDBText;
    Label3: TLabel;
    DBLkCBSecret: TDBLookupComboBox;
    Label4: TLabel;
    DBTxtArchiveCenterTitle: TDBText;
    procedure FormShow(Sender: TObject);
    procedure BitBtnEditClick(Sender: TObject);
    procedure BitBtnPostClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBLkCBSecretClick(Sender: TObject);
    procedure DBTreeArchiveClick(Sender: TObject);
    procedure DBTreeArchiveKeyPress(Sender: TObject; var Key: Char);
    procedure SBAllClick(Sender: TObject);
    procedure SBNoneClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BBCancelClick(Sender: TObject);
  private
    procedure ToggleTreeViewCheckBoxes(Node:TTreeNode;cUnChecked,cChecked:integer;All:boolean);
  public
    //procedure ChangeChLiBoArchiveData;
  end;
  
const
 WS_EX_NOINHERITLAYOUT = $00100000;
 WS_EX_LAYOUTRTL = $00400000;

var
  FmUserAccArchive: TFmUserAccArchive;

implementation

Uses userDefine,UserDefineDM,Dmu,UMain,YShamsiDate;

{$R *.dfm}

Procedure TFmUserAccArchive.FormShow(Sender: TObject);
begin
   inherited;
   {if _Kartable then
      ArchiveCenterID := _userid
   else
      ArchiveCenterID := _ArchiveCenterID;//“Ê‰ò‰ „—ò“Ì}

   With DMUserDefine do
   begin
      QrUserSec.Close;
      QrUserSec.Parameters.ParamByName('UserID').Value := Dm.UsersId.AsInteger;
      QrUserSec.Open;

      DBLkCBSecret.KeyValue := QrUserSecSecID.AsInteger;
      DBLkCBSecretClick(Nil);
   end;
   //MainForm.BidiModeToRight(ArchiveTree);
   //DBTreeArchive.FullExpand;
end;


procedure TFmUserAccArchive.BitBtnEditClick(Sender: TObject);
begin
   inherited;
   if DMUserDefine.QrUserSec.RecordCount = 0 then
   begin
      ShowMessage('«Ì‰ ﬂ«—»— »Â ÂÌç œ› — »«Ìê«‰Ì œ” —”Ì ‰œ«—œ');
      Exit;
   end;

   DMUserDefine.Sp_Sel_UserAccArchive.Edit;
   DBTreeArchive.ReadOnly := False;
   BitBtnPost.Enabled := True;
   BitBtnEdit.Enabled := False;
   SBAll.Enabled := True;
   SBNone.Enabled := True;
   BBCancel.Enabled := True;
   DBLkCBSecret.Enabled := False;
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
               Sp_Sel_UserAccArchiveSecID.AsInteger:=DBLkCBSecret.KeyValue;  // Amin 1391/06/26
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
        BBCancel.Enabled := False;
     end;
  DBLkCBSecret.Enabled := True;
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

procedure TFmUserAccArchive.DBLkCBSecretClick(Sender: TObject);
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
           Sp_Sel_UserAccArchive.Parameters.ParamByName('@UserID').Value := Dm.UsersId.AsInteger;
           Sp_Sel_UserAccArchive.Parameters.ParamByName('@ArchiveCenterID').Value := QrUserSecArchiveCenterID.AsInteger;
           Sp_Sel_UserAccArchive.Parameters.ParamByName('@SecID').Value := QrUserSecSecID.AsInteger; // Amin 1391/06/26
           Sp_Sel_UserAccArchive.Open;

           //QrArchiveFolder.First;
           //œ«œ‰ œ” —”Ì »Â “Ê‰ò‰ Â«Ì ÃœÌœ  ⁄—Ì› ‘œÂ
           For I:=0 to DBTreeArchive.Items.Count-1 do
           begin
           Sp_Sel_UserAccArchiveArchiveFolderID.Value;
              if not Sp_Sel_UserAccArchive.Locate('ArchiveFolderID',Integer(DBTreeArchive.Items.Item[I].Data),[]) then
              begin
                 Sp_Sel_UserAccArchive.Insert;
                 Sp_Sel_UserAccArchiveUserID.AsInteger := Dm.UsersId.AsInteger;
                 Sp_Sel_UserAccArchiveArchiveFolderID.AsInteger := Integer(DBTreeArchive.Items.Item[I].Data) ;
                 Sp_Sel_UserAccArchiveISAccess.AsBoolean := False;
                 //Sp_Sel_UserAccArchiveSecID.AsInteger := QrUserSecSecID.AsInteger;
                 Sp_Sel_UserAccArchiveArchiveCenterID.AsInteger := QrUserSecArchiveCenterID.AsInteger;
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


procedure SetWinControlBiDi(Control: TWinControl);
var
 ExStyle: Longint;
begin
 ExStyle := GetWindowLong(Control.Handle, GWL_EXSTYLE);
 SetWindowLong(Control.Handle, GWL_EXSTYLE, ExStyle or WS_EX_RTLREADING or WS_EX_RIGHT
   or WS_EX_LAYOUTRTL or WS_EX_NOINHERITLAYOUT );
end;



procedure TFmUserAccArchive.DBTreeArchiveClick(Sender: TObject);
Var
  P:TPoint;
  I,J,StateIndex,LastChildAbIndex,Count,SP:Integer;
begin
  inherited;

  if DBTreeArchive.ReadOnly then
     Exit;

  GetCursorPos(P);
  P := TTreeView(Sender).ScreenToClient(P);
  if (htOnStateIcon in TTreeView(Sender).GetHitTestInfoAt({„‰›Ì »Œ«ÿ— —«”  çÌ‰}-P.x,P.Y)) then
     ToggleTreeViewCheckBoxes(TDBTreeView(Sender).Selected,1,2,false);

  {Ranjbar}
  DBTree_SetCheckState(DBTreeArchive,2,1); //Check = 2 , Uncheck = 1
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

procedure TFmUserAccArchive.FormCreate(Sender: TObject);
begin
   inherited;
   DMUserDefine := TDMUserDefine.Create(Self);
   SetWinControlBiDi(DBTreeArchive);
//   dbTreeArchive.Items.
end;

procedure TFmUserAccArchive.FormClose(Sender: TObject;var Action: TCloseAction);
begin
   inherited;
   FreeAndNil(DMUserDefine);
end;

procedure TFmUserAccArchive.SpeedButton3Click(Sender: TObject);
begin
   inherited;
   DBTreeArchive.FullCollapse;
end;

procedure TFmUserAccArchive.SpeedButton2Click(Sender: TObject);
begin
   inherited;
   DBTreeArchive.FullExpand;
end;

procedure TFmUserAccArchive.BBCancelClick(Sender: TObject);
begin
   inherited;
   
   if DMUserDefine.Sp_Sel_UserAccArchive.State = dsEdit then
   begin
      DMUserDefine.Sp_Sel_UserAccArchive.Cancel;
      DBTreeArchive.ReadOnly := True;
      BitBtnPost.Enabled := False;
      BitBtnEdit.Enabled := True;
      SBAll.Enabled := False;
      SBNone.Enabled := False;
      BBCancel.Enabled := False;
      DBLkCBSecret.Enabled := True;
      DBLkCBSecretClick(Nil);
   end;
end;

end.



