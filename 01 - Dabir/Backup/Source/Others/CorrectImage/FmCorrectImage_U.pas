unit FmCorrectImage_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,Registry, ComCtrls, ExtCtrls, WinSkinData, ieview,
  imageenview, ievect, dbimageenvect;

type
  TFmCorrectImage = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Button1: TButton;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    LabelServer: TLabel;
    LabelDatabase: TLabel;
    Label3: TLabel;
    Panel2: TPanel;
    Button2: TButton;
    ProgressBarCurrent: TProgressBar;
    ProgressBarTotal: TProgressBar;
    SkinData1: TSkinData;
    ImageEnDBVect1: TImageEnDBVect;
    Button3: TButton;
    Button4: TButton;
    LabelFirstPos: TLabel;
    LabelTotalMax: TLabel;
    LabelTotalPos: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    IsStop : Boolean;
    procedure Connect;
  public
    _ServerName , _DataBaseName : String;
  end;

var
  FmCorrectImage: TFmCorrectImage;

implementation

uses UDM,YShamsiDate, DB;

{$R *.dfm}

function IntToY(l:byte):string ;
var i,j,k,n:integer;
begin
   Result:='';
   i:=60+3+1+1;
   j:=2*60+2*3+1;
   k:=15*11+3+1;
   for n:=1 to l do
   begin
      if (i>=28+1-1) and (i<=128+1-1) then
         Result:=Result+char(i);
      i := k*i mod j;
   end;
end;

procedure TFmCorrectImage.Connect;
var
   R: TRegistry;
begin
   _ServerName := '';
   _DataBaseName := '';

   R := TRegistry.Create;
   with R do
   begin
      RootKey:=HKEY_CURRENT_USER;
      OpenKey('Software\Yeganeh\Dabir', True);
      //OpenKey('Software\Yeganeh\Archive', True);
      _ServerName:=Trim(ReadString('ServerName'));
      {Ranjbar}
      if _ServerName = '' then
      begin
         WriteString('ServerName','.');
         _ServerName := '.';
      end;
      //---
      _DataBaseName := ReadString('DataBaseName');
      if _DataBaseName = '' then
         _DataBaseName := 'YDabir';  
   end;
   
   with DM.YeganehConnection do
   begin
      Connected := false;
      ConnectionString:='Provider=SQLOLEDB.1;Password=12;User ID=SABZ;Initial Catalog='+_DataBaseName+';Data Source='+ _ServerName;
      ConnectionTimeout:=5;
   end;

   try
      dm.YeganehConnection.Open('YeganehCorporate_Dabir', IntToY(66));
      dm.YeganehConnection.Connected:=true;
      LabelServer.Caption := _ServerName;
      LabelDatabase.Caption := _DataBaseName;
   except
      ShowMessage('«‘ﬂ«· œ— « ’«· »Â ”—Ê—');
   end;

end;

procedure TFmCorrectImage.FormShow(Sender: TObject);
begin
   PageControl1.TabHeight := 1;
   PageControl1.TabWidth := 1;
   Connect;
end;

procedure TFmCorrectImage.Button1Click(Sender: TObject);
var
   RecCount : Integer;
   TotalRecord : Integer;
   FilePathName : String;
   ColumnExists : byte;
begin
   if ShowMyMessage('ÅÌ€«„','ﬂ«—»— ê—«„Ì ° ·ÿ›« ﬁ»· «“ «Ã—«Ì ⁄„·Ì«  «’·«Õ ° «“ «ÿ·«⁄«  ŒÊœ Å‘ Ì»«‰  ÂÌÂ ‰„«ÌÌœ'+
                    #13#13+ '¬Ì« «“ «ÿ·«⁄«  ŒÊœ Å‘ Ì»«‰  ÂÌÂ ﬂ—œÂ «Ìœø' ,mbOKCancel,mtWarning) = mrCancel then
      Exit;
   ColumnExists := StrToIntDef(Qry_GetResult('if exists( Select Name from dbo.syscolumns Where Name = ''IsCorrectedImage'' '+
                   ' And object_name(object_id(''LetterData''))=''LetterData'' ) Select 1 else select 0',DM.YeganehConnection),0);
   if ColumnExists = 0 then
   begin
      ShowMyMessage('ÅÌ€«„','œ— ÃœÊ·' + ' LetterData ' + ' ” Ê‰Ì »‰«„ '  + ' IsCorrectedImage ' + ' Ì«›  ‰‘œ. ' +
      #13#13 + '·ÿ›« ﬁ»· «“ «‰Ã«„ ⁄„·Ì«  ‰—„ «›“«— —« »—Ê“ ‰„«ÌÌœ' ,[mbOK],mtInformation);
      Exit;
   end;

   Try
      Button1.Enabled := False;
      IsStop := False;
      FilePathName := GetTempDirectory + 'TempEditFile.Jpg';
      TotalRecord := StrToIntDef(Qry_GetResult('Select Count(LetterDataID) from LetterData Where Extention = 1 ' +
                                   ' And IsCorrectedImage is null',DM.YeganehConnection),0);
      ProgressBarTotal.Max := TotalRecord;
      if TotalRecord = 0 then
      begin
         LabelFirstPos.Caption := '0';
         LabelTotalMax.Caption := '0';
         LabelTotalPos.Caption := '0';
         ShowMyMessage('ÅÌ€«„',' „«„Ì  ’«ÊÌ— «’·«Õ ‘œÂ «‰œ'+#13+'Å«Ì«‰ ⁄„·Ì« ',[mbOK],mtInformation);
         Exit;
      end;
      ProgressBarTotal.Position := 0;
      LabelTotalMax.Caption := IntToStr(ProgressBarTotal.Max);
      With DM do
      begin
         try
            RecCount := 1;
            While RecCount > 0 do
            begin
               if IsStop then
                  Break;
               Try
                  QrCorrectImage.Close;
                  QrCorrectImage.Open;
               except
                  ShowMessage('«‘ﬂ«· œ— »«“ ﬂ—œ‰ ÃœÊ·  ’«ÊÌ—');
               end;
               RecCount := QrCorrectImage.RecordCount;
               ProgressBarCurrent.Max := RecCount;
               ProgressBarCurrent.Position := 0;
               QrCorrectImage.First;
               While not QrCorrectImage.Eof do
               begin
                  if IsStop then
                     Break;
                  ImageEnDBVect1.Refresh;
                  DeleteFile(FilePathName);   
                  QrCorrectImage.Edit;
                  ImageEnDBVect1.IO.SaveToFileJpeg(FilePathName);
                  ImageEnDBVect1.Clear;
                  QrCorrectImageImage.LoadFromFile(FilePathName);
                  QrCorrectImageIsCorrectedImage.AsBoolean := True;
                  QrCorrectImage.Post;
                  Application.ProcessMessages;
                  DeleteFile(FilePathName);
                  Application.ProcessMessages;
                  QrCorrectImage.Next;
                  ProgressBarCurrent.Position := ProgressBarCurrent.Position+1;
                  ProgressBarTotal.Position := ProgressBarTotal.Position+1;
                  LabelTotalPos.Caption := IntToStr(ProgressBarTotal.Position);
                  Application.ProcessMessages;
               end;
            end;
            ShowMyMessage('ÅÌ€«„','⁄„·Ì«  «’·«Õ  ’«ÊÌ— »« „Ê›ﬁÌ  »Â Å«Ì«‰ —”Ìœ',[mbOK],mtInformation);
         except
            on E:exception do
               ShowMessage(E.Message);
         end;
      end;
   Finally
      Button1.Enabled := True;
   end;   
end;

procedure TFmCorrectImage.Button4Click(Sender: TObject);
begin
   IsStop := True;
end;

procedure TFmCorrectImage.Button2Click(Sender: TObject);
begin
   DM.YeganehConnection.Close;
   Close;
end;

end.
