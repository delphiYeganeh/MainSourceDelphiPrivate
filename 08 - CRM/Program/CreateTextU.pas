unit CreateTextU;

interface

uses
  YDbgrid, BaseUnit, Dialogs, ActnMan, Grids, DBGrids, StdCtrls, Controls,
  ExtCtrls, Classes, ActnList, DB, ExtActns,graphics, ADODB, DBCtrls,
  XPStyleActnCtrls, Menus ;

type
  TCreateText = class(TMBaseForm)
    ActionManager1: TActionManager;
    Aclose: TAction;
    Panel1: TPanel;
    YDBGrid1: TPanel;
    Panel2: TPanel;
    Editor: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    SaveDialog: TSaveDialog;
    aINSERfIELD: TAction;
    Panel3: TPanel;
    Panel4: TPanel;
    maintablename: TDBLookupComboBox;
    Fields: TADOTable;
    DFields: TDataSource;
    Panel5: TPanel;
    YDBGrid3: TYDBGrid;
    Edit1: TEdit;
    FieldsID: TIntegerField;
    FieldsFieldName: TWideStringField;
    FieldsDescription: TWideStringField;
    Button6: TButton;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AcloseExecute(Sender: TObject);
    procedure ATextExecute(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure aINSERfIELDExecute(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);

  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  CreateText: TCreateText;


implementation
uses Dmu,  richedit,ShellAPI, Forms;
{$R *.dfm}


procedure TCreateText.FormShow(Sender: TObject);
begin
  inherited;

  { Check if we should load a file from the command line }
 with dm.WordTemplateDoc do
 if Active then
  begin
   Edit;
   Post;
  end;
end;





procedure TCreateText.FormCreate(Sender: TObject);
begin
  inherited;
  with dm.WordTemplate do if not Active then Open;
Fields.Open;
end;

procedure TCreateText.AcloseExecute(Sender: TObject);
begin
  inherited;
close;
end;

procedure TCreateText.ATextExecute(Sender: TObject);
begin
  inherited;
 dm.RefreshTemplate;
end;

procedure TCreateText.Button4Click(Sender: TObject);
begin
  inherited;
 Button3.Click;
 close;
end;

procedure TCreateText.Button2Click(Sender: TObject);
 function WithExtend(s:String):string;
  begin
    Result:=s;
    if Pos('.',s)=0 then Result:=Result+'.Txt';
  end;
begin
  inherited;
  if SaveDialog.Execute then
  Editor.Lines.SaveToFile(WithExtend(SaveDialog.FileName));
end;

procedure TCreateText.Button3Click(Sender: TObject);
begin
  inherited;
   Editor.SelectAll;
  Editor.CopyToClipboard;
end;

procedure TCreateText.aINSERfIELDExecute(Sender: TObject);
begin
  inherited;
   Editor.SelText:=' (('+FieldsDescription.AsString+')) ';
end;

procedure TCreateText.Edit1Enter(Sender: TObject);
begin
  inherited;
 TEdit(Sender).Text:='';
end;

procedure TCreateText.Button6Click(Sender: TObject);
begin
  inherited;
   Editor.SelText:='((ÈÚÏ))';
end;

procedure TCreateText.Edit1Change(Sender: TObject);
begin
  inherited;
  Fields.Locate('Description',edit1.Text,[lopartialkey]);

end;

end.
