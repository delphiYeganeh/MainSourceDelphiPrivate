unit UInputTemplate;

interface

uses
  Word2000, BaseUnit, ExtCtrls, OleServer, StdActns, ExtActns, DBActns,
  ActnMan, Controls, Grids, DBGrids, YDbgrid, Classes, ActnList, DB,
  StdCtrls,dialogs,Variants,SysUtils,forms, Buttons, WordXP,windows,
  XPStyleActnCtrls,  xpBitBtn, Menus,Types,Graphics, TntDialogs;


type
  TEditTemplates = class(TMBaseForm)
    ActionManager1: TActionManager;
    Aclose: TAction;
    AText: TAction;
    WordDocument: TWordDocument;
    WordApplication: TWordApplication;
    Timer1: TTimer;
    Panel1: TPanel;
    YDBGrid2: TYDBGrid;
    Panel2: TPanel;
    Button1: TBitBtn;
    Button2: TBitBtn;
    Button3: TBitBtn;
    Button4: TBitBtn;
    Button5: TBitBtn;
    Button6: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel4: TPanel;
    SBArchive: TSpeedButton;
    Label1: TLabel;
    DBGrid2: TYDBGrid;
    OpenDialog: TTntOpenDialog;
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
    procedure EnableDsiable(En:boolean);
    procedure Button6Click(Sender: TObject);
    {Ranjbar 89.10.06 ID=267}
    //procedure AbortClose(Sender: TObject; var Action: TCloseAction);
    //---
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure BitBtn1Click(Sender: TObject);
    procedure SBArchiveClick(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure YDBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    function FileSize(fileName : wideString) : Int64;
    procedure CorrectFile(fileName : string);
  private
    procedure OpenFile(ReadOnly:boolean);
    procedure openFileOD(ReadOnly:boolean);
    procedure NewFile;
  public

  end;

var
  EditTemplates: TEditTemplates;


implementation

Uses Dmu,UMain,richedit,ShellAPI, CreateTextU, ADODB,
     UEditLetterGroup,YShamsiDate, UTemplateGroup;

{$R *.dfm}

Var
   IsReadOnly,
   Saved:boolean;


procedure TEditTemplates.FormCreate(Sender: TObject);
begin
   inherited;
   IsReadOnly := True;
   Saved := False;
   with Dm.LetterTemplate do
      if not Active then
         Open;
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

    WordApplication.Caption := '‰—„ «›“«— œ»Ì—Œ«‰Â '+_yeganeh;

   with WordApplication do
    begin
    Visible:=true;
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
  end;{with wordapplication}


end;

procedure TEditTemplates.openFileOD(ReadOnly:boolean);
var RO,ItemIndex,olv,emp,f,fals,tru:OleVariant;
begin
    emp:='';
    fals:=false;
    tru:=true;
    olv:=wdOpenFormatAuto;

    WordApplication.Caption := '‰—„ «›“«— œ»Ì—Œ«‰Â '+_yeganeh;

   with WordApplication do
    begin
    Visible:=true;
     ChangeFileOpenDirectory(_TempPath);
     f:=_WordFileName+'.docx';
     Ro:=ReadOnly;
     Documents.Open(f,fals,Ro,fals,emp,emp,fals,emp,emp,olv,emp,tru,tru,tru,tru);

     If ActiveWindow.View.SplitSpecial <> wdPaneNone Then
        ActiveWindow.Panes.Item(2).Close;

     If ActiveWindow.ActivePane.View.Type_ in[ wdNormalView ,wdOutlineView] Then
        ActiveWindow.ActivePane.View.Type_:= wdPrintView;


    ItemIndex := 1;
    WordDocument.ConnectTo(WordApplication.Documents.Item(itemindex));
  end;{with wordapplication}
end;


procedure TEditTemplates.Button1Click(Sender: TObject);
begin
   inherited;
   if Dm.LetterTemplate.RecordCount>0 then
   begin
      DM.SaveTemplateToFile;
      OpenFile(False); //»«“ ﬂ—œ‰ ›«Ì· Ê—œ ÃÂ  ÊÌ—«Ì‘
      IsReadOnly:=false;
      EnableDsiable(False);
   end;
end;

procedure TEditTemplates.WordApplicationDocumentBeforeClose(ASender: TObject;
  const Doc: _Document; var Cancel: WordBool);
var fileName: OleVariant;
begin
   inherited;
   fileName := _TempPath +_WordFileName ;
   if not IsReadOnly then
   begin
      WordDocument.SaveAs(fileName);
      Timer1.Enabled := True; //–ŒÌ—Â Ê—œ œ— œÌ «»Ì”
      Saved := False;
   end
      {Ranjbar 89.10.06 ID=267}
      else
         EnableDsiable(True);
      //---   
   WordApplication.Disconnect;
end;


procedure TEditTemplates.Button2Click(Sender: TObject);
begin
   inherited;
   if Dm.LetterTemplate.RecordCount>0 then
   begin
      DM.SaveTemplateToFile;
      OpenFile(True); //»«“ ﬂ—œ‰ ›«Ì· Ê—œ ›ﬁÿ ÃÂ  ‰„«Ì‘
      ISReadOnly:=true;
      EnableDsiable(False);
   end;
end;

procedure TEditTemplates.Button3Click(Sender: TObject);
begin
   inherited;

   if Dm.TemplateGroup.RecordCount = 0 then
   Begin
      MessageShowString('«» œ« ê—ÊÂ ﬁ«·» Â« —«  ⁄—Ì› ò‰Ìœ',false);
      Exit;
   end;

   {Ranjbar 89.10.06 ID=267}
   //if MessageShow(42,True) then
   with Dm,LetterTemplate do
   begin
      Insert;
      LetterTemplateTemplateGroupID.Value := Dm.TemplateGroupTemplateGroupID.AsInteger;
      FEditLetterGroup:=TFEditLetterGroup.Create(Application);
      if FEditLetterGroup.ShowModal= mrCancel then
         Exit;
      with dm,LetterTemplateDoc do
      begin
         close;
         Parameters.ParamByName('id').Value:=dm.LetterTemplateID.AsInteger;
         Open;
      end;
      IsReadOnly:=false;
      NewFile; //»«“ ‘œ‰ ›«Ì· Ê—œ
      EnableDsiable(False);
   end;
end;

procedure TEditTemplates.NewFile;
var
   Template,NewTemplate,ItemIndex:OleVariant;
   ver : integer;
begin
    Template := EmptyParam;
    NewTemplate := false;
    ItemIndex := 1;
    ver := StrToint(copy(WordApplication.Version,0,length(WordApplication.Version)-2));
    if ver<12 then
    begin
        ShowMessage('»—«Ì «›“Êœ‰ ﬁ«·» «“ ¬›Ì” 2007 »Â »«·« «” ›«œÂ ò‰Ìœ');
        Exit;
    end;
    Wordapplication.Visible := True;
    WordApplication.Caption := 'œ»Ì—Œ«‰Â '+_yeganeh;

    {Create new document}
    Template := EmptyParam;
    NewTemplate := False;
    WordApplication.Documents.Add(Template, NewTemplate,Template,Template);
    WordDocument.ConnectTo(WordApplication.Documents.Item(ItemIndex));
end;

procedure TEditTemplates.Timer1Timer(Sender: TObject);
begin
   inherited;
   if Saved then
      Exit;
   with Dm,LetterTemplateDoc do
   begin
      Edit;
      try
         LetterTemplateDocDocument.LoadFromFile(_TempPath +_WordFileName);
         Post;
         Timer1.Enabled := False;
         Saved := True;
         EnableDsiable(True);
     except
         Timer1.Interval := 500;
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
      FEditLetterGroup := TFEditLetterGroup.Create(Application);
      FEditLetterGroup.ShowModal;
   end;
end;

procedure TEditTemplates.Button6Click(Sender: TObject);
begin
   inherited;
   CreateText := TCreateText.Create(Application);
   CreateText.ShowModal;
end;

procedure TEditTemplates.EnableDsiable(En:boolean);
begin
   inherited;
   Button1.Enabled := En;
   Button2.Enabled := En;
   Button3.Enabled := En;
   {Ranjbar 89.10.06 ID=267}
   Button5.Enabled := En;
   BitBtn1.Enabled := En;

   {YDBGrid2.Enabled := En;
   DBGrid2.Enabled := En;
   if En then
      OnClose := Nil
   else
      OnClose := AbortClose;}
   //---   
end;

{Ranjbar 89.10.06 ID=267}
{procedure TEditTemplates.AbortClose(Sender: TObject;
  var Action: TCloseAction);
begin
   inherited;
   abort;
end;}

procedure TEditTemplates.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   inherited;
   {Ranjbar 89.10.06 ID=267}
   if Button1.Enabled = False then
      if ShowMyMessage('ÅÌ€«„','ﬂ«—»— ê—«„Ì «ÿ·«⁄«  ›«Ì· Ê—œ Â‰Ê“ –ŒÌ—Â ‰‘œÂ «” '+#13+
                               '             ¬Ì« „«Ì· »Â Œ—ÊÃ «“ «Ì‰ ›—„ Â” Ìœø' ,mbOKCancel,mtWarning)=mrCancel then
         Abort;
   //---
         
   DeleteFile(pchar(_TempPath+_WordFileName));
end;

procedure TEditTemplates.BitBtn2Click(Sender: TObject);
var
   i, en: integer;
   fn : string;
begin
   inherited;
   if OpenDialog.Execute then
   begin
     if UpperCase(ExtractFileExt(OpenDialog.FileName)) = '.DOC' then
     begin
        ShowMessage('·ÿ›« ›«Ì· ¬›Ì” 2007 «‰ Œ«» ò‰Ìœ');
        exit;
     end;
      With Dm,LetterTemplate do
      begin
         Insert;
         LetterTemplateTemplateGroupID.Value:=dm.TemplateGroupTemplateGroupID.AsInteger;
         FEditLetterGroup := TFEditLetterGroup.Create(Application);
         if FEditLetterGroup.ShowModal = mrCancel then
            Exit;
         with Dm,LetterTemplateDoc do
         begin
            Close;
            Parameters.ParamByName('id').Value:=dm.LetterTemplateID.AsInteger;
            Open;
            Edit;
            //LetterTemplateDocDocument.LoadFromFile(OpenDialog.FileName);
               if FileExists(_ApplicationPath+'tmpFile')then
                  DeleteFile(pchar(_ApplicationPath+'tmpFile'));
               if CopyFileW( replacePWC(StringToPWide(OpenDialog.filename,i)), StringToPWide(_TempPath+_WordFileName+'.docx',i), False) then
                  fn := _TempPath+_WordFileName+'.docx'
               else if CopyFileW(StringToPWide(OpenDialog.filename,i), StringToPWide(_TempPath+_WordFileName+'.docx',i), False) then
                  fn := _TempPath+_WordFileName+'.docx'
               else
               begin
                  fn := '';
                  ShowMessage('Œÿ« œ— ŒÊ«‰œ‰ ›«Ì· „»œ«');
               end;
               if trim(fn)<>'' then
               begin
                  LetterTemplateDocDocument.LoadFromFile(fn);
               end;
            Post;
         end;
      //   dm.SaveTemplateToFile;
         OpenFileOD(false);
         en := WordApplication.Selection.End_ - 1;
         if en = 0 then
            WordApplication.Selection.TypeText(' ');
         
         IsReadOnly := False;
         EnableDsiable(False);
      end;
   end;
end;

function TEditTemplates.FileSize(fileName : wideString) : Int64;
 var
   sr : TSearchRec;
begin
   if FindFirst(fileName, faAnyFile, sr ) = 0 then
      result := Int64(sr.FindData.nFileSizeHigh) shl Int64(32) + Int64(sr.FindData.nFileSizeLow)
   else
      result := -1;
//   FindClose(sr);
end;

procedure TEditTemplates.CorrectFile(fileName : string);
begin
   //
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
   if MessageShow(43,True) then
      Dm.LetterTemplate.Delete;
end;

procedure TEditTemplates.SBArchiveClick(Sender: TObject);
begin
   inherited;
   {Ranjbar 89.10.06 ID=267}
   FrUTemplateGroup := TFrUTemplateGroup.Create(Application);
   FrUTemplateGroup.ShowModal;
   Dm.TemplateGroup.Close;
   Dm.TemplateGroup.Open;
   //---
end;

procedure TEditTemplates.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   inherited;
   DBGrid_SetFocusAfterExit(DBGrid2,Rect,DataCol,Column,State,clHighlightText);
end;

procedure TEditTemplates.YDBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   inherited;
   DBGrid_SetFocusAfterExit(YDBGrid2,Rect,DataCol,Column,State,clHighlightText);
end;

end.
