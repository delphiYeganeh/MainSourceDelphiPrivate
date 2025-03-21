unit UInputTemplate;

interface

uses
  Word2000, BaseUnit, ExtCtrls, OleServer, StdActns, ExtActns, DBActns,
  ActnMan, Controls, Grids, DBGrids, YDbgrid, Classes, ActnList, DB,
  StdCtrls,dialogs,Variants,SysUtils,forms, Buttons, WordXP,windows,
  XPStyleActnCtrls, xpWindow, xpBitBtn,Types, TntDialogs, AdvGlowButton;


type
  TEditTemplates = class(TMBaseForm)
    ActionManager1: TActionManager;
    DataSetPost: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    Aclose: TAction;
    datasetEdit: TDataSetEdit;
    AText: TAction;
    WordDocument: TWordDocument;
    WordApplication: TWordApplication;
    Timer1: TTimer;
    Adelete: TAction;
    Panel2: TPanel;
    Button1: TAdvGlowButton;
    Button2: TAdvGlowButton;
    Button3: TAdvGlowButton;
    Button4: TAdvGlowButton;
    Button5: TAdvGlowButton;
    Button6: TAdvGlowButton;
    BitBtn1: TAdvGlowButton;
    BitBtn2: TAdvGlowButton;
    Panel1: TPanel;
    YDBGrid2: TYDBGrid;
    DBGrid2: TYDBGrid;
    TntOpenDialog: TTntOpenDialog;
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
    procedure AdeleteExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure YDBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);

  private
    procedure OpenFile(ReadOnly:boolean);
    procedure NewFile;
    procedure NewFileExcel;
  public

  end;

var
  EditTemplates: TEditTemplates;


implementation
uses Dmu,  UMain,richedit,ShellAPI, CreateTextU, ADODB, UEditLetterGroup,YShamsiDate;
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
   Emp :='';
   Fals := False;
   Tru := True;
   Olv := WdOpenFormatAuto;

   {Ranjbar 89.05.15 ID=3,15} //RPC Server ����
   WordApplication.Disconnect;
   //---
   WordApplication.Caption := ' ��� ����� ������ ' + _yeganeh;

   With WordApplication do
   begin
      ChangeFileOpenDirectory(_TempPath);
      f := _WordFileName;
      Ro := ReadOnly;
      Documents.Open(f,fals,Ro,fals,emp,emp,fals,emp,emp,olv,emp,tru,tru,tru,tru);
      If ActiveWindow.View.SplitSpecial <> wdPaneNone Then
         ActiveWindow.Panes.Item(2).Close;

      If ActiveWindow.ActivePane.View.Type_ in [wdNormalView ,wdOutlineView] Then
         ActiveWindow.ActivePane.View.Type_ := wdPrintView;

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
   //Word ���� ����
   if Dm.LetterTemplate.RecordCount > 0 then
   begin
      DM.SaveTemplateToFile;
      OpenFile(True);
      ISReadOnly := True;
   end;
   EnableDsiable(False);
end;

procedure TEditTemplates.Button3Click(Sender: TObject);
begin
  inherited;

  if Dm.TemplateGroup.RecordCount = 0 then
  Begin
    ShowMessage('����� ���� ���� �� ����� �� ����');
    Exit;
  end;

  if messageShow(42,True) then
    with Dm,LetterTemplate do
    begin
      Insert;
      LetterTemplateTemplateGroupID.Value := Dm.TemplateGroupTemplateGroupID.AsInteger;
      FEditLetterGroup := TFEditLetterGroup.Create(Application);

      if FEditLetterGroup.ShowModal = mrCancel then
        Exit;

      with Dm,LetterTemplateDoc do
      begin
        Close;
        Parameters.ParamByName('id').Value := Dm.LetterTemplateID.AsInteger;
        Open;
      end;
      IsReadOnly := False;
      NewFile;
      EnableDsiable(False);
    end;
end;

procedure TEditTemplates.NewFile;
var
  Template,NewTemplate,ItemIndex:OleVariant;
begin
  Template := EmptyParam;
  NewTemplate := false;
  ItemIndex := 1;
  Wordapplication.Visible := True;
  WordApplication.Caption := '������ '+_yeganeh;
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
   CreateText := TCreateText.Create(Application);
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

procedure TEditTemplates.AdeleteExecute(Sender: TObject);
begin
  inherited;
   if messageShow(43,True) then
    dm.LetterTemplate.Delete;
end;

procedure TEditTemplates.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
        DeleteFile(pchar(_TempPath+_WordFileName));
end;

procedure TEditTemplates.BitBtn2Click(Sender: TObject);
Var
   //S : String;
   i, en: integer;
begin
   inherited;
   if tntOpenDialog.Execute then
      with dm,LetterTemplate do
      begin
         Insert;
         LetterTemplateTemplateGroupID.Value := Dm.TemplateGroupTemplateGroupID.AsInteger;
         FEditLetterGroup := TFEditLetterGroup.Create(Application);
         if FEditLetterGroup.ShowModal = mrCancel then
            Exit;
         with Dm , LetterTemplateDoc do
         begin
            Close;
            Parameters.ParamByName('id').Value := dm.LetterTemplateID.AsInteger;
            Open;
            Edit;
            if FileExists(_TempPath+_WordFileName)then
               DeleteFile(pchar(_TempPath+_WordFileName));

            if CopyFileW( replacePWC(StringToPWide(TntOpenDialog.filename,i)), StringToPWide(_TempPath+_WordFileName,i), False) then
               LetterTemplateDocDocument.LoadFromFile(_TempPath+_WordFileName)
            else if CopyFileW( StringToPWide(TntOpenDialog.filename,i), StringToPWide(_TempPath+_WordFileName,i), False) then
               LetterTemplateDocDocument.LoadFromFile(_TempPath+_WordFileName)
            else
               ShowMessage('��� �� ������ ���� ����');
            //LetterTemplateDocDocument.LoadFromFile(OpenDialog.FileName);
            Post;
         end;

         //DM.SaveTemplateToFile;
         openFile(false);
         en := WordApplication.Selection.End_ - 1;
         if en = 0 then
            WordApplication.Selection.TypeText(' ');
         IsReadOnly := False;
         EnableDsiable(False);
      end;
end;

procedure TEditTemplates.DBGrid2CellClick(Column: TColumn);
begin
   inherited;
   with Dm , LetterTemplate do
   begin
      Close;
      Parameters.ParamByName('@TemplateGroupID').Value:=TemplateGroupTemplateGroupID.Value;
      Open;
   end;
end;

procedure TEditTemplates.FormShow(Sender: TObject);
begin
   inherited;
   {Ranjbar 89.05.15 ID=3}
   DBGrid2CellClick(Nil);
   DBGrid2.SetFocus;
   //---
end;

procedure TEditTemplates.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   inherited;         
   {Ranjbar 89.05.17 ID=3,15}
   //DBGrid ���� ���� ����� �� �� ���� ��� ��
   DBGrid_SetFocusAfterExit(DBGrid2,Rect,DataCol,Column,State{,clHighlight,clHighlightText} );
   //---
end;

Procedure TEditTemplates.YDBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   inherited;
   {Ranjbar 89.05.17 ID=3,15}
   //DBGrid ���� ���� ����� �� �� ���� ��� ��
   DBGrid_SetFocusAfterExit(YDBGrid2,Rect,DataCol,Column,State{,clHighlight,clHighlightText} );
   //---
end;

procedure TEditTemplates.NewFileExcel;
begin

end;

end.
