unit ScanImageDM;

interface

uses
  SysUtils, Classes, DB, ADODB, imageenio, iemio, imageenproc,
  Forms, Controls , hyiedefs, Dialogs, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdFTP ,BaseUnits, Graphics;

type
  TDMScanImage = class(TDataModule)
    QrLetterData : TADOQuery;
    DSLetterData: TDataSource;
    QrSelImage: TADOQuery;
    DSSelImage: TDataSource;
    QrSelImageLetterDataID: TAutoIncField;
    QrSelImageLetterID: TIntegerField;
    QrSelImageImage: TBlobField;
    QrSelImageextention: TWordField;
    QrSelImageDescription: TWideStringField;
    QrSelImageLastUpdate: TDateTimeField;
    QrSelImageImageSize_Calc: TStringField;
    QrLetterDataLetterDataID: TAutoIncField;
    DSAllImage: TDataSource;
    SPAllImage: TADOStoredProc;
    SPAllImageLetterDataID: TAutoIncField;
    SPAllImageLetterID: TIntegerField;
    SPAllImageImage: TBlobField;
    SPAllImageextention: TWordField;
    SPAllImageDescription: TWideStringField;
    SPAllImageLastUpdate: TDateTimeField;
    QrListItems: TADOQuery;
    DSListItems: TDataSource;
    QrListItemsListItemsID: TAutoIncField;
    QrListItemsListID: TWordField;
    QrListItemsKeyValue: TIntegerField;
    QrListItemsTitle: TWideStringField;
    QrListItemsNotes: TWideStringField;
    QrListItemsUsersID: TIntegerField;
    QrSelImageListItemsID: TIntegerField;
    QrDelLetterData: TADOQuery;
    QrSelImagePageNumber: TIntegerField;
    SPAllImagePageNumber: TIntegerField;
    QrLetterDataLetterID: TIntegerField;
    QrLetterDataPageNumber: TIntegerField;
    QrLetterDataRecCount_Calc: TIntegerField;
    QrSelImageIsCorrectedImage: TBooleanField;
    QrSelImageColorID: TIntegerField;
    QrLetterDataColorID: TIntegerField;
    qrInsertLetterData: TADOQuery;
    qrUpdateLetterData: TADOQuery;
    quImage: TADOQuery;
    quImageLetterDataID: TAutoIncField;
    quImageLetterID: TIntegerField;
    quImagePageNumber: TIntegerField;
    quImageImage: TBlobField;
    quImageextention: TWordField;
    quImageDescription: TWideStringField;
    quImageLastUpdate: TDateTimeField;
    quImageListItemsID: TIntegerField;
    quImageIsCorrectedImage: TBooleanField;
    quImageColorID: TIntegerField;
    quImageVersionNo: TStringField;
    quImageVersionDate: TStringField;
    qry_updatePageNumber: TADOQuery;
    AutoIncField1: TAutoIncField;
    IntegerField1: TIntegerField;
    BlobField1: TBlobField;
    WordField1: TWordField;
    WideStringField1: TWideStringField;
    DateTimeField1: TDateTimeField;
    StringField1: TStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    BooleanField1: TBooleanField;
    IntegerField4: TIntegerField;
    QrSelImagePath: TStringField;
    ADOQuery1: TADOQuery;
    AutoIncField2: TAutoIncField;
    IntegerField5: TIntegerField;
    BlobField2: TBlobField;
    WordField2: TWordField;
    WideStringField2: TWideStringField;
    DateTimeField2: TDateTimeField;
    StringField2: TStringField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    BooleanField2: TBooleanField;
    IntegerField8: TIntegerField;
    StringField3: TStringField;
    QrSelImage_Insert: TADOQuery;
    QrSelImage_InsertLetterDataID: TAutoIncField;
    QrSelImage_InsertLetterID: TIntegerField;
    QrSelImage_InsertImage: TBlobField;
    QrSelImage_Insertextention: TWordField;
    QrSelImage_InsertDescription: TWideStringField;
    QrSelImage_InsertLastUpdate: TDateTimeField;
    QrSelImage_InsertImageSize_Calc: TStringField;
    QrSelImage_InsertListItemsID: TIntegerField;
    QrSelImage_InsertPageNumber: TIntegerField;
    QrSelImage_InsertIsCorrectedImage: TBooleanField;
    QrSelImage_InsertColorID: TIntegerField;
    QrSelImage_InsertPath: TStringField;
    ADOQuery2: TADOQuery;
    IdFTP1: TIdFTP;
    QrSelImageFileType: TStringField;
    SPAllImageFileType: TStringField;
    SPAllImagepath: TStringField;
    QrSelImageURL: TStringField;
    QrLetterDataListItemsID: TIntegerField;
    QrLetterDataDescription: TStringField;
    procedure QrLetterDataAfterScroll(DataSet: TDataSet);
    procedure QrSelImageCalcFields(DataSet: TDataSet);
    procedure QrLetterDataBeforeScroll(DataSet: TDataSet);
    procedure QrListItemsAfterInsert(DataSet: TDataSet);
    procedure QrLetterDataCalcFields(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure DSSelImageDataChange(Sender: TObject; Field: TField);
    procedure QrSelImageAfterScroll(DataSet: TDataSet);
  private
    _DownloadSetting:TDownloadSetting;
    _BaseSQLConnection:TBaseSQLConnection;
    _LastFilePatch:String;
    FColorID: Integer;
    FNavigatorButtons: String;
    procedure SetColorID(const Value: Integer);
    procedure SetNavigatorButtons(const Value: String);
    procedure ItializeDownloadSetting;
  public
    _IsScan:Boolean;
    _LetterID:String;
    RReadOnly : Boolean;
    LetterID2:integer;
    property ColorID:Integer read FColorID write SetColorID;  // -1 for all pages    0 for not color and etc
    property NavigatorButtons:String read FNavigatorButtons write SetNavigatorButtons;
    Function DownloadFiles(_URL:String):String;
    procedure WriteExceptionToFile(ClassName, Message : String);
  end;

var
  DMScanImage: TDMScanImage;

implementation

Uses Dmu, BaseUnit, ScanImageFm,YShamsiDate, Math, Variants;

{$R *.dfm}

procedure TDMScanImage.QrLetterDataAfterScroll(DataSet: TDataSet);
begin
  Screen.Cursor := crHourGlass;
  try
//      QrSelImage.Close;
//      QrSelImage.Parameters.ParamByName('Pa_LetterDataID').Value := QrLetterDataLetterDataID.AsInteger;
//      QrSelImage.Open;  Commented By Mostafa Saeedi Saeb on 900906

    {  if (ColorID=-1) then
      begin
         QrSelImage.Close;
         QrSelImage.SQL.Clear;
         QrSelImage.SQL.Add('Select * From LetterData');
         QrSelImage.SQL.Add('Where LetterDataID ='+IntToStr(QrLetterDataLetterDataID.AsInteger));
         QrSelImage.Open;
      end
      else
      begin
           if UpperCase(NavigatorButtons)=UpperCase('nbFirst') then QrSelImage.First;
           if UpperCase(NavigatorButtons)=UpperCase('nbPrior') then QrSelImage.Prior;
           if UpperCase(NavigatorButtons)=UpperCase('nbNext') then QrSelImage.Next;
           if UpperCase(NavigatorButtons)=UpperCase('nbLast') then QrSelImage.Last;
           NavigatorButtons:='';
      end;        }
//************************************** movahed*****************************************
      {   QrSelImage.Close;
         QrSelImage.SQL.Clear;
         QrSelImage.SQL.Add('Select * From LetterData');
         QrSelImage.SQL.Add('Where LetterDataID ='+IntToStr(QrLetterDataLetterDataID.AsInteger));
         QrSelImage.Open;
        }
    QrSelImage_Insert .Close;
    QrSelImage_Insert.SQL.Clear;
    QrSelImage_Insert.SQL.Add('Select * From LetterData Where LetterDataID = ' + IntToStr(QrLetterDataLetterDataID.AsInteger));
    //QrSelImage_Insert.SQL.Add('Where LetterDataID ='+IntToStr(QrLetterDataLetterDataID.AsInteger));
    QrSelImage_Insert.Open;

    QrSelImage.Close;
    QrSelImage.Parameters.ParamByName('Pa_LetterDataID').Value := IntToStr(QrLetterDataLetterDataID.AsInteger);
    QrSelImage.Open;
    if QrSelImageColorID.Value <> 0 then
    begin
      ADOQuery2.Close;
      ADOQuery2.SQL.Text := ' Select Color From DefineColors Where ID = ' + QrSelImageColorID.AsString;
      ADOQuery2.Open;
      FmScanImage._MyPuletColors := ADOQuery2.FieldByName('Color').AsString;
    end;
//************************************** movahed*****************************************
      //ÏÑ äÇÑÔ 5 Jpg Èå Tiff ÊÈÏíá ÝÑãÊ
 {     if QrSelImageextention.AsInteger = 2 then //Tif = 2 , Jpg = 1
      begin
         Try
            FileNamePath := _TempPath + QrSelImageLetterDataID.AsString + '.Tif';
            QrSelImageImage.SaveToFile(FileNamePath);
            FmScanImage.ChangeTifToJpgAndSave(FileNamePath);
            Application.ProcessMessages;//ÍÐÝ äÔæÏ
         Except
            MBaseForm.MessageShowString('ÇÔßÇá ÏÑ ÊÛííÑ ÝÑãÊ', False);
            Exit;
         End;

         //Jpg ÌåÊ ÊÓÊ æÌæ ÝÇíáåÇí äæÚ
         //JpgCountRec := StrToIntDef(Qry_GetResult('Select Count(LetterDataID) From LetterData Where( LetterID = '+
         //                     QrLetterDataLetterDataID.AsString +' )And(Extention=1)' ,dm.YeganehConnection ) ,0);
         //if JpgCountRec > 0 then
         //begin
            //Tif ÍÐÝ ÑßæÑÏ ÏÇÑí ÝÑãÊ
            QrSelImage.First;
            While not QrSelImage.Eof do
            begin
               if QrSelImageextention.AsInteger = 1 then
                  QrSelImage.Next;
               if QrSelImageextention.AsInteger = 2 then
                  QrSelImage.Delete;
            end;
         //end;
         FmScanImage.Close_Open_QrLetterData;
         if FileExists(FileNamePath)And Not(File_IsInUse(FileNamePath)) then
            DeleteFile(FileNamePath);
      end;
        }

      //ÇÕáÇÍ ÇÈÚÇÏ äÇãå åÇí íÔ äæíÓ ÝÇßÓ
      //if (dm.Get_All_Letterletterformat.AsInteger = 2)And(dm.Get_All_LetterReceiveTypeID.AsInteger = 2)And(QrSelImage.RecordCount > 0) then  //*???
      {if (FmScanImage.letterformat = 2)And(FmScanImage.ReceiveTypeID = 2)And(QrSelImage.RecordCount > 0) then  //*???
         if dm.GetValue(77) = True then
            if (FmScanImage.ImageEnDBVect1.IEBitmap.Width <> 2480)And(FmScanImage.ImageEnDBVect1.IEBitmap.Height <> 3508) then
            begin
               QrSelImage.Edit;
               FmScanImage.ImageEnDBVect1.Proc.Resample(2480,3508,rfNone); //Size = A4
               QrSelImage.Post;
            end;}
      //---

  finally
    Screen.Cursor := crDefault;
  end;
   //---
  Randomize;
  //FmScanImage.ImageEnDBView1.RunTransition(TIETransitionType(163),300);
end;

procedure TDMScanImage.QrSelImageCalcFields(DataSet: TDataSet);
begin
  QrSelImageImageSize_Calc.AsString := inttostr(FmScanImage.ImageEnDBView1.Bitmap.Height) + ' * ' + inttostr(FmScanImage.ImageEnDBView1.Bitmap.Width);
  FmScanImage.StaticText1.Caption := QrSelImageImageSize_Calc.AsString;
   {Ranjbar 89.07.05 ID=25}
   //QrSelImageRecCount_Calc.AsInteger := QrLetterData.RecordCount;
   //QrSelImageRowNo_Calc.AsInteger := Abs(QrLetterData.RecNo);
   //---
end;

procedure TDMScanImage.QrLetterDataBeforeScroll(DataSet: TDataSet);
begin
  FmScanImage.ImageEnDBView1.PrepareTransition;
  FmScanImage.PageControl1.Enabled := false;
  FmScanImage.BBScan.Enabled := false;
  FmScanImage.BBOpenFile.Enabled := false;
  FmScanImage.ImageEnVectMain.Visible := false;
end;

procedure TDMScanImage.QrListItemsAfterInsert(DataSet: TDataSet);
begin
  QrListItemsListID.AsInteger := 8;
  QrListItemsKeyValue.AsInteger := 0;
  QrListItemsUsersID.AsInteger := _UserId;
end;

procedure TDMScanImage.QrLetterDataCalcFields(DataSet: TDataSet);
begin
   {Ranjbar 89.07.05 ID=25}
  QrLetterDataRecCount_Calc.AsInteger := QrLetterData.RecordCount;
   //---
end;

procedure TDMScanImage.SetColorID(const Value: Integer);
begin
  FColorID := Value;
end;

procedure TDMScanImage.DataModuleCreate(Sender: TObject);
begin
  ColorID:=-1;
  NavigatorButtons:='';
  ItializeDownloadSetting
end;

procedure TDMScanImage.SetNavigatorButtons(const Value: String);
begin
  FNavigatorButtons := Value;
end;

procedure TDMScanImage.DSSelImageDataChange(Sender: TObject;
  Field: TField);
begin
  FmScanImage.ShowPageCount;
//  FmScanImage.SetHeaderColor;
end;

procedure TDMScanImage.QrSelImageAfterScroll(DataSet: TDataSet);
var
  FilePatch:string;
  NewURL:string;
begin
  try
    if DataSet.State <> dsInsert then
    begin
      _BaseSQLConnection.SaveLog('Lettelid is not null'+FmScanImage._MyLetterID,'New Log');
      DeleteFile(_LastFilePatch);
      FilePatch:=QrSelImage.fieldbyname('path').AsString;

      if FilePatch = '' then
        Exit;
      NewURL:=DownloadFiles(FilePatch);
      QrSelImage.Edit;
      QrSelImage.fieldbyname('Filetype').Value:=NewURL;
      QrSelImage.Post;
      //Hamed_Ansari_MRM_990618_S
      //if FileExists(NewURL) then
        //DeleteFile(NewURL);
      //Hamed_Ansari_MRM_990618_E
      FmScanImage.ImageEnVectMain.IO.LoadFromFile(NewURL);
      FmScanImage.ImageEnVectMain.Visible := True;
      FmScanImage.ImageEnVectMain.Align := alClient;
      Sleep(500);
      Application.ProcessMessages;
      FmScanImage.StaticText1.Caption := inttostr(FmScanImage.ImageEnDBView1.Bitmap.Height) + ' * ' + inttostr(FmScanImage.ImageEnDBView1.Bitmap.Width);
     _LetterID:=FmScanImage._MyLetterID;
    end
    else
      _BaseSQLConnection.SaveLog('Lettelid is null'+FmScanImage._MyLetterID,'New Log');
  except on E:Exception Do
    _BaseSQLConnection.SaveLog(E.Message,'QrSelImageAfterScroll');
  end;
  _LastFilePatch:=NewURL;
end;

function TDMScanImage.DownloadFiles(_URL: String): String;
var
  FileName:string;
  i:Integer;
begin
  if not DirectoryExists(ExtractFilePath(Application.ExeName) + 'Temp') then
    CreateDir(ExtractFilePath(Application.ExeName) + 'Temp');

  i := RandomRange(10,1000);
  FileName := ExtractFilePath(Application.ExeName) + 'Temp\'+FormatDateTime('HHMMSS',now)+ExtractFileExt(_URL);
  with IdFTP1 do
  begin
    Host:=_DownloadSetting._FtpIP;
    Username:=_DownloadSetting._FtpUserName;
    Password:=_DownloadSetting._FtpPassword;
    Connect;
    if Connected then
      Get(_URL,FileName);
    Disconnect;
  end;
  Result:= FileName;
end;

procedure TDMScanImage.ItializeDownloadSetting;
begin
  _BaseSQLConnection:=TBaseSQLConnection.Create;
  _DownloadSetting._HttpUrl:=_BaseSQLConnection.GetKeyvalue('HttpUrl');
  _DownloadSetting._FtpIP:=_BaseSQLConnection.GetKeyvalue('FtpIP');
  _DownloadSetting._FtpUserName:=_BaseSQLConnection.GetKeyvalue('FtpUserName');
  _DownloadSetting._FtpPassword:=_BaseSQLConnection.GetKeyvalue('FtpPassword');
end;

procedure TDMScanImage.WriteExceptionToFile(ClassName, Message: String);
var
 AList : TStringList;
begin
  AList := TStringList.Create;
  try
   if FileExists(ExtractFilePath(Application.ExeName) + 'ErrorLogArchive.txt') then
    AList.LoadFromFile(ExtractFilePath(Application.ExeName) + 'ErrorLogArchive.txt');
   AList.Add(_Today + ' ' + TimeToStr(Now) + ' ' + ClassName + ' ' + Message);
   AList.SaveToFile(ExtractFilePath(Application.ExeName) + 'ErrorLogArchive.txt');
  finally
   FreeAndNil(AList);
  end;
end;

end.
