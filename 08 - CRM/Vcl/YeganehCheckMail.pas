unit YeganehCheckMail;

interface

uses
  SysUtils, Classes,IdMessage,IdSSLOpenSSL,IdPOP3,idglobal,IdCoderHeader,dialogs;

type
  TOnBeforeDownload=procedure (MessageNumber:integer) of object;
  TOnDownloadHeader=procedure (MailMsg:TIdMessage;var IsDuplicate:boolean) of object;
  TOnDownloadEmail=procedure (MailMsg:TIdMessage) of object;

  TYeganehCheckMail = class(TComponent)
  private
   FOnBeforeDownload :TOnBeforeDownload;
   FOnDownloadHeader :TOnDownloadHeader;
   FOnDownloadEmail :TOnDownloadEmail;
   FUserName     ,
   FPassword     ,
   FReciveHost : String;
   FPort:integer;
   FHasSSL:boolean;
   FIdSSLVersion:TIdSSLVersion;
    { Private declarations }
    procedure IdMsgReciveInitializeISO(
  var VTransferHeader: TTransfer; var VHeaderEncoding: Char;
  var VCharSet: String);
Procedure Initialize;
  protected
    { Protected declarations }
  public
    { Public declarations }
    function MailCount:integer;
    Procedure CheckMail;
  published
    { Published declarations }
  property  UserName      : String        read  FUserName      write  FUserName;
  property  Password      : String        read  FPassword      write  FPassword ;
  property  ReciveHost    : String        read  FReciveHost    write  FReciveHost;
  property  Port          : integer       read  FPort      write  FPort ;
  property HasSSL:Boolean read FHasSSL write FHasSSL;
  property  SSLVersion:TIdSSLVersion read FIdSSLVersion write FIdSSLVersion;


   property OnBeforeDownload :TOnBeforeDownload  read FOnBeforeDownload  write FOnBeforeDownload;
   property OnDownloadHeader :TOnDownloadHeader  read FOnDownloadHeader  write FOnDownloadHeader;
   property OnDownloadEmail :TOnDownloadEmail  read FOnDownloadEmail  write FOnDownloadEmail;
  end;

procedure Register;

implementation
var    IO: TIdSSLIOHandlerSocket ;
   IdPOP3: TIdPOP3;
    IdMsgRecive: TIdMessage ;

procedure Register;
begin
  RegisterComponents('Yeganeh', [TYeganehCheckMail]);
end;

Procedure TYeganehCheckMail.Initialize;
begin
   IdPOP3:= TIdPOP3.Create(self);

  IO:= TIdSSLIOHandlerSocket.Create(nil);
    IO.SSLOptions.Method := FIdSSLVersion;
    IO.SSLOptions.Mode := sslmUnassigned;
    IO.SSLOptions.VerifyMode := []       ;
    IO.SSLOptions.VerifyDepth := 0        ;


   with IdPOP3 do
    begin
     MaxLineAction := maException;
     ReadTimeout := 0;
     Username :=  Self.UserName;
     Password := Self.Password;

     if  HasSSL then
       IOHandler := IO ;

    Host := Self.ReciveHost;
    Port := Self.port;
    Connect(1000000000);
   end;
end;
procedure TYeganehCheckMail.IdMsgReciveInitializeISO(
  var VTransferHeader: TTransfer; var VHeaderEncoding: Char;
  var VCharSet: String);
begin
  VTransferHeader := bit8;    { header part conversion type }
  VHeaderEncoding := 'B';     { base64 / quoted-printable }    {Do not Localize}
  VCharSet:='UTF-8';
end;

function TYeganehCheckMail.MailCount:integer;
begin
  Initialize;
  Result :=  IdPOP3.CheckMessages;
  IdPOP3.Disconnect;

end;

procedure TYeganehCheckMail.CheckMail;
var
i,MsgCount:integer;
Isduplicate:boolean ;
begin
Isduplicate:=False;
Initialize;
MsgCount:=IdPOP3.CheckMessages;

   if MsgCount=0 then
    exit;

  IdMsgRecive:=TIdMessage.Create(self);
   with IdMsgRecive do
    begin
     AttachmentEncoding := 'MIME';
     Encoding := meMIME;
     Charset := 'utf-8';
     ContentType :='text/html; CharSet=UTF-8';
     ContentTransferEncoding   := '8bit';
     IdMsgRecive.OnInitializeISO:=IdMsgReciveInitializeISO;
    end;

     for I := 1 to MsgCount do
       begin
        if Assigned(OnBeforeDownload) then OnBeforeDownload(i);

            IdMsgRecive.Clear;
            IdMsgRecive.ClearBody;

        IdPOP3.RetrieveHeader(I, IdMsgRecive);

          if Assigned( OnDownloadHeader) then OnDownloadHeader(IdMsgRecive,Isduplicate);

         if Isduplicate then
           Continue;

         IdPOP3.Retrieve(i,IdMsgRecive);
         if Assigned( OnDownloadEmail) then OnDownloadEmail(IdMsgRecive);
       end;
   IdPOP3.Disconnect;
end;


end.
