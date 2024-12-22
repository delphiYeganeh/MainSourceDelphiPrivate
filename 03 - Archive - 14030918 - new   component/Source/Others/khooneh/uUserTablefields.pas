unit uUserTablefields;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ADODB, xpBitBtn, Grids, DBGrids, YDbgrid,
  xpWindow, ExtActns, ActnList;

type
  TFrTableFields = class(TMBaseForm)
    YDBGrid1: TYDBGrid;
    xpBitBtn1: TxpBitBtn;
    xpBitBtn2: TxpBitBtn;
    xpBitBtn3: TxpBitBtn;
    get_userfields_by_tableID: TADOStoredProc;
    xpBitBtn4: TxpBitBtn;
    get_userfields_by_tableIDID: TAutoIncField;
    get_userfields_by_tableIDDescription: TWideStringField;
    get_userfields_by_tableIDFieldTypeID: TWordField;
    get_userfields_by_tableIDReferenceTableID: TIntegerField;
    get_userfields_by_tableIDorder: TIntegerField;
    get_userfields_by_tableIDFieldTypeTitle: TWideStringField;
    get_userfields_by_tableIDReferenceTanleTitle: TWideStringField;
    get_userfields_by_tableIDTableID: TIntegerField;
    get_userfields_by_tableIDFieldName: TStringField;
    procedure xpBitBtn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure xpBitBtn2Click(Sender: TObject);
    procedure xpBitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    TableID: integer;
  end;

var
  FrTableFields: TFrTableFields;

implementation

uses Dmu, UFieldDialog;

{$R *.dfm}

procedure TFrTableFields.xpBitBtn4Click(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFrTableFields.FormShow(Sender: TObject);
begin
  inherited;
with get_userfields_by_tableID do
 begin
   close;
   Parameters.ParamByName('@TableID').Value:=TableID;
   open;
 end;
end;

procedure TFrTableFields.xpBitBtn1Click(Sender: TObject);
begin
  inherited;
with get_userfields_by_tableID do
 begin
   edit;
   FrFieldDialog:=TFrFieldDialog.Create(Application);
   FrFieldDialog.ShowModal;
 end;
end;

procedure TFrTableFields.xpBitBtn2Click(Sender: TObject);
begin
  inherited;
with get_userfields_by_tableID do
 begin
   Insert;
   get_userfields_by_tableIDTableID.AsInteger:=TableID;
   get_userfields_by_tableIDFieldName.AsString:='Field';
   FrFieldDialog:=TFrFieldDialog.Create(Application);
   FrFieldDialog.ShowModal;
 end;

end;

procedure TFrTableFields.xpBitBtn3Click(Sender: TObject);
begin
  inherited;
if messageShowString('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœ',true) then
  get_userfields_by_tableID.Delete;
end;

end.
