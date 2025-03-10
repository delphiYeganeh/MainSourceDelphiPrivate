unit QRBarcode;


interface

uses
  WinProcs, WinTypes, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, Qrctrls;

type
   TQRBarcodeType =
   (
   bcCode_2_5_interleaved,
   bcCode_2_5_industrial,
   bcCode_2_5_matrix,
   bcCode39,
   bcCode39Extended,
   bcCode128A,
   bcCode128B,
   bcCode128C,
   bcCode93,
   bcCode93Extended,
   bcCodeMSI,
   bcCodePostNet,
   bcCodeCodabar,
   bcCodeEAN8,
   bcCodeEAN13,
   bcCodeUPC_A,
   bcCodeUPC_E0,
   bcCodeUPC_E1,
   bcCodeSupp2,     // UPC 2 digit supplemental
   bcCodeSupp5     // UPC 5 digit supplemental
   );


  TBarLineType = (white, black, black_half);  {for internal use only}
  { black_half means a black line with 2/5 height (used for PostNet) }


  TQRBarcode = class(TQRImage)
  private
    { Private-Deklarationen }
          FCheckVal:string;
          FHeight : integer;
          FText  : string;
          FTop    : integer;
          FLeft   : integer;
          FModul  : integer;
          FRatio  : double;
          FTyp    : TQRBarcodeType;
          FCheckSum:boolean;
          FShowText:boolean;
          FAngle  : double;

          modules:array[0..3] of shortint;


          procedure OneBarProps(code:char; var Width:integer; var lt:TBarLineType);

          procedure DoLines(data:string; Canvas:TCanvas);

          function SetLen(pI:byte):string;

          function Code_2_5_interleaved:string;
          function Code_2_5_industrial:string;
          function Code_2_5_matrix:string;
          function Code_39:string;
          function Code_39Extended:string;
          function Code_128:string;
          function Code_93:string;
          function Code_93Extended:string;
          function Code_MSI:string;
          function Code_PostNet:string;
          function Code_Codabar:string;
          function Code_EAN8:string;
          function Code_EAN13:string;
          function Code_UPC_A:string;
          function Code_UPC_E0:string;
          function Code_UPC_E1:string;
          function Code_Supp5:string;
          function Code_Supp2:string;

          function GetTypText:string;
          procedure MakeModules;


          function GetWidth : integer;
          function getEAN(Nr : String) : String;
          function getSupp(Nr : String) : String;

          procedure SetCheck(pS:string);
          procedure SetModul(v:integer);
          procedure setFheight(i:integer);
          procedure setFtop(i:integer);
          procedure setFleft(i:integer);
          procedure setFRatio(d:double);
          procedure SetFTyp(t:TQRBarcodeType);
          procedure setFCheckSum(b:boolean);
          procedure SetFAngle(d:double);
          procedure setFShowText(b:boolean);
          procedure SetFText(s:string);
  protected
    { Protected-Deklarationen }
          function MakeData : string;
          procedure Print(OfsX, OfsY : integer);

  public
    { Public-Deklarationen }
          constructor Create(Owner:TComponent); override;
          procedure DrawBarcode(Canvas:TCanvas);
          procedure DrawText(Canvas:TCanvas);
          procedure View;
  published
    { Published-Deklarationen }
{ Height of Barcode (Pixel)}
          property BarHeight : integer read FHeight write setFHeight;
          property BarTop    : integer read FTop    write setFTop;
          property BarLeft   : integer read FLeft   write setFLeft;
{ Width of the smallest line in a Barcode }
          property BarModul  : integer read FModul  write SetModul;
          property BarRatio  : double  read FRatio  write setFRatio;
          property BarTyp    : TQRBarcodeType read FTyp write setFTyp default bcCodeEAN13;
   { build CheckSum ? }
          property BarChecksum:boolean read FCheckSum write setFCheckSum default FALSE;
{ 0 - 360 degree }
          property BarAngle  :double read FAngle write setFAngle;

          property BarShowText:boolean read FShowText write setFShowText default FALSE;
          property BarWidth : integer read GetWidth;
          property BarCheck :string read FCheckVal write SetCheck;
          property BarText   : string  read FText   write setFText;
  end;

procedure Register;

implementation

type
  TBCdata = record
          Name:string;        { Name of Barcode }
          num :Boolean;       { numeric data only }
	end;

const BCdata:array[bcCode_2_5_interleaved..bcCodeSupp5] of TBCdata =
	(
		(Name:'2_5_interleaved'; num:True),
		(Name:'2_5_industrial';  num:True),
		(Name:'2_5_matrix';      num:True),
		(Name:'Code39';          num:False),
		(Name:'Code39 Extended'; num:False),
		(Name:'Code128A';        num:False),
		(Name:'Code128B';        num:False),
		(Name:'Code128C';        num:True),
		(Name:'Code93';          num:False),
		(Name:'Code93 Extended'; num:False),
		(Name:'MSI';             num:True),
		(Name:'PostNet';         num:True),
		(Name:'Codebar';         num:False),
		(Name:'EAN8';            num:True),
		(Name:'EAN13';           num:True),
		(Name:'UPC_A';           num:True),
		(Name:'UPC_E0';          num:True),
		(Name:'UPC_E1';          num:True),
		(Name:'Supplement2';   num:True),
		(Name:'Supplement5';   num:True)
	);

{$ifndef WIN32}
function Trim(const S: string): string; export;
{ Removes leading and trailing whitespace from s}
var
  I, L: Integer;
begin
  L := Length(S);
  I := 1;
  while (I <= L) and (S[I] <= ' ') do Inc(I);
  if I > L then Result := '' else
  begin
	 while S[L] <= ' ' do Dec(L);
	 Result := Copy(S, I, L - I + 1);
  end;
end;
{$endif}

{
	converts a string from '321' to the internal representation '715'
	i need this function because some pattern tables have a different
	format :

	'00111'
	converts to '05161'
}

function Convert(s:string):string;
var
  i, v : integer;
  t : string;
begin
  t := '';
  for i:=1 to Length(s) do begin
    v := ord(s[i]) - 1;
    if odd(i) then Inc(v, 5);
    t := t + Chr(v);
  end;
  Convert := t;
end;

(*
 * Berechne die Quersumme aus einer Zahl x
 * z.B.: Quersumme von 1234 ist 10
 *)

function quersumme(x:integer):integer;
var
  sum:integer;
begin
  sum := 0;
  while x > 0 do begin
    sum := sum + (x mod 10);
    x := x div 10;
  end;
  result := sum;
end;


{
	Rotate a Point by Angle 'alpha'
}
function Rotate2D(p:TPoint; alpha:double): TPoint;
var
	sinus, cosinus : Extended;
begin
	sinus   := sin(alpha);
	cosinus := cos(alpha);
	result.x := Round(p.x*cosinus + p.y*sinus);
	result.y := Round(-p.x*sinus + p.y*cosinus);
end;

{
	Move Point a by Vector b
}
function Translate2D(a, b:TPoint): TPoint;
begin
  result.x := a.x + b.x;
  result.y := a.y + b.y;
end;



constructor TQRBarcode.Create(Owner:TComponent);
begin
   inherited Create(owner);
   FAngle := 0.0;
   FRatio := 2.0;
   FModul := 1;
   FTyp   := bcCodeEAN13;
   FCheckSum := FALSE;
   FShowText := FALSE;
   if fHeight=0 then fHeight:=35;
   fTop:=1;
   fLeft:=1;
   Canvas.Pen.Color := clBlack;
   Canvas.Brush.Color := clWhite;
   View;
 end;

function TQRBarcode.SetLen(pI:byte):string;
begin
  if Length(FText)<pI then begin
    while length(FText)<pI-1 do FText:='0'+FText;
    FText:=FText+'0';
  end;
  FText:=copy(FText,length(FText)-(pI-1),pI);
end;

function TQRBarcode.GetTypText:string;
begin
  result := BCdata[FTyp].Name;
end;

procedure TQRBarcode.SetCheck(pS:string);
begin
  FCheckVal:=''; {read only}
  View;
end;

{ set Modul Width  }
procedure TQRBarcode.SetModul(v:integer);
begin
  if (v >= 1) and (v < 50) then FModul := v;
  View;
end;
procedure TQRBarcode.setFheight(i:integer);
begin
  if i>=0 then fheight:=i;
  View;
end;

procedure TQRBarcode.setFtop(i:integer);
begin
  If i>=0 then Ftop:=i;
  View;
end;

procedure TQRBarcode.setFleft(i:integer);
begin
  If i>=0 then Fleft:=i;
  View;
end;

procedure TQRBarcode.setFRatio(d:double);
begin
   Fratio:=d;
  View;
end;

procedure TQRBarcode.SetFTyp(t:TQRBarcodeType);
begin
  Ftyp:=t;
  View;
end;

procedure TQRBarcode.setFCheckSum(b:boolean);
begin
  FcheckSum:=b;
  View;
end;

procedure TQRBarcode.SetFAngle(d:double);
begin
  Fangle:=d;
  View;
end;

procedure TQRBarcode.setFShowText(b:boolean);
begin
  FShowText:=b;
  View;
end;

procedure TQRBarcode.SetFText(s:string);
begin
  Ftext:=s;
  View;
end;

{
calculate the width and the linetype of a sigle bar


  Code   Line-Color      Width               Height
------------------------------------------------------------------
	'0'   white           100%                full
	'1'   white           100%*Ratio          full
	'2'   white           150%*Ratio          full
	'3'   white           200%*Ratio          full
	'5'   black           100%                full
	'6'   black           100%*Ratio          full
	'7'   black           150%*Ratio          full
	'8'   black           200%*Ratio          full
	'A'   black           100%                2/5  (used for PostNet)
	'B'   black           100%*Ratio          2/5  (used for PostNet)
	'C'   black           150%*Ratio          2/5  (used for PostNet)
	'D'   black           200%*Ratio          2/5  (used for PostNet)
}
procedure TQRBarcode.OneBarProps(code:char; var Width:integer; var lt:TBarLineType);
begin
	case code of
         '0': begin width := modules[0]; lt := white; end;
         '1': begin width := modules[1]; lt := white; end;
         '2': begin width := modules[2]; lt := white; end;
         '3': begin width := modules[3]; lt := white; end;


         '4','5': begin width := modules[0]; lt := black; end;
         '6': begin width := modules[1]; lt := black; end;
         '7': begin width := modules[2]; lt := black; end;
         '8': begin width := modules[3]; lt := black; end;

         '9','A': begin width := modules[0]; lt := black_half; end;
         'B': begin width := modules[1]; lt := black_half; end;
         'C': begin width := modules[2]; lt := black_half; end;
         'D': begin width := modules[3]; lt := black_half; end;
	else
            begin width := modules[3]; lt := black_half; end;
          begin
	 {something went wrong  :-(}
	 {mistyped pattern table}
                 // tungli
              width := modules[3]; lt := black_half;
		// raise Exception.CreateFmt('%s: internal Error', [self.ClassName]);
	  end;
	end;
end;


function TQRBarcode.MakeData : string;
var i : integer;
begin
  {calculate the with of the different lines (modules)}
  MakeModules;
  {numeric barcode type ?}
  if BCdata[fTyp].num then begin
    FText := Trim(FText); {remove blanks}
    for i := 1 to Length(Ftext) do IF NOT (ftext[i] IN ['0'..'9']) then FText[i]:='0'; // tungli
      //if (FText[i] > '9') or (FText[i] < '0') then
      //	raise Exception.Create('Barcode must be numeric');
  end;
  FCheckVal:='';
  {get the pattern of the barcode}
  case fTyp of
    bcCode_2_5_interleaved: Result := Code_2_5_interleaved;
    bcCode_2_5_industrial:  Result := Code_2_5_industrial;
    bcCode_2_5_matrix:      Result := Code_2_5_matrix;
    bcCode39:               Result := Code_39;
    bcCode39Extended:       Result := Code_39Extended;
    bcCode128A,
    bcCode128B,
    bcCode128C:		    Result := Code_128;
    bcCode93:               Result := Code_93;
    bcCode93Extended:       Result := Code_93Extended;
    bcCodeMSI:              Result := Code_MSI;
    bcCodePostNet:          Result := Code_PostNet;
    bcCodeCodabar:          Result := Code_Codabar;
    bcCodeEAN8:             Result := Code_EAN8;
    bcCodeEAN13:            Result := Code_EAN13;
    bcCodeUPC_A:            Result := Code_UPC_A;
    bcCodeUPC_E0:           Result := Code_UPC_E0;
    bcCodeUPC_E1:           Result := Code_UPC_E1;
    bcCodeSupp2:            Result := Code_Supp2;
    bcCodeSupp5:            Result := Code_Supp5;
  else
    raise Exception.CreateFmt('%s: wrong BarcodeType', [self.ClassName]);
  end;
{
Showmessage(Format('Data <%s>', [Result]));
}
end;


function TQRBarcode.GetWidth:integer;
var
    data : string;
    i : integer;
    w : integer;
    lt : TBarLineType;
begin
  Result := 0;
  {get barcode pattern}
  data := MakeData;
  for i:=1 to Length(data) do begin{examine the pattern string}
    OneBarProps(data[i], w, lt);
    Inc(Result, w);
  end;
end;

{
////////////////////////////// EAN /////////////////////////////////////////
}

function TQRBarcode.getEAN(Nr : String) : String;
var i,fak,sum : Integer;
        tmp   : String;
begin
  sum := 0;
  tmp := copy(nr,1,Length(Nr)-1);
  fak := Length(tmp);
  for i:=1 to length(tmp) do begin
    if (fak mod 2) = 0 then sum := sum + (StrToInt(tmp[i])*1)
    else sum := sum + (StrToInt(tmp[i])*3);
    dec(fak);
  end;
  if (sum mod 10) = 0 then FCheckVal:='0'
  else FCheckVal:=IntToStr(10-(sum mod 10));
  result := tmp+FCheckVal;
end;

function TQRBarcode.getSupp(Nr : String) : String;
var i,fak,sum : Integer;
        tmp   : String;
begin
  sum := 0;
  tmp := copy(nr,1,Length(Nr)-1);
  fak := Length(tmp);
  for i:=1 to length(tmp) do begin
    if (fak mod 2) = 0 then sum := sum + (StrToInt(tmp[i])*9)
    else sum := sum + (StrToInt(tmp[i])*3);
    dec(fak);
  end;
  sum:=((sum mod 10) mod 10) mod 10;
  FCheckVal:=IntToStr(sum);
  result := tmp+FCheckVal;
end;

{
////////////////////////////// EAN8 /////////////////////////////////////////
}

{Pattern for Barcode EAN Charset A}
		 {L1   S1   L2   S2}
const tabelle_EAN_A:array['0'..'9', 1..4] of char =
	(
	('2', '6', '0', '5'),    { 0 }  {= 3 2 1 1   if Ratio=2}
	('1', '6', '1', '5'),    { 1 }
	('1', '5', '1', '6'),    { 2 }
	('0', '8', '0', '5'),    { 3 }
	('0', '5', '2', '6'),    { 4 }
	('0', '6', '2', '5'),    { 5 }
	('0', '5', '0', '8'),    { 6 }
	('0', '7', '0', '6'),    { 7 }
	('0', '6', '0', '7'),    { 8 }
	('2', '5', '0', '6')     { 9 }
	);

{Pattern for Barcode EAN Charset C}
		 {S1   L1   S2   L2}
const tabelle_EAN_C:array['0'..'9', 1..4] of char =
	(
	('7', '1', '5', '0' ),    { 0 }
	('6', '1', '6', '0' ),    { 1 }
	('6', '0', '6', '1' ),    { 2 }
	('5', '3', '5', '0' ),    { 3 }
	('5', '0', '7', '1' ),    { 4 }
	('5', '1', '7', '0' ),    { 5 }
	('5', '0', '5', '3' ),    { 6 }
	('5', '2', '5', '1' ),    { 7 }
	('5', '1', '5', '2' ),    { 8 }
	('7', '0', '5', '1' )     { 9 }
	);


function TQRBarcode.Code_UPC_A:string;
var i,j : integer;
    tmp : String;
begin
  SetLen(12);
  tmp:=getEAN(copy(FText,1,11)+'0');
  if FCheckSum then FText:=tmp else tmp:=FText;
  result := '505';   {Startcode}
  for i:=1 to 6 do begin
    for j:= 1 to 4 do result := result + tabelle_EAN_A[tmp[i], j];
  end;
  result := result + '05050';   {Trennzeichen}
  for i:=7 to 12 do begin
    for j:= 1 to 4 do result := result + tabelle_EAN_C[tmp[i], j];
  end;
  result := result + '505';   {Stopcode}
end;

{UPC E Parity Pattern Table , Number System 0}
const tabelle_UPC_E0:array['0'..'9', 1..6] of char =
	(
	('E', 'E', 'E', 'o', 'o', 'o' ),    { 0 }
	('E', 'E', 'o', 'E', 'o', 'o' ),    { 1 }
	('E', 'E', 'o', 'o', 'E', 'o' ),    { 2 }
	('E', 'E', 'o', 'o', 'o', 'E' ),    { 3 }
	('E', 'o', 'E', 'E', 'o', 'o' ),    { 4 }
	('E', 'o', 'o', 'E', 'E', 'o' ),    { 5 }
	('E', 'o', 'o', 'o', 'E', 'E' ),    { 6 }
	('E', 'o', 'E', 'o', 'E', 'o' ),    { 7 }
	('E', 'o', 'E', 'o', 'o', 'E' ),    { 8 }
	('E', 'o', 'o', 'E', 'o', 'E' )     { 9 }
	);

function TQRBarcode.Code_UPC_E0:string;
var i,j : integer;
    tmp : String;
    c   : char;
begin
  SetLen(7);
  tmp:=getEAN(copy(FText,1,6)+'0');
  c:=tmp[7];
  if FCheckSum then FText:=tmp else tmp := FText;
  result := '505';   {Startcode}
  for i:=1 to 6 do begin
    if tabelle_UPC_E0[c,i]='E' then begin
      for j:= 1 to 4 do result := result + tabelle_EAN_C[tmp[i],5-j];
    end else begin
      for j:= 1 to 4 do result := result + tabelle_EAN_A[tmp[i],j];
    end;
  end;
  result := result + '05050';   {Stopcode}
end;

function TQRBarcode.Code_UPC_E1:string;
var i,j : integer;
    tmp : String;
    c   : char;
begin
  SetLen(7);
  tmp:=getEAN(copy(FText,1,6)+'0');
  c:=tmp[7];
  if FCheckSum then FText:=tmp else tmp := FText;
  result := '505';   {Startcode}
  for i:=1 to 6 do begin
    if tabelle_UPC_E0[c,i]='E' then begin
      for j:= 1 to 4 do result := result + tabelle_EAN_A[tmp[i],j];
    end else begin
      for j:= 1 to 4 do result := result + tabelle_EAN_C[tmp[i],5-j];
    end;
  end;
  result := result + '05050';   {Stopcode}
end;

function TQRBarcode.Code_Supp5:string;
var i,j : integer;
    tmp : String;
    c   : char;
begin
  SetLen(5);
  tmp:=getSupp(copy(FText,1,5)+'0');
  c:=tmp[6];
  if FCheckSum then FText:=tmp else tmp := FText;
  result := '506';   {Startcode}
  for i:=1 to 5 do begin
    if tabelle_UPC_E0[c,(6-5)+i]='E' then begin
      for j:= 1 to 4 do result := result + tabelle_EAN_C[tmp[i],5-j];
    end else begin
      for j:= 1 to 4 do result := result + tabelle_EAN_A[tmp[i],j];
    end;
    if i<5 then result:=result+'05'; // character delineator
  end;
end;

function TQRBarcode.Code_Supp2:string;
var i,j : integer;
    tmp,mS : String;
    c   : char;
begin
  SetLen(2);
  i:=StrToInt(Ftext);
  case i mod 4 of
  3: mS:='EE';
  2: mS:='Eo';
  1: mS:='oE';
  0: mS:='oo';
  end;
  tmp:=getSupp(copy(FText,1,2)+'0');
  c:=tmp[3];
  if FCheckSum then FText:=tmp else tmp := FText;
  result := '506';   {Startcode}
  for i:=1 to 2 do begin
    if mS[i]='E' then begin
      for j:= 1 to 4 do result := result + tabelle_EAN_C[tmp[i],5-j];
    end else begin
      for j:= 1 to 4 do result := result + tabelle_EAN_A[tmp[i],j];
    end;
    if i<2 then result:=result+'05'; // character delineator
  end;
end;

function TQRBarcode.Code_EAN8:string;
var i, j: integer;
    tmp : String;
begin
  SetLen(8);
  tmp:=getEAN(copy(Ftext,1,7)+'0');
  if FCheckSum then Ftext:=tmp else tmp:=Ftext;
  result := '505';   {Startcode}
  for i:=1 to 4 do begin
    for j:= 1 to 4 do result := result + tabelle_EAN_A[tmp[i], j] ;
  end;
  result := result + '05050';   {Trennzeichen}
  for i:=5 to 8 do begin
    for j:= 1 to 4 do result := result + tabelle_EAN_C[tmp[i], j] ;
  end;
  result := result + '505';   {Stopcode}
end;

{////////////////////////////// EAN13 ///////////////////////////////////////}

{Pattern for Barcode EAN Zeichensatz B}
		 {L1   S1   L2   S2}
const tabelle_EAN_B:array['0'..'9', 1..4] of char =
	(
  ('0', '5', '1', '7'),    { 0 }
  ('0', '6', '1', '6'),    { 1 }
  ('1', '6', '0', '6'),    { 2 }
  ('0', '5', '3', '5'),    { 3 }
  ('1', '7', '0', '5'),    { 4 }
  ('0', '7', '1', '5'),    { 5 }
  ('3', '5', '0', '5'),    { 6 }
  ('1', '5', '2', '5'),    { 7 }
  ('2', '5', '1', '5'),    { 8 }
  ('1', '5', '0', '7')     { 9 }
	);

{Zuordung der Paraitaetsfolgen f�r EAN13}
const tabelle_ParityEAN13:array[0..9, 1..6] of char =
	(
  ('A', 'A', 'A', 'A', 'A', 'A'),    { 0 }
  ('A', 'A', 'B', 'A', 'B', 'B'),    { 1 }
  ('A', 'A', 'B', 'B', 'A', 'B'),    { 2 }
  ('A', 'A', 'B', 'B', 'B', 'A'),    { 3 }
  ('A', 'B', 'A', 'A', 'B', 'B'),    { 4 }
  ('A', 'B', 'B', 'A', 'A', 'B'),    { 5 }
  ('A', 'B', 'B', 'B', 'A', 'A'),    { 6 }
  ('A', 'B', 'A', 'B', 'A', 'B'),    { 7 }
  ('A', 'B', 'A', 'B', 'B', 'A'),    { 8 }
  ('A', 'B', 'B', 'A', 'B', 'A')     { 9 }
	);

function TQRBarcode.Code_EAN13:string;
var i, j, LK: integer;
        tmp : String;
begin
  SetLen(13);
  tmp:=getEAN(copy(FText,1,12)+'0');
  if FCheckSum then FText:=tmp else tmp:=FText;
   LK := StrToInt(tmp[1]);
   tmp := copy(tmp,2,12);
   result := '505';   {Startcode}
   for i:=1 to 6 do begin
     case tabelle_ParityEAN13[LK,i] of
      'A' : for j:= 1 to 4 do  result := result + tabelle_EAN_A[tmp[i], j] ;
      'B' : for j:= 1 to 4 do  result := result + tabelle_EAN_B[tmp[i], j] ;
      'C' : for j:= 1 to 4 do  result := result + tabelle_EAN_C[tmp[i], j] ;
     end;
   end;
   result := result + '05050';   {Trennzeichen}
   for i:=7 to 12 do begin
     for j:= 1 to 4 do result := result + tabelle_EAN_C[tmp[i], j] ;
   end;
   result := result + '505';   {Stopcode}
end;

{Pattern for Barcode 2 of 5}
const tabelle_2_5:array['0'..'9', 1..5] of char =
	(
  ('0', '0', '1', '1', '0'),    {'0'}
  ('1', '0', '0', '0', '1'),    {'1'}
  ('0', '1', '0', '0', '1'),    {'2'}
  ('1', '1', '0', '0', '0'),    {'3'}
  ('0', '0', '1', '0', '1'),    {'4'}
  ('1', '0', '1', '0', '0'),    {'5'}
  ('0', '1', '1', '0', '0'),    {'6'}
  ('0', '0', '0', '1', '1'),    {'7'}
  ('1', '0', '0', '1', '0'),    {'8'}
  ('0', '1', '0', '1', '0')     {'9'}
	);

function TQRBarcode.Code_2_5_interleaved:string;
var	i, j: integer;
	c : char;
begin
  result := '5050';   {Startcode}
    for i:=1 to Length(FText) div 2 do begin
      for j:= 1 to 5 do begin
        if tabelle_2_5[FText[i*2-1], j] = '1' then c := '6' else c := '5';
        result := result + c;
        if tabelle_2_5[FText[i*2], j] = '1' then c := '1' else c := '0';
        result := result + c;
      end;
    end;
  result := result + '605';    {Stopcode}
end;


function TQRBarcode.Code_2_5_industrial:string;
var i, j: integer;
begin
  result := '606050';   {Startcode}
  for i:=1 to Length(FText) do begin
    for j:= 1 to 5 do begin
      if tabelle_2_5[FText[i], j] = '1' then result := result + '60'
      else result := result + '50';
    end;
  end;
  result := result + '605060';   {Stopcode}
end;

function TQRBarcode.Code_2_5_matrix:string;
var i, j: integer;
    c :char;
begin
  result := '705050';   {Startcode}
  for i:=1 to Length(FText) do begin
    for j:= 1 to 5 do begin
      if tabelle_2_5[FText[i], j] = '1' then c := '1'
      else c := '0';
     {Falls i ungerade ist dann mache L�cke zu Strich}
      if odd(j) then c := chr(ord(c)+5);
      result := result + c;
    end;
    result := result + '0';   {L�cke zwischen den Zeichen}
  end;
  result := result + '70505';   {Stopcode}
end;


function TQRBarcode.Code_39:string;

type TCode39 = record
           c : char;
           data : array[0..9] of char;
           chk: shortint;
	end;

const tabelle_39: array[0..43] of TCode39 = (
	( c:'0'; data:'505160605'; chk:0 ),
	( c:'1'; data:'605150506'; chk:1 ),
	( c:'2'; data:'506150506'; chk:2 ),
	( c:'3'; data:'606150505'; chk:3 ),
	( c:'4'; data:'505160506'; chk:4 ),
	( c:'5'; data:'605160505'; chk:5 ),
	( c:'6'; data:'506160505'; chk:6 ),
	( c:'7'; data:'505150606'; chk:7 ),
	( c:'8'; data:'605150605'; chk:8 ),
	( c:'9'; data:'506150605'; chk:9 ),
	( c:'A'; data:'605051506'; chk:10),
	( c:'B'; data:'506051506'; chk:11),
	( c:'C'; data:'606051505'; chk:12),
	( c:'D'; data:'505061506'; chk:13),
	( c:'E'; data:'605061505'; chk:14),
	( c:'F'; data:'506061505'; chk:15),
	( c:'G'; data:'505051606'; chk:16),
	( c:'H'; data:'605051605'; chk:17),
	( c:'I'; data:'506051600'; chk:18),
	( c:'J'; data:'505061605'; chk:19),
	( c:'K'; data:'605050516'; chk:20),
	( c:'L'; data:'506050516'; chk:21),
	( c:'M'; data:'606050515'; chk:22),
	( c:'N'; data:'505060516'; chk:23),
	( c:'O'; data:'605060515'; chk:24),
	( c:'P'; data:'506060515'; chk:25),
	( c:'Q'; data:'505050616'; chk:26),
	( c:'R'; data:'605050615'; chk:27),
	( c:'S'; data:'506050615'; chk:28),
	( c:'T'; data:'505060615'; chk:29),
	( c:'U'; data:'615050506'; chk:30),
	( c:'V'; data:'516050506'; chk:31),
	( c:'W'; data:'616050505'; chk:32),
	( c:'X'; data:'515060506'; chk:33),
	( c:'Y'; data:'615060505'; chk:34),
	( c:'Z'; data:'516060505'; chk:35),
	( c:'-'; data:'515050606'; chk:36),
	( c:'.'; data:'615050605'; chk:37),
	( c:' '; data:'516050605'; chk:38),
	( c:'*'; data:'515060605'; chk:0 ),
	( c:'$'; data:'515151505'; chk:39),
	( c:'/'; data:'515150515'; chk:40),
	( c:'+'; data:'515051515'; chk:41),
	( c:'%'; data:'505151515'; chk:42)
	);


function FindIdx(z:char):integer;
var i:integer;
begin
  for i:=0 to High(tabelle_39) do begin
    if z = tabelle_39[i].c then begin
       result := i;
       exit;
    end;
  end;
  result := -1;
end;

var
    i, idx : integer;
    checksum:integer;

begin
  checksum := 0;
  {Startcode}
  result := tabelle_39[FindIdx('*')].data + '0';
  for i:=1 to Length(FText) do begin
    idx := FindIdx(FText[i]);
    if idx < 0 then continue;
    result := result + tabelle_39[idx].data + '0';
    Inc(checksum, tabelle_39[idx].chk);
  end;

  {Calculate Checksum Data}
   checksum := checksum mod 43;
   for i:=0 to High(tabelle_39) do begin
     if checksum = tabelle_39[i].chk then begin
        if FCheckSum then result := result + tabelle_39[i].data + '0';
        FCheckVal:=tabelle_39[i].c;
        exit;
     end;
   end;

  {Stopcode}
  result := result + tabelle_39[FindIdx('*')].data;
end;

function TQRBarcode.Code_39Extended:string;

const code39x : array[0..127] of string[2] =
	(
	('%U'), ('$A'), ('$B'), ('$C'), ('$D'), ('$E'), ('$F'), ('$G'),
	('$H'), ('$I'), ('$J'), ('$K'), ('$L'), ('$M'), ('$N'), ('$O'),
	('$P'), ('$Q'), ('$R'), ('$S'), ('$T'), ('$U'), ('$V'), ('$W'),
	('$X'), ('$Y'), ('$Z'), ('%A'), ('%B'), ('%C'), ('%D'), ('%E'),
	 (' '), ('/A'), ('/B'), ('/C'), ('/D'), ('/E'), ('/F'), ('/G'),
	('/H'), ('/I'), ('/J'), ('/K'), ('/L'), ('/M'), ('/N'), ('/O'),
	( '0'),  ('1'),  ('2'),  ('3'),  ('4'),  ('5'),  ('6'),  ('7'),
	 ('8'),  ('9'), ('/Z'), ('%F'), ('%G'), ('%H'), ('%I'), ('%J'),
	('%V'),  ('A'),  ('B'),  ('C'),  ('D'),  ('E'),  ('F'),  ('G'),
	 ('H'),  ('I'),  ('J'),  ('K'),  ('L'),  ('M'),  ('N'),  ('O'),
	 ('P'),  ('Q'),  ('R'),  ('S'),  ('T'),  ('U'),  ('V'),  ('W'),
	 ('X'),  ('Y'),  ('Z'), ('%K'), ('%L'), ('%M'), ('%N'), ('%O'),
	('%W'), ('+A'), ('+B'), ('+C'), ('+D'), ('+E'), ('+F'), ('+G'),
	('+H'), ('+I'), ('+J'), ('+K'), ('+L'), ('+M'), ('+N'), ('+O'),
	('+P'), ('+Q'), ('+R'), ('+S'), ('+T'), ('+U'), ('+V'), ('+W'),
	('+X'), ('+Y'), ('+Z'), ('%P'), ('%Q'), ('%R'), ('%S'), ('%T')
	);


var
  save:string;
  i : integer;
begin
  save := FText;
  FText := '';
  for i:=1 to Length(save) do begin
    if ord(save[i]) <= 127 then FText := FText + code39x[ord(save[i])];
  end;
  result := Code_39;
  FText := save;
end;


{
Code 128
}
function TQRBarcode.Code_128:string;
type TCode128 = record
        a, b : char;
	c : string[2];
	data : string[6];
      end;

const tabelle_128: array[0..102] of TCode128 = (
  ( a:' '; b:' '; c:'00'; data:'212222' ),
  ( a:'!'; b:'!'; c:'01'; data:'222122' ),
  ( a:'"'; b:'"'; c:'02'; data:'222221' ),
  ( a:'#'; b:'#'; c:'03'; data:'121223' ),
  ( a:'$'; b:'$'; c:'04'; data:'121322' ),
  ( a:'%'; b:'%'; c:'05'; data:'131222' ),
  ( a:'&'; b:'&'; c:'06'; data:'122213' ),
  ( a:''''; b:''''; c:'07'; data:'122312' ),
  ( a:'('; b:'('; c:'08'; data:'132212' ),
  ( a:')'; b:')'; c:'09'; data:'221213' ),
  ( a:'*'; b:'*'; c:'10'; data:'221312' ),
  ( a:'+'; b:'+'; c:'11'; data:'231212' ),
  ( a:'�'; b:'�'; c:'12'; data:'112232' ),
  ( a:'-'; b:'-'; c:'13'; data:'122132' ),
  ( a:'.'; b:'.'; c:'14'; data:'122231' ),
  ( a:'/'; b:'/'; c:'15'; data:'113222' ),
  ( a:'0'; b:'0'; c:'16'; data:'123122' ),
  ( a:'1'; b:'1'; c:'17'; data:'123221' ),
  ( a:'2'; b:'2'; c:'18'; data:'223211' ),
  ( a:'3'; b:'3'; c:'19'; data:'221132' ),
  ( a:'4'; b:'4'; c:'20'; data:'221231' ),
  ( a:'5'; b:'5'; c:'21'; data:'213212' ),
  ( a:'6'; b:'6'; c:'22'; data:'223112' ),
  ( a:'7'; b:'7'; c:'23'; data:'312131' ),
  ( a:'8'; b:'8'; c:'24'; data:'311222' ),
  ( a:'9'; b:'9'; c:'25'; data:'321122' ),
  ( a:':'; b:':'; c:'26'; data:'321221' ),
  ( a:';'; b:';'; c:'27'; data:'312212' ),
  ( a:'<'; b:'<'; c:'28'; data:'322112' ),
  ( a:'='; b:'='; c:'29'; data:'322211' ),
  ( a:'>'; b:'>'; c:'30'; data:'212123' ),
  ( a:'?'; b:'?'; c:'31'; data:'212321' ),
  ( a:'@'; b:'@'; c:'32'; data:'232121' ),
  ( a:'A'; b:'A'; c:'33'; data:'111323' ),
  ( a:'B'; b:'B'; c:'34'; data:'131123' ),
  ( a:'C'; b:'C'; c:'35'; data:'131321' ),
  ( a:'D'; b:'D'; c:'36'; data:'112313' ),
  ( a:'E'; b:'E'; c:'37'; data:'132113' ),
  ( a:'F'; b:'F'; c:'38'; data:'132311' ),
  ( a:'G'; b:'G'; c:'39'; data:'211313' ),
  ( a:'H'; b:'H'; c:'40'; data:'231113' ),
  ( a:'I'; b:'I'; c:'41'; data:'231311' ),
  ( a:'J'; b:'J'; c:'42'; data:'112133' ),
  ( a:'K'; b:'K'; c:'43'; data:'112331' ),
  ( a:'L'; b:'L'; c:'44'; data:'132131' ),
  ( a:'M'; b:'M'; c:'45'; data:'113123' ),
  ( a:'N'; b:'N'; c:'46'; data:'113321' ),
  ( a:'O'; b:'O'; c:'47'; data:'133121' ),
  ( a:'P'; b:'P'; c:'48'; data:'313121' ),
  ( a:'Q'; b:'Q'; c:'49'; data:'211331' ),
  ( a:'R'; b:'R'; c:'50'; data:'231131' ),
  ( a:'S'; b:'S'; c:'51'; data:'213113' ),
  ( a:'T'; b:'T'; c:'52'; data:'213311' ),
  ( a:'U'; b:'U'; c:'53'; data:'213131' ),
  ( a:'V'; b:'V'; c:'54'; data:'311123' ),
  ( a:'W'; b:'W'; c:'55'; data:'311321' ),
  ( a:'X'; b:'X'; c:'56'; data:'331121' ),
  ( a:'Y'; b:'Y'; c:'57'; data:'312113' ),
  ( a:'Z'; b:'Z'; c:'58'; data:'312311' ),
  ( a:'['; b:'['; c:'59'; data:'332111' ),
  ( a:'\'; b:'\'; c:'60'; data:'314111' ),
  ( a:']'; b:']'; c:'61'; data:'221411' ),
  ( a:'^'; b:'^'; c:'62'; data:'431111' ),
  ( a:'_'; b:'_'; c:'63'; data:'111224' ),
  ( a:' '; b:'`'; c:'64'; data:'111422' ),
  ( a:' '; b:'a'; c:'65'; data:'121124' ),
  ( a:' '; b:'b'; c:'66'; data:'121421' ),
  ( a:' '; b:'c'; c:'67'; data:'141122' ),
  ( a:' '; b:'d'; c:'68'; data:'141221' ),
  ( a:' '; b:'e'; c:'69'; data:'112214' ),
  ( a:' '; b:'f'; c:'70'; data:'112412' ),
  ( a:' '; b:'g'; c:'71'; data:'122114' ),
  ( a:' '; b:'h'; c:'72'; data:'122411' ),
  ( a:' '; b:'i'; c:'73'; data:'142112' ),
  ( a:' '; b:'j'; c:'74'; data:'142211' ),
  ( a:' '; b:'k'; c:'75'; data:'241211' ),
  ( a:' '; b:'l'; c:'76'; data:'221114' ),
  ( a:' '; b:'m'; c:'77'; data:'413111' ),
  ( a:' '; b:'n'; c:'78'; data:'241112' ),
  ( a:' '; b:'o'; c:'79'; data:'134111' ),
  ( a:' '; b:'p'; c:'80'; data:'111242' ),
  ( a:' '; b:'q'; c:'81'; data:'121142' ),
  ( a:' '; b:'r'; c:'82'; data:'121241' ),
  ( a:' '; b:'s'; c:'83'; data:'114212' ),
  ( a:' '; b:'t'; c:'84'; data:'124112' ),
  ( a:' '; b:'u'; c:'85'; data:'124211' ),
  ( a:' '; b:'v'; c:'86'; data:'411212' ),
  ( a:' '; b:'w'; c:'87'; data:'421112' ),
  ( a:' '; b:'x'; c:'88'; data:'421211' ),
  ( a:' '; b:'y'; c:'89'; data:'212141' ),
  ( a:' '; b:'z'; c:'90'; data:'214121' ),
  ( a:' '; b:'{'; c:'91'; data:'412121' ),
  ( a:' '; b:'|'; c:'92'; data:'111143' ),
  ( a:' '; b:'}'; c:'93'; data:'111341' ),
  ( a:' '; b:'~'; c:'94'; data:'131141' ),
  ( a:' '; b:' '; c:'95'; data:'114113' ),
  ( a:' '; b:' '; c:'96'; data:'114311' ),
  ( a:' '; b:' '; c:'97'; data:'411113' ),
  ( a:' '; b:' '; c:'98'; data:'411311' ),
  ( a:' '; b:' '; c:'99'; data:'113141' ),
  ( a:' '; b:' '; c:'  '; data:'114131' ),
  ( a:' '; b:' '; c:'  '; data:'311141' ),
  ( a:' '; b:' '; c:'  '; data:'411131' )
	);

StartA = '211412';
StartB = '211214';
StartC = '211232';
Stop   = '2331112';

  {find Code 128 Codeset A or B}
   function Find_Code128AB(c:char):integer;
   var  i:integer;
        v:char;
   begin
      for i:=0 to High(tabelle_128) do begin
        if FTyp = bcCode128A then v := tabelle_128[i].a
        else v := tabelle_128[i].b;
        if c = v then begin
          result := i;
          exit;
        end;
      end;
      result := -1;
   end;

   function Find_Code128C(c:string):integer;
   var  i:integer;
   begin
      for i:=0 to High(tabelle_128) do begin
        if tabelle_128[i].c = c then begin
          result := i;
          exit;
        end;
      end;
      result := -1;
   end;

var i,j,idx: integer;
	startcode:string;
	checksum : integer;
begin
  case FTyp of
    bcCode128A: begin checksum := 103; startcode:= StartA; end;
    bcCode128B: begin checksum := 104; startcode:= StartB; end;
    bcCode128C: begin checksum := 105; startcode:= StartC; end;
  end;
  result := Convert(startcode);    {Startcode}
  if FTyp = bcCode128A then Ftext:=AnsiUpperCase(FText);
  if FTyp = bcCode128B then Ftext:=AnsiLowerCase(FText);
  if FTyp = bcCode128C then begin
     if (Length(FText) mod 2<>0) then FText:='0'+FText;
     for i:=1 to (Length(FText) div 2) do begin
       j:=(i-1)*2+1;
       idx:=Find_Code128C(copy(Ftext,j,2));
       if idx < 0 then idx := Find_Code128C('00');
       result := result + Convert(tabelle_128[idx].data);
       Inc(checksum, idx*i);
     end;
  end else begin
     for i:=1 to Length(FText) do begin
       idx := Find_Code128AB(FText[i]);
       if idx < 0 then idx := Find_Code128AB(' ');
       result := result + Convert(tabelle_128[idx].data);
       Inc(checksum, idx*i);
     end;
  end;
  checksum := checksum mod 103;
  case FTyp of
    bcCode128A: FCheckVal:=tabelle_128[checksum].a;
    bcCode128B: FCheckVal:=tabelle_128[checksum].b;
    bcCode128C: FCheckVal:=tabelle_128[checksum].c;
  end;
  result := result + Convert(tabelle_128[checksum].data);
  result := result + Convert(Stop);      {Stopcode}
end;

function TQRBarcode.Code_93:string;
type TCode93 =
	record
		c : char;
		data : array[0..5] of char;
	end;

const tabelle_93: array[0..46] of TCode93 = (
	( c:'0'; data:'131112'  ),
	( c:'1'; data:'111213'  ),
	( c:'2'; data:'111312'  ),
	( c:'3'; data:'111411'  ),
	( c:'4'; data:'121113'  ),
	( c:'5'; data:'121212'  ),
	( c:'6'; data:'121311'  ),
	( c:'7'; data:'111114'  ),
	( c:'8'; data:'131211'  ),
	( c:'9'; data:'141111'  ),
	( c:'A'; data:'211113'  ),
	( c:'B'; data:'211212'  ),
	( c:'C'; data:'211311'  ),
	( c:'D'; data:'221112'  ),
	( c:'E'; data:'221211'  ),
	( c:'F'; data:'231111'  ),
	( c:'G'; data:'112113'  ),
	( c:'H'; data:'112212'  ),
	( c:'I'; data:'112311'  ),
	( c:'J'; data:'122112'  ),
	( c:'K'; data:'132111'  ),
	( c:'L'; data:'111123'  ),
	( c:'M'; data:'111222'  ),
	( c:'N'; data:'111321'  ),
	( c:'O'; data:'121122'  ),
	( c:'P'; data:'131121'  ),
	( c:'Q'; data:'212112'  ),
	( c:'R'; data:'212211'  ),
	( c:'S'; data:'211122'  ),
	( c:'T'; data:'211221'  ),
	( c:'U'; data:'221121'  ),
	( c:'V'; data:'222111'  ),
	( c:'W'; data:'112122'  ),
	( c:'X'; data:'112221'  ),
	( c:'Y'; data:'122121'  ),
	( c:'Z'; data:'123111'  ),
	( c:'-'; data:'121131'  ),
	( c:'.'; data:'311112'  ),
	( c:' '; data:'311211'  ),
	( c:'$'; data:'321111'  ),
	( c:'/'; data:'112131'  ),
	( c:'+'; data:'113121'  ),
	( c:'%'; data:'211131'  ),
  ( c:'['; data:'121221'  ),   {only used for Extended Code 93}
  ( c:']'; data:'312111'  ),   {only used for Extended Code 93}
  ( c:'{'; data:'311121'  ),   {only used for Extended Code 93}
  ( c:'}'; data:'122211'  )    {only used for Extended Code 93}
	);

{find Code 93}
function Find_Code93(c:char):integer;
var i:integer;
begin
  for i:=0 to High(tabelle_93) do begin
    if c = tabelle_93[i].c then begin
      result := i;
      exit;
    end;
  end;
  result := -1;
end;

var
  i, idx : integer;
  checkC, checkK,   {Checksums}
  weightC, weightK : integer;
begin
  Result := Convert('111141');   {Startcode}
  for i:=1 to Length(FText) do begin
    idx := Find_Code93(FText[i]);
    // Tungli
    //if idx < 0 then raise Exception.CreateFmt('%s:Code93 bad Data <%s>', [self.ClassName,FText]);
    if idx<0 then break; // tungli
    result := result + Convert(tabelle_93[idx].data);
  end;
  if idx<0 then begin  // tungli
    Result:=Convert('111141');
    Ftext:='111141';
  end;
  checkC := 0;
  checkK := 0;
  weightC := 1;
  weightK := 2;
  for i:=Length(FText) downto 1 do begin
    idx := Find_Code93(FText[i]);
    Inc(checkC, idx*weightC);
    Inc(checkK, idx*weightK);
    Inc(weightC);
    if weightC > 20 then weightC := 1;
    Inc(weightK);
    if weightK > 15 then weightC := 1;
  end;
  Inc(checkK, checkC);
  checkC := checkC mod 47;
  checkK := checkK mod 47;
  result := result + Convert(tabelle_93[checkC].data) +
          Convert(tabelle_93[checkK].data);
  result := result + Convert('1111411');   {Stopcode}
end;

function TQRBarcode.Code_93Extended:string;
const code93x : array[0..127] of string[2] =
    (
    (']U'), ('[A'), ('[B'), ('[C'), ('[D'), ('[E'), ('[F'), ('[G'),
    ('[H'), ('[I'), ('[J'), ('[K'), ('[L'), ('[M'), ('[N'), ('[O'),
    ('[P'), ('[Q'), ('[R'), ('[S'), ('[T'), ('[U'), ('[V'), ('[W'),
    ('[X'), ('[Y'), ('[Z'), (']A'), (']B'), (']C'), (']D'), (']E'),
     (' '), ('{A'), ('{B'), ('{C'), ('{D'), ('{E'), ('{F'), ('{G'),
    ('{H'), ('{I'), ('{J'), ('{K'), ('{L'), ('{M'), ('{N'), ('{O'),
    ( '0'),  ('1'),  ('2'),  ('3'),  ('4'),  ('5'),  ('6'),  ('7'),
     ('8'),  ('9'), ('{Z'), (']F'), (']G'), (']H'), (']I'), (']J'),
    (']V'),  ('A'),  ('B'),  ('C'),  ('D'),  ('E'),  ('F'),  ('G'),
     ('H'),  ('I'),  ('J'),  ('K'),  ('L'),  ('M'),  ('N'),  ('O'),
     ('P'),  ('Q'),  ('R'),  ('S'),  ('T'),  ('U'),  ('V'),  ('W'),
     ('X'),  ('Y'),  ('Z'), (']K'), (']L'), (']M'), (']N'), (']O'),
    (']W'), ('}A'), ('}B'), ('}C'), ('}D'), ('}E'), ('}F'), ('}G'),
    ('}H'), ('}I'), ('}J'), ('}K'), ('}L'), ('}M'), ('}N'), ('}O'),
    ('}P'), ('}Q'), ('}R'), ('}S'), ('}T'), ('}U'), ('}V'), ('}W'),
    ('}X'), ('}Y'), ('}Z'), (']P'), (']Q'), (']R'), (']S'), (']T')
    );

var
  {save:array[0..254] of char;}
  {old:string;}
	save : string;
	i : integer;
begin
 {CharToOem(PChar(FText), save);}
  save := FText;
  FText := '';
  for i:=0 to Length(save)-1 do begin
    if ord(save[i]) <= 127 then FText := FText + code93x[ord(save[i])];
  end;
  {Showmessage(Format('Text: <%s>', [FText]));}
  result := Code_93;
  FText := save;
end;



function TQRBarcode.Code_MSI:string;
const tabelle_MSI:array['0'..'9'] of string[8] =
  (
  ( '51515151' ),    {'0'}
  ( '51515160' ),    {'1'}
  ( '51516051' ),    {'2'}
  ( '51516060' ),    {'3'}
  ( '51605151' ),    {'4'}
  ( '51605160' ),    {'5'}
  ( '51606051' ),    {'6'}
  ( '51606060' ),    {'7'}
  ( '60515151' ),    {'8'}
  ( '60515160' )     {'9'}
               );

var i:integer;
    check_even, check_odd, checksum:integer;
begin
  result := '60';    {Startcode}
  check_even := 0;
  check_odd  := 0;
  for i:=1 to Length(FText) do begin
    if odd(i-1) then check_odd := check_odd*10+ord(FText[i])
    else check_even := check_even+ord(FText[i]);
    result := result + tabelle_MSI[FText[i]];
  end;
  checksum := quersumme(check_odd*2) + check_even;
  checksum := checksum mod 10;
  if checksum > 0 then checksum := 10-checksum;
  FCheckVal:=IntToStr(checksum);
  result := result + tabelle_MSI[chr(ord('0')+checksum)];
  result := result + '515'; {Stopcode}
end;

function TQRBarcode.Code_PostNet:string;
const tabelle_PostNet:array['0'..'9'] of string[10] =
  (
  ( '5151A1A1A1' ),    {'0'}
  ( 'A1A1A15151' ),    {'1'}
  ( 'A1A151A151' ),    {'2'}
  ( 'A1A15151A1' ),    {'3'}
  ( 'A151A1A151' ),    {'4'}
  ( 'A151A151A1' ),    {'5'}
  ( 'A15151A1A1' ),    {'6'}
  ( '51A1A1A151' ),    {'7'}
  ( '51A1A151A1' ),    {'8'}
  ( '51A151A1A1' )     {'9'}
	);
var  i:integer;
begin
  result := '51';
  for i:=1 to Length(FText) do begin
    result := result + tabelle_PostNet[FText[i]];
  end;
  result := result + '5';
end;


function TQRBarcode.Code_Codabar:string;
type TCodabar = record
         c : char;
	 data : array[0..6] of char;
	end;

const tabelle_cb: array[0..19] of TCodabar = (
	( c:'1'; data:'5050615'  ),
	( c:'2'; data:'5051506'  ),
	( c:'3'; data:'6150505'  ),
	( c:'4'; data:'5060515'  ),
	( c:'5'; data:'6050515'  ),
	( c:'6'; data:'5150506'  ),
	( c:'7'; data:'5150605'  ),
	( c:'8'; data:'5160505'  ),
	( c:'9'; data:'6051505'  ),
	( c:'0'; data:'5050516'  ),
	( c:'-'; data:'5051605'  ),
	( c:'$'; data:'5061505'  ),
	( c:':'; data:'6050606'  ),
	( c:'/'; data:'6060506'  ),
	( c:'.'; data:'6060605'  ),
	( c:'+'; data:'5060606'  ),
	( c:'A'; data:'5061515'  ),
	( c:'B'; data:'5151506'  ),
	( c:'C'; data:'5051516'  ),
	( c:'D'; data:'5051615'  )
	);



{find Codabar}
function Find_Codabar(c:char):integer;
var i:integer;
begin
   for i:=0 to High(tabelle_cb) do begin
     if c = tabelle_cb[i].c then begin
       result := i;
       exit;
     end;
   end;
   result := -1;
end;

var  i, idx : integer;
begin
  result := tabelle_cb[Find_Codabar('A')].data + '0';
  for i:=1 to Length(FText) do begin
    idx := Find_Codabar(FText[i]);
    result := result + tabelle_cb[idx].data + '0';
  end;
  result := result + tabelle_cb[Find_Codabar('B')].data;
end;

procedure TQRBarcode.MakeModules;
begin
   case fTyp of
     bcCode_2_5_interleaved,
     bcCode_2_5_industrial,
     bcCode39,
     bcCodeEAN8,
     bcCodeEAN13,
     bcCode39Extended,
     bcCodeCodabar,
     bcCodeUPC_A,
     bcCodeUPC_E0,
     bcCodeUPC_E1,
     bcCodeSupp2,
     bcCodeSupp5:
     begin
             if fRatio < 2.0 then fRatio := 2.0;
             if fRatio > 3.0 then fRatio := 3.0;
     end;

     bcCode_2_5_matrix:
     begin
             if fRatio < 2.25 then fRatio := 2.25;
             if fRatio > 3.0 then fRatio := 3.0;
     end;
     bcCode128A,
     bcCode128B,
     bcCode128C,
     bcCode93,
     bcCode93Extended,
     bcCodeMSI,
     bcCodePostNet:    ;
   end;
   modules[0] := FModul;
   modules[1] := Round(FModul*FRatio);
   modules[2] := modules[1] * 3 div 2;
   modules[3] := modules[1] * 2;
end;


{
Draw the Barcode

Parameter :
'data' holds the pattern for a Barcode.
A barcode begins always with a black line and
ends with a black line.

The white Lines builds the space between the black Lines.

A black line must always followed by a white Line and vica versa.

Examples:
	'50505'   // 3 thin black Lines with 2 thin white Lines
	'606'     // 2 fat black Lines with 1 thin white Line

	'5605015' // Error


data[] : see procedure OneBarProps

}
procedure TQRBarcode.DoLines(data:string; Canvas:TCanvas);

var i:integer;
  lt : TBarLineType;
  xadd:integer;
  width, height:integer;
  a,b,c,d,     {Edges of a line (we need 4 Point because the line}
  				{is a recangle}
  orgin : TPoint;
  alpha:double;
begin
   xadd := 0;
   orgin.x := FLeft;
   orgin.y := FTop;
   alpha := FAngle*pi / 180.0;
   with Canvas do begin Pen.Width := 1;

      for i:=1 to Length(data) do begin {examine the pattern string}
        OneBarProps(data[i], width, lt);  // urci sirku a farbu
        {
        case data[i] of
                '0': begin width := modules[0]; lt := white; end;
                '1': begin width := modules[1]; lt := white; end;
                '2': begin width := modules[2]; lt := white; end;
                '3': begin width := modules[3]; lt := white; end;


                '5': begin width := modules[0]; lt := black; end;
                '6': begin width := modules[1]; lt := black; end;
                '7': begin width := modules[2]; lt := black; end;
                '8': begin width := modules[3]; lt := black; end;

                'A': begin width := modules[0]; lt := black_half; end;
                'B': begin width := modules[1]; lt := black_half; end;
                'C': begin width := modules[2]; lt := black_half; end;
                'D': begin width := modules[3]; lt := black_half; end;


        else
                begin
                // something went wrong
                // mistyped pattern table
                raise Exception.CreateFmt('%s: internal Error', [self.ClassName]);
                end;
        end;
         }

        if (lt = black) or (lt = black_half) then Pen.Color := clBlack
        else Pen.Color := clWhite;
        Brush.Color := Pen.Color;
        if lt = black_half then height := FHeight * 2 div 5
        else height := FHeight;
        a.x := xadd;
        a.y := 0;
        b.x := xadd;
        b.y := height;
     {c.x := xadd+width;}
      c.x := xadd+Width-1;  {23.04.1999 Line was 1 Pixel too wide}
      c.y := height;
     {d.x := xadd+width;}
      d.x := xadd+Width-1;  {23.04.1999 Line was 1 Pixel too wide}
      d.y := 0;
      {a,b,c,d builds the rectangle we want to draw}
      {rotate the rectangle}
         a := Translate2D(Rotate2D(a, alpha), orgin);
         b := Translate2D(Rotate2D(b, alpha), orgin);
         c := Translate2D(Rotate2D(c, alpha), orgin);
         d := Translate2D(Rotate2D(d, alpha), orgin);
      {draw the rectangle}
          Polygon([a,b,c,d]);
          xadd := xadd + width;
      end;
   end;
end;



procedure TQRBarcode.DrawBarcode(Canvas:TCanvas);
var
   data : string;
   SaveFont: TFont;
   SavePen: TPen;
   SaveBrush: TBrush;
begin
   Savefont  := TFont.Create;
   SavePen   := TPen.Create;
   SaveBrush := TBrush.Create;
  {get barcode pattern}
   data := MakeData;
   try
    {store Canvas properties}
     Savefont.Assign(Canvas.Font);
     SavePen.Assign(Canvas.Pen);
     SaveBrush.Assign(Canvas.Brush);
     DoLines(data, Canvas);    {draw the barcode}
     if FShowText then DrawText(Canvas);   {show readable Text}
    {restore old Canvas properties}
     Canvas.Font.Assign(savefont);
     Canvas.Pen.Assign(SavePen);
     Canvas.Brush.Assign(SaveBrush);
    finally
      Savefont.Free;
      SavePen.Free;
      SaveBrush.Free;
    end;
end;

{
   draw contents and type/name of barcode
   as human readable text at the left
   upper edge of the barcode.

   main use for this procedure is testing.

   note: this procedure changes Pen and Brush
   of the current canvas.
}
procedure TQRBarcode.DrawText(Canvas:TCanvas);
begin
  with Canvas do begin
    Font.Size := 4;
    {the fixed font size is a problem, if you
     use very large or small barcodes}

    Pen.Color := clBlack;
    Brush.Color := clWhite;
    TextOut(FLeft, FTop, FText);         {contents of Barcode}
    // TextOut(FLeft, FTop+14, GetTypText); {type/name of barcode}
  end;
end;

procedure TQRBarcode.View;
begin
  Picture:=nil;
  if Trim(BarText)<>'' then begin
    DrawBarcode(Canvas);
  end;
end;

procedure TQRBarcode.Print(OfsX, OfsY : integer);
begin
  View;
  inherited Print(OfsX, OfsY);
end;

procedure Register;
begin
  RegisterComponents('Samples', [TQRBarcode]);
end;

initialization
  Classes.RegisterClass(TQRBarcode);

END.