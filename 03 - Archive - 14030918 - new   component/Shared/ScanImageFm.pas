unit ScanImageFm;

interface

uses
  BaseUnit,Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, ComCtrls, StdCtrls, Mask, Buttons, DB, ADODB,
  ExtDlgs, xpWindow, ExtActns, ActnList, DBActns, XPStyleActnCtrls, ActnMan,
  ieview, imageenview, dbimageen, ievect, dbimageenvect,
  rulerbox, iegradientbar, histogrambox, iemview, iemio, imageenproc, imageen, dbcgrids, imageenio, Spin  ,
  ShellApi , hyieutils ,hyiedefs , Printers, OleCtrls, ScanLibCtl_TLB,
  Grids, DBGrids, YRotateLabel, YDbgrid, Menus, IdBaseComponent, IdCoder,
  IdCoder3to4, IdCoderMIME, TntDialogs, TntExtDlgs, BaseUnits, jpeg,
  StrUtils, IdComponent, IdTCPConnection, IdTCPClient, IdFTP, AdvObj,
  BaseGrid, AdvGrid, DBAdvGrid,
  AdvDropDown, AdvColorPickerDropDown   ,AdvUtil, ImgList, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxNavigator,
  cxDBNavigator, TntExtCtrls, DBTreeView, SynGdiPlus, AppEvnts,iexBitmaps,
  iesettings, ieopensavedlg, AdvGlowButton;

type
  TFmScanImage = class(TMBaseForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    xpBitBtn1: TAdvGlowButton;
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
    BBSaveAllToFiles: TAdvGlowButton;
    BBOpenFile: TAdvGlowButton;
    ColorDialog1: TColorDialog;
    ImageEnMView1: TImageEnMView;
    FontDialog1: TFontDialog;
    LabelZoom: TLabel;
    ImageEnMIO1: TImageEnMIO;
    SBSettings: TAdvGlowButton;
    BitBtn1: TAdvGlowButton;
    ActSelScanner: TAction;
    BBAllScanImage: TAdvGlowButton;
    Timer1: TTimer;
    ASaveAll: TAction;
    Action1: TAction;
    SBDelAllData: TAdvGlowButton;
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
    sbPoint: TSpeedButton;
    Bevel2: TBevel;
    Bevel1: TBevel;
    Bevel3: TBevel;
    SBResize: TSpeedButton;
    BBUndo: TAdvGlowButton;
    BitBtn9: TAdvGlowButton;
    SpinEdit1: TSpinEdit;
    BitBtn2: TBitBtn;
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
    IdDecoderMIME1: TIdDecoderMIME;
    SaveDialog1: TSaveDialog;
    OpenPictureDialog: TTntOpenPictureDialog;
    acSettings: TAction;
    IdFTP1: TIdFTP;
    Action2: TAction;
    ImageList1: TImageList;
    ImageList2: TImageList;
    TreeView1: TTreeView;
    N10: TMenuItem;
    N11: TMenuItem;
    DBN1: TDBNavigator;
    Label2: TLabel;
    ImageEnVectMain: TImageEnVect;
    StaticText1: TStaticText;
    cxDBNavigator2: TcxDBNavigator;
    Edit1: TEdit;
    Panel8: TPanel;
    Label5: TLabel;
    SpeedButton2: TAdvGlowButton;
    Label6: TLabel;
    DBLkCBListItemsID: TDBLookupComboBox;
    DBENotes: TDBEdit;
    pb1: TProgressBar;
    tvColorView: TTreeView;
    dsqSelectedColor: TDataSource;
    sbCrop: TSpeedButton;
    sbSelect: TSpeedButton;
    ApplicationEvents1: TApplicationEvents;
    ImageEnDBVect1: TImageEnDBVect;
    ImageEnView1: TImageEnView;
    ImageEnDBView1: TImageEnDBView;
    PopupMenu3: TPopupMenu;
    N12: TMenuItem;
    pnlMain: TPanel;
    FitToPage: TAdvGlowButton;
    btnWidthSize: TAdvGlowButton;
    btnActualSize: TAdvGlowButton;
    BitBtn3: TAdvGlowButton;
    BitBtn7: TAdvGlowButton;
    SpeedButton3: TSpeedButton;
    SBGoToPAge1: TAdvGlowButton;
    SBReplacePic1: TAdvGlowButton;
    SpeedButton71: TAdvGlowButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBN1Click(Sender: TObject; Button: TNavigateBtn);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure FitToPageClick(Sender: TObject);
    procedure btnWidthSizeClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure OpenFileExecute(Sender: TObject);
    procedure OpenFileExecute_SQL(Sender: TObject);
    procedure SaveAsExecute(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn31Click(Sender: TObject);
    procedure BitBtn71Click(Sender: TObject);
    procedure ImageEnDBView3Click(Sender: TObject);
    procedure DBN1BeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure ScanExecute(Sender: TObject);
    procedure ScanSQl;
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
    procedure sbPointClick(Sender: TObject);
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
    procedure AprinttExecute(Sender: TObject);
    procedure BBAllScanImageClick(Sender: TObject);
    procedure ActSelScannerExecute(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SBResizeClick(Sender: TObject);
    procedure SBDelAllDataClick(Sender: TObject);
    procedure SBGoToPageClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ASaveAllExecute(Sender: TObject);
    procedure SBReplacePicClick(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure YRotateLabel1Click(Sender: TObject);
    procedure YRotateLabel2Click(Sender: TObject);
    procedure acShowSelectedPagesExecute(Sender: TObject; intColorId : Integer; strColor : string);
    procedure acShowSelectedPagesExecute1(ColorID:String);
    procedure acShowAllPagesExecute(Sender: TObject);
    procedure acShowNotColorPagesExecute(Sender: TObject);
    procedure acAttachColorExecute(Sender: TObject);
    procedure PageControl2Change(Sender: TObject);
    procedure acDeAttachColorExecute(Sender: TObject);
    procedure ImageEnVectMainKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ImageEnVectMainMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImageEnVectMainMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ImageEnVectMainNewObject(Sender: TObject; hobj: Integer);
    procedure ImageEnVectMainViewChange(Sender: TObject; Change: Integer);
    procedure ImageEnDBView1ViewChange(Sender: TObject; Change: Integer);
    procedure BitBtn4Click(Sender: TObject);
    procedure acSettingsExecute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure ImageEnView1Click(Sender: TObject);
    procedure ImageEnVectMainClick(Sender: TObject);
    procedure ImageEnMView1Click(Sender: TObject);
    procedure ImageEnDBView1Click(Sender: TObject);
    procedure TreeView1Click(Sender: TObject);
    procedure TreeView1GetSelectedIndex(Sender: TObject; Node: TTreeNode);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure TreeView1DblClick(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure tvColorViewDblClick(Sender: TObject);
    procedure tvColorViewChange(Sender: TObject; Node: TTreeNode);
    procedure tvColorViewGetSelectedIndex(Sender: TObject;
      Node: TTreeNode);
    procedure ImageEnVectMainMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sbCropClick(Sender: TObject);
    procedure sbSelectClick(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure N12Click(Sender: TObject);
  private
    StartX , StartY , LastX , LastY:integer;
    _BaseSQLConnection:TBaseSQLConnection;
    Edit : Boolean;
    procedure SavenadLoadInDB(FileNames:String);
    Procedure ControlEnabled(Anabled:Boolean);
    Procedure Exec_UserLog(ActionName:String);
    procedure FillData(aFileName:String);
    procedure FillData_SQL(aFileName:String);
    procedure EnableScan(aConAnable:Boolean);
    procedure SetTextFontColor;
    procedure ControlAnable(anable:Boolean);
    procedure ShowPageFromAll;
    procedure ShowNotPageFromAll;
    function  GetColor(ColorID:Integer):String;
    function  CheckAccessColors(ActionName:String):Boolean;
    Function  UploadFileToFTP(Source:string;UploadFile:String):String;
    procedure LoadImages;
    procedure AddNodeINTreeView(LDestNode: TTreeNode;_ID:String);
    procedure AddNodeINTvColorView(LDestNode: TTreeNode;_ID:String);
    function  FindID(_Name:String):String;
    procedure findNodeInColorView(findNode: TTreeNode;var Id : Integer; var Color : string);
    procedure NavigatorHandel;
  public
    _SaveFileType:String;
    _IMGDPI:String;
    _MyPuletColors:String;
    QUICK_SCAN : Boolean;
    _MyLetterID:String;
    _JpegFIleChange:TImageFile;
    letterformat,ReceiveTypeID : integer;
    LetterID : Integer;
    RReadOnly : Boolean;
    _ColorsID:String;
     _DownloadSetting:TDownloadSetting;
    function  CreateBitmapSolidColor(Width,Height:Word;Color:TColor;const FileName : TFileName):Integer;
    procedure ChangeMultyTifToTifsAndSave(aFileName:String);
    procedure ChangeJPGToTifAndSave(FileName:String);
    Procedure Close_Open_QrLetterData;
    procedure ShowPageCount;
    procedure LoadAndShow(filename : string);
    procedure LoadAndShow_SQL(filename : string);
    procedure ItializeDownloadSetting;
  end;

type
   TNodeInfo = record
     id   : Integer;
     node : TTreeNode;
     color: string;
     name : string;
   end;

Var
  FmScanImage: TFmScanImage;
  ValueColorID,SelecttionColorId,flag : Integer;
  arrColorView : array of TNodeInfo;
  recColorView : TNodeInfo;
  currNode     : TTreeNode;
implementation

Uses Dmu, ScanImageDM , YShamsiDate , BusinessLayer, UMain, UPagePreview,
  InsertText, AllScanImageFm, ImageDataFM, Settingsu, PicProgressFm,
  WaitPleaseFM, PrintFm, EZTwain, ADOInt, UAddDocument, DateUtils,
  Upd_latererdata;

{$R *.dfm}

function TFmScanImage.CreateBitmapSolidColor(Width,Height:Word;Color:TColor;const FileName : TFileName):Integer;
var
  bmp : TBitmap;
begin
  bmp := TBitmap.Create;
  try
    bmp.PixelFormat := pf24bit;
    bmp.Width := Width;
    bmp.Height := Height;
    bmp.Canvas.Brush.Color := Color;
    bmp.Canvas.FillRect(Rect(0, 0, Width, Height));
    ImageList2.Add(bmp,bmp);
    Result := ImageList2.Count - 1;
  finally
    bmp.Free;
  end;
end;

procedure SetWinControlBiDi(Control: TWinControl);
var
  ExStyle: Longint;
begin
  ExStyle := GetWindowLong(Control.Handle, GWL_EXSTYLE);
  SetWindowLong(Control.Handle, GWL_EXSTYLE, ExStyle or WS_EX_RTLREADING or WS_EX_RIGHT or WS_EX_LAYOUTRTL or WS_EX_NOINHERITLAYOUT );
end;

Procedure TFmScanImage.Close_Open_QrLetterData;
begin
  With DMScanImage do
  begin
    QrLetterData.Close;
    QrLetterData.Parameters.ParamByName('Pa_LetterID').Value := LetterID;
    QrLetterData.Open;
//      DBN1.DataSource:=DMScanImage.DSLetterData;
//      ImageEnDBView1.DataSource:=DMScanImage.DSLetterData;
    ImageEnDBView1.Update;
  end;
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
 } end;


procedure TFmScanImage.FormShow(Sender: TObject);
var
  UserIdCreator : Integer;
  LDestNode : TTreeNode;
  AQry : TADOQuery;
  _Query : String;
begin
  inherited;
  AQry := TADOQuery.Create(Self);
  try
    AQry.Connection := Dm.YeganehConnection;
    AQry.Close;
    AQry.SQL.Text := 'Select UserID From Letter Where LetterId = ' + Dm.SelectLetter;
    AQry.Open;
    UserIdCreator := AQry.FieldByName('UserId').AsInteger;
  finally
    FreeAndNil(AQry);
  end;

  if not Dm.UsersShowAllDoc.AsBoolean then
    if Dm.UsersId.AsInteger <> UserIdCreator then
    begin
      DBN1.VisibleButtons := [nbPrior, nbFirst, nbLast, nbNext];
      SBDelAllData.Enabled := False;
      Edit := True;
    end;

  ImageList2.Clear;

  if _SaveFileType='2' then
    ImageEnDBView1.DataField:='Image'
  else
    ImageEnDBView1.DataField:='FileType';

  SetWinControlBiDi(TreeView1);
  TreeView1.Refresh;
  try
    _Query:='Select * From DefineColors where  parent =0 Order by Id Desc';
    Dm.qDefineColors.SQL.Clear;
    Dm.qDefineColors.SQL.Add(_Query);
    Dm.qDefineColors.Open;

    //Add Father
    TreeView1.Items.Clear;
    Dm.qDefineColors.First;

    repeat
      try
        LDestNode:=TreeView1.Items.AddFirst(nil, Dm.qDefineColors.FieldByName('Descriptions').asstring);
        LDestNode.ImageIndex := CreateBitmapSolidColor(16,16,StringToColor(Dm.qDefineColors.FieldByName('Color').asString),'');
        AddNodeINTreeView(LDestNode,Dm.qDefineColors.FieldByName('ID').asstring);
      except
       on E : Exception do
        begin
         DMScanImage.WriteExceptionToFile(E.ClassName,E.Message);
        end;
      end;

      Dm.qDefineColors.Next;
    until Dm.qDefineColors.Eof;

    Dm.qDefineColors.RecNo:=1;
  except
   on E : Exception do
    begin
     DMScanImage.WriteExceptionToFile(E.ClassName,E.Message);
    end;
  end;
  SetWinControlBiDi(tvColorView);
  tvColorView.Refresh;
{
  _Query:=  'Select MAX(dc.Parent) as Parent, MAX(dc.Descriptions) as Descriptions, MAX(dc.Color) as Color, LD.ColorID ' +
            'From LetterData LD Inner Join DefineColors dc On LD.ColorID = dc.ID Where LD.LetterID = ' + IntToStr(LetterID) + ' And Dc.Parent = 0 ' +
            'Group by LD.ColorID ' +
            'Union ALL ' +
            'Select 0 as Parent, N''���� �����'' as Descriptions,N''clBtnFace'' as Color ,-1 as ColorID ' +
            'Union ALL ' +
            'Select 0 as Parent, N''���� ��'' as Descriptions,N''clBtnFace'' as Color ,-2 as ColorID ';
}
  _Query:=  'With Tree AS ( ' +
                'Select ID, Parent, Descriptions, Color From DefineColors ' +
                'Where Id in (Select ID	From DefineColors DC Where DC.ID in ( ' +
                'Select Distinct LD.ColorID	From LetterData LD Where LD.LetterID = ' + IntToStr(LetterID) + ')) ' +
                'Union All ' +
                'Select T.Id, T.Parent, T.Descriptions, T.Color From DefineColors T Inner Join Tree On T.Id = Tree.Parent) ' +
            'Select Distinct Parent, Descriptions, Color, ID as ColorId From Tree Where Parent = 0 ' +
            'Union All ' +
            'Select 0 as Parent, N''���� �����'' as Descriptions,N''clBtnFace'' as Color ,-1 as ColorID ' +
            'Union ALL ' +
            'Select 0 as Parent, N''���� ��'' as Descriptions,N''clBtnFace'' as Color ,-2 as ColorID';

  with TADOQuery.Create(nil) do
  begin
    SQL.Clear;
    SQL.Add(_Query);
    Connection:=Dm.YeganehConnection;
    try
      open;
      if IsEmpty then
      begin
        Free;
        Exit;
      end;

      repeat
        try
          LDestNode := tvColorView.Items.AddFirst(nil, FieldByName('Descriptions').asstring);
          LDestNode.ImageIndex := CreateBitmapSolidColor(16,16,StringToColor(FieldByName('Color').asString),'');

          recColorView.id    := FieldByName('ColorID').AsInteger;
          recColorView.color := FieldByName('Color').AsString;
          recColorView.name  := FieldByName('Descriptions').AsString;
          recColorView.node  := LDestNode;

          SetLength(arrColorView, Length(arrColorView) + 1);
          arrColorView[High(arrColorView)] := recColorView;

          AddNodeINTvColorView(LDestNode,FieldByName('ColorId').asstring);

        except on E:Exception do
          begin
           DMScanImage.WriteExceptionToFile(E.ClassName,E.Message);
          end;

        end;
        Next;
      until Eof;
    except on E:Exception do
        begin
         DMScanImage.WriteExceptionToFile(E.ClassName,E.Message);
        end;
    end;
    free
  end;

  try
    ItializeDownloadSetting;
//   MainForm.RefreshQuery;
    if Assigned(FrAddDocument) then
      _MyLetterID := IntToStr(FrAddDocument.Select_LetterLetterID.AsInteger)
    else
      _MyLetterID := Dm.Get_All_LetterLetterID.AsString;
  except
   on E : Exception do
    begin
     DMScanImage.WriteExceptionToFile(E.ClassName,E.Message);
    end;
  end;

  try
    if not dm.GetActionAccess(ADelete.Name,self.Tag) then
    begin
      SBDelAllData.Hide;
      dbn1.VisibleButtons:=DBN1.VisibleButtons-[nbDelete];
    end;

    if not dm.GetActionAccess(Action1.Name,self.Tag) then
    begin
      dbn1.VisibleButtons:=DBN1.VisibleButtons-[nbEdit,nbPost,nbInsert];
    end;

  except
   on E : Exception do
    begin
     DMScanImage.WriteExceptionToFile(E.ClassName,E.Message);
    end;
  end;

  DMScanImage := TDMScanImage.Create(Self);

  With DMScanImage do
  begin
    Close_Open_QrLetterData;
       //QrLetterData.First;
    LetterID2 := LetterID;

    QrListItems.Close;
    QrListItems.Parameters.ParamByName('UsersID').Value := _UserId;
    QrListItems.Open;
  end;
//    end;
  ImageEnDBView1.Align := alClient;
  ImageEnDBView1.Repaint;
  DBNav_Setup(DBN1);

  ControlEnabled(False);
  //BrushColor.Color := $00FF6C6C;
  ControlAnable(False);
  PageControl1.Enabled := False;
  Align := alClient;
  Timer1.Enabled := True;
  ImageEnProc1.AttachedImageEn := ImageEnVectMain;
  ImageEnIO1.AttachedImageEn   := ImageEnVectMain;
  ImageEnMIO1.AttachedMView    := ImageEnMView1;

  if QUICK_SCAN then
  begin
    DMScanImage.QrSelImage.Append;
    ControlEnabled(True);
    BBScan.Click;
  end;

  ValueColorID := -2;

 //   FitToPageClick(Self);
  if Dm.GetValue(2104) = 0 then
    FitToPageClick(Self)
  else if Dm.GetValue(2104) = 1 then
    btnWidthSizeClick(Self)
  else if Dm.GetValue(2104) = 2 then
    btnActualSizeClick(Self);
  flag := 0;
// acShowNotColorPagesExecute(Application)
end;

procedure TFmScanImage.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  AQry : TADOQuery;
begin
  inherited;

  arrColorView := nil;

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

  With DMScanImage do
  begin
    QrLetterData.Close;
    QrSelImage.Close;
  end;

  FreeAndNil(DMScanImage);
end;

procedure TFmScanImage.DBN1Click(Sender: TObject; Button: TNavigateBtn);
begin
  inherited;

  if Button = nbInsert then
  begin
    if Not(DMScanImage.QrSelImage.State = dsInsert) then
    begin
      if _SaveFileType = '2' then
      begin
        DMScanImage.QrSelImage.Insert;
        if DMScanImage._LetterID <> '' then
          DMScanImage.QrSelImage.FieldByName('LetterID').value:=DMScanImage._LetterID;
      end;
    end;
    ControlEnabled(True);
  end;

  if Button = nbEdit then
  begin
    ControlEnabled(True);
    Exec_insert_UserLog('EditPicture',DMScanImage.QrLetterDataLetterID.AsInteger);
    Dm.Insert_LetterEdit(DMScanImage.QrLetterDataLetterID.AsInteger,'������ �����');
  end;

  if Button = nbCancel then
  begin
    DMScanImage.QrSelImage.Cancel;
    While ImageEnVectMain.LayersCount > 1 do
      ImageEnVectMain.LayersRemove(ImageEnVectMain.LayersCount-1);
     //For Refresh Image
    ImageEnVectMain.Refresh;
    ControlEnabled(False);
    ImageEnDBView1.Visible := True;
  end;

  if Button = nbDelete then
  begin
     //������� ��� DBN1BeforeAction ���� ���� ��� ������ �� ������
  end;


  //ImageEnDBVect1.FitToWidth;
  try
    if (Button = nbInsert) and (PageControl2.ActivePageIndex = 0) and (_MyPuletColors = '���� ��') then
      Edit1.Color := clBtnFace
    else
    if (_MyPuletColors <> '') and (_MyPuletColors <> '���� ��') and (_MyPuletColors <> '���� �����') then
      Edit1.Color:= StringToColor(_MyPuletColors);

    if (Button <> nbInsert) then
    begin
      if (_MyPuletColors = '') or (_MyPuletColors = '���� ��') or
      (DMScanImage.QrLetterDataColorID.AsString = '0') or (DMScanImage.QrLetterDataColorID.AsString = '') or
      (DMScanImage.QrLetterDataColorID.AsString = '-2') then
        Edit1.Color := clBtnFace;
    end;
  except
   on E : Exception do
    begin
     DMScanImage.WriteExceptionToFile(E.ClassName,E.Message);
    end;
  end;

  ImageEndbView1.FitToWidth;
//      try
//        if DMScanImage.QrSelImageColorID.AsInteger=0  then
//        begin
//          Edit1.Color:= clWindow;
//          Edit1.Visible:=false;
//        end
//        else
//        begin
//          Edit1.Color:= StringToColor(GetColor(DMScanImage.QrSelImageColorID.AsInteger));
//          Edit1.Visible:=True;
//        end;
//      except
//      end;

  NavigatorHandel;
  if Dm.GetValue(2104) = 0 then
    FitToPageClick(Self)
  else if Dm.GetValue(2104) = 1 then
    btnWidthSizeClick(Self)
  else if Dm.GetValue(2104) = 2 then
    btnActualSizeClick(Self);
end;

Procedure TFmScanImage.FillData(aFileName:String);
var
  FileName: string;
  SaveFileName,SaveFileUrl:string;
  AQry : TADOQuery;
  FileFtpPath : String;
begin
  //ShowMessage('Save Image -- FillData -- Start : ' + TimeToStr(Now));
  FileFtpPath := '';
  With DMScanImage do
  begin
    Application.ProcessMessages;
    Sleep(1500);

    if Not(QrLetterData.State in [dsEdit,dsInsert]) then
      Exit;

      {Ranjbar 89.05.15}
      //QrSelImage.Append;
    if QrLetterData.State=dsinsert then
      QrSelImage_Insert.Append
    else
      QrSelImage_Insert.Edit;
      //---
      //qAttachColor.Parameters.ParamByName('ColorID').Value:=Label3.Caption;
      //QrSelImage_InsertImage.LoadFromFile(aFileName);
    if (UpperCase(File_GetFileExt(aFileName)) = 'TIF')or(UpperCase(File_GetFileExt(aFileName)) = 'TIFF') then
      QrSelImage_InsertExtention.AsInteger := 2 //TIFF or Jpeg
    else
      QrSelImage_InsertExtention.AsInteger := 1; //JPEG Format

    ImageEnVectMain.LayersRemove(1);//
    //Hamed_Ansari_990630_S

    QrSelImage_InsertImage.LoadFromFile(aFileName);
    //Hamed_Ansari_990630_E
    QrSelImage_InsertLastUpdate.AsDateTime := Now;
    QrSelImage_InsertLetterID.AsInteger := fmScanImage.LetterID;
    if QrSelImage.State = dsEdit then
     FileFtpPath := ExtractFileName(QrSelImagePath.AsString);
    if QrSelImage_Insert.State = dsInsert then
      QrSelImage_InsertPageNumber.AsInteger := Dm.YeganehConnection.Execute('Select IsNull(Max(PageNumber),0)+1 As NextPageNumber '+
               ' from LetterData Where Extention <3 And LetterID = ' + QrSelImage_InsertLetterID.AsString).Fields[0].value;
    {Ranjbar 90.03.18 ID=378} //And ID=105
    QrSelImage_InsertImage.LoadFromFile(aFileName);
    QrSelImage_InsertIsCorrectedImage.AsBoolean := True;
    //---
    if ValueColorID <> -1 then
      QrSelImage_InsertColorID.AsInteger := ValueColorID
    else
      QrSelImage_InsertColorID.AsInteger := 0;

    QrSelImage_Insert.Post;
    //ShowMessage('Save Image -- FillData --Post : ' + TimeToStr(Now));

    if QrSelImage_Insertextention.AsInteger=1 then
      FileName := Dm.File_AddressAddress.AsString + Trim(QrSelImage_InsertLetterID.AsString)+'_'+IntToStr(QrSelImage_InsertPageNumber.AsInteger)+'.jpg'
       //FileName := '\\192.168.88.39\d\a\0\' + Trim(QrSelImage_InsertLetterID.AsString)+'_'+IntToStr(QrSelImage_InsertPageNumber.AsInteger)+'.jpg'
    else
       //FileName := '\\192.168.88.39\d\a\0\' + Trim(QrSelImage_InsertLetterID.AsString)+'_'+IntToStr(QrSelImage_InsertPageNumber.AsInteger)+'.tiff';
      FileName := Dm.File_AddressAddress.AsString + Trim(QrSelImage_InsertLetterID.AsString)+'_'+IntToStr(QrSelImage_InsertPageNumber.AsInteger)+'.tiff';

    if FileFtpPath = '' then //1401/06/09
     SaveFileUrl  := _MyLetterID + FormatDateTime('hhmmss', now) + ExtractFileExt(aFileName)
    else
     SaveFileUrl := FileFtpPath;

    SaveFileName := UploadFileToFTP(aFileName, SaveFileUrl);

    //ShowMessage('Save Image -- FillData --Upload : ' + TimeToStr(Now));

    DMScanImage.ADOQuery1.Close;
    DMScanImage.ADOQuery1.Parameters.ParamByName('path').Value  := SaveFileName;
    DMScanImage.ADOQuery1.Parameters.ParamByName('URL').Value   := SaveFileName;
    DMScanImage.ADOQuery1.Parameters.ParamByName('Pa_LetterDataID').Value := QrSelImage_InsertLetterDataID.AsInteger;
    //DMScanImage.ADOQuery1.Parameters.ParamByName('Pa_LetterDataID').Value := _MyLetterID ;//QrSelImage_InsertLetterDataID.AsInteger;
    DMScanImage.ADOQuery1.ExecSQL;
    //ShowMessage('Save Image -- FillData --Save Sql : ' + TimeToStr(Now));

    //QrSelImage_InsertImage.SaveToFile(FileName);
     {
      QrLetterData.Close;
      QrLetterData.Parameters.ParamByName('Pa_LetterID').Value := LetterID;
      QrLetterData.Open;
         QrLetterData.First;
         while not QrLetterData.Eof do
         begin
            Sleep(1);
            if DMScanImage.QrSelImageextention.AsInteger=1 then
               FileName := 'F:\0\' + Trim(DMScanImage.QrSelImageLetterID.AsString)+'_'+IntToStr(DMScanImage.QrLetterData.RecNo)+'.jpg'
            else
               FileName := 'F:\0\' + Trim(DMScanImage.QrSelImageLetterID.AsString)+'_'+IntToStr(DMScanImage.QrLetterData.RecNo)+'.tiff';
            DMScanImage.QrSelImageImage.SaveToFile(FileName);

            DMScanImage.ADOQuery1.Close;
            DMScanImage.ADOQuery1.Parameters.ParamByName('path').Value :=  FileName;
            DMScanImage.ADOQuery1.Parameters.ParamByName('Pa_LetterDataID').Value := IntToStr(QrLetterDataLetterDataID.AsInteger);
            DMScanImage.ADOQuery1.ExecSQL;
            QrLetterData.Next;
         end;
        // ShellExecute(Handle, 'Open',Pchar(FileName),nil,nil,SW_SHOWNORMAL);


     QrSelImageImage.SaveToFile(FileName);}
   //   QrSelImageImage.SaveToFile('F:\0\text.jpg');
//      ShellExecute(Handle, 'Open',Pchar('F:\0\text.jpg'),nil,nil,SW_SHOWNORMAL);
      {ADOQuery1.close;
      ADOQuery1.Parameters.ParamByName('Pa_LetterDataID').Value := IntToStr(QrLetterDataLetterDataID.AsInteger);
      ADOQuery1.ExecSQL;}



    //+IntToStr(QrLetterDataLetterDataID.AsInteger))
      //
      //Commented By Hamed_Ansari_990128
      //ADOQuery2.Close;
      //ADOQuery2.ExecSQL;
      Application.ProcessMessages;
   end;
  //ShowMessage('Save Image -- FillData --End : ' + TimeToStr(Now));

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
    Exec_insert_UserLog(ActionName,LetterID);
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
    ImageEnVectMain.LayersRemove(1);
    ImageEnVectMain.Visible := false;
  end;
end;

procedure TFmScanImage.FitToPageClick(Sender: TObject);
begin
  inherited;
  flag := 1;
//  ImageEnDBVect1.Fit;
  ImageEnDBView1.Fit;
  if ImageEnVectMain.Visible then
    ImageEnVectMain.FitToWidth;
  LabelZoom .Caption :='��ѐ�����  :    '+ FloatToStr( Round(ImageEnDBView1.Zoom) )+'%';
end;

procedure TFmScanImage.btnWidthSizeClick(Sender: TObject);
begin
  inherited;
//  ImageEnDBVect1.FitToWidth;
  flag := 1;
  ImageEnDBView1.AutoFit := False;
  ImageEnDBView1.FitToWidth;
  if ImageEnVectMain.Visible then
    ImageEnVectMain.FitToWidth;
  LabelZoom .Caption :='��ѐ�����  :    '+ FloatToStr( Round(ImageEnDBView1.Zoom) )+'%';
end;

procedure TFmScanImage.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  sbPointClick(sender);
  ImageEnVectMain.ObjBoxHighlight[-1] := False;
  ImageEnVectMain.ObjPenColor[-1] := clYellow;
  ImageEnVectMain.ObjBrushStyle[-1] := bsClear;
  ImageEnVectMain.ObjMemoCharsBrushStyle[-1] := bsClear;
  ImageEnVectMain.MouseInteractVt := [miPutBox];
end;

procedure TFmScanImage.SpeedButton9Click(Sender: TObject);
begin
  inherited;
  sbPointClick(sender);
  ImageEnVectMain.Proc.Rotate(180);
end;

procedure TFmScanImage.OpenFileExecute(Sender: TObject);
Var
  I, fn:integer;
  IsJpegFormat, isEdit:Boolean;
  SaveFileUrl:string;
  FileNames:String;
begin
  inherited;
  if _SaveFileType='2' then
  begin
    OpenFileExecute_SQL(Sender);
    with TADOQuery.Create(Nil) do
    begin
      SQL.Clear;
      SQL.Add('delete from letterdata where pagenumber is null')   ;
      try
        Connection:=dm.YeganehConnection;
        ExecSQL;
      except
      end;
      free;
    end;

    try
      //ATAIE??????????
      if ValueColorID<>-1 then
    except
    end;
  end
  else
  begin
    try
      if (_MyPuletColors <> '') and (_MyPuletColors <> '���� ��') and (_MyPuletColors <> '���� �����') then
        Edit1.Color:= StringToColor(_MyPuletColors)
      else
        Edit1.Color := clBtnFace;
    except
    end;

    if Not(DMScanImage.QrLetterData.State in [dsEdit,dsInsert]) then
      Exit;

      //IsJpegFormat :=  dm.GetValue(55);
      IsJpegFormat :=  dm.GetSystemValue(27);

      if IsJpegFormat then
        OpenPictureDialog.filterindex := 1//Filter := 'JPEG Image File (*.jpg;*.jpeg)|*.jpeg;*.jpg'
      else
        OpenPictureDialog.filterindex := 2;//Filter := 'Tiff(*.Tif)|*.Tif';

      if DMScanImage.QrLetterData.State =dsEdit then
        isEdit := true;

      if isEdit then
      begin
        OpenPictureDialog.Filter := 'JPEG Image File (*.jpg;*.jpeg)|*.jpeg;*.jpg' ;
      end
      else
      begin
        OpenPictureDialog.Filter := 'JPEG Image File (*.jpg , *.jpeg)|*.jpeg;*.jpg|Tiff(*.tif , *.tiff)|*.tif;*.tiff';
      end;

      fn := DMScanImage.QrLetterDataLetterDataID.AsInteger;

      if OpenPictureDialog.Execute then
      begin
        Try
          Screen.Cursor := crHourGlass;
          BBOpenFile.Enabled := False;
          if (not IsJpegFormat) and (OpenPictureDialog.filterindex <> 2) then
            if MessageDlg('������ ����� ���� � ���� ����� ���Ͽ',mtConfirmation,[mbYes,mbNo],0)= mrNo then
              IsJpegFormat := true;

          for I:=0 to OpenPictureDialog.Files.Count-1 do
          begin
            FileNames:=OpenPictureDialog.Files.Strings[I];
            SaveFileUrl:='C:\Temp\tempimportimg'+ExtractFileExt(FileNames);//Commented By Hamed_Ansari
            CopyFile(Pansichar(FileNames), Pansichar(SaveFileUrl), False);//Commented By Hamed_Ansari
            if _SaveFileType='2' then
              SavenadLoadInDB(SaveFileUrl)
              //    SavenadLoadInDB(FileNames)//Commented By Hamed_Ansari
            else
              FillData(SaveFileUrl);

            if FileExists(SaveFileUrl) then
              DeleteFile(SaveFileUrl);//Commented By Hamed_Ansari
               //FillData(FileNames);//Commented By Hamed_Ansari


    //            _JpegFIleChange.SetBMPFileDPI(SaveFileUrl,StrToInt(  _BaseSQLConnection.GetKeyvalue('IMGDPI')));

              {
               if (UpperCase(File_GetFileExt(SaveFileUrl))='TIF')or(UpperCase(File_GetFileExt(SaveFileUrl))='TIFF')then
               begin
                     ChangeMultyTifToTifsAndSave(SaveFileUrl);  //���� TIFF �� �� ���� ����� TIFF ����� ���
               end
               else if IsJpegFormat then  //���� JPG �� ����� �� ���� �� JPG ���� �� ����� JPG ����� ���
               begin
                     FillData(SaveFileUrl);
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
                  ChangeJPGToTifAndSave(SaveFileUrl);
               end;
               }
          end;
          Close_Open_QrLetterData;

          if (DMScanImage.QrLetterData.State in [dsInsert,dsEdit]) then
            DBN1.BtnClick(nbCancel);
          Close_Open_QrLetterData;
          DMScanImage.QrLetterData.Last;
        Finally
    //        ImageEnDBVect1.FitToWidth;
           // ImageEnDBView1.FitToWidth;
          BBOpenFile.Enabled := True;
          Screen.Cursor := crDefault;

          if Dm.GetValue(2104) = 0 then
            FitToPageClick(Self);
          if Dm.GetValue(2104) = 1 then
            btnWidthSizeClick(Self);
          if Dm.GetValue(2104) = 2 then
            btnActualSizeClick(Self);

        End;
      end;

      {Ranjbar 89.06.06 ID=3}
      //Exec_UserLog(TAction(Sender).Tag);
      Exec_UserLog(TAction(Sender).Name);
      //---

      {Ranjbar 89.07.08 ID=12}
      //LetterEdit ��� ������� ����� ��� ��� ��� �� ����
      Dm.Insert_LetterEdit(LetterID,'����� ������ ����');
      Exec_insert_UserLog('InsertFile',LetterID);
      ControlEnabled(False);
      if isEdit then
        DMScanImage.QrLetterData.Locate('LetterDataID',fn,[]);
      ImageEnDBView1.FitToWidth;
      //---
      if Dm.GetValue(2104) = 0 then
        FitToPageClick(Self);
      if Dm.GetValue(2104) = 1 then
        btnWidthSizeClick(Self);
      if Dm.GetValue(2104) = 2 then
        btnActualSizeClick(Self);
               // Append Colors in Import Image
            //   if _CanAttachColor then
            //    begin
            //        try
            //          if Strtoint(Label3.Caption)>0 then
            //          begin
            //
            //              begin
            //                  qAttachColor.Close;
            //  //                qAttachColor.Parameters.ParamByName('ColorID').Value:=Dm.q
            //                  qAttachColor.Parameters.ParamByName('ColorID').Value:=Label3.Caption;
            //
            //                  qAttachColor.Parameters.ParamByName('LetterDataID').Value:=DMScanImage.QrSelImageLetterDataID.AsInteger;
            //                  qAttachColor.ExecSQL;
            //                  Exec_insert_UserLog('SetImageColor',DMScanImage.QrSelImageLetterID.AsInteger);
            //                  Dm.Insert_LetterEdit(DMScanImage.QrSelImageLetterID.AsInteger,'������ �� �� �����');
            //                    DMScanImage.QrLetterData.Close;
            //
            //               DMScanImage.QrLetterData.SQL.Text := 'Select LetterDataID ,LetterID ,PageNumber,ColorID  '+
            //                                                      'From LetterData  Where( LetterID = :Pa_LetterID )  And( Extention in (1,2) )  '+
            //                                                      'And ColorID='+Label3.Caption+' Order By PageNumber ';
            //               DMScanImage.QrLetterData.Open;
            //  //                ShowMsgString('������ �� �� ������ ����� ��');
            //              end;
            //          end
            //        except
            //
            //        end;
            //    end
            //  else
            //      ShowMsgString('���� ������� �� ���� ���� ����� �� �� ������ - �� ���� ����� ��� ���� Ȑ����');
      try
        if ValueColorID<>-1 then
      except

      end;
//                if _BaseSQLConnection.GetKeyvalue('SaveFileType')= '1' then
  end;

  { TODO -oparsa : 14030510 - bug 318 }
  {
  if not Edit then
    if DMScanImage.QrLetterData.RecordCount = 1 then
      DBN1.VisibleButtons := [nbInsert,nbDelete,nbPost,nbEdit,nbCancel]
    else
      DBN1.VisibleButtons := [nbPrior,nbFirst,nbLast,nbNext,nbInsert,nbDelete,nbPost,nbEdit,nbCancel]
  else
    DBN1.VisibleButtons := [nbPrior,nbFirst,nbLast,nbNext];
                    }
  NavigatorHandel;
  { TODO -oparsa : 14030510 - bug 318 }

  try
    if (_MyPuletColors <> '') and (_MyPuletColors <> '���� ��') and (_MyPuletColors <> '���� �����') then
      Edit1.Color:= StringToColor(_MyPuletColors);
    if (_MyPuletColors = '') or (_MyPuletColors = '���� ��') or (DMScanImage.QrLetterDataColorID.AsString = '0') or (DMScanImage.QrLetterDataColorID.AsString = '-2') then
      Edit1.Color := clBtnFace;
  except
  end;
end;


procedure TFmScanImage.ChangeMultyTifToTifsAndSave(aFileName:String);
var
   I:integer; // 1391/10/11 Edited
   m_bitmap : TBitmap;
begin
  if aFileName <> '' then
  begin
    ImageEnMView1.Clear;
    ImageEnMView1.MIO.LoadFromFile(aFileName);

    {//LZW
    if ImageEnMView1.MIO.Params[0].TIFF_Compression = ioTIFF_LZW then
    begin
      m_bitmap := SynGdiPlus.LoadFrom(aFileName);
      SynGDIPlus.SaveAs(m_bitmap, aFileName, gptTIF);
      ImageEnMView1.MIO.LoadFromFileTIFF(aFileName);
    end;}
  end;

  for I:=0 to ImageEnMView1.ImageCount-1 do
  begin
    With DMScanImage do
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
        quImageDescription.AsString := aFileName;
        quImageLastUpdate.AsDateTime:= Now;
        if Get_File_Size1(_TempPath+'\output'+IntToStr(i+1)+'.tif',true)>Get_File_Size1(_TempPath+'\output'+IntToStr(i+1)+'.jpg',true) then
        begin
          quImageextention.AsInteger := 1;
          quImageImage.LoadFromFile(_TempPath+'\output'+IntToStr(i+1)+'.jpg');
        end
        else
        begin
          quImageextention.AsInteger := 2;
          quImageImage.LoadFromFile(_TempPath+'\output'+IntToStr(i+1)+'.tif');
        end;

        if ValueColorID <> -1 then
          quImageColorID.AsInteger := ValueColorID ;//Dm.qDefineColorsID.AsInteger;

        quImage.Post;
       // quImage.Close;
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
        if FileExists(_TempPath+'\output'+IntToStr(i+1)+'.tif') then
          DeleteFile(_TempPath+'\output'+IntToStr(i+1)+'.tif');
        if FileExists(_TempPath+'\output'+IntToStr(i+1)+'.jpg') then
          DeleteFile(_TempPath+'\output'+IntToStr(i+1)+'.jpg');
      end;
    end;
  end;
  ImageEnMView1.Clear;
  PageControl1.Enabled := False;
  ControlEnabled(False);
end;

procedure TFmScanImage.SaveAsExecute(Sender: TObject);
var
  fName : string;
begin
  inherited;
  if SavePictureDialog.Execute then
  begin

    if SavePictureDialog.FilterIndex=1 then
      fName := SavePictureDialog.FileName+'.jpg'
    else if SavePictureDialog.FilterIndex=2 then
      fName := SavePictureDialog.FileName+'.tiff'
    else if SavePictureDialog.FilterIndex=3 then
      fName := SavePictureDialog.FileName+'.bmp';

    if FileExists(fName) then
    begin
      if MBaseForm.MessageShowString('������ �� ��� ��� ����� ��ʡ ��� ������ �� ���� ��� ����� ��Ͽ', True) then
      begin
        if SavePictureDialog.FilterIndex=1 then
          ImageEnDBView1.IO.SaveToFileJpeg(fName)
        else if SavePictureDialog.FilterIndex=2 then
          ImageEnDBView1.IO.SaveToFileTIFF(fName)
        else if SavePictureDialog.FilterIndex=3 then
          ImageEnDBView1.IO.SaveToFileBMP(fName);
        ShellExecute(Handle, 'Open',Pchar(fName),nil,nil,SW_SHOWNORMAL);
      end
      else
        SaveAsExecute(sender);
      end
      else
      begin
        if SavePictureDialog.FilterIndex=1 then
          ImageEnDBView1.IO.SaveToFileJpeg(fName)
        else if SavePictureDialog.FilterIndex=2 then
          ImageEnDBView1.IO.SaveToFileTIFF(fName)
        else if SavePictureDialog.FilterIndex=3 then
          ImageEnDBView1.IO.SaveToFileBMP(fName);
        ShellExecute(Handle, 'Open',Pchar(fName),nil,nil,SW_SHOWNORMAL);
      end;
    end;

    Exec_UserLog(TAction(Sender).Name);
  //---
end;

procedure TFmScanImage.BitBtn2Click(Sender: TObject);
begin
  inherited;
  {SignPic.Execute; //SignPicExecute
  Exec_UserLog(TBitBtn(Sender).Tag);}
end;

procedure TFmScanImage.BitBtn31Click(Sender: TObject);
begin
  inherited;
  sbPointClick(sender);
  ImageEnProc1.ConvertToGray;
end;

procedure TFmScanImage.BitBtn71Click(Sender: TObject);
begin
  inherited;
  sbPointClick(sender);
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

  SBZoom.Click;
  SBZoom.down := True;

  if Button = nbEdit then
   Panel6.Width := 147
  else
   Panel6.Width := 0;
  if Button in [nbInsert,nbEdit] then
  begin
    PageControl1.Enabled := True;
    if Panel6.Width>0 then
    begin
      ImageEnDBVect1.LayersRemove(1);//
      ImageEnVectMain.DeSelect;
      ImageEnVectMain.UnSelAllObjects;
      ImageEnVectMain.LayersMergeAll;
      ImageEnVectMain.RemoveAllObjects;
      ImageEnVectMain.Align := alClient;
      ImageEnVectMain.Zoom := ImageEnView1.Zoom;
      //ImageEnVectMain.IO.IEBitmap.Assign(ImageEnDBView1.IO.IEBitmap);
      ImageEnDBView1.IO.SaveToFileJpeg(_TempPath+'\t.jpg');
      ImageEnVectMain.IO.LoadFromFileJpeg(_TempPath+'\t.jpg');
      ImageEnVectMain.Repaint;
      ImageEnVectMain.Visible := true;
      ImageEnDBView1.Visible := False;
    end
    else
    begin
    {    PageControl1.Enabled := False;
        ImageEnDBVect1.LayersRemove(1);//
           ImageEnVectMain.DeSelect;
           ImageEnVectMain.UnSelAllObjects;
           ImageEnVectMain.LayersMergeAll;
           ImageEnVectMain.RemoveAllObjects;
        ImageEnDBView1.IO.IEBitmap.Assign(ImageEnVectMain.IO.IEBitmap);
        ImageEnVectMain.Visible := false;
        ImageEnVectMain.Align := alNone;  }
    end;
  end;

  if button = nbPost then
  begin
    if ImageEnVectMain.Visible then
    begin
      ImageEnDBVect1.LayersRemove(1);//
      {Ranjbar 90.03.11 ID=378}
      ImageEnVectMain.DeSelect;
      ImageEnVectMain.UnSelAllObjects;
      ImageEnVectMain.LayersMergeAll;
      ImageEnVectMain.RemoveAllObjects;
      ImageEnDBView1.IO.IEBitmap.Assign(ImageEnVectMain.IO.IEBitmap);
      ImageEnVectMain.Visible := false;
      ImageEnDBView1.Visible := True;
      ImageEnVectMain.Align := alNone;
    end;
  end;

  With DMScanImage do
  begin
    if Button = nbEdit then
    begin
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
        ImageEnVectMain.LayersRemove(1);//
           {Ranjbar 90.03.11 ID=378}
        ImageEnVectMain.DeSelect;
        ImageEnVectMain.UnSelAllObjects;
        ImageEnVectMain.LayersMergeAll;  //����� ����� ��� �� �� ����� �� ���
        ImageEnVectMain.RemoveAllObjects;

        QrSelImageLastUpdate.AsDateTime := Now;
        QrSelImageLetterID.AsInteger := fmScanImage.LetterID;

       //Image �� �� ��� ������ � ����� � ������ ���� �����
       //�� �� �� ����� ���� ��� ��� �������� ���� �� ������� ��� ������� ���
        if QrSelImage.State = dsEdit then
        begin
          FilePathName := _TempPath + 'TempEditFile.Jpg';
          DeleteFile(FilePathName);
          //Hamed_Ansari_990130_S
          ImageEnVectMain.IO.SaveToFileJpeg(FilePathName);
          //ImageEnDBView1.IO.SaveToFileJpeg(FilePathName);
          ImageEnVectMain.Clear;
          //ImageEnDBView1.Clear;
          //Hamed_Ansari_990130_E
          //QrSelImageImage.LoadFromFile(FilePathName);
          FillData(FilePathName);
          //Application.ProcessMessages;
          DeleteFile(FilePathName);
          if QrSelImageIsCorrectedImage.AsBoolean = False then
            QrSelImageIsCorrectedImage.AsBoolean := True;
        end;
       //---
        if QrLetterData.State in dsEditModes then
          QrLetterData.Post;
        //QrSelImage.Post;
        ImageEnDBVect1.FitToWidth;
        ImageEnDBView1.FitToWidth;
        ControlEnabled(False);
      end;

      if Button = nbDelete then
      begin
        if MBaseForm.messageShowString('��� ���� �� ��� ����� ���� ����Ͽ', True) then
        begin
          //Hamed_Ansari_990624_S
          if _SaveFileType = '1' then
          begin
            AQry := TADOQuery.Create(Nil);
            try
              AQry.Connection := Dm.YeganehConnection;
              AQry.Close;
              AQry.SQL.Text := 'Select Path From LetterData Where LetterDataId = ' + QrLetterDataLetterDataID.AsString;
              AQry.Open;
              try
                if IdFTP1.Connected then
                  IdFTP1.Disconnect;
                IdFTP1.Connect;
                Sleep(500);
                IdFTP1.Delete(AQry.FieldByName('Path').AsString);
              except
                IdFTP1.DisConnect;
              end;
              Sleep(500);
              if IdFTP1.Connected then
                IdFTP1.Disconnect;
            finally
              FreeAndNil(AQry);
            end;
          end;
          //Hamed_Ansari_990624_E
          QrSelImage.Delete;

          {Ranjbar 89.07.08 ID=12}
          //LetterEdit ��� ������� ����� ��� ��� ��� �� ����
          Dm.Insert_LetterEdit(LetterID,'��� �� �����');
          Exec_insert_UserLog('DeleteOnePicture',LetterID);
          //---
          Dm.qSelectedColor.Close;
          Dm.qSelectedColor.Parameters.ParamByName('LetterID').Value:=LetterID;
          Dm.qSelectedColor.Open;
          Dm.qSelectedColor.Locate('ColorId',SelecttionColorId,[loCaseInsensitive]);

          ControlEnabled(False);
          qry_updatePageNumber.Close;
          qry_updatePageNumber.Parameters.ParamByName('Pa_LetterID').Value := LetterID;
          qry_updatePageNumber.ExecSQL;
          
          Close_Open_QrLetterData;
        end;
      end;

      //ShowMessage('Save Image');

      ID := QrLetterDataLetterDataID.AsInteger;
      QrLetterData.Cancel;
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
   filename :String;
   i, v803 : integer;
begin
  inherited;
  if _SaveFileType='2' then
    ScanSQl
  else
  begin
    DMScanImage._IsScan:=True;
    try
      if (_MyPuletColors <> '') and (_MyPuletColors <> '���� ��') and (_MyPuletColors <> '���� �����') then
        Edit1.Color:= StringToColor(_MyPuletColors)
      else
        Edit1.Color:= clBtnFace;
    except
    end;

    if dm.GetValue(807) = true then
      TWAIN_SetHideUI(false)
    else
      TWAIN_SetHideUI(true);

    TWAIN_SetFileAppendFlag(false);
    //TWAIN_SetJpegQuality((dm.GetValue(802)+1)*10); Commented By Hamed_Ansari_990130
    TWAIN_SetResolution(200);
    if TWAIN_OpenDefaultSource() then
    begin
      TWAIN_SetXferCount(-1);
      TWAIN_SetAutoScan(true);

      TWAIN_SetMultiTransfer(true);
      if dm.GetValue(801) = 0 then
        TWAIN_SetPixelType(TWPT_BW)
      else if dm.GetValue(801) = 1 then
        TWAIN_SetPixelType(TWPT_GRAY)
      else if dm.GetValue(801) = 2 then
        TWAIN_SetPixelType(TWPT_RGB);
      if (dm.GetValue(805) = 1)and(TWAIN_HasFeeder) then
        TWAIN_SelectFeeder(true)
      else
        TWAIN_SelectFeeder(false);
      if (TWAIN_GetDuplexSupport > 0) then   // check for duplex support
      begin
        if (dm.GetValue(806) = 1)and(TWAIN_HasFeeder) then
          TWAIN_EnableDuplex(true)
        else
          TWAIN_EnableDuplex(false);
      end;
      i := 1;
      v803 := dm.GetValue(803);
      repeat
        if v803=0 then
          fileName := _TempPath +'image'+IntToStr(i)+'.jpg'
        else
          fileName := _TempPath +'image'+IntToStr(i)+'.tif';
        if (TWAIN_AcquireToFilename(self.Handle, pchar(fileName))<>0) then
          break;
        try
          ImageEnVectMain.IO.LoadFromFile(filename);
           ImageEnDBView1.IO.LoadFromFile(filename);
          Application.ProcessMessages;
        except
        end;
        LoadAndShow(fileName);
        Sleep(1000);
        if not(DMScanImage.QrLetterData.State in [dsedit,dsinsert]) then
          break;

        i := i+1;
        if _BaseSQLConnection.GetKeyvalue('SaveFileType')= '1' then
          DeleteFile(filename);
      until TWAIN_IsDone();
      TWAIN_CloseSource();
      DMScanImage.QrLetterData.Cancel;
      Close_Open_QrLetterData;
      DMScanImage.QrLetterData.Last;
      DMScanImage.QrSelImage.Cancel;
    end;

    if Dm.GetValue(2104) = 0 then
      FitToPageClick(Self);
    if Dm.GetValue(2104) = 1 then
      btnWidthSizeClick(Self);
    if Dm.GetValue(2104) = 2 then
      btnActualSizeClick(Self);
    LetterID:=StrToInt(_MyLetterID);

    if TWAIN_LastErrorCode()<>0 then
      TWAIN_ReportLastError(pchar('��� �� �Ә� ������'+ '   '+ ' ERROR CODE : '+ inttostr(TWAIN_LastErrorCode())))
    //Hamed_Ansari_990221_S
    else
      Dm.Insert_LetterEdit(LetterID,'����� ����� ���� �� ���� �Ә��');
    //Hamed_Ansari_990221_S
    Exec_insert_UserLog('Scan',LetterID);
    DMScanImage._IsScan:=False;
  end;

  { TODO -oparsa : 14030510 - bug 318 }
  {
  if not Edit then
    if DMScanImage.QrLetterData.RecordCount = 1 then
      DBN1.VisibleButtons := [nbInsert,nbDelete,nbPost,nbEdit,nbCancel]
    else
      DBN1.VisibleButtons := [nbPrior,nbFirst,nbLast,nbNext,nbInsert,nbDelete,nbPost,nbEdit,nbCancel]
  else
    DBN1.VisibleButtons := [nbPrior,nbFirst,nbLast,nbNext];
       }
  NavigatorHandel;
  { TODO -oparsa : 14030510 - bug 318 }
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
  ImageEnVectMain.MinBitmapSize:=1;
  //ImageEnDBVect1.DisplayGrid:=true;
  ImageEnView1.Proc.Fill( CreateRGB(255,255,255) );
  ImageEnView1.Proc.AutoUndo:=False;

  Panel6.Width:=0;
  Panel7.Width:=0;

  Dm.qDefineColors.Close;
  Dm.qDefineColors.Open;
  DSForm.DataSet:=Dm.qDefineColors;

  dsqSelectedColor.DataSet:=Dm.qSelectedColor;
  N5.Enabled := Dm.GetActionAccess('SetImageColor',9);
  N6.Enabled := Dm.GetActionAccess('RemoveImageColor',9);
//  FitToPageClick(Self);
  if Dm.GetValue(2104) = 0 then
    FitToPageClick(Self);
  if Dm.GetValue(2104) = 1 then
    btnWidthSizeClick(Self);
  if Dm.GetValue(2104) = 2 then
    btnActualSizeClick(Self);
end;


procedure TFmScanImage.BitBtn9Click(Sender: TObject);
begin
  inherited;
  sbPointClick(sender);
  ImageEnVectMain.MouseInteractVt := [miPutText];
  ImageEnVectMain.ObjPenColor[-1] := FontDialog1.Font.Color;
  ImageEnVectMain.ObjBrushColor[-1] := clNone;
  ImageEnVectMain.ObjFontStyles[-1] := FontDialog1.Font.Style;
  ImageEnVectMain.ObjFontHeight[-1] :=  FontDialog1.Font.Height;
end;

procedure TFmScanImage.ImageEnMView1ImageSelect(Sender: TObject;
  idx: Integer);
begin
  inherited;
  // Copy image
  try
    ImageEnMView1.CopyToIEBitmap( idx, ImageEnVectMain.IEBitmap );
    //ImageEnMView1.MIO.Params[idx].ImagingAnnot.CopyToTImageEnVect(ImageEnDBVect1);
    ImageEnVectMain.Update;
  except

  end;
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
begin
  if ImageEnVectMain.LayersCount=1 then
    ImageEnVectMain.LayersAdd;

  ImageEnVectMain.LayersCurrent:=1;

  BrushSiz := SEBrushSize.Value;

  ImageEnVectMain.Proc.ImageResize(BrushSiz,BrushSiz,iehLeft,ievTop);

  // prepare main color
  ImageEnVectMain.IEBitmap.Canvas.Brush.Color:= BrushColor.Color;
  ImageEnVectMain.IEBitmap.Canvas.Pen.Color:=BrushColor.Color;

  // prepare alpha channel
  ImageEnVectMain.AlphaChannel.Fill(0);

  with ImageEnVectMain.AlphaChannel.Canvas do
  begin
    Transpvalue:=255;
    C := $02000000 or (transpvalue) or (transpvalue shl 8) or (transpvalue shl 16);
    Brush.Color:= c;
    Pen.Color:=c;
  end;

  if RGPenType.ItemIndex = 0 then //����� RectangleButton.Down
  begin
    ImageEnVectMain.IEBitmap.Canvas.Rectangle(0,0,BrushSiz+1,BrushSiz+1);
    ImageEnVectMain.AlphaChannel.Canvas.Rectangle(0,0,BrushSiz+1,BrushSiz+1);
  end
  else
    if RGPenType.ItemIndex = 1 then //����� ��  CircleButton.Down
    begin
      ImageEnVectMain.IEBitmap.Canvas.Ellipse(0,0,BrushSiz+1,BrushSiz+1);
      ImageEnVectMain.AlphaChannel.Canvas.Ellipse(0,0,BrushSiz+1,BrushSiz+1);
    end;

  ImageEnVectMainMouseMove(self,[],0,0); // refresh current brush
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
        //Layers[1].Bitmap.RenderToTIEBitmapEx( Layers[0].Bitmap, px,py,bx,by, 0,0,bx,by, 255,rfNone,op );
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
  flag := 1;
//  ImageEnDBVect1.Zoom := 100;
  ImageEnDBView1.AutoFit := False;
  ImageEnDBView1.Zoom := 100;
  if ImageEnVectMain.Visible then
    ImageEnVectMain.Zoom := 100;
  LabelZoom .Caption :='��ѐ�����  :    '+ FloatToStr( Round(ImageEnDBView1.Zoom) )+'%';

end;

procedure TFmScanImage.sbPointClick(Sender: TObject);
begin
  inherited;
  ImageEnVectMain.Deselect;

  ImageEnVectMain.MouseInteractVt := [miObjectSelect];
  ControlAnable(False);
  SBBrush.Down := false;
  sbPoint.Down := true;
end;

procedure TFmScanImage.SBZoomClick(Sender: TObject);
begin
  inherited;
  ImageEnVectMain.Deselect;
  //ImageEnDBView1.MouseInteract := [miZoom,miScroll];
  ImageEnVectMain.MouseInteract := [miZoom,miScroll];
  ControlAnable(False); //HKH Sisabled
end;

procedure TFmScanImage.SpeedButton13Click(Sender: TObject);
begin
  inherited;
  //ImageEnDBVect1.RotateAllObjects(-90,ierImage);
  sbPointClick(sender);
  ImageEnVectMain.Proc.Rotate(-90);
end;

procedure TFmScanImage.SpeedButton12Click(Sender: TObject);
begin
  inherited;
  //ImageEnDBVect1.RotateAllObjects(90,ierImage);
  sbPointClick(sender);
  ImageEnVectMain.Proc.Rotate(90);
end;

procedure TFmScanImage.ImageEnDBVect1NewObject(Sender: TObject;
  hobj: Integer);
begin
  inherited;
  ImageEnVectMain.MouseInteractVt := [miObjectSelect];
end;

procedure TFmScanImage.ImageEnDBVect1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  i: integer;
begin
  inherited;
  if Key = Vk_Delete then
  begin
    for i := ImageEnDBVect1.SelObjectsCount - 1 downto 0 do
      ImageEnDBVect1.RemoveObject(ImageEnDBVect1.SelObjects[i]);
  end;

  ImageEnDBVect1.Proc.SaveUndo();
end;

procedure TFmScanImage.SpeedButton6Click(Sender: TObject);
var
  i: integer;
begin
  inherited;
  sbPointClick(sender);
  for i := ImageEnVectMain.SelObjectsCount - 1 downto 0 do
     ImageEnVectMain.RemoveObject(ImageEnVectMain.SelObjects[i]);
end;

procedure TFmScanImage.SpeedButton10Click(Sender: TObject);
var
  I, Obj: integer;
begin
  inherited;
  sbPointClick(sender);
  obj := -1;
  if FontDialog1.Execute then
    for I := -1 to ImageEnVectMain.SelObjectsCount - 1 do
    begin
      if I >= 0 then
        Obj := ImageEnVectMain.SelObjects[I];
      ImageEnVectMain.ObjPenColor[obj] := FontDialog1.Font.Color;
      ImageEnVectMain.ObjFontStyles[-1] := FontDialog1.Font.Style;
      ImageEnVectMain.ObjFontHeight[-1] :=  FontDialog1.Font.Height ;
    end;
end;

procedure TFmScanImage.SetTextFontColor;
begin
   ///
end;

procedure TFmScanImage.SpeedButton11Click(Sender: TObject);
begin
  inherited;
  sbPointClick(sender);
  ImageEnVectMain.MouseInteractVt := [miPutBox];
  ImageEnVectMain.ObjBoxHighlight[-1] := True;
  ImageEnVectMain.ObjBrushColor[-1] := clYellow;
  ImageEnVectMain.ObjBrushStyle[-1] := bsSolid;
end;

procedure TFmScanImage.SignPicExecute(Sender: TObject);
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
  sbPointClick(sender);
  if CBHideObjects.Checked then
    ImageEnVectMain.AllObjectsHidden := True
  else
    ImageEnVectMain.AllObjectsHidden := False;
end;

procedure TFmScanImage.BBUndoClick(Sender: TObject);
begin
  inherited;
  //sbPointClick(sender);
  if SBBrush.Down then
    ImageEnVectMain.Proc.Undo
  else
  begin
    ImageEnVectMain.ObjUndo;
    ImageEnVectMain.ObjClearUndo;
  end;
end;

procedure TFmScanImage.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (ssCtrl in shift)And(DMScanImage.QrLetterData.State in [dsEdit,dsInsert]) then
    if (Key = Word('z'))or(Key = Word('Z')) then
      BBUndo.Click;
  if Key = Vk_Escape then
    Close;
end;

procedure TFmScanImage.ControlAnable(anable:Boolean);
begin
  RGPenType.Enabled := anable;
  Label1.Enabled := anable;
  Label7.Enabled := anable;
  SEBrushSize.Enabled := anable;
  BrushColor.Enabled := anable;
  if not anable then
    ImageEnVectMain.Cursor := 1785;
end;

procedure TFmScanImage.SBBrushClick(Sender: TObject);
begin
  inherited;
  ImageEnVectMain.Deselect;
  ControlAnable(True);
  ImageEnVectMain.MouseInteract := [];
  CreateBrush(Sender);
end;


procedure TFmScanImage.AprinttExecute(Sender: TObject);
begin
  inherited;
  if DMScanImage.QrSelImage.State in [dsInsert,dsEdit] then
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
var
  intId : Integer;
  strColor : string;
begin
  inherited;
  findNodeInColorView(currNode, intId, strColor);

  DMScanImage.SPAllImage.Close;
  DMScanImage.SPAllImage.Parameters.ParamByName('@LetterID').Value := LetterID;
  DMScanImage.SPAllImage.Parameters.ParamByName('@ColorId').Value := intId;
  DMScanImage.SPAllImage.Open;
  FmAllScanImage := TFmAllScanImage.Create(Application);
  try
    FmAllScanImage.ShowModal;
    if FmAllScanImage.Valueid = 0 then
      DMScanImage.QrLetterData.Locate('LetterDataID', DMScanImage.SPAllImageLetterDataID.AsInteger,[]);
    FmAllScanImage.Valueid := 0;
  finally
      //
//      try
//       DMScanImage.SPAllImage.RecNo:=1;
//      for I  := 1 to DMScanImage.SPAllImage.RecordCount do
//        begin
//          try
//            with DMScanImage do
//            begin
//              if FmAllScanImage.ImageIDSelector<> SPAllImage.fieldbyname('LetterDataID').AsString then
//              begin
//
//              FilePatch:=SPAllImage.fieldbyname('Filetype').AsString;
//              DeleteFile(FilePatch);
//              Application.ProcessMessages;
//              end;
//
//            end;
//          except
//
//          end;
//          DMScanImage.SPAllImage.Next;
//        end;
//        except
//        end;
        DMScanImage.SPAllImage.Close;
  end;
end;

procedure TFmScanImage.ActSelScannerExecute(Sender: TObject);
begin
  inherited;

//   if dm.GetValue(25) then //True = Jpg , False = Tif
//   begin
//      if ImageEnIO1.SelectAcquireSource {(ieaTWain)} then
//         dm.SetValue(56 , ImageEnIO1.TWainParams.SelectedSource);
//   end
//   else
//      begin
//         (*if ImageEnMIO1.SelectAcquireSource {(ieaTWain)} then
//            dm.SetValue(56 , ImageEnMIO1.TWainParams.SelectedSource);*)
//         ImgScan.ShowSelectScanner;
//      end;
  TWAIN_SelectImageSource(self.Handle)
   //dm.SetValue(56 , );
end;

procedure TFmScanImage.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  FmImageData := TFmImageData.Create(nil);
  FmImageData.ShowModal;
end;

procedure TFmScanImage.SBResizeClick(Sender: TObject);
begin
  inherited;
  sbPointClick(sender);
  FmPicProgress := TFmPicProgress.Create(nil);
  FmPicProgress.PicWidth := ImageEnVectMain.Bitmap.Width;
  FmPicProgress.PicHight := ImageEnVectMain.Bitmap.Height;
  FmPicProgress.FormStyle := fsStayOnTop;
  FmPicProgress.Show;
end;

procedure TFmScanImage.SBDelAllDataClick(Sender: TObject);
var
  AQry : TADOQuery;
begin
  inherited;
  if MBaseForm.MessageShowString('��� ���� �� ��� ����� ������ ����Ͽ', True) then
  begin
    With DMScanImage do
    begin
      QrLetterData.First;
      while not QrLetterData.Eof do
      begin
        //Hamed_Ansari_990624_S
        if _SaveFileType = '1' then
        begin
          AQry := TADOQuery.Create(Nil);
          try
            AQry.Connection := Dm.YeganehConnection;
            AQry.Close;
            AQry.SQL.Text := 'Select Path From LetterData Where LetterDataId = ' + QrLetterDataLetterDataID.AsString;
            AQry.Open;
            if IdFTP1.Connected then
              IdFTP1.Disconnect;
            IdFTP1.Connect;
            Sleep(500);
            try
              IdFTP1.Delete(AQry.FieldByName('Path').AsString);
            except
              IdFTP1.DisConnect;
            end;
            Sleep(500);
            IdFTP1.DisConnect;
          finally
            FreeAndNil(AQry);
          end;
        end;
            //Hamed_Ansari_990624_E
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
    Dm.Insert_LetterEdit(LetterID,'��� ����� ������');
    Exec_insert_UserLog('DeleteAllPictures',letterID);
      //---
    Edit1.Color:= clBtnFace;

    Dm.qSelectedColor.Close;
    Dm.qSelectedColor.Open;
  end;
end;

procedure TFmScanImage.SBGoToPageClick(Sender: TObject);
var
  PageNumber:String;
begin
  inherited;
  if DMScanImage.QrLetterData.RecordCount = 0 then
    Exit;

  PageNumber := InputBox('����� ���� �����','���� ����� ���� �� ���� ������', IntToStr(DMScanImage.QrLetterData.RecNo));
  if StrToIntDef(PageNumber,0) > 0 then
      {Ranjbar 89.07.05 ID=25}
      //DMScanImage.QrLetterData.RecNo := StrToIntDef(PageNum,0);
    DMScanImage.QrLetterData.RecNo := StrToInt(PageNumber);//Locate('PageNumber',PageNumber,[]);
      //---
end;

procedure TFmScanImage.Timer1Timer(Sender: TObject);
begin
  inherited;
  //ImageEnDBVect1.FitToWidth;
  /////ImageEnDBView1.FitToWidth;
  Timer1.Enabled := False;
end;

procedure TFmScanImage.ASaveAllExecute(Sender: TObject);
var
  Dir, FileName: string;
begin
  inherited;
  if DMScanImage.QrLetterData.RecordCount = 0 then
    Exit;

  try
    BBSaveAllToFiles.Enabled := False;
    Screen.Cursor := crHourGlass;

    if SaveDialog1.Execute then
      Dir := SaveDialog1.FileName;
    //Dir := _TempPath+'YeganehPic';
    if not DirectoryExists(Dir) then
      CreateDir(Dir)
    else
      EmptyDir(Dir);

    With DMScanImage do
    begin
      QrLetterData.First;
      while not QrLetterData.Eof do
      begin
        Sleep(1);
        if QrSelImageextention.AsInteger=1 then
          FileName := Dir+'\'+Trim(QrSelImageLetterID.AsString)+'_'+IntToStr(QrLetterData.RecNo)+'.jpg'
        else
          FileName := Dir+'\'+Trim(QrSelImageLetterID.AsString)+'_'+IntToStr(QrLetterData.RecNo)+'.tiff';
        //QrSelImageImage.SaveToFile(FileName);
        ImageEnDBView1.IO.SaveToFile(FileName);
        QrLetterData.Next;
      end;
      QrLetterData.First;
      ShellExecute(Handle, 'Open',Pchar(FileName),nil,nil,SW_SHOWNORMAL);
    end;
    {With DMScanImage do
        if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt],0) then
        begin
           //QrLetterData.First;

          DMScanImage.QrSelImage.Close;
          DMScanImage.QrSelImage.SQL.Clear;
          DMScanImage.QrSelImage.SQL.Add('Select * From LetterData');
          DMScanImage.QrSelImage.SQL.Add('Where LetterID ='+IntToStr(LetterID));
          DMScanImage.QrSelImage.Open;
          ShowPageFromAll;
          Close_Open_QrLetterData;
//           While Not QrLetterData.Eof do
           while not ImageEnDBVect1.DataSource.DataSet.EOF do
           begin                }
              {if QrSelImageExtention.AsInteger = 1 then
                 FileName := Trim(QrSelImageLetterID.AsString)+'_'+IntToStr(QrSelImage.RecNo)+'.Jpg'
              else
                 FileName := Trim(QrSelImageLetterID.AsString)+'_'+IntToStr(QrSelImage.RecNo)+'.Tif';}
              //QrSelImageImage.SaveToFile(Dir+'\'+ FileName);
 {             Application.ProcessMessages;
              FileNu := FileNu + 1;
              FileName := Trim(QrSelImageLetterID.AsString)+'_'+IntToStr(FileNu)+'.Jpg';
              if (FileExists(FileName))and not(File_IsInUse(FileName)) then
                 DeleteFile(FileName);
              ImageEnDBVect1.IO.SaveToFileJpeg(Dir+'\'+ FileName);

              ImageEnDBVect1.DataSource.DataSet.Next;
              //QrLetterData.Next;
           end;
           if FileExists(Dir+'\'+ FileName) then
              ShellExecute(Handle, 'Open',Pchar(Dir+'\'+ FileName),nil,nil,SW_SHOWNORMAL);
        end; }
    finally
      BBSaveAllToFiles.Enabled := True;
      Screen.Cursor := crDefault;
    end;
end;

procedure TFmScanImage.SBReplacePicClick(Sender: TObject);
Var
  LetterDataID : Integer;
  I : Integer;
  tbl : array [1..4,1..32000] of integer;   //1-> RecNo    2-> LetterDataID  3->PageNumber  4-> New PageNumber
  RecCount : integer;
  Source: integer;
  Destination:integer;
begin
  inherited;
  if DMScanImage.QrLetterData.RecordCount = 0 then  // ǐ� ����� ����� �����
    Exit;
  LetterDataID := DMScanImage.QrLetterDataLetterDataID.AsInteger;
  Source := DMScanImage.QrLetterData.RecNo;
  Destination := StrToIntDef(InputBox('����� ����','���� ����� ���� �� ����� ������', DMScanImage.QrSelImagePageNumber.AsString),0);

  if Source=Destination then  // ǐ� ����� ���� � ���� �� ����
    exit;

  if (Destination<1)or(Destination>DMScanImage.QrLetterData.RecordCount) then  // ǐ� ����� ���� ���� �� ���� ����
    exit;

  with TADOQuery.Create(nil) do
  begin
    Connection := DMScanImage.QrLetterData.Connection;
    SQL.Text := DMScanImage.QrLetterData.SQL.Text;
    Parameters[0].Value := DMScanImage.QrLetterDataLetterID.AsInteger;
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
        Connection := DMScanImage.QrLetterData.Connection;
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
        Connection := DMScanImage.QrLetterData.Connection;
        SQL.Text := 'UPDATE LetterData SET PageNumber='+IntToStr(tbl[3,i])+' WHERE LetterDataID='+IntToStr(tbl[4,i]);
        ExecSQL;
     end;
  end;

  DMScanImage.QrLetterData.Close;
  DMScanImage.QrLetterData.Open;
  DMScanImage.QrLetterData.Locate('LetterDataID',LetterDataID,[])

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
   end;}
end;

procedure TFmScanImage.SpeedButton7Click(Sender: TObject);
Var
  I : Integer;
  qry1,qry2 : TADOQuery;
begin
  inherited;
  if DMScanImage.QrLetterData.RecordCount = 0 then
    Exit;

  //����� ����� ����� �� �����
  With DMScanImage do
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
end;

procedure TFmScanImage.YRotateLabel1Click(Sender: TObject);
begin
  if Panel6.Width<=0 then
  begin
    Panel6.Width:=147;
    if PageControl1.Enabled then
    begin
      ImageEnDBVect1.LayersRemove(1);//
      ImageEnVectMain.DeSelect;
      ImageEnVectMain.UnSelAllObjects;
      ImageEnVectMain.LayersMergeAll;
      ImageEnVectMain.RemoveAllObjects;
      ImageEnVectMain.Align := alClient;
      ImageEnVectMain.Zoom := ImageEnView1.Zoom;
      //ImageEnVectMain.IO.IEBitmap.Assign(ImageEnDBView1.IO.IEBitmap);
      ImageEnDBView1.IO.SaveToFileJpeg(_TempPath+'\t.jpg');
      ImageEnVectMain.IO.LoadFromFileJpeg(_TempPath+'\t.jpg');
      ImageEnVectMain.Repaint;
      ImageEnVectMain.Visible := true;
    end;
  end
  else
  begin
    Panel6.Width:=0;
    if PageControl1.Enabled then
    begin
      ImageEnDBVect1.LayersRemove(1);//
      ImageEnVectMain.DeSelect;
      ImageEnVectMain.UnSelAllObjects;
      ImageEnVectMain.LayersMergeAll;  //????? ????? ??? ?? ?? ????? ?? ???
      ImageEnVectMain.RemoveAllObjects;
      ImageEnDBView1.IO.IEBitmap.Assign(ImageEnVectMain.IO.IEBitmap);
      ImageEnVectMain.Visible := false;
      ImageEnVectMain.Align := alNone;
    end;
  end;
end;

procedure TFmScanImage.YRotateLabel2Click(Sender: TObject);
begin
  if Panel7.Width<=0 then
  begin
    Panel7.Width:=250;
    ValueColorID := Dm.qDefineColorsID.AsInteger;
  end
  else
  begin
    Panel7.Width:=0;
    ValueColorID := -1 ;
  end;
  PageControl2Change(Sender);
end;

procedure TFmScanImage.acShowSelectedPagesExecute(Sender: TObject; intColorId : Integer; strColor : string);
var
  ActionName:String;
begin
  inherited;
  //ActionName:='ac'+Dm.qSelectedColorColor.AsString;
  ActionName:='ac'+strColor;
  if CheckAccessColors(ActionName) then
  begin
    DMScanImage.ColorID:=intColorId;
    if DMScanImage.ColorID=-1 then
    begin
      DMScanImage.QrLetterData.Close;
      DMScanImage.QrLetterData.SQL.Text := 'Select LetterDataID ,LetterID ,PageNumber,ColorID,ListItemsID,Description  '+
                                              'From LetterData  Where( LetterID = :Pa_LetterID ) And ( Extention in (1,2) )  '+
                                              'Order By PageNumber ';
      DMScanImage.QrLetterData.Open;
    end
    else if (DMScanImage.ColorID=0) or (DMScanImage.ColorID=-2) then
    begin
      DMScanImage.QrLetterData.Close;
      DMScanImage.QrLetterData.SQL.Text := 'Select LetterDataID ,LetterID ,PageNumber,ColorID,ListItemsIDm,Description '+
                                              'From LetterData  Where( LetterID = :Pa_LetterID ) And ( Extention in (1,2) )  '+
                                              'And( (ColorID IS NULL) OR (ColorID=0) OR (ColorID=-2) ) Order By PageNumber ';
      DMScanImage.QrLetterData.Open;
    end
    else if DMScanImage.ColorID>0 then
    begin
      DMScanImage.QrLetterData.Close;
      DMScanImage.QrLetterData.SQL.Text := 'Select LetterDataID ,LetterID ,PageNumber,ColorID,ListItemsID,Description  '+
                                              'From LetterData  Where( LetterID = :Pa_LetterID ) And ( Extention in (1,2) )  '+
                                              'And ColorID='+IntToStr(DMScanImage.ColorID)+' Order By PageNumber ';
      DMScanImage.QrLetterData.Open;
    end;

    { TODO -oparsa : 14030510 - bug 318 }
    {
    if not Edit then
      if DMScanImage.QrLetterData.RecordCount = 1 then
        DBN1.VisibleButtons := [nbInsert,nbDelete,nbPost,nbEdit,nbCancel]
      else
        DBN1.VisibleButtons := [nbPrior,nbFirst,nbLast,nbNext,nbInsert,nbDelete,nbPost,nbEdit,nbCancel]
    else
      DBN1.VisibleButtons := [nbPrior,nbFirst,nbLast,nbNext];
                     }
    NavigatorHandel ;
    { TODO -oparsa : 14030510 - bug 318 }
{     DMScanImage.QrSelImage.Close;
    DMScanImage.QrSelImage.SQL.Clear;
    DMScanImage.QrSelImage.SQL.Add('Select  *  From LetterData');
    DMScanImage.QrSelImage.SQL.Add('Where LetterID ='+IntToStr(LetterID));
    DMScanImage.QrSelImage.SQL.Add(' and ColorID='+QuotedStr(IntToStr(Dm.qSelectedColorColorID.AsInteger)));
    DMScanImage.QrSelImage.Open;        }

    ShowNotPageFromAll;
  end
  else
    ShowMsgString('���� ������ �������� ��� �� �� ������ - �� ���� ����� ��� ���� Ȑ����');
end;

procedure TFmScanImage.acShowAllPagesExecute(Sender: TObject);
begin
  inherited;

  if _CanViewAllAttachPages then
  begin
    DMScanImage.ColorID := -1;
    DMScanImage.QrLetterData.Close;
    DMScanImage.QrLetterData.SQL.Text := 'Select LetterDataID ,LetterID ,PageNumber,ColorID,ListItemsID,Description '+
                                         'From LetterData  Where( LetterID = :Pa_LetterID )  And( Extention in (1,2) )  '+
                                         'Order By PageNumber ';
    DMScanImage.QrLetterData.Open;

    { TODO -oparsa : 14030510 - bug 318 }
    {
    if not Edit then
      if DMScanImage.QrLetterData.RecordCount = 1 then
        DBN1.VisibleButtons := [nbInsert,nbDelete,nbPost,nbEdit,nbCancel]
      else
        DBN1.VisibleButtons := [nbPrior,nbFirst,nbLast,nbNext,nbInsert,nbDelete,nbPost,nbEdit,nbCancel]
    else
      DBN1.VisibleButtons := [nbPrior,nbFirst,nbLast,nbNext];
                    }
    NavigatorHandel;
    { TODO -oparsa : 14030510 - bug 318 }
    ShowPageFromAll;

    Close_Open_QrLetterData;
  end
  else
    ShowMsgString('���� ������ ���� ����� ����� �� ������ - �� ���� ����� ��� ���� Ȑ����');
end;

procedure TFmScanImage.acShowNotColorPagesExecute(Sender: TObject);
begin
  DMScanImage.ColorID:=0;
  DMScanImage.QrLetterData.Close;
  DMScanImage.QrLetterData.SQL.Text := 'Select LetterDataID ,LetterID ,PageNumber,ColorID,ListItemsID,Description '+
                                                'From LetterData  Where( LetterID = :Pa_LetterID )  And( Extention in (1,2) )  '+
                                                'And( (ColorID IS NULL) OR (ColorID=0) OR (ColorID=-2) ) Order By PageNumber ';
  DMScanImage.QrLetterData.Open;
  { TODO -oparsa : 14030510 - bug 318 }
  {
  if not Edit then
    if DMScanImage.QrLetterData.RecordCount = 1 then
      DBN1.VisibleButtons := [nbInsert,nbDelete,nbPost,nbEdit,nbCancel]
    else
      DBN1.VisibleButtons := [nbPrior,nbFirst,nbLast,nbNext,nbInsert,nbDelete,nbPost,nbEdit,nbCancel]
  else
      DBN1.VisibleButtons := [nbPrior,nbFirst,nbLast,nbNext];
                  }
  NavigatorHandel;
  { TODO -oparsa : 14030510 - bug 318 }
  ShowNotPageFromAll;
  ValueColorID:=-1;
end;

procedure TFmScanImage.ShowPageCount;
begin
  if DMScanImage.ColorID=-1 then
  begin
    if DMScanImage.QrSelImage.Active then
    begin
      Edit1.Visible:=True;
      Edit1.Text:='';
      try
        if DMScanImage.QrSelImageColorID.AsInteger > 0 then
          Edit1.Color:= StringToColor(GetColor(DMScanImage.QrSelImageColorID.AsInteger));
      except
        Edit1.Color:= Panel8.Color;
      end;
    end
    else
      ShowMessage('�� ��� ���� ��� ���� ����� ����� ��� ��� ��� ���� �� ��� ����� ���� ��� � ����� ���� ����');
  end;

  if (DMScanImage.ColorID=0) or (DMScanImage.ColorID=-2) then
  begin
    if DMScanImage.QrSelImage.Active then
    begin
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
      Edit1.Visible:=True;
      Edit1.Text:='';
      //ShowMessage(Dm.qSelectedColorColor.AsString);
      if (Dm.qSelectedColorColor.AsString <> '') and (Dm.qSelectedColorColor.AsString <> '���� ��') and (Dm.qSelectedColorColor.AsString <> '���� �����') then
        Edit1.Color:= StringToColor(Dm.qSelectedColorColor.AsString);
    end
    else
      ShowMessage('�� ��� ���� ��� ���� ����� ����� ��� ��� ��� ���� �� ��� ����� ���� ��� � ����� ���� ����');
  end;
end;

procedure TFmScanImage.acAttachColorExecute(Sender: TObject);
begin
  inherited;
  if _CanAttachColor then
  begin
    try
      if DMScanImage.QrSelImageLetterDataID.AsInteger>0 then
      begin
        if not Dm.qDefineColors.IsEmpty then
        begin
          qAttachColor.Close;
          //qAttachColor.Parameters.ParamByName('ColorID').Value:=Dm.qDefineColorsID.AsInteger;

          qAttachColor.Parameters.ParamByName('LetterDataID').Value:=DMScanImage.QrSelImageLetterDataID.AsInteger;
          qAttachColor.ExecSQL;
          Exec_insert_UserLog('SetImageColor',DMScanImage.QrSelImageLetterID.AsInteger);
          Dm.Insert_LetterEdit(DMScanImage.QrSelImageLetterID.AsInteger,'������ �� �� �����');
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
end;

procedure TFmScanImage.ShowNotPageFromAll;
begin
  FmScanImage.StaticText1.Visible:=False;
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

procedure TFmScanImage.PageControl2Change(Sender: TObject);
var
  _Query:String;
  LDestNode: TTreeNode;
begin
  //findNodeInColorView(currNode, intId, strColor);

  SelecttionColorId := -2;

  Dm.qSelectedColor.Locate('ColorId',SelecttionColorId,[loCaseInsensitive]);
  //Dm.qSelectedColor.First;

  acShowNotColorPagesExecute(Application);

  if DMScanImage.QrLetterData.IsEmpty then
  begin
    ImageEnDBView1.Clear;
    Edit1.Visible:=False;
  end;

  if PageControl2.ActivePageIndex=0 then
  begin
    //Dm.OpenqSelectedColor(LetterID);
    //ValueColorID := -2;
    //Dm.qSelectedColor.Locate('Color','���� ��',[]);
    //DBGrid2DblClick(Sender);
    //Edit1.Color := clBtnFace;

////////////Ataie 990915
    arrColorView := nil;
    tvColorView.Items.Clear;
{
      _Query:=  'Select MAX(dc.Parent) as Parent, MAX(dc.Descriptions) as Descriptions, MAX(dc.Color) as Color, LD.ColorID ' +
          'From LetterData LD Inner Join DefineColors dc On LD.ColorID = dc.ID Where LD.LetterID = ' + IntToStr(LetterID) + ' And Dc.Parent = 0 ' +
          'Group by LD.ColorID ' +
          'Union ALL ' +
          'Select 0 as Parent, N''���� �����'' as Descriptions,N''clBtnFace'' as Color ,-1 as ColorID ' +
          'Union ALL ' +
          'Select 0 as Parent, N''���� ��'' as Descriptions,N''clBtnFace'' as Color ,-2 as ColorID ';

 }
    _Query:=  'With Tree AS ( ' +
              'Select ID, Parent, Descriptions, Color From DefineColors ' +
              'Where Id in (Select ID	From DefineColors DC Where DC.ID in ( ' +
              'Select Distinct LD.ColorID	From LetterData LD Where LD.LetterID = ' + IntToStr(LetterID) + ')) ' +
              'Union All ' +
              'Select T.Id, T.Parent, T.Descriptions, t.Color From DefineColors T Inner Join Tree On T.Id = Tree.Parent) ' +
              'Select Distinct Parent, Descriptions, Color, ID as ColorId From Tree Where Parent = 0 ' +
              'Union All ' +
              'Select 0 as Parent, N''���� �����'' as Descriptions,N''clBtnFace'' as Color ,-1 as ColorID ' +
              'Union ALL ' +
              'Select 0 as Parent, N''���� ��'' as Descriptions,N''clBtnFace'' as Color ,-2 as ColorID';


    with TADOQuery.Create(nil) do
    begin
      SQL.Clear;
      SQL.Add(_Query);
      Connection:=Dm.YeganehConnection;
      try
        open;
        if IsEmpty then
        begin
          Free;
          Exit;
        end;

        repeat
          try
            LDestNode := tvColorView.Items.AddFirst(nil, FieldByName('Descriptions').asstring);
            LDestNode.ImageIndex := CreateBitmapSolidColor(16,16,StringToColor(FieldByName('Color').asString),'');

            recColorView.id := FieldByName('ColorID').AsInteger;
            recColorView.color:= FieldByName('Color').AsString;
            recColorView.name := FieldByName('Descriptions').AsString;
            recColorView.node := LDestNode;

            SetLength(arrColorView, Length(arrColorView) + 1);
            arrColorView[High(arrColorView)] := recColorView;

            AddNodeINTvColorView(LDestNode,FieldByName('ColorId').asstring);

          except on E:Exception do
             //Showmessage('Error :'+E.Message);
          end;
          Next;
        until Eof;
      except on E:Exception do
              //Showmessage('Error ::'+E.Message);
      end;
      free
    end;
       //tvColorViewDblClick(Sender);
  end;
  PageControl2.SetFocus;
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
      if DMScanImage.QrSelImageLetterDataID.AsInteger>0 then
      begin
        qAttachColor.Close;
        qAttachColor.Parameters.ParamByName('ColorID').Value:=Null;
        qAttachColor.Parameters.ParamByName('LetterDataID').Value:=DMScanImage.QrSelImageLetterDataID.AsInteger;
        qAttachColor.ExecSQL;
        Exec_insert_UserLog('RemoveImageColor',DMScanImage.QrSelImageLetterID.AsInteger);
        Dm.Insert_LetterEdit(DMScanImage.QrSelImageLetterID.AsInteger,'��� �� �����');
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
begin
  imV1 := TImageEnView.Create(self);
  imV2 := TImageEnView.Create(self);
  imV2.IO.LoadFromFileJpeg(FileName);
  imV2.IO.SaveToFileBMP(_TempPath+'\tmp.bmp');
  im1 := TImage.Create(self);
  im2 := TImage.Create(self);
  im1.Picture.Bitmap.LoadFromFile(_TempPath+'\tmp.bmp');
  im2.Picture.bitmap.Height := im1.Picture.bitmap.Height;
  im2.Picture.bitmap.Width := im1.Picture.bitmap.Width;
  r1 := Rect(0,0,im1.picture.bitmap.Width,im1.picture.bitmap.Height);
  r2 := Rect(0,0,im2.picture.bitmap.Width,im2.picture.bitmap.Height);
  can1 := im1.Picture.Bitmap.Canvas;
  can2 := im2.Picture.Bitmap.Canvas;
  im2.Picture.Bitmap.PixelFormat := pf1bit;
  can2.CopyRect(r2,can1,r1);
  Im2.Picture.Bitmap.SaveToFile(_TempPath+'\tmp.bmp');
  im1.Free;
  im2.Free;
  try
    imV1.IO.LoadFromFileTIFF(_TempPath+'\4.tif');
  except
  end;
  imV2.IO.Bitmap.PixelFormat := pf1bit;
  imV2.IO.LoadFromFileBMP(_TempPath+'\tmp.bmp');
{   imP1 := TImageEnProc.Create(self);
   imP1.AttachedImageEn := imV2;
   imP1.ConvertToBWThreshold(50);  }
  imV1.IO.Bitmap.PixelFormat := pf1bit;
//   imV1.IO.Bitmap.Assign();
  imV2.IO.SaveToFileTIFF(FileName+'.tiff');
  imV1.IEBitmap.Assign(imV2.IEBitmap);
  imV1.IO.SaveToFileTIFF(FileName+'.tiff');
  imV1.Free;
  imV2.Free;
  DeleteFile(_TempPath+'\tmp.bmp');
  FillData(FileName+'.tiff');
  DeleteFile(FileName+'.tiff');
end;

procedure TFmScanImage.ImageEnVectMainKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  i: integer;
begin
  inherited;
  if Key = Vk_Delete then
  begin
    for i := ImageEnVectMain.SelObjectsCount - 1 downto 0 do
      ImageEnVectMain.RemoveObject(ImageEnVectMain.SelObjects[i]);
  end;
  ImageEnVectMain.Proc.SaveUndo();
end;

procedure TFmScanImage.ImageEnVectMainMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if SbBrush.Down then
  begin
    StartX:=X;
    startY:=Y;
    if (PageControl1.ActivePage=BrushTab) then
      ImageEnVectMainMouseMove(self,Shift,X,Y);
  end;
end;

procedure TFmScanImage.ImageEnVectMainMouseMove(Sender: TObject;
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
    with ImageEnVectMain do
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
          //Layers[1].Bitmap.RenderToTIEBitmapEx( Layers[0].Bitmap, px,py,bx,by, 0,0,bx,by, 255,rfNone,op );
          Layers[1].Bitmap.MergeAlphaRectTo( Layers[0].Bitmap, 0,0,px,py, bx,by);
        end;
        Update;
      end;
    lastX:=X;
    lastY:=Y;
  end;
end;

procedure TFmScanImage.ImageEnVectMainNewObject(Sender: TObject;
  hobj: Integer);
begin
  inherited;
  ImageEnVectMain.MouseInteractVt := [miObjectSelect];
end;

procedure TFmScanImage.ImageEnVectMainViewChange(Sender: TObject;
  Change: Integer);
begin
  inherited;
  LabelZoom .Caption :='��ѐ�����  :    '+ FloatToStr( Round(ImageEnVectMain.Zoom) )+'%';
end;

procedure TFmScanImage.ImageEnDBView1ViewChange(Sender: TObject; Change: Integer);
begin
  inherited;
  LabelZoom .Caption :='��ѐ�����  :    '+ FloatToStr( Round(ImageEnDBView1.Zoom) )+'%';
  if (Dm.GetValue(2104) = 2) and (flag = 0)  then
  begin
    ImageEnDBView1.AutoFit := False;
    ImageEnDBView1.Zoom := 100;
    if ImageEnVectMain.Visible then
      ImageEnVectMain.Zoom := 100;
    LabelZoom .Caption :='��ѐ�����  :    '+ FloatToStr( Round(ImageEnDBView1.Zoom) )+'%';
  end
end;

procedure TFmScanImage.BitBtn4Click(Sender: TObject);
Var
  filename :String;
  i : integer;
begin
  inherited;
  TWAIN_SetHideUI(true);
  TWAIN_SetFileAppendFlag(false);
  TWAIN_SetJpegQuality((dm.GetValue(802)+1)*10);

  if TWAIN_OpenDefaultSource() then
  begin
    TWAIN_SetXferCount(-1);
    TWAIN_SetAutoScan(true);
    TWAIN_SetMultiTransfer(true);
    if dm.GetValue(801) = 0 then
      TWAIN_SetPixelType(TWPT_BW)
    else if dm.GetValue(801) = 1 then
      TWAIN_SetPixelType(TWPT_GRAY)
    else if dm.GetValue(801) = 2 then
      TWAIN_SetPixelType(TWPT_RGB);

    i := 1;
    repeat
      if dm.GetValue(803)=0 then
        fileName := _TempPath +'image'+IntToStr(i)+'.jpg'
      else
        fileName := _TempPath +'image'+IntToStr(i)+'.tif';

      if (TWAIN_AcquireToFilename(self.Handle, pchar(fileName))<>0) then
        break;

      LoadAndShow(fileName);
      if not(DMScanImage.QrLetterData.State in [dsedit,dsinsert]) then
        break;

      i := i+1;
    until TWAIN_IsDone();
    TWAIN_CloseSource();
    DMScanImage.QrLetterData.Cancel;
    Close_Open_QrLetterData;
    DMScanImage.QrLetterData.Last;
  end;

  if TWAIN_LastErrorCode()<>0 then
    TWAIN_ReportLastError(pchar('��� �� �Ә� ������'+ '   '+ ' ERROR CODE : '+ inttostr(TWAIN_LastErrorCode())));
end;

procedure TFmScanImage.LoadAndShow(filename : string);
var
  SaveFileUrl,SaveFileName:String;
begin

  //_JpegFIleChange.SetBMPFileDPI(filename,StrToInt(  _BaseSQLConnection.GetKeyvalue('IMGDPI'))); Commented By MRM,HANS 990601
  DMScanImage._IsScan:=True;
  if (DMScanImage.QrLetterData.State = dsedit) then
  begin
    _BaseSQLConnection.SaveLog('Edit','');
    DMScanImage.QrSelImage.Edit;

    if (UpperCase(File_GetFileExt(filename)) = 'TIF')or(UpperCase(File_GetFileExt(filename)) = 'TIFF') then
      DMScanImage.QrSelImageExtention.AsInteger := 2 //TIFF
    else
      DMScanImage.QrSelImageExtention.AsInteger := 1; //JPEG Format

    ImageEnVectMain.LayersRemove(1);
    DMScanImage.QrSelImageLastUpdate.AsDateTime := Now;
    DMScanImage.QrSelImageLetterID.AsInteger := fmScanImage.LetterID;
    DMScanImage.QrSelImageIsCorrectedImage.AsBoolean := True;
    if ValueColorID <> -1 then
      if _BaseSQLConnection.GetKeyvalue('SaveFileType')= '1' then
      begin
        SaveFileUrl:=  _MyLetterID+FormatDateTime('hhmmss',now)+ExtractFileExt(filename);

        SaveFileName:= UploadFileToFTP(filename,SaveFileUrl);
        DMScanImage.QrSelImage.FieldByName('path').Value:=SaveFileName;
        DMScanImage.QrSelImage.FieldByName('url').Value:=SaveFileName;
      end;
    DMScanImage.QrSelImage.FieldByName('Letterid').Value:=_MyLetterID;
    DMScanImage.QrSelImage.Post;
    DMScanImage.QrLetterData.Cancel;
  end
  else if (DMScanImage.QrLetterData.State = dsinsert) then
  begin
    _BaseSQLConnection.SaveLog('Inset','');
    DMScanImage.QrSelImage.Insert;
    if (UpperCase(File_GetFileExt(filename)) = 'TIF')or(UpperCase(File_GetFileExt(filename)) = 'TIFF') then
      DMScanImage.QrSelImageExtention.AsInteger := 2 //TIFF
    else
      DMScanImage.QrSelImageExtention.AsInteger := 1; //JPEG Format
    ImageEnVectMain.LayersRemove(1);
    DMScanImage.QrSelImageLastUpdate.AsDateTime := Now;
    DMScanImage.QrSelImageLetterID.AsInteger := fmScanImage.LetterID;
    DMScanImage.QrSelImageIsCorrectedImage.AsBoolean := True;
    DMScanImage.QrSelImagePageNumber.AsInteger := dm.YeganehConnection.execute('select isnull(max(pagenumber),0)+1 from letterdata where letterid = '+IntToStr(fmScanImage.LetterID)).fields[0].Value;

    if ValueColorID <> -1 then
      DMScanImage.QrSelImageColorID.AsInteger := ValueColorID ;

    if _BaseSQLConnection.GetKeyvalue('SaveFileType')= '1' then
    begin

      SaveFileUrl:= _MyLetterID+ FormatDateTime('hhmmss',now)+ExtractFileExt(filename);
      SaveFileName:= UploadFileToFTP(filename,SaveFileUrl);
      DMScanImage.QrSelImage.FieldByName('path').Value:=SaveFileName;
      DMScanImage.QrSelImage.FieldByName('url').Value:=SaveFileName;

    end;

    DMScanImage.QrSelImage.FieldByName('LetterID').Value:=_MyLetterID;
    DMScanImage.QrSelImage.FieldByName('url').Value:=SaveFileName;

    DMScanImage.QrSelImage.FieldByName('LetterID').Value:=_MyLetterID;
    DMScanImage.QrSelImage.Post;
  end;
end;

procedure TFmScanImage.acSettingsExecute(Sender: TObject);
begin
  inherited;
  Settings := TSettings.Create(Nil);
  PageControl_SetTabSheet(Settings.PageControl1,'TShSystem');//PageControl ������ �ѐ� �����
  Settings.ChBoFax.Font.Color := clBlue;
  Settings.HasJpg.Font.Color := clBlue;
  Settings.ShowModal;
end;

function TFmScanImage.UploadFileToFTP(Source, UploadFile: String): String;
 function CheckDirExists(Where : String):Boolean;
  var
   AQry : TADOQuery;
  begin
   Result := False;
   AQry := TADOQuery.Create(Nil);
   try
    AQry.Connection := Dm.YeganehConnection;
    AQry.Close;
    AQry.SQL.Text := 'Select Top 1 URL From LetterData Where Url Like ''%' + Where + '%'' ';
    AQry.Open;
    if not AQry.IsEmpty then
     Result := True;
   finally
    FreeAndNil(AQry);
   end;
  end;

var
  UploadDirectory, strResult : String;
begin
  strResult := '';

  if _BaseSQLConnection.GetKeyvalue('SaveFileType') = '1' then
  begin
    with IdFTP1 do
    begin
      try
      Host :=_DownloadSetting._FtpIP;
      Username :=_DownloadSetting._FtpUserName;//'turaj'  ;
      Password :=_DownloadSetting._FtpPassword;//'yeganeh_987' ;
      Disconnect;
      Connect();
      if Connected then
      begin
//        try
          UploadDirectory := FormatDateTime('yyyy',now);
          if not CheckDirExists(UploadDirectory) then
           IdFTP1.MakeDir(UploadDirectory);
//        except
//        end;

//        try
          UploadDirectory := FormatDateTime('yyyy',now)+'\'+FormatDateTime('mm',now);
          if not CheckDirExists(UploadDirectory) then
           IdFTP1.MakeDir(UploadDirectory);
//        except
//        end;

//        try
          UploadDirectory := FormatDateTime('yyyy',now)+'\'+FormatDateTime('mm',now)+'\'+FormatDateTime('dd',now);
          if not CheckDirExists(UploadDirectory) then
           IdFTP1.MakeDir(UploadDirectory);
//        except

//        end;
        Put(Source, UploadDirectory + '\' + UploadFile);
      end;
      except
//        _BaseSQLConnection.SaveLog(e.Message, 'TFrAddLetterDataDialog.UploadFileToFT');
      end;
      disconnect;
    end;
    strResult := UploadDirectory + '\' + UploadFile;
  end;
  Result:= strResult;
end;

procedure TFmScanImage.ItializeDownloadSetting;
begin
  _JpegFIleChange:=TImageFile.Create;

  _BaseSQLConnection:=TBaseSQLConnection.Create;
  _DownloadSetting._HttpUrl:=_BaseSQLConnection.GetKeyvalue('HttpUrl');
  _DownloadSetting._FtpIP:=_BaseSQLConnection.GetKeyvalue('FtpIP');
  _DownloadSetting._FtpUserName:=_BaseSQLConnection.GetKeyvalue('FtpUserName');
  _DownloadSetting._FtpPassword:=_BaseSQLConnection.GetKeyvalue('FtpPassword');
end;

procedure TFmScanImage.LoadImages;
var
  I:Integer;
  FilePatch,NewURL:string;
begin
//
  pb1.Visible:=True;
  pb1.Max:=DMScanImage.SPAllImage.RecordCount;
  for I  := 1 to DMScanImage.SPAllImage.RecordCount do
  begin
    Application.ProcessMessages;
    pb1.Position:=i;
    with DMScanImage do
    begin
      FilePatch:=SPAllImage.fieldbyname('path').AsString;
      NewURL:=DownloadFiles(FilePatch);
      SPAllImage.Edit;
      SPAllImage.fieldbyname('Filetype').Value:=NewURL;
      SPAllImage.Post;
      Sleep(1000);
      SPAllImage.Next;
    end;
  end;
  pb1.Visible:=False
end;

procedure TFmScanImage.acShowSelectedPagesExecute1(ColorID: String);
begin
  DMScanImage.QrLetterData.Close;
  DMScanImage.QrLetterData.SQL.Text := 'Select LetterDataID ,LetterID ,PageNumber,ColorID  '+
                                        'From LetterData  Where( LetterID = :Pa_LetterID )  And( Extention in (1,2) )  '+
                                        'And ColorID='+ColorID+' Order By PageNumber ';
  DMScanImage.QrLetterData.Open;

  ShowNotPageFromAll;
  DMScanImage.QrLetterData.Last;
  try
   if (_MyPuletColors <> '') and (_MyPuletColors <> '���� ��') and (_MyPuletColors <> '���� �����') then
    Edit1.Color:= StringToColor(_MyPuletColors)
   else
    Edit1.Color := clBtnFace;
  except
  end;
end;

procedure TFmScanImage.Action2Execute(Sender: TObject);
begin
  inherited;
  ControlEnabled(True);
  ImageEnDBVect1.LayersRemove(1);//
  ImageEnVectMain.DeSelect;
  ImageEnVectMain.UnSelAllObjects;
  ImageEnVectMain.LayersMergeAll;
  ImageEnVectMain.RemoveAllObjects;
  ImageEnVectMain.Proc.Rotate(-90);
  ImageEnDBView1.Proc.Rotate(-90);
  ControlEnabled(False);
end;

procedure TFmScanImage.SavenadLoadInDB(FileNames: String);
var
  SaveFileUrl,SaveFileName:String;
  FileName:String;
begin
  FileName:=FileNames;
  SaveFileUrl:=FileNames;
  SaveFileName:=FileNames;
  _JpegFIleChange.SetBMPFileDPI(filename,StrToInt(_IMGDPI));
  DMScanImage._IsScan:=True;
  if (DMScanImage.QrLetterData.State = dsedit) then
  begin
    _BaseSQLConnection.SaveLog('Edit','');
    DMScanImage.QrSelImage.Edit;
    DMScanImage.QrSelImageImage.LoadFromFile(filename);

    if (UpperCase(File_GetFileExt(filename)) = 'TIF')or(UpperCase(File_GetFileExt(filename)) = 'TIFF') then
      DMScanImage.QrSelImageExtention.AsInteger := 2 //TIFF
    else
      DMScanImage.QrSelImageExtention.AsInteger := 1; //JPEG Format
    ImageEnVectMain.LayersRemove(1);
    DMScanImage.QrSelImageLastUpdate.AsDateTime := Now;
    DMScanImage.QrSelImageLetterID.AsInteger := fmScanImage.LetterID;
    DMScanImage.QrSelImageIsCorrectedImage.AsBoolean := True;
    if ValueColorID <> -1 then
      DMScanImage.QrSelImage.FieldByName('path').Value:=SaveFileName;
    DMScanImage.QrSelImage.FieldByName('url').Value:=SaveFileName;
    DMScanImage.QrSelImage.FieldByName('Letterid').Value:=_MyLetterID;
    DMScanImage.QrSelImage.Post;
    DMScanImage.QrLetterData.Cancel;
    ImageEnDBView1.IO.LoadFromFile(FileName);
  end
  else if (DMScanImage.QrLetterData.State = dsinsert) then
  begin
    _BaseSQLConnection.SaveLog('Inset','');
    DMScanImage.QrSelImage.Insert;
    DMScanImage.QrSelImageImage.LoadFromFile(filename);
    if (UpperCase(File_GetFileExt(filename)) = 'TIF')or(UpperCase(File_GetFileExt(filename)) = 'TIFF') then
      DMScanImage.QrSelImageExtention.AsInteger := 2 //TIFF
    else
      DMScanImage.QrSelImageExtention.AsInteger := 1; //JPEG Format
    ImageEnVectMain.LayersRemove(1);
    DMScanImage.QrSelImageLastUpdate.AsDateTime := Now;
    DMScanImage.QrSelImageLetterID.AsInteger := fmScanImage.LetterID;
    DMScanImage.QrSelImageIsCorrectedImage.AsBoolean := True;
    DMScanImage.QrSelImagePageNumber.AsInteger := dm.YeganehConnection.execute('select isnull(max(pagenumber),0)+1 from letterdata where letterid = '+IntToStr(fmScanImage.LetterID)).fields[0].Value;
    if ValueColorID <> -1 then
      DMScanImage.QrSelImageColorID.AsInteger := ValueColorID ;
    DMScanImage.QrSelImage.FieldByName('path').Value:=FileName;
    DMScanImage.QrSelImage.FieldByName('LetterID').Value:=_MyLetterID;
    DMScanImage.QrSelImage.FieldByName('url').Value:=FileName;
    ImageEnDBView1.IO.LoadFromFile(FileName);
    DMScanImage.QrSelImage.Post;
  end;
  DeleteFile(filename);
end;

procedure TFmScanImage.ImageEnView1Click(Sender: TObject);
begin
  inherited;
//ShowMessage('my ImageEnView1');
end;

procedure TFmScanImage.ImageEnVectMainClick(Sender: TObject);
begin
  inherited;
//ShowMessage('my ImageEnVectMain');
end;

procedure TFmScanImage.ImageEnMView1Click(Sender: TObject);
begin
  inherited;
//ShowMessage('ImageEnMView');
end;

procedure TFmScanImage.ImageEnDBView1Click(Sender: TObject);
begin
  inherited;
//ShowMessage('ImageEnDBView1');
end;

procedure TFmScanImage.ScanSQl;
Var
   filename :String;
   i, v803 : integer;
begin
  inherited;
  Application.ProcessMessages;
  Sleep(2000);
  if dm.GetValue(807) = true then
    TWAIN_SetHideUI(false)
  else
    TWAIN_SetHideUI(true);
  TWAIN_SetFileAppendFlag(false);
//   TWAIN_SetJpegQuality((dm.GetValue(802)+1)*10); Commented By Hamed_Ansari_990130
  TWAIN_SetResolution(StrToInt(_IMGDPI));
  if TWAIN_OpenDefaultSource() then
  begin
    TWAIN_SetXferCount(-1);
    TWAIN_SetAutoScan(true);
    TWAIN_SetMultiTransfer(true);
    if dm.GetValue(801) = 0 then
      TWAIN_SetPixelType(TWPT_BW)
    else if dm.GetValue(801) = 1 then
      TWAIN_SetPixelType(TWPT_GRAY)
    else if dm.GetValue(801) = 2 then
      TWAIN_SetPixelType(TWPT_RGB);
    if (dm.GetValue(805) = 1)and(TWAIN_HasFeeder) then
      TWAIN_SelectFeeder(true)
    else
      TWAIN_SelectFeeder(false);

    if (TWAIN_GetDuplexSupport > 0) Then   // check for duplex support
    begin
      if (dm.GetValue(806) = 1)and(TWAIN_HasFeeder) then
        TWAIN_EnableDuplex(true)
      else
        TWAIN_EnableDuplex(false);
    end;
    i := 1;
    v803 := dm.GetValue(803);
    repeat
      if v803=0 then
        fileName := _TempPath +'image'+IntToStr(i)+'.jpg'
      else
        fileName := _TempPath +'image'+IntToStr(i)+'.tif';

      if (TWAIN_AcquireToFilename(self.Handle, pchar(fileName))<>0) then
        break;

      LoadAndShow_SQL(fileName);
      if not(DMScanImage.QrLetterData.State in [dsedit,dsinsert]) then
        break;

      i := i+1;
    until TWAIN_IsDone();

    TWAIN_CloseSource();
    DMScanImage.QrLetterData.Cancel;
    Close_Open_QrLetterData;
    DMScanImage.QrLetterData.Last;
  end;

  if Dm.GetValue(2104) = 0 then
    FitToPageClick(Self);
  if Dm.GetValue(2104) = 1 then
    btnWidthSizeClick(Self);
  if Dm.GetValue(2104) = 2 then
    btnActualSizeClick(Self);
  if TWAIN_LastErrorCode()<>0 then
    TWAIN_ReportLastError(pchar('��� �� �Ә� ������'+ '   '+ ' ERROR CODE : '+ inttostr(TWAIN_LastErrorCode())))
    //Hamed_Ansari_990221_S
  else
    Dm.Insert_LetterEdit(LetterID,'����� ����� ���� �� ���� �Ә��');
    //Hamed_Ansari_990221_S
end;

procedure TFmScanImage.LoadAndShow_SQL(filename: string);
begin
  if (DMScanImage.QrLetterData.State = dsedit) then
  begin
    DMScanImage.QrSelImage.Edit;
    DMScanImage.QrSelImageImage.LoadFromFile(filename);
    if (UpperCase(File_GetFileExt(filename)) = 'TIF')or(UpperCase(File_GetFileExt(filename)) = 'TIFF') then
      DMScanImage.QrSelImageExtention.AsInteger := 2 //TIFF
    else
      DMScanImage.QrSelImageExtention.AsInteger := 1; //JPEG Format
    ImageEnVectMain.LayersRemove(1);
    DMScanImage.QrSelImageLastUpdate.AsDateTime := Now;
    DMScanImage.QrSelImageLetterID.AsInteger := fmScanImage.LetterID;
    DMScanImage.QrSelImageIsCorrectedImage.AsBoolean := True;
    if ValueColorID <> -1 then
      DMScanImage.QrSelImageColorID.AsInteger := ValueColorID ;
    DMScanImage.QrSelImage.Post;
    DMScanImage.QrLetterData.Cancel;
  end
  else if (DMScanImage.QrLetterData.State = dsinsert) then
  begin
    DMScanImage.QrSelImage.Insert;
    DMScanImage.QrSelImageImage.LoadFromFile(filename);
    if (UpperCase(File_GetFileExt(filename)) = 'TIF')or(UpperCase(File_GetFileExt(filename)) = 'TIFF') then
      DMScanImage.QrSelImageExtention.AsInteger := 2 //TIFF
    else
      DMScanImage.QrSelImageExtention.AsInteger := 1; //JPEG Format
    ImageEnVectMain.LayersRemove(1);
    DMScanImage.QrSelImageLastUpdate.AsDateTime := Now;
    DMScanImage.QrSelImageLetterID.AsInteger := fmScanImage.LetterID;
    DMScanImage.QrSelImageIsCorrectedImage.AsBoolean := True;
    DMScanImage.QrSelImagePageNumber.AsInteger := dm.YeganehConnection.execute('select isnull(max(pagenumber),0)+1 from letterdata where letterid = '+IntToStr(fmScanImage.LetterID)).fields[0].Value;
    if DMScanImage.QrSelImagePageNumber.AsInteger =0 then
      DMScanImage.QrSelImagePageNumber.AsInteger:=1;

    if ValueColorID <> -1 then
      DMScanImage.QrSelImageColorID.AsInteger := ValueColorID ;
    DMScanImage.QrSelImage.Post;
  end;
end;

procedure TFmScanImage.OpenFileExecute_SQL(Sender: TObject);
Var
  I,fn,DPI :integer;
  IsJpegFormat, isEdit:Boolean;
  FileNamePath, strName : String;
  fs : TFileStream;
  Image : TImageEn;
   m_bitmap: TBitmap;
begin
  inherited;

  if Not(DMScanImage.QrLetterData.State in [dsEdit,dsInsert]) then
    Exit;

  IsJpegFormat :=  dm.GetValue(55);
  IsJpegFormat :=  dm.GetSystemValue(27);

  if IsJpegFormat then
    OpenPictureDialog.filterindex := 1//Filter := 'JPEG Image File (*.jpg;*.jpeg)|*.jpeg;*.jpg'
  else
    OpenPictureDialog.filterindex := 2;//Filter := 'Tiff(*.Tif)|*.Tif';

  if DMScanImage.QrLetterData.State =dsEdit then
    isEdit := true;

  if isEdit then
  begin
    OpenPictureDialog.Filter := 'JPEG Image File (*.jpg;*.jpeg)|*.jpeg;*.jpg' ;
  end
  else
  begin
    OpenPictureDialog.Filter := 'JPEG Image File (*.jpg , *.jpeg)|*.jpeg;*.jpg|Tiff(*.tif , *.tiff)|*.tif;*.tiff';
  end;

  fn := DMScanImage.QrLetterDataLetterDataID.AsInteger;
  if OpenPictureDialog.Execute then
  begin
    try
      try
        Image := TImageEn.Create(Self);
        Image.Visible := False;

        strName := ExtractFilePath(Application.ExeName) + 'Temp' + ExtractFileExt(OpenPictureDialog.FileName);
        (*
        try
          m_bitmap := SynGdiPlus.LoadFrom(OpenPictureDialog.FileName);
          if (m_bitmap = nil) then
          begin
            Image.IO.LoadFromFileAuto(OpenPictureDialog.FileName);
          end
          else
          begin
            SynGDIPlus.SaveAs(m_bitmap, strName, gptTIF);
            Image.IO.LoadFromFileTIFF(strName);
          end;
        except on E : Exception do
          begin
            ShowMsgString('���� ���� ��� ����� ����� ����');
            Exit;
          end;
        end;
        *)
        Image.IO.LoadFromFileAuto(OpenPictureDialog.FileName);
        if Image.DpiX > StrToInt(_IMGDPI) then
          ShowMessage('���� ����� ���� ������ �� '+ _IMGDPI + '�� �� �� ���� ����� � ���� ������� ������ �� ����� ������');
        DPI := Image.DpiX;
      finally
          FreeAndNil(Image);
      end;

      if DPI> StrToInt(_IMGDPI) then
        Exit;

      Screen.Cursor := crHourGlass;
      BBOpenFile.Enabled := False;
      if (not IsJpegFormat) and (OpenPictureDialog.filterindex <> 2) then
        if MessageDlg('������ ����� ���� � ���� ����� ���Ͽ',mtConfirmation,[mbYes,mbNo],0)= mrNo then
          IsJpegFormat := true;

      for I:=0 to OpenPictureDialog.Files.Count-1 do
      begin
           (*
           if FileExists(_ApplicationPath+'tmpFile'+ExtractFileExt(OpenPictureDialog.Files.Strings[I]))then
                DeleteFile(pchar(_ApplicationPath+'tmpFile'+ExtractFileExt(OpenPictureDialog.Files.Strings[I])));
            if CopyFileW( dm.replacePWC(dm.StringToPWide(OpenPictureDialog.Files.Strings[I],j)), dm.StringToPWide(_ApplicationPath+'tmpFile'+ExtractFileExt(OpenPictureDialog.Files.Strings[I]),j), False) then
               FileNamePath := _ApplicationPath+'tmpFile'+ExtractFileExt(OpenPictureDialog.Files.Strings[I])
            else if CopyFileW( dm.StringToPWide(OpenPictureDialog.Files.Strings[I],j), dm.StringToPWide(_ApplicationPath+'tmpFile'+ExtractFileExt(OpenPictureDialog.Files.Strings[I]),j), False) then
               FileNamePath := _ApplicationPath+'tmpFile'+ExtractFileExt(OpenPictureDialog.Files.Strings[I])
            else
               ShowMessage('��� �� ������ ���� ����');
            *)
           //FileNamePath := OpenPictureDialog.FileName;
        if (UpperCase(File_GetFileExt(FileNamePath))='TIF')or(UpperCase(File_GetFileExt(FileNamePath))='TIFF')then
        begin
          ChangeMultyTifToTifsAndSave(OpenPictureDialog.Files.Strings[I]);  //���� TIFF �� �� ���� ����� TIFF ����� ���
        end
        else if IsJpegFormat then  //���� JPG �� ����� �� ���� �� JPG ���� �� ����� JPG ����� ���
        begin
          FillData_SQL(IntToStr(I));
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

      if (DMScanImage.QrLetterData.State in [dsInsert,dsEdit]) then
        DBN1.BtnClick(nbCancel);
      Close_Open_QrLetterData;
      DMScanImage.QrLetterData.Last;
    Finally
//        ImageEnDBVect1.FitToWidth;
       // ImageEnDBView1.FitToWidth;
      BBOpenFile.Enabled := True;
      Screen.Cursor := crDefault;

      if Dm.GetValue(2104) = 0 then
        FitToPageClick(Self);
      if Dm.GetValue(2104) = 1 then
        btnWidthSizeClick(Self);
      if Dm.GetValue(2104) = 2 then
        btnActualSizeClick(Self);

    End;
  end;

  {Ranjbar 89.06.06 ID=3}
  //Exec_UserLog(TAction(Sender).Tag);
  Exec_UserLog(TAction(Sender).Name);
  //---

  {Ranjbar 89.07.08 ID=12}
  //LetterEdit ��� ������� ����� ��� ��� ��� �� ����
  Dm.Insert_LetterEdit(LetterID,'����� ������ ����');
  ControlEnabled(False);
  if isEdit then
    DMScanImage.QrLetterData.Locate('LetterDataID',fn,[]);

  ImageEnDBView1.FitToWidth;
  //---
  if Dm.GetValue(2104) = 0 then
    FitToPageClick(Self);
  if Dm.GetValue(2104) = 1 then
    btnWidthSizeClick(Self);
  if Dm.GetValue(2104) = 2 then
    btnActualSizeClick(Self);

end;

procedure TFmScanImage.FillData_SQL(aFileName: String);
var
  Image1 : TImageEnView;
  strFileName : String;
  m_bitmap: TBitmap;
begin
  With DMScanImage do
  begin
    if Not(QrLetterData.State in [dsEdit,dsInsert]) then
      Exit;
      {Ranjbar 89.05.15}
      //QrSelImage.Append;
    if QrLetterData.State=dsinsert then
      QrSelImage.Append
    else
      QrSelImage.Edit;
      //---
   // try
      Image1 := TImageEnView.Create(Self);
      //Image.Visible := False;
      strFileName := OpenPictureDialog.Files.Strings[StrToInt(aFileName)];
      //Image.IO.LoadFromFileAuto(strFileName);
      //LZW

      {if Image.IO.Params.TIFF_Compression = ioTIFF_LZW then
      begin}
      (*Commented By Hamed_Ansari14011003
      try
        m_bitmap := SynGdiPlus.LoadFrom(OpenPictureDialog.Files.Strings[StrToInt(aFileName)]);
        if (m_bitmap = nil) then
        begin
          Image.IO.LoadFromFileAuto(strFileName);
        end
        else
        begin
          SynGDIPlus.SaveAs(m_bitmap, OpenPictureDialog.Files.Strings[StrToInt(aFileName)], gptTIF);
          Image.IO.LoadFromFileTIFF(OpenPictureDialog.Files.Strings[StrToInt(aFileName)]);
        end;
      except on E : Exception do
        begin
          ShowMsgString('���� ���� ��� ����� ����� ����');
          Exit;
        end;
      end;
      *)
      {end
      else
      begin
        Image.IO.LoadFromFileAuto(strFileName);
      end;}
(*
      Image.IO.LoadFromFileAuto(strFileName);
      if (UpperCase(ExtractFileExt(OpenPictureDialog.Files.Strings[StrToInt(aFileName)])) = '.TIF') or (UpperCase(ExtractFileExt(OpenPictureDialog.Files.Strings[StrToInt(aFileName)])) = '.TIFF') then
        Image.IO.SaveToFileTIFF(ExtractFilePath(Application.ExeName) + 'Temp' + ExtractFileExt(OpenPictureDialog.Files.Strings[StrToInt(aFileName)]))
      else
      if (UpperCase(ExtractFileExt(OpenPictureDialog.Files.Strings[StrToInt(aFileName)])) = '.JPG') or (UpperCase(ExtractFileExt(OpenPictureDialog.Files.Strings[StrToInt(aFileName)])) = '.JPEG') then
        Image.IO.SaveToFileJpeg(ExtractFilePath(Application.ExeName) + 'Temp' + ExtractFileExt(OpenPictureDialog.Files.Strings[StrToInt(aFileName)]));
    finally
      FreeAndNil(Image);
    end;

    aFileName := ExtractFilePath(Application.ExeName) + 'Temp' + ExtractFileExt(OpenPictureDialog.Files.Strings[StrToInt(aFileName)]);
*)
    Image1.IO.LoadFromFileAuto(OpenPictureDialog.Files.Strings[StrToInt(aFileName)]);
    aFileName := ExtractFilePath(Application.ExeName) + 'Temp' + ExtractFileExt(OpenPictureDialog.Files.Strings[StrToInt(aFileName)]);
    if (UpperCase(ExtractFileExt(strFileName)) = '.TIF') or (UpperCase(ExtractFileExt(strFileName)) = '.TIFF') then
     begin
      Image1.IO.SaveToFileTIFF(ExtractFilePath(Application.ExeName) + 'Temp' + ExtractFileExt(aFileName));
      strFileName := ExtractFilePath(Application.ExeName) + 'Temp' + ExtractFileExt(aFileName);
     end;
    if (UpperCase(ExtractFileExt(strFileName)) = '.JPG') or (UpperCase(ExtractFileExt(strFileName)) = '.JPEG') then
     begin
      Image1.IO.SaveToFileJpeg(ExtractFilePath(Application.ExeName) + 'Temp' + ExtractFileExt(aFileName));
      strFileName := ExtractFilePath(Application.ExeName) + 'Temp' + ExtractFileExt(aFileName);
     end;
    QrSelImageImage.LoadFromFile(strFileName);
    if (UpperCase(File_GetFileExt(strFileName)) = 'TIF')or(UpperCase(File_GetFileExt(strFileName)) = 'TIFF') then
      QrSelImageExtention.AsInteger := 2 //TIFF or Jpeg
    else
      QrSelImageExtention.AsInteger := 1; //JPEG Format

    ImageEnVectMain.LayersRemove(1);//
    QrSelImageLastUpdate.AsDateTime := Now;
    QrSelImageLetterID.AsInteger := fmScanImage.LetterID;
    if QrSelImage.State = dsInsert then
      QrSelImagePageNumber.AsInteger := Dm.YeganehConnection.Execute('Select IsNull(Max(PageNumber),0)+1 As NextPageNumber '+
                 ' from LetterData Where Extention <3 And LetterID = '+QrSelImageLetterID.AsString).Fields[0].value;
    {Ranjbar 90.03.18 ID=378} //And ID=105
    QrSelImageIsCorrectedImage.AsBoolean := True;
    //---
    if ValueColorID <> -1 then
      QrSelImageColorID.AsInteger := ValueColorID ;
    QrSelImage.Post;
    //Hamed_Ansari_MRM_990601_S
    if FileExists(strFileName) then
      DeleteFile(strFileName);
    //Hamed_Ansari_MRM_990601_E
    Application.ProcessMessages;
   end;
end;

procedure TFmScanImage.AddNodeINTreeView(LDestNode: TTreeNode;_ID:String);
var
  _Query:String;
  LDestNode2:TTreeNode;
begin
  _Query:='SELECT * FROM DefineColors where parent ='+_ID;
  with TADOQuery.Create(nil) do
  begin
    SQL.Clear;
    SQL.Add(_Query);
    Connection:=Dm.YeganehConnection;
    try
      open;
      if IsEmpty then
      begin
        Free;
        Exit;
      end;

      repeat
        try
          LDestNode2:= TreeView1.Items.AddChild(LDestNode, FieldByName('Descriptions').asstring);
          LDestNode2.ImageIndex := CreateBitmapSolidColor(16,16,StringToColor(FieldByName('Color').asString),'');
          AddNodeINTreeView(LDestNode2,FieldByName('ID').asstring);
        except
        end;
        Next;
      until Eof;
    except
    end;
    free
  end;
end;

procedure TFmScanImage.TreeView1Click(Sender: TObject);
begin
  inherited;
  //lblCount.Caption:=' ���� ' + IntToStr(DMScanImage.QrLetterData.RecNo) +' �� '+IntToStr(DMScanImage.QrLetterData.RecordCount );
   try
    _ColorsID:=FindID('');
     ValueColorID := StrToInt(_ColorsID);
  except

  end;
{Commneted By Hamed_Ansari_990203
  Label3.Caption:=_ColorsID;
  lblCount.Caption:='';
 acShowSelectedPagesExecute1(_ColorsID) ;
 if DMScanImage.QrLetterData.IsEmpty then
 begin
   ImageEnDBView1.Clear;
   lblCount.Caption:=' ���� 0 �� 0';
   Edit1.Visible:=False;
   end;
  SelecttionColorId := Dm.qSelectedColorColorID.AsInteger;
  lblCount.Caption:=' ���� ' + IntToStr(DMScanImage.QrLetterData.RecNo) +' �� '+IntToStr(DMScanImage.QrLetterData.RecordCount );
 Edit1.Color:= StringToColor(_MyPuletColors) ;
 Edit1.Visible:=True;
}
end;

function TFmScanImage.FindID(_Name: String): String;
 var
  _Query:String;
begin
  if  TreeView1.Selected.Level >= 1 then
  begin
//    _Query:=' Select s.id,s.color,d.Descriptions DsName,s.Descriptions DsParent From DefineColors d ' +
//            'join DefineColors s on d.ID = s.Parent Where d.ParentName =N' + QuotedStr(TreeView1.Selected.Parent.Text) +
//           ' and s.ParentName=N'+QuotedStr(TreeView1.Selected.Text) + '' ;

    _Query:=' Select s.id,s.color,d.Descriptions DsName,s.Descriptions DsParent From DefineColors d ' +
            'join DefineColors s on d.ID = s.Parent Where d.Descriptions =N' + QuotedStr(TreeView1.Selected.Parent.Text) +
           ' and s.Descriptions=N'+QuotedStr(TreeView1.Selected.Text) + '' ;
  end
  else
  begin
    _Query:='SELECT * FROM DefineColors  where Parent =0 and Descriptions = N'+QuotedStr(TreeView1.Selected.Text)+'';
  end;

  with TADOQuery.Create(nil) do
  begin
    SQL.Clear;
    SQL.Add(_Query);
    Connection:=Dm.YeganehConnection;
    try
      open;
      if IsEmpty then
      begin
        free;
        exit;
      end;

      _MyPuletColors :=FieldByName('color').asstring;
      Edit1.Color:= StringToColor(_MyPuletColors) ;
      Panel8.Color:= StringToColor(_MyPuletColors);
      Result:=FieldByName('ID').asstring;
    except
    end;
    free;
  end;
end;

procedure TFmScanImage.TreeView1GetSelectedIndex(Sender: TObject;
  Node: TTreeNode);
begin
  inherited;
  Node.SelectedIndex := Node.ImageIndex;
end;

procedure TFmScanImage.DBGrid2CellClick(Column: TColumn);
begin
  inherited;
//  _MyPuletColors := Dm.qSelectedColorColor.AsString;
//  ValueColorID := Dm.qSelectedColorColorID.AsInteger;
end;

procedure TFmScanImage.TreeView1DblClick(Sender: TObject);
var
  AQry : TADOQuery;
begin
  inherited;
//Hamed_Ansari_990203_S
  if _CanAttachColor then
  begin
    if not ImageEnVectMain.IO.Bitmap.Empty then
      if not Dm.qDefineColors.IsEmpty then
      begin
        AQry := TADOQuery.Create(Application);
        try
          AQry.Connection := Dm.YeganehConnection;
          AQry.Close;
          AQry.SQL.Text := 'Update LetterData Set ColorID = ' + _ColorsID + ' Where LetterDataID = ' + DMScanImage.QrLetterDataLetterDataID.AsString;
          try
            AQry.ExecSQL;
            Exec_insert_UserLog('SetImageColor',DMScanImage.QrSelImageLetterID.AsInteger);
            Dm.Insert_LetterEdit(DMScanImage.QrSelImageLetterID.AsInteger,'������ �� �� �����');
            Close_Open_QrLetterData;
            if DMScanImage.QrLetterData.IsEmpty then
            begin
              Edit1.Color := clBtnFace;
              ImageEnDBView1.Clear;
            end;
          except
          end;
          ShowMyMessage('�����','������ �� �� ������ ����� ��',[mbOK],mtInformation);
        finally
          FreeAndNil(AQry);
        end;
      end;
  end
  else
    ShowMsgString('���� ������� �� ���� ���� ����� �� �� ������ - �� ���� ����� ��� ���� Ȑ����');
//Hamed_Ansari_990203_E
end;

procedure TFmScanImage.N11Click(Sender: TObject);
var
  Bookmark : TBookmark;
begin
  inherited;
//Hamed_Ansari_990203_S
  if _CanAttachColor then
  begin
    try
      if DMScanImage.QrLetterDataLetterDataID.AsInteger>0 then
      begin
        qAttachColor.Close;
        qAttachColor.Parameters.ParamByName('ColorID').Value:=Null;
        qAttachColor.Parameters.ParamByName('LetterDataID').Value:=DMScanImage.QrSelImageLetterDataID.AsInteger;
        qAttachColor.ExecSQL;
        Exec_insert_UserLog('RemoveImageColor',DMScanImage.QrSelImageLetterID.AsInteger);
        Dm.Insert_LetterEdit(DMScanImage.QrSelImageLetterID.AsInteger,'��� �� �����');
        ShowMsgString('������ ������ ����� ��');
        Bookmark := Dm.qSelectedColor.GetBookmark;
        Dm.qSelectedColor.Close;
        Dm.qSelectedColor.Open;
        if Dm.qSelectedColor.RecordCount > 2 then
          Dm.qSelectedColor.GotoBookmark(Bookmark);
        Dm.qSelectedColor.FreeBookmark(Bookmark);
        Close_Open_QrLetterData;
        if DMScanImage.QrLetterData.IsEmpty then
          PageControl2Change(Sender);
      end
      else
        ShowMsgString('����� ���� �����');
    except
    end;
  end
  else
    ShowMsgString('���� ������� �� ���� ���� ����� �� �� ������ - �� ���� ����� ��� ���� Ȑ����');
//Hamed_Ansari_990203_E
end;

procedure TFmScanImage.AddNodeINTvColorView(LDestNode: TTreeNode;
  _ID: String);
var
  _Query:String;
  LDestNode2:TTreeNode;
begin
  {_Query:='Select MAX(dc.Parent) as Parent, MAX(dc.Descriptions) as Descriptions, MAX(dc.Color) as Color, LD.ColorID ' +
          'From LetterData LD Inner Join DefineColors dc On LD.ColorID = dc.ID Where LD.LetterID = ' + IntToStr(LetterID) + ' And Dc.Parent =  ' + _ID +
          ' Group by LD.ColorID';}

  _Query:=  'With Tree AS ( ' +
                'Select ID, Parent, Descriptions, Color From DefineColors ' +
                'Where Id in (Select ID	From DefineColors DC Where DC.ID in ( ' +
                'Select Distinct LD.ColorID	From LetterData LD Where LD.LetterID = ' + IntToStr(LetterID) + ' )) ' +
                'Union All ' +
                'Select T.Id, T.Parent, T.Descriptions, t.Color From DefineColors T Inner Join Tree On T.Id = Tree.Parent) ' +
            'Select Distinct Parent, Descriptions, Color, ID as ColorId From Tree Where Parent = ' + _ID ;

  with TADOQuery.Create(nil) do
  begin
    SQL.Clear;
    SQL.Add(_Query);
    Connection:=Dm.YeganehConnection;
    try
      open;
      if IsEmpty then
      begin
        Free;
        Exit;
      end;

      repeat
        try
          LDestNode2:= tvColorView.Items.AddChild(LDestNode, FieldByName('Descriptions').asstring);
          LDestNode2.ImageIndex := CreateBitmapSolidColor(16,16,StringToColor(FieldByName('Color').asString),'');

          recColorView.id := FieldByName('ColorID').AsInteger;
          recColorView.color:= FieldByName('Color').AsString;
          recColorView.name := FieldByName('Descriptions').AsString;
          recColorView.node := LDestNode2;

          SetLength(arrColorView, Length(arrColorView) + 1);
          arrColorView[High(arrColorView)] := recColorView;

          AddNodeINTvColorView(LDestNode2,FieldByName('ColorId').asstring);
        except on E:Exception do
          //Showmessage('Error Child:'+E.Message);
        end;
        Next;
      until Eof;
    except on E:Exception do
      //Showmessage('Error Child::'+E.Message);
    end;
    free
  end;
end;

procedure TFmScanImage.tvColorViewDblClick(Sender: TObject);
var
  intId : Integer;
  strColor : string;
begin
  inherited;

  findNodeInColorView(currNode, intId, strColor);

  SelecttionColorId := intId;

  Dm.qSelectedColor.Locate('ColorId', SelecttionColorId, [loCaseInsensitive]);
  //Dm.qSelectedColor.First;

  if intId > 0 then
    acShowSelectedPagesExecute(Application, intId, strColor)
  else if (intId = 0) or (intId = -2) then
    acShowNotColorPagesExecute(Application)
  else if intId = -1 then
    acShowAllPagesExecute(Application);

  if DMScanImage.QrLetterData.IsEmpty then
  begin
    ImageEnDBView1.Clear;
    Edit1.Visible:=False;
  end;
  Edit1.Color := StringToColor(strColor);
end;

procedure TFmScanImage.tvColorViewChange(Sender: TObject; Node: TTreeNode);
var
  intId : Integer;
  strColor : string;
begin
  inherited;
  if Assigned(Node) then
  begin
    currNode := Node;

    findNodeInColorView(currNode, intId, strColor);

    _MyPuletColors := strColor;
    ValueColorID := intId;
  end;
end;

procedure TFmScanImage.findNodeInColorView(findNode: TTreeNode;var Id : Integer; var Color : string);
var
  index, idResult : Integer;
  colorResult : String;
begin
  idResult := -1;
  colorResult := 'clBtnFace';

  for index := Low(arrColorView) to High(arrColorView) do
  begin
    if arrColorView[index].node = findNode then
    begin
      idResult := arrColorView[index].id;
      colorResult := arrColorView[index].color;
      Break;
    end;
  end;

  Id := idResult;
  Color := colorResult;
end;

procedure TFmScanImage.tvColorViewGetSelectedIndex(Sender: TObject;
  Node: TTreeNode);
begin
  inherited;
  Node.SelectedIndex := Node.ImageIndex;
end;

procedure TFmScanImage.ImageEnVectMainMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
//var
  //a : TIESelOp;
begin
  inherited;

//  ImageEnVectMain.AddNewObject(iekBOX, Rect(10,10,100,100), clBlack);
  //ImageEnVectMain.SelectRoundRect(10,10,100,100,5, 5, a);
  {
  if sbSelect.Down then
  begin
    StartX:=X;
    startY:=Y;
    if (PageControl1.ActivePage=BrushTab) then
      ImageEnVectMainMouseUp(self,Button,Shift,X,Y);
  end;
}
end;

procedure TFmScanImage.sbCropClick(Sender: TObject);
begin
  inherited;
  if ImageEnVectMain.Selected then
    ImageEnVectMain.Proc.CropSel
  else
    ShowMessage ('����� ����� �� �� ���� ��� ���� �� ���� ������ ����');

  ImageEnVectMain.Deselect;
end;

procedure TFmScanImage.sbSelectClick(Sender: TObject);
begin
  inherited;
  ImageEnVectMain.LayersCurrent:=0;

  ImageEnVectMain.MouseInteract := [miSelect];

  ControlAnable(False);

  sbPoint.Down := False;
  SBBrush.Down := False;
  SBZoom.Down := False;
  sbSelect.Down := True;
end;

procedure TFmScanImage.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
  inherited;
  DMScanImage.WriteExceptionToFile(E.ClassName,E.Message);
end;

procedure TFmScanImage.N12Click(Sender: TObject);
begin
  inherited;
  if DMScanImage.DSSelImage.DataSet.Active then
  begin
    if not DMScanImage.DSSelImage.DataSet.FieldByname('LetterDataID').IsNull then
    begin
      frmUpd_latererdata := TfrmUpd_latererdata.Create(Application);
      frmUpd_latererdata.LetterDataID := DMScanImage.DSSelImage.DataSet.FieldByname('LetterDataID').Value;
      frmUpd_latererdata.ShowModal;
      frmUpd_latererdata.Free;
      DMScanImage.DSLetterData.DataSet.Prior;
      DMScanImage.DSLetterData.DataSet.Next;
      PageControl2Change(nil);
      PageControl2.ActivePageIndex:=0;
    end else
    begin
      ShowMessage('������ ���� ���');
      Exit;
    end;
  end else
  begin
    ShowMessage('������ ���� ���');
    Exit;
  end;
end;

procedure TFmScanImage.NavigatorHandel;
var
  UserIdCreator : Integer;
  AQry : TADOQuery;
begin
  inherited;
  AQry := TADOQuery.Create(Self);
  try
    AQry.Connection := Dm.YeganehConnection;
    AQry.Close;
    AQry.SQL.Text := 'Select UserID From Letter Where LetterId = ' + Dm.SelectLetter;
    AQry.Open;
    UserIdCreator := AQry.FieldByName('UserId').AsInteger;
  finally
    FreeAndNil(AQry);
  end;

  if not Dm.UsersShowAllDoc.AsBoolean then
    if Dm.UsersId.AsInteger <> UserIdCreator then
    begin
      DBN1.VisibleButtons := [nbPrior, nbFirst, nbLast, nbNext];
      SBDelAllData.Enabled := False;
      Edit := True;
    end;

  if not Edit then
    if DMScanImage.QrLetterData.RecordCount = 1 then
      DBN1.VisibleButtons := [nbInsert,nbDelete,nbPost,nbEdit,nbCancel]
    else
      DBN1.VisibleButtons := [nbPrior,nbFirst,nbLast,nbNext,nbInsert,nbDelete,nbPost,nbEdit,nbCancel]
  else
    DBN1.VisibleButtons := [nbPrior,nbFirst,nbLast,nbNext];


  try
    if not dm.GetActionAccess(ADelete.Name,self.Tag) then
    begin
      SBDelAllData.Hide;
      dbn1.VisibleButtons:= DBN1.VisibleButtons-[nbDelete];
    end;

    if not dm.GetActionAccess(Action1.Name,self.Tag) then
    begin
      dbn1.VisibleButtons:= DBN1.VisibleButtons-[nbEdit,nbPost,nbInsert];
    end;

  except
   on E : Exception do
    begin
     DMScanImage.WriteExceptionToFile(E.ClassName,E.Message);
    end;
  end;

  DBNav_Setup(DBN1);


  
end;

end.



