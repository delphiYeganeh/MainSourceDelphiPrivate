unit UchangeCricitalFields;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ToolWin, ActnMan, ActnCtrls, DBActns,
  XPStyleActnCtrls, DBCtrls, StdCtrls, Mask, DB, ADODB, ExtActns, ActnList,
  Buttons, xpWindow, xpBitBtn, ExtCtrls;

type
  TFchangeCricitalFields = class(TMBaseForm)
    select_CiticalLetterFields: TADOStoredProc;
    Secretariats: TADOTable;
    LetterTypes: TADOTable;
    select_CiticalLetterFieldsLetterID: TAutoIncField;
    select_CiticalLetterFieldsIndicatorID: TIntegerField;
    select_CiticalLetterFieldsMYear: TWordField;
    select_CiticalLetterFieldsSecretariatID: TWordField;
    select_CiticalLetterFieldsLetter_Type: TWordField;
    select_CiticalLetterFieldsletterformat: TWordField;
    select_CiticalLetterFieldsSecTitle: TStringField;
    select_CiticalLetterFieldsLetterTypeTitle: TStringField;
    ActionManager: TActionManager;
    DataSetEdit: TDataSetEdit;
    DataSetPost: TDataSetPost;
    DataSetCancel: TDataSetCancel;
    Action11: TAction;
    Action12: TAction;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
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
