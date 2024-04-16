unit YShamsiDate;

interface
uses DateUtils,SysUtils,classes,Graphics,windows,dialogs;
Function ShamsiLeapYear(y: integer):byte;
function MDayPerMonth(y,m:integer):Byte;
function MiladiToInt(y,m,d:integer):integer;
function ShamsiToInt(m,d:integer):integer;
procedure MiladiIntToShamsiInt(my,mi:integer;var sy,si:integer);
procedure ShamsiIntToMiladiInt(sy,si:integer;var my,mi:integer);
procedure Shamsi(my,mm,md: integer;var sy,sm,sd:integer);
procedure Miladi(sy,sm,sd:integer;var my,mm,md:integer);
function sdayPermonth(y,m:integer):integer;
function  ShamsiDeCodeDate(s:string;var y,m,d:integer):boolean;
function  ShamsiEnCodeDate(y,m,d:integer):string;
function ShamsiString(date1:TdateTime):String;
function ShamsiMString(mdate:String):String;
function MiladiDateTime(s:string):TDateTime;
function ShamsiIncDate(s:string;y,m,d:integer):string;
function ShamsidayInWeek(s:string):integer;
function ShamsidayInMonth(s:string):integer;
function ShamsiStartOfWeek(s:string):string;
function ShamsiStartOfMonth(s:string):string;
 FUNCTION ShamsiDateToInt(Sdate :string) :integer;
 FUNCTION ShamsiDateDiff(dateFrom ,dateTo:string ):integer;
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



const Months: array[1..12] of string=('›—Ê—œÌ‰','«—œÌ»Â‘ ','Œ—œ«œ',' Ì—'
  ,'„—œ«œ','‘Â—ÌÊ—','„Â—','¬»«‰','¬–—','œÌ','»Â„‰','«”›‰œ');

  FarsiDay: array[0..6]of string=
('‘‰»Â','Ìò‘‰»Â','œÊ‘‰»Â','”Â ‘‰»Â','çÂ«—‘‰»Â','Å‰Ã ‘‰»Â','Ã„⁄Â');


 implementation
uses math,u_c_process_list;
    var g_c_process_list: c_process_list= Nil;


function GetWinDirectory: String;
var
  WinDir: array [0..MAX_PATH-1] of char;
begin
  GetWindowsDirectory(WinDir, MAX_PATH);
  result := StrPas(WinDir);
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

 try
  y:=StrToInt(copy(s,1,i-1));
 except
  exit;
 end;
  Delete(s,1,i);

  i:=pos('/',s);
 try
  m:=StrToInt(copy(s,1,i-1));
  if (m>12) or (m<1) then exit;
 except
  exit;
 end;

  Delete(s,1,i);
 try
  d:=StrToInt(s);
  if (d>SDayPerMonth(y,m)) or (d<1) then exit;
 except
  exit;
 end;

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
 si:=mi-Diff ;
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
 Result:=((DayOfTheWeek(DT)) mod 7)+1;
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
var y,m,d:integer;
begin
 result:=true;
if ShamsiDeCodeDate(s,y,m,d) then s:=ShamsiEnCodedate(y,m,d) else Result:=false;
end;

function Replace( s,old,new:widestring):widestring;
var i: integer;
begin
if old<>' ' then
// s:=trim(s);
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

   {«Ì‰  «»⁄ Ìò ⁄»«—  —‘ Â «Ì Õ«ÊÌ Ìò  «—ÌŒ —« ê—› Â Ê „—“ Å«ÌÌ‰ Ê »«·«Ì ¬‰—« „Ì œÂœ}
function changeTodate(s:string):boolean;
type datetypes=(ISmonth,ISweek,Isday,Notany);
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
 end;

 if (p1<>'') and (p2<>'')  then
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
  var d1 ,d2 ,Y ,m ,d ,dif ,i :integer;
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

end.
