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

unit ieds;

{$IFDEF FPC}
  {$MODE DELPHI}
{$ENDIF}

{$R-}
{$Q-}

{$I ie.inc}

interface

{$IFDEF IEINCLUDEDIRECTSHOW}

uses Windows, Classes, Sysutils, Graphics, hyieutils, hyiedefs, iewia, imageenproc, dialogs;

const
  IEEC_COMPLETE = $01;
  IEEC_USERABORT = $02;
  IEEC_ERRORABORT = $03;
  IEEC_TIME = $04;
  IEEC_REPAINT = $05;
  IEEC_STREAM_ERROR_STOPPED = $06;
  IEEC_STREAM_ERROR_STILLPLAYING = $07;
  IEEC_ERROR_STILLPLAYING = $08;
  IEEC_PALETTE_CHANGED = $09;
  IEEC_VIDEO_SIZE_CHANGED = $0A;
  IEEC_QUALITY_CHANGE = $0B;
  IEEC_SHUTTING_DOWN = $0C;
  IEEC_CLOCK_CHANGED = $0D;
  IEEC_PAUSED = $0E;
  IEEC_OPENING_FILE = $10;
  IEEC_BUFFERING_DATA = $11;
  IEEC_FULLSCREEN_LOST = $12;
  IEEC_ACTIVATE = $13;
  IEEC_NEED_RESTART = $14;
  IEEC_WINDOW_DESTROYED = $15;
  IEEC_DISPLAY_CHANGED = $16;
  IEEC_STARVATION = $17;
  IEEC_OLE_EVENT = $18;
  IEEC_NOTIFY_WINDOW = $19;
  IEEC_STREAM_CONTROL_STOPPED = $1A;
  IEEC_STREAM_CONTROL_STARTED = $1B;
  IEEC_END_OF_SEGMENT = $1C;
  IEEC_SEGMENT_STARTED = $1D;
  IEEC_LENGTH_CHANGED = $1E;
  IEEC_DEVICE_LOST = $1F;
  IEEC_STEP_COMPLETE = $24;
  IEEC_SKIP_FRAMES = $25;
  IEEC_TIMECODE_AVAILABLE = $30;
  IEEC_EXTDEVICE_MODE_CHANGE = $31;
  IEEC_GRAPH_CHANGED = $50;
  IEEC_CLOCK_UNSET = $51;

type

{!!
<FS>TIETVStandard

<FM>Declaration<FC>
}
  TIETVStandard = (ievsNONE, ievsNTSC_M, ievsNTSC_M_J, ievsNTSC_433, ievsPAL_B, ievsPAL_D, ievsPAL_H, ievsPAL_I, ievsPAL_M, ievsPAL_N, ievsPAL_60, ievsSECAM_B, ievsSECAM_D, ievsSECAM_G, ievsSECAM_H, ievsSECAM_K, ievsSECAM_K1, ievsSECAM_L, ievsSECAM_L1, ievsPAL_N_COMBO);
{!!}

{!!
<FS>TIETVStandards

<FM>Declaration<FC>
TIETVStandards = set of <A TIETVStandard>;
!!}
  TIETVStandards = set of TIETVStandard;

{!!
<FS>TIEDVDMenu

<FM>Declaration<FC>
}
TIEDVDMenu = (iedmTITLE, iedmROOT, iedmSUBPICTURE, iedmAUDIO, iedmANGLE, iedmCHAPTER);
{!!}

  IEREFERENCE_TIME = packed record
    lo32: dword;
    hi32: dword;
  end;
  PIEREFERENCE_TIME = ^IEREFERENCE_TIME;

  IEAM_MEDIA_TYPE = record
    majortype: TGUID;
    subtype: TGUID;
    bFixedSizeSamples: longbool;
    bTemporalCompression: longbool;
    lSampleSize: dword;
    formattype: TGUID;
    pUnk: IUnknown;
    cbFormat: dword;
    pbFormat: pbyte;
  end;

  PIEAM_MEDIA_TYPE = ^IEAM_MEDIA_TYPE;

  IIESequentialStream = interface(IUnknown)
    ['{0c733a30-2a1c-11ce-ade5-00aa0044773d}']
    function Read: HResult; stdcall;
    function Write: HResult; stdcall;
  end;

  IIEStream = interface(IIESequentialStream)
    ['{0000000C-0000-0000-C000-000000000046}']
    function Seek: HResult; stdcall;
    function SetSize: HResult; stdcall;
    function CopyTo: HResult; stdcall;
    function Commit: HResult; stdcall;
    function Revert: HResult; stdcall;
    function LockRegion: HResult; stdcall;
    function UnlockRegion: HResult; stdcall;
    function Stat: HResult; stdcall;
    function Clone: HResult; stdcall;
  end;

  IIEStorage = interface(IUnknown)
    ['{0000000B-0000-0000-C000-000000000046}']
    function CreateStream(pwcsName: PWideChar; grfMode: Longint; reserved1: Longint; reserved2: Longint; out stm: IIEStream): HResult; stdcall;
    function OpenStream: HResult; stdcall;
    function CreateStorage: HResult; stdcall;
    function OpenStorage: HResult; stdcall;
    function CopyTo: HResult; stdcall;
    function MoveElementTo: HResult; stdcall;
    function Commit(grfCommitFlags: Longint): HResult; stdcall;
    function Revert: HResult; stdcall;
    function EnumElements: HResult; stdcall;
    function DestroyElement: HResult; stdcall;
    function RenameElement: HResult; stdcall;
    function SetElementTimes: HResult; stdcall;
    function SetClass: HResult; stdcall;
    function SetStateBits: HResult; stdcall;
    function Stat: HResult; stdcall;
  end;

  IIEPersist = interface(IUnknown)
    ['{0000010C-0000-0000-C000-000000000046}']
    function GetClassID (*(out classID: TCLSID)*): HResult; stdcall;
  end;

  IIEPersistStream = interface(IIEPersist)
    ['{00000109-0000-0000-C000-000000000046}']
    function IsDirty: HResult; stdcall;
    function Load(const stm: IIEStream): HResult; stdcall;
    function Save(const stm: IIEStream; fClearDirty: BOOL): HResult; stdcall;
    function GetSizeMax: HResult; stdcall;
  end;
  IID_IIEPersistStream = IIEPersistStream;

  IIEEnumMoniker = interface(IUnknown)
    ['{00000102-0000-0000-C000-000000000046}']
    function Next(celt: Longint; out elt; pceltFetched: pointer(*PLongint*)): HResult; stdcall;
    function Skip (*(celt: Longint)*): HResult; stdcall;
    function Reset: HResult; stdcall;
    function Clone (*(out enm: IEnumMoniker)*): HResult; stdcall;
  end;

  IIEBindCtx = interface(IUnknown)
    ['{0000000E-0000-0000-C000-000000000046}']
    function RegisterObjectBound (*(const unk: IUnknown)*): HResult; stdcall;
    function RevokeObjectBound (*(const unk: IUnknown)*): HResult; stdcall;
    function ReleaseBoundObjects: HResult; stdcall;
    function SetBindOptions (*(const bindopts: TBindOpts)*): HResult; stdcall;
    function GetBindOptions (*(var bindopts: TBindOpts)*): HResult; stdcall;
    function GetRunningObjectTable (*(out rot: IRunningObjectTable)*): HResult; stdcall;
    function RegisterObjectParam (*(pszKey: POleStr; const unk: IUnknown)*): HResult; stdcall;
    function GetObjectParam (*(pszKey: POleStr; out unk: IUnknown)*): HResult; stdcall;
    function EnumObjectParam (*(out Enum: IEnumString)*): HResult; stdcall;
    function RevokeObjectParam (*(pszKey: POleStr)*): HResult; stdcall;
  end;

  IIEMoniker = interface(IIEPersistStream)
    ['{0000000F-0000-0000-C000-000000000046}']
    function BindToObject(const bc: IIEBindCtx; const mkToLeft: IIEMoniker; const iidResult: TGUID; out vResult): HResult; stdcall;
    function BindToStorage(const bc: IIEBindCtx; const mkToLeft: IIEMoniker; const iid: TGUID; out vObj): HResult; stdcall;
    function Reduce (*(const bc: IBindCtx; dwReduceHowFar: Longint; mkToLeft: PIMoniker; out mkReduced: IMoniker)*): HResult; stdcall;
    function ComposeWith (*(const mkRight: IMoniker; fOnlyIfNotGeneric: BOOL; out mkComposite: IMoniker)*): HResult; stdcall;
    function Enum (*(fForward: BOOL; out enumMoniker: IEnumMoniker)*): HResult; stdcall;
    function IsEqual (*(const mkOtherMoniker: IMoniker)*): HResult; stdcall;
    function Hash (*(out dwHash: Longint)*): HResult; stdcall;
    function IsRunning (*(const bc: IBindCtx; const mkToLeft: IMoniker; const mkNewlyRunning: IMoniker)*): HResult; stdcall;
    function GetTimeOfLastChange (*(const bc: IBindCtx; const mkToLeft: IMoniker; out filetime: TFileTime)*): HResult; stdcall;
    function Inverse (*(out mk: IMoniker)*): HResult; stdcall;
    function CommonPrefixWith (*(const mkOther: IMoniker; out mkPrefix: IMoniker)*): HResult; stdcall;
    function RelativePathTo (*(const mkOther: IMoniker; out mkRelPath: IMoniker)*): HResult; stdcall;
    function GetDisplayName (*(const bc: IBindCtx; const mkToLeft: IMoniker; out pszDisplayName: POleStr)*): HResult; stdcall;
    function ParseDisplayName (*(const bc: IBindCtx; const mkToLeft: IMoniker; pszDisplayName: POleStr; out chEaten: Longint; out mkOut: IMoniker)*): HResult; stdcall;
    function IsSystemMoniker (*(out dwMksys: Longint)*): HResult; stdcall;
  end;

  IIECreateDevEnum = interface(IUnknown)
    ['{29840822-5B84-11D0-BD3B-00A0C911CE86}']
    function CreateClassEnumerator(const clsidDeviceClass: TGUID; var ppEnumMoniker: IIEEnumMoniker; dwFlags: DWORD): HRESULT; stdcall;
  end;
  IID_IIECreateDevEnum = IIECreateDevEnum;

  IIEErrorLog = interface
    ['{3127CA40-446E-11CE-8135-00AA004BB851}']
    function AddError (*(pszPropName: POleStr; pExcepInfo: PExcepInfo)*): HResult; stdcall;
  end;

  TIECAGUID = record
    cElems: Longint;
    pElems: pointer;
  end;

  IIESpecifyPropertyPages = interface(IUnknown)
    ['{B196B28B-BAB4-101A-B69C-00AA00341D07}']
    function GetPages(out pages: TIECAGUID): HResult; stdcall;
  end;
  IID_IIESpecifyPropertyPages = IIESpecifyPropertyPages;

  IIEAMVideoCompression = interface(IUnknown)
    ['{C6E13343-30AC-11d0-A18C-00A0C9118956}']
    function put_KeyFrameRate(KeyFrameRate: integer): HRESULT; stdcall;
    function get_KeyFrameRate(var pKeyFrameRate: integer): HRESULT; stdcall;
    function put_PFramesPerKeyFrame: HRESULT; stdcall;
    function get_PFramesPerKeyFrame: HRESULT; stdcall;
    function put_Quality(Quality: double): HRESULT; stdcall;
    function get_Quality(var pQuality: double): HRESULT; stdcall;
    function put_WindowSize: HRESULT; stdcall;
    function get_WindowSize: HRESULT; stdcall;
    function GetInfo: HRESULT; stdcall;
    function OverrideKeyFrame: HRESULT; stdcall;
    function OverrideFrameSize: HRESULT; stdcall;
  end;
  IID_IIEAMVideoCompression = IIEAMVideoCompression;

  IIEReferenceClock = interface(IUnknown)
    ['{56a86897-0ad4-11ce-b03a-0020af0ba770}']
    function GetTime:HRESULT; stdcall;
    function AdviseTime:HRESULT; stdcall;
    function AdvisePeriodic:HRESULT; stdcall;
    function Unadvise:HRESULT; stdcall;
  end;
  IID_IIEReferenceClock = IIEReferenceClock;

  IIEPropertyBag = interface
    ['{55272A00-42CB-11CE-8135-00AA004BB851}']
    function Read(pszPropName: PWideChar; var pvar: OleVariant; const pErrorLog: IIEErrorLog): HResult; stdcall;
    function Write (*(pszPropName: POleStr; const pvar: OleVariant)*): HResult; stdcall;
  end;
  IID_IIEPropertyBag = IIEPropertyBag;

  IIEMediaFilter = interface(IIEPersist)
    ['{56a86899-0ad4-11ce-b03a-0020af0ba770}']
    function Stop: HRESULT; stdcall;
    function Pause: HRESULT; stdcall;
    function Run: HRESULT; stdcall;
    function GetState: HRESULT; stdcall;
    function SetSyncSource(pClock:IIEReferenceClock): HRESULT; stdcall;
    function GetSyncSource: HRESULT; stdcall;
  end;
  IID_IIEMediaFilter = IIEMediaFilter;

  IIEPin = interface(IUnknown)
    ['{56a86891-0ad4-11ce-b03a-0020af0ba770}']
    function Connect(pReceivePin:IIEPin; pmt:PIEAM_MEDIA_TYPE): HRESULT; stdcall;
    function ReceiveConnection: HRESULT; stdcall;
    function Disconnect: HRESULT; stdcall;
    function ConnectedTo(var ppPin:IIEPin): HRESULT; stdcall;
    function ConnectionMediaType(pmt:PIEAM_MEDIA_TYPE): HRESULT; stdcall;
    function QueryPinInfo(pInfo: pointer): HRESULT; stdcall;
    function QueryDirection: HRESULT; stdcall;
    function QueryId: HRESULT; stdcall;
    function QueryAccept: HRESULT; stdcall;
    function EnumMediaTypes: HRESULT; stdcall;
    function QueryInternalConnections: HRESULT; stdcall;
    function EndOfStream: HRESULT; stdcall;
    function BeginFlush: HRESULT; stdcall;
    function EndFlush: HRESULT; stdcall;
    function NewSegment: HRESULT; stdcall;
  end;

  IIEEnumPins = interface(IUnknown)
    ['{56a86892-0ad4-11ce-b03a-0020af0ba770}']
    function Next(cPins: integer; var ppPins: IIEPin; var pcFetched: integer): HRESULT; stdcall;
    function Skip: HRESULT; stdcall;
    function Reset: HRESULT; stdcall;
    function Clone: HRESULT; stdcall;
  end;

  IIEBaseFilter = interface(IIEMediaFilter)
    ['{56a86895-0ad4-11ce-b03a-0020af0ba770}']
    function EnumPins(var ppEnum: IIEEnumPins): HRESULT; stdcall;
    function FindPin: HRESULT; stdcall;
    function QueryFilterInfo(pInfo: pointer): HRESULT; stdcall;
    function JoinFilterGraph: HRESULT; stdcall;
    function QueryVendorInfo: HRESULT; stdcall;
  end;
  IID_IEBaseFilter = IIEBaseFilter;

  IIEFilterGraph = interface(IUnknown)
    ['{56a8689f-0ad4-11ce-b03a-0020af0ba770}']
    function AddFilter(pFilter: IIEBaseFilter; pName: PWideChar): HRESULT; stdcall;
    function RemoveFilter(pFilter:IIEBaseFilter): HRESULT; stdcall;
    function EnumFilters: HRESULT; stdcall;
    function FindFilterByName(pName:PWideChar; var ppFilter:IIEBaseFilter): HRESULT; stdcall;
    function ConnectDirect(ppinOut:IIEPin; ppinIn:IIEPin; pmt:PIEAM_MEDIA_TYPE): HRESULT; stdcall;
    function Reconnect(ppin:IIEPin): HRESULT; stdcall;
    function Disconnect(ppin:IIEPin): HRESULT; stdcall;
    function SetDefaultSyncSource: HRESULT; stdcall;
  end;
  IID_IIEFilterGraph = IIEFilterGraph;

  IIEAMAnalogVideoDecoder = interface(IUnknown)
    ['{C6E13350-30AC-11d0-A18C-00A0C9118956}']
    function get_AvailableTVFormats( lAnalogVideoStandard:plongint):HRESULT; stdcall;
    function put_TVFormat( lAnalogVideoStandard:longint):HRESULT; stdcall;
    function get_TVFormat( plAnalogVideoStandard:plongint):HRESULT; stdcall;
    function get_HorizontalLocked( plLocked:plongint):HRESULT; stdcall;
    function put_VCRHorizontalLocking( lVCRHorizontalLocking:longint):HRESULT; stdcall;
    function get_VCRHorizontalLocking( plVCRHorizontalLocking:plongint):HRESULT; stdcall;
    function get_NumberOfLines( plNumberOfLines:plongint):HRESULT; stdcall;
    function put_OutputEnable( lOutputEnable:longint):HRESULT; stdcall;
    function get_OutputEnable( plOutputEnable:plongint):HRESULT; stdcall;
  end;
  IID_IIEAMAnalogVideoDecoder = IIEAMAnalogVideoDecoder;

  IIEAMClockSlave = interface(IUnknown)
    ['{9FD52741-176D-4b36-8F51-CA8F933223BE}']
    function SetErrorTolerance(dwTolerance:DWORD):HRESULT; stdcall;
    function GetErrorTolerance(pdwTolerance:PDWORD):HRESULT; stdcall;
  end;
  IID_IIEAMClockSlave = IIEAMClockSlave;

const
  IEMAX_FILTER_NAME = 128;
type
  IEFILTER_INFO = record
    achName: array[0..IEMAX_FILTER_NAME - 1] of WideChar;
    pGraph: IIEFilterGraph;
  end;

type
  IEPIN_INFO = record
    pFilter: IIEBaseFilter;
    dir: integer;
    achName: array[0..IEMAX_FILTER_NAME - 1] of WideChar;
  end;

  IIEGraphBuilder = interface(IIEFilterGraph)
    ['{56a868a9-0ad4-11ce-b03a-0020af0ba770}']
    function Connect(ppinOut:IIEPin; ppinIn:IIEPin): HRESULT; stdcall;
    function Render(ppinOut:IIEPin): HRESULT; stdcall;
    function RenderFile: HRESULT; stdcall;
    function AddSourceFilter(lpwstrFileName: PWideChar; lpwstrFilterName: PWideChar; var ppFilter: IIEBaseFilter): HRESULT; stdcall;
    function SetLogFile: HRESULT; stdcall;
    function Abort: HRESULT; stdcall;
    function ShouldOperationContinue: HRESULT; stdcall;
  end;
  IID_IIEGraphBuilder = IIEGraphBuilder;

  IIEFilterGraph2 = interface(IIEGraphBuilder)
    ['{36b73882-c2c8-11cf-8b46-00805f6cef60}']
    function AddSourceFilterForMoniker: HRESULT; stdcall;
    function ReconnectEx(ppin:IIEPin; pmt:PIEAM_MEDIA_TYPE): HRESULT; stdcall;
    function RenderEx(pPinOut:IIEPin; dwFlags:DWORD; pvContext:PDWORD): HRESULT; stdcall;
  end;
  IID_IIEFilterGraph2 = IIEFilterGraph2;

  IIEFileSinkFilter = interface(IUnknown)
    ['{a2104830-7c70-11cf-8bce-00aa00a3f1a6}']
    function SetFileName: HRESULT; stdcall;
    function GetCurFile: HRESULT; stdcall;
  end;

  IIEVideoWindow = interface(IDispatch)
  ['{56a868b4-0ad4-11ce-b03a-0020af0ba770}']
    function put_Caption: HRESULT; stdcall;
    function get_Caption: HRESULT; stdcall;
    function put_WindowStyle: HRESULT; stdcall;
    function get_WindowStyle: HRESULT; stdcall;
    function put_WindowStyleEx: HRESULT; stdcall;
    function get_WindowStyleEx: HRESULT; stdcall;
    function put_AutoShow(AutoShow:integer ): HRESULT; stdcall;
    function get_AutoShow: HRESULT; stdcall;
    function put_WindowState: HRESULT; stdcall;
    function get_WindowState: HRESULT; stdcall;
    function put_BackgroundPalette: HRESULT; stdcall;
    function get_BackgroundPalette: HRESULT; stdcall;
    function put_Visible: HRESULT; stdcall;
    function get_Visible: HRESULT; stdcall;
    function put_Left: HRESULT; stdcall;
    function get_Left: HRESULT; stdcall;
    function put_Width: HRESULT; stdcall;
    function get_Width: HRESULT; stdcall;
    function put_Top: HRESULT; stdcall;
    function get_Top: HRESULT; stdcall;
    function put_Height: HRESULT; stdcall;
    function get_Height: HRESULT; stdcall;
    function put_Owner: HRESULT; stdcall;
    function get_Owner: HRESULT; stdcall;
    function put_MessageDrain: HRESULT; stdcall;
    function get_MessageDrain: HRESULT; stdcall;
    function get_BorderColor: HRESULT; stdcall;
    function put_BorderColor: HRESULT; stdcall;
    function get_FullScreenMode: HRESULT; stdcall;
    function put_FullScreenMode: HRESULT; stdcall;
    function SetWindowForeground: HRESULT; stdcall;
    function NotifyOwnerMessage: HRESULT; stdcall;
    function SetWindowPosition: HRESULT; stdcall;
    function GetWindowPosition: HRESULT; stdcall;
    function GetMinIdealImageSize: HRESULT; stdcall;
    function GetMaxIdealImageSize: HRESULT; stdcall;
    function GetRestorePosition: HRESULT; stdcall;
    function HideCursor: HRESULT; stdcall;
    function IsCursorHidden: HRESULT; stdcall;
  end;
  IID_IIEVideoWindow=IIEVideoWindow;

  IIECaptureGraphBuilder2 = interface(IUnknown)
    ['{93E5A4E0-2D50-11d2-ABFA-00A0C9C6E38D}']
    function SetFiltergraph(pfg: IIEGraphBuilder): HRESULT; stdcall;
    function GetFiltergraph: HRESULT; stdcall;
    function SetOutputFileName(const pType: TGUID; lpwstrFile: PWideChar; var ppf: IIEBaseFilter; var pSink: IIEFileSinkFilter): HRESULT; stdcall;
    function FindInterface(pCategory, pType: PGUID; pf: IIEBaseFilter; const riid: TGUID; var ppint: IUnknown): HRESULT; stdcall;
    function RenderStream(pCategory: PGUID; pType: PGUID; pSource: IUnknown; pIntermediate: IIEBaseFilter; pSink: IIEBaseFilter): HRESULT; stdcall;
    function ControlStream(pCategory: PGUID; pType: PGUID; pFilter: IIEBaseFilter; pstart: PIEREFERENCE_TIME; pstop: PIEREFERENCE_TIME; wStartCookie: word; wStopCookie: word): HRESULT; stdcall;
    function AllocCapFile: HRESULT; stdcall;
    function CopyCaptureFile: HRESULT; stdcall;
    function FindPin(pSource: IUnknown; pindir: integer; pCategory: PGUID; pType: PGUID; fUnconnected: longbool; num: integer; var ppPin: IIEPin): HRESULT; stdcall;
  end;
  IID_IIECaptureGraphBuilder2 = IIECaptureGraphBuilder2;

{!!
<FS>TIEDirectShowState

<FM>Declaration<FC>
}
  TIEDirectShowState = (gsStopped, gsPaused, gsRunning);
{!!}

  IIEMediaControl = interface(IDispatch)
    ['{56a868b1-0ad4-11ce-b03a-0020af0ba770}']
    function Run: HRESULT; stdcall;
    function Pause: HRESULT; stdcall;
    function Stop: HRESULT; stdcall;
    function GetState(msTimeout: dword; var pfs: TIEDirectShowState): HRESULT; stdcall;
    function RenderFile: HRESULT; stdcall;
    function AddSourceFilter: HRESULT; stdcall;
    function get_FilterCollection: HRESULT; stdcall;
    function get_RegFilterCollection: HRESULT; stdcall;
    function StopWhenReady: HRESULT; stdcall;
  end;
  IID_IIEMediaControl = IIEMediaControl;

  IIEMediaSeeking = interface(IUnknown)
    ['{36b73880-c2c8-11cf-8b46-00805f6cef60}']
    function GetCapabilities: HRESULT; stdcall;
    function CheckCapabilities: HRESULT; stdcall;
    function IsFormatSupported: HRESULT; stdcall;
    function QueryPreferredFormat: HRESULT; stdcall;
    function GetTimeFormat(pFormat: PGUID): HRESULT; stdcall;
    function IsUsingTimeFormat: HRESULT; stdcall;
    function SetTimeFormat(pFormat: PGUID): HRESULT; stdcall;
    function GetDuration(pDuration: PIEREFERENCE_TIME): HRESULT; stdcall;
    function GetStopPosition(var pstop:int64): HRESULT; stdcall;
    function GetCurrentPosition(pCurrent: PIEREFERENCE_TIME): HRESULT; stdcall;
    function ConvertTimeFormat(pTarget:PIEREFERENCE_TIME; pTargetFormat:PGUID; Source:PIEREFERENCE_TIME; pSourceFormat:PGUID): HRESULT; stdcall;
    function SetPositions(pCurrent: PIEREFERENCE_TIME; dwCurrentFlags: dword; pStop: PIEREFERENCE_TIME; dwStopFlags: dword): HRESULT; stdcall;
    function GetPositions(pCurrent: PIEREFERENCE_TIME; pStop: PIEREFERENCE_TIME): HRESULT; stdcall;
    function GetAvailable(var pEarliest:int64; var pLatest:int64): HRESULT; stdcall;
    function SetRate(dRate: double): HRESULT; stdcall;
    function GetRate(dRate: pdouble): HRESULT; stdcall;
    function GetPreroll: HRESULT; stdcall;
  end;
  IID_IIEMediaSeeking = IIEMediaSeeking;

  IIEMediaEvent = interface(IDispatch)
    ['{56a868b6-0ad4-11ce-b03a-0020af0ba770}']
    function GetEventHandle: HRESULT; stdcall;
    function GetEvent(var lEventCode: integer; var lParam1: integer; var lParam2: integer; msTimeout: integer): HRESULT; stdcall;
    function WaitForCompletion(msTimeout: integer; var pEvCode: integer): HRESULT; stdcall;
    function CancelDefaultHandling: HRESULT; stdcall;
    function RestoreDefaultHandling: HRESULT; stdcall;
    function FreeEventParams(lEventCode: integer; lParam1: integer; lParam2: integer): HRESULT; stdcall;
  end;
  IID_IIEMediaEvent = IIEMediaEvent;

  IIEMediaEventEx = interface(IIEMediaEvent)
    ['{56a868c0-0ad4-11ce-b03a-0020af0ba770}']
    function SetNotifyWindow(hwnd: THandle; lMsg: integer; lInstanceData: integer): HRESULT; stdcall;
    function SetNotifyFlags: HRESULT; stdcall;
    function GetNotifyFlags: HRESULT; stdcall;
  end;
  IID_IIEMediaEventEx = IIEMediaEventEx;

  IEVIDEOINFOHEADER = record
    rcSource: TRect;
    rcTarget: TRect;
    dwBitRate: dword;
    dwBitErrorRate: dword;
    AvgTimePerFrame: IEREFERENCE_TIME;
    bmiHeader: TBITMAPINFOHEADER;
  end;
  PIEVIDEOINFOHEADER = ^IEVIDEOINFOHEADER;

  IIEMediaSample = interface(IUnknown)
    ['{56a8689a-0ad4-11ce-b03a-0020af0ba770}']
    function GetPointer: HRESULT; stdcall;
    function GetSize: integer; stdcall;
    function GetTime: HRESULT; stdcall;
    function SetTime: HRESULT; stdcall;
    function IsSyncPoint: HRESULT; stdcall;
    function SetSyncPoint: HRESULT; stdcall;
    function IsPreroll: HRESULT; stdcall;
    function SetPreroll: HRESULT; stdcall;
    function GetActualDataLength: integer; stdcall;
    function SetActualDataLength: HRESULT; stdcall;
    function GetMediaType: HRESULT; stdcall;
    function SetMediaType: HRESULT; stdcall;
    function IsDiscontinuity: HRESULT; stdcall;
    function SetDiscontinuity: HRESULT; stdcall;
    function GetMediaTime: HRESULT; stdcall;
    function SetMediaTime: HRESULT; stdcall;
  end;

  IIESampleGrabberCB = interface(IUnknown)
    ['{0579154A-2B53-4994-B0D0-E773148EFF85}']
    function SampleCB(SampleTime: double; pSample: IIEMediaSample): HRESULT; stdcall;
    function BufferCB(SampleTime: double; pBuffer: pbyte; BufferLen: integer): HRESULT; stdcall;
  end;

  IIESampleGrabber = interface(IUnknown)
    ['{6B652FFF-11FE-4fce-92AD-0266B5D7C78F}']
    function SetOneShot: HRESULT; stdcall;
    function SetMediaType(pType: PIEAM_MEDIA_TYPE): HRESULT; stdcall;
    function GetConnectedMediaType(pType: PIEAM_MEDIA_TYPE): HRESULT; stdcall;
    function SetBufferSamples(BufferThem: longbool): HRESULT; stdcall;
    function GetCurrentBuffer(pBufferSize: pinteger; pBuffer: pointer): HRESULT; stdcall;
    function GetCurrentSample: HRESULT; stdcall;
    function SetCallback(pCallback: IIESampleGrabberCB; WhichMethodToCallback: integer): HRESULT; stdcall;
  end;
  IID_IIESampleGrabber = IIESampleGrabber;

{!!
<FS>TIETimeFormat

<FM>Declaration<FC>
}
  TIETimeFormat = (tfNone, tfFrame, tfSample, tfField, tfByte, tfTime);
{!!}

  TIESampleGrabberCB = class(TInterfacedObject, IIESampleGrabberCB)
  private
    fOwner: TObject; // a TIEDirectShow object
  public
    constructor Create(Owner: TObject);
    destructor Destroy; override;
    function SampleCB(SampleTime: double; pSample: IIEMediaSample): HRESULT; stdcall;
    function BufferCB(SampleTime: double; pBuffer: pbyte; BufferLen: integer): HRESULT; stdcall;
  end;

  IIEAMStreamConfig = interface(IUnknown)
    ['{C6E13340-30AC-11d0-A18C-00A0C9118956}']
    function SetFormat(pmt: PIEAM_MEDIA_TYPE): HRESULT; stdcall;
    function GetFormat(var ppmt: PIEAM_MEDIA_TYPE): HRESULT; stdcall;
    function GetNumberOfCapabilities(var piCount, piSize: Integer): HRESULT; stdcall;
    function GetStreamCaps(iIndex: Integer; var ppmt: PIEAM_MEDIA_TYPE; pSCC: pointer): HRESULT; stdcall;
  end;
  IID_IIEAMStreamConfig = IIEAMStreamConfig;

  IIEAMCrossbar = interface(IUnknown)
    ['{C6E13380-30AC-11d0-A18C-00A0C9118956}']
    function get_PinCounts(var OutputPinCount: integer; var InputPinCount: integer): HRESULT; stdcall;
    function CanRoute(OutputPinIndex: integer; InputPinIndex: integer): HRESULT; stdcall;
    function Route(OutputPinIndex: integer; InputPinIndex: integer): HRESULT; stdcall;
    function get_IsRoutedTo(OutputPinIndex: integer; var InputPinIndex: integer): HRESULT; stdcall;
    function get_CrossbarPinInfo(IsInputPin: longbool; PinIndex: integer; var PinIndexRelated: integer; var PhysicalType: integer): HRESULT; stdcall;
  end;
  IID_IIEAMCrossBar = IIEAMCrossBar;

  IIEAMTuner = interface(IUnknown)
    ['{211A8761-03AC-11d1-8D13-00AA00BD8339}']
    function put_Channel(lChannel: integer; lVideoSubChannel: integer; lAudioSubChannel: integer): HRESULT; stdcall;
    function get_Channel(var plChannel: integer; var plVideoSubChannel: integer; var plAudioSubChannel: integer): HRESULT; stdcall;
    function ChannelMinMax: HRESULT; stdcall;
    function put_CountryCode: HRESULT; stdcall;
    function get_CountryCode: HRESULT; stdcall;
    function put_TuningSpace(lTuningSpace: integer): HRESULT; stdcall;
    function get_TuningSpace: HRESULT; stdcall;
    function Logon: HRESULT; stdcall;
    function Logout: HRESULT; stdcall;
    function SignalPresent(var plSignalStrength: integer): HRESULT; stdcall;
    function put_Mode: HRESULT; stdcall;
    function get_Mode: HRESULT; stdcall;
    function GetAvailableModes: HRESULT; stdcall;
    function RegisterNotificationCallBack: HRESULT; stdcall;
    function UnRegisterNotificationCallBack: HRESULT; stdcall;
  end;
  IID_IIEAMTuner = IIEAMTuner;

  IIEAMTVTuner = interface(IIEAMTuner)
    ['{211A8766-03AC-11d1-8D13-00AA00BD8339}']
    function get_AvailableTVFormats: HRESULT; stdcall;
    function get_TVFormat: HRESULT; stdcall;
    function AutoTune(lChannel: integer; var plFoundSignal: integer): HRESULT; stdcall;
    function StoreAutoTune: HRESULT; stdcall;
    function get_NumInputConnections: HRESULT; stdcall;
    function put_InputType: HRESULT; stdcall;
    function get_InputType: HRESULT; stdcall;
    function put_ConnectInput: HRESULT; stdcall;
    function get_ConnectInput: HRESULT; stdcall;
    function get_VideoFrequency: HRESULT; stdcall;
    function get_AudioFrequency: HRESULT; stdcall;
  end;
  IID_IIEAMTVTuner = IIEAMTVTuner;

  IIEVideoFrameStep = interface(IUnknown)
    ['{e46a9787-2b71-444d-a4b5-1fab7b708d6a}']
    function Step(dwFrames:DWORD; pStepObject:IUnknown):HRESULT; stdcall;
    function CanStep(bMultiple:integer; pStepObject:IUnknown):HRESULT; stdcall;
    function CancelStep:HRESULT; stdcall;
  end;
  IID_IIEVideoFrameStep = IIEVideoFrameStep;

  IIEMediaDet = interface(IUnknown)
    ['{65BD0710-24D2-4ff7-9324-ED2E5D3ABAFA}']
    function get_Filter(var pVal:IUnknown):HRESULT; stdcall;
    function put_Filter(newVal:IUnknown ):HRESULT; stdcall;
    function get_OutputStreams(pVal:pinteger):HRESULT; stdcall;
    function get_CurrentStream(pVal:pinteger):HRESULT; stdcall;
    function put_CurrentStream(newVal:integer):HRESULT; stdcall;
    function get_StreamType(pVal:PGUID):HRESULT; stdcall;
    function get_StreamTypeB(var pVal:PWideChar):HRESULT; stdcall;
    function get_StreamLength(pVal:pdouble):HRESULT; stdcall;
    function get_Filename(var pVal:PWideChar):HRESULT; stdcall;
    function put_Filename(newVal:PWideChar):HRESULT; stdcall;
    function GetBitmapBits(
            StreamTime:double;
            pBufferSize:pinteger;
            pBuffer:pchar;
            Width:integer;
            Height:integer):HRESULT; stdcall;
    function WriteBitmapBits(
            StreamTime:double;
            Width:integer;
            Height:integer;
            Filename:PWideChar):HRESULT; stdcall;
    function get_StreamMediaType(pVal:PIEAM_MEDIA_TYPE):HRESULT; stdcall;
    function GetSampleGrabber(var ppVal:IIESampleGrabber):HRESULT; stdcall;
    function get_FrameRate(pVal:pdouble):HRESULT; stdcall;
    function EnterBitmapGrabMode(SeekTime:double):HRESULT; stdcall;
  end;
  IID_IIEMediaDet = IIEMediaDet;

  IIEVMRWindowlessControl = interface(IUnknown)
    ['{0eb1088c-4dcd-46f0-878f-39dae86a51b7}']
    function GetNativeVideoSize(
            lpWidth:pinteger;
            lpHeight:pinteger;
            lpARWidth:pinteger;
            lpARHeight:pinteger):HRESULT; stdcall;
    function GetMinIdealVideoSize(
            lpWidth:pinteger;
            lpHeight:pinteger):HRESULT; stdcall;
    function GetMaxIdealVideoSize(
            lpWidth:pinteger;
            lpHeight:pinteger):HRESULT; stdcall;
    function SetVideoPosition(
            lpSRCRect:PRect;
            lpDSTRect:PRect):HRESULT; stdcall;
    function GetVideoPosition(
            lpSRCRect:PRect;
            lpDSTRect:PRect):HRESULT; stdcall;
    function GetAspectRatioMode(
            lpAspectRatioMode:PDWORD):HRESULT; stdcall;
    function SetAspectRatioMode(
            AspectRatioMode:DWORD):HRESULT; stdcall;
    function SetVideoClippingWindow(
            hwnd:THandle):HRESULT; stdcall;
    function RepaintVideo(
            hwnd:THandle;
            hdc:THandle):HRESULT; stdcall;
    function DisplayModeChanged():HRESULT; stdcall;
    function GetCurrentImage(
            var lpDib:pbyte):HRESULT; stdcall;
    function SetBorderColor(
            Clr:DWORD):HRESULT; stdcall;
    function GetBorderColor(
            lpClr:PDWORD):HRESULT; stdcall;
    function SetColorKey(
            Clr:DWORD):HRESULT; stdcall;
    function GetColorKey(
            lpClr:PDWORD):HRESULT; stdcall;
  end;
  IID_IIEVMRWindowlessControl = IIEVMRWindowlessControl;

  IIEVMRFilterConfig = interface(IUnknown)
    ['{9e5530c5-7034-48b4-bb46-0b8a6efc8e36}']
    function SetImageCompositor:HRESULT; stdcall;
    function SetNumberOfStreams(
            dwMaxStreams:DWORD):HRESULT; stdcall;
    function GetNumberOfStreams(
            pdwMaxStreams:PDWORD):HRESULT; stdcall;
    function SetRenderingPrefs(
            dwRenderFlags:DWORD):HRESULT; stdcall;
    function GetRenderingPrefs(
            pdwRenderFlags:PDWORD):HRESULT; stdcall;
    function SetRenderingMode(
            Mode:DWORD):HRESULT; stdcall;
    function GetRenderingMode(
            pMode:PDWORD):HRESULT; stdcall;
  end;
  IID_IIEVMRFilterConfig = IIEVMRFilterConfig;

  IEVMRFrequency = packed record
    dwNumerator:DWORD;
    dwDenominator:DWORD;
  end;

  IEVMRVideoDesc = packed record
    dwSize:DWORD;
    dwSampleWidth:DWORD;
    dwSampleHeight:DWORD;
    SingleFieldPerSample:longbool;
    dwFourCC:DWORD;
    InputSampleFreq:IEVMRFrequency;
    OutputFrameFreq:IEVMRFrequency;
  end;
  PIEVMRVideoDesc = ^IEVMRVideoDesc;

  IEVMRDeinterlaceCaps = packed record
    dwSize:DWORD;
    dwNumPreviousOutputFrames:DWORD;
    dwNumForwardRefSamples:DWORD;
    dwNumBackwardRefSamples:DWORD;
    DeinterlaceTechnology:DWORD;  //VMRDeinterlaceTech;
  end;
  PIEVMRDeinterlaceCaps = ^IEVMRDeinterlaceCaps;

  IIEVMRDeinterlaceControl = interface(IUnknown)
    ['{bb057577-0db8-4e6a-87a7-1a8c9a505a0f}']
    function GetNumberOfDeinterlaceModes(
            lpVideoDescription:PIEVMRVideoDesc;
            lpdwNumDeinterlaceModes:PDWORD;
            lpDeinterlaceModes:PGUID):HRESULT; stdcall;
    function GetDeinterlaceModeCaps(
            lpDeinterlaceMode:PGUID;
            lpVideoDescription:PIEVMRVideoDesc;
            lpDeinterlaceCaps:PIEVMRDeinterlaceCaps):HRESULT; stdcall;
    function GetDeinterlaceMode(
            dwStreamID:DWORD;
            lpDeinterlaceMode:PGUID):HRESULT; stdcall;
    function SetDeinterlaceMode(
            dwStreamID:DWORD;
            lpDeinterlaceMode:PGUID):HRESULT; stdcall;
    function GetDeinterlacePrefs(
            lpdwDeinterlacePrefs:PDWORD):HRESULT; stdcall;
    function SetDeinterlacePrefs(
            dwDeinterlacePrefs:DWORD):HRESULT; stdcall;
    function GetActualDeinterlaceMode(
            dwStreamID:DWORD;
            lpDeinterlaceMode:PGUID):HRESULT; stdcall;
  end;
  IID_IIEVMRDeinterlaceControl = IIEVMRDeinterlaceControl;

  IEDVD_HMSF_TIMECODE = record
    bHours:BYTE;
    bMinutes:BYTE;
    bSeconds:BYTE;
    bFrames:BYTE;
  end;

  IEDVD_PLAYBACK_LOCATION2 = record
    TitleNum:ULONG;
    ChapterNum:ULONG;
    TimeCode:IEDVD_HMSF_TIMECODE;
    TimeCodeFlags:ULONG;
  end;

  IEAM_DVD_RENDERSTATUS=packed record
    hrVPEStatus:HRESULT ;
    bDVDVolInvalid:longbool    ;
    bDVDVolUnknown:longbool    ;
    bNoLine21In:longbool    ;
    bNoLine21Out:longbool    ;
    iNumStreams:integer     ;
    iNumStreamsFailed:integer     ;
    dwFailedStreamsFlag:DWORD   ;
  end;
  PIEAM_DVD_RENDERSTATUS=^IEAM_DVD_RENDERSTATUS;

  IIEDvdGraphBuilder = interface(IUnknown)
    ['{FCC152B6-F372-11d0-8E00-00C04FD7C08B}']
    function GetFiltergraph( var ppGB:IIEGraphBuilder ) : HRESULT; stdcall;
    function GetDvdInterface( const riid: TGUID ; out ppint): HRESULT; stdcall;
    function RenderDvdVideoVolume( lpcwszPathName:pwchar; dwFlags:DWORD ; pStatus:PIEAM_DVD_RENDERSTATUS ): HRESULT; stdcall;
  end;

  IIEDvdCmd = interface(IUnknown)
    ['{5a4a97e4-94ee-4a55-9751-74b5643aa27d}']
    function WaitForStart: HRESULT; stdcall;
    function WaitForEnd: HRESULT; stdcall;
  end;
  PIIEDvdCmd=^IIEDvdCmd;


  IIEDvdControl2 = interface(IUnknown)
    ['{33BC7430-EEC0-11D2-8201-00A0C9D74842}']
    function PlayTitle(uiTitle:ULONG ;  dwFlags:DWORD ;  ppCmd:PIIEDvdCmd ): HRESULT; stdcall;
    function PlayChapterInTitle(ulTitle:ULONG; ulChapter:ULONG; dwFlags:DWORD; var ppCmd:IIEDvdCmd): HRESULT; stdcall;
    function PlayAtTimeInTitle(uiTitle:ULONG; var pTime:IEDVD_HMSF_TIMECODE; dwFlags:DWORD; var ppCmd:IIEDvdCmd):HRESULT; stdcall;
    function Stop: HRESULT; stdcall;
    function ReturnFromSubmenu: HRESULT; stdcall;
    function PlayAtTime: HRESULT; stdcall;
    function PlayChapter(ulChapter:ULONG;  dwFlags:DWORD ;  ppCmd:PIIEDvdCmd): HRESULT; stdcall;
    function PlayPrevChapter: HRESULT; stdcall;
    function ReplayChapter: HRESULT; stdcall;
    function PlayNextChapter(  dwFlags:DWORD; ppCmd:PIIEDvdCmd): HRESULT; stdcall;
    function PlayForwards(dwSpeed:double ; dwFlags:DWORD; var ppCmd:IIEDvdCmd): HRESULT; stdcall;
    function PlayBackwards(dwSpeed:double ; dwFlags:DWORD; var ppCmd:IIEDvdCmd): HRESULT; stdcall;
    function ShowMenu(MenuID:ULONG; dwFlags:DWORD; var ppCmd:IIEDvdCmd): HRESULT; stdcall;
    function Resume: HRESULT; stdcall;
    function SelectRelativeButton: HRESULT; stdcall;
    function ActivateButton: HRESULT; stdcall;
    function SelectButton: HRESULT; stdcall;
    function SelectAndActivateButton: HRESULT; stdcall;
    function StillOff: HRESULT; stdcall;
    function Pause(bState:longbool): HRESULT; stdcall;
    function SelectAudioStream: HRESULT; stdcall;
    function SelectSubpictureStream: HRESULT; stdcall;
    function SetSubpictureState: HRESULT; stdcall;
    function SelectAngle: HRESULT; stdcall;
    function SelectParentalLevel: HRESULT; stdcall;
    function SelectParentalCountry: HRESULT; stdcall;
    function SelectKaraokeAudioPresentationMode: HRESULT; stdcall;
    function SelectVideoModePreference: HRESULT; stdcall;
    function SetDVDDirectory: HRESULT; stdcall;
    function ActivateAtPosition: HRESULT; stdcall;
    function SelectAtPosition(piont:TPoint): HRESULT; stdcall;
    function PlayChaptersAutoStop: HRESULT; stdcall;
    function AcceptParentalLevelChange: HRESULT; stdcall;
    function SetOption(flag:integer; Enable:longbool): HRESULT; stdcall;
    function SetState: HRESULT; stdcall;
    function PlayPeriodInTitleAutoStop: HRESULT; stdcall;
    function SetGPRM: HRESULT; stdcall;
    function SelectDefaultMenuLanguage: HRESULT; stdcall;
    function SelectDefaultAudioLanguage: HRESULT; stdcall;
    function SelectDefaultSubpictureLanguage: HRESULT; stdcall;
  end;
  IID_IIEDvdControl2=IIEDvdControl2;


  IIEDvdControl=interface(IUnknown)
    ['{A70EFE61-E2A3-11d0-A9BE-00AA0061BE93}']
    function TitlePlay(uiTitle:ULONG ): HRESULT; stdcall;
    function ChapterPlay: HRESULT; stdcall;
    function TimePlay: HRESULT; stdcall;
    function StopForResume: HRESULT; stdcall;
    function GoUp: HRESULT; stdcall;
    function TimeSearch: HRESULT; stdcall;
    function ChapterSearch: HRESULT; stdcall;
    function PrevPGSearch: HRESULT; stdcall;
    function TopPGSearch: HRESULT; stdcall;
    function NextPGSearch: HRESULT; stdcall;
    function ForwardScan: HRESULT; stdcall;
    function BackwardScan: HRESULT; stdcall;
    function MenuCall: HRESULT; stdcall;
    function Resume: HRESULT; stdcall;
    function UpperButtonSelect: HRESULT; stdcall;
    function LowerButtonSelect: HRESULT; stdcall;
    function LeftButtonSelect: HRESULT; stdcall;
    function RightButtonSelect: HRESULT; stdcall;
    function ButtonActivate: HRESULT; stdcall;
    function ButtonSelectAndActivate: HRESULT; stdcall;
    function StillOff: HRESULT; stdcall;
    function PauseOn: HRESULT; stdcall;
    function PauseOff: HRESULT; stdcall;
    function MenuLanguageSelect: HRESULT; stdcall;
    function AudioStreamChange: HRESULT; stdcall;
    function SubpictureStreamChange: HRESULT; stdcall;
    function AngleChange: HRESULT; stdcall;
    function ParentalLevelSelect: HRESULT; stdcall;
    function ParentalCountrySelect: HRESULT; stdcall;
    function KaraokeAudioPresentationModeChange: HRESULT; stdcall;
    function VideoModePreferrence: HRESULT; stdcall;
    function SetRoot: HRESULT; stdcall;
    function MouseActivate: HRESULT; stdcall;
    function MouseSelect: HRESULT; stdcall;
    function ChapterPlayAutoStop: HRESULT; stdcall;
  end;
  IID_IIEDvdControl=IIEDvdControl;

  IIEDvdInfo2=interface(IUnknown)
    ['{34151510-EEC0-11D2-8201-00A0C9D74842}']
      function GetCurrentDomain: HRESULT; stdcall;
      function GetCurrentLocation(var pLocation:IEDVD_PLAYBACK_LOCATION2): HRESULT; stdcall;
      function GetTotalTitleTime(var pTotalTime:IEDVD_HMSF_TIMECODE; var pulTimeCodeFlags:ULONG): HRESULT; stdcall;
      function GetCurrentButton: HRESULT; stdcall;
      function GetCurrentAngle: HRESULT; stdcall;
      function GetCurrentAudio: HRESULT; stdcall;
      function GetCurrentSubpicture: HRESULT; stdcall;
      function GetCurrentUOPS: HRESULT; stdcall;
      function GetAllSPRMs: HRESULT; stdcall;
      function GetAllGPRMs: HRESULT; stdcall;
      function GetAudioLanguage: HRESULT; stdcall;
      function GetSubpictureLanguage: HRESULT; stdcall;
      function GetTitleAttributes: HRESULT; stdcall;
      function GetVMGAttributes: HRESULT; stdcall;
      function GetCurrentVideoAttributes: HRESULT; stdcall;
      function GetAudioAttributes: HRESULT; stdcall;
      function GetKaraokeAttributes: HRESULT; stdcall;
      function GetSubpictureAttributes: HRESULT; stdcall;
      function GetDVDVolumeInfo(var pulNumOfVolumes:ULONG; var pulVolume:ULONG; var pSide:ULONG; var pulNumOfTitles:ULONG): HRESULT; stdcall;
      function GetDVDTextNumberOfLanguages: HRESULT; stdcall;
      function GetDVDTextLanguageInfo: HRESULT; stdcall;
      function GetDVDTextStringAsNative: HRESULT; stdcall;
      function GetDVDTextStringAsUnicode: HRESULT; stdcall;
      function GetPlayerParentalLevel: HRESULT; stdcall;
      function GetNumberOfChapters(ulTitle:ULONG; var pulNumOfChapters:ULONG): HRESULT; stdcall;
      function GetTitleParentalLevels: HRESULT; stdcall;
      function GetDVDDirectory: HRESULT; stdcall;
      function IsAudioStreamEnabled: HRESULT; stdcall;
      function GetDiscID(pszwPath:pointer; var pullDiscID:int64): HRESULT; stdcall;
      function GetState: HRESULT; stdcall;
      function GetMenuLanguages: HRESULT; stdcall;
      function GetButtonAtPosition: HRESULT; stdcall;
      function GetCmdFromEvent: HRESULT; stdcall;
      function GetDefaultMenuLanguage: HRESULT; stdcall;
      function GetDefaultAudioLanguage: HRESULT; stdcall;
      function GetDefaultSubpictureLanguage: HRESULT; stdcall;
      function GetDecoderCaps: HRESULT; stdcall;
      function GetButtonRect: HRESULT; stdcall;
      function IsSubpictureStreamEnabled: HRESULT; stdcall;
    end;
  IID_IIEDvdInfo2=IIEDvdInfo2;

  IIEVMRAspectRatioControl = interface(IUnknown)
    ['{ede80b5c-bad6-4623-b537-65586c9f8dfd}']
    function GetAspectRatioMode(lpdwARMode:PDWORD):HRESULT; stdcall;
    function SetAspectRatioMode(dwARMode:DWORD):HRESULT; stdcall;
  end;
  IID_IIEVMRAspectRatioControl=IIEVMRAspectRatioControl;

  IIEAMGraphStreams = interface(IUnknown)
    ['{632105FA-072E-11d3-8AF9-00C04FB6BD3D}']
    function FindUpstreamInterface:HRESULT; stdcall;
    function SyncUsingStreamOffset(bUseStreamOffset:longbool):HRESULT; stdcall;
    function SetMaxGraphLatency(rtMaxGraphLatency:IEREFERENCE_TIME):HRESULT; stdcall;
  end;
  IID_IIEAMGraphStreams=IIEAMGraphStreams;

{!!
<FS>TIEPropertyPages

<FM>Declaration<FC>
}
  TIEPropertyPages = (iepVideoInput, iepAudioInput, iepVideoCodec, iepAudioCodec, iepVideoInputSource, iepTuner);
{!!}

{!!
<FS>TIEPropertyPagesType

<FM>Declaration<FC>
}
  TIEPropertyPagesType = (ietFilter, ietInput, ietOutput);
{!!}

{!!
<FS>TIEVideoFormat

<FM>Declaration<FC>
}
  TIEVideoFormat = class
    Format: string; // pixels format
    BitRate: integer; // Approximate data rate of the video stream, in bits per second.
    VideoStandard: string; // The analog video standard supported.
    MinWidth: integer;
    MinHeight: integer;
    MaxWidth: integer;
    MaxHeight: integer;
    GranularityX: integer;
    GranularityY: integer;
  end;
{!!}

{!!
<FS>TIEReferenceClock

<FM>Declaration<FC>
TIEReferenceClock=(rcDefault, rcNone, rcSystemClock, rcVideoInput, rcVideoOutput, rcAudioInput, rcAudioOutput);

<FM>Description<FN>
<TABLE>
<R> <H>Value</H> <H>Description</H> </R>
<R> <C>rcDefault</C> <C>Default DirectShow setting</C> </R>
<R> <C>rcNone</C> <C>No synchronism used</C> </R>
<R> <C>rcSystemClock</C> <C>Use system clock</C> </R>
<R> <C>rcVideoInput</C> <C>Video input is the synch reference</C> </R>
<R> <C>rcVideoOutput</C> <C>Video output is the synch reference</C> </R>
<R> <C>rcAudioInput</C> <C>Audio input is the synch reference</C> </R>
<R> <C>rcAudioOutput</C> <C>Audio output is the sync reference</C> </R>
</TABLE>
!!}
TIEReferenceClock=(rcDefault, rcNone, rcSystemClock, rcVideoInput, rcVideoOutput, rcAudioInput, rcAudioOutput);

{!!
<FS>TIEDirectShow

<FM>Description<FN>
TIEDirectShow class allows control of some Direct Show features, such as video capture, audio capture, multimedia files capture as well video rendering, and multimedia file writing.

<FM>Methods<FN>

    <A TIEDirectShow.BufferToTIEBitmap>
    <A TIEDirectShow.Connect>
    <A TIEDirectShow.ConvertTimeFormat>
    <A TIEDirectShow.Disconnect>
    <A TIEDirectShow.DVDActivateButton>
    <A TIEDirectShow.DVDSelectAt>
    <A TIEDirectShow.DVDGetProperty>
    <A TIEDirectShow.DVDPlayAdvanced>
    <A TIEDirectShow.DVDPlayAt>
    <A TIEDirectShow.DVDShowMenu>
    <A TIEDirectShow.GetAverageTimePerFrame>
    <A TIEDirectShow.GetCurrentVideoFormat>
    <A TIEDirectShow.GetEventCode>
    <A TIEDirectShow.GetSample>
    <A TIEDirectShow.GetSupportedTVStandards>
    <A TIEDirectShow.GetVideoRenderNativeSize>
    <A TIEDirectShow.GetVideoRenderRect>
    <A TIEDirectShow.Pause>
    <A TIEDirectShow.RepaintVideo>
    <A TIEDirectShow.Run>
    <A TIEDirectShow.SaveGraph>
    <A TIEDirectShow.SetAudioCodec>
    <A TIEDirectShow.SetAudioInput>
    <A TIEDirectShow.SetCurrentVideoFormat>
    <A TIEDirectShow.SetNotifyWindow>
    <A TIEDirectShow.SetTVStandard>
    <A TIEDirectShow.SetVCRHorizontalLocking>
    <A TIEDirectShow.SetVideoCodec>
    <A TIEDirectShow.SetVideoInput>
    <A TIEDirectShow.SetVideoRenderRect>
    <A TIEDirectShow.ShowPropertyPages>
    <A TIEDirectShow.State>
    <A TIEDirectShow.Step>
    <A TIEDirectShow.Stop>
    <A TIEDirectShow.TunerFindSignal>


<FM>Properties<FN>

    <A TIEDirectShow.AudioCodecs>
    <A TIEDirectShow.AudioInputs>
    <A TIEDirectShow.ClockErrorTolerance>
    <A TIEDirectShow.Connected>
    <A TIEDirectShow.Duration>
    <A TIEDirectShow.DVDInputPath>
    <A TIEDirectShow.EnableSampleGrabber>
    <A TIEDirectShow.EndOfStream>
    <A TIEDirectShow.FileInput>
    <A TIEDirectShow.FileOutput>
    <A TIEDirectShow.NotifyWindow>
    <A TIEDirectShow.Position>
    <A TIEDirectShow.Rate>
    <A TIEDirectShow.ReferenceClock>
    <A TIEDirectShow.RenderAudio>
    <A TIEDirectShow.RenderVideo>
    <A TIEDirectShow.TimeFormat>
    <A TIEDirectShow.TunerChannel>
    <A TIEDirectShow.VideoCodecQuality>
    <A TIEDirectShow.VideoCodecs>
    <A TIEDirectShow.VideoFormats>
    <A TIEDirectShow.VideoFormatsCount>
    <A TIEDirectShow.VideoInputs>
    <A TIEDirectShow.VideoInputSource>
    <A TIEDirectShow.VideoInputSources>
!!}
  TIEDirectShow = class
  private
    // capture filters lists
    fAudioInputs: TStringList;
    fVideoInputs: TStringList;
    // compression filters list
    fVideoCodecs: TStringList;
    fAudioCodecs: TStringList;
    //
    fVideoFormats: TList; // array of TIEVideoFormat classes
    fVideoInputSources: TStringList; // crossbar inputs
    // conversion filters
    fCurColor: IIEBaseFilter;
    // currently input filters
    fCurAudioInput: IIEBaseFilter;
    fCurVideoInput: IIEBaseFilter;
    fCurFileInput: IIEBaseFilter; // this implies that fCurAudioInput=nil and fCurVideoIinput=nil
    // file input
    fFileInput: string;
    // currently compression filters
    fCurVideoCodec: IIEBaseFilter;
    fCurAudioCodec: IIEBaseFilter;
    fIAMVideoCompression: IIEAMVideoCompression;
    // output file name
    fFileOutput: string;
    // currenly filter graph
    fGraph: IIEGraphBuilder;
    fBuilder: IIECaptureGraphBuilder2;
    fControl: IIEMediaControl;
    fMediaSeeking: IIEMediaSeeking;
    fMediaEvent: IIEMediaEventEx;
    fStreamConfig: IIEAMStreamConfig;
    fCrossBarFilter: IIEBaseFilter; // the same of fcrossbar but viewed as IIEBaseFilter
    fCrossBar: IIEAMCrossBar;
    fTuner: IIEAMTvTuner;
    fTunerFilter: IIEBaseFilter; // the same of fTuner but viewed as IIEBaseFilter
    fVideoFrameStep:IIEVideoFrameStep;
    fAnalogVideoDecoder:IIEAMAnalogVideoDecoder;
    fClockSlave:IIEAMClockSlave;
    // currenly sample grabber filter
    fSampleGrabber: IIEBaseFilter;
    fSampleGrabberFilter: IIESampleGrabber; // ISampleGrabber queried from fSampleGrabber filter
    fEnableSampleGrabber: boolean;
    fSampleGrabberCB: TIESampleGrabberCB; // sample grabber callback
    // renderer
    fNullRenderer: IIEBaseFilter;
    // avi decompressor
    fAVIDecompressor: IIEBaseFilter;
    // video render
    fRenderVideo:boolean;
    fVideoMixingRenderer:IIEBaseFilter;
    fVMRFilterConfig:IIEVMRFilterConfig;
    fVMRWindowlessControl:IIEVMRWindowlessControl;
    fVMRSavedPin1,fVMRSavedPin2:IIEPin;
    // notification window
    fNotifyWindow: THandle;
    fNewFrameMessage: integer;
    fEventMessage: integer;
    // other
    fRenderaudio: boolean;
    fReferenceClock:TIEReferenceClock;
    fClockErrorTolerance:integer;
    fSystemClock:IIEReferenceClock;
    // DVD
    fDVDInputPath:widestring;
    fDVDControl2:IIEDvdControl2;
    fDVDInfo2:IIEDvdInfo2;
    // filter graph creation steps
    function GetAudioInputs: TStringList;
    function GetVideoInputs: TStringList;
    function GetVideoCodecs: TStringList;
    function GetAudioCodecs: TStringList;
    //
    procedure SetPosition(v: int64);
    function GetPosition: int64;
    function GetDuration: int64;
    function GetEndOfStream: boolean;
    function GetGraphCreated: boolean;
    procedure SetRate(value: double);
    function GetRate: double;
    procedure SetXTimeFormat(value: TIETimeFormat);
    function GetXTimeFormat: TIETimeFormat;
    procedure SetVideoCodecQuality(value: double);
    function GetVideoCodecQuality: double;
    function ShowFilterPropertyPages(filter: IIEBaseFilter; checkOnly:boolean):boolean;
    function ShowPinPropertyPages(pin: IIEPin; checkOnly:boolean):boolean;
    procedure FillVideoFormats;
    procedure ClearVideoFormats;
    function GetVideoFormats(i: integer): TIEVideoFormat;
    function GetVideoFormatsCount: integer;
    procedure FillVideoInputSources;
    function GetInputSource: integer;
    procedure SetInputSource(value: integer);
    procedure SetVideoTunerChannel(value: integer);
    function GetVideoTunerChannel: integer;
    procedure DVDConnect;
    procedure StdConnect;
    procedure VMRDisconnectInPin;
    procedure VMRReconnectInPin;
    procedure ConnectCrossbarAudioDecoder;
    procedure VMRCreate;
  public
    constructor Create;
    destructor Destroy; override;
    property AudioInputs: TStringList read GetAudioInputs;
    property VideoInputs: TStringList read GetVideoInputs;
    property VideoCodecs: TStringList read GetVideoCodecs;
    property AudioCodecs: TStringList read GetAudioCodecs;
    procedure SetVideoInput(idx: integer; instanceIndex:integer=0);
    procedure SetAudioInput(idx: integer; instanceIndex:integer=0);
    procedure SetVideoCodec(idx: integer);
    procedure SetAudioCodec(idx: integer);

{!!
<FS>TIEDirectShow.FileInput

<FM>Declaration<FC>
property FileInput:string;

<FM>Description<FN>
If you don't want get video from a capture card, but just from a file, you have to set FileInput property with a full path name and a multimedia file.
!!}
    property FileInput: string read fFileInput write fFileInput;

{!!
<FS>TIEDirectShow.FileOutput

<FM>Declaration<FC>
property FileOutput:string;

<FM>Description<FN>
Specifies the full path of the output multimedia file.
!!}
    property FileOutput: string read fFileOutput write fFileOutput;
    
    procedure SaveGraph(filename: string); // save .grf files (readable with graphedit for debug)
    procedure Connect;
    procedure Disconnect;
    property Connected: boolean read GetGraphCreated;
    procedure Run;
    procedure Stop;
    procedure Pause;
    property Rate: double read GetRate write SetRate;
    function State: TIEDirectShowState;
    property Position: int64 read GetPosition write SetPosition;
    property Duration: int64 read GetDuration;
    property EndOfStream: boolean read GetEndOfStream;

{!!
<FS>TIEDirectShow.EnableSampleGrabber

<FM>Declaration<FC>
property EnableSampleGrabber:boolean;

<FM>Description<FN>
If EnableSampleGrabber is True, then an event occurs whenever a new frame is available.
The event is TImageEnView.DShowOnNewFrame (unless you use <A TIEDirectShow.SetNotifyWindow> and use TIEDirectShow as stand alone object).
!!}
    property EnableSampleGrabber: boolean read fEnableSampleGrabber write fEnableSampleGrabber;

    procedure GetSample(DestBitmap: TIEBitmap);
    property TimeFormat: TIETimeFormat read GetXTimeFormat write SetXTimeFormat;
    procedure BufferToTIEBitmap(buffer: pbyte; len: integer; DestBitmap: TIEBitmap);
    procedure SetNotifyWindow(WindowHandle: THandle; NewFrameMessage: integer; EventMessage: integer);
    function GetEventCode(var Event: integer): boolean;
    property VideoCodecQuality: double read GetVideoCodecQuality write SetVideoCodecQuality;
    function ShowPropertyPages(proppages: TIEPropertyPages; proptype: TIEPropertyPagesType; checkOnly:boolean=false):boolean;
    procedure SetCurrentVideoFormat(width, height: integer; format: string);
    procedure GetCurrentVideoFormat(var width, height: integer; var format: string);
    property VideoFormats[i: integer]: TIEVideoFormat read GetVideoFormats;
    property VideoFormatsCount: integer read GetVideoFormatsCount;

{!!
<FS>TIEDirectShow.VideoInputSources

<FM>Declaration<FC>
property VideoInputSources:TStringList;

<FM>Description<FN>
Contains a list of video input sources available for the selected video input.
A video input source is a line input, like Video-Composite, Tuner, etc.
!!}
    property VideoInputSources: TStringList read fVideoInputSources;

    property VideoInputSource: integer read GetInputSource write SetInputSource;
    property TunerChannel: integer read GetVideoTunerChannel write SetVideoTunerChannel;
    function TunerFindSignal: boolean;
    function GetSupportedTVStandards:TIETVStandards;
    procedure SetTVStandard(Value:TIETVStandard);
    procedure SetVCRHorizontalLocking(Value:boolean);

{!!
<FS>TIEDirectShow.RenderAudio

<FM>Declaration<FC>
property RenderAudio:boolean

<FM>Description<FN>
If True renders the audio stream to the default audio renderer.
Sometimes audio is not synchronized with video. To get audio/video synchronized we should interact directly with hardware devices, but this will loss compatibility.
Anyway you could try to play with <A TIEDirectShow.ReferenceClock> and <A TIEDirectShow.ClockErrorTolerance> properties to get better synchronization.
!!}
    property RenderAudio:boolean read fRenderAudio write fRenderAudio;

    function Step(frames:integer):boolean;
    function ConvertTimeFormat(source:int64; sourceFormat:TIETimeFormat; targetFormat:TIETimeFormat):int64;
    function GetAverageTimePerFrame:int64;

{!!
<FS>TIEDirectShow.NotifyWindow

<FM>Declaration<FC>
property NotifyWindow: THandle;

<FM>Description<FN>
Returns current notification window handle.
!!}
    property NotifyWindow: THandle read fNotifyWindow;

{!!
<FS>TIEDirectShow.ReferenceClock

<FM>Declaration<FC>
property ReferenceClock:<A TIEReferenceClock>;

<FM>Description<FN>
Specifies the source of reference clock.
You should change it when audio and video aren't synchronized.
When <A TIEDirectShow.RenderAudio> and <A TIEDirectShow.RenderVideo> are true, it is suggested to set ReferenceClock=rcAudioOutput.
!!}
    property ReferenceClock:TIEReferenceClock read fReferenceclock write fReferenceClock;

{!!
<FS>TIEDirectShow.ClockErrorTolerance

<FM>Declaration<FC>
property ClockErrorTolerance:integer;

<FM>Description<FN>
Sets the maximum tolerance, in milliseconds, of the audio renderer. The value must be from 1 to 1000, inclusive.
!!}
    property ClockErrorTolerance:integer read fClockErrorTolerance write fClockErrorTolerance;

    // video renderer

{!!
<FS>TIEDirectShow.RenderVideo

<FM>Declaration<FC>
property RenderVideo:boolean;

<FM>Description<FN>
When true the video input (from capture card, file or dvd) is displayed inside the component area.
This functionality is available only starting from Windows XP.

<FM>Demos<FN>
capture\VMR_camera
capture\VMR_capture
capture\VMR_DVD
capture\VMR_video
!!}
    property RenderVideo:boolean read fRenderVideo write fRenderVideo;

    procedure SetVideoRenderRect(SrcRect, DstRect:TRect);
    procedure GetVideoRenderRect(var SrcRect:TRect; var DstRect:TRect);
    procedure GetVideoRenderNativeSize(var Width:integer; var Height:integer);
    procedure RepaintVideo(hwnd:THandle; hdc:THandle);

    // DVD

{!!
<FS>TIEDirectShow.DVDInputPath

<FM>Declaration<FC>
property DVDInputPath:WideString;

<FM>Description<FN>
Specifies the driver letter of DVD reader. You can set 'Default' to select default DVD reader.
In order to play DVD inside Delphi IDE please disable "Integrated Debugging".

<FM>Example<FC>
with ImageEnView1.IO.DShowParams do
begin
  DVDInputPath:='Default';
  RenderVideo:=true;
  RenderAudio:=true;
  Connect;
  // Set bitmap size
  GetVideoRenderNativeSize(w,h);
  ImageEnView1.Proc.ImageResize(w,h);
  Run;
end;

<FM>Demos<FN>
capture\VMR_DVD
!!}
    property DVDInputPath:widestring read fDVDInputPath write fDVDInputPath;

    procedure DVDSelectAt(x,y:integer);
    procedure DVDActivateButton;

    procedure DVDPlayAt(Title:integer; Chapter:integer); overload;
    procedure DVDPlayAt(Title:integer; Hours,Minutes,Seconds,Frames:integer); overload;
    function DVDGetProperty(Prop:string; SubProp:string=''):string;
    procedure DVDPlayAdvanced(PlayForward:boolean; Speed:double);
    procedure DVDShowMenu(Menu:TIEDVDMenu);

  end;

//////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////
// TIEMediaReader

{!!
<FS>TIEMediaReader

<FM>Description<FN>
This class allows to get frames from a media file (wmv, mpeg...).
TIEMediaReader is a simple stand-alone class, with one single method to copy the wanted frame to a <A TIEBitmap> object.
Reading of frames could be slow.

<FM>Example<FC>

var media:TIEMediaReader;

media:=TIEMediaReader.Create('video.wmv');

// get frame 0 and save to sample0.jpeg
media.GetSample( 0, ImageEnView1.IEBitmap );
ImageEnView1.IO.SaveToFile('sample0.jpeg');

// get frame 1 and save to sample1.jpeg
media.GetSample( 1, ImageEnView1.IEBitmap );
ImageEnView1.IO.SaveToFile('sample1.jpeg');

...etc...

media.free;

<FM>Methods<FN>

    <A TIEMediaReader.GetSample>


<FM>Properties<FN>

    <A TIEMediaReader.FrameCount>
    <A TIEMediaReader.FrameHeight>
    <A TIEMediaReader.FrameRate>
    <A TIEMediaReader.FrameWidth>
    <A TIEMediaReader.Length>
!!}
  TIEMediaReader = class
  private
    fFileName:string;
    fMediaDet:IIEMediaDet;
    fFrameRate:double;  // frames per seconds
    fLength:double;     // stream length in seconds
    fFrameCount:int64;  // frame count
    fFrameWidth,fFrameHeight:integer;
    fFrameBuffer:pointer;
  public
    constructor Create(const FileName:string);
    destructor Destroy; override;

{!!
<FS>TIEMediaReader.FrameRate

<FM>Declaration<FC>
property FrameRate:double;

<FM>Description<FN>
Returns the frame rate.
!!}
    property FrameRate:double read fFrameRate;

{!!
<FS>TIEMediaReader.Length

<FM>Declaration<FC>
property Length:double;

<FM>Description<FN>
Returns the video length;
!!}
    property Length:double read fLength;

{!!
<FS>TIEMediaReader.FrameCount

<FM>Declaration<FC>
property FrameCount:int64;

<FM>Description<FN>
Returns the number of frames (samples).
!!}
    property FrameCount:int64 read fFrameCount;

    procedure GetSample(frame:int64; OutBitmap:TIEBitmap);

{!!
<FS>TIEMediaReader.FrameWidth

<FM>Declaration<FC>
property FrameWidth:integer;

<FM>Description<FN>
Returns the frame bitmap width.
!!}
    property FrameWidth:integer read fFrameWidth;

{!!
<FS>TIEMediaReader.FrameHeight

<FM>Declaration<FC>
property FrameHeight:integer;
<FM>Description<FN>
Returns the frame bitmap height.
!!}
    property FrameHeight:integer read fFrameHeight;

  end;

// TIEMediaReader
//////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////



implementation

const
  ole32 = 'ole32.dll';

function CoCreateInstance(const clsid: TGUID; unkOuter: IUnknown; dwClsContext: Longint; const iid: TGUID; out pv): HResult; stdcall; external ole32 name 'CoCreateInstance';

function OleInitialize(pwReserved: Pointer): HResult; stdcall; external ole32 name 'OleInitialize';

procedure OleUninitialize; stdcall; external ole32 name 'OleUninitialize';

procedure CoTaskMemFree(pv: pointer); stdcall; external ole32 name 'CoTaskMemFree';
//procedure ReleaseStgMedium(pmedium:pointer); stdcall; external ole32 name 'ReleaseStgMedium';

function FreePropVariantArray(cVariants: ULONG; rgvars: pointer): HRESULT; stdcall; external ole32 name 'FreePropVariantArray';

procedure SysFreeString(pstr: pointer); stdcall; external 'oleaut32.dll' name 'SysFreeString';

function StgCreateDocfile(pwcsName: PWideChar; grfMode: dword; reserved: dword; var ppstgOpen: IIEStorage): HRESULT; stdcall; external ole32 name 'StgCreateDocfile';

function OleCreatePropertyFrame(hwndOwner: THandle; x, y: dword; lpszCaption: pchar; cObjects: dword; lplpUnk: pointer; cPages: dword; lpPageClsID: PGUID; lcid: PGUID; dwReserved: dword; lpvReserved: pointer): HRESULT; stdcall; external 'olepro32.dll' name 'OleCreatePropertyFrame';

const

  VFW_S_CANT_CUE = $40268;


  IEGUIDNULL: TGUID = '{00000000-0000-0000-0000-000000000000}';

  CLSID_SystemDeviceEnum: TGUID = '{62BE5D10-60EB-11d0-BD3B-00A0C911CE86}';
  CLSID_FilterGraph: TGUID = '{e436ebb3-524f-11ce-9f53-0020af0ba770}';
  CLSID_CaptureGraphBuilder2: TGUID = '{BF87B6E1-8C27-11d0-B3F0-00AA003761C5}';
  CLSID_MediaDet: TGUID = '{65BD0711-24D2-4ff7-9324-ED2E5D3ABAFA}';

  CLSID_VideoInputDeviceCategory: TGUID = '{860BB310-5D01-11d0-BD3B-00A0C911CE86}';
  CLSID_LegacyAmFilterCategory: TGUID = '{083863F1-70DE-11d0-BD40-00A0C911CE86}';
  CLSID_VideoCompressorCategory: TGUID = '{33D9A760-90C8-11d0-BD43-00A0C911CE86}';
  CLSID_AudioCompressorCategory: TGUID = '{33D9A761-90C8-11d0-BD43-00A0C911CE86}';
  CLSID_AudioInputDeviceCategory: TGUID = '{33D9A762-90C8-11d0-BD43-00A0C911CE86}';
  CLSID_AudioRendererCategory: TGUID = '{E0F158E1-CB04-11d0-BD4E-00A0C911CE86}';
  CLSID_MidiRendererCategory: TGUID = '{4EFE2452-168A-11d1-BC76-00C04FB9453B}';
  CLSID_SampleGrabber: TGUID = '{C1F400A0-3F08-11d3-9F0B-006008039E37}';
  CLSID_NullRenderer: TGUID = '{C1F400A4-3F08-11d3-9F0B-006008039E37}';

  CLSID_AVIDec: TGUID = '{CF49D4E0-1115-11CE-B03A-0020AF0BA770}';

  CLSID_DvdGraphBuilder: TGUID = '{FCC152B7-F372-11d0-8E00-00C04FD7C08B}';

  CLSID_Colour: TGUID = '{1643e180-90f5-11ce-97d5-00aa0055595a}';

  CLSID_VideoMixingRenderer: TGUID = '{B87BEB7B-8D29-423f-AE4D-6582C10175AC}';
  CLSID_VideoMixingRenderer9: TGUID = '{51b4abf3-748f-4e3b-a276-c828330e926a}';

  CLSID_DVDNavigator: TGUID = '{9B8C4620-2C1A-11d0-8493-00A02438AD48}';

  CLSID_DSoundRender: TGUID = '{79376820-07D0-11cf-A24D-0020AFD79767}';

  CLSID_SystemClock: TGUID = '{e436ebb1-524f-11ce-9f53-0020af0ba770}';

  MEDIASUBTYPE_Avi: TGUID = '{e436eb88-524f-11ce-9f53-0020af0ba770}';
  MEDIASUBTYPE_Asf: TGUID = '{3DB80F90-9412-11d1-ADED-0000F8754B99}';
  MEDIASUBTYPE_WAVE: TGUID = '{e436eb8b-524f-11ce-9f53-0020af0ba770}';
  MEDIASUBTYPE_MPEG1Video: TGUID = '{e436eb86-524f-11ce-9f53-0020af0ba770}';


  PIN_CATEGORY_CAPTURE: TGUID = '{fb6c4281-0353-11d1-905f-0000c0cc16ba}';
  PIN_CATEGORY_PREVIEW: TGUID = '{fb6c4282-0353-11d1-905f-0000c0cc16ba}';

  MEDIATYPE_Video: TGUID = '{73646976-0000-0010-8000-00AA00389B71}';
  MEDIATYPE_Audio: TGUID = '{73647561-0000-0010-8000-00AA00389B71}';
  FORMAT_VideoInfo: TGUID = '{05589f80-c356-11ce-bf01-00aa0055595a}';

  CLSCTX_LOCAL_SERVER = 4;
  CLSCTX_REMOTE_SERVER = $10;
  CLSCTX_INPROC_HANDLER = 2;
  CLSCTX_INPROC_SERVER = 1;
  CLSCTX_INPROC = CLSCTX_INPROC_SERVER or CLSCTX_INPROC_HANDLER;

  STGM_CREATE = $00001000;
  STGM_TRANSACTED = $00010000;
  STGM_READWRITE = $00000002;
  STGM_SHARE_EXCLUSIVE = $00000010;
  STGM_WRITE = $00000001;
  STGC_DEFAULT = 0;

  AM_SEEKING_NoPositioning = 0;
  AM_SEEKING_AbsolutePositioning = $1;
  AM_SEEKING_RelativePositioning = $2;
  AM_SEEKING_IncrementalPositioning = $3;
  AM_SEEKING_PositioningBitsMask = $3;
  AM_SEEKING_SeekToKeyFrame = $4;
  AM_SEEKING_ReturnTime = $8;
  AM_SEEKING_Segment = $10;
  AM_SEEKING_NoFlush = $20;

  TIME_FORMAT_NONE: TGUID = '{00000000-0000-0000-0000-000000000000}';
  TIME_FORMAT_FRAME: TGUID = '{7b785570-8c82-11cf-bc0c-00aa00ac74f6}';
  TIME_FORMAT_BYTE: TGUID = '{7b785571-8c82-11cf-bc0c-00aa00ac74f6}';
  TIME_FORMAT_SAMPLE: TGUID = '{7b785572-8c82-11cf-bc0c-00aa00ac74f6}';
  TIME_FORMAT_FIELD: TGUID = '{7b785573-8c82-11cf-bc0c-00aa00ac74f6}';
  TIME_FORMAT_MEDIA_TIME: TGUID = '{7b785574-8c82-11cf-bc0c-00aa00ac74f6}';

  INFINITE = $FFFFFFFF;

  MEDIASUBTYPE_CLPL: TGUID = (D1: $4C504C43; D2: $0000; D3: $0010; D4: ($80, $00, $00, $AA, $00, $38, $9B, $71));
  MEDIASUBTYPE_YUYV: TGUID = (D1: $56595559; D2: $0000; D3: $0010; D4: ($80, $00, $00, $AA, $00, $38, $9B, $71));
  MEDIASUBTYPE_IYUV: TGUID = (D1: $56555949; D2: $0000; D3: $0010; D4: ($80, $00, $00, $AA, $00, $38, $9B, $71));
  MEDIASUBTYPE_YVU9: TGUID = (D1: $39555659; D2: $0000; D3: $0010; D4: ($80, $00, $00, $AA, $00, $38, $9B, $71));
  MEDIASUBTYPE_Y411: TGUID = (D1: $31313459; D2: $0000; D3: $0010; D4: ($80, $00, $00, $AA, $00, $38, $9B, $71));
  MEDIASUBTYPE_Y41P: TGUID = (D1: $50313459; D2: $0000; D3: $0010; D4: ($80, $00, $00, $AA, $00, $38, $9B, $71));
  MEDIASUBTYPE_YUY2: TGUID = (D1: $32595559; D2: $0000; D3: $0010; D4: ($80, $00, $00, $AA, $00, $38, $9B, $71));
  MEDIASUBTYPE_YVYU: TGUID = (D1: $55595659; D2: $0000; D3: $0010; D4: ($80, $00, $00, $AA, $00, $38, $9B, $71));
  MEDIASUBTYPE_UYVY: TGUID = (D1: $59565955; D2: $0000; D3: $0010; D4: ($80, $00, $00, $AA, $00, $38, $9B, $71));
  MEDIASUBTYPE_Y211: TGUID = (D1: $31313259; D2: $0000; D3: $0010; D4: ($80, $00, $00, $AA, $00, $38, $9B, $71));
  MEDIASUBTYPE_YV12: TGUID = (D1: $32315659; D2: $0000; D3: $0010; D4: ($80, $00, $00, $AA, $00, $38, $9B, $71));
  MEDIASUBTYPE_CLJR: TGUID = (D1: $524A4C43; D2: $0000; D3: $0010; D4: ($80, $00, $00, $AA, $00, $38, $9B, $71));
  MEDIASUBTYPE_IF09: TGUID = (D1: $39304649; D2: $0000; D3: $0010; D4: ($80, $00, $00, $AA, $00, $38, $9B, $71));
  MEDIASUBTYPE_CPLA: TGUID = (D1: $414C5043; D2: $0000; D3: $0010; D4: ($80, $00, $00, $AA, $00, $38, $9B, $71));
  MEDIASUBTYPE_MJPG: TGUID = (D1: $47504A4D; D2: $0000; D3: $0010; D4: ($80, $00, $00, $AA, $00, $38, $9B, $71));
  MEDIASUBTYPE_TVMJ: TGUID = (D1: $4A4D5654; D2: $0000; D3: $0010; D4: ($80, $00, $00, $AA, $00, $38, $9B, $71));
  MEDIASUBTYPE_WAKE: TGUID = (D1: $454B4157; D2: $0000; D3: $0010; D4: ($80, $00, $00, $AA, $00, $38, $9B, $71));
  MEDIASUBTYPE_CFCC: TGUID = (D1: $43434643; D2: $0000; D3: $0010; D4: ($80, $00, $00, $AA, $00, $38, $9B, $71));
  MEDIASUBTYPE_IJPG: TGUID = (D1: $47504A49; D2: $0000; D3: $0010; D4: ($80, $00, $00, $AA, $00, $38, $9B, $71));
  MEDIASUBTYPE_Plum: TGUID = (D1: $6D756C50; D2: $0000; D3: $0010; D4: ($80, $00, $00, $AA, $00, $38, $9B, $71));
  MEDIASUBTYPE_DVCS: TGUID = (D1: $53435644; D2: $0000; D3: $0010; D4: ($80, $00, $00, $AA, $00, $38, $9B, $71));
  MEDIASUBTYPE_DVSD: TGUID = (D1: $44535644; D2: $0000; D3: $0010; D4: ($80, $00, $00, $AA, $00, $38, $9B, $71));
  MEDIASUBTYPE_MDVF: TGUID = (D1: $4656444D; D2: $0000; D3: $0010; D4: ($80, $00, $00, $AA, $00, $38, $9B, $71));
  MEDIASUBTYPE_RGB1: TGUID = (D1: $E436EB78; D2: $524F; D3: $11CE; D4: ($9F, $53, $00, $20, $AF, $0B, $A7, $70));
  MEDIASUBTYPE_RGB4: TGUID = (D1: $E436EB79; D2: $524F; D3: $11CE; D4: ($9F, $53, $00, $20, $AF, $0B, $A7, $70));
  MEDIASUBTYPE_RGB8: TGUID = (D1: $E436EB7A; D2: $524F; D3: $11CE; D4: ($9F, $53, $00, $20, $AF, $0B, $A7, $70));
  MEDIASUBTYPE_RGB565: TGUID = (D1: $E436EB7B; D2: $524F; D3: $11CE; D4: ($9F, $53, $00, $20, $AF, $0B, $A7, $70));
  MEDIASUBTYPE_RGB555: TGUID = (D1: $E436EB7C; D2: $524F; D3: $11CE; D4: ($9F, $53, $00, $20, $AF, $0B, $A7, $70));
  MEDIASUBTYPE_RGB24: TGUID = (D1: $E436EB7D; D2: $524F; D3: $11CE; D4: ($9F, $53, $00, $20, $AF, $0B, $A7, $70));
  MEDIASUBTYPE_RGB32: TGUID = (D1: $E436EB7E; D2: $524F; D3: $11CE; D4: ($9F, $53, $00, $20, $AF, $0B, $A7, $70));
  MEDIASUBTYPE_ARGB1555: TGUID = '{297C55AF-E209-4cb3-B757-C76D6B9C88A8}';
  MEDIASUBTYPE_ARGB4444: TGUID = '{6E6415E6-5C24-425f-93CD-80102B3D1CCA}';
  MEDIASUBTYPE_ARGB32: TGUID = (D1: $773C9AC0; D2: $3274; D3: $11D0; D4: ($B7, $24, $00, $AA, $00, $6C, $1A, $1));
  MEDIASUBTYPE_AYUV: TGUID = '{56555941-0000-0010-8000-00AA00389B71}'; //'AYUV' == MEDIASUBTYPE_AYUV
  MEDIASUBTYPE_AI44: TGUID = '{34344941-0000-0010-8000-00AA00389B71}'; //'AI44' == MEDIASUBTYPE_AI44
  MEDIASUBTYPE_IA44: TGUID = '{34344149-0000-0010-8000-00AA00389B71}'; //'IA44' == MEDIASUBTYPE_IA44

  LOOK_UPSTREAM_ONLY:TGUID='{AC798BE0-98E3-11d1-B3F1-00AA003761C5}';


  PINDIR_INPUT = 0;
  PINDIR_OUTPUT = 1;

  PhysConn_Video_Tuner = 1;
  PhysConn_Video_Composite = 2;
  PhysConn_Video_SVideo = 3;
  PhysConn_Video_RGB = 4;
  PhysConn_Video_YRYBY = 5;
  PhysConn_Video_SerialDigital = 6;
  PhysConn_Video_ParallelDigital = 7;
  PhysConn_Video_SCSI = 8;
  PhysConn_Video_AUX = 9;
  PhysConn_Video_1394 = 10;
  PhysConn_Video_USB = 11;
  PhysConn_Video_VideoDecoder = 12;
  PhysConn_Video_VideoEncoder = 13;
  PhysConn_Video_SCART = 14;

  PhysConn_Audio_Tuner = 4096;
  PhysConn_Audio_Line = 4097;
  PhysConn_Audio_Mic = 4098;
  PhysConn_Audio_AESDigital = 4099;
  PhysConn_Audio_SPDIFDigital = 4100;
  PhysConn_Audio_SCSI = 4101;
  PhysConn_Audio_AUX = 4102;
  PhysConn_Audio_1394 = 4103;
  PhysConn_Audio_USB = 4104;
  PhysConn_Audio_AudioDecoder = 4105;

  AMTUNER_SUBCHAN_NO_TUNE = -2;
  AMTUNER_SUBCHAN_DEFAULT = -1;

  VMRMode_Windowed	  = $1;
	VMRMode_Windowless	= $2;
	VMRMode_Renderless	= $4;
	VMRMode_Mask	      = $7;


type
  TVideo_Stream_Config_Caps = record
    guid: TGUID;
    VideoStandard: ULONG;
    InputSize: TSize;
    MinCroppingSize: TSize;
    MaxCroppingSize: TSize;
    CropGranularityX: Integer;
    CropGranularityY: Integer;
    CropAlignX: Integer;
    CropAlignY: Integer;
    MinOutputSize: TSize;
    MaxOutputSize: TSize;
    OutputGranularityX: Integer;
    OutputGranularityY: Integer;
    StretchTapsX: Integer;
    StretchTapsY: Integer;
    ShrinkTapsX: Integer;
    ShrinkTapsY: Integer;
    MinFrameIntervalLO: Integer;
    MinFrameIntervalHI: Integer;
    MaxFrameIntervalLO: Integer;
    MaxFrameIntervalHI: Integer;
    MinBitsPerSecond: Longint;
    MaxBitsPerSecond: Longint;
  end;
  PVideo_Stream_Config_Caps = ^TVideo_Stream_Config_Caps;

procedure FreeMediaType(mt: IEAM_MEDIA_TYPE);
begin
  if (mt.cbFormat <> 0) then
  begin
    CoTaskMemFree(mt.pbFormat);
    mt.cbFormat := 0;
    mt.pbFormat := nil;
  end;
  if (mt.pUnk <> nil) then
  begin
    mt.pUnk := nil;
  end;
end;

procedure DeleteMediaType(pmt: PIEAM_MEDIA_TYPE);
begin
  if pmt <> nil then
  begin
    FreeMediaType(pmt^);
    CoTaskMemFree(pmt);
  end;
end;

constructor TIEDirectShow.Create;
begin
  if not IEOleInitialized then
    OleInitialize(nil);
  fAudioInputs := TStringList.Create;
  fVideoInputs := TStringList.Create;
  fVideoCodecs := TStringList.Create;
  fAudioCodecs := TStringList.Create;
  fVideoFormats := TList.Create;
  fVideoInputSources := TStringList.Create;
  fCurAudioInput := nil;
  fCurVideoInput := nil;
  fCurVideoCodec := nil;
  fCurAudioCodec := nil;
  fGraph := nil;
  fBuilder := nil;
  fFileOutput := '';
  fControl := nil;
  fCurFileInput := nil;
  fFileInput := '';
  fCurColor := nil;
  fMediaSeeking := nil;
  fMediaEvent := nil;
  fSampleGrabber := nil;
  fSampleGrabberFilter := nil;
  fEnableSampleGrabber := false;
  fNullRenderer := nil;
  fSampleGrabberCB := nil;
  fNotifyWindow := 0;
  fIAMVideoCompression := nil;
  fStreamConfig := nil;
  fCrossBar := nil;
  fCrossBarFilter := nil;
  fTuner := nil;
  fTunerFilter := nil;
  fAnalogVideoDecoder := nil;
  fRenderAudio := false;
  fVideoFrameStep:=nil;
  fDVDControl2 := nil;
  fDVDInfo2 := nil;
  fDVDInputPath := '';
  fRenderVideo:=false;
  fVideoMixingRenderer:=nil;
  fVMRFilterConfig:=nil;
  fVMRWindowlessControl:=nil;
  fVMRSavedPin1:=nil;
  fVMRSavedPin2:=nil;
  fSystemClock:=nil;
  fReferenceClock:=rcDefault;
  fClockErrorTolerance:=-1; // -1=default value
end;

destructor TIEDirectShow.Destroy;
begin
  Disconnect;
  ClearVideoFormats;
  FreeAndNil(fVideoInputSources);
  FreeAndNil(fVideoFormats);
  FreeAndNil(fAudioInputs);
  FreeAndNil(fVideoInputs);
  FreeAndNil(fAudioCodecs);
  FreeAndNil(fVideoCodecs);
end;

procedure FillFilterList(clid: TGUID; list: TStringList);
var
  pSysDevEnum: IIECreateDevEnum;
  pEnumCat: IIEEnumMoniker;
  pMoniker: IIEMoniker;
  cFetched: ULONG;
  pPropBag: IIEPropertyBag;
  bc: IIEBindCtx;
  mo: IIEMoniker;
  er: IIEErrorLog;
  ov: OleVariant;
begin
  list.clear;
  pSysDevEnum := nil;
  CoCreateInstance(CLSID_SystemDeviceEnum, nil, CLSCTX_INPROC, IID_IIECreateDevEnum, pSysDevEnum);
  pEnumCat := nil;
  if pSysDevEnum.CreateClassEnumerator(clid, pEnumCat, 0) = S_OK then
  begin
    pMoniker := nil;
    while pEnumCat.Next(1, pMoniker, @cFetched) = S_OK do
    begin
      bc := nil;
      mo := nil;
      pMoniker.BindToStorage(bc, mo, IID_IIEPropertyBag, pPropBag);
      er := nil;
      pPropBag.Read('FriendlyName', ov, er);
      list.Add(string(ov));
      pPropBag := nil;
      pMoniker := nil;
    end;
  end;
  pEnumCat := nil;
  pSysDevEnum := nil;
end;

function CreateFilter(clid: TGUID; FriendlyName: string; instanceIndex:integer): IIEBaseFilter;
var
  pSysDevEnum: IIECreateDevEnum;
  pEnumCat: IIEEnumMoniker;
  pMoniker: IIEMoniker;
  cFetched: ULONG;
  pPropBag: IIEPropertyBag;
  bc: IIEBindCtx;
  mo: IIEMoniker;
  er: IIEErrorLog;
  ov: OleVariant;
  iindex:integer;
begin
  result := nil;
  pSysDevEnum := nil;
  CoCreateInstance(CLSID_SystemDeviceEnum, nil, CLSCTX_INPROC, IID_IIECreateDevEnum, pSysDevEnum);
  pEnumCat := nil;
  if pSysDevEnum.CreateClassEnumerator(clid, pEnumCat, 0) = S_OK then
  begin
    pMoniker := nil;
    iindex:=0;
    while pEnumCat.Next(1, pMoniker, @cFetched) = S_OK do
    begin
      bc := nil;
      mo := nil;
      pMoniker.BindToStorage(bc, mo, IID_IIEPropertyBag, pPropBag);
      er := nil;
      pPropBag.Read('FriendlyName', ov, er);
      if string(ov) = FriendlyName then
      begin
        if iindex=instanceIndex then
        begin
          bc := nil;
          mo := nil;
          pMoniker.BindToObject(bc, mo, IID_IEBaseFilter, result);
        end;
        inc(iindex);
      end;
      pPropBag := nil;
      pMoniker := nil;
    end;
  end;
  pEnumCat := nil;
  pSysDevEnum := nil;
end;

{!!
<FS>TIEDirectShow.AudioInputs

<FM>Declaration<FC>
property AudioInputs:TStringList;

<FM>Description<FN>
Contains a list of audio inputs available.
!!}
function TIEDirectShow.GetAudioInputs: TStringList;
begin
  if fAudioInputs.Count = 0 then
    FillFilterList(CLSID_AudioInputDeviceCategory, fAudioInputs);
  result := fAudioInputs;
end;

{!!
<FS>TIEDirectShow.VideoInputs

<FM>Declaration<FC>
property VideoInputs:TStringList;

<FM>Description<FN>
Contains a list of available video inputs (video capture inputs).
!!}
function TIEDirectShow.GetVideoInputs: TStringList;
begin
  if fVideoInputs.Count = 0 then
    FillFilterList(CLSID_VideoInputDeviceCategory, fVideoInputs);
  result := fVideoInputs;
end;

{!!
<FS>TIEDirectShow.VideoCodecs

<FM>Declaration<FC>
property VideoCodecs:TStringList;

<FM>Description<FN>
Contains a list of video compression codecs.
!!}
function TIEDirectShow.GetVideoCodecs: TStringList;
begin
  if fVideoCodecs.Count = 0 then
    FillFilterList(CLSID_VideoCompressorCategory, fVideoCodecs);
  result := fVideoCodecs;
end;

{!!
<FS>TIEDirectShow.AudioCodecs

<FM>Declaration<FC>
property AudioCodecs:TStringList;

<FM>Description<FN>
Contains a list of audio compression codecs available.
!!}
function TIEDirectShow.GetAudioCodecs: TStringList;
begin
  if fAudioCodecs.Count = 0 then
    FillFilterList(CLSID_AudioCompressorCategory, fAudioCodecs);
  result := fAudioCodecs;
end;

{!!
<FS>TIEDirectShow.SetVideoInput

<FM>Declaration<FC>
procedure SetVideoInput(idx:integer; instanceIndex:integer);

<FM>Description<FN>
Allows selection of a video input. You can get an index from <A TIEDirectShow.VideoInputs> property.
InstanceIndex specifies the video input on the same device.
!!}
procedure TIEDirectShow.SetVideoInput(idx: integer; instanceIndex:integer);
begin
  if idx<0 then
    fCurVideoInput := nil
  else  if idx < VideoInputs.Count then
    fCurVideoInput := CreateFilter(CLSID_VideoInputDeviceCategory, VideoInputs[idx], instanceIndex);
end;

{!!
<FS>TIEDirectShow.SetAudioInput

<FM>Declaration<FC>
procedure SetAudioInput(idx:integer);

<FM>Description<FN>
Allows selection of an audio input. You can get an index from AudioInputs property.
!!}
procedure TIEDirectShow.SetAudioInput(idx: integer; instanceIndex:integer);
begin
  if idx<0 then
    fCurAudioInput := nil
  else if idx < AudioInputs.Count then
    fCurAudioInput := CreateFilter(CLSID_AudioInputDeviceCategory, AudioInputs[idx], instanceIndex);
end;

// note about divx: it shows a window for compression feedback. To disable it set
// "HKEY_CURRENT_USER\Software\DivXNetworks\DivX4Windows\Disable Feedback" = 1

{!!
<FS>TIEDirectShow.SetVideoCodec

<FM>Declaration<FC>
procedure SetVideoCodec(idx:integer);

<FM>Description<FN>
Specifies the video compression codec. You can get an index from <A TIEDirectShow.VideoCodecs> property.
!!}
procedure TIEDirectShow.SetVideoCodec(idx: integer);
begin
  if idx<0 then
    fCurVideoCodec := nil
  else if idx < VideoCodecs.Count then
    fCurVideoCodec := CreateFilter(CLSID_VideoCompressorCategory, VideoCodecs[idx],0);
end;

{!!
<FS>TIEDirectShow.SetAudioCodec

<FM>Declaration<FC>
procedure SetAudioCodec(idx:integer);

<FM>Description<FN>
Specifies the audio compression codec. You can get an index from <A TIEDirectShow.AudioCodecs> property.
!!}
procedure TIEDirectShow.SetAudioCodec(idx: integer);
begin
  if idx<0 then
    fCurAudioCodec := nil
  else if idx < AudioCodecs.Count then
    fCurAudioCodec := CreateFilter(CLSID_AudioCompressorCategory, AudioCodecs[idx],0);
end;

const
  cv: array[0..35] of PGUID = (@MEDIASUBTYPE_CLPL, @MEDIASUBTYPE_YUYV, @MEDIASUBTYPE_IYUV, @MEDIASUBTYPE_YVU9, @MEDIASUBTYPE_Y411,
    @MEDIASUBTYPE_Y41P, @MEDIASUBTYPE_YUY2, @MEDIASUBTYPE_YVYU, @MEDIASUBTYPE_UYVY, @MEDIASUBTYPE_Y211,
    @MEDIASUBTYPE_YV12, @MEDIASUBTYPE_CLJR, @MEDIASUBTYPE_IF09, @MEDIASUBTYPE_CPLA, @MEDIASUBTYPE_MJPG,
    @MEDIASUBTYPE_TVMJ, @MEDIASUBTYPE_WAKE, @MEDIASUBTYPE_CFCC, @MEDIASUBTYPE_IJPG, @MEDIASUBTYPE_Plum,
    @MEDIASUBTYPE_DVCS, @MEDIASUBTYPE_DVSD, @MEDIASUBTYPE_MDVF, @MEDIASUBTYPE_RGB1, @MEDIASUBTYPE_RGB4,
    @MEDIASUBTYPE_RGB8, @MEDIASUBTYPE_RGB565, @MEDIASUBTYPE_RGB555, @MEDIASUBTYPE_RGB24, @MEDIASUBTYPE_RGB32,
    @MEDIASUBTYPE_ARGB1555, @MEDIASUBTYPE_ARGB4444, @MEDIASUBTYPE_ARGB32, @MEDIASUBTYPE_AYUV, @MEDIASUBTYPE_AI44, @MEDIASUBTYPE_IA44);
  cs: array[0..35] of string = ('CLPL', 'YUYV', 'IYUV', 'YVU9', 'Y411',
    'Y41P', 'YUY2', 'YVYU', 'UYVY', 'Y211',
    'YV12', 'CLJR', 'IF09', 'CPLA', 'MJPG',
    'TVMJ', 'WAKE', 'CFCC', 'IJPG', 'Plum',
    'DVCS', 'DVSD', 'MDVF', 'RGB1', 'RGB4',
    'RGB8', 'RGB565', 'RGB555', 'RGB24', 'RGB32',
    'ARGB1555', 'ARGB4444', 'ARGB32', 'AYUV', 'AI44', 'IA44');

function VideoMediaSubTypeToStr(mst: TGUID): string;
var
  i: integer;
begin
  result := '';
  for i := 0 to 35 do
    if comparemem(cv[i], @mst, sizeof(TGuid)) then
    begin
      result := cs[i];
      break;
    end;
end;

function StrToVideoMediaSubType(ss: string): TGUID;
var
  i: integer;
begin
  result := cv[0]^;
  for i := 0 to 35 do
    if ss = cs[i] then
    begin
      result := cv[i]^;
      break;
    end;
end;

procedure TIEDirectShow.ClearVideoFormats;
var
  i: integer;
begin
  for i := 0 to fVideoFormats.Count - 1 do
    TIEVideoFormat(fVideoFormats[i]).Free;
  fVideoFormats.Clear;
end;

const
  vs1: array[0..19] of integer = ($00000000, $00000001, $00000002, $00000004, $00000010, $00000020, $00000080, $00000100, $00000200, $00000400,
    $00000800, $00001000, $00002000, $00004000, $00008000, $00010000, $00020000, $00040000, $00080000, $00100000);
  vs2: array[0..19] of string = ('None', 'NTSC_M', 'NTSC_M_J', 'NTSC_433', 'PAL_B', 'PAL_D', 'PAL_H', 'PAL_I', 'PAL_M', 'PAL_N', 'PAL_60', 'SECAM_B',
    'SECAM_D', 'SECAM_G', 'SECAM_H', 'SECAM_K', 'SECAM_K1', 'SECAM_L', 'SECAM_L1', 'PAL_N_COMBO');
  vs3: array[0..19] of TIETVStandard = (ievsNONE, ievsNTSC_M, ievsNTSC_M_J, ievsNTSC_433, ievsPAL_B, ievsPAL_D, ievsPAL_H, ievsPAL_I, ievsPAL_M, ievsPAL_N,
                      ievsPAL_60, ievsSECAM_B, ievsSECAM_D, ievsSECAM_G, ievsSECAM_H, ievsSECAM_K, ievsSECAM_K1, ievsSECAM_L, ievsSECAM_L1, ievsPAL_N_COMBO);


function VideoStandard2Str(vs: integer): string;
var
  i: integer;
begin
  result := '';
  for i := 0 to 19 do
    if (vs and vs1[i]) <> 0 then
      result := result + vs2[i] + ' ';
  result := trim(result);
end;

function Str2VideoStandard(vs: string): integer;
var
  i: integer;
begin
  result := 0;
  for i := 0 to 19 do
    if pos(vs2[i], vs) > 0 then
      result := result or vs1[i];
end;

procedure TIEDirectShow.FillVideoFormats;
var
  piCount, piSize: integer;
  i: integer;
  pSCC: PVideo_Stream_Config_Caps;
  pmt: PIEAM_MEDIA_TYPE;
  ih: PIEVIDEOINFOHEADER;
  vf: TIEVideoFormat;
begin
  ClearVideoFormats;
  if assigned(fStreamConfig) then
  begin
    fStreamConfig.GetNumberOfCapabilities(piCount, piSize);
    getmem(pSCC, piSize);
    for i := 0 to piCount - 1 do
    begin
      fStreamConfig.GetStreamCaps(i, pmt, pSCC);
      ih := pointer(pmt^.pbFormat);
      vf := TIEVideoFormat.Create;
      fVideoFormats.Add(vf);
      vf.Format := VideoMediaSubTypeToStr(pmt^.subtype);
      if ih<>nil then
        vf.BitRate := ih^.dwBitRate
      else
        vf.BitRate := 0;
      vf.VideoStandard := VideoStandard2Str(pSCC^.VideoStandard);
      vf.MinWidth := pSCC^.MinOutputSize.cx;
      vf.MinHeight := pSCC^.MinOutputSize.cy;
      vf.MaxWidth := pSCC^.MaxOutputSize.cx;
      vf.MaxHeight := pSCC^.MaxOutputSize.cy;
      vf.GranularityX := pSCC^.OutputGranularityX;
      vf.GranularityY := pSCC^.OutputGranularityY;
      DeleteMediaType(pmt);
    end;
    freemem(pSCC);
  end;
end;

// uses fCrossBar inputs

procedure TIEDirectShow.FillVideoInputSources;
var
  pFilter: IIEBaseFilter;
  pins: IIEEnumPins;
  pP: IIEPin;
  n: integer;
  pInfo: IEPIN_INFO;
begin
  fVideoInputSources.Clear;
  if assigned(fCrossBar) then
  begin
    pFilter := nil;
    fCrossBar.QueryInterface(IID_IEBaseFilter, pFilter);
    if assigned(pFilter) then
    begin
      pins := nil;
      pFilter.EnumPins(pins);
      while (pins.Next(1, pP, n) = S_OK) do
      begin
        pP.QueryPinInfo(@pInfo);
        if pInfo.dir = PINDIR_INPUT then
          fVideoInputSources.Add(WideCharToString(pInfo.achName));
        pInfo.pFilter := nil;
        pP := nil;
      end;
      pins := nil;
      pFilter := nil;
    end;
  end;
end;

function TIEDirectShow.GetInputSource: integer;
var
  i: integer;
  OutputPinCount, InputPinCount: integer;
  PinIndexRelated, PhysicalType: integer;
begin
  result := 0;
  if assigned(fCrossBar) then
  begin
    // identify the output pin (video decoder)
    fCrossBar.get_PinCounts(OutputPinCount, InputPinCount);
    for i := 0 to OutputPinCount - 1 do
    begin
      fCrossBar.get_CrossbarPinInfo(false, i, PinIndexRelated, PhysicalType);
      if PhysicalType = PhysConn_Video_VideoDecoder then
      begin
        // found
        fCrossBar.get_IsRoutedTo(i, result);
        break;
      end;
    end;
  end;
end;

{!!
<FS>TIEDirectShow.VideoInputSource

<FM>Declaration<FC>
property VideoInputSource:integer;

<FM>Description<FN>
Specifies the video input source. A video input source is a line input, like Video-Composite, Tuner, etc.
You can get an index from VideoInputSources property.
!!}
procedure TIEDirectShow.SetInputSource(value: integer);
var
  i: integer;
  OutputPinCount, InputPinCount: integer;
  PinIndexRelated, PhysicalType: integer;
begin
  if assigned(fCrossBar) then
  begin
    // identify the output pin (video decoder)
    fCrossBar.get_PinCounts(OutputPinCount, InputPinCount);
    for i := 0 to OutputPinCount - 1 do
    begin
      fCrossBar.get_CrossbarPinInfo(false, i, PinIndexRelated, PhysicalType);
      if PhysicalType = PhysConn_Video_VideoDecoder then
      begin
        // found
        fCrossBar.Route(i, value);
        break;
      end;
    end;
  end;
end;

{!!
<FS>TIEDirectShow.VideoFormats

<FM>Declaration<FC>
property VideoFormats[i:integer]:<A TIEVideoFormat>;

<FM>Description<FN>
VideoFormats contains a list of available video formats.
A video format specifies the frame width, height and other info.
!!}
function TIEDirectShow.GetVideoFormats(i: integer): TIEVideoFormat;
begin
  result := TIEVideoFormat(fVideoFormats[i]);
end;

{!!
<FS>TIEDirectShow.VideoFormatsCount

<FM>Declaration<FC>
property VideoFormatsCount:integer;

<FM>Description<FN>
VideoFormatsCount specifies the <A TIEDirectShow.VideoFormats> list size.
!!}
function TIEDirectShow.GetVideoFormatsCount: integer;
begin
  result := fVideoFormats.Count;
end;

procedure TIEDirectShow.ConnectCrossbarAudioDecoder;
var
  cout,cin:integer;
  i:integer;
  lout,lin:integer;
  PinIndexRelated,PhysicalType:integer;
begin
  if assigned(fCrossBar) then
  begin
    fCrossBar.get_PinCounts(cout,cin);
    lout:=-1;
    lin:=-1;
    for i:=0 to cout-1 do
    begin
      fCrossBar.get_CrossbarPinInfo(false,i,PinIndexRelated,PhysicalType);
      if PhysicalType=PhysConn_Audio_AudioDecoder then
        lout:=i;
    end;
    for i:=0 to cin-1 do
    begin
      fCrossBar.get_CrossbarPinInfo(true,i,PinIndexRelated,PhysicalType);
      if PhysicalType=PhysConn_Audio_Tuner then
        lin:=i;
    end;
    if (lin>-1) and (lout>-1) then
      fCrossBar.Route(lout,lin);
  end;
end;

procedure TIEDirectShow.VMRCreate;
begin
  if assigned(fVideoMixingRenderer) then
  begin
    // removes previous one
    fGraph.RemoveFilter(fVideoMixingRenderer);
  end;
  fVMRFilterConfig:=nil;
  fVideoMixingRenderer:=nil;
  CoCreateInstance(CLSID_VideoMixingRenderer, nil, CLSCTX_INPROC, IID_IEBaseFilter, fVideoMixingRenderer);
  if fVideoMixingRenderer<>nil then
  begin
    fGraph.AddFilter(fVideoMixingRenderer, 'Video Mixing Renderer');
    fVideoMixingRenderer.QueryInterface(IID_IIEVMRFilterConfig,fVMRFilterConfig);
    fVMRFilterConfig.SetNumberOfStreams(1); // set mixer mode "on"
    fVMRFilterConfig.SetRenderingMode(VMRMode_Windowless);
    fVideoMixingRenderer.QueryInterface(IID_IIEVMRWindowlessControl,fVMRWindowlessControl);
    fVMRWindowlessControl.SetVideoClippingWindow(fNotifyWindow);
    fVMRWindowlessControl.SetAspectRatioMode(0);
    InvalidateRect(fNotifyWindow,nil,false);
  end;
end;

procedure TIEDirectShow.StdConnect;
var
  ppf: IIEBaseFilter;
  multiplex:IIEBaseFilter;
  inter: IIEBaseFilter;
  pSink: IIEFileSinkFilter;
  ext: string;
  ws: pwidechar;
  mt: IEAM_MEDIA_TYPE;
  CurInput: IIEBaseFilter;
  iunk: IUnknown;
  mf: IIEMediaFilter;
  rf: IIEReferenceClock;
  //gf: IAMGraphStreams;
begin
  CurInput := nil;
  fGraph := nil;
  CoCreateInstance(CLSID_FilterGraph, nil, CLSCTX_INPROC, IID_IIEGraphBuilder, fGraph);
  fBuilder := nil;
  CoCreateInstance(CLSID_CaptureGraphBuilder2, nil, CLSCTX_INPROC, IID_IIECaptureGraphBuilder2, fBuilder);
  fBuilder.SetFiltergraph(fGraph);
  // set source filters
  if fCurVideoInput <> nil then
    fGraph.AddFilter(fCurVideoInput, 'VideoCapture');
  if fCurAudioInput <> nil then
    fGraph.AddFilter(fCurAudioInput, 'AudioCapture');
  if fFileInput <> '' then
  begin
    fCurFileInput := nil;
    getmem(ws, 4096);
    StringToWideChar(fFileInput, ws, 2048);
    fGraph.AddSourceFilter(ws, 'FileFilter', fCurFileInput);
    freemem(ws);
  end;

  // codecs
  if fCurVideoCodec <> nil then
    fGraph.AddFilter(fCurVideoCodec, 'VideoCodec');
  if fCurAudioCodec <> nil then
    fGraph.AddFilter(fCurAudioCodec, 'AudioCodec');

  ppf:=nil;
  multiplex:=nil;

  // output file
  if fFileOutput <> '' then
  begin
    pSink := nil;
    ext := ExtractFileExt(lowercase(fFileOutput));
    getmem(ws, 4096);
    StringToWideChar(fFileOutput, ws, 2048);
    if ext = '.avi' then
      fBuilder.SetOutputFileName(MEDIASUBTYPE_Avi, ws, multiplex, pSink)
    else if ext = '.asf' then
      fBuilder.SetOutputFileName(MEDIASUBTYPE_Asf, ws, multiplex, pSink);
    freemem(ws);
    ppf:=multiplex;
  end;
  // color conversion filter (needed only when it is not specified a video compression filter)
  // commenting "not fRenderVideo" could disable deinterlacing, but allows VMR on some capture cards
  if (fCurVideoCodec = nil) (*and (not fRenderVideo)*) then
  begin
    fCurColor := nil;
    CoCreateInstance(CLSID_Colour, nil, CLSCTX_INPROC, IID_IEBaseFilter, fCurColor);
    fGraph.AddFilter(fCurColor, 'ColorConverter');
    inter := fCurColor;
  end
  else
    inter := fCurVideoCodec;
  // sample grabber
  if fEnableSampleGrabber and (fCurVideoCodec = nil) then
  begin // grabbing and compression don't allowed
    fSampleGrabber := nil;
    CoCreateInstance(CLSID_SampleGrabber, nil, CLSCTX_INPROC, IID_IEBaseFilter, fSampleGrabber);
    fGraph.AddFilter(fSampleGrabber, 'SampleGrabber');
    fSampleGrabber.QueryInterface(IID_IIESampleGrabber, fSampleGrabberFilter);
    fSampleGrabberFilter.SetBufferSamples(true);
    zeromemory(@mt, sizeof(IEAM_MEDIA_TYPE));
    mt.majortype := MEDIATYPE_Video;
    mt.subtype := MEDIASUBTYPE_RGB24;
    fSampleGrabberFilter.SetMediaType(@mt);
    if fNotifyWindow <> 0 then
    begin
      fSampleGrabberCB := TIESampleGrabberCB.Create(self);
      fSampleGrabberFilter.SetCallback(fSampleGrabberCB, 1); // call 1=BufferCB
    end;
    inter := fSampleGrabber;
  end;
  // video renderer
  if fRenderVideo then
  begin
    VMRCreate;
    ppf:=fVideoMixingRenderer;
  end;
  // null renderer (avoid to display the output)
  if ppf = nil then
  begin
    fNullRenderer := nil;
    CoCreateInstance(CLSID_NullRenderer, nil, CLSCTX_INPROC, IID_IEBaseFilter, fNullRenderer);
    fGraph.AddFilter(fNullRenderer, 'NullRenderer');
    ppf := fNullRenderer;
  end;

  CoCreateInstance(CLSID_AVIDec, nil, CLSCTX_INPROC, IID_IEBaseFilter, fAVIDecompressor);
  fGraph.AddFilter(fAVIDecompressor, 'AVI Decompressor');

  (*
  gf:=nil;
  fGraph.QueryInterface(IID_IAMGraphStreams,gf);
  if assigned(gf) then
    gf.SyncUsingStreamOffset(true);
  //*)

  if fCurVideoInput <> nil then
  begin
    if (multiplex<>nil) and (multiplex<>ppf) then
    begin
      // video input -> capture to file & VMR preview
      fBuilder.RenderStream(@PIN_CATEGORY_CAPTURE, @MEDIATYPE_Video, fCurVideoInput, inter, multiplex);
      fBuilder.RenderStream(@PIN_CATEGORY_PREVIEW, @MEDIATYPE_Video, fCurVideoInput, nil, ppf);
    end
    else
      fBuilder.RenderStream(@PIN_CATEGORY_CAPTURE, @MEDIATYPE_Video, fCurVideoInput, inter, ppf);
      //fBuilder.RenderStream(@PIN_CATEGORY_PREVIEW, @MEDIATYPE_Video, fCurVideoInput, inter, ppf);
    CurInput := fCurVideoInput;
  end;

  if fCurAudioInput <> nil then
    fBuilder.RenderStream(@PIN_CATEGORY_CAPTURE, @MEDIATYPE_Audio, fCurAudioInput, fCurAudioCodec, ppf);

  if fCurFileInput <> nil then
  begin
    fBuilder.RenderStream(nil, nil, fCurFileInput,fAVIDecompressor,inter);  // 3.0.0 b3
    fBuilder.RenderStream(nil, nil, inter,nil,ppf);                         // 3.0.0 b3

    fBuilder.RenderStream(nil, nil, fCurFileInput, inter, ppf);
    fBuilder.RenderStream(nil, @MEDIATYPE_Video, fCurFileInput, inter,ppf); // with this works also for WMV
    if (ppf <> nil) and (fCurAudioCodec<>nil) then
      fBuilder.RenderStream(nil, nil, fCurFileInput, fCurAudioCodec, ppf);
    CurInput := fCurFileInput;
  end;

  if fRenderAudio then
    fBuilder.RenderStream(nil, @MEDIATYPE_Audio,CurInput, nil, nil);

  fControl := nil;
  fGraph.QueryInterface(IID_IIEMediaControl, fControl);
  fMediaSeeking := nil;
  fGraph.QueryInterface(IID_IIEMediaSeeking, fMediaSeeking);
  fMediaEvent := nil;
  fGraph.QueryInterface(IID_IIEMediaEventEx, fMediaEvent);
  //
  if fNotifyWindow <> 0 then
  begin
    fMediaEvent.SetNotifyWindow(fNotifyWindow, fEventMessage, integer(pointer(self)));
  end;
  //
  if fCurVideoCodec <> nil then
  begin
    fIAMVideoCompression := nil;
    fCurVideoCodec.QueryInterface(IID_IIEAMVideoCompression, fIAMVideoCompression);
  end;
  // stream config
  iunk := nil;
  fBuilder.FindInterface(nil, nil, CurInput, IID_IIEAMStreamConfig, iunk);
  fStreamConfig := nil;
  if assigned(iunk) then
  begin
    iunk.QueryInterface(IID_IIEAMStreamConfig, fStreamConfig);
    iunk := nil;
  end;
  // crossbar
  iunk := nil;
  fBuilder.FindInterface(nil, nil, CurInput, IID_IIEAMCrossBar, iunk);
  fCrossBar := nil;
  if assigned(iunk) then
  begin
    iunk.QueryInterface(IID_IIEAMCrossBar, fCrossBar);
    iunk.QueryInterface(IID_IEBaseFilter, fCrossBarFilter);
    iunk := nil;
  end;
  // tuner
  iunk := nil;
  fBuilder.FindInterface(nil, nil, CurInput, IID_IIEAMTvTuner, iunk);
  fTuner := nil;
  if assigned(iunk) then
  begin
    iunk.QueryInterface(IID_IIEAMTvTuner, fTuner);
    iunk.QueryInterface(IID_IEBaseFilter, fTunerFilter);
    iunk := nil;
    ConnectCrossbarAudioDecoder;
  end;
  // video decoder
  iunk := nil;
  fBuilder.FindInterface(nil, nil, CurInput, IID_IIEAMAnalogVideoDecoder, iunk);
  fAnalogVideoDecoder := nil;
  if assigned(iunk) then
  begin
    iunk.QueryInterface(IID_IIEAMAnalogVideoDecoder, fAnalogVideoDecoder);
    iunk := nil;
  end;
  // step handling
  fVideoFrameStep:=nil;
  fGraph.QueryInterface(IID_IIEVideoFrameStep,fVideoFrameStep);
  // reference clock
  if fReferenceClock<>rcDefault then
  begin
    mf:=nil;
    fGraph.QueryInterface(IID_IIEMediaFilter,mf);
    if assigned(mf) then
    begin
      rf:=nil;  // rcNone
      case fReferenceClock of
        rcSystemClock:
          begin
            CoCreateInstance(CLSID_SystemClock, nil, CLSCTX_INPROC, IID_IIEReferenceClock, fSystemClock);
            rf:=fSystemClock;
          end;
        rcVideoInput:
          if assigned(fCurVideoInput) then
            fCurVideoInput.QueryInterface(IID_IIEReferenceClock,rf);
        rcVideoOutput:
          if assigned(fVideoMixingRenderer) then
            fVideoMixingRenderer.QueryInterface(IID_IIEReferenceClock,rf);
        rcAudioInput:
          if assigned(fCurAudioInput) then
            fCurAudioInput.QueryInterface(IID_IIEReferenceClock,rf);
        rcAudioOutput:
          begin
            ppf:=nil;
            fGraph.FindFilterByName('Audio Renderer',ppf);
            if assigned(ppf) then
              ppf.QueryInterface(IID_IIEReferenceClock,rf);
          end;
      end;
      mf.SetSyncSource(rf);
      mf:=nil;
    end;
  end;
  // Clock slave
  iunk := nil;
  fBuilder.FindInterface(nil,nil, CurInput, IID_IIEAMClockSlave, iunk);
  fClockSlave:=nil;
  if assigned(iunk) then
  begin
    iunk.QueryInterface(IID_IIEAMClockSlave, fClockSlave);
    iunk:=nil;
    if assigned(fClockSlave) and (fClockErrorTolerance>-1) then
      fClockSlave.SetErrorTolerance(fClockErrorTolerance);
  end;

  //
  FillVideoFormats;
  FillVideoInputSources;
end;

procedure TIEDirectShow.DVDConnect;
var
  DVDNavigator:IIEBaseFilter;
  penum:IIEEnumPins;
  pin:IIEPin;
  f:integer;
begin
  fGraph := nil;
  CoCreateInstance(CLSID_FilterGraph, nil, CLSCTX_INPROC, IID_IIEGraphBuilder, fGraph);
  DVDNavigator:=nil;
  CoCreateInstance(CLSID_DVDNavigator, nil, CLSCTX_INPROC, IID_IEBaseFilter, DVDNavigator);
  if assigned(DVDNavigator) then
  begin
    fGraph.AddFilter(DVDNavigator,'DVD Navigator');

    // add Video Mixing Renderer
    fRenderVideo:=true;
    fVideoMixingRenderer:=nil;
    CoCreateInstance(CLSID_VideoMixingRenderer, nil, CLSCTX_INPROC, IID_IEBaseFilter, fVideoMixingRenderer);
    if fVideoMixingRenderer<>nil then
    begin
      fGraph.AddFilter(fVideoMixingRenderer, 'Video Mixing Renderer');
      fVMRFilterConfig:=nil;
      fVideoMixingRenderer.QueryInterface(IID_IIEVMRFilterConfig,fVMRFilterConfig);
      fVMRFilterConfig.SetNumberOfStreams(1); // set mixer mode "on"
      fVMRFilterConfig.SetRenderingMode(VMRMode_Windowless);
      fVideoMixingRenderer.QueryInterface(IID_IIEVMRWindowlessControl,fVMRWindowlessControl);
      fVMRWindowlessControl.SetVideoClippingWindow(fNotifyWindow);
      fVMRWindowlessControl.SetAspectRatioMode(0);
      InvalidateRect(fNotifyWindow,nil,false);
    end;

    // render all DVDNavigator pins
    DVDNavigator.EnumPins(penum);
    while penum.Next(1,pin,f)=S_OK do
    begin
      fGraph.Render(pin);
      pin:=nil;
    end;
    penum:=nil;

    fMediaEvent := nil;
    fGraph.QueryInterface(IID_IIEMediaEventEx, fMediaEvent);

    fControl := nil;
    fGraph.QueryInterface(IID_IIEMediaControl, fControl);

    fMediaSeeking := nil;
    fGraph.QueryInterface(IID_IIEMediaSeeking, fMediaSeeking);
    if fNotifyWindow <> 0 then
      fMediaEvent.SetNotifyWindow(fNotifyWindow, fEventMessage, integer(pointer(self)));

    fDVDControl2:=nil;
    DVDNavigator.QueryInterface(IID_IIEDvdControl2,fDVDControl2);
    fDVDInfo2:=nil;
    DVDNavigator.QueryInterface(IID_IIEDvdInfo2,fDVDInfo2);


  end;
end;

{!!
<FS>TIEDirectShow.DVDSelectAt

<FM>Declaration<FC>
procedure DVDSelectAt(x,y:integer);

<FM>Description<FN>
Select a button in DVD menu, at specified position. To actually press the button call <A TIEDirectShow.DVDActivateButton>.
In order to play DVD inside Delphi IDE please disable "Integrated Debugging".

<FM>Example<FC>
procedure TForm1.ImageEnView1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  ImageEnView1.IO.DShowParams.DVDSelectAt(x,y);
end;

<FM>Demos<FN>
capture\VMR_DVD
!!}
procedure TIEDirectShow.DVDSelectAt(x,y:integer);
begin
  if assigned(fDVDControl2) then
    fDVDControl2.SelectAtPosition(Point(x,y));
end;

{!!
<FS>TIEDirectShow.DVDActivateButton

<FM>Declaration<FC>
procedure DVDActivateButton;

<FM>Description<FN>
Press a button in DVD menu. To select a position call <A TIEDirectShow.DVDSelectAt>.
In order to play DVD inside Delphi IDE please disable "Integrated Debugging".

<FM>Example<FC>
procedure TForm1.ImageEnView1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ImageEnView1.IO.DShowParams.DVDActivateButton;
end;

<FM>Demos<FN>
capture\VMR_DVD
!!}
procedure TIEDirectShow.DVDActivateButton;
begin
  if assigned(fDVDControl2) then
    fDVDControl2.ActivateButton;
end;

{!!
<FS>TIEDirectShow.DVDPlayAt

<FM>Declaration<FC>
procedure DVDPlayAt(Title:integer; Chapter:integer);
procedure DVDPlayAt(Title:integer; Hours,Minutes,Seconds,Frames:integer);

<FM>Description<FN>
Starts playback from the beginning of the specified chapter of the specified title.
You can know the number of Chapters and Titles (and the current position) calling <A TIEDirectShow.DVDGetProperty> method.

The second overload allows to specify the exact time inside the specified title.

<FM>Example<FC>
// playes chapter 1 in title 5
ImageEnView1.IO.DShowParams.DVDPlayAt(5,1);

// playes title 1, after 10 minutes
ImageEnView1.IO.DShowParams.DVDPlayAt(1, 0,10,0,0);

<FM>Demos<FN>
capture\VMR_DVD
!!}
procedure TIEDirectShow.DVDPlayAt(Title:integer; Chapter:integer);
var
  cmd:IIEDvdCmd;
begin
  if assigned(fDVDControl2) then
    fDVDControl2.PlayChapterInTitle(Title,Chapter,0,cmd);
end;

procedure TIEDirectShow.DVDPlayAt(Title:integer; Hours,Minutes,Seconds,Frames:integer);
var
  cmd:IIEDvdCmd;
  pTime:IEDVD_HMSF_TIMECODE;
begin
  if assigned(fDVDControl2) then
  begin
    pTime.bHours:=Hours;
    pTime.bMinutes:=Minutes;
    pTime.bSeconds:=Seconds;
    pTime.bFrames:=Frames;
    fDVDControl2.PlayAtTimeInTitle(Title,pTime,0,cmd);
  end;
end;

{!!
<FS>TIEDirectShow.DVDShowMenu

<FM>Declaration<FC>
procedure DVDShowMenu(Menu:<A TIEDVDMenu>);

<FM>Description<FN>
Displays the specified menu, if available.

<FM>Example<FC>
ImageEnView1.IO.DShowParams.DVDShowMenu(iedmROOT);

<FM>Demos<FN>
capture\VMR_DVD
!!}
procedure TIEDirectShow.DVDShowMenu(Menu:TIEDVDMenu);
var
  cmd:IIEDvdCmd;
begin
  if assigned(fDVDControl2) then
    fDVDControl2.ShowMenu(integer(Menu)+2,0,cmd);
end;

function pad2(v:string):string;
begin
  if length(v)<2 then
    result:='0'+v
  else
    result:=v;
end;

{!!
<FS>TIEDirectShow.DVDGetProperty

<FM>Declaration<FC>
function DVDGetProperty(Prop:string; SubProp:string):string;

<FM>Description<FN>
Read a property from current DVD. This method can return current DVD position and some other properties like number of titles and chapters.

<TABLE>
<R> <H>Value</H> <H>Description</H> </R>
<R> <C>NumOfVolumes</C> <C>Returns number of volumes</C> </R>
<R> <C>Volume</C> <C>Returns current used volume</C> </R>
<R> <C>Side</C> <C>Returns current side (1 or 2)</C> </R>
<R> <C>NumOfTitles</C> <C>Returns number of titles</C> </R>
<R> <C>DiscID</C> <C>Returns system-generated 64-bit "unique" identification number for the specified DVD</C> </R>
<R> <C>NumOfChapters</C> <C>Returns number of chapters of the specified title (specify title in SubProp parameter)</C> </R>
<R> <C>Title</C> <C>Returns current title</C> </R>
<R> <C>Chapter</C> <C>Returns current chapter</C> </R>
<R> <C>Time</C> <C>Returns current time using format like "HH:MM:SS:FF", where FF is frame in current second.</C> </R>
<R> <C>TotalTitleTime</C> <C>Retrieves the total playback time for the current title.</C> </R>
</TABLE>


<FM>Example<FC>

// gets number of titles
NumOfTitles := StrToIntDef(ImageEnView1.IO.DShowParams.DVDGetProperty('NumOfTitles'),0);
// gets number of chapters in title '1'
NumOfChapters := StrToIntdef(ImageEnView1.IO.DShowParams.DVDGetProperty('NumOfChapters','1'),0);

<FM>Demos<FN>
capture\VMR_DVD
!!}
function TIEDirectShow.DVDGetProperty(Prop:string; SubProp:string):string;
var
  pulNumOfVolumes,pulVolume,pSide,pulNumOfTitles:ULONG;
  pullDiscID:int64;
  pulNumOfChapters:ULONG;
  pLocation:IEDVD_PLAYBACK_LOCATION2;
  pTotalTime:IEDVD_HMSF_TIMECODE;
  pulTimeCodeFlags:ULONG;
begin
  result:='';
  Prop:=UpperCase(Prop);
  SubProp:=UpperCase(SubProp);
  if assigned(fDVDInfo2) then
  begin
    result:='Invalid Property';
    if Prop='NUMOFVOLUMES' then
    begin
      fDVDInfo2.GetDVDVolumeInfo(pulNumOfVolumes,pulVolume,pSide,pulNumOfTitles);
      result:=IntToStr(pulNumOfVolumes);
    end
    else if Prop='VOLUME' then
    begin
      fDVDInfo2.GetDVDVolumeInfo(pulNumOfVolumes,pulVolume,pSide,pulNumOfTitles);
      result:=IntToStr(pulVolume);
    end
    else if Prop='SIDE' then
    begin
      fDVDInfo2.GetDVDVolumeInfo(pulNumOfVolumes,pulVolume,pSide,pulNumOfTitles);
      result:=IntToStr(pSide);
    end
    else if Prop='NUMOFTITLES' then
    begin
      fDVDInfo2.GetDVDVolumeInfo(pulNumOfVolumes,pulVolume,pSide,pulNumOfTitles);
      result:=IntToStr(pulNumOfTitles);
    end
    else if Prop='DISCID' then
    begin
      fDVDInfo2.GetDiscID(nil,pullDiscID);
      result:=IntToHex(pullDiscID,16);
    end
    else if (Prop='NUMOFCHAPTERS') and (SubProp<>'') then
    begin
      fDVDInfo2.GetNumberOfChapters(StrToIntDef(SubProp,1),pulNumOfChapters);
      result:=IntToStr(pulNumOfChapters);
    end
    else if (Prop='TITLE') then
    begin
      fDVDInfo2.GetCurrentLocation(pLocation);
      result:=IntToStr(pLocation.TitleNum);
    end
    else if (Prop='CHAPTER') then
    begin
      fDVDInfo2.GetCurrentLocation(pLocation);
      result:=IntToStr(pLocation.ChapterNum);
    end
    else if (Prop='TIME') then
    begin
      fDVDInfo2.GetCurrentLocation(pLocation);
      with pLocation.TimeCode do
        result:=pad2(IntToStr(bHours))+':'+pad2(IntToStr(bMinutes))+':'+pad2(IntToStr(bSeconds))+':'+pad2(IntToStr(bFrames));
    end
    else if (Prop='TOTALTITLETIME') then
    begin
      fDVDInfo2.GetTotalTitleTime(pTotalTime,pulTimeCodeFlags);
      with pTotalTime do
        result:=pad2(IntToStr(bHours))+':'+pad2(IntToStr(bMinutes))+':'+pad2(IntToStr(bSeconds))+':'+pad2(IntToStr(bFrames));
    end

  end;
end;

{!!
<FS>TIEDirectShow.DVDPlayAdvanced

<FM>Declaration<FC>
procedure DVDPlayAdvanced(PlayForward:boolean; Speed:double);

<FM>Description<FN>
Change the speed and direction of playing.
Setting PlayForward=true the DVD plays forward at the specified speed from the current location.
Setting playForward=false the DVD plays backward at the specified speed from the current location.
Speed specifies the playback speed. This value is a multiplier, where 1.0 is the authored speed, so a value of 2.5 plays at two and one-half times the authored speed, while a value of 0.5 plays at half the authored speed. The actual speed of playback depends on the capabilities of the video decoder. Values below 0.00001 are converted to 0.00001.
!!}
procedure TIEDirectShow.DVDPlayAdvanced(PlayForward:boolean; Speed:double);
var
  ppCmd:IIEDVDCmd;
begin
  if assigned(fDVDControl2) then
  begin
    if PlayForward then
      fDVDControl2.PlayForwards(Speed,0,ppCmd)
    else
      fDVDControl2.PlayBackwards(Speed,0,ppCmd);
  end;
end;

{!!
<FS>TIEDirectShow.Connect

<FM>Declaration<FC>
procedure Connect;

<FM>Description<FN>
Connects to the specified video input or multimedia file. This makes a DirectShow graph which needs to be activated with Run in order to make it active.
Several methods and properties work only after Connect has been successfully called.
!!}
procedure TIEDirectShow.Connect;
begin
  if fDVDInputPath<>'' then
    DVDConnect
  else
    StdConnect;
end;

{!!
<FS>TIEDirectShow.TunerChannel

<FM>Declaration<FC>
property TunerChannel:integer;

<FM>Description<FN>
Sets the channel when the video input source is a TV Tuner.
!!}
procedure TIEDirectShow.SetVideoTunerChannel(value: integer);
begin
  if assigned(fTuner) then
    fTuner.put_Channel(value, AMTUNER_SUBCHAN_DEFAULT, AMTUNER_SUBCHAN_DEFAULT);
end;

{!!
<FS>TIEDirectShow.Step

<FM>Declaration<FC>
procedure Step(frames:integer);

<FM>Description<FN>
Go forward for <FC>frames<FN> steps.
!!}
function TIEDirectShow.Step(frames:integer):boolean;
var
  so:IUnknown;
begin
  result:=false;
  if assigned(fVideoFrameStep) then
  begin
    so:=nil;
    result:=fVideoFrameStep.Step(frames,so)=S_OK;
  end;
end;

function TIEDirectShow.GetVideoTunerChannel: integer;
var
  lVideoSubChannel: integer;
  lAudioSubChannel: integer;
begin
  result := 0;
  if assigned(fTuner) then
    fTuner.get_Channel(result, lVideoSubChannel, lAudioSubChannel);
end;

{!!
<FS>TIEDirectShow.TunerFindSignal

<FM>Declaration<FC>
function TunerFindSignal:boolean;

<FM>Description<FN>
Returns True when a channel contains a TV signal.
!!}
function TIEDirectShow.TunerFindSignal: boolean;
var
  lChannel, lpFoundSignal: integer;
begin
  result := false;
  if assigned(fTuner) then
  begin
    lChannel := GetVideoTunerChannel;
    fTuner.AutoTune(lChannel, lpFoundSignal);
    result := lpFoundSignal = 1;
  end;
end;

function GetPinFilter(p:IIEPin):IIEBaseFilter;
var
  pInfo: IEPIN_INFO;
begin
  p.QueryPinInfo(@pInfo);
  result:=pInfo.pFilter;
end;

procedure TIEDirectShow.VMRDisconnectInPin;
var
  penum:IIEEnumPins;
  f:integer;
begin
  if assigned(fVideoMixingRenderer) then
  begin
    // save connection
    fVMRSavedPin1:=nil;
    fVMRSavedPin2:=nil;
    fVideoMixingRenderer.EnumPins(penum);
    penum.Next(1,fVMRSavedPin1,f); // only one pin
    fVMRSavedPin1.ConnectedTo(fVMRSavedPin2);
    // disconect pins (isolate VMR renderer)
    fGraph.Disconnect(fVMRSavedPin2);
  end;
end;

procedure TIEDirectShow.VMRReconnectInPin;
var
  g2:IIEFilterGraph2;
begin
  if assigned(fVideoMixingRenderer) and assigned(fVMRSavedPin1) and assigned(fVMRSavedPin2) then
  begin
    // recreate video mixing renderer and reconnect pins
    VMRCreate;
    g2:=nil;
    fGraph.QueryInterface(IID_IIEFilterGraph2,g2);
    g2.RenderEx(fVMRSavedPin2,1,nil);
  end;
end;

{!!
<FS>TIEDirectShow.SetCurrentVideoFormat

<FM>Declaration<FC>
procedure SetCurrentVideoFormat(width,height:integer; format:string);

<FM>Description<FN>
Allows to set the video format. You can know supported formats reading <A TIEDirectShow.VideoFormats> property.
The format parameter is the same of VideoFormats.Format, or an empty string if it doesn't matter.
!!}
procedure TIEDirectShow.SetCurrentVideoFormat(width, height: integer; format: string);
var
  pmt: PIEAM_MEDIA_TYPE;
  ih: PIEVIDEOINFOHEADER;
begin
  if assigned(fStreamConfig) then
  begin
    fStreamConfig.GetFormat(pmt);
    ih := pointer(pmt^.pbFormat);
    ih^.bmiHeader.biWidth := width;
    ih^.bmiHeader.biHeight := height;
    if format <> '' then
      pmt^.subtype := StrToVideoMediaSubType(format);

    VMRDisconnectInPin; // diconnect and reconnect VMR, otherwise it doesn't accept new resolution

    fStreamConfig.SetFormat(pmt);

    VMRReconnectInPin;

    DeleteMediaType(pmt);
  end;
end;

{!!
<FS>TIEDirectShow.GetCurrentVideoFormat

<FM>Declaration<FC>
procedure GetCurrentVideoFormat(var width,height:integer; var format:string);

<FM>Description<FN>
Allows to set the video format. You can know supported formats reading <A TIEDirectShow.VideoFormats> property.
The format parameter is the same of VideoFormats[].Format, or an empty string if it doesn�t matter.
!!}
procedure TIEDirectShow.GetCurrentVideoFormat(var width, height: integer; var format: string);
var
  pmt: PIEAM_MEDIA_TYPE;
  ih: PIEVIDEOINFOHEADER;
  mt: IEAM_MEDIA_TYPE;
begin
  if assigned(fStreamConfig) then
  begin
    fStreamConfig.GetFormat(pmt);
    ih := pointer(pmt^.pbFormat);
    width := ih^.bmiHeader.biWidth;
    height := ih^.bmiHeader.biHeight;
    format := VideoMediaSubTypeToStr(pmt^.subtype);
    DeleteMediaType(pmt);
  end
  else if assigned(fSampleGrabberFilter) then
  begin
    fSampleGrabberFilter.GetConnectedMediaType(@mt);
    if not CompareMem(@mt.formattype, @FORMAT_VideoInfo, sizeof(TGUID)) then
      exit;
    ih := PIEVIDEOINFOHEADER(mt.pbFormat);
    width:=ih^.bmiHeader.biWidth;
    height:=ih^.bmiHeader.biHeight;
    CoTaskMemFree(mt.pbFormat);
  end;
end;

{!!
<FS>TIEDirectShow.GetAverageTimePerFrame

<FM>Declaration<FC>
function GetAverageTimePerFrame:int64;

<FM>Description<FN>
Returns, when available, the number of milliseconds for each frame.
!!}
function TIEDirectShow.GetAverageTimePerFrame:int64;
var
  pmt: PIEAM_MEDIA_TYPE;
  ih: PIEVIDEOINFOHEADER;
  mt: IEAM_MEDIA_TYPE;
  lt: TIETimeFormat;
  p1,p2:int64;
begin
  result:=0;
  if assigned(fStreamConfig) then
  begin
    fStreamConfig.GetFormat(pmt);
    ih := pointer(pmt^.pbFormat);
    result := ih^.AvgTimePerFrame.lo32 + (ih^.AvgTimePerFrame.hi32 * $100000000);
    DeleteMediaType(pmt);
  end
  else if assigned(fSampleGrabberFilter) then
  begin
    fSampleGrabberFilter.GetConnectedMediaType(@mt);
    if not CompareMem(@mt.formattype, @FORMAT_VideoInfo, sizeof(TGUID)) then
      exit;
    ih := PIEVIDEOINFOHEADER(mt.pbFormat);
    result := ih^.AvgTimePerFrame.lo32 + (ih^.AvgTimePerFrame.hi32 * $100000000);
    CoTaskMemFree(mt.pbFormat);
  end;

  if result=0 then
  begin
    p2:=0;
    lt:=TimeFormat;
    TimeFormat:=tfTime;
    p1:=-1;
    Run;
    while true do
    begin
      p2:=Position;
      if (p1=-1) and (p2<>0) then
        p1:=p2;
      if (p1<>-1) and (p2<>p1) then
        break;
      sleep(10);
    end;
    Pause;
    TimeFormat:=lt;
    result:=(p2-p1);
  end;
end;

{!!
<FS>TIEDirectShow.Disconnect

<FM>Declaration<FC>
procedure Disconnect;

<FM>Description<FN>
Disconnects from the specified video input or multimedia file.
!!}
procedure TIEDirectShow.Disconnect;
begin
  if (fControl <> nil) and (State <> gsStopped) then
    fControl.Stop;
  fDVDControl2 := nil;
  fVideoMixingRenderer:=nil;
  fVMRFilterConfig:=nil;
  fVMRWindowlessControl:=nil;
  fVideoFrameStep:=nil;
  fTunerFilter := nil;
  fTuner := nil;
  fCrossBarFilter := nil;
  fCrossBar := nil;
  fStreamConfig := nil;
  fIAMVideoCompression := nil;
  fMediaEvent := nil;
  fMediaSeeking := nil;
  fControl := nil;
  fNullRenderer := nil;
  fSampleGrabberFilter := nil;
  fSampleGrabber := nil;
  fCurColor := nil;
  fCurFileInput := nil;
  fBuilder := nil;
  fGraph := nil;
  fSampleGrabberCB := nil; // fSampleGrabberCB automatically called
  fSystemClock:=nil;
end;

{!!
<FS>TIEDirectShow.Connected

<FM>Declaration<FC>
property Connected:boolean;

<FM>Description<FN>
Returns true when connected to the video input or multimedia file.
!!}
function TIEDirectShow.GetGraphCreated: boolean;
begin
  result := fGraph <> nil;
end;

{!!
<FS>TIEDirectShow.Run

<FM>Declaration<FC>
procedure Run;

<FM>Description<FN>
After calling Connect you have to run the graph. This starts video capture or file capture.
!!}
procedure TIEDirectShow.Run;
begin
  if fControl <> nil then
    fControl.Run;
end;

{!!
<FS>TIEDirectShow.Stop

<FM>Declaration<FC>
procedure Stop;

<FM>Description<FN>
This is used to stop the graph's execution.
!!}
procedure TIEDirectShow.Stop;
begin
  if fControl <> nil then
    fControl.StopWhenReady;
end;

{!!
<FS>TIEDirectShow.Pause

<FM>Declaration<FC>
procedure Pause;

<FM>Description<FN>
This is used to pause the graph.
!!}
procedure TIEDirectShow.Pause;
begin
  if fControl <> nil then
    fControl.Pause;
end;

{!!
<FS>TIEDirectShow.State

<FM>Declaration<FC>
function State:<A TIEDirectShowState>;

<FM>Description<FN>
State function returns the current state of the graph.
!!}
function TIEDirectShow.State: TIEDirectShowState;
begin
  if fControl <> nil then
    fControl.GetState(100, result)
  else
    result := gsStopped;
end;

{!!
<FS>TIEDirectShow.Rate

<FM>Declaration<FC>
property Rate:double;

<FM>Description<FN>
Specifies the frame rate where Rate is:
1 = normal speed
2 = double speed
0.5 = half speed
Not all devices support this property.� Important.� The Rate does NOT set or get the number of frames per second (FPS).
To save a movie originally shot at 30 fps to.15 fps set the rate to 0.5.

The Rate can only be set if the if the file is running or is paused..
!!}
procedure TIEDirectShow.SetRate(value: double);
begin
  if fMediaSeeking <> nil then
    fMediaSeeking.SetRate(value);
end;

function TIEDirectShow.GetRate: double;
begin
  if fMediaSeeking <> nil then
    fMediaSeeking.GetRate(@result);
end;

{!!
<FS>TIEDirectShow.ConvertTimeFormat

<FM>Declaration<FC>
function ConvertTimeFormat(source:int64; sourceFormat:<A TIETimeFormat>; targetFormat:<A TIETimeFormat>):int64;

<FM>Description<FN>
Converts from a time format to another one.
!!}
function TIEDirectShow.ConvertTimeFormat(source:int64; sourceFormat:TIETimeFormat; targetFormat:TIETimeFormat):int64;
const
  ar:array [tfNone..tfTime] of PGUID=(@TIME_FORMAT_NONE,@TIME_FORMAT_FRAME,@TIME_FORMAT_SAMPLE,@TIME_FORMAT_FIELD,@TIME_FORMAT_BYTE,@TIME_FORMAT_MEDIA_TIME);
var
  rt1,rt2:IEREFERENCE_TIME;
begin
  rt1.lo32 := source and $FFFFFFFF;
  rt1.hi32:=(source shr 16) shr 16; //rf.hi32 := v shr 32; why this? To support Delphi 3...
  if fMediaSeeking.ConvertTimeFormat(@rt2,ar[targetFormat],@rt1,ar[sourceFormat])=S_OK then
    result := rt2.lo32 + (rt2.hi32 * $100000000)
  else
    result:=0;
end;

{!!
<FS>TIEDirectShow.TimeFormat

<FM>Declaration<FC>
property TimeFormat:<A TIETimeFormat>;

<FM>Description<FN>
Specifies the time format for Position and Duration properties.
!!}
procedure TIEDirectShow.SetXTimeFormat(value: TIETimeFormat);
begin
  if fMediaSeeking <> nil then
  begin
    case value of
      tfNone: fMediaSeeking.SetTimeFormat(@TIME_FORMAT_NONE);
      tfFrame: fMediaSeeking.SetTimeFormat(@TIME_FORMAT_FRAME);
      tfSample: fMediaSeeking.SetTimeFormat(@TIME_FORMAT_SAMPLE);
      tfField: fMediaSeeking.SetTimeFormat(@TIME_FORMAT_FIELD);
      tfByte: fMediaSeeking.SetTimeFormat(@TIME_FORMAT_BYTE);
      tfTime: fMediaSeeking.SetTimeFormat(@TIME_FORMAT_MEDIA_TIME);
    end;
  end;
end;

function TIEDirectShow.GetXTimeFormat: TIETimeFormat;
var
  tf: TGUID;
begin
  result := tfNone;
  if fMediaSeeking <> nil then
  begin
    fMediaSeeking.GetTimeFormat(@tf);
    if CompareMem(@TIME_FORMAT_NONE, @tf, sizeof(TGUID)) then
      result := tfNone
    else if CompareMem(@TIME_FORMAT_FRAME, @tf, sizeof(TGUID)) then
      result := tfFrame
    else if CompareMem(@TIME_FORMAT_SAMPLE, @tf, sizeof(TGUID)) then
      result := tfSample
    else if CompareMem(@TIME_FORMAT_FIELD, @tf, sizeof(TGUID)) then
      result := tfField
    else if CompareMem(@TIME_FORMAT_BYTE, @tf, sizeof(TGUID)) then
      result := tfByte
    else if CompareMem(@TIME_FORMAT_MEDIA_TIME, @tf, sizeof(TGUID)) then
      result := tfTime;
  end;
end;

{!!
<FS>TIEDirectShow.SaveGraph

<FM>Declaration<FC>
procedure SaveGraph(filename:string);

<FM>Description<FN>
This method is useful to debug the filter graph built using Connect.
The file must have 'grf' extension and can be read using GraphEdit utility (you can get this from the Microsoft DirectShow SDK).
!!}
procedure TIEDirectShow.SaveGraph(filename: string);
const
  wszStreamName: PWideChar = 'ActiveMovieGraph';
var
  pStorage: IIEStorage;
  wszPath: PWideChar;
  pStream: IIEStream;
  pPersist: IIEPersistStream;
begin
  pStorage := nil;
  getmem(wszPath, 4096);
  StringToWideChar(filename, wszPath, 2048);
  StgCreateDocfile(wszPath, STGM_CREATE or STGM_TRANSACTED or STGM_READWRITE or STGM_SHARE_EXCLUSIVE, 0, pStorage);
  freemem(wszPath);
  pStorage.CreateStream(wszStreamName, STGM_WRITE or STGM_CREATE or STGM_SHARE_EXCLUSIVE, 0, 0, pStream);
  pPersist := nil;
  fGraph.QueryInterface(IID_IIEPersistStream, pPersist);
  pPersist.Save(pStream, TRUE);
  pStream := nil;
  pPersist := nil;
  pStorage.Commit(STGC_DEFAULT);
  pStorage := nil;
end;

{!!
<FS>TIEDirectShow.Duration

<FM>Declaration<FC>
property Duration:int64;

<FM>Description<FN>
Returns the duration of the stream (multimedia file) in a format specified by <A TIEDirectShow.TimeFormat> property.
!!}
function TIEDirectShow.GetDuration: int64;
var
  rf: IEREFERENCE_TIME;
begin
  if (fMediaSeeking <> nil) and (fMediaSeeking.GetDuration(@rf) = S_OK) then
    result := rf.lo32 + (rf.hi32 * $100000000)
  else
    result:=0;
end;

procedure TIEDirectShow.SetPosition(v: int64);
const
  TIMEOUT=10000;  // 10s
var
  rf: IEREFERENCE_TIME;
  pfs: TIEDirectShowState;
  timestart:dword;
  re:HRESULT;
begin
  if fMediaSeeking <> nil then
  begin

    rf.lo32 := v and $FFFFFFFF;
    rf.hi32 :=(v shr 16) shr 16; //rf.hi32 := v shr 32; why this? TO support Delphi 3...
    fMediaSeeking.SetPositions(@rf, AM_SEEKING_AbsolutePositioning, nil, AM_SEEKING_NoPositioning);

    if fControl <> nil then
    begin
      timestart:=GetTickCount;
      while GetTickCount-timestart<TIMEOUT do
      begin
        re:=fControl.GetState(100, pfs);
        if (re=S_OK) or (re=VFW_S_CANT_CUE) then
          break;
        //sleep(10);
      end;
    end;
  end;
end;

{!!
<FS>TIEDirectShow.Position

<FM>Declaration<FC>
property Position:int64;

<FM>Description<FN>
Returns the stream (multimedia file) position in a format specified by <A TIEDirectShow.TimeFormat> property.
!!}
function TIEDirectShow.GetPosition: int64;
var
  rf: IEREFERENCE_TIME;
begin
  if (fMediaSeeking <> nil) and (fMediaSeeking.GetCurrentPosition(@rf) = S_OK) then
    result := rf.lo32 + (rf.hi32 * $100000000)
  else
    result := 0;
end;

{!!
<FS>TIEDirectShow.EndOfStream

<FM>Declaration<FC>
property EndOfStream:boolean;

<FM>Description<FN>
EndOfStream tests whether the file position is at the end of a file.
!!}
function TIEDirectShow.GetEndOfStream: boolean;
var
  pEvCode: integer;
begin
  if fMediaEvent <> nil then
    result := fMediaEvent.WaitForCompletion(0, pEvCode) = S_OK
  else
    result := true;
end;

{!!
<FS>TIEDirectShow.BufferToTIEBitmap

<FM>Declaration<FC>
procedure BufferToTIEBitmap(buffer:pbyte; len:integer; DestBitmap:<A TIEBitmap>);

<FM>Description<FN>
For internal use only. Used only if you use TIEDirectShow as stand alone object.
!!}
// if buffer=nil calls SampleGrabberFilter.GetCurrentBuffer to get it
procedure TIEDirectShow.BufferToTIEBitmap(buffer: pbyte; len: integer; DestBitmap: TIEBitmap);
var
  mt: IEAM_MEDIA_TYPE;
  vf: PIEVIDEOINFOHEADER;
  procedure CopyRows;
  var
    i,rl:integer;
    src:pbyte;
  begin
    if Destbitmap.BitAlignment=32 then
      CopyMemory(DestBitmap.Scanline[DestBitmap.Height - 1], buffer, Destbitmap.RowLen * DestBitmap.Height)
    else
    begin
      src:=buffer;
      rl:=IEBitmapRowLen(DestBitmap.Width, 24, 32);
      for i:=DestBitmap.Height-1 downto 0 do
      begin
        CopyMemory( DestBitmap.Scanline[i], src, rl );
        inc(src, rl);
      end;
    end;
  end;
begin
  if fSampleGrabberFilter <> nil then
  begin
    fSampleGrabberFilter.GetConnectedMediaType(@mt);
    if not CompareMem(@mt.formattype, @FORMAT_VideoInfo, sizeof(TGUID)) then
      exit;
    vf := PIEVIDEOINFOHEADER(mt.pbFormat);
    if DestBitmap.Location = ieFile then
      DestBitmap.Location := ieMemory;
    if (DestBitmap.PixelFormat <> ie24RGB) or (DestBitmap.Width <> vf^.bmiHeader.biWidth) or (DestBitmap.Height <> vf^.bmiHeader.biHeight) then
      DestBitmap.Allocate(vf^.bmiHeader.biWidth, vf^.bmiHeader.biHeight, ie24RGB);
    if buffer <> nil then
    begin
      // use buffer and len
      CopyRows;
    end
    else
    begin
      // use GetCurrentBuffer to get the buffer
      len := 0;
      fSampleGrabberFilter.GetCurrentBuffer(@len, buffer); // get buffer size
      if len <> 0 then
      begin
        if len = DestBitmap.RowLen * DestBitmap.Height then
        begin
          // bitalignment matches
          buffer := DestBitmap.ScanLine[DestBitmap.Height - 1];
          fSampleGrabberFilter.GetCurrentBuffer(@len, buffer);
        end
        else
        begin
          getmem(buffer, len);
          fSampleGrabberFilter.GetCurrentBuffer(@len, buffer);
          CopyRows;
          freemem(buffer);
        end;
        CoTaskMemFree(mt.pbFormat);
      end;
    end;
  end;
end;

{!!
<FS>TIEDirectShow.GetSample

<FM>Declaration<FC>
procedure GetSample(DestBitmap:<A TIEBitmap>);

<FM>Description<FN>
Copies current sample to the specified bitmap.
You can call this method inside a <A TImageEnView.OnDShowNewFrame> event or anywhere you want (for example, on response to a TTimer event).
!!}
procedure TIEDirectShow.GetSample(DestBitmap: TIEBitmap);
var
  dib:pbyte;
  tempProc:TImageEnProc;
  ow,oh:integer;
begin
  if assigned(fVMRWindowlessControl) then
  begin
    // video mixing renderer
    ow:=DestBitmap.Width;
    oh:=DestBitmap.Height;
    dib:=nil;
    fVMRWindowlessControl.GetCurrentImage(dib);
    if assigned(dib) then
    begin
      _CopyDIB2BitmapEx(cardinal(dib),DestBitmap,nil,true);
      CoTaskMemFree(dib);
      tempProc:=TImageEnProc.Create(nil);
      tempProc.AttachedIEBitmap:=DestBitmap;
      tempProc.Resample(ow,oh,rfNone);
      tempProc.Free;
    end;
  end;
  if assigned(fSampleGrabberFilter) then
    // use sample grabber filter
    BufferToTIEBitmap(nil, 0, DestBitmap);
end;

constructor TIESampleGrabberCB.Create(Owner: TObject);
begin
  fOwner := Owner;
end;

destructor TIESampleGrabberCB.Destroy;
begin
  inherited;
end;

function TIESampleGrabberCB.SampleCB(SampleTime: double; pSample: IIEMediaSample): HRESULT;
begin
  result := S_OK;
end;

function TIESampleGrabberCB.BufferCB(SampleTime: double; pBuffer: pbyte; BufferLen: integer): HRESULT;
var
  ds: TIEDirectShow;
begin
  try
    ds := TIEDirectShow(fOwner);
    PostMessage(ds.fNotifyWindow, ds.fNewFrameMessage, 0, integer(pointer(ds)));
  except
  end;
  result := S_OK;
end;

{!!
<FS>TIEDirectShow.SetNotifyWindow

<FM>Declaration<FC>
procedure SetNotifyWindow(WindowHandle:THandle; NewFrameMessage:integer; EventMessage:integer);

<FM>Description<FN>
For internal use only. Used only if you use TIEDirectShow as stand alone object.
!!}
procedure TIEDirectShow.SetNotifyWindow(WindowHandle: THandle; NewFrameMessage: integer; EventMessage: integer);
begin
  fNotifyWindow := WindowHandle;
  fNewFrameMessage := NewFrameMessage;
  fEventMessage := EventMessage;
  if Connected and assigned(fMediaEvent) then
  begin
    fMediaEvent.SetNotifyWindow(fNotifyWindow, fEventMessage, integer(pointer(self)));
  end;
end;

{!!
<FS>TIEDirectShow.GetEventCode

<FM>Declaration<FC>
function GetEventCode(var Event:integer):boolean;

<FM>Description<FN>
Read current event obtained from DirectShow.

A <A TImageEnView.OnDShowEvent> occurs whenever there is an event available.
Common events are:
<FC>  IEEC_COMPLETE
  IEEC_USERABORT
  IEEC_ERRORABORT
  IEEC_TIME
  IEEC_REPAINT
  IEEC_STREAM_ERROR_STOPPED
  IEEC_STREAM_ERROR_STILLPLAYING
  IEEC_ERROR_STILLPLAYING
  IEEC_PALETTE_CHANGED
  IEEC_VIDEO_SIZE_CHANGED
  IEEC_QUALITY_CHANGE
  IEEC_SHUTTING_DOWN
  IEEC_CLOCK_CHANGED
  IEEC_PAUSED
  IEEC_OPENING_FILE
  IEEC_BUFFERING_DATA
  IEEC_FULLSCREEN_LOST
  IEEC_ACTIVATE
  IEEC_NEED_RESTART
  IEEC_WINDOW_DESTROYED
  IEEC_DISPLAY_CHANGED
  IEEC_STARVATION
  IEEC_OLE_EVENT
  IEEC_NOTIFY_WINDOW
  IEEC_STREAM_CONTROL_STOPPED
  IEEC_STREAM_CONTROL_STARTED
  IEEC_END_OF_SEGMENT
  IEEC_SEGMENT_STARTED
  IEEC_LENGTH_CHANGED
  IEEC_DEVICE_LOST
  IEEC_STEP_COMPLETE
  IEEC_SKIP_FRAMES
  IEEC_TIMECODE_AVAILABLE
  IEEC_EXTDEVICE_MODE_CHANGE
  IEEC_GRAPH_CHANGED
  IEEC_CLOCK_UNSET
<FN>
!!}
function TIEDirectShow.GetEventCode(var Event: integer): boolean;
var
  evParam1, evParam2: integer;
begin
  if assigned(fMediaEvent) then
  begin
    result := fMediaEvent.GetEvent(Event, evParam1, evParam2, 0) = S_OK;
    if result then
      fMediaEvent.FreeEventParams(Event, evParam1, evParam2);
  end
  else
    result:=false;
end;

{!!
<FS>TIEDirectShow.VideoCodecQuality

<FM>Declaration<FC>
property VideoCodecQuality:double;

<FM>Description<FN>
Specifies the video compression codec quality. Not all codecs support this property.
!!}
procedure TIEDirectShow.SetVideoCodecQuality(value: double);
begin
  if assigned(fIAMVideoCompression) then
    fIAMVideoCompression.put_Quality(value);
end;

function TIEDirectShow.GetVideoCodecQuality: double;
begin
  result := 0;
  if assigned(fIAMVideoCompression) then
    fIAMVideoCompression.get_Quality(result);
end;

function TIEDirectShow.ShowFilterPropertyPages(filter: IIEBaseFilter; checkOnly:boolean):boolean;
var
  pSpecify: IIESpecifyPropertyPages;
  caGUID: TIECAGUID;
begin
  result:=false;
  pSpecify := nil;
  filter.QueryInterface(IID_IIESpecifyPropertyPages, pSpecify);
  if pSpecify <> nil then
  begin
    pSpecify.GetPages(caGUID);
    pSpecify := nil;
    if checkOnly then
      result:=true
    else
      result:= OleCreatePropertyFrame(fNotifyWindow, 0, 0, '', 1, pointer(@filter), caGUID.cElems, PGUID(caGUID.pElems), nil, 0, nil)=S_OK;
    CoTaskMemFree(caGUID.pElems);
  end;
end;

function TIEDirectShow.ShowPinPropertyPages(pin: IIEPin; checkOnly:boolean):boolean;
var
  pSpecify: IIESpecifyPropertyPages;
  caGUID: TIECAGUID;
begin
  result:=false;
  pSpecify := nil;
  pin.QueryInterface(IID_IIESpecifyPropertyPages, pSpecify);
  if pSpecify <> nil then
  begin
    pSpecify.GetPages(caGUID);
    pSpecify := nil;
    if checkOnly then
      result:=true
    else
      result:= OleCreatePropertyFrame(fNotifyWindow, 0, 0, '', 1, pointer(@pin), caGUID.cElems, PGUID(caGUID.pElems), nil, 0, nil)=S_OK;
    CoTaskMemFree(caGUID.pElems);
  end;
end;

{!!
<FS>TIEDirectShow.ShowPropertyPages

<FM>Declaration<FC>
function ShowPropertyPages(proppages: <A TIEPropertyPages>; proptype: <A TIEPropertyPagesType>; checkOnly:boolean=false):boolean;

<FM>Description<FN>
Shows a dialog for the specified filter of the filter graph.
<FC>proppages<FN> specifies the filter, while <FC>proptype<FN> specifies if you want the dialog for the input, output or common filter properties.
If <FC>checkOnly<FN> is True, the dialog will not be displayed. It is useful to know if the dialog is available (checked the return value).
Return False if fails.
!!}
function TIEDirectShow.ShowPropertyPages(proppages: TIEPropertyPages; proptype: TIEPropertyPagesType; checkOnly:boolean):boolean;
var
  f: IIEBaseFilter;
  pin: IIEPin;
begin
  result:=false;
  f := nil;
  if not Connected then
    Connect;
  case proppages of
    iepVideoInput:
      if fCurVideoInput <> nil then
        f := fCurVideoInput
      else if fCurFileInput <> nil then
        f := fCurFileInput;
    iepAudioInput:
      if fCurAudioInput <> nil then
        f := fCurAudioInput
      else if fCurFileInput <> nil then
        f := fCurFileInput;
    iepVideoCodec:
      if fCurVideoCodec <> nil then
        f := fCurVideoCodec;
    iepAudioCodec:
      if fCurAudioCodec <> nil then
        f := fCurAudioCodec;
    iepVideoInputSource:
      if fCrossBarFilter <> nil then
        f := fCrossBarFilter;
    iepTuner:
      if fTunerFilter <> nil then
        f := fTunerFilter;
  end;
  if assigned(f) then
    case proptype of
      ietFilter:
        result:=ShowFilterPropertyPages(f,checkOnly);
      ietInput:
        begin
          fBuilder.FindPin(f, PINDIR_INPUT, nil, nil, false, 0, pin);
          if assigned(pin) then
            result:=ShowPinPropertyPages(pin,checkOnly);
        end;
      ietOutput:
        begin
          fBuilder.FindPin(f, PINDIR_OUTPUT, nil, nil, false, 0, pin);
          if assigned(pin) then
            result:=ShowPinPropertyPages(pin,checkOnly);
        end;
    end;
end;

{!!
<FS>TIEDirectShow.GetSupportedTVStandards

<FM>Declaration<FC>
function GetSupportedTVStandards:<A TIETVStandards>;

<FM>Description<FN>
Returns a set of supported tv standards (NTSC, Pal,...).
This function is useful to know supported standard before call <A TIEDirectShow.SetTVStandard>.
!!}
function TIEDirectShow.GetSupportedTVStandards:TIETVStandards;
var
  r:longint;
  i:integer;
begin
  result:=[];
  if assigned(fAnalogVideoDecoder) then
  begin
    fAnalogVideoDecoder.get_AvailableTVFormats(@r);
    for i:=0 to 19 do
      if (vs1[i] or r)<>0 then
        include(result,vs3[i]);
  end;
end;

{!!
<FS>TIEDirectShow.SetTVStandard

<FM>Declaration<FC>
procedure SetTVStandard(Value:<A TIETVStandard>);

<FM>Description<FN>
Sets the input tv standard. To know supported tv standards use <A TIEDirectShow.GetSupportedTVStandards>.
!!}
procedure TIEDirectShow.SetTVStandard(Value:TIETVStandard);
var
  i:integer;
begin
  if assigned(fAnalogVideoDecoder) then
    for i:=0 to 19 do
      if Value=vs3[i] then
      begin
        fAnalogVideoDecoder.put_TVFormat(vs1[i]);
        break;
      end;
end;

{!!
<FS>TIEDirectShow.SetVCRHorizontalLocking

<FM>Declaration<FC>
procedure SetVCRHorizontalLocking(Value:boolean);

<FM>Description<FN>
When false assumes input from broadcast source (better synchronization pulses), when true tells the decoder to relas its standards (typically used from a tape source).
!!}
procedure TIEDirectShow.SetVCRHorizontalLocking(Value:boolean);
begin
  if assigned(fAnalogVideoDecoder) then
    fAnalogVideoDecoder.put_VCRHorizontalLocking(longint(Value));
end;

{!!
<FS>TIEDirectShow.SetVideoRenderRect

<FM>Declaration<FC>
procedure SetVideoRenderRect(SrcRect, DstRect:TRect);

<FM>Description<FN>
Used internally by <A TImageEnView> in order to set source and destination rectangle when <A TIEDirectShow.RenderVideo> is true.
!!}
procedure TIEDirectShow.SetVideoRenderRect(SrcRect, DstRect:TRect);
begin
  if assigned(fVMRWindowlessControl) then
    fVMRWindowlessControl.SetVideoPosition(@SrcRect,@DstRect);
end;

{!!
<FS>TIEDirectShow.GetVideoRenderRect

<FM>Declaration<FC>
procedure GetVideoRenderRect(var SrcRect:TRect; var DstRect:TRect);

<FM>Description<FN>
Used internally by <A TImageEnView> in order to get source and destination rectangle when <A TIEDirectShow.RenderVideo> is true.
!!}
procedure TIEDirectShow.GetVideoRenderRect(var SrcRect:TRect; var DstRect:TRect);
begin
  if assigned(fVMRWindowlessControl) then
    fVMRWindowlessControl.GetVideoPosition(@SrcRect,@DstRect);
end;

{!!
<FS>TIEDirectShow.GetVideoRenderNativeSize

<FM>Declaration<FC>
procedure GetVideoRenderNativeSize(var Width:integer; var Height:integer);

<FM>Description<FN>
Returns the video frame size when <A TIEDirectShow.RenderVideo> is true.
You should set the background bitmap to the same size.

<FM>Example<FC>
TImageEnView.IO.DShowParams.GetVideoRenderNativeSize(w,h);
TImageEnView.Proc.ImageResize(w,h);
!!}
procedure TIEDirectShow.GetVideoRenderNativeSize(var Width:integer; var Height:integer);
begin
  if assigned(fVMRWindowlessControl) then
    fVMRWindowlessControl.GetNativeVideoSize(@Width,@Height,nil,nil);
end;

{!!
<FS>TIEDirectShow.RepaintVideo

<FM>Declaration<FC>
procedure RepaintVideo(hwnd:THandle; hdc:THandle);

<FM>Description<FN>
Used internally by <A TImageEnView> in order to repaint display when <A TIEDirectShow.RenderVideo> is true.
!!}
procedure TIEDirectShow.RepaintVideo(hwnd:THandle; hdc:THandle);
begin
  if assigned(fVMRWindowlessControl) then
    fVMRWindowlessControl.RepaintVideo(hwnd,hdc);
end;

/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
// TIEMediaReader

constructor TIEMediaReader.Create(const FileName:string);
var
  ws: pwidechar;
  i,sCount,c:integer;
  st:PWideChar;
  mt:PIEAM_MEDIA_TYPE;
  ih: PIEVIDEOINFOHEADER;
begin
  fFrameBuffer:=nil;
  fFileName:=FileName;
  CoCreateInstance(CLSID_MediaDet, nil, CLSCTX_INPROC, IID_IIEMediaDet, fMediaDet);
  if assigned(fMediaDet) then
  begin
    // set filename
    getmem(ws, 4096);
    StringToWideChar(fFileName, ws, 2048);
    fMediaDet.put_Filename(ws);
    freemem(ws);
    // get streams count
    sCount:=0;
    fMediaDet.get_OutputStreams(@sCount);
    // iterate streams to search video stream
    c:=0;
    for i:=0 to sCount-1 do
    begin
      fMediaDet.put_CurrentStream(i);
      fMediaDet.get_StreamTypeB(st);
      if uppercase(IEConvertGUIDToString(@MEDIATYPE_Video)) = uppercase(WideCharToString(st)) then
        c:=i;
      SysFreeString(st);
    end;
    fMediaDet.put_CurrentStream(c);
    // get frame rate (frames per second)
    fMediaDet.get_FrameRate(@fFrameRate);
    // get length (seconds) and frame count
    fMediaDet.get_StreamLength(@fLength);
    fFrameCount:=trunc(fLength*fFrameRate);
    // media type and frame buffer
    getmem(mt,1024);
    fMediaDet.get_StreamMediaType(mt);
    ih := pointer(mt^.pbFormat);
    fFrameWidth:=ih^.bmiHeader.biWidth;
    fFrameHeight:=ih^.bmiHeader.biHeight;
    getmem(fFrameBuffer, ih^.bmiHeader.biSizeImage+512 );
    freemem(mt);
  end;
end;

destructor TIEMediaReader.Destroy;
begin
  if fFrameBuffer<>nil then
    freemem(fFrameBuffer);
  fMediaDet:=nil;
end;

{!!
<FS>TIEMediaReader.GetSample

<FM>Declaration<FC>
procedure GetSample(frame:int64; OutBitmap:<A TIEBitmap>);

<FM>Description<FN>
Copies the sample indexed by <FC>frame<FN> to <FC>OutBitmap<FN>.
!!}
procedure TIEMediaReader.GetSample(frame:int64; OutBitmap:TIEBitmap);
begin
  fMediaDet.GetBitmapBits(frame/fFrameRate,nil,fFrameBuffer,fFrameWidth,fFrameHeight);
  OutBitmap.CopyFromDIB(fFrameBuffer);
end;



// TIEMediaReader
/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////



{$ELSE} // IEINCLUDEDIRECTSHOW
implementation
{$ENDIF}

end.
