unit IdCoderHeader_yeganeh;

//TODO: Optimize and restructure code
//TODO: Redo this unit to fit with the new coders and use the exisiting MIME stuff

{
2001-Nov-18 Peter Mee
 - Fixed multiple QP decoding in single header.
11-10-2001 - J. Peter Mugaas
  - tiny fix for 8bit header encoding suggested by Andrew P.Rybin}
interface

uses
  IdEMailAddress,dialogs;

type
  TTransfer = (bit7, bit8, iso2022jp);
  CSET = set of Char;

// Procs
  function EncodeAddressItem(EmailAddr:TIdEmailAddressItem; const HeaderEncoding: Char;
    TransferHeader: TTransfer; MimeCharSet: string): string;
  function EncodeHeader(const Header: string; specials : CSET; const HeaderEncoding: Char;
   TransferHeader: TTransfer; MimeCharSet: string): string;
  function Encode2022JP(const S: string): string;
  function EncodeAddress(EmailAddr:TIdEMailAddressList; const HeaderEncoding: Char;
    TransferHeader: TTransfer; MimeCharSet: string): string;
  function DecodeHeader(Header: string):string;
  function Decode2022JP(const S: string): string;
  Procedure DecodeAddress(EMailAddr : TIdEmailAddressItem);
  Procedure DecodeAddresses(AEMails : String; EMailAddr : TIdEmailAddressList);
  procedure InitializeISO(var TransferHeader: TTransfer; var HeaderEncoding: char;
    var CharSet: string);

implementation

uses
  IdGlobal,
  SysUtils;

const
  csSPECIALS: CSET = ['(', ')', '[', ']', '<', '>', ':', ';', '.', ',', '@', '\', '"'];  

  kana_tbl : array[#$A1..#$DF] of Word = (
    $2123,$2156,$2157,$2122,$2126,$2572,$2521,$2523,$2525,$2527,
    $2529,$2563,$2565,$2567,$2543,$213C,$2522,$2524,$2526,$2528,
    $252A,$252B,$252D,$252F,$2531,$2533,$2535,$2537,$2539,$253B,
    $253D,$253F,$2541,$2544,$2546,$2548,$254A,$254B,$254C,$254D,
    $254E,$254F,$2552,$2555,$2558,$255B,$255E,$255F,$2560,$2561,
    $2562,$2564,$2566,$2568,$2569,$256A,$256B,$256C,$256D,$256F,
    $2573,$212B,$212C);

  vkana_tbl : array[#$A1..#$DF] of Word = (
    $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,
    $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$2574,$0000,
    $0000,$252C,$252E,$2530,$2532,$2534,$2536,$2538,$253A,$253C,
    $253E,$2540,$2542,$2545,$2547,$2549,$0000,$0000,$0000,$0000,
    $0000,$2550,$2553,$2556,$2559,$255C,$0000,$0000,$0000,$0000,
    $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,
    $0000,$0000,$0000);

  sj1_tbl : array[#128..#255] of Byte = (
    $00,$21,$23,$25,$27,$29,$2B,$2D,$2F,$31,$33,$35,$37,$39,$3B,$3D,
    $3F,$41,$43,$45,$47,$49,$4B,$4D,$4F,$51,$53,$55,$57,$59,$5B,$5D,
    $00,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,
    $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,
    $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,
    $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,
    $5F,$61,$63,$65,$67,$69,$6B,$6D,$6F,$71,$73,$75,$77,$79,$7B,$7D,
    $02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$00,$00,$00);

  sj2_tbl : array[Char] of Word = (
    $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,
    $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,
    $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,
    $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,
    $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,
    $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,
    $0000,$0000,$0000,$0000,$0021,$0022,$0023,$0024,$0025,$0026,
    $0027,$0028,$0029,$002A,$002B,$002C,$002D,$002E,$002F,$0030,
    $0031,$0032,$0033,$0034,$0035,$0036,$0037,$0038,$0039,$003A,
    $003B,$003C,$003D,$003E,$003F,$0040,$0041,$0042,$0043,$0044,
    $0045,$0046,$0047,$0048,$0049,$004A,$004B,$004C,$004D,$004E,
    $004F,$0050,$0051,$0052,$0053,$0054,$0055,$0056,$0057,$0058,
    $0059,$005A,$005B,$005C,$005D,$005E,$005F,$0000,$0060,$0061,
    $0062,$0063,$0064,$0065,$0066,$0067,$0068,$0069,$006A,$006B,
    $006C,$006D,$006E,$006F,$0070,$0071,$0072,$0073,$0074,$0075,
    $0076,$0077,$0078,$0079,$007A,$007B,$007C,$007D,$007E,$0121,
    $0122,$0123,$0124,$0125,$0126,$0127,$0128,$0129,$012A,$012B,
    $012C,$012D,$012E,$012F,$0130,$0131,$0132,$0133,$0134,$0135,
    $0136,$0137,$0138,$0139,$013A,$013B,$013C,$013D,$013E,$013F,
    $0140,$0141,$0142,$0143,$0144,$0145,$0146,$0147,$0148,$0149,
    $014A,$014B,$014C,$014D,$014E,$014F,$0150,$0151,$0152,$0153,
    $0154,$0155,$0156,$0157,$0158,$0159,$015A,$015B,$015C,$015D,
    $015E,$015F,$0160,$0161,$0162,$0163,$0164,$0165,$0166,$0167,
    $0168,$0169,$016A,$016B,$016C,$016D,$016E,$016F,$0170,$0171,
    $0172,$0173,$0174,$0175,$0176,$0177,$0178,$0179,$017A,$017B,
    $017C,$017D,$017E,$0000,$0000,$0000);

  base64_tbl: array [0..63] of Char = (
    'A','B','C','D','E','F','G','H',     
    'I','J','K','L','M','N','O','P',      
    'Q','R','S','T','U','V','W','X',      
    'Y','Z','a','b','c','d','e','f',      
    'g','h','i','j','k','l','m','n',      
    'o','p','q','r','s','t','u','v',       
    'w','x','y','z','0','1','2','3',       
    '4','5','6','7','8','9','+','/');      

function EncodeAddressItem(EmailAddr:TIdEmailAddressItem; const HeaderEncoding: Char;
  TransferHeader: TTransfer; MimeCharSet: string): string;
var
  S : string;
  I : Integer;
  NeedEncode : Boolean;
begin
  if EmailAddr.Name <> '' then  
  begin
    NeedEncode := False;
    for I := 1 to Length(EmailAddr.Name) do
    begin
      if (EmailAddr.Name[I] < #32) or (EmailAddr.Name[I] >= #127) then
      begin
        NeedEncode := True;
        Break;
      end;
    end;
    if NeedEncode then
      S := EncodeHeader(EmailAddr.Name, csSPECIALS, HeaderEncoding, TransferHeader, MimeCharSet)
    else
    begin                { quoted string }
      S := '"';           
      for I := 1 to Length(EmailAddr.Name) do
      begin              { quote special characters }
        if (EmailAddr.Name[I] = '\') or (EmailAddr.Name[I] = '"') then S := S + '\';    
        S := S + EmailAddr.Name[I];
      end;
      S := S + '"';   
    end;
    Result := Format('%s <%s>', [S, EmailAddr.Address])    
  end
  else Result := Format('%s', [EmailAddr.Address]);     
end;

function B64(AChar: Char): Byte;
//TODO: Make this use the more efficient MIME Coder
var
  i: Integer;
begin
  for i := Low(base64_tbl) to High(base64_tbl) do begin
    if AChar = base64_tbl[i] then begin
      Result := i;
      exit;
    end;
  end;
  Result := 0;
end;

function DecodeHeader(Header: string):string;
 var
  i, l: Integer;
  Encoding,
  CharSet,
  s: string;
  a3: array [1..3] of byte;
  a4: array [1..4] of byte;
  StartPos,EndPos:Integer;
  substring:string;
  EncodingFound : Boolean;


function Convert(ss:string):string;
begin
Result:='';
 while Length(ss) >= 4 do
   begin
     a4[1] := b64(ss[1]);
     a4[2] := b64(ss[2]);
     a4[3] := b64(ss[3]);
     a4[4] := b64(ss[4]);
     a3[1] := Byte((a4[1] shl 2) or (a4[2] shr 4));
     a3[2] := Byte((a4[2] shl 4) or (a4[3] shr 2));
     a3[3] := Byte((a4[3] shl 6) or (a4[4] shr 0));
     ss := Copy(ss, 5, Length(ss));
     Result := Result + CHR(a3[1]) + CHR(a3[2]) + CHR(a3[3]);
   end;
end;
function PosStartAt(const SubStr,s : string; StartPos : integer = 0) : integer;
  begin
     Result := Pos(SubStr,Copy(s,StartPos,Length(s)));
      if Result>0 then
        Result := (Result+StartPos)-1;
    end;
procedure SetStartPos ;
begin
 StartPos:=PosStartAt('=?ISO', UpperCase(Header),StartPos+1);

 if StartPos = 0 then
  StartPos:=PosStartAt('=?WINDOWS', UpperCase(Header),StartPos+1);

 if StartPos = 0 then
      StartPos:=PosStartAt('=?UTF-8', UpperCase(Header),StartPos+1);
end;

begin
 StartPos:=0;
 SetStartPos;

if StartPos=0 then
  begin
   while Pos(#0,header)>0 do
    Delete(header,Pos(#0,header),1);

    Result:=Header;
    exit;
   end;

    EncodingFound := true;

    EndPos := PosStartAt('?', UpperCase(Header),StartPos+5);

    if EndPos = 0 then
      EncodingFound := false
    else
    begin
      EndPos:=PosStartAt('?', UpperCase(Header),EndPos+1);
      if EndPos=0 then
        EncodingFound := false;
    end;

    if EncodingFound then
    begin
      EndPos:=PosStartAt('?=', UpperCase(Header),EndPos+1);
      if EndPos > 0 then
      begin
        substring:=Copy(Header,StartPos,EndPos-StartPos+2);

       for i := 1 to 3 do
        begin
          l := Pos('?', substring);
          substring := Copy(substring, l+1, Length(substring) - l + 1 );
          if i = 1 then
            CharSet := Copy(substring, 1, Pos('?', substring)-1)
          else
          if i = 2 then
            Encoding := copy(substring,1,1);
        end;

       if Copy(substring,Length(substring)-1,2)<>'?=' then
           EncodingFound := false;

     if (AnsiSameText(Encoding, 'Q'))
        and (EncodingFound) then
        begin
          i := 1;
          s := '';
          repeat
            if substring[i] = '_' then
              s := s + ' '
             else
              if (substring[i] = '=') and (Length(substring)>=i+2+2) then
            begin
              s := s + chr(StrToInt('$' + substring[i+1] + substring[i+2]));
              inc(i,2);
            end
            else
              s := s + substring[i];

            inc(i);
          until (copy(substring,i,2)='?=')

        end
        else
        if EncodingFound then
         s:=s+Convert(substring);

        if EncodingFound then
        begin
            substring := s;
            Result := Copy(header, 1, StartPos - 1)
            + substring + Copy(header, EndPos + 2, Length(Header));
            Result:=DecodeHeader(Result);
        end;  {EncodingFound}
      end;{if endpos>0}
    end;{if EncodingFound }

end;

function Decode2022JP(const S: string): string;
var
  T : string;
  I, L : integer;
  isK : Boolean;
  K1, K2 : byte;
  K3 : byte;
begin
  T := '';    
  isK := False;
  L := length(S);
  I := 1;
  while I <= L do
  begin
    if S[I] = #27 then
    begin
      Inc(I);
      if I+1 <= L then
      begin
        if Copy(S, I, 2) = '$B' then   
        begin
          isK := True;
        end
        else
        begin
          if Copy(S, I, 2) = '(B' then    
          begin
            isK := False; 
          end;
        end;
        Inc(I, 2);   { TODO -oTArisawa : Check RFC 1468}
      end;
    end
    else
    begin
      if isK then
      begin
        if I+1 <= L then
        begin
          K1 := byte(S[I]);
          K2 := byte(S[I + 1]);

          K3:= (K1 - 1) shr 1;
          if K1 < 95 then
            K3:= K3 + 113
          else
            K3 := K3 + 177;

          if (K1 mod 2) = 1 then
          begin
            if K2 < 96 Then
              K2 := K2 + 31
            else
              K2 := K2 + 32
          end
          else
            K2 := K2 + 126;

          T := T + char(K3) + char(k2);
          Inc(I,2);
        end
        else
          Inc(I); { invalid DBCS }
      end
      else
      begin
        T := T + S[I];
        Inc(I);
      end;
    end;
  end;
  Result := T;
end;

procedure InitializeISO(var TransferHeader: TTransfer; var HeaderEncoding: char;
  var CharSet: string);

begin
  TransferHeader := bit8;    { header part conversion type }
  HeaderEncoding := 'B';     { base64 / quoted-printable }    

  case GetSystemLocale of
    csGB2312: CharSet := 'GB2312'; 
    csBig5: CharSet := 'Big5';
    csIso2022jp:
      begin
        CharSet := 'ISO-2022-JP';  
        TransferHeader := iso2022jp { header needs conversion }
      end;
    csEUCKR: CharSet := 'EUC-KR';  
    else
      CharSet := 'ISO-8859-1';   
    HeaderEncoding := 'Q';    
  end;

end;

Procedure DecodeAddress(EMailAddr : TIdEmailAddressItem);
begin
  EMailAddr.Name := DecodeHeader(EMailAddr.Name);
end;

Procedure DecodeAddresses(AEMails : String; EMailAddr : TIdEmailAddressList);
var idx : Integer;
begin
  idx := 0;
  EMailAddr.EMailAddresses := AEMails;
  while idx < EMailAddr.Count do
  begin
    DecodeAddress(EMailAddr[idx]);
    inc(idx);
  end;
end;

function EncodeAddress(EmailAddr:TIdEMailAddressList; const HeaderEncoding: Char;
  TransferHeader: TTransfer; MimeCharSet: string): string;
var idx : Integer;
begin
  Result := '';      
  idx := 0;
  while ( idx < EmailAddr.Count ) do
  begin
    Result := Result + ', ' + EncodeAddressItem(EMailAddr[idx], HeaderEncoding, TransferHeader, MimeCharSet);  
    Inc ( idx );
  end; // while ( idx < EncodeAddress.Count ) do
  {Remove the first comma and the following space ', ' }    
  System.Delete ( Result, 1, 2 );
end;

{ convert Shift_JIS to ISO-2022-JP (RFC 1468) }
function Encode2022JP(const S: string): string;
const
  desig_asc = #27'(B';  
  desig_jis = #27'$B';   
var
  T: string;
  I, L: Integer;
  isK: Boolean;
  K1: Byte;
  K2, K3: Word;
begin
  T := '';    
  isK := False;
  L := Length(S);
  I := 1;
  while I <= L do
  begin
    if S[I] < #128 then  
    begin
      if isK then
      begin
        T := T + desig_asc;
        isK := False;
      end;
      T := T + S[I];
      INC(I);
    end else begin
      K1 := sj1_tbl[S[I]];
      case K1 of
      0: INC(I);    { invalid SBCS }
      2: INC(I, 2); { invalid DBCS }
      1:
        begin { halfwidth katakana }
          if not isK then begin
            T := T + desig_jis;
            isK := True;
          end;
          { simple SBCS -> DBCS conversion                         }
          K2 := kana_tbl[S[I]];
          if (I < L) and (Ord(S[I+1]) AND $FE = $DE) then
          begin  { convert kana + voiced mark to voiced kana }
            K3 := vkana_tbl[S[I]];
            case S[I+1] of
            #$DE:  { voiced }
              if K3 <> 0 then
              begin
                K2 := K3;
                INC(I);
              end;
            #$DF:  { semivoiced }
              if (K3 >= $2550) and (K3 <= $255C) then
              begin
                K2 := K3 + 1;
                INC(I);
              end;
            end;
          end;
          T := T + Chr(K2 SHR 8) + Chr(K2 AND $FF);
          INC(I);
        end;
      else { DBCS }
        if (I < L) then begin
          K2 := sj2_tbl[S[I + 1]];
          if K2 <> 0 then
          begin
            if not isK then begin
              T := T + desig_jis;
              isK := True;
            end;
            T := T + Chr(K1 + K2 SHR 8) + Chr(K2 AND $FF);
          end;
        end;
        INC(I, 2);
      end;
    end;
  end;
  if isK then
    T := T + desig_asc;
  Result := T;
end;

{ encode a header field if non-ASCII characters are used }
function EncodeHeader(const Header: string; specials : CSET; const HeaderEncoding: Char;
  TransferHeader: TTransfer; MimeCharSet: string): string;
const
  SPACES: set of Char = [' ', #9, #10, #13];

var
  S, T: string;
  L, P, Q, R: Integer;
  B0, B1, B2: Integer;
  InEncode: Integer;
  NeedEncode: Boolean;
  csNeedEncode, csReqQuote: CSET;
  BeginEncode, EndEncode: string;

  procedure EncodeWord(P: Integer);
  const
    MaxEncLen = 75;
  var
    Q: Integer;
    EncLen: Integer;
    Enc1: string;
  begin
    T := T + BeginEncode;
    if L < P then P := L + 1;
    Q := InEncode;
    InEncode := 0;
    EncLen := Length(BeginEncode) + 2;

    if AnsiSameText(HeaderEncoding, 'Q') then  { quoted-printable }
    begin
      while Q < P do
      begin
        if not (S[Q] in csReqQuote) then
        begin
          Enc1 := S[Q]
        end
        else
        begin
          if S[Q] = ' ' then
            Enc1 := '_'
          else
            Enc1 := '=' + IntToHex(Ord(S[Q]), 2);
        end;
        if EncLen + Length(Enc1) > MaxEncLen then
        begin
          T := T + EndEncode + #13#10#9 + BeginEncode;
          EncLen := Length(BeginEncode) + 2;
        end;
        T := T + Enc1;
        INC(EncLen, Length(Enc1));
        INC(Q);
      end;
    end
    else
    begin { base64 }
      while Q < P do
      begin
        if EncLen + 4 > MaxEncLen then
        begin
          T := T + EndEncode + #13#10#9 + BeginEncode;
          EncLen := Length(BeginEncode) + 2;
        end;

        B0 := Ord(S[Q]);
        case P - Q of
        1: T := T + base64_tbl[B0 SHR 2] + base64_tbl[B0 AND $03 SHL 4] + '==';  
        2:
          begin
            B1 := Ord(S[Q + 1]);
            T := T             + base64_tbl[B0 SHR 2] +
              base64_tbl[B0 AND $03 SHL 4 + B1 SHR 4] +
              base64_tbl[B1 AND $0F SHL 2] + '=';  
          end;
        else
          B1 := Ord(S[Q + 1]);
          B2 := Ord(S[Q + 2]);
          T := T + base64_tbl[B0 SHR 2] +
            base64_tbl[B0 AND $03 SHL 4 + B1 SHR 4] +
            base64_tbl[B1 AND $0F SHL 2 + B2 SHR 6] +
            base64_tbl[B2 AND $3F];
        end;
        INC(EncLen, 4);
        INC(Q, 3);
      end;
    end;
    T := T + EndEncode;
  end;

begin
  case TransferHeader of
  iso2022jp:
    S := Encode2022JP(Header);
  else
    S := Header;
  end;

  {Suggested by Andrew P.Rybin for easy 8bit support}
  if HeaderEncoding='8' then begin //UpCase('8')='8'     
      Result:=S;
      EXIT;
  end;//if
  csNeedEncode := [#0..#31, #127..#255] + specials;
  csReqQuote := csNeedEncode + ['?', '=', '_'];
  BeginEncode := '=?' + MimeCharSet + '?' + HeaderEncoding + '?';    
  EndEncode := '?=';  

  L := Length(S);
  P := 1;
  T := '';
  InEncode := 0;
  while P <= L do
  begin
    Q := P;
    while (P <= L) and (S[P] in SPACES) do
      INC(P);
    R := P;
    NeedEncode := False;
    while (P <= L) and not (S[P] in SPACES) do
    begin
      if S[P] in csNeedEncode then
      begin
        NeedEncode := True;
      end;
      INC(P);
    end;
    if NeedEncode then
    begin
      if InEncode = 0 then
      begin
        T := T + Copy(S, Q, R - Q);
        InEncode := R;
      end;
    end
    else
    begin
      if InEncode <> 0 then
      begin
        EncodeWord(Q);
      end;
      T := T + Copy(S, Q, P - Q);
    end;
  end;
  if InEncode <> 0 then
  begin
    EncodeWord(P);
  end;
  Result := T;
end;

end.


