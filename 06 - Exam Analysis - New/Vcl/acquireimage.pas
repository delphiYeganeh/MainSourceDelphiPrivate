
unit AcquireImage;
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  twainh, clipbrd, jpeg;

const
  // return value for dsm_entry
  SUCCESS = TWRC_SUCCESS;
  FAILURE = TWRC_FAILURE;
  CANCEL = TWRC_CANCEL;

  // failure messages
  BUMMER = TWCC_BUMMER; {/ * Failure due to unknown causes * / }
  LOWMEMORY = TWCC_LOWMEMORY; {/ * Not enough memory to perform operation * / }
  NODS = TWCC_NODS; {/ * No Data Source * / }
  MAXCONNECTIONS = TWCC_MAXCONNECTIONS; {/ * DS is connected to max possible applications * / }
  OPERATIONERROR = TWCC_OPERATIONERROR; {/ * DS or DSM reported error, application shouldn't*/}
  BADCAP = TWCC_BADCAP; {/ * Unknown capability * / }
  BADPROTOCOL = TWCC_BADPROTOCOL; {/ * Unrecognized MSG DG DAT combination * / }
  BADVALUE = TWCC_BADVALUE; {/ * Data parameter out of range * / }
  SEQERROR = TWCC_SEQERROR; {/ * DG DAT MSG out of expected sequence * / }
  BADDEST = TWCC_BADDEST; {/ * Unknown destination Application / Source in DSM_Entry * / }
  CAPUNSUPPORTED = TWCC_CAPUNSUPPORTED; {/ * Capability not supported by source * / }
  CAPBADOPERATION = TWCC_CAPBADOPERATION; {/ * Operation not supported by capability * / }
  CAPSEQERROR = TWCC_CAPSEQERROR; {/ * Capability has dependancy on other capability * / }

type
  TImageInfo = TW_IMAGEINFO;

  TTwainErrorEvent = procedure(Sender: TObject; state, error: integer) of object;

  TSourceInfo = record
    TwainProtocolSupported: string;
    Manufacturer: string; { Manufacturer name, e.g. "Hewlett - Packard" }
    ProductFamily: string; { Product family name, e.g. "ScanJet" }
    ProductName: string; { Product name, e.g. "ScanJet Plus" }
    SourceDriverVersion: string;
    Language: TW_UINT16; { e.g. TWLG_SWISSFRENCH }
    Country: TW_UINT16; { e.g. TWCY_SWITZERLAND }
    Info: string; { e.g. "1.0b3 Beta release" }
  end;

  TAcquireImage = class(TComponent)
  private
      // events
    fScanError: TTwainErrorEvent;
    fShowHideUI: Boolean;
      // ******
    libraryHandle: TW_HANDLE;
    DSMEntry: DSM_EntryFunc;
    AppID: TW_IDENTITY; // App’s identity structure
    SourceId: TW_IDENTITY; // Source’s identity structure
    capability: TW_CAPABILITY;
    pParent, pParent2: TW_INT32;
    userInterface: TW_USERINTERFACE;
    event: TW_EVENT;
    function getErrorType: integer;
      // properties function and procedures
    procedure setSHOWhide(show: Boolean);
    function getAppInfo: string;
    procedure setAppInfo(Value: string);
    function getAppManufacturer: string;
    procedure setAppManufacturer(Value: string);
    function getAppProductFamily: string;
    procedure setAppProductFamily(Value: string);
    function getAppProductName: string;
    procedure setAppProductName(Value: string);
      //*******************************//
    function PAcquireNative(var hDIB: hBitmap; var done: boolean): integer;
  public
    function acquirehDIB(var hDIB: hbitmap): integer;
    constructor create(AOwner: TComponent); override;
    function loadTwainModule: boolean;
    function openSourceManager: integer;
    function selectSource(sourcename: string): integer;
    procedure GetSources(var list: TStringList);
    function GetSource(default: boolean): string;
    function getSourceInfo: TSourceInfo;
    function openSource: integer;
    function acquirebmp(var bmp: TBitmap): integer;
    function acquirejpg(var jpg: TJpegImage; compression: integer): integer;
    function acquireToClipboard: integer;
    function getImageInfo(var imgInfo: TImageInfo): integer;
      // closing
    function closeTwainSession: integer;
    function unloadTwainModule: boolean;
  published
    property SHOWhideUI: boolean read fShowHideUI write setSHOWhide default True;
    property AppVersionMajorNum: TW_UINT16 read AppID.Version.MajorNum write AppID.Version.MajorNum default 1;
    property AppVersionMinorNum: TW_UINT16 read AppID.Version.MinorNum write AppID.Version.MinorNum default 0;
    property AppInfo: string read getAppInfo write setAppInfo;
    property AppManufacturer: string read getAppManufacturer write setAppManufacturer;
    property AppProductFamily: string read getAppProductFamily write setAppProductFamily;
    property AppProductName: string read getAppProductName write setAppProductName;
    property Language: TW_UINT16 read AppID.Version.Language write AppID.Version.Language default TW_UINT16(TWLG_USERLOCALE);
    property Country: TW_UINT16 read AppID.Version.Country write AppID.Version.Country default TWCY_ITALY;
      // events
    property OnTwainError: TTwainErrorEvent read fScanError write fScanError;
  end;

procedure Register;

implementation
{$R AcquireImage.res}

procedure Register;
begin
  RegisterComponents('Yeganeh', [TAcquireImage]);
end;

constructor TAcquireImage.create(AOwner: TComponent);
begin
  inherited create(AOwner);
  libraryHandle := 0;
  strPCopy(AppID.Version.Info, 'none');
  strPCopy(AppID.Manufacturer, 'none');
  strPCopy(AppID.ProductFamily, 'none');
  strPCopy(AppID.ProductName, 'none');
  showhideUI := True;
  Appinfo := 'Twain Freeware Component';
end;

// methods needed for setting runtime properties

procedure TAcquireImage.setshowhide(Show: boolean);
begin
  fShowHideUI := Show;
end;

function TAcquireImage.getAppInfo: string;
begin
  Result := strPas(AppID.Version.Info);
end;

procedure TAcquireImage.setAppInfo(value: string);
begin
  strPCopy(AppID.Version.Info, value);
end;

function TAcquireImage.getAppManufacturer: string;
begin
  Result := strPas(AppID.Manufacturer);
end;

procedure TAcquireImage.setAppManufacturer(Value: string);
begin
  strPCopy(AppID.Manufacturer, value);
end;

function TAcquireImage.getAppProductFamily: string;
begin
  Result := strPas(AppID.ProductFamily);
end;

procedure TAcquireImage.setAppProductFamily(Value: string);
begin
  strPCopy(AppID.ProductFamily, value);
end;

function TAcquireImage.getAppProductName: string;
begin
  Result := strPas(AppID.ProductName);
end;

procedure TAcquireImage.setAppProductName(Value: string);
begin
  strPCopy(AppID.ProductName, value);
end;

// *****************************************************

function TAcquireImage.loadTwainModule: boolean;
begin
  libraryHandle := loadLibrary('twain_32.dll');
  if libraryHandle <> 0 then
    @DSMEntry := getProcAddress(libraryHandle, makeIntResource(1));
  Result := (libraryHandle <> 0) and (@DSMEntry <> nil);
end;

function TAcquireImage.openSourceManager: integer;
var
  error: TW_UINT16;
begin
  error := FAILURE;
  Result := FAILURE;
  if libraryHandle = 0 then exit;
  if @DSMEntry <> nil then begin
    AppID.Id := 0; // Initialize to 0 (Source Manager will assign real value)
    AppID.ProtocolMajor := TWON_PROTOCOLMAJOR;
    AppID.ProtocolMinor := TWON_PROTOCOLMINOR;
    AppID.SupportedGroups := DG_IMAGE;
    pParent := getActiveWindow;
    error := DSMEntry(@AppId, nil, DG_CONTROL, DAT_PARENT, MSG_OPENDSM, TW_MEMREF(@pParent));
    if error = FAILURE then error := getErrorType;
    Result := error;
  end;
  if Result <> SUCCESS then
  begin if assigned(fScanError) then fScanError(self, 2, error); end;
end;

{following enables user setup and returns this setting as a string which can be used
with function selectSource(sourcename: string)}

function TAcquireImage.GetSource(default: boolean): string;
var
  error: TW_UINT16;
begin
  Result := '';
  if libraryHandle = 0 then exit;
  SourceId.Id := 0;
  lstrcpy(SourceId.ProductName, '');
  if not default then
    error := DSMEntry(@AppId, nil, DG_CONTROL, DAT_IDENTITY, MSG_USERSELECT, TW_MEMREF(@SourceId))
  else
    error:=DSMEntry(@AppId,nil,DG_CONTROL,DAT_IDENTITY,MSG_GETDEFAULT,TW_MEMREF(@SourceId));
  if error <> SUCCESS then
  begin if assigned(fScanError) then fScanError(self, 3, error); end
  else
    Result := SourceId.ProductName;
end;

{following returns all TWAIN sources}

procedure TAcquireImage.GetSources(var list: TStringList);
var error: TW_UINT16;
begin
  if (libraryHandle <> 0) then
  begin
    SourceId.Id := 0;
    lstrcpy(SourceId.ProductName, '');
    error := DSMEntry(@AppId, nil, DG_CONTROL, DAT_IDENTITY, MSG_GETFIRST, TW_MEMREF(@SourceId));
    if error <> 0 then begin if assigned(fScanError) then begin fScanError(self, 3, error); Exit; end; end;
    list:=TStringList.Create;
    list.Add(SourceId.ProductName);
    while (DSMEntry(@AppId, nil, DG_CONTROL, DAT_IDENTITY, MSG_GETNEXT, TW_MEMREF(@SourceId)) = 0) do
    begin
      list.Add(SourceId.ProductName);
    end;
  end;
end;

{following sets source with one of following options:
string='' user selects preferred source
string>'' users sourcename:string is parsed till found then enabled as current TWAIN device.
For example you can propogate a listbox with getsources(hwnd), store the selected item in
registry, then using the same registry entry call up desired device here}

function TAcquireImage.selectSource(sourcename: string): integer;
var
  error: TW_UINT16;
label
  errorL;
begin
  Result := TWRC_FAILURE;
  if libraryHandle = 0 then exit;
  SourceId.Id := 0;
  lstrcpy(SourceId.ProductName, '');
  if sourcename = '' then
  begin
    error := DSMEntry(@AppId, nil, DG_CONTROL, DAT_IDENTITY, MSG_USERSELECT, TW_MEMREF(@SourceId));
    goto errorL;
  end
  else
  begin
    error := DSMEntry(@AppId, nil, DG_CONTROL, DAT_IDENTITY, MSG_GETFIRST, TW_MEMREF(@SourceId));
    if error <> 0 then goto errorL;
    while (sourceID.productname <> sourcename) do
    begin
      error := DSMEntry(@AppId, nil, DG_CONTROL, DAT_IDENTITY, MSG_GETNEXT, TW_MEMREF(@SourceId));
    end;
    error := 0;
  end;
  ErrorL:
    Result := error;
  if Result <> SUCCESS then
  begin if assigned(fScanError) then fScanError(self, 3, error); end;
end;

function TAcquireImage.openSource: integer;
var
  pval: pTW_ONEVALUE;
  error: TW_UINT16;
begin
  Result := TWRC_FAILURE;
  if libraryHandle = 0 then exit;
  error := DSMEntry(@AppId, nil, DG_CONTROL, DAT_IDENTITY, MSG_OPENDS, TW_MEMREF(@SourceId));
  if error = TWRC_SUCCESS then begin
    // negotiate the transfer of 1 image
    capability.Cap := CAP_XFERCOUNT;
    capability.ConType := TWON_ONEVALUE;
    capability.hContainer := GlobalAlloc(GHND, sizeof(TW_ONEVALUE));
    // setting 1 image
    pval := globalLock(capability.hContainer);
    pval.ItemType := TWTY_INT16;
    pval.Item := TW_UINT32(-1); //This is for multiple images 
    GlobalUnlock(capability.hContainer);
    //-----Set the CAP_XFERCOUNT
    error := DSMEntry(@AppId, @SourceId, DG_CONTROL, DAT_CAPABILITY, MSG_SET, TW_MEMREF(@capability));
    GlobalFree(capability.hContainer);
    if (error = TWRC_CHECKSTATUS) then begin
       //The value could not be matched exactly
       //MSG_GET to get the new current value
      capability.Cap := CAP_XFERCOUNT;
      capability.ConType := TWON_DONTCARE16; //Source will specify
      capability.hContainer := 0; //Source allocates and fills container
      error := DSMEntry(@AppId, @SourceId, DG_CONTROL, DAT_CAPABILITY, MSG_GET, TW_MEMREF(@capability));
       //free hContainer allocated by Source
      GlobalFree(capability.hContainer);
      if error = FAILURE then error := getErrorType;
    end;
    if error = FAILURE then error := getErrorType;
  end
  else
    if error = FAILURE then error := getErrorType;
  Result := error;
  if Result <> SUCCESS then
  begin if assigned(fScanError) then fScanError(self, 4, error); end;
end;

function TAcquireImage.PAcquireNative(var hDIB: hBitmap; var done: boolean): integer;
var
  error: TW_UINT16;
  pendingXfers: TW_PENDINGXFERS;
begin
  done:=true;
  error := DSMEntry(@AppId, @SourceId, DG_IMAGE, DAT_IMAGENATIVEXFER, MSG_GET, TW_MEMREF(@hDIB));
  case error of
    TWRC_XFERDONE: begin
        DSMEntry(@AppId, @SourceId, DG_CONTROL, DAT_PENDINGXFERS, MSG_ENDXFER, TW_MEMREF(@pendingXfers));
        if pendingXfers.Count = 0 then //Abort all pending transfers: go to state 5
          DSMEntry(@AppId, @SourceId, DG_CONTROL, DAT_PENDINGXFERS, MSG_RESET, TW_MEMREF(@pendingXfers))
        else
          done:=false;
        error := TWRC_SUCCESS;
      end;
    TWRC_CANCEL: begin
        if globalSize(hDIB) > 0 then globalFree(hDIB);
        hDIB := 0;
      //To abort all pending transfers: go to state 5
        DSMEntry(@AppId, @SourceId, DG_CONTROL, DAT_PENDINGXFERS, MSG_ENDXFER, TW_MEMREF(@pendingXfers));
        if pendingXfers.Count <> 0 then
          DSMEntry(@AppId, @SourceId, DG_CONTROL, DAT_PENDINGXFERS, MSG_RESET, TW_MEMREF(@pendingXfers));
        error := TWRC_CANCEL;
      end;
    TWRC_FAILURE: begin
        error := getErrorType;
        hDIB := 0;
      //To abort all pending transfers: go to state 5
        DSMEntry(@AppId, @SourceId, DG_CONTROL, DAT_PENDINGXFERS, MSG_RESET, TW_MEMREF(@pendingXfers));
      //Source is now in state 5
      end;
  end;
  Result := error;
end;

function TAcquireImage.getImageInfo(var imgInfo: TImageInfo): integer;
var
  error: TW_UINT16;
begin
  // get header info
  error := DSMEntry(@AppId, @SourceId, DG_IMAGE, DAT_IMAGEINFO, MSG_GET, TW_MEMREF(@imgInfo));
  if error = FAILURE then error := getErrorType;
  result := error;
end;

function TAcquireImage.acquirehDIB(var hDIB: hbitmap): integer;
var
  finito: boolean;
  mes: tmsg;
  error: TW_UINT16;
  errorFromState: integer;
  done: boolean;
begin
  Result := TWRC_FAILURE;
  if libraryHandle = 0 then exit;
  hDIB := 0;
  if showhideUI then
  begin
  userInterface.ShowUI := true;
  userInterface.ModalUI := true;
  end
  else
  begin
  userInterface.ShowUI := false;
  userInterface.ModalUI := false;
  end;
  pParent2 := getActiveWindow;
  userInterface.hParent := pParent2;
  errorFromState := 5;
  error := DSMEntry(@AppId, @SourceId, DG_CONTROL, DAT_USERINTERFACE, MSG_ENABLEDS, TW_MEMREF(@userInterface));
  if error = SUCCESS then begin
    finito := false;
    while not finito do begin
      getMessage(mes, 0, 0, 0);
      event.TWMessage := MSG_NULL;
      event.pEvent := TW_MEMREF(@mes);
      error := DSMEntry(@AppId, @SourceId, DG_CONTROL, DAT_EVENT, MSG_PROCESSEVENT, TW_MEMREF(@event));
      if error = TWRC_DSEVENT then begin
        case event.TWMessage of
          MSG_XFERREADY: begin
              error := PAcquireNative(hDIB, done);
              errorFromState := 7;
              finito := done;
            end;
          MSG_CLOSEDSREQ: begin
              error := TWRC_CANCEL;
              finito := true;
            end;
        end;
      end;
      // Source didn’t process it, so we will
      if (error = TWRC_NOTDSEVENT) then begin
        TranslateMessage(mes);
        DispatchMessage(mes);
      end;
      // failure
      if error = FAILURE then begin
        error := getErrorType;
        errorFromState := 6;
        finito := true;
      end;
    end;
  end
  else
    error := getErrorType;
  Result := error;
  if Result <> SUCCESS then
  begin if assigned(fScanError) then fScanError(self, errorFromState, error); end;
end;

function TAcquireImage.acquirebmp(var bmp: TBitmap): integer;
var
  error: TW_UINT16;
  clip: Tclipboard;
begin
  error := acquireToClipboard;
  if error = SUCCESS then begin
    bmp := TBitmap.Create;
    bmp.LoadFromClipboardFormat(cf_BitMap, ClipBoard.GetAsHandle(cf_Bitmap), 0);
    clip := Tclipboard.Create;
    clip.Open;
    clip.Clear;
    clip.Close;
    clip.Free;
  end;
  Result := error;
end;

function TAcquireImage.acquirejpg(var jpg: TJpegImage; compression: integer): integer;
var
  error: TW_UINT16;
  clip: Tclipboard;
  bmp: Tbitmap;
begin
  error := acquireToClipboard;
  if error = SUCCESS then begin
    bmp := TBitmap.Create;
    bmp.LoadFromClipboardFormat(cf_BitMap, ClipBoard.GetAsHandle(cf_Bitmap), 0);
    clip := Tclipboard.Create;
    clip.Open;
    clip.Clear;
    clip.Close;
    clip.Free;
    jpg := TJpegImage.Create;
    jpg.Assign(bmp);
    jpg.CompressionQuality := compression;
    jpg.Compress;
    bmp.free;
  end;
  Result := error;
end;

function TAcquireImage.closeTwainSession: integer;
var
  rc: TW_UINT16;
begin
  Result := TWRC_FAILURE;
  if libraryHandle = 0 then exit;
  DSMEntry(@AppId, @SourceId, DG_CONTROL, DAT_USERINTERFACE, MSG_DISABLEDS, TW_MEMREF(@userInterface));
  DSMEntry(@AppId, nil, DG_CONTROL, DAT_IDENTITY, MSG_CLOSEDS, TW_MEMREF(@SourceId));
  rc := DSMEntry(@AppId, nil, DG_CONTROL, DAT_PARENT, MSG_CLOSEDSM, TW_MEMREF(@pParent));
  if rc = FAILURE then rc := getErrorType;
  Result := rc;
end;

function TAcquireImage.unloadTwainModule: boolean;
begin
  Result := freeLibrary(libraryHandle);
end;

function TAcquireImage.acquireToClipboard: integer;
var
  hDIB: hbitmap;
  error: TW_UINT16;
begin
  Result := FAILURE;
  error := acquirehDIB(hDIB);
  if error = SUCCESS then begin
    if (OpenClipboard(0)) then begin
      if (EmptyClipboard()) then begin
        SetClipboardData(CF_DIB, hDIB);
        Result := SUCCESS;
        hDib := 0;
      end;
      CloseClipboard();
    end;
    if (hDib <> 0) then // something went wrong, recycle the image
      GlobalFree(hDIB);
  end;
end;

function TAcquireImage.getErrorType: integer;
var
  rc: TW_UINT16;
  status: TW_STATUS;
begin
  rc := DSMEntry(@AppId, nil, DG_CONTROL, DAT_STATUS, MSG_GET, TW_MEMREF(@status));
  if (rc = TWRC_SUCCESS) then begin
    if status.ConditionCode <> 0 then
      result := TWCC_CUSTOMBASE + status.ConditionCode
    else
      result := FAILURE;
  end
  else
    result := rc;
end;

function TAcquireImage.getSourceInfo: TSourceInfo;
var
  info: TSourceInfo;
begin
  info.TwainProtocolSupported := intToStr(sourceId.ProtocolMajor) + '.' + intToStr(sourceId.ProtocolMinor);
  info.Manufacturer := strPas(sourceId.Manufacturer);
  info.ProductFamily := strPas(sourceId.ProductFamily);
  info.ProductName := strPas(sourceId.ProductName);
  info.SourceDriverVersion := intToStr(sourceId.version.MajorNum) + '.' + intToStr(sourceId.version.MinorNum);
  info.Language := sourceId.Version.Language;
  info.Info := strPas(sourceId.Version.Info);
  Result := info;
end;

end.

