unit HelpU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, StdCtrls, Buttons, jpeg, ExtCtrls, xpBitBtn, BaseUnit;

type
  TFHelp = class(TForm)
    Image1: TImage;
    BitBtn1: TBitBtn;
    ActionList1: TActionList;
    Action1: TAction;
    procedure Image1DblClick(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FHelp: TFHelp;

implementation

{$R *.dfm}

procedure TFHelp.Image1DblClick(Sender: TObject);
begin
close;
end;

procedure TFHelp.Action1Execute(Sender: TObject);
begin
close;
end;

procedure TFHelp.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TFHelp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=caFree;
end;

end.
