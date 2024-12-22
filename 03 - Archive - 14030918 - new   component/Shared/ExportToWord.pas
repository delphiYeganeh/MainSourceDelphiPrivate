unit ExportToWord;

interface

uses
  Word2000,  YDbgrid, BaseUnit, ADODB, DB, OleServer, StdCtrls, Controls,
  DBCtrls, Classes, ActnList,Forms,sysUtils,dialogs, ExtActns, Grids,windows,
  DBGrids, ExtCtrls, WordXP, Buttons, Mask, xpWindow, xpBitBtn, TntDialogs,
  AdvGlowButton;

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
    Panel1: TPanel;
    Label1: TLabel;
    LookupTemplateGroup: TDBLookupComboBox;
    Panel2: TPanel;
    Button1: TAdvGlowButton;
    ExpToWord: TAdvGlowButton;
    OpenFile: TAdvGlowButton;
    Panel3: TPanel;
    YDBGrid2: TYDBGrid;
    SelectInfoIncommingMiladiDate_Calc: TStringField;
    SelectInfoIncommingdate: TWideStringField;
    SelectInfoinnerno: TWideStringField;
    SelectInfoLetterID: TAutoIncField;
    SelectInfoIndicatorID: TIntegerField;
    SelectInfoMYear: TWordField;
    SelectInfoLetter_Type: TWordField;
    SelectInfoletterformat: TWordField;
    SelectInfoIncommingNO: TWideStringField;
    SelectInfoCenterNo: TWideStringField;
    SelectInfoCenterDate: TStringField;
    SelectInfoFromOrgID: TIntegerField;
    SelectInfoToOrgID: TIntegerField;
    SelectInfoSignerid: TWideStringField;
    SelectInfoClassificationID: TWordField;
    SelectInfoUrgencyID: TSmallintField;
    SelectInfoMemo: TWideStringField;
    SelectInfoAttachTitle: TWideStringField;
    SelectInfoNumberOfAttachPages: TSmallintField;
    SelectInfoNumberOfPage: TWordField;
    SelectInfoReceiveTypeID: TWordField;
    SelectInfoUserID: TIntegerField;
    SelectInfoRetroactionNo: TWideStringField;
    SelectInfoUserMemo: TWideStringField;
    SelectInfoRegistrationDate: TStringField;
    SelectInfoRegistrationTime: TStringField;
    SelectInfoFollowLetterNo: TWideStringField;
    SelectInfoToStaffer: TWideStringField;
    SelectInfoSentLetterID: TIntegerField;
    SelectInfoTemplateID: TIntegerField;
    SelectInfoHeaderID: TIntegerField;
    SelectInfoLetterRecommites: TWideStringField;
    SelectInfoFromStaffer: TWideStringField;
    SelectInfoLastUpdate: TDateTimeField;
    SelectInfoSendStatusID: TWordField;
    SelectInfoUserTableID: TIntegerField;
    SelectInfoFinalized: TBooleanField;
    SelectInfoUserMemo1: TWideStringField;
    SelectInfoUserMemo2: TWideStringField;
    SelectInfoColor: TIntegerField;
    SelectInfoLinked_LetterID: TIntegerField;
    SelectInfoVersionDate: TStringField;
    SelectInfoVersionNumber: TStringField;
    SelectInfoReciveTitle: TWideStringField;
    SelectInfoClassificatioTitle: TWideStringField;
    SelectInfoUrgencyTitle: TWideStringField;
    SelectInfoUserTitle: TWideStringField;
    SelectInfoFormatTitle: TWideStringField;
    SelectInfoToOrgTitle: TWideStringField;
    SelectInfoTemplateTitle: TWideStringField;
    SelectInfoFromTitle: TWideStringField;
    SelectInfoSignerTitle: TWideStringField;
    SelectInfoNumber: TIntegerField;
    SelectInfoTitle: TWideStringField;
    TntOpenDialog: TTntOpenDialog;
    SelectInfoSecretariatID: TIntegerField;
    pnlMain: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ExpToWordClick(Sender: TObject);
    procedure WordApplicationDocumentBeforeClose(ASender: TObject;
      const Doc: _Document; var Cancel: WordBool);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure ExecGetLetterTemplate_HeaderID;
    procedure OpenFileClick(Sender: TObject);
    procedure RefreshTemplates;
    procedure LookupTemplateGroupClick(Sender: TObject);
    procedure SelectInfoCalcFields(DataSet: TDataSet);
    procedure WordDocumentClose(Sender: TObject);
    procedure UpdateHasWordPage (xLetterID : integer);
  private
    { Private declarations }
   IsfromWord : Boolean;
  public
    { Public declarations }
    LetterID:integer;
    LetterFormat: byte;
    ReadOnly: boolean;
    procedure ReplaceAll;
    procedure SaveAs;
    function Exacts:string;
    procedure MakePage;
    procedure InsertCopy(ExtraLines:string);
  end;

var
  FExportToWord: TFExportToWord;

implementation

uses
  Dmu, UMain, businessLayer, YShamsiDate;

{$R *.dfm}
var
  ItemIndex: OleVariant;
  En :integer;

procedure TFExportToWord.FormCreate(Sender: TObject);
begin
  inherited;
  with Fields do
  begin
    close;
    Parameters.ParamByName('@tablename').Value :=dm.MainTableName;
    Open;
  end;
  dm.UserTemplateGroup.Last;
  LookupTemplateGroup.KeyValue:=dm.UserTemplateGroupTemplateGroupID.AsInteger;
  RefreshTemplates;
  IsfromWord:=False;
end;

procedure TFExportToWord.FormShow(Sender: TObject);
begin
  inherited;
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

procedure TFExportToWord.ReplaceAll;
var
  W,new,old,no: widestring;
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
      with Fields do
        if Locate('Description',old,[]) then
        begin
          if SelectInfo.FieldByName(FieldsFieldName.AsString).IsNull then
            new:=' '
          else
            new:=SelectInfo.FieldByName(FieldsFieldName.AsString).AsString
        end
        else
          if dm.Sentenses.Locate('SentenseName',old,[]) then
            if not dm.Sentenses.FieldByName('SentensValue').IsNull then
              new:=dm.Sentenses.FieldByName('SentensValue').AsString;

      if new='' then
      begin
        new:=InputBox(old,old,'');
      end;

      MainForm.ReplaceInWord(WordApplication,'(('+old+'))',CorrectFarsi(new));
      dm.Replace(w,'(('+old+'))',new);

      selst:=pos('((',w);
      selEn:=pos('))',w);
    end;
  end;

begin
  no:=SelectInfo.FieldByName('Innerno').AsString;

  WordDocument.ActiveWindow.ActivePane.View.SeekView := wdSeekCurrentPageHeader;

  if letterformat=1 then
  begin
    MainForm.ReplaceInWord(WordApplication,'((‘„«—Â ”‰œ))',dm.Cdate(no) );
    MainForm.ReplaceInWord(WordApplication,'(( «—ÌŒ ”‰œ))',dm.Cdate(SelectInfo.FieldByName('registrationdate').AsString) );
  end
  else
  begin
    MainForm.ReplaceInWord(WordApplication,'((‘„«—Â ”‰œ))','ÅÌ‘‰ÊÌ”');
    MainForm.ReplaceInWord(WordApplication,'(( «—ÌŒ ”‰œ))',' «—ÌŒ  ÂÌÂ');
  end;

  ReplaceInArea;

  WordDocument.ActiveWindow.ActivePane.View.SeekView := wdSeekMainDocument;

  if letterformat=1 then
  begin
    MainForm.ReplaceInWord(WordApplication,'((‘„«—Â ”‰œ))',dm.Cdate(no) );
    MainForm.ReplaceInWord(WordApplication,'(( «—ÌŒ ”‰œ))',dm.Cdate(SelectInfo.FieldByName('registrationdate').AsString) );
  end
  else
  begin
    MainForm.ReplaceInWord(WordApplication,'((‘„«—Â ”‰œ))','ÅÌ‘‰ÊÌ”');
    MainForm.ReplaceInWord(WordApplication,'(( «—ÌŒ ”‰œ))',' «—ÌŒ  ÂÌÂ');
  end;

  ReplaceInArea;
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
      if dm.Select_LetterReCommiteParaph.AsString<>'' then
        Result:=Result+':'+dm.Select_LetterReCommiteParaph.AsString;
      Result:=Result+delimeter;
      next;
    end;
  end;

  if result<>'' then
    Result[length(Result)]:='.' else result:=' ';
end;

procedure TFExportToWord.SaveAs;
var
  fileName:OleVariant;
begin
  inherited;
  fileName:=_TempPath+_WordFileName;
  WordDocument.SaveAs(filename);
end;

procedure TFExportToWord.ExpToWordClick(Sender: TObject);
Var
  i: byte;
  HNDL:THandle;
begin
  if dm.LetterTemplate.RecordCount= 0 then
  begin
    ShowMessage('«» œ« ﬁ«·»'+' '+ ' ' +_DocumentCaption+'—« «‰ Œ«» ò‰Ìœ');
    Exit;
  end;

  IsfromWord:=True;
  dm.RefreshTemplate;
  GetLetterTemplate_HeaderID.edit;
  GetLetterTemplate_HeaderIDTemplateId.AsInteger:=Dm.LetterTemplateID.AsInteger;
  GetLetterTemplate_HeaderID.Post;
  WordApplication.Visible:=True;
  MakePage;
  ReplaceAll;
  WordApplication.Selection.WholeStory;
  WordApplication.Keyboard (1065);
  WordApplication.Selection.RtlPara;
  en:=WordApplication.Selection.End_-1;
  if dm.LetterHasArchiveCopy then
    InsertCopy(Exacts);
   SaveAs;
   Enabled:=False;
end;

procedure TFExportToWord.UpdateHasWordPage (xLetterID : integer);
var
  AQry : TADOQuery;
begin
  AQry := TADOQuery.Create(nil);
  try
    AQry.Connection := Dm.YeganehConnection;
    AQry.Close;
    AQry.SQL.Text := ' update letter set Has_Page = dbo.has_Page(letterid), ' +
                     ' Has_WordPage = dbo.has_WordPage(letterid), ' +
                     ' Has_File = dbo.has_file(letterid) from Letter Where LetterID = ' + IntToStr(xLetterID);
    AQry.ExecSQL;
  finally
   FreeAndNil(AQry);
  end;
end;



procedure TFExportToWord.MakePage;
var
  itemindex,olv,emp,f,fals,tru:OleVariant;
  i: byte;
begin
  emp:='';
  fals:=false;
  tru:=true;
  olv:=wdOpenFormatAuto;

  WordApplication.Caption := '‰—„ «›“«— »«Ìê«‰Ì  ';

  with WordApplication do
  begin
    DM.SaveTemplateToFile;
    ChangeFileOpenDirectory(_TempPath);
    f:=_WordFileName;
    _Word_Is_Opened:=true;
    Documents.Open(f,fals,fals,fals,emp,emp,fals,emp,emp,olv,emp,tru,tru,tru,tru);

   if ActiveWindow.View.SplitSpecial <> wdPaneNone Then
     ActiveWindow.Panes.Item(2).Close;

   if ActiveWindow.ActivePane.View.Type_ in[ wdNormalView ,wdOutlineView] Then
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
    Copy;
    o1:=wdStory;
    o2:=wdMove;
    Selection.EndKey(o1,o2);
    o3:=wdPageBreak;
    InsertBreak(o3);
    Paste;
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

  if UpperCase(WordApplication.ActiveDocument.Name)<>_WordFileName then
    Exit;

  if (UpperCase(WordApplication.ActiveDocument.Name)<>_WordFileName) and
     (UpperCase(WordApplication.ActiveDocument.Name)<>_WordFileName+'X') and
     (UpperCase(WordApplication.ActiveDocument.Name)<>_WordFileName+'.DOCX') and
     (UpperCase(WordApplication.ActiveDocument.Name)<>_WordFileName+'.DOCX') and
     (UpperCase(WordApplication.ActiveDocument.Name)<>_WordFileName+'.DOC') then
    Exit;

  SaveAs;

  if dm.FullTextSearch then
    dm.InsertTextIntoLetter(WordApplication,Letterid);
  Timer1.Enabled := True;
  WordApplication.Disconnect;
end;

procedure TFExportToWord.Button1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFExportToWord.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  WordApplication.Disconnect;
  if IsfromWord then
  begin
    WordApplication.Quit;
    With dm,Get_LetterWordFile do
    begin
      if not Active then Open;
      if not Locate('LetterID',LetterID,[]) then
      begin
        if not(state in [dsinsert,dsedit]) then Insert;
        Get_LetterWordFileLetterID.AsInteger:=LetterID;
        Get_LetterWordFilePageNumber.AsInteger:=1;
        Get_LetterWordFileextention.AsInteger:=3;
        Get_LetterWordFileImage.LoadFromFile(_TempPath+_WordFileName);
        post;
      end;
    end;
    UpdateHasWordPage(LetterID);
  end;
  DeleteFile(pchar(_TempPath+_WordFileName));
end;

procedure TFExportToWord.Timer1Timer(Sender: TObject);
var
  FileName  : String;
  ver : Integer;
begin
  inherited;
  try
    with dm,Get_LetterWordFile do
    begin
      if not Active then
        Open;
      if not Locate('LetterID',LetterID,[]) then
      begin
        Insert;
        Get_LetterWordFileLetterID.AsInteger:=LetterID;
        Get_LetterWordFilePageNumber.AsInteger:=1;
        Get_LetterWordFileextention.AsInteger:=3;
        Get_LetterWordFileImage.LoadFromFile(_TempPath + _WordFileName);
        post;
      end;
      _Word_Is_Opened := False;
      Timer1.Enabled := False;
    end;

    if dm._BaseSQLConnection.GetKeyvalue('SaveFileType') = '1' then
    begin
      FileName := Dm.File_AddressAddress.AsString + Trim(Dm.Get_LetterData_by_LetterIDLetterDataID.AsString)+'_'+IntToStr(Dm.Get_LetterData_by_LetterDataIDPageNumber.AsInteger + 1)+'.' +  Dm.Get_LetterData_by_LetterIDExtentionName.AsString;
      Dm.ADOQuery1.Close;
      Dm.ADOQuery1.Parameters.ParamByName('path').Value :=  FileName;
      Dm.ADOQuery1.Parameters.ParamByName('Pa_LetterDataID').Value := DM.Get_LetterData_by_LetterDataIDLetterDataID.AsInteger;
      Dm.ADOQuery1.ExecSQL;
      dm.Get_LetterData_by_LetterDataIDImage.SaveToFile(FileName);
      Dm.ADOQuery2.Close;
      Dm.ADOQuery2.ExecSQL;
    end;
    Close;
  except on E : Exception do
    begin
      dm.Get_LetterWordFile.Cancel;
    end;
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
  s: WideString;
  i: integer;
  AQry : TADOQuery;
begin
  inherited;
  // ⁄ÌÌ‰ ”ÿÕ œ” —”Ì
  if Not Dm.GetActionAccess('AWinFromWord',1) then
  begin
     ShowMyMessage('ÅÌ€«„','ﬂ«—»— ê—«„Ì ‘„« »Â «Ì‰ ﬁ”„  œ” —”Ì ‰œ«—Ìœ',[mbOK],mtInformation);
     Abort;
  end;

  if tntOpenDialog.Execute then
  begin
    with dm,Get_LetterWordFile do
    begin
      if not Active then
        Open;
      if not(state in [dsinsert,dsedit]) then
        Insert;
      Get_LetterWordFileLetterID.AsInteger:=LetterID;
      Get_LetterWordFilePageNumber.AsInteger:=1;
      Get_LetterWordFileextention.AsInteger:=3;

      if FileExists(_ApplicationPath+'tmpFile.docx')then
        DeleteFile(pchar(_ApplicationPath+'tmpFile.docx'));

      if CopyFileW( replacePWC(StringToPWide(TntOpenDialog.filename,i)), StringToPWide(_ApplicationPath+'tmpFile.docx',i), False) then
        Get_LetterWordFileImage.LoadFromFile(_ApplicationPath+'tmpFile.docx')
      else if CopyFileW( StringToPWide(TntOpenDialog.filename,i), StringToPWide(_ApplicationPath+'tmpFile.docx',i), False) then
        Get_LetterWordFileImage.LoadFromFile(_ApplicationPath+'tmpFile.docx')
      else
        ShowMessage('Œÿ« œ— ŒÊ«‰œ‰ ›«Ì· „»œ«');

      post;
    end;
    UpdateHasWordPage(LetterID);
    dm.ExecGet_LetterWordFile(Letterid,FALSE);
  end;
  IsfromWord:=False;
  close;
end;

procedure TFExportToWord.RefreshTemplates;
begin
  inherited;
  with dm,LetterTemplate do
  begin
    Close;
    Parameters.ParamByName('@TemplateGroupID').Value:=LookupTemplateGroup.KeyValue;
    Open;
  end;
end;

procedure TFExportToWord.LookupTemplateGroupClick(Sender: TObject);
begin
  inherited;
  RefreshTemplates;
end;

procedure TFExportToWord.SelectInfoCalcFields(DataSet: TDataSet);
begin
  inherited;
  {Ranjbar 89.05.26 ID=11}
  SelectInfoIncommingMiladiDate_Calc.AsString := MiladiMString(Trim(SelectInfoIncommingdate.AsString))
  //---
end;

procedure TFExportToWord.WordDocumentClose(Sender: TObject);
begin
  inherited;
  //ShowMessage('Close Word');
end;

end.
