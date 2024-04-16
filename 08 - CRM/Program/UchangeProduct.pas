unit UchangeProduct;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Buttons, ExtCtrls;

type
  TChangeProduct = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChangeProduct: TChangeProduct;

implementation

uses dmu, DB;

{$R *.dfm}

procedure TChangeProduct.BitBtn1Click(Sender: TObject);
begin
  _ProductID:=Dm.ProductProductID.AsInteger;
close;
end;

procedure TChangeProduct.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TChangeProduct.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:=caFree;
end;

end.
