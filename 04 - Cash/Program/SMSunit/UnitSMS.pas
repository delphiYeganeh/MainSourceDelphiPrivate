unit UnitSMS;

interface

uses Classes,Types,XSBuiltIns;


Type TMassReceive=record
        MessageId,SendTo,SendFrom,MessageText,timestamp :String;
     end;

Type TMassageReceive=record
        Body :array of TMassReceive;
     end;

Type TMassSend=record
        SendTo,MessageText :String;
        CheckDup:Boolean;
        send_results,identifiers:String;
        send_time:string;
     end;

Type TMassageSend=record
        Body :array of TMassSend;
     end;

Type TChSendState=record
        identifiers,sendStatuses :String;
     end;

Type TCheckSendState=record
        Body :array of TChSendState;
     end;

type
  ArrayOfString = array of string;
  ArrayOfLong = array of Int64;

Type MessagesBL = record
    MsgID:           Int64;
    UserID:          Integer;
    LinkID:          Integer;
    NumberID:        Integer;
    Tariff:          Double;
    MsgType:         Byte;
    Body:            string;
    Udh:             string;
    SendDate:        TDateTime;
    Sender:          string;
    Receiver:        string;
    FirstLocation:   Integer;
    CurrentLocation: Integer;
    Parts:           Integer;
    IsFlash:         Boolean;
    IsRead:          Boolean;
    IsUnicode:       Boolean;
    Credit:          Double;
    Module:          Integer;
    RecCount:        Integer;
    RecFailed:       Integer;
    RecSuccess:      Integer;
    IsMoneyBack:     Boolean;
  end;

  ArrayOfMessagesBL = array of MessagesBL;

Type Branchs = record
    FBranchID: Integer;
    FNumberCount: Integer;
    FBranchOwner: Integer;
    FBranchName: string;
  end;

  ArrayOfBranchs = array of Branchs;

  ArrayOfInt = array of Integer;

function  SendSimpleSMS(const username,password:string;to_: ArrayOfString;from,text: string; const isflash: Boolean): ArrayOfString;
function  SendSimpleSMS2(const username,password,to_,from,text:string;isflash: Boolean): string;
function  SendSms(username,password:string;to_: ArrayOfString;from,text: string;isflash: Boolean;udh: string;var recId: ArrayOfLong; var status: TByteDynArray): Integer;
function  GetCredit(const username: string; const password: string): Double;
function  GetDelivery2(const recId: string): Integer;
function  GetDelivery(const recId: Int64): Integer;
function  GetInboxCount(const username: string; const password: string; const isRead: Boolean): Integer;
function  getMessages(const username: string; const password: string; const location: Integer; const from: string; const index_: Integer; const count: Integer): ArrayOfMessagesBL;

function  GetBranchs(const username: string; const password: string; const owner: Integer): ArrayOfBranchs;
function  AddBranch(const username: string; const password: string; const branchName: string; const owner: Integer): Integer;
function  AddNumber(const username: string; const password: string; const branchId: Integer; const mobileNumbers: ArrayOfString): Integer;
function  RemoveBranch(const username: string; const password: string; const branchId: Integer): Integer;
function  AddBulk(const username: string; const password: string; const from: string; const branch: Integer; const bulkType: Byte; const title: string;const message_: string;
                  const rangeFrom: string; const rangeTo: string; const DateToSend: TDateTime; const requestCount: Integer;const rowFrom: Integer): Integer;
function  AddBulk2(const username: string; const password: string; const from: string; const branch: Integer; const bulkType: Byte; const title: string;
                   const message_: string; const rangeFrom: string; const rangeTo: string; const DateToSend: string; const requestCount: Integer;const rowFrom: Integer): Integer;
function  GetBulkStatus(const bulkId: Integer; var sent: Integer; var failed: Integer; var status: Byte): Integer;
function  GetTotalSent(const username: string; const password: string): Integer;
function  GetTodaySent(const username: string; const password: string): Integer;
function  SendMultipleSMS(const username: string; const password: string; const to_: ArrayOfString; const from: string; const text: ArrayOfString; const isflash: Boolean;
                              const udh: string; var recId: ArrayOfLong; var status: TByteDynArray): ArrayOfInt;
function  ConvertStatusStrToByteArr(status: string;count:integer): TByteDynArray;

Const XMLHeader='<?xml version="1.0" encoding="ISO-8859-1"?><SOAP-ENV:Envelope xmlns:SOAP-ENV="http://www.w3.org/2003/05/soap-envelope" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"><SOAP-ENV:Body>';

      XMLFoolter='</SOAP-ENV:Body></SOAP-ENV:Envelope>';

      SendWebService='http://87.107.121.54/post/send.asmx';
      ActionWebService='http://87.107.121.54/post/Actions.asmx';

      ErrorComunication='Œÿ« œ— «— »«ÿ »« ”—ÊÌ” œÂ‰œÂ' ;
      
implementation

uses dmu, SysUtils, xmldom,Dialogs, DateUtils, StrUtils;

function  SendSimpleSMS(const username,password:string;to_: ArrayOfString;from,text: string; const isflash: Boolean): ArrayOfString;
var
  msg: WideString;
  response: TStringStream;
  request:TStringStream;
  i:Smallint;
  XML,flash:WideString;
begin
  if isflash then
    flash:='true'
  else
    flash:='false';

  SetLength(Result,length(to_));
  for i:=1 to Length(Result) do
   Result[i-1] := '-1';
  msg := UTF8Encode(text);

  XML:=XMLHeader+
    '<SendSimpleSMS xmlns="http://tempuri.org/">' +
    '<username>'+username+'</username>' +
    '<password>'+password+'</password>' +
    '<to>' ;
    for i:=1 to length(to_) do
      XML:=XML+'<string>'+to_[i-1]+'</string>';
    XML:=XML+'</to>' +
    '<from>'+from+'</from>' +
    '<text>'+msg+'</text>' +
    '<isflash>'+flash+'</isflash>' +
    '</SendSimpleSMS>' +
    XMLFoolter;

  request := TStringStream.Create(XML);
  dm.IdHTTP1.Request.CustomHeaders.Text := 'SOAPAction: "http://tempuri.org/SendSimpleSMS"';
  dm.IdHTTP1.Request.ContentType := 'text/xml ;charset=UTF-8';
  response := TStringStream.Create('');
  try
    dm.IdHTTP1.Post(SendWebService, request, response);
    dm.XMLDocument1.LoadFromStream(response);
    for i:=1 to length(to_) do
       Result[i-1] :=dm.XMLDocument1.DOMDocument.getElementsByTagName('soap:Body').item[0].childNodes[0].childNodes[0].childNodes[i-1].childNodes[0].nodeValue;
  except
    ShowMessage(ErrorComunication);
  end;
end;

function  SendSimpleSMS2(const username,password,to_,from,text:string;isflash: Boolean): string;
var
  msg: WideString;
  response: TStringStream;
  request:TStringStream;
  flash:string;
begin
  Result := '-1';
  
  if isflash then
    flash:='true'
  else
    flash:='false';

  msg := UTF8Encode(text);

  request := TStringStream.Create(XMLHeader+
    '<SendSimpleSMS2 xmlns="http://tempuri.org/">'+
    '<username>'+username+'</username>'+
    '<password>'+password+'</password>'+
    '<to>'+to_+'</to>'+
    '<from>'+from+'</from>'+
    '<text>'+msg+'</text>'+
    '<isflash>'+flash+'</isflash>'+
    '</SendSimpleSMS2>' +
    XMLFoolter);

  dm.IdHTTP1.Request.CustomHeaders.Text := 'SOAPAction: "http://tempuri.org/SendSimpleSMS2"';
  dm.IdHTTP1.Request.ContentType := 'text/xml; charset=UTF-8';
  response := TStringStream.Create('');
  try
    dm.IdHTTP1.Post(SendWebService, request, response);
    dm.XMLDocument1.LoadFromStream(response);
    Result := dm.XMLDocument1.DOMDocument.getElementsByTagName('soap:Body').item[0].childNodes[0].childNodes[0].childNodes[0].nodeValue;
  except
    ShowMessage(ErrorComunication);
  end;
end;

function SendSms(username,password:string;to_: ArrayOfString;from,text: string;isflash: Boolean;udh: string;var recId: ArrayOfLong; var status: TByteDynArray): Integer;
var
  msg: WideString;
  response: TStringStream;
  request:TStringStream;
  i:Smallint;
  XML,flash:WideString;
  len:integer;
begin
  if isflash then
    flash:='true'
  else
    flash:='false';

  len:=length(to_);
  msg := UTF8Encode(text);

  XML:=XMLHeader+
    '<SendSms xmlns="http://tempuri.org/">' +
    '<username>'+username+'</username>' +
    '<password>'+password+'</password>' +
    '<to>' ;
    for i:=1 to Len do
      XML:=XML+'<string>'+to_[i-1]+'</string>';
    XML:=XML+'</to>' +
    '<from>'+from+'</from>' +
    '<text>'+msg+'</text>' +
    '<isflash>'+flash+'</isflash>' +
    '<udh>'+udh+'</udh>' +
    '<recId/>' +
    '<status xmlns="" xsi:nil="true"/>' +
    '</SendSms>' +
    XMLFoolter;

  request := TStringStream.Create(XML);
  dm.IdHTTP1.Request.CustomHeaders.Text := 'SOAPAction: "http://tempuri.org/SendSms"';
  dm.IdHTTP1.Request.ContentType := 'text/xml;charset=UTF-8';
  response := TStringStream.Create('');
  try
    dm.IdHTTP1.Post(SendWebService, request, response);
    dm.XMLDocument1.LoadFromStream(response);

    SetLength(recId,Len);
    SetLength(status,Len);
    Result:=StrToIntDef(dm.XMLDocument1.DOMDocument.getElementsByTagName('soap:Body').item[0].childNodes[0].childNodes[0].childNodes[0].nodeValue,-1);
    if Result=1 then
    begin
      for i:=1 to Len do
        recId[i-1] :=StrToInt64Def(dm.XMLDocument1.DOMDocument.getElementsByTagName('soap:Body').item[0].childNodes[0].childNodes[1].childNodes[i-1].childNodes[0].nodeValue,-1);
      //for i:=1 to Len do
      //  status[i-1]:=StrToIntDef(dm.XMLDocument1.DOMDocument.getElementsByTagName('soap:Body').item[0].childNodes[0].childNodes[2].childNodes[0].nodeValue,1)
      status:=ConvertStatusStrToByteArr(dm.XMLDocument1.DOMDocument.getElementsByTagName('soap:Body').item[0].childNodes[0].childNodes[2].childNodes[0].nodeValue,len);
    end  
  except
    ShowMessage(ErrorComunication);
  end;
end;

function  GetCredit(const username: string; const password: string): Double;
var
  response: TStringStream;
  request:TStringStream;
begin

  request := TStringStream.Create(XMLHeader+
    '<GetCredit xmlns="http://tempuri.org/">'+
    '<username>'+username+'</username>'+
    '<password>'+password+'</password>'+
    '</GetCredit>' +
    XMLFoolter);

  dm.IdHTTP1.Request.CustomHeaders.Text := 'SOAPAction: "http://tempuri.org/GetCredit"';
  dm.IdHTTP1.Request.ContentType := 'text/xml;charset=UTF-8';
  response := TStringStream.Create('');
  try
    dm.IdHTTP1.Post(SendWebService, request, response);
    dm.XMLDocument1.LoadFromStream(response);
    Result := StrToFloat(dm.XMLDocument1.DOMDocument.getElementsByTagName('soap:Body').item[0].childNodes[0].childNodes[0].childNodes[0].nodeValue);
  except
    ShowMessage(ErrorComunication);
  end;
end;

function  GetDelivery2(const recId: string): Integer; 
var
  response: TStringStream;
  request:TStringStream;
begin
  Result := -1;
  request := TStringStream.Create(XMLHeader+
    '<GetDelivery2 xmlns="http://tempuri.org/">'+
    '<recId>'+recId+'</recId>'+
    '</GetDelivery2>' +
    XMLFoolter);

  dm.IdHTTP1.Request.CustomHeaders.Text := 'SOAPAction: "http://tempuri.org/GetDelivery2"';
  dm.IdHTTP1.Request.ContentType := 'text/xml;charset=UTF-8';
  response := TStringStream.Create('');
  try
    dm.IdHTTP1.Post(SendWebService, request, response);
    dm.XMLDocument1.LoadFromStream(response);
    Result := StrToInt(dm.XMLDocument1.DOMDocument.getElementsByTagName('soap:Body').item[0].childNodes[0].childNodes[0].childNodes[0].nodeValue);
  except
    ShowMessage(ErrorComunication);
  end;
end;

function  GetDelivery(const recId: Int64): Integer;
var
  response: TStringStream;
  request:TStringStream;
begin
  Result := -1;
  request := TStringStream.Create(XMLHeader+
    '<GetDelivery xmlns="http://tempuri.org/">'+
    '<recId>'+IntToStr(recId)+'</recId>'+
    '</GetDelivery>' +
    XMLFoolter);

  dm.IdHTTP1.Request.CustomHeaders.Text := 'SOAPAction: "http://tempuri.org/GetDelivery"';
  dm.IdHTTP1.Request.ContentType := 'text/xml;charset=UTF-8';
  response := TStringStream.Create('');
  try
    dm.IdHTTP1.Post(SendWebService, request, response);
    dm.XMLDocument1.LoadFromStream(response);
    Result := StrToInt(dm.XMLDocument1.DOMDocument.getElementsByTagName('soap:Body').item[0].childNodes[0].childNodes[0].childNodes[0].nodeValue);
  except
    ShowMessage(ErrorComunication);
  end;
end;

function  GetInboxCount(const username: string; const password: string; const isRead: Boolean): Integer;
var
  response: TStringStream;
  request:TStringStream;
  read:string;
begin
  Result := -1;

  if isRead then
    read:='true'
  else
    read:='false';

  request := TStringStream.Create(XMLHeader+
    '<GetInboxCount xmlns="http://tempuri.org/">'+
    '<username>'+username+'</username>'+
    '<password>'+password+'</password>'+
    '<isRead>'+read+'</isRead>'+
    '</GetInboxCount>' +
    XMLFoolter);

  dm.IdHTTP1.Request.CustomHeaders.Text := 'SOAPAction: "http://tempuri.org/GetInboxCount"';
  dm.IdHTTP1.Request.ContentType := 'text/xml;charset=UTF-8';
  response := TStringStream.Create('');
  try
    dm.IdHTTP1.Post(SendWebService, request, response);
    dm.XMLDocument1.LoadFromStream(response);
    Result := StrToInt(dm.XMLDocument1.DOMDocument.getElementsByTagName('soap:Body').item[0].childNodes[0].childNodes[0].childNodes[0].nodeValue);
  except
    ShowMessage(ErrorComunication);
  end;
end;

function  getMessages(const username: string; const password: string; const location: Integer; const from: string; const index_: Integer; const count: Integer): ArrayOfMessagesBL;
var
  response: TStringStream;
  request:TStringStream;
  i:integer;
begin

  request := TStringStream.Create(XMLHeader+
    '<getMessages xmlns="http://tempuri.org/">'+
    '<username>'+username+'</username>'+
    '<password>'+password+'</password>'+
    '<location>'+inttostr(location)+'</location>'+
    '<from>'+from+'</from>'+
    '<index>'+inttostr(index_)+'</index>'+
    '<count>'+inttostr(count)+'</count>'+
    '</getMessages>' +
    XMLFoolter);

  dm.IdHTTP1.Request.CustomHeaders.Text := 'SOAPAction: "http://tempuri.org/getMessages"';
  dm.IdHTTP1.Request.ContentType := 'text/xml;charset=UTF-8';
  response := TStringStream.Create('');
  try
    dm.IdHTTP1.Post(SendWebService, request, response);
    dm.XMLDocument1.LoadFromStream(response);
    SetLength(Result,count);
    for i:=0 to count-1 do
    begin
      Result[i].MsgID := StrToInt64(dm.XMLDocument1.DOMDocument.getElementsByTagName('soap:Body').item[0].childNodes[0].childNodes[0].childNodes[i].childNodes[0].childNodes[0].nodeValue);
      Result[i].UserID := StrToInt(dm.XMLDocument1.DOMDocument.getElementsByTagName('soap:Body').item[0].childNodes[0].childNodes[0].childNodes[i].childNodes[1].childNodes[0].nodeValue);
      Result[i].LinkID := StrToInt(dm.XMLDocument1.DOMDocument.getElementsByTagName('soap:Body').item[0].childNodes[0].childNodes[0].childNodes[i].childNodes[2].childNodes[0].nodeValue);
      Result[i].NumberID := StrToInt(dm.XMLDocument1.DOMDocument.getElementsByTagName('soap:Body').item[0].childNodes[0].childNodes[0].childNodes[i].childNodes[3].childNodes[0].nodeValue);
      Result[i].Tariff := StrToFloat(dm.XMLDocument1.DOMDocument.getElementsByTagName('soap:Body').item[0].childNodes[0].childNodes[0].childNodes[i].childNodes[4].childNodes[0].nodeValue);
      Result[i].MsgType := StrToInt(dm.XMLDocument1.DOMDocument.getElementsByTagName('soap:Body').item[0].childNodes[0].childNodes[0].childNodes[i].childNodes[5].childNodes[0].nodeValue);
      Result[i].Body := dm.XMLDocument1.DOMDocument.getElementsByTagName('soap:Body').item[0].childNodes[0].childNodes[0].childNodes[i].childNodes[6].childNodes[0].nodeValue;
      //Result[i].Udh := dm.XMLDocument1.DOMDocument.getElementsByTagName('soap:Body').item[0].childNodes[0].childNodes[0].childNodes[i].childNodes[7].childNodes[0].nodeValue;
      Result[i].SendDate := IncMinute(XMLTimeToDateTime(dm.XMLDocument1.DOMDocument.getElementsByTagName('soap:Body').item[0].childNodes[0].childNodes[0].childNodes[i].childNodes[8].childNodes[0].nodeValue),-270);
      Result[i].Sender := dm.XMLDocument1.DOMDocument.getElementsByTagName('soap:Body').item[0].childNodes[0].childNodes[0].childNodes[i].childNodes[9].childNodes[0].nodeValue;
      Result[i].Receiver := dm.XMLDocument1.DOMDocument.getElementsByTagName('soap:Body').item[0].childNodes[0].childNodes[0].childNodes[i].childNodes[10].childNodes[0].nodeValue;
      Result[i].FirstLocation := StrToInt(dm.XMLDocument1.DOMDocument.getElementsByTagName('soap:Body').item[0].childNodes[0].childNodes[0].childNodes[i].childNodes[11].childNodes[0].nodeValue);
      Result[i].CurrentLocation := StrToInt(dm.XMLDocument1.DOMDocument.getElementsByTagName('soap:Body').item[0].childNodes[0].childNodes[0].childNodes[i].childNodes[12].childNodes[0].nodeValue);
      Result[i].Parts := StrToInt(dm.XMLDocument1.DOMDocument.getElementsByTagName('soap:Body').item[0].childNodes[0].childNodes[0].childNodes[i].childNodes[13].childNodes[0].nodeValue);
      Result[i].IsFlash := StrToBool(dm.XMLDocument1.DOMDocument.getElementsByTagName('soap:Body').item[0].childNodes[0].childNodes[0].childNodes[i].childNodes[14].childNodes[0].nodeValue);
      Result[i].IsRead := StrToBool(dm.XMLDocument1.DOMDocument.getElementsByTagName('soap:Body').item[0].childNodes[0].childNodes[0].childNodes[i].childNodes[15].childNodes[0].nodeValue);
      Result[i].IsUnicode := StrToBool(dm.XMLDocument1.DOMDocument.getElementsByTagName('soap:Body').item[0].childNodes[0].childNodes[0].childNodes[i].childNodes[16].childNodes[0].nodeValue);
      Result[i].Credit := StrToFloat(dm.XMLDocument1.DOMDocument.getElementsByTagName('soap:Body').item[0].childNodes[0].childNodes[0].childNodes[i].childNodes[17].childNodes[0].nodeValue);
      Result[i].Module := StrToInt(dm.XMLDocument1.DOMDocument.getElementsByTagName('soap:Body').item[0].childNodes[0].childNodes[0].childNodes[i].childNodes[18].childNodes[0].nodeValue);
      Result[i].RecCount := StrToInt(dm.XMLDocument1.DOMDocument.getElementsByTagName('soap:Body').item[0].childNodes[0].childNodes[0].childNodes[i].childNodes[19].childNodes[0].nodeValue);
      Result[i].RecFailed := StrToInt(dm.XMLDocument1.DOMDocument.getElementsByTagName('soap:Body').item[0].childNodes[0].childNodes[0].childNodes[i].childNodes[20].childNodes[0].nodeValue);
      Result[i].RecSuccess := StrToInt(dm.XMLDocument1.DOMDocument.getElementsByTagName('soap:Body').item[0].childNodes[0].childNodes[0].childNodes[i].childNodes[21].childNodes[0].nodeValue);
      Result[i].IsMoneyBack := StrToBool(dm.XMLDocument1.DOMDocument.getElementsByTagName('soap:Body').item[0].childNodes[0].childNodes[0].childNodes[i].childNodes[22].childNodes[0].nodeValue);
    end;

  except
    ShowMessage(ErrorComunication);
  end;
end;

function  GetBranchs(const username: string; const password: string; const owner: Integer): ArrayOfBranchs;
var
  response: TStringStream;
  request:TStringStream;
  i,c:integer;
begin
  request := TStringStream.Create(XMLHeader+
    '<GetBranchs xmlns="http://tempuri.org/">'+
    '<username>'+username+'</username>'+
    '<password>'+password+'</password>'+
    '<owner>'+inttostr(owner)+'</owner>'+
    '</GetBranchs>' +
    XMLFoolter);

  dm.IdHTTP1.Request.CustomHeaders.Text := 'SOAPAction: "http://tempuri.org/GetBranchs"';
  dm.IdHTTP1.Request.ContentType := 'text/xml;charset=UTF-8';
  response := TStringStream.Create('');
  try
    dm.IdHTTP1.Post(ActionWebService, request, response);
    dm.XMLDocument1.LoadFromStream(response);

    C:=0;
    while dm.XMLDocument1.DOMDocument.getElementsByTagName('soap:Body').item[0].childNodes[0].childNodes[0].childNodes[C]<>nil do
    begin
      C:=C+1;
      dm.XMLDocument1.DOMDocument.getElementsByTagName('soap:Body').item[0].nextSibling;
    end;

    SetLength(Result,c);
    for i:=0 to c-1 do
    begin
      Result[i].FBranchID := StrToInt(dm.XMLDocument1.DOMDocument.getElementsByTagName('soap:Body').item[0].childNodes[0].childNodes[0].childNodes[i].childNodes[0].childNodes[0].nodeValue);
      Result[i].FNumberCount := StrToInt(dm.XMLDocument1.DOMDocument.getElementsByTagName('soap:Body').item[0].childNodes[0].childNodes[0].childNodes[i].childNodes[1].childNodes[0].nodeValue);
      Result[i].FBranchOwner := StrToInt(dm.XMLDocument1.DOMDocument.getElementsByTagName('soap:Body').item[0].childNodes[0].childNodes[0].childNodes[i].childNodes[2].childNodes[0].nodeValue);
      Result[i].FBranchName := dm.XMLDocument1.DOMDocument.getElementsByTagName('soap:Body').item[0].childNodes[0].childNodes[0].childNodes[i].childNodes[3].childNodes[0].nodeValue;
    end; 

  except
    ShowMessage(ErrorComunication);
  end;
end;


function  AddBranch(const username: string; const password: string; const branchName: string; const owner: Integer): Integer;
var
  branch:WideString;
  response: TStringStream;
  request:TStringStream;
begin
  Result:=-1;

  branch := UTF8Encode(branchName);

  request := TStringStream.Create(XMLHeader+
    '<AddBranch xmlns="http://tempuri.org/">'+
    '<username>'+username+'</username>'+
    '<password>'+password+'</password>'+
    '<branchName>'+branch+'</branchName>'+
    '<owner>'+inttostr(owner)+'</owner>'+
    '</AddBranch>' +
    XMLFoolter);

  dm.IdHTTP1.Request.CustomHeaders.Text := 'SOAPAction: "http://tempuri.org/AddBranch"';
  dm.IdHTTP1.Request.ContentType := 'text/xml;charset=UTF-8';
  response := TStringStream.Create('');
  try
    dm.IdHTTP1.Post(ActionWebService, request, response);
    dm.XMLDocument1.LoadFromStream(response);

    Result := StrToInt(dm.XMLDocument1.DOMDocument.getElementsByTagName('soap:Body').item[0].childNodes[0].childNodes[0].childNodes[0].nodeValue);

  except
    ShowMessage(ErrorComunication);
  end;
end;


function  AddNumber(const username: string; const password: string; const branchId: Integer; const mobileNumbers: ArrayOfString): Integer;
var
  response: TStringStream;
  request:TStringStream;
  XML:WideString;
  i,Count:integer;
begin
  Count:=length(mobileNumbers);

  XML:=XMLHeader+
    '<AddNumber xmlns="http://tempuri.org/">' +
    '<username>'+username+'</username>' +
    '<password>'+password+'</password>' +
    '<branchId>'+IntToStr(branchId)+'</branchId>' +
    '<mobileNumbers>' ;
    for i:=1 to Count do
      XML:=XML+'<string>'+mobileNumbers[i-1]+'</string>';
    XML:=XML+'</mobileNumbers>' +
    '</AddNumber>' +
    XMLFoolter;

  request := TStringStream.Create(XML);
  dm.IdHTTP1.Request.CustomHeaders.Text := 'SOAPAction: "http://tempuri.org/AddNumber"';
  dm.IdHTTP1.Request.ContentType := 'text/xml;charset=UTF-8';
  response := TStringStream.Create('');
  try
    dm.IdHTTP1.Post(ActionWebService, request, response);
    dm.XMLDocument1.LoadFromStream(response);
    Result := StrToInt(dm.XMLDocument1.DOMDocument.getElementsByTagName('soap:Body').item[0].childNodes[0].childNodes[0].childNodes[0].nodeValue);
  except
    ShowMessage(ErrorComunication);
  end;
end;

function  RemoveBranch(const username: string; const password: string; const branchId: Integer): Integer;
var
  response: TStringStream;
  request:TStringStream;
begin
  Result:=-1;

  request := TStringStream.Create(XMLHeader+
    '<RemoveBranch xmlns="http://tempuri.org/">'+
    '<username>'+username+'</username>'+
    '<password>'+password+'</password>'+
    '<branchId>'+inttostr(branchId)+'</branchId>'+
    '</RemoveBranch>' +
    XMLFoolter);

  dm.IdHTTP1.Request.CustomHeaders.Text := 'SOAPAction: "http://tempuri.org/RemoveBranch"';
  dm.IdHTTP1.Request.ContentType := 'text/xml;charset=UTF-8';
  response := TStringStream.Create('');
  try
    dm.IdHTTP1.Post(ActionWebService, request, response);
    dm.XMLDocument1.LoadFromStream(response);

    Result := StrToInt(dm.XMLDocument1.DOMDocument.getElementsByTagName('soap:Body').item[0].childNodes[0].childNodes[0].childNodes[0].nodeValue);

  except
    ShowMessage(ErrorComunication);
  end;
end;


function  AddBulk(const username: string; const password: string; const from: string; const branch: Integer; const bulkType: Byte; const title: string;const message_: string;
                  const rangeFrom: string; const rangeTo: string; const DateToSend: TDateTime; const requestCount: Integer;const rowFrom: Integer): Integer;
var
  msg,SendTitle: WideString;
  response: TStringStream;
  request:TStringStream;
begin
  Result := -1;

  msg := UTF8Encode(message_);
  SendTitle := UTF8Encode(title);

  request := TStringStream.Create(XMLHeader+
    '<AddBulk xmlns="http://tempuri.org/">'+
    '<username>'+username+'</username>'+
    '<password>'+password+'</password>'+
    '<from>'+from+'</from>'+
    '<branch>'+IntToStr(branch)+'</branch>'+
    '<bulkType>'+IntToStr(bulkType)+'</bulkType>'+
    '<title>'+SendTitle+'</title>'+
    '<message>'+msg+'</message>'+
    '<rangeFrom>'+rangeFrom+'</rangeFrom>'+
    '<rangeTo>'+rangeTo+'</rangeTo>'+
    '<DateToSend>'+DateTimeToXMLTime(DateToSend)+'</DateToSend>'+
    '<requestCount>'+IntToStr(requestCount)+'</requestCount>'+
    '<rowFrom>'+IntToStr(rowFrom)+'</rowFrom>'+
    '</AddBulk>' +
    XMLFoolter);

  dm.IdHTTP1.Request.CustomHeaders.Text := 'SOAPAction: "http://tempuri.org/AddBulk"';
  dm.IdHTTP1.Request.ContentType := 'text/xml;charset=UTF-8';
  response := TStringStream.Create('');
  try
    dm.IdHTTP1.Post(ActionWebService, request, response);
    dm.XMLDocument1.LoadFromStream(response);
    Result := StrToInt(dm.XMLDocument1.DOMDocument.getElementsByTagName('soap:Body').item[0].childNodes[0].childNodes[0].childNodes[0].nodeValue);
  except
    ShowMessage(ErrorComunication);
  end;
end;


function  AddBulk2(const username: string; const password: string; const from: string; const branch: Integer; const bulkType: Byte; const title: string;
                   const message_: string; const rangeFrom: string; const rangeTo: string; const DateToSend: string; const requestCount: Integer;const rowFrom: Integer): Integer;
var
  msg,SendTitle: WideString;
  response: TStringStream;
  request:TStringStream;
begin
  Result := -1;

  msg := UTF8Encode(message_);
  SendTitle := UTF8Encode(title);

  request := TStringStream.Create(XMLHeader+
    '<AddBulk2 xmlns="http://tempuri.org/">'+
    '<username>'+username+'</username>'+
    '<password>'+password+'</password>'+
    '<from>'+from+'</from>'+
    '<branch>'+IntToStr(branch)+'</branch>'+
    '<bulkType>'+IntToStr(bulkType)+'</bulkType>'+
    '<title>'+SendTitle+'</title>'+
    '<message>'+msg+'</message>'+
    '<rangeFrom>'+rangeFrom+'</rangeFrom>'+
    '<rangeTo>'+rangeTo+'</rangeTo>'+
    '<DateToSend>'+DateTimeToXMLTime(StrToDateTime(DateToSend))+'</DateToSend>'+
    '<requestCount>'+IntToStr(requestCount)+'</requestCount>'+
    '<rowFrom>'+IntToStr(rowFrom)+'</rowFrom>'+
    '</AddBulk2>' +
    XMLFoolter);

  dm.IdHTTP1.Request.CustomHeaders.Text := 'SOAPAction: "http://tempuri.org/AddBulk2"';
  dm.IdHTTP1.Request.ContentType := 'text/xml;charset=UTF-8';
  response := TStringStream.Create('');
  try
    dm.IdHTTP1.Post(ActionWebService, request, response);
    dm.XMLDocument1.LoadFromStream(response);
    Result := StrToInt(dm.XMLDocument1.DOMDocument.getElementsByTagName('soap:Body').item[0].childNodes[0].childNodes[0].childNodes[0].nodeValue);
  except
    ShowMessage(ErrorComunication);
  end;
end;


function  GetBulkStatus(const bulkId: Integer; var sent: Integer; var failed: Integer; var status: Byte): Integer;
var
  response: TStringStream;
  request:TStringStream;
begin
  Result := -1;

  request := TStringStream.Create(XMLHeader+
    '<GetBulkStatus xmlns="http://tempuri.org/">'+
    '<bulkId>'+IntToStr(bulkId)+'</bulkId>'+
    '<sent>0</sent>'+
    '<failed>0</failed>'+
    '<status>0</status>'+
    '</GetBulkStatus>' +
    XMLFoolter);

  dm.IdHTTP1.Request.CustomHeaders.Text := 'SOAPAction: "http://tempuri.org/GetBulkStatus"';
  dm.IdHTTP1.Request.ContentType := 'text/xml;charset=UTF-8';
  response := TStringStream.Create('');
  try
    dm.IdHTTP1.Post(ActionWebService, request, response);
    dm.XMLDocument1.LoadFromStream(response);
    Result := StrToInt(dm.XMLDocument1.DOMDocument.getElementsByTagName('soap:Body').item[0].childNodes[0].childNodes[0].childNodes[0].nodeValue);
  except
    ShowMessage(ErrorComunication);
  end;
end;

function  GetTotalSent(const username: string; const password: string): Integer;
var
  response: TStringStream;
  request:TStringStream;
begin
  Result := -1;

  request := TStringStream.Create(XMLHeader+
    '<GetTotalSent xmlns="http://tempuri.org/">'+
    '<username>'+username+'</username>'+
    '<password>'+password+'</password>'+
    '</GetTotalSent>' +
    XMLFoolter);

  dm.IdHTTP1.Request.CustomHeaders.Text := 'SOAPAction: "http://tempuri.org/GetTotalSent"';
  dm.IdHTTP1.Request.ContentType := 'text/xml;charset=UTF-8';
  response := TStringStream.Create('');
  try
    dm.IdHTTP1.Post(ActionWebService, request, response);
    dm.XMLDocument1.LoadFromStream(response);
    Result := StrToInt(dm.XMLDocument1.DOMDocument.getElementsByTagName('soap:Body').item[0].childNodes[0].childNodes[0].childNodes[0].nodeValue);
  except
    ShowMessage(ErrorComunication);
  end;
end;


function  GetTodaySent(const username: string; const password: string): Integer;
var
  response: TStringStream;
  request:TStringStream;
begin
  Result := -1;

  request := TStringStream.Create(XMLHeader+
    '<GetTodaySent xmlns="http://tempuri.org/">'+
    '<username>'+username+'</username>'+
    '<password>'+password+'</password>'+
    '</GetTodaySent>' +
    XMLFoolter);

  dm.IdHTTP1.Request.CustomHeaders.Text := 'SOAPAction: "http://tempuri.org/GetTodaySent"';
  dm.IdHTTP1.Request.ContentType := 'text/xml;charset=UTF-8';
  response := TStringStream.Create('');
  try
    dm.IdHTTP1.Post(ActionWebService, request, response);
    dm.XMLDocument1.LoadFromStream(response);
    Result := StrToInt(dm.XMLDocument1.DOMDocument.getElementsByTagName('soap:Body').item[0].childNodes[0].childNodes[0].childNodes[0].nodeValue);
  except
    ShowMessage(ErrorComunication);
  end;

end;


function  SendMultipleSMS(const username: string; const password: string; const to_: ArrayOfString; const from: string; const text: ArrayOfString; const isflash: Boolean;
                              const udh: string; var recId: ArrayOfLong; var status: TByteDynArray): ArrayOfInt;
var
  msg: array of WideString;
  response: TStringStream;
  request:TStringStream;
  i:Smallint;
  XML,flash:WideString;
  Len:integer;
begin
  if isflash then
    flash:='true'
  else
    flash:='false';

  Len:=length(to_);
  SetLength(msg,Len);
  for i:=1 to Len do
    msg[i-1] := UTF8Encode(text[i-1]);

  XML:=XMLHeader+
    '<SendMultipleSMS xmlns="http://tempuri.org/">' +
    '<username>'+username+'</username>' +
    '<password>'+password+'</password>' +
    '<to>' ;
    for i:=1 to Len do
      XML:=XML+'<string>'+to_[i-1]+'</string>';
    XML:=XML+'</to>' +
    '<from>'+from+'</from>' +
    '<text>';
    for i:=1 to length(text) do
      XML:=XML+'<string>'+text[i-1]+'</string>';
    XML:=XML+'</text>' +
    '<isflash>'+flash+'</isflash>' +
    '<udh>'+udh+'</udh>' +
    '<recId/>' +
    '<status xmlns="" xsi:nil="true"/>' +
    '</SendMultipleSMS>' +
    XMLFoolter;

  request := TStringStream.Create(XML);
  dm.IdHTTP1.Request.CustomHeaders.Text := 'SOAPAction: "http://tempuri.org/SendMultipleSMS"';
  dm.IdHTTP1.Request.ContentType := 'text/xml;charset=UTF-8';
  response := TStringStream.Create('');
  try
    dm.IdHTTP1.Post(ActionWebService, request, response);
    dm.XMLDocument1.LoadFromStream(response);

    SetLength(recId,Len);
    SetLength(status,Len);
    SetLength(Result,Len);
    for i:=1 to Len do
      Result[i-1]:=StrToIntDef(dm.XMLDocument1.DOMDocument.getElementsByTagName('soap:Body').item[0].childNodes[0].childNodes[0].childNodes[i-1].childNodes[0].nodeValue,-1);
    for i:=1 to Len do
      recId[i-1] :=StrToInt64Def(dm.XMLDocument1.DOMDocument.getElementsByTagName('soap:Body').item[0].childNodes[0].childNodes[1].childNodes[i-1].childNodes[0].nodeValue,-1);
    //for i:=1 to Len do
    //  status[i-1]:=StrToIntDef(dm.XMLDocument1.DOMDocument.getElementsByTagName('soap:Body').item[0].childNodes[0].childNodes[2].childNodes[0].nodeValue,1)
    status:=ConvertStatusStrToByteArr(dm.XMLDocument1.DOMDocument.getElementsByTagName('soap:Body').item[0].childNodes[0].childNodes[2].childNodes[0].nodeValue,len);

  except
    ShowMessage(ErrorComunication);
  end;
end;


function  ConvertStatusStrToByteArr(status: string;count:integer): TByteDynArray;
var  i:integer;
     st:string;
begin
   st:=LowerCase(status);
   for i:=1 to Length(status) do
     if (i mod 4)=1 then
      st[i]:=' ';
   st:=AnsiReplaceStr(st,' ','');
   SetLength(Result,count);
   for i:=1 to count do
     if st[i]='a' then
      Result[i-1]:=0
     else
      Result[i-1]:=1;
end;

end.
