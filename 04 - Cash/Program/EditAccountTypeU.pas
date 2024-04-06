unit EditAccountTypeU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, Mask, DBCtrls, Menus, ActnList, Buttons, ExtCtrls;

type
  TFrEditAccountType = class(TYBaseForm)
    Panel1: TPanel;
    xpBitBtn2: TBitBtn;
    xpBitBtn1: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure xpBitBtn1Click(Sender: TObject);
    procedure xpBitBtn2Click(Sender: TObject);
    procedure AExitExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrEditAccountType: TFrEditAccountType;

implementation

uses dmu;

{$R *.dfm}

procedure TFrEditAccountType.xpBitBtn1Click(Sender: TObject);
begin
  inherited;
  dm.AccountType.Post;
  close;
end;

procedure TFrEditAccountType.xpBitBtn2Click(Sender: TObject);
begin
  inherited;
dm.AccountType.Cancel;
Close;
end;

procedure TFrEditAccountType.AExitExecute(Sender: TObject);
begin
  dm.AccountType.Cancel;
  inherited;
end;

end.
