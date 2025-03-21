
{
WordApp.Quit: ��� ����� ���� ���� ��� ������ Word �����.

WordApp.Disconnect: ��� ����� ����� ��� ������ ���� � Word �� ��� �흘��.

WordApp.Free: ��� ����� ��� TWordApplication �� �� ����� ���� �흘��.
-------------
����� ��� WordApplication � WordDocument:
WordApplication ��� ���� ��� �� ������ Word �� ����� �흘��.

�� ���� WordApplication �������� �� �������� �� ����� (Documents) ������ ����� �����.

�� ��� (WordDocument) ���� �� WordApplication ��� � �� ���� WordApplication.Documents ����� �� ��� �����.

--����
var
  WordApp, WordDoc: Variant;
begin
  // ����� ��� WordApplication
  WordApp := CreateOleObject('Word.Application');
  WordApp.Visible := True;

  // ����� � ��� ���� (WordDocument)
  WordDoc := WordApp.Documents.Add;
  WordDoc.Content.Text := '��� � ��� ��� ���.';

  // ����� ���
  WordDoc.SaveAs('C:\TestDocument.docx');

  // ���� ���
  WordDoc.Close(False);

  // ���� ������ Word
  WordApp.Quit;
end;

-----
var
  WordApp: TWordApplication;
  WordDocument: Variant;
begin
  WordApp := TWordApplication.Create(nil);
  try
    WordApp.Connect;  // ����� �� Word
    WordApp.Visible := True;  // ����� Word (�������)

    // ����� �� ��� ���� � ���
    WordDocument := WordApp.Documents.Add;

    // ����� ������ ��� ���
    WordDocument.Content.Text := '��� � ��� ��� ���.';

    // ����� ��� (�������)
    WordDocument.SaveAs('C:\TestDocument.docx');

    // ���� ���
    WordDocument.Close(False);  // False �� ����� ��� ����� ������� ���

    // ���� ����� �� Word
    WordApp.Quit;
    WordApp.Disconnect;
  finally
    WordApp.Free;  // ���� ���� �����
  end;
end;

---

var
  WordApp, WordDocument: Variant;
begin
  WordApp := CreateOleObject('Word.Application');
  try
    WordApp.Visible := True;

    WordDocument := WordApp.Documents.Add;
    WordDocument.Content.Text := '��� � ��� ��� ���.';
    WordDocument.SaveAs('C:\TestDocument.docx');
    WordDocument.Close(False);

    WordApp.Quit;
  finally
    WordApp := Unassigned;  // ���� ���� Variant
  end;
end;
---

var
  WordApp, WordDoc: Variant;
begin
  WordApp := CreateOleObject('Word.Application');
  WordApp.Visible := True;

  // ����� � ��� ����
  WordDoc := WordApp.Documents.Add;
  WordDoc.Content.Text := '��� � ��� ��� ���.';

  // ����� ���
  WordDoc.SaveAs('C:\TestDocument.docx');

  // ���� ���
  WordDoc.Close(False);
end;


}

unit ExportToWord;

interface

uses
  Word2000,  YDbgrid, BaseUnit, ADODB, DB, OleServer, StdCtrls, Controls,
  DBCtrls, Classes, ActnList,Forms,sysUtils,dialogs, ExtActns, Grids,
  DBGrids, ExtCtrls, WordXP, Buttons, Mask,Graphics, Menus, windows,
  TntDialogs, dmu, ComObj, Variants, ExcelXP, xpWindow, AppEvnts, Gauges,
  xpPanel, AdvGlowButton;

type
  TFExportToWord = class(TMBaseForm)
    WordApp: TWordApplication;
    WordDoc: TWordDocument;
    Dsel: TDataSource;
    SelectInfo: TADOStoredProc;
    Fields: TADODataSet;
    FieldsID: TAutoIncField;
    FieldsFieldName: TStringField;
    FieldsDescription: TWideStringField;
    TimerWord: TTimer;
    GetLetterTemplate_HeaderID: TADODataSet;
    GetLetterTemplate_HeaderIDLetterID: TAutoIncField;
    GetLetterTemplate_HeaderIDTemplateId: TIntegerField;
    GetLetterTemplate_HeaderIDheaderid: TIntegerField;
    GetLetterTemplate_HeaderIDFromOrgID: TIntegerField;
    GetLetterTemplate_HeaderIDPreCode: TWideStringField;
    Label3: TLabel;
    Panel1: TxpPanel;
    ExactCB: TCheckBox;
    Label1: TLabel;
    LookupTemplateGroup: TDBLookupComboBox;
    Select_Fields_by_TableID: TADOStoredProc;
    Select_Fields_by_TableIDID: TAutoIncField;
    Select_Fields_by_TableIDDescription: TWideStringField;
    DataSource1: TDataSource;
    pnlButton: TPanel;
    OpenFile: TAdvGlowButton;
    ExpToWord: TAdvGlowButton;
    btnClose: TAdvGlowButton;
    Panel3: TPanel;
    YDBGrid2: TYDBGrid;
    SBSettings: TAdvGlowButton;
    OpenDialog: TTntOpenDialog;
    ExcelApplication: TExcelApplication;
    ExcelWorksheet: TExcelWorksheet;
    TimerExcel: TTimer;
    PProgress: TPanel;
    pnlMain: TPanel;
    procedure FormShow(Sender: TObject);
    procedure ExpToWordClick(Sender: TObject);
    procedure WordAppDocumentBeforeClose(ASender: TObject;  const Doc: _Document; var Cancel: WordBool);
    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TimerWordTimer(Sender: TObject);
    procedure ExecGetLetterTemplate_HeaderID;
    procedure OpenFileClick(Sender: TObject);
    procedure LookupTemplateGroupClick(Sender: TObject);
    Procedure Open_Fields_by_TableID;
    procedure SBSettingsClick(Sender: TObject);
    procedure TimerExcelTimer(Sender: TObject);
    procedure ExcelApplicationWorkbookBeforeClose(ASender: TObject;
      const Wb: _Workbook; var Cancel: WordBool);
    procedure WordAppDocumentOpen(ASender: TObject;
      const Doc: _Document);
  private
    WordApplicationversion : String;
  public
    { Public declarations }
    LetterID:integer;
    LetterFormat: byte;
    ReadOnly: boolean;

    procedure ReplaceAll(replaceType:TReplaceWordTypes);
    procedure SaveAs;
    function Exacts:string;
    procedure MakePage;
    procedure InsertCopy(ExtraLines:string);
    procedure OpenFileExcel;
    procedure ReplaceAllExcel(strFileName : String; replaceType:TReplaceWordTypes);
  end;

var
  FExportToWord: TFExportToWord;

implementation

uses
    UMain, businessLayer, YShamsiDate, Settingsu;

const
    LCID: DWORD = LOCALE_SYSTEM_DEFAULT;

{$R *.dfm}
var
  En :integer;

procedure TFExportToWord.FormShow(Sender: TObject);
begin
  inherited;

  with Fields do
  begin
    close;
    Parameters.ParamByName('@tablename').Value :=dm.RelatedTableName;
    Open;
  end;
  Open_Fields_by_TableID;
  LookupTemplateGroup.KeyValue:=dm.UserTemplateGroupTemplateGroupID.AsInteger;
  LookupTemplateGroupClick(LookupTemplateGroup);
  dm.LetterTemplate.Next;
  dm.LetterTemplate.Prior;

  ExecGetLetterTemplate_HeaderID;
  Exec_Select_LetterReCommite(letterID, 1);                        

  with SelectInfo, Parameters do
  begin
    Close;
    ParamByName('@where').Value := ' l.Letterid =' + IntToStr(letterid);
    Open;
  end;

  if not dm.Sentenses.Active then
    dm.Sentenses.Open;
end;

Procedure TFExportToWord.Open_Fields_by_TableID;
begin
  with Select_Fields_by_TableID,parameters do
  begin
    Close;
    ParamByName('@LetterID').value := LetterID;
    Open;
  end;
end;

procedure TFExportToWord.ReplaceAll(replaceType:TReplaceWordTypes);
var
  W,new,old,no,noFW: widestring;
  selst,selen:integer;
  ImagePath :string;
  wdgotolast,wdgotopage,wdgotoabsolute : olevariant;
  Range: Variant;
procedure ReplaceInArea;
   begin
       WordApp.Selection.WholeStory;
       w:=WordApp.Selection.Text;
       WordApp.Selection.SetRange(0,0);
       selst:=pos('((',w);
       selEn:=pos('))',w);
       Fields.Active:=True;
       Fields.Last;
       while SelSt*SelEn<>0 do
       begin
          old:=copy(w,SelSt+2,SelEn-SelSt-2);

          new:='';
          with Fields do     //������� ����
             if Locate('Description',old,[]) then
             begin

                if (old='����� ���� �����')and(replaceType in [rwtLetter,rwtDraft]) then
                  new:=dm.cdate(SelectInfo.FieldByName('inerno').AsString)//Added By Saeedi on 901012
                else if (old='����� ���� �����' )and(replaceType in [rwtLetter,rwtDraft])then
                  new:=SelectInfo.FieldByName('RegistrationDate').AsString //Added By Saeedi on 901012
                else if (old='����� �ј���')and(replaceType =rwtLetter) then
                  new:=dm.cdate(SelectInfo.FieldByName('inerno').AsString)
                else if (old='����� �ј���')and(replaceType =rwtDraft) then
                  new:='(('+dm.cdate(SelectInfo.FieldByName('indicatorID').AsString)+'))'

               // else if old = '����� �ј���' then  new:=SelectInfo.FieldByName('RegistrationDate').AsString
                else if (old='����') then
                begin
                  new:=' ';
                  if SelectInfo.FieldByName('SignerID').AsString <>'' then
                  begin
                    // ������ �� ���
                    Range := WordDoc.Content;
                    if Range.Find.Execute(FindText:='((����))') then
                    begin
                      // ǐ� ���� ���� �ϡ �� �� ����� ���
                      Range.Select;
                    end;
                    Open_UserSign(StrToInt(SelectInfo.FieldByName('SignerID').AsString));
                    if not dm.Select_UserSignUserSign.IsNull then
                      dm.Select_UserSignUserSign.SaveToFile(ImagePath);
                    if FileExists(ImagePath) then
                    begin
                      WordApp.selection.inlineshapes.addpicture(ImagePath,EmptyParam,EmptyParam,EmptyParam);
                      SysUtils.FileSetReadOnly(PChar(ImagePath), false);
                      DeleteFile(PChar(ImagePath));
                    end;
                  end;
                end
                else if SelectInfo.FieldByName(FieldsFieldName.AsString).IsNull then
                  new:=' '
                else if (replaceType in [rwtLetter,rwtDraft]) then
                  new:= SelectInfo.FieldByName(FieldsFieldName.AsString).AsString
             end
                else
                   if dm.Sentenses.Locate('SentenseName',old,[]) then
                      if not dm.Sentenses.FieldByName('SentensValue').IsNull then
                         new := dm.Sentenses.FieldByName('SentensValue').AsString;


           if new='' then
             with Select_Fields_by_TableID do //������� ����� ��� �����
              if Locate('Description',old,[]) then
                new := Get_FieldValue_by_LetterID_FieldID(LetterID,Select_Fields_by_TableIDID.AsInteger);

           if new = '' then
              if  GetUserSetting('AskValueForEmptyFieldInWordTemplate')  then //������� ������
                 new := Input_Value('���� ���� �����',' ���� " '+ Old + '" ���� ��� ���� ���� �� ����� ����� ������', Old );
           //---

           if new<>'' then
             MainForm.ReplaceInWord(WordApp,'(('+old+'))',{CorrectFarsi}(new));

           dm.Replace(w,'(('+old+'))',new);

           selst:=pos('((',w);
           selEn:=pos('))',w);
       end;
   end;


begin
   ImagePath := _TempPath+'yeganehWORDsign.jpg' ;


   Application.ProcessMessages;
   no := SelectInfo.FieldByName('Innerno').AsString;
   noFW := SelectInfo.FieldByName('innernoForWord1').AsString;
   WordDoc.ActiveWindow.ActivePane.View.SeekView := wdSeekCurrentPageHeader;


   Application.ProcessMessages;
   MainForm.ReplaceInWord(WordApp,'((����� �ј���))',dm.Cdate(no));
   Application.ProcessMessages;
   MainForm.ReplaceInWord(WordApp,'((����� �ј��� ���))',dm.Cdate(noFW));
   Application.ProcessMessages;
   MainForm.ReplaceInWord(WordApp,'((����� �ј��� Word))',dm.Cdate(noFW));
   Application.ProcessMessages;
   { TODO -oparsa : 1402-12-19 }
   MainForm.ReplaceInWord(WordApp,'((����� �ј���))',dm.Cdate(no));
   Application.ProcessMessages;
   MainForm.ReplaceInWord(WordApp,'((����� ������ ���))',dm.Cdate(noFW));
   Application.ProcessMessages;
   MainForm.ReplaceInWord(WordApp,'((����� ������ Word))',dm.Cdate(noFW));
   Application.ProcessMessages;
   { TODO -oparsa : 1402-12-19 }
   MainForm.ReplaceInWord(WordApp,'((����� ����))',dm.Cdate(SelectInfo.FieldByName('registrationdate').AsString) );
   Application.ProcessMessages;

   { TODO -oparsa : 14030717 }
   if replaceType = rwtLetter then // ����
   begin
      MainForm.ReplaceInWord(WordApp, '((����� ����� �� ����� ��������))', dm.Cdate(SelectInfo.FieldByName('registrationdate').AsString)) ;
      MainForm.ReplaceInWord(WordApp, '(('+dm.Cdate(SelectInfo.FieldByName('CenterDate').AsString)+'))', dm.Cdate(SelectInfo.FieldByName('registrationdate').AsString)) ;
   end
   else    // ��� ����
     MainForm.ReplaceInWord(WordApp, '((����� ����� �� ����� ��������))', '(('+dm.Cdate(SelectInfo.FieldByName('registrationdate').AsString)+'))' ) ;

   Application.ProcessMessages;
  // MainForm.ReplaceInWord(WordApp,'((����))',WordApp.Shapes.AddPicture(ImagePath, False, True, WordApp.Range));
   //WordDoc.Shapes.AddPicture //(ImagePath, False, True, WordApp.Range);
   //( ImagePath, null,null,  msoCTrue, 10, 10, 15, 15 , 10) ;
   {
    function AddPicture(const FileName: WideString; var LinkToFile: OleVariant;
                        var SaveWithDocument: OleVariant; var Left: OleVariant;
                        var Top: OleVariant; var Width: OleVariant; var Height: OleVariant;
                        var Anchor: OleVariant): Shape; safecall
                        }

   //WordApp.ActiveDocument.InlineShapes.AddPicture(ImagePath) ;
   //WordDoc.Content.InlineShapes.AddPicture(ImagePath);

  // WordApp.Selection.GoTo(wdGotoPage,wdGoToLast,wdgotoabsolute,EmptyParam);



   { TODO -oparsa : 14030717 }

   ReplaceInArea;

   WordDoc.ActiveWindow.ActivePane.View.SeekView := wdSeekMainDocument;
   Application.ProcessMessages;
   MainForm.ReplaceInWord(WordApp,'((����� �ј���))',dm.Cdate(no) );
   Application.ProcessMessages;
   MainForm.ReplaceInWord(WordApp,'((����� ����))',dm.Cdate(SelectInfo.FieldByName('registrationdate').AsString) );
   Application.ProcessMessages;
   MainForm.ReplaceInWord(WordApp,'((����� �ј��� ���))',dm.Cdate(noFW));
   Application.ProcessMessages;
   MainForm.ReplaceInWord(WordApp,'((����� �ј��� Word))',dm.Cdate(noFW));
   Application.ProcessMessages;
   { TODO -oparsa : 1402-12-19 }
   MainForm.ReplaceInWord(WordApp,'((����� �ј���))',dm.Cdate(no));
   Application.ProcessMessages;
   MainForm.ReplaceInWord(WordApp,'((����� ������ ���))',dm.Cdate(noFW));
   Application.ProcessMessages;
   MainForm.ReplaceInWord(WordApp,'((����� ������ Word))',dm.Cdate(noFW));
   Application.ProcessMessages;

   { TODO -oparsa : 1402-12-19 }

   { TODO -oparsa : 14030717 }
   if replaceType = rwtLetter then //     ����
   begin
      MainForm.ReplaceInWord(WordApp, '((����� ����� �� ����� ��������))', dm.Cdate(SelectInfo.FieldByName('registrationdate').AsString)) ;
      MainForm.ReplaceInWord(WordApp, '(('+dm.Cdate(SelectInfo.FieldByName('CenterDate').AsString)+'))', dm.Cdate(SelectInfo.FieldByName('registrationdate').AsString)) ;
   end
   else   // ��� ����
     MainForm.ReplaceInWord(WordApp, '((����� ����� �� ����� ��������))', '(('+dm.Cdate(SelectInfo.FieldByName('registrationdate').AsString)+'))' ) ;
   Application.ProcessMessages;
   //MainForm.ReplaceInWord(WordApp,'((����))',WordApp.Shapes.AddPicture(ImagePath, False, True, WordApp.Range));
   {
  if SelectInfo.FieldByName('SignerID').AsString <>'' then
  begin
    Open_UserSign(StrToInt(SelectInfo.FieldByName('SignerID').AsString));
    if not dm.Select_UserSignUserSign.IsNull then
      dm.Select_UserSignUserSign.SaveToFile(ImagePath);
   WordApp.selection.inlineshapes.addpicture(ImagePath,EmptyParam,EmptyParam,EmptyParam);

   Application.ProcessMessages;
  end;
   }

   { TODO -oparsa : 14030717 }

   ReplaceInArea;
   WordApp.Visible := True;
   Application.ProcessMessages;
end;


function TFExportToWord.Exacts:string;
var
  delimeter:char;
begin
  delimeter:=#13;
  result:='';
  with dm.Select_LetterReCommite do
  begin
    first;
    while not eof do
    begin
      Result:=Result+dm.Select_LetterReCommitefromorgtitle.AsString;
      if dm.Select_LetterReCommiteOrgStaff.AsString<> '-' then
        Result := result +' - '+dm.Select_LetterReCommiteOrgStaff.AsString;
      if dm.Select_LetterReCommiteParaph.AsString<>'' then
        Result:=Result+' : '+dm.Select_LetterReCommiteParaph.AsString;
      Result:=Result+delimeter;
      next;
    end;
  end;

  if result<>'' then
    Result[length(Result)]:= '.'
  else
    result:=' ';
end;

procedure TFExportToWord.SaveAs;
var
  fileName:OleVariant;
begin
  inherited;
  fileName := _TempPath + _WordFileName;
  WordDoc.SaveAs(filename);

end;


procedure TFExportToWord.ExpToWordClick(Sender: TObject);
Var
   i: Byte;
  // HNDL:THandle;
   strType : String;
  // isError : Boolean;

   procedure DisableEnableForm (flag : Boolean);
   begin
     Application.ProcessMessages;
     PProgress.Visible:=not flag;
     YDBGrid2.Enabled := flag;
     LookupTemplateGroup.Enabled := flag;
     Label1.Enabled := flag;
     ExactCB.Enabled := flag;
     ExpToWord.Enabled := flag;
     OpenFile.Enabled := flag;
     SBSettings.Enabled := flag;
     btnClose.Enabled := flag;
     Refresh;
     if flag=false then
     Cursor := crHourGlass
      else
        Cursor := crDefault;
     Application.ProcessMessages;
   end;
begin
 // DisableEnableForm(False);
 { TODO -oparsa : 14030605-bug349 }
 ////////////////////////// if processExists('WINWORD.EXE') then Dm.KillTask('WINWORD.EXE');
 // ��� �� ���� ������ ���� ��� ��� ��� ���� ��� ���� ���
 // ����� ��� ���� �������  word ���� ��� �� ������ ���� �Ԙ� ���� �� �� ��� ��� ��� �� ����� ��� ��� �� � ��� ������ ���� � ������ ��� ��� ���
 //'A component named FExportToWord already exists'
 //�� ��� ��� ����
 if processExists('WINWORD.EXE') then Dm.KillTask('WINWORD.EXE');
 { TODO -oparsa : 14030605-bug349 }

  if dm.LetterTemplate.RecordCount = 0 then
  begin
    messageShowString('����� ���� ���� �� ������ ����',false);
    Exit;
  end;

  strType := Exec_GetLetterTemplateGroupType(dm.LetterTemplateTemplateGroupID.AsInteger);
  if strType = 'w' then     //WORD
  begin
    dm.RefreshTemplate;
    MakePage;
    if Project = 'Dabir' then
    begin         //
      { TODO -oparsa : 14030717 }
      if (SelectInfo.FieldByName('letterformat').Asinteger <> 2) then
      //if (MainForm.CBFormat.KeyValue <> 2) then
      { TODO -oparsa : 14030717 }
        ReplaceAll(rwtLetter)
      else
      begin
        IsDraft := True;
        ReplaceAll(rwtDraft); //���� ����� Replace\
      end;
    end
    else
    begin
      { TODO -oparsa : 14030717 }
      //if (MainForm.CBFormat.KeyValue <> 2) then
      if (SelectInfo.FieldByName('letterformat').Asinteger <> 2) then
      { TODO -oparsa : 14030717 }
        ReplaceAll(rwtLetter)
      else
      begin
        IsDraft := True;
        ReplaceAll(rwtDraft); //���� ����� Replace\
      end;
    end;
    WordApp.Selection.WholeStory;
    WordApp.Keyboard(1065);
    WordApp.Selection.RtlPara;
    en := WordApp.Selection.End_ - 1;
    if Dm.LetterHasArchiveCopy then
      InsertCopy(Exacts);

    if ExactCB.Checked then
    begin
      if Exacts<>'' then
        for i:=1 to dm.Select_LetterReCommite.RecordCount do
          InsertCopy(Exacts);
    end;
    SaveAs;
    Enabled:=False;
   end
  else
  begin      //EXCEL
    DM.SaveTemplateToFile(strType);
    Sleep(1000);

    if Project = 'Dabir' then
    begin
      if (MainForm.CBFormat.KeyValue <> 2) then
        ReplaceAllExcel(_TempPath + _ExcelFileName, rwtLetter)
      else
      begin
        IsDraft := True;
        ReplaceAllExcel(_TempPath + _ExcelFileName, rwtDraft);
      end;
    end
    else
    begin
      if (MainForm.CBFormat.KeyValue <> 2) then
        ReplaceAllExcel(_TempPath + _ExcelFileName, rwtLetter)
      else
      begin
        IsDraft := True;
        ReplaceAllExcel(_TempPath + _ExcelFileName, rwtDraft);
      end;
    end;

    if Dm.LetterHasArchiveCopy then
      InsertCopy(Exacts);

    if ExactCB.Checked then
    begin
      if Exacts<>'' then
        for i:=1 to dm.Select_LetterReCommite.RecordCount do
          InsertCopy(Exacts);
    end;
    Enabled:=False;
  end;
 // DisableEnableForm(false);
end;

procedure TFExportToWord.MakePage;
var
  OReadOnly,
  itemindex,olv,emp,f,fals,tru:OleVariant;
  HNDL : THandle;
  isError : Boolean;

   procedure DisableEnableObjects (flg : Boolean);
   begin
     ExactCB.Enabled := flg;
     Label1.Enabled := flg;
     LookupTemplateGroup.Enabled := flg;
     YDBGrid2.Enabled := flg;
     ExpToWord.Enabled := flg;
     OpenFile.Enabled := flg;
     SBSettings.Enabled := flg;
     btnClose.Enabled := flg;
   end;
begin
  emp := '';
  fals:= False;
  tru := True;
  olv := wdOpenFormatAuto;

  With WordApp do
  begin
    try
     Caption := 'Yeganeh'; //_Yeganeh;
    except
      isError := True;
    end;
    { TODO -oparsa : 14030605-bug349 }
    (*
    if isError = False then
    begin
     DM.SaveTemplateToFile;
     ChangeFileOpenDirectory(_TempPath);
 //    f:=_WordFileName+'.docx';
     f:=_WordFileName;
     _Word_Is_Opened:=true;
     HNDL := FindWindow('OpusApp',PAnsiChar('Yeganeh'));
     SetForegroundWindow(HNDL);
     Documents.Open(f,fals,fals,fals,emp,emp,fals,emp,emp,olv,emp,tru,tru,tru,tru);
     If ActiveWindow.View.SplitSpecial <> wdPaneNone Then
        ActiveWindow.Panes.Item(2).Close;
     If ActiveWindow.ActivePane.View.Type_ in[ wdNormalView ,wdOutlineView] Then
        ActiveWindow.ActivePane.View.Type_:= wdPrintView;
     ItemIndex := 1;
     WordDocument.ConnectTo(WordApplication.Documents.Item(itemindex));
    end else
    begin
     Caption := 'Yeganeh'; //_Yeganeh;
     DM.SaveTemplateToFile;
     ChangeFileOpenDirectory(_TempPath);
//     f:=_WordFileName+'.docx';
     f:=_WordFileName;
     _Word_Is_Opened:=true;
     HNDL := FindWindow('OpusApp',PAnsiChar('Yeganeh'));
     SetForegroundWindow(HNDL);
     Documents.Open(f,fals,fals,fals,emp,emp,fals,emp,emp,olv,emp,tru,tru,tru,tru);
     If ActiveWindow.View.SplitSpecial <> wdPaneNone Then
        ActiveWindow.Panes.Item(2).Close;
     If ActiveWindow.ActivePane.View.Type_ in[ wdNormalView ,wdOutlineView] Then
        ActiveWindow.ActivePane.View.Type_:= wdPrintView;
     ItemIndex := 1;
     WordDocument.ConnectTo(WordApplication.Documents.Item(itemindex));
    end;
    *)
     if isError then
       Caption := 'Yeganeh';

     DM.SaveTemplateToFile;
     ChangeFileOpenDirectory(_TempPath);
     f:=_WordFileName;
     _Word_Is_Opened := True;
     HNDL := FindWindow('OpusApp',PAnsiChar('Yeganeh'));
     SetForegroundWindow(HNDL);
     { TODO -oparsa : 14030605-bug349 }
     //Documents.Open(f,fals,fals,fals,emp,emp,fals,emp,emp,olv,emp,tru,tru,tru,tru);

     OReadOnly := False;

     try
       Documents.Open(f,EmptyParam,OReadOnly,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam);
     except  on e:exception do
       MBaseForm.MessageShowString('���� ���� ������� ��� ��� ��� ����� ��� ����' +Char(10) + e.Message ,False);
     end;
     { TODO -oparsa : 14030605-bug349 }
     If ActiveWindow.View.SplitSpecial <> wdPaneNone Then
        ActiveWindow.Panes.Item(2).Close;
     If ActiveWindow.ActivePane.View.Type_ in[ wdNormalView ,wdOutlineView] Then
        ActiveWindow.ActivePane.View.Type_:= wdPrintView;
     ItemIndex := 1;
     WordDoc.ConnectTo(WordApp.Documents.Item(itemindex));
     { TODO -oparsa : 14030605-bug349 }
  end;{with wordapplication}
end;

procedure TFExportToWord.InsertCopy(ExtraLines:string);
var
  o1,o2,o3:OleVariant;
begin
  if Trim(ExtraLines)='' then
    Exit;

  with WordApp,Selection do
  begin
    if en=0 then
    begin
      TypeText(' ');
      en :=1;
    end;
    SetRange(0,en);

    //Copy;
    o1:=wdStory;
    o2:=wdMove;
    Selection.EndKey(o1,o2);
    o3:=wdLineBreak;
    InsertBreak(o3);
    InsertBreak(o3);
    //o3:=wdPageBreak;
    //InsertBreak(o3);
    //Paste;

    Selection.EndKey(o1,o2);

    if Trim(ExtraLines)<>'' then
      With ParagraphFormat  do
      begin
        TypeParagraph;
        Alignment := wdAlignParagraphRight;
        TypeText('������:');
        TypeParagraph;
        LeftIndent := CentimetersToPoints(0.5);
        TypeText(ExtraLines);
        TypeParagraph;
        LeftIndent :=0;
      end;
    end;
end;

procedure TFExportToWord.WordAppDocumentBeforeClose(ASender: TObject;
  const Doc: _Document; var Cancel: WordBool);
var
    ver : Integer;
begin
  { TODO -oparsa : 14030605-bug349 }
  //Cancel := True;
  inherited;
  { TODO -oparsa : 14030605-bug349 }
  try

    if  (UpperCase(WordApp.ActiveDocument.Name)<>_WordFileName) and
        (UpperCase(WordApp.ActiveDocument.Name)<>_WordFileName+'X')    AND
        (UpperCase(WordApp.ActiveDocument.Name)<>_WordFileName+'.DOCX')    AND
        (UpperCase(WordApp.ActiveDocument.Name)<>_WordFileName+'.DOCX')    AND
        (UpperCase(WordApp.ActiveDocument.Name)<>_WordFileName+'.DOC')    then
     exit;
     
     {

    if TWordApplication(ASender).ActiveDocument.ReadOnly then
    begin
      ShowMessage('WORD ERROR B: ');
      WordApp.Disconnect;
      Exit;
    end;
    }

    ver := StrToint(copy(WordApp.Version,0,length(TWordApplication(ASender).Version)-2));
    if ver < 12 then
    begin
      ShowMessage('WORD ERROR C: ');
      WordApp.disconnect;
      Exit;
    end;

    SaveAs;
    
    if dm.FullTextSearch then
     dm.InsertTextIntoLetter(WordApp,Letterid);

    WordApplicationversion := WordApp.version;
    TimerWord.Enabled:= True;

    { TODO -oparsa : 14030605-bug349 }
    //WordApplication.Disconnect;
    //  if processExists('WINWORD.EXE') then Dm.KillTask('WINWORD.EXE');

    WordApp.Quit;
    WordApp.Disconnect;

    WordDoc. Disconnect;

    { TODO -oparsa : 14030605-bug349 }


  except on e:exception do
      ShowMessage('WORD ERROR A: ' + e.Message);
  end;


end;

procedure TFExportToWord.btnCloseClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFExportToWord.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   if FileExists(pchar(_TempPath+_WordFileName)) then
   begin
     SysUtils.FileSetReadOnly(pchar(_TempPath+_WordFileName), false);
     DeleteFile(pchar(_TempPath+_WordFileName));
   end;
end;

procedure TFExportToWord.TimerWordTimer(Sender: TObject);
var
  ver : integer;
begin
  inherited;
  try
    if Assigned(WordApp) then
    begin
      ver := StrToint(copy(WordApplicationVersion,0,length(WordApplicationVersion)-2));
      if ver<12 then
      begin
        _Word_Is_Opened :=false;
        TimerWord.Enabled:=false;
        Close;
        Exit;
      end;
    end;

    with dm,Get_LetterWordFile do
    begin
      if not Active then
        Open;
      Insert;
      Get_LetterWordFileLetterID.AsInteger:=LetterID;
      Get_LetterWordFilePageNumber.AsInteger:=1;
      Get_LetterWordFileextention.AsInteger:=3;
      Get_LetterWordFileImage.LoadFromFile(_TempPath+_WordFileName);
      Get_LetterWordFileIsTemplate.AsBoolean := True;
      { TODO -oparsa : 14030514 }
      Get_LetterWordFileFILENAME.AsString := StringReplace(_WordFileName,'.DOCX','.doc',[rfReplaceAll, rfIgnoreCase]);
      { TODO -oparsa : 14030514 }
      post;
      _Word_Is_Opened :=false;
      TimerWord.Enabled:=false
    end;
  Close;
  except
    dm.Get_LetterWordFile.Cancel;
    { TODO -oparsa : 14030605-bug349 }
    TimerWord.Enabled:= false ;
    { TODO -oparsa : 14030605-bug349 }
  end;
end;

procedure TFExportToWord.ExecGetLetterTemplate_HeaderID;
begin
  with GetLetterTemplate_HeaderID,parameters do
  begin
    Close;
    ParamByName('@letterId').value:=letterId;
    open;
  end;
end;

procedure TFExportToWord.OpenFileClick(Sender: TObject);
var
  i : Integer;
  strType, strFilter, strTempFileName : String;
begin
  inherited;

  strType := Exec_GetLetterTemplateGroupType(LookupTemplateGroup.KeyValue);

  if strType = 'w' then
    strFilter := 'Word Files (*.docx)|*.docx'
  else
    strFilter := 'Excel Files (*.xls)|*.xls';

  OpenDialog.Filter := strFilter;

  if OpenDialog.Execute then
  begin
    if UpperCase(ExtractFileExt(OpenDialog.FileName)) = '.DOC' then
    begin
      ShowMessage('���� ���� ���� 2007 ������ ����');
      exit;
    end;

    with dm,Get_LetterWordFile do
    begin
      if not Active then
        Open;

      if not(State in [dsinsert,dsedit]) then
        Insert;

      Get_LetterWordFileLetterID.AsInteger := LetterID;
      Get_LetterWordFilePageNumber.AsInteger := 1;

      if (strType = 'w') then
        Get_LetterWordFileextention.AsInteger := 3
      else
        Get_LetterWordFileextention.AsInteger := Exec_GetExcelId();


      if (strType = 'w') then
        strTempFileName := _TempPath + _WordFileName
      else
        strTempFileName := _TempPath + _ExcelFileName;


      if FileExists(strTempFileName) then
      begin
        { TODO -oparsa : 14030119 }
        //DeleteFile(pchar(strTempFileName));
        SysUtils.FileSetReadOnly(strTempFileName, false);
        SysUtils.DeleteFile(strTempFileName);
        { TODO -oparsa : 14030119 }
      end;
      { TODO -oparsa : 14030119 }
      try
      { TODO -oparsa : 14030119 }
        if CopyFileW(replacePWC(StringToPWide(OpenDialog.filename,i)), StringToPWide(strTempFileName, i), False) then
        { TODO -oparsa : 14030105 }
          //Get_LetterWordFileImage.LoadFromFile(strTempFileName)
        begin
          Get_LetterWordFileImage.LoadFromFile(strTempFileName) ;
          Get_LetterWordFileFileType.AsString := StringReplace(StringReplace(ExtractFileExt(OpenDialog.FileName), '.', '', [rfReplaceAll, rfIgnoreCase]),'docx','doc',[rfReplaceAll, rfIgnoreCase]) ;
          Get_LetterWordFileFILENAME.AsString := StringReplace(ExtractFilename(OpenDialog.FileName),'.docx','.doc',[rfReplaceAll, rfIgnoreCase]);
          Get_LetterWordFileIsTemplate.AsBoolean := True;

        end
        { TODO -oparsa : 14030105 }
        else if CopyFileW(StringToPWide(OpenDialog.filename,i), StringToPWide(strTempFileName,i), False) then
        { TODO -oparsa : 14030105 }
          //Get_LetterWordFileImage.LoadFromFile(strTempFileName)
        begin
          Get_LetterWordFileImage.LoadFromFile(strTempFileName) ;
          Get_LetterWordFileFileType.AsString := StringReplace(StringReplace(ExtractFileExt(OpenDialog.FileName), '.', '', [rfReplaceAll, rfIgnoreCase]),'docx','doc',[rfReplaceAll, rfIgnoreCase]) ;
          Get_LetterWordFileFILENAME.AsString := StringReplace(ExtractFilename(OpenDialog.FileName),'.docx','.doc',[rfReplaceAll, rfIgnoreCase]);
          Get_LetterWordFileIsTemplate.AsBoolean := True;

        end
        else
          ShowMessage('��� �� ������ ���� ����');
      { TODO -oparsa : 14030119 }
      except  on E: Exception do
       showMessage(Format('��� �� ������ ���� ���� %s',[E.Message]));
      end;
      { TODO -oparsa : 14030119 }

      Post;
    end;

    if (strType = 'w') then
      Dm.ExecGet_LetterWordFile(Letterid,False)
    else
      Dm.ExecGet_LetterWordFile(Letterid,False, True, Exec_GetExcelId());

    if Dm.LetterHasArchiveCopy then
      InsertCopy(Exacts);

    if ExactCB.Checked then
    begin
      if Exacts<>'' then
        for i:=1 to dm.Select_LetterReCommite.RecordCount do
          InsertCopy(Exacts);
    end;
  end;

   if FileExists(pchar(_TempPath+_WordFileName)) then
   begin
     SysUtils.FileSetReadOnly(pchar(_TempPath+_WordFileName), false);
     DeleteFile(pchar(_TempPath+_WordFileName));
   end;
  Close;
end;

procedure TFExportToWord.LookupTemplateGroupClick(Sender: TObject);
begin
  inherited;
  with dm,LetterTemplate do
  begin
    Close;
    Parameters.ParamByName('@TemplateGroupID').Value:=LookupTemplateGroup.KeyValue;
    Open;
  end;
end;

procedure TFExportToWord.SBSettingsClick(Sender: TObject);
begin
   inherited;
   {Ranjbar}
   Settings := TSettings.Create(Application);
   PageControl_SetTabSheet(Settings.PageControl1,'TShBaseform');//PageControl ������ �ѐ� ��� ���� ������
   Settings.AskValueForEmptyFieldInWordTemplate.Font.Color := clBlue;
   Settings.ShowModal;
   //---
end;

procedure TFExportToWord.ReplaceAllExcel(strFileName: String; replaceType:TReplaceWordTypes);
var
  Found: ExcelRange;
  MatchCase: OleVariant;
  no, noFW, new, old: widestring;
begin
  ExcelApplication.DisplayAlerts[LCID] := False;

  ExcelApplication.Visible[LCID] := False;
  ExcelApplication.Connect;
  ExcelApplication.Workbooks.Add(strFileName, LCID);

  ExcelWorksheet.ConnectTo(ExcelApplication.Sheets[1] as _Worksheet);

  no := SelectInfo.FieldByName('Innerno').AsString;
  noFW := SelectInfo.FieldByName('innernoForWord1').AsString;

  // ((����� �ј���))
  MatchCase := False;
  Found := ExcelWorksheet.UsedRange[LCID].Find('((����� �ј���))', EmptyParam, integer(xlValues),
                      xlPart, xlByRows, xlNext, MatchCase, EmptyParam, EmptyParam);
  while Found <> nil do
  begin
    Found.Value2 := dm.cdate(no);
    Found := ExcelWorksheet.UsedRange[LCID].FindNext(Found);
  end;

  // ((����� �ј��� Word))
  MatchCase := False;
  Found := ExcelWorksheet.UsedRange[LCID].Find('((����� �ј��� ���))', EmptyParam, integer(xlValues),
                      xlPart, xlByRows, xlNext, MatchCase, EmptyParam, EmptyParam);
  if Found = nil then
    Found := ExcelWorksheet.UsedRange[LCID].Find('((����� �ј��� Word))', EmptyParam, integer(xlValues),
                      xlPart, xlByRows, xlNext, MatchCase, EmptyParam, EmptyParam);

  while Found <> nil do
  begin
    Found.Value2 := dm.cdate(noFW);
    Found := ExcelWorksheet.UsedRange[LCID].FindNext(Found);
  end;

  // ((����� ����))
  MatchCase := False;
  Found := ExcelWorksheet.UsedRange[LCID].Find('((����� ����))', EmptyParam, integer(xlValues),
                      xlPart, xlByRows, xlNext, MatchCase, EmptyParam, EmptyParam);
  while Found <> nil do
  begin
    Found.Value2 := SelectInfo.FieldByName('registrationdate').AsString;
    Found := ExcelWorksheet.UsedRange[LCID].FindNext(Found);
  end;

  //
  Fields.Active:=True;
  Fields.First;
  while not Fields.Eof do
  begin
    old := FieldsDescription.AsString;
    new := '';

    {with Fields do     //������� ����
      if Locate('Description',old,[]) then
      begin}
        if (old = '����� ���� �����') and (replaceType in [rwtLetter, rwtDraft]) then
          new := dm.cdate(SelectInfo.FieldByName('inerno').AsString)
        else
        if (old = '����� ���� �����') and (replaceType in [rwtLetter, rwtDraft]) then
          new := SelectInfo.FieldByName('RegistrationDate').AsString
        else
        if (old = '����� �ј���') and (replaceType = rwtLetter) then
          new := dm.cdate(SelectInfo.FieldByName('inerno').AsString)
        else
        if (old = '����� �ј���') and (replaceType = rwtDraft) then
          new := '((' + dm.cdate(SelectInfo.FieldByName('indicatorID').AsString) + '))'
        else
        if SelectInfo.FieldByName(FieldsFieldName.AsString).IsNull then
          new := ''
        else if (replaceType in [rwtLetter, rwtDraft]) then
          new := SelectInfo.FieldByName(FieldsFieldName.AsString).AsString;
      {end
      else}
      if new = '' then
        if dm.Sentenses.Locate('SentenseName', old, []) then
          if not dm.Sentenses.FieldByName('SentensValue').IsNull then
            new := dm.Sentenses.FieldByName('SentensValue').AsString;


    if new = '' then
      with Select_Fields_by_TableID do //������� ����� ��� �����
        if Locate('Description', old,[]) then
          new := Get_FieldValue_by_LetterID_FieldID(LetterID, Select_Fields_by_TableIDID.AsInteger);

    if new = '' then
      if GetUserSetting('AskValueForEmptyFieldInWordTemplate')  then //������� ������
        new := Input_Value('���� ���� �����',' ���� " '+ Old + '" ���� ��� ���� ���� �� ����� ����� ������', Old );

    if new <> '' then
    begin
      MatchCase := False;
      Found := ExcelWorksheet.UsedRange[LCID].Find('(('+old+'))', EmptyParam, integer(xlValues),
                          xlPart, xlByRows, xlNext, MatchCase, EmptyParam, EmptyParam);
      while Found <> nil do
      begin
        Found.Value2 := new;
        Found := ExcelWorksheet.UsedRange[LCID].FindNext(Found);
      end;

    end;
    Fields.Next;
  end;

  ExcelApplication.ActiveWorkbook._SaveAs(strFileName, xlNormal, '', '', false, false, xlNoChange,
      xlUserResolution, false, EmptyParam, EmptyParam, LCID);
  ExcelApplication.Disconnect;

  Sleep(1000);
  OpenFileExcel;
end;

procedure TFExportToWord.TimerExcelTimer(Sender: TObject);
var
  strFileName: OleVariant;
  //ver : integer;
begin
  inherited;
  try
    {
    ver := StrToint(copy(WordApplication.Version,0,length(WordApplication.Version)-2));
    if ver<12 then
    begin
      _Word_Is_Opened :=false;
      TimerWord.Enabled:=false;
      Close;
      Exit;
    end;
    }
    strFileName := _TempPath + _ExcelFileName;

    with dm,Get_LetterWordFile do
    begin
      if not Active then
        Open;
      Insert;
      Get_LetterWordFileLetterID.AsInteger:= LetterID;
      Get_LetterWordFilePageNumber.AsInteger:= 1;
      Get_LetterWordFileextention.AsInteger:= Exec_GetExcelId; //Excel
      Get_LetterWordFileImage.LoadFromFile(strFileName);
      post;
      _Excel_Is_Opened :=False;
      TimerExcel.Enabled:=False;
    end;
  Close;
  except
    dm.Get_LetterWordFile.Cancel;
  end;
end;

procedure TFExportToWord.ExcelApplicationWorkbookBeforeClose(
  ASender: TObject; const Wb: _Workbook; var Cancel: WordBool);
var
  strFileName: OleVariant;
begin
  inherited;
{  if  (UpperCase(WordApplication.ActiveDocument.Name)<>_WordFileName) and
      (UpperCase(WordApplication.ActiveDocument.Name)<>_WordFileName+'X')    AND
      (UpperCase(WordApplication.ActiveDocument.Name)<>_WordFileName+'.DOCX')    AND
      (UpperCase(WordApplication.ActiveDocument.Name)<>_WordFileName+'.DOCX')    AND
      (UpperCase(WordApplication.ActiveDocument.Name)<>_WordFileName+'.DOC')    then
   exit;
}

  strFileName := _TempPath + _ExcelFileName;

  try
    ExcelApplication.UserControl := False;
    ExcelApplication.DisplayAlerts[LCID] := False;

    ExcelApplication.ActiveWorkbook._SaveAs(strFileName, xlNormal, '', '', false, false, xlNoChange,
        xlUserResolution, false, EmptyParam, EmptyParam, LCID);

    ExcelApplication.DisplayAlerts[LCID] := True;
    ExcelApplication.Disconnect;
  except on e:Exception do
    begin
      ShowMessage('Error ::' + e.Message);
    end;
  end;

  {if dm.FullTextSearch then
    dm.InsertTextIntoLetter(WordApplication,Letterid);
    }
  TimerExcel.Enabled := True;
end;

procedure TFExportToWord.OpenFileExcel;
var
  strFileName : OleVariant;
begin
  strFileName := _TempPath + _ExcelFileName;

  ExcelApplication.DisplayAlerts[LCID] := False;

  ExcelApplication.Visible[LCID] := False;
  ExcelApplication.Connect;
  ExcelApplication.Visible[LCID] := True;
  ExcelApplication.Workbooks.Add(strFileName, LCID);
end;

procedure TFExportToWord.WordAppDocumentOpen(ASender: TObject;
  const Doc: _Document);
var
  ver : integer;
begin
  { TODO -oparsa : 14030605-bug349 }
  ver := StrToint(copy(WordApp.Version,0,length(TWordApplication(ASender).Version)-2));
  if ver<12 then
  begin
    ShowMessage('���� �� ���� 2007 �� ���� ������� ����');
    Exit;
  end;
  { TODO -oparsa : 14030605-bug349 }
end;

end.

