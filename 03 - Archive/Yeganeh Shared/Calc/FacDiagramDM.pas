unit FacDiagramDM;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TDMFacDiagram = class(TDataModule)
    QrFacDiagram: TQuery;
    DSFacDiagram: TDataSource;
    QrFacDiagramSumFacPrice: TFloatField;
    QrFacDiagramFacYear: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMFacDiagram: TDMFacDiagram;

implementation

{$R *.dfm}

end.
