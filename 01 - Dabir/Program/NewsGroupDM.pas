unit NewsGroupDM;

interface

uses
  SysUtils, Classes, ADODB, DB;

type
  TDMNewsGroup = class(TDataModule)
    DSNewsGroup: TDataSource;
    DSUsersList: TDataSource;
    QrNewsGroupUsers: TADOQuery;
    DSNewsGroupUsers: TDataSource;
    SpDelNewsGroupUsers: TADOStoredProc;
    DSDelNewsGroupUsers: TDataSource;
    QrUsersList: TADOQuery;
    SPNewsGroup: TADOStoredProc;
    SPNewsGroupNewsGroupID: TIntegerField;
    SPNewsGroupTitle: TWideStringField;
    SPNewsGroupDescript: TWideStringField;
    QrNewsGroupUsersNewsGroupUsersID: TIntegerField;
    QrNewsGroupUsersUsersID: TIntegerField;
    QrNewsGroupUsersNewsGroupID: TIntegerField;
    QrUsersListId: TAutoIncField;
    QrUsersListTitle: TWideStringField;
    QrUsersListUserName: TWideStringField;
    QrUsersListPassWord: TWideStringField;
    SPNewsGroupUsersID: TIntegerField;
    procedure SPNewsGroupAfterInsert(DataSet: TDataSet);
    procedure QrNewsGroupUsersBeforeOpen(DataSet: TDataSet);
    procedure SPNewsGroupBeforeDelete(DataSet: TDataSet);
    procedure SPNewsGroupBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMNewsGroup: TDMNewsGroup;

implementation

uses Dmu, BaseUnit, UMain,YShamsiDate;

{$R *.dfm}

procedure TDMNewsGroup.SPNewsGroupAfterInsert(DataSet: TDataSet);
begin
   SPNewsGroupUsersID.AsInteger := _userid;
end;

procedure TDMNewsGroup.QrNewsGroupUsersBeforeOpen(DataSet: TDataSet);
begin
    QrNewsGroupUsers.Parameters.ParamByName('Pa_NewsGroupID').Value := SPNewsGroupNewsGroupID.AsInteger;
end;

procedure TDMNewsGroup.SPNewsGroupBeforeDelete(DataSet: TDataSet);
begin
   if not MBaseForm.messageShowString('¬Ì« „«Ì· »Â Õ–› —òÊ—œ Ã«—Ì Â” Ìœ', True) then
      Abort;
end;

procedure TDMNewsGroup.SPNewsGroupBeforePost(DataSet: TDataSet);
begin
   IFFieldIsEmpty(SPNewsGroupTitle,'⁄‰Ê«‰ ê—ÊÂ');
end;

end.
