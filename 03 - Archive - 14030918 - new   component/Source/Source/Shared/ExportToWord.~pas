unit ExportToWord;

interface

uses
  Word2000,  YDbgrid, BaseUnit, ADODB, DB, OleServer, StdCtrls, Controls,
  DBCtrls, Classes, ActnList,Forms,sysUtils,dialogs, ExtActns, Grids,
  DBGrids, ExtCtrls, WordXP, Buttons, Mask,Graphics, Menus, windows,
  TntDialogs, dmu;

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
    Timer1: TTimer;
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
    TntOpenDialog1: TTntOpenDialog;
    procedure FormShow(Sender: TObject);
    procedure ExpToWordClick(Sender: TObject);
    procedure WordApplicationDocumentBeforeClose(ASender: TObject;  const Doc: _Document; var Cancel: WordBool);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure ExecGetLetterTemplate_HeaderID;
    procedure OpenFileClick(Sender: TObject);
    procedure LookupTemplateGroupClick(Sender: TObject);
    Procedure  Open_Fields_by_TableID;
    procedure SBSettingsClick(Sender: TObject);
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
      MainForm.ReplaceInWord(WordApplication,'((‘„«—Â  —òÌ»Ì Word))',dm.Cdate(noFW) );
      MainForm.ReplaceInWord(WordApplication,'((‘„«—Â  —òÌ»Ì))',dm.Cdate(no) );
      MainForm.ReplaceInWord(WordApplication,'(( «—ÌŒ ‰«„Â))',dm.Cdate(SelectInfo.FieldByName('registrationdate').AsString) );
 {  end
      else
      begin
         MainForm.ReplaceInWord(WordApplication,'((‘„«—Â ‰«„Â))','ÅÌ‘‰ÊÌ”');
         MainForm.ReplaceInWord(WordApplication,'(( «—ÌŒ ‰«„Â))',' «—ÌŒ  ÂÌÂ');
      end;  }

   ReplaceInArea;
end;


function TFExportToWord.Exacts:string;
var delimeter:char;
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
var fileName:OleVariant;
begin
  inherited;
  fileName:=_TempPath+_WordFileName;
  WordDocument.SaveAs(filename);
end;

procedure TFExportToWord.ExpToWordClick(Sender: TObject);
Var
   i: Byte;
   HNDL:THandle;
begin
   if dm.LetterTemplate.RecordCount= 0 then
   begin
      messageShowString('«» œ« ﬁ«·» ‰«„Â —« «‰ Œ«» ò‰Ìœ',false);
      exit;
   end;
   WordApplication.Visible:=true;

   WordApplication.Caption:='Yeganeh';
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
   WordApplication.Selection.WholeStory;
   WordApplication.Keyboard(1065);
   WordApplication.Selection.RtlPara;
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
   Enabled:=false;

end;


procedure TFExportToWord.MakePage;
var itemindex,olv,emp,f,fals,tru:OleVariant;
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
 var o1,o2,o3:OleVariant;
begin
if trim(ExtraLines)='' then exit;
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
    Timer1.Enabled:=true;
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

procedure TFExportToWord.Timer1Timer(Sender: TObject);
var
   ver : integer;
begin
  inherited;
try
    ver := StrToint(copy(WordApplication.Version,0,length(WordApplication.Version)-2));
    if ver<12 then
    begin
        _Word_Is_Opened :=false;
        Timer1.Enabled:=false;
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
     Timer1.Enabled:=false
   end;
close;
except dm.Get_LetterWordFile.Cancel end;
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
begin
   inherited;

   if TntOpenDialog1.Execute then
   begin
     if UpperCase(ExtractFileExt(TntOpenDialog1.FileName)) = '.DOC' then
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
        Get_LetterWordFileextention.AsInteger := 3;

        if FileExists(_ApplicationPath+'tmpFile.docx')then
           DeleteFile(pchar(_ApplicationPath+'tmpFile.docx'));

            if CopyFileW( replacePWC(StringToPWide(TntOpenDialog1.filename,i)), StringToPWide(_ApplicationPath+'tmpFile.docx',i), False) then
               Get_LetterWordFileImage.LoadFromFile(_ApplicationPath+'tmpFile.docx')
            else if CopyFileW( StringToPWide(TntOpenDialog1.filename,i), StringToPWide(_ApplicationPath+'tmpFile.docx',i), False) then
               Get_LetterWordFileImage.LoadFromFile(_ApplicationPath+'tmpFile.docx')
            else
               ShowMessage('Œÿ« œ— ŒÊ«‰œ‰ ›«Ì· „»œ«');

        Post;
     end;

     Dm.ExecGet_LetterWordFile(Letterid,False);
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




end.
