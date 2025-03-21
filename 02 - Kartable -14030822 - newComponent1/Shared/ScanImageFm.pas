
unit ScanImageFm;

interface

uses
  BaseUnit,Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, ComCtrls, StdCtrls, Mask, Buttons, DB, ADODB,
  ExtDlgs, xpWindow, ExtActns, ActnList, DBActns, XPStyleActnCtrls, ActnMan,
  ieview, imageenview, dbimageen, ievect, dbimageenvect,
  rulerbox, iegradientbar, histogrambox, iemview, iemio,
  imageenproc, imageen, dbcgrids, imageenio, Spin , FileCtrl ,
  ShellApi , hyieutils ,hyiedefs , Printers, OleCtrls, ScanLibCtl_TLB,
  Grids, DBGrids, YRotateLabel, YDbgrid, Menus, IdBaseComponent, IdCoder,
  IdCoder3to4, IdCoderMIME, OleServer, ImageDllLib_TLB, TntDialogs,
  TntExtDlgs,clipbrd, AppEvnts, AdvGlowButton, CurvyControls;

type
  TFmScanImage = class(TMBaseForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    DBN1: TDBNavigator;
    xpBitBtn1: TAdvGlowButton;
    FitToPage: TAdvGlowButton;
    btnWidthSize: TAdvGlowButton;
    btnActualSize: TAdvGlowButton;
    ActionManager1: TActionManager;
    Aclose: TAction;
    Aprintt: TAction;
    Scan: TAction;
    OpenFile: TAction;
    ADelete: TAction;
    SaveAs: TAction;
    Timer: TTimer;
    ColorDialog: TColorDialog;
    SavePictureDialog: TSavePictureDialog;
    OpenPictureDialogT: TOpenPictureDialog;
    ImageEnIO1: TImageEnIO;
    xpBitBtn2: TAdvGlowButton;
    BBScan: TAdvGlowButton;
    BBSaveToFile: TAdvGlowButton;
    ImageEnProc1: TImageEnProc;
    Label2: TLabel;
    BBSaveAllToFiles: TAdvGlowButton;
    BBOpenFile: TAdvGlowButton;
    ColorDialog1: TColorDialog;
    ImageEnDBVect1: TImageEnDBVect;
    ImageEnMView1: TImageEnMView;
    FontDialog1: TFontDialog;
    LabelZoom: TLabel;
    ImageEnMIO1: TImageEnMIO;
    SBSettings: TAdvGlowButton;
    BitBtn1: TAdvGlowButton;
    ActSelScanner: TAction;
    BBAllScanImage: TAdvGlowButton;
    Panel8: TPanel;
    Label5: TLabel;
    btnSearchPhoto: TAdvGlowButton;
    DBLkCBListItemsID: TDBLookupComboBox;
    DBENotes: TDBEdit;
    Label6: TLabel;
    SBGoToPAge: TAdvGlowButton;
    Timer1: TTimer;
    ASaveAll: TAction;
    Action1: TAction;
    SBReplacePic: TAdvGlowButton;
    SBDelAllData: TAdvGlowButton;
    SpeedButton7: TAdvGlowButton;
    Panel6: TPanel;
    PageControl1: TPageControl;
    BrushTab: TTabSheet;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton10: TSpeedButton;
    Label1: TLabel;
    Label7: TLabel;
    SBBrush: TSpeedButton;
    SBZoom: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Bevel2: TBevel;
    Bevel1: TBevel;
    Bevel3: TBevel;
    SBResize: TSpeedButton;
    BBUndo: TAdvGlowButton;
    BitBtn9: TSpeedButton;
    BitBtn3: TAdvGlowButton;
    BitBtn7: TAdvGlowButton;
    SpinEdit1: TSpinEdit;
    BitBtn2: TSpeedButton;
    CBHideObjects: TCheckBox;
    RGPenType: TRadioGroup;
    SEBrushSize: TSpinEdit;
    BrushColor: TPanel;
    YRotateLabel1: TYRotateLabel;
    YRotateLabel2: TYRotateLabel;
    Panel7: TPanel;
    acShowAllPages: TAction;
    acShowSelectedPages: TAction;
    PopupMenu1: TPopupMenu;
    acShowNotColorPages: TAction;
    N5: TMenuItem;
    acAttachColor: TAction;
    qAttachColor: TADOQuery;
    qGetColor: TADOQuery;
    qGetColorColor: TStringField;
    PageControl2: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    dsqSelectedColor: TDataSource;
    PopupMenu2: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    DBColor: TDBEdit;
    QCheckActionAccess: TADOQuery;
    QCheckActionAccessHasAccess: TBooleanField;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    acDeAttachColor: TAction;
    N9: TMenuItem;
    ImageEnDBView1: TImageEnDBView;
    ImgScan: TImgScan;
    ImageEnVect1: TImageEnVect;
    ImageEnView1: TImageEnView;
    Edit2: TCurvyEdit;
    IdDecoderMIME1: TIdDecoderMIME;
    PanelRecommite: TPanel;
    BitBtn4: TAdvGlowButton;
    BitBtn5: TAdvGlowButton;
    BitBtn6: TAdvGlowButton;
    Bevel5: TBevel;
    Bevel4: TBevel;
    Bevel6: TBevel;
    QrLetterData: TADOQuery;
    QrLetterDataRecCount_Calc: TIntegerField;
    QrLetterDataLetterDataID: TAutoIncField;
    QrLetterDataLetterID: TIntegerField;
    QrLetterDataPageNumber: TIntegerField;
    DSLetterData: TDataSource;
    QrSelImage: TADOQuery;
    QrSelImageLetterDataID: TAutoIncField;
    QrSelImageLetterID: TIntegerField;
    QrSelImageImage: TBlobField;
    QrSelImageextention: TWordField;
    QrSelImageDescription: TWideStringField;
    QrSelImageLastUpdate: TDateTimeField;
    QrSelImageImageSize_Calc: TStringField;
    QrSelImageListItemsID: TIntegerField;
    QrSelImagePageNumber: TIntegerField;
    QrSelImageIsCorrectedImage: TBooleanField;
    DSSelImage: TDataSource;
    SPAllImage: TADOStoredProc;
    SPAllImageLetterDataID: TAutoIncField;
    SPAllImageLetterID: TIntegerField;
    SPAllImageImage: TBlobField;
    SPAllImageextention: TWordField;
    SPAllImageDescription: TWideStringField;
    SPAllImageLastUpdate: TDateTimeField;
    SPAllImagePageNumber: TIntegerField;
    DSAllImage: TDataSource;
    qrInsertLetterData: TADOQuery;
    QrDelLetterData: TADOQuery;
    QrListItems: TADOQuery;
    QrListItemsListItemsID: TAutoIncField;
    QrListItemsListID: TWordField;
    QrListItemsKeyValue: TIntegerField;
    QrListItemsTitle: TWideStringField;
    QrListItemsNotes: TWideStringField;
    QrListItemsUsersID: TIntegerField;
    DSListItems: TDataSource;
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
    quImageVersionNo: TStringField;
    quImageVersionDate: TStringField;
    qrUpdateLetterData: TADOQuery;
    ActionManager2: TActionManager;
    Apost: TDataSetPost;
    DataSetCancel2: TDataSetCancel;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    NewPage: TAction;
    AEdit: TDataSetEdit;
    Action6: TAction;
    Action7: TAction;
    Action8: TAction;
    Action9: TAction;
    Action10: TAction;
    Action11: TAction;
    Action12: TAction;
    Action13: TAction;
    Action14: TAction;
    SBPolyLine: TSpeedButton;
    lblCount: TCurvyEdit;
    SaveDialog1: TSaveDialog;
    QrLetterDataArchiveID: TIntegerField;
    QrLetterDataisDocument: TBooleanField;
    OpenPictureDialog: TTntOpenPictureDialog;
    TimerCleanClipboard: TTimer;
    ImgScan1: TImgScan;
    ADOQuery1: TADOQuery;
    quImageFILENAME: TWideStringField;
    QrSelImageFileName: TStringField;
    QrSelImageIsTemplate: TBooleanField;
    pnlMain: TPanel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBN1Click(Sender: TObject; Button: TNavigateBtn);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure FitToPageClick(Sender: TObject);
    procedure btnWidthSizeClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure OpenFileExecute(Sender: TObject);
    procedure SaveAsExecute(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure ImageEnDBView3Click(Sender: TObject);
    procedure DBN1BeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure ScanExecute(Sender: TObject);
    procedure BrushColorClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);


    procedure CreateBrush(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure ImageEnMView1ImageSelect(Sender: TObject; idx: Integer);
    procedure RGOperationClick(Sender: TObject);
    procedure RGPenTypeClick(Sender: TObject);
    procedure SEBrushSizeChange(Sender: TObject);
    procedure ImageEnDBVect1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ImageEnDBVect1MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure btnActualSizeClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SBZoomClick(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure ImageEnDBVect1NewObject(Sender: TObject; hobj: Integer);
    procedure ImageEnDBVect1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SignPicExecute(Sender: TObject);
    procedure CBHideObjectsClick(Sender: TObject);
    procedure BBUndoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SBBrushClick(Sender: TObject);
    procedure SBSettingsClick(Sender: TObject);
    procedure AprinttExecute(Sender: TObject);
    procedure BBAllScanImageClick(Sender: TObject);
    procedure ActSelScannerExecute(Sender: TObject);
    procedure btnSearchPhotoClick(Sender: TObject);
    procedure SBResizeClick(Sender: TObject);
    procedure SBDelAllDataClick(Sender: TObject);
    procedure SBGoToPageClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ASaveAllExecute(Sender: TObject);
    procedure SBReplacePicClick(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure YRotateLabel1Click(Sender: TObject);
    procedure YRotateLabel2Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure acShowSelectedPagesExecute(Sender: TObject);
    procedure acShowAllPagesExecute(Sender: TObject);
    procedure acShowNotColorPagesExecute(Sender: TObject);
    procedure acAttachColorExecute(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure PageControl2Change(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBColorChange(Sender: TObject);
    procedure YRotateLabel4Click(Sender: TObject);
    procedure acDeAttachColorExecute(Sender: TObject);
    procedure ImageEnVect1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ImageEnVect1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImageEnVect1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ImageEnVect1NewObject(Sender: TObject; hobj: Integer);
    procedure ImageEnVect1ViewChange(Sender: TObject; Change: Integer);
    procedure ImageEnDBView1ViewChange(Sender: TObject; Change: Integer);
    procedure lblCountClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure QrLetterDataAfterScroll(DataSet: TDataSet);
    procedure QrSelImageCalcFields(DataSet: TDataSet);
    procedure QrLetterDataBeforeScroll(DataSet: TDataSet);
    procedure QrListItemsAfterInsert(DataSet: TDataSet);
    procedure QrLetterDataCalcFields(DataSet: TDataSet);
    procedure DSSelImageDataChange(Sender: TObject; Field: TField);
    procedure QrSelImageAfterScroll(DataSet: TDataSet);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure SBPolyLineClick(Sender: TObject);
    procedure ImageEnDBVect1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImageEnDBVect1ViewChange(Sender: TObject; Change: Integer);
    procedure TimerCleanClipboardTimer(Sender: TObject);
    procedure ImageEnDBView1MouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure ImageEnDBView1ImageChange(Sender: TObject);
  private
    StartX , StartY , LastX , LastY:integer;
    LeyerIndex :integer;
    FShowImageTool: boolean;
    Procedure ControlEnabled(Anabled:Boolean);
    Procedure Exec_UserLog(ActionName:String);
    procedure FillData(aFileName:String);
    procedure EnableScan(aConAnable:Boolean);
    procedure SetTextFontColor;
    procedure ControlAnable(anable:Boolean);
    procedure ShowPageFromAll;
    procedure ShowNotPageFromAll;
    function  GetColor(ColorID:Integer):String;
    function  CheckAccessColors(ActionName:String):Boolean;
    procedure SetShowImageTool(const Value: Boolean);
    procedure UpdateLetterFromLetterData;
  public
    letterformat,ReceiveTypeID : integer;
    LetterID : Integer;
    RReadOnly : Boolean;
    NotUseSEBrushSize : Boolean;
    procedure ChangeMultyTifToTifsAndSave(aFileName:String);
    procedure ChangeJPGToTifAndSave(FileName:String);
    Procedure Close_Open_QrLetterData;
    procedure ShowPageCount;
    Property ShowImageTool: Boolean read FShowImageTool write SetShowImageTool;
    procedure LoadAndShow_SQL(filename : string);
//    procedure SetHeaderColor;
  end;

Var
  FmScanImage: TFmScanImage;
  flag : integer;
implementation

Uses Dmu,  YShamsiDate , BusinessLayer, UMain, UPagePreview,
  InsertText, AllScanImageFm, ImageDataFM, Settingsu, PicProgressFm,
  WaitPleaseFM, PrintFm, ScanImageDM, EZTwain;

{$R *.dfm}


Procedure TFmScanImage.Close_Open_QrLetterData;
begin
//   With DMScanImage do
//   begin
  QrLetterData.Close;
  QrLetterData.Parameters.ParamByName('Pa_LetterID').Value := LetterID;
  QrLetterData.Open;
  ImageEnDBView1.Update;
//   end;
end;


procedure TFmScanImage.EnableScan(aConAnable:Boolean);
begin
  inherited;
{  DataSetPost1.Enabled := aConAnable;
  Bpost.Enabled := aConAnable;

  EditBitBtn.Enabled := not aConAnable;
  AEDit.Enabled := not aConAnable;

  DataSetCancel1.Enabled := aConAnable;
  CancelBitBtn.Enabled := aConAnable;

  ScanBitBtn.Enabled := aConAnable;
  Scan.Enabled := aConAnable;

  WritePan.Visible := aConAnable;
  if _kartable then
     RecommitePanel.Visible := not aConAnable;
 }
end;

procedure TFmScanImage.FormShow(Sender: TObject);
begin
//FitToPageClick(Self);
  inherited;
////////////////////
////////////////////
  if not dm.GetActionAccess(SBDelAllData.name,Self.Tag) then
    SBDelAllData.Hide;

  if not dm.GetActionAccess(Adelete.Name,self.Tag) then
  begin
    dbn1.VisibleButtons := DBN1.VisibleButtons-[nbDelete];
    SBDelAllData.Enabled := false;
  end;

  if not dm.GetActionAccess(AEDit.Name,self.Tag) then
    dbn1.VisibleButtons := DBN1.VisibleButtons-[nbEdit];

  if not dm.GetActionAccess(Apost.Name,self.Tag) then
    dbn1.VisibleButtons := DBN1.VisibleButtons-[nbPost];

  if not dm.GetActionAccess(NewPage.Name,self.Tag) then
    dbn1.VisibleButtons := DBN1.VisibleButtons-[nbInsert];

  ShowImageTool:=false;

  Close_Open_QrLetterData;
//      LetterID2 := LetterID;

  QrListItems.Close;
  QrListItems.Parameters.ParamByName('UsersID').Value := _UserId;
  QrListItems.Open;

  ImageEnDBView1.Align := alClient;
  ImageEnDBView1.Repaint;
  DBNav_Setup(DBN1);

  ControlEnabled(False);
  BrushColor.Color := $00FF6C6C;

  ControlAnable(False);
  PageControl1.Enabled := False;

   //��� ����� �������
  if _Kartable then
  begin
    SBDelAllData.Visible := False;
  end
  else
  begin
    PanelRecommite.Visible := False;
  end;

   //�������
  if RReadOnly = True then
  begin
    Panel6.Visible := False;
    BBScan.Enabled := False;
    bitbtn1.Enabled := False;
    BBOpenFile.Enabled := False;
    DBN1.VisibleButtons := [nbFirst,nbPrior,nbNext,nbLast];
    DBN1.Width := 220;
  end;

  Align := alClient;

  Timer1.Enabled := True;

  ImageEnProc1.AttachedImageEn := ImageEnVect1;
  ImageEnIO1.AttachedImageEn   := ImageEnVect1;
  ImageEnMIO1.AttachedMView    := ImageEnMView1;

//  acShowNotColorPagesExecute(Application);



  //Ataie 990910
  // FitToPageClick(Self);
  //   FitToPageClick(Self);

  ImageEnDBView1.FitToWidth;

  case GetUserSetting('ImageSize') of
    0 : FitToPageClick(Self);
    1 : btnWidthSizeClick(Self);
    2 : btnActualSizeClick(Self);
    else  FitToPageClick(Self);
  end;
  flag := 0;

 //ImageEnDBView1.AutoFit := True;
 //ImageEnDBView1.SetFocus;
end;

procedure TFmScanImage.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   inherited;
//   With DMScanImage do
//   begin
      QrLetterData.Close;
      QrSelImage.Close;
      UpdateLetterFromLetterData;
//   end;
//   FreeAndNil(DMScanImage);
end;

procedure TFmScanImage.DBN1Click(Sender: TObject; Button: TNavigateBtn);
var
 AQry : TADOQuery;
begin
  inherited;
  if Button = nbInsert then
  begin
    if Not(QrSelImage.State = dsInsert) then
      QrSelImage.Append;
    ControlEnabled(True);
    Exec_insert_UserLog(Self.Tag,'InsertPicture',QrLetterDataLetterID.AsInteger);
  end;

  if Button = nbEdit then
  begin
    ControlEnabled(True);
    Exec_insert_UserLog(Self.Tag,'EditPicture',QrLetterDataLetterID.AsInteger);
//     Dm.Insert_LetterEdit(DMScanImage.QrLetterDataLetterID.AsInteger,'������ �����');
  end;

  if Button = nbCancel then
  begin
    DMScanImage.QrSelImage.Cancel;
    While ImageEnVect1.LayersCount > 1 do
      ImageEnVect1.LayersRemove(ImageEnVect1.LayersCount-1);
     //For Refresh Image
    ImageEnVect1.Refresh;
    ControlEnabled(False);
  end;

  if Button = nbDelete then
  begin
   //Exec_insert_UserLog(Self.Tag,'DeleteOnePicture',QrLetterDataLetterID.AsInteger);
     //������� ��� DBN1BeforeAction ���� ���� ��� ������ �� ������
  end;


//  ImageEnDBVect1.FitToWidth;
  //ImageEndbView1.FitToWidth;
   case GetUserSetting('ImageSize') of
    0 : FitToPageClick(Self);
    1 : btnWidthSizeClick(Self);
    2 : btnActualSizeClick(Self);
    else  FitToPageClick(Self);
  end;
end;

Procedure TFmScanImage.FillData(aFileName:String);
var
 Image : TImageEnView;
begin
//   With DMScanImage do
  begin
    if Not(QrLetterData.State in [dsEdit,dsInsert]) then
      Exit;

    {Ranjbar 89.05.15}
    //QrSelImage.Append;
    if QrLetterData.State=dsinsert then
      QrSelImage.Insert
    else
      QrSelImage.Edit;
    //---
     //Hamed_Ansari_990701_S
    Image := TImageEnView.Create(Self);
    try
      Image.Visible := False;
      Image.IO.LoadFromFileAuto(OpenPictureDialog.Files.Strings[StrToInt(aFileName)]);
      if (UpperCase(ExtractFileExt(OpenPictureDialog.Files.Strings[StrToInt(aFileName)])) = '.JPG') or (UpperCase(ExtractFileExt(OpenPictureDialog.Files.Strings[StrToInt(aFileName)])) = '.JPEG') then
        Image.IO.SaveToFileJpeg(ExtractFilePath(Application.ExeName) + 'Temp' + ExtractFileExt(OpenPictureDialog.Files.Strings[StrToInt(aFileName)]));
    finally
       FreeAndNil(Image);
    end;
    aFileName := ExtractFilePath(Application.ExeName) + 'Temp' + ExtractFileExt(OpenPictureDialog.Files.Strings[StrToInt(aFileName)]);
    //Hamed_Ansari_990701_E
    QrSelImageImage.LoadFromFile(aFileName);

    if QrLetterData.State=dsedit then
      QrSelImageIsCorrectedImage.AsBoolean := true;
    QrSelImageImage.LoadFromFile(aFileName);
    if (UpperCase(File_GetFileExt(aFileName)) = 'TIF')or(UpperCase(File_GetFileExt(aFileName)) = 'TIFF') then
      QrSelImageExtention.AsInteger := 2 //TIFF or Jpeg
    else
      QrSelImageExtention.AsInteger := 1; //JPEG Format
    ImageEnVect1.LayersRemove(1);//
    QrSelImageLastUpdate.AsDateTime := Now;
    QrSelImageLetterID.AsInteger := fmScanImage.LetterID;
    if QrSelImage.State = dsInsert then
      QrSelImagePageNumber.AsInteger := Dm.YeganehConnection.Execute('Select IsNull(Max(PageNumber),0)+1 As NextPageNumber '+
               ' from LetterData Where Extention <3 And LetterID = '+QrSelImageLetterID.AsString).Fields[0].value;
    {Ranjbar 90.03.18 ID=378} //And ID=105
    QrSelImageIsCorrectedImage.AsBoolean := True;
    { TODO -oparsa : 14030514 }
    QrSelImageFileName.AsString := StringReplace( ExtractFilename(OpenPictureDialog.FileName),'.DOCX','.doc',[rfReplaceAll, rfIgnoreCase]);
    QrSelImageIsTemplate.AsBoolean := True;
    { TODO -oparsa : 14030514 }
    //Hamed_Ansari_MRM_990701_S
    if FileExists(aFileName) then
    begin
      SysUtils.FileSetReadOnly(aFileName, false);
      DeleteFile(aFileName);
    end;
    //Hamed_Ansari_MRM_990701_E
    //---
    QrSelImage.Post;
    //
    Application.ProcessMessages;
  end;
end;

procedure TFmScanImage.xpBitBtn1Click(Sender: TObject);
begin
  inherited;
   Close;
end;
{Ranjbar 89.06.06 ID=3}
//Procedure TFmScanImage.Exec_UserLog(SenderTag:Integer);
Procedure TFmScanImage.Exec_UserLog(ActionName:String);
begin
  try
     {Ranjbar 89.06.06 ID=3}
     //Exec_insert_UserLog(7000+SenderTag,LetterID);
     Exec_insert_UserLog(Self.Tag,ActionName,LetterID);
     //---
  except
  end;
end;

Procedure TFmScanImage.ControlEnabled(Anabled:Boolean);
begin
   BBScan.Enabled := Anabled;
   BBOpenFile.Enabled := Anabled;
   if not Anabled then
   begin
      ImageEnVect1.LayersRemove(1);
      ImageEnVect1.Visible := false;
   end;
end;

procedure TFmScanImage.FitToPageClick(Sender: TObject);
begin
  inherited;
//  ImageEnDBVect1.Fit;
  flag := 1;

  ImageEnDBView1.Fit;
  if ImageEnVect1.Visible then
     ImageEnVect1.FitToWidth;
  LabelZoom .Caption :='��ѐ�����  :    '+ FloatToStr( Round(ImageEnDBView1.Zoom) )+'%';
end;

procedure TFmScanImage.btnWidthSizeClick(Sender: TObject);
begin
  inherited;
//  ImageEnDBVect1.FitToWidth;
  flag := 1;
  ImageEnDBView1.AutoFit := False;
  ImageEnDBView1.FitToWidth;
  if ImageEnVect1.Visible then
    ImageEnVect1.FitToWidth;
  LabelZoom .Caption :='��ѐ�����  :    '+ FloatToStr( Round(ImageEnDBView1.Zoom) )+'%';
end;

procedure TFmScanImage.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  SpeedButton3Click(sender);
  ImageEnVect1.ObjBoxHighlight[-1] := False;
  ImageEnVect1.ObjPenColor[-1] := clYellow;
  ImageEnVect1.ObjBrushStyle[-1] := bsClear;
  ImageEnVect1.ObjMemoCharsBrushStyle[-1] := bsClear;
  ImageEnVect1.MouseInteractVt := [miPutBox];
end;

procedure TFmScanImage.SpeedButton9Click(Sender: TObject);
begin
  inherited;
  SpeedButton3Click(sender);
  ImageEnVect1.Proc.Rotate(180);
end;

procedure TFmScanImage.OpenFileExecute(Sender: TObject);
Var
   I,j,fn:integer;
   IsJpegFormat, isEdit:Boolean;
   FileNamePath : String;
   fs : TFileStream;
begin
  inherited;
  if Not(QrLetterData.State in [dsEdit,dsInsert]) then
     Exit;

  IsJpegFormat :=  GetUserSetting('HasJpg');;
  if IsJpegFormat then
     OpenPictureDialog.filterindex := 1//Filter := 'JPEG Image File (*.jpg;*.jpeg)|*.jpeg;*.jpg'
  else
     OpenPictureDialog.filterindex := 2;//Filter := 'Tiff(*.Tif)|*.Tif';

  if QrLetterData.State =dsEdit then
      isEdit := true;
  if isEdit then
  begin
     OpenPictureDialog.Filter := 'JPEG Image File (*.jpg;*.jpeg)|*.jpeg;*.jpg' ;
  end
  else
  begin
     OpenPictureDialog.Filter := 'JPEG Image File (*.jpg , *.jpeg)|*.jpeg;*.jpg|Tiff(*.tif , *.tiff)|*.tif;*.tiff';
  end;
  fn := QrLetterDataLetterDataID.AsInteger;
  if OpenPictureDialog.Execute then
  begin
     Try
     ////////////////////////////////////////////////////////////
     Application.ProcessMessages;
               FMWaitPlease := TFMWaitPlease.Create(nil);
               //FMWaitPlease.Panel2.Visible := false;
               FMWaitPlease.Show;
               FMWaitPlease.Refresh;
     /////////////////////////////////////////////////////////////
        Screen.Cursor := crHourGlass;
        BBOpenFile.Enabled := False;
        if (not IsJpegFormat) and (OpenPictureDialog.filterindex <> 2) then
           if MessageDlg('������ ����� ���� � ���� ����� ���Ͽ',mtConfirmation,[mbYes,mbNo],0)= mrNo then
               IsJpegFormat := true;
        For I:=0 to OpenPictureDialog.Files.Count-1 do
        begin
            (* Commented By Hamed_Ansari_990701
            if FileExists(_ApplicationPath+'tmpFile'+ExtractFileExt(OpenPictureDialog.Files.Strings[I]))then
                DeleteFile(pchar(_ApplicationPath+'tmpFile'+ExtractFileExt(OpenPictureDialog.Files.Strings[I])));
            if CopyFileW( dm.replacePWC(StringToPWide(OpenPictureDialog.Files.Strings[I],j)), StringToPWide(_ApplicationPath+'tmpFile'+ExtractFileExt(OpenPictureDialog.Files.Strings[I]),j), False) then
               FileNamePath := _ApplicationPath+'tmpFile'+ExtractFileExt(OpenPictureDialog.Files.Strings[I])
            else if CopyFileW( StringToPWide(OpenPictureDialog.Files.Strings[I],j), StringToPWide(_ApplicationPath+'tmpFile'+ExtractFileExt(OpenPictureDialog.Files.Strings[I]),j), False) then
               FileNamePath := _ApplicationPath+'tmpFile'+ExtractFileExt(OpenPictureDialog.Files.Strings[I])
            else
               ShowMessage('��� �� ������ ���� ����');
            *)
           FileNamePath := OpenPictureDialog.Files[I];
           if (UpperCase(File_GetFileExt(FileNamePath))='TIF')or(UpperCase(File_GetFileExt(FileNamePath))='TIFF')then
           begin
                 ChangeMultyTifToTifsAndSave(OpenPictureDialog.Files.Strings[I]);  //���� TIFF �� �� ���� ����� TIFF ����� ���
                 FMWaitPlease.Refresh;
                 //Commented By Hamed_Ansaro 14011015
                 (*
                 with ADOQuery1 do
                  begin
                    Connection := dm.YeganehConnection;
                    SQL.Text := 'SELECT filename FROM LetterData WHERE LetterDataID=115051';
                    open;
                    edit;
                    fieldbyname('filename').AsString := ExtractFileName(OpenpictureDialog.FileName);
                    post;
                  End;
                  *)
           end
           else if IsJpegFormat then  //���� JPG �� ����� �� ���� �� JPG ���� �� ����� JPG ����� ���
           begin
                 //Hamed_Ansari_990701_S
                 //FillData(FileNamePath);
                 FillData(IntToStr(I));
                 //Hamed_Ansari_990701_S
           end
           else     // ���� JPG �� ����� �� ���� TIFF ���� � ���� ���� ���� YES ���� ���� ����� TIFF ����� ���.
           begin
              if not FileExists(_TempPath+'\4.tif') then
              begin
                  fs:=TFileStream.Create(_TempPath+'\4.tif',fmCreate);
                  idDecoderMIME1.DecodeToStream('SUkqAPQAAADIAAAAAQAAAMgAAAABAAAA///////////////////////////////////////////////+Tf'
                        +'QMyTeYNkIHCdP1r6+vrX19fWvr6+tfXINA+vrr0v9L119del/peuvrr0v9L'
                        +'119del/peuvrr669L119dfXXpeuvrr669L119dfXXpeuvrr669L119dfXXpeuvr/S/66X/XiQUzYO6f3/v//////31/fVq1JuMDS//////////'
                        +'//////9qGFJuTDPH/////////////////////////////////////////////////////4AIAIBMA/gAEAAEAAAAAAAAAAAEEAAEAAAATAwAA'
                        +'AQEEAAEAAAATAwAAAgEDAAEAAAABAAAAAwEDAAEAAAAEAAAABgEDAAEAAAAAAAAACgEDAAEAAAABAAAAEQEEAAEAAAA'
                        +'YAAAAFQEDAAEAAAABAAAAFgEEAAEAAAATAwAAFwEEAAEAAADcAAAAGgEFAAEAAAAIAAAAGwEFAAEAAAAQAAAAHAEDAAEAAAABA'
                        +'AAAJAEEAAEAAAAAAAAAJQEEAAEAAAAAAAAAKAEDAAEAAAACAAAAKQEDAAIAAAAAAAAARwEDAAEAAAAAAAAAAAAAAA==',fs);
                  fs.WriteBuffer(fs,fs.InstanceSize);
                  fs.Destroy;
              end;
              ChangeJPGToTifAndSave(FileNamePath);
           end;
        end;
        Close_Open_QrLetterData;

        if (QrLetterData.State in [dsInsert,dsEdit]) then
           DBN1.BtnClick(nbCancel);
        Close_Open_QrLetterData;
        QrLetterData.Last;
     Finally
//        ImageEnDBVect1.FitToWidth;
        ImageEnDBView1.FitToWidth;
        BBOpenFile.Enabled := True;
        Screen.Cursor := crDefault;

        //Ataie 990910
         //   FitToPageClick(Self);
         case GetUserSetting('ImageSize') of
           0 : FitToPageClick(Self);
           1 : btnWidthSizeClick(Self);
           2 : btnActualSizeClick(Self);
           else  FitToPageClick(Self);
         end;

        if Assigned(FMWaitPlease) then
               FreeAndNil(FMWaitPlease);
     End;
  end;

  {Ranjbar 89.06.06 ID=3}
  //Exec_UserLog(TAction(Sender).Tag);
  Exec_UserLog(TAction(Sender).Name);
  //---

  {Ranjbar 89.07.08 ID=12}
  //LetterEdit ��� ������� ����� ��� ��� ��� �� ����
//  Dm.Insert_LetterEdit(LetterID,'����� ������ ����');
  ControlEnabled(False);
  if isEdit then
      QrLetterData.Locate('LetterDataID',fn,[]);
  ImageEnDBView1.FitToWidth;
  //---

  //Ataie 990910
  //   FitToPageClick(Self);
  case GetUserSetting('ImageSize') of
   0 : FitToPageClick(Self);
   1 : btnWidthSizeClick(Self);
   2 : btnActualSizeClick(Self);
   else  FitToPageClick(Self);
  end;
end;

procedure TFmScanImage.ChangeMultyTifToTifsAndSave(aFileName:String);
Var
   I, TotalImages:integer; // 1391/10/11 Edited
   recCount,Slept : integer;
   filename ,parameters,tiffName, jpgName , textFilePathName: string;
   TXTFile : textfile;
   stringList : TStrings;
   isFile : boolean;
begin
      if aFileName <> '' then
      begin
         if FileExists(ExtractFilePath(Application.ExeName)+'imageconvertor.exe')and(Get_File_Size1(aFileName,true)>80000000) then
         begin
            SysUtils.FileSetReadOnly(ExtractFilePath(Application.ExeName)+'ListofSplitterTiff.txt', false);
            DeleteFile(ExtractFilePath(Application.ExeName)+'ListofSplitterTiff.txt');
            SysUtils.FileSetReadOnly(ExtractFilePath(aFileName)+'ListofSplitterTiff.txt', false);
            DeleteFile(ExtractFilePath(aFileName)+'ListofSplitterTiff.txt');
            filename := ExtractFilePath(Application.ExeName)+'imageconvertor.exe';
            parameters := '"'+aFileName+'"';
            ShellExecute(handle,'open',PChar(filename), PChar(parameters),'',SW_HIDE);
            Slept := 0;
            isFile := FileExists(ExtractFilePath(Application.ExeName)+'ListofSplitterTiff.txt');
            while (not isFile)or(Slept>60) do
            begin
                 Sleep(1000);
                 if FileExists(ExtractFilePath(Application.ExeName)+'ListofSplitterTiff.txt') then
                 begin
                     isFile := true;
                     textFilePathName := ExtractFilePath(Application.ExeName)+'ListofSplitterTiff.txt';
                 end
                 else if FileExists(ExtractFilePath(aFileName)+'ListofSplitterTiff.txt') then
                 begin
                     isFile := true;
                     textFilePathName := ExtractFilePath(aFileName)+'ListofSplitterTiff.txt';
                 end;
                 inc(Slept);
            end;
            if Slept>59 then
               exit;
            stringList := TStringList.Create;
            stringList.LoadFromFile(textFilePathName);
            for i:= 0 to stringList.Count-1 do
            begin
               tiffName := stringList[i];
               if FileExists(tiffName) then
               begin
                  ImageEnView1.io.LoadFromFileTIFF(tiffName);
                  ImageEnView1.io.SaveToFileTIFF(tiffName);
                  jpgName := copy(tiffName,0,length(tiffName)-4)+'.jpg';
                  ImageEnView1.io.SaveToFileJpeg(jpgName);
                  if QrLetterData.State=dsinsert then
                  begin   ////////////////Insert
                     quImage.Open;
                     quImage.Insert;
                     quImageLetterID.AsInteger := LetterID;
                     quImagePageNumber.AsInteger := Dm.YeganehConnection.Execute('Select IsNull(Max(PageNumber),0)+1 As NextPageNumber '+
                                   ' from LetterData Where LetterID = '+IntToStr(LetterID)).Fields[0].value;
                     quImageLastUpdate.AsDateTime:= Now;
                      if Get_File_Size1(tiffName,true)>Get_File_Size1(jpgName,true) then
                      begin
                        quImageextention.AsInteger := 1;
                        quImageImage.LoadFromFile(jpgName);
                        quImageDescription.AsString := '';//'output'+IntToStr(i+1)+'.jpg';
                      end
                      else
                      begin
                        quImageextention.AsInteger := 2;
                        quImageImage.LoadFromFile(tiffName);
                        quImageDescription.AsString := '';//'output'+IntToStr(i+1)+'.tif';
                      end;
                      quImage.Post;
               //       quImage.Close;
                      Application.ProcessMessages;
                      if FileExists(tiffName) then
                      begin
                        SysUtils.FileSetReadOnly(tiffName, false);
                        DeleteFile(tiffName);
                      end;
                      if FileExists(jpgName) then
                      begin
                        SysUtils.FileSetReadOnly(jpgName, false);
                        DeleteFile(jpgName);
                      end;
                  end
                  else   ///////////////// Edit
                  begin
                     QrSelImage.Edit;
                     QrSelImageIsCorrectedImage.AsBoolean := true;
                     { TODO -oparsa : 14030514 }
                     QrSelImageIsTemplate.AsBoolean := True;
                     { TODO -oparsa : 14030514 }
                     QrSelImageLastUpdate.AsDateTime:= Now;
                      if Get_File_Size1(tiffName,true)>Get_File_Size1(jpgName,true) then
                      begin
                        QrSelImageextention.AsInteger := 1;
                        QrSelImageImage.LoadFromFile(jpgName);
                      end
                      else
                      begin
                        QrSelImageextention.AsInteger := 2;
                        QrSelImageImage.LoadFromFile(tiffName);
                      end;
                      QrSelImage.Post;
                    //  quImage.Close;
                      Application.ProcessMessages;
                      if    FileExists(tiffName) then
                      begin
                        SysUtils.FileSetReadOnly(tiffName, false);
                        DeleteFile(tiffName);
                      end;
                      if FileExists(jpgName) then
                      begin
                        SysUtils.FileSetReadOnly(jpgName, false);
                        DeleteFile(jpgName);
                      end;
                  end;
               end;
            end;
         end
         else
         begin
            ImageEnMView1.Clear;
            ImageEnMView1.MIO.LoadFromFile(aFileName);
            For I:=0 to ImageEnMView1.ImageCount-1 do
            begin
               begin
                  ImageEnMView1.MIO.SaveToFileTIFF(_TempPath+'\output'+IntToStr(i+1)+'.tif');
                  ImageEnView1.io.LoadFromFileTIFF(_TempPath+'\output'+IntToStr(i+1)+'.tif');
                  ImageEnView1.io.SaveToFileTIFF(_TempPath+'\output'+IntToStr(i+1)+'.tif');
                  ImageEnView1.io.SaveToFileJpeg(_TempPath+'\output'+IntToStr(i+1)+'.jpg');
                  ImageEnMView1.MoveImage(0,imageEnMView1.ImageCount-1);
                  if QrLetterData.State=dsinsert then
                  begin   ////////////////Insert
                     quImage.Open;
                     quImage.Insert;
                     quImageLetterID.AsInteger := LetterID;
                     quImagePageNumber.AsInteger := Dm.YeganehConnection.Execute('Select IsNull(Max(PageNumber),0)+1 As NextPageNumber '+
                                   ' from LetterData Where LetterID = '+IntToStr(LetterID)).Fields[0].value;
                     quImageLastUpdate.AsDateTime:= Now;
                      if Get_File_Size1(_TempPath+'\output'+IntToStr(i+1)+'.tif',true)>Get_File_Size1(_TempPath+'\output'+IntToStr(i+1)+'.jpg',true) then
                      begin
                        quImageextention.AsInteger := 1;
                        quImageImage.LoadFromFile(_TempPath+'\output'+IntToStr(i+1)+'.jpg');
                        quImageFILENAME.AsString := ExtractFileName(aFileName);
                        quImageDescription.AsString := '';//'output'+IntToStr(i+1)+'.jpg';
                      end
                      else
                      begin
                        quImageextention.AsInteger := 2;
                        quImageImage.LoadFromFile(_TempPath+'\output'+IntToStr(i+1)+'.tif');
                        quImageFILENAME.AsString := ExtractFileName(aFileName);
                        quImageDescription.AsString := '';//'output'+IntToStr(i+1)+'.tif';
                      end;
                      quImage.Post;
               //       quImage.Close;
                      Application.ProcessMessages;
                      if FileExists(_TempPath+'\output'+IntToStr(i+1)+'.tif') then
                      begin
                        SysUtils.FileSetReadOnly(_TempPath+'\output'+IntToStr(i+1)+'.tif', false);
                        DeleteFile(_TempPath+'\output'+IntToStr(i+1)+'.tif');
                      end;
                      if FileExists(_TempPath+'\output'+IntToStr(i+1)+'.jpg') then
                      begin
                        SysUtils.FileSetReadOnly(_TempPath+'\output'+IntToStr(i+1)+'.jpg', false);
                        DeleteFile(_TempPath+'\output'+IntToStr(i+1)+'.jpg');
                      end;
                  end
                  else   ///////////////// Edit
                  begin
                     QrSelImage.Edit;
                     QrSelImageIsCorrectedImage.AsBoolean := true;
                     { TODO -oparsa : 14030514 }
                     QrSelImageIsTemplate.AsBoolean := True;
                     { TODO -oparsa : 14030514 }
                     QrSelImageLastUpdate.AsDateTime:= Now;
                      if Get_File_Size1(_TempPath+'\output'+IntToStr(i+1)+'.tif',true)>Get_File_Size1(_TempPath+'\output'+IntToStr(i+1)+'.jpg',true) then
                      begin
                        QrSelImageextention.AsInteger := 1;
                        QrSelImageImage.LoadFromFile(_TempPath+'\output'+IntToStr(i+1)+'.jpg');
                      end
                      else
                      begin
                        QrSelImageextention.AsInteger := 2;
                        QrSelImageImage.LoadFromFile(_TempPath+'\output'+IntToStr(i+1)+'.tif');
                      end;
                      QrSelImage.Post;
                    //  quImage.Close;
                      Application.ProcessMessages;
                      if    FileExists(_TempPath+'\output'+IntToStr(i+1)+'.tif') then
                      begin
                        SysUtils.FileSetReadOnly(_TempPath+'\output'+IntToStr(i+1)+'.tif', false);
                        DeleteFile(_TempPath+'\output'+IntToStr(i+1)+'.tif');
                      end;
                      if FileExists(_TempPath+'\output'+IntToStr(i+1)+'.jpg') then
                      begin
                        SysUtils.FileSetReadOnly(_TempPath+'\output'+IntToStr(i+1)+'.jpg', false);
                        DeleteFile(_TempPath+'\output'+IntToStr(i+1)+'.jpg');
                      end;
                  end;
               end;
            end;
          //  ImageEnMView1.Clear;
            PageControl1.Enabled := False;
            ControlEnabled(False);

         end;
      end;
end;


procedure TFmScanImage.SaveAsExecute(Sender: TObject);
begin
  inherited;
  if ImageEnVect1.Visible then
  begin
    if SavePictureDialog.Execute then
    begin
      ImageEnVect1.DeSelect;
      ImageEnVect1.UnSelAllObjects;
      ImageEnVect1.LayersMergeAll;
      ImageEnVect1.RemoveAllObjects;
      ImageEnVect1.Repaint;
      if SavePictureDialog.FilterIndex=1 then
      begin
        ImageEnVect1.IO.SaveToFileJpeg(SavePictureDialog.FileName+'.jpg');
        ShellExecute(Handle, 'Open',Pchar(SavePictureDialog.FileName+'.jpg'),nil,nil,SW_SHOWNORMAL);
      end
      else if SavePictureDialog.FilterIndex=2 then
      begin
        ImageEnVect1.IO.SaveToFileTIFF(SavePictureDialog.FileName+'.tiff');
        ShellExecute(Handle, 'Open',Pchar(SavePictureDialog.FileName+'.tiff'),nil,nil,SW_SHOWNORMAL);//DMScanImage.QrSelImageImage.SaveToFile(SavePictureDialog.FileName+'.tiff')
      end
      else if SavePictureDialog.FilterIndex=3 then
      begin
        ImageEnVect1.IO.SaveToFileBMP(SavePictureDialog.FileName+'.bmp');
        ShellExecute(Handle, 'Open',Pchar(SavePictureDialog.FileName+'.bmp'),nil,nil,SW_SHOWNORMAL);
      end;
    end;
    Exec_UserLog(TAction(Sender).Name);
  end
  else
  begin
    if SavePictureDialog.Execute then
    begin
      if SavePictureDialog.FilterIndex=1 then
      begin
        ImageEnDBView1.IO.SaveToFileJpeg(SavePictureDialog.FileName+'.jpg');
        ShellExecute(Handle, 'Open',Pchar(SavePictureDialog.FileName+'.jpg'),nil,nil,SW_SHOWNORMAL);
      end
      else if SavePictureDialog.FilterIndex=2 then
      begin
        ImageEnDBView1.IO.SaveToFileTIFF(SavePictureDialog.FileName+'.tiff');
        ShellExecute(Handle, 'Open',Pchar(SavePictureDialog.FileName+'.tiff'),nil,nil,SW_SHOWNORMAL);//DMScanImage.QrSelImageImage.SaveToFile(SavePictureDialog.FileName+'.tiff')
      end
      else if SavePictureDialog.FilterIndex=3 then
      begin
        ImageEnDBView1.IO.SaveToFileBMP(SavePictureDialog.FileName+'.bmp');
        ShellExecute(Handle, 'Open',Pchar(SavePictureDialog.FileName+'.bmp'),nil,nil,SW_SHOWNORMAL);
      end;
    end;
    Exec_UserLog(TAction(Sender).Name);
  end;
  //---
end;

procedure TFmScanImage.BitBtn2Click(Sender: TObject);
Var
   StreamPic :TStream;
begin
  inherited;
  Open_UserSign(_Userid);
  if dm.Select_UserSignUserSign.IsNull then
  begin
    MBaseForm.messageShowString('����� ����� ��� ����� ����� ������ ��� �����', False);
    Exit;
  end;
  StreamPic := TStream.Create;
  StreamPic :=  dm.Select_UserSign.CreateBlobStream(dm.Select_UserSignUserSign,bmRead);
  SpeedButton3Click(sender);
  ImageEnVect1.SetObjBitmapFromStream(-1,StreamPic,0);
  ImageEnVect1.MouseInteractVt := [miPutBitmap];

  Exec_UserLog(TBitBtn(Sender).name);
  //---
end;

procedure TFmScanImage.BitBtn3Click(Sender: TObject);
begin
  inherited;
  SpeedButton3Click(sender);
  ImageEnProc1.ConvertToGray;
end;

procedure TFmScanImage.BitBtn7Click(Sender: TObject);
begin
  inherited;
  SpeedButton3Click(sender);
  ImageEnProc1.ConvertToBWThreshold(spinedit1.value);
end;

procedure TFmScanImage.ImageEnDBView3Click(Sender: TObject);
begin
  inherited;
  ImageEnDBView1.SaveSelectionToFile('c:\1.jpeg');
end;

procedure TFmScanImage.DBN1BeforeAction(Sender: TObject;Button: TNavigateBtn);
Var
   ID:Integer;
   FilePathName : String;
   AQry : TADOQuery;
begin
  inherited;

  if Button = nbFirst   then DMScanImage.NavigatorButtons:='nbFirst';
  if Button = nbPrior   then DMScanImage.NavigatorButtons:='nbPrior';
  if Button = nbNext    then DMScanImage.NavigatorButtons:='nbNext';
  if Button = nbLast    then DMScanImage.NavigatorButtons:='nbLast';
  if Button = nbInsert  then DMScanImage.NavigatorButtons:='nbInsert';
  if Button = nbDelete  then DMScanImage.NavigatorButtons:='nbDelete';
  if Button = nbEdit    then DMScanImage.NavigatorButtons:='nbEdit';
  if Button = nbPost    then DMScanImage.NavigatorButtons:='nbPost';
  if Button = nbCancel  then DMScanImage.NavigatorButtons:='nbCancel';
  if Button = nbRefresh then DMScanImage.NavigatorButtons:='nbRefresh';

  { TODO -oparsa : 14030628 }
  if button = nbPost then
  begin
     NotUseSEBrushSize := True;
     SBBrushClick(self) ;
     NotUseSEBrushSize := False;
  end;
  { TODO -oparsa : 14030628 }

  SBZoom.Click;
  SBZoom.down := True;

  if Button in [nbInsert,nbEdit] then
  begin
    PageControl1.Enabled := True;
    if Panel6.Width>0 then
    begin

      ImageEnDBVect1.LayersRemove(1);//
      ImageEnVect1.DeSelect;
      ImageEnVect1.UnSelAllObjects;
      ImageEnVect1.LayersMergeAll;
      ImageEnVect1.RemoveAllObjects;
      ImageEnVect1.Align := alClient;
      ImageEnVect1.Zoom := ImageEnView1.Zoom;
//    ImageEnVect1.IO.IEBitmap.Assign(ImageEnDBView1.IO.IEBitmap);
      ImageEnDBView1.IO.SaveToFileJpeg(_TempPath+'\t.jpg');
      ImageEnVect1.IO.LoadFromFileJpeg(_TempPath+'\t.jpg');
      ImageEnVect1.Repaint;
      ImageEnVect1.Visible := true;
    end
    else
    begin
    {    PageControl1.Enabled := False;
        ImageEnDBVect1.LayersRemove(1);//
           ImageEnVect1.DeSelect;
           ImageEnVect1.UnSelAllObjects;
           ImageEnVect1.LayersMergeAll;
           ImageEnVect1.RemoveAllObjects;
        ImageEnDBView1.IO.IEBitmap.Assign(ImageEnVect1.IO.IEBitmap);
        ImageEnVect1.Visible := false;
        ImageEnVect1.Align := alNone;  }
    end;
  end;

  if button = nbPost then
  begin
    if ImageEnVect1.Visible then
    begin

      ImageEnDBVect1.LayersRemove(1);//
      {Ranjbar 90.03.11 ID=378}
      ImageEnVect1.DeSelect;
      ImageEnVect1.UnSelAllObjects;
      ImageEnVect1.LayersMergeAll;  //????? ????? ??? ?? ?? ????? ?? ???
      ImageEnVect1.RemoveAllObjects;
      ImageEnDBView1.IO.IEBitmap.Assign(ImageEnVect1.IO.IEBitmap);
      ImageEnVect1.Visible := false;
      ImageEnVect1.Align := alNone;
    end;
  end;

//  With DMScanImage do
  begin
     if Button = nbEdit then
     begin
        {
        DMScanImage.QrSelImage.Edit;
        DMScanImage.QrSelImageLastUpdate.AsDateTime := Now;
        }
        QrSelImage.Edit;
        QrSelImageLastUpdate.AsDateTime := Now;
     end;

     if Button in [nbPost,nbDelete] then
     begin
        if Button = nbPost then
        begin
           if ImageEnDBView1.IsEmpty then
           begin
              MBaseForm.messageShowString('���� ����� �� ��� ����� ������ ������', False);
              Abort;
           end;

           {ImageEnDBVect1.Fit;
           ImageEnDBVect1.LayersCurrent := 0;
           ImageEnDBVect1.Select(0,0,ImageEnDBVect1.IEBitmap.Width,ImageEnDBVect1.IEBitmap.Height);
           ImageEnDBVect1.Proc.Crop(Rect(ImageEnDBVect1.SelX1,ImageEnDBVect1.SelY1,ImageEnDBVect1.SelX2,ImageEnDBVect1.SelY2));
           ImageEnDBVect1.DeSelect;
           While ImageEnDBVect1.LayersCount > 1 do
              ImageEnDBVect1.LayersMerge(0,1);
           //ImageEnDBVect1.LayersMergeAll;//����� ����� ��� �� �� ����� �� ���
           }
           ImageEnVect1.LayersRemove(1);//
           {Ranjbar 90.03.11 ID=378}
           ImageEnVect1.DeSelect;
           ImageEnVect1.UnSelAllObjects;
           ImageEnVect1.LayersMergeAll;  //����� ����� ��� �� �� ����� �� ���
           ImageEnVect1.RemoveAllObjects;

           {
           DMScanImage.QrSelImageLastUpdate.AsDateTime := Now;
           DMScanImage.QrSelImageLetterID.AsInteger := fmScanImage.LetterID;
           }
           QrSelImageLastUpdate.AsDateTime := Now;
           QrSelImageLetterID.AsInteger := fmScanImage.LetterID;

           //Image �� �� ��� ������ � ����� � ������ ���� �����
           //�� �� �� ����� ���� ��� ��� �������� ���� �� ������� ��� ������� ���
           if QrSelImage.State = dsEdit then
           begin
              FilePathName := _TempPath + 'TempEditFile.Jpg';
              SysUtils.FileSetReadOnly(FilePathName, false);
              DeleteFile(FilePathName);
              ImageEnDBView1.IO.SaveToFileJpeg(FilePathName);
              ImageEnDBView1.Clear;
              QrSelImageImage.LoadFromFile(FilePathName);
              Application.ProcessMessages;
              SysUtils.FileSetReadOnly(FilePathName, false);
              DeleteFile(FilePathName);
              if QrSelImageIsCorrectedImage.AsBoolean = False then
                 QrSelImageIsCorrectedImage.AsBoolean := True;
             { TODO -oparsa : 14030514 }
             QrSelImageIsTemplate.AsBoolean := True;
             { TODO -oparsa : 14030514 }
           end;
           //---

           //DMScanImage.QrSelImage.Post;
           QrSelImage.Post;
     //      ImageEnDBVect1.FitToWidth;
           ImageEnDBView1.FitToWidth;
           ControlEnabled(False);
        end;
        if Button = nbDelete then
        begin
           if MBaseForm.messageShowString('��� ���� �� ��� ����� ���� ����Ͽ', True) then
           begin
              //QrSelImage.Delete;
              with TADOQuery.Create(nil) do
              begin
                  Connection := dm.YeganehConnection;
                  SQL.Text := 'SELECT LetterID,ArchiveID,isDocument FROM LetterData WHERE LetterDataID='+QrLetterDataLetterDataID.AsString;
                  Open;
                  if Fields[1].AsInteger>0 then
                  begin
                     if dm.ArchiveConnection.Connected then
                     begin
                        SQL.Text := 'DELETE FROM AutomationRelation WHERE isDocument=0 AND DabirLetterID='+ Fields[0].AsString + ' AND ArchiveID='+ Fields[1].AsString;
                        close;
                        Connection := dm.ArchiveConnection;
                        ExecSQL;
                        Exec_insert_UserLog(Self.Tag,'DeleteOnePicture',QrLetterDataLetterID.AsInteger);
                     end
                     else
                     begin
                        ShowMessage('������ �� ����� ���� ������ ����� ����');
                        Exit;
                     end;
                  end;
              end;
              QrLetterData.Delete;
              {Ranjbar 89.07.08 ID=12}
              //LetterEdit ��� ������� ����� ��� ��� ��� �� ����
//              Dm.Insert_LetterEdit(LetterID,'��� �� �����');
              Exec_insert_UserLog(7,'DeleteOnePicture',LetterID);
              //---
           end;
           ControlEnabled(False);
        end;
        ID := QrLetterDataLetterDataID.AsInteger;
        QrLetterData.Cancel;
        Close_Open_QrLetterData;
        ControlEnabled(False);
        if ID > 0 then
           QrLetterData.Locate('LetterDataID',ID,[])
        else
           QrLetterData.Last;
        Abort;
     end;
  end;//With
end;

procedure TFmScanImage.ScanExecute(Sender: TObject);
Var
   FilenamePath, filename :String;
   i, v803 : integer;
begin
  inherited;
   {   if GetUserSetting('HasJpg') then //True = Jpg , False = Tif
   begin
      ////////////////////////////////
      Try
            FileNamePath := _TempPath +'Tmp.bmp';
            DeleteFile(FileNamePath);

            ImgScan.FileType:=3;// bmp
            ImgScan.PageOption:=0;// ????? ?????? ??? ?? ???? ??? ????
            ImgScan.ScanTo:=2; // ????? ?????? ??? ?? ???? ??? ????
            ImgScan.MultiPage:=false;
            ImgScan.Image := FileNamePath;
            If ImgScan.ScannerAvailable then //??? ????? ???? ???? ?????
            begin
               ImgScan.OpenScanner;
               ImgScan.StartScan;
               ImgScan.CloseScanner;
               Application.ProcessMessages;

               FMWaitPlease := TFMWaitPlease.Create(Application);
               FMWaitPlease.EmailPanel.Hide;
               FMWaitPlease.Show;
               FMWaitPlease.Refresh;

              if FileExists(FileNamePath) then

               FMWaitPlease.Refresh;
               Close_Open_QrLetterData;
//               if insertmode then DMScanImage.QrLetterData.Last;
            end
               else
                  MBaseForm.MessageShowString('????? ?????? ?? ????? ???? ?????',False);
         Finally
            DeleteFile(FileNamePath);
            if FMWaitPlease<>nil then
                FMWaitPlease.Close;
         End;
      /////////////////////////////////
   end
      else
      begin }
//         Try
//            FileNamePath := _TempPath +'Temp.tif';
//            DeleteFile(FileNamePath);
            (*ImgScan.Image := FileNamePath;
            If Imgscan.ScannerAvailable then //ǐ� ����� ���� ���� ����
            begin
               ImgScan.OpenScanner;
               ImgScan.StartScan;
               ImgScan.CloseScanner;
               Application.ProcessMessages;
               FMWaitPlease := TFMWaitPlease.Create(nil);
               FMWaitPlease.LableFrom.Visible := false;
               FMWaitPlease.LableTo.Visible := false;
               FMWaitPlease.Label3.Visible := false;
               FMWaitPlease.Label2.Visible := false;
               //FMWaitPlease.Panel2.Visible := false;
               FMWaitPlease.Show;
               FMWaitPlease.Refresh;
               if FileExists(_TempPath +'Temp.tif')then
               begin
                  ChangeMultyTifToTifsAndSave(FileNamePath);
                  FMWaitPlease.Refresh;
               end;
               Close_Open_QrLetterData;
            end
               else
                  MBaseForm.MessageShowString('����� ������ �� ����� ���� �����',False);
         Finally
            // tmptmp DeleteFile(FileNamePath);
            if Assigned(FMWaitPlease) then
               FreeAndNil(FMWaitPlease);
         End;
//      end;

   TWAIN_SetHideUI(True);
   TWAIN_SetFileAppendFlag(False);

   TWAIN_SetResolution(GetUserSetting('DPI'));

   if TWAIN_OpenDefaultSource() then
   begin
      TWAIN_SetXferCount(-1);
      TWAIN_SetAutoScan(true);
      TWAIN_SetMultiTransfer(true);
      if GetUserSetting('ScanColor') then
         TWAIN_SetPixelType(TWPT_GRAY)
      else TWAIN_SetPixelType(TWPT_RGB);
      if (TWAIN_HasFeeder) then
         TWAIN_SelectFeeder(True)
      else
         TWAIN_SelectFeeder(False);

      If (TWAIN_GetDuplexSupport > 0) Then   // check for duplex support
      begin
         if (TWAIN_HasFeeder) then
            TWAIN_EnableDuplex(true)
         else
            TWAIN_EnableDuplex(false);

      end;
      i := 1;
      v803 := 1;
      if GetUserSetting('HasJpg') then
       v803 := 0;
      repeat
         if v803=0 then
            fileName := _TempPath +'image'+IntToStr(i)+'.jpg'
         else
            fileName := _TempPath +'image'+IntToStr(i)+'.tif';
         if (TWAIN_AcquireToFilename(self.Handle, pchar(fileName))<>0) then
            break;
               try
                ImageEnVect1.IO.LoadFromFile(filename);
                ImageEnDBView1.IO.LoadFromFile(filename);
                Application.ProcessMessages;
               except
               end;
              //LoadAndShow_SQL(fileName);
              //if not(DMScanImage.QrLetterData.State in [dsedit,dsinsert]) then
                //break;
              DeleteFile(filename);
              i := i+1;
      until TWAIN_IsDone();
      TWAIN_CloseSource();
     end;
  ImageEnDBView1.FitToWidth;
  Exec_UserLog(TAction(Sender).Name);
  QrLetterData.Cancel;
  Close_Open_QrLetterData;
  QrLetterData.Last;
*)
  try
    FileNamePath := _TempPath +'Temp.tif';
    SysUtils.FileSetReadOnly(FileNamePath, false);
    DeleteFile(FileNamePath);
    ImgScan.Image := FileNamePath;

    if Imgscan.ScannerAvailable then //ǐ� ����� ���� ���� ����
    begin
      ImgScan.OpenScanner;
      ImgScan.StartScan;
      ImgScan.CloseScanner;
      Application.ProcessMessages;
      FMWaitPlease := TFMWaitPlease.Create(nil);
      FMWaitPlease.LableFrom.Visible := false;
      FMWaitPlease.LableTo.Visible := false;
      FMWaitPlease.Label3.Visible := false;
      FMWaitPlease.Label2.Visible := false;
      //FMWaitPlease.Panel2.Visible := false;
      FMWaitPlease.Show;
      FMWaitPlease.Refresh;
      if FileExists(_TempPath +'Temp.tif')then
      begin
        ChangeMultyTifToTifsAndSave(FileNamePath);
        FMWaitPlease.Refresh;
      end;
      Close_Open_QrLetterData;
    end
    else
      MBaseForm.MessageShowString('����� ������ �� ����� ���� �����', False);
  finally
    // tmptmp DeleteFile(FileNamePath);
    if Assigned(FMWaitPlease) then
      FreeAndNil(FMWaitPlease);
  end;
//      end;


  //ImageEnDBView1.FitToWidth;

  //Ataie 990910
  //   FitToPageClick(Self);
  case GetUserSetting('ImageSize') of
   0 : FitToPageClick(Self);
   1 : btnWidthSizeClick(Self);
   2 : btnActualSizeClick(Self);
   else  FitToPageClick(Self);
  end;

  Exec_UserLog(TAction(Sender).Name);
end;

procedure TFmScanImage.BrushColorClick(Sender: TObject);
begin
   inherited;
   ColorDialog1.Color := BrushColor.Color;
   if ColorDialog1.Execute then
      BrushColor.Color:=ColorDialog1.Color;
   CreateBrush(self);
end;

procedure TFmScanImage.FormCreate(Sender: TObject);
begin
  inherited;
  ImageEnVect1.MinBitmapSize:=1;
  //ImageEnDBVect1.DisplayGrid:=true;
  ImageEnView1.Proc.Fill( CreateRGB(255,255,255) );
  ImageEnView1.Proc.AutoUndo:=False;

  Panel6.Width:=0;
  Panel7.Width:=0;

//  Dm.qDefineColors.Close;
//  Dm.qDefineColors.Open;
//  DSForm.DataSet:=Dm.qDefineColors;

  TDrawGrid(DBGrid1).FixedCols:=0;
//  dsqSelectedColor.DataSet:=Dm.qSelectedColor;
//  DBGrid2.DataSource:=dsqSelectedColor;
//  N5.Enabled := Dm.GetActionAccess('SetImageColor',9);
//  N6.Enabled := Dm.GetActionAccess('RemoveImageColor',9);

  //Ataie 990910
  //   FitToPageClick(Self);
  case GetUserSetting('ImageSize') of
   0 : FitToPageClick(Self);
   1 : btnWidthSizeClick(Self);
   2 : btnActualSizeClick(Self);
   else  FitToPageClick(Self);
  end;

   {$IFDEF LIGHT}
      BitBtn2.Enabled := false;
   {$ENDIF}
end;

procedure TFmScanImage.BitBtn9Click(Sender: TObject);
begin
   inherited;
   SpeedButton3Click(sender);
   ImageEnVect1.MouseInteractVt   := [miPutText];
   ImageEnVect1.ObjPenColor[-1]   := FontDialog1.Font.Color;
   ImageEnVect1.ObjBrushColor[-1] := clNone;
   ImageEnVect1.ObjFontStyles[-1] := FontDialog1.Font.Style;
   ImageEnVect1.ObjFontHeight[-1] := FontDialog1.Font.Height;
end;

procedure TFmScanImage.ImageEnMView1ImageSelect(Sender: TObject;
  idx: Integer);
begin
  inherited;
  // Copy image
  Try
     ImageEnMView1.CopyToIEBitmap( idx, ImageEnVect1.IEBitmap );
     //ImageEnMView1.MIO.Params[idx].ImagingAnnot.CopyToTImageEnVect(ImageEnDBVect1);
     ImageEnVect1.Update;
  Except

  End;
end;

procedure TFmScanImage.RGOperationClick(Sender: TObject);
begin
  inherited;
  CreateBrush(Sender);
end;

procedure TFmScanImage.RGPenTypeClick(Sender: TObject);
begin
  inherited;
  CreateBrush(Sender);
end;

procedure TFmScanImage.SEBrushSizeChange(Sender: TObject);
begin
  inherited;
  CreateBrush(Sender);
end;

procedure TFmScanImage.ImageEnDBVect1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;

  if SbBrush.Down then
  begin
     StartX:=X;
     startY:=Y;
     if (PageControl1.ActivePage=BrushTab) then
        ImageEnDBVect1MouseMove(self,Shift,X,Y);
  end;
end;

procedure TFmScanImage.CreateBrush(Sender: TObject);
Var
   BrushSiz:integer;
   C:TColor;
   Transpvalue:integer;
   I:integer;
   X,Y:integer;
begin
  if ImageEnVect1.LayersCount=1 then
     ImageEnVect1.LayersAdd;
  ImageEnVect1.LayersCurrent:=1;

  BrushSiz := SEBrushSize.Value;
  { TODO -oparsa : 14030628 }
  if NotUseSEBrushSize then
    BrushSiz := 0;
  { TODO -oparsa : 14030628 }

  ImageEnVect1.Proc.ImageResize(BrushSiz,BrushSiz,iehLeft,ievTop);

  // prepare main color
  ImageEnVect1.IEBitmap.Canvas.Brush.Color := BrushColor.Color;
  ImageEnVect1.IEBitmap.Canvas.Pen.Color   := BrushColor.Color;

  // prepare alpha channel
  ImageEnVect1.AlphaChannel.Fill(0);

  with ImageEnVect1.AlphaChannel.Canvas do
  begin
     Transpvalue:=255;
     C := $02000000 or (transpvalue) or (transpvalue shl 8) or (transpvalue shl 16);
     Brush.Color:= c;
     Pen.Color:=c;
  end;

  if RGPenType.ItemIndex = 0 then //����� RectangleButton.Down
  begin
     ImageEnVect1.IEBitmap.Canvas.Rectangle(0,0,BrushSiz+1,BrushSiz+1);
     ImageEnVect1.AlphaChannel.Canvas.Rectangle(0,0,BrushSiz+1,BrushSiz+1);
  end
  else
  if RGPenType.ItemIndex = 1 then //����� ��  CircleButton.Down
  begin
     ImageEnVect1.IEBitmap.Canvas.Ellipse(0,0,BrushSiz+1,BrushSiz+1);
     ImageEnVect1.AlphaChannel.Canvas.Ellipse(0,0,BrushSiz+1,BrushSiz+1);
  end;

  ImageEnVect1MouseMove(self,[],0,0); // refresh current brush
end;

procedure TFmScanImage.ImageEnDBVect1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
Var
  px,py:integer;
  bx,by:integer;
  op:TIERenderOperation;
  Operation : Byte;
begin
   //�� ��
  {HorizRuler.GripsPos[0] := ImageEnDBVect1.XScr2Bmp( X );
  VertRuler.GripsPos[0]  := ImageEnDBVect1.YScr2Bmp( Y );}
  //---
  if SBBrush.Down then
  begin
       Operation := 0;
       OP := TIERenderOperation(Operation);
       with ImageEnDBVect1 do
         if LayersCount=2 then
         begin
           with Layers[1] do
           begin
              bx := Bitmap.Width;
              by := Bitmap.Height;
              px := XScr2Bmp(X) - Width div 2;
              py := YScr2Bmp(Y) - Height div 2;
              PosX := px;
              PosY := py;
              Operation := op;
           end;
           if MouseCapture then  // paint the layer (the brush...)
           begin
               Layers[1].Bitmap.RenderToTIEBitmapEx( Layers[0].Bitmap, px,py,bx,by, 0,0,bx,by,False, 255,rfNone,op );
               Layers[1].Bitmap.MergeAlphaRectTo( Layers[0].Bitmap, 0,0,px,py, bx,by);
           end;
           Update;
         end;
     lastX:=X;
     lastY:=Y;
  end;
end;

procedure TFmScanImage.btnActualSizeClick(Sender: TObject);
begin
  inherited;
//  ImageEnDBVect1.Zoom := 100;
  flag := 1;

  ImageEnDBView1.AutoFit := False;
  ImageEnDBView1.Zoom := 100;
  if ImageEnVect1.Visible then
     ImageEnVect1.Zoom := 100;
  LabelZoom .Caption :='��ѐ�����  :    '+ FloatToStr( Round(ImageEnDBView1.Zoom) )+'%';
end;

procedure TFmScanImage.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  //(Sender);
  ImageEnVect1.MouseInteractVt := [miObjectSelect];
  ControlAnable(False);
  SBBrush.Down := false;
  SpeedButton3.Down := true;
end;

procedure TFmScanImage.SBZoomClick(Sender: TObject);
begin
  inherited;
//  ImageEnDBView1.MouseInteract := [miZoom,miScroll];
   ImageEnVect1.MouseInteract := [miZoom,miScroll];
   ControlAnable(False);
end;

procedure TFmScanImage.SpeedButton13Click(Sender: TObject);
begin
  inherited;
  //ImageEnDBVect1.RotateAllObjects(-90,ierImage);
  SpeedButton3Click(sender);
     ImageEnVect1.Proc.Rotate(-90);
end;

procedure TFmScanImage.SpeedButton12Click(Sender: TObject);
begin
  inherited;
  //ImageEnDBVect1.RotateAllObjects(90,ierImage);
  SpeedButton3Click(sender);
  ImageEnVect1.Proc.Rotate(90);

end;

procedure TFmScanImage.ImageEnDBVect1NewObject(Sender: TObject;
  hobj: Integer);
begin
  inherited;
  ImageEnVect1.MouseInteractVt := [miObjectSelect];
end;

procedure TFmScanImage.ImageEnDBVect1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  i: integer;
begin
  inherited;
  if Key = Vk_Delete then
  begin
     For i := ImageEnDBVect1.SelObjectsCount - 1 downto 0 do
        ImageEnDBVect1.RemoveObject(ImageEnDBVect1.SelObjects[i]);
  end;

  ImageEnDBVect1.Proc.SaveUndo();
end;

procedure TFmScanImage.SpeedButton6Click(Sender: TObject);
var
  i: integer;
begin
  inherited;
  SpeedButton3Click(sender);
  For i := ImageEnVect1.SelObjectsCount - 1 downto 0 do
      ImageEnVect1.RemoveObject(ImageEnVect1.SelObjects[i]);

end;

procedure TFmScanImage.SpeedButton10Click(Sender: TObject);
var
  I, Obj: integer;
begin
  inherited;
  SpeedButton3Click(sender);
  obj := -1;
  if FontDialog1.Execute then
     For I := -1 to ImageEnVect1.SelObjectsCount - 1 do
     begin
       if I >= 0 then
          Obj := ImageEnVect1.SelObjects[I];
       ImageEnVect1.ObjPenColor[obj] := FontDialog1.Font.Color;
       ImageEnVect1.ObjFontStyles[-1] := FontDialog1.Font.Style;
       ImageEnVect1.ObjFontHeight[-1] :=  FontDialog1.Font.Height ;
     end;
end;

procedure TFmScanImage.SetTextFontColor;
begin
   ///
end;

procedure TFmScanImage.SpeedButton11Click(Sender: TObject);
begin
  inherited;
  SpeedButton3Click(sender);
  ImageEnVect1.MouseInteractVt := [miPutBox];
  ImageEnVect1.ObjBoxHighlight[-1] := True;
  ImageEnVect1.ObjBrushColor[-1] := clYellow;
  ImageEnVect1.ObjBrushStyle[-1] := bsSolid;
end;

procedure TFmScanImage.SignPicExecute(Sender: TObject);
Var
   StreamPic :TStream;
begin
  inherited;
{  Open_UserSign(_Userid);
  if dm.Select_UserSignUserSign.IsNull then
  begin
     MBaseForm.messageShowString('����� ����� ��� ����� ����� ������ �������', False);
     Exit;
  end;
  Try
     StreamPic := TStream.Create;
     StreamPic :=  dm.Select_UserSign.CreateBlobStream(dm.Select_UserSignUserSign,bmRead);
     ImageEnDBVect1.SetObjBitmapFromStream(-1,StreamPic,0);
     ImageEnDBVect1.MouseInteractVt := [miPutBitmap];
  Finally
     StreamPic.Free;
  End; }
end;

procedure TFmScanImage.CBHideObjectsClick(Sender: TObject);
begin
  inherited;
  SpeedButton3Click(sender);
  if CBHideObjects.Checked then
     ImageEnVect1.AllObjectsHidden := True
  else
     ImageEnVect1.AllObjectsHidden := False;
end;

procedure TFmScanImage.BBUndoClick(Sender: TObject);
begin
  inherited;
//  SpeedButton3Click(sender);
  if SBBrush.Down then
     ImageEnVect1.Proc.Undo
  else
     begin
        ImageEnVect1.ObjUndo;
        ImageEnVect1.ObjClearUndo;
     end;
end;

procedure TFmScanImage.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (ssCtrl in shift)And(QrLetterData.State in [dsEdit,dsInsert]) then
     if (Key = Word('z'))or(Key = Word('Z')) then
        BBUndo.Click;
  if Key = Vk_Escape then
     Close;
end;

procedure TFmScanImage.ControlAnable(anable:Boolean);
begin
   RGPenType.Enabled   := anable;
   Label1.Enabled      := anable;
   Label7.Enabled      := anable;
   SEBrushSize.Enabled := anable;
   BrushColor.Enabled  := anable;
   if not anable then
      ImageEnVect1.Cursor := 1785;
end;


procedure TFmScanImage.SBBrushClick(Sender: TObject);
begin
  inherited;

  ControlAnable(True);
  ImageEnVect1.MouseInteract := [];
  CreateBrush(Sender);
end;

procedure TFmScanImage.SBSettingsClick(Sender: TObject);
begin
   inherited;
   Settings := TSettings.Create(Nil);
   PageControl_SetTabSheet(Settings.PageControl1,'TShSystem');//PageControl ������ �ѐ� �����
//   Settings.Label34.Font.Color := clBlue;
   Settings.rgScanType.Font.Color := clBlue;
   Settings.ShowModal;
end;

procedure TFmScanImage.AprinttExecute(Sender: TObject);
begin
   inherited;

   if QrSelImage.State in [dsInsert,dsEdit] then
   begin
      MBaseForm.MessageShowString('���� ������� ��� ��  ����� ������', False);
      Exit;
   end;
   FmPrint := TFmPrint.Create(nil);
   FmPrint.ShowModal;

   {Ranjbar 89.06.06 ID=3}
   //Exec_UserLog(TAction(Sender).Tag);
   Exec_UserLog(TAction(Sender).Name);
   //---

end;

procedure TFmScanImage.BBAllScanImageClick(Sender: TObject);
begin
   inherited;
   with TADOQuery.Create(nil) do
   begin
      Connection := dm.YeganehConnection;
      SQL.Text := 'SELECT archiveID FROM LetterData WHERE  archiveID>0 AND LetterID =' + IntToStr(LetterID);
      Open;
      if not IsEmpty then
         ShowMessage('������ ���� ����� ���� ������ ����� ���� ������ ��');
   end;

   FmAllScanImage := TFmAllScanImage.Create(Nil);
   Try
      SPAllImage.Parameters.ParamByName('@LetterID').Value := LetterID;
      SPAllImage.Open;
      FmAllScanImage.ShowModal;
      QrLetterData.Locate('LetterDataID', SPAllImageLetterDataID.AsInteger,[]);
   Finally
      SPAllImage.Close;
      FreeandNil(FmAllScanImage);
   End;
end;

procedure TFmScanImage.ActSelScannerExecute(Sender: TObject);
begin
   inherited;

   if GetUserSetting('HasJpg') then //True = Jpg , False = Tif
   begin
      if ImageEnIO1.SelectAcquireSource {(ieaTWain)} then
         SetUserSetting('SelectedScanner' , ImageEnIO1.TWainParams.SelectedSource);
   end
   else
      begin
         (*if ImageEnMIO1.SelectAcquireSource {(ieaTWain)} then
            dm.SetValue(56 , ImageEnMIO1.TWainParams.SelectedSource);*)
         ImgScan.ShowSelectScanner;
      end;
end;

procedure TFmScanImage.btnSearchPhotoClick(Sender: TObject);
begin
   inherited;
      FmImageData := TFmImageData.Create(nil);
      FmImageData.ShowModal;
end;

procedure TFmScanImage.SBResizeClick(Sender: TObject);
begin
   inherited;
   SpeedButton3Click(sender);
   FmPicProgress := TFmPicProgress.Create(nil);
   FmPicProgress.PicWidth := ImageEnVect1.Bitmap.Width;
   FmPicProgress.PicHight := ImageEnVect1.Bitmap.Height;
   FmPicProgress.FormStyle := fsStayOnTop;
   FmPicProgress.Show;
end;

procedure TFmScanImage.SBDelAllDataClick(Sender: TObject);
begin
   inherited;
   if MBaseForm.MessageShowString('��� ���� �� ��� ����� ������ ����Ͽ', True) then
   begin
//      With DMScanImage do
      begin
         QrLetterData.First;
         while not QrLetterData.Eof do
         begin
            QrDelLetterData.Close;
            QrDelLetterData.Parameters.ParamByName('LetterDataID').Value := QrLetterDataLetterDataID.AsInteger;
            QrDelLetterData.ExecSQL;
            QrLetterData.Next;
         end;
         QrLetterData.Close;
         QrLetterData.open;
         ShowPageCount;
      end;
     { With DMScanImage do
         Try
            if QrLetterData.RecordCount = 0 then
               Exit;
            QrDelLetterData.Parameters.ParamByName('LetterID').Value := LetterID;
            QrDelLetterData.ExecSQL;
            Close_Open_QrLetterData;
            QrLetterData.Last;

         Finally
            QrDelLetterData.Close;
         end;     }
      {Ranjbar 89.07.08 ID=12}
      //LetterEdit ��� ������� ����� ��� ��� ��� �� ����
//      Dm.Insert_LetterEdit(LetterID,'��� ����� ������');
      Exec_insert_UserLog(7,'DeleteAllPictures',letterID);
      //---
   end;
end;

procedure TFmScanImage.SBGoToPageClick(Sender: TObject);
Var
   PageNumber:String;
begin
   inherited;
   if QrLetterData.RecordCount = 0 then
      Exit;;
   PageNumber := InputBox('����� ���� �����','���� ����� ���� ���� ��� �� ���� ������', IntToStr(QrLetterData.RecNo));
   if StrToIntDef(PageNumber,0) > 0 then
      {Ranjbar 89.07.05 ID=25}
      //DMScanImage.QrLetterData.RecNo := StrToIntDef(PageNum,0);
      QrLetterData.RecNo := StrToInt(PageNumber);//Locate('PageNumber',PageNumber,[]);
      //---
end;

procedure TFmScanImage.Timer1Timer(Sender: TObject);
begin
  inherited;
//   ImageEnDBVect1.FitToWidth;
   //ImageEnDBView1.FitToWidth;
   Timer1.Enabled := False;
end;

procedure TFmScanImage.ASaveAllExecute(Sender: TObject);
const
     SELDIRHELP = 1000;
var
   I,FirstPg,StartPg,EndPg,NextPg : Integer;
   HasPage : Boolean;
   Dir , FileName, FirstFileName, userFileName: string;
   FileNu:integer;
begin
  inherited;
  FileNu := 0;
  if QrLetterData.RecordCount = 0 then
     Exit;

  Try
     BBSaveAllToFiles.Enabled := False;
     Screen.Cursor := crHourGlass;

{     Dir := _TempPath+'YeganehPic';
     //SelectDirectory(dir,[sdAllowCreate,sdPerformCreate,sdPrompt],SELDIRHELP);
     if not DirectoryExists(Dir) then
        CreateDir(Dir)
    else
        EmptyDir(Dir);
     begin
         QrLetterData.First;
         FirstFileName := '';
         while not QrLetterData.Eof do
         begin
            Sleep(1);
            if QrSelImageextention.AsInteger=1 then
               FileName := Dir+'\'+Trim(QrSelImageLetterID.AsString)+'_'+IntToStr(QrLetterData.RecNo)+'.jpg'
            else
               FileName := Dir+'\'+Trim(QrSelImageLetterID.AsString)+'_'+IntToStr(QrLetterData.RecNo)+'.tiff';
            if FirstFileName = '' then
               FirstFileName := FileName;
            QrSelImageImage.SaveToFile(FileName);
            QrLetterData.Next;
         end;
         QrLetterData.First;
         ShellExecute(Handle, 'Open',Pchar(FirstFileName),nil,nil,SW_SHOWNORMAL);
     end; }
     SaveDialog1.Filter := //'JPEG Image File|*.jpg|JPEG Image File|*.jpeg|Bitmaps|*.bmp|TIFF|*.tiff';
                           //|All Graphics Types|*.bmp;*.jpg;*.jpeg;*.png;*.tif;*.tiff';
                           //'BMP|*.bmp|GIF|*.gif|JPG|*.jpg;*.jpeg|PNG|*.png|TIFF|*.tif;*.tiff';
                           'JPG|*.jpg;*.jpeg|TIFF|*.tif;*.tiff';

     if SaveDialog1.Execute then
        Dir := SaveDialog1.FileName;
     QrLetterData.First;
     FirstFileName := '';
     while not QrLetterData.Eof do
     begin
         Sleep(1);
         if QrSelImageextention.AsInteger=1 then
            FileName := Dir+'_'+IntToStr(QrLetterData.RecNo)+'.jpg'
         else
            FileName := Dir+'_'+IntToStr(QrLetterData.RecNo)+'.tiff';
         if FirstFileName = '' then
            FirstFileName := FileName;
         QrSelImageImage.SaveToFile(FileName);
         QrLetterData.Next;
      end;
      QrLetterData.First;
      ShellExecute(Handle, 'Open',Pchar(FirstFileName),nil,nil,SW_SHOWNORMAL);
  Finally
     BBSaveAllToFiles.Enabled := True;
     Screen.Cursor := crDefault;
  End;

end;

procedure TFmScanImage.SBReplacePicClick(Sender: TObject);
Var
   PageNumber:Integer;
   LetterDataID : Integer;
   I : Integer;
   tbl : array [1..4,1..32000] of integer;   //1-> RecNo    2-> LetterDataID  3->PageNumber  4-> New PageNumber
   RecCount : integer;
   Source: integer;
   Destination:integer;
   temp: integer;
begin
   inherited;
   if QrLetterData.RecordCount = 0 then  // ǐ� ����� ����� �����
      Exit;
   LetterDataID := QrLetterDataLetterDataID.AsInteger;
   Source := QrLetterData.RecNo;
   Destination := StrToIntDef(InputBox('����� ���� ���� �����','���� ����� ���� ������� �� ���� ������', QrSelImagePageNumber.AsString),0);

   if Source=Destination then  // ǐ� ����� ���� � ���� �� ����
      exit;
   if (Destination<1)or(Destination>QrLetterData.RecordCount) then  // ǐ� ����� ���� ���� �� ���� ����
      exit;

   with TADOQuery.Create(nil) do
   begin
      Connection := QrLetterData.Connection;
      SQL.Text := QrLetterData.SQL.Text;
      Parameters[0].Value := QrLetterDataLetterID.AsInteger;
      open;
      RecCount := 1;
      First;
      while not eof do
      begin
         tbl[1,RecCount] := RecNo;
         tbl[2,RecCount] := FieldByName('LetterDataID').AsInteger;
         tbl[3,RecCount] := FieldByName('PageNumber').AsInteger;
         inc(RecCount);
         Next;
      end;
   end;

   if Source>Destination then
   begin
      for i:= Source downto Destination do
         tbl[4,i] := tbl[2,i-1];
      tbl[4,Destination] := tbl[2,Source];
      for i:= Destination to Source do
         with TADOQuery.Create(nil) do
         begin
            Connection := QrLetterData.Connection;
            SQL.Text := 'UPDATE LetterData SET PageNumber='+IntToStr(tbl[3,i])+' WHERE LetterDataID='+IntToStr(tbl[4,i]);
            ExecSQL;
         end;
   end
   else     //Destination > Source
   begin
      for i:= Source to Destination do
         tbl[4,i] := tbl[2,i+1];
      tbl[4,Destination] := tbl[2,Source];
      for i:= Source to Destination do
         with TADOQuery.Create(nil) do
         begin
            Connection := QrLetterData.Connection;
            SQL.Text := 'UPDATE LetterData SET PageNumber='+IntToStr(tbl[3,i])+' WHERE LetterDataID='+IntToStr(tbl[4,i]);
            ExecSQL;
         end;
   end;

   QrLetterData.Close;
   QrLetterData.Open;
   QrLetterData.Locate('LetterDataID',LetterDataID,[])

 {  With DMScanImage do
   begin
      LetterDataID := QrLetterDataLetterDataID.AsInteger;
      PageNumber := StrToIntDef(InputBox('����� ����','���� ����� ���� �� ����� ������', QrSelImagePageNumber.AsString),0);
      if (PageNumber>0)And(PageNumber<>QrSelImagePageNumber.AsInteger) then
      begin
         //�� ���� ���� ����� ���� �����
         if QrLetterData.Locate('PageNumber',PageNumber,[]) then
         begin
            //���� ���� Order By PageNumber ���� ���� �� ���� QrLetterData
            //����� ���� ��� ����
            I := PageNumber+1;
            While not QrLetterData.Eof do
            begin
               QrLetterData.Edit;
               QrLetterDataPageNumber.AsInteger := I;
               QrLetterData.Post;
               QrLetterData.Next;
               I := I+1;
            end;

            //����� ����� ���� �������
            QrLetterData.Locate('LetterDataID',LetterDataID,[]);
            QrLetterData.Edit;
            QrLetterDataPageNumber.AsInteger := PageNumber;
            QrLetterData.Post;
         end
         else
         begin
            QrLetterData.Edit;
            QrLetterDataPageNumber.AsInteger := PageNumber;
            QrLetterData.Post;
         end;

         Close_Open_QrLetterData;

         //����� ����� ����� �� �����
         I := 1;
         QrLetterData.First;
         While not QrLetterData.Eof do
         begin
            QrLetterData.Edit;
            QrLetterDataPageNumber.AsInteger := I;
            QrLetterData.Post;
            QrLetterData.Next;
            I := I+1;
         end;

         QrLetterData.Locate('LetterDataID',LetterDataID,[]);
      end;
   end;
         }
end;

procedure TFmScanImage.SpeedButton7Click(Sender: TObject);
Var
   I : Integer;
   qry1,qry2 : TADOQuery;
begin
  inherited;
   if QrLetterData.RecordCount = 0 then
      Exit;

   //����� ����� ����� �� �����
//   With DMScanImage do
   begin
      I := 1;
      qry1 := TADOQuery.Create(nil);
      qry1.Connection := QrLetterData.Connection;
      qry2 := TADOQuery.Create(nil);
      qry2.Connection := QrLetterData.Connection;
      qry1.SQL.Text := 'SELECT LetterDataID,PageNumber FROM LetterData WHERE LetterID='+QrLetterDataLetterID.AsString+' ORDER BY PageNumber';
      qry1.Open;
      While not qry1.Eof do
      begin
         qry2.SQL.Text := 'UPDATE LetterData SET PageNumber='+IntToStr(i)+' WHERE LetterDataID='+qry1.Fields.fieldbyname('LetterDataID').AsString;
         qry2.ExecSQL;
         qry1.Next;
         inc(i);
      end;
   end;
    ShowMessage('����� ����� ����� �������� ����� �� ����� ����� ��');
end;

procedure TFmScanImage.YRotateLabel1Click(Sender: TObject);
begin
  if Panel6.Width<=0 then
  begin
      Panel6.Width:=147;
      if PageControl1.Enabled then
      begin
         ImageEnDBVect1.LayersRemove(1);//
         ImageEnVect1.DeSelect;
         ImageEnVect1.UnSelAllObjects;
         ImageEnVect1.LayersMergeAll;
         ImageEnVect1.RemoveAllObjects;
         ImageEnVect1.Align := alClient;
         ImageEnVect1.Zoom := ImageEnView1.Zoom;
//         ImageEnVect1.IO.IEBitmap.Assign(ImageEnDBView1.IO.IEBitmap);
         ImageEnDBView1.IO.SaveToFileJpeg(_TempPath+'\t.jpg');
         ImageEnVect1.IO.LoadFromFileJpeg(_TempPath+'\t.jpg');
         ImageEnVect1.Repaint;
         ImageEnVect1.Visible := true;

      end;
  end
  else
  begin
      Panel6.Width:=0;
      if PageControl1.Enabled then
      begin
         ImageEnDBVect1.LayersRemove(1);//
           ImageEnVect1.DeSelect;
           ImageEnVect1.UnSelAllObjects;
           ImageEnVect1.LayersMergeAll;  //????? ????? ??? ?? ?? ????? ?? ???
           ImageEnVect1.RemoveAllObjects;
         ImageEnDBView1.IO.IEBitmap.Assign(ImageEnVect1.IO.IEBitmap);
         ImageEnVect1.Visible := false;
         ImageEnVect1.Align := alNone;
      end;
  end;
end;

procedure TFmScanImage.YRotateLabel2Click(Sender: TObject);
begin
  if Panel7.Width<=0 then Panel7.Width:=147 else Panel7.Width:=0;
  TDrawGrid(DBGrid1).FixedCols:=0;
end;

procedure TFmScanImage.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    if not Dm.qDefineColors.IsEmpty then
    if not (DBGrid1.DataSource.DataSet.State in [dsEdit,dsInsert]) then
    if UpperCase(Column.FieldName)=UpperCase('Color') then
    begin
        DBGrid1.Canvas.Brush.Color:=StringToColor(Dm.qDefineColorsColor.AsString);
        DBGrid1.Canvas.FillRect(Rect);
    end;
end;

procedure TFmScanImage.acShowSelectedPagesExecute(Sender: TObject);
var
  ActionName:String;
begin
  inherited;
{  ActionName:='ac'+Dm.qSelectedColorColor.AsString;
  if CheckAccessColors(ActionName) then
  begin
      DMScanImage.ColorID:=Dm.qSelectedColorColorID.AsInteger;
      if DMScanImage.ColorID=-1 then
      begin
         DMScanImage.QrLetterData.Close;
         DMScanImage.QrLetterData.SQL.Text := 'Select LetterDataID ,LetterID ,PageNumber,ColorID  '+
                                                'From LetterData  Where( LetterID = :Pa_LetterID )  And( Extention in (1,2) )  '+
                                                'Order By PageNumber ';
         DMScanImage.QrLetterData.Open;
      end
      else if DMScanImage.ColorID=0 then
      begin
         DMScanImage.QrLetterData.Close;
         DMScanImage.QrLetterData.SQL.Text := 'Select LetterDataID ,LetterID ,PageNumber,ColorID  '+
                                                'From LetterData  Where( LetterID = :Pa_LetterID )  And( Extention in (1,2) )  '+
                                                'And( (ColorID IS NULL) OR (ColorID=0) ) Order By PageNumber ';
         DMScanImage.QrLetterData.Open;
      end
      else if DMScanImage.ColorID>0 then
      begin
         DMScanImage.QrLetterData.Close;
         DMScanImage.QrLetterData.SQL.Text := 'Select LetterDataID ,LetterID ,PageNumber,ColorID  '+
                                                'From LetterData  Where( LetterID = :Pa_LetterID )  And( Extention in (1,2) )  '+
                                                'And ColorID='+IntToStr(DMScanImage.ColorID)+' Order By PageNumber ';
         DMScanImage.QrLetterData.Open;
      end;

 {     DMScanImage.QrSelImage.Close;
      DMScanImage.QrSelImage.SQL.Clear;
      DMScanImage.QrSelImage.SQL.Add('Select  *  From LetterData');
      DMScanImage.QrSelImage.SQL.Add('Where LetterID ='+IntToStr(LetterID));
      DMScanImage.QrSelImage.SQL.Add(' and ColorID='+QuotedStr(IntToStr(Dm.qSelectedColorColorID.AsInteger)));
      DMScanImage.QrSelImage.Open;        }

{      ShowNotPageFromAll;
  end
  else
     ShowMsgString('���� ������ �������� ��� �� �� ������ - �� ���� ����� ��� ���� Ȑ����');}
end;

procedure TFmScanImage.acShowAllPagesExecute(Sender: TObject);
begin
  inherited;
{  if TRUE then
  begin
      DMScanImage.ColorID:=-1;
      DMScanImage.QrLetterData.Close;
         DMScanImage.QrLetterData.SQL.Text := 'Select LetterDataID ,LetterID ,PageNumber,ColorID  '+
                                                'From LetterData  Where( LetterID = :Pa_LetterID )  And( Extention in (1,2) )  '+
                                                'Order By PageNumber ';
         DMScanImage.QrLetterData.Open;
      ShowPageFromAll;
      Close_Open_QrLetterData;
  end
  else
      ShowMsgString('���� ������ ���� ����� ����� �� ������ - �� ���� ����� ��� ���� Ȑ����')};
end;

procedure TFmScanImage.acShowNotColorPagesExecute(Sender: TObject);
begin
{  DMScanImage.ColorID:=0;
  DMScanImage.QrLetterData.Close;
         DMScanImage.QrLetterData.SQL.Text := 'Select LetterDataID ,LetterID ,PageNumber  '+
                                                'From LetterData  Where( LetterID = :Pa_LetterID )  And( Extention in (1,2) )  '+
                                                ' Order By PageNumber ';
         DMScanImage.QrLetterData.Open;
  ShowNotPageFromAll;       }
end;

procedure TFmScanImage.ShowPageCount;
begin
//  if DMScanImage.ColorID=-1 then
  begin
    if QrSelImage.Active then
    begin
      lblCount.text:=' ���� ' + IntToStr(QrLetterData.RecNo) +' �� '+IntToStr(QrLetterData.RecordCount);
        // Edit1.Visible:=True;
        // Edit1.Text:='';
      try
//            Edit1.Color:= StringToColor(GetColor(DMScanImage.QrSelImageColorID.AsInteger));
      except
        //    Edit1.Color:= Panel8.Color;
      end;
    end
//      else
//         ShowMessage('�� ��� ���� ��� ���� ����� ����� ��� ��� ��� ���� �� ��� ����� ���� ��� � ����� ���� ����');
  end;
{  if DMScanImage.ColorID=0 then
  begin
      if DMScanImage.QrSelImage.Active then
      begin
         lblCount.Caption:=' ���� ' + IntToStr(DMScanImage.QrLetterData.RecNo) +' �� '+IntToStr(DMScanImage.QrLetterData.RecordCount);
         Edit1.Visible:=True;
         Edit1.Color:= Panel8.Color;
      end
      else
         ShowMessage('�� ��� ���� ��� ���� ����� ����� ��� ��� ��� ���� �� ��� ����� ���� ��� � ����� ���� ����');
  end;
  if DMScanImage.ColorID>0 then
  begin
      if DMScanImage.QrSelImage.Active then
      begin
         lblCount.Caption:=' ���� ' + IntToStr(DMScanImage.QrLetterData.RecNo) +' �� '+IntToStr(DMScanImage.QrLetterData.RecordCount);
         Edit1.Visible:=True;
         Edit1.Text:='';
       //  ShowMessage(Dm.qSelectedColorColor.AsString);
         Edit1.Color:= StringToColor(Dm.qSelectedColorColor.AsString);
      end
      else
         ShowMessage('�� ��� ���� ��� ���� ����� ����� ��� ��� ��� ���� �� ��� ����� ���� ��� � ����� ���� ����');
  end;  }
end;

procedure TFmScanImage.acAttachColorExecute(Sender: TObject);
begin
  inherited;
  if _CanAttachColor then
  begin
    try
      if QrSelImageLetterDataID.AsInteger>0 then
      begin
        if not Dm.qDefineColors.IsEmpty then
        begin
          qAttachColor.Close;
          qAttachColor.Parameters.ParamByName('ColorID').Value:=Dm.qDefineColorsID.AsInteger;
          qAttachColor.Parameters.ParamByName('LetterDataID').Value:=QrSelImageLetterDataID.AsInteger;
          qAttachColor.ExecSQL;
          Exec_insert_UserLog(7,'SetImageColor',QrSelImageLetterID.AsInteger);
          ShowMsgString('������ �� �� ������ ����� ��');
        end;
      end
      else
        ShowMsgString('����� ���� �����');
    except on e:exception do
      ShowMsgString('������ �� ������ �� �� ���');
    end;
  end
  else
    ShowMsgString('���� ������� �� ���� ���� ����� �� �� ������ - �� ���� ����� ��� ���� Ȑ����');
end;

procedure TFmScanImage.ShowPageFromAll;
begin
//  Label3.Visible:=True;
//  Label4.Visible:=True;
//  DBEPageNumber.Visible:=True;
//  DBERecCount_Calc.Visible:=True;
//  Edit2.Visible:=True;
//  Edit2.Height:=41;
end;

procedure TFmScanImage.ShowNotPageFromAll;
begin
//  Label3.Visible:=False;
//  Label4.Visible:=False;
//  DBEPageNumber.Visible:=False;
//  DBERecCount_Calc.Visible:=False;
//  Edit2.Visible:=False;
end;

function TFmScanImage.GetColor(ColorID: Integer): String;
begin
  Result:='';
  if ColorID>0 then
  begin
    qGetColor.Close;
    qGetColor.Parameters.ParamByName('ColorID').Value:=ColorID;
    qGetColor.Open;
    if not qGetColor.IsEmpty then
      Result:=qGetColorColor.AsString;
  end;
end;

//procedure TFmScanImage.SetHeaderColor;
//begin
//  if not DMScanImage.QrSelImage.IsEmpty then
//     if Label4.Visible then
//     begin
//        Panel10.Visible:=True;
//        if not DMScanImage.QrSelImageColorID.IsNull then
//          Panel10.Color:= StringToColor(GetColor(DMScanImage.QrSelImageColorID.AsInteger))
//        else
//          Panel10.Color:=Panel1.Color;
//    end
//    else
//       Panel10.Visible:=False;
//end;

procedure TFmScanImage.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not DBGrid2.DataSource.DataSet.IsEmpty then
    if DBGrid2.DataSource.DataSet.FieldValues['ColorID']>0 then
      if UpperCase(Column.FieldName)=UpperCase('Color') then
      begin
        DBGrid2.Canvas.Brush.Color:=StringToColor(Dm.qSelectedColorColor.AsString);
        DBGrid2.Canvas.FillRect(Rect);
      end;
end;

procedure TFmScanImage.PageControl2Change(Sender: TObject);
begin
  if PageControl2.ActivePageIndex=0 then
    Dm.OpenqSelectedColor(LetterID);
end;

procedure TFmScanImage.DBGrid2DblClick(Sender: TObject);
begin
  if DBGrid2.DataSource.DataSet.FieldValues['ColorID']>0 then
    acShowSelectedPagesExecute(Application)
  else if DBGrid2.DataSource.DataSet.FieldValues['ColorID']=0 then
    acShowNotColorPagesExecute(Application)
  else if DBGrid2.DataSource.DataSet.FieldValues['ColorID']=-1 then
    acShowAllPagesExecute(Application);
  if QrLetterData.IsEmpty then
    ImageEnDBView1.Clear;
end;

procedure TFmScanImage.DBColorChange(Sender: TObject);
begin
{  if not DMScanImage.QrSelImage.IsEmpty then
     if not DMScanImage.QrSelImageColorID.IsNull then
        Edit2.Color:=StringToColor(GetColor(DMScanImage.QrSelImageColorID.AsInteger))
     else
        Edit2.Color:=Panel1.Color
  else
     Edit2.Color:=Panel1.Color;  }
end;

procedure TFmScanImage.YRotateLabel4Click(Sender: TObject);
begin
//  if Panel2.Width<=0 then Panel2.Width:=110 else Panel2.Width:=0;
end;

function TFmScanImage.CheckAccessColors(ActionName: String): Boolean;
begin
  Result:=False;
  if _CanViewAllAttachPages then
    Result:=True
  else
  begin
    QCheckActionAccess.Close;
    QCheckActionAccess.Parameters.ParamByName('acName').Value:=ActionName;
    QCheckActionAccess.Parameters.ParamByName('AccessID').Value:=_AccessID;
    QCheckActionAccess.Open;
    if not QCheckActionAccess.IsEmpty then
      Result:=QCheckActionAccessHasAccess.AsBoolean;
  end;
end;

procedure TFmScanImage.acDeAttachColorExecute(Sender: TObject);
begin
  inherited;
  if _CanAttachColor then
  begin
    try
      if QrSelImageLetterDataID.AsInteger>0 then
      begin
        qAttachColor.Close;
        qAttachColor.Parameters.ParamByName('ColorID').Value:=Null;
        qAttachColor.Parameters.ParamByName('LetterDataID').Value:=QrSelImageLetterDataID.AsInteger;
        qAttachColor.ExecSQL;
        Exec_insert_UserLog(7, 'RemoveImageColor',QrSelImageLetterID.AsInteger);
//      Dm.Insert_LetterEdit(DMScanImage.QrSelImageLetterID.AsInteger,'��� �� �����');
        ShowMsgString('������ ������ ����� ��');
      end
      else
        ShowMsgString('����� ���� �����');
    except on e:exception do
      ShowMsgString('������ �� ��� ������ �� �� ���');
    end;
  end
  else
    ShowMsgString('���� ������� �� ���� ���� ����� �� �� ������ - �� ���� ����� ��� ���� Ȑ����');
end;

procedure TFmScanImage.ChangeJPGToTifAndSave(FileName: String);
var
   im1,im2 :TImage;
   r1, r2: TRect;
   can1, can2: TCanvas;
   imV1,imV2: TImageEnView;
   imP1 : TImageEnProc;
begin
   imV1 := TImageEnView.Create(self);
   imV2 := TImageEnView.Create(self);
   imV2.IO.LoadFromFileJpeg(FileName);
   imV2.IO.SaveToFileBMP(_TempPath+'tmp.bmp');
   im1 := TImage.Create(self);
   im2 := TImage.Create(self);
   im1.Picture.Bitmap.LoadFromFile(_TempPath+'tmp.bmp');
   im2.Picture.bitmap.Height := im1.Picture.bitmap.Height;
   im2.Picture.bitmap.Width := im1.Picture.bitmap.Width;
   r1 := Rect(0,0,im1.picture.bitmap.Width,im1.picture.bitmap.Height);
   r2 := Rect(0,0,im2.picture.bitmap.Width,im2.picture.bitmap.Height);
   can1 := im1.Picture.Bitmap.Canvas;
   can2 := im2.Picture.Bitmap.Canvas;
   im2.Picture.Bitmap.PixelFormat := pf1bit;
   can2.CopyRect(r2,can1,r1);
   Im2.Picture.Bitmap.SaveToFile(_TempPath+'tmp.bmp');
   im1.Free;
   im2.Free;
   try
      imV1.IO.LoadFromFileTIFF(_TempPath+'4.tif');
   except
   end;
   //imV2.IO.Bitmap.PixelFormat := pf1bit;
   imV2.IO.LoadFromFileBMP(_TempPath+'tmp.bmp');
{   imP1 := TImageEnProc.Create(self);
   imP1.AttachedImageEn := imV2;
   imP1.ConvertToBWThreshold(50);  }
   //imV1.IO.Bitmap.PixelFormat := pf1bit;
//   imV1.IO.Bitmap.Assign();
   imV2.IO.SaveToFileTIFF(_TempPath+'tmp.tiff');
   imV1.IEBitmap.Assign(imV2.IEBitmap);
   imV1.IO.SaveToFileTIFF(_TempPath+'tmp.tiff');
   imV1.Free;
   imV2.Free;
   {
   DeleteFile(_TempPath+'tmp.bmp');
   FillData(FileName+'.tiff');
   DeleteFile(FileName+'.tiff');
     }
   if FileExists(pchar(_TempPath+'tmp.bmp')) then
   begin
     SysUtils.FileSetReadOnly(_TempPath+'tmp.bmp', false);
     DeleteFile(_TempPath+'tmp.bmp');
   end;
   if FileExists(pchar(_TempPath+'tmp.tiff')) then
   begin
     ChangeMultyTifToTifsAndSave(_TempPath+'tmp.tiff');  //���� TIFF �� �� ���� ����� TIFF ����� ���
     FMWaitPlease.Refresh;
    // FillData(_TempPath+'tmp.tiff');//(FileName+'.tiff');
     SysUtils.FileSetReadOnly(_TempPath+'tmp.tiff', false);//(FileName+'.tiff', false);
     DeleteFile(_TempPath+'tmp.tiff');//(FileName+'.tiff');
   end;
end;

procedure TFmScanImage.ImageEnVect1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  i: integer;
begin
  inherited;
  if Key = Vk_Delete then
  begin
    for i := ImageEnVect1.SelObjectsCount - 1 downto 0 do
      ImageEnVect1.RemoveObject(ImageEnVect1.SelObjects[i]);
  end;
  ImageEnVect1.Proc.SaveUndo();
end;

procedure TFmScanImage.ImageEnVect1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if SbBrush.Down then
  begin
    StartX:=X;
    startY:=Y;
    if (PageControl1.ActivePage=BrushTab) then
      ImageEnVect1MouseMove(self,Shift,X,Y);
  end;
end;

procedure TFmScanImage.ImageEnVect1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
Var
  px,py:integer;
  bx,by:integer;
  op:TIERenderOperation;
  Operation : Byte;
begin
  if SBBrush.Down then
  begin
    Operation := 0;
    OP := TIERenderOperation(Operation);
    with ImageEnVect1 do
      if LayersCount=2 then
      begin
        with Layers[1] do
        begin
          bx := Bitmap.Width;
          by := Bitmap.Height;
          px := XScr2Bmp(X) - Width div 2;
          py := YScr2Bmp(Y) - Height div 2;
          PosX := px;
          PosY := py;
          Operation := op;
        end;


      if MouseCapture then  // paint the layer (the brush...)
      begin
        Layers[1].Bitmap.RenderToTIEBitmapEx( Layers[0].Bitmap, px,py,bx,by, 0,0,bx,by,False, 255,rfNone,op );
        Layers[1].Bitmap.MergeAlphaRectTo( Layers[0].Bitmap, 0,0,px,py, bx,by);
      end;
      Update;
    end;
    lastX:=X;
    lastY:=Y;
  end;

end;

procedure TFmScanImage.ImageEnVect1NewObject(Sender: TObject;
  hobj: Integer);
begin
  inherited;
  ImageEnVect1.MouseInteractVt := [miObjectSelect];
end;

procedure TFmScanImage.ImageEnVect1ViewChange(Sender: TObject;
  Change: Integer);
begin
  inherited;
//  ImageEnVect1.FitToWidth;
  LabelZoom .Caption :='��ѐ�����  :    '+ FloatToStr( Round(ImageEnVect1.Zoom) )+'%';
end;

procedure TFmScanImage.ImageEnDBView1ViewChange(Sender: TObject;
  Change: Integer);
begin
  inherited;
  LabelZoom .Caption :='��ѐ�����  :    '+ FloatToStr(Round(ImageEnDBView1.Zoom) )+'%';
//  ImageEnDBView1.FitToWidth;
//  LabelZoom .Caption :='��ѐ�����  :    '+ FloatToStr( Round(ImageEnView1.Zoom) )+'%';

  if (GetUserSetting('ImageSize') = 2) and (flag = 0)  then
  begin
    ImageEnDBView1.AutoFit := False;
    ImageEnDBView1.Zoom := 100;
    if ImageEnVect1.Visible then
      ImageEnVect1.Zoom := 100;
    LabelZoom .Caption :='��ѐ�����  :    '+ FloatToStr( Round(ImageEnDBView1.Zoom) )+'%';
  end;

end;

procedure TFmScanImage.lblCountClick(Sender: TObject);
begin
  inherited;
//   ShowMessage(IntToStr(DMScanImage.QrLetterData.RecordCount));
end;

procedure TFmScanImage.Button1Click(Sender: TObject);
begin
  inherited;
   QrLetterData.Close;
   QrLetterData.Parameters[0].Value := LetterID;
   QrLetterData.Open;
end;

procedure TFmScanImage.QrLetterDataAfterScroll(DataSet: TDataSet);
begin
  inherited;

  Screen.Cursor := crHourGlass;
  try
    QrSelImage.Close;
    QrSelImage.SQL.Clear;
    QrSelImage.SQL.Add('Select * From LetterData');

    if (QrLetterDataArchiveID.AsInteger>0) then
    begin
      if dm.ArchiveConnection.Connected then
      begin
        QrSelImage.Connection := dm.ArchiveConnection;
        QrSelImage.SQL.Add('Where LetterDataID ='+IntToStr(QrLetterDataArchiveID.AsInteger));
      end
      else
      begin
        ShowMessage('������ �� ����� ���� ������ ����� ����');
      end;
    end
    else
    begin
      QrSelImage.Connection := dm.YeganehConnection;
      QrSelImage.SQL.Add('Where LetterDataID ='+IntToStr(QrLetterDataLetterDataID.AsInteger));
    end;
    QrSelImage.Open;
  finally
    QrSelImage.Connection := dm.YeganehConnection;
    Screen.Cursor := crDefault;
  end;
  Randomize;
end;

procedure TFmScanImage.QrSelImageCalcFields(DataSet: TDataSet);
begin
  inherited;
  QrSelImageImageSize_Calc.AsString := inttostr(FmScanImage.ImageEnDBView1.Bitmap.Height) + ' * ' + inttostr(FmScanImage.ImageEnDBView1.Bitmap.Width);
end;

procedure TFmScanImage.QrLetterDataBeforeScroll(DataSet: TDataSet);
begin
  inherited;
  FmScanImage.ImageEnDBView1.PrepareTransition;
  FmScanImage.PageControl1.Enabled := false;
  FmScanImage.BBScan.Enabled := false;
  FmScanImage.BBOpenFile.Enabled := false;
  FmScanImage.ImageEnVect1.Visible := false;
end;

procedure TFmScanImage.QrListItemsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  QrListItemsListID.AsInteger := 8;
  QrListItemsKeyValue.AsInteger := 0;
  QrListItemsUsersID.AsInteger := _UserId;
end;

procedure TFmScanImage.QrLetterDataCalcFields(DataSet: TDataSet);
begin
  inherited;
  QrLetterDataRecCount_Calc.AsInteger := QrLetterData.RecordCount;
end;

procedure TFmScanImage.DSSelImageDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  FmScanImage.ShowPageCount;
end;

procedure TFmScanImage.QrSelImageAfterScroll(DataSet: TDataSet);
begin
  inherited;
  FmScanImage.Edit2.Text := inttostr(FmScanImage.ImageEnDBView1.Bitmap.Height) + ' * ' + inttostr(FmScanImage.ImageEnDBView1.Bitmap.Width);
end;

procedure TFmScanImage.SetShowImageTool(const Value: Boolean);
begin
  FShowImageTool := Value;
end;

procedure TFmScanImage.BitBtn4Click(Sender: TObject);
begin
  inherited;
  Exec_UserLog(TBitBtn(Sender).name);
  Close;
  MainForm.AAnswer.Execute;
end;

procedure TFmScanImage.BitBtn5Click(Sender: TObject);
begin
  inherited;
  Exec_UserLog(TBitBtn(Sender).name);
//  close;
  MainForm.AnewRecommite.Execute;
end;

procedure TFmScanImage.BitBtn6Click(Sender: TObject);
begin
  inherited;
  Exec_UserLog(TBitBtn(Sender).name);
  Close;
  MainForm.ADoCommite.Execute;
end;

procedure TFmScanImage.SBPolyLineClick(Sender: TObject);
begin
  inherited;
  SpeedButton3.Click;
  SpeedButton3.Down := True;
  ImageEnVect1.ObjPenColor[-1] := clBlack;
  ImageEnVect1.MouseInteractVt := [miPutPolyLine];
end;

procedure TFmScanImage.ImageEnDBVect1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if (ImageEnDBVect1.MouseInteractVt = [miPutPolyLine])And not(SBBrush.Down) then
  begin
    ImageEnDBVect1.MouseInteractVt := [miObjectSelect];
    SBPolyLine.Click; //����� ������
  end;
end;

procedure TFmScanImage.ImageEnDBVect1ViewChange(Sender: TObject;
  Change: Integer);
begin
  inherited;
  LabelZoom .Caption :='��ѐ�����  :    '+ FloatToStr( Round(ImageEnDBVect1.Zoom) )+'%';
end;

procedure TFmScanImage.TimerCleanClipboardTimer(Sender: TObject);
begin
  inherited;
  //commented by Hamed_Ansari_981126
  //if Clipboard.HasFormat(cf_picture) then
  //Clipboard.Clear;
end;

procedure TFmScanImage.ImageEnDBView1MouseWheel(Sender: TObject;
  Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
  var Handled: Boolean);
begin
  inherited;
  ImageEnDBView1.AutoFit := False;
end;

procedure TFmScanImage.LoadAndShow_SQL(filename: string);
begin
   if (QrSelImage.State = dsedit) then
   begin
      QrSelImageImage.LoadFromFile(filename);
      if (UpperCase(File_GetFileExt(filename)) = 'TIF')or(UpperCase(File_GetFileExt(filename)) = 'TIFF') then
         QrSelImageExtention.AsInteger := 2 //TIFF
      else
         QrSelImageExtention.AsInteger := 1; //JPEG Format
      ImageEnVect1.LayersRemove(1);
      QrSelImageLastUpdate.AsDateTime := Now;
      QrSelImageLetterID.AsInteger := fmScanImage.LetterID;
      QrSelImageIsCorrectedImage.AsBoolean := True;
     { TODO -oparsa : 14030514 }
     QrSelImageIsTemplate.AsBoolean := True;
     { TODO -oparsa : 14030514 }
      QrSelImage.Post;
      QrLetterData.Cancel;
   end
   else if (QrSelImage.State = dsinsert) then
   begin
      QrSelImageImage.LoadFromFile(filename);
      if (UpperCase(File_GetFileExt(filename)) = 'TIF')or(UpperCase(File_GetFileExt(filename)) = 'TIFF') then
         QrSelImageExtention.AsInteger := 2 //TIFF
      else
         QrSelImageExtention.AsInteger := 1; //JPEG Format
      ImageEnVect1.LayersRemove(1);
      QrSelImageLastUpdate.AsDateTime := Now;
      QrSelImageLetterID.AsInteger := fmScanImage.LetterID;
      QrSelImageIsCorrectedImage.AsBoolean := True;
      { TODO -oparsa : 14030514 }
      QrSelImageIsTemplate.AsBoolean := True;
      { TODO -oparsa : 14030514 }
      QrSelImagePageNumber.AsInteger := dm.YeganehConnection.execute('select isnull(max(pagenumber),0)+1 from letterdata where letterid = '+IntToStr(fmScanImage.LetterID)).fields[0].Value;
      if QrSelImagePageNumber.AsInteger =0 then
      QrSelImagePageNumber.AsInteger:=1;
      QrSelImage.Post;
   end;
end;

procedure TFmScanImage.UpdateLetterFromLetterData;
var
 AQry : TADOQuery;
begin
//Hamed_Ansari_990727_S
  AQry := TADOQuery.Create(nil);
  try
    AQry.Connection := Dm.YeganehConnection;
    AQry.Close;
    AQry.SQL.Text := ' Select 1 From LetterData Where LetterID = ' + IntToStr(LetterID);
    AQry.Open;
    if not AQry.IsEmpty then
    begin
      AQry.SQL.Text := ' update letter set Has_Page = dbo.has_Page(letterid) ' +
                      ' from Letter Where LetterID = ' + IntToStr(LetterID);
      AQry.ExecSQL;
    end;
  finally
    FreeAndNil(AQry);
  end;
//Hamed_Ansari_990727_E
end;

procedure TFmScanImage.ImageEnDBView1ImageChange(Sender: TObject);
begin
  inherited;
{
  try
    case GetUserSetting('ImageSize') of
      0 : FitToPageClick(Self);
      1 : btnWidthSizeClick(Self);
      2 : btnActualSizeClick(Self);
      else  FitToPageClick(Self);
    end;
  except on e:exception do
  end;
}
end;

end.

              {
             for i:= 0 to filecount2(_TempPath+'\Images')-2 do
            begin
               if FileExists(_TempPath+'\Images\'+IntToStr(i)+'.tif') then
               begin
                  ImageEnView1.io.LoadFromFileTIFF(_TempPath+'\Images\'+IntToStr(i)+'.tif');
                  ImageEnView1.io.SaveToFileTIFF(_TempPath+'\output'+IntToStr(i+1)+'.tif');
                  ImageEnView1.io.SaveToFileJpeg(_TempPath+'\output'+IntToStr(i+1)+'.jpg');
                  if QrLetterData.State=dsinsert then
                  begin   ////////////////Insert
                     quImage.Open;
                     quImage.Insert;
                     quImageLetterID.AsInteger := LetterID;
                     quImagePageNumber.AsInteger := Dm.YeganehConnection.Execute('Select IsNull(Max(PageNumber),0)+1 As NextPageNumber '+
                                   ' from LetterData Where LetterID = '+IntToStr(LetterID)).Fields[0].value;
                     quImageLastUpdate.AsDateTime:= Now;
                      if Get_File_Size1(_TempPath+'\output'+IntToStr(i+1)+'.tif',true)>Get_File_Size1(_TempPath+'\output'+IntToStr(i+1)+'.jpg',true) then
                      begin
                        quImageextention.AsInteger := 1;
                        quImageImage.LoadFromFile(_TempPath+'\output'+IntToStr(i+1)+'.jpg');
                        quImageDescription.AsString := '';//'output'+IntToStr(i+1)+'.jpg';
                      end
                      else
                      begin
                        quImageextention.AsInteger := 2;
                        quImageImage.LoadFromFile(_TempPath+'\output'+IntToStr(i+1)+'.tif');
                        quImageDescription.AsString := '';//'output'+IntToStr(i+1)+'.tif';
                      end;
                      quImage.Post;
               //       quImage.Close;
                      Application.ProcessMessages;
                      if FileExists(_TempPath+'\output'+IntToStr(i+1)+'.tif') then
                          DeleteFile(_TempPath+'\output'+IntToStr(i+1)+'.tif');
                      if FileExists(_TempPath+'\output'+IntToStr(i+1)+'.jpg') then
                          DeleteFile(_TempPath+'\output'+IntToStr(i+1)+'.jpg');
                  end
                  else   ///////////////// Edit
                  begin
                     QrSelImage.Edit;
                     QrSelImageIsCorrectedImage.AsBoolean := true;
                     QrSelImageLastUpdate.AsDateTime:= Now;
                      if Get_File_Size1(_TempPath+'\output'+IntToStr(i+1)+'.tif',true)>Get_File_Size1(_TempPath+'\output'+IntToStr(i+1)+'.jpg',true) then
                      begin
                        QrSelImageextention.AsInteger := 1;
                        QrSelImageImage.LoadFromFile(_TempPath+'\output'+IntToStr(i+1)+'.jpg');
                      end
                      else
                      begin
                        QrSelImageextention.AsInteger := 2;
                        QrSelImageImage.LoadFromFile(_TempPath+'\output'+IntToStr(i+1)+'.tif');
                      end;
                      QrSelImage.Post;
                    //  quImage.Close;
                      Application.ProcessMessages;
                      if    FileExists(_TempPath+'\output'+IntToStr(i+1)+'.tif') then
                          DeleteFile(_TempPath+'\output'+IntToStr(i+1)+'.tif');
                      if FileExists(_TempPath+'\output'+IntToStr(i+1)+'.jpg') then
                          DeleteFile(_TempPath+'\output'+IntToStr(i+1)+'.jpg');
                  end;
               end;
            end;
            } // for i:= 0 to ima



