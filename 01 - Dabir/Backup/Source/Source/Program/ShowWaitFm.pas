unit ShowWaitFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, BaseUnit, xpWindow, ExtActns,
  ActnList, DB, IdMessage, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdMessageClient, IdPOP3,DateUtils,StrUtils, Menus,
  YeganehCheckMail, ADODB, Buttons,IdSSLOpenSSL, IdCoder, IdCoder3to4,
  IdCoderMIME, xmldom, XMLIntf, msxmldom, XMLDoc, AppEvnts;

type
  TFmGetEmails = class(TMBaseForm)
    YeganehCheckMail: TYeganehCheckMail;
    Memo1: TMemo;
    IdDecoderMIME1: TIdDecoderMIME;
    procedure ConvertAllEmailsToLetter;
    procedure YeganehCheckMailDownloadEmail(MailMsg: TIdMessage);
    procedure YeganehCheckMailBeforeDownload(MessageNumber: Integer);
    procedure SaveAttachments(IdMsgRecive:TIdMessage ;
    var  XSendOrganization, XSendDepartment, XSendPosition, XSendName,
         XReceivOrganization, XReceivDepartment, XReceivPosition, XReceivName
    ,XBody:String  );
    procedure YeganehCheckMailDownloadHeader(MailMsg: TIdMessage;
      var IsDuplicate: Boolean);
  private
    Procedure SaveFileToLetterData(aTempFilName, Desc:String);
    procedure Insert_Data(IdMsgRecive:TIdMessage);
    Function HaveEmail(aDate:TDateTime):Boolean;
    function getEXT(contentTyp : string): string;
    function getExtention(str:String):String;
  public
    Procedure ConvertEmailToLetter;
  end;

var
  FmGetEmails: TFmGetEmails;

implementation

Uses DMu,YShamsiDate, EmailUserPassFm,businessLayer, EmailsDM, UMain,
  WaitPleaseFM, ADOInt;

{$R *.dfm}

Procedure TFmGetEmails.ConvertEmailToLetter;
Var
 MsgCount   :integer;
begin
   inherited;
   with DMEmails,YeganehCheckMail do
    begin
       UserName := EmailAddressesUserName.AsString;
       Password := EmailAddressesPassword.AsString;
       HasSSL := UpperCase(EmailAddressesSSLOption.AsString)<>'NONE';
        if Trim(EmailAddressesSSLOption.AsString)='SSLv2' then
           SSLVersion:=sslvSSLv2;
        if Trim(EmailAddressesSSLOption.AsString)='SSLv23' then
           SSLVersion:=sslvSSLv23;
        if Trim(EmailAddressesSSLOption.AsString)='SSLv3' then
           SSLVersion:=sslvSSLv3;
        if Trim(EmailAddressesSSLOption.AsString)='TLSv1' then
           SSLVersion:=sslvTLSv1;

      // YeganehCheckMail.
       ReciveHost := EmailAddressesRecievehost.AsString;
       Port := EmailAddressesRecivePort.AsInteger;
       MsgCount := MailCount;
     end;

     if MsgCount = 0 then
        Exit;

     FMWaitPlease.Caption:='Download Emails from '+DMEmails.EmailAddressesEmailAddress.AsString;
     FMWaitPlease.LableTo.Caption:=IntToStr(MsgCount);
     FMWaitPlease.LableFrom.Caption:=IntToStr(MsgCount);
     FMWaitPlease.ProgressBar1.Max:=MsgCount+1;
     FMWaitPlease.refresh;
     sleep(1000);
     YeganehCheckMail.CheckMail;
   //  FMWaitPlease.close;

end;


//�� �� ����� ���� �����
Procedure TFmGetEmails.SaveFileToLetterData(aTempFilName, Desc:String);
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

      //����� ����
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
         Get_LetterWordFileExtention.AsInteger := ExtID //3 From extention table ���� ���
      else

    if ExtID = 0 then  //ǐ� ����� ���� ����� ����
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


procedure TFmGetEmails.Insert_Data(IdMsgRecive:TIdMessage);
var
   FromOrgID , ToOrgID :integer;
   ReciveAdd, XSendOrganization, XSendDepartment, XSendPosition, XSendName,
   XReceivOrganization, XReceivDepartment, XReceivPosition, XReceivName,XBody:String ;
begin

   With Dm do
   begin
      QrLetter.Insert;
      QrLetterRegistrationDate.Value := _Today;
      QrLetterRegistrationTime.Value := Exec_get_NowTime;
      QrLetterClassificationID.Value := DefaultRClassificationID; //��� ���� ���� = ����
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

      //����� ���� ������� �� ��� ���� �����
      ReciveAdd := Email_GetAddress(IdMsgRecive.Recipients.EMailAddresses);
      FromOrgID := StrToIntDef(Qry_GetResult('Select top 1 ID from FromOrganizations Where '+QuotedStr(ReciveAdd)+' like ''%''+Email+''%''',dm.YeganehConnection) ,0);
      if FromOrgID > 0 then
        QrLetterFromOrgID.AsInteger := FromOrgID;

      QrLetterMemo.AsString := '����� :   '  + #13#10 +
//                                ' ����� � ���� : ' + FormatDateTime('HH:mm:ss', IdMsgRecive.Date) + ' ' + ShamsiString(IdMsgRecive.Date) + #13#10 +
                                ' ������� : ' + DecodeEmailHeaderItem(UTF8Decode(IdMsgRecive.From.Text)) + #13#10 +
                               '  ������:  ' + DecodeEmailHeaderItem(UTF8Decode(IdMsgRecive.Recipients.EMailAddresses))+ #13#10 +
                               '  �����:  '  + DecodeEmailHeaderItem(UTF8Decode(IdMsgRecive.Subject))+ #13#10+
                               '   ���   :  '+ UTF8Decode(IdMsgRecive.Body.Text);
     // QrLetter.Post;
      try
        QrLetter.Post;
      except on e:exception do
        ShowMessage(e.Message)
      end;
      Application.ProcessMessages;
      MakeRecommite(2,1,QrLetterLetterID.AsInteger,DMEmails.EmailAddressesReciverOrgID.AsInteger);

      SaveAttachments(IdMsgRecive,XSendOrganization, XSendDepartment, XSendPosition, XSendName,
                                 XReceivOrganization, XReceivDepartment, XReceivPosition, XReceivName,XBody);
      //�������

      ToOrgID := dm.NewToOrganization(XSendOrganization, XSendOrganization);
      // if ToOrgID > 0 then

      if XBody <> '' then
        dm.YeganehConnection.Execute('UPDATE LETTER SET MEMO= N''' + XBody + ''' ,ToOrgID=' + vartostr(ToOrgID) + ' ,ToStaffer= ' + QuotedStr(XSendName) + ' WHERE LetterID=' + QrLetterLetterID.AsString);
   end;

end;


Function TFmGetEmails.HaveEmail(aDate:TDateTime):Boolean;
Var
   EmailNuFromDate :String;
   startDate : string;
   d : TDateTime;
begin
  EmailNuFromDate := IntToStr(DateTimeToUnix(aDate));

  if Trim(EmailNuFromDate) <> '' then
  begin
    EmailNuFromDate := Qry_GetResult('Select EmailNuFromDate from Letter Where EmailNuFromDate = '+ QuotedStr(EmailNuFromDate),dm.YeganehConnection);
    if EmailNuFromDate = '' then
      EmailNuFromDate := Qry_GetResult('Select EmailNuFromDate from DeletedLetters Where EmailNuFromDate = '+ QuotedStr(EmailNuFromDate),dm.YeganehConnection);

    if EmailNuFromDate <> '' then
      Result := True
    else
      Result := False;
  end
  else
    Result := False;

  startDate := GetUserSetting('emailStartDate');
  if (not Result)and(startDate<>'') then
  begin
    try
      d := MiladiDateTime(startDate);
  except on e:exception do
    begin
      //ShowMessage('Yeganeh Error 14 :' + e.Message);
      Exit;
    end;
  end;

    if d>aDate then
      Result := true;
  end;
end;

procedure TFmGetEmails.ConvertAllEmailsToLetter;
begin
   inherited;
   With dm do
   begin
      QrLetter.Close;
      QrLetter.Parameters.ParamByName('LetterID').Value := 0;
      QrLetter.Open;
   end;

   FMWaitPlease := TFMWaitPlease.Create(Application);
   FMWaitPlease.Show;

   With DMEmails,EmailAddresses DO
   begin
      open;
      First;
      while not eof do
      begin
         if EmailAddressesIsActive.AsBoolean then
            try
               ConvertEmailToLetter;
            except on e:exception do
              //ShowMessage('Yeganeh Error 1 :' + e.Message)
            end;
         Next;
      end;
   end;
   FMWaitPlease.Close;

end;

procedure TFmGetEmails.YeganehCheckMailDownloadEmail(MailMsg: TIdMessage);
begin
  inherited;
  Insert_Data(MailMsg);
end;

procedure TFmGetEmails.YeganehCheckMailBeforeDownload(
  MessageNumber: Integer);
begin
  inherited;
try

  if FMWaitPlease.Focused then
  begin
    Application.ProcessMessages;

    FMWaitPlease.LableFrom.Caption:=IntToStr(MessageNumber);
    FMWaitPlease.ProgressBar1.Position:=MessageNumber;
  end;
  except on e:exception do
    //ShowMessage('Yeganeh Error 3 :' + e.Message)
  end;

end;

procedure TFmGetEmails.YeganehCheckMailDownloadHeader(MailMsg: TIdMessage;
  var IsDuplicate: Boolean);
begin
  inherited;
  IsDuplicate:=HaveEmail(MailMsg.Date);
end;

procedure TFmGetEmails.SaveAttachments(IdMsgRecive: TIdMessage;
  var XSendOrganization, XSendDepartment, XSendPosition, XSendName,
      XReceivOrganization, XReceivDepartment, XReceivPosition, XReceivName
      , XBody: String);

var
   i, p, j, k: integer;
   Attach_FileName ,EmailNuFromDate, tmpFileName,
   TempFileNamePath, contentType, tmpStr:String;
   XMLDoc: IXMLDocument;
   LetterChilds, FileChilds: IXMLNode;
   fs : TFileStream;
   IncommingNO , Incommingdate: string ;
   ToOrgID : integer;
   strFileName, strUniCode, strDecodeType : String;
   aStr : String;
begin
  EmailNuFromDate := IntToStr(DateTimeToUnix(IdMsgRecive.Date));
  for I := 0 to Pred(IdMsgRecive.MessageParts.Count) do
  begin
    //����� ��� �����
    if (IdMsgRecive.MessageParts.Items[I] is TIdText) then
    begin

      if UpperCase(LeftStr(TIdText(IdMsgRecive.MessageParts.Items[i]).ContentType,10)) = UpperCase('Text/Plain') then //Text/Plain  ,   'text/html'
      begin
        if length(trim(TIdText(IdMsgRecive.MessageParts.Items[i]).Body.Text))>1 then
        begin
          TempFileNamePath := _TempPath + EmailNuFromDate + '.txt';
          TIdText(IdMsgRecive.MessageParts.Items[i]).Body.SaveToFile(TempFileNamePath); //����� �� ���
          SaveFileToLetterData(TempFileNamePath,'��� ����');//LetterData ����� ��� ����� �� ����
        end;
      end;
      {else  if length(trim(TIdText(IdMsgRecive.MessageParts.Items[i]).Body.Text))>1 then
      begin
          TempFileNamePath := _TempPath + EmailNuFromDate + '.htm';
          TIdText(IdMsgRecive.MessageParts.Items[i]).Body.SaveToFile(TempFileNamePath); //����� �� ���
          SaveFileToLetterData(TempFileNamePath);//LetterData ����� ��� ����� �� ����
      end  } //commented by Hadi Mohamed 920709
    end;

    //Attach File ����� ���� ������ ��
    if (IdMsgRecive.MessageParts.Items[I] is TIdAttachment) then
    begin
      // ShowMessage(TIdAttachment(IdMsgRecive.MessageParts.Items[I]).FileName);
      if Trim(TIdAttachment(IdMsgRecive.MessageParts.Items[I]).FileName)<>'' then
      begin
        if copy(TIdAttachment(IdMsgRecive.MessageParts.Items[I]).FileName,0,2)='=?' then
        begin
          //strFileName := DecodeEmailHeaderItem(UTF8Decode(TIdAttachment(IdMsgRecive.MessageParts.Items[I]).FileName));

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
          //aStr := getExtention(TIdAttachment(IdMsgRecive.MessageParts.Items[I]).FileName);
          //ShowMessage(aStr);
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
        //PARSE_ECE
        XMLDoc := TXMLDocument.Create(self);
        XMLDoc.LoadFromFile(_TempPath+Attach_FileName);
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
          if toorgID>0 then
            dm.YeganehConnection.Execute('UPDATE LETTER SET toOrgId= N'''+IntToStr(ToOrgID)+''' WHERE LetterID='+dm.QrLetterLetterID.AsString);

          if (LetterChilds.NodeName = 'Origins') or (LetterChilds.NodeName = 'Attachments') then
          begin
            for k := 0 to LetterChilds.ChildNodes.Count - 1 do
            begin
              FileChilds := LetterChilds.ChildNodes[k];
              tmpFileName := _TempPath+EmailNuFromDate+IntToStr(k)+'.'+FileChilds.AttributeNodes['Extension'].Text;
              fs := TFileStream.Create(tmpFileName,fmCreate);

              ///////////////////
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

function TFmGetEmails.getEXT(contentTyp: string): string;
var
   i: integer;
   line, contentType, extention : string;
begin
   extention := '.Unknown';
   for i:=0 to Memo1.Lines.Count -1 do
   begin
      line := Memo1.Lines.Strings[i];
      contentType := copy(line,0,pos(';',line)-1);
      if UpperCase(contentType) = UpperCase(contentTyp) then
      begin
         extention := copy(line, length(contentTyp)+2, length(line)-length(contentTyp)-2);
         break;
      end;
   end;
   Result := extention;
end;

function TFmGetEmails.getExtention(str: String): String;
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
