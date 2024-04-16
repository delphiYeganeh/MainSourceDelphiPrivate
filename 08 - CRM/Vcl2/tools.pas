unit tools;

interface
 uses Forms, Controls, SysUtils, Dialogs, DBTables, Windows, Math, classes,
      extCtrls, db, Graphics;

 {Date and Time functions. by: Alireza Mohammadizadeh}
 function TwoCharInt(n: word): string;
 function ShamsiDecodeDate(d1: String; var y, m, d: integer): Boolean;{Decode shamsi date to yy/mm/dd}
 function ShamsiToChristDate(D1: string): string;               {Shamsi to christ Date}
 function ShamsiDate(D1: TDateTime): string;                    {Christ to shamsi Date}
 procedure ShamsiValidateDate(var D1: string);                  {Validate Shamsi Date}
 function ShamsiStrToDate(D1: string): TDateTime;               {String to Shamsi Date}
 function TimeStrToInt(s: String): integer;
 function TimeIntToStr(n: integer): String;
 function TimeToInt(n: TDateTime): Integer;
 function TimeIntToTime(n: integer): TDateTime;
 function DateStrToInt(s: String): integer;
 function DateIntToStr(n: integer): String;

 {Database procedures and functions}
 function  OpenTables(Owner: TComponent):Boolean;
 procedure CloseTables(Owner: TComponent);
 function DatasetsModified(Owner: TComponent): Boolean;
 procedure SaveDatasets(Owner: TComponent);
 procedure CancelDatasets(Owner: TComponent);

 {Michelaneous functions}
 procedure ChangeCursors(aWindow: TWinControl; c:integer);
 function TF2Bool(ch: char): Boolean;
 function GetCurrentUserName : string;
 function F(x:LongInt):String;
 function Bil(mm:String):String;
 function Bill(n:LongInt):String;

 // Transferred from: SOMETOOL.PAS by ARM
 Function ErrorResult(x:TdataSet;e:EdatabaseError):TdataAction;
 procedure PrintBarCode(var c: TCanvas; x,y: integer; BarCode:String;
                        ShowNumber: Boolean);


 var
  BCOnScreen: Boolean;

implementation

 type
  TCodes=Array[0..9] of byte;
 Const
  Codes: TCodes=($0D,$19,$13,$3D,$23,$31,$2F,$3B,$37,$0B);
  Ps0=4;
  h0=200;

 Function ErrorResult(x:TdataSet;e:EdatabaseError):TdataAction;
  Function FieldFind(ss:String):string;
   var
     ff: array[1..20,1..2] of string;
     i:Integer;
     pp:String ;
   Begin
     ff[1,1]:='SEX';  ff[1,2]:='Ã‰”';
     ff[2,1]:='TERMCODE'; ff[2,2]:=' —„ Ê—Êœ';
     ff[3,1]:='RESHTE';ff[3,2]:='ﬂœ —‘ Â' ;
     ff[4,1]:='COURSTYPE';ff[4,2]:='ﬂœ ‰Ê⁄ œÊ—Â' ;
     ff[5,1]:='NAME';ff[5,2]:='‰«„ Œ«‰Ê«œêÌ Ê ‰«„' ;
     ff[6,1]:='DANESHKADEH';ff[6,2]:='ﬂœ œ«‰‘ﬂœÂ' ;
     ff[7,1]:='MAGHTA';ff[7,2]:='ﬂœ „ﬁÿ⁄' ;
     ff[8,1]:='STATUS';ff[8,2]:='Ê÷⁄Ì   Õ’Ì·Ì' ;
     FF[9,1]:='SAHMN';FF[9,2]:='”Â„ÌÂ ‰Â«ÌÌ' ;
     ff[10,1]:='ISACTIVE';ff[10,2]:='Ê÷⁄Ì  œ«‰‘ÃÊ' ;
     ff[11,1]:='EntrySemester';ff[11,2]:=' —„ Ê—Êœ' ;
     ff[12,1]:='StopDate';ff[12,2]:=' «—ÌŒ œ«‰‘ ¬„ÊŒ êÌ' ;
     ff[13,1]:='totalAvg';ff[13,2]:='„⁄œ· ﬂ· ' ;
     pp:=Copy(ss,31,length(ss));

     For i:=1 to 13 do
      if Uppercase(ff[i,1])=Uppercase(pp) then
       Begin
        FieldFind:=ff[i,2];
        Exit;
       End;
     fieldfind:=pp+'‰«„⁄·Ê„Ì' ;
   End;

  begin
   IF pos('require',E.Message)<>0 Then
    Begin
      ShowMessage('›Ì·œ'+FieldFind(E.Message)+' ÷—Ê—Ì „Ì »«‘œ');
      ErrorResult:=daAbort;
      Exit;
    end;
   IF pos('Key',E.Message)<>0 Then
    Begin
      ShowMessage('Œÿ« : —ﬂÊ—œ  ﬂ—«—Ì «” ');
      ErrorResult:=daAbort;
      Exit;
    End;
   IF pos('missing',E.Message)<>0 Then
    Begin
      ShowMessage('Œÿ« : ÌﬂÌ «“ ﬂœÂ«ÌÌ ﬂÂ «” ›«œÂ ‰„ÊœÂ «Ìœ  ⁄—Ì› ‰‘œÂ «” ');
      ErrorResult:=daAbort;
      Exit;
    End;
   InputBox(E.Message,E.Message,E.Message);
   ErrorResult:=daAbort;
  end;

procedure MakeABar(var c:TCanvas;var x1:integer;y1,x2,y2:integer; cl:integer);
 procedure MAssign(var R:TRect; x1,y1,x2,y2:integer);
  begin
   R.Left:=x1;
   R.Top:=y1;
   R.Right:=x2;
   R.Bottom:=y2;
  end;
 var
  R:TRect;
 begin
  c.Pen.Color:=cl;
  c.Brush.Color:=cl;
  MAssign(R,x1,y1,x2,y2);
  c.FillRect(R);
  x1:=x2;
 end;

procedure PrintBarCode(var c: TCanvas; x,y: integer; BarCode:String;
                       ShowNumber: Boolean);
 var
  Ps,h,i,j,ns,Index,l,cHi: integer;
  ch: char;
  n: byte;
 begin
  l:=length(BarCode);
  index:=l div 2;

  if index*2=l then
   begin
    BarCode:='0'+BarCode;
    inc(l);
   end;
  inc(index);
  inc(l);

  ns:=0;
  BarCode[l]:='0';
  for i:=1 to index do
   inc(ns,3*(Byte(BarCode[2*i-1])-byte('0'))+Byte(BarCode[2*i])-byte('0'));
  ns:=(100-ns) mod 10;
  while ns<0 do inc(ns,10);

  BarCode[l]:=char(ns+byte('0'));

  ps:=ps0;
  h:=h0;
  if BCOnScreen then
   begin
    h:=h div 3;
    ps:=ps div 3;
   end;
  cHi:=C.TextHeight('A')*Byte(ShowNumber);
  with C do
   begin
    Inc(h,chi);
    MakeABar(c,x,y,x+ps,y+h,clBlack);
    MakeABar(c,x,y,x+ps,y+h,clWhite);
    MakeABar(c,x,y,x+ps,y+h,clBlack);

    Dec(h,chi);
    for i:=1 to l do
     begin
      ch:=BarCode[i];
      if (ch>='0') or (ch<='9') then
       begin
        if ShowNumber then
         begin
          C.Pen.Color:=clBlack;
          C.Brush.Color:=clWhite;
          C.TextOut(x,y+h,ch);
         end;
        n:=Codes[Byte(ch)-Byte('0')];
        for j:=6 downto 0 do
         MakeABar(c,x,y,x+ps,y+h,(byte((n and (1 shl j))<>0)*(clBlack-clWhite)+clWhite) xor (byte(i>index)*clWhite));
        if i=index then
         begin
          Inc(h,chi);
          MakeABar(c,x,y,x+ps,y+h,clWhite);
          MakeABar(c,x,y,x+ps,y+h,clBlack);
          MakeABar(c,x,y,x+ps,y+h,clWhite);
          MakeABar(c,x,y,x+ps,y+h,clBlack);
          MakeABar(c,x,y,x+ps,y+h,clWhite);
          Dec(h,chi);
         end;
       end;
     end;
    Inc(h,chi);
    MakeABar(c,x,y,x+ps,y+h,clBlack);
    MakeABar(c,x,y,x+ps,y+h,clWhite);
    MakeABar(c,x,y,x+ps,y+h,clBlack);
   end;
 end;

 var
  SDaysPerMonth: array[1..12] of byte;
  CDaysPerMonth:  array[1..12] of byte=(31,28,31,30,31,30,31,31,30,31,30,31);

 procedure ChangeCursors(aWindow:TWinControl; c:integer);
  var
   i:integer;
  begin
   aWindow.Cursor:=c;
   for i:=1 to aWindow.ControlCount do
    begin
     if aWindow.Controls[i-1].ClassType<>TPanel then
      aWindow.Controls[i-1].Cursor:=c
     else
      ChangeCursors(TWinControl(aWindow.Controls[i-1]),c);
    end;
  end;

 function TimeStrToInt(s: String): integer;
  var
   e, n, p, Res: integer;
   ssave: string;
  procedure NextP;
   begin
     p:=pos(':', s);
     if p=0 then val(s, n, e) else
       begin
        val(copy(s, 1, p-1) ,n, e);
        System.Delete(s, 1, p);
       end;
   end;
  begin
   SSave:=s;
   NextP;
   if p=0 then
     Res:=n
   else
    begin
     Res:=100*n;
     NextP;
     Inc(Res, n);
    end;
   if pos(TimePMString, s)<>0 then Inc(Res, 1200)
    else if (pos(TimeAMString, s)<>0) and (Res>=1200) then
     Dec(Res, 1200);
   Result:=Res;
  end;

 function TimeIntToStr(n: integer): String;
  begin
   Result:=Format('%d:%d', [n div 100, n mod 100]);
  end;

 function TimeToInt(n: TDateTime): Integer;
  begin
   Result:=TimeStrToInt(TimeToStr(n));
  end;

 function TimeIntToTime(n: integer): TDateTime;
  begin
   Result:=StrToTime(TimeIntToStr(n));
  end;

 function DateStrToInt(s: String): integer;
  var
   e, n, p, Res: integer;
  procedure NextP;
   begin
     p:=pos('/', s);
     if p=0 then val(s, n, e) else
       begin
        val(copy(s, 1, p-1) ,n, e);
        System.Delete(s, 1, p);
       end;
   end;
  begin
   NextP;
   Res:=n;
   while p<>0 do
    begin
     Res:=100*Res;
     NextP;
     Inc(Res, n);
    end;
   Result:=Res;
  end;

 function DateIntToStr(n: integer): String;
  begin
   Result:=Format('%d/%d/%d', [n div 10000, (n div 100) mod 100, n mod 100]);
  end;

 function GetCurrentUserName : string;
 const
  cnMaxUserNameLen = 254;
 var
  sUserName     : string;
  dwUserNameLen : DWord;
 begin
  dwUserNameLen := cnMaxUserNameLen-1;
  SetLength( sUserName, cnMaxUserNameLen );
  GetUserName(PChar( sUserName ), dwUserNameLen );
  SetLength( sUserName, dwUserNameLen );
  Result := sUserName;
 end;

function ChristLeapYear(y: word): Boolean;
 begin
   ChristLeapYear:=((y mod 4=0) and (y mod 100<>0)) or ((y mod 100=0) and ((y div 100) mod 4=0));
 end;

function ShamsiLeapYear(y: Longint): boolean;
 Var
  Y2:LongInt;
 begin
   y2:=(y-22) mod 33;
   ShamsiLeapYear:=(y2<>32) and (y2 mod 4 = 0);
 end;

function ShamsiStrToDate(D1: string): TDateTime;
 var
  i, s, y, m, d: Longint;
 begin
   ShamsiValidateDate(D1);
   ShamsiDecodeDate(D1, y, m, d);
   s:=d;
   for i:=1 to y-1 do
    inc(s, 365+Byte(ShamsiLeapYear(i)));
   for i:=1 to m-1 do
    inc(s, 31-m mod 7);

   ShamsiStrToDate:=s;
 end;

{$r-}
function ShamsiDecodeDate(d1: String; var y, m, d: Longint): Boolean;
 var
  //s: string;
  p, i: Longint;
  y1, m1, d0: Longint;
 begin
   Result:=True;
   d1:=trim(d1);
   if d1='' then exit;
   for i:=1 to 11 do
     SDaysPerMonth[i]:=31 - i div 7;

   p:=pos('/', d1);
   try
    y1:=strtoint(copy(d1, 1, p-1));
    if ShamsiLeapYear(y1) then
     SDaysPerMonth[12]:=30 else SDaysPerMonth[12]:=29;
    delete(d1, 1, p);
    p:=pos('/', d1);
    m1:=strtoint(copy(d1, 1, p-1));
    if (m1<1) or (m1>12) then
      Result:=False;
    delete(d1, 1, p);
    d0:=strtoint(d1);
    if (d0<1) or (d0>SDaysPerMonth[m1]) then
      Result:=False;
   except
    on EConvertError do
       Result:=False;
   end;
   if Result then
    begin
     d:=d0;
     m:=m1;
     y:=y1;
    end;
 end;

function TwoCharInt(n: word): string;
  var
   s: string;
  begin
    s:=IntToStr(n);
    if Length(s)<2 then s:='0'+s;
    TwoCharInt:=s;
  end;

 {TF2Bool: converts a character to its boolean equivalent}
 {input : ch: the character ('T' or 'F')                 }
 {output: ch= 'T': True                                  }
 {        ch= 'F': False                                 }
 function TF2Bool(ch: char): Boolean;
  begin
   TF2Bool:=Boolean(Byte(ch)-Byte('F'));
  end;

procedure ShamsiValidateDate(var D1: string);
 var
  CurrentD: string;
  y, m, d: Longint;
  cy, cm, cd: Longint;
 begin
   d1:=trim(d1);
   if d1='' then exit;
      try if StrToInt( copy(d1,1,4))>1900 then
     d1:=ShamsiDate(StrToDate(d1)) except end;

   CurrentD:=ShamsiDate(Date);
   ShamsiDecodeDate(CurrentD, cy, cm, cd);
   ShamsiDecodeDate(d1, y, m, d);
   if y<100 then y:=y+cy div 100 *100;
   D1:=IntToStr(y)+'/'+TwoCharInt(m)+'/'+TwoCharInt(d);
 end;

function ShamsiToChristDate(D1:string): string;
  var
    i,s,y,m,d: Longint;
    yy,mm:String[2];
    DPY :Longint;
  Begin
     ShamsiDecodeDate(d1, y, m, d);

     inc(y,621);

     s:=0;
     for i:=1 to m-1 Do
       inc(s,SDaysPerMonth[i]);
     inc(s,d+79);
     inc(s, Byte(ShamsiLeapYear(y-622)));

     DPY:=365+Byte(ChristLeapYear(y));

     if S>DPY  then
      begin
       dec(S,DPY);
       inc(y);
      end;

     if ChristLeapYear(y) then
      CDaysPerMonth[2]:=29 else CDaysPerMonth[2]:=28;

     d:=s;
     m:=1;
     while d>CDaysPerMonth[m] do
        begin
          inc(m);
          dec(d,CDaysPerMonth[m]);
        end;
     if d=0 then
       Begin
         Dec(m);
         d:=CDaysPerMonth[m];
       end;

     mm:=IntToStr(m);
     yy:=IntTOStr(d);
     if Length(mm)=1 then mm:='0'+mm;
     if Length(yy)=1 then yy:='0'+yy;
     ShamsiToChristDate:=(yy+'/'+mm+'/'+IntToStr(y));
  End;

function ShamsiDate(D1:TDateTime): string;
  var
    i,s,y,m,d: Word;
    yy,mm: String[2];
    DPY: integer;
  Begin
     DecodeDate(d1,y,m,d);
     if ChristLeapYear(y) then
       CDaysPerMonth[2]:=29 else CDaysPerMonth[2]:=28;

     y:=y-622;

     s:=0;
     for i:=1 to m-1 Do
       inc(s,CDaysPerMonth[i]);

     DPY:=365+Byte(ShamsiLeapYear(y));

     inc(s,d-79+DPY);
     if S>DPY  then
      begin
       dec(S,DPY);
       inc(y);
      end;

     if s<=186 then
        begin
          m:=(s div 31)+1;
          d:=s mod 31;
          if d=0 then
           Begin
             Dec(m);
             d:=31;
           end;
        end
      else
       Begin
          Dec(s,186);
	  m:=(s div 30)+7;
          d:=s mod 30;
          if d=0 then
           begin
             Dec(m);
             d:=30;
           End;
       end;

     mm:=IntToStr(m);
     yy:=IntTOStr(d);
     if Length(mm)=1 then mm:='0'+mm;
     if Length(yy)=1 then yy:='0'+yy;
     ShamsiDate:=(IntToStr(y)+'/'+mm+'/'+yy);
  End;


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
//************
  if x<=20 then f:=a[x];
  if (x>20) and (x<=100)and ((x mod 10)=0) Then f:=a[18+(x div 10)];
  if (x>100) and (x<=1000)and ((x mod 100)=0) then f:=a[27+(x div  100)];
  if x=1000000 Then f:=a[38];
  if x=1000000000 then f:=a[39];
 End;

//************************************

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


Function Bill(n:LongInt):String ;
  var
   i,l,ll:Integer;
   tt, m,x,nn:String;
  Begin

     if n<0 then Begin
     n:=-n;
     tt:=' „‰›Ì ';
     end;
     if n=0 then Begin
     bill:='’›—';
     exit;
     End;

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

 function OpenTables(Owner: TComponent):Boolean;
  var
   i: integer;
   c: TComponent;
   T: TTable;
  begin
   if Owner=nil then
    begin
      OpenTables:=False;
      exit;
    end;
   for i:= 0 to Owner.ComponentCount-1 do
    begin
     c:=Owner.Components[i];
     if c.InheritsFrom(TTable) then
      begin
       T:=TTable(c);
       if (not T.active) then
        begin
         try
	   T.Open;
         except
           On EDatabaseError Do
            begin
             OpenTables:=False;
             ShowMessage(T.Name);
             Exit;
            end;
         end;
       end;
      end;
    end;
    OpenTables:=True;
  end;

 procedure CloseTables(Owner: TComponent);
  var
   i: integer;
   c: TComponent;
   T: TTable;
  begin
   if Owner=nil then exit;
   for i:= 0 to Owner.ComponentCount-1 do
    begin
     c:=Owner.Components[i];
     if c.InheritsFrom(TTable) then
      begin
       T:=TTable(c);
       if T.active then
	T.Close;
      end;
    end;
  end;

 function DatasetsModified(Owner: TComponent): Boolean;
  var
   i: integer;
   ModiFound: boolean;
  begin
   ModiFound:=False;
   if Owner<>nil then
    begin
     i:=0;
     while (i<Owner.ComponentCount) and not ModiFound do
      begin
       if Owner.Components[i].InheritsFrom(TDataset) then
        ModiFound:=TDataset(Owner.Components[i]).Modified;
       inc(I);
      end;
    end;
    Result:=ModiFound;
  end;

 procedure SaveDatasets(Owner: TComponent);
  var
   i: integer;
  begin
   if Owner<>nil then
     for i:=0 to Owner.ComponentCount-1 do
       if Owner.Components[i].InheritsFrom(TDataset) then
         with TDataset(Owner.Components[i]) do
           if Modified then
             Post ;
  end;

 procedure CancelDatasets(Owner: TComponent);
  var
   i: integer;
  begin
   if Owner<>nil then
     for i:=0 to Owner.ComponentCount-1 do
       if Owner.Components[i].InheritsFrom(TDataset) then
         with TDataset(Owner.Components[i]) do
           if Modified then
             Cancel;
  end;
end.

