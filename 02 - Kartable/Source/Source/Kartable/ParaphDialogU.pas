unit ParaphDialogU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, xpBitBtn, xpWindow, ExtActns, ActnList, DB,
  Buttons, Menus;

type
  TFrParaphDialog = class(TMBaseForm)
    Title: TEdit;
    Paraph: TMemo;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    done:boolean;
    { Public declarations }
  end;

var
  FrParaphDialog: TFrParaphDialog;

implementation

{$R *.dfm}

procedure TFrParaphDialog.BitBtn2Click(Sender: TObject);
begin
  inherited;
Close;
end;

procedure TFrParaphDialog.BitBtn1Click(Sender: TObject);
begin
  inherited;
done:=true;
Close;
end;

procedure TFrParaphDialog.FormCreate(Sender: TObject);
begin
  inherited;
done:=false;
end;

end.
