// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://smsapp.ir/webservice/v2.asmx?WSDL
// Encoding : utf-8
// Version  : 1.0
// (2013/03/09 05:56:09 È.Ù - 1.33.2.5)
// ************************************************************************ //

unit v2;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns;

type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Borland types; however, they could also
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"
  // !:int             - "http://www.w3.org/2001/XMLSchema"
  // !:long            - "http://www.w3.org/2001/XMLSchema"
  // !:double          - "http://www.w3.org/2001/XMLSchema"

  Messages             = class;                 { "http://tempuri.org/" }

  ArrayOfString = array of WideString;          { "http://tempuri.org/" }
  ArrayOfInt = array of Integer;                { "http://tempuri.org/" }
  ArrayOfLong = array of Int64;                 { "http://tempuri.org/" }


  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  Messages = class(TRemotable)
  private
    FMessageID: Int64;
    FRecipientNumber: WideString;
    FSenderNumber: WideString;
    FBody: WideString;
    FReceiveDate: WideString;
  published
    property MessageID: Int64 read FMessageID write FMessageID;
    property RecipientNumber: WideString read FRecipientNumber write FRecipientNumber;
    property SenderNumber: WideString read FSenderNumber write FSenderNumber;
    property Body: WideString read FBody write FBody;
    property ReceiveDate: WideString read FReceiveDate write FReceiveDate;
  end;

  ArrayOfMessages = array of Messages;          { "http://tempuri.org/" }

  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // soapAction: http://tempuri.org/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // binding   : v2Soap
  // service   : v2
  // port      : v2Soap
  // URL       : http://smsapp.ir/webservice/v2.asmx
  // ************************************************************************ //
  v2Soap = interface(IInvokable)
  ['{6CCB3DDB-A9A6-5D72-AF1E-BDB847ED594C}']
    function  SendSMS(const username: WideString; const password: WideString; const senderNumbers: ArrayOfString; const recipientNumbers: ArrayOfString; const messageBodies: ArrayOfString; const sendDate: ArrayOfString; const messageClasses: ArrayOfInt; const checkingMessageIds: ArrayOfLong): ArrayOfLong; stdcall;
    function  GetMessageStatus(const username: WideString; const password: WideString; const MessageIDs: ArrayOfLong): ArrayOfInt; stdcall;
    function  GetCredit(const username: WideString; const password: WideString): Double; stdcall;
    function  CheckMessageIDs(const username: WideString; const password: WideString; const checkingids: ArrayOfLong): ArrayOfLong; stdcall;
    function  GetReceiveMessages(const username: WideString; const password: WideString; const destNumber: WideString; const isRead: Integer): ArrayOfMessages; stdcall;
  end;

function Getv2Soap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): v2Soap;


implementation

function Getv2Soap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): v2Soap;
const
  defWSDL = 'http://smsapp.ir/webservice/v2.asmx?WSDL';
  defURL  = 'http://smsapp.ir/webservice/v2.asmx';
  defSvc  = 'v2';
  defPrt  = 'v2Soap';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as v2Soap);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


initialization
  InvRegistry.RegisterInterface(TypeInfo(v2Soap), 'http://tempuri.org/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(v2Soap), 'http://tempuri.org/%operationName%');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfString), 'http://tempuri.org/', 'ArrayOfString');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfInt), 'http://tempuri.org/', 'ArrayOfInt');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfLong), 'http://tempuri.org/', 'ArrayOfLong');
  RemClassRegistry.RegisterXSClass(Messages, 'http://tempuri.org/', 'Messages');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfMessages), 'http://tempuri.org/', 'ArrayOfMessages');
  InvRegistry.RegisterInvokeOptions(TypeInfo(v2Soap), ioDocument);
end. 
