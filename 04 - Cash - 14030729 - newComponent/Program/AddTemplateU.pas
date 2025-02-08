unit AddTemplateU;

interface

uses
  Word2000, BaseUnit, ExtCtrls, OleServer, StdActns, ExtActns, DBActns,
  ActnMan, Controls, Grids, DBGrids, YDbgrid, Classes, ActnList, DB,
  StdCtrls,dialogs,Variants,SysUtils,forms, Buttons, WordXP,
  XPStyleActnCtrls,  Menus, ADODB, AdvGlowButton;


type
  TFrAddTemplate = class(TYBaseForm)
    ActionManager1: TActionManager;
    Aclose: TAction;
    AText: TAction;
    WordDocument: TWordDocument;
    WordApplication: TWordApplication;
    Timer1: TTimer;
    OpenDialog: TOpenDialog;
    Panel1: TPanel;
    BitBtn2: TAdvGlowButton;
    BitBtn1: TAdvGlowButton;
    Button2: TAdvGlowButton;
    Button1: TAdvGlowButton;
    Button5: TAdvGlowButton;
    Button6: TAdvGlowButton;
    Button3: TAdvGlowButton;
    Button4: TAdvGlowButton;
    Panel2: TPanel;
    YDBGrid2: TYDBGrid;
    pnlMain: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure AcloseExecute(Sender: TObject);
    procedure YDBGridDblClick(Sender: TObject);
    procedure ATextExecute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
procedure WordApplicationDocumentBeforeClose(ASender: TObject;
  const Doc: _Document; var Cancel: WordBool);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure EnableDsiable(en:boolean);
    procedure Button6Click(Sender: TObject);
    procedure AbortClose(Sender: TObject; var Action: TCloseAction);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);

  private
procedure OpenFile(ReadOnly:boolean);
procedure NewFile;
    { Private declarations }
  public

    { Public declarations }
  end;

var
  FrAddTemplate: TFrAddTemplate;


implementation
uses Dmu, AddTextForTemplatesU, BusinessLayer;
{$R *.dfm}

var IsReadOnly,saved:boolean;


procedure TFrAddTemplate.FormCreate(Sender: TObject);
begin
  inherited;
  IsReadOnly:=true;
  saved:=false;
 Open_WordTemplateList;
end;

procedure TFrAddTemplate.AcloseExecute(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFrAddTemplate.YDBGridDblClick(Sender: TObject);
begin
  inherited;
  AText.Execute;
  end;

procedure TFrAddTemplate.ATextExecute(Sender: TObject);
begin
  inherited;
 Open_WordTemplateList;
end;

procedure TFrAddTemplate.openFile(ReadOnly:boolean);
var RO,ItemIndex,olv,emp,f,fals,tru:OleVariant;
begin
    emp:='';
    fals:=false;
    tru:=true;
    olv:=wdOpenFormatAuto;

    WordApplication.Caption := '‰—„ «›“«— œ»Ì—Œ«‰Â Ìê«‰Â';

   with WordApplication do
    begin
     ChangeFileOpenDirectory(_TempPath);
     f:=_WordFileName;
     Ro:=ReadOnly;
     Documents.Open(f,fals,Ro,fals,emp,emp,fals,emp,emp,olv,emp,tru,tru,tru,tru);

     If ActiveWindow.View.SplitSpecial <> wdPaneNone Then
        ActiveWindow.Panes.Item(2).Close;

     If ActiveWindow.ActivePane.View.Type_ in[ wdNormalView ,wdOutlineView] Then
        ActiveWindow.ActivePane.View.Type_:= wdPrintView;


    ItemIndex := 1;
    WordDocument.ConnectTo(WordApplication.Documents.Item(itemindex));
    Visible:=true;
  end;{with wordapplication}


end;


procedure TFrAddTemplate.Button1Click(Sender: TObject);
begin
  inherited;
 if dm.Select_WordTemplateList.RecordCount>0 then
  begin
   DM.SaveTemplateToFile;
   openFile(false);
   IsReadOnly:=false;
   EnableDsiable(False);
  end;

end;

procedure TFrAddTemplate.WordApplicationDocumentBeforeClose(ASender: TObject;
  const Doc: _Document; var Cancel: WordBool);
var  fileName: OleVariant;
begin
  inherited;
  fileName:=_TempPath +_WordFileName ;

  if not ISReadOnly then
   WordDocument.SaveAs(filename);
  EnableDsiable(true);
   if not IsReadOnly then
    begin
     Timer1.Enabled:=true;
     saved:=false;
     WordApplication.Disconnect;
    end;
end;


procedure TFrAddTemplate.Button2Click(Sender: TObject);
begin
  inherited;
 if Dm.Select_WordTemplateList.RecordCount>0 then
  begin
   DM.SaveTemplateToFile;
   openFile(true);
   ISReadOnly:=true;
   EnableDsiable(False);
  end;

end;

procedure TFrAddTemplate.Button3Click(Sender: TObject);
 var s: string;
begin
  inherited;

   if messageShowString('¬Ì« «“ «ÌÃ«œ ﬁ«·» ÃœÌœ „ÿ„∆‰ Â” Ìœø',True) then
   with  dm, Select_WordTemplateList do
    if dm.Y_InputQuery('ﬁ«·» ÃœÌœ','ﬁ«·» ÃœÌœ',s) then
    begin
     Insert;
     Select_WordTemplateListTemplateTitle.AsString:=s;
     Post;
     Open_WordTemplate;
     IsReadOnly:=false;
     NewFile;
     EnableDsiable(False);
  end;

end;

procedure TFrAddTemplate.NewFile;
var Template,NewTemplate,ItemIndex:OleVariant;
begin
    Template := EmptyParam;
    NewTemplate := false;
    ItemIndex := 1;
    Wordapplication.Visible := True;
    WordApplication.Caption := 'œ»Ì—Œ«‰Â Ìê«‰Â';
    {Create new document}
    Template := EmptyParam;
    NewTemplate := False;
    WordApplication.Documents.Add(Template, NewTemplate,Template,Template);
    WordDocument.ConnectTo(WordApplication.Documents.Item(ItemIndex));
end;

procedure TFrAddTemplate.Timer1Timer(Sender: TObject);
begin
  inherited;
  if Saved then
    Exit;
  with dm,Select_WordTemplate do
  begin
    Edit;
    try
      Select_WordTemplateWordTemplate.LoadFromFile(_TempPath +_WordFileName);
      post;
      Timer1.Enabled:=false;
      saved:=True;
    except
      Timer1.Interval:=500;
    end;
  end;
end;

procedure TFrAddTemplate.Button4Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFrAddTemplate.Button5Click(Sender: TObject);
var
  s: string;
begin
  inherited;
  with  dm, Select_WordTemplateList do
  if dm.Y_InputQuery('ﬁ«·» ÃœÌœ',Select_WordTemplateListTemplateTitle.AsString,s) then
  begin
    Edit;
    Select_WordTemplateListTemplateTitle.AsString:=s;
    Post;
  end;
end;

procedure TFrAddTemplate.Button6Click(Sender: TObject);
begin
  inherited;
  FrAddTextForTemplate:=TFrAddTextForTemplate.Create(Application);
  FrAddTextForTemplate.ShowModal;
end;

procedure TFrAddTemplate.EnableDsiable(en:boolean);
begin
  inherited;
  Button1.Enabled:=En;
  Button2.Enabled:=en;
  Button3.Enabled:=en;
  if en then
    OnClose:=nil
  else
    OnClose:=AbortClose;
end;

procedure TFrAddTemplate.AbortClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  abort;
end;

procedure TFrAddTemplate.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DeleteFile(_TempPath+_WordFileName);
end;

procedure TFrAddTemplate.BitBtn2Click(Sender: TObject);
begin
  inherited;
  if OpenDialog.Execute then
    with  dm,Select_WordTemplateList do
    begin
      Open_WordTemplate;
      Edit;
      Select_WordTemplateWordTemplate.LoadFromFile(OpenDialog.FileName);
      Post;
    end;

    DM.SaveTemplateToFile;
    openFile(false);
    IsReadOnly:=false;
    EnableDsiable(False);
end;

procedure TFrAddTemplate.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if messageShowString('¬Ì« «“ Õ–› ﬁ«·» „ÿ„∆‰ Â” Ìœø',True) then
    dm.Select_WordTemplateList.Delete;
end;

end.
