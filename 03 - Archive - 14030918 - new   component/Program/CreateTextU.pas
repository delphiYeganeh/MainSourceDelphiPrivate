unit CreateTextU;

interface

uses
  YDbgrid, BaseUnit, Dialogs, ActnMan, Grids, DBGrids, StdCtrls, Controls,
  ExtCtrls, Classes, ActnList, DB, ExtActns,graphics, ADODB, DBCtrls,
  XPStyleActnCtrls, Buttons, xpWindow, xpBitBtn,Types, AdvGlowButton,
  CurvyControls ;

type
  TCreateText = class(TMBaseForm)
    ActionManager1: TActionManager;
    Aclose: TAction;
    pnlMain: TPanel;
    YDBGrid1: TPanel;
    Panel2: TPanel;
    Editor: TMemo;
    Button1: TAdvGlowButton;
    CopyToClipBoard: TAdvGlowButton;
    Button4: TAdvGlowButton;
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
    Edit1: TCurvyEdit;
    Label1: TLabel;
    Panel6: TPanel;
    Button6: TAdvGlowButton;
    Label2: TLabel;
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
    procedure YDBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);

  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  CreateText: TCreateText;


implementation
uses Dmu,  UMain,richedit,ShellAPI, Forms,YShamsidate;
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
 TEdit(Sender).Text:='';
end;

procedure TCreateText.Edit2Change(Sender: TObject);
begin
  inherited;
  DM.Sentenses.Locate('SentenseName',edit2.Text,[lopartialkey]);

end;

procedure TCreateText.Button6Click(Sender: TObject);
begin
  inherited;
   Editor.SelText:='((»⁄œ))';
end;

procedure TCreateText.Edit1Change(Sender: TObject);
begin
  inherited;
  Fields.Locate('Description',edit1.Text,[lopartialkey]);

end;

procedure TCreateText.YDBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   inherited;
   {Ranjbar 89.05.17 ID=3,15}
   //DBGrid ﬁ—«— œ«œ‰ ›ÊﬂÊ” Å” «“ Œ«—Ã ‘œ‰ «“
   DBGrid_SetFocusAfterExit(YDBGrid3,Rect,DataCol,Column,State{,clHighlight,clHighlightText} );
   //---
end;

procedure TCreateText.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   inherited;
   {Ranjbar 89.05.17 ID=3,15}
   //DBGrid ﬁ—«— œ«œ‰ ›ÊﬂÊ” Å” «“ Œ«—Ã ‘œ‰ «“
   DBGrid_SetFocusAfterExit(DBGrid2,Rect,DataCol,Column,State{,clHighlight,clHighlightText} );
   //---
end;

end.
