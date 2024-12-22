unit UzistDM;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TZistDm = class(TDataModule)
    DSResearch: TDataSource;
    QryResearch: TADOQuery;
    QryCity: TADOQuery;
    DSCity: TDataSource;
    DSEmployer: TDataSource;
    QryEmployer: TADOQuery;
    QryEmployerEmployerID: TAutoIncField;
    QryEmployerDt: TStringField;
    QryEmployerResearchID: TIntegerField;
    QryEmployerCityID: TIntegerField;
    QryEmployerEmployerCode: TIntegerField;
    QryEmployerEmployerDescrp: TStringField;
    QryEmployerExplan: TStringField;
    QryEmployerStatusID: TWordField;
    QryEmployerKindID: TWordField;
    QryEmployerCityTitle: TStringField;
    QryEmployerResearchTitle: TStringField;
    Kind: TADOTable;
    Status: TADOTable;
    QryEmployerKindTitle: TStringField;
    QryEmployerStatusTitle: TStringField;
    DSCodeList: TDataSource;
    QryFileKeeping: TADOQuery;
    QryFileKeepingFileKeepingID: TAutoIncField;
    QryFileKeepingFileKeepingCode: TStringField;
    QryFileKeepingName: TStringField;
    QryFileKeepingk: TSmallintField;
    QryFileKeepingT: TSmallintField;
    QryFileKeepingz: TSmallintField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ZistDm: TZistDm;

implementation

uses Dmu;

{$R *.dfm}

procedure TZistDm.DataModuleCreate(Sender: TObject);
begin
QryCity.Open;
kind.Open;
Status.Open;
QryResearch.Open;
end;

end.
