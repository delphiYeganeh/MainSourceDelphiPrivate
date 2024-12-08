unit UFrmSendMail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, YeganehCheckMail, IdMessage, IdBaseComponent, IdComponent, IdTCPConnection,
  StdCtrls ,
  IdTCPClient, IdMessageClient, IdPOP3,IdSSLOpenSSL, IdCoder, IdCoder3to4,
  IdCoderMIME, IdSMTP, IdIOHandler, IdIOHandlerSocket
  {IdIOHandlerStack, IdSSL, IdSSLOpenSSL ,}
  {IdExplicitTLSClientServerBase, IdSMTPBase, }
  ;

type
  TFrmSendMail = class(TForm)
    YeganehCheckMail1: TYeganehCheckMail;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSendMail: TFrmSendMail;

implementation

{$R *.dfm}

procedure TFrmSendMail.Button1Click(Sender: TObject);
VAR
    SMTP : TIdSMTP;
    MSG : TIdMessage;
begin
  MSG:=TIdMessage.Create(NIL);
  TRY
    WITH MSG.Recipients.Add DO BEGIN
      Name:='<Â«œÌ „Õ«„œ>';
      Address:='<hadi.mohamed@gmail.com>'
    END;
    //MSG.BccList.Add.Address:='<Email address of Blind Copy recipient>';
    MSG.From.Name:='<Â„Ê‰  Ì  Ì>';
    MSG.From.Address:='<tt5592836@gmail.com>';
    MSG.Body.Text:='„ ‰ «Ì„Ì·';
    MSG.Subject:='<„Ê÷Ê⁄>';
    SMTP:=TIdSMTP.Create(NIL);
    TRY
      SMTP.Host:='smtp.gmail.com'; // IP Address of SMTP server
      SMTP.Port:=25; // Port address of SMTP service (usually 25)
      SMTP.Username := 'tt5592836@gmail.com';
      SMTP.Password := 'test12345678';
 //     SMTP.use
      SMTP.Connect;
      TRY
        SMTP.Send(MSG)
      FINALLY
        SMTP.Disconnect
      END
    FINALLY
      SMTP.Free
    END
  FINALLY
    MSG.Free
  END;
end;

end.
