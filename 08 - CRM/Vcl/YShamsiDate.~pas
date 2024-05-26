unit YShamsiDate;

interface

uses Forms,DateUtils,SysUtils,classes,Graphics,windows,dialogs ,
     {Ranjbar 87.10.30}
     Controls,Menus, frxClass, frxDBSet, ExtCtrls, DBCtrls ,
     DB, ADODB, CheckLst, YchecklistBox, StdCtrls, Buttons,StrUtils
     ,TlHelp32, ComCtrls , DBGrids,TINYLib_TLB , DBTreeView ,Registry,Shellapi,ZipForge,sdx ,
     IdMessage,IdGlobal,IdSSLOpenSSL, IdBaseComponent, IdComponent, IdTCPConnection,IdTCPClient,
     IdMessageClient, IdSMTP,winsock,Grids , YDbgrid,IniFiles
     ,ActiveX ,ShlObj {AXmsCtrl_TLB},ComObj,AdoInt,OleDB,Math;
     
{Ranjbar}
Type
   TReportType = (rtShow , rtPrint , rtDesign);
   THackDBNavigator = class(TDBNavigator);
   TDoZipType = (dtZip,dtUnZip);
   TdtField  = (dtBoolean,dtInteger,dtFloat,dtString);
   TServerBrowseDialogA0 = function(hwnd: HWND; pchBuffer: Pointer; cchBufSize: DWORD): bool;  stdcall;

Function ShamsiLeapYear(y: integer):byte;
function MDayPerMonth(y,m:integer):Byte;
function MiladiToInt(y,m,d:integer):integer;
function ShamsiToInt(m,d:integer):integer;
procedure MiladiIntToShamsiInt(my,mi:integer;var sy,si:integer);
procedure ShamsiIntToMiladiInt(sy,si:integer;var my,mi:integer);
procedure Shamsi(my,mm,md: integer;var sy,sm,sd:integer);
procedure Miladi(sy,sm,sd:integer;var my,mm,md:integer);
function sdayPermonth(y,m:integer):integer;
function ShamsiDeCodeDate(s:string;var y,m,d:integer):boolean;
function ShamsiEnCodeDate(y,m,d:integer):string;
function ShamsiString(date1:TdateTime):String;
function ShamsiMString(mdate:String):String;
function MiladiMString(mdate:String):String;
function MiladiDateTime(s:string):TDateTime;
function ShamsiIncDate(s:string;y,m,d:integer):string;
function ShamsidayInWeek(s:string):integer;
function ShamsidayInMonth(s:string):integer;
function ShamsiStartOfWeek(s:string):string;
function ShamsiStartOfMonth(s:string):string;
FUNCTION ShamsiDateToInt(Sdate :string) :integer;
FUNCTION ShamsiDateDiff(dateFrom ,dateTo:string ):integer;
//------------------------------------------------------------------------------
function IsValidDate(var s:string):boolean;
FUNCTION Application_Is_Run(appName:String):boolean;


procedure SetWords(s:string;delimeter:char;var  Items:TStrings);
function IsDate(today,s:string;var FromDate,ToDate:string):boolean;
Function Is_Integer(s:string):boolean;
function SetPass(S_In:string):string;
function Replace(s,old,new:widestring):widestring;
function Replace1(s : widestring;old,new:Char):widestring;
function GetAllWhereCluase(s,FieldName:String):string;
Function StrToFont(S:STring):TFont;
Function FontToStr(F:TFont):STring;
function YeganehTrim(s:string):string;
Function Bil(mm:String):String ;
Function Bill(n:int64):String ;
Function FloatBill(f:real):String ;
function CorrectFarsi(S:string):string;
function CheckFarsiDate(s:string):string;
function GetTempDirectory: String;
function GetWinDirectory: String;
Function DeleteComma(S:String):String;
function CommaSeperate(s:string):string; //860613m
Function ReplaceKaf(S:String):String;
function Locked(inStr: string; isLocked: Boolean): string;

{Ranjbar}
Function ShowMyMessage(Titile , Msg: String;
                       Const MsgDlgBtn: TMsgDlgButtons = mbYesNoCancel;
                       Const aMsgDlgType: TMsgDlgType = mtConfirmation): Integer;
Procedure Form_Animate(aForm:TWinControl;aAniTime:Integer=100);
Procedure DBNav_Setup(const Navigator: TDBNavigator);
Procedure Cursor_SetPos(aForm:TForm;Sender:TObject;aPopupMenu:TPopupMenu);

Procedure Rep_CorrectDesign(aFileName:String);
Procedure Rep_LoadFile(afrxReport:TfrxReport;aFileName:String);
Procedure Rep_Show(afrxReport:TfrxReport;ReportType:TReportType);

Function File_GetFilePath(aFileName:String):String;
Function File_GetFileName(aFileName:String):String;
Function File_GetFileExt(aFileName:String):String;
Function File_IniData(aFilePathName:String ; aSectionName,aIdent:String ; aValue:Variant ; aSetValue:Boolean):Variant;
procedure File_FindAndDelete(aFilePath,aFileName:String);
Function File_IsInUse(aFileName:String):Boolean; //Txt,Doc »Â —«”  »—«Ì ›«Ì·Â«Ì €Ì— «Ã—«ÌÌ «” ›«œÂ ‘Êœ „À·
Function File_ISRun(aExeFileName: string):Boolean;//›ﬁÿ »—«Ì ›«Ì·Â«Ì «Ã—«ÌÌ «” ›«œÂ ‘Êœ

Function Qry_GetResult(aQueryText:String;aADOConnection:TADOConnection):String;
Function Qry_AddWhere(MyQry:TAdoQuery ; MyAddWhereSt:string) : Boolean;
Function Qry_DeleteWhere(MyQry:TAdoQuery) : Boolean;
Procedure Qry_CloseAllQry(aDM:TDataModule);
Procedure Qry_IFFieldIsEmpty(aFieldName:TField;aFieldDisPlayLabel:String);
Function Qry_GetMaxNu(aAdoConnection:TAdoConnection;aTblName,aFldName:String):Integer;
procedure Qry_GetSQLServersFromNet(aNames : TStrings);

Function Time_GetTime(aAdoConnection:TADOConnection;HaveSecend:Boolean=False):String;
Function Time_IsTime(aTime:String):Boolean;

Procedure IFFieldIsEmpty(AFieldName:TField;aFieldDisPlayLabel:String);
Procedure ChLB_SelectItemsFromStr(aCheckListBox:TYchecklistBox ; aKeyFldVal:String;y:boolean);
Procedure ChLB_SelectItemsFromTable(var aCheckListBox:TYchecklistBox ; aQry:TADOQuery ; aIDFieldName:ShortString);

Procedure Keyboard_Farsi;
Procedure Keyboard_English;

Procedure Form_SetShortCut(AForm:TForm;ADBNavigator:TDBNavigator;SBSearch,SBReport:TSpeedButton;
                          Sender: TObject; var Key: Word ; Shift: TShiftState);
Function Email_IsCorrect(aEmail: String): Boolean;
Function IsDigit(Key : Char):Boolean;
procedure OpenURL(Url: string);

Procedure BidiModeToRight(aControl:TWinControl);
Procedure TypeNumber(Key:Char);
Function PageControl_SetTabSheet(aPageControl:TPageControl;aTabSheetName:String):Integer;
function Input_Value(const ACaption, APrompt: string; aDefaultValue: string): String;

Procedure Keyboard_Simulation(aControl:TWinControl ; aKeyboardKey:Byte ;
          aHasCtrlKey:Boolean=False; aHasAltKey:Boolean=False;aHasShiftKey:Boolean=False);
Function Keyboard_TypeWithDivider(aText:String ; var aKey: Char ):String;

Function Email_GetAddress(aText:String):String;


Procedure DBGrid_LoadColumns(aFormName:String ; aDBGrid: TDBGrid ; aDBGrid2: TDBGrid );
Procedure DBGrid_SaveColumns(aFormName:String ; aDBGrid: TYDBGrid);
procedure DBGrid_Columns_Caption(aDBGrid: TYDBGrid);
Procedure DBGrid_SelectNextCol(aDBGrid:TDBGrid;AppendORNext:Boolean=True;DBGFirstColIndex:Integer=0;Key:Word=Vk_Return;Shift:TShiftState=[]);
{Ranjbar}
procedure DBGrid_SetFocusAfterExit(aDBGrid:TYDBGrid;const aRect:TRect;aDataCol:Integer;aColumn:TColumn;aState:TGridDrawState ;
          aBrushColo:TColor = clHighlight;aFontColor:TColor = clHighlightText );

Procedure Scripts_Run(aADOConnection:TADOConnection ; aVariableId:integer;aServerName:String);

Function OCX_Register(aOCXFileName:String;aDestinationPath:String;OverWriteFile:Boolean):Boolean;
Function OCX_UnRegister(aOCXFileName:String):Boolean;

Function Win_GetSystemDir:String;
Function Win_GetAllDir(aHandle:Hwnd;aFolderName:Integer):String;

Function Lock_InSingle(aTiny:TTiny ; Var aSpecialID ,aCoName,aProductCode,aVertion,aCustSerial,aSerial2,aKit:String; Var aNetWork:Boolean ;
                      var CompanyName,ExpireDate :string; aServerIP:String='' ):Boolean;
function Lock_IsOk(aServerName,aToday:String ;  var aGetProductCode :integer ; Var aCompanyName:String):byte;
function NewDongleFound(Connection:TADOConnection;aServerName,aToday:String ; var aGetProductCode :integer ; Var aCompanyName:String ; NeedNetWork:boolean):byte;
Function CheckDongle(Connection:TADOConnection;aServerName,aToday:String ;  ExceptedProductCode :integer ; Var aCompanyName:String; ExceptedNetWork:boolean;var DongleProductCode:integer):byte;
Function DongleErrorMessage(Errorcode:byte):string;
Procedure SetLockDataToSettings(Connection:TADOConnection;aCompanyName,aProductCode:String);

Procedure TreeView_FindItem(aTreeView:TTreeView;aItemID:Integer);
Procedure DBTree_SetCheckState(aTreeView:TDBTreeView; aSelectedStateIndex,aUnSelectedStateIndex:Byte);

Function Date_CheckTwoDate(aDateFrom,aDateTo:String):Boolean;
function Date_DayName(aFarsiDate:String):String;
function Date_DayNumber(aFarsiDate:String):Integer;
function Date_ShToMi(aFarsiDate:String):TDateTime;
Function Qry_SetResult(aQueryText:String;aADOConnection:TADOConnection):Boolean;
Function File_ZipOrUnZip(aSourceOrDescFolderPath , aZipFileNameAndPath :String  ;
         aZipOrUnZip:TDoZipType ; aFileType:String = '*.*' ; aZipPassword:String = ''):Boolean;

Function OpenDongle:integer;
Function LoadDongleData(  Var  aCoName,aProductCode,aVertion,aCustSerial,aSerial2,aKit:String; Var aNetWork:Boolean ;var companyName,ExpireDate:string ):Boolean;
procedure ReadDongle(handle:integer;block_index:byte;var Data:string);
procedure WriteDongle(handle:integer;block_index : integer; Data  : string);

Function Email_Send(aUserName , aPassword,aSubject , aFromAddress , aRecipientAddress ,
         aSendHost:WideString;   aSendPort,aConTime:Integer ; aAttachFileNames,aEmailBody : TStrings;HasSSL:boolean;
         AuthenticationType:TAuthenticationType):Boolean;

procedure Date_GetText(Sender: TField;var Text: String; DisplayText: Boolean);
procedure Date_SetText(Sender: TField;Const Text: String);

Procedure DB_KillProcess(aDBName:String;aAdoConnection:TAdoConnection);

Function Txt_Del254(aText:String):String;
Function Txt_Count(aFindText,aText:String):Integer;

function GetIPFromHost(var HostName, IPaddr, WSAErr: string): Boolean;

Function Reg_SetValue(aKeyPath,aValueName:String;aValueData:Variant;
         aValueType:TdtField;aRootKey:HKey=HKEY_CURRENT_USER):Boolean;
Function Reg_GetValue(aKeyPath,aValueName:String;aValueType:TdtField;
         aRootKey:HKey=HKEY_CURRENT_USER):Variant;

Function Win_GetComputerNameFromNet(aHandle: THandle): String;
Function Win_GetComputerName: String;
Procedure Win_RunCalculate;

Function Three(number:int64):string;
Function AdadBeHorof(number:int64):string;

Function SendSMS(DeviceName,Recipient,PinCode,Data:string;var aMessages:String ):Boolean;

Function Srv_GetSrvCumputerName(aADOConnection:TADOConnection):String;


const Months: array[1..12] of string=('›—Ê—œÌ‰','«—œÌ»Â‘ ','Œ—œ«œ',' Ì—'
  ,'„—œ«œ','‘Â—ÌÊ—','„Â—','¬»«‰','¬–—','œÌ','»Â„‰','«”›‰œ');

  FarsiDay: array[0..6]of string=
('‘‰»Â','Ìò‘‰»Â','œÊ‘‰»Â','”Â ‘‰»Â','çÂ«—‘‰»Â','Å‰Ã ‘‰»Â','Ã„⁄Â');


implementation

uses u_c_process_list, businessLayer;

var g_c_process_list: c_process_list= Nil;




Function Email_Send(aUserName , aPassword,aSubject , aFromAddress , aRecipientAddress ,
         aSendHost:WideString;   aSendPort,aConTime:Integer ; aAttachFileNames,aEmailBody : TStrings;
         HasSSL:boolean;
         AuthenticationType:TAuthenticationType):Boolean;

Var
   IdSMTP : TIdSMTP;
   IO: TIdSSLIOHandlerSocket ;
   IdMsgSend : TIdMessage;
   i:byte;
begin

    Screen.Cursor := crHourGlass;
    IO:= TIdSSLIOHandlerSocket.Create(nil);
    IO.SSLOptions.Method := sslvSSLv2;
    IO.SSLOptions.Mode := sslmUnassigned;
    IO.SSLOptions.VerifyMode := []       ;
    IO.SSLOptions.VerifyDepth := 0        ;


         IdSMTP := TIdSMTP.Create(nil);
         IdMsgSend := TIdMessage.Create(nil);

         with IdMsgSend do
          begin



           IsEncoded:=true;
           From.Address := aFromAddress;
           Recipients.EMailAddresses := aRecipientAddress;
           Priority := mpHigh;
           SetBody(aEmailBody);
           CharSet:='utf-8';
           ContentType:='text/plain; CharSet=UTF-8';
           Encoding := meMIME;
           Subject :=  aSubject ;
          end;

         if aAttachFileNames.Count > 0 then
          for i:=0 to aAttachFileNames.Count-1 do
            if FileExists(aAttachFileNames[i]) then
               TIdAttachment.Create(IdMsgSend.MessageParts , TFilename(aAttachFileNames[i]));

         with IdSMTP do
          begin
           MaxLineAction := maException;
           Host := aSendHost ;
           Port := aSendPort;
           AuthenticationType := AuthenticationType;
           Username := aUsername;
           Password := aPassword;
           if HasSSL then
            IOHandler := IO ;
          end;



         Try
           if aConTime=0 then
            IdSMTP.Connect() else
            IdSMTP.Connect(aConTime);
           except
          On E:Exception do
            begin
              ShowMessage('«‘ò«· œ— «—”«· «Ì„Ì·'+e.Message);
          end;

         end;
         IdSMTP.Authenticate;
         IdSMTP.Send(IdMsgSend);
         Result := True;


      IdSMTP.Disconnect;
      Screen.Cursor := crDefault;
 //  End;
end;
//»«‘œ Å«—«„ — «Ê· ﬂœ ê–«—Ì ‘œÂ œ— €Ì— «Ì‰’Ê—  ⁄„· œÌﬂœ —Œ „Ì œÂœ false «ê— Å«—«„ — œÊ„
function Locked(inStr: string; isLocked: Boolean): string;

 const
   Coder: array [0..3] of string = (
          'D4EDCF30C8CDE4CF41C7E2E7E5CFDFE7E5ED070D2096B990FBCD0E42B4545A4E',
          'C9D2C8CFD2C8E531CEC7E4CCC7E4EDE8F5674A6C2883139DE20926FA5369E334',
          'D3E3C720D3C7E3C7E4E53DE56CF4B68476C5D54147219D3C0CF7706E44131BD9',
          'CFDFCAD120C7CDE3CFE6E4CFDB90E5BBE2122A90A4F4F66370C9ECA1A3203C4A');

  lenStr: Byte = $40;

   function MyRandom: Char;
   begin
     repeat
       Result := Chr(Random($64));
     until Ord(Result) in [$30..$39, $41..$46];
   end;

   function HexToInt(inHex: string): Integer;
   const
     Hex: string = '0123456789ABCDEF';
   var
     i: Byte;
   begin
     Result := 0;
     for i := Length(inHex) downto 1 do
       Result := Result + (Pos(inHex[i], Hex) - 1) *
                          Floor(Power(16, Length(inHex) - i));
   end;

   function HexToStr(inHex: string): string;
   var
     Len,
     i: Byte;
   begin
     Result := '';
     i := 1;
     Len := HexToInt(inHex[lenStr - 1]) * 2;
     repeat
       Result := Result + Chr(HexToInt(Copy(inHex, i, 2)));
       Inc(i, 2);
     until i = Len + 1;
   end;

   function Cycle(inHex: string): string;
   var
     iStr: Byte;
   begin
    for iStr := Length(inHex) downto 1 do
     if (iStr mod 4) = 0 then
       Result := Result + Copy(inHex, iStr - 3, 4);
   end;

 var
   HexStr,
   outStr: string;
  i1,i2, _Mod,
   iStr: Byte;

begin
   Randomize;
   Result := '';
   if (instr = '') then
     Exit;
   SetLength(outStr, lenStr);

   if isLocked then
   begin
     if Length(inStr) > 15 then
     begin
       ShowMessage('Out of Rang_ !!!');
       Result := inStr;
       Exit;
     end;


     HexStr := '';
     for iStr := 1 to Length(inStr) do
       HexStr := HexStr + IntToHex(Ord(inStr[iStr]), 2);

     while Length(HexStr) <> (lenStr - 2) do
       HexStr := HexStr + MyRandom;

     HexStr := HexStr + IntToHex(Length(inStr), 1);

     _Mod := Length(inStr) mod 4;

     for iStr := 1 to lenStr - 1 do
       outStr[iStr] := Chr(Ord(HexStr[iStr]) + Ord(Coder[_Mod][iStr]));

     outStr[lenStr] := Chr($64 + _Mod);
     Result := Cycle(outStr);
  end
   else
   begin
     inStr := Cycle(inStr);
     _Mod := Ord(inStr[lenStr]) - $64;

     for iStr := 1 to lenStr - 1 do
       begin
         i1:=ord(inStr[iStr])  ;
         i2:=Ord(Coder[_Mod][iStr])  ;
         outStr[iStr] := Chr( i1 - i2);
       end;
     Result := HexToStr(outStr);
   end;
 end;

function GetWinDirectory: String;
var
  WinDir: array [0..MAX_PATH-1] of char;
begin
  GetWindowsDirectory(WinDir, MAX_PATH);
  result := StrPas(WinDir);
end;
Function IsDigit(Key : Char):Boolean;
Begin
 IsDigit:=False;
 if (Key in ['1'..'9','0','.']){or (Ord(key)= VK_Back)} Then IsDigit:=True;
End;


procedure ReadDongle(handle:integer;block_index:byte;var Data:string);
var
  retcode: integer;
  uid, hid                     : cardinal;
  buffer : array[0..512]  of char;

  pchars                       : PChar;
  msg:string;
begin
  retcode := SDX_Read(handle, block_index, buffer);
  if retcode < SDXERR_SUCCESS then
  begin
    FmtStr(msg, 'Error: %x', [retcode]);
   	ShowMessage(msg);
   	Exit;
  end;
  pchars := buffer;
  Data:= pchars;

  SDX_Close(handle);
end;

Function OpenDongle:integer;
var
  RetCode, Handle  : Integer;
  UID,UID2,hid:longint;
  Msg:string;
begin
  Retcode := SDX_Find();
  if (Retcode < 0) then
  begin
    Result:=-1;
    Exit;
  end;

  if (Retcode = 0) then
  begin
    Result:=-2;
    Exit;
  end;

  {Ranjbar}
  {UID := -1091403277;
  Retcode := SDX_Open(1,UID,@hid);
  if retcode < 0 then
  begin
    result:=retcode;
    Exit;
  end;}

  UID := -1091403277; //—„“ ﬁœÌ„
  UID2 := 1246342882; //»⁄·  ‰œ«‘ ‰ —„“ ﬁ›·Â« «“ „—ÕÊ„ œﬂ — ° —„“ ÃœÌœ  ⁄—Ì› ‘œ
  Retcode := SDX_Open(1,UID,@hid);
  if Retcode < 0 then
  begin
     Retcode := SDX_Open(1,UID2,@hid);
     if Retcode < 0 then
     begin
        Result := Retcode;
        Exit;
     end;
  end;
  //---
  Result:=retCode;
end;

procedure WriteDongle(handle:integer;block_index : integer; Data  : string);
var
  retcode  : integer;
  uid, hid : longint;
  Msg : string;
begin
   block_index := 0;
  retcode := SDX_Write(handle, block_index, PChar(data));
	if retcode < SDXERR_SUCCESS then
   begin
    FmtStr(Msg, 'Error: %x', [retcode]);
    ShowMessage(Msg);
    Exit;
	end;
	SDX_Close(handle);
end;
//ﬁ›· ÃœÌœ
Function LoadDongleData(  Var  aCoName,aProductCode,aVertion,aCustSerial,aSerial2,aKit:String; Var aNetWork:Boolean ;var companyName,ExpireDate:string ):Boolean;
Var
   handle,P1,P2:Integer;
   Data:String;
begin
   handle:=OpenDongle;
   Result:=True;

   if handle<0 then
   begin
      Result:=False;
      Exit;
   end;

   ReadDongle(handle, 0,data);

   P1 := Pos(UpperCase('CN='),UpperCase(Data))+3;
   P2 := Pos(UpperCase('PC='),UpperCase(Data));
   P2 := P2-P1;
   aCoName := Trim(Copy(Data,P1,P2));

   P1 := Pos(UpperCase('PC='),UpperCase(Data))+3;
   P2 := Pos(UpperCase('VER='),UpperCase(Data));
   P2 := P2-P1;
   aProductCode := Trim(Copy(Data,P1,P2));

   P1 := Pos(UpperCase('VER='),UpperCase(Data))+4;
   P2 := Pos(UpperCase('NET='),UpperCase(Data));
   P2 := P2-P1;
   aVertion := Trim(Copy(Data,P1,P2));

   P1 := Pos(UpperCase('NET='),UpperCase(Data))+4;
   P2 := Pos(UpperCase('SN1='),UpperCase(Data));
   P2 := P2-P1;
   if Trim(Copy(Data,P1,P2)) = '1' then
      aNetWork := True
   else
      aNetWork := False;

   P1 := Pos(UpperCase('SN1='),UpperCase(Data))+4;
   P2 := Pos(UpperCase('SN2='),UpperCase(Data));
   P2 := P2-P1;
   aCustSerial := Trim(Copy(Data,P1,P2));

   P1 := Pos(UpperCase('SN2='),UpperCase(Data))+4;
   P2 := Pos(UpperCase('KIT='),UpperCase(Data));
   P2 := P2-P1;
   aSerial2 := Trim(Copy(Data,P1,P2));

   P1 := Pos(UpperCase('KIT='),UpperCase(Data))+4;
   P2 := Pos(UpperCase('CPN='),UpperCase(Data));
   P2 := P2-P1;
   aKit := Trim(Copy(Data,P1,P2));


   P1 := Pos(UpperCase('CPN='),UpperCase(Data))+4;
   P2 := Pos(UpperCase('DAT='),UpperCase(Data));
   P2 := P2-P1;
   companyName := Trim(Copy(Data,P1,P2));

   P1 := Pos(UpperCase('DAT='),UpperCase(Data))+4;
   P2 := Pos(UpperCase(';'),UpperCase(Data));
   P2 := P2-P1;
   ExpireDate := Trim(Copy(Data,P1,P2));
end;


Procedure BidiModeToRight(aControl:TWinControl);
Var
   ExStyle:LongInt;
begin
   ExStyle := GetWindowLong(aControl.Handle , GWL_EXSTYLE);
   SetWindowLong(aControl.Handle , GWL_EXSTYLE , ExStyle
                 or WS_EX_RTLREADING or WS_EX_RIGHT or WS_EX_LAYOUTRTL or WS_EX_NOINHERITLAYOUT);
end;

function GetTempDirectory: String;
var
  tempFolder: array[0..MAX_PATH] of Char;
begin
  GetTempPath(MAX_PATH, @tempFolder);
  result := StrPas(tempFolder);
end;

Function ShamsiLeapYear(y: integer):byte;
var s: byte;
begin
     s:=(y-22) mod 33;
     if (s<>32) and (s mod 4 = 0) then ShamsiLeapYear:=1 else ShamsiLeapYear:=0;
end;
function miladiLeapYear(y: integer): byte;
 begin
   if ((y mod 4=0) and (y mod 100<>0)) or ((y mod 100=0) and ((y div 100) mod 4=0)) then
      Result:=1
    else Result:=0;
end;

function MDayPerMonth(y,m:integer):Byte;
 begin
  case m of
   1,3,5,7,8,10,12:Result:=31;
   2              :Result:=28+MiladiLeapYear(y)
   else Result:=30;
  end;{case}
 end;

function MiladiToInt(y,m,d:integer):integer;
var i:integer;
begin
  Result:=0;
  for i:=1 to m-1 do
    Result:=Result+MDayPerMonth(y,i);
  Result:=Result+d;
end;

function ShamsiToInt(m,d:integer):integer;
begin
   if m<7 then
      Result:=(m-1)*31+d
   Else
      Result:=186+(m-7)*30+d;
end;

procedure MiladiIntToShamsiInt(my,mi:integer;var sy,si:integer);
var difference:integer;
begin
 sy:=my-622;
 difference:=79-shamsiLeapYear(sy);

 if mi>difference then
  begin
   si:=mi-difference;
   sy:=sy+1;
  end
   else si:=365-difference+mi;
end;

procedure ShamsiIntToMiladiInt(sy,si:integer;var my,mi:integer);
var difference:integer;
   YearDays : integer; // Amin 1391/10/09
begin
 my:=sy+621;
 difference:=ShamsiToInt(10,11)-1;

 //difference := difference + miladiLeapYear(My); // Amin 1391/10/09
 if miladiLeapYear(my) = 1 then YearDays := 366 else YearDays := 365; // Amin 1391/10/09

 // Amin 1391/10/09 if si>difference then
 if si>(difference + miladiLeapYear(my)) then // Amin 1391/10/09
  begin
    // Amin 1391/10/09 mi:=si-difference;
    mi :=si-difference - miladiLeapYear(my); // Amin 1391/10/09
    my:=my+1;
  end
  else
  begin
    // Amin 1391/10/09 mi:=365-difference+si;
    
    if miladiLeapYear(my) = 1 then mi:=YearDays-difference+si - 1
    else mi:=YearDays-difference+si; // Amin 1391/10/09
  end;
end;


procedure Shamsi(my,mm,md: integer;var sy,sm,sd:integer);
begin
end;

procedure Miladi(sy,sm,sd:integer;var my,mm,md:integer);
var mi,si: integer;
begin
   si:=ShamsiToInt(sm,sd);
   ShamsiIntToMiladiInt(sy,si,my,mi);
   mm:=1;
   while mi>MDayPerMonth(my,mm) do
   begin
      mi:=mi-MDayPerMonth(my,mm);
      mm:=mm+1;
   end;
   md:=mi;
end;


function sdayPermonth(y,m:integer):integer;
begin
   Result:=31- m div 7- m div 12;
   if m=12 then
      Result:=Result+ShamsiLeapYear(y);
end;

function  ShamsiDeCodeDate(s:string;var y,m,d:integer):boolean;
 var i:byte;
begin
   result:=false;
   i:=pos('/',s);
   if i=0 then
    exit;

    y:=StrToIntDef(copy(s,1,i-1),0);
    if y=0 then exit;

    Delete(s,1,i);

    i:=pos('/',s);

    m:=StrToIntDef(copy(s,1,i-1),0);
    if (m>12) or (m<1) then exit;

    Delete(s,1,i);

    d:=StrToIntDef(s,0);
    if (d>SDayPerMonth(y,m)) or (d<1) then exit;

   Result:=true;
end;

function  ShamsiEnCodeDate(y,m,d:integer):string;
begin
   if y<1300 then y:=y+1300  ;
     Result:=IntToStr(y)+'/';
   if m>=10 then
      result:=result+IntToStr(m)+'/'
   else
      result:=result+'0'+IntToStr(m)+'/';
   if d>=10 then
      result:=result+IntToStr(d)
   else
      result:=result+'0'+IntToStr(d);
end;

Function ShamsiString(date1 :Tdatetime):string ;
var t1,t2,t3:word;
mi ,sy ,sm ,sd ,i , si ,my ,mm ,md ,Diff :integer;
p2,p3:string[2];
begin
   DecodeDate(date1,t1,t2,t3);
   my:=t1;
   mm:=t2;
   md:=t3;
   mi:=0;

   for i:=1 to mm-1 do
    mi:=mi+MDayPerMonth(my,i);

   mi:=mi+md;
   sy:=my-622;
   Diff:=79-ShamsiLeapYear(sy);
   if mi>Diff then
   begin
    si:=mi-Diff -ShamsiLeapYear(sy);;
    sy:=sy+1;
   end
    else
   si:=mi-Diff+365;

   if si<187 then
   begin
     sm:= ((si-1) div 31)+1;
     sd:= ((si-1) mod 31)+1;
   end
   else
   begin
     sm:=7+((si-187) div 30);
     sd:=((si-187) mod 30)+1;
   end;

   p2:=IntToStr(sm);
   p3:=IntTOStr(sd);
   if Length(p2)=1 then p2:='0'+p2;
   if Length(p3)=1 then p3:='0'+p3;
   result:=(IntToStr(sy)+'/'+p2+'/'+p3);
end;


function ShamsiMString(mdate:String):String;
var my,mm,md,sy,sm,sd:integer;
begin
   ShamsiDeCodeDate(mdate,my, mm, md);
   Shamsi(my,mm,md,sy,sm,sd);
   Result:=ShamsiEnCodeDate(sy,sm,sd)
end;

function MiladiDateTime(s:string):TDateTime;
var my,mm,md,sy,sm,sd:integer;
begin
   ShamsiDeCodeDate(s,sy,sm,sd);
   Miladi(sy,sm,sd,my,mm,md);
   Result:=EncodeDate(my,mm,md)
end;


//«÷«›Â ò—œ‰ „ﬁœ«— »Â  «—ÌŒ
//ShamsiIncDate(dm.today,0,1,0);
function ShamsiIncDate(s:string;y,m,d:integer):string;
var
  ny,nm,nd:integer;
   procedure CorrectMonth;
   begin
      if nm<1 then
      begin
         nm:=nm+12;
         ny:=ny-1;
      end;

      if nm>12 then
      begin
         nm:=nm-12;
         ny:=ny+1;
      end;
   end;
begin
   ShamsiDeCodeDate(s,ny,nm,nd);
   ny:=ny+y;

   nm:=nm+m;
   CorrectMonth;
   nd:=nd+d;

   if nd>sdayPermonth(ny,nm) then
   begin
      nd:=nd-sdayPermonth(ny,nm);
      nm:=nm+1;
      CorrectMonth;
   end;

   if nd<1 then
   begin
      nm:=nm-1;
      CorrectMonth;
      nd:=nd+sdayPermonth(ny,nm);
   end;
   Result:=ShamsiEnCodeDate(ny,nm,nd);
end;

function ShamsidayInWeek(s:string):integer;
var
 dt:tdatetime;
begin
   dt:=MiladiDateTime(s);
   Result:=((DayOfTheWeek(DT)+2) mod 7);
end;

function ShamsidayInMonth(s:string):integer;
var
   sy,sm,sd:integer;
begin
   ShamsiDecodeDate(s,sy,sm,sd);
   Result:=sd;
end;

function ShamsiStartOfWeek(s:string):string;
begin
   Result:=ShamsiIncDate(s,0,0,-ShamsidayInWeek(s)+1);
end;

function ShamsiStartOfMonth(s:string):string;
begin
   Result:=copy(s,1,8)+'01';
end;

function ShamsiStartOfYear(s:string):string;
var
 sy,sm,sd:integer;
begin
   ShamsiDecodeDate(s,sy,sm,sd);
   Result:=ShamsiEnCodeDate(sy,1,1);
end;

Function Is_Integer(s:string):boolean;
var i: integer;
begin
   s:=trim(s);
   result:=true;
   if s='' then
   begin
     Result:=false;
     exit;
   end;
   for i:=1 to length(s) do
     if pos(s[i],'1234567890-')=0 then
     begin
      Result:=False;
      exit;
     end;
end;

procedure Setwords(s:string;delimeter:char;var  Items:TStrings);
var  currentPos: byte;
  m:string;
begin
   m:=trim(s);
   if m='' then
      exit;

   currentPos:=pos(Delimeter,m);
   while currentPos<>0 do
   begin
     Items.Add(copy(m,1,currentPos-1));
     Delete(m,1,currentPos);
     m:=trim(m);
     currentPos:=pos(Delimeter,m);
   end;
   Items.Add(m);
end;

function setPass(S_In:string):string;
var   A:array [0..50]of Char;  i,len:byte;
begin
   len:=length(S_in);
   StrPCopy(A, S_in);
   if len > 0 then
   begin
     StrPCopy(A,S_In);
     for i:=0 to len-1 do
         a[i]:=char(ord(a[i])xor 13);
   end;
   setPass:=string(A)
end;

function isValidDate(var s:string):boolean;
var
   y,m,d:integer;
begin
   result:=true;
   s := Txt_Del254(s);
   if ShamsiDeCodeDate(s,y,m,d) then
      s := ShamsiEnCodedate(y,m,d) else Result:=false;
end;

function Replace1( s : widestring;old,new:Char):widestring;
Var i: integer;
begin
   if Old = New then
   begin
      Result:=s;
      Exit;
   end;

   if old<>' ' then
      s := Trim(s);
   i := pos(old,s);
   while i<>0 do
   begin
      s := copy(s,1,i-1)+new+copy(s,i+length(old),length(s)-i-length(old)+2);
      i := pos(old,s)
   end;
   Result:=s;
end;


function Replace( s,old,new:widestring):widestring;
Var i: integer;
begin
   if Old = New then
   begin
      Result:=s;
      Exit;
   end;

   if old<>' ' then
      s := Trim(s);
   i := pos(old,s);
   while i<>0 do
   begin
      s := copy(s,1,i-1)+new+copy(s,i+length(old),length(s)-i-length(old)+2);
      i := pos(old,s)
   end;
   Result:=s;
end;


function IsDate(today,s:string;var FromDate,ToDate:string):boolean;
 var p: byte;

{«Ì‰  «»⁄ Ìò ⁄»«—  —‘ Â «Ì Õ«ÊÌ Ìò  «—ÌŒ —« ê—› Â Ê „—“ Å«ÌÌ‰ Ê »«·«Ì ¬‰—« „Ì œÂœ}
function changeTodate(s:string):boolean;
type
    datetypes=(ISmonth,ISweek,Isday,Notany);
var y,m,d:integer;
   NumberOfDate:byte;
   items:Tstrings;
   Dtype:datetypes;
   IsCurrent:boolean;
   
      function Current(s:string):byte;
      begin
         if (s='«ŒÌ—')or(s='Ã«—Ì') then
          Result:=0
         else  if (s='ê–‘ Â') then
          Result:=1
         else Result:=2;
      end;

      function DateType(s:string):datetypes;
      begin
          if s='—Ê“' then
           Result:=Isday
           else
          if s='Â› Â' then
           Result:=ISweek
           else
          if s='„«Â' then
           Result:=ISmonth
           else
           Result:=Notany;
      end;


      function lettersToint(s:string):byte;
      begin
       result:=0;
       if (s='1') or (s='Ìò') then Result:=1;
       if (s='2') or (s='œÊ') then Result:=2;
       if (s='3') or (s='”Â') then Result:=3;
       if (s='4') or (s='çÂ«—') then Result:=4;
       if (s='5') or (s='Å‰Ã') then Result:=5;
       if (s='6') or (s='‘‘') then Result:=6;
       if (s='7') or (s='Â› ') then Result:=7;
       if (s='8') or (s='Â‘ ') then Result:=8;
       if (s='9') or (s='‰Â') then Result:=9;
      end;
begin
   result:=true;
     if isValidDate(s) then
      begin
       FromDate:=s;
       ToDate:=s;
       exit;
      end;
   s:=trim(s);
   shamsiDeCodeDate(today,y,m,d);
   items:=TStringList.Create;
   SetWords(s,' ',items);
   if items.Count>3 then
      exit;


   Todate:=today;
   case items.Count of
    1:begin
       if (items[0]='«„—Ê“') or (items[0]='Õ«·«') then
         FromDate:=today else
       if (items[0]='œÌ—Ê“') then
         begin
          FromDate:=ShamsiIncDate(today,0,0,-1);
          ToDate:=ShamsiIncDate(today,0,0,-1)
         end
       else if items[0]='«„”«·' then
         Fromdate:=ShamsiStartOfYear(Todate)
       else
         Result:=false;
         exit;
      end;
    2:begin
       if (datetype(items[0])<>notany)and (Current(items[1])<>2) then
           begin
             Dtype:=DateType(items[0]);
             NumberOfDate:=1;
             IsCurrent:=Current(items[1])=0;
           end
         else
       if (lettersToint(items[0][1])<>0) and
       (datetype(copy(items[0],2,length(items[0])-1))<>notany)and (Current(items[1])<>2) then
         begin
          NumberOfDate:=lettersToint(items[0][1]);
          Dtype:=DateType(copy(items[0],2,length(items[0])-1));
          IsCurrent:=Current(items[1])=0;
         end
         else
          begin
           Result:=false;
           exit;
          end;


         end;
     3: begin
       if (lettersToint(items[0])<>0) and
       (datetype(items[1])<>notany)and (Current(items[2])<>2) then
        begin
          NumberOfDate:=lettersToint(items[0]);
          Dtype:=DateType(items[1]);
          IsCurrent:=Current(items[2])=0;
        end
        else
        begin
         Result:=false;
         exit;
        end;
       end;
      end;


case dtype of
   Isday  : begin
              if IsCurrent then
                 FromDate:=ShamsiIncDate(today,0,0,-NumberOfDate+1)
               else
                begin
                 FromDate:=ShamsiIncDate(today,0,0,-NumberOfDate);
                 ToDate:=ShamsiIncDate(today,0,0,-1);
                end;
            end;
   ISweek :begin
              if IsCurrent then
                 FromDate:=ShamsiStartOfWeek(ShamsiIncDate(today,0,0,-7*(NumberOfDate-1)))
               else
                begin
                 FromDate:=ShamsiStartOfWeek(ShamsiIncDate(today,0,0,-7*NumberOfDate));
                 toDate:=ShamsiStartOfWeek(today);
                end;
           end;
   ISmonth:begin
              if IsCurrent then
                 FromDate:=ShamsiStartOfMonth(ShamsiIncDate(today,0,-NumberOfDate+1,0))
               else
                begin
                 FromDate:=ShamsiStartOfMonth(ShamsiIncDate(today,0,-NumberOfDate,0));
                 toDate:=ShamsiStartOfMonth(today);
                end;
           end;
end;




end;
begin
result:=false;
if trim(s)='' then exit;
 p:=pos(' «',s) ;
 if p<>0 then
  begin
   FromDate:=trim(Copy(s,1,p-1));
   ToDate:=trim(Copy(s,p+2,length(s)-p));
   if (todate='«„—Ê“') or (todate='Õ«·«') then
    ToDate:=ShamsiString(now());
   if (isValidDate(fromdate) and isValidDate(todate)) then
     result:=true;
  end
  else
 Result:=changeTodate(s);
end;



function GetAllWhereCluase(s,FieldName:String):string;
var items: TStrings;
i: byte;
InWhere,FromToWhere:String;
 function GetFromToWhere(s:string):string;
  var FI,Ti:String;
  P:byte;
 begin
  P:=Pos('-',s);
  Fi:=trim(copy(s,1,P-1));
  Ti:=trim(copy(s,P+1,length(s)-P));
  if (fi<>'') and (ti<>'')   then
   Result:='('+FieldName+' Between '+FI+' AND '+Ti+')';

  if fi='' then
   Result:='('+FieldName+'<='+Ti+')';

  if Ti='' then
   Result:='('+FieldName+'>='+Fi+')';
 end;{GetFromToWhere}

 begin
 items:=TStringList.Create;
 SetWords(s,',',items);
 Result:='';
 FromToWhere:='';
 InWhere:='';
 if Items.Count>0 then
  for i:=0 to Items.Count-1 do
      if Pos('-',items[i])<>0 then
          FromToWhere:=FromToWhere+GetFromToWhere(items[i])+' or '
       else
          InWhere:=InWhere+items[i]+',';
 if InWhere<>'' then
  InWhere:='('+FieldName+' in ('+copy(InWhere,1,length(InWhere)-1)+'))';

 if FromToWhere<>'' then
  FromToWhere:='('+copy(FromToWhere,1,length(FromToWhere)-4)+')';

  Result:=InWhere;
  if Result<>'' then
   begin
    if FromToWhere<>'' then
     Result:=Result+' or '+FromToWhere;
   end
   else Result:=FromToWhere;

end;


Function StrToFont(S:STring):TFont;
var   F:TFont;
arr:array[1..4] of string;
j,i:byte;
begin
  F:=TFont.Create;
  for j:=1 to 3 do
   begin
    i:=pos('_',s);
    arr[j]:=copy(s,1,i-1);
    delete(s,1,i);
   end;
  arr[4]:=s;
  with F do
   begin
    Charset:=strtoint(arr[2]);
    size:=strtoint(arr[3]);
    Name:=arr[4];
    Style:=[];
    if pos('fsBold',arr[1])<>0 then
      Style:=Style+[fsBold];
    if pos('fsItalic',arr[1])<>0 then
      Style:=Style+[fsItalic];
    if pos('fsUnderline',arr[1])<>0 then
      Style:=Style+[fsUnderline];
    if pos('fsStrikeOut',arr[1])<>0 then
      Style:=Style+[fsStrikeOut];
   end;
  Result:=f;
end;

Function FontToStr(F:TFont):STring;
begin
   with F do
   begin
      if fsBold in Style then
         Result:='fsBold';
      if fsItalic in Style then
         Result:=Result+'fsItalic';
      if fsUnderline in Style then
         Result:=Result+'fsUnderline';
      if fsStrikeOut in Style then
         Result:=Result+'fsStrikeOut';

      Result:=Result+'_'+IntToStr(Charset);
      Result:=Result+'_'+IntToStr(size);
      Result:=Result+'_'+Name;
   end;
end;


//œÊ ›÷«Ì Œ«·Ì —«  »œÌ· »Â Ìò ›÷«Ì Œ«·Ì „Ì ò‰œ
function YeganehTrim(s:string):string;
begin
   Result:=s;
   while pos('  ',Result)<>0 do
      Result:=trim(Replace(Result,'  ',' '))
end;

Function F(x:LongInt):String ;
var
  a:array[1..39] of String;
begin
   a[1]:='Ìﬂ';a[2]:='œÊ';a[3]:='”Â';a[4]:='çÂ«—';a[5]:='Å‰Ã';
   a[6]:='‘‘';a[7]:='Â› ';a[8]:='Â‘ ';a[9]:='‰Â';a[10]:='œÂ';
   a[11]:='Ì«“œÂ';a[12]:='œÊ«“œÂ';a[13]:='”Ì“œÂ';a[14]:='çÂ«—œÂ';
   a[15]:='Å«‰“œÂ';a[16]:='‘«‰“œÂ';a[17]:='Â›œÂ';a[18]:='ÂÃœÂ';
   a[19]:='‰Ê“œÂ';a[20]:='»Ì” ';a[21]:='”Ì';a[22]:='çÂ·';
   a[23]:='Å‰Ã«Â';a[24]:='‘’ ';a[25]:='Â› «œ';a[26]:='Â‘ «œ';
   a[27]:='‰Êœ';a[28]:='’œ';a[29]:='œÊÌ” ';a[30]:='”Ì’œ';a[31]:='çÂ«—’œ';
   a[32]:='Å«‰’œ';a[33]:='‘‘’œ';a[34]:='Â› ’œ';a[35]:='Â‘ ’œ';a[36]:='‰Â’œ';
   a[37]:='Â“«—';a[38]:='„Ì·ÌÊ‰';a[39]:='„Ì·Ì«—œ';
   if x<=20 then f:=a[x];
   if (x>20) and (x<=100)and ((x mod 10)=0) Then f:=a[18+(x div 10)];
   if (x>100) and (x<=1000)and ((x mod 100)=0) then f:=a[27+(x div  100)];
   if x=1000000 Then f:=a[38];
   if x=1000000000 then f:=a[39];
End;


Function Bil(mm:String):String ;
var m:LongInt;
Begin
     m:=StrToInt(mm);
     mm:=IntTostr(m);
     IF Length(mm)<3 Then
     Begin
        If F(m)='' Then Bil:=F(m -(m Mod 10))+' Ê '+F(m Mod 10)
            Else
             Bil:=F(m);

     End
     Else
     Begin
          if f(m)='' Then
             Bil:=F(m -(m mod 100))+ ' Ê '+Bil(IntToStr(m mod 100))
		 Else
                 Bil:=F(m);
     End;
End;


Function Bill(n:int64):String ;
var
   i,l,ll:integer;
   tt, m,x,nn:String;
Begin
     if n=0 then
      Begin
       bill:='’›—';
       exit;
     End;

     if n<0 then
      Begin
       n:=-n;
       tt:=' „‰›Ì ';
       end;
     nn:=IntToStr(n);
     ll:=Length(nn);
     l:=(ll Div 3);
     IF (ll mod 3)>0 then Inc(l);
     m:=Copy(nn,Length(nn)-2,3);
     nn:=Copy(nn,1,Length(nn)-3);
     if m<>'000' Then x:=Bil(m)+x;
     For i:=2 To l Do
     Begin
          m:=Copy(nn,Length(nn)-2,3);
          nn:=Copy(nn,1,Length(nn)-3);
          if m<>'000' Then
          x:=Bil(m)+' '+F(Trunc(Power(10,3*i-3)))+'  Ê ' + ' '+x;
     End;
     if copy(x,length(x)-2,2)='Ê ' Then Delete(x,length(x)-2,2);
     Bill:=tt+x
end;

Function FloatBill(f:real):String ;
 var i,j : longint;
 p1,p2:string;
begin
   i:=trunc(f);

   j:=trunc((Frac(f)+0.0001)*100);
   if i<>0 then
    p1:=Bill(i);

   if j<>0 then
    begin
     if j=50 then p2:='‰Ì„' else
     if j mod 10 =0 then
       p2:= bill(j div 10)+' œÂ„ ' else
     p2:=bill(j)+' ’œ„ '
    end
   else
    p2:='  „«„';

    if (p1<>'') and (j>0)  then
      Result:=p1+' Ê '+p2
    else
      Result:=p1+p2;
end;


function  Correctinteger(s:string):string;
var i: integer;
 w,r:string;
begin
  r:='' ;
  w:='';
   for i:=1 to length(s) do
    begin
      if pos(s[i],'=+_-\/')=0 then
        w:=w+s[i]
      else
       begin
        if (w<>'') then
          r:=s[i]+w+r
        else
          r:=r+s[i];
        w:='';
       end
    end;
  if w<>'' then
    r:=w+r;
    Result:=r;
end;


function CheckFarsiDate(s:string):string;
begin
 Result:=s;
  if (length(s)=10) then
  if (Pos('/',s)<>0) then
     if pos('/',copy(s,pos('/',s)+1,length(s)-pos('/',s)))<>0 then
       result:=Copy(s,9,2)+Copy(s,5,4)+Copy(s,1,4);
end;

function CorrectFarsi(S:string):string;
var i: integer;
 w,r:string;
begin
  r:='' ;
  w:='';
   for i:=1 to length(s) do
    begin
      if pos(s[i],'\/+-_=1234567890.')<>0 then
        w:=w+s[i]
      else
       begin
        if w<>'' then
         begin
          r:=r+Correctinteger(w);
          w:=''
         end;
        r:=r+s[i];
       end
    end;
    if w<>'' then
      r:=r+Correctinteger(w);

    Result:=Replace(Replace(r,#13,' '),#10,'');
end;

FUNCTION ShamsiDateToInt(Sdate :string) :integer;
var Y ,m ,d ,dif ,i :integer;
BEGIN
   ShamsiDeCodeDate(sdate,y,m,d);

   if m<7 then
      dif:=(m-1)*31+d
    else
     dif:=186+(m-7)*30+d;

    for i:=1300 to y-1 do
       dif:=dif+ShamsiLeapYear(i)+365;
    result:=dif;
END;

FUNCTION Application_Is_Run(appName:String):boolean;
var l_process_index: Integer;
begin
   result:=false ;
   g_c_process_list:= c_process_list.create_process_list('process_list');
   g_c_process_list.get_nt_process_list;

   with g_c_process_list do
      for l_process_index:= 0 to f_process_count- 1 do
         if UpperCase(f_c_process(l_process_index).m_name)=UpperCase(appName) then
            result:=true;
end;

FUNCTION ShamsiDateDiff(dateFrom ,dateTo:string ):integer;
BEGIN
  if dateTo>dateFrom then
    Result:=ShamsiDateToInt(dateTo)-ShamsiDateToInt(dateFrom)
  else
    Result:=0;
END;

function CommaSeperate(s:string):string; //860613m
Var
   S1:String;
   I:Integer;
   Slist:TStringList;
   Label EndMenu;
begin
    SList := TStringList.Create;
    While Pos(',',S)>0 Do Delete(S,Pos(',',S),1);
    For I:=Length(S) DownTo 1 Do
     IF Length(S)>3 Then
      Begin
        S1 := Copy(S,Length(S)-2,3);
        Slist.Add(S1);
        Delete(S,Length(S)-2,3);
      End;
    IF Length(S)>0 Then
       Slist.Add(S);
    S := '';
    For I := Slist.Count-1 DownTo 0 Do
    Begin
     S1 := Slist.Strings[I];
     S := S + S1 + ',' ;
    End;
    Delete(S,Length(S),1);
    Result:=s;
end ;


Function DeleteComma(S:String):String;
Begin
   While Pos(',',S)>0 Do
      Delete(S,Pos(',',S),1);
   Result := S;
End;

Function ReplaceKaf(S:String):String;
Begin
   s:=Replace(s,'ﬂ','YYY');
   s:=Replace(s,'ò','YYY');
   Result:=Replace(s,'YYY','[òﬂ]');
End;

{Ranjbar}
//uses Dialogs,Controls;
//if ShowMyMessage('ÅÌ€«„','',mbOKCancel,mtWarning)=mrok then   //[mbYes]=6 [mbNo]=7 mbOk  Ok=1 cancel=2
//ShowMyMessage('ÅÌ€«„','',[mbOK],mtInformation);
Function ShowMyMessage(Titile , Msg: String;
                          Const MsgDlgBtn: TMsgDlgButtons = mbYesNoCancel;
                          Const aMsgDlgType: TMsgDlgType = mtConfirmation): Integer;
var
  MsgDlg : TForm;
Begin
  MsgDlg := Dialogs.CreateMessageDialog(Msg,aMsgDlgType,MsgDlgBtn); //Return TForm
  with MsgDlg do
  begin
    BiDiMode     := bdRightToLeft;
    Font.Charset := ARABIC_CHARSET;

    Font.Height  := -11;
    Font.Name    := 'Tahoma';
    Font.Style   := [];
    Font.Size    := 8;
    Controls[1].BiDiMode := bdRightToLeft;

    if MsgDlgBtn = [mbYes] then
      TButton(Controls[2]).Caption := '»·Ì'
    else if MsgDlgBtn = [mbNo] then
      TButton(Controls[2]).Caption := 'ŒÌ—'
    else if MsgDlgBtn = [mbOK] then
      TButton(Controls[2]).Caption := ' «ÌÌœ'
    else if (MsgDlgBtn = [mbCancel]) or (MsgDlgBtn = [mbAbort]) then
      TButton(Controls[2]).Caption := '«‰’—«›'
    else if MsgDlgBtn = [mbRetry] then
      TButton(Controls[2]).Caption := '”⁄Ì „Ãœœ'
    else if MsgDlgBtn = [mbIgnore] then
      TButton(Controls[2]).Caption := '’—›‰Ÿ—'
    else if MsgDlgBtn = [mbAll] then
      TButton(Controls[3]).Caption := 'Â„êÌ'
    else if MsgDlgBtn = [mbNoToAll] then
      TButton(Controls[3]).Caption := 'Â„êÌ ŒÌ—'
    else if MsgDlgBtn = [mbYesToAll] then
      TButton(Controls[3]).Caption := 'Â„êÌ »·Â'
    else if MsgDlgBtn = [mbHelp] then
      TButton(Controls[3]).Caption := '—«Â‰„«'
    else if MsgDlgBtn = mbYesNoCancel then
    begin
      TButton(Controls[2]).TabOrder := 0;
      TButton(Controls[2]).Caption := '»·Ì';
      TButton(Controls[3]).Caption := 'ŒÌ—';
      TButton(Controls[4]).Caption := '«‰’—«›';
    end
    else if MsgDlgBtn = mbOKCancel then
    begin
      TButton(Controls[2]).TabOrder := 0;
      TButton(Controls[2]).Caption := ' «ÌÌœ';
      TButton(Controls[3]).Caption := '«‰’—«›';
    end
    else if MsgDlgBtn = mbAbortRetryIgnore then
    begin
      TButton(Controls[2]).TabOrder := 0;
      TButton(Controls[2]).Caption := '«‰’—«›';
      TButton(Controls[3]).Caption := '”⁄Ì „Ãœœ';
      TButton(Controls[4]).Caption := '’—›‰Ÿ—';
    end
    else if MsgDlgBtn = mbAbortIgnore then
    begin
      TButton(Controls[2]).TabOrder := 0;
      TButton(Controls[2]).Caption := '«‰’—«›';
      TButton(Controls[3]).Caption := '’—›‰Ÿ—';
    end;
    Caption := Titile;
    Result := ShowModal;
    Free;
  end;
end;

{Ranjbar}
//‰„«Ì‘ ›—„Â« Â„—«Â »« «‰Ì„Ì‘‰
//Form_Animate(Self,100);
//‰ò Â: »Ã«Ì ‰«„ ›—„ «“ «Ì‰ ò·„Â «” ›«œÂ ‘Êœ
//‰ò Â: ”—⁄  «‰Ì„Ì‘‰ ‰»«Ìœ ò„ — «“ 100 »«‘œ
Procedure Form_Animate(aForm:TWinControl;aAniTime:Integer=100);
Var
   I,X,Y:integer;
begin
   X := (Screen.DesktopWidth - aForm.Width) Div 2;
   Y := ((Screen.DesktopHeight - aForm.Height) Div 2)-17;
   aForm.SetBounds(X, Y, aForm.Width, aForm.Height);

   Randomize;
   I:=RandomRange(1,9);
   Case I of
     1:begin
          AnimateWindow(aForm.Handle,aAniTime   ,AW_HOR_POSITIVE or AW_HOR_NEGATIVE or AW_CENTER);
          AnimateWindow(aForm.Handle,aAniTime-50,AW_HOR_POSITIVE or AW_HOR_NEGATIVE or AW_Hide);
       end;
     2:begin
          AnimateWindow(aForm.Handle,aAniTime   ,AW_HOR_POSITIVE or AW_HOR_NEGATIVE or AW_SLIDE);
          AnimateWindow(aForm.Handle,aAniTime-50,AW_HOR_NEGATIVE or AW_HOR_POSITIVE or AW_Hide);
       end;
     3:begin
          AnimateWindow(aForm.Handle,aAniTime   ,AW_VER_NEGATIVE or AW_SLIDE);
          AnimateWindow(aForm.Handle,aAniTime-50,AW_VER_POSITIVE or AW_Hide);
       end;
     4:begin
          AnimateWindow(aForm.Handle,aAniTime   ,AW_HOR_POSITIVE or AW_VER_NEGATIVE or AW_SLIDE);
          AnimateWindow(aForm.Handle,aAniTime-50,AW_HOR_POSITIVE or AW_VER_POSITIVE or AW_Hide);
       end;
     5:begin
          AnimateWindow(aForm.Handle,aAniTime   ,AW_HOR_POSITIVE or AW_HOR_NEGATIVE or AW_CENTER) ;
          AnimateWindow(aForm.Handle,aAniTime-50,AW_HOR_POSITIVE or AW_HOR_NEGATIVE or AW_Hide) ;
       end;
     6:begin
          AnimateWindow(aForm.Handle,aAniTime   ,AW_HOR_POSITIVE or AW_VER_NEGATIVE or AW_SLIDE);
          AnimateWindow(aForm.Handle,aAniTime-50,AW_HOR_POSITIVE or AW_VER_POSITIVE or AW_Hide);
       end;
     7:begin
          AnimateWindow(aForm.Handle,aAniTime   ,AW_HOR_NEGATIVE or AW_VER_NEGATIVE or AW_SLIDE);
          AnimateWindow(aForm.Handle,aAniTime-50,AW_HOR_POSITIVE or AW_VER_POSITIVE or AW_Hide);
       end;
     8:begin
          AnimateWindow(aForm.Handle,aAniTime   ,AW_VER_NEGATIVE or AW_HOR_NEGATIVE or AW_SLIDE);
          AnimateWindow(aForm.Handle,aAniTime-50,AW_VER_POSITIVE or AW_HOR_POSITIVE or AW_Hide);
       end;
     9:begin
          AnimateWindow(aForm.Handle,aAniTime   ,AW_HOR_POSITIVE or AW_HOR_NEGATIVE or AW_CENTER) ;
          AnimateWindow(aForm.Handle,aAniTime-50,AW_HOR_POSITIVE or AW_HOR_NEGATIVE or AW_Hide) ;
       end;
     {10:begin
          AnimateWindow(aForm.Handle,aAniTime   ,AW_HOR_POSITIVE or AW_VER_NEGATIVE or AW_Blend);
          AnimateWindow(aForm.Handle,aAniTime-50,AW_HOR_POSITIVE or AW_VER_POSITIVE or AW_Hide);
       end;
     11:begin
          AnimateWindow(aForm.Handle,aAniTime   , AW_HOR_POSITIVE or AW_VER_POSITIVE or AW_Blend);
          AnimateWindow(aForm.Handle,aAniTime-50, AW_HOR_NEGATIVE or AW_VER_NEGATIVE or AW_Hide);
       end;}
    end;
end;

{Ranjbar}
//«Ì‰  «»⁄ ò—”— —« œ— „Œ ’«  ò‰ —· „Ê—œ ‰Ÿ— ﬁ—«— „Ì œÂœÊ „‰ÊÌ —«”  ò·Ìò —« »«“ „Ìò‰œ
//Cursor_SetPos(Self,SBEmkanat,PopupMenu1);
//»«‘œ œÌê— „‰ÊÌ —«”  ò·Ìò »«“ ‰„Ì‘Êœ Nil œ— ’Ê— ÌòÂ Å«—«„ — ”Ê„ »—«»—
//Cursor_SetPos(Self,SBEmkanat,Nil);
Procedure Cursor_SetPos(aForm:TForm;Sender:TObject;aPopupMenu:TPopupMenu);
Var
   Pt:TPoint;
   X1,Y1,X2,Y2:integer;
begin
   X1 := 0;
   Y1 := 0;
   X2 := 0;
   Y2 := 0;
   Pt.x := 0;
   Pt.y := 0;
   Windows.ClientToScreen(aForm.Handle,Pt) ;
   if Not(TControl(Sender).Parent is TForm) then
   begin
      X1 := TControl(Sender).Parent.Left;
      Y1 := TControl(Sender).Parent.Top;
   end;
   if Not(TControl(Sender).Parent.Parent is TForm) then
   begin
      X2 := TControl(Sender).Parent.Parent.Left;
      Y2 := TControl(Sender).Parent.Parent.Top;
   end;
   Pt.x := Pt.x + X1 + X2 + TControl(Sender).Left+(TControl(Sender).Width Div 2);
   Pt.y := Pt.y + Y1 + Y2 + TControl(Sender).Top +(TControl(Sender).Height Div 2);
   SetCursorPos(pt.X,pt.Y);  //GetCursorPos()
   //Windows.ScreenToClient (FormName.Handle,pt) ;
   if aPopupMenu <> Nil then
      aPopupMenu.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

{Ranjbar}
Procedure Rep_CorrectDesign(aFileName:String);
Var
   FN:String;
begin
   FN := ExtractFilePath(Application.ExeName)+'Reports\'+aFileName;
   //if MBaseForm.messageShowString('¬Ì« „«Ì·Ìœ òÂ ÿ—«ÕÌ «Ì‰ ›—„ ê“«—‘ »Â Õ«·  ÅÌ‘ ›—÷ »«“ ê—œœø',true) then
   if ShowMyMessage('ÅÌ€«„','¬Ì« „«Ì·Ìœ òÂ ÿ—«ÕÌ «Ì‰ ›—„ ê“«—‘ »Â Õ«·  ÅÌ‘ ›—÷ »«“ ê—œœø',mbOKCancel,mtInformation) = mrOK then
      if FileExists(FN) then
         if DeleteFile(pchar(FN)) then
            //MBaseForm.messageShowString('›—„ ÿ—«ÕÌ ê“«—‘ «’·«Õ ‘œ',False)
            ShowMyMessage('ÅÌ€«„','›—„ ÿ—«ÕÌ ê“«—‘ «’·«Õ ‘œ',[mbOK],mtInformation);
end;

{Ranjbar}
Procedure Rep_LoadFile(afrxReport:TfrxReport;aFileName:String);
Var
   FN ,RepDir : String;
begin
   RepDir := ExtractFilePath(Application.ExeName)+'Reports';
   if not DirectoryExists(RepDir) then
      CreateDir(RepDir);
   FN := RepDir+'\'+aFileName;
   if Not FileExists(FN) then
      afrxReport.SaveToFile(FN)
   else
      begin
         afrxReport.Clear;
         afrxReport.LoadFromFile(FN);
      end;
end;

{Ranjbar}
Procedure Rep_Show(afrxReport:TfrxReport;ReportType:TReportType);
begin
   afrxReport.PrepareReport();
   Case ReportType of
      rtShow   : afrxReport.ShowReport();
      rtPrint  : afrxReport.Print();
      rtDesign : afrxReport.DesignReport();
   end;
end;

{Ranjbar}
//OnFormShow Ê «” ›«œÂ «Ì‰  «»⁄ œ— —ÊÌœ«œ DBNavigator  ›«—”Ì ﬂ—œ‰ ﬂ‰ —·
Procedure DBNav_Setup(const Navigator: TDBNavigator);
Const
   FarsiCaptions : array[TNavigateBtn] of string =
              ('«Ê·Ì‰', 'ﬁ»·Ì' , '»⁄œÌ' , '¬Œ—Ì‰'  , 'ÃœÌœ' ,
               'Õ–›'  , 'ÊÌ—«Ì‘', '–ŒÌ—Â', '«‰’—«›' , '»«“Ì«»Ì');
Var
   Btn : TNavigateBtn;
   I:byte;
begin
   I:=0;
   For Btn := Low(TNavigateBtn) to High(TNavigateBtn) do
      with THackDBNavigator(Navigator).Buttons[btn] do
      begin
         Caption := FarsiCaptions[btn];
         NumGlyphs := 2;
         Glyph := nil;
         Spacing := 0;
         if I<9 then
         begin
            try
            Glyph.LoadFromResourceName(HInstance,'DBNav'+IntToStr(I));
            except
            end;
            Inc(I);
         end;
         Layout := blGlyphTop;
      end;
   //
 {   With Navigator do
   begin
      Hints.Add('Ctrl + Home');
      Hints.Add('Ctrl + PageUp');
      Hints.Add('Ctrl + PageDown');
      Hints.Add('Ctrl + End');
      Hints.Add('Ctrl + ins');
      Hints.Add('Ctrl + F8');
      Hints.Add('Ctrl + F4');
      Hints.Add('Ctrl + F2');
      Hints.Add('Ctrl + F6');
      ShowHint:=True;
   end;
   //Ì« «” ›«œÂ «“ œ” Ê— “Ì—
  For I:=0 to 9 do
       if Navigator.Controls[I].Visible then
          TNavButton(Navigator.Controls[I]).Font.Color := clBlack;}
end;

{Ranjbar}
//»œ”  ¬Ê—œ‰ ›ﬁÿ „”Ì— ›«Ì·
//E:\AllProjects_Backup\FM\MorakhasiFM.ddp   =>  E:\AllProjects_Backup\FM\
Function File_GetFilePath(aFileName:String):String;
Var
   Rev:String;
begin
   aFileName := Trim(aFileName);
   if Pos('\',aFileName)=0 then
   begin
      Result := aFileName;
      Exit;
   end;
   Rev := ReverseString(aFileName);
   Delete(Rev,1,Pos('\',Rev)-1);
   Rev := ReverseString(Rev);
   Result := Rev;
end;

{Ranjbar}
//»œ”  ¬Ê—œ‰ ‰«„ Ê Å”Ê‰œ ›«Ì·
//E:\AllProjects_Backup\FM\MorakhasiFM.ddp   =>  MorakhasiFM.ddp
Function File_GetFileName(aFileName:String):String;
begin
   aFileName := Trim(aFileName);
   if Pos('\',aFileName)=0 then
   begin
      Result := aFileName;
      Exit;
   end;
   Result := Trim(RightStr(aFileName,Length(aFileName)-Length(File_GetFilePath(aFileName))));
end;

//»œ”  ¬Ê—œ‰ Å”Ê‰œ ›«Ì·
Function File_GetFileExt(aFileName:String):String;
begin
   aFileName := Trim(aFileName);
   Result:= ExtractFileExt(aFileName);
   Result := copy(Result,Pos('.',Result)+1,length(Result));
end;


{Ranjbar}
Function Qry_GetResult(aQueryText:String;aADOConnection:TADOConnection):String;
Var
   QrResult : TAdoQuery;
begin
   QrResult := TAdoQuery.Create(Nil);
   QrResult.Connection := aADOConnection;
   QrResult.SQL.Text := aQueryText;
   QrResult.Open;
   Result := Trim(QrResult.Fields[0].AsString);
   QrResult.Close;
end;
//---

{Ranjbar}
//»œ”  «Ê—œ‰ ”«⁄  ”—Ê—
Function Time_GetTime(aAdoConnection:TADOConnection;HaveSecend:Boolean=False):String;
Var
   hh,mm,ss,SrvTime:String;
begin
   SrvTime := Qry_GetResult('SELECT Cast(DATEPART(hour,GETDATE())as nVarchar)   +'':''+' +
                                   'Cast(DATEPART(minute,GETDATE())as nVarchar) +'':''+' +
                                   'Cast(DATEPART(second,GETDATE())as nVarchar) as SrvTime',aAdoConnection);
   hh := Copy(SrvTime,1,Pos(':',SrvTime)-1);
   if Length(hh)=1 then
      hh:='0'+hh;
   Delete(SrvTime,1,Pos(':',SrvTime));
   mm := Copy(SrvTime,1,Pos(':',SrvTime)-1);
   if Length(mm)=1 then
      mm:='0'+mm;
   Delete(SrvTime,1,Pos(':',SrvTime));
   ss := SrvTime;
   if Length(ss)=1 then
      ss := '0'+ss;
   if not HaveSecend then
      Result := hh+':'+mm
   else
      Result := hh+':'+mm+':'+ss;
end;

Function Time_IsTime(aTime:String):Boolean;
begin
   Result := True;
   aTime := LeftStr(Trim(aTime),5);
   if StrToIntDef(Copy(aTime,1,2),100) > 23 then
      Result := False;
   if StrToIntDef(Copy(aTime,4,2),100) > 59 then
      Result := False;
end;

{Ranjbar}
//œ— ’Ê— ÌﬂÂ ›Ì·œ „Ê—œ ‰Ÿ— Œ«·Ì »«‘œ »Â ﬂ«—»— ÅÌ€«„ „Ì œÂœ
//IFFieldIsEmpty(QrEnterDataEDName,'⁄‰Ê«‰');
Procedure IFFieldIsEmpty(aFieldName:TField;aFieldDisPlayLabel:String);
begin
   if (Trim(aFieldName.AsString) = '')or(aFieldName.IsNull) then
   begin
      //MBaseForm.messageShowString('·ÿ›« ›Ì·œ  " '+aFieldDisPlayLabel+' " —« „ﬁœ«— œÂÌ ‰„«ÌÌœ',False);
      ShowMyMessage('ÅÌ€«„','·ÿ›« ›Ì·œ  " '+aFieldDisPlayLabel+' " —« „ﬁœ«— œÂÌ ‰„«ÌÌœ',[mbOK],mtInformation);
      Abort;
   end;
end;

{Ranjbar}
Procedure ChLB_SelectItemsFromStr(aCheckListBox:TYCheckListBox ; aKeyFldVal:String;y:boolean);
Var
   I : integer;
begin
   For I :=0 to aCheckListBox.Items.Count - 1 do
       aCheckListBox.Checked[I] := False;

   if (Trim(aKeyFldVal) = '')or(Trim(aKeyFldVal) = '()') then
      Exit;

   if Trim(aKeyFldVal[1]) <> '(' then
      aKeyFldVal := '(' + Trim(aKeyFldVal) + ')';

   aKeyFldVal := RightStr(aKeyFldVal , Length(aKeyFldVal)-1);    //Del '('
   aKeyFldVal := LeftStr(aKeyFldVal , Length(aKeyFldVal)-1)+','; //Del ')'

   While Pos(',',aKeyFldVal) > 0 do
   begin
      For I :=0 to aCheckListBox.Items.Count - 1 do
          //if Integer(aCheckListBox.Items.Objects[I]) = StrToIntDef(Copy(aKeyFldVal,1,Pos(',',aKeyFldVal)-1),-1) then
          if Integer(aCheckListBox.codes[I]) = StrToIntDef(Copy(aKeyFldVal,1,Pos(',',aKeyFldVal)-1),-1) then
             aCheckListBox.Checked[I] := True;
      Delete(aKeyFldVal , 1 , Pos(',',aKeyFldVal) );
   end;
end;

procedure Date_GetText(Sender: TField;var Text: String; DisplayText: Boolean);
begin
   Text := #254 + Trim(Sender.AsString);
end;


procedure Date_SetText(Sender: TField;Const Text: String);
begin
   Sender.AsString := Txt_Del254(Text);
end;


Procedure ChLB_SelectItemsFromTable(var aCheckListBox:TYchecklistBox ; aQry:TADOQuery ; aIDFieldName:ShortString);
Var
   I:integer;
begin
  aQry.First;
  For I:=0 to aCheckListBox.Items.Count-1 do
     aCheckListBox.Checked[I] := False;
  While Not aQry.Eof do
  begin
     For I:=0 to aCheckListBox.Items.Count-1 do
        if aCheckListBox.Codes[I] = aQry.FieldByName(aIDFieldName).AsInteger then
           aCheckListBox.Checked[I] := True;
     aQry.Next;
  end;
end;

//›«—”Ì ò—œ‰ òÌ»—œ
Procedure Keyboard_Farsi;
begin
   LoadKeyBoardLayout('00000429', KLF_ACTIVATE);  // ›«—”Ì
end;

//«‰ê·Ì”Ì ò—œ‰ òÌ»—œ
Procedure Keyboard_English;
begin
   LoadKeyBoardLayout('00000409', KLF_ACTIVATE);  // «‰ê·Ì”Ì
end;


//›—„Â« OnKeyDown ﬁ—«— œ«œ‰ ﬂ·Ìœ Â«Ì „Ì«‰»— Â— ›—„ œ— —ÊÌœ«œ
//Form_SetShortCut(Self,DBNavigator1,SbSearch,SBReport,Sender,Key,Shift);
//Form_SetShortCut(Self,Nil,Nil,Nil,Sender,Key,Shift);
Procedure Form_SetShortCut(AForm:TForm;ADBNavigator:TDBNavigator;SBSearch,SBReport:TSpeedButton;
                          Sender: TObject; var Key: Word ; Shift: TShiftState);
begin
   if Shift=[] then
   begin
      {if Key in [Vk_F4 , Vk_F5 , Vk_F6 , Vk_F8] then
         TDBNavigator(ADBNavigator).SetFocus;} //«” ›«œÂ ‰‘Êœ
      Case Key of
         Vk_F1 : begin
                    {   FMHelp := TFMHelp.Create(self);
                       FMHelp.FormName := AForm.Name;  //change
                       FMHelp.ShowModal; }
                 end;
         Vk_F2 : if ADBNavigator <> Nil then
                    if ADBNavigator.DataSource.DataSet.State in [dsEdit , dsInsert] then
                       if (nbPost in TDBNavigator(ADBNavigator).VisibleButtons) then
                          ADBNavigator.BtnClick(nbPost);
         Vk_F3 : //if UpperCase(SBSearch.Name) <> UpperCase('NoSBSearch')  then
                   if SBSearch <> Nil then
                      SBSearch.Click;
         //
         Vk_F4 : if ADBNavigator <> Nil then
                    if (nbInsert in TDBNavigator(ADBNavigator).VisibleButtons) then
                       ADBNavigator.BtnClick(nbInsert);
         Vk_F5 : if ADBNavigator <> Nil then
                    if (nbEdit in TDBNavigator(ADBNavigator).VisibleButtons) then
                       ADBNavigator.BtnClick(nbEdit);
         Vk_F6 : if ADBNavigator <> Nil then
                    if (nbCancel in TDBNavigator(ADBNavigator).VisibleButtons) then
                       ADBNavigator.BtnClick(nbCancel);
         //Vk_F7 : Sleep(1);
         Vk_F8 : if ADBNavigator <> Nil then
                    if (nbDelete in TDBNavigator(ADBNavigator).VisibleButtons) then
                       ADBNavigator.BtnClick(nbDelete);
         //
         Vk_F9 : if SBReport <> Nil then
                    SBReport.PopupMenu.Items[0].Click;
         VK_ESCAPE : if Not(ADBNavigator.DataSource.DataSet.State in [dsEdit,dsInsert]) then
                        AForm.Close;

         VK_Return : begin
                        Sleep(1);
                     end;
      end;
   end;
   //-----------
   if ssCtrl in Shift then
   begin
      {if Key in [VK_PRIOR , VK_Next , VK_HOME , VK_END] then
         TDBNavigator(ADBNavigator).SetFocus;} //«” ›«œÂ ‰‘Êœ
      Case Key of
         VK_PRIOR : if ADBNavigator <> Nil then
                       if (nbPrior in TDBNavigator(ADBNavigator).VisibleButtons) then
                          ADBNavigator.BtnClick(nbPrior);
         VK_Next  : if ADBNavigator <> Nil then
                       if (nbNext in TDBNavigator(ADBNavigator).VisibleButtons) then
                          ADBNavigator.BtnClick(nbNext);
         VK_HOME  : if ADBNavigator <> Nil then
                       if (nbFirst in TDBNavigator(ADBNavigator).VisibleButtons) then
                          ADBNavigator.BtnClick(nbFirst);
         VK_END   : if ADBNavigator <> Nil then
                       if (nbLast in TDBNavigator(ADBNavigator).VisibleButtons) then
                          ADBNavigator.BtnClick(nbLast);
         Vk_F9    : if SBReport <> Nil then
                       //SBReport.OnMouseDown(Sender,mbLeft,[ssCtrl],SBReport.Left,SBReport.Top);
                       SBReport.PopupMenu.Items[1].Click;
      end;
   end;
   //-----------
   if ssAlt in Shift then
   begin
      Case Key of
         Vk_F9   : //if UpperCase(SBReport.Name) <> UpperCase('NoSBReport')  then
                   if SBReport <> Nil then
                      //SBReport.OnMouseDown(Nil,mbLeft,[ssAlt],0,0); //SBReport.Left,SBReport.Top);
                      SBReport.PopupMenu.Items[2].Click;

      end;
   end;
   //-----------
   if ssShift in Shift then
   begin
      Case Key of
         VK_Return : Sleep(1);
      end;
   end;

  //if ADBNavigator <> Nil then
     //DBNav_Refresh(ADBNavigator); //‰Ê”«“Ì «Ì‰ ﬂ‰ —·
end;

//çò ò—œ‰ ¬œ—” «Ì„Ì·
//if Email_IsCorrect('pepe@yahoo.com') then
Function Email_IsCorrect(aEmail: String): Boolean;
var
   S: String;
   ETpos: Integer;
begin
Result:=true;
if aEmail='' then exit;
   ETpos := Pos('@', aEMail);
   if ETpos > 1 then
   begin
      s := copy(aEMail, ETpos + 1, Length(aEMail));
      if (pos('.', s) > 1) and (pos('.', s) < length(s)) then
         Result := true
      else Result := false;
   end
      else
         Result := false;
end;

procedure OpenURL(Url: string);
var
  ts: string;
begin
  with TRegistry.Create do
    try
      rootkey := HKEY_CLASSES_ROOT;
      OpenKey('\htmlfile\shell\open\command', False);
      try
        ts := ReadString('');
      except
        ts := '';
      end;
      CloseKey;
    finally
      Free;
    end;
  if ts = '' then Exit;
  ts := Copy(ts, Pos('"', ts) + 1, Length(ts));
  ts := Copy(ts, 1, Pos('"', ts) - 1);
  ShellExecute(0, 'open', PChar(ts), PChar(url), nil, SW_SHOW);
end;
//TabSheet «“ —ÊÌ ‰«„ PageControl ﬂ‰ —· TabSheet »«“ ﬂ—œ‰
Function PageControl_SetTabSheet(aPageControl:TPageControl;aTabSheetName:String):Integer;
Var
   I:Smallint;
begin
  Result := -1;
  for I:=0 to aPageControl.PageCount-1 do
     if UpperCase(aPageControl.Pages[I].Name) = UpperCase(aTabSheetName) then
     begin
        aPageControl.ActivePageIndex := I;
        Result := I;
        Break;
     end;
end;

Procedure TypeNumber(Key:Char);
begin
   if Not(key in ['0'..'9',#8]) then
      Abort;
end;

function Input_Value(const ACaption, APrompt: string; aDefaultValue: string): String;
   function GetAveCharSize(Canvas: TCanvas): TPoint;
   var
     I: Integer;
     Buffer: array[0..51] of Char;
   begin
     for I := 0 to 25 do Buffer[I] := Chr(I + Ord('A'));
     for I := 0 to 25 do Buffer[I + 26] := Chr(I + Ord('a'));
     GetTextExtentPoint(Canvas.Handle, Buffer, 52, TSize(Result));
     Result.X := Result.X div 52;
   end;

Const
   SMsgDlgOK = ' «ÌÌœ';
   SMsgDlgCancel = '«‰’—«›';
var
  Form: TForm;
  Prompt: TLabel;
  Edit: TEdit;
  DialogUnits: TPoint;
  ButtonTop, ButtonWidth, ButtonHeight: Integer;
begin
  //Result := False;
  Form := TForm.Create(Application);
  with Form do
    try
      Font.Name := 'Tahoma';
      Font.Size := 8;
      Font.Style := [];
      Canvas.Font := Font;
      DialogUnits := GetAveCharSize(Canvas);
      BorderStyle := bsDialog;
      Caption := ACaption;
      ClientWidth := MulDiv(180, DialogUnits.X, 4);
      Position := poScreenCenter;
      BiDiMode := bdRightToLeft;

      Prompt := TLabel.Create(Form);
      with Prompt do
      begin
         Parent := Form;
         WordWrap := True;
         Height := Height * 2 ; //
         AutoSize := False;
         Caption := APrompt;

         Left := MulDiv(8, DialogUnits.X, 4);
         Top  := MulDiv(8, DialogUnits.Y, 8);
         Constraints.MaxWidth := MulDiv(164, DialogUnits.X, 4);

      end;

      Edit := TEdit.Create(Form);
      with Edit do
      begin
         Parent := Form;
         Left := Prompt.Left;
         Top := Prompt.Top + Prompt.Height + 5    +10;//
         Width := MulDiv(164, DialogUnits.X, 4);
         MaxLength := 255;
         Text := Trim(aDefaultValue);
         SelectAll;
      end;

      ButtonTop := Edit.Top + Edit.Height + 15;
      ButtonWidth := MulDiv(50, DialogUnits.X, 4);
      ButtonHeight := MulDiv(14, DialogUnits.Y, 8);

      with TButton.Create(Form) do
      begin
        Parent := Form;
        Caption := SMsgDlgOK;
        ModalResult := mrOk;    // «ÌÌœ
        Default := True;
        SetBounds(MulDiv(92, DialogUnits.X, 4), Edit.Top + Edit.Height + 15,ButtonWidth, ButtonHeight);
      end;
      with TButton.Create(Form) do
      begin
        Parent := Form;
        Caption := SMsgDlgCancel;
        ModalResult := mrCancel; //«‰’—«›
        Cancel := True;

        SetBounds(MulDiv(38, DialogUnits.X, 4), ButtonTop, ButtonWidth,ButtonHeight);
        Form.ClientHeight := Top + Height + 13;
      end;
      Prompt.Width := Edit.Width;
      LoadKeyBoardLayout('00000429', KLF_ACTIVATE);  // “»«‰ ›«—”Ì
      if ShowModal = mrOk then
      begin
        //Value := Edit.Text;
        Result := Edit.Text;
      end;
    finally
      Form.Free;
    end;
end;
Function File_IsInUse(aFileName:String):Boolean;
Var
   hFileRes: HFILE;
begin
   Result := False;
   if not FileExists(aFileName) then
      Exit;
   hFileRes := CreateFile(PChar(aFileName), GENERIC_READ or
                          GENERIC_WRITE,0,nil,OPEN_EXISTING,FILE_ATTRIBUTE_NORMAL,0);
   Result := (hFileRes = INVALID_HANDLE_VALUE);
   if not Result then
      CloseHandle(hFileRes);
end;

{»œ”  «Ê—œ‰ «Ì‰òÂ »—‰«„Â „Ê—œ ‰Ÿ— œ— Õ«· «Ã—« „Ì»«‘œ Ì« ŒÌ—
File_IsInUse »—«Ì ›«Ì·Â«Ì €Ì— «Ã—«ÌÌ ò«—»—œ ‰œ«—œ Ê »Â — «”  «“ «Ì‰  «»⁄ «” ›«œÂ ‘Êœ
uses TlHelp32;
While File_ISRun('Calc.exe') do
   Sleep(1000);}
Function File_ISRun(aExeFileName: string): Boolean;
Var
   ContinueLoop: BOOL;
   FSnapshotHandle: THandle;
   FProcessEntry32: TProcessEntry32;
begin
   FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
   FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
   ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);
   Result := False;
   while Integer(ContinueLoop) <> 0 do
   begin
      if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) =
         UpperCase(aExeFileName)) or (UpperCase(FProcessEntry32.szExeFile) =
         UpperCase(aExeFileName))) then
      begin
         Result := True;
      end;
      ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
   end;
   CloseHandle(FSnapshotHandle);
end;

Procedure Keyboard_Simulation(aControl:TWinControl ; aKeyboardKey:Byte ;
          aHasCtrlKey:Boolean=False; aHasAltKey:Boolean=False;aHasShiftKey:Boolean=False);
begin
   aControl.SetFocus;
   if aHasCtrlKey then
      Keybd_Event(VK_CONTROL , 0 , 0 , 0 ) ;
   if aHasAltKey then
      Keybd_Event(VK_MENU , 0 , 0 , 0 ) ;
   if aHasShiftKey then
      Keybd_Event(VK_SHIFT , 0 , 0 , 0 ) ;
   Keybd_Event(aKeyboardKey, 0, 0, 0) ;

   //—Â« ﬂ—œ‰ ﬂ·ÌœÂ«
   Keybd_Event(aKeyboardKey, 0 , KEYEVENTF_KEYUP , 0) ;
   Keybd_Event(VK_CONTROL , 0 , KEYEVENTF_KEYUP  , 0 ) ;
   Keybd_Event(VK_MENU , 0 , KEYEVENTF_KEYUP , 0 ) ;
   Keybd_Event(VK_SHIFT , 0 , KEYEVENTF_KEYUP , 0 ) ;
end;


Function Keyboard_TypeWithDivider(aText:String ; var aKey: Char):String;
begin
   if aKey in ['/','_',' ','-','.'] then
   begin
      if aKey = ' ' then
      begin
         if LeftStr(aText,1) = ' ' then   //«ê— ¬Œ—Ì‰ ﬂ«—«ﬂ — ° ﬂ«—«ﬂ — ›«’·Â »Êœ ¬‰ê«Â
            Result := aText
         else
            Result := aKey + aText
      end
         else
            begin
               if LeftStr(aText,1) = ' ' then  //«ê— ¬Œ—Ì‰ ﬂ«—«ﬂ — ° ﬂ«—«ﬂ — ›«’·Â »Êœ ¬‰ê«Â
                  Result := ' '+aKey + aText
               else
                  Result := ' '+aKey +' '+ aText;
            end;
      aKey := #0;
   end
      else
         Result := aText ;
end;

Function Email_GetAddress(aText:String):String;
Var
   Pos1 , Pos2 :Integer;
Begin
   aText := Trim(aText);
   if Pos('@', aText) = 0 then
   begin
      Result := '';
      Exit;
   end;
   Pos1 := Pos('<', aText);
   Pos2 := Pos('>', aText);

   if  (Pos1>0)and(Pos2>0) then
      Result := Trim(Copy(aText, Pos1+1 ,  (Pos2-Pos1)-1))
   else
      Result := aText;
end;


{ —‰Ã»—
«Ì‰  «»⁄ ⁄„· ›‘—œÂ Ì« «“ ›‘—œÂ Œ«—Ã ﬂ—œ‰ ›Ê·œ— Ì« ›«Ì· —« «‰Ã«„ „ÌœÂœ
Zip „À«· »—«Ì   : if File_ZipOrUnZip('C:\B' , 'C:\B\test.zip' ,dtZip, '*.*' ) then
UnZip „À«· »—«Ì : if File_ZipOrUnZip('C:\B\b' , 'C:\B\b\test.zip' ,dtUnZip, '*.*' ) then
ﬂ—œ‰ Ìﬂ ›«Ì· Zip „À«·Ì »—«Ì  :
if File_ZipOrUnZip('C:\B\b' , 'C:\B\b\test.zip' ,dtUnZip, 'Temp.doc' ) then
}
Function File_ZipOrUnZip(aSourceOrDescFolderPath , aZipFileNameAndPath :String  ;
         aZipOrUnZip:TDoZipType ; aFileType:String = '*.*' ; aZipPassword:String = ''):Boolean;
Var
   ZipForge : TZipForge;
begin
   ZipForge := TZipForge.Create(Nil);
   with ZipForge do
   begin
      Try
         Try
            FileName := aZipFileNameAndPath; //'C:\b\test.zip';  //‰«„ ›«Ì· ›‘—œÂ
            Password := aZipPassword;
            Options.OverwriteMode := omAlways;

            //Zip «‰Ã«„ ⁄„·
            if aZipOrUnZip = dtZip then
            begin
               OpenArchive(fmCreate);     // ”«Œ  Ìﬂ ›«Ì· ›‘—œÂ ÃœÌœ
               BaseDir := aSourceOrDescFolderPath; // „”Ì— ›«Ì·Â«Ì „Ê—œ ‰Ì«“ ÃÂ  ›‘—œÂ ‘œ‰
               AddFiles(aFileType);       // ‰Ê⁄ ›«Ì·Â«Ì ›‘—œÂ
            end;

            //UnZip «‰Ã«„ ⁄„·
            if aZipOrUnZip = dtUnZip then
            begin
               OpenArchive(fmOpenRead);
               BaseDir := aSourceOrDescFolderPath;
               //if IsFilePasswordValid(aZipFileNameAndPath,aZipPassword) then
               ExtractFiles(aFileType);   // Unzip «‰Ã«‰ ⁄„·

               Application.ProcessMessages;
            end;

            //TestFiles(aFileType); // ”  ›«Ì· ›‘—œÂ ‘œÂ
            Result := True;
         Except
            Result := False;
            CloseArchive; // »” ‰ ﬂ‰ —·
         End;
      Finally
         CloseArchive; // »” ‰ ﬂ‰ —·
         ZipForge.Free;
      End;
   end;
end;



{DBGrid »«—ê–«—Ì ” Ê‰Â«Ì ﬂ‰ —·
„À«·  :  DBGrid_LoadColumns(Self.Name,lettersDbGrid); }
Procedure DBGrid_LoadColumns(aFormName:String ; aDBGrid: TDBGrid ; aDBGrid2: TDBGrid  );
Var
   FileNamePath , UserFolder : String;
begin
   UserFolder := ExtractFilePath(Application.ExeName) + 'UserFolder\';
   if pos('\\',UserFolder)<>0  then exit;
   if not DirectoryExists(UserFolder) then
      CreateDir(UserFolder);
   FileNamePath := UserFolder + aFormName + '_' + aDBGrid.Name + '.Cfg' ;
   if FileExists( FileNamePath ) then
      aDBGrid.Columns.loadfromFile( FileNamePath );
                                                   
   if FileExists( FileNamePath ) and (aDBGrid2 <> aDBGrid) then
   begin
     aDBGrid2.Columns.loadfromFile( FileNamePath );
   end
end;


procedure DBGrid_Columns_Caption(aDBGrid: TYDBGrid);    // 920305 Hadi Mohamed For Bug #57 «„ò«‰ „‘«ÂœÂ ” Ê‰ Â«Ì «Œ Ì«—Ì Ê «„ò«‰  €ÌÌ— ‰«„ ” Ê‰ Â«
var
   i: integer;
   s: string;
begin
   for i:=0 to aDBGrid.Columns.Count-1 do
   begin
      s := GetSystemSetting(aDBGrid.Name+'.'+aDBGrid.Columns[i].FieldName);
      if s='0' then
         s:= GetSystemSetting('Edt'+aDBGrid.Columns[i].FieldName);
      if s<>'0' then
         aDBGrid.Columns[i].Title.Caption := s;
   end;
end;


Procedure DBGrid_SaveColumns(aFormName:String ; aDBGrid: TYDBGrid );
Var
   FileNamePath ,UserFolder : String;
begin
   UserFolder := ExtractFilePath(Application.ExeName) + 'UserFolder\' ;
   if pos('\\',UserFolder)<>0  then exit;

   if not DirectoryExists(UserFolder) then
      CreateDir(UserFolder);
   FileNamePath := UserFolder + aFormName + '_' + aDBGrid.Name + '.Cfg' ;
   if FileExists( FileNamePath ) then
      DeleteFile( Pchar(FileNamePath) );
   aDBGrid.Columns.SaveToFile( FileNamePath );
end;



{Ranjbar 88.03.11
 «»⁄ «Ã—« ﬂ—œ‰ «”ﬂ—ÌÅ Â«
„À«· :  Scripts_Run(dm.YeganehConnection , 50); }
Procedure Scripts_Run(aADOConnection:TADOConnection ; aVariableId:integer ; aServerName:String);
Var
   P1 , P2:Integer;
   QryText , FileText : string;
   LastScrNum , DataNum , I , J :integer;
   ScrText , ScrTextFile , SubCommand :TStrings;
   TF : TextFile;
   S , TmpScrPath:String;
   Value , ScrFileName :String;
   ADOCommand : TADOCommand;
   HaveError : Boolean;
   ZipFilePath:String;
   ScriptServerName : String;
begin
   //«Ã—«Ì «”ﬂ—ÌÅ  ›ﬁÿ »— —ÊÌ ”—Ê—
   //»œ·Ì· ﬁ—«— ê—› ‰ ﬁ›· ”Œ  «›“«—Ì —ÊÌ ﬂ·«Ì‰  «Ì‰ ﬁ”„  »—œ«‘ Â „Ì ‘Êœ
   {ScriptServerName := aServerName;
   if Pos('\',ScriptServerName) <> 0 then  //Instance œ«—«Ì
      ScriptServerName := Copy(ScriptServerName,1,Pos('\',ScriptServerName)-1);
   if ScriptServerName <> '.' then
      Exit; }

   ScrFileName := ExtractFilePath(Application.ExeName) +'Scripts\Scripts.TXT';
   if FileExists(ScrFileName) then
      DeleteFile(pchar(ScrFileName));

   ZipFilePath := ExtractFilePath(Application.ExeName) +'Scripts';
   File_ZipOrUnZip(ZipFilePath,ZipFilePath+'\Scripts.Zip',dtUnZip,'*.*','Yeganeh123');
   Application.ProcessMessages;

   ADOCommand := TADOCommand.Create(Nil);
   ADOCommand.Connection := aADOConnection;
   ADOCommand.CommandTimeout:=1200; //20 œﬁÌﬁÂ

   if FileExists(ScrFileName) then
   begin
      Value := Qry_GetResult('Select Value from Settings where userid= -1 And variableId = '+ IntToStr(aVariableId) ,aADOConnection);
      if Value = '' then
      begin
         Qry_SetResult('Insert into Settings(UserID,VariableID,Value) Values(-1 , ' + IntToStr(aVariableId) + ',0)'  ,aADOConnection);//”Ì” „Ì
         Value := '0';
      end;
      DataNum := StrToIntDef(Value,0);

      ScrText := TStringList.Create;
      ScrTextFile := TStringList.Create;
      SubCommand := TStringList.Create;

      AssignFile(TF , ScrFileName);
      Reset(TF);
      While not Eof(TF) do
      begin
         Readln(TF,S);
         ScrText.Add(S);
      end;
      CloseFile(TF);

      P1 := Pos('[LastNum]=',ScrText.Text);
      LastScrNum := StrToIntDef(Trim( Copy(ScrText.Text ,P1 + Length('[LastNum]='),3 )),0);
      if DataNum = LastScrNum then
      begin
         if FileExists(ScrFileName) then
            DeleteFile(pchar(ScrFileName));
         Exit;
      end;

      if DataNum > LastScrNum then
      begin
         if FileExists(ScrFileName) then
            DeleteFile(pchar(ScrFileName));
         ShowMessage('‘„«—Â «”ﬂ—ÌÅ  œ«Œ· œÌ «»Ì” «“ ‘„«—Â œ«Œ· ›«Ì· „—»ÊÿÂ »Ì‘ — «” . ·ÿ›«  ’ÕÌÕ ‰„«ÌÌœ');
         Exit;
      end;

      if DataNum < LastScrNum then
      begin
         For I:=DataNum+1 to LastScrNum do
         begin
            P1 := 0;
            P2 := 0;
            P1 := Pos('[Num]='+IntToStr(I)   , ScrText.Text);
            if p1=0 then Continue;
            if I < LastScrNum then
               P2 := Pos('[Num]='+IntToStr(I+1) , ScrText.Text)-1
            else
               P2 := Length(ScrText.Text)+1;

            ScrTextFile.Text := Trim(Copy(ScrText.Text ,P1 + Length('[Num]='+IntToStr(I)),P2-(P1 + Length('[Num]='+IntToStr(I)))));

            HaveError := True;
            //«Ã—«Ì œ” Ê—« 
            for J:=0 to ScrTextFile.Count-1 do
            begin
               if Trim(UpperCase( ScrTextFile.Strings[J] ))='GO' then
               Begin
                   ADOCommand.CommandText := SubCommand.Text;
                   Try
                      ADOCommand.Execute;
                      Application.ProcessMessages;
                      HaveError := False;
                   Except

                      On E:Exception do
                      begin
                         ShowMessage(E.Message+#13#13+'Œÿ« œ— «Ã—«Ì œ” Ê—«  “Ì— : '+ #13#10 + SubCommand.Text);
                         HaveError := True;
                         Break;
                      end;
                   End;
                   SubCommand.Clear;
               end
                  else
                     SubCommand.Add(ScrTextFile.Strings[J]);
            end;

            if HaveError then
               Break
            else
               Qry_SetResult('Update Settings Set Value = '+ IntToStr(I) + ' Where VariableId =  ' +
                             IntToStr(aVariableId) + ' And UserID = -1 ', aADOConnection ); //”Ì” „Ì
            ScrTextFile.Clear;
         end;
      end;

      if FileExists(ScrFileName) then
      DeleteFile(pchar(ScrFileName));
      Application.ProcessMessages;
      if HaveError then
      begin
         ExitProcess(0);
      end
         else
         begin
            WinExec(Pchar(Application.ExeName),0);
            ExitProcess(0);
         end;
   end
end;

{Ranjbar 88.03.11
 «»⁄ «Ã—« ﬂ—œ‰ «”ﬂ—ÌÅ Â«
„À«· :  Scripts_Run(dm.YeganehConnection ,50);
Procedure Scripts_Run(aADOConnection:TADOConnection ; aVariableName:String='ScriptsNumber');
Var
   P1 , P2:Integer;
   QryText , FileText : string;
   LastScrNum , DataNum , I , J :integer;
   ScrText , ScrTextFile , SubCommand :TStrings;
   TF : TextFile;
   S , TmpScrPath:String;
   Value , OldValue , ScrFileName :String;
   ADOCommand : TADOCommand;
   HaveError : Boolean;
   ZipFilePath:String;
begin
   ScrFileName := ExtractFilePath(Application.ExeName) +'Scripts\Scripts.TXT';
   if FileExists(ScrFileName) then
      DeleteFile(pchar(ScrFileName));

   ZipFilePath := ExtractFilePath(Application.ExeName) +'Scripts';
   File_ZipOrUnZip(ZipFilePath,ZipFilePath+'\Scripts.Zip',dtUnZip,'*.*','Yeganeh123');
   Application.ProcessMessages;

   ADOCommand := TADOCommand.Create(Nil);
   ADOCommand.Connection := aADOConnection;
   ADOCommand.CommandTimeout:=1200; //20 œﬁÌﬁÂ

   if FileExists(ScrFileName) then
   begin
      Qry_SetResult('if not Exists(Select * from Syscolumns Where(Name = ''VariableName'')And(iD = Object_ID(''Settings'')) ) '+
                    ' ALTER TABLE dbo.Settings ADD VariableName nvarchar(50) NULL ',aADOConnection);

      //Value := Qry_GetResult('Select Value from Settings where userid= -1 And variableId = '+ IntToStr(aVariableId) ,aADOConnection);
      Value := Qry_GetResult('Select Value from Settings where userid= -1 And VariableName = '+ QuotedStr(aVariableName) ,aADOConnection);
      if Value = '' then
      begin
         Qry_SetResult('Insert into Settings(UserID,VariableName,Value) Values(-1 , ' + QuotedStr(aVariableName) + ',0)'  ,aADOConnection);//”Ì” „Ì
         Value := '0';
      end;

      //VariableName »Â VariableID »⁄·   €ÌÌ— „ﬁ«œÌ— «“
      OldValue := Qry_GetResult('Select Value from Settings where userid= -1 And variableId = 50 ',aADOConnection);
      if Strtointdef(OldValue,0) > Strtointdef(Value,0) then
      begin
         Qry_SetResult('Delete from Settings Where VariableID = 50' ,aADOConnection);//”Ì” „Ì
         Qry_SetResult('Update Settings Set Value = Select Value From Settings Where VariableID = 50' ,aADOConnection);//”Ì” „Ì
      end;

      DataNum := StrToIntDef(Value,0);

      ScrText := TStringList.Create;
      ScrTextFile := TStringList.Create;
      SubCommand := TStringList.Create;

      AssignFile(TF , ScrFileName);
      Reset(TF);
      While not Eof(TF) do
      begin
         Readln(TF,S);
         ScrText.Add(S);
      end;
      CloseFile(TF);

      P1 := Pos('[LastNum]=',ScrText.Text);
      LastScrNum := StrToIntDef(Trim( Copy(ScrText.Text ,P1 + Length('[LastNum]='),3 )),0);
      if DataNum = LastScrNum then
      begin
         if FileExists(ScrFileName) then
            DeleteFile(pchar(ScrFileName));
         Exit;
      end;

      if DataNum > LastScrNum then
      begin
         if FileExists(ScrFileName) then
            DeleteFile(pchar(ScrFileName));
         ShowMessage('‘„«—Â «”ﬂ—ÌÅ  œ«Œ· œÌ «»Ì” «“ ‘„«—Â œ«Œ· ›«Ì· „—»ÊÿÂ »Ì‘ — «” . ·ÿ›«  ’ÕÌÕ ‰„«ÌÌœ');
         Exit;
      end;

      if DataNum < LastScrNum then
      begin
         For I:=DataNum+1 to LastScrNum do
         begin
            P1 := 0;
            P2 := 0;
            P1 := Pos('[Num]='+IntToStr(I)   , ScrText.Text);
            if p1=0 then Continue;
            if I < LastScrNum then
               P2 := Pos('[Num]='+IntToStr(I+1) , ScrText.Text)-1
            else
               P2 := Length(ScrText.Text)+1;

            ScrTextFile.Text := Trim(Copy(ScrText.Text ,P1 + Length('[Num]='+IntToStr(I)),P2-(P1 + Length('[Num]='+IntToStr(I)))));

            HaveError := True;
            //«Ã—«Ì œ” Ê—« 
            for J:=0 to ScrTextFile.Count-1 do
            begin
               if Trim(UpperCase( ScrTextFile.Strings[J] ))='GO' then
               Begin
                   ADOCommand.CommandText := SubCommand.Text;
                   Try
                      ADOCommand.Execute;
                      Application.ProcessMessages;
                      HaveError := False;
                   Except

                      On E:Exception do
                      begin
                         ShowMessage(E.Message+#13#13+'Œÿ« œ— «Ã—«Ì œ” Ê—«  “Ì— : '+ #13#10 + SubCommand.Text);
                         HaveError := True;
                         Break;
                      end;
                   End;
                   SubCommand.Clear;
               end
                  else
                     SubCommand.Add(ScrTextFile.Strings[J]);
            end;

            if HaveError then
               Break
            else
               Qry_SetResult('Update Settings Set Value = '+ IntToStr(I) + ' Where VariableName =  ' +
                             QuotedStr(aVariableName) + ' And UserID = -1 ', aADOConnection ); //”Ì” „Ì
            ScrTextFile.Clear;
         end;
      end;

      if FileExists(ScrFileName) then
      DeleteFile(pchar(ScrFileName));
      Application.ProcessMessages;
      if HaveError then
      begin
         ExitProcess(0);
      end
         else
         begin
            WinExec(Pchar(Application.ExeName),0);
            ExitProcess(0);
         end;
   end;
end;}

//-----------------------------------------------------------

{Ranjbar
 «»⁄  ‘ŒÌ’ ‰Ê⁄ ÊÌ‰œÊ“ Ê ‰ê«—‘ ¬‰
„À«·    Showmessage(OperatingSystemDescription); }
function OS_GetOperatingSystemData : String;
begin
   //Win 98,Me
   if (Win32Platform = VER_PLATFORM_WIN32_WINDOWS) and (Win32MajorVersion = 4) then
   begin
      if (Win32MinorVersion = 90) and (Win32BuildNumber = 3000) then
         Result := 'Windows Me'
      else
         if (Win32MinorVersion = 1) and (Win32BuildNumber = 2222) then
            Result := 'Windows 98 SE'
         else
            if Win32MinorVersion = 0 then
               Result := 'Windows 95 ' + Win32CSDVersion
            else
               Result := Format('Windows %d.%d (Build %d) %s', [Win32MajorVersion,
                         Win32MinorVersion, Win32BuildNumber, Win32CSDVersion]);

   end
      else
         //Win Nt,XP,2000
         if Win32Platform = VER_PLATFORM_WIN32_NT then
         begin
            if (Win32MajorVersion = 5) and (Win32MinorVersion = 0) then
               Result := Format('Windows 2000 (Build %d) %s', [Win32BuildNumber, Win32CSDVersion])
            else
               if (Win32MajorVersion = 5) and (Win32MinorVersion = 1) then
                  Result := Format('Windows XP (Build %d) %s', [Win32BuildNumber, Win32CSDVersion])
               else
                  Result := Format('Windows NT %d.%d (Build %d) %s', [Win32MajorVersion,
                            Win32MinorVersion, Win32BuildNumber, Win32CSDVersion]);
         end
            else
               Result := Format('Windows %d.%d (Build %d) %s', [Win32MajorVersion,
                         Win32MinorVersion, Win32BuildNumber, Win32CSDVersion]);
end;


//OCX òÅÌ Ê —ÃÌ” — ò—œ‰ Ìò ›«Ì·
//OCX_Register(ExtractFilePath(Application.ExeName)+'\SoftImages\Tiny.OCX', Win_GetSystemDir,False);
Function OCX_Register(aOCXFileName:String;aDestinationPath:String;OverWriteFile:Boolean):Boolean;
Var
   FileName:String;
begin
   Result := False;
   if Not FileExists(aOCXFileName) then
   begin
      ShowMessage('OCX Not Found');
       Exit;
   end;
   FileName := File_GetFileName(aOCXFileName);

   if FileExists(aOCXFileName) then
   begin
      CopyFile(Pchar(aOCXFileName),Pchar(aDestinationPath+'\'+Trim(FileName)),Not(OverWriteFile));//Not OverWrite
      if FileExists(aDestinationPath+'\'+Trim(FileName)) then
         if WinExec(Pchar('RegSvr32.exe '+aDestinationPath+'\'+Trim(FileName)+' /S'),1) > 31 then
            Result := True;
   end;
end;

//OCX «“ —ÃÌ” — Œ«—Ã ﬂ—œ‰ Ìﬂ ›«Ì·
Function OCX_UnRegister(aOCXFileName:String):Boolean;
begin
   Result := False;
   if FileExists(aOCXFileName) then
      if WinExec(Pchar('RegSvr32.exe '+aOCXFileName+' /S /U'),1) > 31 then
      begin
         DeleteFile(Pchar(aOCXFileName));
         Result := True;
      end;
end;

Function Win_GetSystemDir:String;//System32
Var
   Sysdir:array[0..255] of char;
begin
   GetSystemDirectory(SysDir,255);
   Result:= Trim(Strpas(Sysdir));
end;


Function Lock_InSingle(aTiny:TTiny ; Var aSpecialID ,aCoName,aProductCode,aVertion,aCustSerial,
         aSerial2,aKit:String; Var aNetWork:Boolean ;var CompanyName,ExpireDate :string;
         aServerIP:String='' ):Boolean;
Var
   P1,P2:Integer;
   Data:String;

begin
   Result := False;

   if aServerIP <> '' then  //Client œ—
   begin
       aTiny.ServerIP := aServerIP;
       aTiny.NetWorkINIT:=true;
       aTiny.UserPassWord := '302'+'C3'+'F10'+'B0'+'CC95'+'D1'+'B75983'+'FD3'+'C'+'0376'+'E';

       if aTiny.TinyErrCode <> 0 then
          Exit;
   end
      else
      begin  //Server œ—
         aTiny.Initialize := True;
         aTiny.UserPassWord := '302'+'C3'+'F10'+'B0'+'CC95'+'D1'+'B75983'+'FD3'+'C'+'0376'+'E';
         If aTiny.TinyErrCode <> 0 Then //0 = Error None
            Exit;
      end;

   aTiny.ShowTinyInfo := True;

   If aTiny.ShowTinyInfo = False Then
      Exit;

   if aTiny.SpecialID <> 'YEGANEH'+inttostr(123204890) then
   begin
      Showmessage('SpecialID '+'ﬁ›· «'+'‘ »'+'«Â „Ì»«'+'‘œ');
      Exit;
   end;

    aSpecialID := aTiny.SpecialID;
    Data := aTiny.DataPartition ;

    P1 := Pos(UpperCase('CN='),UpperCase(Data))+3;
    P2 := Pos(UpperCase('PC='),UpperCase(Data));
    P2 := P2-P1;
    aCoName := Trim(Copy(Data,P1,P2));

    P1 := Pos(UpperCase('PC='),UpperCase(Data))+3;
    P2 := Pos(UpperCase('VER='),UpperCase(Data));
    P2 := P2-P1;
    aProductCode := Trim(Copy(Data,P1,P2));

    P1 := Pos(UpperCase('VER='),UpperCase(Data))+4;
    P2 := Pos(UpperCase('NET='),UpperCase(Data));
    P2 := P2-P1;
    aVertion := Trim(Copy(Data,P1,P2));

    P1 := Pos(UpperCase('NET='),UpperCase(Data))+4;
    P2 := Pos(UpperCase('SN1='),UpperCase(Data));
    P2 := P2-P1;
    if Trim(Copy(Data,P1,P2)) = '1' then
       aNetWork := True
    else
       aNetWork := False;

    P1 := Pos(UpperCase('SN1='),UpperCase(Data))+4;
    P2 := Pos(UpperCase('SN2='),UpperCase(Data));
    P2 := P2-P1;
    aCustSerial := Trim(Copy(Data,P1,P2));

    P1 := Pos(UpperCase('SN2='),UpperCase(Data))+4;
    P2 := Pos(UpperCase('KIT='),UpperCase(Data));
    P2 := P2-P1;
    aSerial2 := Trim(Copy(Data,P1,P2));

    P1 := Pos(UpperCase('KIT='),UpperCase(Data))+4;
    P2 := Pos(UpperCase('CPN='),UpperCase(Data));
    P2 := P2-P1;
    aKit := Trim(Copy(Data,P1,P2));

    P1 := Pos(UpperCase('CPN='),UpperCase(Data))+4;
    P2 := Pos(UpperCase('DAT='),UpperCase(Data));
    P2 := P2-P1;
    CompanyName := Trim(Copy(Data,P1,P2));

    P1 := Pos(UpperCase('DAT='),UpperCase(Data))+4;
    P2 := Pos(UpperCase(';'),UpperCase(Data));
    P2 := P2-P1;
    ExpireDate := Trim(Copy(Data,P1,P2));

    aTiny.ShowTinyInfo := False;
    aTiny.Initialize := False;

    Result := True;
end;

//»—«Ì ﬂ·«Ì‰ Â« Setting Ê«—œ ﬂ—œ‰ «ÿ·«⁄«  ﬁ›· œ— ÃœÊ·
Procedure SetLockDataToSettings(Connection:TADOConnection;aCompanyName,aProductCode:String);
Var
   SettingTableName : String;
begin
   if Connection = nil then
      Exit;

   Try
      SettingTableName := Connection.Execute('if Exists(Select Name from Sysobjects Where Name = ''Settings'') Select ''Settings'' else Select ''Setting''').Fields[0].value;
      Connection.Execute(   ' if  IsNull((Select [Value] From '+SettingTableName+' Where VariableName = ''CompanyName''),'''') <> '+QuotedStr(aCompanyName)+
                            ' begin '+
                            '    Delete from '+SettingTableName+' Where VariableName in (''CompanyName'',''ProductCode'') '+
                            '    Insert into '+SettingTableName+'(UserID,[Value],VariableName) '+
                            '    Select -1,'+QuotedStr(aCompanyName)+',''CompanyName'' '+
                            '    Union '+
                            '    Select -1,'+QuotedStr(aProductCode)+' ,''ProductCode'' '+
                            ' end ');
   except
      on E:Exception do
         ShowMessage(E.Message);
   end;
end;

function NewDongleFound(Connection:TADOConnection;aServerName,aToday:String ;   var aGetProductCode :integer ; Var aCompanyName:String; NeedNetWork:boolean):byte; //_CashTitle
Var
   aCoName,aProductCode,aVertion,aCustSerial,aSerial2,aKit,CompanyName,ExpireDate:String;
   aNetWork  : Boolean ;
   l:string;
   Nowm,LastLockM:integer;

   function GetLastNum:String; //Setting œ— ÃœÊ· ValueID=99 çﬂ ﬂ—œ‰ ÊÃÊœ
   begin
      Try
         (*Result := Qry_GetResult('if  exists (select * from settings where  VariableName=''99'' and userid=-1) '+
                                        'select value from settings where  VariableName=''99'' and userid=-1 else Select 0 value ' ,Connection);*)
         try
            Result:=Connection.Execute('if  exists (select * from settings where  VariableName=''99'' and userid=-1) '+
                                        'select value from settings where  VariableName=''99'' and userid=-1 else Select 0 value ').Fields[0].Value;
         except
             try
                Result:=Connection.Execute('if  exists (select * from settings where  variableid=99 and userid=-1) '+
                                              'select value from settings where  variableid=99 and userid=-1 else Select 0 value ').Fields[0].Value;
             except
                  try
                     Result:=Connection.Execute('if  exists (select * from setting where  VariableName=''99'' and userid=-1) '+
                                                 'select value from setting where  VariableName=''99'' and userid=-1 else select 0 Value').Fields[0].Value;
                  except
                     try {1}
                        Result:=Connection.Execute('if not exists (select * from FixValues where  ValueID=99) '+
                        'select description from FixValues where  ValueID=99 else select 0 value').Fields[0].Value;
                     except
                        Result:='0';
                     end
                  end;
             end;
         end;
      except
         on E:Exception do
            ShowMessage(E.Message);
      end;
   end;
begin
   Result := 0;
   //»—«Ì ﬂ·«Ì‰ Â« œ«—Ì„
   //if (aServerName<>'') and (Connection<>nil) and (aServerName <> '.') then
   if Connection <> nil then
      if (Uppercase(Win_GetComputerName) <> Uppercase(Srv_GetSrvCumputerName(Connection))) then
      begin
         nowM := Connection.Execute('Select Date'+'Diff(mi,''20'+'09/1'+'2/01'',Get'+'Date())' ).Fields[0].Value;

         l := GetLastNum; //Setting œ— ÃœÊ· ValueID=99 çﬂ ﬂ—œ‰ ÊÃÊœ

         if l <> '0' then //‘‰«”«ÌÌ ﬁ›·
            lastlockm:= StrToIntDef(locked(l,false),0)
         else
            LastLockM:=0;

         if Abs(nowm - lastlockm) > 2 then
            Result:=5
         else
            begin
               result:=0;
               aGetProductCode := 254;
            end;
          Exit; //
       end;

    //»—«Ì ”—Ê—
    if not LoadDongleData(aCoName,aProductCode,aVertion,aCustSerial,aSerial2,aKit,aNetWork,CompanyName,ExpireDate) then
    begin
       Result:=1;
       Exit;
    end;

    {Ranjbar}
    //»—«Ì ﬂ·«Ì‰ Â« Settings Ê«—œ ﬂ—œ‰ «ÿ·«⁄«  ﬁ›· œ— ÃœÊ·
    if Connection <> nil then
       SetLockDataToSettings(Connection,CompanyName,aProductCode);
    //---
    aCompanyName := CompanyName;
    aGetProductCode:=StrToIntDef(aProductCode,0);

    if NeedNetWork and not aNetWork then //ﬁ›· »«Ìœ  Õ  ‘»ﬂÂ »«‘œ
    begin
       Result:=2;
       exit;
    end;

    if aToday > ExpireDate then // «—ÌŒ «⁄ »«— ﬁ›· ”Œ  «›“«—Ì Å«Ì«‰ Ì«› Â
    begin
       Result:=3;
       exit;
    end;
    
end;


Function DongleErrorMessage(Errorcode:byte):string;
begin
   Case ErrorCode of
      1: Result := 'ﬁ'+'›· '+'”'+'Œ '+' «›“«—Ì '+'Ì«'+'› '+' ‰‘œ';
      2: Result := 'ﬁ›'+'· '+'„ '+'’·'+' »'+'Â'+' ”'+'—Ê—'+' ﬁ'+'›· '+'‘»'+'òÂ '+'‰Ì'+'” ';
      3: Result := '„œ  «⁄ »'+'«'+'— '+'ﬁ›'+'·'+' Å«'+'Ì«‰ '+'Ì«›'+' Â '+'«” ';
      4: Result := 'ﬁ'+'›·'+' „ ⁄·ﬁ »Â'+' «'+'Ì‰ ‰—„ «›“'+'«— ‰„'+'Ì »'+'«‘œ';
      6: Result := '”—'+'Ì«· '+'’ÕÌÕ ‰„Ì'+' »«‘œ';
      5: Result := 'ﬁ›'+'·'+' »Â ”'+'—Ê— '+'Ê’'+'· ‰'+'Ì” ';
   end;
end;

Function CheckDongle(Connection:TADOConnection;aServerName,aToday:String ; ExceptedProductCode :integer ; Var aCompanyName:String; ExceptedNetWork:boolean;var DongleProductCode:integer):byte;
Var
   P1,P2,P3,Errorcode : Byte;
begin
   //ŒÊ«‰œ‰ „Õ ÊÌ«  ﬁ›· ÃœÌœ
   ErrorCode := NewDongleFound(Connection, aServerName , aToday ,DongleProductCode , aCompanyName, ExceptedNetWork  );
   if ErrorCode = 2 then
   begin
      Result := Errorcode;
      Exit;
   end;

   if Errorcode > 0 then //«ê— Ì«›  ‰‘œ
   begin
      //Tiny ŒÊ«‰œ‰ „Õ ÊÌ«  ﬁ›· ﬁœÌ„
      ErrorCode := Lock_IsOk( aServerName , aToday ,DongleProductCode , aCompanyName) ;
      {Ranjbar}
      //Settings Ê«—œ ﬂ—œ‰ «ÿ·«⁄«  ﬁ›· œ— ÃœÊ·
      if Connection <> nil then
         SetLockDataToSettings(Connection,aCompanyName,IntToStr(DongleProductCode));
      //---
   end;

   if Errorcode = 0 then
   begin
      p1 := (ExceptedProductCode mod 100);
      p2 := (ExceptedProductCode mod 10000) div 100;
      p3 := (ExceptedProductCode div 10000) ;
      if ExceptedProductCode in [254,0] then
         p1 := DongleProductCode;
      if not (DongleProductCode in [254,p1,p2,p3]) then
         Errorcode:=4;
   end;
   Result:=Errorcode;
end;


function Lock_IsOk(aServerName,aToday:String ; var aGetProductCode :integer ; Var aCompanyName:String):byte; //_CashTitle
Var
   aSpecialID , aCoName,aProductCode,aVertion,aCustSerial,aSerial2,aKit,CompanyName,ExpireDate:String;
   aNetWork , LkStatus : Boolean ;
   MyTny : TTiny;
   TinyIsCreated:boolean;
begin
   if Pos('\',aServerName)<>0 then
      aServerName := Copy(aServerName,1,pos('\',aServerName)-1);

   if (aServerName = '.') then //Local
      aServerName := '';

    TinyIsCreated:=false;
  Try
     MyTny := TTiny.Create(nil);
     TinyIsCreated:=True;
   except
    OCX_Register(ExtractFilePath(Application.ExeName)+'\USBService\Tiny.OCX',Win_GetSystemDir,True);
   end;
  {Ranjbar}
  if not TinyIsCreated then
     try
        MyTny := TTiny.Create(nil);
     except
        result:=1;
        exit;
     end;

   if not Lock_InSingle(MyTny,aSpecialID ,aCoName,aProductCode,aVertion,aCustSerial,aSerial2,aKit,aNetWork,CompanyName,ExpireDate, aServerName ) then
   begin
      Result:=1;
      Exit;
   end;

   aCompanyName := CompanyName;
   aGetProductCode:=StrToIntDef(aProductCode,0);

   if aToday > ExpireDate then
    begin
     Result:=3;
     exit;
    end;

   if (not aNetWork) and (aServerName<>'') then
    begin
     Result:=2;
     exit;
    end;

     MyTny.ShowTinyInfo := False;
     MyTny.Initialize := False;
     MyTny.NetworkInit := False;
end;

{Ranjbar
 Ê”ÿ «Ì‰  «»⁄ „Ì  Ê«‰  „«„ ê—Â Â«Ì »«·«ÌÌ Ê Å«ÌÌ‰Ì ê—Â «‰ Œ«» ‘œÂ —« »Â Õ«·  «‰ Œ«» œ— ¬Ê—œ
„À«· : DBTree_SetCheckState(DBTreeArchive,2,1); //Check = 2 , Uncheck = 1}
procedure DBTree_SetCheckState(aTreeView:TDBTreeView ; aSelectedStateIndex,aUnSelectedStateIndex:Byte);
{Var
   I,J,SelectedAbIndex,StateIndex,LastChildAbIndex : Integer;
begin
  if aTreeView.Selected.HasChildren then
  begin
     J := aTreeView.Selected.AbsoluteIndex;
     LastChildAbIndex := aTreeView.Items.Item[aTreeView.Selected.AbsoluteIndex].GetLastChild.AbsoluteIndex;
     if aTreeView.Items.Item[LastChildAbIndex].HasChildren then
        LastChildAbIndex := aTreeView.Items.Item[aTreeView.Selected.AbsoluteIndex].GetLastChild.GetLastChild.AbsoluteIndex;

     StateIndex := aTreeView.Selected.StateIndex;
     For I:= 1 to 1000 do
     begin
        if aTreeView.Items.Item[J + I ].AbsoluteIndex > LastChildAbIndex then
           Break;
        if StateIndex = aSelectedStateIndex then
           aTreeView.Items.Item[J + I ].StateIndex := aSelectedStateIndex
        else
           aTreeView.Items.Item[J + I ].StateIndex := aUnSelectedStateIndex;
     end;
  end;}

Var
   I,SelectedAbIndex,StateIndex,LastChildAbIndex,ParentAbIndex : Integer;
begin
   SelectedAbIndex := aTreeView.Selected.AbsoluteIndex;
   StateIndex := aTreeView.Selected.StateIndex;
   //»« «‰ Œ«» Â— ê—Â »«Ìœ ê—Â »«·«ÌÌ ‰Ì“ «‰ Œ«» ‘Êœ
   if aTreeView.Selected.AbsoluteIndex > 0 then
   begin
      ParentAbIndex := SelectedAbIndex;
      For I:=1 to 20 do
      begin
         if StateIndex = aUnSelectedStateIndex then //UnChecked
            Break;
         ParentAbIndex := aTreeView.Items.Item[ParentAbIndex].Parent.AbsoluteIndex;
         aTreeView.Items.Item[ParentAbIndex].StateIndex := StateIndex;
         if ParentAbIndex = 0 then
         begin
            aTreeView.Items.Item[0].StateIndex := StateIndex;
            Break;
         end;
      end;
   end;
   //

   //»« «‰ Œ«» Â— ê—Â »«Ìœ ê—Â Å«ÌÌ‰Ì ‰Ì“ «‰ Œ«» ‘Êœ
   if (aTreeView.Selected.HasChildren)And(StateIndex = aUnSelectedStateIndex{UnChecked}) then
   begin
      LastChildAbIndex := aTreeView.Items.Item[SelectedAbIndex].GetLastChild.AbsoluteIndex;
      For I:=1 to 20 do
         if aTreeView.Items.Item[LastChildAbIndex].HasChildren then
            LastChildAbIndex := aTreeView.Items.Item[LastChildAbIndex].GetLastChild.AbsoluteIndex;

      //StateIndex := aTreeView.Selected.StateIndex;
      While SelectedAbIndex <= LastChildAbIndex do
      begin
         aTreeView.Items.Item[SelectedAbIndex].StateIndex := StateIndex;
         SelectedAbIndex := SelectedAbIndex+1;
      end;
   end;
end;
//---

{Ranjbar 88.05.16
çﬂ ﬂ—œ‰ œÊ  «—ÌŒ «“ 1388/01/01  « 1388/02/01
„À«· : if not Date_CheckTwoDate(DateFrom.Text,DateTo.Text) then //çﬂ ﬂ—œ‰ ’Õ  œ—” Ì  «—ÌŒÂ« . «Ì‰  «»⁄ Â„—« »« ÅÌ€«„ „Ì»«‘œ
          Exit; }
Function Date_CheckTwoDate(aDateFrom,aDateTo:String):Boolean;
Var
   CheckDate : String;
begin
   Result := True;
   
   aDateFrom := Trim(aDateFrom);
   aDateTo := Trim(aDateTo);

   CheckDate := aDateFrom;
   if not isValidDate(CheckDate) then
   begin
      ShowMessage(' «—ÌŒ «» œ« «‘ »«Â „Ì»«‘œ ·ÿ›«  ’ÕÌÕ ‰„«ÌÌœ');
      Result := False;
      Exit;
   end;

   CheckDate := aDateTo;
   if not isValidDate(CheckDate) then
   begin
      ShowMessage(' «—ÌŒ «‰ Â« «‘ »«Â „Ì»«‘œ ·ÿ›«  ’ÕÌÕ ‰„«ÌÌœ');
      Result := False;
      Exit;
   end;

   if aDateFrom > aDateTo then
   begin
      ShowMessage(' «—ÌŒ «» œ« «“  «—ÌŒ «‰ Â« »“—ê — „Ì»«‘œ ·ÿ›« «’·«Õ ‰„«ÌÌœ');
      Result := False;
      Exit;
   end;

end;
//---

Function Qry_SetResult(aQueryText:String;aADOConnection:TADOConnection):Boolean;
Var
   QrResult : TAdoQuery;
begin
   Try
      Result := False;
      QrResult := TAdoQuery.Create(Nil);
      QrResult.Connection := aADOConnection;
      QrResult.SQL.Text := aQueryText;
      QrResult.ExecSQL;
      Result := True;
   Except
      on E:Exception do
      begin
         ShowMessage(E.Message);
         Result := False;
      end;
   End;
   QrResult.Close;
end;


{Ranjbar
 »œÌ·  «—ÌŒ ›«—”Ì »Â „Ì·«œÌ}
//function MiladiDateTime(aFarsiDate:String):TDateTime;
function Date_ShToMi(aFarsiDate:String):TDateTime;
Var
   my,mm,md,sy,sm,sd:integer;
begin
   ShamsiDeCodeDate(aFarsiDate,sy,sm,sd);
   Miladi(sy,sm,sd,my,mm,md);
   Result:=EncodeDate(my,mm,md);
end;
function Date_DayNumber(aFarsiDate:String):Integer;
var
   DT:tdatetime;
begin
   DT := Date_ShToMi(aFarsiDate);{ »œÌ·  «—ÌŒ ›«—”Ì »Â „Ì·«œÌ}
    Result := DayOfWeek(DT);
   //---
end;

{Ranjbar
»œ”  ¬Ê—œ‰ ‰«„ —Ê“Â«Ì Â› Â}
function Date_DayName(aFarsiDate:String):String;
Const
   FarsiWeekName: Array[1..7] of ShortString =
   ('Ìﬂ‘‰»Â','œÊ‘‰»Â' ,'”Â ‘‰»Â' ,'çÂ«— ‘‰»Â','Å‰Ã‘‰»Â','Ã„⁄Â','‘‰»Â');
var
   DT : TDateTime;
begin
   DT := Date_ShToMi(aFarsiDate);{ »œÌ·  «—ÌŒ ›«—”Ì »Â „Ì·«œÌ}
   //Result := ((DayOfTheWeek(DT)) mod 7)+1;
   Result := FarsiWeekName[DayOfWeek(DT)];
end;

 
Function Txt_Del254(aText:String):String;
begin
   if aText <> '' then
   begin
      if aText[1] = Char(254) then
         Result := Copy(aText,2,Length(aText))
      else
         Result := aText;
   end
      else
         Result := '';
end;



function GetIPFromHost(var HostName, IPaddr, WSAErr: string): Boolean;
type
  Name = array[0..100] of Char;
  PName = ^Name;
var
  HEnt: pHostEnt;
  HName: PName;
  WSAData: TWSAData;
  i: Integer;
begin
  Result := False;
  if WSAStartup($0101, WSAData) <> 0 then begin
    WSAErr := 'Winsock is not responding."';
    Exit;
  end;
  IPaddr := '';
  New(HName);
  if GetHostName(HName^, SizeOf(Name)) = 0 then
  begin
    HostName := StrPas(HName^);
    HEnt := GetHostByName(HName^);
    for i := 0 to HEnt^.h_length - 1 do
     IPaddr :=
      Concat(IPaddr,
      IntToStr(Ord(HEnt^.h_addr_list^[i])) + '.');
    SetLength(IPaddr, Length(IPaddr) - 1);
    Result := True;
  end
  else begin
   case WSAGetLastError of
    WSANOTINITIALISED:WSAErr:='WSANotInitialised';
    WSAENETDOWN      :WSAErr:='WSAENetDown';
    WSAEINPROGRESS   :WSAErr:='WSAEInProgress';
   end;
  end;
  Dispose(HName);
  WSACleanup;
end;

// «»⁄  »œÌ·  «—ÌŒ ‘„”Ì »Â „Ì·«œÌ
function MiladiMString(mdate:String):String;
var sy,sm,sd , my,mm,md:integer ;
begin
ShamsiDeCodeDate(mdate,sy,sm,sd);

  Miladi(sy,sm,sd, my,mm,md);
  Result:=IntToStr(my)+'/'+IntToStr(mm)+'/'+IntToStr(md);
end;

//DBGrid ﬁ—«—œ«œ‰ ›ÊòÊ” »⁄œ «“ Œ—ÊÃ «“ ò‰ —·
//«” ›«œÂ ‘Êœ DrawColumnCell —Ê«· “Ì— »«Ìœ œ— —ÊÌœ«œ
//DBGrid_SetFocusAfterExit(YDBGrid1,Rect,DataCol,Column,State,clHighlightText);//Uses Types,Graphics
procedure DBGrid_SetFocusAfterExit(aDBGrid:TYDBGrid;const aRect:TRect;aDataCol:Integer;aColumn:TColumn;aState:TGridDrawState ;
          aBrushColo:TColor = clHighlight;aFontColor:TColor = clHighlightText );
begin
   if not aDBGrid.Focused then
      if (gdSelected in aState) then
      begin
        aDBGrid.Canvas.Brush.Color := clHighlight;  //$00C1FFC2 ;
        //aDBGrid.Canvas.Font.Style := Font.Style + [fsBold];
        aDBGrid.Canvas.Font.Color := clHighlightText;
      end;
   aDBGrid.DefaultDrawColumnCell(aRect, aDataCol,aColumn{„ﬁœ«— ›Ì·œ},aState);
end;


{INI »—œ«‘ ‰ Ì« ﬁ—«— œ«œ‰ œÌ « »Â œ«Œ· ›«Ì·Â«Ì
„À«· :
_ServerName := File_IniData(_IniFilePathName,'ServerProperty','ServerName',Computer_Name , False);
œ— ›«Ì· ﬁ—«— „ÌêÌ—œ aValue »«‘œ Å«—«„ — True »—«»— aSetValue œ— ’Ê— ÌòÂ Å«—«„ —}
Function File_IniData(aFilePathName:String ; aSectionName,aIdent:String ; aValue:Variant ; aSetValue:Boolean):Variant;
Var
   MyIniFile: TIniFile;
begin
   Try
      MyIniFile := TIniFile.Create(aFilePathName);
      if not MyIniFile.ValueExists(aSectionName,aIdent) then
         MyIniFile.WriteString(aSectionName,aIdent,aValue);
      if aSetValue then
         MyIniFile.WriteString(aSectionName,aIdent,aValue);
      Result := MyIniFile.ReadString(aSectionName,aIdent,aValue);
   Finally
      MyIniFile.Free;
   End;
end;

Procedure DB_KillProcess(aDBName:String;aAdoConnection:TAdoConnection);
Var
   Qrprocesses : TAdoQuery;
   QrKillProc : TAdoQuery;
begin
   Qrprocesses := TAdoQuery.Create(Nil);
   QrKillProc := TAdoQuery.Create(Nil);
   Try
      Try
         Qrprocesses.Connection := aAdoConnection;
         Qrprocesses.Close;
         Qrprocesses.sql.Text := 'Select SpID from Master..Sysprocesses Where dbid=DB_ID( '+ QuotedStr(aDBName) + ' )';
         Qrprocesses.Open;
         Qrprocesses.First;

         QrKillProc.Connection := aAdoConnection;

         While Not Qrprocesses.Eof do
         begin
            QrKillProc.Close;
            QrKillProc.sql.Text := 'Use Master Set NoExec off Set ParseOnly Off Kill ' + Qrprocesses.Fields[0].AsString ;
            QrKillProc.ExecSQL;
            Application.ProcessMessages;
            Qrprocesses.Next;
         end;
         Application.ProcessMessages;
      Except
         ShowMyMessage('Œÿ«','«‘ﬂ«· œ— ﬁÿ⁄ Å—Ê””Â«',[mbOK],mtError);
      End;
   Finally
      Qrprocesses.Close;
      QrKillProc.Close;
      FreeAndNil(Qrprocesses);
      FreeAndNil(QrKillProc);
   End;
end;

{Ranjbar}
//Registry ﬁ—«— œ«œ‰ „ﬁœ«— œ—
//Reg_SetValue('Software\MySoftReg\Akasi\AppSetting','AppPath',AppPath,dtString,HKEY_CURRENT_USER);
Function Reg_SetValue(aKeyPath,aValueName:String;aValueData:Variant;
         aValueType:TdtField;aRootKey:HKey=HKEY_CURRENT_USER):Boolean;
Var
   Reg : TRegistry;
begin
   Result := True;
   Try
      Reg := TRegistry.Create;
      Reg.RootKey := aRootKey;
      if Reg.OpenKey(aKeyPath,True) then
      begin
         Try                   
            Case aValueType of
               dtString  : Reg.WriteString(aValueName,aValueData);
               dtInteger : Reg.WriteInteger(aValueName,aValueData);
               dtBoolean : Reg.WriteBool(aValueName,aValueData);
               dtFloat   : Reg.WriteFloat(aValueName,aValueData);
            end;
         Except
            Result := False;
         End;
      end;
   Finally
      Reg.CloseKey;
      FreeAndNil(Reg);
   End;
end;

{Ranjbar}
//Registry »—œ«‘ ‰ „ﬁœ«— «“
//Reg_GetValue('Software\MySoftReg\Akasi\AppSetting','AppPath',dtString,HKEY_CURRENT_USER);
Function Reg_GetValue(aKeyPath,aValueName:String;aValueType:TdtField;
                      aRootKey:HKey=HKEY_CURRENT_USER):Variant;
Var
   Reg : TRegistry;
begin
   Try
      Reg := TRegistry.Create;
      Reg.RootKey := aRootKey;
      if Reg.OpenKey(aKeyPath,True) then
      begin
         if Not Reg.ValueExists(aValueName) then
            Exit;
         Case aValueType of
            dtString  : Result := Reg.ReadString(aValueName);
            dtInteger : Result := Reg.ReadInteger(aValueName);
            dtBoolean : Result := Reg.ReadBool(aValueName);
            dtFloat   : Result := Reg.ReadFloat(aValueName);
         end;
      end;
   Finally
      Reg.CloseKey;
      FreeAndNil(Reg);
   End;
end;

//»œ”  ¬Ê—œ‰ ·Ì”  ò«„ÅÌÊ —Â«Ì „ÊÃÊœ œ— ‘»òÂ
//Label1.Caption := ShowServerDialog(Self.Handle);
Function Win_GetComputerNameFromNet(aHandle: THandle): String;
var
   ServerBrowseDialogA0: TServerBrowseDialogA0;
   LANMAN_DLL: DWORD;
   buffer: array[0..1024] of char;
   bLoadLib: Boolean;
begin
   LANMAN_DLL := GetModuleHandle('NTLANMAN.DLL');
   if LANMAN_DLL = 0 then
   begin
     LANMAN_DLL := LoadLibrary('NTLANMAN.DLL');
     bLoadLib := True;
   end;
   if LANMAN_DLL > 0 then
   begin @ServerBrowseDialogA0 := GetProcAddress(LANMAN_DLL, 'ServerBrowseDialogA0');
     DialogBox(HInstance, MAKEINTRESOURCE(101), AHandle, nil);
     ServerBrowseDialogA0(AHandle, @buffer, 1024);
     if buffer[0] = '\' then
        Result := buffer;
     if bLoadLib then
       FreeLibrary(LANMAN_DLL);
   end;
end;

// »œ”  ¬Ê—œ‰ ‰«„ ﬂ«„ÅÌÊ — Ã«—Ì
Function Win_GetComputerName: String;  //In Sql = Select @@ServerName
var
   LenStr: DWord;
begin
   LenStr := MAX_PATH +1;
   SetLength (Result, MAX_PATH + 1);
   GetComputerName(Pchar (Result) , LenStr) ;
   SetLength (Result , StrLen (Pchar (Result)));
   Result := Uppercase (Result);
end;

//»œ”  ¬Ê—œ‰ »“—ê —Ì‰ „ﬁœ«— ⁄œœÌ Ìﬂ ›Ì·œ
//QrPrsPrCode.AsInteger := Qry_GetMaxNu(AdoConnection,'Personel','PrCode')+1;
Function Qry_GetMaxNu(aAdoConnection:TAdoConnection;aTblName,aFldName:String):Integer;
begin
   Result := aAdoConnection.Execute('Select IsNull(Max('+aFldName+'),0)as MaxNu From '+aTblName).Fields[0].Value;
end;

//Use ActiveX,ComObj, AdoInt, OleDB, DB, ADODB;
//»œ”  ¬Ê—œ‰ ·Ì”  ”—Ê—Â«Ì „ÊÃÊœ œ— ‘»ﬂÂ
//„À«· Qry_GetSQLServersList(ComboBox1.Items);
procedure Qry_GetSQLServersFromNet(aNames : TStrings);
var
   RSCon: ADORecordsetConstruction;
   Rowset: IRowset;
   SourcesRowset: ISourcesRowset;
   SourcesRecordset: _Recordset;
   SourcesName, SourcesType: TField;

   function PtCreateADOObject(const ClassID: TGUID): IUnknown;
   var
      Status: HResult;
      FPUControlWord: Word;
   begin
      asm
        FNSTCW FPUControlWord
      end;
      Status := CoCreateInstance(CLASS_Recordset,nil,CLSCTX_INPROC_SERVER or CLSCTX_LOCAL_SERVER,IUnknown,Result);
      asm
        FNCLEX
        FLDCW FPUControlWord
      end;
      OleCheck(Status);
   end;
begin
   SourcesRecordset := PtCreateADOObject(CLASS_Recordset) as _Recordset;
   RSCon := SourcesRecordset as ADORecordsetConstruction;
   SourcesRowset := CreateComObject(ProgIDToClassID('SQLOLEDB Enumerator')) as ISourcesRowset;
   OleCheck(SourcesRowset.GetSourcesRowset(nil,IRowset,0,nil,IUnknown(Rowset)));
   RSCon.Rowset := RowSet;
   with TADODataSet.Create(nil) do
   try
      Recordset := SourcesRecordset;
      SourcesName := FieldByName('SOURCES_NAME');
      SourcesType := FieldByName('SOURCES_TYPE');
      aNames.BeginUpdate;
      try
         while not EOF do
         begin
            if (SourcesType.AsInteger = DBSOURCETYPE_DATASOURCE) and (SourcesName.AsString <> '') then
               aNames.Add(SourcesName.AsString);
           Next;
         end;
      finally
         aNames.EndUpdate;
      end;
   finally
      Free;
   end;
end;

//œ— ’Ê— ÌﬂÂ ›Ì·œ „Ê—œ ‰Ÿ— Œ«·Ì »«‘œ »Â ﬂ«—»— ÅÌ€«„ „Ì œÂœ
//IFFieldIsEmpty(QrEnterDataEDName,'⁄‰Ê«‰');
Procedure Qry_IFFieldIsEmpty(aFieldName:TField;aFieldDisPlayLabel:String);
begin
   if (Trim(aFieldName.AsString) = '')or(aFieldName.IsNull) then
   begin
      ShowMyMessage('ÅÌ€«„','·ÿ›« ›Ì·œ  " '+aFieldDisPlayLabel+' " —« „ﬁœ«— œÂÌ ‰„«ÌÌœ',[mbOK],mtWarning);
      Abort;
   end;
end;

//Qry_CloseAllQry(Self);  //DM ò«—»—œ: Â‰ê«„ ”«Œ Â ‘œ‰ Ê Œ—«»
Procedure Qry_CloseAllQry(aDM:TDataModule);
Var
   I:integer;
begin
   For I:=0 to aDM.ComponentCount-1 do
   begin
      if (aDM.Components[I] is TAdoQuery) then
         if TAdoQuery(aDM.Components[I]).Active then
            TAdoQuery(aDM.Components[I]).Close;

      if (aDM.Components[I] is TAdoStoredProc) then
         if TAdoStoredProc(aDM.Components[I]).Active then
            TAdoStoredProc(aDM.Components[I]).Close;
   end;
end;

//‰„«Ì‘ „«‘Ì‰ Õ”«» ÊÌ‰œÊ“
Procedure Win_RunCalculate;
begin
   WinExec(Pchar('Calc.exe'),1);
end;


Function Three(number:int64):string;
var
   s : string;
   l : longint;
   h : Array[1..3] of byte;
begin
   Str(number,s);
   l := length(s);
   s := '';
   if (number = 0)then
      three := '';
   if (number = 100)then
      three := 'Ìﬂ’œ';
   if(l = 2) then
      h[1] := 0;
   if(l = 1)then
   begin
     h[1] := 0;
     h[2] := 0;
     h[3] := number;
   end;

   h[3] := number mod 10;
   number := number div 10;
   h[2] := number mod 10;
   h[1] := number div 10;

   case h[1] of
      1: s := ' Ìﬂ’œ ';
      2: s := ' œÊÌ”  ';
      3: s := ' ”Ì’œ ';
      4: s := ' çÂ«—’œ ';
      5: s := ' Å«‰’œ ';
      6: s := ' ‘‘’œ ';
      7: s := ' Â› ’œ ';
      8: s := ' Â‘ ’œ ';
      9: s := ' ‰Â’œ ';
   end;

   case h[2] of
      1: case h[3] of
            0: s := s + 'Ê' + ' œÂ ';
            1: s := s + 'Ê' + ' Ì«“œÂ ';
            2: s := s + 'Ê' + ' œÊ«“œÂ ';
            3: s := s + 'Ê' + ' ”Ì“œÂ ';
            4: s := s + 'Ê' + ' çÂ«—œÂ ';
            5: s := s + 'Ê' + ' Å«‰“œÂ ';
            6: s := s + 'Ê' + ' ‘«‰“œÂ ';
            7: s := s + 'Ê' + ' Â›œÂ ';
            8: s := s + 'Ê' + ' ÂÃœÂ ';
            9: s := s + 'Ê' + ' ‰Ê“œÂ ';
         end;
      2: s := s + 'Ê' + ' »Ì”  ';
      3: s := s + 'Ê' + ' ”Ì ';
      4: s := s + 'Ê' + ' çÂ· ';
      5: s := s + 'Ê' + ' Å‰Ã«Â ';
      6: s := s + 'Ê' + ' ‘’  ';
      7: s := s + 'Ê' + ' Â› «œ ';
      8: s := s + 'Ê' + ' Â‘ «œ ';
      9: s := s + 'Ê' + ' ‰Êœ ';
   end;

   if h[2]<>1 then
      case h[3] of
         1: s := s + 'Ê' + ' Ìﬂ ';
         2: s := s + 'Ê' + ' œÊ ';
         3: s := s + 'Ê' + ' ”Â ';
         4: s := s + 'Ê' + ' çÂ«— ';
         5: s := s + 'Ê' + ' Å‰Ã ';
         6: s := s + 'Ê' + ' ‘‘ ';
         7: s := s + 'Ê' + ' Â›  ';
         8: s := s + 'Ê' + ' Â‘  ';
         9: s := s + 'Ê' + ' ‰Â ';
      end;
   Three := s;
end;

// «»⁄  »œÌ· ⁄œœ »Â Õ—Ê›
Function AdadBeHorof(number:int64):string;
var
    flag:boolean;
    s,u:string;
    i,l:byte;
    k:array[1..5]of longint;
begin
   if (number=0) then
   begin
      AdadBeHorof:='’›—';
      Exit;
   end
     else
        str(number,s);
   l:=length(s);
   if(l<=15)then
   begin
      for i:=1 to 15-l do
          s:='0'+s;
      for i:=1 to trunc((l/3)+0.99) do
      begin
        //ShowMessage(IntToStr(trunc((l/3)+0.99)));
        u:=copy(s,3*(5-i)+1,3);
        delete(s,3*(5-i)+1,3);
        K[5 - I + 1] :=strtoint(u);
      end;
      if(l>2)then
         flag:=false
      else
         flag:=true;
      s:='';
      for i:=1 to 5 do
         if (k[i]<>0)then
            case i of
               1:
                   s:=s+three(k[i])+'  —Ì·ÌÊ‰ ';
               2:
                   if (flag=false)then
                      s:=s+'Ê'+three(k[i])+' „Ì·Ì«—œ '
                   else
                   begin
                       s:=s+''+three(k[i])+' „Ì·Ì«—œ ';
                       flag:=true;
                   end;
               3:
                   if (flag=false)then
                      s:=s+'Ê'+three(k[i])+' „Ì·ÌÊ‰ '
                   else
                   begin
                     s:=s+''+three(k[i])+' „Ì·ÌÊ‰ ';
                     flag:=true;
                   end;
               4:
                     if (flag=false)then
                      s:=s+'Ê'+three(k[i])+' Â“«— '
                   else
                   begin
                       s:=s+''+three(k[i])+' Â“«— ';
                       flag:=true;
                   end;
               5:
                     if (flag=false)then
                        s:=s+'Ê'+three(k[i])
                     else
                        s:=s+three(k[i]);
                   else
                   begin
                     s:=s+''+three(k[i]);
                     flag:=true;
                   end;
            end;
      trimright(s);
      trimleft(s);
      l:=length(s);
      for i:=1 to 10 do
         if (s[i]<>'Ê')and(s[i]<>' ')then
            break
         else
            s[i]:=' ';
      for i:=1 to l do
         if s[i]='Ê'then
            if s[i]=s[i+1] then
               s[i]:=' ';
   end
      else
      begin
         S:='................⁄œœ »”Ì«— »“—ê «” ';
      end;
   AdadBeHorof:=s;
end;


//Query  «»⁄ Õ–› ‘—Êÿ «“
//Qry_DeleteWhere(QrPhone);
Function Qry_DeleteWhere(MyQry:TAdoQuery) : Boolean;
Var
   Tmpstr : String ;
   P1,P2 : integer;
begin
   Result := False;
   Tmpstr := MyQry.SQL.Text ;
   P1 := Pos('WHERE ', UpperCase(Tmpstr));
   P2 := Pos('(1=1)' , UpperCase(Tmpstr));

   if  ( P1>0 )And( P2>0 ) then
   begin
      Delete(Tmpstr , P1+5 , P2-(P1+6) );
      MyQry.SQL.Text:= Tmpstr ;
      Result := True;
   end
      else
         Showmessage('Not Found => (1=1)');
end;


//Ì«› ‰  ⁄œ«œ ò·„«  „ÊÃÊœ œ— Ìò —‘ Â
//I:= TextCount('WHERE ',MyQry.SQL.Text);
Function Txt_Count(aFindText,aText:String):Integer;
Var
   I : Byte;
   P : integer;
   S : String;
begin
   I:=0;
   P:=0;
   S := UpperCase(aText);
   P := Pos(UpperCase(aFindText),S);
   While P > 0 do
   begin
      I:=I+1;
      Delete(S,1,P+5);
      P := Pos(UpperCase(aFindText),S);
   end;
   Result := I;
end;

//Query  «»⁄ «÷«›Â ò—œ‰ ‘—ÿ »Â
//Qry_DeleteWhere(QrPhone);
//Qry_AddWhere(QrPhone,' (ED_TelGroup_Ref (=) or (in)'+ Qry_NullToZiro(IntToStr(DBLkCBFilter.KeyValue),False) +' ) '); //(1=1)
//Qry_AddWhere(DMReports.QrFilming,'(Fi.Filming_ID in ' + Qry_NullToZiro(DMFilming.QrFilmingPersonel_IDStr.AsString,True) +' ) ');}
Function Qry_AddWhere(MyQry:TAdoQuery ; MyAddWhereSt:string) : Boolean;
var
   I : Integer;
   QryStatus : Boolean;
   Tmpstr : String ;
begin
   Result := False;

   //Ì«› ‰  ⁄œ«œ ò·„«  „ÊÃÊœ œ— Ìò —‘ Â
   I:= Txt_Count('WHERE ',MyQry.SQL.Text);
   if I > 1 then
   begin
      ShowMessage('In Query Found '+IntToStr(I)+' "Where "');
      Exit;
   end;
   I := 0;

   QryStatus := MyQry.Active;
   Tmpstr := '';
   if MyQry.Active then
      MyQry.Close;
   if Trim(myAddWhereSt) = '' then
      exit ;
   Tmpstr := MyQry.SQL.Text ;
   i:= pos('WHERE ', UpperCase(Tmpstr));// WHERE (1=1)  «Ì‰ „ ‰ »«Ìœ œ— ﬂÊ∆—Ì ‰Ê‘ Â ‘Êœ
   if i>0 then
   begin
      insert(' '+myAddWhereSt + ' And ' ,Tmpstr,i+5);
      MyQry.SQL.Text:= Tmpstr ;
      Result := True;
   end
      else
         //ChangeWhereQuery(MyQry, myAddWhereSt);
         ShowMessage('Not Found => "Where "');

   if QryStatus then
      MyQry.Open;
end;


// DBGrid „À«·   ÃÂ  Õ—ﬂ  œ—»Ì‰ ” Ê‰Â«Ì ﬂ‰ —·
//«ê— »Â ¬Œ—Ì‰ —ﬂÊ—œ —”Ìœ Ê œ— ” Ê‰ ¬Œ— ﬁ—«— œ«‘  ⁄„· œ—Ã —ﬂÊ—œ ’Ê—  êÌ—œ Ê ” Ê‰ ‘„«—Â 2 ›⁄«· ‘Êœ
{ if (Key=Vk_Return)and(Shift=[])then
     DBGrid_SelectNextCol(DBGrid1 , True , 0);  }  //OnKeyDown
Procedure DBGrid_SelectNextCol(aDBGrid:TDBGrid;AppendORNext:Boolean=True;DBGFirstColIndex:Integer=0;Key:Word=Vk_Return;Shift:TShiftState=[]);
begin
   // Enter Õ—ﬂ  »Ì‰ ” Ê‰Â« »« ﬂ·Ìœ
   if (Key=Vk_Return)and(Shift=[])then
   begin
      if ADBGrid.Columns.Grid.SelectedIndex+1 < ADBGrid.Columns.Count then
         ADBGrid.Columns.Grid.SelectedIndex := ADBGrid.Columns.Grid.SelectedIndex + 1
      else
         begin
            ADBGrid.Columns.Grid.SelectedIndex := DBGFirstColIndex;
            if AppendORNext then   //Append=True   Next=False
               ADBGrid.DataSource.DataSet.Append
            else
               ADBGrid.DataSource.DataSet.Next;
         end;
   end;

   //---
   {if (Key=Vk_Return)and(ssCtrl in Shift)then
   begin
      SelectNext(ActiveControl,True,True);
      //SelectNext(GetParentForm(ADBGrid).ActiveControl,True,True);
   end;
   }
end;

{Ranjbar}
//TreeView Ã” ÃÊ Ê ›ÊﬂÊ” —ÊÌ ¬Ì „ ﬂ‰ —·
//„À«·  TreeView_FindItem(FromOrganizationsTree,FromOrgID.AsInteger);
Procedure TreeView_FindItem(aTreeView:TTreeView;aItemID:Integer);
Var
   I : Integer;
begin
   if not(aTreeView.Enabled) And not(aTreeView.Visible) then
      Exit;
   aTreeView.SetFocus;
   aTreeView.FullExpand;
   For I:=0 to aTreeView.Items.Count-1 do
      if Integer(aTreeView.Items[I].Data^) = aItemID then
      begin
         aTreeView.Items[I].Selected := True;
         Break;
      end;
end;
//---


{Ranjbar ÅÌœ« Ê Õ–› ﬂ—œ‰ ›«Ì·
„À«·  File_FindAndDelete(_TempPath,'Temp*.doc');
„À«·  File_FindAndDelete(_TempPath,'*.*');}
procedure File_FindAndDelete(aFilePath,aFileName:String);
Var
   SrRec : TSearchRec;
   R : Integer;
begin
   R := FindFirst(aFilePath+'\'+ aFileName , FaAnyfile, SrRec);
   while R = 0 do //0: ÅÌœ« ﬂ—œ‰ ›«Ì·
   begin
      DeleteFile(pChar(aFilePath + '\' + SrRec.Name));
      R := FindNext(SrRec);
   end;
   Sysutils.FindClose(SrRec);
end;

//SMS  «»⁄ «—”«·
Function SendSMS(DeviceName,Recipient,PinCode,Data:string;var aMessages:String ):Boolean;
{var
   vt:OleVariant;
   strMessageRef:string;
   objGSMprotocol:SmsProtocolGsm;
   objSMSmessage:SmsMessage;
   objConstants:SmsConstants;
   objDeliveryStatus:SmsDeliveryStatus;}
begin
{   Result:=False;

   CoInitialize(nil);
   objSMSmessage := TSmsMessage.Create(nil).DefaultInterface;
   objConstants := TSmsConstants.Create(nil).DefaultInterface;
   objGSMprotocol := TSmsProtocolGsm.Create(nil).DefaultInterface;

   IF Recipient[1]='0' THEN
      Recipient:='+98'+copy(Recipient,2,length(Recipient)-1)
   else
      if Recipient[1]<>'+' then
         Recipient:='+98'+Recipient;

   objGsmProtocol.Device:=DeviceName;
   if (PinCode <> '')then
   begin
      objGsmProtocol.EnterPin(PinCode);
      aMessages:= 'EnterPin, result: ' + IntToStr(objGsmProtocol.LastError) + ' (' + objGsmProtocol.GetErrorDescription(objGsmProtocol.LastError) + ')';
   end;
   objSmsMessage.Recipient := Recipient;
   objSmsMessage.Format := objConstants.asMESSAGEFORMAT_TEXT;
   objSmsMessage.Data := Data;

   vt:=objSMSmessage;
   objGSMprotocol.Send(vt);

   aMessages:=aMessages+ #10#13'Send, result: ' + IntToStr(objGsmProtocol.LastError) + ' (' + objGsmProtocol.GetErrorDescription(objGsmProtocol.LastError) + ')';

   Result:=objGsmProtocol.LastError=0;
   }
end;

//»œ”  ¬Ê—œ‰ ‰«„ ﬂ«„ÅÌÊ — ”—Ê—
//ComputerName := Srv_GetSrvCumputerName(YeganehConnection);
Function Srv_GetSrvCumputerName(aADOConnection:TADOConnection):String;
begin
   Result := Qry_GetResult('Select ServerProperty(''MachineName'')As SrvComputerName',aADOConnection);
end;


//Ranjbar   //uses ActiveX, ShlObj
//»œ”  ¬Ê—œ‰ „”Ì— «‰Ê«⁄ ÅÊ‘Â Â«Ì ÊÌ‰œÊ“
//„À«· : Win_GetAllDir(Form1.Handle,CSIDL_HISTORY);
Function Win_GetAllDir(aHandle:Hwnd;aFolderName:Integer):String;
var
   Allocator: IMalloc;
   SpecialDir: PItemIdList;
   FBuf: array[0..MAX_PATH] of Char;
   PerDir: string;
begin
   if SHGetMalloc(Allocator) = NOERROR then
   begin
     SHGetSpecialFolderLocation(ahandle, CSIDL_STARTUP, SpecialDir);//CSIDL_HISTORY
     SHGetPathFromIDList(SpecialDir, @FBuf[0]);
     Allocator.Free(SpecialDir);
     Result := string(FBuf);
   end;

   {CSIDL_DESKTOP,  CSIDL_INTERNET,  CSIDL_PROGRAMS,  CSIDL_CONTROLS,  CSIDL_PRINTERS
   CSIDL_PERSONAL,  CSIDL_FAVORITES,  CSIDL_STARTUP,  CSIDL_RECENT,  CSIDL_SENDTO,
   CSIDL_BITBUCKET,  CSIDL_STARTMENU,  CSIDL_DESKTOPDIRECTORY,  CSIDL_DRIVES,
   CSIDL_NETWORK,  CSIDL_NETHOOD,  CSIDL_FONTS,  CSIDL_TEMPLATES,  CSIDL_COMMON_STARTMENU,
   CSIDL_COMMON_PROGRAMS,  CSIDL_COMMON_STARTUP,  CSIDL_COMMON_DESKTOPDIRECTORY,
   CSIDL_APPDATA,  CSIDL_PRINTHOOD,  CSIDL_ALTSTARTUP,  CSIDL_COMMON_ALTSTARTUP,
   CSIDL_COMMON_FAVORITES,  CSIDL_INTERNET_CACHE,  CSIDL_COOKIES,  CSIDL_HISTORY   }
end;


end.



