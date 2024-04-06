unit UAddSecretariat;

interface

uses
 DB, BaseUnit, ExtActns, ActnMan, Buttons, StdCtrls, Mask, DBCtrls,
  Controls, Classes, Windows,ActnList, XPStyleActnCtrls, xpWindow, xpBitBtn;

type
  TFrAddSecretariat = class(TMBaseForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Title: TDBEdit;
    BitBtn2: TxpBitBtn;
    BitBtn1: TxpBitBtn;
    Label1: TLabel;
    Place: TDBEdit;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PlaceEnter(Sender: TObject);
    procedure PlaceExit(Sender: TObject);
  private
    { Private declarations }
  public
   done:boolean;
    { Public declarations }
  end;

var
  FrAddSecretariat: TFrAddSecretariat;

implementation

uses Dmu, businessLayer;

{$R *.dfm}

procedure TFrAddSecretariat.BitBtn1Click(Sender: TObject);
begin
  inherited;
dm.Secretariats.Post;
 close;
end;

procedure TFrAddSecretariat.BitBtn2Click(Sender: TObject);
begin
  inherited;
dm.Secretariats.Cancel;
close;
end;

procedure TFrAddSecretariat.FormShow(Sender: TObject);
begin
  inherited;
Title.SetFocus;
end;

procedure TFrAddSecretariat.PlaceEnter(Sender: TObject);
begin
  inherited;
ActivateKeyboardLayout(HKL_NEXT, KLF_REORDER);

end;

procedure TFrAddSecretariat.PlaceExit(Sender: TObject);
begin
  inherited;
ActivateKeyboardLayout(HKL_NEXT, KLF_REORDER);

end;

end.
