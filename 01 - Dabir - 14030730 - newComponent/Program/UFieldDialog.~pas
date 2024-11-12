unit UFieldDialog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DBCtrls, StdCtrls, Mask, xpBitBtn, xpWindow, ExtActns,
  ActnList, DB, Buttons, Menus, ADODB, AppEvnts, ExtCtrls, AdvGlowButton;

type
  TFrFieldDialog = class(TMBaseForm)
    BitBtn2: TAdvGlowButton;
    BitBtn1: TAdvGlowButton;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    FieldType: TDBLookupComboBox;
    ReferLabel: TLabel;
    ReferField: TDBLookupComboBox;
    QUpd: TADOQuery;
    QGetMaxOrder: TADOQuery;
    QGetMaxOrdernewOrder: TIntegerField;
    Panel1: TPanel;
    pnlMain: TPanel;
    procedure FieldTypeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function GetMaxOrder:Integer;
  public
    { Public declarations }
  end;

var
  FrFieldDialog: TFrFieldDialog;

implementation

uses uUserTablefields, Dmu, Math;

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
var
  TableID:Integer;
  orders:Integer;
begin
  inherited;

  if (DSForm.DataSet.State=dsEdit) then
  begin
      TableID:= FrTableFields.Get_UserFields_By_TableIDID.AsInteger;
      orders:= FrTableFields.Get_UserFields_By_TableIDorder.AsInteger;

      DSForm.DataSet.Post;
    //  DSForm.DataSet.Cancel;

      QUpd.Close;
      QUpd.SQL.Clear;
      QUpd.SQL.Add('UPDATE Fields');
      QUpd.SQL.Add('SET [order]='+IntToStr(orders));
      QUpd.SQL.Add('WHERE ID='+IntToStr(TableID));

      //ShowMessage(QUpd.SQL.Text);

      QUpd.ExecSQL;


  end
  else if (DSForm.DataSet.State=dsInsert) then
  begin
      DSForm.DataSet.FieldByName('order').AsInteger:=GetMaxOrder;
      DSForm.DataSet.Post;
  end;
  close;
  FrTableFields.Get_UserFields_By_TableID.Close;
  FrTableFields.Get_UserFields_By_TableID.Open;
end;

function TFrFieldDialog.GetMaxOrder: Integer;
begin
  Result:=1;
  QGetMaxOrder.Close;
  QGetMaxOrder.SQL.Clear;
  QGetMaxOrder.SQL.Add('SELECT MAX([ORDER])+1 AS newOrder FROM Fields WHERE TableID='+IntToStr(FrTableFields.Get_UserFields_By_TableIDTableID.AsInteger));
  QGetMaxOrder.Open;

  if not QGetMaxOrder.IsEmpty then
     if not QGetMaxOrdernewOrder.IsNull then
          Result:= QGetMaxOrdernewOrder.AsInteger;
end;

procedure TFrFieldDialog.FormShow(Sender: TObject);
begin
  inherited;

  // ---

  DSForm.DataSet.Edit ;
  DSForm.DataSet.Open ;

end;

end.
