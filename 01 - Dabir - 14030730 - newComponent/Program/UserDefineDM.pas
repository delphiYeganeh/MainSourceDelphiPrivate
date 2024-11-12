unit UserDefineDM;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDMUserDefine = class(TDataModule)
    Access2: TADOTable;
    DAccess2: TDataSource;
    Search: TADODataSet;
    Dsearch: TDataSource;
    Sp_Sel_UserAccArchive: TADOStoredProc;
    DSUserAccArchive: TDataSource;
    Access2ID: TWordField;
    Access2Title: TWideStringField;
    Searchid: TAutoIncField;
    SearchTitle: TWideStringField;
    Searchusername: TWideStringField;
    QrUserSec: TADOQuery;
    DSUserSec: TDataSource;
    QrUserSecSecID: TAutoIncField;
    QrUserSecSecTitle: TWideStringField;
    QrUserSecPrecode: TWideStringField;
    QrUserSecServerID: TIntegerField;
    QrUserSecArchiveCenterID: TIntegerField;
    QrUserSecUserID: TIntegerField;
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
