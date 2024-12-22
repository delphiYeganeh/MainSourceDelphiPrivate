unit LetterEditFm;
{Ranjbar 89.07.08 ID=12}
interface

Uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, xpWindow, ExtActns, ActnList, DB, Buttons, ExtCtrls,
  Grids, DBGrids, DBCtrls, StdCtrls, YDbgrid, Menus, AdvGlowButton;

Type
  TFmLetterEdit = class(TMBaseForm)
    Panel1: TPanel;
    RepPanel: TPanel;
    Panel3: TPanel;
    SpeedButton1: TAdvGlowButton;
    DBLkCBUsers: TDBLookupComboBox;
    Label7: TLabel;
    BitBtn2: TAdvGlowButton;
    BtnWord: TAdvGlowButton;
    BtnExcel: TAdvGlowButton;
    YDBGrid1: TYDBGrid;
    PopupMenu1: TPopupMenu;
    Word1: TMenuItem;
    Excel1: TMenuItem;
    pnlMain: TPanel;
    procedure SBExitClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBLkCBUsersClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BtnWordClick(Sender: TObject);
    procedure BtnExcelClick(Sender: TObject);
    procedure Word1Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
  private
    procedure Close_Open_QrLetterEdit(aLetterID,aUsersID : integer);
  public
    LetterID , UsersID : Integer;
  end;

Var
   FmLetterEdit: TFmLetterEdit;

implementation

Uses LetterEditDM,Dmu,YShamsiDate;

{$R *.dfm}

procedure TFmLetterEdit.SBExitClick(Sender: TObject);
begin
   inherited;
   Close;
end;

procedure TFmLetterEdit.FormCreate(Sender: TObject);
begin
   inherited;
   DMLetterEdit := TDMLetterEdit.Create(Self);
   Qry_CloseAllQry(DMLetterEdit);
end;

procedure TFmLetterEdit.Close_Open_QrLetterEdit(aLetterID,aUsersID : integer);
begin
   inherited;

   With DMLetterEdit do
   begin
      QrLetterEdit.Close;
      QrLetterEdit.Parameters.ParamByName('LetterID').Value := aLetterID;
      QrLetterEdit.Parameters.ParamByName('UsersID1').Value := aUsersID;
      if aUsersID = 0 then
         QrLetterEdit.Parameters.ParamByName('UsersID2').Value := 0 //Â„Â ﬂ«—»—«‰
      else
         QrLetterEdit.Parameters.ParamByName('UsersID2').Value := aUsersID; //«‰ Œ«» ﬂ«—»— Œ«’
      QrLetterEdit.Open;
   end;
end;

procedure TFmLetterEdit.FormShow(Sender: TObject);
begin
   inherited;

   With DMLetterEdit do
   begin
      QrUsers.Open;
      Close_Open_QrLetterEdit(LetterID,0);
   end;
end;

procedure TFmLetterEdit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   inherited;

   Qry_CloseAllQry(DMLetterEdit);
   FreeAndNil(DMLetterEdit);
end;

procedure TFmLetterEdit.DBLkCBUsersClick(Sender: TObject);
begin
   inherited;
   Close_Open_QrLetterEdit(LetterID,DBLkCBUsers.KeyValue);
end;

procedure TFmLetterEdit.BitBtn2Click(Sender: TObject);
begin
   inherited;
   DBLkCBUsers.KeyValue := Null;
   Close_Open_QrLetterEdit(LetterID,0);
end;

procedure TFmLetterEdit.BtnWordClick(Sender: TObject);
begin
   inherited;
   if not(DMLetterEdit.QrLetterEdit.Active)or(DMLetterEdit.QrLetterEdit.RecordCount=0) then
   begin
      ShowMyMessage('ÅÌ€«„','ÂÌç «ÿ·«⁄« Ì Ì«›  ‰‘œ',[mbOK],mtInformation);
      Exit;
   end;
   YDBGrid1.ExportToWord('');
end;

procedure TFmLetterEdit.BtnExcelClick(Sender: TObject);
begin
   inherited;
   if not(DMLetterEdit.QrLetterEdit.Active)or(DMLetterEdit.QrLetterEdit.RecordCount=0) then
   begin
      ShowMyMessage('ÅÌ€«„','ÂÌç «ÿ·«⁄« Ì Ì«›  ‰‘œ',[mbOK],mtInformation);
      Exit;
   end;
   YDBGrid1.ExportToExcel;
end;

procedure TFmLetterEdit.Word1Click(Sender: TObject);
begin
   inherited;
   BtnWord.Click;
end;

procedure TFmLetterEdit.Excel1Click(Sender: TObject);
begin
   inherited;
   BtnExcel.Click;
end;

end.



