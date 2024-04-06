unit UInputUserTable;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ADODB, xpBitBtn, Grids, DBGrids, YDbgrid,
  StdCtrls, xpEdit, ExtCtrls, ComCtrls, xpPages, xpWindow, ExtActns,
  ActnList, Buttons;

type
  TFrInputUserTable = class(TMBaseForm)
    get_userTable: TADOStoredProc;
    Panel1: TPanel;
    Label1: TLabel;
    SearchEdit: TEdit;
    get_userTableTableId: TWordField;
    get_userTableTableName: TWideStringField;
    get_userTableDescription: TWideStringField;
    get_userTableTableType: TWordField;
    Panel2: TPanel;
    xpBitBtn2: TBitBtn;
    xpBitBtn1: TBitBtn;
    xpBitBtn3: TBitBtn;
    xpBitBtn4: TBitBtn;
    xpBitBtn5: TBitBtn;
    Panel3: TPanel;
    YDBGrid1: TYDBGrid;
    procedure SearchEditChange(Sender: TObject);
    procedure xpBitBtn4Click(Sender: TObject);
    procedure xpBitBtn2Click(Sender: TObject);
    procedure xpBitBtn5Click(Sender: TObject);
    procedure xpBitBtn3Click(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrInputUserTable: TFrInputUserTable;

implementation

uses Dmu, uUserTablefields;

{$R *.dfm}

procedure TFrInputUserTable.SearchEditChange(Sender: TObject);
begin
  inherited;
  with get_userTable do
   begin
     close;
      Parameters.ParamByName('@like').Value:=SearchEdit.Text;
     Open;
   end;
end;

procedure TFrInputUserTable.xpBitBtn4Click(Sender: TObject);
 var s: string;
begin
  inherited;
 if dm.Y_InputQuery('⁄‰Ê«‰ ›—„',get_userTableDescription.AsString,s) then
   with get_userTable do
    begin
      edit;
      get_userTableDescription.AsString:=s;
      post;
    end;
end;

procedure TFrInputUserTable.xpBitBtn2Click(Sender: TObject);
 var s: string;
 tableID: integer;
begin
  inherited;

 if not dm.Y_InputQuery('⁄‰Ê«‰ ›—„','›—„ ÃœÌœ',s) then
 exit;

  tableID:=dm.YeganehConnection.execute('select max(tableid)+1 from tables').Fields[0].Value;

   with get_userTable do
    begin
      insert;
      get_userTableTableId.Value:=tableID;
      get_userTableTableType.AsInteger:=3;
      get_userTableTableName.Value:='table';
      get_userTableDescription.AsString:=s;
      post;
    end;
FrTableFields:=TFrTableFields.Create(Application);
FrTableFields.TableID:=TableId;
FrTableFields.ShowModal;


end;

procedure TFrInputUserTable.xpBitBtn5Click(Sender: TObject);
begin
  inherited;
ShowMessage('«Ì‰ ›—„ œ«—«Ì ›Ì·œ Â«ÌÌ „Ì »«‘œø');
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
FrTableFields.TableID:=get_userTableTableId.AsInteger;
FrTableFields.ShowModal;


end;

procedure TFrInputUserTable.FormCreate(Sender: TObject);
begin
  inherited;
SearchEdit.OnChange(SearchEdit);
end;

end.
