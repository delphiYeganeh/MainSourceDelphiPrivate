unit UInputTemplate;

interface

uses
  Word2000, BaseUnit, ExtCtrls, OleServer, StdActns, ExtActns, DBActns,
  ActnMan, Controls, Grids, DBGrids, YDbgrid, Classes, ActnList, DB,
  StdCtrls,dialogs,Variants,SysUtils,forms, Buttons, WordXP,
  XPStyleActnCtrls, ADODB, xpWindow, xpBitBtn;


type
  TEditTemplates = class(TMBaseForm)
    ActionManager1: TActionManager;
    DataSetPost: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    Aclose: TAction;
    datasetEdit: TDataSetEdit;
    AText: TAction;
    YDBGrid4: TYDBGrid;
    Button1: TxpBitBtn;
    Button2: TxpBitBtn;
    Button3: TxpBitBtn;
    WordDocument: TWordDocument;
    WordApplication: TWordApplication;
    Button5: TxpBitBtn;
    Timer1: TTimer;
    Button6: TxpBitBtn;
    BitBtn1: TxpBitBtn;
    Adelete: TAction;
    YDBGrid2: TYDBGrid;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    YDBGrid1: TYDBGrid;
    Button4: TxpBitBtn;
    Button8: TxpBitBtn;
    Bevel1: TBevel;
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
    procedure AdeleteExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
procedure OpenFile(ReadOnly:boolean);
procedure NewFile;
    { Private declarations }
  public

    { Public declarations }
  end;

var
  EditTemplates: TEditTemplates;


implementation
uses Dmu,  richedit,ShellAPI, CreateTextU;
{$R *.dfm}

var IsReadOnly,saved:boolean;


procedure TEditTemplates.FormCreate(Sender: TObject);
begin
  inherited;
  IsReadOnly:=true;
  saved:=false;
  with dm.LetterTemplate do if not Active then Open;
end;

procedure TEditTemplates.AcloseExecute(Sender: TObject);
begin
  inherited;
close;
end;

procedure TEditTemplates.YDBGridDblClick(Sender: TObject);
begin
  inherited;
  AText.Execute;
  end;

procedure TEditTemplates.ATextExecute(Sender: TObject);
begin
  inherited;
 dm.RefreshTemplate;
end;

procedure TEditTemplates.openFile(ReadOnly:boolean);
var RO,ItemIndex,olv,emp,f,fals,tru:OleVariant;
begin
    emp:='';
    fals:=false;
    tru:=true;
    olv:=wdOpenFormatAuto;

    WordApplication.Caption := '‰—„ «›“«—Ì  Ìê«‰Â';

   with WordApplication do
    begin
     ChangeFileOpenDirectory('c:\');
     f:='YEGANEH_Template_file.doc';
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


procedure TEditTemplates.Button1Click(Sender: TObject);
begin
  inherited;
 if dm.LetterTemplate.RecordCount>0 then
  begin
   DM.SaveTemplateToFile;
   openFile(false);
   IsReadOnly:=false;
  end;
  EnableDsiable(False);

end;

procedure TEditTemplates.WordApplicationDocumentBeforeClose(ASender: TObject;
  const Doc: _Document; var Cancel: WordBool);
var  fileName: OleVariant;
begin
  inherited;
  fileName:='c:\YEGANEH_TEMPlate_FILE.doc' ;
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


procedure TEditTemplates.Button2Click(Sender: TObject);
begin
  inherited;
 if dm.LetterTemplate.RecordCount>0 then
  begin
   DM.SaveTemplateToFile;
   openFile(true);
   ISReadOnly:=true;

  end;
  EnableDsiable(False);

end;

procedure TEditTemplates.Button3Click(Sender: TObject);
var s: string;
begin
  inherited;
   if messageShowString('¬Ì« «“ «ÌÃ«œ ﬁ«·» ÃœÌœ „ÿ„∆‰ Â” Ìœø',True) then
   with  dm,LetterTemplateDoc do
    begin
    if not dm.Y_InputQuery('⁄‰Ê«‰','ﬁ«·» ‰«„Â Ìê«‰Â - ÃœÌœ',s) then exit;
     Open;
     Insert;
     LetterTemplateDocTitle.AsString:= s;
     post;
       with dm.LetterTemplate do
        begin
          close;
          Open;
          locate('id',LetterTemplateDocID.AsInteger,[]);
        end;
       IsReadOnly:=false;
       //CreateText:=TCreateText.Create(Application);
       //CreateText.ShowModal;
       YDBGrid1.CreateWord;
       NewFile;
       WordApplication.Selection.Paste;
       EnableDsiable(False);
  end;

end;

procedure TEditTemplates.NewFile;
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

procedure TEditTemplates.Timer1Timer(Sender: TObject);
begin
  inherited;
  if Saved then exit;
     with dm,LetterTemplateDoc do
      begin
        Edit;
        try
        LetterTemplateDocDocument.LoadFromFile('c:\YEGANEH_TEMPlate_FILE.doc');
        post;
        Timer1.Enabled:=false;
        saved:=true;
        except
         Timer1.Interval:=500;
        end;
   end;
end;

procedure TEditTemplates.Button4Click(Sender: TObject);
begin
  inherited;
close;
end;

procedure TEditTemplates.Button5Click(Sender: TObject);
 var s: string;
begin
  inherited;
  if not dm.Y_InputQuery('⁄‰Ê«‰',dm.LetterTemplateTitle.AsString,s) then exit;
   with  dm,LetterTemplate do
    begin
     Edit;
     LetterTemplateTitle.AsString:=s;
     post;
   end;
end;

procedure TEditTemplates.Button6Click(Sender: TObject);
begin
  inherited;
 if RadioButton1.Checked then
        YDBGrid1.CreateWord
   else
        YDBGrid2.CreateWord;

end;

procedure TEditTemplates.EnableDsiable(en:boolean);
begin
  inherited;
Button1.Enabled:=En;
Button2.Enabled:=en;
Button3.Enabled:=en;
if en then OnClose:=nil else OnClose:=AbortClose;
end;

procedure TEditTemplates.AbortClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
abort;
end;

procedure TEditTemplates.AdeleteExecute(Sender: TObject);
begin
  inherited;
   if messageShowString('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœ',True) then
    dm.LetterTemplate.Delete;
end;

procedure TEditTemplates.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
        DeleteFile('c:\YEGANEH_TEMPlate_FILE.doc');
end;

end.
