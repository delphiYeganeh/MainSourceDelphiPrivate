unit AddLetterDataDM;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDMAddLetterData = class(TDataModule)
    QrSrchZipExt: TADOQuery;
    QrSrchZipExtExtentionID: TAutoIncField;
    QrZipExt: TADOQuery;
    QrZipExtUserExtentionID: TAutoIncField;
    QrZipExtUserId: TIntegerField;
    QrZipExtReaderApplication: TWideStringField;
    QrZipExtExtentionID: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMAddLetterData: TDMAddLetterData;

implementation

uses Dmu;

{$R *.dfm}

end.
