unit LoanRequestDialogU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, DBCtrls, Mask, ActnList,
  Menus, Buttons, ExtCtrls;

type
  TFrLoanRequestDialog = class(TYBaseForm)
    Panel1: TPanel;
    xpBitBtn2: TBitBtn;
    xpBitBtn1: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    DBMemo1: TDBMemo;
    procedure xpBitBtn1Click(Sender: TObject);
    procedure xpBitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrLoanRequestDialog: TFrLoanRequestDialog;

implementation

uses dmu, BusinessLayer;

{$R *.dfm}

procedure TFrLoanRequestDialog.xpBitBtn1Click(Sender: TObject);
begin
  inherited;
dm.Select_LoanRequest.Post;
if not dm.Select_LoanRequestExpired.AsBoolean then
 Insert_LoanPriority(dm.Select_LoanRequestAccountID.AsInteger,dm.Select_LoanRequestIsUrgency.AsBoolean);
Close;
end;

procedure TFrLoanRequestDialog.xpBitBtn2Click(Sender: TObject);
begin
  inherited;
dm.Select_LoanRequest.Cancel;
Close;

end;

end.
