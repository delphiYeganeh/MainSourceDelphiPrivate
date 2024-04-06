unit USelArchiveSecID;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FrmFarsi, DB, ADODB, StdCtrls, Buttons, DBCtrls, ExtCtrls;

type
  TSelArchiveSecID = class(TfmFarsi)
    Panel2: TPanel;
    Label1: TLabel;
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    dsSec: TDataSource;
    ADOQuery1: TADOQuery;
    ADOQuery1SecId: TIntegerField;
    ADOQuery1SecTitle: TWideStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SelArchiveSecID: TSelArchiveSecID;

implementation

uses Dmu, UAddLetterDataDialog;

{$R *.dfm}

procedure TSelArchiveSecID.FormCreate(Sender: TObject);
begin
  inherited;
   ADOQuery1.Close;
   ADOQuery1.Parameters[0].Value := _Arch_UserID;
   ADOQuery1.Open;

   DBLookupComboBox1.KeyValue := ADOQuery1SecId.AsInteger;
end;

procedure TSelArchiveSecID.BitBtn2Click(Sender: TObject);
begin
  inherited;
    FrAddLetterDataDialog.ArchSec := DBLookupComboBox1.KeyValue;
    close;
end;

end.
