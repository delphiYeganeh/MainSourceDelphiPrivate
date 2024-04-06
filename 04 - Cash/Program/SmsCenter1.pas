// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://174.142.29.130:8080/sms/services/SmsCenter?wsdl
// Encoding : UTF-8
// Version  : 1.0
// (2015/02/21 06:04:21 È.Ù - 1.33.2.5)
// ************************************************************************ //

unit SmsCenter1;

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
  // !:long            - "http://www.w3.org/2001/XMLSchema"

  ArrayOf_xsd_string = array of WideString;     { "urn:sms-center" }

  // ************************************************************************ //
  // Namespace : urn:sms-center
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // binding   : SmsCenterSoapBinding
  // service   : SmsCenterService
  // port      : SmsCenter
  // URL       : http://174.142.29.130:8080/sms/services/SmsCenter
  // ************************************************************************ //
  SmsCenter = interface(IInvokable)
  ['{52B6F474-C9D4-178B-B450-021C7D180872}']
    function  getCredit(const terminalId: WideString; const password: WideString): WideString; stdcall;
    function  getNewMessages(const terminalId: WideString; const password: WideString): ArrayOf_xsd_string; stdcall;
    function  snedOneSms(const terminalId: WideString; const password: WideString; const telNo: WideString; const message: WideString): WideString; stdcall;
    function  snedGroupSms(const terminalId: WideString; const password: WideString; const telNo: ArrayOf_xsd_string; const message: ArrayOf_xsd_string): ArrayOf_xsd_string; stdcall;
    function  getSentMessages(const terminalId: WideString; const password: WideString): ArrayOf_xsd_string; stdcall;
    function  addCredit(const terminalId: WideString; const password: WideString; const superPassword: WideString; const pay: Int64): WideString; stdcall;
    function  getCartableMessages(const terminalId: WideString; const password: WideString): ArrayOf_xsd_string; stdcall;
  end;

function GetSmsCenter(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): SmsCenter;


implementation

function GetSmsCenter(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): SmsCenter;
const
  defWSDL = 'http://174.142.29.130:8080/sms/services/SmsCenter?wsdl';
  defURL  = 'http://174.142.29.130:8080/sms/services/SmsCenter';
  defSvc  = 'SmsCenterService';
  defPrt  = 'SmsCenter';
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
    Result := (RIO as SmsCenter);
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
  InvRegistry.RegisterInterface(TypeInfo(SmsCenter), 'urn:sms-center', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(SmsCenter), '');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOf_xsd_string), 'urn:sms-center', 'ArrayOf_xsd_string');

end. 