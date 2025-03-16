(*
Copyright (c) 1998-2008 by HiComponents. All rights reserved.

This software comes without express or implied warranty.
In no case shall the author be liable for any damage or unwanted behavior of any
computer hardware and/or software.

HiComponents grants you the right to include the compiled component
in your application, whether COMMERCIAL, SHAREWARE, or FREEWARE,
BUT YOU MAY NOT DISTRIBUTE THIS SOURCE CODE OR ITS COMPILED .DCU IN ANY FORM.

ImageEn, IEvolution and ImageEn ActiveX may not be included in any commercial,
shareware or freeware libraries or components.

email: support@hicomponents.com

http://www.hicomponents.com
*)

unit ieopensavedlg;

{$IFDEF FPC}
  {$MODE DELPHI}
{$ENDIF}


{$R-}
{$Q-}

{$I ie.inc}

{$IFDEF IEINCLUDEOPENSAVEDIALOGS}

interface

uses
  Windows, Messages, SysUtils, {$ifndef FPC}CommDlg,{$endif} Classes, Graphics, Controls, Forms, comctrls,
  Clipbrd, stdctrls, buttons, extctrls, Dialogs, hyieutils, hyiedefs, ImageEnIO, ImageEnView,
  IEMView, IEMIO, ievect;

type

{!!
<FS>TIEFileDlgPreviewEvent

<FM>Declaration<FC>
TIEFileDlgPreviewEvent = procedure(Sender:TObject; Viewer:TObject; FileName:string; ParamsOnly:boolean) of object;

<FM>Description<FN>
This event occurs when open file dialog needs to open a file or get parameters from a file containing an image.
Viewer can be a <A TImageEnVect> object or a <A TImageEnMView> object.
FileName contains the file name to load.
ParamsOnly is true when the preview check is not checked, so user doesn't want to display the image (Viewer if always <A TImageEnView>).
!!}
  TIEFileDlgPreviewEvent = procedure(Sender:TObject; Viewer:TObject; FileName:string; ParamsOnly:boolean) of object;


{!!
<FS>TIEDBorderStyle

<FM>Declaration<FC>
TIEDBorderStyle = (iepsDefault, iepsCropped, iepsCropShadow, iepsSoftShadow);

<FM>Description<FN>
<TABLE>
<R> <H>Value</H> <H>Description</H> </R>
<R> <C>iepsDefault</C> <C>3d border around preview box</C> </R>
<R> <C>iepsCropped</C> <C>3d border around the image</C> </R>
<R> <C>iepsCropShadow</C> <C>a shadow around the image</C> </R>
<R> <C>iepsSoftShadow</C> <C>a soft (high quality) shadow around the image</C> </R>
</TABLE>
!!}
  TIEDBorderStyle = (iepsDefault, iepsCropped, iepsCropShadow, iepsSoftShadow);

{!!
<FS>TIECommonDialog

<FM>Description<FN>
This is the common parent class of <A TOpenImageEnDialog> and <A TSaveImageEnDialog>.

<FM>Implemented Properties<FN>

  <A TIECommonDialog.MsgLanguage>
  <A TIECommonDialog.ShowPlacesBar>
  <A TIECommonDialog.ExtendedDialog>

!!}
  TIECommonDialog = class(TComponent)
  private
    fMsgLanguage: TMsgLanguage;
    //
    FCtl3D: Boolean;
    FDefWndProc: Pointer;
    FHelpContext: THelpContext;
    FHandle: HWnd;
    FObjectInstance: Pointer;
    FTemplate: PChar;
    FOnClose: TNotifyEvent;
    FOnShow: TNotifyEvent;
    fShowPlacesBar: boolean;
    fWatchTimer:TTimer;
    procedure WMDestroy(var Message: TWMDestroy); message WM_DESTROY;
    procedure WMInitDialog(var Message: TWMInitDialog); message WM_INITDIALOG;
    procedure WMNCDestroy(var Message: TWMNCDestroy); message WM_NCDESTROY;
    procedure MainWndProc(var Message: TMessage);
  protected
    fExtendedDialog: boolean;
    procedure DoClose; dynamic;
    procedure DoShow; dynamic;
    procedure WndProc(var Message: TMessage); virtual;
    function MessageHook(var Msg: TMessage): Boolean; virtual;
    function TaskModalDialog(DialogFunc: Pointer; var DialogData): Bool; virtual;
    function Execute: Boolean; virtual; abstract;
    property Template: PChar read FTemplate write FTemplate;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure DefaultHandler(var Message); override;
    property Handle: HWnd read FHandle;
  published
    property Ctl3D: Boolean read FCtl3D write FCtl3D default True;
    property HelpContext: THelpContext read FHelpContext write FHelpContext default 0;
    property OnClose: TNotifyEvent read FOnClose write FOnClose;
    property OnShow: TNotifyEvent read FOnShow write FOnShow;

{!!
<FS>TIECommonDialog.MsgLanguage

<FM>Declaration<FC>
property MsgLanguage: <A TMsgLanguage>;

<FM>Description<FN>
MsgLanguage sets the language of the dialog.
!!}
    property MsgLanguage: TMsgLanguage read fMsgLanguage write fMsgLanguage default msSystem;

{!!
<FS>TIECommonDialog.ShowPlacesBar

<FM>Declaration<FC>
property ShowPlacesBar:boolean;

<FM>Description<FN>
ShowPlacesBar shows or hides the places bar in Windows Me, Windows 2000 and XP.
!!}
    property ShowPlacesBar: boolean read fShowPlacesBar write fShowPlacesBar default true;

{!!
<FS>TIECommonDialog.ExtendedDialog

<FM>Declaration<FC>
property ExtendedDialog:boolean;

<FM>Description<FN>
ExtendedDialog makes an ImageEn dialog like a standard VCL open/save picture dialog. The dialogs will continue to support ImageEn file formats.
!!}
    property ExtendedDialog: boolean read fExtendedDialog write fExtendedDialog default true;

  end;

{!!
<FS>TOpenImageEnDialog

<FM>Description<FN>
TOpenImageEnDialog displays a modal Windows dialog box for selecting and opening graphics files. This component includes a rectangular preview region where all ImageEn supported file formats are displayed. If the file is an animated GIF, AVI film or a multi page TIFF, all images will be shown in sequence: the "Play" button will be activated to animate the sequence.

The TOpenImageEnDialog displays image information such as dimensions, colors, dpi, file type, compression and file-memory sizes.

<FM>See also<FN>

<A TSaveImageEnDialog>

<FM>Properties<FN>

  <A TOpenImageEnDialog.AlwaysAnimate>
  <A TOpenImageEnDialog.AutoAdjustDPI>
  <A TOpenImageEnDialog.AutoSetFilter>
  <A TIECommonDialog.ExtendedDialog>
  <A TOpenImageEnDialog.ExtendedFilters>
  <A TOpenImageEnDialog.FilteredAdjustDPI>
  <A TOpenImageEnDialog.InfoPanel>
  <A TIECommonDialog.MsgLanguage>
  <A TOpenImageEnDialog.PicturePanel>
  <A TOpenImageEnDialog.PreviewBorderStyle>
  <A TOpenImageEnDialog.SelectedFrame>
  <A TOpenImageEnDialog.ShowAllFrames>
  <A TOpenImageEnDialog.ShowAVI>
  <A TIECommonDialog.ShowPlacesBar>
  <A TOpenImageEnDialog.ZoomFilter>

<FM>Events<FN>

  <A TOpenImageEnDialog.OnCreateCustomControls>
  <A TOpenImageEnDialog.OnDestroyCustomControls>
  <A TOpenImageEnDialog.OnPreviewFile>

!!}
  TOpenImageEnDialog = class(TIECommonDialog)
  private
    m_blnInSelectionChange: Boolean;
    FImageEnView: TImageEnVect;
{$IFDEF IEINCLUDEMULTIVIEW}
    fImageEnMView: TImageEnMView;
{$ENDIF}
    FPicturePanel: TPanel;
    fPicLabel1: TLabel;
    fPicLabel2: TLabel;
    fPicLabel3: TLabel;
    fInfoPanel: TPanel;
    fInfoLabel1: TLabel;
    fInfoLabel2: TLabel;
    FPreviewButton: TSpeedButton;
    FZoomComboBox: TComboBox;
    fProgressBar: TProgressBar;
{$IFDEF IEINCLUDEMULTIVIEW}
    fPlayButton: TSpeedButton;
{$ENDIF}
    fAdvancedButton: TButton;
    fPreviewCheck: TCheckBox;
    fFileSize: integer; // size of last file loaded
    fFrames: integer; // page count of last file loaded
    fSelType: string;
    fAutoSetFilter: boolean;
{$IFDEF IEINCLUDEMULTIVIEW}
    fAlwaysAnimate: boolean;
{$ENDIF}
    fAutoAdjustDPI: boolean;
    fFilteredAdjustDPI: boolean;
    //
    FHistoryList: TStrings;
    FOptions: TOpenOptions;
    FFilter: string;
    FFilterIndex: Integer;
    FCurrentFilterIndex: Integer;
    FInitialDir: string;
    FTitle: string;
    FDefaultExt: string;
    FFileName: TFileName;
    FFiles: TStrings;
    FFileEditStyle: TFileEditStyle;
    FOnSelectionChange: TNotifyEvent;
    FOnFolderChange: TNotifyEvent;
    FOnTypeChange: TNotifyEvent;
    FOnCanClose: TCloseQueryEvent;
    fPreviewBorderStyle: TIEDBorderStyle;
    fShowAVI: boolean;
    fExtendedFilters: string;
    fShowAllFrames: boolean;
    fSelectedFrame:integer;
    OpenFileNameExShadow: pointer;
    fOnCreateCustomControls:TNotifyEvent;
    fOnDestroyCustomControls:TNotifyEvent;
    fOnPreviewFile:TIEFileDlgPreviewEvent;
    function GetFileName: TFileName;
    function GetLongFileName: TFileName;
    function GetFileName2: TFileName;
    function GetFilterIndex: Integer;
    procedure ReadFileEditStyle(Reader: TReader);
    procedure SetHistoryList(Value: TStrings);
    procedure SetInitialDir(const Value: string);
    //function AdjustFileName(fn:string):string;
    //
    procedure PreviewClick(Sender: TObject);
    procedure PreviewKeyPress(Sender: TObject; var Key: Char);
    procedure ZoomComboChange(Sender: TObject);
    procedure ImageEnIOProgress(Sender: TObject; per: integer);
    procedure ShowIOParams(params: TIOParamsVals);
    procedure DoCheckPreview(Sender: TObject);
    procedure SetPreviewBorderStyle(v: TIEDBorderStyle);
    procedure SetZoomFilter(v: TResampleFilter);
    function GetZoomFilter: TResampleFilter;
    function FileName2FilterIndex(e:string):integer;
    {$IFDEF IEINCLUDEMULTIVIEW}
    procedure SetAlwaysAnimate(value:boolean);
    {$endif}
  protected
    fShowPreview: boolean; // if true show the preview of images
    //
    procedure PlayClick(Sender: TObject);
    function CanClose(var OpenFileName: TOpenFileName): Boolean;
    function DoCanClose: Boolean; dynamic;
    function DoExecute(Func: Pointer): Bool;
    procedure DoSelectionChange; dynamic;
    procedure DoFolderChange; dynamic;
    procedure DoTypeChange; dynamic;
    procedure DefineProperties(Filer: TFiler); override;
    procedure GetFileNames(var OpenFileName: TOpenFileName);
    function GetStaticRect: TRect; virtual;
    procedure WndProc(var Message: TMessage); override;
    function BuildStrFilter: string;
    //
    procedure SetZoom; virtual;
    procedure DoClose; override;
    procedure DoShow; override;
    procedure SetLang;
    procedure OnMViewSelect(Sender: TObject; idx: integer);
    procedure DoAllDisplayed(Sender:TObject);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function Execute: Boolean; override;
    property FileEditStyle: TFileEditStyle read FFileEditStyle write FFileEditStyle;
    property Files: TStrings read FFiles;
    property HistoryList: TStrings read FHistoryList write SetHistoryList;

{!!
<FS>TOpenImageEnDialog.PicturePanel

<FM>Declaration<FC>
property PicturePanel:TPanel;

<FM>Description<FN>
The TPanel object that contains the previewed image. It contains a <A TImageEnMView> and a <A TImageEnVect> component.
This property is useful to customize open/save dialogs with new controls.
Look also <A TOpenImageEnDialog.OnCreateCustomControls>.
!!}
    property PicturePanel:TPanel read fPicturePanel;

{!!
<FS>TOpenImageEnDialog.InfoPanel

<FM>Declaration<FC>
property InfoPanel:TPanel;

<FM>Description<FN>
The TPanel object that contains left-bottom image info data.
This property is useful to customize open/save dialogs with new controls.
Look also <A TOpenImageEnDialog.OnCreateCustomControls>.
!!}
    property InfoPanel:TPanel read fInfoPanel;

{!!
<FS>TOpenImageEnDialog.ShowAVI

<FM>Declaration<FC>
property ShowAVI:boolean;

<FM>Description<FN>
If ShowAVI is True, the open dialog will show AVI extension in the file formats list. The default is True.
!!}
    property ShowAVI: boolean read fShowAVI write fShowAVI;

    property PreviewCheckBox: TCheckBox read fPreviewCheck;

{!!
<FS>TOpenImageEnDialog.ExtendedFilters

<FM>Declaration<FC>
property ExtendedFilters:string;

<FM>Description<FN>
ExtendedFilters specifies additional file formats to add when AutoSetFilter is True.

<FM>Example<FC>

OpenImageEnDialog1.ExtendedFilters:= 'Fun Bitmap|*.fun;*.fan’;'
!!}
    property ExtendedFilters: string read fExtendedFilters write fExtendedFilters;

{!!
<FS>TOpenImageEnDialog.SelectedFrame

<FM>Declaration<FC>
property SelectedFrame:integer;

<FM>Description<FN>
SelectedFrame returns the selected page (or frame) in the open dialog for multipage files like TIFF, GIF.

<FM>Example<FC>

// load the selected page
If OpenImageEnDialog1.Execute then
Begin
  ImageEnView1.IO.Params.TIFF_ImageIndex := OpenImageEnDialog1.SelectedFrame;
  ImageEnView1.IO.LoadFromFile( OpenImageEnDialog1.FileName );
End;
!!}
    property SelectedFrame:integer read fSelectedFrame write fSelectedFrame;

  published
    property DefaultExt: string read FDefaultExt write FDefaultExt;
    property FileName: TFileName read GetFileName write FFileName;
    property Filter: string read FFilter write FFilter;
    property FilterIndex: Integer read GetFilterIndex write FFilterIndex default 1;
    property InitialDir: string read FInitialDir write SetInitialDir;
    property Options: TOpenOptions read FOptions write FOptions default [ofHideReadOnly];
    property Title: string read FTitle write FTitle;
    property OnCanClose: TCloseQueryEvent read FOnCanClose write FOnCanClose;
    property OnFolderChange: TNotifyEvent read FOnFolderChange write FOnFolderChange;
    property OnSelectionChange: TNotifyEvent read FOnSelectionChange write FOnSelectionChange;
    property OnTypeChange: TNotifyEvent read FOnTypeChange write FOnTypeChange;

{!!
<FS>TOpenImageEnDialog.AutoSetFilter

<FM>Declaration<FC>
property AutoSetFilter:boolean;

<FM>Description<FN>
When AutoSetFilter is True (default) TOpenImageEnDialog or TSaveImageEnDialog ignores the Filter property and fills it with supported ImageEn file formats (with custom file formats).
!!}
    property AutoSetFilter: boolean read fAutoSetFilter write fAutoSetFilter default true;

{$IFDEF IEINCLUDEMULTIVIEW}
    property AlwaysAnimate: boolean read fAlwaysAnimate write SetAlwaysAnimate default false;
{$ENDIF}
    property PreviewBorderStyle: TIEDBorderStyle read fPreviewBorderStyle write SetPreviewBorderStyle default iepsDefault;

{!!
<FS>TOpenImageEnDialog.AutoAdjustDPI

<FM>Declaration<FC>
property AutoAdjustDPI:boolean;

<FM>Description<FN>
When AutoAdjustDPI is True and last loaded/scanned image has horizontal DPI not equal to vertical DPI, ImageEn resizes the image making DPIX=DPIY.
The default is False.
!!}
    property AutoAdjustDPI: boolean read fAutoAdjustDPI write fAutoAdjustDPI default false;

{!!
<FS>TOpenImageEnDialog.FilteredAdjustDPI

<FM>Declaration<FC>
property FilteredAdjustDPI:boolean;

<FM>Description<FN>
The FilteredAdjustDPI property is valid when AutoAdjustDPI isTrue. If set to True, ImageEn applies a resampling filter to the image to enhance quality.
It can slow down the loading process.
!!}
    property FilteredAdjustDPI: boolean read fFilteredAdjustDPI write fFilteredAdjustDPI default false;

    property ZoomFilter: TResampleFilter read GetZoomFilter write SetZoomFilter default rfFastLinear;

{!!
<FS>TOpenImageEnDialog.ShowAllFrames

<FM>Declaration<FC>
property ShowAllFrames:boolean;

<FM>Description<FN>
When previewing a multi-page file (TIFF, GIF or AVI) if ShowAllFrames is true, it shows and loads all frames, otherwise only the first is loaded or shown.
!!}
    property ShowAllFrames: boolean read fShowAllFrames write fShowAllFrames default true;

{!!
<FS>TOpenImageEnDialog.OnCreateCustomControls

<FM>Declaration<FC>
property OnCreateCustomControls:TNotifyEvent;

<FM>Description<FN>
This event occurs just before an open/save dialog is executed (showed).Here applications can create custom controls.
You should free custom controls in <A TOpenImageEnDialog.OnDestroyCustomControls> event.

<FM>Example<FC>
var
  chk:TCheckBox;

procedure TForm1.OpenImageEnDialog1CreateCustomControls(Sender: TObject);
var
  p:TWinControl;
begin
  p:=(sender as TOpenImageEnDialog).InfoPanel;
  chk:=TCheckBox.Create(p);
  chk.parent:=p;
  chk.Caption:='test';
  chk.SetBounds(300, 24, 130, 23);
end;

procedure TForm1.OpenImageEnDialog1DestroyCustomControls(Sender: TObject);
begin
  chk.free;
end;
!!}
    property OnCreateCustomControls:TNotifyEvent read fOnCreateCustomControls write fOnCreateCustomControls;

{!!
<FS>TOpenImageEnDialog.OnDestroyCustomControls

<FM>Declaration<FC>
property OnDestroyCustomControls:TNotifyEvent;

<FM>Description<FN>
This event occurs just after an open/save dialog is executed (showed).Here applications can destroy custom controls.
Look at <A TOpenImageEnDialog.OnCreateCustomControls> for more details and samples.
!!}
    property OnDestroyCustomControls:TNotifyEvent read fOnDestroyCustomControls write fOnDestroyCustomControls;

{!!
<FS>TOpenImageEnDialog.OnPreviewFile

<FM>Declaration<FC>
property OnPreviewFile:<A TIEFileDlgPreviewEvent>;

<FM>Description<FN>
This event occurs whenever a file is selected and needs to be previewed.
You can change the method that is used to load images handling this event.

<FM>Example<FC>
// this is the default behavior
procedure TForm1.OnPreviewFile(Sender:TObject; Viewer:TObject; FileName:string; ParamsOnly:boolean);
begin
  if ParamsOnly then
    (Viewer as TImageEnView).IO.ParamsFromFile(FileName)
  else if Viewer is TImageEnView then
    (Viewer as TImageEnView).IO.LoadFromFileAuto(FileName)
  else if Viewer is TImageEnMView then
    (Viewer as TImageEnMView).LoadFromFileOnDemand(FileName);
end;
!!}
    property OnPreviewFile:TIEFileDlgPreviewEvent read fOnPreviewFile write fOnPreviewFile;

  end;

  
{!!
<FS>TIESaveDlgOpt

<FM>Declaration<FC>
type TIESaveDlgOpt = set of(sdShowPreview, sdShowAdvanced);

<FM>Description<FN>
sdShowPreview: show the image preview and information.
sdShowAdvanced: show "Advanced" button.
!!}
  TIESaveDlgOpt = set of (sdShowPreview, sdShowAdvanced);

{!!
<FS>TSaveImageEnDialog

<FM>Description<FN>
TSaveImageEnDialog is the same as the <A TOpenImageEnDialog>, but with "Advanced" button to display and modify advanced specific file format parameters.

Also you can hide the image preview (ExOptions).

TSaveImageEnDialog must be attached to a <A TImageEnIO> or <A TImageEnMIO> component to get/set Params properties (when user presses the Advanced button).

<FM>See also<FN>

<A TOpenImageEnDialog>

<FM>Properties<FN>

  <A TOpenImageEnDialog.AlwaysAnimate>
  <A TSaveImageEnDialog.AttachedImageEnIO>
  <A TOpenImageEnDialog.AutoAdjustDPI>
  <A TOpenImageEnDialog.AutoSetFilter>
  <A TIECommonDialog.ExtendedDialog>
  <A TOpenImageEnDialog.ExtendedFilters>
  <A TSaveImageEnDialog.ExOptions>
  <A TOpenImageEnDialog.FilteredAdjustDPI>
  <A TOpenImageEnDialog.InfoPanel>
  <A TIECommonDialog.MsgLanguage>
  <A TOpenImageEnDialog.PicturePanel>
  <A TOpenImageEnDialog.PreviewBorderStyle>
  <A TOpenImageEnDialog.SelectedFrame>
  <A TOpenImageEnDialog.ShowAllFrames>
  <A TOpenImageEnDialog.ShowAVI>
  <A TIECommonDialog.ShowPlacesBar>
  <A TOpenImageEnDialog.ZoomFilter>

<FM>Events<FN>

  <A TOpenImageEnDialog.OnCreateCustomControls>
  <A TOpenImageEnDialog.OnDestroyCustomControls>

!!}
  TSaveImageEnDialog = class(TOpenImageEnDialog)
  private
    fExOptions: TIESaveDlgOpt;
    fAttachedImageEnIO: TComponent;
    fBackParams: TIOParamsVals;
    procedure OnWatchTimer(Sender:TObject);
    procedure DoAdvanced(Sender: TObject);
    procedure SetAttachedImageEnIO(v: TComponent);
  protected
    procedure DoTypeChange; override;
    procedure SetFileNameExt; virtual;
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
    procedure GetAdvancedType(var pp:TPreviewParams; var ft: TIOFileType);
    procedure EnableDisableAdvanced;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function Execute: Boolean; override;
  published

{!!
<FS>TSaveImageEnDialog.ExOptions

<FM>Declaration<FC>
property ExOptions: <A TIESaveDlgOpt>;

<FM>Description<FN>
Use this published property to hide/show image preview and the "Advanced" button.
!!}
    property ExOptions: TIESaveDlgOpt read fExOptions write fExOptions;

    property AttachedImageEnIO: TComponent read fAttachedImageEnIO write SetAttachedImageEnIO;
  end;

var

{!!
<FS>iegPreviewImageBackgroundStyle

<FM>Declaration<FC>
iegPreviewImageBackgroundStyle:<A TIEBackgroundStyle>=iebsChessboard;

<FM>Description<FN>
Specify the background style for image preview in open/save dialogs.
!!}
  iegPreviewImageBackgroundStyle:TIEBackgroundStyle=iebsChessboard;

{!!
<FS>iegPreviewImageBackgroundColor

<FM>Declaration<FC>
iegPreviewImageBackgroundColor:TColor=clBtnFace;

<FM>Description<FN>
Specify the background color for image preview in open/save dialogs.
!!}
  iegPreviewImageBackgroundColor:TColor=clBtnFace;

implementation

uses dlgs, ieview;

{$R-}

{$R IEOpenSaveDlg.res}

var
  CreationControl: TIECommonDialog = nil;
  HelpMsg: Cardinal;
  HookCtl3D: Boolean;

type
  TIEOpenFileNameEx = packed record
    lStructSize: DWORD;
    hWndOwner: HWND;
    hInstance: HINST;
    lpstrFilter: PAnsiChar;
    lpstrCustomFilter: PAnsiChar;
    nMaxCustFilter: DWORD;
    nFilterIndex: DWORD;
    lpstrFile: PAnsiChar;
    nMaxFile: DWORD;
    lpstrFileTitle: PAnsiChar;
    nMaxFileTitle: DWORD;
    lpstrInitialDir: PAnsiChar;
    lpstrTitle: PAnsiChar;
    Flags: DWORD;
    nFileOffset: Word;
    nFileExtension: Word;
    lpstrDefExt: PAnsiChar;
    lCustData: LPARAM;
    lpfnHook: function(Wnd: HWND; Msg: UINT; wParam: WPARAM; lParam: LPARAM): UINT stdcall;
    lpTemplateName: PAnsiChar;
    pvReserved: Pointer;
    dwReserved: DWORD;
    FlagsEx: DWORD;
  end;
  PIEOpenFileNameEx=^TIEOpenFileNameEx;

  ///////////////////////////////////////////////////////////////////////////////
  // in '*.jpg;*.jpeg' result= '.jpg'

function ExtractFirstExt(s: string): string;
var
  p1, p2: integer;
begin
  p1 := pos('.', s);
  p2 := pos(';', s);
  if p2 = 0 then
    p2 := length(s) + 1;
  result := copy(s, p1, p2 - p1);
end;

///////////////////////////////////////////////////////////////////////////////

function DialogHook(Wnd: HWnd; Msg: UINT; WParam: WPARAM; LParam: LPARAM): UINT; stdcall;
begin
  Result := 0;
  case Msg of
    WM_INITDIALOG:
      begin
        if HookCtl3D then
        begin
{$WARNINGS OFF}
          Subclass3DDlg(Wnd, CTL3D_ALL);
          SetAutoSubClass(True);
{$WARNINGS ON}
        end;
        IECenterWindow(Wnd);
        CreationControl.FHandle := Wnd;
        CreationControl.FDefWndProc := Pointer(SetWindowLong(Wnd, GWL_WNDPROC,
          Longint(CreationControl.FObjectInstance)));
        CallWindowProc(CreationControl.FObjectInstance, Wnd, Msg, WParam, LParam);
        CreationControl := nil;
      end;
    WM_DESTROY:
{$WARNINGS OFF}
      if HookCtl3D then
        SetAutoSubClass(False);
{$WARNINGS ON}
  end;
end;

///////////////////////////////////////////////////////////////////////////////

constructor TIECommonDialog.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FCtl3D := True;
  fExtendedDialog := true;
{$WARNINGS OFF}
  FObjectInstance := MakeObjectInstance(MainWndProc);
{$WARNINGS ON}
  //
  fMsgLanguage := msSystem;
  fShowPlacesBar := true;
  fWatchTimer:=nil;
end;

///////////////////////////////////////////////////////////////////////////////

destructor TIECommonDialog.Destroy;
begin
{$WARNINGS OFF}
  if FObjectInstance <> nil then
    FreeObjectInstance(FObjectInstance);
{$WARNINGS ON}
  inherited Destroy;
end;

///////////////////////////////////////////////////////////////////////////////

function TIECommonDialog.MessageHook(var Msg: TMessage): Boolean;
begin
  Result := False;
  if (Msg.Msg = HelpMsg) and (FHelpContext <> 0) then
  begin
    if assigned(Application) then
      Application.HelpContext(FHelpContext);
    Result := True;
  end;
end;

///////////////////////////////////////////////////////////////////////////////

procedure TIECommonDialog.DefaultHandler(var Message);
begin
  if FHandle <> 0 then
    with TMessage(Message) do
      Result := CallWindowProc(FDefWndProc, FHandle, Msg, WParam, LParam)
  else
    inherited DefaultHandler(Message);
end;

///////////////////////////////////////////////////////////////////////////////

procedure TIECommonDialog.MainWndProc(var Message: TMessage);
begin
  try
    WndProc(Message);
  except
    if assigned(Application) then
      Application.HandleException(Self);
  end;
end;

///////////////////////////////////////////////////////////////////////////////

procedure TIECommonDialog.WndProc(var Message: TMessage);
begin
  //outputdebugstring(pchar(string('WndProc')));
  Dispatch(Message);
end;

///////////////////////////////////////////////////////////////////////////////

procedure TIECommonDialog.WMDestroy(var Message: TWMDestroy);
begin
  inherited;
  DoClose;
end;

///////////////////////////////////////////////////////////////////////////////

procedure TIECommonDialog.WMInitDialog(var Message: TWMInitDialog);
begin
  { Called only by non-explorer style dialogs }
  DoShow;
  { Prevent any further processing }
  Message.Result := 0;
end;

///////////////////////////////////////////////////////////////////////////////

procedure TIECommonDialog.WMNCDestroy(var Message: TWMNCDestroy);
begin
  inherited;
  FHandle := 0;
end;

///////////////////////////////////////////////////////////////////////////////

function TIECommonDialog.TaskModalDialog(DialogFunc: Pointer; var DialogData): Bool;
type
  TDialogFunc = function(var DialogData): Bool stdcall;
var
{$IFNDEF OCXVERSION}
  ActiveWindow: HWnd;
{$ENDIF}
  WindowList: Pointer;
begin
{$IFNDEF OCXVERSION}
  ActiveWindow := GetActiveWindow;
{$ENDIF}
  WindowList := DisableTaskWindows(0);
  try
    if assigned(Application) then
      Application.HookMainWindow(MessageHook);
    try
      CreationControl := Self;
      Result := TDialogFunc(DialogFunc)(DialogData);
      Set8087CW(Default8087CW);
    finally
      if assigned(Application) then
        Application.UnhookMainWindow(MessageHook);
    end;
  finally
    EnableTaskWindows(WindowList);
{$IFNDEF OCXVERSION}
    SetActiveWindow(ActiveWindow);
{$ENDIF}
  end;
end;

///////////////////////////////////////////////////////////////////////////////

procedure TIECommonDialog.DoClose;
begin
  if Assigned(FOnClose) then
    FOnClose(Self);
end;

///////////////////////////////////////////////////////////////////////////////

procedure TOpenImageEnDialog.DoClose;
begin
  inherited DoClose;
{$IFDEF IEINCLUDEMULTIVIEW}
  fImageEnMView.Playing := false;
  fImageEnMView.clear;
{$ENDIF}
  fImageEnView.blank;
  if assigned(Application) then
    Application.HideHint;
end;

///////////////////////////////////////////////////////////////////////////////

procedure TIECommonDialog.DoShow;
begin
  if Assigned(FOnShow) then
    FOnShow(Self);
end;

///////////////////////////////////////////////////////////////////////////////

function ExplorerHook(Wnd: HWnd; Msg: UINT; WParam: WPARAM; LParam: LPARAM): UINT; stdcall;
begin
  //outputdebugstring(pchar(string( inttostr(Msg) )));

  Result := 0;
  if Msg = WM_INITDIALOG then
  begin
    CreationControl.FHandle := Wnd;
    CreationControl.FDefWndProc := Pointer(SetWindowLong(Wnd, GWL_WNDPROC,
      Longint(CreationControl.FObjectInstance)));
    CallWindowProc(CreationControl.FObjectInstance, Wnd, Msg, WParam, LParam);
    CreationControl := nil;

  end
  else if (Msg = WM_NOTIFY) and (POFNotify(LParam)^.hdr.code = CDN_INITDONE) then
    IECenterWindow(GetWindowLong(Wnd, GWL_HWNDPARENT));
end;

{ TOpenImageEnDialog }

function TOpenImageEnDialog.BuildStrFilter;
var
  q, w, cc: integer;
  comm, ex, s1, s2: string;
  c: char;
begin
  IEUpdateGIFStatus;
  result := '';
  for q := 0 to iegFileFormats.Count - 1 do
    with PIEFileFormatInfo(iegFileFormats[q])^ do
    begin
      if ((self is TSaveImageEnDialog) and (@WriteFunction <> nil)) or ((not (self is TSaveImageEnDialog)) and (@ReadFunction <> nil)) then
      begin

        // get the first extension
        ex := '*.' + lowercase(IEFileFormatGetExt(FileType, 0));

        // "common file formats" will have the first extension for each internal format
        if internalFormat then
        begin
          comm := comm+ex;
          if q < iegFileFormats.Count - 1 then
            comm := comm + ';';
        end;

        // get successive extensions
        cc := IEFileFormatGetExtCount(FileType);
        for w := 1 to cc - 1 do
          ex := ex + ';*.' + lowercase(IEFileFormatGetExt(FileType, w));

        // add the new item
        result := result + '|' + FullName + ' (' + ex + ')|' + ex;
      end;
    end;
  // animated files
  if fShowAVI then
  begin
    comm := comm + ';*.avi';
    result := result + '|' + iemsg(IEMSG_VIDEOFORWINDOWS, fMsglanguage) + ' (*.avi)|*.avi';
    {$ifdef IEINCLUDEDIRECTSHOW}
    if not (self is TSaveImageEnDialog) then
    begin
      comm := comm + ';*.mpg';
      comm := comm + ';*.wmv';
      result := result + '|Mpeg (*.mpeg;*.mpg)|*.mpeg;*.mpg';
      result := result + '|Windows Media Video (*.wmv)|*.wmv';
    end;
    {$endif}
  end;
  // Extended filters (example: 'Fun Bitmap|*.fun;*.fan|etc...'
  s1 := ''; // to result
  s2 := ''; // to all graphics
  q := 1;
  w := -1;
  while q <= length(fExtendedFilters) do
  begin
    c := fExtendedFilters[q];
    if w = -1 then
    begin
      s1 := s1 + c;
      if c = '|' then
        w := q;
    end
    else
    begin
      if (c = '|') or (q = length(fExtendedFilters)) then
      begin
        w := -1;
        s1 := s1 + c;
        if c <> '|' then
          s2 := s2 + c;
        if q < length(fExtendedFilters) then
          s2 := s2 + ';';
      end
      else
      begin
        s1 := s1 + c;
        s2 := s2 + c;
      end;
    end;
    inc(q);
  end;
  s1 := trim(s1);
  s2 := trim(s2);
  if s1 <> '' then
    result := result + '|' + s1;
  if s2 <> '' then
    comm := comm + ';' + s2;
  comm := iemsg(IEMSG_COMMONGRAPHICFILES, fMsglanguage) +' ('+comm+')|'+comm;
  //
  if self is TSaveImageEnDialog then
    result := copy(result, 2, length(result))
  else
    result := comm + '|'+iemsg(IEMSG_ALLFILES, fMsglanguage) + ' (*.*)|*.*' + result;
end;

procedure TOpenImageEnDialog.SetLang;
begin
  FPreviewButton.Hint := iemsg(IEMSG_PREVIEW, fMsglanguage);
  fPreviewCheck.Caption := iemsg(IEMSG_PREVIEW, fMsglanguage);
  fAdvancedButton.Caption := iemsg(IEMSG_ADVANCED, fMsgLanguage) + '...';
{$IFDEF IEINCLUDEMULTIVIEW}
  FPlayButton.Hint := iemsg(IEMSG_ANIMATE, fMsglanguage);
{$ENDIF}
end;

const
  ORIGThumbHeight = 109+80;
  ORIGThumbWidth  = 100+75;
  ORIGHorizBorder = 4;
  ORIGVertBOrder = 4;

constructor TOpenImageEnDialog.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  fOnPreviewFile:=nil;
  fOnCreateCustomControls:=nil;
  fOnDestroyCustomControls:=nil;
  IEUpdateGIFStatus;
  fSelectedFrame:=0;
  fShowAVI := true;
  fShowAllFrames := true;
  fPreviewBorderStyle := iepsDefault;
{$IFDEF IEINCLUDEMULTIVIEW}
  fAlwaysAnimate := false;
{$ENDIF}
  fSelType := '';
  FHistoryList := TStringList.Create;
  FOptions := [ofHideReadOnly];
  FFiles := TStringList.Create;
  FFilterIndex := 1;
  FFileEditStyle := fsEdit;
  fAutoAdjustDPI := false;
  fFilteredAdjustDPI := false;
  fExtendedFilters := '';
  //
  fShowPreview := true;
  fAutoSetFilter := true;
  Filter := BuildStrFilter;
  //
  FInfoPanel := TPanel.Create(Self);
  with FInfoPanel do
  begin
    Name := 'InfoPanel';
    Caption := '';
    Ctl3D := True;
    SetBounds(204, 5, 169, 200);
    BevelOuter := bvNone;
    BorderWidth := 6;
    TabOrder := 1;
  end;
  FInfoLabel1 := TLabel.Create(Self);
  with fInfoLabel1 do
  begin
    Name := 'InfoLabel1';
    Parent := FInfoPanel;
    Caption := '';
    SetBounds(6, 6, 157, 23);
    AutoSize := true;
  end;
  FInfoLabel2 := TLabel.Create(Self);
  with fInfoLabel2 do
  begin
    Name := 'InfoLabel2';
    Parent := FInfoPanel;
    Caption := '';
    SetBounds(6, 29, 157, 23);
    AutoSize := true;
  end;
  fAdvancedButton := TButton.Create(Self);
  with FAdvancedButton do
  begin
    Name := 'AdvancedButton';
    Parent := FInfoPanel;
    if fShowPlacesBar then
      SetBounds(474, 0, 75, 23)
    else
      SetBounds(333, 0, 75, 23);
    Enabled := true;
    visible := false;
  end;
  fPreviewCheck := TCheckBox.Create(Self);
  with fPreviewCheck do
  begin
    Name := 'PreviewCheck';
    Parent := FInfoPanel;
    SetBounds(195, 24, 130, 23);
    Enabled := true;
    checked := true;
    visible := false;
    OnClick := DoCheckPreview;
  end;
  //
  FPicturePanel := TPanel.Create(Self);
  with FPicturePanel do
  begin
    Name := 'PicturePanel';
    align := alLeft;
    Caption := '';
    Ctl3D := True;
    SetBounds(204, 5, 169, 200);
    BevelOuter := bvNone;
    BorderWidth := 6;
    TabOrder := 1;
  end;
  FPicLabel1 := TLabel.Create(Self);
  with fPicLabel1 do
  begin
    Name := 'PicLabel1';
    Parent := FPicturePanel;
    Caption := '';
    SetBounds(6, 180+80, 157, 23);
    AutoSize := true;
  end;
  FPicLabel2 := TLabel.Create(Self);
  with fPicLabel2 do
  begin
    Name := 'PicLabel2';
    Parent := FPicturePanel;
    Caption := '';
    SetBounds(6, 203+80, 157, 23);
    AutoSize := true;
  end;
  FPicLabel3 := TLabel.Create(Self);
  with fPicLabel3 do
  begin
    Name := 'PicLabel3';
    Parent := FPicturePanel;
    Caption := '';
    SetBounds(6, 226+80, 157, 23);
    AutoSize := true;
  end;
  FZoomComboBox := TComboBox.Create(Self);
  with FZoomComboBox do
  begin
    Name := 'ZoomCombo';
    Parent := FPicturePanel;
    Style := csDropDownList;
    SetBounds(6, 5, 50+20, 21);
    Enabled := True;
    Hint := 'Zoom';
    ParentShowHint := False;
    ShowHint := True;
    OnChange := ZoomComboChange;
  end;
  FPreviewButton := TSpeedButton.Create(Self);
  with FPreviewButton do
  begin
    Name := 'PreviewButton';
    Parent := FPicturePanel;
    SetBounds(60+20, 5, 23, 22);
    Flat := True;
    Enabled := False;
    Glyph.LoadFromResourceName(HInstance, 'IDB_PREVIEW');
    OnClick := PreviewClick;
    ShowHint := true;
  end;
{$IFDEF IEINCLUDEMULTIVIEW}
  fPlayButton := TSpeedButton.Create(Self);
  with FPlayButton do
  begin
    Name := 'PlayButton';
    Parent := FPicturePanel;
    SetBounds(85, 5, 23, 22);
    Flat := true;
    Enabled := false;
    groupindex := 1;
    allowallup := true;
    Glyph.LoadFromResourceName(HInstance, 'IDB_PLAY');
    onclick := playclick;
    visible := true;
    ShowHint := true;
  end;
{$ENDIF}
  FImageEnView := TImageEnVect.Create(Self);
  with FImageEnView do
  begin
    LegacyBitmap:=false;
    Name := 'ImageEnView';
    SetBounds(6, 36, 133+100, 139+78);
    TabOrder := 0;
    Cursor := crDefault;
    Ctl3d := true;
    OnDblClick := PreviewClick;
    MouseInteract := [miScroll];
    Background := iegPreviewImageBackgroundColor;
    BackgroundStyle := iegPreviewImageBackgroundStyle;
    BorderStyle := bsSingle;
    Center := true;
    ZoomFilter := rfFastLinear;
    DelayZoomFilter := false;
    EnableAlphaChannel := true;
    SetChessboardStyle(12,bsSolid);
    OnProgress:=ImageEnIOProgress;
    IO.Params.OutputICCProfile.Clear;  // this disables ICC loading
  end;
  //
{$IFDEF IEINCLUDEMULTIVIEW}
  FImageEnMView := TImageEnMView.Create(Self);
  with FImageEnMView do
  begin
    Name := 'ImageEnMView';
    SetBounds(6, 36, 133+100, 139+78);
    TabOrder := 0;
    Cursor := crDefault;
    BorderStyle := bsSingle;
    Ctl3d := true;
    MouseInteract := [mmiScroll, mmiSelect];
    ScrollBars := ssHorizontal;
    KeyInteract := [mkiMoveSelected];
    ThumbHeight := ORIGThumbHeight;
    ThumbWidth := ORIGThumbWidth;
    HorizBorder := ORIGHorizBorder;
    VertBorder := ORIGVertBorder;
    Visible := false;
    background := iegPreviewImageBackgroundColor;
    EnableAlphaChannel:=true;
    BackgroundStyle:=iegPreviewImageBackgroundStyle;
    FillThumbnail:=false;
    Style:=iemsFlat;
    SetChessboardStyle(12,bsSolid);
    OnImageSelect:=OnMViewSelect;
    OnProgress:=ImageEnIOProgress;
    OnAllDisplayed:=DoAllDisplayed;
    SoftShadow.Enabled:=true;
  end;
{$ENDIF}
  fProgressBar := TProgressBar.Create(Self);
  with fProgressBar do
  begin
    Name := 'ProgressBar';
    SetBounds(0, 55+35, 127+100, 19);
    min := 0;
    max := 100;
    Visible := false;
  end;
  SetLang;
end;

procedure TOpenImageEnDialog.OnMViewSelect(Sender: TObject; idx: integer);
begin
  {$IFDEF IEINCLUDEMULTIVIEW}
  fSelectedFrame:=idx;
  if fSelectedFrame<0 then
    fSelectedFrame:=0;

  if idx<fImageEnMView.MIO.ParamsCount then
    ShowIOParams(fImageEnMView.MIO.Params[idx]);
  {$ENDIF}
end;

///////////////////////////////////////////////////////////////////////////////

destructor TOpenImageEnDialog.Destroy;
begin
  FreeAndNil(FZoomComboBox);
  FreeAndNil(FPreviewButton);
{$IFDEF IEINCLUDEMULTIVIEW}
  FreeAndNil(fPlayButton);
{$ENDIF}
  FreeAndNil(fProgressBar);
  FreeAndNil(fPicLabel1);
  FreeAndNil(fPicLabel2);
  FreeAndNil(fPicLabel3);
  FreeAndNil(fInfolabel1);
  FreeAndNil(fInfoLabel2);
  FreeAndNil(fAdvancedButton);
  FreeAndNil(fPreviewCheck);
{$IFDEF IEINCLUDEMULTIVIEW}
  FreeAndNil(fImageEnMView);
{$ENDIF}
  FreeAndNil(FImageEnView);
  FreeAndNil(fInfoPanel);
  FreeAndNil(FPicturePanel);
  //
  FreeAndNil(FFiles);
  FreeAndNil(FHistoryList);
  inherited Destroy;
end;

///////////////////////////////////////////////////////////////////////////////

function TOpenImageEnDialog.CanClose(var OpenFileName: TOpenFileName): Boolean;
begin
  GetFileNames(OpenFileName);
  Result := DoCanClose;
  FFiles.Clear;
end;

///////////////////////////////////////////////////////////////////////////////

function _ExtractFilter(sa: pchar; idx: integer): string;
begin
  while idx > 1 do
  begin
    inc(sa, strlen(sa) + 1);
    inc(sa, strlen(sa) + 1);
    dec(idx);
  end;
  inc(sa, strlen(sa) + 1);
  result := sa;
end;

///////////////////////////////////////////////////////////////////////////////

procedure TOpenImageEnDialog.WndProc(var Message: TMessage);
var
  Index, q: Integer;
  ss: string;
begin
  //outputdebugstring(pchar(string( inttostr(Message.Msg) )));

  Message.Result := 0;
  if (Message.Msg = WM_INITDIALOG) and not (ofOldStyleDialog in Options) then
    Exit
  else if (Message.Msg = WM_NOTIFY) then
    case (POFNotify(Message.LParam)^.hdr.code) of
      CDN_FILEOK:
        begin
          if not CanClose(POFNotify(Message.LParam)^.lpOFN^) then
          begin
            Message.Result := 1;
            SetWindowLong(Handle, DWL_MSGRESULT, Message.Result);
            Exit;
          end;
        end;
      CDN_INITDONE:
        begin
          fSelType := _ExtractFilter(POFNotify(Message.LParam)^.lpOFN^.lpstrFilter, FCurrentFilterIndex);
          if assigned(fWatchTimer) then
            fWatchTimer.Enabled:=True;
          DoShow;
        end;
      CDN_SELCHANGE: DoSelectionChange;
      CDN_FOLDERCHANGE: DoFolderChange;
      CDN_TYPECHANGE:
        begin
          Index := POFNotify(Message.LParam)^.lpOFN^.nFilterIndex;
          fSelType := _ExtractFilter(POFNotify(Message.LParam)^.lpOFN^.lpstrFilter, Index);

          //ss:=ExtractFirstExt(fSelType);
          //ss:=copy(ss,2,length(ss));
          //strdispose(POFNotify(Message.LParam)^.lpOFN^.lpstrDefExt);
          //POFNotify(Message.LParam)^.lpOFN^.lpstrDefExt:=stralloc(length(ss));
          //strcopy(POFNotify(Message.LParam)^.lpOFN^.lpstrDefExt,pchar(ss));

          ss := fSelType;
          Delete(ss, 1, 1);
          q := pos(';', ss);
          Delete(ss, q, length(ss));
          POFNotify(Message.LParam)^.lpOFN^.lpstrDefExt := PChar(ss);

          if Index <> FCurrentFilterIndex then
          begin
            FCurrentFilterIndex := Index;
            DoTypeChange;
          end;
        end;
    end;
  inherited WndProc(Message);
end;

///////////////////////////////////////////////////////////////////////////////

function TOpenImageEnDialog.DoCanClose: Boolean;
begin
  Result := True;
  if Assigned(FOnCanClose) then
    FOnCanClose(Self, Result);
end;

///////////////////////////////////////////////////////////////////////////////

procedure TOpenImageEnDialog.DoFolderChange;
begin
  if Assigned(FOnFolderChange) then
    FOnFolderChange(Self);
end;

///////////////////////////////////////////////////////////////////////////////

procedure TOpenImageEnDialog.DoTypeChange;
begin
  if Assigned(FOnTypeChange) then
    FOnTypeChange(Self);
end;

///////////////////////////////////////////////////////////////////////////////

procedure TOpenImageEnDialog.ReadFileEditStyle(Reader: TReader);
begin
  Reader.ReadIdent;
end;

///////////////////////////////////////////////////////////////////////////////

procedure TOpenImageEnDialog.DefineProperties(Filer: TFiler);
begin
  inherited DefineProperties(Filer);
  Filer.DefineProperty('FileEditStyle', ReadFileEditStyle, nil, False);
end;

function TOpenImageEnDialog.FileName2FilterIndex(e:string):integer;
var
  q,w,z:integer;
begin
  e := lowercase(e);
  if (Length(e) > 0) and (e[1] = '.') then
    Delete(e, 1, 1);
  e:=ExtractFileExt(e);
  q:=pos(e,Filter);
  z:=0;
  for w:=1 to q do
    if Filter[w]='|' then
      inc(z);
  result:=(z div 2)+1;
end;

///////////////////////////////////////////////////////////////////////////////

function TOpenImageEnDialog.DoExecute(Func: Pointer): Bool;
const
  MultiSelectBufferSize = High(Word) - 16;
  OpenOptions: array[TOpenOption] of DWORD = (
    OFN_READONLY, OFN_OVERWRITEPROMPT, OFN_HIDEREADONLY,
    OFN_NOCHANGEDIR, OFN_SHOWHELP, OFN_NOVALIDATE, OFN_ALLOWMULTISELECT,
    OFN_EXTENSIONDIFFERENT, OFN_PATHMUSTEXIST, OFN_FILEMUSTEXIST,
    OFN_CREATEPROMPT, OFN_SHAREAWARE, OFN_NOREADONLYRETURN,
    OFN_NOTESTFILECREATE, OFN_NONETWORKBUTTON, OFN_NOLONGNAMES,
    OFN_EXPLORER, OFN_NODEREFERENCELINKS
{$IFNDEF IEDELPHI3}
{$IFNDEF IECPPBUILDER3}
    , OFN_ENABLEINCLUDENOTIFY, OFN_ENABLESIZING
{$ENDIF}
{$ENDIF}
{$IFDEF IEDELPHI6}
    , OFN_DONTADDTORECENT, OFN_FORCESHOWHIDDEN
{$ENDIF}
{$IFDEF IEDELPHI7}
    , OFN_DONTADDTORECENT, OFN_FORCESHOWHIDDEN
{$ENDIF}
{$IFDEF IEDELPHI9}
    , OFN_DONTADDTORECENT, OFN_FORCESHOWHIDDEN
{$ENDIF}
{$IFDEF IEDELPHI10}
    , OFN_DONTADDTORECENT, OFN_FORCESHOWHIDDEN
{$ENDIF}
{$IFDEF IEDELPHI11}
    , OFN_DONTADDTORECENT, OFN_FORCESHOWHIDDEN
{$ENDIF}
{$IFDEF IECPPBUILDER6}
    , OFN_DONTADDTORECENT, OFN_FORCESHOWHIDDEN
{$ENDIF}
{$IFDEF IECPPBUILDER10}
    , OFN_DONTADDTORECENT, OFN_FORCESHOWHIDDEN
{$ENDIF}
{$IFDEF IECPPBUILDER11}
    , OFN_DONTADDTORECENT, OFN_FORCESHOWHIDDEN
{$ENDIF}
    );
var
  Option: TOpenOption;
  OpenFilename: TOpenFilename;
  //
  function AllocFilterStr(const S: string): string;
  var
    P: PChar;
  begin
    Result := '';
    if S <> '' then
    begin
      Result := S + #0;
      P := AnsiStrScan(PChar(Result), '|');
      while P <> nil do
      begin
        P^ := #0;
        Inc(P);
        P := AnsiStrScan(P, '|');
      end;
    end;
  end;
  //
var
  TempFilter, TempFilename, TempExt: string;
  q: integer;
  OpenFileNameEx: TIEOpenFileNameEx;
begin
{$IFDEF IEINCLUDEMULTIVIEW}
  fPlayButton.visible := not fAlwaysAnimate;
{$ENDIF}
  fSelectedFrame:=0;
  FFiles.Clear;
  FillChar(OpenFileName, SizeOf(OpenFileName), 0);
  OpenFileNameExShadow:=@OpenFileName;
  with OpenFilename do
  begin
{$IFDEF IEFIXOSDIALOGS}
    if (Win32MajorVersion >= 5) and (Win32Platform = VER_PLATFORM_WIN32_NT) or { Win2k }((Win32Platform = VER_PLATFORM_WIN32_WINDOWS) and (Win32MajorVersion >= 4) and (Win32MinorVersion >= 90)) then { WinME }
      lStructSize := SizeOf(TOpenFilename)
    else
      lStructSize := SizeOf(TOpenFilename) - (SizeOf(DWORD) shl 1) - SizeOf(Pointer); { subtract size of added fields }
{$ELSE}
    lStructSize := SizeOf(TOpenFilename);
{$ENDIF}
    hInstance := SysInit.HInstance;

    TempFilter := AllocFilterStr(FFilter);
    lpstrFilter := PChar(TempFilter);

    if FFilterIndex=0 then
      FFilterIndex := FileName2FilterIndex(FileName);
    nFilterIndex := FFilterIndex;
    FCurrentFilterIndex := FFilterIndex;
    if ofAllowMultiSelect in FOptions then
      nMaxFile := MultiSelectBufferSize
    else
      nMaxFile := MAX_PATH;
    SetLength(TempFilename, nMaxFile + 2);
    lpstrFile := PChar(TempFilename);
    FillChar(lpstrFile^, nMaxFile + 2, 0);
    StrLCopy(lpstrFile, PChar(FFileName), nMaxFile);
    lpstrInitialDir := PChar(FInitialDir);
    lpstrTitle := PChar(FTitle);
    Flags := OFN_ENABLEHOOK;
    for Option := Low(Option) to High(Option) do
      if Option in FOptions then
        Flags := Flags or OpenOptions[Option]{$IFDEF IEDELPHI3} or $00800000{$ENDIF};
    if NewStyleControls then
      Flags := Flags xor OFN_EXPLORER
    else
      Flags := Flags and not OFN_EXPLORER;
    TempExt := FDefaultExt;
    if (TempExt = '') and (Flags and OFN_EXPLORER = 0) then
    begin
      TempExt := ExtractFileExt(FFilename);
      Delete(TempExt, 1, 1);
    end;
    if TempExt <> '' then
      lpstrDefExt := PChar(TempExt)
    else
    begin
      TempExt := _ExtractFilter(lpstrFilter, FCurrentFilterIndex);
      Delete(TempExt, 1, 1);
      q := pos(';', TempExt);
      Delete(TempExt, q, length(TempExt));
      lpstrDefExt := PChar(TempExt)
    end;
    if (ofOldStyleDialog in Options) or not NewStyleControls then
      lpfnHook := DialogHook
    else
      lpfnHook := ExplorerHook;
    if Template <> nil then
    begin
      Flags := Flags or OFN_ENABLETEMPLATE;
      lpTemplateName := Template;
    end;
{$IFNDEF OCXVERSION}
    if assigned(Application) then
      hWndOwner := Application.Handle
    else
      hWndOwner := IEFindHandle(Owner); //hWndOwner:=TCustomControl(Owner).handle;
{$ELSE}
    hWndOwner := IEFindHandle(Owner);
{$ENDIF}
    if iegOpSys<>ieosWin98 then // 2.3.1
    begin
      Move(OpenFileName, OpenFileNameEx, sizeof(OpenFileName));
      if fShowPlacesBar then
        OpenFileNameEx.FlagsEx := 0
      else
        OpenFileNameEx.FlagsEx := 1;
      OpenFileNameEx.lStructSize := sizeof(TIEOpenFileNameEx);
      Result := TaskModalDialog(Func, OpenFileNameEx);
      Move(OpenFileNameEx, OpenFileName, SizeOf(OpenFileName));
    end
    else
      Result := TaskModalDialog(Func, OpenFileName);
    if Result then
    begin
      GetFileNames(OpenFilename);
      if (Flags and OFN_EXTENSIONDIFFERENT) <> 0 then
        Include(FOptions, ofExtensionDifferent)
      else
        Exclude(FOptions, ofExtensionDifferent);
      if (Flags and OFN_READONLY) <> 0 then
        Include(FOptions, ofReadOnly)
      else
        Exclude(FOptions, ofReadOnly);
      FFilterIndex := nFilterIndex;
    end;
  end;
end;

(*
///////////////////////////////////////////////////////////////////////////////
// add extension to fn
function TOpenImageEnDialog.AdjustFileName(fn:string):string;
var
 q:integer;
   f:string;
begin
   f:=extractfilename(fn);
   result:=f;
   q:=pos('.',result);
   if q>0 then
      result:=copy(result,1,q-1);
   result:=result+ExtractFirstExt(fSelType);
   result:=copy(fn,1,length(fn)-length(f))+result;
end;
*)

///////////////////////////////////////////////////////////////////////////////

procedure TOpenImageEnDialog.GetFileNames(var OpenFileName: TOpenFileName);
var
  Separator: Char;
  //
  function ExtractFileName(P: PChar; var S: TFilename): PChar;
  begin
    Result := AnsiStrScan(P, Separator);
    if Result = nil then
    begin
      S := P;
      Result := StrEnd(P);
    end
    else
    begin
      SetString(S, P, Result - P);
      Inc(Result);
    end;
  end;
  //
  procedure ExtractFileNames(P: PChar);
  var
    DirName, FileName: TFilename;
  begin
    P := ExtractFileName(P, DirName);
    P := ExtractFileName(P, FileName);
    if FileName = '' then
      FFiles.Add(DirName)
    else
    begin
      if AnsiLastChar(DirName)^ <> '\' then
        DirName := DirName + '\';
      repeat
        if (FileName[1] <> '\') and ((Length(FileName) <= 3) or
          (FileName[2] <> ':') or (FileName[3] <> '\')) then
          FileName := DirName + FileName;
        FFiles.Add(FileName);
        P := ExtractFileName(P, FileName);
      until FileName = '';
    end;
  end;
  //
begin
  Separator := #0;
  if (ofAllowMultiSelect in FOptions) and
    ((ofOldStyleDialog in FOptions) or not NewStyleControls) then
    Separator := ' ';
  with OpenFileName do
  begin
    if ofAllowMultiSelect in FOptions then
    begin
      ExtractFileNames(lpstrFile);
      FFileName := FFiles[0];
    end
    else
    begin
      ExtractFileName(lpstrFile, FFileName);
      FFiles.Add(FFileName);
    end;
  end;
end;

///////////////////////////////////////////////////////////////////////////////

function TOpenImageEnDialog.GetStaticRect: TRect;
begin
  if FHandle <> 0 then
  begin
    if not (ofOldStyleDialog in Options) then
    begin
      GetWindowRect(GetDlgItem(FHandle, stc32), Result);
      MapWindowPoints(0, FHandle, Result, 2);
    end
    else
      GetClientRect(FHandle, Result)
  end
  else
    Result := Rect(0, 0, 0, 0);
end;

///////////////////////////////////////////////////////////////////////////////

function TOpenImageEnDialog.GetLongFileName: TFileName;
var
  Path:pchar;
begin
  if NewStyleControls and (FHandle <> 0) then
  begin
    getmem(Path,65536);
    GetDlgItemText(GetParent(FHandle), cmb13, Path,65535);
    Result := ExtractFilePath(GetFileName) + StrPas(Path);
    freemem(Path);
  end
  else
    Result := FFileName;
end;


function TOpenImageEnDialog.GetFileName: TFileName;
var
  Path: array[0..MAX_PATH] of Char;
begin
  if NewStyleControls and (FHandle <> 0) then
  begin
    SendMessage(GetParent(FHandle), CDM_GETFILEPATH, SizeOf(Path), Integer(@Path));
    Result := StrPas(Path);
  end
  else
    Result := FFileName;
end;

///////////////////////////////////////////////////////////////////////////////
// only file name

function TOpenImageEnDialog.GetFileName2: TFileName;
var
  Path: array[0..MAX_PATH] of Char;
begin
  if NewStyleControls and (FHandle <> 0) then
  begin
    SendMessage(GetParent(FHandle), CDM_GETSPEC, SizeOf(Path), Integer(@Path));
    Result := StrPas(Path);
  end
  else
    Result := FFileName;
end;

///////////////////////////////////////////////////////////////////////////////

function TOpenImageEnDialog.GetFilterIndex: Integer;
begin
  if FHandle <> 0 then
    Result := FCurrentFilterIndex
  else
    Result := FFilterIndex;
end;

///////////////////////////////////////////////////////////////////////////////

procedure TOpenImageEnDialog.SetHistoryList(Value: TStrings);
begin
  FHistoryList.Assign(Value);
end;

///////////////////////////////////////////////////////////////////////////////

procedure TOpenImageEnDialog.SetInitialDir(const Value: string);
var
  L: Integer;
begin
  L := Length(Value);
  if (L > 1) and IsPathDelimiter(Value, L)
    and not IsDelimiter(':', Value, L - 1) then
    Dec(L);
  FInitialDir := Copy(Value, 1, L);
end;

///////////////////////////////////////////////////////////////////////////////

function TOpenImageEnDialog.Execute: Boolean;
begin
  if assigned(fOnCreateCustomControls) then
    fOnCreateCustomControls(self);
  Template := 'IDD_IETEMPLATE';
  SetLang;
  fPreviewCheck.visible := true;
  if fAutoSetFilter then
    Filter := BuildStrFilter;
  Result := DoExecute(@GetOpenFileName);
  if assigned(fOnDestroyCustomControls) then
    fOnDestroyCustomControls(self);
end;


///////////////////////////////////////////////////////////////////////////////

function GetFirstFileName(s:string):string;
var
  path:string;
  names:string;
  cur:string;
  quot:boolean;
  i:integer;
begin
  path:=ExtractFilePath(s);
  names:=ExtractFileName(s)+' ';
  if names[1]<>#34 then
    // single file name, fail
    result:=''
  else
  begin
    // multiple file names
    cur:='';
    quot:=false;
    for i:=1 to length(names) do
    begin
      if names[i]=#34 then
        quot:=not quot
      else if (names[i]=#32) and not quot then
        break
      else
        cur:=cur+names[i];
    end;
    result:=path+cur;
  end;
end;

///////////////////////////////////////////////////////////////////////////////

procedure TOpenImageEnDialog.DoSelectionChange;
var
  FullName, ss: string;
  ValidPicture: Boolean;
  CursorBak: TCursor;
  ff:TIOFileType;

  function ValidFile(const FileName: string): Boolean;
  begin
    Result := GetFileAttributes(PChar(FileName)) <> $FFFFFFFF;
  end;

begin
  if m_blnInSelectionChange then
    Exit;
  if (not fShowPreview) then
  begin
    if Assigned(FOnSelectionChange) then
      FOnSelectionChange(Self);
    exit;
  end;
  m_blnInSelectionChange := True;
  try

    if ofAllowMultiSelect in Options then
    begin
      FullName:=GetFirstFileName(GetLongFileName); // first file name is the last selected
      if FullName='' then
        FullName:=FileName;
    end
    else
      FullName := FileName;
    ValidPicture := FileExists(FullName) and ValidFile(FullName);
    if ValidPicture then
    try
      fFileSize := _getfilesize(FullName); // fFileSize is assignable only here (!?)
      if not fPreviewCheck.Checked then
      begin
        // do not show the image

        if assigned(fOnPreviewFile) then
          fOnPreviewFile(self,fImageEnView,FullName,true)
        else
          fImageEnView.IO.ParamsFromFile(FullName);

        fFrames := 1;
        if fImageEnView.IO.Params.FileType <> ioUnknown then
          ShowIOParams(fImageEnView.IO.Params)
        else
          ShowIOParams(nil);
      end
      else
      begin
        // show the image
        CursorBak := Screen.Cursor;
        try
          Screen.Cursor := crHourGlass;
          fImageEnView.Background := iegPreviewImageBackgroundColor;  // 2.2.5
          fImageEnView.blank;
          fImageEnView.Paint;
{$IFDEF IEINCLUDEMULTIVIEW}
          fImageEnMView.background := iegPreviewImageBackgroundColor; // 2.2.5
          fImageEnMView.Clear;
          fImageEnMView.Paint;
          fPlayButton.down := false;
{$ENDIF}
          ss := lowercase(extractfileext(FullName));
          ff:=FindFileFormat(FullName,false);
{$IFDEF IEINCLUDEMULTIVIEW}
          (*
          if (ss = '.avi') or
             ((ss = '.gif') and (@IEFileFormatGetInfo(ioGIF)^.ReadFunction <> nil) and (EnumGIFIm(FullName) > 1)) or
             (((ss = '.tif')or (ss = '.tiff') or (ss = '.fax') or (ss = '.g3f') or (ss = '.g3n')) and (EnumTIFFIm(FullName) > 1)) or
             (ss = '.dcx')
            and fShowAllFrames then
          *)
          if ((ff = ioAVI) or
             ((ff = ioGIF) and (@IEFileFormatGetInfo(ioGIF)^.ReadFunction <> nil) and (EnumGIFIm(FullName) > 1)) or
             ((ff=IOTIFF) and (EnumTIFFIm(FullName) > 1)) or
             (ff = ioDCX) or (ss='.mpg') or (ss='.mpeg') or (ss='.wmv') or (ss='.avi')
             {$ifdef IEINCLUDEDICOM}
             or ((ff=ioDICOM) and (IEGetFileFramesCount(FullName)>1))
             {$endif}
             ) // 2.2.6, 2.3.1
            and fShowAllFrames then
          begin
            // animated images
            fImageEnMView.ThumbWidth:=ORIGThumbWidth;
            fImageEnMView.ThumbHeight:=ORIGThumbHeight;
            fImageEnMView.HorizBorder:=ORIGHorizBorder;
            fImageEnMView.VertBorder:=ORIGVertBorder;
            fPlayButton.enabled := true;
            FZoomComboBox.enabled := false;
            fImageEnMView.show;
            fImageEnView.hide;
            with fProgressBar do
            begin
              Parent := fImageEnMView;
              position := 0;
              show;
              repaint;
            end;
            fImageEnMView.MIO.AutoAdjustDPI := fAutoAdjustDPI;
            fImageEnMView.MIO.FilteredAdjustDPI := fFilteredAdjustDPI;

            if assigned(fOnPreviewFile) then
              fOnPreviewFile(self,fImageEnMView,FullName,false)
            else
              fImageEnMView.LoadFromFileOnDemand(FullName);

            fFrames := fImageEnMView.MIO.ParamsCount;
            fImageEnMView.SelectSeek(iskFirst);
            FPreviewButton.Enabled := True;
            fZoomComboBox.Enabled := False;
            if fFrames>0 then
              ShowIOParams(fImageEnMView.MIO.Params[0]);
            if fAlwaysAnimate and ((ss = '.avi') or ((ss = '.gif') and (@IEFileFormatGetInfo(ioGIF)^.ReadFunction <> nil))) then
            begin
              fPlayButton.down := True;
              PlayClick(self);
            end;
          end
          else
          begin
            // static images
            fPlayButton.enabled := false;
{$ENDIF}
            FZoomComboBox.enabled := true;
            fImageEnView.Show;
{$IFDEF IEINCLUDEMULTIVIEW}
            fImageEnMView.hide;
{$ENDIF}
            with fProgressBar do
            begin
              Parent := fImageEnView;
              position := 0;
              show;
              repaint;
            end;
            fImageEnView.IO.Params.Width := FImageEnView.Width;
            fImageEnView.IO.Params.Height := fImageEnView.Height;
            fImageEnView.IO.Params.JPEG_Scale := ioJPEG_AUTOCALC;
            {$ifdef IEINCLUDERAWFORMATS}
            fImageEnView.IO.Params.RAW_HalfSize:=true;
            fImageEnView.IO.Params.RAW_GetExifThumbnail:=true;
            {$endif}
            fImageEnView.IO.Params.JPEG_GetExifThumbnail:=true;
            fImageEnView.IO.AutoAdjustDPI := fAutoAdjustDPI;
            fImageEnView.IO.FilteredAdjustDPI := fFilteredAdjustDPI;
            fImageEnView.RemoveAllObjects;
            fImageEnView.LayersClear;

            if assigned(fOnPreviewFile) then
              fOnPreviewFile(self,fImageEnView,FullName,false)
            else
              fImageEnView.IO.LoadFromFileAuto(FullName);

            if fImageEnView.IO.Params.FileType = ioAVI then
              fFrames := fImageEnView.IO.Params.AVI_FrameCount
            else if fImageEnView.IO.Params.FileType = ioGIF then
              fFrames := EnumGIFIm(FullName)
            else if fImageEnView.IO.Params.FileType = ioTIFF then
              fFrames := EnumTIFFIm(FullName)
            else if fImageEnView.IO.Params.FileType = ioICO then
              fFrames := EnumICOIm(FullName)
            else if fImageEnView.IO.Params.FileType = ioDCX then
              fFrames := EnumDCXIm(FullName)
            {$ifdef IEINCLUDEDICOM}
            else if fImageEnView.IO.Params.FileType = ioDICOM then
              fFrames := IEGetFileFramesCount(FullName)
            {$endif}
            else
              fFrames := 1;
            ShowIOParams(fImageEnView.IO.Params);
            FPreviewButton.Enabled := True;
            fZoomComboBox.Enabled := true;
{$IFDEF IEINCLUDEMULTIVIEW}
          end;
{$ENDIF}
          fProgressBar.hide;
          SetZoom;
        finally
          Screen.Cursor := CursorBak;
        end;
      end; // if fPreviewCheck
    except
      ValidPicture := False;
    end;
    if not ValidPicture then
    begin
      FInfoLabel1.Caption := '';
      fInfoLabel2.Caption := '';
      FPreviewButton.Enabled := False;
      fZoomComboBox.Enabled := false;
      FImageEnView.blank;
      FPicLabel1.Caption := '';
      FPicLabel2.Caption := '';
      FPicLabel3.Caption := '';
{$IFDEF IEINCLUDEMULTIVIEW}
      fImageEnMView.Clear;
      fPlayButton.Enabled := false;
{$ENDIF}
    end;
    if Assigned(FOnSelectionChange) then
      FOnSelectionChange(Self);
  finally
    m_blnInSelectionChange := False;
  end;
end;

///////////////////////////////////////////////////////////////////////////////

procedure TOpenImageEnDialog.PreviewClick(Sender: TObject);
var
  PreviewForm: TForm;
begin
  PreviewForm := TForm.Create(Self);
  with PreviewForm do
  try
    Name := 'PreviewForm';
    Caption := Self.FileName;
    BorderStyle := bsSizeToolWin;
    KeyPreview := True;
    Position := poScreenCenter;
    OnKeyPress := PreviewKeyPress;
    with TImageEnVect.Create(PreviewForm) do
    begin
      Name := 'ImageEnView';
      Parent := PreviewForm;
      Align := alClient;
      Cursor := crDefault;
      MouseInteract := [miScroll, miZoom];
      if fImageEnView.visible then
        Assign(FImageEnView)
{$IFDEF IEINCLUDEMULTIVIEW}
      else if fImageEnMView.visible then
        Assign(fImageEnMView.Bitmap);
{$ELSE};
{$ENDIF}
      Background := iegPreviewImageBackgroundColor;
      backgroundstyle := iegPreviewImageBackgroundStyle;
      EnableAlphaChannel := True;
      Center := True;
      ScrollBars := ssBoth;
      if (Bitmap.Width > 100) then
      begin
        if (Bitmap.Width < Screen.Width) then
          PreviewForm.ClientWidth := Bitmap.Width
        else
          PreviewForm.Width := Screen.Width;
      end
      else
        PreviewForm.Width := 100;
      if (Bitmap.Height > 100) then
      begin
        if (Bitmap.Height < Screen.Height) then
          PreviewForm.ClientHeight := Bitmap.Height
        else
          PreviewForm.Height := Screen.Height;
      end
      else
        PreviewForm.Height := 100;
    end;
    ShowModal;
  finally
    Free;
  end;
end;

///////////////////////////////////////////////////////////////////////////////

procedure TOpenImageEnDialog.PlayClick(Sender: TObject);
begin
{$IFDEF IEINCLUDEMULTIVIEW}
  fImageEnMView.Playing := fPlayButton.down;
  fPreviewButton.Enabled := not fPlayButton.down;
  //fZoomComboBox.Enabled := not fPlayButton.down;

  if fImageEnMView.Playing then
  begin
    fImageEnMView.ThumbWidth:=fImageEnMView.Width-gEdgeX*2;
    fImageEnMView.ThumbHeight:=fImageEnMView.Height-gEdgeY*2;
    fImageEnMView.HorizBorder:=0;
    fImageEnMView.VertBorder:=0;
  end;

{$ENDIF}
end;

///////////////////////////////////////////////////////////////////////////////

procedure TOpenImageEnDialog.PreviewKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    TForm(Sender).Close;
end;

///////////////////////////////////////////////////////////////////////////////

procedure TOpenImageEnDialog.ZoomComboChange(Sender: TObject);
begin
  SetZoom;
end;

///////////////////////////////////////////////////////////////////////////////

procedure TOpenImageEnDialog.ImageEnIOProgress(Sender: TObject;
  per: integer);
begin
  fProgressBar.position := per;
end;

///////////////////////////////////////////////////////////////////////////////
// if params=nil then empties fields

procedure TOpenImageEnDialog.ShowIOParams(params: TIOParamsVals);
var
  ss: string;
  mdim, bitcount, ww, hh: integer;
begin
  if assigned(Params) then
  begin
    with Params do
    begin
      if params.FileType = ioJPEG then
      begin
        ww := JPEG_OriginalWidth;
        hh := JPEG_OriginalHeight;
      end
      else
      begin
        ww := Width;
        hh := Height;
      end;
      // Width X Height Pixel (frames)
      ss := IntToStr(ww) + ' x ' + IntToStr(hh) + ' '+iemsg(IEMSG_PIXEL, fMsglanguage);
      if fFrames > 1 then
        ss := ss + ' , ' + inttostr(fFrames) + ' '+iemsg(IEMSG_FRAMES, fMsglanguage);
      fPicLabel1.caption := ss;
      // dpi
      ss := inttostr(DpiX) + ' x ' + inttostr(DpiY) + ' '+iemsg(IEMSG_DPI, fMsglanguage);
      fPicLabel3.caption := ss;
      // xxx colors
      if (SamplesPerPixel = 4) and (BitsPerSample = 8) then
        ss := '16777216'
      else if (SamplesPerPixel = 3) and (BitsPerSample = 16) then
        ss := '2^48'
      else
        ss := IntToStr(1 shl (SamplesPerPixel * BitsPerSample));
      ss := ss + ' ' + iemsg(IEMSG_COLORS, fMsgLanguage) + ' (';
      ss := ss + IntToStr(SamplesPerPixel * BitsPerSample) + ' '+iemsg(IEMSG_BIT, fMsglanguage)+')';
      fPicLabel2.caption := ss;
      // file size
      if fFileSize < 1024 then
        ss := iemsg(IEMSG_FILE, fMsglanguage) + ': ' + inttostr(fFileSize) + ' ' + iemsg(IEMSG_BYTE, fMsglanguage)
      else
        ss := iemsg(IEMSG_FILE, fMsglanguage) + ': ' + inttostr(fFileSize div 1024) + ' '+iemsg(IEMSG_KB, fMsglanguage);
      // memory size
      // solo pf1bit e pf24bit sono attualmente supportati
      if (SamplesPerPixel = 1) and (BitsPerSample = 1) then
        bitcount := 1
      else
        bitcount := 24;
      //mdim := (((ww * BitCount) + 31) div 32) * 4 * hh * fFrames;
      mdim := (((ww * BitCount) + 31) div 32) * 4 * hh; // only one frames is calculated
      if mdim < 1024 then
        ss := ss + '   ' + iemsg(IEMSG_MEM, fMsglanguage) + ': ' + inttostr(mdim) + ' '+iemsg(IEMSG_BYTE, fMsglanguage)
      else
        ss := ss + '   ' + iemsg(IEMSG_MEM, fMsglanguage) + ': ' + inttostr(mdim div 1024) + ' '+iemsg(IEMSG_KB, fMsglanguage);
      //if fFrames>1 then
      //  ss:=ss+' x'+IntToStr(fFrames);
      //
      fInfoLabel2.Caption := ss;
      // compression
      ss := FileTypeStr;
      fInfoLabel1.Caption := ss;
    end;
  end
  else
  begin
    fPicLabel1.caption := '';
    fPicLabel3.caption := '';
    fPicLabel2.caption := '';
    fInfoLabel2.Caption := '';
    fInfoLabel1.Caption := '';
  end;
end;

///////////////////////////////////////////////////////////////////////////////

procedure TOpenImageEnDialog.SetZoom;
var
  intItemIndex: integer;
begin
  if not Assigned(FZoomComboBox) then
    Exit;
  if not Assigned(FImageEnView) then
    Exit;
  intItemIndex := FZoomComboBox.ItemIndex;
  if (intItemIndex < 0) then
    Exit;
  if Assigned(FZoomComboBox.Items.Objects[intItemIndex]) then
  begin
    fImageEnView.AutoFit:=false;
    FImageEnView.Zoom := Integer(FZoomComboBox.Items.Objects[intItemIndex])
  end
  else
  begin
    //fImageEnView.Fit;
    fImageEnView.AutoFit:=true;
    fImageEnView.Update;
  end;
end;

///////////////////////////////////////////////////////////////////////////////

procedure TOpenImageEnDialog.DoShow;
var
  ClientRect, PreviewRect, StaticRect: TRect;
begin
  GetClientRect(handle, ClientRect);
  StaticRect := GetStaticRect;
  if fShowPreview then
  begin
    // PicturePanel
    PreviewRect := ClientRect;
    PreviewRect.Left := StaticRect.Left + (StaticRect.Right - StaticRect.Left);
    PreviewRect.top := StaticRect.Top;
    PreviewRect.Bottom := staticrect.bottom;
    FPicturePanel.BoundsRect := PreviewRect;
    FPicturePanel.ParentWindow := handle;
{$IFDEF IEINCLUDEMULTIVIEW}
    fImageEnMView.ParentWindow := fpicturepanel.handle;
{$ENDIF}
    fImageEnView.ParentWindow := fPicturepanel.handle;
    with FZoomComboBox, Items do
    begin
      AddObject(iemsg(IEMSG_FIT, fMsglanguage), nil);
      AddObject('25%', TObject(25));
      AddObject('50%', TObject(50));
      AddObject('75%', TObject(75));
      AddObject('100%', TObject(100));
      AddObject('125%', TObject(125));
      AddObject('150%', TObject(150));
      AddObject('175%', TObject(175));
      AddObject('200%', TObject(200));
      AddObject('300%', TObject(300));
      AddObject('400%', TObject(400));
      ItemIndex := 0;
    end;
    FImageEnView.Background := iegPreviewImageBackgroundColor;  // 2.2.5
    FImageEnView.Center := True;
{$IFDEF IEINCLUDEMULTIVIEW}
    fPlayButton.down := false;
    fImageEnMView.Playing := false;
    fPlayButton.enabled := false;
{$ENDIF}
  end;
  // Info panel
  if fExtendedDialog then
  begin
    fInfoPanel.top := StaticRect.bottom;
    fInfoPanel.left := StaticRect.left;
    fInfoPanel.width := clientrect.Right;
    fInfoPanel.Height := ClientRect.bottom;
    fInfoPanel.ParentWindow := handle;
  end
  else
  begin
    FPicLabel1.visible := false;
    FPicLabel2.visible := false;
    FPicLabel3.visible := false;
    FZoomComboBox.visible := false;
  end;
  inherited DoShow;
end;

///////////////////////////////////////////////////////////////////////////////

function TSaveImageEnDialog.Execute: Boolean;
begin
  if fAttachedImageEnIO=nil then
  begin
    result:=false;
    exit;
  end;

  try

  if assigned(fOnCreateCustomControls) then
    fOnCreateCustomControls(self);

  fShowPreview := sdShowPreview in fExOptions;
  if fShowPreview then
    Template := 'IDD_IETEMPLATE'
  else
    Template := 'IDD_IETEMPLATE1';
  if fAutoSetFilter then
    Filter := BuildStrFilter;
  fAdvancedButton.OnClick := DoAdvanced;
{$IFDEF IEINCLUDEDIALOGIO}
  fAdvancedButton.visible := sdShowAdvanced in fExOptions;
{$ENDIF}
  SetLang;
  if fShowPlacesBar then
    fAdvancedButton.SetBounds(474, 0, 75, 23)
  else
    fAdvancedButton.SetBounds(333, 0, 75, 23);
  fPreviewCheck.visible := sdShowPreview in fExOptions;
  // save Params in fBackParams
  if fAttachedImageEnIO is TImageEnIO then
    fBackParams.Assign((fAttachedImageEnIO as TImageEnIO).Params)
{$IFDEF IEINCLUDEMULTIVIEW}
  else if fAttachedImageEnIO is TImageEnMIO then
    with fAttachedImageEnIO as TImageEnMIO do
    begin
      if ParamsCount > 0 then
        fBackParams.Assign(Params[0])
      else
      begin
        result := false;
        exit;
      end;
    end
  else if fAttachedImageEnIO is TImageEnMView then
    with (fAttachedImageEnIO as TImageEnMView).MIO do
    begin
      if ParamsCount > 0 then
        fBackParams.Assign(Params[0])
      else
      begin
        result := false;
        exit;
      end;
    end
{$ENDIF}
  else if fAttachedImageEnIO is TImageEnView then
    fBackparams.Assign((fAttachedImageEnIO as TImageEnView).IO.Params);
  //
  EnableDisableAdvanced;
  Result := DoExecute(@GetSaveFileName);
  if result = false then
  begin
    // restore Params
    if fAttachedImageEnIO is TImageEnIO then
      (fAttachedImageEnIO as TIMageEnIO).Params.Assign(fBackParams)
{$IFDEF IEINCLUDEMULTIVIEW}
    else if fAttachedImageEnIO is TImageEnMIO then
      (fAttachedImageEnIO as TImageEnMIO).Params[0].Assign(fBackParams)
    else if fAttachedImageEnIO is TImageEnMView then
      (fAttachedImageEnIO as TImageEnMView).MIO.Params[0].Assign(fBackParams)
{$ENDIF}
    else if fAttachedImageEnIO is TImageEnView then
      (fAttachedImageEnIO as TImageEnView).IO.Params.Assign(fBackParams);
  end;
  // add the extension to the file name (if there isn't)
  if extractfileext(FileName) = '' then
    FileName := FileName + ExtractFirstExt(fSelType);

  finally
    if assigned(fOnDestroyCustomControls) then
      fOnDestroyCustomControls(self);
  end;
end;

///////////////////////////////////////////////////////////////////////////////

constructor TSaveImageEnDialog.Create(AOwner: TComponent);
var
  strFilter: string;
  fi: PIEFileFormatInfo;
begin
  inherited;
  fShowPreview := true;
  strFilter := 'JPEG Bitmap (JPG)|*.jpg';
  fi := IEFileFormatGetInfo(ioGIF);
  if assigned(fi) and (@fi^.WriteFunction <> nil) then
    strFilter := strFilter + '|CompuServe Bitmap (GIF)|*.gif';
  strFilter := strFilter + '|TIFF Bitmap (TIF)|*.tif';
  strFilter := strFilter + '|PaintBrush (PCX)|*.pcx';
  strFilter := strFilter + '|Portable Network Graphics (PNG)|*.png';
  strFilter := strFilter + '|Windows Bitmap (BMP)|*.bmp';
  strFilter := strFilter + '|OS/2 Bitmap (BMP)|*.bmp';
  strFilter := strFilter + '|Targa Bitmap (TGA)|*.tga';
  strFilter := strFilter + '|Portable PixMap (PXM)|*.pxm';
  strFilter := strFilter + '|Portable PixMap (PPM)|*.ppm';
  strFilter := strFilter + '|Portable GreyMap (PGM)|*.pgm';
  strFilter := strFilter + '|Portable Bitmap (PBM)|*.pbm';
  strFilter := strFilter + '|JPEG2000 (JP2)|*.jp2';
  strFilter := strFilter + '|JPEG2000 Code Stream (J2K)|*.j2k';
  strFilter := strFilter + '|Multipage PCX (DCX)|*.dcx';
  Filter := strFilter;
  //
  fExOptions := [sdShowPreview, sdShowAdvanced];
  fAttachedImageEnIO := nil;
  fBackParams := TIOParamsVals.Create(nil);
  fWatchTimer := TTimer.Create(self);
  fWatchTimer.Enabled:=false;
  fWatchTimer.Interval:=100;
  fWatchTimer.OnTimer:=OnWatchTimer;
end;

destructor TSaveImageEnDialog.Destroy;
begin
  FreeAndNil(fWatchTimer);
  FreeAndNil(fBackParams);
  inherited;
end;

{!!
<FS>TSaveImageEnDialog.AttachedImageEnIO

<FM>Declaration<FC>
property AttachedImageEnIO: TComponent;

<FM>Description<FN>
You can attach the dialog to a TImageEnIO , TImageEnMIO with this property.
Use <A TImageEnMView> and <A TImageEnView> components to get/set the Params properties (when user presses the advanced button).
The Params properties are updated only if user presses "OK".
!!}
procedure TSaveImageEnDialog.SetAttachedImageEnIO(v: TComponent);
begin
  if assigned(v) and ((v is TImageEnIO){$IFDEF IEINCLUDEMULTIVIEW} or (v is TImageEnMIO) or (v is TImageEnMView){$ENDIF} or (v is TImageEnView)) then
  begin
    fAttachedImageEnIO := v;
    fAttachedImageEnIO.FreeNotification(self);
    if v is TImageEnIO then
      fMsgLanguage := (v as TImageEnIO).MsgLanguage;
{$IFDEF IEINCLUDEMULTIVIEW}
    if v is TImageEnMIO then
      fMsgLanguage := (v as TImageEnMIO).MsgLanguage;
{$ENDIF}
  end;
end;

procedure TSaveImageEnDialog.Notification(AComponent: TComponent; Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (AComponent = fAttachedImageEnIO) and (Operation = opRemove) then
  begin
    fAttachedImageEnIO := nil;
  end;
end;

procedure TSaveImageEnDialog.EnableDisableAdvanced;
var
  pp: TPreviewParams;
  ft: TIOFileType;
begin
  GetAdvancedType(pp,ft);
  if fAttachedImageEnIO is TImageEnIO then
    (fAttachedImageEnIO as TImageEnIO).Params.FileType := ft;
  fAdvancedButton.Enabled := pp<>[];
end;

procedure TSaveImageEnDialog.GetAdvancedType(var pp:TPreviewParams; var ft: TIOFileType);

  function ConvertExt(e: string; var ft: TIOFileType): TPreviewParams;
  var
    fi: PIEFileFormatInfo;
  begin
    fi := IEFileFormatGetInfo2(e);
    if fi <> nil then
    begin
      result := fi^.DialogPage;
      ft := fi^.FileType;
    end
    else
    begin
      result := [];
      ft := 0;
    end;
  end;
var
  e: string;
begin
  e := ExtractFileExt(filename);
  if e <> '' then
    pp := ConvertExt(e, ft)
  else
    pp := ConvertExt(DefaultExt, ft);
  if (pp = []) and  (ft=0) and (fSelType<>'') then
    pp := ConvertExt(ExtractFileExt(fSelType), ft);
end;

procedure TSaveImageEnDialog.DoAdvanced(Sender: TObject);
{$IFDEF IEINCLUDEDIALOGIO}
var
  pp: TPreviewParams;
  ft: TIOFileType;
begin
  GetAdvancedType(pp,ft);
  if pp <> [] then
  begin
    if fAttachedImageEnIO is TImageEnIO then
    begin
      (fAttachedImageEnIO as TImageEnIO).Params.FileType := ft;
      (fAttachedImageEnIO as TImageEnIO).DoPreviews(pp);
    end
{$IFDEF IEINCLUDEMULTIVIEW}
    else if fAttachedImageEnIO is TImageEnMIO then
      (fAttachedImageEnIO as TImageEnMIO).DoPreviews(-1, pp)
    else if fAttachedImageEnIO is TImageEnMView then
      (fAttachedImageEnIO as TImageEnMView).MIO.DoPreviews(-1, pp)
{$ENDIF}
    else if fAttachedImageEnIO is TImageEnView then
    begin
      (fAttachedImageEnIO as TImageEnView).IO.Params.FileType := ft;
      (fAttachedImageEnIO as TImageEnView).IO.DoPreviews(pp);
    end;
  end;
end;
{$ELSE} // {$ifdef IEINCLUDEDIALOGIO}
begin
end;
{$ENDIF}


///////////////////////////////////////////////////////////////////////////////

procedure TSaveImageEnDialog.SetFileNameExt;
var
  q: integer;
  s: string;
begin
  s := ExtractFileName(GetFileName2);
  q := pos('.', s);
  if q > 0 then
    s := copy(s, 1, q - 1);
  s := s + ExtractFirstExt(fSelType);
  SendMessage(GetParent(FHandle), CDM_SETCONTROLTEXT, edt1, longint(pchar(s)));
end;

///////////////////////////////////////////////////////////////////////////////

procedure TSaveImageEnDialog.DoTypeChange;
begin
  SetFileNameExt;
  EnableDisableAdvanced;
  inherited;
end;

///////////////////////////////////////////////////////////////////////////////

procedure TOpenImageEnDialog.DoCheckPreview(Sender: TObject);
begin
  if fPreviewCheck.Checked then
  begin
    // reload image
    DoSelectionChange;
  end
  else
  begin
    // empty fields
    ShowIOParams(nil);
    fImageEnView.blank;
    fImageEnView.background := iegPreviewImageBackgroundColor;  // 2.2.5
    fImageEnView.Zoom := 100;
{$IFDEF IEINCLUDEMULTIVIEW}
    fImageEnMView.Clear;
    fImageEnMView.background := iegPreviewImageBackgroundColor; // 2.2.5
    fImageEnMView.Hide;
{$ENDIF}
    FPreviewButton.Enabled := False;
    fZoomComboBox.Enabled := false;
  end;
end;

///////////////////////////////////////////////////////////////////////////////

{!!
<FS>TOpenImageEnDialog.PreviewBorderStyle

<FM>Declaration<FC>
property PreviewBorderStyle:<A TIEDBorderStyle>;

<FM>Description<FN>
PreviewBorderStyle specifies the border style of the preview box for static images.
!!}
procedure TOpenImageEnDialog.SetPreviewBorderStyle(v: TIEDBorderStyle);
begin
  fPreviewBorderStyle := v;
  with FImageEnView do
    case fPreviewBorderStyle of
      iepsDefault:
        begin
          BackgroundStyle := iebsSolid;
          BorderStyle := bsSingle;
        end;
      iepsCropped:
        begin
          BackgroundStyle := iebsCropped;
          BorderStyle := bsNone;
        end;
      iepsCropShadow:
        begin
          BackgroundStyle := iebsCropShadow;
          BorderStyle := bsNone;
        end;
      iepsSoftShadow:
        begin
          BackgroundStyle := iebsSoftShadow;
          BorderStyle := bsNone;
        end;
    end;
end;

procedure TOpenImageEnDialog.SetZoomFilter(v: TResampleFilter);
begin
  FImageEnView.ZoomFilter := v;
end;

{!!
<FS>TOpenImageEnDialog.ZoomFilter

<FM>Declaration<FC>
property ZoomFilter:<A TResampleFilter>;

<FM>Description<FN>
ZoomFilter specifies the filter to apply when displaying the image. It can improve the image quality.

!!}
function TOpenImageEnDialog.GetZoomFilter: TResampleFilter;
begin
  result := FImageEnView.ZoomFilter;
end;

{$IFDEF IEINCLUDEMULTIVIEW}
{!!
<FS>TOpenImageEnDialog.AlwaysAnimate

<FM>Declaration<FC>
property AlwaysAnimate:boolean;

<FM>Description<FN>
Set AlwaysAnimate to auto-animate GIF and AVI files.
!!}
procedure TOpenImageEnDialog.SetAlwaysAnimate(value:boolean);
begin
  fAlwaysAnimate:=value;
  if fAlwaysAnimate then
    ShowAllFrames:=true;
end;
{$endif}

procedure TSaveImageEnDialog.OnWatchTimer(Sender:TObject);
begin
  EnableDisableAdvanced;
end;

procedure TOpenImageEnDialog.DoAllDisplayed(Sender:TObject);
begin
  {$IFDEF IEINCLUDEMULTIVIEW}
  if fImageEnMView.SelectedImage>-1 then
    ShowIOParams(fImageEnMView.MIO.Params[fImageEnMView.SelectedImage]);
  {$endif}
end;

{$ELSE} // {$ifdef IEINCLUDEOPENSAVEDIALOGS}

interface
implementation

{$ENDIF}

end.




