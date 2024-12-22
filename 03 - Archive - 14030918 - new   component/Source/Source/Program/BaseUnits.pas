unit BaseUnits;



interface
uses
  ADODB,StrUtils,SysUtils, Classes, Graphics, Dialogs;

 Type
   TDownloadSetting = record
    _HttpUrl:string;
    _FtpIP:string;
    _FtpUserName:string;
    _FtpPassword:string;
   end;
   Type
     TBaseSQLConnection= class
     private
       _CNS:String;

     public
       constructor Create;
       function GetKeyvalue(_Key:String):String;
       procedure SaveLog(S,FunctionNames:String);
     end;

     type
       TImageFile =class
       public
         constructor Create;
        function GetBMPFileDPI(FileName: string): LongInt;
        procedure SetBMPFileDPI(FileName: string; DPI: Integer);
        function GetBmpDPI(Bitmap: TBitmap): LongInt;
        procedure SetBmpDPI(Bitmap: TBitmap; DPI: Integer);

     end;
implementation

{ TBaseSQLConnection }

uses Dmu,DB;
constructor TBaseSQLConnection.Create;
begin
//
_CNS:=Dm.YeganehConnection.ConnectionString;

end;

function TBaseSQLConnection.GetKeyvalue(_Key: String): String;
var
  Query:String;
begin
//

    with TADOQuery.Create(nil) do
      begin
       SQL.Clear;
       SQL.Add('Select * from Keyvalue where [key]='+QuotedStr(_Key));
       try

       Connection:=Dm.YeganehConnection;
        Query:=SQL.Text;
       Open;
       Query:=FieldByName('Value').AsString;
       except

       on E:Exception Do
       ShowMessage(E.Message);

      end;
      Free;
    end;
    Result:=Query;
end;

procedure TBaseSQLConnection.SaveLog(S, FunctionNames: String);
var
    FileName:string;
begin
//Commented By Hamed_Ansari_MRM_990618
(*
with TStringList.Create do
  begin
    FileName:='logFiles\'+FormatDateTime('yyyymmdd',Now)+'.txt';
   try
      if FileExists(FileName) then LoadFromFile(FileName);
      if not DirectoryExists('logFiles') then CreateDir('logFiles');
      Add(FormatDateTime('HH:MM:SS',Now)+' -> '+'FunctionName:'+FunctionNames+'   Exception: '+S);
      SaveToFile(FileName);
   except

   end;
   Free;
  end;
*)  
end;

{ TImageFile }

constructor TImageFile.Create;
begin
//
end;

function TImageFile.GetBmpDPI(Bitmap: TBitmap): LongInt;
var
  Stream: TMemoryStream;
  Data: Word;
  A: Double;
begin
  try
    Result := 0;
    Stream := TMemoryStream.Create;
    Bitmap.SaveToStream(Stream);
    Stream.Position := 38;
    if Stream.Read(Data, 2) = 2 then
    begin
      A := Data;
      Result := Round(A / 39.370079);
    end;
  finally
    Stream.Free;
  end;

end;

function TImageFile.GetBMPFileDPI(FileName: string): LongInt;
var
  Stream: TFileStream;
  Data: Word;
  A: Double;
begin
  try
    Result := 0;
    Stream := TFileStream.Create(FileName, fmOpenRead or fmShareDenyWrite);
    Stream.Position := 38;
    if Stream.Read(Data, 2) = 2 then
    begin
      A := Data;
      Result := Round(A / 39.370079);
    end;
  finally
    Stream.Free;
  end;

end;

procedure TImageFile.SetBmpDPI(Bitmap: TBitmap; DPI: Integer);
var
  Stream: TMemoryStream;
  Data: Word;
begin
  try
    Stream := TMemoryStream.Create;
    Bitmap.SaveToStream(Stream);
    Data := Round(DPI * 39.370079);
    Stream.Position := 38;
    if Stream.Write(Data, 2) = 2 then
    begin
      Stream.Position := 42;
      if Stream.Write(Data, 2) = 2 then
      begin
        Stream.Position := 0;
        Bitmap.LoadFromStream(Stream);
      end
      else
        {Error writing to Stream...}
        ShowMessage('Error writing to Stream. Data not written.');
    end
    else
      {Error writing to Stream...}
      ShowMessage('Error writing to Stream. Data not written.');
  finally
    Stream.Free;
  end;

end;

procedure TImageFile.SetBMPFileDPI(FileName: string; DPI: Integer);
var
  Stream: TFileStream;
  Data: Word;
begin
  try
    Stream := TFileStream.Create(FileName, fmOpenWrite or fmShareExclusive);
    Data := Round(DPI * 39.370079);
    Stream.Position := 38;
    if Stream.Write(Data, 2) = 2 then
    begin
      Stream.Position := 42;
    end
    else
      {Error writing to Stream...}
      ShowMessage('Error writing to Stream. Data not written.');
  finally
    Stream.Free;
  end;

end;

end.
