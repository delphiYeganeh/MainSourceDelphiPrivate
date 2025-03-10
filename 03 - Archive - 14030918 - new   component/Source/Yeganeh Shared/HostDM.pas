unit HostDM;

interface

uses
  SysUtils, Classes, DB, DBTables, ADODB,Dialogs,Controls;

type
  TDMHost = class(TDataModule)
    DSHost: TDataSource;
    DSHostGroup: TDataSource;
    DSImageData: TDataSource;
    QrHost: TADOQuery;
    QrSrchHost: TADOQuery;
    QrImageData: TADOQuery;
    QrHostGroup: TADOQuery;
    QrSrchHostGroup: TADOQuery;
    QrSrchHostHost_ID: TIntegerField;
    QrSrchHostSubject: TWideStringField;
    QrSrchHostAddress: TWideStringField;
    QrSrchHostGroupEnterData_ID: TIntegerField;
    QrSrchHostGroupEDCode: TIntegerField;
    QrSrchHostGroupEDName: TStringField;
    QrHostHost_ID: TIntegerField;
    QrHostCode: TIntegerField;
    QrHostAddress: TWideStringField;
    QrHostEmail: TWideStringField;
    QrHostSubject: TWideStringField;
    QrHostED_HostGroup_Ref: TIntegerField;
    QrHostUserName: TWideStringField;
    QrHostPassword: TWideStringField;
    QrHostComment: TWideStringField;
    QrHostUsers_Ref: TIntegerField;
    QrHostGroupEnterData_ID: TAutoIncField;
    QrHostGroupEDName: TWideStringField;
    QrHostGroupEDCode: TIntegerField;
    QrUsers: TADOQuery;
    DSUsers: TDataSource;
    QrImageDataImageData_ID: TAutoIncField;
    QrImageDataImageData: TBlobField;
    QrImageDataImageDataText: TWideStringField;
    QrImageDataTable_Name: TWideStringField;
    QrImageDataTable_Ref: TIntegerField;
    QrImageDataTag: TIntegerField;
    QrUsersId: TAutoIncField;
    QrUsersTitle: TWideStringField;
    QrHostIsPublicity: TBooleanField;
    QrHostStatus: TWideStringField;
    QrHostPublicityStDate: TWideStringField;
    QrHostPublicityEnDate: TWideStringField;
    procedure QrHost1AfterCancel(DataSet: TDataSet);
    procedure QrHost1AfterEdit(DataSet: TDataSet);
    procedure QrHost1AfterInsert(DataSet: TDataSet);
    procedure QrHost1AfterScroll(DataSet: TDataSet);
    procedure QrHost1BeforePost(DataSet: TDataSet);
    procedure QrImageData3BeforePost(DataSet: TDataSet);
    procedure QrHostBeforeDelete(DataSet: TDataSet);
    procedure QrHostAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMHost: TDMHost;

implementation

Uses Dmu,YShamsiDate;

{$R *.dfm}

procedure TDMHost.QrHost1AfterCancel(DataSet: TDataSet);
begin
   if QrImageData.State in [dsInsert , dsEdit] then
      QrImageData.Cancel;
end;

procedure TDMHost.QrHost1AfterEdit(DataSet: TDataSet);
begin
   QrImageData.Edit;
end;

procedure TDMHost.QrHost1AfterInsert(DataSet: TDataSet);
begin
   QrHostUsers_Ref.AsInteger := _UserID;
   QrHostIsPublicity.AsBoolean := False;
   QrHostPublicityStDate.AsString := _Today;
   QrHostPublicityEnDate.AsString := ShamsiIncDate(_Today,0,1,0);
end;

procedure TDMHost.QrHost1AfterScroll(DataSet: TDataSet);
begin
   QrImageData.Close;
   QrImageData.Parameters.ParamByName('Host_ID').Value := QrHostHost_ID.AsInteger;
   QrImageData.Open;

   QrUsers.Close;
   QrUsers.Parameters.ParamByName('UserID').Value := QrHostUsers_Ref.AsInteger;
   QrUsers.Open;

   if QrHost.State = dsInsert then
      QrImageData.Append;
end;

procedure TDMHost.QrHost1BeforePost(DataSet: TDataSet);
begin
   Qry_IfFieldIsEmpty(QrHostAddress,'���� ��������');

   if QrHost.State = dsInsert then
   begin
      QrHostCode.AsInteger := StrToIntDef(Qry_GetResult('Select Max(Code)+1 From Host',Dm.YeganehConnection),1);
   end;
end;

procedure TDMHost.QrImageData3BeforePost(DataSet: TDataSet);
begin
   if QrImageData.State = dsInsert then
   begin
      QrImageDataTable_Name.AsString := 'Host';
      QrImageDataTable_Ref.AsInteger := QrHostHost_ID.AsInteger;
   end;
   
end;

procedure TDMHost.QrHostBeforeDelete(DataSet: TDataSet);
begin
   if ShowMyMessage('�����','��� ���� �� ��� ����� ���� ����Ͽ',mbOKCancel,mtWarning)=mrCancel then
      Abort;

   if QrHostHost_ID.AsInteger > 0 then
      Qry_SetResult('Delete from ImageData Where Table_Ref = '+QrHostHost_ID.AsString
                   +' And Table_Name = ''Host''',Dm.YeganehConnection);
end;

procedure TDMHost.QrHostAfterPost(DataSet: TDataSet);
begin
   if QrImageData.State in [dsInsert , dsEdit] then
      QrImageData.Post;
end;

end.
