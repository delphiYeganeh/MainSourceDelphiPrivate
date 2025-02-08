unit Tdmu;

interface

uses
  SysUtils, Classes, DB, ADODB, ImgList, Controls,Registry,windows;

type
  TTel_Dm = class(TDataModule)
    YeganehConnection: TADOConnection;
    ImageList1: TImageList;
    Addresses: TADODataSet;
    DAddresses: TDataSource;
    AddressesAddressID: TAutoIncField;
    AddressesFirstName: TWideStringField;
    AddressesLastName: TWideStringField;
    AddressesAddress: TWideStringField;
    AddressesPostalCode: TWideStringField;
    AddressesEmailAddress: TWideStringField;
    AddressesHomePhone: TWideStringField;
    AddressesWorkPhone: TWideStringField;
    AddressesMobilePhone: TWideStringField;
    AddressesFaxNumber: TWideStringField;
    AddressesCompanyName: TWideStringField;
    AddressesJobTitle: TWideStringField;
    AddressesWorkPhone1: TWideStringField;
    AddressesWorkPhone2: TWideStringField;
    AddressesNotes: TWideStringField;
    Addressesnickname: TWideStringField;
    AddressesCityId: TSmallintField;
    Citys: TADOTable;
    AddressesGroupId: TIntegerField;
    AddressesCityTitle: TStringField;
    Groups: TADOTable;
    GroupsGroupTitle: TWideStringField;
    AddressesGroupTitle: TStringField;
    CitysCityID: TIntegerField;
    CitysStateID: TWordField;
    CitysTitle: TWideStringField;
    CitysIsCenter: TBooleanField;
    DGroups: TDataSource;
    GroupsParentId: TIntegerField;
    Command: TADODataSet;
    GroupsGroupID: TIntegerField;
    GroupsAddressID: TIntegerField;
    function NewGroupID:integer;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Tel_Dm: TTel_Dm;
const productid='Y_Tel';

implementation

uses Dmu;



//uses  DiskInfoUnit;

{$R *.dfm}

procedure TTel_Dm.DataModuleCreate(Sender: TObject);
begin
YeganehConnection.ConnectionString:=dm.YeganehConnection.ConnectionString;
YeganehConnection.Open;

end;
function TTel_Dm.NewGroupID:integer;
begin

  with command do
   begin
    close;
    CommandText:='Select max(GroupID)+1  from Groups';
    open;
    Result:=Fields[0].AsVariant;
   end;
end;

end.
