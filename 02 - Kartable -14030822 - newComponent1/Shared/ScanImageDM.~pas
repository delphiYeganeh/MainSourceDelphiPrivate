unit ScanImageDM;

interface

uses
  SysUtils, Classes, DB, ADODB, imageenio, iemio, ieXtraTransitions,imageenproc,
  Forms, Controls , hyiedefs, Dialogs ;

type
  TDMScanImage = class(TDataModule)
    QrLetterData: TADOQuery;
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
    QrLetterDataRecCount_Calc: TIntegerField;
    QrSelImageIsCorrectedImage: TBooleanField;
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
    QrLetterDataLetterDataID: TAutoIncField;
    QrLetterDataLetterID: TIntegerField;
    QrLetterDataPageNumber: TIntegerField;
    QrLetterDataArchiveID: TIntegerField;
    QrLetterDataisDocument: TBooleanField;
    procedure QrLetterDataAfterScroll(DataSet: TDataSet);
    procedure QrSelImageCalcFields(DataSet: TDataSet);
    procedure QrLetterDataBeforeScroll(DataSet: TDataSet);
    procedure QrListItemsAfterInsert(DataSet: TDataSet);
    procedure QrLetterDataCalcFields(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure DSSelImageDataChange(Sender: TObject; Field: TField);
    procedure QrSelImageAfterScroll(DataSet: TDataSet);
  private
    FColorID: Integer;
    FNavigatorButtons: String;
    procedure SetColorID(const Value: Integer);
    procedure SetNavigatorButtons(const Value: String);

  public
    RReadOnly : Boolean;
    LetterID2:integer;
    property ColorID:Integer read FColorID write SetColorID;  // -1 for all pages    0 for not color and etc
    property NavigatorButtons:String read FNavigatorButtons write SetNavigatorButtons;
  end;

var
  DMScanImage: TDMScanImage;

implementation

Uses Dmu, BaseUnit, ScanImageFm,YShamsiDate;

{$R *.dfm}

procedure TDMScanImage.QrLetterDataAfterScroll(DataSet: TDataSet);
Var
   FileNamePath:String;
   JpgCountRec:integer;
begin
   Screen.Cursor := crHourGlass;
   Try
         QrSelImage.Close;
         QrSelImage.SQL.Clear;
         QrSelImage.SQL.Add('Select * From LetterData');
         QrSelImage.SQL.Add('Where LetterDataID ='+IntToStr(QrLetterDataLetterDataID.AsInteger));
         if QrLetterDataArchiveID.AsInteger>0 then
            QrSelImage.Connection := dm.ArchiveConnection
         else
            QrSelImage.Connection := dm.YeganehConnection;
         QrSelImage.Open;
   Finally
      Screen.Cursor := crDefault;
   End;
   //---

   Randomize;
   FmScanImage.ImageEnDBView1.RunTransition(TIETransitionType(Random(163)),300);
end;

procedure TDMScanImage.QrSelImageCalcFields(DataSet: TDataSet);
begin
   QrSelImageImageSize_Calc.AsString := inttostr(FmScanImage.ImageEnDBView1.Bitmap.Height) + ' * ' + inttostr(FmScanImage.ImageEnDBView1.Bitmap.Width);
   
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
   FmScanImage.ImageEnVect1.Visible := false;
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
begin
   FmScanImage.Edit2.Text := inttostr(FmScanImage.ImageEnDBView1.Bitmap.Height) + ' * ' + inttostr(FmScanImage.ImageEnDBView1.Bitmap.Width);
//   FmScanImage.
end;

end.
