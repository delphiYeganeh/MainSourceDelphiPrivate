unit UInputTemplate;

interface

uses
  Word2000, BaseUnit, ExtCtrls, OleServer, StdActns, ExtActns, DBActns,
  ActnMan, Controls, Grids, DBGrids, YDbgrid, Classes, ActnList, DB,
  StdCtrls,dialogs,Variants,SysUtils,forms, Buttons, WordXP,
  XPStyleActnCtrls, xpWindow, xpBitBtn, AppEvnts, Menus;


type
  TEditTemplates = class(TMBaseForm)
    ActionManager1: TActionManager;
    Aclose: TAction;
    AText: TAction;
    Button1: TxpBitBtn;
    Button2: TxpBitBtn;
    Button3: TxpBitBtn;
    Button4: TxpBitBtn;
    WordDocument: TWordDocument;
    WordApplication: TWordApplication;
    Button5: TxpBitBtn;
    Timer1: TTimer;
    Button6: TxpBitBtn;
    BitBtn1: TxpBitBtn;
    OpenDialog: TOpenDialog;
    BitBtn2: TxpBitBtn;
    Panel1: TPanel;
    YDBGrid2: TYDBGrid;
    DBGrid2: TYDBGrid;
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
    procedure DBGrid2CellClick(Column: TColumn);
    procedure BitBtn1Click(Sender: TObject);

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
uses Dmu,  UMain,richedit,ShellAPI, CreateTextU, ADODB, UEditLetterGroup;
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


procedure TEditTemplates.Button1Click(Sender: TObject);
begin
  inherited;
 if dm.LetterTemplate.RecordCount>0 then
  begin
   DM.SaveTemplateToFile;
   openFile(false);
   IsReadOnly:=false;
   EnableDsiable(False);
  end;

end;

procedure TEditTemplates.WordApplicationDocumentBeforeClose(ASender: TObject;
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
begin
  inherited;

  if dm.TemplateGroup.RecordCount= 0 then
   Begin
     messageShowString('«» œ« ê—ÊÂ ﬁ«·» Â«  ⁄—Ì› —« ò‰Ìœ',false);
     exit;
   end;
   if messageShow(42,True) then
   with  dm,LetterTemplate do
    begin
     Insert;
     LetterTemplateTemplateGroupID.Value:=dm.TemplateGroupTemplateGroupID.AsInteger;
     FEditLetterGroup:=TFEditLetterGroup.Create(Application);
     if FEditLetterGroup.ShowModal= mrCancel then exit;
   with  dm,LetterTemplateDoc do
    begin
     close;
     Parameters.ParamByName('id').Value:=dm.LetterTemplateID.AsInteger;
     Open;
    end;
       IsReadOnly:=false;
       NewFile;
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
        LetterTemplateDocDocument.LoadFromFile(_TempPath +_WordFileName);
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
begin
  inherited;
   with  dm,LetterTemplate do
    begin
     Edit;
     FEditLetterGroup:=TFEditLetterGroup.Create(Application);
     FEditLetterGroup.ShowModal;
   end;
end;

procedure TEditTemplates.Button6Click(Sender: TObject);
begin
  inherited;
CreateText:=TCreateText.Create(Application);
CreateText.ShowModal;

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

procedure TEditTemplates.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   { TODO -oparsa : 1402-12-19 }
   if FileExists(pchar(_TempPath+_WordFileName)) then
     DeleteFile(pchar(_TempPath+_WordFileName));
   { TODO -oparsa : 1402-12-19 }
end;

procedure TEditTemplates.BitBtn2Click(Sender: TObject);
var s: String;
begin
  inherited;
 if OpenDialog.Execute then
  with  dm,LetterTemplate do
   begin
     Insert;
     LetterTemplateTemplateGroupID.Value:=dm.TemplateGroupTemplateGroupID.AsInteger;
     FEditLetterGroup:=TFEditLetterGroup.Create(Application);
     if FEditLetterGroup.ShowModal= mrCancel then exit;
    with  dm,LetterTemplateDoc do
     begin
      close;
      Parameters.ParamByName('id').Value:=dm.LetterTemplateID.AsInteger;
      Open;
      Edit;
      LetterTemplateDocDocument.LoadFromFile(OpenDialog.FileName);
      Post;
     end;

    DM.SaveTemplateToFile;
    openFile(false);
    IsReadOnly:=false;
    EnableDsiable(False);
   end;


end;

procedure TEditTemplates.DBGrid2CellClick(Column: TColumn);
begin
  inherited;
with dm,LetterTemplate do
 begin
  Close;
  Parameters.ParamByName('@TemplateGroupID').Value:=TemplateGroupTemplateGroupID.Value;
  Open;
 end;

end;

procedure TEditTemplates.BitBtn1Click(Sender: TObject);
begin
  inherited;
   if messageShow(43,True) then
    dm.LetterTemplate.Delete;

end;

end.
