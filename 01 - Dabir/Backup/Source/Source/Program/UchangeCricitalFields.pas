unit UchangeCricitalFields;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ToolWin, ActnMan, ActnCtrls, DBActns,
  XPStyleActnCtrls, DBCtrls, StdCtrls, Mask, DB, ADODB, ExtActns, ActnList,
  Buttons, Menus, ExtCtrls;

type
  TFchangeCricitalFields = class(TMBaseForm)
    Select_CiticalLetterFields: TADOStoredProc;
    Secretariats: TADOTable;
    LetterTypes: TADOTable;
    Select_CiticalLetterFieldsLetterID: TAutoIncField;
    Select_CiticalLetterFieldsIndicatorID: TIntegerField;
    Select_CiticalLetterFieldsMYear: TWordField;
    Select_CiticalLetterFieldsSecretariatID: TWordField;
    Select_CiticalLetterFieldsLetter_Type: TWordField;
    Select_CiticalLetterFieldsletterformat: TWordField;
    Select_CiticalLetterFieldsSecTitle: TStringField;
    Select_CiticalLetterFieldsLetterTypeTitle: TStringField;
    ActionManager: TActionManager;
    DataSetEdit: TDataSetEdit;
    DataSetPost: TDataSetPost;
    DataSetCancel: TDataSetCancel;
    Action11: TAction;
    Action12: TAction;
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    LetterTypesID: TIntegerField;
    LetterTypesTitle: TWideStringField;
    LetterTypesPreCode: TWideStringField;
    SecretariatsSecID: TAutoIncField;
    SecretariatsSecTitle: TWideStringField;
    SecretariatsPrecode: TWideStringField;
    SecretariatsServerID: TIntegerField;
    SecretariatsArchiveCenterID: TIntegerField;
procedure GetLetter(LetterID: integer);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FchangeCricitalFields: TFchangeCricitalFields;

implementation

uses Dmu, UMain;

{$R *.dfm}
procedure TFchangeCricitalFields.GetLetter(LetterID: integer);
begin
  inherited;
with select_CiticalLetterFields do
 begin
  close;
  Parameters.ParamByName('@LetterID').Value:=LetterID;
  open;
 end;
end;

procedure TFchangeCricitalFields.BitBtn1Click(Sender: TObject);
begin
  inherited;
  //if select_CiticalLetterFieldsMYear.AsInteger>1300 then
  //   select_CiticalLetterFieldsMYear.AsInteger:=select_CiticalLetterFieldsMYear.AsInteger-1300;

  select_CiticalLetterFields.Post;
  mainform.RefreshQuery;
  Close;
end;

procedure TFchangeCricitalFields.BitBtn2Click(Sender: TObject);
begin
  inherited;
select_CiticalLetterFields.Cancel;
Close;
end;

procedure TFchangeCricitalFields.FormShow(Sender: TObject);
begin
  inherited;
GetLetter(dm.Get_All_LetterLetterID.AsInteger);
select_CiticalLetterFields.Edit;
end;

end.
