unit ExportToWord;

interface

uses
  Word2000,  YDbgrid, BaseUnit, ADODB, DB, OleServer, StdCtrls, Controls,
  DBCtrls, Classes, ActnList,Forms,sysUtils,dialogs, ExtActns, Grids,
  DBGrids, ExtCtrls, WordXP, Buttons, Mask,Graphics, Menus, windows,
  TntDialogs, dmu, ExcelXP, Variants;

type
  TFExportToWord = class(TMBaseForm)
    WordApplication: TWordApplication;
    WordDocument: TWordDocument;
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
    Panel1: TPanel;
    ExactCB: TCheckBox;
    Label1: TLabel;
    LookupTemplateGroup: TDBLookupComboBox;
    Select_Fields_by_TableID: TADOStoredProc;
    Select_Fields_by_TableIDID: TAutoIncField;
    Select_Fields_by_TableIDDescription: TWideStringField;
    DataSource1: TDataSource;
    Panel2: TPanel;
    OpenFile: TBitBtn;
    ExpToWord: TBitBtn;
    Button1: TBitBtn;
    Panel3: TPanel;
    YDBGrid2: TYDBGrid;
    SBSettings: TSpeedButton;
    OpenDialog: TTntOpenDialog;
    ExcelApplication: TExcelApplication;
    ExcelWorksheet: TExcelWorksheet;
    TimerExcel: TTimer;
    procedure FormShow(Sender: TObject);
    procedure ExpToWordClick(Sender: TObject);
    procedure WordApplicationDocumentBeforeClose(ASender: TObject;  const Doc: _Document; var Cancel: WordBool);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TimerWordTimer(Sender: TObject);
    procedure ExecGetLetterTemplate_HeaderID;
    procedure OpenFileClick(Sender: TObject);
    procedure LookupTemplateGroupClick(Sender: TObject);
    Procedure  Open_Fields_by_TableID;
    procedure SBSettingsClick(Sender: TObject);
    procedure TimerExcelTimer(Sender: TObject);
    procedure ExcelApplicationWorkbookBeforeClose(ASender: TObject;
      const Wb: _Workbook; var Cancel: WordBool);
  private
    { Private declarations }
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

uses  UMain, businessLayer, YShamsiDate, Settingsu;

{$R *.dfm}
var  En :integer;
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
 Exec_Select_LetterReCommite(letterID,1);
with SelectInfo,Parameters do
 begin
  Close;
  ParamByName('@where').Value:=' l.Letterid ='+IntToStr(letterid);
  Open;
 end;
  if not dm.Sentenses.Active then
     dm.Sentenses.Open;

end;

Procedure  TFExportToWord.Open_Fields_by_TableID;
  begin
  with Select_Fields_by_TableID,parameters do
   begin
    Close;
    ParamByName('@LetterID').value:=LetterID;
    Open;
   end;
end;

procedure TFExportToWord.ReplaceAll(replaceType:TReplaceWordTypes);
var
  W,new,old,no,noFW: widestring;
  selst,selen:integer;

 procedure ReplaceInArea;
   begin
       WordApplication.Selection.WholeStory;
       w:=WordApplication.Selection.Text;
       WordApplication.Selection.SetRange(0,0);
       selst:=pos('((',w);
       selEn:=pos('))',w);
       Fields.Active:=True;
       Fields.Last;
       while SelSt*SelEn<>0 do
       begin
          old:=copy(w,SelSt+2,SelEn-SelSt-2);
          new:='';
          with Fields do     //›Ì·œÂ«Ì ‰«„Â
             if Locate('Description',old,[]) then
             begin

                if (old='‘„«—Â ‰«„Â œ«Œ·Ì')and(replaceType in [rwtLetter,rwtDraft]) then
                  new:=dm.cdate(SelectInfo.FieldByName('inerno').AsString)//Added By Saeedi on 901012
                else if (old=' «—ÌŒ ‰«„Â œ«Œ·Ì' )and(replaceType in [rwtLetter,rwtDraft])then
                  new:=SelectInfo.FieldByName('RegistrationDate').AsString //Added By Saeedi on 901012
                else if (old='‘„«—Â  —òÌ»Ì')and(replaceType =rwtLetter) then
                  new:=dm.cdate(SelectInfo.FieldByName('inerno').AsString)
                else if (old='‘„«—Â  —òÌ»Ì')and(replaceType =rwtDraft) then
                  new:='(('+dm.cdate(SelectInfo.FieldByName('indicatorID').AsString)+'))'

               // else if old = '‘„«—Â  —òÌ»Ì' then  new:=SelectInfo.FieldByName('RegistrationDate').AsString
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
             with Select_Fields_by_TableID do //›Ì·œÂ«Ì  ⁄—Ì› ‘œÂ ﬂ«—»—
              if Locate('Description',old,[]) then
                new := Get_FieldValue_by_LetterID_FieldID(LetterID,Select_Fields_by_TableIDID.AsInteger);

           if new = '' then
              if  GetUserSetting('AskValueForEmptyFieldInWordTemplate')  then // ‰ŸÌ„«  ﬂ«—»—Ì
                 new := Input_Value('ﬁ—«— œ«œ‰ „ﬁœ«—',' ›Ì·œ " '+ Old + '" Ì«›  ‰‘œ ·ÿ›« »—«Ì ¬‰ „ﬁœ«—  ⁄ÌÌ‰ ‰„«ÌÌœ', Old );
           //---

           if new<>'' then
             MainForm.ReplaceInWord(WordApplication,'(('+old+'))',{CorrectFarsi}(new));

           dm.Replace(w,'(('+old+'))',new);

           selst:=pos('((',w);
           selEn:=pos('))',w);
       end;
   end;


begin
   no := SelectInfo.FieldByName('Innerno').AsString;
   noFW := SelectInfo.FieldByName('innernoForWord1').AsString;

   WordDocument.ActiveWindow.ActivePane.View.SeekView := wdSeekCurrentPageHeader;

   {if letterformat=1 then
   begin}
      MainForm.ReplaceInWord(WordApplication,'((‘„«—Â  —òÌ»Ì))',dm.Cdate(no) );
      MainForm.ReplaceInWord(WordApplication,'((‘„«—Â  —òÌ»Ì Ê—œ))',dm.Cdate(noFW) );
      MainForm.ReplaceInWord(WordApplication,'((‘„«—Â  —òÌ»Ì Word))',dm.Cdate(noFW) );
      MainForm.ReplaceInWord(WordApplication,'(( «—ÌŒ ‰«„Â))',dm.Cdate(SelectInfo.FieldByName('registrationdate').AsString) );
{   end
      else
      begin
         MainForm.ReplaceInWord(WordApplication,'((‘„«—Â ‰«„Â))','ÅÌ‘‰ÊÌ”');
         MainForm.ReplaceInWord(WordApplication,'(( «—ÌŒ ‰«„Â))',' «—ÌŒ  ÂÌÂ');
     end; }

   ReplaceInArea;

   WordDocument.ActiveWindow.ActivePane.View.SeekView := wdSeekMainDocument;
   {if letterformat=1 then
   begin}
      MainForm.ReplaceInWord(WordApplication,'((‘„«—Â  —òÌ»Ì))',dm.Cdate(no) );
      MainForm.ReplaceInWord(WordApplication,'(( «—ÌŒ ‰«„Â))',dm.Cdate(SelectInfo.FieldByName('registrationdate').AsString) );
      MainForm.ReplaceInWord(WordApplication,'((‘„«—Â  —òÌ»Ì Ê—œ))',dm.Cdate(noFW) );
      MainForm.ReplaceInWord(WordApplication,'((‘„«—Â  —òÌ»Ì Word))',dm.Cdate(noFW) );
 {  end
      else
      begin
         MainForm.ReplaceInWord(WordApplication,'((‘„«—Â ‰«„Â))','ÅÌ‘‰ÊÌ”');
         MainForm.ReplaceInWord(WordApplication,'(( «—ÌŒ ‰«„Â))',' «—ÌŒ  ÂÌÂ');
      end;  }

   ReplaceInArea;

   WordApplication.Visible := True;
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
    Result:=' ';
end;

procedure TFExportToWord.SaveAs;
var fileName:OleVariant;
begin
  inherited;
  fileName:=_TempPath+_WordFileName;
  WordDocument.SaveAs(filename);
end;

procedure TFExportToWord.ExpToWordClick(Sender: TObject);
var
  i: Byte;
  HNDL:THandle;
  strType : String;
  isError : Boolean;
begin
  if Dm.processExists('WINWORD.EXE') then Dm.KillTask('WINWORD.EXE');
  isError := False;
  if dm.LetterTemplate.RecordCount= 0 then
  begin
    messageShowString('«» œ« ﬁ«·» ‰«„Â —« «‰ Œ«» ò‰Ìœ',false);
    Exit;
  end;

  strType := Exec_GetLetterTemplateGroupType(dm.LetterTemplateTemplateGroupID.AsInteger);
  if strType = 'w' then
  begin
    with WordApplication do
    begin
      try
        Caption:='Yeganeh';
      except
        isError:= True;
      end;

      if isError=False then
      begin
        Visible := False;
        HNDL := FindWindow('OpusApp',PAnsiChar('Yeganeh'));
        SetForegroundWindow(HNDL);
        dm.RefreshTemplate;
        MakePage;
        if Project = 'Dabir' then
          begin
           if (dm.Get_All_Letterletterformat.AsInteger <>2) then
            ReplaceAll(rwtLetter)
          else
            ReplaceAll(rwtDraft); //ﬂ—œ‰ ﬂ·„«  Replace
          end
        else
        begin
          if (dm.Sp_Inboxletterformat.AsInteger <>2) then
            ReplaceAll(rwtLetter)
          else
            ReplaceAll(rwtDraft);
        end;
        Selection.WholeStory;
        Keyboard(1065);
        Selection.RtlPara;
        en := WordApplication.Selection.End_ - 1;
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
      end else
      begin
        Caption:='Yeganeh';
        isError:= True;
        Visible := False;
        HNDL := FindWindow('OpusApp',PAnsiChar('Yeganeh'));
        SetForegroundWindow(HNDL);
        dm.RefreshTemplate;
        MakePage;
        if Project = 'Dabir' then
          begin
           if (dm.Get_All_Letterletterformat.AsInteger <>2) then
            ReplaceAll(rwtLetter)
          else
            ReplaceAll(rwtDraft); //ﬂ—œ‰ ﬂ·„«  Replace
          end
        else
        begin
          if (dm.Sp_Inboxletterformat.AsInteger <>2) then
            ReplaceAll(rwtLetter)
          else
            ReplaceAll(rwtDraft);
        end;
        Selection.WholeStory;
        Keyboard(1065);
        Selection.RtlPara;
        en := WordApplication.Selection.End_ - 1;
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
      end;
    end;
  end else
  begin
    DM.SaveTemplateToFile(strType);
    Sleep(1000);
    if Project = 'Dabir' then
    begin
      if (dm.Get_All_Letterletterformat.AsInteger <>2) then
        ReplaceAllExcel(_TempPath + _ExcelFileName, rwtLetter)
      else
        ReplaceAllExcel(_TempPath + _ExcelFileName, rwtDraft); //ﬂ—œ‰ ﬂ·„«  Replace
    end
    else
    begin
      if (dm.Sp_Inboxletterformat.AsInteger <>2) then
        ReplaceAllExcel(_TempPath + _ExcelFileName, rwtLetter)
      else
        ReplaceAllExcel(_TempPath + _ExcelFileName, rwtDraft);
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
end;

procedure TFExportToWord.MakePage;
var
  itemindex,olv,emp,f,fals,tru:OleVariant;
begin
  emp:='';
  fals:=false;
  tru:=true;
  olv:=wdOpenFormatAuto;

  WordApplication.Caption := _Yeganeh;

  with WordApplication do
  begin
    DM.SaveTemplateToFile;
    ChangeFileOpenDirectory(_TempPath);
    f:=_WordFileName;
    _Word_Is_Opened:=true;
    Documents.Open(f,fals,fals,fals,emp,emp,fals,emp,emp,olv,emp,tru,tru,tru,tru);

    If ActiveWindow.View.SplitSpecial <> wdPaneNone Then
      ActiveWindow.Panes.Item(2).Close;

    If ActiveWindow.ActivePane.View.Type_ in[ wdNormalView ,wdOutlineView] Then
      ActiveWindow.ActivePane.View.Type_:= wdPrintView;

    ItemIndex := 1;
    WordDocument.ConnectTo(WordApplication.Documents.Item(itemindex));
  end;{with wordapplication}
end;

procedure TFExportToWord.InsertCopy(ExtraLines:string);
var
  o1,o2,o3:OleVariant;
begin
  if trim(ExtraLines)='' then
    exit;

  with WordApplication,Selection do
  begin
    if en=0 then
    begin
      TypeText(' ');
      en :=1;
    end;
    SetRange(0,en);

//       Copy;
    o1:=wdStory;
    o2:=wdMove;
    Selection.EndKey(o1,o2);
    o3:=wdLineBreak;
    InsertBreak(o3);
    InsertBreak(o3);
//       o3:=wdPageBreak;
//       InsertBreak(o3);
//       Paste;

    Selection.EndKey(o1,o2);

    if Trim(ExtraLines)<>'' then
      With ParagraphFormat  do
      begin
        TypeParagraph;
        Alignment := wdAlignParagraphRight;
        TypeText('—Ê‰Ê‘ :');
        TypeParagraph;
        LeftIndent := CentimetersToPoints(0.5);
        TypeText(ExtraLines);
        TypeParagraph;
        LeftIndent :=0;
      end;
  end;
end;

procedure TFExportToWord.WordApplicationDocumentBeforeClose(ASender: TObject;
  const Doc: _Document; var Cancel: WordBool);
begin
  inherited;
  if  (UpperCase(WordApplication.ActiveDocument.Name)<>_WordFileName) and
      (UpperCase(WordApplication.ActiveDocument.Name)<>_WordFileName+'X')    AND
      (UpperCase(WordApplication.ActiveDocument.Name)<>_WordFileName+'.DOCX')    AND
      (UpperCase(WordApplication.ActiveDocument.Name)<>_WordFileName+'.DOCX')    AND
      (UpperCase(WordApplication.ActiveDocument.Name)<>_WordFileName+'.DOC')    then
    exit;

  SaveAs;
  if dm.FullTextSearch then
    dm.InsertTextIntoLetter(WordApplication,Letterid);
  TimerWord.Enabled:=true;
  WordApplication.Disconnect;
end;

procedure TFExportToWord.Button1Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFExportToWord.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DeleteFile(pchar(_TempPath+_WordFileName));
  WordApplication.Disconnect;
end;

procedure TFExportToWord.TimerWordTimer(Sender: TObject);
var
  ver : integer;
begin
  inherited;
  try
    ver := StrToint(copy(WordApplication.Version,0,length(WordApplication.Version)-2));
    if ver<12 then
    begin
      _Word_Is_Opened :=false;
      TimerWord.Enabled:=false;
      close;
      Exit;
    end;

    with dm,Get_LetterWordFile do
    begin
      if not Active then Open;
        Insert;
        Get_LetterWordFileLetterID.AsInteger:=LetterID;
        Get_LetterWordFilePageNumber.AsInteger:=1;
        Get_LetterWordFileextention.AsInteger:=3;
        Get_LetterWordFileImage.LoadFromFile(_TempPath+_WordFileName);
        post;
        _Word_Is_Opened :=false;
        TimerWord.Enabled:=false
      end;
      close;
    except
      dm.Get_LetterWordFile.Cancel
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
Var
   S: WideString;
   i : integer;
   b : boolean;
  fn, strType, strFilter, strTempFileName : String;
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
      ShowMessage('·ÿ›« ›«Ì· ¬›Ì” 2007 «‰ Œ«» ò‰Ìœ');
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

      //Get_LetterWordFileextention.AsInteger := 3;
      if (strType = 'w') then
        strTempFileName := _TempPath + _WordFileName
      else
        strTempFileName := _TempPath + _ExcelFileName;

      if FileExists(strTempFileName)then
        DeleteFile(pchar(strTempFileName));

      if CopyFileW( replacePWC(StringToPWide(OpenDialog.filename,i)), StringToPWide(strTempFileName,i), False) then
        fn := strTempFileName {Get_LetterWordFileImage.LoadFromFile(_ApplicationPath+'tmpFile.docx')}
      else if CopyFileW( StringToPWide(OpenDialog.filename,i), StringToPWide(strTempFileName,i), False) then
        fn := strTempFileName {Get_LetterWordFileImage.LoadFromFile(strTempFileName)}
      else
      begin
        fn := '';
        ShowMessage('Œÿ« œ— ŒÊ«‰œ‰ ›«Ì· „»œ«');
      end;

      if trim(fn)<>'' then
      begin
        Get_LetterWordFileImage.LoadFromFile(fn);
      end;
      Post;
    end;

    if (strType = 'w') then
      Dm.ExecGet_LetterWordFile(Letterid,False)
    else
      Dm.ExecGet_LetterWordFile(Letterid,False, True, Exec_GetExcelId());

    //////////////////////////////////////
    if Dm.LetterHasArchiveCopy then
      InsertCopy(Exacts);

    if ExactCB.Checked then
    begin
      if Exacts<>'' then
        for i:=1 to dm.Select_LetterReCommite.RecordCount do
          InsertCopy(Exacts);
    end;
     //////////////////////////////////////
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
   PageControl_SetTabSheet(Settings.PageControl1,'TShBaseform');//PageControl «‰ Œ«» »—êÂ ›—„ «’·Ì »—‰«„Â
   Settings.AskValueForEmptyFieldInWordTemplate.Font.Color := clBlue;
   Settings.ShowModal;
   //---
end;




procedure TFExportToWord.TimerExcelTimer(Sender: TObject);
var
  ver : integer;
  strFileName: OleVariant;
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

procedure TFExportToWord.ReplaceAllExcel(strFileName: String;
  replaceType: TReplaceWordTypes);
var
  Found: ExcelRange;
  MatchCase: OleVariant;

  no, noFW, new, old: widestring;

  //W,new,old,no,noFW: widestring;
  //selst,selen:integer;

begin
  ExcelApplication.DisplayAlerts[LCID] := False;

  ExcelApplication.Visible[LCID] := False;
  ExcelApplication.Connect;
  ExcelApplication.Workbooks.Add(strFileName, LCID);

  ExcelWorksheet.ConnectTo(ExcelApplication.Sheets[1] as _Worksheet);

  no := SelectInfo.FieldByName('Innerno').AsString;
  noFW := SelectInfo.FieldByName('innernoForWord1').AsString;

  // ((‘„«—Â  —òÌ»Ì))
  MatchCase := False;
  Found := ExcelWorksheet.UsedRange[LCID].Find('((‘„«—Â  —òÌ»Ì))', EmptyParam, integer(xlValues),
                      xlPart, xlByRows, xlNext, MatchCase, EmptyParam, EmptyParam);
  while Found <> nil do
  begin
    Found.Value2 := dm.cdate(no);
    Found := ExcelWorksheet.UsedRange[LCID].FindNext(Found);
  end;

  // ((‘„«—Â  —òÌ»Ì Word))
  MatchCase := False;
  Found := ExcelWorksheet.UsedRange[LCID].Find('((‘„«—Â  —òÌ»Ì Ê—œ))', EmptyParam, integer(xlValues),
                      xlPart, xlByRows, xlNext, MatchCase, EmptyParam, EmptyParam);
  if Found = nil then
    Found := ExcelWorksheet.UsedRange[LCID].Find('((‘„«—Â  —òÌ»Ì Word))', EmptyParam, integer(xlValues),
                      xlPart, xlByRows, xlNext, MatchCase, EmptyParam, EmptyParam);

  while Found <> nil do
  begin
    Found.Value2 := dm.cdate(noFW);
    Found := ExcelWorksheet.UsedRange[LCID].FindNext(Found);
  end;

  // (( «—ÌŒ ‰«„Â))
  MatchCase := False;
  Found := ExcelWorksheet.UsedRange[LCID].Find('(( «—ÌŒ ‰«„Â))', EmptyParam, integer(xlValues),
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

    {with Fields do     //›Ì·œÂ«Ì ‰«„Â
      if Locate('Description',old,[]) then
      begin}
        if (old = '‘„«—Â ‰«„Â œ«Œ·Ì') and (replaceType in [rwtLetter, rwtDraft]) then
          new := dm.cdate(SelectInfo.FieldByName('inerno').AsString)
        else
        if (old = ' «—ÌŒ ‰«„Â œ«Œ·Ì') and (replaceType in [rwtLetter, rwtDraft]) then
          new := SelectInfo.FieldByName('RegistrationDate').AsString
        else
        if (old = '‘„«—Â  —òÌ»Ì') and (replaceType = rwtLetter) then
          new := dm.cdate(SelectInfo.FieldByName('inerno').AsString)
        else
        if (old = '‘„«—Â  —òÌ»Ì') and (replaceType = rwtDraft) then
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
      with Select_Fields_by_TableID do //›Ì·œÂ«Ì  ⁄—Ì› ‘œÂ ﬂ«—»—
        if Locate('Description', old,[]) then
          new := Get_FieldValue_by_LetterID_FieldID(LetterID, Select_Fields_by_TableIDID.AsInteger);

    if new = '' then
      if GetUserSetting('AskValueForEmptyFieldInWordTemplate')  then // ‰ŸÌ„«  ﬂ«—»—Ì
        new := Input_Value('ﬁ—«— œ«œ‰ „ﬁœ«—',' ›Ì·œ " '+ Old + '" Ì«›  ‰‘œ ·ÿ›« »—«Ì ¬‰ „ﬁœ«—  ⁄ÌÌ‰ ‰„«ÌÌœ', Old );

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

end.
