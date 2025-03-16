unit UEditQuestionBodyTemplate;

interface

uses
  Word2000, BaseUnit, ExtCtrls, OleServer, StdActns, ExtActns, DBActns,
  ActnMan, Controls, Grids, DBGrids, YDbgrid, Classes, ActnList, DB,
  StdCtrls,dialogs,Variants,SysUtils,forms, Buttons, WordXP,
  XPStyleActnCtrls, ADODB, xpWindow, xpBitBtn;


type
  TFrEditQuestionBodyTemplate = class(TMBaseForm)
    ActionManager1: TActionManager;
    DataSetPost: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    Aclose: TAction;
    datasetEdit: TDataSetEdit;
    AText: TAction;
    Button1: TxpBitBtn;
    Button2: TxpBitBtn;
    Button4: TxpBitBtn;
    WordDocument: TWordDocument;
    WordApplication: TWordApplication;
    Timer1: TTimer;
    Adelete: TAction;
    procedure FormCreate(Sender: TObject);
    procedure AcloseExecute(Sender: TObject);
    procedure YDBGridDblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
procedure WordApplicationDocumentBeforeClose(ASender: TObject;
  const Doc: _Document; var Cancel: WordBool);
    procedure Button2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure EnableDsiable(en:boolean);
    procedure AbortClose(Sender: TObject; var Action: TCloseAction);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
procedure OpenFile(ReadOnly:boolean);
procedure NewFile;
    { Private declarations }
  public

    { Public declarations }
  end;

var
  FrEditQuestionBodyTemplate: TFrEditQuestionBodyTemplate;


implementation
uses Dmu,  richedit,ShellAPI, CreateTextU;
{$R *.dfm}

var IsReadOnly,saved:boolean;

procedure TFrEditQuestionBodyTemplate.FormCreate(Sender: TObject);
begin
  inherited;
  IsReadOnly:=true;
  saved:=false;
end;

procedure TFrEditQuestionBodyTemplate.AcloseExecute(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFrEditQuestionBodyTemplate.YDBGridDblClick(Sender: TObject);
begin
  inherited;
  AText.Execute;
  end;

procedure TFrEditQuestionBodyTemplate.openFile(ReadOnly:boolean);
var RO,ItemIndex,olv,emp,f,fals,tru:OleVariant;
begin
    emp:='';
    fals:=false;
    tru:=true;
    olv:=wdOpenFormatAuto;

    WordApplication.Caption := '‰—„ «›“«—Ì  Ìê«‰Â';

   with WordApplication do
    begin
     ChangeFileOpenDirectory(_EXEDIR);
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


procedure TFrEditQuestionBodyTemplate.Button1Click(Sender: TObject);
begin
  inherited;
   DM.SaveQuestionBodyTemplateToFile;
   openFile(false);
   IsReadOnly:=false;
  EnableDsiable(False);

end;

procedure TFrEditQuestionBodyTemplate.WordApplicationDocumentBeforeClose(ASender: TObject;
  const Doc: _Document; var Cancel: WordBool);
var  fileName: OleVariant;
begin
  inherited;
  fileName:=_EXEDIR+'Yeganeh_Template_File.doc' ;
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


procedure TFrEditQuestionBodyTemplate.Button2Click(Sender: TObject);
begin
  inherited;
   DM.SaveQuestionBodyTemplateToFile;
   openFile(true);
   ISReadOnly:=true;
  EnableDsiable(False);

end;

procedure TFrEditQuestionBodyTemplate.NewFile;
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

procedure TFrEditQuestionBodyTemplate.Timer1Timer(Sender: TObject);
begin
  inherited;
  if Saved then exit;
     with dm,Select_QuestionBodyTemplate do
      begin
        Edit;
        try
        Select_QuestionBodyTemplateWordBody.LoadFromFile(_EXEDIR+'Yeganeh_Template_File.doc');
        post;
        Timer1.Enabled:=false;
        saved:=true;
        except
         Timer1.Interval:=500;
        end;
   end;
end;

procedure TFrEditQuestionBodyTemplate.Button4Click(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFrEditQuestionBodyTemplate.EnableDsiable(en:boolean);
begin
  inherited;
Button1.Enabled:=En;
Button2.Enabled:=en;
if en then OnClose:=nil else OnClose:=AbortClose;
end;

procedure TFrEditQuestionBodyTemplate.AbortClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
abort;
end;

procedure TFrEditQuestionBodyTemplate.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
        DeleteFile(_EXEDIR+'Yeganeh_Template_File.doc');
end;

end.
