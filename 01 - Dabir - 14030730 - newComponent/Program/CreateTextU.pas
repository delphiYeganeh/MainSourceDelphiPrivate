unit CreateTextU;

interface

uses
  YDbgrid, BaseUnit, Dialogs, ActnMan, Grids, DBGrids, StdCtrls, Controls,
  ExtCtrls, Classes, ActnList, DB, ExtActns,graphics, ADODB, DBCtrls,
  XPStyleActnCtrls, Buttons,  xpBitBtn, Menus, AppEvnts, CurvyControls,
  AdvGlowButton ;

type
  TCreateText = class(TMBaseForm)
    ActionManager1: TActionManager;
    Aclose: TAction;
    YDBGrid1: TPanel;
    Panel2: TPanel;
    Editor: TMemo;
    SaveDialog: TSaveDialog;
    aINSERfIELD: TAction;
    Panel3: TPanel;
    Panel4: TPanel;
    DBGrid2: TYDBGrid;
    Edit2: TCurvyEdit;
    maintablename: TDBLookupComboBox;
    Fields: TADOTable;
    DFields: TDataSource;
    FieldsID: TAutoIncField;
    FieldsTableID: TWordField;
    FieldsFieldName: TStringField;
    FieldsDescription: TWideStringField;
    FieldsISString: TBooleanField;
    FieldsIsLike: TBooleanField;
    FieldsEveryLike: TBooleanField;
    FieldsIsWhere: TBooleanField;
    FieldsVisibleInGrid: TBooleanField;
    Panel5: TPanel;
    YDBGrid3: TYDBGrid;
    Panel6: TPanel;
    Edit1: TCurvyEdit;
    Panel7: TPanel;
    Button6: TAdvGlowButton;
    Label1: TLabel;
    Label2: TLabel;
    Panel8: TPanel;
    CopyToClipBoard: TAdvGlowButton;
    Button4: TAdvGlowButton;
    Button1: TAdvGlowButton;
    pnlMain: TPanel;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AcloseExecute(Sender: TObject);
    procedure ATextExecute(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure CopyToClipBoardClick(Sender: TObject);
    procedure aINSERfIELDExecute(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
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
uses Dmu,  UMain,richedit,ShellAPI, Forms;
{$R *.dfm}


procedure TCreateText.FormShow(Sender: TObject);
begin
  inherited;

  { Check if we should load a file from the command line }
 with dm.LetterTemplateDoc do
 if Active then
  begin
   Edit;
   Post;
  end;
end;

procedure TCreateText.FormCreate(Sender: TObject);
begin
  inherited;
  with dm.LetterTemplate do if not Active then Open;
  with dm.Sentenses do if not Active then Open;
  Fields.Open;
  dm.Tables.Filtered:=false;
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
 CopyToClipBoardClick(CopyToClipBoard);
 close;
end;

procedure TCreateText.CopyToClipBoardClick(Sender: TObject);
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

procedure TCreateText.DBGrid2DblClick(Sender: TObject);
begin
  inherited;
   Editor.SelText:=' (('+dm.SentensesSentenseName.AsString+')) '
end;

procedure TCreateText.Edit1Enter(Sender: TObject);
begin
  inherited;
 TCurvyEdit(Sender).Text:='';
end;

procedure TCreateText.Edit2Change(Sender: TObject);
begin
  inherited;
  DM.Sentenses.Locate('SentenseName',edit2.Text,[lopartialkey]);

end;

procedure TCreateText.Button6Click(Sender: TObject);
begin
  inherited;
   Editor.SelText:='((���))';
end;

procedure TCreateText.Edit1Change(Sender: TObject);
begin
  inherited;
  Fields.Locate('Description',edit1.Text,[lopartialkey]);

end;

end.
