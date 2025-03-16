unit ULetterTemplate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, xpBitBtn, Yeganeh_Word, Word2000,
  OleServer, WordXP,db;

type
  TFletterTemplate = class(TForm)
    BitBtn1: TxpBitBtn;
    BitBtn2: TxpBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    WordDocument: TWordDocument;
    WordApplication: TWordApplication;
    Yeganeh_Word1: TYeganeh_Word;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Yeganeh_Word1NeedDataBaseField(FieldDescription: WideString;
      var fieldName: WideString; var isBarCode: Boolean);
    procedure Yeganeh_Word1NeedTextOnNull(FieldDescription: WideString;
      var fieldValue: WideString);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent;YDtset : TDataSet = nil;newPage :boolean = false );reintroduce;virtual;
  end;

var
  FletterTemplate: TFletterTemplate;

implementation

uses dmu;

{$R *.dfm}

procedure TFletterTemplate.BitBtn1Click(Sender: TObject);
begin////
  with dm,LetterTemplate do
  begin
     // Parameters.ParamByName('UTID').Value:= _UTID;
      if not Active then Open;
      SaveTemplateToFile;
  end;
      Yeganeh_Word1.PasteRecords;
      WordApplication.ActiveDocument.PrintPreview;
close;
end;

procedure TFletterTemplate.FormCreate(Sender: TObject);
begin
  with dm.LetterTemplate do
  begin//
   // close;
   // Parameters.ParamByName('UTID').Value:= _UTID;
    if not Active then Open;
  end;	

end;

procedure TFletterTemplate.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFletterTemplate.Yeganeh_Word1NeedDataBaseField(
  FieldDescription: WideString; var fieldName: WideString;
  var isBarCode: Boolean);
begin
fieldName:=FieldDescription;
end;

procedure TFletterTemplate.Yeganeh_Word1NeedTextOnNull(
  FieldDescription: WideString; var fieldValue: WideString);
begin
 fieldValue:=''
end;

constructor TFletterTemplate.Create(AOwner: TComponent;
  YDtset: TDataSet;newPage :boolean);
begin
  inherited create(AOwner);
 Yeganeh_Word1.Ydataset:=YDtset;
 Yeganeh_Word1.NewPage:=newPage;

end;

end.
