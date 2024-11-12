unit Uchange_Indicator;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, DBCtrls, Mask, DB, ADODB, ExtActns, ActnList,
  ExtCtrls;

type
  Tchange_Indicator = class(TMBaseForm)
    ADOStoredProc1: TADOStoredProc;
    ADOStoredProc1FromorgTitle: TWideStringField;
    ADOStoredProc1ToorgTitle: TWideStringField;
    ADOStoredProc1LetterID: TAutoIncField;
    ADOStoredProc1IncommingNO: TWideStringField;
    ADOStoredProc1Incommingdate: TWideStringField;
    ADOStoredProc1Memo: TWideStringField;
    ADOStoredProc1RegistrationDate: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    DBMemo1: TDBMemo;
    Edit1: TEdit;
    Label3: TLabel;
    Label8: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label9: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Bevel1: TBevel;
    Bevel2: TBevel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  change_Indicator: Tchange_Indicator;

implementation

uses Dmu;

{$R *.dfm}

end.
