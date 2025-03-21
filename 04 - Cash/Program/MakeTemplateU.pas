unit MakeTemplateU;

interface

uses
  Word2000,  YDbgrid, BaseUnit, ADODB, DB, OleServer, StdCtrls, Controls,
  DBCtrls, Classes, ActnList,Forms,sysUtils,dialogs, ExtActns, Grids,
  DBGrids, ExtCtrls, WordXP, Buttons, Mask,
  Yeganeh_Word, Menus;

type
  TFrMakeTemplate = class(TYBaseForm)
    WordApplication: TWordApplication;
    WordDocument: TWordDocument;
    Label3: TLabel;
    Yeganeh_Word: TYeganeh_Word;
    Panel1: TPanel;
    ExpToWord: TBitBtn;
    Button1: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    CBNewPage: TCheckBox;
procedure WordApplicationDocumentBeforeClose(ASender: TObject;
  const Doc: _Document; var Cancel: WordBool);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ExpToWordClick(Sender: TObject);
    procedure Yeganeh_WordNeedDataBaseField(FieldDescription: WideString;
      var fieldName: WideString; var isBarCode: Boolean);
    procedure Yeganeh_WordNeedTextOnNull(FieldDescription: WideString;
      var fieldValue: WideString);

  private
    { Private declarations }
  public
    { Public declarations }
    LetterID:integer;
    LetterFormat: byte;
    ReadOnly: boolean;
  end;

var
  FrMakeTemplate: TFrMakeTemplate;

implementation

uses Dmu, BusinessLayer;

{$R *.dfm}
procedure TFrMakeTemplate.WordApplicationDocumentBeforeClose(ASender: TObject;
  const Doc: _Document; var Cancel: WordBool);

begin
  inherited;
WordApplication.Disconnect;
end;

procedure TFrMakeTemplate.Button1Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFrMakeTemplate.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DeleteFile(_TempPath+_WordFileName);
  WordApplication.Disconnect;
end;

procedure TFrMakeTemplate.FormCreate(Sender: TObject);
begin
  inherited;
Open_WordTemplateList;
Yeganeh_Word.WordFilePath:=_TempPath;
Yeganeh_Word.DocumetTemplateFile:=_WordFileName;

end;

procedure TFrMakeTemplate.ExpToWordClick(Sender: TObject);
begin
  inherited;
  with dm do
   begin
    SaveTemplateToFile;
    Yeganeh_Word.NewPage:=CBNewPage.Checked;
    Yeganeh_Word.PasteRecords;
    WordApplication.ActiveDocument.PrintPreview;
   end;
close;

end;

procedure TFrMakeTemplate.Yeganeh_WordNeedDataBaseField(
  FieldDescription: WideString; var fieldName: WideString;
  var isBarCode: Boolean);
begin
  inherited;
fieldName:=Get_FieldName_byDescription(FieldDescription);
end;

procedure TFrMakeTemplate.Yeganeh_WordNeedTextOnNull(
  FieldDescription: WideString; var fieldValue: WideString);
begin
  inherited;
 fieldValue:=''

end;

end.
