unit AddDocumentDM;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDMAddDocument = class(TDataModule)
    QrSrchLinked: TADOQuery;
    QrSrchLinkedIndicatorID: TIntegerField;
    QrSrchLinkedIncommingNo: TWideStringField;
    QrSrchLinkedMemo: TWideStringField;
    QrSrchLinkedLetterID: TAutoIncField;
    QrLinked: TADOQuery;
    DSLinked: TDataSource;
    QrLinkedLetterID: TAutoIncField;
    QrLinkedIndicatorID: TIntegerField;
    QrLinkedIncommingNo: TWideStringField;
    QrLinkedMemo: TWideStringField;
    QrSrchIndic: TADOQuery;
    QrSrchIndicLetterID: TAutoIncField;
    QrSrchIndicIndicatorID: TIntegerField;
    QrUserMemo: TADOQuery;
    QrUserMemoLetterID: TAutoIncField;
    QrUserMemoUserMemo: TWideStringField;
    QrUserMemo1: TADOQuery;
    AutoIncField1: TAutoIncField;
    QrUserMemo2: TADOQuery;
    AutoIncField2: TAutoIncField;
    QrUserMemo1UserMemo1: TWideStringField;
    QrUserMemo2UserMemo2: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMAddDocument: TDMAddDocument;

implementation

uses Dmu;

{$R *.dfm}

end.
