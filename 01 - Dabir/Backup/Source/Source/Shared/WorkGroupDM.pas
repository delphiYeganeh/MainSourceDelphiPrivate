unit WorkGroupDM;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDMWorkGroup = class(TDataModule)
    SPWorkGroup: TADOStoredProc;
    DSWorkGroup: TDataSource;
    SPWorkGroupWorkGroupID: TAutoIncField;
    SPWorkGroupTitle: TWideStringField;
    FromOrganizations: TADODataSet;
    DFromOrganizations: TDataSource;
    QrWorkGroupOrg: TADOQuery;
    DSWorkGroupOrg: TDataSource;
    QrWorkGroupOrgWorkGroupOrgID: TAutoIncField;
    QrWorkGroupOrgWorkGroupID: TIntegerField;
    SPWorkGroupDescript: TWideStringField;
    FromOrganizationsID: TAutoIncField;
    FromOrganizationsTitle: TWideStringField;
    FromOrganizationsParentID: TIntegerField;
    FromOrganizationsPhone: TWideStringField;
    FromOrganizationsFax: TWideStringField;
    FromOrganizationsEmail: TWideStringField;
    FromOrganizationsResponsibleStaffer: TWideStringField;
    FromOrganizationsIsActive: TBooleanField;
    FromOrganizationsPreCode: TWideStringField;
    FromOrganizationsIsInnerOrg: TBooleanField;
    FromOrganizationsCode: TWideStringField;
    FromOrganizationsUniqueID: TLargeintField;
    SpDelWorkGroupOrg: TADOStoredProc;
    DSDelWorkGroupOrg: TDataSource;
    QrWorkGroupOrgFromOrgID: TIntegerField;
    SPWorkGroupUserID: TIntegerField;
    procedure QrWorkGroupOrgBeforeOpen(DataSet: TDataSet);
    procedure SPWorkGroupAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMWorkGroup: TDMWorkGroup;

implementation

uses Dmu;

{$R *.dfm}

procedure TDMWorkGroup.QrWorkGroupOrgBeforeOpen(DataSet: TDataSet);
begin
   QrWorkGroupOrg.Parameters.ParamByName('Pa_WorkGroupID').Value := SPWorkGroupWorkGroupID.AsInteger;
end;

procedure TDMWorkGroup.SPWorkGroupAfterInsert(DataSet: TDataSet);
begin
   SPWorkGroupUserID.AsInteger := _userid;
end;

end.
