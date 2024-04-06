unit NewsUsersDM;
{Ranjbar}
interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDMNewsUsers = class(TDataModule)
    QrNews: TADOQuery;
    DSNews: TDataSource;
    DSImageData: TDataSource;
    SPImageData: TADOStoredProc;
    QrNewsUsers: TADOQuery;
    DSNewsUsers: TDataSource;
    QrNewsNewsID: TAutoIncField;
    QrNewsCode: TIntegerField;
    QrNewsTitle: TWideStringField;
    QrNewsMemo: TWideStringField;
    QrNewsUrgenceisID: TSmallintField;
    QrNewsDateAnnounce: TWideStringField;
    QrNewsTimeAnnounce: TWideStringField;
    QrNewsDateExpire: TWideStringField;
    QrNewsUserID: TIntegerField;
    QrNewsReciverUserID: TIntegerField;
    QrNewsUsersTitle: TWideStringField;
    QrNewsUsersNewsUsersID: TAutoIncField;
    QrNewsUsersNewsID: TIntegerField;
    QrNewsUsersUsersID: TIntegerField;
    QrNewsUsersIsRead: TBooleanField;
    QrNewsUsersNotShow: TBooleanField;
    SPImageDataImageDataID: TAutoIncField;
    SPImageDataData: TBlobField;
    SPImageDataTableName: TWideStringField;
    SPImageDataTableID: TIntegerField;
    SPImageDataTag: TIntegerField;
    SPImageDataFileName: TWideStringField;
    QrNewsUrgenceis: TWideStringField;
    QrNewsAttachFileName: TWideStringField;
    QrNewsISRead: TBooleanField;
    procedure QrNewsAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMNewsUsers: TDMNewsUsers;

implementation

uses Dmu;

{$R *.dfm}

procedure TDMNewsUsers.QrNewsAfterScroll(DataSet: TDataSet);
begin
   QrNewsUsers.Close;
   QrNewsUsers.Parameters.ParamByName('Pa_NewsID').Value := QrNewsNewsID.AsInteger;
   QrNewsUsers.Parameters.ParamByName('Pa_UsersID').Value := _userid;
   QrNewsUsers.Open;
   //---
   SPImageData.Close;
   SPImageData.Parameters.ParamByName('@TableName').Value := 'News';
   SPImageData.Parameters.ParamByName('@TableID').Value := QrNewsNewsID.AsInteger;
   SPImageData.Open;
end;

end.
