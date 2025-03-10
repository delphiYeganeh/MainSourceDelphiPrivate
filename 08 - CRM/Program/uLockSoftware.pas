unit uLockSoftware;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,baseUnit, StdCtrls, ExtCtrls,DCPtwofish, DCPsha512,clipbrd,md5,
  IWControl, IWCompMemo, ComCtrls;

type
  TFrLockSoftware = class(TmBaseForm)
    pnlMain: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Button1: TButton;
    moKey2: TMemo;
    Button2: TButton;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    moKey1: TMemo;
    procedure moKey1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure moKey1Click(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrLockSoftware: TFrLockSoftware;

implementation

uses dmu ;

{$R *.dfm}

function Password(s:string):int64;
 var i:byte ;
begin
Result:=1;
   for i:=1 to length(s) do
     Result:=Result*(byte(s[i])+i) mod 9999999;
end;

function GetEncryptString(KeyStr,Str:String):string;
var
  Cipher: TDCP_twofish;
begin
  Cipher:= TDCP_twofish.Create(nil);              // Create TwoFish Alogorithm Object
  Cipher.InitStr(KeyStr,TDCP_sha512);              // initialize the cipher with a hash of the passphrase
  Result := Cipher.EncryptString(Str);
  Cipher.Burn;
  Cipher.Free;
end;

function GetDecryptString(KeyStr,Str:String):string;
var
  Cipher: TDCP_twofish;
begin
  Cipher:= TDCP_twofish.Create(nil);              // Create TwoFish Alogorithm Object
  Cipher.InitStr(KeyStr,TDCP_sha512);              // initialize the cipher with a hash of the passphrase
  Result:=Cipher.DecryptString(Str);
  Cipher.Burn;
  Cipher.Free;
end;

function GetKeyCode(keyValue1, keyValue2, keyValue3, keyValue4:integer):String ;
var
    i,m, n1, n2, n3, n4:Integer;
    r,s,ss:string;
    sha512 : TDCP_sha512;
    Digest: array[0..63] of byte;  // 512bit digest (64bytes)
begin
    r:='';
    sha512 := TDCP_sha512.Create(nil);
    sha512.Init;
    sha512.UpdateStr(IntToStr(156)+IntToStr(12356)+IntToStr(88856)+IntToStr(8556)+IntToStr(1356));
    sha512.Final(Digest);      // produce the digest
    for i:= 0 to 63 do
      r:= r + IntToHex(Digest[i],2);

    ss:= '';
    n1 := KeyValue1 mod 63;
    n2 := KeyValue2 mod 63;
    n3 := KeyValue3 mod 63;
    n4 := KeyValue4 mod 63;

    ss:='';
    for i := 1 to 32 do
    begin
      m:=ord(r[n1+i]);
      ss:= ss + IntToHex(m,2)+IntToHex(127-i-n2,2)+IntToHex(n3+i,2)+IntToHex(127-n4-i,2);
    end;

    sha512 := TDCP_sha512.Create(nil);
    sha512.Init;
    sha512.UpdateStr(ss);
    sha512.Final(Digest);      // produce the digest
    s:='';
    for i:= 0 to 63 do
      s:= s + IntToHex(Digest[i],2);
    Result:=s;
end;

function KeyOfFile(j:Integer;k:Integer;L:Integer;o:integer):String;
var
  s:string;
  i:Integer;
  sha512 : TDCP_sha512;
  Digest: array[0..63] of byte;  // 512bit digest (64bytes)
begin
  s:='';
  sha512 := TDCP_sha512.Create(nil);
  sha512.Init;
  sha512.UpdateStr(inttostr(j)+inttostr(k)+inttostr(L)+inttostr(o));
  sha512.Final(Digest);      // produce the digest
  for i:= 0 to 63 do
    s:= s + IntToHex(Digest[i],2);
  Result:=s;
end;

procedure TFrLockSoftware.moKey1Change(Sender: TObject);
var
  Source : TMemoryStream;
  Dest: TFileStream;
  Cipher: TDCP_twofish;
  KeyStrOfPassword : string;
  KeyStrOfUserName : string;
  EncryptString : string;
  Memo1 : TStringList;
  i,j:integer;
begin
  KeyStrOfPassword:=GetKeyCode(10,20,3,15);
  Label5.Caption:=GetDecryptString(KeyStrOfPassword,moKey1.Lines[7])+'  '+vartostr(password(GetDecryptString(KeyStrOfPassword,moKey1.Lines[7])));
  Label6.Caption:=GetDecryptString(KeyStrOfPassword,moKey1.Lines[8]);
end;

procedure TFrLockSoftware.Button1Click(Sender: TObject);
var
  Source : TMemoryStream;
  Dest: TFileStream;
  Cipher: TDCP_twofish;
  KeyStrOfPassword : string;
  KeyStrOfUserName : string;
  EncryptString : string;

  s1,s2,s3,s4 :string;
//  Memo1 : TStringList;
  i:integer;
begin
  KeyStrOfPassword:=GetKeyCode(10,20,3,15);
  s1:=GetDecryptString(KeyStrOfPassword,moKey1.Lines[7]);
  s2:=GetDecryptString(KeyStrOfPassword,moKey1.Lines[8]);
  s2:=vartostr(IncMonth(strtodate(S2), StrToInt(ComboBox2.text)));//exdate
  s3 :=VarToStr(password(s1));
  case ComboBox1.ItemIndex of
    0:s4:=('Worng');
    1:s4:=('True');
    2:s4:=('Max');
    3:s4:=('Min');
  end;

  KeyStrOfPassword:=GetKeyCode(10,50,30,16);
    moKey2.Clear;
    for i:=1 to 8 do
    begin
      Randomize;
      EncryptString:=GetEncryptString(IntToStr(Random(100000)),IntToStr(Random(100000))+IntToStr(Random(100000))+IntToStr(Random(100000)));
      moKey2.Lines.Add(EncryptString);
    end;

//    EncryptString:=GetEncryptString(KeyStrOfPassword,MD5DigestToStr(MD5String(Label5.Caption+vartostr(password(Label5.Caption)))));
    EncryptString:=GetEncryptString(KeyStrOfPassword,MD5DigestToStr(MD5String(s1)));    // HHD
    moKey2.Lines.Add(EncryptString);

    EncryptString:=GetEncryptString(KeyStrOfPassword,(s2));   //exdate
    moKey2.Lines.Add(EncryptString);

    EncryptString:=GetEncryptString(KeyStrOfPassword,MD5DigestToStr(MD5String(s3)));   //Pass HHd
    moKey2.Lines.Add(EncryptString);

    EncryptString:=GetEncryptString(KeyStrOfPassword,MD5DigestToStr(MD5String(s4)));   //Ver
    moKey2.Lines.Add(EncryptString);


    EncryptString:=GetEncryptString(KeyStrOfPassword,vartostr(IncMonth(StrToDate(Label6.caption), StrToInt(ComboBox2.text))));
    moKey2.Lines.Add(EncryptString);

    for i:=1 to 29 do
    begin
      Randomize;
      EncryptString:=GetEncryptString(IntToStr(Random(100000)),IntToStr(Random(100000))+IntToStr(Random(100000))+IntToStr(Random(100000)));
      moKey2.Lines.Add(EncryptString);
    end;

  Clipboard.AsText := moKey2.Text;
//  showmessage(EncryptString+#13#10+moKey2.Lines[9]+#13#10+moKey2.Lines[8]);
//
//  KeyStrOfPassword:=GetKeyCode(10,50,30,16);
//  showmessage(GetDecryptString(KeyStrOfPassword,moKey2.Lines[8]));
//  showmessage(GetDecryptString(KeyStrOfPassword,EncryptString));


end;

procedure TFrLockSoftware.Button2Click(Sender: TObject);
begin
  Clipboard.AsText := moKey2.Text;
end;

procedure TFrLockSoftware.moKey1Click(Sender: TObject);
begin
  inherited;
  moKey1.Clear;

  moKey1.Text :=  Clipboard.AsText;
end;

procedure TFrLockSoftware.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  inherited;
     { TODO -oparsa : 14030203 }
      Resize := False  ;
      { TODO -oparsa : 14030203 }
end;

procedure TFrLockSoftware.FormShow(Sender: TObject);
begin
  inherited;
  pnlMain.Color := _Color1 ;
end;

end.
