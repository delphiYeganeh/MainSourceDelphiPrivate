unit uUpdateDbScripts;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, ExtCtrls, YShamsiDate, DB, ADODB;

type
  TfmUpdateDbScripts = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    lblDbVer: TLabel;
    lblDelphiVer: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    memScripts: TMemo;
    btnUpdate: TButton;
    qryRunScript: TADOQuery;
    cmdRunScript: TADOCommand;
    memError: TMemo;
    procedure FormShow(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
  private
    updateType : Integer;
    dbVer, delphiVer, path : String;
    function runScript(filePath : String; fileName : String):Boolean;
    function GetSqlFileAsString(const fn:String):String;
    function GetTxtFileAsString(const fn:String):String;
    procedure ParseDelimited(const sl : TStrings; const value : string; const delimiter : string);
    { Private declarations }
  public
    constructor Create(AOwner: TComponent; dbVerParam : String; delphiVerParam : String; updateTypeParam : Integer); reintroduce;
    { Public declarations }
  end;

var
  fmUpdateDbScripts: TfmUpdateDbScripts;

implementation

uses Dmu;

{$R *.dfm}

{ TfmUpdateDbScripts }
{��� ���� �Ә��� �� ����� �ю� ���� ���� � Ӂ� ����� ������}
constructor TfmUpdateDbScripts.Create(AOwner: TComponent; dbVerParam : String; delphiVerParam : String; updateTypeParam : Integer);
begin
  inherited Create(AOwner);
  dbVer := Trim(dbVerParam);
  delphiVer := Trim(delphiVerParam);
  updateType := updateTypeParam;
end;

procedure TfmUpdateDbScripts.FormShow(Sender: TObject);
  function GetFileCreationTime(const FilePath: string): TDateTime;
  var
    FileHandle: THandle;
    FileTime: TFileTime;
    LocalFileTime: TFileTime;
    SystemTime: TSystemTime;
  begin
    Result := 0; // ����� ��ԝ��� �� ���� ���

    // ��� ���� ����
    FileHandle := FileOpen(FilePath, fmOpenRead or fmShareDenyNone);
    if FileHandle = THandle(-1) then
      Exit;

    try
      // ������ ���� ����� ����
      if GetFileTime(FileHandle, @FileTime, nil, nil) then
      begin
        // ����� ���� ���� �� ���� ����
        FileTimeToLocalFileTime(FileTime, LocalFileTime);
        // ����� �� SystemTime
        FileTimeToSystemTime(LocalFileTime, SystemTime);
        // ����� �� TDateTime
        Result := SystemTimeToDateTime(SystemTime);
      end;
    finally
      // ���� ����
      FileClose(FileHandle);
    end;
  end;
var
  fileName            : String;
  SR                  : TSearchRec;
  slMain              : TStringList;
  tabs: Array [0..1] of Integer;
  fromVer, toVer, ver : Integer;
  CreationTime: TDateTime;
begin
  lblDbVer.Caption := dbVer;
  lblDelphiVer.Caption := delphiVer;

  if dbVer = '' then
    fromVer := 0
  else
    fromVer := StrToInt(Copy(dbVer, LastDelimiter('.', dbVer)+  1, Length(dbVer)));

  toVer := StrToInt(Copy(delphiVer, LastDelimiter('.', delphiVer) + 1, Length(delphiVer)));

  tabs[0] := 80 * 4;
  memScripts.Clear;
  memScripts.Perform(EM_SETTABSTOPS, 1, LongInt(@tabs));

  //if updateType = 1 then
  begin
    try
      slMain := TStringList.Create;
      Path := ExpandFileName(GetCurrentDir + '\Cash_patch\');
      if FindFirst(Path + '*.*', faArchive, SR) = 0 then
      begin
        repeat
          fileName := SR.Name;
          { TODO -oparsa : 14031201 }
          CreationTime := GetFileCreationTime(Path+fileName);
          if ShamsiString(CreationTime) = _Today then
          { TODO -oparsa : 14031201 }
            if (UpperCase(File_GetFileExt(fileName)) = 'TXT') then //'SQL'   Or 'TXT'
            begin
              //Version Condition
              try
                ver := 0 ;//StrToInt(Copy(fileName, 0, 3));
              except
                ver := -1;
              end;

              //if (ver > fromVer) And (ver <= toVer) then
              if  1=1 then
              begin
                fileName := fileName + #9 + 'Detected';
                slMain.Add(fileName);
              end;
            end;
        until FindNext(SR) <> 0;
        FindClose(SR);
      end;
    finally
      slMain.Sort;
      memScripts.Lines.Assign(slMain);
      memScripts.Refresh;
      slMain.Free;
    end;
  end;
end;

procedure TfmUpdateDbScripts.btnUpdateClick(Sender: TObject);
var
  fileName : String;
  i, p : Integer;
  blnRunResult : Boolean;
begin
  blnRunResult := True;

  btnUpdate.Enabled := False;
  Application.ProcessMessages;

  for i:=0 to memScripts.Lines.Count - 1 do
  begin
    fileName := memScripts.Lines[i];

    p := Pos(#9, fileName);

    if p = 0 then
      Exit;

    fileName := Trim(copy(fileName, 0, p));

    memScripts.Lines[i] := fileName + #9 + 'Updating...';

    if runScript(path, fileName) then
      memScripts.Lines[i] := fileName + #9 + 'Ok'
    else
    begin
      blnRunResult := False;
      memScripts.Lines[i] := fileName + #9 + 'Failed';
    end;
  end;

  if blnRunResult then
  begin
    // Update DB Ver
    fileName := 'INSERT INTO dbo.tblAppVer (ver, changeDate, Descript) VALUES('''+ delphiVer + ''', GETDATE(), N''���� ��'')';
    //fileName := 'INSERT INTO dbo.tblAppVer (version, changeDate, Descript) VALUES('''+ delphiVer + ''', GETDATE(), N''���� ��'')';

    qryRunScript.SQL.Text := fileName;
    qryRunScript.ExecuteOptions := [eoAsyncFetch];
    qryRunScript.ExecSQL;
    qryRunScript.Close;

    btnUpdate.Enabled := True;
  end;
end;

function TfmUpdateDbScripts.runScript(filePath: String; fileName : String): Boolean;
var
  i   : Integer;
  List: TStrings;
  strCommand, strFile, strTemp : String;
begin

  strFile := filePath + fileName;

  if not FileExists(strFile) then
    Exit;

  if (UpperCase(File_GetFileExt(fileName)) = 'TXT') then
    strCommand := GetTxtFileAsString(strFile);

  strCommand := Replace(Replace(Replace(strCommand, 'go', 'GO'), 'Go', 'GO'), 'gO', 'GO');

  //SplitString
  List := TStringList.Create;
  try
    ParseDelimited(List, strCommand, 'GO');

    for i := 0 to List.Count - 1 do
    begin
      try
        strTemp := List[i];
        if (Length(Trim(strTemp)) <> 0) then
        begin
          qryRunScript.SQL.Text := strTemp;
          qryRunScript.ExecuteOptions := [eoAsyncFetch];
          qryRunScript.ExecSQL;
          qryRunScript.Close;
        end;
      except on E:Exception do
        begin
          memError.Lines.Add(fileName + ' --> ' + E.Message);
        end;
      end;
    end;
    Result := True;
  finally
    List.Free;
  end;
end;

function TfmUpdateDbScripts.GetSqlFileAsString(const fn: String): String;
var
  ss  : AnsiString;
  ws  : WideString;
  fs  : TFileStream;
  len : Cardinal;
begin
  fs := TFileStream.Create(fn,fmopenRead or fmShareDenyNone);
  try
    SetLength(ss,2);
    fs.Read(ss[1],2);
    if ss=#$FF#$FE then
    begin
      Setlength(ws,(fs.Size) div 2 - 1);
      len :=  fs.Size-2;
      fs.Read(ws[1],len);
      Result := UTF8Decode(ws);
    end;
  finally
    fs.Free;
  end;
end;

function TfmUpdateDbScripts.GetTxtFileAsString(const fn: String): String;
var
  doc: TextFile;
  character: Char;
  strResult : String;
  w : ansistring;
  bomidx : integer;
const
  utf8bom : array [0..2] of char = (#$EF, #$BB, #$BF);

begin
  strResult := '';
  AssignFile(doc, fn);
  reset(doc);
  w := '';
  bomidx := 0;
  while not EOF(doc) do
  begin
    read(doc, character);

    if (bomidx < length(utf8bom)) and (utf8bom[bomidx] = character) then
    begin
      inc(bomidx);
      continue;
    end;
    inc(bomidx);

    if character = ' ' then
    begin
      strResult := strResult + Utf8ToAnsi(w) + ' ';
      w := '';
    end
    else
      w := w + character;

  end;
  CloseFile(doc);

  if w <> '' then
    strResult := strResult + Utf8ToAnsi(w);

  Result := strResult;
end;

procedure TfmUpdateDbScripts.ParseDelimited(const sl: TStrings;
  const value, delimiter: string);
const
  ALPHA_CHARS = ['a'..'z', 'A'..'Z'];
var
  dx, delta : integer;
  ns, txt, test : string;
  valid : Boolean;
begin
  delta := Length(delimiter);
  txt := value;// + delimiter;
  sl.BeginUpdate;
  sl.Clear;
  ns := '';
  try
    while Length(txt) > 0 do
    begin
      valid := True;

      dx := Pos(delimiter, txt);

      if (Length(txt) <> (dx + delta)) then
        if (txt[dx + delta] in ALPHA_CHARS) then
          valid := False;

      if (txt[dx-1] in ALPHA_CHARS) then
        valid := False;

      if valid then
      begin
        ns := ns + Copy(txt, 0, dx - 1);
        sl.Add(ns);
        ns := '';
      end
      else
      begin //Not Valid GO
        ns := ns + Copy(txt, 0, dx + delta - 1);
      end;
      txt := Copy(txt, dx+delta, MaxInt);

      //dx := Pos(delimiter, txt);
      //ns := Copy(txt, 0, dx-1);
      //sl.Add(ns);
      //txt := Copy(txt, dx+delta, MaxInt);
    end;
  finally
    sl.EndUpdate;
  end;
end;

end.
