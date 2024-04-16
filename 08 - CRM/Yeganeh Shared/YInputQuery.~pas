unit YInputQuery;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, xpBitBtn;

type
  TYInputQueryF = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    output: TEdit;
    Label1: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    done: boolean;
  end;

var
  YInputQueryF: TYInputQueryF;

implementation

{$R *.dfm}

procedure TYInputQueryF.BitBtn2Click(Sender: TObject);
begin
 done:=false;
 close;
end;

procedure TYInputQueryF.BitBtn1Click(Sender: TObject);
begin
 done:=true;
 close;
end;

procedure TYInputQueryF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

end.
