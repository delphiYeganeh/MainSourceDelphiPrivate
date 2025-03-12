unit UDM;

interface

uses
  Forms,SysUtils, Classes, DB, ADODB, Dialogs, WordXP, OleServer, Windows,Registry, AppEvnts,IniFiles,StdCtrls , ComObj, Variants,
  DBClient, ExcelXP, ImgList, Controls;

type
  TStringDynArray = array of string;

type
  TDM = class(TDataModule)
    YeganehConnection: TADOConnection;
    ApplicationEvents: TApplicationEvents;
    WordDocument: TWordDocument;
    WordApplication: TWordApplication;
    OpenDialog: TOpenDialog;
    LetterImages_New: TImageList;
    ImageList_MainNew: TImageList;
    Users: TADOTable;
    DUser: TDataSource;
    UsersId: TIntegerField;
    UsersTitle: TStringField;
    UsersUserName: TStringField;
    UsersPassWord: TStringField;
    UsersAccessID: TIntegerField;
    UsersEndActiveDate: TStringField;
    UsersBeginActiveDate: TStringField;
    Command: TADODataSet;
    UsersCanNotLogin: TBooleanField;
    PrinterSetupDialog1: TPrinterSetupDialog;
    ExcelApplication1: TExcelApplication;
    DSTemp: TDataSource;
    CDTemp: TClientDataSet;
    CDTempF1: TStringField;
    CDTempF2: TStringField;
    CDTempF3: TStringField;
    CDTempF4: TStringField;
    CDTempF5: TStringField;
    CDTempF6: TStringField;
    CDTempF7: TStringField;
    CDTempF8: TStringField;
    CDTempF9: TStringField;
    CDTempF10: TStringField;
    CDTempF11: TStringField;
    CDTempF12: TStringField;
    CDTempF13: TStringField;
    ImageList1: TImageList;
    CDTempF14: TStringField;
    CDTempid: TAutoIncField;
    procedure DataModuleCreate(Sender: TObject);
    procedure Connect;    
  private
    { Private declarations }
  public
   Procedure SetUserSetting(VariableName:string;_Value:Variant;UserID :integer);
   function  GetUserSetting(VariableName:String;UserID :Integer):Variant;
   Function  Qry_SetResult(aQueryText:String;aADOConnection:TADOConnection):Boolean;
   Function  Qry_GetResult(aQueryText:String;aADOConnection:TADOConnection):String;
   function  GetServerDate:tdatetime;
   function  ShamsiString(date1:TdateTime):String;
   function  GetSql(s:string):Variant;
   Function  Time_GetTime(aAdoConnection:TADOConnection;HaveSecend:Boolean=False):String;
   function  ReadIniFile(VariableName:string):String ;
   function  WriteIniFile(VariableName:string;_Value:String): Boolean ;
   procedure RenameImagesInFolder(const FolderPath: string; const NewNamePrefix: string;Memo: TMemo; CopyFirst : Integer = 0);
   procedure ReadAndSortStrings (var Strings: Array of Integer);
   procedure QuickSort(var A: array of Integer; Low, High: Integer);
   procedure CreateExcelImagesInFolder(const FolderPath: string; const FolderName: string; CountPic : Integer = 0;  CountAllPic: Integer = 0 );
   function  CountFilesInFolder(const FolderPath: string; const Prefix :String; AllCount : Boolean = false): Integer;
  end;

const
  RegistryKey = 'Software\yeganeh\Fiels';
var
 // Fconnect: TFconnect;
  ServerName,DataBaseName:string;
  DabirServerName,DabirDataBaseName:string;
  _Today:string;
  _ExpireFromToday:string;
  _UserId : Integer;
  _ComputerName : string ;
  _ManagerUser : Boolean;
  _UserPrinterName : String ;
  _TempPath:string;
  _OtherUser : Boolean ;
  _PictureMode : Boolean;
  _ExcelMode : Boolean ;
  _ExcelPicMode  : Boolean ;
  _FolderMode : Boolean;
  DM: TDM;


Const
   _DBVersion = False;

implementation

uses ULogin, YShamsiDate  ;//, Uconnect;

{$R *.dfm}


procedure TDM.Connect;
var R,R2:TRegistry;
begin

   R := TRegistry.Create;
   with R do
   begin
      RootKey:= HKEY_CURRENT_USER;
      OpenKey(RegistryKey, True);

      ServerName  := ReadString('ServerName');
      DataBaseName:= ReadString('DataBaseName');

      if DataBaseName ='' then
         DataBaseName:='yFiles' ;

      if ServerName = '' then
      begin
        ServerName  := '.' ;
        WriteString('ServerName', ServerName);
      end;

      WriteString('DataBaseName', DataBaseName);

   end;

   //Provider=SQLOLEDB.1;Persist Security Info=False;User ID=sa;Initial Catalog=yFiles;Data Source=DELPHI-PC\YEGANEH20
   With DM.YeganehConnection do
   begin
     // Provider=SQLOLEDB.1;Persist Security Info=False;User ID=sa;Initial Catalog=yFiles;Data Source=ES01\YEGANEH
      Connected:=false;
      //Trusted Connection=false;   Encrypt=false;TrustServerCertificate=True    Trusted_Connection=True;
      ConnectionString:='Provider=SQLOLEDB.1;Persist Security Info=False;User ID=sa;Encrypt=false;Trusted_Connection=True;Initial Catalog='+DataBaseName+';Data Source='+ SERVERNAME; //
      ConnectionTimeout:=5;
   end;

   try
      //Admin@22469490@Yeganeh
      Dm.YeganehConnection.Open('sa', 'Admin@22469490@Yeganeh');

      Dm.YeganehConnection.Connected := True;
     // Timer1.Enabled:=true;
   except on e:Exception do
     // ShowModal;
     ShowMessage('������ �� ���� ��� ������ ���'+ e.Message);
   end;



  // Fconnect := TFconnect.Create(Self);
end;

procedure TDM.DataModuleCreate(Sender: TObject);

begin

  if _DBVersion then
     Connect;

  _ManagerUser := False;
  _UserPrinterName := 'Microsoft Print to PDF' ;


  
 // _Today := ShamsiString(GetServerDate);
  _Today := ShamsiString(GetServerDate);
 // _ExpireFromToday  := ShamsiString(  GetSql ('select Getdate()+150')) ;

  FLogin := TFLogin.Create(Application); // Application.CreateForm(TFLogin, FLogin);
  FLogin.ShowModal;

  _TempPath := ExtractFilePath(Application.ExeName)+'TempWordFolder\'; //GetTempDirectory;

  if Pos('\\',_TempPath) = 0 then
    if Not DirectoryExists(_TempPath) then
      CreateDir(_TempPath);

end;



Procedure TDM.SetUserSetting(VariableName:string;_Value:Variant;UserID :integer );
var ADOSP:TADOStoredProc;
begin
   if _DBVersion then
   begin
     ADOSP:=TADOStoredProc.create(nil);
     ADOSP.ProcedureName:='SetUserSetting';

     with ADOSP.Parameters.AddParameter do
     begin
        DataType := ftinteger;
        Direction := pdInput;
        Name:='@UserID';
        Value :=UserID;
     end;

     with ADOSP.Parameters.AddParameter do
     begin
        DataType := ftstring;
        Direction := pdInput;
        Name:='@VariableName';
        size:= 50;
        Value :=VariableName;
     end;

     with ADOSP.Parameters.AddParameter do
     begin
        DataType := ftWideString;
        Direction := pdInput;
        Name:='@Value';
        size:= 510;
        Value :=_Value;
     end;
     ADOSP.Connection:=dm.YeganehConnection;
     ADOSP.ExecProc;
   end
   else
   begin
     WriteIniFile(VariableName,_Value) ;
   end;
end;

function TDM.GetUserSetting(VariableName:string;UserID :Integer):Variant;
var ADOSP:TADOStoredProc;
begin
   if _DBVersion then
   begin
     ADOSP:=TADOStoredProc.create(nil);
     ADOSP.ProcedureName:='GetUserSetting';

     with ADOSP.Parameters.AddParameter do
     begin
        DataType := ftinteger;
        Direction := pdInput;
        Name:='@UserID';
        Value :=UserID;
     end;

     with ADOSP.Parameters.AddParameter do
     begin
        DataType := ftstring;
        Direction := pdInput;
        Name:='@VariableName';
        size:= 50;
        Value :=VariableName;
     end;

     with ADOSP.Parameters.AddParameter do
     begin
        DataType := ftWideString;
        Direction := pdoutput;
        Name:='@Value';
        size:= 510;
     end;
     ADOSP.Connection:=dm.YeganehConnection;
     ADOSP.ExecProc;
     Result:=ADOSP.Parameters.ParamByname('@Value').value;
     if Result='Not Found' then
     begin
        //ShowMessage('���� ����!'+VariableName+ '����� ������ ������ ' );
        Result:='0';
     end;
   end
   else
   begin

     Result:= ReadIniFile(VariableName);
     if Result='' then
     begin

        Result:='0';
     end;
   end;

end;



function TDM.GetServerDate: tdatetime;
begin
  if _DBVersion then
    Result:=  GetSql ('select Getdate()')
  else Result:=  Now ;

end;

function TDM.Qry_GetResult(aQueryText: String;
  aADOConnection: TADOConnection): String;
Var
   QrResult : TAdoQuery;
begin
   QrResult := TAdoQuery.Create(Nil);
   QrResult.Connection := aADOConnection;
   QrResult.CommandTimeout := 1200;
   QrResult.SQL.Text := aQueryText;
   QrResult.Open;
   Result := Trim(QrResult.Fields[0].AsString);
   QrResult.Close;
end;

function TDM.Qry_SetResult(aQueryText: String;
  aADOConnection: TADOConnection): Boolean;
Var
   QrResult : TAdoQuery;
begin
   Try
      Result := False;
      QrResult := TAdoQuery.Create(Nil);
      QrResult.Connection := aADOConnection;
      QrResult.CommandTimeout := 1200;
      QrResult.SQL.Text := aQueryText;
      QrResult.ExecSQL;
      Result := True;
   Except
      on E:Exception do
      begin
         ShowMessage(E.Message);
         Result := False;
      end;
   End;
   QrResult.Close;
end;

function TDM.ShamsiString(date1: TdateTime): String;
var t1,t2,t3:word;
mi ,sy ,sm ,sd ,i , si ,my ,mm ,md ,Diff :integer;
p2,p3:string[2];
begin
   DecodeDate(date1,t1,t2,t3);
   my:=t1;
   mm:=t2;
   md:=t3;
   mi:=0;

   for i:=1 to mm-1 do
    mi:=mi+MDayPerMonth(my,i);

   mi:=mi+md;
   sy:=my-622;
   Diff:=79-ShamsiLeapYear(sy);
   if mi>Diff then
   begin
    si:=mi-Diff -ShamsiLeapYear(sy);;
    sy:=sy+1;
   end
    else
   si:=mi-Diff+365;

   if si<187 then
   begin
     sm:= ((si-1) div 31)+1;
     sd:= ((si-1) mod 31)+1;
   end
   else
   begin
     sm:=7+((si-187) div 30);
     sd:=((si-187) mod 30)+1;
   end;

   p2:=IntToStr(sm);
   p3:=IntTOStr(sd);
   if Length(p2)=1 then p2:='0'+p2;
   if Length(p3)=1 then p3:='0'+p3;
   result:=(IntToStr(sy)+'/'+p2+'/'+p3);

end;

function TDM.GetSql(s: string): Variant;
begin
   with Command do
   begin
      Close;
      CommandText:=s;
      Open;
      Result := Fields[0].AsVariant;
   end;
end;

function TDM.Time_GetTime(aAdoConnection: TADOConnection;
  HaveSecend: Boolean): String;
Var
   hh,mm,ss,SrvTime:String;
begin
   SrvTime := Qry_GetResult('SELECT Cast(DATEPART(hour,GETDATE())as nVarchar)   +'':''+' +
                                   'Cast(DATEPART(minute,GETDATE())as nVarchar) +'':''+' +
                                   'Cast(DATEPART(second,GETDATE())as nVarchar) as SrvTime',aAdoConnection);
   hh := Copy(SrvTime,1,Pos(':',SrvTime)-1);
   if Length(hh)=1 then
      hh:='0'+hh;
   Delete(SrvTime,1,Pos(':',SrvTime));
   mm := Copy(SrvTime,1,Pos(':',SrvTime)-1);
   if Length(mm)=1 then
      mm:='0'+mm;
   Delete(SrvTime,1,Pos(':',SrvTime));
   ss := SrvTime;
   if Length(ss)=1 then
      ss := '0'+ss;
   if not HaveSecend then
      Result := hh+':'+mm
   else
      Result := hh+':'+mm+':'+ss;

end;

function TDM.ReadIniFile(VariableName:string):String ;
var
  IniFile: TIniFile;
  Value: string;
  Number: Integer;
  Flag: Boolean;
begin
  // ����� ��� TIniFile
  //IniFile := TIniFile.Create('C:\Settings.ini');
  IniFile := TIniFile.Create(ExtractFilePath(Application.ExeName)+'TempSetting\Settings.ini');
  try
    // ������ � ����� ������
   // Value := IniFile.ReadString('Section1', 'Key1', 'DefaultValue');
   // ShowMessage('Value of Key1: ' + Value);

    // ������ � ����� ����
   // Number := IniFile.ReadInteger('Section1', 'Key2', 0);
   // ShowMessage('Value of Key2: ' + IntToStr(Number));

    // ������ � ����� �����
   // Flag := IniFile.ReadBool('Section2', 'Key3', False);
   // ShowMessage('Value of Key3: ' + BoolToStr(Flag, True));

    // ������ � ����� ������
    Value   := IniFile.ReadString(VariableName, 'Value', '');
    Result  := Value ;

  finally
    IniFile.Free; // ���� ���� ���
  end;
end;

function TDM.WriteIniFile(VariableName:string;_Value:String): Boolean ;
var
  IniFile: TIniFile;
  PathStr : String ;
begin
  // ����� ��� TIniFile

  Result := True ;
  try
    //IniFile := TIniFile.Create('C:\Settings.ini');

    PathStr := ExtractFilePath(Application.ExeName)+'TempSetting\' ;
    if Pos('\\',PathStr) = 0 then
      if Not DirectoryExists(PathStr) then
        CreateDir(PathStr);

    IniFile := TIniFile.Create(PathStr+'Settings.ini');



    try
      // ����� � ����� ������
      //IniFile.WriteString('Section1', 'Key1', 'Hello, World!');

      // ����� � ����� ����
     // IniFile.WriteInteger('Section1', 'Key2', 123);

      // ����� � ����� �����
     // IniFile.WriteBool('Section2', 'Key3', True);

      // ����� � ����� ������
      IniFile.WriteString(VariableName, 'Value', _Value );
    finally
      IniFile.Free; // ���� ���� ���
    end;
  except
      Result := False ;
  end;
end;

procedure TDM.RenameImagesInFolder(const FolderPath, NewNamePrefix: string; Memo : TMemo; CopyFirst : Integer);
var
  Files: TStringDynArray;
  i,l: Integer;
  NewFileName, FileExt: string;
  SearchRec: TSearchRec;
  numberLen : String;
  filenameStr :String;
  //slMain              : TStringList;
begin
  i := 0 ;
  //slMain := TStringList.Create;
  // ���� ����� ���� ������ �� ����
  if FindFirst(IncludeTrailingPathDelimiter(FolderPath) + '*.jpg', faAnyFile, SearchRec) = 0 then
  begin
    try
      repeat
        // ����� ��� ���� �� ����
         i := i + 1 ;
      until FindNext(SearchRec) <> 0; // ����� ����� ���� ������� ����
    finally
      // ���� ���� �����
      SysUtils.FindClose(SearchRec);
    end;
  end;

  numberLen := inttostr(i);

  if length(numberLen) = 1 then
    numberLen := '000' + numberLen
  else
  if Length(numberLen) = 2 then
    numberLen := '00' + numberLen
  else
  if length(numberLen) = 3 then
    numberLen := '0' + numberLen;

  if CopyFirst in [3] then
  begin
    if i>0 then
    begin
      filenameStr := IncludeTrailingPathDelimiter(FolderPath)+ '\' + NewNamePrefix +'-'+numberLen + '.jpg' ;
      if FileExists(filenameStr) then
      begin
        SysUtils.FileSetReadOnly(PChar(filenameStr), false);
        DeleteFile(PChar(filenameStr));
        memo.Lines.Add ( '���� �� ��� ���� ��� �� ���� ��� ��' + '  '+IncludeTrailingPathDelimiter(FolderPath)+ '  ' + NewNamePrefix +'-'+numberLen +'.jpg') ;
      end
      else
        memo.Lines.Add ( '****"����  �� ���� "���� ���****' + '  '+IncludeTrailingPathDelimiter(FolderPath)+ '  ' + NewNamePrefix +'-'+numberLen +'.jpg') ;
    end;
    exit;
  end;

  SetLength(Files, i);
  i := 0 ;

  // ���� ����� ���� ������ �� ����
  if FindFirst(IncludeTrailingPathDelimiter(FolderPath) + '*.jpg', faAnyFile, SearchRec) = 0 then
  begin
    try
      repeat
        // ����� ��� ���� �� ����
         Files[i] := SearchRec.Name ;//Replace(SearchRec.Name,'.jpg','');
        //  ShowMessage(SearchRec.Name);
         i := i + 1 ;
      until FindNext(SearchRec) <> 0; // ����� ����� ���� ������� ����
    finally
      // ���� ���� �����
      SysUtils.FindClose(SearchRec);
    end;
  end
  else
  begin
    memo.Lines.Add ( '����� �� ���� ���� ���' + '  '+IncludeTrailingPathDelimiter(FolderPath) ) ;
   // ShowMessage('����� �� ���� ���� ���');
    Exit;
  end;

  i := 0 ;
  if CopyFirst in [0,1] then
  begin
    for i := 0 to High(Files) do
    begin
      // ����� ����� ���� (��� ������� ������)
      FileExt := LowerCase(ExtractFileExt(Files[i]));
      if (FileExt = '.jpg') or (FileExt = '.jpeg') or (FileExt = '.png') or (FileExt = '.bmp') then
      begin
        // ���� ��� ���� ���� ����
        if Files[i] <> '0001.jpg' then
          RenameFile(IncludeTrailingPathDelimiter(FolderPath)+Files[i], IncludeTrailingPathDelimiter(FolderPath)+'-'+Files[i]) ;
      end;
    end;
  end;
  memo.Lines.Add('--'+IncludeTrailingPathDelimiter(FolderPath)+'--');

  for i := 0 to High(Files) do
  begin
    // ����� ����� ���� (��� ������� ������)
    FileExt := LowerCase(ExtractFileExt(Files[i]));
    if (FileExt = '.jpg') or (FileExt = '.jpeg') or (FileExt = '.png') or (FileExt = '.bmp') then
    begin
      // ���� ��� ���� ���� ����
      if Files[i] = '0001.jpg' then
        NewFileName := IntToStr(High(Files)+2)
      else
        NewFileName := IntToStr(High(Files)+3 -( strtoint( Replace( Files[i],FileExt,'') )  ) );

      if Length(NewFileName) = 1  then
        NewFileName := '000'+NewFileName
      else  if Length(NewFileName) = 2  then
        NewFileName := '00'+NewFileName
      else  if Length(NewFileName) = 3  then
        NewFileName := '0'+NewFileName ;

      NewFileName := IncludeTrailingPathDelimiter(FolderPath) + NewFileName + FileExt ;
      
      // ����� ��� ����
      if (CopyFirst in [1,2]) and (Files[i] = '0001.jpg') then
      begin
       // if CopyFirst in [1,2] then
          if CopyFile(PChar(IncludeTrailingPathDelimiter(FolderPath)+Files[i]), PChar(NewFileName ), False) then
          begin
           // ShowMessage('��� ��') ;
            memo.Lines.Add('File Copy: ' + Files[i] + ' -> ' + Replace (NewFileName,IncludeTrailingPathDelimiter(FolderPath),'') )
          end
          else
          begin
            memo.Lines.Add('Error Copy file: ' + Files[i]  ) ;
            ShowMessage('��� ���');

          end
      end
      else if (CopyFirst in [0,1]) then
      begin
        if RenameFile(IncludeTrailingPathDelimiter(FolderPath)+'-'+Files[i], NewFileName ) then
         // ShowMessage('File renamed: ' + Files[i] + ' -> ' + NewFileName)
          memo.Lines.Add('File renamed: ' + Files[i] + ' -> ' + Replace (NewFileName,IncludeTrailingPathDelimiter(FolderPath),'') )
        else
          ///ShowMessage('Error renaming file: ' + Files[i]);
           memo.Lines.Add('Error renaming file: ' + Files[i]);
      end;
    end;
  end;
  
 // slMain.Sort;
//  memo.Lines.Assign(slMain);
 // memo.Refresh;
 // slMain.Free;

end;

procedure TDM.ReadAndSortStrings(var Strings: Array of Integer );
var
  //Strings: Array of string;
  Input: string;
  i, Count: Integer;
begin
  // ����� ����� ������
 // Write('Enter the number of strings: ');
 // Readln(Count);

  //Count := 9999;
  // ����� ������ �����
 // SetLength(Strings, Count);

  // ������ ������ �� �����
  {
  for i := 0 to Count - 1 do
  begin
   // Write('Enter string #', i + 1, ': ');
    Readln(Input);
    Strings[i] := Input;
  end;
   }
  // ���ȝ���� ����� �� ���� �����
  //TArray.Sort<string>(Strings, TStringComparer.Ordinal);
  QuickSort(Strings, 0, High(Strings));

  // ����� ������� ���ȝ���
  Writeln('Sorted strings:');
  for i := 0 to High(Strings) do
    Writeln(Strings[i]);
end;

procedure TDM.QuickSort(var A: array of Integer; Low, High: Integer);
var
  i, j, Pivot, Temp: Integer;
begin
  if Low < High then
  begin
    Pivot := A[(Low + High) div 2];
    i := Low;
    j := High;
    repeat
      while A[i] < Pivot do Inc(i);
      while A[j] > Pivot do Dec(j);
      if i <= j then
      begin
        Temp := A[i];
        A[i] := A[j];
        A[j] := Temp;
        Inc(i);
        Dec(j);
      end;
    until i > j;
    if Low < j then QuickSort(A, Low, j);
    if i < High then QuickSort(A, i, High);
  end;
end;

procedure TDM.CreateExcelImagesInFolder(const FolderPath,  FolderName: string;  CountPic: Integer;  CountAllPic: Integer);
var
  ExcelApp, Workbook, Worksheet: Variant;
  i, j: Integer;
  LastFilledRow: Integer;
  FilePath: string;
begin
  // ���� ���� ǘ��
  FilePath := FolderPath ;//+ '\MyExcelFile.xlsx';

  // ����� � ����� �� ǘ��
  ExcelApp := CreateOleObject('Excel.Application');
  try
    // ����� ���� ���� ǘ��
    if FileExists(FilePath) then
    begin
      // ǐ� ���� ���� ���ϡ �� �� ��� ����
      Workbook := ExcelApp.Workbooks.Open(FilePath);
    end
    else
    begin
      // ǐ� ���� ���� ����ϡ � Workbook ���� ����� ����
      Workbook := ExcelApp.Workbooks.Add;
      // ����� ���� ����
      Workbook.SaveAs(FilePath);
      // ������ ����� Worksheet
      Worksheet := Workbook.Worksheets[1];
      for j := 1 to 4 do
      begin
        if j=1 then
          Worksheet.Cells[1, j] := '����'
        else if j=2 then
          Worksheet.Cells[1, j] := '��� �����'
        else if j=3 then
          Worksheet.Cells[1, j] := '����� �'
        else if j=4 then
          Worksheet.Cells[1, j] := '����� �� ����' ;
      end;
    end;

    // ������ ����� Worksheet
    Worksheet := Workbook.Worksheets[1];

  // ���� ���� ����� ј��� �� ��� �� ���� A
    LastFilledRow := 1;
    while not VarIsEmpty(Worksheet.Cells[LastFilledRow, 1].Value) do
      Inc(LastFilledRow);

    // ���� ���� ������ �� ������
   // for i := 1 to 10 do
   {
    for i := LastFilledRow to LastFilledRow + 10 do
      for j := 1 to 3 do
        Worksheet.Cells[i, j] := Format('Row %d, Col %d', [i, j]);
               }

      for j := 1 to 4 do
      begin
        if j=1 then
          Worksheet.Cells[LastFilledRow, j] := LastFilledRow -1
        else if j=2 then
          Worksheet.Cells[LastFilledRow, j] := FolderName
        else if j=3 then
          Worksheet.Cells[LastFilledRow, j] := CountPic
        else if j=4 then
          Worksheet.Cells[LastFilledRow, j] := CountAllPic;

      end;
    // ����� ���� ǘ��
    //Workbook.SaveAs('C:\Temp\MyExcelFile.xlsx');
    // ����� ���� ǘ��
    Workbook.Save;

    // ���� Workbook
    Workbook.Close;

    // ����� ǘ�� (�������)
   // ExcelApp.Visible := True;
  finally
    // ���� ���� �����
    ExcelApp.Quit;
    ExcelApp := Unassigned;
  end;
end;

function TDM.CountFilesInFolder(const FolderPath, Prefix : String ; AllCount : Boolean ): Integer;
var
  SearchRec: TSearchRec;
  FileCount: Integer;
  ALLFileCount: Integer;
begin
  FileCount := 0;
  ALLFileCount := 0;

  // ���� ����� ���� ������ �� �����
  if (FindFirst(IncludeTrailingPathDelimiter(FolderPath) + '*.tif', faAnyFile, SearchRec) = 0) then
  begin
    repeat
      // ������ ����� ������� . � ..
      if (SearchRec.Name <> '.') and (SearchRec.Name <> '..') then
      begin
        // ����� ���� ��� ���� � ���� ��� (�� � ����)
        //if (SearchRec.Attr and faDirectory) = 0 then
        if ((SearchRec.Attr and faDirectory) = 0) then
        begin
          Inc(ALLFileCount);
          if  (Pos(Prefix, trim(SearchRec.Name)) = 1) then
            Inc(FileCount);
        end;
      end;
    until FindNext(SearchRec) <> 0;

    // ���� ���� ����� �����
    SysUtils.FindClose(SearchRec);
  end ;

  // ���� ����� ���� ������ �� �����
  if (FindFirst(IncludeTrailingPathDelimiter(FolderPath) + '*.jpg', faAnyFile, SearchRec) = 0) then
  begin
    repeat
      // ������ ����� ������� . � ..
      if (SearchRec.Name <> '.') and (SearchRec.Name <> '..') then
      begin
        // ����� ���� ��� ���� � ���� ��� (�� � ����)
        //if (SearchRec.Attr and faDirectory) = 0 then
        if ((SearchRec.Attr and faDirectory) = 0) then
        begin
          Inc(ALLFileCount);
          if (Pos(Prefix, trim(SearchRec.Name)) = 1) then
            Inc(FileCount);
        end;
      end;
    until FindNext(SearchRec) <> 0;

    // ���� ���� ����� �����
    SysUtils.FindClose(SearchRec);
  end;

  if AllCount then
    Result := ALLFileCount
  else
  Result := FileCount;

end;

end.
