Unit MyLibU;

interface
uses
  Windows, StdCtrls, Controls, SysUtils;

Function IsDigit(Key : Char):Boolean;
procedure FarsiMode;
procedure EnglishMode;

implementation

Function IsDigit(Key : Char):Boolean;
Begin
 IsDigit:=False;
 if (Key in ['1'..'9','0','.']){or (Ord(key)= VK_Back)} Then IsDigit:=True;
End;

procedure FarsiMode;
begin
  PostMessage(HWND_BROADCAST, $0050,$00000003, $04010401);
  PostMessage(HWND_BROADCAST, $0051,$000000b2, $04010401);
end;

procedure EnglishMode;
begin
  PostMessage(HWND_BROADCAST, $0050,$00000005, $04090409);
  PostMessage(HWND_BROADCAST, $0051,$00000000, $04090409);
end;

end.

 
