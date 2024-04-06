unit UFieldDialog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DBCtrls, StdCtrls, Mask, xpBitBtn, xpWindow, ExtActns,
  ActnList, DB;

type
  TFrFieldDialog = class(TMBaseForm)
    BitBtn2: TxpBitBtn;
    BitBtn1: TxpBitBtn;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    FieldType: TDBLookupComboBox;
    ReferLabel: TLabel;
    ReferField: TDBLookupComboBox;
    procedure FieldTypeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrFieldDialog: TFrFieldDialog;

implementation

uses uUserTablefields;

{$R *.dfm}

procedure TFrFieldDialog.FieldTypeClick(Sender: TObject);
begin
  inherited;
 ReferLabel.Visible:=FieldType.KeyValue=6;
 ReferField.Visible:=FieldType.KeyValue=6;
end;

procedure TFrFieldDialog.FormCreate(Sender: TObject);
begin
  inherited;
 ReferLabel.Visible:=FieldType.KeyValue=6;
 ReferField.Visible:=FieldType.KeyValue=6;

end;

procedure TFrFieldDialog.BitBtn2Click(Sender: TObject);
begin
  inherited;
DSForm.DataSet.Cancel;
close;
end;

procedure TFrFieldDialog.BitBtn1Click(Sender: TObject);
begin
  inherited;
DSForm.DataSet.Post;
close;

end;

end.
