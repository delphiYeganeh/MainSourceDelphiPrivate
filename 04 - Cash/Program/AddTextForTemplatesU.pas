unit AddTextForTemplatesU;

interface

uses
  YDbgrid, BaseUnit, Dialogs, ActnMan, Grids, DBGrids, StdCtrls, Controls,
  ExtCtrls, Classes, ActnList, DB, ExtActns,graphics, ADODB, DBCtrls,
  XPStyleActnCtrls, Buttons, Menus ;

type
  TFrAddTextForTemplate = class(TYBaseForm)
    ActionManager1: TActionManager;
    Aclose: TAction;
    Panel1: TPanel;
    YDBGrid1: TPanel;
    Panel2: TPanel;
    Editor: TMemo;
    SaveDialog: TSaveDialog;
    aINSERfIELD: TAction;
    Panel3: TPanel;
    Panel4: TPanel;
    maintablename: TDBLookupComboBox;
    Panel5: TPanel;
    YDBGrid3: TYDBGrid;
    Label1: TLabel;
    Panel6: TPanel;
    Button4: TBitBtn;
    CopyToClipBoard: TBitBtn;
    Button6: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure AcloseExecute(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure CopyToClipBoardClick(Sender: TObject);
    procedure aINSERfIELDExecute(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Button6Click(Sender: TObject);

  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  FrAddTextForTemplate: TFrAddTextForTemplate;


implementation
uses Dmu, BusinessLayer;
{$R *.dfm}


procedure TFrAddTextForTemplate.FormCreate(Sender: TObject);
begin
  inherited;
 Open_WordTemplateList;
end;

procedure TFrAddTextForTemplate.AcloseExecute(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFrAddTextForTemplate.Button4Click(Sender: TObject);
begin
  inherited;
 CopyToClipBoardClick(CopyToClipBoard);
 close;
end;

procedure TFrAddTextForTemplate.CopyToClipBoardClick(Sender: TObject);
begin
  inherited;
   Editor.SelectAll;
  Editor.CopyToClipboard;
end;

procedure TFrAddTextForTemplate.aINSERfIELDExecute(Sender: TObject);
begin
  inherited;
   Editor.SelText:=' (('+dm.Select_Fields_byTableNameDescription.AsString+')) ';

end;

procedure TFrAddTextForTemplate.Edit1Enter(Sender: TObject);
begin
  inherited;
 TEdit(Sender).Text:='';
end;

procedure TFrAddTextForTemplate.Button6Click(Sender: TObject);
begin
  inherited;
   Editor.SelText:='((ÈÚÏ))';
end;

end.
