unit ScanImageDM;

interface

uses
  SysUtils, Classes, DB, ADODB, imageenio, iemio, ieXtraTransitions,imageenproc,
  Forms , Controls , hyiedefs ;

type
  TDMScanImage = class(TDataModule)
    QrLetterData: TADOQuery;
    DSLetterData: TDataSource;
    QrSelImage: TADOQuery;
    DSSelImage: TDataSource;
    QrSelImageLetterDataID: TAutoIncField;
    QrSelImageLetterID: TIntegerField;
    QrSelImageImage: TBlobField;
    QrSelImagePageNumber: TWordField;
    QrSelImageextention: TWordField;
    QrSelImageDescription: TWideStringField;
    QrSelImageLastUpdate: TDateTimeField;
    QrSelImageImageSize_Calc: TStringField;
    QrLetterDataLetterDataID: TAutoIncField;
    QrLetterDataLetterID: TIntegerField;
    DSAllImage: TDataSource;
    SPAllImage: TADOStoredProc;
    SPAllImageLetterDataID: TAutoIncField;
    SPAllImageLetterID: TIntegerField;
    SPAllImagePageNumber: TWordField;
    SPAllImageImage: TBlobField;
    SPAllImageextention: TWordField;
    SPAllImageDescription: TWideStringField;
    SPAllImageLastUpdate: TDateTimeField;
    SPAllImageUniqueID: TLargeintField;
    QrListItems: TADOQuery;
    DSListItems: TDataSource;
    QrListItemsListItemsID: TAutoIncField;
    QrListItemsListID: TWordField;
    QrListItemsKeyValue: TIntegerField;
    QrListItemsTitle: TWideStringField;
    QrListItemsNotes: TWideStringField;
    QrListItemsUsersID: TIntegerField;
    QrDelLetterData: TADOQuery;
    QrSelImageListItemsID: TIntegerField;
    QrLetterDataPageNumber: TWordField;
    QrLetterDataRecCount_Calc: TIntegerField;
    QrSelImageUniqueID: TLargeintField;
    QrSelImageIsCorrectedImage: TBooleanField;
    procedure QrLetterDataAfterScroll(DataSet: TDataSet);
    procedure QrSelImageCalcFields(DataSet: TDataSet);
    procedure QrLetterDataBeforeScroll(DataSet: TDataSet);
    procedure QrListItemsAfterInsert(DataSet: TDataSet);
    procedure QrLetterDataCalcFields(DataSet: TDataSet);
  private

  public
    LetterID2 : Integer;

  end;

var
  DMScanImage: TDMScanImage;

implementation

Uses Dmu, BaseUnit, ScanImageFm , YShamsiDate, businessLayer;

{$R *.dfm}

procedure TDMScanImage.QrLetterDataAfterScroll(DataSet: TDataSet);
Var
   FileNamePath:String;
begin
   //ÔæÏ ÏÑ ÛíÑ ÇíäÕæÑÊ Çíä ßäÊÑá Úãá äãíßäÏ Visible=False íÇ Hide äÈÇíÏ Èå åí ÚäæÇä ImageEnMView1 ÊæÌå : ßäÊÑá
   Screen.Cursor := crHourGlass;
   Try
      QrSelImage.Close;
      QrSelImage.Parameters.ParamByName('Pa_LetterDataID').Value := QrLetterDataLetterDataID.AsInteger;
      QrSelImage.Open;

      //ÏÑ äÇÑÔ 5 Jpg åÇí ÞÏíãí Èå ÝÑãÊ Tif ÊÈÏíá ÝÑãÊ
      if QrSelImageextention.AsInteger = 2 then //Tif = 2 , Jpg = 1
      begin
         Try
            FileNamePath := _TempPath + QrSelImageLetterDataID.AsString + '.Tif';
            QrSelImageImage.SaveToFile(FileNamePath);
            FmScanImage.ChangeTifToJpgAndSave(FileNamePath,True);
            Application.ProcessMessages; //ÍÐÝ äÔæÏ
         Except
            MBaseForm.MessageShowString('ÇÔßÇá ÏÑ ÊÛííÑ ÝÑãÊ', False);
            Exit;
         End;

         //Tif ÍÐÝ ÑßæÑÏ ÏÇÑí ÝÑãÊ
         QrSelImage.First;
         While not QrSelImage.Eof do
         begin
            if QrSelImageextention.AsInteger = 1 then
               QrSelImage.Next;
            if QrSelImageextention.AsInteger = 2 then
               QrSelImage.Delete;
         end;

         FmScanImage.Close_Open_QrLetterData;
         if FileExists(FileNamePath)And Not(File_IsInUse(FileNamePath)) then
            DeleteFile(FileNamePath);
      end;

      //ÇÕáÇÍ ÇÈÚÇÏ äÇãå åÇí íÔ äæíÓ ÝÇßÓ
      //if (FmScanImage.letterformat = 2)And(FmScanImage.ReceiveTypeID = 2)And(QrSelImage.RecordCount > 0) then
      if (FmScanImage.ReceiveTypeID = 2)And(QrSelImage.RecordCount > 0) then
         if GetUserSetting('ConvertFaxToA4') then
            if (FmScanImage.ImageEnDBVect1.IEBitmap.Width <> 2480)And(FmScanImage.ImageEnDBVect1.IEBitmap.Height <> 3508) then
            begin
               QrSelImage.Edit;
               FmScanImage.ImageEnDBVect1.Proc.Resample(2480,3508,rfNone); //Size = A4
               QrSelImage.Post;
            end;
      //---
   Finally
      Screen.Cursor := crDefault;
   End;
   Randomize;
   FmScanImage.ImageEnDBVect1.RunTransition(TIETransitionType(Random(163)),300);
end;

procedure TDMScanImage.QrSelImageCalcFields(DataSet: TDataSet);
begin
   QrSelImageImageSize_Calc.AsString := inttostr(FmScanImage.ImageEnDBVect1.Bitmap.Height) + ' * ' + inttostr(FmScanImage.ImageEnDBVect1.Bitmap.Width);
   {QrSelImageRecCount_Calc.AsInteger := QrLetterData.RecordCount;
   QrSelImageRowNo_Calc.AsInteger := Abs(QrLetterData.RecNo);}
end;

procedure TDMScanImage.QrLetterDataBeforeScroll(DataSet: TDataSet);
begin
   FmScanImage.ImageEnDBVect1.PrepareTransition;
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

end.
