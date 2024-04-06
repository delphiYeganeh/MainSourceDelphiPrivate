unit ietwain;

{$R-}
{$Q-}

{$I ie.inc}

interface

uses
  Windows;

type

  TW_UINT32 = ULONG;
  TW_UINT16 = Word;
  TW_MEMREF = Pointer;
  TW_INT32 = LongInt;
  TW_INT16 = SmallInt;
  TW_STR32 = array[0..33] of Char;
  TW_STR255 = array[0..255] of Char;
  TW_BOOL = WordBool;
  TW_HANDLE = THandle;
  TW_UINT8 = Byte;

  pTW_ONEVALUE = ^TW_ONEVALUE;
  pTW_BOOL = ^TW_BOOL;
  pTW_IMAGEMEMXFER = ^TW_IMAGEMEMXFER;
  pTW_FIX32 = ^TW_FIX32;
  pTW_ENUMERATION = ^TW_ENUMERATION;
  pTW_ARRAY = ^TW_ARRAY;
  pTW_RANGE = ^TW_RANGE;
  pTW_UINT16 = ^TW_UINT16;
  pTW_IDENTITY = ^TW_IDENTITY;

  TW_RANGE = packed record
    ItemType: TW_UINT16;
    MinValue: TW_UINT32;
    MaxValue: TW_UINT32;
    StepSize: TW_UINT32;
    DefaultValue: TW_UINT32;
    CurrentValue: TW_UINT32;
  end;

  TW_ARRAY = packed record
    ItemType: TW_UINT16;
    NumItems: TW_UINT32;
    ItemList: array[0..1] of TW_UINT8;
  end;

  TW_ENUMERATION = packed record
    ItemType: TW_UINT16;
    NumItems: TW_UINT32;
    CurrentIndex: TW_UINT32;
    DefaultIndex: TW_UINT32;
    ItemList: array[0..1] of TW_UINT8;
  end;

  TW_FIX32 = packed record
    Whole: TW_INT16;
    Frac: TW_UINT16;
  end;

  TW_FRAME = packed record
    Left: TW_FIX32;
    Top: TW_FIX32;
    Right: TW_FIX32;
    Bottom: TW_FIX32;
  end;

  TW_IMAGELAYOUT = packed record
    Frame: TW_FRAME;
    DocumentNumber: TW_UINT32;
    PageNumber: TW_UINT32;
    FrameNumber: TW_UINT32;
  end;

  TW_EVENT = packed record
    pEvent: TW_MEMREF;
    TWMessage: TW_UINT16;
  end;

  TW_SETUPMEMXFER = packed record
    MinBufSize: TW_UINT32;
    MaxBufSize: TW_UINT32;
    Preferred: TW_UINT32;
  end;

  TW_SETUPFILEXFER = packed record
    FileName: TW_STR255;
    Format: TW_UINT16;
    VRefNum: TW_INT16;
  end;

  TW_MEMORY = packed record
    Flags: TW_UINT32;
    Length: TW_UINT32;
    TheMem: TW_MEMREF;
  end;

  TW_IMAGEMEMXFER = packed record
    Compression: TW_UINT16;
    BytesPerRow: TW_UINT32;
    Columns: TW_UINT32;
    Rows: TW_UINT32;
    XOffset: TW_UINT32;
    YOffset: TW_UINT32;
    BytesWritten: TW_UINT32;
    Memory: TW_MEMORY;
  end;

  TW_IMAGEINFO = packed record
    XResolution: TW_FIX32;
    YResolution: TW_FIX32;
    ImageWidth: TW_INT32;
    ImageLength: TW_INT32;
    SamplesPerPixel: TW_INT16;
    BitsPerSample: array[0..7] of TW_INT16;
    BitsPerPixel: TW_INT16;
    Planar: TW_BOOL;
    PixelType: TW_INT16;
    Compression: TW_UINT16;
  end;

  TW_ONEVALUE = packed record
    ItemType: TW_UINT16;
    Item: TW_UINT32;
  end;

  TW_CAPABILITY = packed record
    Cap: TW_UINT16;
    ConType: TW_UINT16;
    hContainer: TW_HANDLE;
  end;

  TW_STATUS = packed record
    ConditionCode: TW_UINT16;
    Reserved: TW_UINT16;
  end;

  TW_PENDINGXFERS = packed record
    Count: TW_UINT16;
    case boolean of
      False: (EOJ: TW_UINT32);
      True: (Reserved: TW_UINT32);
  end;

  TW_USERINTERFACE = packed record
    ShowUI: TW_BOOL;
    ModalUI: TW_BOOL;
    hParent: TW_HANDLE;
  end;

  TW_VERSION = packed record
    MajorNum: TW_UINT16;
    MinorNum: TW_UINT16;
    Language: TW_UINT16;
    Country: TW_UINT16;
    Info: TW_STR32;
  end;

TW_IDENTITY = packed record
  Id: TW_UINT32;
  Version: TW_VERSION;
  ProtocolMajor: TW_UINT16;
  ProtocolMinor: TW_UINT16;
  SupportedGroups: TW_UINT32;
  Manufacturer: TW_STR32;
  ProductFamily: TW_STR32;
  ProductName: TW_STR32;
end;

DSMENTRYPROC = function(pOrigin: pTW_IDENTITY; pDest: pTW_IDENTITY; DG: TW_UINT32; DAT: TW_UINT16; MSG: TW_UINT16; pData: TW_MEMREF): TW_UINT16; stdcall;

TDSMEntryProc = DSMENTRYPROC;

const

  TWLG_USA = 13;
  TWCY_USA = 1;
  TWON_PROTOCOLMAJOR = 1;
  TWON_PROTOCOLMINOR = 9;
  DG_IMAGE = $0002;
  DG_CONTROL = $0001;

  TWCC_SUCCESS = 0;
  TWCC_BUMMER = 1;
  TWCC_LOWMEMORY = 2;
  TWCC_NODS = 3;
  TWCC_MAXCONNECTIONS = 4;
  TWCC_OPERATIONERROR = 5;
  TWCC_BADCAP = 6;
  TWCC_BADPROTOCOL = 9;
  TWCC_BADVALUE = 10;
  TWCC_SEQERROR = 11;
  TWCC_BADDEST = 12;
  TWCC_CAPUNSUPPORTED = 13;
  TWCC_CAPBADOPERATION = 14;
  TWCC_CAPSEQERROR = 15;
  TWCC_DENIED = 16;
  TWCC_FILEEXISTS = 17;
  TWCC_FILENOTFOUND = 18;
  TWCC_NOTEMPTY = 19;
  TWCC_PAPERJAM = 20;
  TWCC_PAPERDOUBLEFEED = 21;
  TWCC_FILEWRITEERROR = 22;
  TWCC_CHECKDEVICEONLINE = 23;

  TWRC_SUCCESS = 0;
  TWRC_FAILURE = 1;

  DAT_PARENT = $0004;
  MSG_OPENDSM = $0301;
  MSG_CLOSEDSM = $0302;
  DAT_USERINTERFACE = $0009;
  MSG_DISABLEDS = $0501;
  DAT_IDENTITY = $0003;
  MSG_CLOSEDS = $0402;
  MSG_USERSELECT = $0403;
  DAT_STATUS = $0008;
  MSG_GET = $0001;
  MSG_GETFIRST = $0004;
  TWRC_ENDOFLIST = 7;
  MSG_GETNEXT = $0005;
  MSG_OPENDS = $0401;
  MSG_ENABLEDS = $0502;
  TWON_DONTCARE16 = $FFFF;
  DAT_CAPABILITY = $0001;
  TWON_ONEVALUE = 5;
  TWTY_STR255 = $000C;
  MSG_SET = $0006;
  DAT_PENDINGXFERS = $0005;
  MSG_ENDXFER = $0701;
  MSG_RESET = $0007;
  TWTY_BOOL = $0006;
  DAT_IMAGEINFO = $0101;
  DAT_SETUPMEMXFER = $0006;
  TWON_DONTCARE32 = DWORD($FFFFFFFF);
  TWMF_APPOWNS = $1;
  TWMF_HANDLE = $10;
  DAT_IMAGEMEMXFER = $0103;
  TWRC_XFERDONE = 6;
  CAP_CAPTION = $1001;
  TWRC_CANCEL = 3;
  DAT_IMAGENATIVEXFER = $0104;
  DAT_SETUPFILEXFER = $0007;
  TWFF_BMP = 2;
  DAT_IMAGEFILEXFER = $0105;
  MSG_NULL = $0000;
  DAT_EVENT = $0002;
  MSG_PROCESSEVENT = $0601;
  TWRC_DSEVENT = 4;
  MSG_XFERREADY = $0101;
  MSG_CLOSEDSREQ = $0102;
  DAT_IMAGELAYOUT = $0102;
  TWON_ENUMERATION = 4;
  ICAP_XRESOLUTION = $1118;
  ICAP_YRESOLUTION = $1119;
  TWON_ARRAY = 3;
  TWON_RANGE = 6;
  TWTY_UINT16 = $0004;
  TWTY_FIX32 = $0007;
  ICAP_UNITS = $0102;
  TWPF_CHOCOLATE = 0;
  ICAP_PIXELFLAVOR = $111F;
  TWPF_VANILLA = 1;
  ICAP_UNDEFINEDIMAGESIZE = $112D;
  ICAP_CONTRAST = $1103;
  ICAP_BRIGHTNESS = $1101;
  ICAP_THRESHOLD = $1123;
  ICAP_ROTATION = $1121;
  ICAP_XSCALING = $1124;
  ICAP_YSCALING = $1125;
  ICAP_PIXELTYPE = $0101;
  ICAP_BITDEPTH = $112B;
  ICAP_PLANARCHUNKY = $1120;
  TWPC_CHUNKY = 0;
  ICAP_XFERMECH = $0103;
  TWSX_MEMORY = 2;
  CAP_FEEDERENABLED = $1002;
  CAP_AUTOFEED = $1007;
  ICAP_AUTOMATICDESKEW = $1151;
  ICAP_AUTOMATICBORDERDETECTION = $1150;
  ICAP_AUTOBRIGHT = $1100;
  ICAP_AUTOMATICROTATE = $1152;
  ICAP_ORIENTATION = $1110;
  ICAP_SUPPORTEDSIZES = $1122;
  CAP_INDICATORS = $100B;
  CAP_DUPLEXENABLED = $1013;
  ICAP_GAMMA = $1108;
  ICAP_PHYSICALHEIGHT = $1112;
  ICAP_PHYSICALWIDTH = $1111;
  CAP_FEEDERLOADED = $1003;
  CAP_PAPERDETECTABLE = $100D;
  CAP_DUPLEX = $1012;
  TWOR_ROT0 = 0;
  TWOR_PORTRAIT = TWOR_ROT0;
  MSG_GETDEFAULT = $0003;
  TWMF_POINTER = $8;
  ICAP_FILTER = $1106;
  ICAP_HIGHLIGHT = $110A;
  ICAP_SHADOW = $1113;
  TWCP_NONE = 0;
  ICAP_COMPRESSION = $0100;

implementation


end.
