unit USelectProduct;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Buttons, BaseUnit, ExtActns, ActnList, DB;

type
  TSelectProduct = class(TMBaseForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
   done : boolean;
    { Public declarations }
  end;

var
  SelectProduct: TSelectProduct;

implementation

uses dmu;

{$R *.dfm}

procedure TSelectProduct.BitBtn1Click(Sender: TObject);
begin
 done:=true;
close;
end;

procedure TSelectProduct.BitBtn2Click(Sender: TObject);
begin
 
close;
end;

procedure TSelectProduct.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TSelectProduct.FormCreate(Sender: TObject);
begin
done:=false;
end;

end.
