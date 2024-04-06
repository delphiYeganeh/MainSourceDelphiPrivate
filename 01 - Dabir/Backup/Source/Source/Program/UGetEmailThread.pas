unit UGetEmailThread;

interface

uses
  Classes, IdMessage, Forms, SysUtils, DateUtils, Variants,
  IdCoderMIME, xmldom, XMLIntf, msxmldom, XMLDoc, StrUtils, IdSSLOpenSSL, Dialogs, IdPOP3, idglobal, IdCoderHeader;

type
  TGetEmailThread = class(TThread)
  IdDecoderMIME1: TIdDecoderMIME;
  procedure SaveAttachments(IdMsgRecive:TIdMessage; var XSendOrganization, XSendDepartment,
    XSendPosition, XSendName, XReceivOrganization, XReceivDepartment, XReceivPosition,
    XReceivName, XBody:String);

  private
    { Private declarations }
    name : String;

    locSSLVersion : TIdSSLVersion;
    strUserName, strPassword, strReciveHost, strSSLVersion : String;
    intPort : integer;
    blnHasSSL : Boolean;
    IO: TIdSSLIOHandlerSocket ;
    IdPOP3: TIdPOP3;
    IdMsgRecive: TIdMessage ;

    Procedure Initialize;
    Procedure myCheckMail;
    function myMailCount:integer;
    procedure IdMsgReciveInitializeISO(var VTransferHeader: TTransfer; var VHeaderEncoding: Char; var VCharSet: String);
    Function HaveEmail(aDate:TDateTime):Boolean;
    procedure Insert_Data(IdMsgRecive:TIdMessage);
    Procedure SaveFileToLetterData(aTempFilName, Desc:String);
    function getEXT(contentTyp : string): string;
    function getExtention(str:String):String;
  protected
    procedure Execute; override;

  public
    constructor Create(pname: String);
    destructor Destroy; override;
  end;

implementation

uses DMu, EmailsDM, businessLayer, YShamsiDate;

constructor TGetEmailThread.Create(pname: String);
begin
  inherited Create(True);
  FreeOnTerminate := True;
  name := pname;
  idDecoderMIME1 := TIdDecoderMIME.Create(nil);
end;

destructor TGetEmailThread.Destroy;
begin
  inherited;
end;

procedure TGetEmailThread.Execute;
Var
  intMsgCount   :integer;
begin
  try
    with DMEmails do
    begin
      strUserName := EmailAddressesUserName.AsString;
      strPassword := EmailAddressesPassword.AsString;
      blnHasSSL := UpperCase(EmailAddressesSSLOption.AsString) <> 'NONE';

      if Trim(EmailAddressesSSLOption.AsString) = 'SSLv2' then
        locSSLVersion:=sslvSSLv2;
      if Trim(EmailAddressesSSLOption.AsString) = 'SSLv23' then
        locSSLVersion:=sslvSSLv23;
      if Trim(EmailAddressesSSLOption.AsString) = 'SSLv3' then
        locSSLVersion:=sslvSSLv3;
      if Trim(EmailAddressesSSLOption.AsString) = 'TLSv1' then
        locSSLVersion:=sslvTLSv1;

      strReciveHost := EmailAddressesRecievehost.AsString;
      intPort := EmailAddressesRecivePort.AsInteger;
      intMsgCount := myMailCount;
    end;

    if intMsgCount = 0 then
      Exit;

    myCheckMail;

  except on E : Exception do
    //ShowMessage('Error Thread : '+E.Message);
  end;

end;

procedure TGetEmailThread.Initialize;
begin
  IdPOP3 := TIdPOP3.Create(Application);
  IO := TIdSSLIOHandlerSocket.Create(nil);
  IO.SSLOptions.Method := locSSLVersion;
  IO.SSLOptions.Mode := sslmUnassigned;
  IO.SSLOptions.VerifyMode := [];
  IO.SSLOptions.VerifyDepth := 0;
  with IdPOP3 do
  begin
    MaxLineAction := maException;
    ReadTimeout := 0;
    Username :=  strUserName;
    Password := strPassword;
    if blnHasSSL then
      IOHandler := IO;
    Host := strReciveHost;
    Port := intPort;
    Connect(1000000000);
  end;
end;

function TGetEmailThread.myMailCount: integer;
begin
  Initialize;
  Result :=  IdPOP3.CheckMessages;
  IdPOP3.Disconnect;
end;

procedure TGetEmailThread.IdMsgReciveInitializeISO(
  var VTransferHeader: TTransfer; var VHeaderEncoding: Char;
  var VCharSet: String);
begin
  VTransferHeader := bit8;    { header part conversion type }
  VHeaderEncoding := 'B';     { base64 / quoted-printable }    {Do not Localize}
  VCharSet:='UTF-8';
end;

function TGetEmailThread.HaveEmail(aDate: TDateTime): Boolean;
Var
   EmailNuFromDate :String;
   startDate : string;
   d : TDateTime;
begin
  EmailNuFromDate := IntToStr(DateTimeToUnix(aDate));
  if Trim(EmailNuFromDate) <> '' then
  begin
    EmailNuFromDate := Qry_GetResult('Select EmailNuFromDate from Letter Where EmailNuFromDate = '+ QuotedStr(EmailNuFromDate),dm.YeganehConnection);
    if EmailNuFromDate <> '' then
      Result := True
    else
      Result := False;
  end
  else
    Result := False;

  startDate := GetUserSetting('emailStartDate');

  if (not Result) and (startDate <> '') then
  begin
    try
      d := MiladiDateTime(startDate);
    except
      exit;
    end;

    if d > aDate then
      Result := true;
  end;
end;

procedure TGetEmailThread.Insert_Data(IdMsgRecive: TIdMessage);
var
   FromOrgID , ToOrgID :integer;
   SendAdd,ReciveAdd, XSendOrganization, XSendDepartment, XSendPosition, XSendName,
   XReceivOrganization, XReceivDepartment, XReceivPosition, XReceivName,XBody:String ;
begin
   With Dm do
   begin
      QrLetter.Insert;
      QrLetterRegistrationDate.Value := _Today;
      QrLetterRegistrationTime.Value := Exec_get_NowTime;
      QrLetterClassificationID.Value := DefaultRClassificationID; //‰Ê⁄ ÿ»ﬁÂ »‰œÌ = ⁄«œÌ
      QrLetterUrgencyID.Value        := DefaultRUrgencyID;
      QrLetterNumberOfPage.Value     := DefaultRNumberOfPage ;
      QrLetterReceiveTypeID.Value    := DefaultRReceiveTypeID;
      QrLetterIncommingDate.Value    := QrLetterRegistrationDate.AsString;
      QrLetterFromOrgID.AsInteger    := DefaultRFromOrgId;
      QrLetterMYear.AsInteger        := CurrentMYear;
      QrLetterSecretariatid.AsInteger:= DMEmails.EmailAddressesReciverSecID.AsInteger;
      QrLetterUserid.AsInteger       := _userid;
      QrLetterLetter_Type.AsInteger  := 1;
      QrLetterletterformat.AsInteger := 2;
      QrLetterReceiveTypeID.AsInteger:= 7;
      QrLetterIndicatorID.Value      := Exec_get_LastIndicatorID(1,2,CurrentmYear,DMEmails.EmailAddressesReciverSecID.AsInteger);
      QrLetterEmailNuFromDate.AsString := IntToStr(DateTimeToUnix(IdMsgRecive.Date));
      QrLetterEmailFromDateTime.AsString := ShamsiString(IdMsgRecive.Date) + '-' + FormatDateTime('HH:mm:ss', IdMsgRecive.Date);
      QrLetterIncommingNO.AsString := 'Email_'+ Trim(QrLetterEmailNuFromDate.AsString);
      QrLetterLastUpdate.Value := Now;
      QrLetterEmailFrom.AsString := DecodeEmailHeaderItem(UTF8Decode(IdMsgRecive.From.Text));
      QrLetterEmailSubject.AsString := DecodeEmailHeaderItem(UTF8Decode(IdMsgRecive.Subject));

      //Ì«› ‰ ç«—  ”«“„«‰Ì «“ —ÊÌ ¬œ—” «Ì„Ì·
      ReciveAdd := Email_GetAddress(IdMsgRecive.Recipients.EMailAddresses);
      FromOrgID := StrToIntDef(Qry_GetResult('Select top 1 ID from FromOrganizations Where '+QuotedStr(ReciveAdd)+' like ''%''+Email+''%''',dm.YeganehConnection) ,0);
      if FromOrgID > 0 then
        QrLetterFromOrgID.AsInteger := FromOrgID;

      QrLetterMemo.AsString := '«Ì„Ì· :   '  + #13#10 +
//                                '  «—ÌŒ Ê ”«⁄  : ' + FormatDateTime('HH:mm:ss', IdMsgRecive.Date) + ' ' + ShamsiString(IdMsgRecive.Date) + #13#10 +
                                ' ›—” ‰œÂ : ' + DecodeEmailHeaderItem(UTF8Decode(IdMsgRecive.From.Text)) + #13#10 +
                               '  êÌ—‰œÂ:  ' + DecodeEmailHeaderItem(UTF8Decode(IdMsgRecive.Recipients.EMailAddresses))+ #13#10 +
                               '  „Ê÷Ê⁄:  '  + DecodeEmailHeaderItem(UTF8Decode(IdMsgRecive.Subject))+ #13#10+
                               '   „ ‰   :  '+ UTF8Decode(IdMsgRecive.Body.Text);
     // QrLetter.Post;
      try
        QrLetter.Post;
      except
      end;
      Application.ProcessMessages;
      MakeRecommite(2,1,QrLetterLetterID.AsInteger,DMEmails.EmailAddressesReciverOrgID.AsInteger);

      SaveAttachments(IdMsgRecive,XSendOrganization, XSendDepartment, XSendPosition, XSendName,
                                 XReceivOrganization, XReceivDepartment, XReceivPosition, XReceivName,XBody);
      //›—” ‰œÂ

      ToOrgID := dm.NewToOrganization(XSendOrganization, XSendOrganization);
      // if ToOrgID > 0 then

      if XBody <> '' then
        dm.YeganehConnection.Execute('UPDATE LETTER SET MEMO= N''' + XBody + ''' ,ToOrgID=' + vartostr(ToOrgID) + ' ,ToStaffer= ' + QuotedStr(XSendName) + ' WHERE LetterID=' + QrLetterLetterID.AsString);
   end;
end;

procedure TGetEmailThread.myCheckMail;
var
  i, MsgCount : integer;
  Isduplicate : boolean;
begin
  try
    With dm do
    begin
      QrLetter.Close;
      QrLetter.Parameters.ParamByName('LetterID').Value := 0;
      QrLetter.Open;
    end;

    Isduplicate := False;
    Initialize;
    MsgCount := IdPOP3.CheckMessages;

    if MsgCount = 0 then
      exit;

    IdMsgRecive := TIdMessage.Create(Application);

    with IdMsgRecive do
    begin
      AttachmentEncoding := 'MIME';
      Encoding := meMIME;
      Charset := 'utf-8';
      ContentType := 'text/html; CharSet=UTF-8';
      ContentTransferEncoding := '8bit';
      IdMsgRecive.OnInitializeISO := IdMsgReciveInitializeISO;
    end;

    for I := 1 to MsgCount do
    begin
      try
        IdMsgRecive.Clear;
        IdMsgRecive.ClearBody;

        try
          IdPOP3.RetrieveHeader(I, IdMsgRecive);
        except
          IdPOP3.DisconnectSocket;
          IdPOP3.Disconnect;
          IDPOP3.Connect();
          Continue;
        end;

        IsDuplicate := HaveEmail(IdMsgRecive.Date);

        if Isduplicate then
          Continue;
        try
          IdPOP3.Retrieve(i,IdMsgRecive);
        except
          IdPOP3.DisconnectSocket;
          IdPOP3.Disconnect;
          IDPOP3.Connect();
          Continue;
        end;

        Insert_Data(IdMsgRecive);
      finally
        //IdPOP3.Delete(I);
      end;
    end;
  finally
    IdPOP3.Disconnect;
  end;

end;

procedure TGetEmailThread.SaveFileToLetterData(aTempFilName, Desc: String);
Var
   FileExt:String;
   ExtID :Integer;
begin
   With dm,Get_LetterWordFile do
   begin
      Close;
      Parameters.ParamByName('@LetterID').Value := QrLetterLetterID.AsInteger;
      Open;
      Insert;

      Get_LetterWordFileLetterID.AsInteger := QrLetterLetterID.AsInteger;

      Get_LetterWordFileImage.LoadFromFile(aTempFilName);

      //Å”Ê‰œ ›«Ì·
      FileExt := File_GetFileExt(aTempFilName);
      //Hamed_Ansari_990509_S
      FileExt := Copy(FileExt,0,4);
      if StrScan(PChar(FileExt), ';') <> nil then
       FileExt := Copy(FileExt,0,3);
      //Hamed_Ansari_990509_S
      if UpperCase(FileExt)='DOC' then
         ExtID := StrToIntDef( Qry_GetResult('Select ExtentionID from Extention Where issystem=0 and Extention = '+QuotedStr(FileExt),dm.YeganehConnection) ,0)
      else
         ExtID := StrToIntDef( Qry_GetResult('Select ExtentionID from Extention Where Extention = '+QuotedStr(FileExt),dm.YeganehConnection) ,0);

      if ExtID > 0 then
         Get_LetterWordFileExtention.AsInteger := ExtID //3 From extention table ›«Ì· Ê—œ
      else

    if ExtID = 0 then  //«ê— Å”Ê‰œ ÊÃÊœ ‰œ«‘  ¬‰ê«Â
      with dm,Extention do
         begin
          Close;
          Open;
          Insert;
          ExtentionExtentionTitle.AsString := FileExt;
          ExtentionExtention.AsString := FileExt;
          ExtentionIsSystem.AsBoolean := False;
          Post;
          Get_LetterWordFileExtention.AsInteger := dm.ExtentionExtentionID.AsInteger;
          Close;
         End;
      Get_LetterWordFileDescription.AsString  :=  Desc;
      Get_LetterWordFilePageNumber.AsInteger  :=  Exec_get_MaxPage_ByLetterID(Get_LetterWordFileExtention.AsInteger, QrLetterLetterID.AsInteger);
      Get_LetterWordFileLastUpdate.AsDateTime := Now;
      Post;
      Close;
   end;
end;


procedure TGetEmailThread.SaveAttachments(IdMsgRecive: TIdMessage;
  var XSendOrganization, XSendDepartment, XSendPosition, XSendName,
  XReceivOrganization, XReceivDepartment, XReceivPosition, XReceivName,
  XBody: String);
var
   i, p, j, k: integer;
   Attach_FileName ,EmailNuFromDate, tmpFileName,
   TempFileNamePath, contentType, extention,  tmpStr:String;
   XMLDoc: IXMLDocument;
   LetterChilds, FileChilds: IXMLNode;
   fs : TFileStream;
   IncommingNO , Incommingdate: string ;
   ToOrgID : integer;
   strFileName, strUniCode, strDecodeType : String;
//      IDoc: IXMLDocument;
begin

  EmailNuFromDate := IntToStr(DateTimeToUnix(IdMsgRecive.Date));
  for I := 0 to Pred(IdMsgRecive.MessageParts.Count) do
  begin
    //–ŒÌ—Â „ ‰ «Ì„Ì·
    if (IdMsgRecive.MessageParts.Items[I] is TIdText) then
    begin
      if UpperCase(LeftStr(TIdText(IdMsgRecive.MessageParts.Items[i]).ContentType,10)) = UpperCase('Text/Plain') then //Text/Plain  ,   'text/html'
      begin
        if length(trim(TIdText(IdMsgRecive.MessageParts.Items[i]).Body.Text))>1 then
        begin
          TempFileNamePath := _TempPath + EmailNuFromDate + '.txt';
          TIdText(IdMsgRecive.MessageParts.Items[i]).Body.SaveToFile(TempFileNamePath); //–ŒÌ—Â œ— Ê—œ
          SaveFileToLetterData(TempFileNamePath,'„ ‰ ‰«„Â');//LetterData –ŒÌ—Â „ ‰ «Ì„Ì· œ— ÃœÊ·
        end;
      end;
      {else  if length(trim(TIdText(IdMsgRecive.MessageParts.Items[i]).Body.Text))>1 then
       begin
         TempFileNamePath := _TempPath + EmailNuFromDate + '.htm';
         TIdText(IdMsgRecive.MessageParts.Items[i]).Body.SaveToFile(TempFileNamePath); //–ŒÌ—Â œ— Ê—œ
         SaveFileToLetterData(TempFileNamePath);//LetterData –ŒÌ—Â „ ‰ «Ì„Ì· œ— ÃœÊ·
      end  } //commented by Hadi Mohamed 920709
    end;

    //Attach File –ŒÌ—Â ›«Ì· «·’«ﬁÌ Ì«
    if (IdMsgRecive.MessageParts.Items[I] is TIdAttachment) then
    begin
    // ShowMessage(TIdAttachment(IdMsgRecive.MessageParts.Items[I]).FileName);
      if Trim(TIdAttachment(IdMsgRecive.MessageParts.Items[I]).FileName) <> '' then
      begin
        if copy(TIdAttachment(IdMsgRecive.MessageParts.Items[I]).FileName, 0, 2) = '=?' then
        begin
          strFileName   := TIdAttachment(IdMsgRecive.MessageParts.Items[I]).FileName;
          strFileName   := copy(strFileName, 3, length(strFileName));
          strUniCode    := copy(strFileName, 1, pos('?', strFileName) - 1);
          strFileName   := copy(strFileName, pos('?', strFileName) + 1, length(strFileName));
          strDecodeType := copy(strFileName, 1, pos('?', strFileName) - 1);
          strFileName   := copy(strFileName, pos('?', strFileName) + 1, length(strFileName));
          strFileName   := copy(strFileName, 1, length(strFileName) - 2);

          if (UpperCase(strUniCode) = 'UTF-8' ) then
          begin
            if (UpperCase(strDecodeType) = 'B' ) then
            begin
              strFileName := UTF8Decode(TIdDecoderMIME.DecodeString(strFileName));
              Attach_FileName :=  EmailNuFromDate + ExtractFileExt(strFileName);
            end
            else
            begin //Q
              strFileName := UTF8Decode(DecodeQuotedPrintable(strFileName));
              Attach_FileName :=  EmailNuFromDate + ExtractFileExt(strFileName);
            end
          end
          else
          begin
            p := pos(';',TIdAttachment(IdMsgRecive.MessageParts.Items[I]).ContentType);
            contentType := copy(TIdAttachment(IdMsgRecive.MessageParts.Items[I]).ContentType, 0, p-1);
            Attach_FileName :=  EmailNuFromDate + getEXT(contentType);
          end;
        end
        else
        begin
          //Attach_FileName :=  EmailNuFromDate + ExtractFileExt(TIdAttachment(IdMsgRecive.MessageParts.Items[I]).FileName);
          Attach_FileName :=  EmailNuFromDate + getExtention(TIdAttachment(IdMsgRecive.MessageParts.Items[I]).FileName);
        end;
      end;
      //Hamed_Ansari_990509_S
      Attach_FileName := StringReplace(Attach_FileName,'; filename*2*=','',[rfReplaceAll]);
      //Hamed_Ansari_990509_E
      if FileExists(_TempPath+Attach_FileName) and Not(File_IsInUse(_TempPath+Attach_FileName)) then
        DeleteFile(_TempPath+Attach_FileName);

      TIdAttachment(IdMsgRecive.MessageParts.Items[I]).SaveToFile(_TempPath+Attach_FileName);
      if UpperCase(ExtractFileExt(Attach_FileName))='.XML' then
      begin
        XMLDoc := LoadXMLDocument(_TempPath+Attach_FileName);
        //XMLDoc := IDoc.DocumentElement;
      //PARSE_ECE
//        XMLDoc := TXMLDocument.Create(Application);
//        XMLDoc.LoadFromFile(_TempPath+Attach_FileName);
        XMLDoc.Active := true;
        for j := 0 to XMLDoc.ChildNodes.Nodes['Letter'].ChildNodes.Count - 1 do
        begin
          LetterChilds := XMLDoc.ChildNodes.Nodes['Letter'].ChildNodes[j];
          if LetterChilds.NodeName = 'Sender' then
          begin
            XsendOrganization:=LetterChilds.AttributeNodes['Organization'].Text ;
            XsendDepartment:=LetterChilds.AttributeNodes['Department'].Text;
            XsendPosition:=LetterChilds.AttributeNodes['Position'].Text ;
            XsendName:=LetterChilds.AttributeNodes['Name'].Text;
          end;
          if LetterChilds.NodeName = 'Receiver' then
          begin
            XReceivOrganization:=LetterChilds.AttributeNodes['Organization'].Text ;
            XReceivDepartment:=LetterChilds.AttributeNodes['Department'].Text;
            XReceivPosition:=LetterChilds.AttributeNodes['Position'].Text ;
            XReceivName:=LetterChilds.AttributeNodes['Name'].Text;
          end;
          if LetterChilds.NodeName = 'LetterNo' then
          begin
            IncommingNO :=  LetterChilds.Text;
          end;
          if LetterChilds.NodeName = 'LetterDateTime' then
          begin
            tmpStr := LetterChilds.Text;
            tmpStr := StringReplace(tmpStr,'-','/',[rfReplaceAll]);
            if copy(tmpStr,1,2)>'19' then
              Incommingdate := ShamsiMString(copy(tmpStr,1,10))
            else
              Incommingdate := copy(tmpStr,1,10);
          end;
          if LetterChilds.NodeName = 'Subject' then
          begin
            Xbody :=  LetterChilds.Text;
          end;
          /////  Origins  &  Attachments
          dm.YeganehConnection.Execute('UPDATE LETTER SET IncommingNO= N'''+IncommingNO+''' ,Incommingdate = N'''+Incommingdate+'''  WHERE LetterID='+dm.QrLetterLetterID.AsString);
          if toorgID > 0 then
            dm.YeganehConnection.Execute('UPDATE LETTER SET toOrgId= N'''+IntToStr(ToOrgID)+''' WHERE LetterID='+dm.QrLetterLetterID.AsString);

          if (LetterChilds.NodeName = 'Origins') or (LetterChilds.NodeName = 'Attachments') then
          begin
            for k := 0 to LetterChilds.ChildNodes.Count - 1 do
            begin
              FileChilds := LetterChilds.ChildNodes[k];
              tmpFileName := _TempPath+EmailNuFromDate+IntToStr(k)+'.'+FileChilds.AttributeNodes['Extension'].Text;
              fs := TFileStream.Create(tmpFileName,fmCreate);
              idDecoderMIME1.DecodeToStream(FileChilds.Text,fs);
              fs.WriteBuffer(fs,fs.InstanceSize);
              fs.Destroy;
              SaveFileToLetterData(tmpFileName , FileChilds.AttributeNodes['Description'].Text);
              DeleteFile(tmpFileName);
            end;
          end;

        end;

        DeleteFile(_TempPath+Attach_FileName);
      end
      else
      begin
        //SaveFileToLetterData(_TempPath+Attach_FileName , DecodeEmailHeaderItem(TIdAttachment(IdMsgRecive.MessageParts.Items[I]).FileName));
        //Ataie 990910
        SaveFileToLetterData(_TempPath+Attach_FileName , strFileName);
        DeleteFile(_TempPath+Attach_FileName);
      end;
    end;
  end;

  if FileExists(TempFileNamePath) then
    DeleteFile(TempFileNamePath);
end;

function TGetEmailThread.getEXT(contentTyp: string): string;
var
   i: integer;
   line, contentType, extention : string;
begin
   extention := '.Unknown';
{   for i:=0 to Memo1.Lines.Count -1 do
   begin
      line := Memo1.Lines.Strings[i];
      contentType := copy(line,0,pos(';',line)-1);
      if UpperCase(contentType) = UpperCase(contentTyp) then
      begin
         extention := copy(line, length(contentTyp)+2, length(line)-length(contentTyp)-2);
         break;
      end;
   end;
 }  Result := extention;
end;



function TGetEmailThread.getExtention(str: String): String;
const
  ALPHA_CHARS = ['a'..'z', 'A'..'Z'];
var
  i : Integer;
  res, resValid: String;
begin
  resValid := '';
  res := '';

  for i := 1 to Length(str) do
  begin
    if str[i] = '.' then
      res := '.'
    else
      if Length(res) > 0 then
      begin
        if str[i] in ALPHA_CHARS then
          res := res + str[i]
        else
        begin
          resValid := res;
          res := '';
        end;
      end;
  end;

  if Length(res) > 0 then
    resValid := res;

  Result := resValid;
end;

end.
