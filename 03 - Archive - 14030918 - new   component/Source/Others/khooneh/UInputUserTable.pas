unit UInputUserTable;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ADODB, xpBitBtn, Grids, DBGrids, YDbgrid,
  StdCtrls, xpEdit, ExtCtrls, ComCtrls, xpPages, xpWindow, ExtActns,
  ActnList;

type
  TFrInputUserTable = class(TMBaseForm)
    Panel1: TPanel;
    Label1: TLabel;
    SearchEdit: TxpEdit;
    YDBGrid1: TYDBGrid;
    xpBitBtn2: TxpBitBtn;
    xpBitBtn1: TxpBitBtn;
    xpBitBtn3: TxpBitBtn;
    xpBitBtn4: TxpBitBtn;
    xpBitBtn5: TxpBitBtn;
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

uses Dmu, uUserTablefields, businessLayer, UAddUserTableDlg;

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

  tableID:=dm.YeganehConnection.execute('select max(tableid)+1 from tables').Fields[0].Value;
   with dm,  get_userTable do
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
insert_FieldAccess_by_TableID(tableID);


end;

procedure TFrInputUserTable.xpBitBtn5Click(Sender: TObject);
begin
  inherited;
if messageShowString(' »« Õ–› ›—„  „«„Ì ›Ì·œ Â« Ê «ÿ·«⁄«  Â«Ì ÅÌÊ”  »Â ‰«„Â Â«  œ— «Ì‰ ›—„ Õ–› ŒÊ«Âœ ‘œ ¬Ì« «“ Õ–›  «Ì‰ ›—„ „ÿ„∆‰ Â” Ìœø',true) then
  begin
    Exec_delete_UserTable(dm.get_userTableTableId.AsInteger);
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
FrTableFields:=TFrTableFields.Create(Application);
FrTableFields.TableID:=dm.get_userTableTableId.AsInteger;
FrTableFields.ShowModal;
insert_FieldAccess_by_TableID(dm.get_userTableTableId.AsInteger);


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
