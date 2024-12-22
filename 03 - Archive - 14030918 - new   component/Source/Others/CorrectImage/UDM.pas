unit UDM;

interface

uses
  SysUtils, Classes, DB, ADODB,Registry,Windows;

type
  TDM = class(TDataModule)
    YeganehConnection: TADOConnection;
    QrCorrectImage: TADOQuery;
    DSCorrectImage: TDataSource;
    QrCorrectImageLetterDataID: TAutoIncField;
    QrCorrectImageImage: TBlobField;
    QrCorrectImageIsCorrectedImage: TBooleanField;
  private
    { Private declarations }
  public
    
  end;

var
  DM: TDM;

implementation


{$R *.dfm}


end.
