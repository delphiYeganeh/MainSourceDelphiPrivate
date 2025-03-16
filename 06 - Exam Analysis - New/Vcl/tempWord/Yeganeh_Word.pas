unit Yeganeh_Word;

interface

uses
  Wordxp,officexp,  YDbgrid,  ADODB, DB, OleServer, StdCtrls, Controls,Variants,
  DBCtrls, Classes, ActnList,Forms,sysUtils,dialogs, ExtActns, Grids,Windows,ComObj,
  DBGrids,Graphics,Clipbrd;

type
  TNeedDataBaseFieldName=procedure (FieldDescription: widestring; var fieldName: widestring; var isBarCode :boolean) of object;
  TNeedTextOnNull=procedure (FieldDescription: widestring; var fieldValue: widestring) of object;
  TOnNeedPicSize=procedure (FieldName: widestring; var w,h: real) of object;
  TYeganeh_Word = class(tcomponent)


    procedure PasteRecords;
    procedure ReplceImage(FieldName:widestring);
    procedure ReplceBarCode(FieldName:widestring);
    procedure FindInWord(w:twordapplication;old:widestring);
    procedure ReplaceInWord(w:twordapplication;old,new:widestring);
    procedure ReadDocument(DocumentName:string);
    Procedure PasteDocument(HasHeader:boolean);

  private
    { Private declarations }
    FWordApplication  : TWordApplication;
    FWordDocument :TWordDocument;
    FOnNeedDataBaseFieldName : TNeedDataBaseFieldName;
    FOnNeedTextOnNull : TNeedTextOnNull;
    FOnNeedTextOnError : TNeedTextOnNull;
    FOnNeedPicSize : TOnNeedPicSize;
    FYdataset : TDataSet;
    FWordFilePath :string;
    FDocumetTemplateFile :string;
    FHeaderTemplateFile :string;
    FWordTitle :string;
    FNewPage :boolean;
    FInvertDateNo :boolean;
    FInvertNumber :boolean;
    FReplaceInHeader :boolean;

    procedure ReplaceAll;
    Procedure ReadMainText;
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(aowner:tcomponent);override;

  published
    Property WordApplication : TWordApplication read FWordApplication write FWordApplication;
    Property WordDocument : TWordDocument read FWordDocument write FWordDocument;
    property WordTitle :String read FWordTitle write FWordTitle;
    property NewPage :boolean read FNewPage write FNewPage;
    property InvertDateNo :boolean read FInvertDateNo write FInvertDateNo;
    property ReplaceInHeader :boolean read FReplaceInHeader write FReplaceInHeader;
    property OnNeedDataBaseField:TNeedDataBaseFieldname read FOnNeedDataBaseFieldName write FOnNeedDataBaseFieldName;
    property OnNeedTextOnNull:TNeedTextOnNull read FOnNeedTextOnNull write FOnNeedTextOnNull;
    property OnNeedTextOnError:TNeedTextOnNull read FOnNeedTextOnError write FOnNeedTextOnError;
    property OnNeedPicSize:TOnNeedPicSize read FOnNeedPicSize write FOnNeedPicSize;
    property DocumetTemplateFile :string read fDocumetTemplateFile write FDocumetTemplateFile;
    property HeaderTemplateFile :string read fHeaderTemplateFile write FHeaderTemplateFile;
    property WordFilePath :string read FWordFilePath write FWordFilePath;
    property Ydataset: TDataSet read FYdataset write FYDataSet;
    property invertNumber: boolean read FInvertNumber write FInvertNumber;
    { Published declarations }
  end;

procedure Register;

implementation

uses YShamsiDate,Dmu;

var emp,fals,tru,
filename,ItemIndex, OpenFormatAuto       : OleVariant;


procedure Register;
begin
  RegisterComponents('Yeganeh', [TYeganeh_Word]);
end;

constructor TYeganeh_Word.Create(aowner:tcomponent);
 begin
  inherited Create(aowner);
    emp:='';
    fals:=false;
    tru:=true;
    OpenFormatAuto:=wdOpenFormatAuto;
    FNewPage:=false;
    FReplaceInHeader:=false;
 end;

procedure TYeganeh_Word.ReadMainText;
 begin
    ReadDocument(DocumetTemplateFile);
    WordApplication.Selection.WholeStory;
    WordApplication.Selection.Cut;
  end;
procedure TYeganeh_Word.ReadDocument(DocumentName:string);
begin
   WordApplication.Caption := WordTitle;
   with WordApplication do
    begin
     ChangeFileOpenDirectory(_EXEDIR);
     filename:=DocumentName;
     Documents.Open(filename       ,fals,tru,fals,emp,emp,fals,emp,emp,OpenFormatAuto,emp,tru,tru,tru,tru);

     If ActiveWindow.View.SplitSpecial <> wdPaneNone Then
        ActiveWindow.Panes.Item(2).Close;

     If ActiveWindow.ActivePane.View.Type_ in[ wdNormalView ,wdOutlineView] Then
        ActiveWindow.ActivePane.View.Type_:= wdPrintView;

    ItemIndex := 1;
    WordDocument.ConnectTo(WordApplication.Documents.Item(itemindex));
 end;{with wordapplication}
end;

Procedure TYeganeh_Word.PasteDocument(HasHeader:boolean);
var
    wabc:TwordApplicationDocumentBeforeClose;
begin
   ReadMainText;
  if HasHeader then
    begin
       try
          wabc:=WordApplication.OnDocumentBeforeClose;
          WordApplication.OnDocumentBeforeClose:=nil;
          WordDocument.Close;
          WordApplication.OnDocumentBeforeClose:=wabc;
          ReadDocument(HeaderTemplateFile);
       except
       end;
    end;
end;


procedure TYeganeh_Word.PasteRecords;
var
    PageBreak,Story,f:OleVariant;
    FirstRecord,parameter1:boolean;

  wordApp : Variant;
  Resultw : Boolean;
begin
   Resultw := False;
   try
     wordapp  := GetActiveOleObject('Word.Application');
     Resultw   := not varIsEmpty(wordApp);
   except
     Resultw := False;
   end;

   if not Resultw then
     try
       wordapp  := Createoleobject('Word.Application');
     except
     end;

    parameter1 := false;
    try
       if HeaderTemplateFile<>'' then
         parameter1 := true;
    except
    end;

    PasteDocument(parameter1);

    Story:=wdStory;
    f:=false ;
    PageBreak:=wdPageBreak;

    firstRecord:=true;
    WordApplication.Visible:=true;

    with Ydataset do
     begin
        //first; ÈÏáíá æÌæÏ ÎØÇ ÈÑÏÇÔÊå ÔÏ
       while not eof do
         begin
           WordApplication.Selection.EndKey(Story,f);
           if not firstRecord then
             if FNewPage then
               WordApplication.Selection.InsertBreak(PageBreak)
             else
               WordApplication.Selection.TypeParagraph;
            firstRecord:=false;
            WordApplication.Selection.Paste;
            ReplaceAll;
            Next;
         end;
     end;
 end;

procedure TYeganeh_Word.ReplaceInWord(w:twordapplication;old,new:widestring);
var r,Wap,txt,reptxt:OleVariant;
begin
    with w.Selection.Find do
     begin
       ClearFormatting;
      // Replacement.ClearFormatting;
       Wap := wdFindContinue;
       r:=wdReplaceAll;
       Txt :=old;
       RepTxt := new;
       Execute(txt,fals,fals,fals,fals,fals,tru,wap,fals,reptxt,r,fals,fals,fals,fals);
     end;
end;{proc}


procedure TYeganeh_Word.FindInWord(w:twordapplication;old:widestring);
var r,Wap,txt,reptxt:OleVariant;
begin
    with w.Selection.Find do
     begin
       ClearFormatting;
       Replacement.ClearFormatting;
       r:=wdFindContinue;
       Txt :=old;
       RepTxt := '';
       Text := old;
       Replacement.Text := '';
       Execute(txt,fals,fals,fals,fals,fals,tru,wap,fals,reptxt,r,fals,fals,fals,fals);
     end;
end;{proc}


procedure TYeganeh_Word.ReplceBarCode(FieldName:widestring);
 var w,h: real;
 var s: InlineShape;
 var rang:OleVariant;

begin
  inherited;
//  ClipBarCode(Ydataset.FieldByname(FieldName).AsString,'c:\temp1.bmp');
  rang:=WordApplication.Selection.Range;
  with WordApplication,Selection do
    begin
     s:=InlineShapes.AddPicture('c:\temp1.bmp',fals,tru,Rang);
    if Assigned(FOnNeedPicSize) then
     begin
     FOnNeedPicSize(FieldName,w,h);
      if w>0 then
       begin
        s.Height:=CentimetersToPoints(h);
        s.Width:=CentimetersToPoints(w);
       end;
     end;
    end;
  DeleteFile('c:\temp1.bmp');
end;

procedure TYeganeh_Word.ReplceImage(FieldName:widestring);
 var rang:OleVariant;
 var s: InlineShape;
  var new:Tfield;   h,w:real;
begin
  inherited;
  new:=Ydataset.Fieldbyname(FieldName);
  TBlobField(new).SaveToFile('c:\temp.JPG');
  rang:=WordApplication.Selection.Range;
  with WordApplication,Selection do
    begin
     s:=InlineShapes.AddPicture('c:\temp.JPG',fals,tru,Rang);
    if Assigned(FOnNeedPicSize) then
     begin
     FOnNeedPicSize(FieldName,w,h);
      if w>0 then
       begin
        s.Height:=CentimetersToPoints(h);
        s.Width:=CentimetersToPoints(w);
       end;
     end;
    end;
  DeleteFile('c:\temp.JPG');
end;

procedure TYeganeh_Word.ReplaceAll;
var W,new,old,FieldName: widestring;
selst,selen:integer;
     IsBarCode:boolean;
procedure ReplaceInArea;


  procedure replaceText(r:string);
  begin
    WordApplication.Selection.TypeText(r);
    delete(w,selst,selen-selst+2);
    Insert(r, w,selst);
    selst:=pos('((',w);
    selEn:=pos('))',w);
  end;

begin
     WordApplication.Selection.WholeStory;
     w:=WordApplication.Selection.Text;
     WordApplication.Selection.SetRange(0,0);
     selst:=pos('((',w);
     selEn:=pos('))',w);

    while SelSt*SelEn<>0 do
       begin
        old:=copy(w,SelSt+2,SelEn-SelSt-2);
        FindInWord(WordApplication,'(('+old+'))');
        FieldName:='';
        if trim(old)='ÈÚÏ' then
          begin
           Ydataset.Next;
           if Ydataset.Eof then exit;
           replaceText('');
           Continue;
          end;
        if Assigned(FOnNeedDataBaseFieldName) then
          begin
            FOnNeedDataBaseFieldName(old,FieldName,IsBarCode);
            if IsBarCode then
              begin
               ReplceBarCode(FieldName);
               replaceText('');
               Continue;
              end;
            if FieldName<>'' then
           try
            if  not Ydataset.Fieldbyname(FieldName).IsNull then
             if Ydataset.Fieldbyname(FieldName).ClassNameIs('TBlobField')  then
              begin
               ReplceImage(FieldName);
               replaceText('');
               Continue;
              end
             else
              begin
               replaceText(CorrectFarsi(Ydataset.Fieldbyname(FieldName).AsString));
               Continue;
              end;  {if}
            except
             if Assigned(FOnNeedTextOnError) then
              begin
               FOnNeedTextOnError(old,new);
               replaceText(CorrectFarsi(new));
               Continue;
              end;{if}
             end;{except}
          end;{if ass}
       if Assigned(FOnNeedTextOnNull) then
        begin
         FOnNeedTextOnNull(old,new);
         replaceText(CorrectFarsi(new));
        end; 
      end;
  end;{while}

begin
    if FReplaceInHeader then
    begin
     WordDocument.ActiveWindow.ActivePane.View.SeekView := wdSeekCurrentPageHeader;
     ReplaceInArea;
    end;

    WordDocument.ActiveWindow.ActivePane.View.SeekView := wdSeekMainDocument;
    ReplaceInArea;
 end;
end.

