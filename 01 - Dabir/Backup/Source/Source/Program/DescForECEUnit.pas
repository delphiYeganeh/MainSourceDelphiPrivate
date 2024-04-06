unit DescForECEUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Menus, ExtActns, ActnList, DB, Buttons, ExtCtrls,
  StdCtrls;

type
  TFDescForECE = class(TMBaseForm)
    Panel1: TPanel;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    Memo1: TMemo;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDescForECEForm: TFDescForECE;

implementation

uses EnteredLetterInputF;

{$R *.dfm}

procedure TFDescForECE.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key=#27 then
  begin
     Key:=#0;
     SpeedButton1Click(Application);
  end;

end;

procedure TFDescForECE.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFDescForECE.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if Trim(Memo1.Text)<>'' then
      ReceivedLetterInputForm.DescForECE:=Memo1.Text;
end;

end.
