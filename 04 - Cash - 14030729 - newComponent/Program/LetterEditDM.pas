unit LetterEditDM;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDMLetterEdit = class(TDataModule)
    QrLetterEdit: TADOQuery;
    DSLetterEdit: TDataSource;
    DSUsers: TDataSource;
    QrUsers: TADOQuery;
    QrLetterEditLetterEditID: TAutoIncField;
    QrLetterEditEditDate: TWideStringField;
    QrLetterEditEditTime: TWideStringField;
    QrLetterEditLetterID: TIntegerField;
    QrLetterEditUsersID: TIntegerField;
    QrLetterEditStatement: TWideStringField;
    QrUsersId: TAutoIncField;
    QrUsersTitle: TWideStringField;
    QrLetterEditUsersTitle: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMLetterEdit: TDMLetterEdit;

implementation

Uses Dmu,YShamsiDate ;

{$R *.dfm}

end.
