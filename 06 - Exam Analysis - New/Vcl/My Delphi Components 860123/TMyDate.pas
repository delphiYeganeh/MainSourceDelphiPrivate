unit TMydate;

interface
Uses
   Windows, SysUtils, MyLibU;
var
   result:integer;
Const
  Shamsi:array [1..12] of integer=(31,31,31,31,31,31,30,30,30,30,30,29);

function Kabiseh(Year:integer):boolean;
Function DayDesc(Desc:String):string;
Function DayName(EndYear:string):String;
Function DateCheck(pdate:string):Boolean;
Function YearOf(S:String):string;
Function CurYear:string;
Function CurDate:string;
Function AddDay(S:String;no:Integer):String;
Function AddMount(S:String;no:Integer):String;
Procedure IncDay(Var S:String);
Procedure IncMount(Var S:String);
Function DifDate( StartDate ,Enddate: String): Integer;
Function Check4DateP(DateF,DateL,DateFP,DateLP :string):Boolean;
Function FLTimeCheck(FTime,LTime:String):Boolean;
Function TimeCheck(pTime:string):Boolean;
Function IsEmptyDate(S:String):Boolean;
Function SentDateFDayIdx(SentDate: String): Integer;

implementation

function Kabiseh(Year:integer):boolean;
const XClusiveYear=1374;
var Module:byte;
begin
  Kabiseh := false;
  if Year >= XclusiveYear then Module := 3
  else Module := 2;
  if Year mod 4 = Module then Kabiseh := true;
end;

Function IsEmptyDate(S:String):Boolean;
Begin
  IsEmptyDate:=False;
  if ((S='') OR (S='    /  /')) Then
     IsEmptyDate:=True;
End;

Function Check4DateP(DateF,DateL,DateFP,DateLP :string):Boolean;
Begin
     If ((DateF > DateL) Or (DateF < DateLP) Or
          (DateLP<DateFP)) Then
     Begin
       Check4DateP := False;
       Exit;
     End;
     Check4DateP := True;
End;
Function DifDate( StartDate ,Enddate: String): Integer;
Var      Count :Integer;
Begin
     Count := 0;
     While Not (EndDate = StartDate) Do
     Begin
           IncDay(StartDate);
           Inc(Count);
     End;
     DifDate := Count;
End;

Function DayName(EndYear:String):string;
var k:Integer;
Begin
    K:=DifDate('1377/01/01',EndYear+'/01/01') Mod 7;
    Case K Of
     0: DayName:='ÔäÈå';
     1: DayName:='íß ÔäÈå';
     2: DayName:='Ïæ ÔäÈå';
     3: DayName:='Óå ÔäÈå';
     4: DayName:='åÇÑ ÔäÈå';
     5: DayName:='äÌ ÔäÈå';
     6: DayName:='ÌãÚå';
   End;
End;
Function SentDateFDayIdx(SentDate: String): Integer;
Begin
  SentDateFDayIdx:=DifDate('1377/01/01',Copy(SentDate,1,8)+'01') Mod 7;
End;

Function DayDesc(Desc:String):string;
var k:Integer;
Begin
    K:=DifDate('1377/01/01',Desc) Mod 7;
    Case K Of
     0: DayDesc:='ÔäÈå';
     1: DayDesc:='íß ÔäÈå';
     2: DayDesc:='Ïæ ÔäÈå';
     3: DayDesc:='Óå ÔäÈå';
     4: DayDesc:='åÇÑ ÔäÈå';
     5: DayDesc:='äÌ ÔäÈå';
     6: DayDesc:='ÌãÚå';
   End;
end;

Function TimeCheck(pTime:string):Boolean;
var temp:string;
    H,M:Integer;
begin
     if length(pTime) <> 5 Then
     Begin
       TimeCheck := False;
       Exit;
     End;
     setlength(temp,2);

     temp[1]:=pTime[4];
     temp[2]:=PTime[5];
     M:=strtoint(temp);

     temp[1]:=pTime[1];
     temp[2]:=PTime[2];
     H:=strtoint(temp);

     If M >= 60 Then
     Begin
       TimeCheck := False;
       Exit;
     End;
     If H >= 24 Then
     Begin
       TimeCheck := False;
       Exit;
     End;
     TimeCheck := True;
End;

Function FLTimeCheck(FTime,LTime:String):Boolean;
begin
     If FTime <= LTime Then
     Begin
       FLTimeCheck := False;
       Exit;
     End;
     FLTimeCheck := True;
End;

Function IsValidNumbers(S:String):Boolean;
Begin
  IsValidNumbers:=True;
  if IsDigit(S[1])=False Then IsValidNumbers:=False;
  if IsDigit(S[2])=False Then IsValidNumbers:=False;
  if IsDigit(S[3])=False Then IsValidNumbers:=False;
  if IsDigit(S[4])=False Then IsValidNumbers:=False;
  if IsDigit(S[6])=False Then IsValidNumbers:=False;
  if IsDigit(S[7])=False Then IsValidNumbers:=False;
  if IsDigit(S[9])=False Then IsValidNumbers:=False;
  if IsDigit(S[10])=False Then IsValidNumbers:=False;
End;

Function DateCheck(pdate:string):Boolean;
var temp:string;
    M,D,Y:Integer;
begin
     if length(pdate)<10 Then
     Begin
       DateCheck := False;
       Exit;
     End;
     if IsValidNumbers(pdate)=False Then
     Begin
       DateCheck := False;
       Exit;
     End;
     setlength(temp,2);

     temp[1]:=pdate[6];
     temp[2]:=pdate[7];
     M:=strtoint(temp);
     if (( M < 1) OR (M > 12 ) ) Then
     Begin
       DateCheck := False;
       Exit;
     End;

     temp[1]:=pdate[9];
     temp[2]:=pdate[10];
     D:=strtoint(temp);
     if D<1 Then
     Begin
       DateCheck := False;
       Exit;
     End;
  case M of
    1..6:
      If D>31 Then Begin
        DateCheck := False;
        Exit;
      End;
    7..11:
      If D>30 Then Begin
        DateCheck := False;
        Exit;
      End;
    12:
      Begin
         temp[1]:=pdate[3];
         temp[2]:=pdate[4];
         Y:=strtoint(temp);
         if (Y Mod 4)=3 Then
         Begin
              If D>30 Then
              Begin
                DateCheck := False;
                Exit;
              End;
         End
         Else
         Begin
              If D>29 Then
              Begin
                DateCheck := False;
                Exit;
              End;
         End;
      End;
    End;
    DateCheck:=True;
end;
Var
  milady:array [1..12] of integer;
function moo(m,y:integer):integer;
var t,i:integer;
begin
t:=0;
for i:=1 to m-1 do begin
t:=t+milady[i];
if( (i=2) and ((y mod 4) = 0) ) then
	t:=t+1;
end;
moo:=t;
end;

//---------------------------
Function CurDate:String;
var
    mil,temp,ss:string;
    y,m,d,birth,yy,mm,dd,i:integer;

begin
mil:=DateToStr(Date);
setlength( temp,2);
temp[1]:=mil[3];
temp[2]:=mil[4];
y:=strToint(temp);
setlength( temp,2);
temp[1]:=mil[6];
temp[2]:=mil[7];
m:=strToint(temp);
setlength( temp,2);
temp[1]:=mil[9];
temp[2]:=mil[10];
d:=strToint(temp);
milady[1]:=31;
milady[2]:=28;
milady[3]:=31;
milady[4]:=30;
milady[5]:=31;
milady[6]:=30;
milady[7]:=31;
milady[8]:=31;
milady[9]:=30;
milady[10]:=31;
milady[11]:=30;
milady[12]:=31;
if y<50 Then Y:=Y+100;
y:=y-96;
birth:=y*365+moo(m,y)+y div 4+d;
if ((y mod 4)<> 0  )then
   birth:=birth+1;
birth:=birth-79;
i:=0;
while (((birth > 365) and (i mod 4 <>0) ) or ( (birth > 366) and (i mod 4=0))) do
begin
	birth:=birth-365;
	if(i mod 4=0) then
		birth:=birth-1;
	i:=i+1;
end;
yy:=i;
i:=1;
while ( (birth > 31) and (i<=6) ) or ( (birth>30 )and (i >6) ) do begin
	birth:=birth-30;
	if (i<=6) then
		birth:=birth-1;
	i:=i+1;
end;
mm:=i;
dd:=birth;
yy:=yy+1375;
ss:=intToStr(dd);
if length(ss) < 2 then
   ss:='0'+ss;
ss:=intToStr(mm)+'/'+ss;
if length(ss) < 5 then
   ss:='0'+ss;
ss:=intToStr(yy)+'/'+ss;
if length(ss) < 8 then
   ss:='0'+ss;
curdate:=ss;
end;
//---------------------------
Function CurYear:String;
Var S:String;
Begin
  S:=CurDate;
  SetLength(S,4);
  CurYear:=S;
End;
//---------------------------
Function YearOf(S:String):String;
Begin
  SetLength(S,4);
  YearOf:=S;
End;
{----------------------------------------}
Function IntToStr2( I:Integer ):String;
Var tmp,s:string[2];
Begin
  setlength(s,2);
  tmp:=inttostr(I);
  if i<10 Then
    Begin
      s[1]:='0';
      s[2]:=tmp[1];
    End
  Else
    Begin
      s[1]:=tmp[1];
      s[2]:=tmp[2];
    End;
    IntToStr2:=s;
End;
//--------------------------
Procedure IncDay(Var S:String);
Var D,M,Y:Integer;
    tmp  :string[2];
Begin
  tmp:='00';
  tmp[1]:=S[3];
  tmp[2]:=S[4];
  Y:=strtoint(tmp);
  tmp[1]:=S[6];
  tmp[2]:=S[7];
  M:=strtoint(tmp);
  tmp[1]:=S[9];
  tmp[2]:=S[10];
  D:=strtoint(tmp);
  Inc(D);
  case M of
   1..6:
      If D=32 Then
      Begin
        D:=1;
        Inc(M);
      End;
   7..11:
      If D=31 Then
      Begin
        D:=1;
        Inc(M);
      End;
   12:
      if (Y Mod 4)<>3 Then
        Begin
              If D=30 Then
              Begin
                D:=1;
                M:=1;
                Inc(Y);
              End;
        End
      Else
        Begin
              If D=31 Then
              Begin
                D:=1;
                M:=1;
                Inc(Y);
              End;
        End;
  End;
  tmp:=IntToStr2(Y);
  S[3]:=tmp[1];
  S[4]:=tmp[2];
  tmp:=IntToStr2(M);
  S[6]:=tmp[1];
  S[7]:=tmp[2];
  tmp:=IntToStr2(D);
  S[9]:=tmp[1];
  S[10]:=tmp[2];
End;
{----------------------------------------}
Procedure IncMount(Var S:String);
Var M,Y:Integer;
    tmp  :string[2];
Begin
  tmp:='00';
  tmp[1]:=S[1];
  tmp[2]:=S[2];
  Y:=strtoint(tmp);
  tmp[1]:=S[4];
  tmp[2]:=S[5];
  M:=strtoint(tmp);
  tmp[1]:=S[7];
  tmp[2]:=S[8];
  Inc(M);
  if(M>12) Then
  Begin
    M:=1;
    Inc(Y);
  End;
  tmp:=IntToStr2(Y);
  S[1]:=tmp[1];
  S[2]:=tmp[2];
  tmp:=IntToStr2(M);
  S[4]:=tmp[1];
  S[5]:=tmp[2];
End;
{-----------------------------------------}
Function AddDay(S:String;no:Integer):String;
Var I:Integer;
Begin
  For I:=1 to no do
    IncDay(S);
  AddDay:=S;
End;
{-----------------------------------------}
Function AddMount(S:String;no:Integer):String;
Var I:Integer;
Begin
  For I:=1 to no do
    IncMount(S);
  AddMount:=S;
End;
end.
