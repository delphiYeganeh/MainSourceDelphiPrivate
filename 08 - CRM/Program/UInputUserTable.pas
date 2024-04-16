unit UInputUserTable;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ADODB, xpBitBtn, Grids, DBGrids, YDbgrid,
  StdCtrls, xpEdit, ExtCtrls, ComCtrls, xpPages, xpWindow, ExtActns,
  ActnList, Buttons, Menus;

type
  TFrInputUserTable = class(TMBaseForm)
    Panel1: TPanel;
    Label1: TLabel;
    SearchEdit: TEdit;
    Panel2: TPanel;
    xpBitBtn4: TBitBtn;
    xpBitBtn1: TBitBtn;
    xpBitBtn2: TBitBtn;
    xpBitBtn5: TBitBtn;
    xpBitBtn3: TBitBtn;
    Panel3: TPanel;
    YDBGrid1: TYDBGrid;
    procedure xpBitBtn4Click(Sender: TObject);
    procedure xpBitBtn2Click(Sender: TObject);
    procedure xpBitBtn5Click(Sender: TObject);
    procedure xpBitBtn3Click(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SearchEditChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrInputUserTable: TFrInputUserTable;

implementation

uses Dmu, uUserTablefields,  UAddUserTableDlg, BusinessLayer;

{$R *.dfm}

procedure TFrInputUserTable.xpBitBtn4Click(Sender: TObject);
 var s: string;
begin
  inherited;
    dm.get_userTable.edit;
    FrAddUserTableDlg:=TFrAddUserTableDlg.Create(Application);
    FrAddUserTableDlg.ShowModal;
end;

procedure TFrInputUserTable.xpBitBtn2Click(Sender: TObject);
 var s: string;
 tableID: integer;
begin
   inherited;

   TableID:=dm.YeganehConnection.execute('select isnull(max(tableid)+1,1) from tables').Fields[0].Value;
   with dm , Get_userTable do
   begin
      insert;
      get_userTableTableId.Value:=tableID;
      get_userTableTableType.AsInteger:=3;
      get_userTableTableName.Value:='table';
   end;
   FrAddUserTableDlg:=TFrAddUserTableDlg.Create(Application);
   FrAddUserTableDlg.ShowModal;

   FrTableFields:=TFrTableFields.Create(Application);
   FrTableFields.TableID:=TableId;
   FrTableFields.ShowModal;
//-insert_FieldAccess_by_TableID(tableID);
end;

procedure TFrInputUserTable.xpBitBtn5Click(Sender: TObject);
begin
   inherited;
   if MessageShowString('ﬂ«—»— ê—«„Ì »« Õ–› «Ì‰ —ﬂÊ—œ  „«„Ì ›Ì·œÂ« Ê «ÿ·«⁄«  „— »ÿ »« «Ì‰ —ﬂÊ—œ Õ–› ŒÊ«Âœ ‘œ'+
                         #13+'¬Ì« „«Ì· »Â Õ–› Â” Ìœø',true) then
   begin
      Exec_delete_UserTable(Dm.Get_UserTableTableId.AsInteger);
      SearchEdit.OnChange(nil);
   end;
end;

procedure TFrInputUserTable.xpBitBtn3Click(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFrInputUserTable.xpBitBtn1Click(Sender: TObject);
begin
  inherited;
  FrTableFields := TFrTableFields.Create(Application);
  FrTableFields.TableID:=dm.get_userTableTableId.AsInteger;
  FrTableFields.ShowModal;
//-  insert_FieldAccess_by_TableID(dm.get_userTableTableId.AsInteger);
end;

procedure TFrInputUserTable.FormCreate(Sender: TObject);
begin
  inherited;
SearchEdit.OnChange(SearchEdit);
end;

procedure TFrInputUserTable.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
dm.Tables.Close;
dm.Tables.Open;
end;

procedure TFrInputUserTable.SearchEditChange(Sender: TObject);
begin
  inherited;
Open_UserTable(SearchEdit.Text);
end;

end.
