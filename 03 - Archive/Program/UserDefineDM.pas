unit UserDefineDM;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDMUserDefine = class(TDataModule)
    Sp_Sel_UserAccArchive: TADOStoredProc;
    DSUserAccArchive: TDataSource;
    QrUserSec: TADOQuery;
    DSUserSec: TDataSource;
    DSArchiveFolder: TDataSource;
    QrArchiveFolder: TADOQuery;
    QrArchiveFolderFolderID: TAutoIncField;
    QrArchiveFolderParentFolderID: TIntegerField;
    QrArchiveFolderTitle: TWideStringField;
    QrArchiveFolderUserID: TIntegerField;
    QrArchiveFolderNotes: TWideStringField;
    QrArchiveFolderPlace: TWideStringField;
    Sp_Sel_UserAccArchiveUserAccArchiveID: TAutoIncField;
    Sp_Sel_UserAccArchiveUserID: TIntegerField;
    Sp_Sel_UserAccArchiveArchiveFolderID: TIntegerField;
    Sp_Sel_UserAccArchiveISAccess: TBooleanField;
    QrUserSecSecID: TAutoIncField;
    QrUserSecSecTitle: TWideStringField;
    QrUserSecPreCode: TWideStringField;
    QrUserSecArchiveCenterID: TIntegerField;
    QrUserSecUserID: TIntegerField;
    Sp_Sel_UserAccArchiveArchiveCenterID: TIntegerField;
    QrUserSecArchiveCenterTitle: TWideStringField;
    Sp_Sel_UserAccArchiveSecID: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMUserDefine: TDMUserDefine;

implementation

uses Dmu;

{$R *.dfm}


End.
