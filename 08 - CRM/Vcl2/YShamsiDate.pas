unit YShamsiDate;

interface

uses Forms,DateUtils,SysUtils,classes,Graphics,windows,dialogs ,
     ActiveX, AXmsCtrl_TLB,
     Controls,Menus, frxClass, frxDBSet, ExtCtrls, DBCtrls ,
     DB, ADODB, CheckLst, YchecklistBox, StdCtrls, Buttons,StrUtils
     ,TlHelp32, ComCtrls , DBGrids,TINYLib_TLB , DBTreeView ,Registry,Shellapi,ZipForge,sdx ,
     IdMessage,IdGlobal,IdSSLOpenSSL, IdBaseComponent, IdComponent, IdTCPConnection,IdTCPClient,
     IdMessageClient, IdSMTP,winsock;


{Ranjbar}
Type
   TReportType = (rtShow , rtPrint , rtDesign);
   THackDBNavigator = class(TDBNavigator);
   TDoZipType = (dtZip,dtUnZip);
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
function isValidDate(var s:string):boolean;
FUNCTION Application_Is_Run(appName:String):boolean;
function CommaSeperate(s:string):string; //860613m

procedure SetWords(s:string;delimeter:char;var  Items:TStrings);
function IsDate(today,s:string;var FromDate,ToDate:string):boolean;
Function is_integer(s:string):boolean;
function setPass(S_In:string):string;
function Replace(s,old,new:widestring):widestring;
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
Function ReplaceKaf(S:String):String;
function Locked(inStr: string; isLocked: Boolean): string;


{Ranjbar}
Function ShowMyMessage(Titile , Msg: String;
                       Const MsgDlgBtn: TMsgDlgButtons = mbYesNoCancel;
                       Const aMsgDlgType: TMsgDlgType = mtConfirmation): Integer;
Procedure Form_Animate(aForm:TForm;aAniTime:Integer=250);
Procedure DBNav_Setup(const Navigator: TDBNavigator);
Procedure Cursor_SetPos(aForm:TForm;Sender:TObject;aPopupMenu:TPopupMenu);

Procedure Rep_CorrectDesign(aFileName:String);
Procedure Rep_LoadFile(afrxReport:TfrxReport;aFileName:String);
Procedure Rep_Show(afrxReport:TfrxReport;ReportType:TReportType);

Function File_GetFilePath(aFileName:String):String;
Function File_GetFileName(aFileName:String):String;
Function File_GetFileExt(aFileName:String):String;

Function Qry_GetResult(aQueryText:String;aADOConnection:TADOConnection):String;
Function Time_GetTime(aAdoConnection:TADOConnection;HaveSecend:Boolean=False):String;
Procedure IFFieldIsEmpty(AFieldName:TField;aFieldDisPlayLabel:String);
Procedure ChLB_SelectItemsFromStr(aCheckListBox:TYchecklistBox ; aKeyFldVal:String;y:boolean);
Procedure ChLB_SelectItemsFromTable(var aCheckListBox:TYchecklistBox ; aQry:TADOQuery ; aIDFieldName:ShortString);

Procedure Keyboard_Farsi;
Procedure Keyboard_English;

Procedure Form_SetShortCut(AForm:TForm;ADBNavigator:TDBNavigator;SBSearch,SBReport:TSpeedButton;
                          Sender: TObject; var Key: Word ; Shift: TShiftState);
Function Email_IsCorrect(aEmail: String): Boolean;
Function IsDigit(Key : Char):Boolean;
procedure openURL(Url: string);

Procedure BidiModeToRight(aControl:TWinControl);
Procedure TypeNumber(Key:Char);
Function PageControl_SetTabSheet(aPageControl:TPageControl;aTabSheetName:String):Integer;
function Input_Value(const ACaption, APrompt: string; aDefaultValue: string): String;

Function File_IsInUse(aFileName:String):Boolean; //Txt,Doc ������� ���� ������� ��� ������ ������� ��� ���
Function File_ISRun(aExeFileName: string):Boolean;//��� ���� ������� ������ ������� ���
procedure File_FindAndDelete(aFilePath,aFileName:String);

Procedure Keyboard_Simulation(aControl:TWinControl ; aKeyboardKey:Byte ;
          aHasCtrlKey:Boolean=False; aHasAltKey:Boolean=False;aHasShiftKey:Boolean=False);
Function Keyboard_TypeWithDivider(aText:String ; var aKey: Char ):String;

Function Email_GetAddress(aText:String):String;


Procedure DBGrid_LoadColumns(aFormName:String ; aDBGrid: TDBGrid);
Procedure DBGrid_SaveColumns(aFormName:String ; aDBGrid: TDBGrid);

Procedure Scripts_Run(aADOConnection:TADOConnection ; aVariableId:integer);

Function OCX_Register(aOCXFileName:String;aDestinationPath:String;OverWriteFile:Boolean):Boolean;
Function OCX_UnRegister(aOCXFileName:String):Boolean;

Function Win_GetSystemDir:String;

 
Procedure DBTree_SetCheckState(aTreeView:TDBTreeView; aSelectedStateIndex,aUnSelectedStateIndex:Byte;count:integer);

Function Date_CheckTwoDate(aDateFrom,aDateTo:String):Boolean;
function Date_DayName(aFarsiDate:String):String;
function Date_DayNumber(aFarsiDate:String):Integer;
function Date_ShToMi(aFarsiDate:String):TDateTime;
Function Qry_SetResult(aQueryText:String;aADOConnection:TADOConnection):Boolean;
Function File_ZipOrUnZip(aSourceOrDescFolderPath , aZipFileNameAndPath :String  ;
         aZipOrUnZip:TDoZipType ; aFileType:String = '*.*' ; aZipPassword:String = ''):Boolean;
 


procedure Date_GetText(Sender: TField;var Text: String; DisplayText: Boolean);
procedure Date_SetText(Sender: TField;Const Text: String);


Function Txt_Del254(aText:String):String;
function GetIPFromHost(var HostName, IPaddr, WSAErr: string): Boolean;
Function SendSMS(DeviceName,Recipient,PinCode,Data:string;var aMessages:String ):Boolean;

const Months: array[1..12] of string=('�������','��������','�����','���'
  ,'�����','������','���','����','���','��','����','�����');

  FarsiDay: array[0..6]of string=
('����','�����','������','�� ����','��������','��� ����','����');


 implementation
uses math,u_c_process_list, ADOInt, TypInfo;
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
              ShowMessage('�Ԙ�� �� ����� �����'+e.Message);
          end;

         end;
         IdSMTP.Authenticate;
         IdSMTP.Send(IdMsgSend);
         Result := True;


      IdSMTP.Disconnect;
      Screen.Cursor := crDefault;
 //  End;
end;

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
begin
 my:=sy+621;
 difference:=ShamsiToInt(10,11)-1;

 if si>difference then
  begin
    mi:=si-difference;
    my:=my+1;
  end
   else
    mi:=365-difference+si;
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
 if m=12 then Result:=Result+ShamsiLeapYear(y);
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
 if m>=10 then result:=result+IntToStr(m)+'/' else result:=result+'0'+IntToStr(m)+'/';
 if d>=10 then result:=result+IntToStr(d) else result:=result+'0'+IntToStr(d);
end;

Function ShamsiString(date1 :Tdatetime):string ;
var t1,t2,t3:word;
mi ,sy ,sm ,sd ,i    ,  si ,my ,mm ,md ,Diff :integer;
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


function MiladiDateTime(s:string):TDateTime;
var my,mm,md,sy,sm,sd:integer;
begin
 ShamsiDeCodeDate(s,sy,sm,sd);
 Miladi(sy,sm,sd,my,mm,md);
 Result:=EncodeDate(my,mm,md)
end;


//����� ���� ����� �� �����
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

Function is_integer(s:string):boolean;
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
  for i:=0 to len-1 do a[i]:=char(ord(a[i])xor 13);
  end;
setPass:=string(A)
end;

function isValidDate(var s:string):boolean;
var y,m,d:integer;dd:TdateTime;
begin

 s:=Txt_Del254(s);
Result:=ShamsiDeCodeDate(s,y,m,d);
if Result then
  s:=ShamsiEnCodedate(y,m,d);

if y>1500 then
 begin
  try dd:=StrToDate(s); except Result:=False; end;
  s:=ShamsiString(dd);
 end;

 end;

function Replace( s,old,new:widestring):widestring;
var i: integer;
begin
if old=new then
begin
 Result:=s;
 exit;
end;
if old<>' ' then
 s:=trim(s);
  i:=pos(old,s);
  while i<>0 do
    begin
      s:=copy(s,1,i-1)+new+copy(s,i+length(old),length(s)-i-length(old)+2);
      i:=pos(old,s)
    end;
  Result:=s;
end;


 function IsDate(today,s:string;var FromDate,ToDate:string):boolean;
 var p: byte;

   {��� ���� � ����� ���� �� ���� � ����� �� ����� � ��� ����� � ����� ���� �� ���}
function changeTodate(s:string):boolean;
type datetypes=(ISmonth,ISweek,Isday,Notany);
  var y,m,d:integer;
  NumberOfDate:byte;
  items:Tstrings;
  Dtype:datetypes;
  IsCurrent:boolean;
function Current(s:string):byte;
begin
 if (s='����')or(s='����') then
  Result:=0
 else  if (s='�����') then
  Result:=1
 else Result:=2;

end;

function DateType(s:string):datetypes;
begin
 if s='���' then
  Result:=Isday
  else
 if s='����' then
  Result:=ISweek
  else
 if s='���' then
  Result:=ISmonth
  else
  Result:=Notany;
end;


function lettersToint(s:string):byte;
begin
 result:=0;
 if (s='1') or (s='�') then Result:=1;
 if (s='2') or (s='��') then Result:=2;
 if (s='3') or (s='��') then Result:=3;
 if (s='4') or (s='����') then Result:=4;
 if (s='5') or (s='���') then Result:=5;
 if (s='6') or (s='��') then Result:=6;
 if (s='7') or (s='���') then Result:=7;
 if (s='8') or (s='���') then Result:=8;
 if (s='9') or (s='��') then Result:=9;
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
       if (items[0]='�����') or (items[0]='����') then
         FromDate:=today else
       if (items[0]='�����') then
         begin
          FromDate:=ShamsiIncDate(today,0,0,-1);
          ToDate:=ShamsiIncDate(today,0,0,-1)
         end
       else if items[0]='�����' then
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
 p:=pos('-',s) ;
 if p<>0 then
  begin

   FromDate:=trim(Copy(s,1,p-1));
   ToDate:=trim(Copy(s,p+1,length(s)-p));
   if (todate='�����') or (todate='����') then
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


//�� ���� ���� �� ����� �� � ���� ���� �� ���
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
  a[1]:='��';a[2]:='��';a[3]:='��';a[4]:='����';a[5]:='���';
  a[6]:='��';a[7]:='���';a[8]:='���';a[9]:='��';a[10]:='��';
  a[11]:='�����';a[12]:='������';a[13]:='�����';a[14]:='������';
  a[15]:='������';a[16]:='������';a[17]:='����';a[18]:='����';
  a[19]:='�����';a[20]:='����';a[21]:='��';a[22]:='���';
  a[23]:='�����';a[24]:='���';a[25]:='�����';a[26]:='�����';
  a[27]:='���';a[28]:='��';a[29]:='�����';a[30]:='����';a[31]:='������';
  a[32]:='�����';a[33]:='����';a[34]:='�����';a[35]:='�����';a[36]:='����';
  a[37]:='����';a[38]:='������';a[39]:='�������';
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
        If F(m)='' Then Bil:=F(m -(m Mod 10))+' � '+F(m Mod 10)
            Else
             Bil:=F(m);

     End
     Else
     Begin
          if f(m)='' Then
             Bil:=F(m -(m mod 100))+ ' � '+Bil(IntToStr(m mod 100))
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
       bill:='���';
       exit;
     End;

     if n<0 then
      Begin
       n:=-n;
       tt:=' ���� ';
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
          x:=Bil(m)+' '+F(Trunc(Power(10,3*i-3)))+'  � ' + ' '+x;
     End;
     if copy(x,length(x)-2,2)='� ' Then Delete(x,length(x)-2,2);
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
  if j=50 then p2:='���' else
  if j mod 10 =0 then
    p2:= bill(j div 10)+' ��� ' else
  p2:=bill(j)+' ��� '
 end
else
 p2:=' ����';

 if (p1<>'') and (j>0)  then
   Result:=p1+' � '+p2
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
  s:=Replace(s,'�','YYY');
  s:=Replace(s,'�','YYY');
  Result:=Replace(s,'YYY','[��]');
End;

{Ranjbar}
//uses MyUtil,Dialogs,Controls;
//if ShowMyMessage('�����','',mbOKCancel,mtWarning)=mrok then   //[mbYes]=6 [mbNo]=7 mbOk  Ok=1 cancel=2
//ShowMyMessage('�����','',[mbOK],mtInformation);
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
      TButton(Controls[2]).Caption := '���'
    else if MsgDlgBtn = [mbNo] then
      TButton(Controls[2]).Caption := '���'
    else if MsgDlgBtn = [mbOK] then
      TButton(Controls[2]).Caption := '�����'
    else if (MsgDlgBtn = [mbCancel]) or (MsgDlgBtn = [mbAbort]) then
      TButton(Controls[2]).Caption := '������'
    else if MsgDlgBtn = [mbRetry] then
      TButton(Controls[2]).Caption := '��� ����'
    else if MsgDlgBtn = [mbIgnore] then
      TButton(Controls[2]).Caption := '������'
    else if MsgDlgBtn = [mbAll] then
      TButton(Controls[3]).Caption := '���'
    else if MsgDlgBtn = [mbNoToAll] then
      TButton(Controls[3]).Caption := '��� ���'
    else if MsgDlgBtn = [mbYesToAll] then
      TButton(Controls[3]).Caption := '��� ���'
    else if MsgDlgBtn = [mbHelp] then
      TButton(Controls[3]).Caption := '������'
    else if MsgDlgBtn = mbYesNoCancel then
    begin
      TButton(Controls[2]).TabOrder := 0;
      TButton(Controls[2]).Caption := '���';
      TButton(Controls[3]).Caption := '���';
      TButton(Controls[4]).Caption := '������';
    end
    else if MsgDlgBtn = mbOKCancel then
    begin
      TButton(Controls[2]).TabOrder := 0;
      TButton(Controls[2]).Caption := '�����';
      TButton(Controls[3]).Caption := '������';
    end
    else if MsgDlgBtn = mbAbortRetryIgnore then
    begin
      TButton(Controls[2]).TabOrder := 0;
      TButton(Controls[2]).Caption := '������';
      TButton(Controls[3]).Caption := '��� ����';
      TButton(Controls[4]).Caption := '������';
    end
    else if MsgDlgBtn = mbAbortIgnore then
    begin
      TButton(Controls[2]).TabOrder := 0;
      TButton(Controls[2]).Caption := '������';
      TButton(Controls[3]).Caption := '������';
    end;
    Caption := Titile;
    Result := ShowModal;
    Free;
  end;
end;

{Ranjbar}
//����� ����� ����� �� �������
//Form_Animate(Self,Setting_GetValue('AnimateTime',dtInteger,250));
//   ���: ���� ��� ��� �� ��� ���� ������� ���
//���: ���� ������� ����� ���� �� 100 ����
Procedure Form_Animate(aForm:TForm;aAniTime:Integer=250);
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
          AnimateWindow(aForm.Handle , aAniTime , AW_HOR_POSITIVE or AW_HOR_NEGATIVE or AW_CENTER);
          AnimateWindow(aForm.Handle , aAniTime-50, AW_HOR_POSITIVE or AW_HOR_NEGATIVE or AW_Hide);
       end;
     2:begin
          AnimateWindow(aForm.Handle , aAniTime , AW_HOR_POSITIVE or AW_HOR_NEGATIVE or AW_SLIDE);
          AnimateWindow(aForm.Handle , aAniTime-50, AW_HOR_NEGATIVE or AW_HOR_POSITIVE or AW_Hide);
       end;
     3:begin
          AnimateWindow(aForm.Handle , aAniTime , AW_VER_NEGATIVE or AW_SLIDE);
          AnimateWindow(aForm.Handle , aAniTime-50, AW_VER_POSITIVE or AW_Hide);
       end;
     4:begin
          AnimateWindow(aForm.Handle , aAniTime , AW_HOR_POSITIVE or AW_VER_NEGATIVE or AW_SLIDE);
          AnimateWindow(aForm.Handle , aAniTime-50, AW_HOR_POSITIVE or AW_VER_POSITIVE or AW_Hide);
       end;
     5:begin
          AnimateWindow(aForm.Handle , aAniTime , AW_HOR_POSITIVE or AW_HOR_NEGATIVE or AW_CENTER) ;
          AnimateWindow(aForm.Handle , aAniTime-50, AW_HOR_POSITIVE or AW_HOR_NEGATIVE or AW_Hide) ;
       end;
     6:begin
          AnimateWindow(aForm.Handle , aAniTime , AW_HOR_POSITIVE or AW_VER_NEGATIVE or AW_SLIDE);
          AnimateWindow(aForm.Handle , aAniTime-50, AW_HOR_POSITIVE or AW_VER_POSITIVE or AW_Hide);
       end;
     7:begin
          AnimateWindow(aForm.Handle , aAniTime , AW_HOR_NEGATIVE or AW_VER_NEGATIVE or AW_SLIDE);
          AnimateWindow(aForm.Handle , aAniTime-50 , AW_HOR_POSITIVE or AW_VER_POSITIVE or AW_Hide);
       end;
     8:begin
          AnimateWindow(aForm.Handle , aAniTime , AW_VER_NEGATIVE or AW_HOR_NEGATIVE or AW_SLIDE);
          AnimateWindow(aForm.Handle , aAniTime-50, AW_VER_POSITIVE or AW_HOR_POSITIVE or AW_Hide);
       end;
     9:begin
          AnimateWindow(aForm.Handle , aAniTime , AW_HOR_POSITIVE or AW_HOR_NEGATIVE or AW_CENTER) ;
          AnimateWindow(aForm.Handle , aAniTime-50, AW_HOR_POSITIVE or AW_HOR_NEGATIVE or AW_Hide) ;
       end;
     {10:begin
          AnimateWindow(aForm.Handle , aAniTime , AW_HOR_POSITIVE or AW_VER_NEGATIVE or AW_Blend);
          AnimateWindow(aForm.Handle , aAniTime-50, AW_HOR_POSITIVE or AW_VER_POSITIVE or AW_Hide);
       end;
     11:begin
          AnimateWindow(aForm.Handle , aAniTime , AW_HOR_POSITIVE or AW_VER_POSITIVE or AW_Blend);
          AnimateWindow(aForm.Handle , aAniTime-50, AW_HOR_NEGATIVE or AW_VER_NEGATIVE or AW_Hide);
       end;}
    end;
end;

{Ranjbar}
//��� ���� ���� �� �� ������ ����� ���� ��� ���� �� ���� ���� ���� ��� �� ��� ����
//Cursor_SetPos(Self,SBEmkanat,PopupMenu1);
//���� ��� ���� ���� ��� ��� ������ Nil �� ������ ������� ��� �����
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
   //if MBaseForm.messageShowString('��� ������ �� ����� ��� ��� ����� �� ���� ��� ��� ��� ���Ͽ',true) then
   if ShowMyMessage('�����','��� ������ �� ����� ��� ��� ����� �� ���� ��� ��� ��� ���Ͽ',mbOKCancel,mtInformation) = mrOK then
      if FileExists(FN) then
         if DeleteFile(pchar(FN)) then
            //MBaseForm.messageShowString('��� ����� ����� ����� ��',False)
            ShowMyMessage('�����','��� ����� ����� ����� ��',[mbOK],mtInformation);
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
//DBNavigator  ����� ���� �����
Procedure DBNav_Setup(const Navigator: TDBNavigator);
Const
   FarsiCaptions : array[TNavigateBtn] of string =
              ('�����', '����' , '����' , '�����'  , '����' ,
               '���'  , '������', '�����', '������' , '�������');
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
            Glyph.LoadFromResourceName(HInstance,'DBNav'+IntToStr(I));
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
   //�� ������� �� ����� ���
  For I:=0 to 9 do
       if Navigator.Controls[I].Visible then
          TNavButton(Navigator.Controls[I]).Font.Color := clBlack;}
end;

{Ranjbar}
//���� ����� ��� ���� ����
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
//���� ����� ��� � ����� ����
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

//���� ����� ����� ����
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
//���� ����� ���� ����
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

{Ranjbar}
//�� ������� ���� ���� ��� ���� ���� �� ����� ����� �� ���
//IFFieldIsEmpty(QrEnterDataEDName,'�����');
Procedure IFFieldIsEmpty(aFieldName:TField;aFieldDisPlayLabel:String);
begin
   if (Trim(aFieldName.AsString) = '')or(aFieldName.IsNull) then
   begin
      //MBaseForm.messageShowString('���� ����  " '+aFieldDisPlayLabel+' " �� ����� ��� ������',False);
      ShowMyMessage('�����','���� ����  " '+aFieldDisPlayLabel+' " �� ����� ��� ������',[mbOK],mtInformation);
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
      Delete( aKeyFldVal , 1 , Pos(',',aKeyFldVal) );
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

//����� ���� �����
Procedure Keyboard_Farsi;
begin
   LoadKeyBoardLayout('00000429', KLF_ACTIVATE);  // �����
end;

//������ ���� �����
Procedure Keyboard_English;
begin
   LoadKeyBoardLayout('00000409', KLF_ACTIVATE);  // ������
end;


//����� OnKeyDown ���� ���� ���� ��� ������ �� ��� �� ������
//Form_SetShortCut(Self,DBNavigator1,BitBtn2,BitBtn3,Sender,Key,Shift);
//Form_SetShortCut(Self,Nil,Nil,Nil,Sender,Key,Shift);
Procedure Form_SetShortCut(AForm:TForm;ADBNavigator:TDBNavigator;SBSearch,SBReport:TSpeedButton;
                          Sender: TObject; var Key: Word ; Shift: TShiftState);
begin
   if Shift=[] then
   begin
      {if Key in [Vk_F4 , Vk_F5 , Vk_F6 , Vk_F8] then
         TDBNavigator(ADBNavigator).SetFocus;} //������� ����
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
         TDBNavigator(ADBNavigator).SetFocus;} //������� ����
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
     //DBNav_Refresh(ADBNavigator); //������ ��� �����
end;

//�� ���� ���� �����
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

procedure openURL(Url: string);
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
   SMsgDlgOK = '�����';
   SMsgDlgCancel = '������';
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
        ModalResult := mrOk;    //�����
        Default := True;
        SetBounds(MulDiv(92, DialogUnits.X, 4), Edit.Top + Edit.Height + 15,ButtonWidth, ButtonHeight);
      end;
      with TButton.Create(Form) do
      begin
        Parent := Form;
        Caption := SMsgDlgCancel;
        ModalResult := mrCancel; //������
        Cancel := True;

        SetBounds(MulDiv(38, DialogUnits.X, 4), ButtonTop, ButtonWidth,ButtonHeight);
        Form.ClientHeight := Top + Height + 13;
      end;
      Prompt.Width := Edit.Width;
      LoadKeyBoardLayout('00000429', KLF_ACTIVATE);  // ���� �����
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

{���� ����� ���� ������ ���� ��� �� ��� ���� ������ �� ���
File_IsInUse ���� ������� ��� ������ ������ ����� � ���� ��� �� ��� ���� ������� ���
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

procedure File_FindAndDelete(aFilePath,aFileName:String);
Var
   SRInfo : TSearchRec;
   R : Integer;
begin
   R := FindFirst(aFilePath + aFileName , FaAnyfile, SRInfo);
   while R = 0 do //0: Found File
   begin
      DeleteFile(pChar(aFilePath + SRInfo.Name));
      R := FindNext(SRInfo);
   end;
   sysutils.FindClose(SRInfo);
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

   //��� ���� ������
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
         if LeftStr(aText,1) = ' ' then   //ǐ� ����� ������� � ������� ����� ��� ����
            Result := aText
         else
            Result := aKey + aText
      end
         else
            begin
               if LeftStr(aText,1) = ' ' then  //ǐ� ����� ������� � ������� ����� ��� ����
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


{ �����
��� ���� ��� ����� �� �� ����� ���� ���� ����� �� ���� �� ����� �����
Zip ���� ����   : if File_ZipOrUnZip('C:\B' , 'C:\B\test.zip' ,dtZip, '*.*' ) then
UnZip ���� ���� : if File_ZipOrUnZip('C:\B\b' , 'C:\B\b\test.zip' ,dtUnZip, '*.*' ) then
���� �� ���� Zip ����� ����  :
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
            FileName := aZipFileNameAndPath; //'C:\b\test.zip';  //��� ���� �����
            Password := aZipPassword;
            Options.OverwriteMode := omAlways;

            //Zip ����� ���
            if aZipOrUnZip = dtZip then
            begin
               OpenArchive(fmCreate);     // ���� �� ���� ����� ����
               BaseDir := aSourceOrDescFolderPath; // ���� ������� ���� ���� ��� ����� ���
               AddFiles(aFileType);       // ��� ������� �����
            end;

            //UnZip ����� ���
            if aZipOrUnZip = dtUnZip then
            begin
               OpenArchive(fmOpenRead);
               BaseDir := aSourceOrDescFolderPath;
               //if IsFilePasswordValid(aZipFileNameAndPath,aZipPassword) then
               ExtractFiles(aFileType);   // Unzip ����� ���
               Application.ProcessMessages;
            end;

            //TestFiles(aFileType); //��� ���� ����� ���
            Result := True;
         Except
            Result := False;
            CloseArchive; // ���� �����
         End;
      Finally
         CloseArchive; // ���� �����
         ZipForge.Free;
      End;
   end;
end;



{DBGrid ��ѐ���� ������� �����
����  :  DBGrid_LoadColumns(Self.Name,lettersDbGrid); }
Procedure DBGrid_LoadColumns(aFormName:String ; aDBGrid: TDBGrid );
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
end;

 
Procedure DBGrid_SaveColumns(aFormName:String ; aDBGrid: TDBGrid );
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
���� ���� ���� ����� ��
���� :  Scripts_Run(dm.YeganehConnection , _Userid , 50); }
Procedure Scripts_Run(aADOConnection:TADOConnection ; aVariableId:integer);
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
begin
   ScrFileName := ExtractFilePath(Application.ExeName) +'Scripts\Scripts.TXT';
   if FileExists(ScrFileName) then
      DeleteFile(pchar(ScrFileName));

   ZipFilePath := ExtractFilePath(Application.ExeName) +'Scripts';
   File_ZipOrUnZip(ZipFilePath,ZipFilePath+'\Scripts.Zip',dtUnZip,'*.*','Yeganeh123');
   Application.ProcessMessages;

   ADOCommand := TADOCommand.Create(Nil);
   ADOCommand.Connection := aADOConnection;
   ADOCommand.CommandTimeout:=1200; //20 �����

   if FileExists(ScrFileName) then
   begin
         Value := Qry_GetResult('Select Value from Settings where userid= -1 And variableId = '+ IntToStr(aVariableId) ,aADOConnection);
         if Value = '' then
         begin
            Qry_SetResult('Insert into Settings(UserID,VariableID,Value) Values(-1 , ' + IntToStr(aVariableId) + ',0)'  ,aADOConnection);//������
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
            ShowMessage('����� ������ ���� ������� �� ����� ���� ���� ������ ����� ���. ���� ����� ������');
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
               //����� �������
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
                            ShowMessage(E.Message+#13#13+'��� �� ����� ������� ��� : '+ #13#10 + SubCommand.Text);
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
                                IntToStr(aVariableId) + ' And UserID = -1 ', aADOConnection ); //������
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

//-----------------------------------------------------------

{Ranjbar
���� ����� ��� ������ � ���� ��
����    Showmessage(OperatingSystemDescription); }
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


//OCX ��� � ������ ���� � ����
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

//OCX �� ������ ���� ���� �� ����
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

Function Win_GetSystemDir:String;
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

   if aServerIP <> '' then
   begin
       aTiny.ServerIP := aServerIP;
       aTiny.NetWorkINIT:=true;
       aTiny.UserPassWord := '302'+'C3'+'F10'+'B0'+'CC95'+'D1'+'B75983'+'FD3'+'C'+'0376'+'E';

       if aTiny.TinyErrCode <> 0 then
          Exit;

   end
      else
      begin
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
      Showmessage('SpecialID '+'��� �'+'���'+'�� ����'+'��');
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

procedure DBTree_SetCheckState(aTreeView:TDBTreeView ; aSelectedStateIndex,aUnSelectedStateIndex:Byte;count:integer);
Var
   I,J,StateIndex,LastChildAbIndex:Integer;
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
  end;
end;
//---

{Ranjbar 88.05.16
�� ���� �� ����� �� 1388/01/01 �� 1388/02/01
���� : if not Date_CheckTwoDate(DateFrom.Text,DateTo.Text) then //�� ���� ��� ����� ������� . ��� ���� ���� �� ����� ������
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
      ShowMessage('����� ����� ������ ������ ���� ����� ������');
      Result := False;
      Exit;
   end;

   CheckDate := aDateTo;
   if not isValidDate(CheckDate) then
   begin
      ShowMessage('����� ����� ������ ������ ���� ����� ������');
      Result := False;
      Exit;
   end;

   if aDateFrom > aDateTo then
   begin
      ShowMessage('����� ����� �� ����� ����� ��ѐ�� ������ ���� ����� ������');
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
         QrResult := TAdoQuery.Create(Nil);
         QrResult.Connection := aADOConnection;
         QrResult.SQL.Text := aQueryText;
         QrResult.ExecSQL;
         Result := True;
      Except
         Result := False;
      End;
      QrResult.Close;
end;


{Ranjbar
����� ����� ����� �� ������}
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
   DT := Date_ShToMi(aFarsiDate);{����� ����� ����� �� ������}
    Result := DayOfWeek(DT);
   //---
end;

{Ranjbar
���� ����� ��� ������ ����}
function Date_DayName(aFarsiDate:String):String;
Const
   FarsiWeekName: Array[1..7] of ShortString =
   ('������','������' ,'�� ����' ,'���� ����','�������','����','����');
var
   DT : TDateTime;
begin
   DT := Date_ShToMi(aFarsiDate);{����� ����� ����� �� ������}
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

function GetIPFromHost
(var HostName, IPaddr, WSAErr: string): Boolean;
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


function MiladiMString(mdate:String):String;
var sy,sm,sd , my,mm,md:integer ;
begin
ShamsiDeCodeDate(mdate,sy,sm,sd);

  Miladi(sy,sm,sd, my,mm,md);
  Result:=IntToStr(my)+'/'+IntToStr(mm)+'/'+IntToStr(md);
end;


Function  SendSMS(DeviceName,Recipient,PinCode,Data:string;var aMessages:String ):Boolean;

var
 vt:OleVariant;
 strMessageRef:string;
 objGSMprotocol:SmsProtocolGsm;
 objSMSmessage:SmsMessage;
 objConstants:SmsConstants;
 objDeliveryStatus:SmsDeliveryStatus;

begin

Result:=False;

 CoInitialize(nil);
objSMSmessage := TSmsMessage.Create(nil).DefaultInterface;
 objConstants:= TSmsConstants.Create(nil).DefaultInterface;
 objGSMprotocol := TSmsProtocolGsm.Create(nil).DefaultInterface;

IF Recipient[1]='0' THEN
  Recipient:='+98'+copy(Recipient,2,length(Recipient)-1)
else
 if  Recipient[1]<>'+' then
 Recipient:='+98'+Recipient;
 
objGsmProtocol.Device:=DeviceName;
 if (PinCode <> '')then
  begin
    objGsmProtocol.EnterPin(PinCode);
     aMessages:= 'EnterPin, result: ' + IntToStr(objGsmProtocol.LastError) + ' (' + objGsmProtocol.GetErrorDescription(objGsmProtocol.LastError) + ')';
  end;
 objSmsMessage.Recipient := Recipient;
 objSmsMessage.Format := objConstants.asMESSAGEFORMAT_TEXT;
 objSMSmessage.Sender:='�ј� ����';
 objSmsMessage.Data := Data;

 vt:=objSMSmessage;
 objGSMprotocol.Send(vt);
aMessages:=aMessages+ #10#13'Send, result: ' + IntToStr(objGsmProtocol.LastError) + ' (' + objGsmProtocol.GetErrorDescription(objGsmProtocol.LastError) + ')';

Result:=objGsmProtocol.LastError=0;
end;


end.

