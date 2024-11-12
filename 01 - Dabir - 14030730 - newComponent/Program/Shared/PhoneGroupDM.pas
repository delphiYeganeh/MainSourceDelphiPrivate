unit PhoneGroupDM;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDMPhoneGroup = class(TDataModule)
    QrPhoneGroup: TADOQuery;
    DSPhoneGroup: TDataSource;
    QrPhoneGroupPhoneGroupID: TAutoIncField;
    QrPhoneGroupCode: TIntegerField;
    QrPhoneGroupTitle: TWideStringField;
    QrPhoneGroupUsersID: TIntegerField;
    procedure QrPhoneGroupBeforePost(DataSet: TDataSet);
    procedure QrPhoneGroupBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMPhoneGroup: TDMPhoneGroup;

implementation

uses Dmu , yShamsiDate, BaseUnit;

{$R *.dfm}

procedure TDMPhoneGroup.QrPhoneGroupBeforePost(DataSet: TDataSet);
begin
   QrPhoneGroupCode.AsInteger := StrToIntDef( Qry_GetResult('Select IsNull(Max(Code)+1,1)as MaxCode From PhoneGroup ' ,dm.YeganehConnection),1);
   QrPhoneGroupUsersID.AsInteger := _userid;
end;

procedure TDMPhoneGroup.QrPhoneGroupBeforeDelete(DataSet: TDataSet);
begin
   if not MBaseForm.messageShowString('¬Ì« „«Ì· »Â Õ–› ê—ÊÂ Ã«—Ì Â” Ìœø', True) then
      Abort;

end;

end.
