unit ExportToWord;

interface

uses
  Word2000,  YDbgrid, BaseUnit, ADODB, DB, OleServer, StdCtrls, Controls,
  DBCtrls, Classes, ActnList,Forms,sysUtils,dialogs, ExtActns, Grids,
  DBGrids, ExtCtrls, WordXP, Buttons, Mask,Graphics, Menus;

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
    OpenDialog: TOpenDialog;
    GetWordTemplate_HeaderID: TADODataSet;
    GetWordTemplate_HeaderIDLetterID: TAutoIncField;
    GetWordTemplate_HeaderIDTemplateId: TIntegerField;
    GetWordTemplate_HeaderIDheaderid: TIntegerField;
    GetWordTemplate_HeaderIDFromOrgID: TIntegerField;
    GetWordTemplate_HeaderIDPreCode: TWideStringField;
    Label3: TLabel;
    Panel1: TPanel;
    Label2: TLabel;
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
    procedure FormShow(Sender: TObject);
    procedure ExpToWordClick(Sender: TObject);
procedure WordApplicationDocumentBeforeClose(ASender: TObject;
  const Doc: _Document; var Cancel: WordBool);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure ExecGetWordTemplate_HeaderID;
    procedure OpenFileClick(Sender: TObject);
    procedure LookupTemplateGroupClick(Sender: TObject);
    Procedure  Open_Fields_by_TableID;

  private
    { Private declarations }
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

uses Dmu ,businessLayer, YShamsiDate, MainU;

{$R *.dfm}
var  En :integer;
procedure TFExportToWord.FormShow(Sender: TObject);
begin
  inherited;
  with Fields do
  begin
   close;
   Parameters.ParamByName('@tablename').Value :='Customer';
   Open;
  end;
  Open_Fields_by_TableID;


with SelectInfo,Parameters do
 begin
  Close;
  ParamByName('@where').Value:=' l.Letterid ='+IntToStr(letterid);
  Open;
 end;

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
          with Fields do     //›Ì·œÂ«Ì ‰«„Â
             if Locate('Description',old,[]) then
             begin
                if SelectInfo.FieldByName(FieldsFieldName.AsString).IsNull then
                   new:=' '
                else
                   new:=SelectInfo.FieldByName(FieldsFieldName.AsString).AsString
             end;


           if new='' then
             with Select_Fields_by_TableID do //›Ì·œÂ«Ì  ⁄—Ì› ‘œÂ ﬂ«—»—
              if Locate('Description',old,[]) then
              //  new := Get_FieldValue_by_LetterID_FieldID(LetterID,Select_Fields_by_TableIDID.AsInteger);

           {Ranjbar 88.05.27 Code=7}
           if new = '' then
//--              if Dm.GetValue(747) = True then // ‰ŸÌ„«  ﬂ«—»—Ì
                // new := Input_Value('ﬁ—«— œ«œ‰ „ﬁœ«—',' ›Ì·œ " '+ Old + '" Ì«›  ‰‘œ ·ÿ›« »—«Ì ¬‰ „ﬁœ«—  ⁄ÌÌ‰ ‰„«ÌÌœ', Old );
           //---

           if new<>'' then
//--             MainForm.ReplaceInWord(WordApplication,'(('+old+'))',CorrectFarsi(new));

           dm.Replace(w,'(('+old+'))',new);

           selst:=pos('((',w);
           selEn:=pos('))',w);
       end;
   end;


begin
   no := SelectInfo.FieldByName('Innerno').AsString;

   WordDocument.ActiveWindow.ActivePane.View.SeekView := wdSeekCurrentPageHeader;



   ReplaceInArea;

   WordDocument.ActiveWindow.ActivePane.View.SeekView := wdSeekMainDocument;


   ReplaceInArea;
end;


function TFExportToWord.Exacts:string;
begin
end;

procedure TFExportToWord.SaveAs;
var fileName:OleVariant;
begin
  inherited;
  fileName:=_TempPath+_WordFileName;
  WordDocument.SaveAs(filename);
end;

procedure TFExportToWord.ExpToWordClick(Sender: TObject);
 var i: byte;
begin
   if dm.WordTemplate.RecordCount= 0 then
   begin
      messageShowString('«» œ« ﬁ«·» ‰«„Â —« «‰ Œ«» ò‰Ìœ',false);
      exit;
   end;
   WordApplication.Visible:=true;

   dm.RefreshTemplate;
   MakePage;
   ReplaceAll;
   WordApplication.Selection.WholeStory;
   WordApplication.Keyboard (1065);
   WordApplication.Selection.RtlPara;
   en:=WordApplication.Selection.End_-1;

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

    WordApplication.Caption := 'Ìê«‰Â';

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
  if  (UpperCase(WordApplication.ActiveDocument.Name)<>_WordFileName) and
      (UpperCase(WordApplication.ActiveDocument.Name)<>_WordFileName+'X')    AND
      (UpperCase(WordApplication.ActiveDocument.Name)<>_WordFileName+'.DOCX')    AND
      (UpperCase(WordApplication.ActiveDocument.Name)<>_WordFileName+'.YGN')    AND
      (UpperCase(WordApplication.ActiveDocument.Name)<>_WordFileName+'.DOC')    then
   exit;

    SaveAs;
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
  DeleteFile(_TempPath+_WordFileName);
  WordApplication.Disconnect;
end;

procedure TFExportToWord.Timer1Timer(Sender: TObject);
begin
  inherited; {
try
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
except dm.Get_LetterWordFile.Cancel end;  }
end;
procedure TFExportToWord.ExecGetWordTemplate_HeaderID;
begin
  with GetWordTemplate_HeaderID,parameters do
     begin
       Close;
       ParamByName('@letterId').value:=letterId;
       open;
   end;
end;
procedure TFExportToWord.OpenFileClick(Sender: TObject);
var s: WideString;
begin
  inherited;   {
if OpenDialog.Execute then
 begin
  with dm,Get_LetterWordFile do
   begin
     if not Active then Open;
     if  not (state  in [dsinsert,dsedit]) then Insert;
     Get_LetterWordFileLetterID.AsInteger:=LetterID;
     Get_LetterWordFilePageNumber.AsInteger:=1;
     Get_LetterWordFileextention.AsInteger:=3;
     s:=OpenDialog.FileName;
     Get_LetterWordFileImage.LoadFromFile(s);
     post;
   end;
dm.ExecGet_LetterWordFile(Letterid,FALSE);
end;
close;}

end;

procedure TFExportToWord.LookupTemplateGroupClick(Sender: TObject);
begin
  inherited;
with dm,WordTemplate do
 begin
  Close;
  Parameters.ParamByName('@TemplateGroupID').Value:=LookupTemplateGroup.KeyValue;
  Open;
 end;

end;

end.
