unit ErrMessage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, xpButton;

type
  TFrm_ErrMessage = class(TForm)
    Label1: TLabel;
    Image1: TImage;
    Bevel3: TBevel;
    BitBtn1: TxpButton;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormResize(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    Function InitShow(MsgStr:String):TModalResult;
    { Public declarations }
  end;

var
  Frm_ErrMessage: TFrm_ErrMessage;
  Function Error_Msg(Msg_Str:String):TModalResult;

implementation



{$R *.dfm}

procedure TFrm_ErrMessage.FormShow(Sender: TObject);
begin
  BitBtn1.SetFocus;
end;

procedure TFrm_ErrMessage.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = 27 then Close;
end;

function TFrm_ErrMessage.InitShow(MsgStr: String): TModalResult;
begin
  Label1 .Caption := Trim(MsgStr);
  Width  := Abs(Label1.Width) + (Image1.Width) + 65 ;
  Label1 .Left:=(Width Div 2) - Abs(Label1.Width  Div 2);
  Image1 .Left:=(Label1.Left) + Label1.Width +5;
  BitBtn1.Left:=(Width Div 2) - Abs(BitBtn1.Width Div 2);
  Result := ShowModal;
end;

procedure TFrm_ErrMessage.FormResize(Sender: TObject);
begin
  BitBtn1.Left:=(Width Div 2) - Abs(BitBtn1.Width Div 2);
  Image1 .Left:=(Label1.Left) + Label1.Width +5;
end;

Function Error_Msg(Msg_Str:String):TModalResult;
begin
  Application.CreateForm(TFrm_ErrMessage, Frm_ErrMessage);
  Frm_ErrMessage.InitShow(Msg_Str);
  Result := 0 ;
  Frm_ErrMessage.Free;

end;


procedure TFrm_ErrMessage.BitBtn1Click(Sender: TObject);
begin
Close;
end;

end.


