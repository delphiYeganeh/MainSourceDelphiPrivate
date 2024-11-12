// ****************************************************
// Mass Emailer v1.0
//
//  by:   Steve Faleiro email: steve_goa@yahoo.com
//  date: 14 Apr 2009
//
//  Special thanks / dedications to:
//        Remy Lebau of Team Indy,
//        Nick Hodges of Codegear,
//        Andy (Andreas Hausladen),
//        & the JEDI JVCL project.
// ****************************************************


unit MailerPlus;

interface

uses SysUtils, Classes, IDMessageBuilder, Forms, StrUtils,
  IDMessage, IDSmtp, IdSSLOpenSSL, IdExplicitTLSClientServerBase,
  Windows, StdCtrls, DB, dialogs, ShellAPI;

type
  smtpserverdetails = record
    Host: string;   // 'smtp.gmail.com';
    Port: integer;  // 465;
    needAuthentication: string; // Y or N
    secureMode: string; // Y or N
    Username: string;   // 'xx@gmail.com';
    Password: string;   // 'pp';
  end;

type
  TEmailMessageType = (HTMLMessage, PlainTextMessage);

type
  emailmessage = record
    EmailMessageType: TEmailMessageType;
    FromAddress: string;
    FromName: string;
    ReplyToAddress: string;
    ReplyToName: string;
    ReceiptRecipientAddress: string;
    ReceiptRecipientName: string;
    RecipientAddress: string;
    MsgSubject: string;
    MsgBody: TMemoryStream;
    Footer: TMemoryStream;
    HTMLImages: TStringList;
    Attachmnts: TStringList;
    procedure copyTo(var dst: emailmessage);
    constructor Create(Sender: TObject);
    procedure Destroy;
  end;

type
  substList = record
    findList: TStringList;
    replaceList: TStringList;
  end;

type
  emailSender = class
    constructor Create(srvr: smtpserverdetails);
    procedure setEmail(emlmessg: emailmessage);
    procedure customizeEmail(emlmessg: emailmessage; replaceables: substList);
    procedure sendEmail;
    destructor Destroy; override;
  private
    IDSMTP1: TIDSmtp;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    IDMessage1: TIDMessage;
    FEmlMsg: emailmessage;
  public
  end;

procedure DeleteFileToRecycleBin(f: String);
procedure delAllFiles(d: string);
procedure getAllFileNames(d: string; out lstfn: TStringList);
function IsNumeric(const s: string): boolean;
function quotedString(s: string; c: Char): string;
procedure populateComboBox(c: TComboBox; ds: TDataSet;
  KeyColumnIndex, DisplayColumnIndex: integer); overload;
procedure populateComboBox(c: TComboBox; sl: TStrings); overload;
procedure disposeComboBoxObjects(c: TComboBox);
procedure disposeStringListObjects(c: TStringList);
procedure disposeListBoxObjects(l: TListBox);
procedure populateListBox(l: TListBox; ds: TDataSet; KeyColumnIndex, DisplayColumnIndex: integer);

implementation


procedure DeleteFileToRecycleBin(f: String);
var
  FileOpStruc: TSHFileOpStruct;
begin

  FillChar(FileOpStruc, SizeOf(FileOpStruc), 0);
  with FileOpStruc do begin
    Wnd := 0;
    wFunc := FO_DELETE;
    pFrom := PChar(f + #0);
    fFlags := FOF_ALLOWUNDO or FOF_NOCONFIRMATION or FOF_SILENT;
  end;
  try
    SHFileOperation(FileOpStruc);
  except
    on E: Exception do
      showmessage('Error!' + e.Message);
  end;
end;

procedure emailmessage.copyTo(var dst: emailmessage);
begin
  dst.EmailMessageType := EmailMessageType;
  dst.FromName := FromName;
  dst.FromAddress := FromAddress;
  dst.ReplyToAddress := ReplyToAddress;
  dst.ReplyToName := ReplyToName;
  dst.ReceiptRecipientAddress := ReceiptRecipientAddress;
  dst.ReceiptRecipientName := ReceiptRecipientName;
  dst.RecipientAddress := RecipientAddress;
  dst.MsgSubject := MsgSubject;
  dst.HTMLImages.Assign(HTMLImages);
  dst.Attachmnts.Assign(Attachmnts);

  MsgBody.Position := 0;
  dst.MsgBody.LoadFromStream(MsgBody);

  if Assigned(Footer) then begin
    Footer.Position := 0;
    dst.Footer.LoadFromStream(Footer);
  end;
end;

constructor emailmessage.Create(Sender: TObject);
begin
  MsgBody := TMemoryStream.Create;
  Footer := TMemoryStream.Create;
  HTMLImages := TStringList.Create;
  Attachmnts := TStringList.Create;
end;

procedure emailmessage.Destroy;
begin
  MsgBody.Free;
  Footer.Free;
  HTMLImages.Free;
  Attachmnts.Free;
end;

constructor emailSender.Create(srvr: smtpserverdetails);
begin
  IDSMTP1 := TIDSMTP.Create;
  IdSSLIOHandlerSocketOpenSSL1 := TIdSSLIOHandlerSocketOpenSSL.Create;

  with IDSMTP1 do begin
    Host := srvr.Host;
    Port := srvr.Port;
    if (srvr.needAuthentication = 'Y') then
      AuthType := satDefault
    else
      AuthType := satNone;
    IOHandler := IdSSLIOHandlerSocketOpenSSL1;

    if (srvr.secureMode = 'Y') then
      UseTLS := utUseRequireTLS
    else
      UseTLS := utNoTLSSupport;

    Username := srvr.Username;
    Password := srvr.Password;
  end;

  FEmlMsg.Create(nil);
end;

destructor emailSender.Destroy;
begin
  FEmlMsg.Destroy;
  IdSSLIOHandlerSocketOpenSSL1.Free;
  IDSMTP1.Free;

  inherited Destroy;
end;

//Author: Steve Faleiro. June 21, 2008.
procedure emailSender.customizeEmail(emlmessg: emailmessage; replaceables: substList);
var
  buffer: pointer;
begin

  emlmessg.copyTo(FEmlMsg);

  //move to last position and insert Email signature
  if Assigned(FEmlMsg.Footer) then //only if footer is populated
  begin
    getmem(buffer, FEmlMsg.Footer.size);
    FEmlMsg.footer.Write(buffer, FEmlMsg.footer.size);
    FEmlMsg.MsgBody.seek(0, soFromEnd);
    FEmlMsg.MsgBody.Read(buffer, FEmlMsg.footer.size);
  end;
//  ReplaceData(emlmsg.MsgBody, replaceables);
  FEmlMsg.MsgBody.Position := 0;
end;



procedure ReplaceData(Data: TStringList; replaceables: substList);
var
  i, d: integer;
  s: string;
begin
  for i := 0 to Data.Count - 1 do begin
    s := Data[i];
    for d := 0 to replaceables.FindList.Count - 1 do
      s := StringReplace(s, replaceables.FindList[d], replaceables.replaceList[d], [rfReplaceAll]);
    Data[i] := s;
  end;
end;

//Author: Steve Faleiro. June 21, 2008.
procedure emailSender.sendEmail;
var
  idMBHTML: TIdMessageBuilderHTML;
  c: integer;
  pic, tempPath: string;
  enc: TEncoding;
begin

  idMBHTML := TIdMessageBuilderHTML.Create;

  tempPath := extractfilepath(application.exename) + 'temp';

  if not DirectoryExists(tempPath) then begin
    if not CreateDir(tempPath) then
      exit//showmessage('error');
    ;
  end
  else //directory exists
    delAllFiles(tempPath);

  FEmlMsg.MsgBody.Position := 0;


  Idmessage1 := TIDMessage.Create;

  with idMBHTML do begin

    if (FEmlMsg.EmailMessageType = HTMLMessage) then begin
//      enc := nil;
//      TEncoding.GetBufferEncoding(FEmlMsg.MsgBody.Memory, enc) ;
      enc := TEncoding.Unicode;
      HTML.LoadFromStream(FEmlMsg.MsgBody, enc);
//    showmessage(Html.Text);
//      for c := 0 to FEmlMsg.HTMLImages.Count - 1 do
//        HTMLFiles.Add(FEmlMsg.HTMLImages.Strings[c])//
//        pic := FEmlMsg.HTMLImages.Strings[c];
//        HTML.Text := ReplaceStr(HTML.Text, pic, 'cid:' + pic);
////        showmessage(Html.Text);
    end
    else
    if (FEmlMsg.EmailMessageType = PlainTextMessage) then
      PlainText.LoadFromStream(FEmlMsg.MsgBody);

    for c := 0 to FEmlMsg.Attachmnts.Count - 1 do
      Attachments.Add(FEmlMsg.Attachmnts[c]);

    FillMessage(IDMessage1);
  end;

  with Idmessage1 do begin
    Subject := FEmlMsg.MsgSubject;
    From.Address := FEmlMsg.FromAddress;
    From.Name := FEmlMsg.FromName;
    Recipients.EMailAddresses := FEmlMsg.RecipientAddress;
    if FEmlMsg.ReceiptRecipientAddress <> '' then
      ReceiptRecipient.Address := FEmlMsg.ReceiptRecipientAddress;
    if FEmlMsg.ReceiptRecipientName <> '' then
      ReceiptRecipient.Name := FEmlMsg.ReceiptRecipientName;
  end;

  with IDSMTP1 do begin
    if not Connected then
      Connect;
    Send(IdMessage1);
  end;

  Idmessage1.Free;
  idMBHTML.Free;
end;


procedure emailSender.setEmail(emlmessg: emailmessage);
begin
  emlmessg.copyTo(FEmlMsg);
end;

function quotedString(s: string; c: Char): string;
begin
  Result := c + s + c;
end;

procedure delAllFiles(d: string);
var
  fr: TSearchRec;
  searchResult: integer;
begin
  searchResult := FindFirst(Pansichar(d + '\*.*'), 0, fr);
  if (searchResult = 0) then
    repeat
      DeleteFile(Pchar(d + '\' + fr.Name))
    until (FindNext(fr) <> 0);
  SysUtils.FindClose(fr);
end;

procedure getAllFileNames(d: string; out lstfn: TStringList);
var
  fr: TSearchRec;
  searchResult: integer;
begin
  searchResult := FindFirst(d + '\*.*', 0, fr);
  if (searchResult = 0) then
    repeat
      lstfn.Add(d + '\' + fr.Name)
    until (FindNext(fr) <> 0);
  SysUtils.FindClose(fr);
end;

function IsNumeric(const s: string): boolean;
var
  v: single;
  code: integer;
begin
  Val(s, v, code);
  Result := code = 0;
end;


function countWords(s: string): integer;
var
  l, p, o: integer;
begin
  l := Length(s);
  if l = 0 then begin
    Result := 0;
    exit;
  end;
  o := 1;
  for p := 0 to l - 1 do
    if s[p] = ' ' then
      Inc(o);
  Result := o;
end;

function getWord(s: string; n: integer): string;
var
  c, p, o: integer;
begin
  p := 0;
  for c := 0 to n do begin
    o := p + 1;
    p := PosEx(' ', s, p + 1);
    if p = 0 then
      p := Length(s) + 1;
  end;
  s := MidStr(s, o, p - o);
  Result := s;
end;

 //  ---- Populate a Combobox ---------------------------------------------
 //  ----  for accessing the value, use:
 //  var
 //      s : PVariant;
 //  begin
 //      s :=  PVariant( lstServers.Items.Objects[lstServers.ItemIndex] );
 //      my_key := integer(  s ^  );  // <--- cast to your type
 //  ---------------------------------------------------------------------
procedure populateComboBox(c: TComboBox; ds: TDataSet;
  KeyColumnIndex, DisplayColumnIndex: integer);
var
  v: variant;
  pt: PVariant;
begin

  disposeComboBoxObjects(c);
  c.Items.Clear;

  with ds do begin
    First;
    while not EOF do begin
      v := Fields[KeyColumnIndex].Value;
      New(pt);
      pt ^ := v;
      c.Items.AddObject(Fields[DisplayColumnIndex].AsString, TObject(pt));
      Next;
    end;
  end;

  if c.Items.Count > 0 then
    c.ItemIndex := 0;
end;


 //  ---- Populate a Combobox ---------------------------------------------
 //  ----  for accessing the value, use:
 //  var
 //      s : PVariant;
 //  begin
 //      s :=  PVariant( lstServers.Items.Objects[lstServers.ItemIndex] );
 //      my_key := integer(  s ^  );  // <--- cast to your type
 //  ---------------------------------------------------------------------
procedure populateComboBox(c: TComboBox; sl: TStrings);
var
  v: variant;
  pt: PVariant;
  l: integer;
begin

  disposeComboBoxObjects(c);
  c.Items.Clear;

  for l := 0 to sl.Count - 1 do begin
    v := sl.ValueFromIndex[l];
    New(pt);
    pt ^ := v;
    c.Items.AddObject(sl.Names[l], TObject(pt));
  end;

  if c.Items.Count > 0 then
    c.ItemIndex := 0;
end;


 //  ---- Populate a Listbox ---------------------------------------------
 //  ----  for accessing the value, use:
 //  var
 //      s : PVariant;
 //  begin
 //      s :=  PVariant( lstServers.Items.Objects[lstServers.ItemIndex] );
 //      my_key := integer(  s ^  );  // <--- cast to your type
 //  ---------------------------------------------------------------------
procedure populateListBox(l: TListBox; ds: TDataSet; KeyColumnIndex, DisplayColumnIndex: integer);
var
  v: variant;
  pt: PVariant;
begin

  disposeListBoxObjects(l);
  l.Items.Clear;

  with ds do begin
    First;
    while not EOF do begin
      v := Fields[KeyColumnIndex].Value;
      New(pt);
      pt ^ := v;
      l.Items.AddObject(Fields[DisplayColumnIndex].AsString, TObject(pt));
      Next;
    end;
  end;

  if l.Items.Count > 0 then
    l.ItemIndex := 0;
end;


procedure disposeComboBoxObjects(c: TComboBox);
var
  i: integer;
begin
  if c.Items.Count > 0 then
    for i := 0 to c.Items.Count - 1 do
      Dispose(PVariant(c.Items.Objects[i]));
end;

procedure disposeStringListObjects(c: TStringList);
var
  i: integer;
begin
  if c.Count > 0 then
    for i := 0 to c.Count - 1 do
      Dispose(PVariant(c.Objects[i]));
end;

procedure disposeListBoxObjects(l: TListBox);
var
  i: integer;
begin
  if l.Items.Count > 0 then
    for i := 0 to l.Items.Count - 1 do
      Dispose(PVariant(l.Items.Objects[i]));
end;

end.
