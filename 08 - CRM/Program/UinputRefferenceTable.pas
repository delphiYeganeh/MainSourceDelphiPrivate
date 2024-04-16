unit UinputRefferenceTable;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ADODB, xpBitBtn, Grids, DBGrids, YDbgrid,
  StdCtrls, xpEdit, ExtCtrls, ComCtrls, xpPages, xpWindow, ExtActns,
  ActnList, Buttons, Menus;

type
  TFrInputRefferenceTable = class(TMBaseForm)
    get_ReferenceTable: TADOStoredProc;
    Panel1: TPanel;
    Label1: TLabel;
    SearchEdit: TEdit;
    YDBGrid1: TYDBGrid;
    xpBitBtn2: TBitBtn;
    xpBitBtn1: TBitBtn;
    xpBitBtn3: TBitBtn;
    xpBitBtn4: TBitBtn;
    xpBitBtn5: TBitBtn;
    get_ReferenceTableTableId: TWordField;
    get_ReferenceTableTableName: TWideStringField;
    get_ReferenceTableDescription: TWideStringField;
    get_ReferenceTableTableType: TWordField;
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
  FrInputRefferenceTable: TFrInputRefferenceTable;

implementation

uses Dmu, uUserTablefields, UReferenceData;

{$R *.dfm}

procedure TFrInputRefferenceTable.SearchEditChange(Sender: TObject);
begin
  inherited;
  with get_ReferenceTable do
   begin
     close;
      Parameters.ParamByName('@like').Value:=SearchEdit.Text;
     Open;
   end;
end;

procedure TFrInputRefferenceTable.xpBitBtn4Click(Sender: TObject);
 var s: string;
begin
  inherited;
 if dm.Y_InputQuery('ÚäæÇä ÌÏæá',get_ReferenceTableDescription.AsString,s) then
   with get_ReferenceTable do
    begin
      edit;
      get_ReferenceTableDescription.AsString:=s;
      post;
    end;
end;

procedure TFrInputRefferenceTable.xpBitBtn2Click(Sender: TObject);
 var s: string;
 tableID: integer;
begin
  inherited;

 if not dm.Y_InputQuery('ÚäæÇä ÌÏæá','ÌÏæá ãÑÌÚ ÌÏíÏ',s) then
 exit;

  tableID:=dm.YeganehConnection.execute('select max(tableid)+1 from tables').Fields[0].Value;

   with get_ReferenceTable do
    begin
      insert;
      get_ReferenceTableTableId.Value:=tableID;
      get_ReferenceTableTableType.AsInteger:=4;
      get_ReferenceTableTableName.Value:='table';
      get_ReferenceTableDescription.AsString:=s;
      post;
    end;
FrReferenceData:=TFrReferenceData.Create(Application);
FrReferenceData.TableID:=TableId;
FrReferenceData.ShowModal;


end;

procedure TFrInputRefferenceTable.xpBitBtn5Click(Sender: TObject);
begin
  inherited;
messageShowString('Çíä ÌÏæá ÏÇÑÇí ÚäæÇä åÇíí ãí ÈÇÔÏ¿',false);
end;

procedure TFrInputRefferenceTable.xpBitBtn3Click(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFrInputRefferenceTable.xpBitBtn1Click(Sender: TObject);
begin
  inherited;
FrReferenceData:=TFrReferenceData.Create(Application);
FrReferenceData.TableID:=get_ReferenceTableTableId.AsInteger;
FrReferenceData.ShowModal;


end;

procedure TFrInputRefferenceTable.FormCreate(Sender: TObject);
begin
  inherited;
SearchEdit.OnChange(SearchEdit);
end;

end.
