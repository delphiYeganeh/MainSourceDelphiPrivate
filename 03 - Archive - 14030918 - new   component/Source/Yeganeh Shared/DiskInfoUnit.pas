unit DiskInfoUnit;

interface
uses Types,windows,SysUtils,dateUtils,Registry;
type
  TDriveType = (dtUnknown, dtNoDrive, dtFloppy, dtFixed, dtNetwork, dtCDROM, dtRAM);

procedure DiskInfo(
s:char;
Var FDisk: Char;
var FSerialNumberStr: String;
var FSerialNumber: LongInt;
var FVolumeLabel: String;
var FFileSystem: String;
var FDriveType: TDriveType;
var FDiskSize: Int64;
var FDiskFree: Int64);

function Abs_SerialNumber(ProductID:string):string;
function Time_SerialNumber(ProductID:string):string;
function ThisIsOK(ProductID:string):boolean;
function Unpass(s:string):string;
implementation



function Unpass(s:string):string;
 var i:byte;
  begin
    Result:=s;
    for i:=1 to length(s) do
      Result[i]:=char(byte(s[abs(length(s)-i+1)]) xor 31);
  end;

procedure DiskInfo(s:char;
Var FDisk: Char;
var FSerialNumberStr: String;
var FSerialNumber: LongInt;
var FVolumeLabel: String;
var FFileSystem: String;
var FDriveType: TDriveType;
var FDiskSize: Int64;
var FDiskFree: Int64);
var
  VolumeLabel, FileSystem: Array[0..$FF] of Char;
  SerialNumber, DW, SysFlags: DWord;
  function DecToHex(aValue: LongInt): String;
  var
    w: Array[1..2] of Word absolute aValue;

    function HexByte(b: Byte): String;
    const
      Hex: Array[$0..$F] of Char = '0123456789ABCDEF';
    begin
      HexByte := Hex[b shr 4] + Hex[b and $F];
    end;

    function HexWord(w: Word): String;
    begin
      HexWord := HexByte(Hi(w)) + HexByte(Lo(w));
    end;

  begin
    Result := HexWord(w[2]) + HexWord(w[1]);
  end;

begin
  s := UpCase(s);
  if (S >= 'A') and (S <= 'Z') then
   begin
    FDisk := S;
    GetVolumeInformation(PChar(S + ':\'), VolumeLabel, SizeOf(VolumeLabel),
                         @SerialNumber, DW, SysFlags,
                         FileSystem, SizeOf(FileSystem));
    FSerialNumber := SerialNumber;
    FSerialNumberStr := DecToHex(SerialNumber);
    Insert('-', FSerialNumberStr, 5);
    FVolumeLabel := VolumeLabel;
    FFileSystem := FileSystem;
    FDriveType := TDriveType(GetDriveType(PChar(S + ':\')));

    FDiskSize := SysUtils.DiskSize(Byte(S) - $40);
    FDiskFree := SysUtils.DiskFree(Byte(S) - $40);

   end
end;

function Abs_SerialNumber(ProductID:string):string;
Var FDisk: Char;
FVolumeLabel, FSerialNumberStr,FFileSystem,s: String;
FSerialNumber: LongInt;
FDriveType: TDriveType;
FDiskSize,res,FDiskFree: Int64 ;
i: byte;
begin
DiskInfo('C',FDisk,FSerialNumberStr,FSerialNumber,FVolumeLabel,FFileSystem,FDriveType,FDiskSize,FDiskFree);
s:=ProductID+FSerialNumberStr;
res:=1;
   for i:=1 to length(s) do
     res:=abs(res*(byte(s[i])+i)) mod 999999999;
Result:=IntToStr(res)

end;

function Time_SerialNumber(ProductID:string):string;
Var FDisk: Char;
FVolumeLabel, FSerialNumberStr,FFileSystem,s: String;
FSerialNumber: LongInt;
FDriveType: TDriveType;
FDiskSize,res,FDiskFree: Int64 ;
i: byte;
begin
//DiskInfo('C',FDisk,FSerialNumberStr,FSerialNumber,FVolumeLabel,FFileSystem,FDriveType,FDiskSize,FDiskFree);
//s:=IntToStr(DayOf(now))+ProductID+FSerialNumberStr+IntToStr(hourof(now))+IntToStr(MinuteOf(now));
s:=IntToStr(DayOf(now))+ProductID+'Ahmadvand'+IntToStr(hourof(now))+IntToStr(MinuteOf(now));
res:=1;
   for i:=1 to length(s) do
     res:=abs(res*(byte(s[i])+i)) mod 999999999;
Result:=IntToStr(res)

end;

function ThisIsOK(ProductID:string):boolean;
var R: TRegistry;
pass :string;
begin
  r:=TRegistry.Create;
  with R do
   begin
    RootKey:=HKEY_CURRENT_USER;
    OpenKey('Software\Microsoft\Windows\CurrentVersion\Internet', false) ;
    pass:=ReadString(Unpass(ProductID+Abs_SerialNumber(ProductID)));
    Result:=pass=Abs_SerialNumber(ProductID);
   end;

end;


end.
