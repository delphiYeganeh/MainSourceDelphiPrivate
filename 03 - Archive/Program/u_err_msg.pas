unit u_err_msg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TErr_msg = class(TForm)
    Memo1: TMemo;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  MSG_1 : String;
  MSG_2 : String;
  end;

var
  Err_msg: TErr_msg;

implementation

{$R *.dfm}

procedure TErr_msg.FormShow(Sender: TObject);
begin
Memo1.Lines.Clear;
Memo1.Lines.Add(MSG_1);
Memo1.Lines.Add(MSG_2);
end;

procedure TErr_msg.BitBtn1Click(Sender: TObject);
begin
CLOSE;
end;

procedure TErr_msg.FormCreate(Sender: TObject);
begin
Self.Width      := 200;
Self.Height     := 210;

Memo1.Width     := 174;
Memo1.Height    := 50;
Memo1.Font.Size := 8;
Memo1.Font.Color:= clRed;
end;

end.
