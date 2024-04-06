unit CodePage;


interface

uses SysUtils;

type
 TCPOrder=(cpVegaf, cpSayeh, cpSina, cpMicrosoft);

 function ConvertString(CP_From, CP_To: TCPOrder; Source: ShortString): ShortString;
 function ConvertSByName(CP_From, CP_To: string; Source: string): ShortString;
 function IsPersianText(S: shortstring): boolean;
 function ConvertSayeh(S_In:string):string;
 function is_integerOrDate(s:string):boolean;
 FUNCTION CorrectNumber(inp:string):string;
 function ConvertToMicrosoft(s:string;cp:TCPOrder;InvertDateInteger,inverseAll:boolean):string;
implementation

 function IsPersianText(S: shortstring): boolean;
  var
   i: integer;
  begin
   i:=1;
   while (i<=Length(s)) and (S[i]<=#127) do  Inc(i);

   IsPersianText:=i<=Length(s);
  end;

type
 TCPCharSet=string ;

 PCodePage=^TCodePage;
 TCodePage=record
   Name: string;
   OS: (_DOS, _WIN);
   Chars: array [1..4] of  TCPCharSet; 
 end;

const
 CP_Vegaf: TCodePage=
 (Name: 'vegaf';
  OS: _DOS;
  Chars:
  (#128#129#130#131#132#133#134#135#136#137#139+
   #141#144#1#147#149#151#153#155#157#159#161#162#163#164#165#166#168#170#172+
   #174#175#224#228#232#234#236#238#240#243#245#247#248#1#251#251#254#142#143,

   #128#129#130#131#132#133#134#135#136#137#139+
   #141#145#1#147#149#151#153#155#157#159#161#162#163#164#165#166#168#170#172+
   #174#175#224#227#231#234#236#238#240#243#245#247#248#1#250#250#254#142#143,

   #128#129#130#131#132#133#134#135#136#137#139+
   #141#145#1#146#148#150#152#154#156#158#160#162#163#164#165#166#167#169#171+
   #173#175#224#226#230#233#235#237#239#241#244#246#248#1#249#249#252#252#143,

   #128#129#130#131#132#133#134#135#136#137#139+
   #141#144#1#146#148#150#152#154#156#158#160#162#163#164#165#166#167#169#171+
   #173#175#224#225#229#233#235#237#239#241#244#246#248#1#249#249#253#253#143));

 CP_Sina: TCodePage=
  (Name: 'sina'; OS: _WIN;
   Chars:
   ('0123456789ÜÁÂÄÈÉÊÌÍÎÏÐÑÒÓÔÕÖØÙÚÛÝÞßàáâãäåæçÅèËéÇÃ',
    '0123456789ÜÁÂÄÈÉÊÌÍÎÏÐÑÒÓÔÕÖØÙÚÛÝÞßàáâãäåæçÅèËéÇÃ',
    '0123456789ÜÁÂÄÈÉÊÌÍÎÏÐÑÒÓÔÕÖØÙÚÛÝÞßàáâãäåæçÅèËéÇÃ',
    '0123456789ÜÁÂÄÈÉÊÌÍÎÏÐÑÒÓÔÕÖØÙÚÛÝÞßàáâãäåæçÅèËéÇÃ'));

 CP_Microsoft: TCodePage=
  (Name: 'microsoft'; OS: _WIN;
   Chars:
   ('0123456789ÜÂÇÃÈÊËÌÍÎÏÐÑÒŽÓÔÕÖØÙÚÛÝÞßáãäæÄåÉíÆÁ',
    '0123456789ÜÂÇÃÈÊËÌÍÎÏÐÑÒŽÓÔÕÖØÙÚÛÝÞßáãäæÄåÉíÆÁ',
    '0123456789ÜÂÇÃÈÊËÌÍÎÏÐÑÒŽÓÔÕÖØÙÚÛÝÞßáãäæÄåÉíÆÁ',
    '0123456789ÜÂÇÃÈÊËÌÍÎÏÐÑÒŽÓÔÕÖØÙÚÛÝÞßáãäæÄåÉíÆÁ'));



 const
  CodePages: array[cpVegaf..cpMicrosoft] of PCodePage=
   (@CP_Vegaf, @CP_Vegaf, @CP_Sina, @CP_Microsoft);

 function ConvertSByName(CP_From, CP_To: string; Source: string): ShortString;
  var
   i, cf, ct: TCPOrder;
  begin
   cf:=TCPOrder(-1);
   ct:=TCPOrder(-1);
   for i:=cpVegaf to cpMicrosoft do
    if CodePages[i].Name = LowerCase(CP_From) then cf:=i
     else if CodePages[i].Name = LowerCase(CP_To) then ct:=i;
   if (Integer(ct)<>-1) and (Integer(cf)<>-1) then
     ConvertSByName:=ConvertString(cf, ct, Source);
  end;

function ConvertString(CP_From, CP_To: TCPOrder; Source: ShortString): ShortSTring;
 var
   s, d: ShortString;
   p, i, j: integer;
   ch: char;
   CPFrom, CPTo: PCodePage;
 begin
  if not IsPersianText(Source) then
   begin
    ConvertString:=Source;
    exit;
   end;

  s:=Source;
  d:='';

  CPFrom:=CodePages[CP_From];
  CPTo:=CodePages[CP_To];
  if CPFrom^.OS<>CPTo^.OS then
   for i:=Length(S) downto 1 do
    begin
      p:=0;
      j:=1;
      ch:=S[i];
      while (p=0) and (j<5) do
       begin
         p:=Pos(ch, CPFrom^.Chars[j]);
         inc(j);
       end;
      if p<>0 then
       begin
        d:=d+CPTo^.Chars[1,p];
        if (ord(CP_From)=ord(cpVegaf)) and (j>=4) and (S[i-1]<>#32) then
          d:=d+#157;
       end
      else if (ch=#242) and (ord(CP_From)=ord(cpVegaf)) then
       begin
        if Ord(CP_To)=ord(CPSina) then d:=d+'äÂ'
        else if ord(CP_To)=ord(CPMicrosoft) then d:=d+'áÇ';
       end
      else d:=d+ch;
    end                
   else
   for i:=1 to Length(S) do
    begin
      p:=0;
      j:=1;
      ch:=S[i];
      while (p=0) and (j<5) do
       begin
         p:=Pos(ch, CPFrom^.Chars[j]);
         inc(j);
       end;
      if p<>0 then
        d:=d+CPTo^.Chars[1,p]
       else d:=d+ch;
    end;

   ConvertString:=d;
 end;
function inverse(st: string):string;
  var j: byte;
      temp:string;
  begin
    temp:=st;
    for j:=1 to length(st) do
      temp[j]:=st[length(temp)-j+1];
   inverse:=temp

  end;

function ConvertSayeh(S_In:string):string;
var   A:array [0..100]of Char;  i,len:byte;
str:string;
function convert(ch:char):string;
var b:char;
begin
b:=char(32);
case ord(ch) of
137:convert:=char(194);
138:convert:=char(199);
139:convert:=char(199);
140:convert:=char(199);
141:convert:=char(193);
142:convert:=char(195);
143:convert:=char(196);
144:convert:=b;
145:convert:=char(198);
146:convert:=char(200);
147:convert:=char(200);
148:convert:=char(129);
149:convert:=char(129);
150:convert:=char(202);
151:convert:=char(202);
152:convert:=char(203);
153:convert:=char(203);
154:convert:=char(204)+b;
155:convert:=char(204);
156:convert:=char(141)+b;
157:convert:=char(141);
158:convert:=char(205)+b;
159:convert:=char(205);
160:convert:=b;
161:convert:=char(206)+b;
162:convert:=char(206);
163:convert:=char(207);
164:convert:=char(208);
165:convert:=char(209);
166:convert:=char(210);
167:convert:=char(142);
168:convert:=char(211);
169:convert:=char(211);
170:convert:=char(212);
171:convert:=char(212);
172:convert:=char(213);
173:convert:=char(213);
174:convert:=char(214);
175:convert:=char(214);

224:convert:=char(216);
225:convert:=char(217);
226:convert:=char(218)+b;
227:convert:=char(218)+b;
228:convert:=char(218);
229:convert:=char(218);
230:convert:=char(219)+b;
231:convert:=char(219)+b;
232:convert:=char(219);
233:convert:=char(219);
234:convert:=char(221);
235:convert:=char(222)+b;
236:convert:=char(222);
237:convert:=char(223);
238:convert:=char(144);
239:convert:=char(225)+b;
240:convert:=char(225)+char(119);
241:convert:=char(225);
242:convert:=char(227)+b;
243:convert:=char(227);
244:convert:=char(228)+b;
245:convert:=char(228);
246:convert:=char(230);
247:convert:=char(229)+b;
248:convert:=char(229)+b;
249:convert:=char(229);
250:convert:=char(229);
252:convert:=char(237)+b;
251:convert:=char(237)+b;
253:convert:=char(237);
254:convert:=char(237);
else convert:=ch;
end;
end;

begin
len:=length(s_in);
StrPCopy(A, S_in);
str:='';
for i:=len-1 downto 0 do str:=convert(A[i])+str;
Result:=str
end;

function is_integerOrDate(s:string):boolean;
 var i:byte;
 begin
  Result:=true;
  for i:=1 to length(s) do
   if pos(s[i],' /-0123456789')=0 then
    begin
      result:=false;
      exit;
    end;
 end;

FUNCTION CorrectNumber(inp:string):string;
var Digits:string;
i:integer;
BEGIN
Digits:='';
for i:=1 to length(inp) do
  if pos(inp[i],'1234567890')=0 then
    begin
      if Digits<>'' then
       begin
        Result:=Result+inverse(Digits);
        digits:=''
       end;
     Result:=Result+inp[i];
    end
    else digits:=digits+inp[i];

  if Digits<>'' then Result:=Result+inverse(Digits)
END;

function ConvertToMicrosoft(s:string;cp:TCPOrder;InvertDateInteger,inverseAll:boolean):string;
   begin
 if  cp = CPMicrosoft then
  begin
   Result:=s;
   exit;
  end;

   s:=trim(s);
    case cp of
      cpSayeh : Result:=ConvertSayeh(s);
      cpVegaf : Result:=ConvertString(cpVegaf,cpMicrosoft,s);
      cpSina  : Result:=ConvertString(cpSina,cpMicrosoft,s);
     end;
    if   inverseAll then
      Result:=inverse(Result);
    if InvertDateInteger then
      Result:=CorrectNumber(Result);

end;

end.





