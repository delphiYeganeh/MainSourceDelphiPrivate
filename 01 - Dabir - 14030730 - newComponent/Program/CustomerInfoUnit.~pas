unit CustomerInfoUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Menus, ExtActns, ActnList, DB, StdCtrls, DBCtrls, Mask;

type
  TfrmCustomerInfo = class(TMBaseForm)
    Label12: TLabel;
    Label11: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label14: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    Label30: TLabel;
    Label4: TLabel;
    DBMemo1: TDBMemo;
    DBEdit11: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit1: TDBEdit;
    DBECustomerNo: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit8: TDBEdit;
    DBECustomerID: TDBEdit;
    DBMemo2: TDBMemo;
    DBEdit3: TDBEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FCustomerID: Integer;
    procedure SetCustomerID(const Value: Integer);
    procedure ShowCustomer;
  public
    { Public declarations }
    property CustomerID:Integer read FCustomerID write SetCustomerID;
  end;

implementation

uses Dmu;

{$R *.dfm}

procedure TfrmCustomerInfo.SetCustomerID(const Value: Integer);
begin
  FCustomerID := Value;
end;

procedure TfrmCustomerInfo.FormActivate(Sender: TObject);
begin
  inherited;
  ShowCustomer;
end;

procedure TfrmCustomerInfo.ShowCustomer;
var
  DbName:String;
begin
   DbName:=Dm.GetValueFromRegistry('Software\yeganeh\crm','DataBaseName');
   Dm.YDabir_Select_customer_By_CustomerID.Close;
   Dm.YDabir_Select_customer_By_CustomerID.Parameters.ParamByName('@CustomerID').Value:=CustomerID;
   Dm.YDabir_Select_customer_By_CustomerID.Parameters.ParamByName('@DBName').Value:=DbName;
   Dm.YDabir_Select_customer_By_CustomerID.Open;
end;

procedure TfrmCustomerInfo.FormCreate(Sender: TObject);
begin
  inherited;
  DSForm.DataSet:=Dm.YDabir_Select_customer_By_CustomerID;
end;

end.
