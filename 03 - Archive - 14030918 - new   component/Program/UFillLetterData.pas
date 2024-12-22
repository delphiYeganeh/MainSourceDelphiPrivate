unit UFillLetterData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, DB, ADODB, DBCtrls, ExtActns, ActnList,
  Buttons, YFillPictureFields, xpWindow, xpBitBtn, ExtCtrls,
  ComCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxCustomData, cxStyles, cxTL,
  cxTLdxBarBuiltInMenu, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp,
  dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  cxInplaceContainer, ShellCtrls, ShellApi, AdvGlowButton;

type
  TFillLetterData = class(TMBaseForm)
    LetterData: TADODataSet;
    LetterDataLetterDataID: TAutoIncField;
    LetterDataLetterID: TIntegerField;
    LetterDataPageNumber: TWordField;
    LetterDataImage: TBlobField;
    LetterDataextention: TWordField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    SBOpen: TAdvGlowButton;
    Label4: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    LabelHelp: TLabel;
    EditPath: TEdit;
    btnInsertAndicator: TAdvGlowButton;
    memUpdate: TMemo;
    memFail: TMemo;
    Edit3: TEdit;
    CBExtention: TComboBox;
    ShellTreeView1: TShellTreeView;
    Panel1: TPanel;
    Button2: TAdvGlowButton;
    TabSheet2: TTabSheet;
    Label6: TLabel;
    BitBtn1: TAdvGlowButton;
    Label9: TLabel;
    Memo3: TMemo;
    Label10: TLabel;
    Memo4: TMemo;
    ShellTreeView2: TShellTreeView;
    SpeedButton1: TAdvGlowButton;
    qryCheckIndicatorID: TADOQuery;
    qryCheckIndicatorIDCnt: TIntegerField;
    ComboBox1: TComboBox;
    Label7: TLabel;
    SpeedButton2: TAdvGlowButton;
    QrLetterData: TADOQuery;
    QrLetterDataLetterDataID: TAutoIncField;
    QrLetterDataLetterID: TIntegerField;
    QrLetterDataPageNumber: TIntegerField;
    QrLetterDataImage: TBlobField;
    QrLetterDataextention: TWordField;
    QrLetterDataDescription: TWideStringField;
    QrLetterDataLastUpdate: TDateTimeField;
    QrLetterDataListItemsID: TIntegerField;
    QrLetterDataColorID: TIntegerField;
    qryCheckIndicatorIDLetterID: TIntegerField;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    btnInsertInCommingNo: TAdvGlowButton;
    LetterDataDescription: TStringField;
    lblCounter: TLabel;
    btnEditName: TAdvGlowButton;
    memInsert: TMemo;
    pnlMain: TPanel;
    procedure Button2Click(Sender: TObject);
    procedure FindLetterData(strInCommingNo, strIndicator, strFolderName, strFileName, strExt: string);
    //procedure FindLetterDataInCommingNo(strFolderName:string);
    procedure SBOpenClick(Sender: TObject);
    procedure btnInsertAndicatorClick(Sender: TObject);
    Procedure FillByFolder(strType : String; FolderName : String);
    Procedure Fill_New;
    procedure CBExtentionKeyPress(Sender: TObject; var Key: Char);
    procedure ShellTreeView1DblClick(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);

    //FUNCTION  FIND_EXTENTON(Extention:String):String;
    procedure BitBtn1Click(Sender: TObject);
    procedure ShellTreeView2Change(Sender: TObject; Node: TTreeNode);
    procedure btnInsertInCommingNoClick(Sender: TObject);
    function GetFileExt(FileExt : String):Integer;
    procedure btnEditNameClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    InportPath : String;
    FindFile, intCounter : Integer;
    InportSearchRec : TSearchRec;

    procedure DSiTrimWorkingSet;
  public
   LetterID : Integer;
  end;

var
   FillLetterData: TFillLetterData;

implementation

Uses Dmu,UMain,YShamsiDate,BusinessLayer, FolderToLetterDM;

{$R *.dfm}

var
  Errors, Inserted, OpenedFiles, Folder, Delimeter, Extention : String;

procedure TFillLetterData.Button2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFillLetterData.SBOpenClick(Sender: TObject);
begin
   inherited;
//   if SelectDirectory(_yeganeh,'',s) then
      //EditPath.Text := S+'\';
//     EditPath.Text := S;
  ShellTreeView1.Visible:=True;
end;
{
function TFillLetterData.FIND_EXTENTON(Extention:String):String;
var
  QRY : TADOQuery;
begin
  Extention := UpperCase(Extention);
  QRY := TADOQuery.Create(nil);
  QRY.Connection := Dm.YeganehConnection;
  QRY.Close;
  QRY.SQL.Clear;
  QRY.SQL.Add('SELECT Top 1 EXTENTIONID FROM dbo.Extention WHERE UPPER(Extention) = '''+Extention+''' ');
  QRY.Open;

  if QRY.RecordCount = 1 then
    Result := QRY.FIELDBYNAME('EXTENTIONID').AsString
  else
    Result := '-1';
  FreeAndNil(QRY);
//
end;
}
procedure TFillLetterData.btnInsertAndicatorClick(Sender: TObject);
begin
  inherited;

  intCounter := 0;
  lblCounter.Caption := IntToStr(intCounter);

  if Trim(EditPath.Text)='' then
  begin
    MBaseForm.MessageShowString('·ÿ›« "›·œ— Õ«ÊÌ  ’«ÊÌ—" —« „ﬁœ«— œÂÌ ‰„«ÌÌœ', False);
    EditPath.SetFocus;
    Exit;
  end;

  if Trim(Edit3.Text) = '' then
    Edit3.Text := '-';

  Delimeter := Edit3.Text;
  if not messageShow(46,True) then
    Exit;

  Errors := '';
  Inserted := '';
  OpenedFiles := '';

  Screen.Cursor := crSQLWait;

  FillByFolder('Ind', EditPath.Text);

  memUpdate.Text := OpenedFiles;
  memInsert.Text := Inserted;
  memFail.Text := Errors;

  Screen.Cursor := crDefault;
end;

procedure TFillLetterData.CBExtentionKeyPress(Sender: TObject; var Key: Char);
begin
   inherited;
   Key := #0;
end;

procedure TFillLetterData.ShellTreeView1DblClick(Sender: TObject);
begin
  inherited;
//  ShowMessage( ShellTreeView1.SelectedFolder.PathName );
  EditPath.Text := ShellTreeView1.SelectedFolder.PathName;
  ShellTreeView1.Visible:=False;
{    if (DMFolderToLetter.QrLetter.Active)And(DMFolderToLetter.QrLetter.RecordCount > 0) then
      DMFolderToLetter.QrLetter.Locate('IncommingNO',ShellTreeView1.Selected.Text,[]);
 }
end;

procedure TFillLetterData.Panel2Click(Sender: TObject);
begin
  inherited;
  if ShellTreeView1.Visible=True then
    ShellTreeView1.Visible:=False;
end;

procedure TFillLetterData.FormCreate(Sender: TObject);
begin
  inherited;
  ShellTreeView1.Top := 67;
  ShellTreeView1.left := 16;
  ShellTreeView1.Height := 222;
  DMFolderToLetter := TDMFolderToLetter.Create(Self);
end;

procedure TFillLetterData.BitBtn1Click(Sender: TObject);
begin
  inherited;
  Delimeter := '-';

  if not messageShow(46,True) then
    Exit;

  Fill_New;
  Memo3.Text := OpenedFiles;
  Memo4.Text := Errors;
end;

procedure TFillLetterData.Fill_New;
var
   I,R : Integer;
   Path,Root,fullFileName,name,RootName,Extention :string;
   SrRec : TSearchRec;
   b,c,d: Integer;

begin
  OpenedFiles := '';
  Errors := '';
  QrLetterData.Close;
  QrLetterData.Parameters.ParamByName('LetterID').Value := 0;
  QrLetterData.Open;

     //*******************************************************
  if ShellTreeView2.Selected.GetLastChild.Index = -1 then
  begin
    ShowMessage('ÂÌç “Ì— ÅÊ‘Â «Ì Ì«›  ‰‘œ ° ·ÿ›« ”—‘«ŒÂ «’·Ì —« «‰ Œ«» ‰„«ÌÌœ');
    Screen.Cursor := crDefault;
//      SBConvert.Enabled := True;
    Exit;
  end;

  for I:=0 to 0 do
  begin
    Root := ShellTreeView2.Path;//+'\'+ShellTreeView2.Selected.Item[j].Text;
    RootName := extractfilename  (Root);
//       ShowMessage(RootName);
    qryCheckIndicatorID.Close;
    qryCheckIndicatorID.Parameters.ParamByName('myear').Value := dm.CurrentMyear;
    qryCheckIndicatorID.Parameters.ParamByName('IndicatorID').Value := StrToInt(RootName);
    qryCheckIndicatorID.Parameters.ParamByName('SecretariatID').Value := Dm.SecID;
    qryCheckIndicatorID.Open;

    if qryCheckIndicatorIDCnt.AsInteger < 1   then
    begin
      ShowMessage('‰«„Â «Ì »« ‘„«—Â «‰œÌò« Ê—' + ' ' + RootName + ' ' + 'Ì«›  ‰‘œ');
      Abort;
      Exit;
    end;

  end;

  for I:=0 to ShellTreeView2.Selected.GetLastChild.Index do
  begin
    Path := ShellTreeView2.Path+'\'+ShellTreeView2.Selected.Item[I].Text;;
    Extention := ComboBox1.Text;
    R := FindFirst(Path+'\*.'+Extention , FaAnyfile, SrRec); //
    if R <> 0 then //«ê— ›«Ì· ÅÌœ« ‰‘œ
    begin
      fullFileName := Path;//'D:\DataBase\¬»Ì_5000';
      name := extractfilename  (fullFileName);
      Errors := Errors + ',' + name;
      Continue;
    end;

    while R = 0 do //0: ÅÌœ« ﬂ—œ‰ ›«Ì·
    begin
      fullFileName := Path;//'D:\DataBase\¬»Ì_5000';
      name := extractfilename(fullFileName);
      //ShowMessage(name);
      c:= AnsiPos('_',name)  ;
      b :=  Length(name);
      d := strtoint(copy(name,c + 1, b));
      QrLetterData.Append;
      QrLetterDataLetterID.AsInteger := qryCheckIndicatorIDLetterID.AsInteger;
      if QrLetterData.State = dsInsert then
        QrLetterDataPageNumber.AsInteger := Dm.YeganehConnection.Execute('Select IsNull(Max(PageNumber),0)+1 As NextPageNumber '+
            ' from LetterData Where LetterID = '+QrLetterDataLetterID.AsString).Fields[0].value;
      QrLetterDataImage.LoadFromFile(Path+'\'+SrRec.Name);
      QrLetterDataExtention.AsInteger := 1; //Jpg=1 , Tif=2
      QrLetterDataLastUpdate.AsDateTime := Now;
      QrLetterDataDescription.AsString := Path;
      QrLetterDataColorID.AsInteger := d;
      QrLetterData.Post;
      OpenedFiles := OpenedFiles + ',' + name;
      R := FindNext(SrRec);
    end;
  end;
      { else //Ê –ŒÌ—Â œ— œÌ «»Ì” Jpg »Â Tif  «»⁄  »œÌ·
                         ChangeTifToJpgAndSave(Path+'\'+SrRec.Name);
                      R := FindNext(SrRec);}
  ShowMessage('«‰ ﬁ«· ⁄ò” »« „Ê›ﬁÌ  «‰Ã«„ ‘œ');
  {   Abort;
     Exit}
     //*******************************************************
end;

procedure TFillLetterData.ShellTreeView2Change(Sender: TObject;Node: TTreeNode);
var
   Extention : String[3];
begin
  inherited;
  InportPath := ShellTreeView2.Path+'\';
  FindFile := FindFirst(InportPath+'\*.'+Extention, FaAnyfile, InportSearchRec);  ///
end;

procedure TFillLetterData.btnInsertInCommingNoClick(Sender: TObject);
var
 I,J, FindResult, x, PageNumber : Integer;
 Path ,ServerPath: String;
 SrRec : TSearchRec;
 BLKQry, LetterQry : TADOQuery;
begin
  inherited;
  { TODO -oparsa : 14030105 }
  ServerPath := _ApplicationPath + 'tmpFileBulkInsert.' + CBExtention.Text  ;
  { TODO -oparsa : 14030105 }

  intCounter := 0;
  lblCounter.Caption := IntToStr(intCounter);

  if Trim(EditPath.Text) = '' then
  begin
    MBaseForm.MessageShowString('·ÿ›« "›·œ— Õ«ÊÌ  ’«ÊÌ—" —« „ﬁœ«— œÂÌ ‰„«ÌÌœ', False);
    EditPath.SetFocus;
    Exit;
  end;

  if Trim(Edit3.Text) = '' then
    Edit3.Text := '-';

  Delimeter := Edit3.Text;
  if not messageShow(46, True) then
    Exit;

  Errors := '';
  Inserted := '';
  OpenedFiles := '';

  try
   LetterQry := TADOQuery.Create(Self);
   LetterQry.Connection := Dm.YeganehConnection;
   LetterQry.Close;
   LetterQry.SQL.Text := 'Select 1 From Letter Where IncommingNO = ' + QuotedStr(ExtractFileName(EditPath.Text));
   LetterQry.Open;
   if LetterQry.IsEmpty then
    LetterID := 0;
  finally
   FreeAndNil(LetterQry);
  end;

  if LetterID = 0 then
  begin
   with DMFolderToLetter do
   begin
    QrLetter.Close;
    QrLetter.Open;
    QrLetter.Append;
    QrLetterIndicatorID.AsInteger := Dm.LastIndicatorID(1,1); //LetterFormat:=1;
    QrLetterRegistrationDate.AsString := _Today;
    QrLetterRegistrationTime.AsString := Dm.GetServerTime;
    QrLetterIncommingNO.AsString := ExtractFileName(EditPath.Text); //‰«„ ÅÊ‘Â
    QrLetterIncommingdate.AsString := _Today;
    QrLetterMemo.AsString := ' »œÌ· ÅÊ‘Â »Â ”‰œ' + '  -  „”Ì— ÅÊ‘Â :  ' + Path;
    QrLetterClassificationID.AsInteger := Dm.DefaultRClassificationID;
    QrLetterUrgencyID.AsInteger := Dm.DefaultRUrgencyID    ;
    QrLetterNumberOfPage.AsInteger := Dm.DefaultNumberOfPage ;
    QrLetterReceiveTypeID.AsInteger := Dm.DefaultRReceiveTypeID;
    QrLetterFromOrgID.AsInteger := Dm.DefaultRFromOrgId;
    QrLetterMYear.AsInteger := Dm.CurrentMyear;
    QrLetterletterformat.AsInteger := 1;//LetterFormat;
    QrLetterSecretariatID.AsInteger := Dm.SecId;
    QrLetterUserID.AsInteger := _UserId;
    QrLetterLetter_Type.AsInteger := 1;
    QrLetterFinalized.AsBoolean := True;
    QrLetterToOrgID.AsInteger := _UserFromOrgID;
    QrLetterHas_Page.AsBoolean := True;
    QrLetter.Post;
    LetterID := QrLetterLetterID.AsInteger;
   end;
  end;
  FindResult:=FindFirst(EditPath.Text+'\*.jpg', faAnyFile, SrRec);
  J := 0;
  while FindResult = 0 do
  begin
   try
    Extention := '1';
    BLKQry := TADOQuery.Create(Self);
    BLKQry.Connection := Dm.YeganehConnection;
    BLKQry.Close;
    PageNumber := Dm.YeganehConnection.Execute('Select IsNull(Max(PageNumber),0)+1 As NextPageNumber from LetterData Where LetterID = '+IntToStr(LetterID)).Fields[0].value;
    { TODO -oparsa : 14030105 }
    if FileExists(ServerPath)then
      DeleteFile(pchar(ServerPath));
    if not CopyFile(Pchar(EditPath.Text+'\'+SrRec.Name), Pchar(ServerPath), false) then
       RaiseLastOSError;
    if OpenedFiles = '' then
      OpenedFiles :=  SrRec.Name
    else OpenedFiles :=  OpenedFiles + ',' + SrRec.Name  ;
    if FileExists(ServerPath)then
    { TODO -oparsa : 14030105 }
    BLKQry.SQL.Text := ' INSERT INTO LetterData(LetterID,PageNumber,Extention,LastUpdate,[Description],[Image]) ' +
                       ' SELECT ' + IntToStr(LetterID) + ',' +
                         IntToStr(PageNumber) +
                         ',' + Extention + ',' + DateToStr(Now) + ',' + QuotedStr(ExtractFileName(EditPath.Text+'\'+SrRec.Name))+
                         //', * FROM OPENROWSET(BULK N' + QuotedStr(EditPath.Text+'\'+SrRec.Name) + ', SINGLE_BLOB) AS Document ';
                         ', * FROM OPENROWSET(BULK N' + QuotedStr(ServerPath) + ', SINGLE_BLOB) AS Document ';
    BLKQry.ExecSQL;
    Inc(J);
    lblCounter.Caption := IntToStr(J);
   finally
    FreeAndNil(BLKQry);
   end;
   FindResult := FindNext(SrRec);
  end;

  FindResult:=FindFirst(EditPath.Text+'\*.tif', faAnyFile, SrRec);
  J := 0;
  while FindResult = 0 do
  begin
   try
    Extention := '2';
    BLKQry := TADOQuery.Create(Self);
    BLKQry.Connection := Dm.YeganehConnection;
    BLKQry.Close;
    PageNumber := Dm.YeganehConnection.Execute('Select IsNull(Max(PageNumber),0)+1 As NextPageNumber from LetterData Where LetterID = '+IntToStr(LetterID)).Fields[0].value;
    { TODO -oparsa : 14030105 }
    if FileExists(ServerPath)then
      DeleteFile(pchar(ServerPath));
    if not CopyFile(Pchar(EditPath.Text+'\'+SrRec.Name), Pchar(ServerPath), false) then
       RaiseLastOSError;
    if OpenedFiles = '' then
      OpenedFiles :=  SrRec.Name
    else OpenedFiles :=  OpenedFiles + ',' + SrRec.Name  ;
    if FileExists(ServerPath)then
    { TODO -oparsa : 14030105 }
    BLKQry.SQL.Text := ' INSERT INTO LetterData(LetterID,PageNumber,Extention,LastUpdate,[Description],[Image]) ' +
                       ' SELECT ' + IntToStr(LetterID) + ',' +
                         IntToStr(PageNumber) +
                         ',' + Extention + ',' + DateToStr(Now) + ',' + QuotedStr(ExtractFileName(EditPath.Text+'\'+SrRec.Name))+
                         //', * FROM OPENROWSET(BULK N' + QuotedStr(EditPath.Text+'\'+SrRec.Name) + ', SINGLE_BLOB) AS Document ';
                         ', * FROM OPENROWSET(BULK N' + QuotedStr(ServerPath) + ', SINGLE_BLOB) AS Document ';
    BLKQry.ExecSQL;
    Inc(J);
    lblCounter.Caption := IntToStr(J);
   finally
    FreeAndNil(BLKQry);
   end;
   FindResult := FindNext(SrRec);
  end;

  FindResult:=FindFirst(EditPath.Text+'\*.tiff', faAnyFile, SrRec);
  J := 0;
  while FindResult = 0 do
  begin
   try
    Extention := '2';
    BLKQry := TADOQuery.Create(Self);
    BLKQry.Connection := Dm.YeganehConnection;
    BLKQry.Close;
    PageNumber := Dm.YeganehConnection.Execute('Select IsNull(Max(PageNumber),0)+1 As NextPageNumber from LetterData Where LetterID = '+IntToStr(LetterID)).Fields[0].value;
    { TODO -oparsa : 14030105 }
    if FileExists(ServerPath)then
      DeleteFile(pchar(ServerPath));
    if not CopyFile(Pchar(EditPath.Text+'\'+SrRec.Name), Pchar(ServerPath), false) then
       RaiseLastOSError;
    if OpenedFiles = '' then
      OpenedFiles :=  SrRec.Name
    else OpenedFiles :=  OpenedFiles + ',' + SrRec.Name  ;
    if FileExists(ServerPath)then
    { TODO -oparsa : 14030105 }
    BLKQry.SQL.Text := ' INSERT INTO LetterData(LetterID,PageNumber,Extention,LastUpdate,[Description],[Image]) ' +
                       ' SELECT ' + IntToStr(LetterID) + ',' +
                         IntToStr(PageNumber) +
                         ',' + Extention + ',' + DateToStr(Now) + ',' + QuotedStr(ExtractFileName(EditPath.Text+'\'+SrRec.Name))+
                         //', * FROM OPENROWSET(BULK N' + QuotedStr(EditPath.Text+'\'+SrRec.Name) + ', SINGLE_BLOB) AS Document ';
                         ', * FROM OPENROWSET(BULK N' + QuotedStr(ServerPath) + ', SINGLE_BLOB) AS Document ';
    BLKQry.ExecSQL;
    Inc(J);
    lblCounter.Caption := IntToStr(J);
   finally
    FreeAndNil(BLKQry);
   end;
   FindResult := FindNext(SrRec);
  end;


  memUpdate.Text := OpenedFiles;
  memInsert.Text := Inserted;
  memFail.Text := Errors;

  ShowMessage('«‰ ﬁ«· ⁄ò” »« „Ê›ﬁÌ  «‰Ã«„ ‘œ');
end;
{
procedure TFillLetterData.FindLetterDataInCommingNo(strFolderName:string);
Var
  strInCommingNo, strFileName, strExt : String;
  searchResult: TSearchRec;
  IndicatorID , LetterID ,NextPageNumber: Integer;
begin

  strInCommingNo := Copy(strFolderName, LastDelimiter('\', strFolderName) + 1, length(strFolderName));

  LetterID := Exec_get_LetterID_ByInCommingNo(strInCommingNo,1,0,Dm.SecId);//DM.CurrentMyear
  if LetterID = 0 then
  begin
    Errors := Errors + ',' + strFolderName;
    Exit;
  end;

  IndicatorID := Exec_get_indicatorID_ByLetterID(LetterID);

  with LetterData,Parameters do
  begin
    Close;
    ParamByName('@secID').Value := Dm.SecId;
    ParamByName('@Myear').Value := Dm.CurrentMyear;
    ParamByName('@IndicatorID').Value := IndicatorID;
    Open;

    NextPageNumber := StrToIntDef(Qry_GetResult('Select IsNull(Max(PageNumber),0)+1 As NextPageNumber '+
                       ' from LetterData Where LetterID = ' + IntToStr(LetterID),Dm.YeganehConnection),1);

    strFolderName := IncludeTrailingPathDelimiter(strFolderName);

    if SysUtils.FindFirst(strFolderName + '*.*', faAnyFile, searchResult) = 0 then
    begin
      repeat
        strFileName := searchResult.Name;
        strExt := Copy(strFileName, LastDelimiter('.', strFileName) + 1, Length(strFileName));

        if GetFileExt(strExt) > 0 then
        begin
          LetterData.Insert;
          FieldByName('LetterID').AsInteger := LetterID;
          LetterDataPageNumber.AsInteger := NextPageNumber;
          LetterDataextention.AsInteger  := GetFileExt(Extention);
          LetterDataImage.LoadFromFile(strFolderName + strFileName);
          Post;

          NextPageNumber := NextPageNumber + 1;
        end;
        //else
        //begin
        //  Errors := Errors + strInCommingNo + ',';
        //end;
      until (SysUtils.FindNext(searchResult) <> 0);
      SysUtils.FindClose(searchResult);
      OpenedFiles := OpenedFiles + strInCommingNo + ',';
    end;
  end;
end;
}
function TFillLetterData.GetFileExt(FileExt: String): Integer;
var
  AQry : TADOQuery;
begin

  AQry := TADOQuery.Create(nil);
  try
    AQry.Connection := Dm.YeganehConnection;
    AQry.Close;
    AQry.SQL.Text := 'Select top 1 ExtentionId From Extention Where UPPER(Extention) = ' + QuotedStr(FileExt);
    AQry.Open;
    if AQry.RecordCount > 0 then
      Result := AQry.FieldByName('ExtentionId').AsInteger
    else
      Result := -1;
  finally
    FreeAndNil(AQry);
  end;
end;

procedure TFillLetterData.FillByFolder(strType : String; FolderName : String);
var
  FileName, subFolder, ext: String;
  srFolder, srFile : TSearchRec;
begin
  inherited;
  FolderName := ExtractFilePath(FolderName);

  try
    if FindFirst(FolderName + '*.*', faAnyFile, srFolder) = 0 then
    begin
      repeat
        if ((srFolder.Name <> '.') and (srFolder.Name <> '..')) then
        begin
          if (srFolder.Attr = faDirectory) then
          begin
            subFolder := FolderName + srFolder.Name + '\';
            Errors := '';
            OpenedFiles := '';
            try
              if FindFirst(subFolder + '*.*', faAnyFile, srFile) = 0 then
              begin
                Repeat
                  if ((srFile.Attr <> faDirectory) and (srFile.Name <> '.') and (srFile.Name <> '..')) then
                  begin

                    FileName := ExtractFileName(srFile.Name);

                    ext := ExtractFileExt(FileName);
                    ext := Copy(ext, 2, Length(ext));

                    FileName := COPY(FileName,1,POS('.', FileName) - 1);
                    if (strType = 'Ind') then
                      FindLetterData('', srFolder.Name, subFolder, FileName, ext)
                    else
                      FindLetterData(srFolder.Name, '', subFolder, FileName, ext);

                    Application.ProcessMessages;
                  end;
                until (FindNext(srFile) <> 0);
              end;
            finally
              FindClose(srFile);
            end;{Directory}
          end
          else
          begin
            FileName := ExtractFileName(srFolder.Name);

            ext := ExtractFileExt(FileName);
            ext := Copy(ext, 2, Length(ext));

            FileName := COPY(FileName,1,POS('.', FileName) - 1);

            if (strType = 'Inc') then
              FindLetterData('', FileName, FolderName, FileName, ext)
            else
              FindLetterData(FileName, '', FolderName, FileName, ext);

            Application.ProcessMessages;
          end;{File}
        end
      until (FindNext(srFolder) <> 0)
    end;
  finally
    FindClose(srFolder);
    Screen.Cursor := crDefault;
  end;
end;

procedure TFillLetterData.FindLetterData(strInCommingNo, strIndicator, strFolderName, strFileName, strExt: string);
var
  j , IndicatorID , LetterID ,NextPageNumber, intExt: Integer;
  strFile, strMemo : String;
begin
  if strInCommingNo = '' then
  begin
    j := pos(Delimeter, strIndicator);
    if j = 0 then
      try
        IndicatorID := StrToInt(strIndicator);
      except
        Errors := Errors + ',' + strIndicator;
        Exit;
      end
    else
      try
        IndicatorID := StrToInt(copy(strIndicator,1,j-1));
        except
          Errors := Errors + ',' + strIndicator;
          Exit;
        end;

    LetterID := Exec_Get_LetterID_ByIndicatorID(IndicatorID,0,0,Dm.CurrentMyear,Dm.SecId);
  end
  else
  begin
    LetterID := Exec_get_LetterID_ByInCommingNo(strInCommingNo,1,Dm.CurrentMyear,Dm.SecId);
  end;

  if LetterID = 0 then
  begin
    if Trim(strIndicator) = '' then
      IndicatorID := Exec_get_LastIndicatorID(1, 1, Dm.CurrentMyear, Dm.SecId);

    if Trim(strInCommingNo) = '' then
      strInCommingNo := IntToStr(IndicatorID);

    strMemo := ' »œÌ· ÅÊ‘Â »Â ”‰œ' + '  -  „”Ì— ÅÊ‘Â :  ' + strFolderName;
    LetterID  := Exec_insert_Letter(IndicatorID, Dm.CurrentMyear, Dm.SecId, 1, 1, strMemo, _UserId, _Today, Dm.GetServerTime,
                              strInCommingNo, _Today, Dm.DefaultRClassificationID, Dm.DefaultRUrgencyID, Dm.DefaultNumberOfPage, Dm.DefaultRReceiveTypeID,
                              Dm.DefaultRFromOrgId, _UserFromOrgID, True, True, False, False);

    Inserted := Inserted + ',' + strIndicator;
  end;

  strFile := strFolderName + strFileName + '.' + strExt;

  NextPageNumber := StrToIntDef(Qry_GetResult('Select IsNull(Max(PageNumber),0)+1 As NextPageNumber '+
                     ' from LetterData Where LetterID = ' + IntToStr(LetterID),Dm.YeganehConnection),1);

  intExt := GetFileExt(strExt);
  if intExt > 0 then
  begin
    Exec_insert_LetterData(LetterID, NextPageNumber, intExt, strFile, strFile);
    intCounter := intCounter + 1;
    lblCounter.Caption := IntToStr(intCounter);
    OpenedFiles := OpenedFiles + ',' + strFileName;
    //DSiTrimWorkingSet;
  end
  else
    ShowMessage('«Ì‰ ‰Ê⁄ «“ ›«Ì· œ— ﬁ”„   ⁄—Ì› «‰Ê«⁄ ›«Ì· Â«Ì ÅÌÊ”   ⁄—Ì› ‰‘œÂ «”  ø');

end;

procedure TFillLetterData.DSiTrimWorkingSet;
var
  hProcess: THandle;
begin
  hProcess := OpenProcess(PROCESS_SET_QUOTA, false, GetCurrentProcessId);
  try
    SetProcessWorkingSetSize(hProcess, $FFFFFFFF, $FFFFFFFF);
  finally
    CloseHandle(hProcess);
  end;
end;

procedure TFillLetterData.btnEditNameClick(Sender: TObject);
begin
  inherited;
  if FileExists('DirNameChange.exe') then
    ShellExecute(Handle, 'open', 'DirNameChange.exe', nil, nil, SW_SHOWNORMAL)
  else
    ShowMessage('»—‰«„Â „Ê—œ ‰Ÿ— œ— ò‰«— »—‰«„Â ¬—‘ÌÊ ÊÃÊœ ‰œ«—œ');
end;

procedure TFillLetterData.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
 AQry : TADOQuery;
begin
  inherited;
  AQry := TADOQuery.Create(nil);
  try
    AQry.Connection := Dm.YeganehConnection;
    AQry.Close;
    AQry.SQL.Text := ' update letter set Has_Page = dbo.has_Page(letterid), ' +
                     ' Has_WordPage = dbo.has_WordPage(letterid), ' +
                     ' Has_File = dbo.has_file(letterid) from Letter Where LetterID = ' + IntToStr(LetterID);
    AQry.ExecSQL;
  finally
    FreeAndNil(AQry);
  end;
  FreeAndNil(DMFolderToLetter);
end;

end.
