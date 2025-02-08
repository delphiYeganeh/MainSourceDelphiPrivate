unit GroupExportToWord;
/////?????
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, ComCtrls, YWhereEdit, Grids, DBGrids,
  YDbgrid, Buttons, ExtCtrls, DBCtrls, Yeganeh_Word, Word2000, OleServer,office2000,
  WordXP, BaseUnit, ExtActns, ActnList;

type

  TFrMakeGroupExport = class(TMBaseForm)
    Panel1: TPanel;
    Button2: TButton;
    BBClose: TBitBtn;
    Panel2: TPanel;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    DBLkCBTemplateTitle: TDBLookupComboBox;
    NewPage: TCheckBox;
    GetValueInNull: TCheckBox;
    Edit1: TEdit;
    Edit2: TEdit;
    DSample: TDataSource;
    Yeganeh_Word: TYeganeh_Word;
    WordDocument: TWordDocument;
    WordApplication: TWordApplication;
    Fields: TADODataSet;
    FieldsID: TAutoIncField;
    FieldsFieldName: TWideStringField;
    FieldsDescription: TWideStringField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Yeganeh_WordNeedTextOnNull(FieldDescription: WideString;
      var fieldValue: WideString);
    procedure Yeganeh_WordNeedDataBaseField(FieldDescription: WideString;
      var fieldName: WideString; var isBarCode: Boolean);
    procedure BBCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    TableName    :string ;
    TableDescription:string;
    TableID:integer;
    Connection:TADOConnection;

  end;

var
  FrMakeGroupExport: TFrMakeGroupExport;

  const NumberOfColumns=2;
        EditLenght=150;
        HorSpaces=10;
        VerSpaces=30;


implementation

uses Dmu, Report;
{$R *.dfm}
procedure TFrMakeGroupExport.FormShow(Sender: TObject);
begin
 Caption:=' ÂÌÂ ê“«—‘ «“'+TableDescription;
  Fields.Open;;
end;

procedure TFrMakeGroupExport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TFrMakeGroupExport.FormCreate(Sender: TObject);
begin
   with Dm.WordTemplate do
      if not Active then
         Open;
   Yeganeh_Word.DocumetTemplateFile := _WordFileName;
   Yeganeh_Word.WordFilePath := _TempPath;
end;

procedure TFrMakeGroupExport.Button2Click(Sender: TObject);
begin
   frep.Report_Customer.First;
   WordApplication.Connect;
   DM.SaveTemplateToFile; //–ŒÌ—Â œ— ›«Ì·
   Yeganeh_Word.NewPage := NewPage.Checked;
   Yeganeh_Word.PasteRecords;
   WordApplication.Disconnect;
   ShowMessage('»« „Ê›ﬁÌ  «‰Ã«„ ‘œ');

end;

procedure TFrMakeGroupExport.Yeganeh_WordNeedTextOnNull(
  FieldDescription: WideString; var fieldValue: WideString);
 var s: string;
begin
   if GetValueInNull.Checked then
      if InputQuery(FieldDescription,FieldDescription,s) then
         fieldValue := s;
end;

procedure TFrMakeGroupExport.Yeganeh_WordNeedDataBaseField(
  FieldDescription: WideString; var fieldName: WideString;
  var isBarCode: Boolean);
begin
   if Fields.Locate('Description',FieldDescription,[]) then
      fieldName := FieldsFieldName.AsString;
end;

procedure TFrMakeGroupExport.BBCloseClick(Sender: TObject);
begin
   close;
end;

end.
