unit ShamsiDate;

interface
uses SysUtils,classes;
Function ShamsiLeapYear(y: word):byte;
function MDayPerMonth(y,m:word):Byte;
function MiladiToInt(y,m,d:word):word;
function ShamsiToInt(m,d:word):word;
procedure MiladiIntToShamsiInt(my,mi:word;var sy,si:word);
procedure ShamsiIntToMiladiInt(sy,si:word;var my,mi:word);
procedure Shamsi(my,mm,md: word;var sy,sm,sd:word);
procedure Miladi(sy,sm,sd:word;var my,mm,md:word);
function sdayPermonth(y,m:word):word;
function  ShamsiDeCodeDate(s:string;var y,m,d:word):boolean;
function  ShamsiEnCodeDate(y,m,d:word):string;
function ShamsiString(mdate:TdateTime):String;
function MiladiDateTime(s:string):TDateTime;
function ShamsiIncDate(s:string;y,m,d:integer):string;
function ShamsidayInWeek(s:string):word;
function ShamsidayInMonth(s:string):word;
function ShamsiStartOfWeek(s:string):string;
function ShamsiStartOfMonth(s:string):string;
function isValidDate(var s:string):boolean;

procedure Setwords(s:string;delimeter:char;var  Items:TStrings);
function IsDate(today,s:string;var FromDate,ToDate:string):boolean;
Function is_integer(s:string):boolean;
function setPass(S_In:string):string;
function YeganehTrim(s:string):string;



const Months: array[1..12] of string=('›—Ê—œÌ‰','«—œÌ»Â‘ ','Œ—œ«œ',' Ì—'
  ,'„—œ«œ','‘Â—ÌÊ—','„Â—','¬»«‰','¬–—','œÌ','»Â„‰','«”›‰œ');

  FarsiDay: array[0..6]of string=
('‘‰»Â','Ìò‘‰»Â','œÊ‘‰»Â','”Â ‘‰»Â','çÂ«—‘‰»Â','Å‰Ã ‘‰»Â','Ã„⁄Â');


 implementation

Function ShamsiLeapYear(y: word):byte;
var s: byte;
begin
     s:=(y-22) mod 33;
     if (s<>32) and (s mod 4 = 0) then ShamsiLeapYear:=1 else ShamsiLeapYear:=0;
end;

function MDayPerMonth(y,m:word):Byte;
function miladiLeapYear(y: word): byte;
 begin
   if ((y mod 4=0) and (y mod 100<>0)) or ((y mod 100=0) and ((y div 100) mod 4=0)) then
      Result:=1
    else Result:=0;
end;
 begin
  case m of
   1,3,5,7,8,10,12:Result:=31;
   2              :Result:=28+MiladiLeapYear(y);
   4,6,9,11       :Result:=30;
  end;{case}
 end;//MDayPerMonth

function MiladiToInt(y,m,d:word):word;
var i:word;
begin
  Result:=0;
  for i:=1 to m-1 do
    Result:=Result+MDayPerMonth(y,i);
  Result:=Result+d;
end;//MiladiToInt

function ShamsiToInt(m,d:word):word;
begin
if m<7 then
  Result:=(m-1)*31+d
Else
  Result:=186+(m-7)*30+d;
end;//shamsiToInt

procedure MiladiIntToShamsiInt(my,mi:word;var sy,si:word);
var difference:word;
begin
 sy:=my-622;
 difference:=79-ShamsiLeapYear(sy);

 if mi>difference then
  begin
   si:=mi-difference;
   sy:=sy+1;
  end
   else si:=365-difference+mi;
end;

procedure ShamsiIntToMiladiInt(sy,si:word;var my,mi:word);
var difference:word;
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


procedure Shamsi(my,mm,md: word;var sy,sm,sd:word);
var mi,si: word;
begin
 mi:=MiladiToInt(my,mm,md);
 MiladiIntToShamsiInt(my,mi,sy,si);

 if si<187 then sm:=((si-1) div 31)+1
  else sm:=7+((si-187) div 30);

 if si<187 then sd:=((si-1) mod 31)+1
  else sd:=((si-187) mod 30)+1;
end;

procedure Miladi(sy,sm,sd:word;var my,mm,md:word);
var mi,si: word;
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


function sdayPermonth(y,m:word):word;
begin
 Result:=31- m div 7- m div 12;
 if m=12 then Result:=Result+ShamsiLeapYear(y);
end;

function  ShamsiDeCodeDate(s:string;var y,m,d:word):boolean;
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

function  ShamsiEnCodeDate(y,m,d:word):string;
begin
if y<1300 then y:=y+1300  ;
 Result:=IntToStr(y)+'/';
 if m>=10 then result:=result+IntToStr(m)+'/' else result:=result+'0'+IntToStr(m)+'/';
 if d>=10 then result:=result+IntToStr(d) else result:=result+'0'+IntToStr(d);
end;

function ShamsiString(mdate:TdateTime):String;
var my,mm,md,sy,sm,sd:word;
begin
  DecodeDate(mdate,my, mm, md);
  Shamsi(my,mm,md,sy,sm,sd);
  Result:=ShamsiEnCodeDate(sy,sm,sd)
end;

function MiladiDateTime(s:string):TDateTime;
var my,mm,md,sy,sm,sd:word;
begin
 ShamsiDeCodeDate(s,sy,sm,sd);
 Miladi(sy,sm,sd,my,mm,md);
 Result:=EncodeDate(my,mm,md)
end;

function ShamsiIncDate(s:string;y,m,d:integer):string;
begin
end;

function ShamsidayInWeek(s:string):word;
begin
end;

function ShamsidayInMonth(s:string):word;
var
 sy,sm,sd:word;
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
 Result:=ShamsiIncDate(s,0,0,-ShamsidayInMonth(s)+1);
end;

function ShamsiStartOfYear(s:string):string;
var
 sy,sm,sd:word;
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
    if pos(s[i],'1234567890')=0 then
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
if m<>'' then
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
var y,m,d:word;
begin
 result:=true;
if ShamsiDeCodeDate(s,y,m,d) then s:=ShamsiEnCodedate(y,m,d) else Result:=false;
end;

function YeganehTrim(s:string):string;
var i: word;
begin
s:=trim(s);
  i:=pos('  ',s);
  while i<>0 do
    begin
      s:=copy(s,1,i)+copy(s,i+2,length(s)-i-1);
      i:=pos('  ',s)
    end;  
  Result:=s;
end;

 function IsDate(today,s:string;var FromDate,ToDate:string):boolean;
 var p: byte;

   {«Ì‰  «»⁄ Ìò ⁄»«—  —‘ Â «Ì Õ«ÊÌ Ìò  «—ÌŒ —« ê—› Â Ê „—“ Å«ÌÌ‰ Ê »«·«Ì ¬‰—« „Ì œÂœ}
function changeTodate(s:string):boolean;
type datetypes=(ISmonth,ISweek,Isday,Notany);
  var y,m,d:word;
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
   result:=true;   //rev
     if isValidDate(s) then
      begin
       FromDate:=s;
       ToDate:=s;
       exit;
      end;
   s:=trim(s);
   shamsiDeCodeDate(today,y,m,d);
   items:=TStringList.Create;
   Setwords(s,' ',items);
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
          Dtype:=DateType(copy(items[0],2,length(items[0])-1)); {»—«Ì Õ· Ì òÂ ⁄œœ —« »Â Â› Â „«Â —Ê“ ç”»ÌœÂ »«‘œ}
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

end.
