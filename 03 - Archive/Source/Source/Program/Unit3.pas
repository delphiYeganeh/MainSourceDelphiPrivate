unit Unit3;

interface
uses  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, OleCtrls, ARM_TLB,Math;
var

key_AES:array[0..15] of byte;
type
AESClass = class
public

function gfmultby01(b:byte):byte;
function gfmultby02(b:byte):byte;
function gfmultby03(b:byte):byte;
function gfmultby09(b:byte):byte;
function gfmultby0b(b:byte):byte;
function gfmultby0d(b:byte):byte;
function gfmultby0e(b:byte):byte;
procedure InvShiftRows();
procedure InvMixColumns();
procedure InvSubBytes();
procedure RotWord();
procedure SubWord();
procedure AddRoundKey(round:integer);
procedure KeyExpansion();
procedure InvCipher(bteinput:array of byte;var output:array of byte;Key:array of byte);
procedure AES(input:array of byte;var output:array of byte;Key:array of byte);  // encipher 16-bit input

function  CheckAuthenticate(obj:OleVariant; Param1:Cardinal):Byte;
function  CodeData(iWhichData:integer; DataToWrite:string;strKey:string):OleVariant;
function  DecodData(obj:olevariant;iWhichData:integer;RProg : Cardinal):string;
function  CreateUserKey(str:string;Key:string):olevariant;
function  GenerateErrorCode(OBJ:Olevariant;bteRand:array of byte):Byte;
function  EncodeQueryRequest( strRequest:string;Key:array of byte):Olevariant;
function  DecodeQueryResponse(OBJ:olevariant):string;
function  EnCodeDataEquation(Param1,Param2,Param3,Param4:Byte;Key:array of byte):OleVariant;

function FuncBig(p,k,z:double):cardinal;
function Func64(x:double;a:integer):Cardinal;
function FuncFirst(obj:OleVariant;RandProg:Cardinal):Boolean;
function FuncSecond():Cardinal;



function  HextoByte(chHex : string):Byte;
function  ByteToHex(bteByte : array of byte):string;
function StrToByteArr(str:string):TByteArray;

function  BytesToWord( bteH:Byte ; bteL:Byte):Word;
function  WordsToInt( wrdH:WORD;wrdL: WORD ):UINT;
procedure WordToBytes(wrdSource:Word ; var OutebteH :Byte ; var OutebteL:Byte );
procedure IntToWords(iSource: Integer; var OutwrdH: Word; var OutwrdL: Word);
procedure SubBytes();
procedure ShiftRows();
procedure MixColumns();

end;


 var
 Nr_AES : Integer=10;  //define for AES_128
 Nk_AES : Integer=4;
 Nb_AES : Integer=4;
 State_AES:array[0..3] of array[0..3] of byte; // State_AES[4,Nb_AES];
 w_AES:array[0..43] of array[0..3] of byte;  //Nb_AES*(Nr_AES+1)
 temp_AES:array[0..3] of byte;


 Sbox:array[0..15] of array[0..15] of byte=(
 ($63, $7c, $77, $7b, $f2, $6b, $6f, $c5, $30, $01, $67, $2b, $fe, $d7, $ab, $76),
 ($ca, $82, $c9, $7d, $fa, $59, $47, $f0, $ad, $d4, $a2, $af, $9c, $a4, $72, $c0),
 ($b7, $fd, $93, $26, $36, $3f, $f7, $cc, $34, $a5, $e5, $f1, $71, $d8, $31, $15),
 ($04, $c7, $23, $c3, $18, $96, $05, $9a, $07, $12, $80, $e2, $eb, $27, $b2, $75),
 ($09, $83, $2c, $1a, $1b, $6e, $5a, $a0, $52, $3b, $d6, $b3, $29, $e3, $2f, $84),
 ($53, $d1, $00, $ed, $20, $fc, $b1, $5b, $6a, $cb, $be, $39, $4a, $4c, $58, $cf),
 ($d0, $ef, $aa, $fb, $43, $4d, $33, $85, $45, $f9, $02, $7f, $50, $3c, $9f, $a8),
 ($51, $a3, $40, $8f, $92, $9d, $38, $f5, $bc, $b6, $da, $21, $10, $ff, $f3, $d2),
 ($cd, $0c, $13, $ec, $5f, $97, $44, $17, $c4, $a7, $7e, $3d, $64, $5d, $19, $73),
 ($60, $81, $4f, $dc, $22, $2a, $90, $88, $46, $ee, $b8, $14, $de, $5e, $0b, $db),
 ($e0, $32, $3a, $0a, $49, $06, $24, $5c, $c2, $d3, $ac, $62, $91, $95, $e4, $79),
 ($e7, $c8, $37, $6d, $8d, $d5, $4e, $a9, $6c, $56, $f4, $ea, $65, $7a, $ae, $08),
 ($ba, $78, $25, $2e, $1c, $a6, $b4, $c6, $e8, $dd, $74, $1f, $4b, $bd, $8b, $8a),
 ($70, $3e, $b5, $66, $48, $03, $f6, $0e, $61, $35, $57, $b9, $86, $c1, $1d, $9e),
 ($e1, $f8, $98, $11, $69, $d9, $8e, $94, $9b, $1e, $87, $e9, $ce, $55, $28, $df),
 ($8c, $a1, $89, $0d, $bf, $e6, $42, $68, $41, $99, $2d, $0f, $b0, $54, $bb, $16)
);

 iSbox:array[0..15] of array[0..15] of byte= (
  ($52, $09, $6a, $d5, $30, $36, $a5, $38, $bf, $40, $a3, $9e, $81, $f3, $d7, $fb),
  ($7c, $e3, $39, $82, $9b, $2f, $ff, $87, $34, $8e, $43, $44, $c4, $de, $e9, $cb),
  ($54, $7b, $94, $32, $a6, $c2, $23, $3d, $ee, $4c, $95, $0b, $42, $fa, $c3, $4e),
  ($08, $2e, $a1, $66, $28, $d9, $24, $b2, $76, $5b, $a2, $49, $6d, $8b, $d1, $25),
  ($72, $f8, $f6, $64, $86, $68, $98, $16, $d4, $a4, $5c, $cc, $5d, $65, $b6, $92),
  ($6c, $70, $48, $50, $fd, $ed, $b9, $da, $5e, $15, $46, $57, $a7, $8d, $9d, $84),
  ($90, $d8, $ab, $00, $8c, $bc, $d3, $0a, $f7, $e4, $58, $05, $b8, $b3, $45, $06),
  ($d0, $2c, $1e, $8f, $ca, $3f, $0f, $02, $c1, $af, $bd, $03, $01, $13, $8a, $6b),
  ($3a, $91, $11, $41, $4f, $67, $dc, $ea, $97, $f2, $cf, $ce, $f0, $b4, $e6, $73),
  ($96, $ac, $74, $22, $e7, $ad, $35, $85, $e2, $f9, $37, $e8, $1c, $75, $df, $6e),
  ($47, $f1, $1a, $71, $1d, $29, $c5, $89, $6f, $b7, $62, $0e, $aa, $18, $be, $1b),
  ($fc, $56, $3e, $4b, $c6, $d2, $79, $20, $9a, $db, $c0, $fe, $78, $cd, $5a, $f4),
  ($1f, $dd, $a8, $33, $88, $07, $c7, $31, $b1, $12, $10, $59, $27, $80, $ec, $5f),
  ($60, $51, $7f, $a9, $19, $b5, $4a, $0d, $2d, $e5, $7a, $9f, $93, $c9, $9c, $ef),
  ($a0, $e0, $3b, $4d, $ae, $2a, $f5, $b0, $c8, $eb, $bb, $3c, $83, $53, $99, $61),
  ($17, $2b, $04, $7e, $ba, $77, $d6, $26, $e1, $69, $14, $63, $55, $21, $0c, $7d)
 );
 Rcon1:array[0..10] of Byte= ($00,$01,$02,$04,$08,$10,$20,$40,$80,$1b,$36);



implementation


function AESClass.BytesToWord( bteH:Byte ; bteL:Byte):Word;
var
 wrdTemp:Word;
begin
  wrdTemp	:= bteH;
	wrdTemp	:= wrdTemp shl (8);
	wrdTemp	:= wrdTemp AND	$ff00;
	wrdTemp	:= wrdTemp OR bteL;
	Result  := wrdTemp;
end;
procedure AESClass.WordToBytes(wrdSource:Word ; var OutebteH :Byte ; var OutebteL:Byte );
var
wrdTemp:WORD	;
begin
	OutebteL	:=	wrdSource AND $00ff;
	wrdTemp		:=	wrdSource AND $ff00;
	wrdTemp		:=  wrdTemp shr (8);
	wrdTemp		:=  wrdTemp AND $00ff;
	OutebteH	:=	wrdTemp;
end;
procedure AESClass.IntToWords(iSource: Integer; var OutwrdH: Word; var OutwrdL: Word);
var
iTemp:Integer	;
begin
	OutwrdL	:=Word(iSource AND $0000ffff);
	iTemp		:=Integer (iSource AND $ffff0000);
	iTemp   :=iTemp	  shr (16);
	iTemp		:=iTemp   AND $0000ffff;
	OutwrdH	:=Word(iTemp);
end;
function AESClass.WordsToInt( wrdH:WORD;wrdL: WORD ):UINT;
var
  iTemp : UINT;
begin
    iTemp:= wrdH;
    iTemp := iTemp		shl		16;
	  iTemp		:= iTemp and $ffff0000;
	  iTemp		:= iTemp or	wrdL;
    Result := iTemp;
end;
function AESClass.HextoByte(chHex : string):Byte;
var
 bteTemp1,bteTemp2:byte;
begin
  bteTemp1:=StrToInt('$'+chHex[1]);
  bteTemp2:=StrToInt('$'+chHex[2]);
  bteTemp1:=bteTemp1 shl (4);
  bteTemp1:=bteTemp1 and  $f0;
  bteTemp1 := bteTemp1 or bteTemp2;
  Result:=  bteTemp1;
end;
function AESClass.ByteToHex(bteByte : array of byte):string;
var
   iHex:array[0..32] of Byte;
   i,j:Integer;
   MyChar,str:string;
   iConter,iPlus,Size:Integer;
begin
  Size:=sizeof(btebyte);
  for j := 0 to Size-1 do
  begin
    iConter:=0;
    iPlus:=0;
    MyChar:='';

    if bteByte[j]<16 then
    begin
        iHex[iConter]:=bteByte[j] mod 16;
        iHex[iConter+1]:=0;
        iPlus:=iPlus+2;
    end
    else
    begin
        iHex[iConter]:=bteByte[j] mod 16;
        iHex[iConter+1]:=bteByte[j] div 16;
        iPlus:=iPlus+2;
    end;
    iConter:=iConter+iPlus;
    iPlus:=0;
    for I := 0 to iConter-1 do
    begin
      if iHex[i]=0 then	MyChar:='0'+MyChar
      else if iHex[i]=1 then MyChar:='1'+MyChar
      else if iHex[i]=2 then	MyChar:='2'+MyChar
      else if iHex[i]=3 then	MyChar:='3'+MyChar
      else if iHex[i]=4 then	MyChar:='4'+MyChar
      else if iHex[i]=5 then	MyChar:='5'+MyChar
      else if iHex[i]=6 then	MyChar:='6'+MyChar
      else if iHex[i]=7 then	MyChar:='7'+MyChar
      else if iHex[i]=8 then	MyChar:='8'+MyChar
      else if iHex[i]=9 then	MyChar:='9'+MyChar
      else if iHex[i]=10	then MyChar:='A'+MyChar
      else if iHex[i]=11	then MyChar:= 'B'+MyChar
      else if iHex[i]=12	then MyChar:='C'+MyChar
      else if iHex[i]=13	then MyChar:='D'+MyChar
      else if iHex[i]=14	then MyChar:='E'+MyChar
      else if iHex[i]=15	then MyChar:='F'+MyChar
    end;
    str:=str+MyChar;
  end;
  result:=str;
end;

function AESClass.StrToByteArr(str:string):TByteArray;
var
  BinarySize: Integer;
  bte:TByteArray;
begin
  BinarySize := (Length(str) + 1) * SizeOf(Char);
 
  move(str[1],bte[0],BinarySize);
  Result:= bte;
end;
function AESClass.gfmultby01(b:byte):byte;
begin
   Result:= b;
end;

function AESClass.gfmultby02(b:byte):byte;
begin
      if (b < $80) then
        Result:=b shl 1
      else
        Result:=(b shl 1) xor ($1b);
end;

function AESClass.gfmultby03(b:byte):byte;
begin
  Result:=( gfmultby02(b) xor b );
end;
function AESClass.gfmultby09(b:byte):byte;
begin
      Result:= gfmultby02(gfmultby02(gfmultby02(b))) xor b ;
end;


function AESClass.gfmultby0b(b:byte):byte;
begin
    Result:=gfmultby02(gfmultby02(gfmultby02(b))) xor gfmultby02(b) xor b ;
end;
function AESClass.gfmultby0d(b:byte):byte;
begin
      result:= gfmultby02(gfmultby02(gfmultby02(b))) xor gfmultby02(gfmultby02(b)) xor (b);
end;

function AESClass.gfmultby0e(b:byte):byte;
begin
  result:=gfmultby02(gfmultby02(gfmultby02(b))) xor gfmultby02(gfmultby02(b)) xor gfmultby02(b);
end;


procedure AESClass.InvShiftRows();
var
temp1:array[0..3] of array[0..3] of byte ;
r,c : Integer;
begin
    for r := 0 to 3 do
    begin
      for c := 0 to 3 do
        temp1[r][c] := State_AES[r][c];
    end;
    for r := 1 to 3 do
    begin
      for c := 0 to 3 do
        State_AES[r][ (c + r) mod Nb_AES ] := temp1[r][c];
    end;
end;
procedure AESClass.InvMixColumns();
var
temp1:array[0..3] of array[0..3] of byte;
r,c:integer;
begin
    for r := 0 to 3 do
    begin
      for c := 0 to 3 do
        temp1[r][c] := State_AES[r][c];
    end;

    for c := 0 to 3 do
    begin
      State_AES[0][c] := gfmultby0e(temp1[0][c]) xor gfmultby0b(temp1[1][c]) xor gfmultby0d(temp1[2][c]) xor gfmultby09(temp1[3][c]);
      State_AES[1][c] := gfmultby09(temp1[0][c]) xor gfmultby0e(temp1[1][c]) xor gfmultby0b(temp1[2][c]) xor gfmultby0d(temp1[3][c]);
      State_AES[2][c] := gfmultby0d(temp1[0][c]) xor gfmultby09(temp1[1][c]) xor gfmultby0e(temp1[2][c]) xor gfmultby0b(temp1[3][c]);
      State_AES[3][c] := gfmultby0b(temp1[0][c]) xor gfmultby0d(temp1[1][c]) xor gfmultby09(temp1[2][c]) xor gfmultby0e(temp1[3][c]);
    end;
end;
procedure AESClass.InvSubBytes();
var
r,c:integer;
bte1:byte;
begin
    for r := 0 to 3 do
    begin
      for c := 0 to 3 do
      begin
        bte1:=State_AES[r][c] shr 4;
        State_AES[r][c] := iSbox[ bte1] [(State_AES[r][c] and $0f) ];
      end;
    end;
end;

procedure AESClass.RotWord();
var
result:array[0..3] of byte;
begin
      result[0] := temp_AES[1];
      result[1] := temp_AES[2];
      result[2] := temp_AES[3];
      result[3] := temp_AES[0];
	    temp_AES[0]:=result[0];
	    temp_AES[1]:=result[1];
	    temp_AES[2]:=result[2];
	    temp_AES[3]:=result[3];
end;
procedure AESClass.SubWord();
var
bte1,bte2,bte3,bte4:byte;
begin
      bte1:=temp_AES[0] shr 4;
      bte2:=temp_AES[1] shr 4;
      bte3:=temp_AES[2] shr 4;
      bte4:=temp_AES[3] shr 4;
      temp_AES[0] := Sbox[bte1][temp_AES[0] and $0f ];
      temp_AES[1] := Sbox[bte2][temp_AES[1] and $0f ];
      temp_AES[2] := Sbox[bte3][temp_AES[2] and $0f ];
      temp_AES[3] := Sbox[bte4][temp_AES[3] and $0f ];
end;
procedure AESClass.AddRoundKey(round:integer);
var
r,c:integer;
begin
      for r := 0 to 3 do
      begin
        for  c :=0 to 3 do
        begin
          State_AES[r][c] :=  State_AES[r][c] xor w_AES[(round*4)+c][r];
        end;
      end;
end;
procedure AESClass.KeyExpansion();
var
row:Integer;
begin
  for row := 0 to Nk_AES-1 do
  begin
        w_AES[row][0] := key_AES[4*row];
        w_AES[row][1] := key_AES[4*row+1];
        w_AES[row][2] := key_AES[4*row+2];
        w_AES[row][3] := key_AES[4*row+3];
  end;
  for  row := Nk_AES to (Nb_AES * (Nr_AES+1)-1) do
  begin

    temp_AES[0] := w_AES[row-1][0];
		temp_AES[1] := w_AES[row-1][1];
    temp_AES[2] := w_AES[row-1][2];
		temp_AES[3] := w_AES[row-1][3];

    if row mod Nk_AES = 0 then
    begin
      RotWord();
      SubWord();
		  temp_AES[0] := temp_AES[0] xor Rcon1[row div Nk_AES];
    end
    else if ( Nk_AES > 6 )and (row mod Nk_AES = 4)  then
    begin
       SubWord();
    end;

    w_AES[row][0] := w_AES[row-Nk_AES][0] xor temp_AES[0];
    w_AES[row][1] := w_AES[row-Nk_AES][1] xor temp_AES[1];
    w_AES[row][2] := w_AES[row-Nk_AES][2] xor temp_AES[2];
    w_AES[row][3] := w_AES[row-Nk_AES][3] xor temp_AES[3];


  end;
end;
 procedure AESClass.InvCipher(bteinput:array of byte;var output:array of byte;Key:array of byte);
 var
 i,round:integer;
 bteArr:array[0..20] of byte;
 ch:array[0..3] of char;
 str:string;
 begin

  if (bteInput[0]=0)and(bteInput[1]=0)and(bteInput[2]=0) then
  begin
    for i := 0 to 15 do
      output[i] := 0;
    output[15] := bteInput[15];
  end
  else
  begin
  for I := 0 to 15 do
    key_AES[i]:=key[i];
  KeyExpansion();
  for i := 0 to 15 do
  begin
    State_AES[i mod 4][ i div 4] := bteinput[i];
  end;
  AddRoundKey(Nr_AES);

  for round := Nr_AES-1 downto  1 do  // main round loop
  begin
        InvShiftRows();
        InvSubBytes();
        AddRoundKey(round);
        InvMixColumns();
  end;

  InvShiftRows();
  InvSubBytes();
  AddRoundKey(0);

  for i := 0 to 15 do
  begin
    output[i] := State_AES[i mod 4][ i div 4];
  end;
  end;
 end;
procedure  AESClass.SubBytes();
var
r,c : integer;
begin
   for r:= 0 to 3 do
   begin
      for c := 0 to 3 do
          State_AES[r][c] := Sbox[(State_AES[r,c] shr 4)][ (State_AES[r,c] and $0f)];
    end;
end;
procedure AESClass.ShiftRows();
var
temp1 : array[0..3] of array[0..3] of byte;
r,c :integer;
begin
    for r := 0 to 3 do  // copy State into temp1[]
    begin
        for c := 0to 3 do
            temp1[r][c] := State_AES[r][c];
    end;

    for r := 1 to 3 do  // shift temp1 into State
    begin
        for c := 0to 3 do
            State_AES[r][c] := temp1[r][(c + r) mod 4];  //State_AES[r][c] = temp1[ r][ (c + r) % Nb_AES ];
    end;
end;

procedure AESClass.MixColumns();
var
temp1 : array[0..3] of array[0..3] of byte;
r,c :integer;
begin
    for r := 0 to 3 do
    begin
        for c := 0to 3 do
            temp1[r][c] := State_AES[r][c];
    end;

    for  c := 0 to 3 do
    begin
        State_AES[0,c] := (gfmultby02(temp1[0][c]) xor gfmultby03(temp1[1][c]) xor gfmultby01(temp1[2][c]) xor gfmultby01(temp1[3][c]));
        State_AES[1,c] := (gfmultby01(temp1[0][c]) xor gfmultby02(temp1[1][c]) xor gfmultby03(temp1[2][c]) xor gfmultby01(temp1[3][c]));
        State_AES[2,c] := (gfmultby01(temp1[0][c]) xor gfmultby01(temp1[1][c]) xor gfmultby02(temp1[2][c]) xor gfmultby03(temp1[3][c]));
        State_AES[3,c] := (gfmultby03(temp1[0][c]) xor gfmultby01(temp1[1][c]) xor gfmultby01(temp1[2][c]) xor gfmultby02(temp1[3][c]));
    end;
end;


 procedure  AESClass.AES(input:array of byte;var output:array of byte;Key:array of byte);  // encipher 16-bit input
 var
  i,round:integer;
 begin
    for I := 0 to 15 do
      key_AES[i]:=key[i];
    KeyExpansion();
    for I := 0 to 15 do
    begin
        State_AES[i mod 4][i div 4] := input[i];
    end;
    AddRoundKey(0);
    for round := 1 to (Nr_AES - 1) do  // main round loop
    begin
        SubBytes();
        ShiftRows();
        MixColumns();
        AddRoundKey(round);
    end;

    SubBytes();
    ShiftRows();
    AddRoundKey(Nr_AES);
    for i := 0 to 15 do
      output[i] := State_AES[i mod 4][ i div 4];
 end;


function  AESClass.CodeData(iWhichData:integer; DataToWrite:string;strKey:string):OleVariant;
var
    bteData,btestr,intBytes:array of byte;
    bte:TByteArray;
    bte16:array[0..15] of byte;
    bteData1:array[0..15] of byte;
    Value,i,k,j:integer;
    wrd1,wrd2:word;
    bteKey:TByteArray;
    Key:array[0..15] of byte;
begin
    bteKey:=strtobytearr(strkey);
    for i:=0 to 15 do
      key[i]:=bteKey[i];
    bte:=StrToByteArr(DataToWrite);
    if (iWhichData = 204) then
    begin
        SetLength(bteData,240);
        SetLength(btestr,240);
        for i:=0 to Length(DataToWrite)-1 do
            bteData[i] := bte[i];
        for i:=Length(DataToWrite) to  239 do
            bteData[i] := 0;
        for k := 0 to  14 do
        begin
            for j := 0 to 15 do
                bte16[j] := bteData[(k * 16) + j];
            AES(bte16, bteData1,Key);
            for j := 0 to 15 do
                btestr[(k * 16) + j] := bteData1[j];
        end;
    end
    else if (iWhichData=208)or(iWhichData=213)or(iWhichData=214) then
    begin
      SetLength(bteData,128);
      SetLength(btestr,128);
      for i:=0 to Length(DataToWrite)-1 do
            bteData[i] := bte[i];
        for i:=Length(DataToWrite) to  127 do
            bteData[i] := 0;
      for k:=0 to 7 do
      begin
        for j:=0 to 15 do
           bte16[j] := bteData[(k * 16) + j];
        AES(bte16, bteData1,key);
        for j:=0 to 15 do
           btestr[(k * 16) + j] := bteData1[j];
     end;

    end
    else if(iWhichData=205)or(iWhichData=206) then
    begin
      SetLength(bteData,16);
      SetLength(btestr,16);
      for i:=0 to Length(DataToWrite)-1 do
            bteData[i] := bte[i];
        for i:=Length(DataToWrite) to  15 do
            bteData[i] := 0;
      AES(bteData, bteData1,key);
      for j := 0 to 15 do
          btestr[j] := bteData1[j];
    end
    else if(iWhichData=209)or(iWhichData=210)or(iWhichData=211)or(iWhichData=212)or(iWhichData=215) then
    begin
      SetLength(bteData,16);
      SetLength(btestr,16);
      Value:=0;
      try
      begin
        Value := StrToInt(DataToWrite);
        IntToWords(Value,wrd1,wrd2);
        WordToBytes(wrd1,bteData[0],bteData[1]);
        WordToBytes(wrd2,bteData[2],bteData[3]);
        for i := 4 to 15 do
            bteData[i] := 0;
        AES(bteData, bteData1,key);
        for j := 0 to 15 do
          btestr[j] := bteData1[j];
      end;
      except
        ShowMessage(DataToWrite+' Is Not Valid!');
      end;

    end;
    Result:=btestr;
end;

function  AESClass.DecodData(obj:olevariant;iWhichData:integer;RProg : Cardinal):string;
type
  PReal = ^Double;
var
  bte16A,bte16B:array[0..15] of byte;
  bteData1:array[0..15] of byte;
  bte16,btestr,btebyte:array of byte;
  wrd1, wrd2:word;
  bteCh1, bteCh2:byte;
  i,j,k,h,SelectFunc1, SelectFunc2,DataCheckSumProg1,DataCheckSumProg2,a1,a2,a3,a4,a5:integer;
  DataCheckSum1,DataCheckSum2:Word;
  str:string;
  I1:uint64;
  P1: Pointer;
  PR: PReal;
  p2,p3,p4:Double;
  Res,RLock:Cardinal;
begin
try
   i:=0;
   str:='';
   if (iWhichData=201)or(iWhichData=202)or(iWhichData=205) then
   begin
      if FuncFirst(obj,RProg) then
      begin
        I1 := obj[69];
        I1 := (I1 * 256)+obj[68];
        I1 := (I1 * 256)+obj[67];
        I1 := (I1 * 256)+obj[66];
        I1 := (I1 * 256)+obj[65];
        I1 := (I1 * 256)+obj[64];
        I1 := (I1 * 256)+obj[63];
        I1 := (I1 * 256)+obj[62];
        P1 := @I1;
        PR := Preal(P1);
        P2 := PR^;

        I1 := obj[77];
        I1 := (I1 * 256)+obj[76];
        I1 := (I1 * 256)+obj[75];
        I1 := (I1 * 256)+obj[74];
        I1 := (I1 * 256)+obj[73];
        I1 := (I1 * 256)+obj[72];
        I1 := (I1 * 256)+obj[71];
        I1 := (I1 * 256)+obj[70];
        P1 := @I1;
        PR := Preal(P1);
        P3 := PR^;

        I1 := obj[85];
        I1 := (I1 * 256)+obj[84];
        I1 := (I1 * 256)+obj[83];
        I1 := (I1 * 256)+obj[82];
        I1 := (I1 * 256)+obj[81];
        I1 := (I1 * 256)+obj[80];
        I1 := (I1 * 256)+obj[79];
        I1 := (I1 * 256)+obj[78];
        P1 := @I1;
        PR := Preal(P1);
        P4 := PR^;
        RLock:=FuncBig(p2,p3,p4);
        for I := 0 to 15 do
           key_AES[i]:=obj[i+8];
      end;
      SetLength(btebyte,16);
      SelectFunc1:=obj[40];
      SelectFunc2:=obj[59];
      bteCh1:=obj[41];
      btech2:=obj[42];
      DataCheckSum1:=BytesToWord(bteCh1,bteCh2);
      bteCh1:=obj[60];
      btech2:=obj[61];
      DataCheckSum2:=BytesToWord(bteCh1,bteCh2);

      for I := 0 to 15 do
        bte16A[i]:=obj[i+24];
      for I := 0 to 15 do
        bte16B[i]:=obj[43+i];
      InvCipher(bte16A,bteData1,key_AES);
      for I := 0 to 15 do
      begin
        bteData1[i]:=bteData1[i] xor RLock;
        btedata1[i]:=bteData1[i] xor RProg;
      end;
      I1 := bteData1[7];
      I1 := (I1 * 256)+bteData1[6];
      I1 := (I1 * 256)+bteData1[5];
      I1 := (I1 * 256)+bteData1[4];
      I1 := (I1 * 256)+bteData1[3];
      I1 := (I1 * 256)+bteData1[2];
      I1 := (I1 * 256)+bteData1[1];
      I1 := (I1 * 256)+bteData1[0];
      P1 := @I1;
      PR := Preal(P1);
      P2 := PR^;
      Res:=Func64(P2,SelectFunc1);
      IntToWords(Res,wrd1,wrd2);
      WordToBytes(wrd1,btebyte[0],btebyte[1]);
      WordToBytes(wrd2,btebyte[2],btebyte[3]);

      I1 := bteData1[15];
      I1 := (I1 * 256)+bteData1[14];
      I1 := (I1 * 256)+bteData1[13];
      I1 := (I1 * 256)+bteData1[12];
      I1 := (I1 * 256)+bteData1[11];
      I1 := (I1 * 256)+bteData1[10];
      I1 := (I1 * 256)+bteData1[9];
      I1 := (I1 * 256)+bteData1[8];
      P1 := @I1;
      PR := Preal(P1);
      P2 := PR^;
      Res:=Func64(P2,SelectFunc1);
      IntToWords(Res,wrd1,wrd2);
      WordToBytes(wrd1,btebyte[4],btebyte[5]);
      WordToBytes(wrd2,btebyte[6],btebyte[7]);
      DataCheckSumProg1 := 0;
      for i:=0 to 7 do
          DataCheckSumProg1 := DataCheckSumProg1 + btebyte[i];
      ///////////////////////////////////////////////////////////////
      InvCipher(bte16B,bteData1,key_AES);
      for I := 0 to 15 do
      begin
        bteData1[i]:=bteData1[i] xor RLock;
        btedata1[i]:=bteData1[i] xor RProg;
      end;
      I1 := bteData1[7];
      I1 := (I1 * 256)+bteData1[6];
      I1 := (I1 * 256)+bteData1[5];
      I1 := (I1 * 256)+bteData1[4];
      I1 := (I1 * 256)+bteData1[3];
      I1 := (I1 * 256)+bteData1[2];
      I1 := (I1 * 256)+bteData1[1];
      I1 := (I1 * 256)+bteData1[0];
      P1 := @I1;
      PR := Preal(P1);
      P2 := PR^;
      Res:=Func64(P2,SelectFunc2);
      IntToWords(Res,wrd1,wrd2);
      WordToBytes(wrd1,btebyte[8],btebyte[9]);
      WordToBytes(wrd2,btebyte[10],btebyte[11]);

      I1 := bteData1[15];
      I1 := (I1 * 256)+bteData1[14];
      I1 := (I1 * 256)+bteData1[13];
      I1 := (I1 * 256)+bteData1[12];
      I1 := (I1 * 256)+bteData1[11];
      I1 := (I1 * 256)+bteData1[10];
      I1 := (I1 * 256)+bteData1[9];
      I1 := (I1 * 256)+bteData1[8];
      P1 := @I1;
      PR := Preal(P1);
      P2 := PR^;
      Res:=Func64(P2,SelectFunc2);
      IntToWords(Res,wrd1,wrd2);
      WordToBytes(wrd1,btebyte[12],btebyte[13]);
      WordToBytes(wrd2,btebyte[14],btebyte[15]);
      DataCheckSumProg2 := 0;
      for i:=8 to 15 do
          DataCheckSumProg2 := DataCheckSumProg2 + btebyte[i];
      if(DataCheckSumProg1=DataCheckSum1)and(DataCheckSumProg2=DataCheckSum2) then
      begin
        if iWhichData=SERIAL_NUM then
        begin
        str:='';
          for i:=0 to 5 do
          begin
            str:=str+ByteToHex(btebyte[i]);
            if i=1 then
              str:=str+'-';
            if i=3 then
              str:=str+'-';
          end
         end
         else if (iWhichData=SPECIAL_ID)or(iWhichData=205) then
         begin
            str:='';
            for i:=0 to 15 do
              str := str + Char(btebyte[i]);
            str := Trim(str);
         end;
      end
   end
   else if (iWhichData=204)or(iWhichData=208)or(iWhichData=213)or(iWhichData=214) then
   begin
      if iWhichData=204 then
      begin
        a1 := 531;
        a2 := 48;
        a3 := 24;
        a4 := 240;
        a5 := 30;
      end
      else if (iWhichData=208)or(iWhichData=213)or(iWhichData=214) then
      begin
        a1 := 307;
        a2 := 40;
        a3 := 16;
        a4 := 128;
        a5 := 16;
      end;
      if FuncFirst(obj,RProg) then
      begin
        I1 := obj[a1-17];
        I1 := (I1 * 256)+obj[a1-18];
        I1 := (I1 * 256)+obj[a1-19];
        I1 := (I1 * 256)+obj[a1-20];
        I1 := (I1 * 256)+obj[a1-21];
        I1 := (I1 * 256)+obj[a1-22];
        I1 := (I1 * 256)+obj[a1-23];
        I1 := (I1 * 256)+obj[a1-24];
        P1 := @I1;
        PR := Preal(P1);
        P2 := PR^;

        I1 := obj[a1-9];
        I1 := (I1 * 256)+obj[a1-10];
        I1 := (I1 * 256)+obj[a1-11];
        I1 := (I1 * 256)+obj[a1-12];
        I1 := (I1 * 256)+obj[a1-13];
        I1 := (I1 * 256)+obj[a1-14];
        I1 := (I1 * 256)+obj[a1-15];
        I1 := (I1 * 256)+obj[a1-16];
        P1 := @I1;
        PR := Preal(P1);
        P3 := PR^;

        I1 := obj[a1-1];
        I1 := (I1 * 256)+obj[a1-2];
        I1 := (I1 * 256)+obj[a1-3];
        I1 := (I1 * 256)+obj[a1-4];
        I1 := (I1 * 256)+obj[a1-5];
        I1 := (I1 * 256)+obj[a1-6];
        I1 := (I1 * 256)+obj[a1-7];
        I1 := (I1 * 256)+obj[a1-8];
        P1 := @I1;
        PR := Preal(P1);
        P4 := PR^;
        RLock:=FuncBig(p2,p3,p4);
        for I := 0 to 15 do
           key_AES[i]:=obj[i+8];
      end;
      SetLength(btestr,a1);
      SelectFunc1 := obj[a2];
      bteCh1 := obj[a2+1];
      bteCh2 := obj[a2+2];
      DataCheckSum1 := BytesToWord(bteCh1, bteCh2);
      setlength(btebyte,a4*2);
      for I := 0 to a3-1 do
      begin
        btebyte[I]:=obj[i+24];
      end;
      for I := a3 to (a4*2)-1 do
      begin
        btebyte[i] := obj[i + 27];
      end;
      for k := 0 to a5-1 do
      begin
          for j := 0 to 15 do
              bte16A[j] := btebyte[(k * 16) + j];
          InvCipher(bte16A, btedata1,key_AES);
          for h := 0 to 15 do
              btestr[(16 * k) + h] := btedata1[h];
      end;
      for i := 0 to (a4*2)-1 do
      begin
          btestr[i] := (btestr[i] xor RLock);
          btestr[i] := (btestr[i] xor RProg);
      end;
      DataCheckSumProg1:=0;
      for j := 0 to (2*a5)-1 do
      begin
        I1 := btestr[(j*8)+7];
        I1 := (I1 * 256)+btestr[(j*8)+6];
        I1 := (I1 * 256)+btestr[(j*8)+5];
        I1 := (I1 * 256)+btestr[(j*8)+4];
        I1 := (I1 * 256)+btestr[(j*8)+3];
        I1 := (I1 * 256)+btestr[(j*8)+2];
        I1 := (I1 * 256)+btestr[(j*8)+1];
        I1 := (I1 * 256)+btestr[(j*8)+0];
        P1 := @I1;
        PR := Preal(P1);
        P2 := PR^;
        try
        Res:=Func64(P2,SelectFunc1);
        except
        end;
        IntToWords(Res,wrd1,wrd2);
        WordToBytes(wrd1,btebyte[0],btebyte[1]);
        WordToBytes(wrd2,btebyte[2],btebyte[3]);
        for i := 0 to 3 do
        begin
           btestr[(j * 4) + i] := btebyte[i];
           DataCheckSumProg1 := DataCheckSumProg1 + btestr[(j * 4) + i];
        end;
      end;
      if (DataCheckSumProg1 = DataCheckSum1)  then
      begin
          for i := 0 to a4-1 do
              str := str + Char(btestr[i]);
          str := Trim(str);
      end
   end
   else if (iWhichData=209)or(iWhichData=210)or(iWhichData=211)or(iWhichData=212)or(iWhichData=215)or(iWhichData=206) then
   begin
      if(iWhichData = 206 ) then
          a1:= 8
      else if (iWhichData = 209)or(iWhichData = 210)or(iWhichData = 211)or(iWhichData =212)or(iWhichData =215) then
          a1 := 4;

      if FuncFirst(obj,RProg) then
      begin
        I1 := obj[50];
        I1 := (I1 * 256)+obj[49];
        I1 := (I1 * 256)+obj[48];
        I1 := (I1 * 256)+obj[47];
        I1 := (I1 * 256)+obj[46];
        I1 := (I1 * 256)+obj[45];
        I1 := (I1 * 256)+obj[44];
        I1 := (I1 * 256)+obj[43];
        P1 := @I1;
        PR := Preal(P1);
        P2 := PR^;

        I1 := obj[58];
        I1 := (I1 * 256)+obj[57];
        I1 := (I1 * 256)+obj[56];
        I1 := (I1 * 256)+obj[55];
        I1 := (I1 * 256)+obj[54];
        I1 := (I1 * 256)+obj[53];
        I1 := (I1 * 256)+obj[52];
        I1 := (I1 * 256)+obj[51];
        P1 := @I1;
        PR := Preal(P1);
        P3 := PR^;

        I1 := obj[66];
        I1 := (I1 * 256)+obj[65];
        I1 := (I1 * 256)+obj[64];
        I1 := (I1 * 256)+obj[63];
        I1 := (I1 * 256)+obj[62];
        I1 := (I1 * 256)+obj[61];
        I1 := (I1 * 256)+obj[60];
        I1 := (I1 * 256)+obj[59];
        P1 := @I1;
        PR := Preal(P1);
        P4 := PR^;
        RLock:=FuncBig(p2,p3,p4);
        for I := 0 to 15 do
           key_AES[i]:=obj[i+8];
      end;

      setlength(btestr,16);
      setlength(btebyte,16);
      setlength(bte16,16);
      SelectFunc1 := obj[40];
      bteCh1 := obj[41];
      bteCh2 := obj[42];
      DataCheckSum1 := BytesToWord(bteCh1, bteCh2);
      for I := 0 to 15 do
        bte16[i]:=obj[i+24];
      InvCipher(bte16, btedata1,key_AES);
      for i := 0 to 15 do
      begin
          btedata1[i] := (btedata1[i] xor RLock);
          btedata1[i] := (btedata1[i] xor RProg);
      end;

      I1 := btedata1[7];
      I1 := (I1 * 256)+btedata1[6];
      I1 := (I1 * 256)+btedata1[5];
      I1 := (I1 * 256)+btedata1[4];
      I1 := (I1 * 256)+btedata1[3];
      I1 := (I1 * 256)+btedata1[2];
      I1 := (I1 * 256)+btedata1[1];
      I1 := (I1 * 256)+btedata1[0];
      P1 := @I1;
      PR := Preal(P1);
      P2 := PR^;
      Res:=Func64(P2,SelectFunc1);
      IntToWords(Res,wrd1,wrd2);
      WordToBytes(wrd1,btebyte[0],btebyte[1]);
      WordToBytes(wrd2,btebyte[2],btebyte[3]);
      for i := 0 to 3 do
          btestr[i] := btebyte[i];

      I1 := btedata1[15];
      I1 := (I1 * 256)+btedata1[14];
      I1 := (I1 * 256)+btedata1[13];
      I1 := (I1 * 256)+btedata1[12];
      I1 := (I1 * 256)+btedata1[11];
      I1 := (I1 * 256)+btedata1[10];
      I1 := (I1 * 256)+btedata1[9];
      I1 := (I1 * 256)+btedata1[8];
      P1 := @I1;
      PR := Preal(P1);
      P2 := PR^;
      Res:=Func64(P2,SelectFunc1);
      IntToWords(Res,wrd1,wrd2);
      WordToBytes(wrd1,btebyte[0],btebyte[1]);
      WordToBytes(wrd2,btebyte[2],btebyte[3]);
      for i := 0 to 3 do
          btestr[i+4] := btebyte[i];
      DataCheckSumProg1 := 0;
      for i := 0 to a1-1 do
          DataCheckSumProg1 := DataCheckSumProg1 + btestr[i];
      if (DataCheckSumProg1 = DataCheckSum1) then
      begin
          if (iWhichData = 206) then
          begin
              for i := 0 to 7 do
                  str := str + char(btestr[i]);
              str := Trim(str);
          end
          else if (iWhichData = 209)or(iWhichData = 210)or(iWhichData =211)or(iWhichData =212)or(iWhichData =215) then
          begin
              if (btestr[0] = 32) then
              begin
                  wrd1 :=0; wrd2 := 0;
              end
              else
              begin
                  wrd1 := BytesToWord(btestr[0], btestr[1]);
                  wrd2 := BytesToWord(btestr[2], btestr[3]);
              end;
              i := WordsToInt(wrd1, wrd2);
              str := IntToStr(i);
          end;
      end;
   end;
   except;
   end;
   Result:=str;
end;
function aesclass.CreateUserKey(str:string;Key:string ):olevariant;
var
  bte1:array of byte;
  bte:TByteArray;
  btekey:array[0..15] of byte;
  bte2 :array[0..15] of byte;
  i:Integer;
  strTemp:string;
begin
    SetLength(bte1,16);
    for I := 0 to (Length(str) div 2)-1 do
    begin
       strTemp:='';
       strTemp:=Copy(str,(I*2)+1,2);
       bte2[i]:=HextoByte(strTemp)
    end;
    bte:=StrToByteArr(Key);
    for i:=0 to 15 do
      btekey[i]:=bte[i];
    AES(bte2, bte1,btekey);
    Result:= bte1;
end;
function aesclass.CheckAuthenticate(obj:OleVariant; Param1:Cardinal):Byte;
type
  PReal = ^Double;
var
obj1:OleVariant;
  I: Integer;
  P2,P3,P4,y:double;
  I1:uint64;
  P1: Pointer;
  PR: PReal;
  Y1:Cardinal;
  Res:Byte;
begin

  if (obj[0]=0)and(obj[1]=0)and(obj[2]=0)and(obj[13]=0)and(obj[13]=0)and(obj[15]=106) then
    Res := 106
  else if (obj[0]=0)and(obj[1]=0)and(obj[2]=0)and(obj[13]=0)and(obj[13]=0)and(obj[15]=101) then
    Res := 101
  else
  begin
    I1 := obj[7];
    I1 := (I1 * 256)+obj[6];
    I1 := (I1 * 256)+obj[5];
    I1 := (I1 * 256)+obj[4];
    I1 := (I1 * 256)+obj[3];
    I1 := (I1 * 256)+obj[2];
    I1 := (I1 * 256)+obj[1];
    I1 := (I1 * 256)+obj[0];
    P1 := @I1;
    PR := Preal(P1);
    P2 := PR^;

    I1 := obj[15];
    I1 := (I1 * 256)+obj[14];
    I1 := (I1 * 256)+obj[13];
    I1 := (I1 * 256)+obj[12];
    I1 := (I1 * 256)+obj[11];
    I1 := (I1 * 256)+obj[10];
    I1 := (I1 * 256)+obj[9];
    I1 := (I1 * 256)+obj[8];
    P1 := @I1;
    PR := Preal(P1);
    P3 := PR^;

    I1 := obj[23];
    I1 := (I1 * 256)+obj[22];
    I1 := (I1 * 256)+obj[21];
    I1 := (I1 * 256)+obj[20];
    I1 := (I1 * 256)+obj[19];
    I1 := (I1 * 256)+obj[18];
    I1 := (I1 * 256)+obj[17];
    I1 := (I1 * 256)+obj[16];
    P1 := @I1;
    PR := Preal(P1);
    P4 := PR^;
    if (P2=0)and(P3=0)and(P4=0) then
      Y1:=0
    else
      Y1:=FuncBig(P2,P3,P4);
    if Y1=Param1 then
      Res:=1
    else if Y1=0 then
      Res:=101
    else if Y1=25279 then
      Res:=120
    else
      Res:=113;
  end;
  Result:=Res;
end;
function AESClass.GenerateErrorCode(OBJ:Olevariant;bteRand:array of byte):Byte;
var
  bte16:array[0..15] of byte;
  bteAnswer:array of byte;
  I: Integer;
  bb:Byte;
begin
  setlength(bteAnswer,16);
  for I := 0 to 15 do
    bte16[i]:=OBJ[i];
  if (bte16[0]=0) and (bte16[1]=0) and (bte16[2]=0 ) then
     bb := bte16[15]
  else
  begin
     InvCipher(bte16, bteAnswer,key_AES);
     if (bteAnswer[0] = bterand[0]) and (bteAnswer[1] = bterand[1]) and (bteAnswer[2] = bterand[2]) and (bteAnswer[3] = bterand[3]) and (bteAnswer[4] = bterand[4]) then
        bb := bteAnswer[15]
     else
        bb:=200;
  end;
  result:= bb;
end;
function AESClass.EncodeQueryRequest( strRequest:string;Key:array of byte):Olevariant;
var
bte1:array of byte;
bte2:array[0..15] of byte;
I,J: Integer;
strTemp:string;
len:integer;
begin
try
  len:=0;
  J:=0;
  SetLength(bte1,16);
  len:=length(strRequest);
  i:=1;
  while I<=len do
  begin
    strTemp:=copy(strRequest,i,2);
    bte2[J]:=HextoByte(strTemp);
    i:=i+2;
    J:=J+1;
  end;
  AES(bte2, bte1,key);
  Result:=bte1;
except;
end;
end;
function AESClass.DecodeQueryResponse(OBJ:olevariant):string;
var
  str:string;
  bte1:array[0..15] of byte;
  bte2:array[0..15] of byte;
  I: Integer;
begin
try
   str:='';
   for I := 0 to 15 do
      bte1[i]:=obj[i];
   InvCipher(bte1,bte2,key_AES);
   str:=ByteToHex(bte2);
   result:=str;
except;
end;
end;

function AESClass.EnCodeDataEquation(Param1,Param2,Param3,Param4:Byte;Key:array of byte):OleVariant;
var
  bte1:array of byte;
  bteRand:array[0..16] of byte;
  i:integer;
begin
  SetLength(bte1,16);
  bteRand[0]:= Param1;
  bteRand[1]:= Param2;
  bteRand[2]:= Param3;
  bteRand[3]:= Param4;
  for I := 4 to 15 do
    bteRand[i]:=Random(255);

  AES(bteRand, bte1,key);
  result:= bte1;
end;

function AESClass.FuncFirst(obj:OleVariant;RandProg:Cardinal):Boolean;
type
  PReal = ^Double;
var
  P2,y:double;
  I1:uint64;
  P1: Pointer;
  PR: PReal;
  Y1:Cardinal;
  Res:Boolean;
begin

  I1 := obj[7];
  I1 := (I1 * 256)+obj[6];
  I1 := (I1 * 256)+obj[5];
  I1 := (I1 * 256)+obj[4];
  I1 := (I1 * 256)+obj[3];
  I1 := (I1 * 256)+obj[2];
  I1 := (I1 * 256)+obj[1];
  I1 := (I1 * 256)+obj[0];
  P1 := @I1;
  PR := Preal(P1);
  P2 := PR^;
  y1:=Func64(P2,12);
  if Y1=RandProg then
    Res:=True
  else
    Res:=False;
  result:=Res;
end;
function AESClass.FuncSecond():Cardinal;
begin

end;

function AESClass.FuncBig(p,k,z:double):cardinal;
var
 a1, a2, a3:double;
 y:cardinal;
begin
  try

     a1 := (+(16384 * p - 50139) / 262144) * ((85 * Power(3, (1/3)) * Power(5, (2/3)) *
      Power((-17022339072 * k
      * k + 15252992 * Sqrt(1245456 * k * k * k * k - 13270041 * k * k * k
      + 23218866 * k * k - 14741196 * k + 3193816) + 634588984896 * k -
      4081387131107), (1/3))) / 1906624) * (+(40368 * z - 175789) /
      585336) + ((49 * Power((3623878656 * p * p * -1 + 2097152 * Sqrt(2985984
      * p *
      p * p
      * p - 11139147 * p * p * p + 14315670 * p * p - 7774308 * p +
      1531016) + 22179889152 * p - 27017267233), (1/3))) / 786432) * (+(5
      *
      (184512 * k - 3439283)) / 5719872) * ((53 * Power((2444363136 * z *
      z *-1+ 1560896 * Sqrt(2452356 * z *
      z * z
      * z - 10559295 * z * z * z + 14578974 * z * z - 8266068 * z +
      1675432) + 21288751056 * z - 35270478217), (1/3))) / 585336) + (-
      (8431152758784 * p - 15711066875385) / (28092137472 *
      Power((3623878656 * p * p *-1+ 2097152 * Sqrt(2985984 * p * p * p * p
      - 11139147 * p * p * p + 14315670 * p * p - 7774308 * p + 1531016) +
      22179889152 * p - 27017267233), (1/3)))) * (-(22303482820560000 * k
      -
      215301704280305625) / (1063295605440 * Power(3, (1/3)) * Power(5,
      (2/3)) * Power((-17022339072 * k * k + 15252992 * Sqrt(1245456 * k
      * k * k * k - 13270041 * k * k * k + 23218866 * k * k - 14741196 * k
      + 3193816) + 634588984896 * k - 4081387131107), (1/3)))) * ((53 *
      Power((2444363136 * z * z *-1+ 1560896 * Sqrt(2452356 * z *
      z * z
      * z - 10559295 * z * z * z + 14578974 * z * z - 8266068 * z +
      1675432) + 21288751056 * z - 35270478217), (1/3))) / 585336) + ((49
      * Power((3623878656 * p * p * -1+ 2097152 * Sqrt(2985984 * p *
      p * p
      * p - 11139147 * p * p * p + 14315670 * p * p - 7774308 * p +
      1531016) + 22179889152 * p - 27017267233), (1/3))) / 786432) *
      (-(22303482820560000 * k -
      215301704280305625) / (1063295605440 * Power(3, (1/3)) * Power(5,
      (2/3)) * Power((-17022339072 * k * k + 15252992 * Sqrt(1245456 * k
      * k * k * k - 13270041 * k * k * k + 23218866 * k * k - 14741196 * k
      + 3193816) + 634588984896 * k - 4081387131107), (1/3)))) * (-
      (8762385701088 * z - 21999409730433) / (22615627032 *
      Power((2444363136 * z * z *-1+ 1560896 * Sqrt(2452356 * z * z * z * z
      - 10559295 * z * z * z + 14578974 * z * z - 8266068 * z + 1675432) +
      21288751056 * z - 35270478217), (1/3)))) + ((49 *
      Power((3623878656 * p * p *-1+ 2097152 * Sqrt(2985984 * p *
      p * p
      * p - 11139147 * p * p * p + 14315670 * p * p - 7774308 * p +
      1531016) + 22179889152 * p - 27017267233), (1/3))) / 786432)
      * ((85 * Power(3, (1/3)) * Power(5, (2/3)) *
      Power((-17022339072 * k
      * k + 15252992 * Sqrt(1245456 * k * k * k * k - 13270041 * k * k * k
      + 23218866 * k * k - 14741196 * k + 3193816) + 634588984896 * k -
      4081387131107), (1/3))) / 1906624) * (+(40368 * z - 175789) /
      585336) + (-
      (8431152758784 * p - 15711066875385) / (28092137472 *
      Power((3623878656 * p * p * -1 + 2097152 * Sqrt(2985984 * p * p * p * p
      - 11139147 * p * p * p + 14315670 * p * p - 7774308 * p + 1531016) +
      22179889152 * p - 27017267233), (1/3)))) * (+(5 *
      (184512 * k - 3439283)) / 5719872) * (+(40368 * z - 175789) /
      585336) + (-
      (8431152758784 * p - 15711066875385) / (28092137472 *
      Power((3623878656 * p * p *-1+ 2097152 * Sqrt(2985984 * p * p * p * p
      - 11139147 * p * p * p + 14315670 * p * p - 7774308 * p + 1531016) +
      22179889152 * p - 27017267233), (1/3)))) * (+(5 *
      (184512 * k - 3439283)) / 5719872) * ((53 * Power((2444363136 * z *
      z *-1+ 1560896 * Sqrt(2452356 * z *
      z * z
      * z - 10559295 * z * z * z + 14578974 * z * z - 8266068 * z +
      1675432) + 21288751056 * z - 35270478217), (1/3))) / 585336) +
      (+(16384 * p - 50139) /
      262144) * ((85 * Power(3, (1/3)) * Power(5, (2/3)) *
      Power((-17022339072 * k
      * k + 15252992 * Sqrt(1245456 * k * k * k * k - 13270041 * k * k * k
      + 23218866 * k * k - 14741196 * k + 3193816) + 634588984896 * k -
      4081387131107), (1/3))) / 1906624) * ((53 * Power((2444363136 * z
      * z *-1+ 1560896 * Sqrt(2452356 * z *
      z * z
      * z - 10559295 * z * z * z + 14578974 * z * z - 8266068 * z +
      1675432) + 21288751056 * z - 35270478217), (1/3))) / 585336) +
      (+(16384 * p - 50139) /
      262144) * (-(22303482820560000 * k -
      215301704280305625) / (1063295605440 * Power(3, (1/3)) * Power(5,
      (2/3)) * Power((-17022339072 * k * k + 15252992 * Sqrt(1245456 * k
      * k * k * k - 13270041 * k * k * k + 23218866 * k * k - 14741196 * k
      + 3193816) + 634588984896 * k - 4081387131107), (1/3)))) * (-
      (8762385701088 * z - 21999409730433) / (22615627032 *
      Power((2444363136 * z * z *-1+ 1560896 * Sqrt(2452356 * z * z * z * z
      - 10559295 * z * z * z + 14578974 * z * z - 8266068 * z + 1675432) +
      21288751056 * z - 35270478217), (1/3))));

      a2 := (+(16384 * p - 50139) /
        262144) * (+(5 *
        (184512 * k - 3439283)) / 5719872) * ((53 * Power((2444363136 * z *
        z * -1+ 1560896 * Sqrt(2452356 * z *
        z * z
        * z - 10559295 * z * z * z + 14578974 * z * z - 8266068 * z +
        1675432) + 21288751056 * z - 35270478217), (1/3))) / 585336) + ((49
        * Power((3623878656 * p * p *-1+ 2097152 * Sqrt(2985984 * p *
        p * p
        * p - 11139147 * p * p * p + 14315670 * p * p - 7774308 * p +
        1531016) + 22179889152 * p - 27017267233), (1/3))) / 786432) * (+(5
        *
        (184512 * k - 3439283)) / 5719872) * (-
        (8762385701088 * z - 21999409730433) / (22615627032 *
        Power((2444363136 * z * z *-1+ 1560896 * Sqrt(2452356 * z * z * z * z
        - 10559295 * z * z * z + 14578974 * z * z - 8266068 * z + 1675432) +
        21288751056 * z - 35270478217), (1/3)))) + (+(16384 * p - 50139) /
        262144) * ((85 * Power(3, (1/3)) * Power(5, (2/3)) *
        Power((-17022339072 * k
        * k + 15252992 * Sqrt(1245456 * k * k * k * k - 13270041 * k * k * k
        + 23218866 * k * k - 14741196 * k + 3193816) + 634588984896 * k -
        4081387131107), (1/3))) / 1906624) * (-
        (8762385701088 * z - 21999409730433) / (22615627032 *
        Power((2444363136 * z * z *-1+ 1560896 * Sqrt(2452356 * z * z * z * z
        - 10559295 * z * z * z + 14578974 * z * z - 8266068 * z + 1675432) +
        21288751056 * z - 35270478217), (1/3)))) + (+(16384 * p - 50139) /
        262144) * (+(5 *
        (184512 * k - 3439283)) / 5719872) * (-
        (8762385701088 * z - 21999409730433) / (22615627032 *
        Power((2444363136 * z * z *-1+ 1560896 * Sqrt(2452356 * z * z * z * z
        - 10559295 * z * z * z + 14578974 * z * z - 8266068 * z + 1675432) +
        21288751056 * z - 35270478217), (1/3)))) + ((49 *
        Power((3623878656 * p * p *-1+ 2097152 * Sqrt(2985984 * p *
        p * p
        * p - 11139147 * p * p * p + 14315670 * p * p - 7774308 * p +
        1531016) + 22179889152 * p - 27017267233), (1/3))) / 786432)
        * ((85 * Power(3, (1/3)) * Power(5, (2/3)) *
        Power((-17022339072 * k
        * k + 15252992 * Sqrt(1245456 * k * k * k * k - 13270041 * k * k * k
        + 23218866 * k * k - 14741196 * k + 3193816) + 634588984896 * k -
        4081387131107), (1/3))) / 1906624) * ((53 * Power((2444363136 * z
        * z *-1+ 1560896 * Sqrt(2452356 * z *
        z * z
        * z - 10559295 * z * z * z + 14578974 * z * z - 8266068 * z +
        1675432) + 21288751056 * z - 35270478217), (1/3))) / 585336) + ((49
        * Power((3623878656 * p * p * -1+ 2097152 * Sqrt(2985984 * p *
        p * p
        * p - 11139147 * p * p * p + 14315670 * p * p - 7774308 * p +
        1531016) + 22179889152 * p - 27017267233), (1/3))) / 786432) * ((85
        * Power(3, (1/3)) * Power(5, (2/3)) *
        Power((-17022339072 * k
        * k + 15252992 * Sqrt(1245456 * k * k * k * k - 13270041 * k * k * k
        + 23218866 * k * k - 14741196 * k + 3193816) + 634588984896 * k -
        4081387131107), (1/3))) / 1906624) * (-
        (8762385701088 * z - 21999409730433) / (22615627032 *
        Power((2444363136 * z * z *-1+ 1560896 * Sqrt(2452356 * z * z * z * z
        - 10559295 * z * z * z + 14578974 * z * z - 8266068 * z + 1675432) +
        21288751056 * z - 35270478217), (1/3)))) + (-
        (8431152758784 * p - 15711066875385) / (28092137472 *
        Power((3623878656 * p * p *-1+ 2097152 * Sqrt(2985984 * p * p * p * p
        - 11139147 * p * p * p + 14315670 * p * p - 7774308 * p + 1531016) +
        22179889152 * p - 27017267233), (1/3)))) * ((85 * Power(3, (1/3))
        * Power(5, (2/3)) *
        Power((-17022339072 * k
        * k + 15252992 * Sqrt(1245456 * k * k * k * k - 13270041 * k * k * k
        + 23218866 * k * k - 14741196 * k + 3193816) + 634588984896 * k -
        4081387131107), (1/3))) / 1906624) * (-
        (8762385701088 * z - 21999409730433) / (22615627032 *
        Power((2444363136 * z * z *-1+ 1560896 * Sqrt(2452356 * z * z * z * z
        - 10559295 * z * z * z + 14578974 * z * z - 8266068 * z + 1675432) +
        21288751056 * z - 35270478217), (1/3)))) + (-
        (8431152758784 * p - 15711066875385) / (28092137472 *
        Power((3623878656 * p * p * -1+ 2097152 * Sqrt(2985984 * p * p * p * p
        - 11139147 * p * p * p + 14315670 * p * p - 7774308 * p + 1531016) +
        22179889152 * p - 27017267233), (1/3)))) * (-(22303482820560000 * k
        -
        215301704280305625) / (1063295605440 * Power(3, (1/3)) * Power(5,
        (2/3)) * Power((-17022339072 * k * k + 15252992 * Sqrt(1245456 * k
        * k * k * k - 13270041 * k * k * k + 23218866 * k * k - 14741196 * k
        + 3193816) + 634588984896 * k - 4081387131107), (1/3)))) * (-
        (8762385701088 * z - 21999409730433) / (22615627032 *
        Power((2444363136 * z * z *-1+ 1560896 * Sqrt(2452356 * z * z * z * z
        - 10559295 * z * z * z + 14578974 * z * z - 8266068 * z + 1675432) +
        21288751056 * z - 35270478217), (1/3)))) + (-
        (8431152758784 * p - 15711066875385) / (28092137472 *
        Power((3623878656 * p * p *-1+ 2097152 * Sqrt(2985984 * p * p * p * p
        - 11139147 * p * p * p + 14315670 * p * p - 7774308 * p + 1531016) +
        22179889152 * p - 27017267233), (1/3)))) * (-(22303482820560000 * k
        -
        215301704280305625) / (1063295605440 * Power(3, (1/3)) * Power(5,
        (2/3)) * Power((-17022339072 * k * k + 15252992 * Sqrt(1245456 * k
        * k * k * k - 13270041 * k * k * k + 23218866 * k * k - 14741196 * k
        + 3193816) + 634588984896 * k - 4081387131107), (1/3)))) * (+(40368
        * z - 175789) /
        585336);

      a3 := (-
        (8431152758784 * p - 15711066875385) / (28092137472 *
        Power((3623878656 * p * p *-1+ 2097152 * Sqrt(2985984 * p * p * p * p
        - 11139147 * p * p * p + 14315670 * p * p - 7774308 * p + 1531016) +
        22179889152 * p - 27017267233), (1/3)))) * ((85 * Power(3, (1/3))
        * Power(5, (2/3)) *
        Power((-17022339072 * k
        * k + 15252992 * Sqrt(1245456 * k * k * k * k - 13270041 * k * k * k
        + 23218866 * k * k - 14741196 * k + 3193816) + 634588984896 * k -
        4081387131107), (1/3))) / 1906624) * (+(40368 * z - 175789) /
        585336) + ((49 * Power((3623878656 * p * p *-1+ 2097152 * Sqrt(2985984
        * p *
        p * p
        * p - 11139147 * p * p * p + 14315670 * p * p - 7774308 * p +
        1531016) + 22179889152 * p - 27017267233), (1/3))) / 786432) *
        (-(22303482820560000 * k -
        215301704280305625) / (1063295605440 * Power(3, (1/3)) * Power(5,
        (2/3)) * Power((-17022339072 * k * k + 15252992 * Sqrt(1245456 * k
        * k * k * k - 13270041 * k * k * k + 23218866 * k * k - 14741196 * k
        + 3193816) + 634588984896 * k - 4081387131107), (1/3)))) * (+(40368
        * z - 175789) /
        585336) + (+(16384 * p - 50139) /
        262144) * (-(22303482820560000 * k -
        215301704280305625) / (1063295605440 * Power(3, (1/3)) * Power(5,
        (2/3)) * Power((-17022339072 * k * k + 15252992 * Sqrt(1245456 * k
        * k * k * k - 13270041 * k * k * k + 23218866 * k * k - 14741196 * k
        + 3193816) + 634588984896 * k - 4081387131107), (1/3)))) * (+(40368
        * z - 175789) /
        585336) + (+(16384 * p - 50139) /
        262144) * (+(5 *
        (184512 * k - 3439283)) / 5719872) * (+(40368 * z - 175789) /
        585336) + (+(16384 * p - 50139) /
        262144)
        * (-(22303482820560000 * k -
        215301704280305625) / (1063295605440 * Power(3, (1/3)) * Power(5,
        (2/3)) * Power((-17022339072 * k * k + 15252992 * Sqrt(1245456 * k
        * k * k * k - 13270041 * k * k * k + 23218866 * k * k - 14741196 * k
        + 3193816) + 634588984896 * k - 4081387131107), (1/3)))) * ((53 *
        Power((2444363136 * z * z *-1+ 1560896 * Sqrt(2452356 * z *
        z * z
        * z - 10559295 * z * z * z + 14578974 * z * z - 8266068 * z +
        1675432) + 21288751056 * z - 35270478217), (1/3))) / 585336) + ((49
        * Power((3623878656 * p * p *-1+ 2097152 * Sqrt(2985984 * p *
        p * p
        * p - 11139147 * p * p * p + 14315670 * p * p - 7774308 * p +
        1531016) + 22179889152 * p - 27017267233), (1/3))) / 786432) *
        (-(22303482820560000 * k -
        215301704280305625) / (1063295605440 * Power(3, (1/3)) * Power(5,
        (2/3)) * Power((-17022339072 * k * k + 15252992 * Sqrt(1245456 * k
        * k * k * k - 13270041 * k * k * k + 23218866 * k * k - 14741196 * k
        + 3193816) + 634588984896 * k - 4081387131107), (1/3)))) * ((53 *
        Power((2444363136 * z * z *-1+ 1560896 * Sqrt(2452356 * z *
        z * z
        * z - 10559295 * z * z * z + 14578974 * z * z - 8266068 * z +
        1675432) + 21288751056 * z - 35270478217), (1/3))) / 585336) + ((49
        * Power((3623878656 * p * p *-1+ 2097152 * Sqrt(2985984 * p *
        p * p
        * p - 11139147 * p * p * p + 14315670 * p * p - 7774308 * p +
        1531016) + 22179889152 * p - 27017267233), (1/3))) / 786432) * (+(5
        *
        (184512 * k - 3439283)) / 5719872) * (+(40368 * z - 175789) /
        585336) + (-
        (8431152758784 * p - 15711066875385) / (28092137472 *
        Power((3623878656 * p * p *-1+ 2097152 * Sqrt(2985984 * p * p * p * p
        - 11139147 * p * p * p + 14315670 * p * p - 7774308 * p + 1531016) +
        22179889152 * p - 27017267233), (1/3)))) * ((85 * Power(3, (1/3))
        * Power(5, (2/3)) *
        Power((-17022339072 * k
        * k + 15252992 * Sqrt(1245456 * k * k * k * k - 13270041 * k * k * k
        + 23218866 * k * k - 14741196 * k + 3193816) + 634588984896 * k -
        4081387131107), (1/3))) / 1906624) * ((53 * Power((2444363136 * z
        * z *-1+ 1560896 * Sqrt(2452356 * z *
        z * z
        * z - 10559295 * z * z * z + 14578974 * z * z - 8266068 * z +
        1675432) + 21288751056 * z - 35270478217), (1/3))) / 585336) + (-
        (8431152758784 * p - 15711066875385) / (28092137472 *
        Power((3623878656 * p * p *-1+ 2097152 * Sqrt(2985984 * p * p * p * p
        - 11139147 * p * p * p + 14315670 * p * p - 7774308 * p + 1531016) +
        22179889152 * p - 27017267233), (1/3)))) * (+(5 *
        (184512 * k - 3439283)) / 5719872) * (-
        (8762385701088 * z - 21999409730433) / (22615627032 *
        Power((2444363136 * z * z *-1+ 1560896 * Sqrt(2452356 * z * z * z * z
        - 10559295 * z * z * z + 14578974 * z * z - 8266068 * z + 1675432) +
        21288751056 * z - 35270478217), (1/3))));

      y := Round(Power(a1 + a2 + a3, (1/3)));

  except
     y:=0;
  end;
  Result:= y;
end;
function AESClass.Func64(x:double;a:integer):Cardinal;
var
Res:Cardinal;
R1,R11,R12,R13,R14,R15,R16,R17,R18:Double;
str:string;
begin
//x:=0.333333333333333;
//a:=25;
//str:=x.ToString();
//  if (str.Substring(0,1)='0')and(str.Substring(2,1)='0')and(str.Substring(3,1)='0') then
//  begin
//     R1:=0;
//     Result:=0
//  end
//  else if (str.Length=1)and(str='0') then
//  begin
//     R1:=0;
//     Result:=0
//  end
//  else
//  begin
try
            if (a = 1) then
            begin
              R1 := (1 / 119) * power((39 / 2), 0.3333333333333333) * power((119 * sqrt(119) *
              sqrt((15166431 * x * x) - (188184 * x )+ (260719376)) + (5055477 * x )-
              31364), 0.3333333333333333) - (14122 * power(2, 0.3333333333333333) * power(39, 0.6666666666666667))
              /
              (119 * power((119 * sqrt(119) * sqrt((15166431 * x * x) - (188184 * x) +
              260719376) + (5055477 * x )- (31364)), 0.3333333333333333)) - (39 / 119);
            end
            else if (a = 2) then
            begin
                R1 := (1 / 177) * power((47 / 2), 0.3333333333333333) * power((177 * sqrt(59) *
                sqrt((16635699 * x * x) - (2282196 * x) + 114355084) + (5545233 * x) -
                380366), 0.3333333333333333) - (10396 * power(2, 0.3333333333333333) * power(47, 0.6666666666666667))
                /
                (177 * power((177 * sqrt(59) * sqrt((16635699 * x * x) - (2282196 * x )+
                114355084) + (5545233 * x) - 380366), 0.3333333333333333)) - (47 / 177);
            end
            else if (a = 3) then
            begin
                R1 := (power(47, 0.3333333333333333) * power((111 * sqrt(111) * sqrt((643601678076
                * x * x) - (636636761236 * x) + 157440032487) + (938194866 * x) -
                464020963), 0.3333333333333333)) / (777 * power(2, 0.6666666666666667)) - (1804 *
                power(94,0.6666666666666667)) / (777 * power((111 * sqrt(111) * sqrt((643601678076 * x * x)
                - (636636761236 * x )+ 157440032487) + (938194866 * x) - 464020963), 0.3333333333333333)) - (47 / 111);
            end
            else if (a = 4) then
            begin
                R1 := (power((41 / 2), 0.3333333333333333) * power((405 * sqrt(95) *
                sqrt((50627136375 * x * x) - (32271294648 * x) + 5172382576) + (888195375 * x )- 283081532), 0.3333333333333333))
                / (135 * power(19, 0.6666666666666667)) - (5296 *
                power((2 / 19), 0.3333333333333333) * power(41, 0.6666666666666667)) / (135 * power((405 *
                sqrt(95) * sqrt((50627136375 * x * x) - (32271294648 * x) + 5172382576)
                + (888195375 * x) - 283081532), 0.3333333333333333)) - (41 / 135);
            end
            else if (a = 5) then
            begin
                R1 := ((1 / 102) * power(31, 0.3333333333333333) * power((51 * sqrt(3) * sqrt((36081072
                * x * x) - (16881136 * x) + 1995101) + (530604 * x) - 124126), 0.3333333333333333)) -
                (173 * power(31, 0.6666666666666667)) / (102 * power((51 * sqrt(3) *
                sqrt((36081072 * x * x) - (16881136 * x )+ 1995101) + (530604 * x) - 124126), 0.3333333333333333))
                -(31 / 102);
            end
            else if (a = 6) then
            begin
                R1 := (power((17 / 5), 0.3333333333333333) * power((228 * sqrt(1311) *
                sqrt((225324323100 * x * x) - (87295810115 * x) + 8536314174) + (3918683880
                * x )- 759094001), 0.3333333333333333)) / (114 * power(23, 0.6666666666666667)) - (8273 *
                power((5 / 23), 0.3333333333333333) * power(17, 0.6666666666666667)) / (114 * power((228 *
                sqrt(1311) * sqrt((225324323100 * x * x) - (87295810115 * x) +
                8536314174) + (3918683880 * x) - 759094001), 0.3333333333333333)) - (17 / 114);
            end
            else if (a = 7) then
            begin
                R1 := (power((157 / 5), 0.3333333333333333) * power((228 * sqrt(1311) *
                sqrt((225324323100 * x * x) - (70643419115 * x) + 5707910974) + (3918683880
                * x) - 614290601), 0.3333333333333333)) / (114 * power(23, 0.6666666666666667)) - (5053 *
                power((5 / 23), 0.3333333333333333) * power(157, 0.6666666666666667)) / (114 * power((228
                * sqrt(1311) * sqrt((225324323100 * x * x) - (70643419115 * x) +
                5707910974) + (3918683880 * x) - 614290601), 0.3333333333333333)) - (157 / 114);
            end
            else if (a = 8) then
            begin
                R1 := (power((217 / 10), 0.3333333333333333) * power((891 * sqrt(1221) *
                sqrt((33175274791725 * x * x) - (12198404215540 * x) + 1129413164564) +
                (179325809685 * x) - 32968660042), 0.3333333333333333)) / (297 * power(37, 0.6666666666666667))
                - (21374 * power((10 / 37), 0.3333333333333333)) * power(217, 0.6666666666666667) / (297 *
                power((891 * sqrt(1221) * sqrt((33175274791725 * x * x) -
                (12198404215540 * x) + 1129413164564) + (179325809685 * x) - 32968660042), 0.3333333333333333)) -
                (217/ 297);
            end
            else if (a = 9) then
            begin
                R1 :=(power((83 / 10), 0.3333333333333333) * power((43 * sqrt(1419) *
                sqrt((52073254750275 * x * x) - (20820882351060 * x) + 2081173026476) +
                (11688721605 * x) - 2336799366), 0.3333333333333333)) / (129 * power(33, 0.6666666666666667))
                + (890 * power((10 / 33), 0.3333333333333333) * power(83, 0.6666666666666667)) / (129 *
                power((43 * sqrt(1419) * sqrt((52073254750275 * x * x) - (20820882351060
                * x) + 2081173026476) + (11688721605 * x) - 2336799366), 0.3333333333333333)) - (83/129)
                end
            else if (a = 10) then
            begin
                R1:=(power((23 / 10), 0.3333333333333333) * power((97 * sqrt(1067) *
                sqrt((2459904720075 * x * x) - (895021243380 * x) + 82326208748) +
                (4969504485 * x )- 904061862), 0.3333333333333333)) / (97 * power(11, 0.6666666666666667)) -
                (7132 * power((10 / 11), 0.3333333333333333) * power(23, 0.6666666666666667)) / (97 *
                power((97 * sqrt(1067) * sqrt((2459904720075 * x * x) - (895021243380 *
                x)+ 82326208748) + (4969504485 * x) - 904061862), 0.3333333333333333)) - (69 / 97);
            end
            else if (a = 11) then
            begin
                R11:= 1 / 159 ;
                R12:= power((103 / 2), 0.3333333333333333) ;
                R16:=sqrt((4019679 * x * x) - (42436 * x));
                R17:=(4019679 * x);
                R18:=((159 * sqrt(159) * R16) + R17 - 21218);
                R13:= power(R18, 0.3333333333333333);
                R14:= 103 * power(2, 0.3333333333333333) * power(103, 0.6666666666666667);
                R15:=  power((159 * sqrt(159) * sqrt((4019679 * x * x) - (42436 * x)) + (4019679 * x )- 21218),0.3333333333333333);

                R1 :=R11 * (R12 * R13 + R14/ R15 - 103);
            end
            else if (a = 12) then
            begin
                R1 :=(1 / 87) * power((61 / 362), 0.3333333333333333) * power((87 * sqrt(29) *
                sqrt((64719650349 * x * x) - (1701222258 * x )+ 2913505) + (119189043 * x)
                - 1566503), 0.3333333333333333) + (61 * power(61, 0.6666666666666667) * power(362, 0.3333333333333333))
                / (87 * power((87 * sqrt(29) * sqrt((64719650349 * x * x) - (1701222258 *
                x)+ 2913505) + (119189043 * x) - 1566503), 0.3333333333333333)) - (61 / 87);
            end
            else if (a = 13) then
            begin
                R1 :=(1 / 93) * power((79 / 886), 0.3333333333333333) * power((93 * sqrt(93) *
                sqrt((157854256893 * x * x) - (5611820338 * x) + 11863409) + (356330151 * x)
                - 6333883), 0.3333333333333333) + (79 * power(79, 0.6666666666666667) * power(886, 0.3333333333333333))
                / (93 * power((93 * sqrt(93) * sqrt((157854256893 * x * x) - (5611820338
                * x )+ 11863409) + (356330151 * x) - 6333883), 0.3333333333333333)) - (79 / 93);

            end
            else if (a = 14) then
            begin
                R1 := (1 / 129) * power((83 / 886), 0.3333333333333333) * power((129 * sqrt(129) *
                sqrt((421285569561 * x * x) - (7309803898 * x) + 14353997) + (950983227 *
                x)
                - 8250343), 0.3333333333333333) + (83 * power(83, 0.6666666666666667) * power(886, 0.3333333333333333))
                / (129 * power((129 * sqrt(129) * sqrt((421285569561 * x * x) -
                (7309803898 * x) + 14353997) + (950983227 * x) - 8250343), 0.3333333333333333)) - (83/129);
            end
            else if (a = 15) then
            begin
                R1 := (power(97, 0.3333333333333333) * power((219 * sqrt(23871) *
                sqrt((54409136021244 * x * x )- (54161910945604 * x) + 13478975752223) +
                (249583192758 * x) - 124224566389), 0.3333333333333333)) / (219 * power(218, 0.6666666666666667)) - (5414 * power(194, 0.6666666666666667)) / (219 * power(109, 0.3333333333333333) *
                power((219 * sqrt(23871) * sqrt((54409136021244 * x * x) -
                (54161910945604 * x) + 13478975752223) + (249583192758 * x) - 124224566389), 0.3333333333333333)) - (97 / 219);
            end
            else if (a = 16) then
            begin
                R1 := (power((91 / 5), 0.3333333333333333) * power((152 * sqrt(437) *
                sqrt((300432430800 * x * x )- (96448869645 * x) + 7999737322) +
                (1741637280 * x) - 279561941), 0.3333333333333333)) / (76 * power(23, 0.6666666666666667)) - (3683 *
                power((5 / 23), 0.3333333333333333) * power(91, 0.6666666666666667)) / (76 * power((152 *
                sqrt(437) * sqrt((300432430800 * x * x) - (96448869645 * x) + 7999737322)
                + (1741637280 * x) - 279561941), 0.3333333333333333)) - (91 / 76);
            end
            else if (a = 17) then
            begin
                R1 := (power((41 / 5), 0.3333333333333333) * power((704 * sqrt(1991) *
                sqrt((1818428606438400 * x * x) - (723438247827135 * x) + 71955089316991)
                +( 1339542251520 * x) - 266459759789), 0.3333333333333333)) / (176 * power(181, 0.6666666666666667)) - (23555 * power((5 / 181), 0.3333333333333333) * power(41, 0.6666666666666667)) /
                (176 * power((704 * sqrt(1991) * sqrt((1818428606438400 * x * x )-
                (723438247827135 * x) + 71955089316991) + (1339542251520 * x )-
                266459759789), 0.3333333333333333)) - (41 / 176);
            end
            else if (a = 18) then
            begin
                R1 := (power((31 / 5), 0.3333333333333333) * power((704 * sqrt(1991) *
                sqrt((1818428606438400 * x * x) - (724259697141135 * x) + 72118446291791)
                + (1339542251520 * x) - 266762319389), 0.3333333333333333)) / (176 * power(181, 0.6666666666666667)) - (25365 * power((5 / 181), 0.3333333333333333) * power(31, 0.6666666666666667)) /
                (176 * power((704 * sqrt(1991) * sqrt((1818428606438400 * x * x) -
                (724259697141135 * x) + 72118446291791) + (1339542251520 * x) -
                266762319389), 0.3333333333333333)) - (31 / 176);
            end
            else if (a = 19) then
            begin
                R1 := (power((46 / 5), 0.3333333333333333) * power((783 * sqrt(3683) *
                sqrt((910484786688075 * x * x) - (360873537445030 * x) + 35759036280683)
                +
                (1433834309745 * x) - 284152391689), 0.3333333333333333)) / (261 * power(127, 0.6666666666666667)) - (22046 * power((5 / 127), 0.3333333333333333) * power(46, 0.6666666666666667)) /
                (261 * power((783 * sqrt(3683) * sqrt((910484786688075 * x * x) -
                (360873537445030 * x) + 35759036280683) + (1433834309745 * x) -
                284152391689), 0.3333333333333333)) - (92 / 261);
            end
            else if (a = 20) then
            begin
                R1 := (power((67 / 5), 0.3333333333333333) * power((208 * sqrt(806) *
                sqrt((1884983817600 * x * x) - (685677310365 * x) + 63348896519) +
                (8107457280 * x) - 1474574861), 0.3333333333333333)) / (104 * power(31, 0.6666666666666667))
                - (8739 * power((5 / 31), 0.3333333333333333) * power(67, 0.6666666666666667)) / (104 *
                power((208 * sqrt(806) * sqrt((1884983817600 * x * x) - (685677310365 *
                x) + 63348896519) + (8107457280 * x) - 1474574861), 0.3333333333333333)) - (67 / 104)
            end
            else if (a = 21) then
            begin
                R1 := (power(211, 0.3333333333333333) * power((567 * sqrt(483) * sqrt((328570759692
                * x * x) - (305340613412 * x) + 71113731739) + (7142842602 * x) -
                3318919711), 0.3333333333333333)) / (189 * power(46, 0.6666666666666667)) - (7054 *
                power(422, 0.6666666666666667)) / (189 * power(23, 0.3333333333333333) * power((567 *
                sqrt(483) * sqrt((328570759692 * x * x) - (305340613412 * x) +
                71113731739)
                + (7142842602 * x) - 3318919711), 0.3333333333333333)) - (211 / 189);
            end
            else if (a = 22) then
            begin
                R1 := (power(83, 0.3333333333333333) * power((141 * sqrt(9165) * sqrt((3079338268500
                * x * x) - (3053834377100 * x) + 757136314789) + (23687217450 * x )-
                11745516835), 0.3333333333333333)) / (141 * power(130, 0.6666666666666667)) - (1232 *
                power(166, 0.6666666666666667)) / (141 * power(65, 0.3333333333333333) * power((141 *
                sqrt(9165) * sqrt((3079338268500 * x * x) - (3053834377100 * x) +
                757136314789) + (23687217450 * x) - 11745516835), 0.3333333333333333)) - (83 / 141)
            end
            else if (a = 23) then
            begin
                R1:= (power(167, 0.3333333333333333) * power((402 * sqrt(38793) *
                sqrt((233517853853028 * x * x) - (232913573979242 * x) + 58077766532441)
                +
                (1209937066596 * x) - 603403041397), 0.3333333333333333)) / (402 * power(193, 0.6666666666666667)) - (21637 * power(167, 0.6666666666666667)) / (402 * power(193, 0.3333333333333333) *
                power((402 * sqrt(38793) * sqrt((233517853853028 * x * x) -
                (232913573979242 * x) + 58077766532441) + (1209937066596 * x) -
                603403041397), 0.3333333333333333)) - (167 / 402);
            end
            else if (a = 24) then
            begin
                R11:= sqrt((4992799550652 * x * x) - (5010668747092 * x) + 1257108915479);
                R1 := (power(79, 0.3333333333333333) * power((111 * sqrt(10767) *
                R11 + (25736080158 * x) - 12914094709), 0.3333333333333333)) / (111 * power(194, 0.6666666666666667))
                + (3556 * power(158, 0.6666666666666667)) / (111 * power(97, 0.3333333333333333) *
                power((111
                * sqrt(10767) * sqrt((4992799550652 * x * x) - (5010668747092 * x) +
                1257108915479) + (25736080158 * x) - 12914094709), 0.3333333333333333)) - (79 /111);
            end
            else if (a = 25) then
            begin
                R11:=sqrt(((426795041628 * x * x) - (285722603766 * x) + 47817366257));
                R12 :=(509910444 * x);
                R1 := (power(67, 0.3333333333333333) * power((34 * sqrt(527) * R11 + R12 - 170682559),
                0.3333333333333333)) / (102 * power(31, 0.6666666666666667)) + (307 * power(67, 0.6666666666666667))
                / (34 * power(31, 0.3333333333333333) * power((34 * sqrt(527) * R11 + R12 -
                170682559), 0.3333333333333333)) - 67 / 102;
            end
            else if (a = 26) then
            begin
                R1 := (power(107, 0.3333333333333333) * power((124 * sqrt(2542) *
                sqrt((47897644720608 * x * x) - (47716238418822 * x )+ 11884028736721) +
                (43267971744 * x) - 21552049873), 0.3333333333333333)) / (372 * power(41, 0.6666666666666667))
                - (3663 * power(107, 0.6666666666666667)) / (124 * power(41, 0.3333333333333333) *
                power((124 * sqrt(2542) * sqrt((47897644720608 * x * x) - (47716238418822 * x) +
                11884028736721) + (43267971744 * x) - 21552049873), 0.3333333333333333)) - (107 / 372);
            end
            else if (a = 27) then
            begin
                R1 := (power(3, 0.3333333333333333) * power((16 * sqrt(6357) * sqrt((43238178048 * x
                * x) - (43117182822 * x) + 10749143671) + (265264896 * x) - 132261297), 0.3333333333333333)) / (8 * power(163, 0.6666666666666667)) - (343 * power(3, 0.6666666666666667)) / (8
                *
                power(163, 0.3333333333333333) * power((16 * sqrt(6357) * sqrt((43238178048 * x
                * x)
                - (43117182822 * x) + 10749143671) + (265264896 * x )- 132261297), 0.3333333333333333)) - (3 / 8);
            end
            else if (a = 28) then
            begin
                R1 := (power(29, 0.3333333333333333) * power((114 * sqrt(2337) * sqrt((459492723108
                * x * x) - (304775631426 * x) + 50539657567) + (3735713196 * x) -
                1238925331), 0.3333333333333333)) / (114 * power(41, 0.6666666666666667)) - (3143 *
                power(29, 0.6666666666666667)) / (114 * power(41, 0.3333333333333333) * power((114 *
                sqrt(2337) * sqrt((459492723108 * x * x) - (304775631426 * x) +
                50539657567) + (3735713196 * x) - 1238925331), 0.3333333333333333)) - (29 / 114);
            end
            else if (a = 29) then
            begin
                R1 := (power((43 / 2), 0.3333333333333333) * power((111 * sqrt(15873) *
                sqrt((35993125292553 * x * x) - (23865288218772 * x) + 3956007114308) +
                (83900058957 * x) - 27815021234), 0.3333333333333333)) / (111 * power(143, 0.6666666666666667))
                - (6172 * power((2 / 143), 0.3333333333333333) * power(43, 0.6666666666666667)) / (111 *
                power((111 * sqrt(15873) * sqrt((35993125292553 * x * x )-
                (23865288218772
                * x) + 3956007114308) + (83900058957 * x) - 27815021234), 0.3333333333333333)) - (43 / 111);
            end
            else if (a = 30) then
            begin
                R1 := (1 / 861) * power((2 / 103), 0.6666666666666667) * power(17, 0.3333333333333333) *
                power((861 * sqrt(29561) * sqrt((2092388783123961 * x * x) -
                (1393325251397454 * x) + 231992585700637) + (6771484735029 * x) -
                2254571604203), 0.3333333333333333) - (984926 * power((2 / 103), 0.3333333333333333) *
                power(17, 0.6666666666666667)) / (861 * power((861 * sqrt(29561) *
                sqrt((2092388783123961 * x * x) - (1393325251397454 * x) +
                231992585700637)
                +(6771484735029 * x)- 2254571604203), 0.3333333333333333)) - (34 / 861)
            end
            else if (a = 31) then
            begin
                R1 := (power(143, 0.3333333333333333) * power((414 * sqrt(6693) *
                sqrt((97142099436468 * x * x) - (64181545855818 * x )+ 10602126304859) +
                (333821647548 * x) - 110277570199), 0.3333333333333333)) / (414 * power(97, 0.6666666666666667)) - (43261 * power(143, 0.6666666666666667)) / (414 * power(97, 0.3333333333333333) *
                power((414 * sqrt(6693) * sqrt((97142099436468 * x * x) -
                (64181545855818 * x) + 10602126304859) + (333821647548 * x )- 110277570199), 0.3333333333333333))
                -( 143 / 414);
            end
            else if (a = 32) then
            begin
                R1 := (power((7 / 67), 0.6666666666666667) * power((143 * sqrt(9581) *
                sqrt((7915439429469 * x * x) - (5204661518400 * x )+ 855898035488) +
                (39380295669 * x) - 12946919200), 0.3333333333333333)) / (143 * power(2, 0.3333333333333333))
                - (120162 * power((14 / 67), 0.3333333333333333)) / (143 * power((143 *
                sqrt(9581)
                * sqrt((7915439429469 * x * x) - (5204661518400 * x) + 855898035488) +
                (39380295669 * x) - 12946919200), 0.3333333333333333)) - (49 / 143);
            end
            else if (a = 33) then
            begin
                R1 :=(power((167 / 2), 0.3333333333333333) * power((309 * sqrt(4841) *
                sqrt((9189465821001 * x * x )- (5949717419040 * x )+ 963972174752) +
                (65173516461 * x) - 21098288720), 0.3333333333333333)) / (309 * power(47, 0.6666666666666667))
                - (23978 * power((2 / 47), 0.3333333333333333) * power(167, 0.6666666666666667)) / (309 *
                power((309 * sqrt(4841) * sqrt((9189465821001 * x * x )- (5949717419040
                *x) + 963972174752) + (65173516461 * x) - 21098288720), 0.3333333333333333)) - (167/309);
            end
            else if (a = 34) then
            begin
                R1 := (Power((59.0 / 2.0), 0.3333333333333333) * Power((133 * Sqrt(21) *
                Sqrt((10862125029 * x * x) - (7093774260 * x) + 1159007348) + (63521199 *
                x) - 20742030), 0.3333333333333333)) / (133 * Power(3, 0.6666666666666667)) - (754 * Power((2.0 / 3.0), 0.3333333333333333)
                * Power(59, 0.6666666666666667)) / (133 * Power((133 * Sqrt(21) *
                Sqrt((10862125029 * x * x) - (7093774260 * x) + 1159007348) + (63521199 *
                x) - 20742030), 0.3333333333333333)) - (59.0 / 133.0);
            end
            else if (a = 35) then
            begin
                R1 := (Power((197.0 / 10.0), 0.3333333333333333) * Power((1377 * Sqrt(2397) *
                Sqrt((250998796487925 * x * x) - (96218311135220 * x )+ 9267290546452) +
                (1068079985055 * x) - 204719810926), 0.3333333333333333)) / (459 * Power(47, 0.6666666666666667)) - (60968 * Power((10.0 / 47.0), 0.3333333333333333) * Power(197, 0.6666666666666667)) /
                (459
                * Power((1377 * Sqrt(2397) * Sqrt((250998796487925 * x * x )-
                (96218311135220 * x) + 9267290546452) + (1068079985055 * x) -
                204719810926), 0.3333333333333333)) - (197.0 / 459.0);
            end
            else if (a = 36) then
            begin
                R1 := ((Power(19, 0.3333333333333333) * Power((1431 * Sqrt(53) *
                Sqrt(319215069902925 * x * x - 122920918125670 * x + 11884923352517)
                + 186131236095 * x - 35837002369), 0.3333333333333333)) / 3339.0) - ((665330 *
                Power(19, 0.6666666666666667)) / (3339 * Power((1431 * Sqrt(53) *
                Sqrt(319215069902925 * x * x - 122920918125670 * x + 11884923352517)
                + 186131236095 * x - 35837002369), 0.3333333333333333))) - (190.0 / 477.0);
            end
            else if (a = 37) then
            begin
                R1 := (1.0 / 507.0) * Power((209.0 / 10.0), 0.3333333333333333) * Power((2197 *
                Sqrt((87968594025 * x * x) - (33445725660 * x) + 3213042596) + (651619215
                * x) - 123873058), 0.3333333333333333) - (1988 * Power(10, 0.3333333333333333) * Power(209, 0.6666666666666667)) / (507 * Power((2197 * Sqrt((87968594025 * x * x) - (33445725660
                * x) + 3213042596) + (651619215 * x) - 123873058), 0.3333333333333333)) - (209.0 / 507.0);
            end
            else if (a = 38) then
            begin
                R1 := (Power((73.0 / 10.0), 0.3333333333333333) * Power((179 * Sqrt(5191) *
                Sqrt((31472816145975 * x * x) - (11742925251840 * x) + 1129465666304) +
                (72351301485 * x) - 13497615232), 0.3333333333333333)) / (179 * Power(29, 0.6666666666666667))
                - (29924 * Power((10.0 / 29.0), 0.3333333333333333) * Power(73, 0.6666666666666667)) / (179 *
                Power((179 * Sqrt(5191) * Sqrt((31472816145975 * x * x) -
                (11742925251840
                * x) + 1129465666304) + (72351301485 * x) - 13497615232), 0.3333333333333333)) - (73.0/179.0);
            end
            else if (a = 39) then
            begin
                R1 := (1.0 / 27.0) * Power((23.0 / 2.0), 0.3333333333333333) * Power((9 * Sqrt(3) *
                Sqrt((78121827 * x * x) - (18590796 * x) + 1130252) + (137781 * x) -
                16394), 0.3333333333333333) - (40 * Power(2, 0.3333333333333333) * Power(23, 0.6666666666666667)) /
                (27 * Power((9 * Sqrt(3) * Sqrt((78121827 * x * x) - (18590796 * x) +
                1130252) + (137781 * x) - 16394), 0.3333333333333333)) - (23.0 / 27.0);
            end
            else if (a = 40) then
            begin
                R1 := (1.0 / 567.0) * Power((239.0 / 10.0), 0.3333333333333333) * Power((729 *
                Sqrt((1563087555225 * x * x) - (600301717540 * x )+ 57968708324) +
                (911421315 * x) - 175015078), 0.3333333333333333) - (1948 * Power(10, 0.3333333333333333) *
                Power(239, 0.6666666666666667)) / (567 * Power((729 * Sqrt((1563087555225 * x * x)
                - (600301717540 * x) + 57968708324) + (911421315 * x) - 175015078), 0.3333333333333333)) - (239.0 / 567.0);
            end
            else if (a = 41) then
            begin
                R1 := (Power((227.0 / 5.0), 0.3333333333333333) * Power((918 * Sqrt(629) *
                Sqrt((18141761978100 * x * x) - (6659744606390 * x) + 615892272379) +
                (98063578260 * x) - 17999309747), 0.3333333333333333)) / (306 * Power(37, 0.6666666666666667))
                - (22813 * Power((5.0 / 37.0), 0.3333333333333333) * Power(227, 0.6666666666666667)) / (306 *
                Power((918 * Sqrt(629) * Sqrt((18141761978100 * x * x) - (6659744606390
                *
                x) + 615892272379) + (98063578260 * x) - 17999309747), 0.3333333333333333)) - (227.0 / 306.0);
            end
            else if (a = 42) then
            begin
                R1 := (Power((263.0 / 2.0), 0.3333333333333333) * Power((143 * Sqrt(559) *
                Sqrt((1864376811185031 * x * x) - (327790556955180 * x) + 14410872079100)
                + (145985186061 * x) - 12833394290), 0.3333333333333333)) / (429 * Power(43, 0.6666666666666667)) - (9140 * Power((2.0 / 43.0), 0.3333333333333333) * Power(263, 0.6666666666666667)) / (429
                * Power((143 * Sqrt(559) * Sqrt((1864376811185031 * x * x) -
                (327790556955180 * x) + 14410872079100) + (145985186061 * x) -
                12833394290), 0.3333333333333333)) - (263.0 / 429.0);
            end
            else if (a = 43) then
            begin
                R1 := (Power((257.0 / 5.0), 0.3333333333333333) * Power((1344 * Sqrt(777) *
                Sqrt((12008894284800 * x * x) - (4390690484245 * x) + 405098318757) +
                (129825884160 * x) - 23733462077), 0.3333333333333333)) / (336 * Power(37, 0.6666666666666667))
                - (28123 * Power((5.0 / 37.0), 0.3333333333333333) * Power(257, 0.6666666666666667)) / (336 *
                Power((1344 * Sqrt(777) * Sqrt((12008894284800 * x * x) - (4390690484245
                * x) + 405098318757) + (129825884160 * x )- 23733462077), 0.3333333333333333)) -
                (257.0 / 336.0);
            end
            else if (a = 44) then
            begin
                R1 := (Power((239.0 / 5.0), 0.3333333333333333) * Power((366 * Sqrt(8601) *
                Sqrt((63627790580100 * x * x) - (23979584807290 * x) + 2268410574179) +
                (270756555660 * x) - 51020393207), 0.3333333333333333)) / (366 * Power(47, 0.6666666666666667))
                - (33419 * Power((5.0 / 47.0), 0.3333333333333333) * Power(239, 0.6666666666666667)) / (366 *
                Power((366 * Sqrt(8601) * Sqrt((63627790580100 * x * x) -
                (23979584807290
                * x) + 2268410574179) + (270756555660 * x) - 51020393207), 0.3333333333333333)) -
                (239.0 / 366.0);
            end
            else if (a = 45) then
            begin
                R1 := (Power((89.0 / 7.0), 0.3333333333333333) * Power((184 * Sqrt(851) *
                Sqrt((4348577879856 * x * x) - (1074037197135 * x) + 67092362992) +
                (11193250656 * x) - 1382287255), 0.3333333333333333)) / (92 * Power(37, 0.6666666666666667))
                - (5171 * Power((7.0 / 37.0), 0.3333333333333333) * Power(89, 0.6666666666666667)) / (92 *
                Power((184 * Sqrt(851) * Sqrt((4348577879856 * x * x) - (1074037197135 * x)
                + 67092362992) + (11193250656 * x) - 1382287255), 0.3333333333333333)) - (89.0 / 92.0);
            end
            else if (a = 46) then
            begin
                R1 := (1.0 / 216.0) * Power((277.0 / 7.0), 0.3333333333333333) * Power((144 * Sqrt(6) *
                Sqrt((9999593856 * x * x) - (2211671385 * x) + 125208397) + (35271936 * x)
                -3900655), 0.3333333333333333) - (299 * Power(7, 0.3333333333333333) * Power(277, 0.6666666666666667))
                /(216 * Power((144 * Sqrt(6) * Sqrt((9999593856 * x * x) - (2211671385 *
                x)+ 125208397) + (35271936 * x) - 3900655), 0.3333333333333333)) - (277.0 / 216.0);
            end
            else if (a = 47) then
            begin
                R1 := (Power((73.0 / 7.0), 0.3333333333333333) * Power((152 * Sqrt(551) *
                Sqrt((1180356969456 * x * x) - (278159672679 * x) + 16786762492) +
                (3876377568 * x) - 456748231), 0.3333333333333333)) / (76 * Power(29, 0.6666666666666667)) -
                (3659 * Power((7.0 / 29.0), 0.3333333333333333) * Power(73, 0.6666666666666667)) / (76 *
                Power((152 * Sqrt(551) * Sqrt((1180356969456 * x * x) - (278159672679 *
                x)+ 16786762492) + (3876377568 * x) - 456748231), 0.3333333333333333)) - (73.0 / 76.0);
            end
            else if (a = 48) then
            begin
                R1 := (Power(119, 0.3333333333333333) * Power((704 * Sqrt(473) *
                Sqrt((78997056095232 * x * x) - (17309265567057 * x) + 948547815709) +
                (136084506624 * x) - 14908928137), 0.3333333333333333)) / (528 * Power(43, 0.6666666666666667))
                - (25859 * Power(119, 0.6666666666666667)) / (528 * Power(43, 0.3333333333333333) *
                Power((704 * Sqrt(473) * Sqrt((78997056095232 * x * x) - (17309265567057
                * x) + 948547815709) + (136084506624 * x) - 14908928137), 0.3333333333333333)) - (119.0 / 528.0);
            end
            else if (a = 49) then
            begin
                R1 := (Power(109, 0.3333333333333333) * Power((106 * Sqrt(18921) * Sqrt((243856736782596 * x * x) - (53145962043426 * x) + 2896192268587) +
                (227690697276 * x) - 24811373503), 0.3333333333333333)) / (318 * Power(119, 0.6666666666666667))
                - (20737 * Power(109, 0.6666666666666667)) / (318 * Power(119, 0.3333333333333333) * Power((106 * Sqrt(18921) * Sqrt((243856736782596 * x * x) -
                (53145962043426 * x) + 2896192268587) + (227690697276 * x) - 24811373503), 0.3333333333333333))
                - (109.0 / 318.0);
            end
            else if (a = 50) then
            begin
                R1 := (Power(113, 0.3333333333333333) * Power((378 * Sqrt(903) *
                Sqrt((19323833197788 * x * x) - (4222897940034 * x) + 230761144049) +
                (49932385524 * x) - 5455940491), 0.3333333333333333)) / (378 * Power(43, 0.6666666666666667))
                - (11017 * Power(113, 0.6666666666666667)) / (378 * Power(43, 0.3333333333333333) *
                Power((378 * Sqrt(903) * Sqrt((19323833197788 * x * x) - (4222897940034
                * x) + 230761144049) + (49932385524 * x) - 5455940491), 0.3333333333333333)) - (113.0 / 378.0);
            end
            else if (a = 51) then
            begin
                R1 := Power((16 * Sqrt(3706) * Sqrt((228256631424 * x * x) - (49467814767
                * x) + 2681535337) + (465355008 * x) - 50425907), 0.3333333333333333) / (8 *
                Power(109, 0.6666666666666667)) - 2283.0 / (8 * Power(109, 0.3333333333333333) * Power((16 *
                Sqrt(3706) * Sqrt((228256631424 * x * x) - (49467814767 * x) +
                2681535337) + (465355008 * x) - 50425907), 0.3333333333333333)) - (3.0 / 8.0);
            end
            else if (a = 52) then
            begin
                R1 := (Power((163.0 / 2.0), 0.3333333333333333) * Power((369 * Sqrt(4879) *
                Sqrt((762013195803279 * x * x) - (165290825202804 * x) + 8965496479676)
                + (711496914849 * x) - 77166585062), 0.3333333333333333)) / (369 * Power(119, 0.6666666666666667)) - (25990 * Power((2.0 / 119.0), 0.3333333333333333) * Power(163, 0.6666666666666667)) /
                (369 * Power((369 * Sqrt(4879) * Sqrt((762013195803279 * x * x) -
                (165290825202804 * x) + 8965496479676) + (711496914849 * x) -
                77166585062), 0.3333333333333333)) - (163.0 / 369.0);
            end
            else if (a = 53) then
            begin
                R1 := (Power((19.0 / 2.0), 0.3333333333333333) * Power((489 * Sqrt(67971) *
                Sqrt((37997615908292931 * x * x) - (6731762496360220 * x) +
                298266854933484) + (24851285747739 * x) - 2201361182590), 0.3333333333333333)) /
                (489 * Power(139, 0.6666666666666667)) - (557216 * Power((2.0 / 139.0), 0.3333333333333333) *
                Power(19, 0.6666666666666667)) / (489 * Power((489 * Sqrt(67971) *
                Sqrt((37997615908292931 * x * x) - (6731762496360220 * x) +
                298266854933484) + (24851285747739 * x) - 2201361182590), 0.3333333333333333)) -
                (209.0 / 489.0);
            end
            else if (a = 54) then
            begin
                R1 := (Power((215.0 / 22.0), 0.3333333333333333) * Power((489 * Sqrt(67971) *
                Sqrt((37997615908292931 * x * x) - (6728360965759312 * x) +
                297963226999776) + (24851285747739 * x) - 2200248844264), 0.3333333333333333)) /
                (489 * Power(139, 0.6666666666666667)) - (49822 * Power((22.0 / 139.0), 0.3333333333333333) *
                Power(215, 0.6666666666666667)) / (489 * Power((489 * Sqrt(67971) *
                Sqrt((37997615908292931 * x * x) - (6728360965759312 * x) +
                297963226999776) + (24851285747739 * x) - 2200248844264), 0.3333333333333333)) -
                (215.0 / 489.0);
            end
            else if (a = 55) then
            begin
                R1 := (Power((107.0 / 11.0), 0.3333333333333333) * Power((173 * Sqrt(8131) *
                Sqrt((47418169181435019 * x * x) - (8406286100299494 * x) +
                372723249480419) + (3396960325341 * x) - 301106314933), 0.3333333333333333)) /
                (519
                * Power(47, 0.6666666666666667)) - (39742 * Power((11.0 / 47.0), 0.3333333333333333) *
                Power(107, 0.6666666666666667)) / (519 * Power((173 * Sqrt(8131) *
                Sqrt((47418169181435019 * x * x) - (8406286100299494 * x) +
                372723249480419) + (3396960325341 * x) - 301106314933), 0.3333333333333333)) - (214.0 / 519.0);
            end
            else if (a = 56) then
            begin
                R1 := (Power(97, 0.3333333333333333) * Power((2625 * Sqrt(3003) *
                Sqrt((423141891046875 * x * x) - (75188243917358 * x) + 3341471513803) +
                (2959034203125 * x) - 262895957753), 0.3333333333333333)) / (525 * Power(143, 0.6666666666666667)) - (128266 * Power(97, 0.6666666666666667)) / (525 * Power(143, 0.3333333333333333) *
                Power((2625 * Sqrt(3003) * Sqrt((423141891046875 * x * x) -
                (75188243917358 * x) + 3341471513803) + (2959034203125 * x) -
                262895957753), 0.3333333333333333)) - (194.0 / 525.0);
            end
            else if (a = 57) then
            begin
                R1 := (1.0 / 495.0) * Power((2.0 / 127.0), 0.6666666666666667) * Power(23, 0.3333333333333333) *
                Power((1485 * Sqrt(635) * Sqrt((2732872967710875 * x * x) -
                (483939667247762 * x) + 21437352465187) + (1956244071375 * x) -
                173206752773), 0.3333333333333333) - (233228 * Power((2.0 / 127.0), 0.3333333333333333) *
                Power(23, 0.6666666666666667)) / (495 * Power((1485 * Sqrt(635) *
                Sqrt((2732872967710875 * x * x) - (483939667247762 * x) + 21437352465187)
                + (1956244071375 * x) - 173206752773), 0.3333333333333333)) - (184.0 / 495.0);
            end
            else if (a = 58) then
            begin
                R1 := (Power((41.0 / 13.0), 0.3333333333333333) * Power((573 * Sqrt(17763) *
                Sqrt((3788747330228172 * x * x) - (567560672536624 * x) + 21281442030543)
                + (4700679069762 * x) - 352084784452), 0.3333333333333333)) / (573 * Power(31, 0.6666666666666667)) - (89107 * Power((13.0 / 31.0), 0.3333333333333333) * Power(41, 0.6666666666666667)) /
                (573 * Power((573 * Sqrt(17763) * Sqrt((3788747330228172 * x * x) -
                (567560672536624 * x) + 21281442030543) + (4700679069762 * x) -
                352084784452), 0.3333333333333333)) - (164.0 / 573.0);
            end
            else if (a = 59) then
            begin
                R1 := Power((52 * Sqrt(19) * Sqrt((63471567276 * x * x) - (9529554177 * x)
                + 358298480) + (57104424 * x) - 4286799), 0.3333333333333333) / (13 * Power(19, 0.6666666666666667)) - (1181.0 / (13 * Power(19, 0.3333333333333333) * Power((52 * Sqrt(19) *
                Sqrt((63471567276 * x * x) - (9529554177 * x) + 358298480) + (57104424 * x)
                - 4286799), 0.3333333333333333))) - (3.0 / 13.0);
            end
            else if (a = 60) then
            begin
                R1 := (Power((122.0 / 13.0), 0.3333333333333333) * Power((309 * Sqrt(34917) *
                Sqrt((7194447923672997 * x * x) - (1063822253873158 * x) +
                39412745362197)
                + (4897513903113 * x) - 362090624191), 0.3333333333333333)) / (309 * Power(113, 0.6666666666666667)) - (49868 * Power((13.0 / 113.0), 0.3333333333333333) * Power(122, 0.6666666666666667))
                / (309 * Power((309 * Sqrt(34917) * Sqrt((7194447923672997 * x * x) -
                (1063822253873158 * x) + 39412745362197) + (4897513903113 * x) -
                362090624191), 0.3333333333333333)) - (122.0 / 309.0);
            end
            else if (a = 61) then
            begin
                R1 := (Power((253.0 / 13.0), 0.3333333333333333) * Power((11664 * Sqrt(254) *
                Sqrt((23548480764621696 * x * x) - (3500212915673071 * x) +
                130263729980737) + (28526324366592 * x) - 2120056278421), 0.3333333333333333)) /
                (648 * Power(127, 0.6666666666666667)) - (107837 * Power((13.0 / 127.0), 0.3333333333333333) *
                Power(253, 0.6666666666666667)) / (648 * Power((11664 * Sqrt(254) *
                Sqrt((23548480764621696 * x * x) - (3500212915673071 * x) +
                130263729980737) + (28526324366592 * x) - 2120056278421), 0.3333333333333333)) -
                (253.0 / 648.0);
            end
            else if (a = 62) then
            begin
                R1 := (Power(233, 0.3333333333333333) * Power((663 * Sqrt(3417) *
                Sqrt((4557937198383972 * x * x) - (680709759905188 * x) + 25447185695527)
                + (2616496669566 * x) - 195381676207), 0.3333333333333333)) / (663 * Power(134, 0.6666666666666667)) - (115301 * Power(233, 0.6666666666666667)) / (663 * Power(134, 0.3333333333333333)
                *
                Power((663 * Sqrt(3417) * Sqrt((4557937198383972 * x * x) -
                (680709759905188 * x) + 25447185695527) + (2616496669566 * x) -
                195381676207), 0.3333333333333333)) - (233.0 / 663.0);
            end
            else if (a = 63) then
            begin
                R1 := (Power((247.0 / 17.0), 0.3333333333333333) * Power((233 * Sqrt(699) *
                Sqrt((73681227929005056 * x * x) - (8359414350696576 * x) +
                237532963902107) + (1672141156704 * x) - 94855373442), 0.3333333333333333)) /
                (2796 * Power(3, 0.6666666666666667)) - (42433 * Power((17.0 / 3.0), 0.3333333333333333) *
                Power(247,
                0.6666666666666667)) / (2796 * Power((233 * Sqrt(699) * Sqrt((73681227929005056
                * x
                * x) - (8359414350696576 * x) + 237532963902107) + (1672141156704 * x) -
                94855373442), 0.3333333333333333)) - (247.0 / 699.0);
            end
            else if (a = 64) then
            begin
                R1 := (Power((89.0 / 17.0), 0.3333333333333333) * Power((6561 * sqrt(82) *
                Sqrt((6859294910190792 * x * x) - (781387349855332 * x) + 22279485169319)
                + (4920584584068 * x) - 280268059489), 0.3333333333333333)) / (486 * Power(41,
                0.6666666666666667)) - (44453 * Power((17.0 / 41.0), 0.3333333333333333) * Power(89, 0.6666666666666667)) / (486
                * Power((6561 * Sqrt(82) * Sqrt((6859294910190792 * x * x) -
                (781387349855332 * x) + 22279485169319) + (4920584584068 * x) -
                280268059489), 0.3333333333333333)) - (89.0 / 243.0);
            end;
except
  R1 :=0;
end;
Result:=Round(R1)
end;

end.
