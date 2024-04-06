unit AXmsCtrl_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// PASTLWTR : 1.2
// File generated on 6/3/2010 8:42:04 AM from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Program Files\Common Files\ActiveXperts\AXmsCtrl.dll (1)
// LIBID: {52FC26A8-E26C-4C45-A617-BD173EF0AE9C}
// LCID: 0
// Helpfile: 
// HelpString: ActiveXperts SMS and MMS Toolkit 5.3 Type Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\WINDOWS\system32\stdole2.tlb)
// Errors:
//   Hint: Member 'Class' of 'IMmsMessage' changed to 'Class_'
//   Hint: Member 'Class' of 'ISmsDataMmsNotification' changed to 'Class_'
//   Error creating palette bitmap of (TSmsProtocolGsm) : Server C:\Program Files\Common Files\ActiveXperts\AXmsCtrl.dll contains no icons
//   Error creating palette bitmap of (TSmsMessage) : Server C:\Program Files\Common Files\ActiveXperts\AXmsCtrl.dll contains no icons
//   Error creating palette bitmap of (TSmsProtocolSmpp) : Server C:\Program Files\Common Files\ActiveXperts\AXmsCtrl.dll contains no icons
//   Error creating palette bitmap of (TSmsConstants) : Server C:\Program Files\Common Files\ActiveXperts\AXmsCtrl.dll contains no icons
//   Error creating palette bitmap of (TSmsProtocolHttp) : Server C:\Program Files\Common Files\ActiveXperts\AXmsCtrl.dll contains no icons
//   Error creating palette bitmap of (TSmsProtocolDialup) : Server C:\Program Files\Common Files\ActiveXperts\AXmsCtrl.dll contains no icons
//   Error creating palette bitmap of (TPagerProtocolSnpp) : Server C:\Program Files\Common Files\ActiveXperts\AXmsCtrl.dll contains no icons
//   Error creating palette bitmap of (TSmsDataWapBookmark) : Server C:\Program Files\Common Files\ActiveXperts\AXmsCtrl.dll contains no icons
//   Error creating palette bitmap of (TSmsDataWapPush) : Server C:\Program Files\Common Files\ActiveXperts\AXmsCtrl.dll contains no icons
//   Error creating palette bitmap of (TSmsDeliveryStatus) : Server C:\Program Files\Common Files\ActiveXperts\AXmsCtrl.dll contains no icons
//   Error creating palette bitmap of (TPagerMessage) : Server C:\Program Files\Common Files\ActiveXperts\AXmsCtrl.dll contains no icons
//   Error creating palette bitmap of (TMmsProtocolMm1) : Server C:\Program Files\Common Files\ActiveXperts\AXmsCtrl.dll contains no icons
//   Error creating palette bitmap of (TMmsSlide) : Server C:\Program Files\Common Files\ActiveXperts\AXmsCtrl.dll contains no icons
//   Error creating palette bitmap of (TMmsConstants) : Server C:\Program Files\Common Files\ActiveXperts\AXmsCtrl.dll contains no icons
//   Error creating palette bitmap of (TMmsPermission) : Server C:\Program Files\Common Files\ActiveXperts\AXmsCtrl.dll contains no icons
//   Error creating palette bitmap of (TMmsProtocolMm4) : Server C:\Program Files\Common Files\ActiveXperts\AXmsCtrl.dll contains no icons
//   Error creating palette bitmap of (TMmsProtocolMm7) : Server C:\Program Files\Common Files\ActiveXperts\AXmsCtrl.dll contains no icons
//   Error creating palette bitmap of (TMmsMessage) : Server C:\Program Files\Common Files\ActiveXperts\AXmsCtrl.dll contains no icons
//   Error creating palette bitmap of (TSmsDataMmsNotification) : Server C:\Program Files\Common Files\ActiveXperts\AXmsCtrl.dll contains no icons
//   Error creating palette bitmap of (TSmsDatavCard) : Server C:\Program Files\Common Files\ActiveXperts\AXmsCtrl.dll contains no icons
// ************************************************************************ //
// *************************************************************************//
// NOTE:                                                                      
// Items guarded by $IFDEF_LIVE_SERVER_AT_DESIGN_TIME are used by properties  
// which return objects that may need to be explicitly created via a function 
// call prior to any access via the property. These items have been disabled  
// in order to prevent accidental use from within the object inspector. You   
// may enable them by defining LIVE_SERVER_AT_DESIGN_TIME or by selectively   
// removing them from the $IFDEF blocks. However, such items must still be    
// programmatically created via a method of the appropriate CoClass before    
// they can be used.                                                          
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, OleServer, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  AXmsCtrlMajorVersion = 1;
  AXmsCtrlMinorVersion = 0;

  LIBID_AXmsCtrl: TGUID = '{52FC26A8-E26C-4C45-A617-BD173EF0AE9C}';

  IID_ISmsProtocolGsm: TGUID = '{3DEF0FEB-7F19-4BDD-A2D5-60A1E6E9A473}';
  CLASS_SmsProtocolGsm: TGUID = '{30F256C0-EE6E-4C57-A475-E3E81236119F}';
  IID_ISmsMessage: TGUID = '{74A9B740-4199-41D8-AF10-5D9ECB68980C}';
  CLASS_SmsMessage: TGUID = '{6900ABDD-A93C-430F-9939-A0477D4D6F4E}';
  IID_ISmsProtocolSmpp: TGUID = '{FDFEC40E-1773-488E-86DC-D4C5CFD0BF10}';
  CLASS_SmsProtocolSmpp: TGUID = '{0B3C73A0-D209-465A-B6C4-9B6AC9DCC424}';
  IID_ISmsConstants: TGUID = '{B20DC41C-F2CB-4B5A-B174-73CEA23BF84B}';
  CLASS_SmsConstants: TGUID = '{D59B5767-F7FA-47B7-A1D3-816934964EC4}';
  IID_ISmsProtocolHttp: TGUID = '{FE747A06-B435-4E13-89B9-A4EFFB6AED75}';
  CLASS_SmsProtocolHttp: TGUID = '{0F81C972-915E-41C7-B881-667FD2629300}';
  IID_ISmsProtocolDialup: TGUID = '{6981A9D3-9F5E-4AE0-B915-E582DE5769DC}';
  CLASS_SmsProtocolDialup: TGUID = '{7FE9716E-6120-433C-B7C5-F42F4805B6C2}';
  IID_IPagerProtocolSnpp: TGUID = '{AAFC490C-6EFB-42E5-8267-7BE9FB2ACF8F}';
  CLASS_PagerProtocolSnpp: TGUID = '{69AD3E44-38BB-49E2-A03F-2BA71444BDF5}';
  IID_ISmsDataWapBookmark: TGUID = '{97288A28-A8CE-4175-8E0B-75F0AEF9E489}';
  CLASS_SmsDataWapBookmark: TGUID = '{ED494BC8-222A-4716-A46D-14F72F02CB89}';
  IID_ISmsDataWapPush: TGUID = '{51052D1C-80F1-4FCE-A458-A1CD8BA753CA}';
  CLASS_SmsDataWapPush: TGUID = '{EF74EFF2-4F98-464A-9F73-CF6D77D9C954}';
  IID_ISmsDeliveryStatus: TGUID = '{DF9718BC-DDEC-44C7-B2E0-F9046E840AF7}';
  CLASS_SmsDeliveryStatus: TGUID = '{E3C1E60A-87B3-4178-BB93-CCB8D6AC59F8}';
  IID_IPagerMessage: TGUID = '{990F731B-B2A8-45B8-9E39-8DF6FA8B85C1}';
  CLASS_PagerMessage: TGUID = '{A4ECB249-089A-458B-B1DC-AFA3F6DFD691}';
  IID_IMmsProtocolMm1: TGUID = '{1B87BF35-D56F-42A8-8D23-8631953DBA68}';
  CLASS_MmsProtocolMm1: TGUID = '{F0589DF4-1745-4437-B41A-F72B780410AF}';
  IID_IMmsSlide: TGUID = '{C97CA114-C43B-49D9-B077-41F7299C1A11}';
  CLASS_MmsSlide: TGUID = '{43BFDCA2-0801-4A5F-897F-DA987DD62EF3}';
  IID_IMmsConstants: TGUID = '{B85A2092-FE47-452A-AFC8-8F12C5BDCDE3}';
  CLASS_MmsConstants: TGUID = '{51B8A8E6-CC2F-4160-8645-E0B264659493}';
  IID_IMmsPermission: TGUID = '{8FABC032-B5CD-4405-85E5-98A8DDEBFC3F}';
  CLASS_MmsPermission: TGUID = '{D3458AB2-3485-4E68-95CB-49EEA9566B35}';
  IID_IMmsProtocolMm4: TGUID = '{A233DA9D-E345-4909-9D95-DB9ACDEF7D21}';
  CLASS_MmsProtocolMm4: TGUID = '{BC79F6EF-F0D4-45A6-AB37-44A9ED6B084A}';
  IID_IMmsProtocolMm7: TGUID = '{EA67C0B2-CB9F-4D3F-B50F-A7CE1CEF346A}';
  CLASS_MmsProtocolMm7: TGUID = '{368A6DD4-34BD-44F7-BE1D-FD282B3112F1}';
  IID_IMmsMessage: TGUID = '{BEBE8D74-8123-4D0C-A710-997AF5666166}';
  CLASS_MmsMessage: TGUID = '{968295DF-EE56-433A-99A8-64B47C5FF613}';
  IID_ISmsDataMmsNotification: TGUID = '{4105A254-0E01-4939-A5F7-D49D623B0986}';
  CLASS_SmsDataMmsNotification: TGUID = '{4868BE0E-AA1B-4289-8FFB-CC75275D9822}';
  IID_ISmsDatavCard: TGUID = '{1F392F11-0F25-4CC9-A3B5-4E05C07258F1}';
  CLASS_SmsDatavCard: TGUID = '{4368F874-0EBD-4816-8915-F340F7150B95}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  ISmsProtocolGsm = interface;
  ISmsProtocolGsmDisp = dispinterface;
  ISmsMessage = interface;
  ISmsMessageDisp = dispinterface;
  ISmsProtocolSmpp = interface;
  ISmsProtocolSmppDisp = dispinterface;
  ISmsConstants = interface;
  ISmsConstantsDisp = dispinterface;
  ISmsProtocolHttp = interface;
  ISmsProtocolHttpDisp = dispinterface;
  ISmsProtocolDialup = interface;
  ISmsProtocolDialupDisp = dispinterface;
  IPagerProtocolSnpp = interface;
  IPagerProtocolSnppDisp = dispinterface;
  ISmsDataWapBookmark = interface;
  ISmsDataWapBookmarkDisp = dispinterface;
  ISmsDataWapPush = interface;
  ISmsDataWapPushDisp = dispinterface;
  ISmsDeliveryStatus = interface;
  ISmsDeliveryStatusDisp = dispinterface;
  IPagerMessage = interface;
  IPagerMessageDisp = dispinterface;
  IMmsProtocolMm1 = interface;
  IMmsProtocolMm1Disp = dispinterface;
  IMmsSlide = interface;
  IMmsSlideDisp = dispinterface;
  IMmsConstants = interface;
  IMmsConstantsDisp = dispinterface;
  IMmsPermission = interface;
  IMmsPermissionDisp = dispinterface;
  IMmsProtocolMm4 = interface;
  IMmsProtocolMm4Disp = dispinterface;
  IMmsProtocolMm7 = interface;
  IMmsProtocolMm7Disp = dispinterface;
  IMmsMessage = interface;
  IMmsMessageDisp = dispinterface;
  ISmsDataMmsNotification = interface;
  ISmsDataMmsNotificationDisp = dispinterface;
  ISmsDatavCard = interface;
  ISmsDatavCardDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  SmsProtocolGsm = ISmsProtocolGsm;
  SmsMessage = ISmsMessage;
  SmsProtocolSmpp = ISmsProtocolSmpp;
  SmsConstants = ISmsConstants;
  SmsProtocolHttp = ISmsProtocolHttp;
  SmsProtocolDialup = ISmsProtocolDialup;
  PagerProtocolSnpp = IPagerProtocolSnpp;
  SmsDataWapBookmark = ISmsDataWapBookmark;
  SmsDataWapPush = ISmsDataWapPush;
  SmsDeliveryStatus = ISmsDeliveryStatus;
  PagerMessage = IPagerMessage;
  MmsProtocolMm1 = IMmsProtocolMm1;
  MmsSlide = IMmsSlide;
  MmsConstants = IMmsConstants;
  MmsPermission = IMmsPermission;
  MmsProtocolMm4 = IMmsProtocolMm4;
  MmsProtocolMm7 = IMmsProtocolMm7;
  MmsMessage = IMmsMessage;
  SmsDataMmsNotification = ISmsDataMmsNotification;
  SmsDatavCard = ISmsDatavCard;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  POleVariant1 = ^OleVariant; {*}


// *********************************************************************//
// Interface: ISmsProtocolGsm
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3DEF0FEB-7F19-4BDD-A2D5-60A1E6E9A473}
// *********************************************************************//
  ISmsProtocolGsm = interface(IDispatch)
    ['{3DEF0FEB-7F19-4BDD-A2D5-60A1E6E9A473}']
    function Get_LastError: Integer; safecall;
    function Get_Version: WideString; safecall;
    function Get_Build: WideString; safecall;
    function Get_ExpirationDate: WideString; safecall;
    procedure Set_Reserved(Param1: Integer); safecall;
    function Get_LogFile: WideString; safecall;
    procedure Set_LogFile(const pVal: WideString); safecall;
    function Get_ActivityFile: WideString; safecall;
    procedure Set_ActivityFile(const pVal: WideString); safecall;
    procedure Set_DistributionID(const Param1: WideString); safecall;
    procedure Set_DistributionKey(const Param1: WideString); safecall;
    function Get_Module: WideString; safecall;
    procedure Clear; safecall;
    function GetErrorDescription(newVal: Integer): WideString; safecall;
    procedure Activate(const newVal: WideString; bPersistent: Integer); safecall;
    function Get_Device: WideString; safecall;
    procedure Set_Device(const pVal: WideString); safecall;
    function Get_DeviceSpeed: Integer; safecall;
    procedure Set_DeviceSpeed(pVal: Integer); safecall;
    function Get_DeviceInitString: WideString; safecall;
    procedure Set_DeviceInitString(const pVal: WideString); safecall;
    function Get_DeviceFlowControl: Integer; safecall;
    procedure Set_DeviceFlowControl(pVal: Integer); safecall;
    function Get_MessageStorage: Integer; safecall;
    procedure Set_MessageStorage(pVal: Integer); safecall;
    function Get_ReportsStorage: Integer; safecall;
    procedure Set_ReportsStorage(pVal: Integer); safecall;
    function Get_SMSC: WideString; safecall;
    procedure Set_SMSC(const pVal: WideString); safecall;
    function Get_AdvancedSettings: WideString; safecall;
    procedure Set_AdvancedSettings(const pVal: WideString); safecall;
    function GetDeviceCount: Integer; safecall;
    function GetDevice(lDevice: Integer): WideString; safecall;
    procedure EnterPin(const bstrPIN: WideString); safecall;
    function SendCommand(const bstrCommand: WideString; lTimeout: Integer): WideString; safecall;
    function Send(var pMessage: OleVariant): WideString; safecall;
    function Receive: Integer; safecall;
    function QueryStatus(const bstrReference: WideString): OleVariant; safecall;
    function GetFirstMessage: OleVariant; safecall;
    function GetNextMessage: OleVariant; safecall;
    function GetMessage(lIndex: Integer): OleVariant; safecall;
    procedure DeleteAllMessages(bAll: Integer); safecall;
    procedure DeleteMessage(lIndex: Integer); safecall;
    procedure SaveReports(const bstrFileName: WideString); safecall;
    procedure LoadReports(const bstrFileName: WideString); safecall;
    property LastError: Integer read Get_LastError;
    property Version: WideString read Get_Version;
    property Build: WideString read Get_Build;
    property ExpirationDate: WideString read Get_ExpirationDate;
    property Reserved: Integer write Set_Reserved;
    property LogFile: WideString read Get_LogFile write Set_LogFile;
    property ActivityFile: WideString read Get_ActivityFile write Set_ActivityFile;
    property DistributionID: WideString write Set_DistributionID;
    property DistributionKey: WideString write Set_DistributionKey;
    property Module: WideString read Get_Module;
    property Device: WideString read Get_Device write Set_Device;
    property DeviceSpeed: Integer read Get_DeviceSpeed write Set_DeviceSpeed;
    property DeviceInitString: WideString read Get_DeviceInitString write Set_DeviceInitString;
    property DeviceFlowControl: Integer read Get_DeviceFlowControl write Set_DeviceFlowControl;
    property MessageStorage: Integer read Get_MessageStorage write Set_MessageStorage;
    property ReportsStorage: Integer read Get_ReportsStorage write Set_ReportsStorage;
    property SMSC: WideString read Get_SMSC write Set_SMSC;
    property AdvancedSettings: WideString read Get_AdvancedSettings write Set_AdvancedSettings;
  end;

// *********************************************************************//
// DispIntf:  ISmsProtocolGsmDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3DEF0FEB-7F19-4BDD-A2D5-60A1E6E9A473}
// *********************************************************************//
  ISmsProtocolGsmDisp = dispinterface
    ['{3DEF0FEB-7F19-4BDD-A2D5-60A1E6E9A473}']
    property LastError: Integer readonly dispid 1;
    property Version: WideString readonly dispid 2;
    property Build: WideString readonly dispid 3;
    property ExpirationDate: WideString readonly dispid 4;
    property Reserved: Integer writeonly dispid 5;
    property LogFile: WideString dispid 6;
    property ActivityFile: WideString dispid 7;
    property DistributionID: WideString writeonly dispid 8;
    property DistributionKey: WideString writeonly dispid 9;
    property Module: WideString readonly dispid 10;
    procedure Clear; dispid 20;
    function GetErrorDescription(newVal: Integer): WideString; dispid 21;
    procedure Activate(const newVal: WideString; bPersistent: Integer); dispid 22;
    property Device: WideString dispid 101;
    property DeviceSpeed: Integer dispid 102;
    property DeviceInitString: WideString dispid 103;
    property DeviceFlowControl: Integer dispid 104;
    property MessageStorage: Integer dispid 105;
    property ReportsStorage: Integer dispid 106;
    property SMSC: WideString dispid 109;
    property AdvancedSettings: WideString dispid 115;
    function GetDeviceCount: Integer; dispid 201;
    function GetDevice(lDevice: Integer): WideString; dispid 202;
    procedure EnterPin(const bstrPIN: WideString); dispid 203;
    function SendCommand(const bstrCommand: WideString; lTimeout: Integer): WideString; dispid 204;
    function Send(var pMessage: OleVariant): WideString; dispid 205;
    function Receive: Integer; dispid 206;
    function QueryStatus(const bstrReference: WideString): OleVariant; dispid 207;
    function GetFirstMessage: OleVariant; dispid 208;
    function GetNextMessage: OleVariant; dispid 209;
    function GetMessage(lIndex: Integer): OleVariant; dispid 210;
    procedure DeleteAllMessages(bAll: Integer); dispid 220;
    procedure DeleteMessage(lIndex: Integer); dispid 221;
    procedure SaveReports(const bstrFileName: WideString); dispid 223;
    procedure LoadReports(const bstrFileName: WideString); dispid 224;
  end;

// *********************************************************************//
// Interface: ISmsMessage
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {74A9B740-4199-41D8-AF10-5D9ECB68980C}
// *********************************************************************//
  ISmsMessage = interface(IDispatch)
    ['{74A9B740-4199-41D8-AF10-5D9ECB68980C}']
    procedure Clear; safecall;
    function Get_Sender: WideString; safecall;
    procedure Set_Sender(const pVal: WideString); safecall;
    function Get_Recipient: WideString; safecall;
    procedure Set_Recipient(const pVal: WideString); safecall;
    function Get_Data: WideString; safecall;
    procedure Set_Data(const pVal: WideString); safecall;
    function Get_Format: Integer; safecall;
    procedure Set_Format(pVal: Integer); safecall;
    function Get_ValidityPeriod: Integer; safecall;
    procedure Set_ValidityPeriod(pVal: Integer); safecall;
    function Get_SMSC: WideString; safecall;
    procedure Set_SMSC(const pVal: WideString); safecall;
    function Get_Time: WideString; safecall;
    procedure Set_Time(const pVal: WideString); safecall;
    function Get_TimeSecs: Integer; safecall;
    procedure Set_TimeSecs(pVal: Integer); safecall;
    function Get_PID: Integer; safecall;
    procedure Set_PID(pVal: Integer); safecall;
    function Get_DCS: Integer; safecall;
    procedure Set_DCS(pVal: Integer); safecall;
    function Get_ESM: Integer; safecall;
    procedure Set_ESM(pVal: Integer); safecall;
    function Get_SourceTON: Integer; safecall;
    procedure Set_SourceTON(pVal: Integer); safecall;
    function Get_SourceNPI: Integer; safecall;
    procedure Set_SourceNPI(pVal: Integer); safecall;
    function Get_DestinationTON: Integer; safecall;
    procedure Set_DestinationTON(pVal: Integer); safecall;
    function Get_DestinationNPI: Integer; safecall;
    procedure Set_DestinationNPI(pVal: Integer); safecall;
    function Get_ServiceType: WideString; safecall;
    procedure Set_ServiceType(const pVal: WideString); safecall;
    function Get_RequestDeliveryStatus: Integer; safecall;
    procedure Set_RequestDeliveryStatus(pVal: Integer); safecall;
    property Sender: WideString read Get_Sender write Set_Sender;
    property Recipient: WideString read Get_Recipient write Set_Recipient;
    property Data: WideString read Get_Data write Set_Data;
    property Format: Integer read Get_Format write Set_Format;
    property ValidityPeriod: Integer read Get_ValidityPeriod write Set_ValidityPeriod;
    property SMSC: WideString read Get_SMSC write Set_SMSC;
    property Time: WideString read Get_Time write Set_Time;
    property TimeSecs: Integer read Get_TimeSecs write Set_TimeSecs;
    property PID: Integer read Get_PID write Set_PID;
    property DCS: Integer read Get_DCS write Set_DCS;
    property ESM: Integer read Get_ESM write Set_ESM;
    property SourceTON: Integer read Get_SourceTON write Set_SourceTON;
    property SourceNPI: Integer read Get_SourceNPI write Set_SourceNPI;
    property DestinationTON: Integer read Get_DestinationTON write Set_DestinationTON;
    property DestinationNPI: Integer read Get_DestinationNPI write Set_DestinationNPI;
    property ServiceType: WideString read Get_ServiceType write Set_ServiceType;
    property RequestDeliveryStatus: Integer read Get_RequestDeliveryStatus write Set_RequestDeliveryStatus;
  end;

// *********************************************************************//
// DispIntf:  ISmsMessageDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {74A9B740-4199-41D8-AF10-5D9ECB68980C}
// *********************************************************************//
  ISmsMessageDisp = dispinterface
    ['{74A9B740-4199-41D8-AF10-5D9ECB68980C}']
    procedure Clear; dispid 20;
    property Sender: WideString dispid 102;
    property Recipient: WideString dispid 103;
    property Data: WideString dispid 104;
    property Format: Integer dispid 105;
    property ValidityPeriod: Integer dispid 106;
    property SMSC: WideString dispid 109;
    property Time: WideString dispid 110;
    property TimeSecs: Integer dispid 111;
    property PID: Integer dispid 112;
    property DCS: Integer dispid 113;
    property ESM: Integer dispid 114;
    property SourceTON: Integer dispid 115;
    property SourceNPI: Integer dispid 116;
    property DestinationTON: Integer dispid 117;
    property DestinationNPI: Integer dispid 118;
    property ServiceType: WideString dispid 119;
    property RequestDeliveryStatus: Integer dispid 120;
  end;

// *********************************************************************//
// Interface: ISmsProtocolSmpp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FDFEC40E-1773-488E-86DC-D4C5CFD0BF10}
// *********************************************************************//
  ISmsProtocolSmpp = interface(IDispatch)
    ['{FDFEC40E-1773-488E-86DC-D4C5CFD0BF10}']
    function Get_LastError: Integer; safecall;
    function Get_Version: WideString; safecall;
    function Get_Build: WideString; safecall;
    function Get_ExpirationDate: WideString; safecall;
    procedure Set_Reserved(Param1: Integer); safecall;
    function Get_LogFile: WideString; safecall;
    procedure Set_LogFile(const pVal: WideString); safecall;
    function Get_ActivityFile: WideString; safecall;
    procedure Set_ActivityFile(const pVal: WideString); safecall;
    procedure Set_DistributionID(const Param1: WideString); safecall;
    procedure Set_DistributionKey(const Param1: WideString); safecall;
    procedure Clear; safecall;
    function GetErrorDescription(newVal: Integer): WideString; safecall;
    procedure Activate(const newVal: WideString; bPersistent: Integer); safecall;
    function Get_Server: WideString; safecall;
    procedure Set_Server(const pVal: WideString); safecall;
    function Get_ServerPort: Integer; safecall;
    procedure Set_ServerPort(pVal: Integer); safecall;
    function Get_ServerTimeout: Integer; safecall;
    procedure Set_ServerTimeout(pVal: Integer); safecall;
    function Get_ServerKeepAlive: Integer; safecall;
    procedure Set_ServerKeepAlive(pVal: Integer); safecall;
    function Get_SystemID: WideString; safecall;
    procedure Set_SystemID(const pVal: WideString); safecall;
    function Get_SystemPassword: WideString; safecall;
    procedure Set_SystemPassword(const pVal: WideString); safecall;
    function Get_SystemType: WideString; safecall;
    procedure Set_SystemType(const pVal: WideString); safecall;
    function Get_SystemMode: Integer; safecall;
    procedure Set_SystemMode(pVal: Integer); safecall;
    function Get_SystemVersion: Integer; safecall;
    procedure Set_SystemVersion(pVal: Integer); safecall;
    function Get_SystemSourceAddress: WideString; safecall;
    procedure Set_SystemSourceAddress(const pVal: WideString); safecall;
    function Get_SystemSourceTON: Integer; safecall;
    procedure Set_SystemSourceTON(pVal: Integer); safecall;
    function Get_SystemSourceNPI: Integer; safecall;
    procedure Set_SystemSourceNPI(pVal: Integer); safecall;
    function Get_SystemThroughput: Integer; safecall;
    procedure Set_SystemThroughput(pVal: Integer); safecall;
    function Get_SystemCharSet: Integer; safecall;
    procedure Set_SystemCharSet(pVal: Integer); safecall;
    function Get_AddressRange: WideString; safecall;
    procedure Set_AddressRange(const pVal: WideString); safecall;
    function Get_DeliveryReportFormat: Integer; safecall;
    procedure Set_DeliveryReportFormat(pVal: Integer); safecall;
    function Get_IsConnected: Integer; safecall;
    function Get_SystemDestinationTON: Integer; safecall;
    procedure Set_SystemDestinationTON(pVal: Integer); safecall;
    function Get_SystemDestinationNPI: Integer; safecall;
    procedure Set_SystemDestinationNPI(pVal: Integer); safecall;
    function Get_AdvancedSettings: WideString; safecall;
    procedure Set_AdvancedSettings(const pVal: WideString); safecall;
    procedure Connect; safecall;
    procedure Disconnect; safecall;
    function Send(var pMessage: OleVariant): WideString; safecall;
    procedure SetTLVValue(lType: Integer; lTLV: Integer; newVal: OleVariant); safecall;
    function GetTLVValue(lTLV: Integer): OleVariant; safecall;
    function QueryStatus(const bstrRef: WideString; bWaitUntilCompleted: Integer): OleVariant; safecall;
    function CountReceivedMessages: Integer; safecall;
    function GetFirstMessage: OleVariant; safecall;
    function GetNextMessage: OleVariant; safecall;
    function GetMessage(lIndex: Integer): OleVariant; safecall;
    procedure ProviderLoadConfig(const bstrConfigFile: WideString); safecall;
    procedure ProviderSaveConfig(const bstrConfigFile: WideString); safecall;
    procedure Sleep(lDelay: Integer); safecall;
    procedure LoadReports(const bstrFileName: WideString); safecall;
    procedure SaveReports(const bstrFileName: WideString); safecall;
    function Get_Module: WideString; safecall;
    property LastError: Integer read Get_LastError;
    property Version: WideString read Get_Version;
    property Build: WideString read Get_Build;
    property ExpirationDate: WideString read Get_ExpirationDate;
    property Reserved: Integer write Set_Reserved;
    property LogFile: WideString read Get_LogFile write Set_LogFile;
    property ActivityFile: WideString read Get_ActivityFile write Set_ActivityFile;
    property DistributionID: WideString write Set_DistributionID;
    property DistributionKey: WideString write Set_DistributionKey;
    property Server: WideString read Get_Server write Set_Server;
    property ServerPort: Integer read Get_ServerPort write Set_ServerPort;
    property ServerTimeout: Integer read Get_ServerTimeout write Set_ServerTimeout;
    property ServerKeepAlive: Integer read Get_ServerKeepAlive write Set_ServerKeepAlive;
    property SystemID: WideString read Get_SystemID write Set_SystemID;
    property SystemPassword: WideString read Get_SystemPassword write Set_SystemPassword;
    property SystemType: WideString read Get_SystemType write Set_SystemType;
    property SystemMode: Integer read Get_SystemMode write Set_SystemMode;
    property SystemVersion: Integer read Get_SystemVersion write Set_SystemVersion;
    property SystemSourceAddress: WideString read Get_SystemSourceAddress write Set_SystemSourceAddress;
    property SystemSourceTON: Integer read Get_SystemSourceTON write Set_SystemSourceTON;
    property SystemSourceNPI: Integer read Get_SystemSourceNPI write Set_SystemSourceNPI;
    property SystemThroughput: Integer read Get_SystemThroughput write Set_SystemThroughput;
    property SystemCharSet: Integer read Get_SystemCharSet write Set_SystemCharSet;
    property AddressRange: WideString read Get_AddressRange write Set_AddressRange;
    property DeliveryReportFormat: Integer read Get_DeliveryReportFormat write Set_DeliveryReportFormat;
    property IsConnected: Integer read Get_IsConnected;
    property SystemDestinationTON: Integer read Get_SystemDestinationTON write Set_SystemDestinationTON;
    property SystemDestinationNPI: Integer read Get_SystemDestinationNPI write Set_SystemDestinationNPI;
    property AdvancedSettings: WideString read Get_AdvancedSettings write Set_AdvancedSettings;
    property Module: WideString read Get_Module;
  end;

// *********************************************************************//
// DispIntf:  ISmsProtocolSmppDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FDFEC40E-1773-488E-86DC-D4C5CFD0BF10}
// *********************************************************************//
  ISmsProtocolSmppDisp = dispinterface
    ['{FDFEC40E-1773-488E-86DC-D4C5CFD0BF10}']
    property LastError: Integer readonly dispid 1;
    property Version: WideString readonly dispid 2;
    property Build: WideString readonly dispid 3;
    property ExpirationDate: WideString readonly dispid 4;
    property Reserved: Integer writeonly dispid 5;
    property LogFile: WideString dispid 6;
    property ActivityFile: WideString dispid 7;
    property DistributionID: WideString writeonly dispid 8;
    property DistributionKey: WideString writeonly dispid 9;
    procedure Clear; dispid 20;
    function GetErrorDescription(newVal: Integer): WideString; dispid 21;
    procedure Activate(const newVal: WideString; bPersistent: Integer); dispid 22;
    property Server: WideString dispid 101;
    property ServerPort: Integer dispid 102;
    property ServerTimeout: Integer dispid 103;
    property ServerKeepAlive: Integer dispid 104;
    property SystemID: WideString dispid 105;
    property SystemPassword: WideString dispid 106;
    property SystemType: WideString dispid 107;
    property SystemMode: Integer dispid 108;
    property SystemVersion: Integer dispid 109;
    property SystemSourceAddress: WideString dispid 110;
    property SystemSourceTON: Integer dispid 111;
    property SystemSourceNPI: Integer dispid 112;
    property SystemThroughput: Integer dispid 113;
    property SystemCharSet: Integer dispid 114;
    property AddressRange: WideString dispid 115;
    property DeliveryReportFormat: Integer dispid 116;
    property IsConnected: Integer readonly dispid 120;
    property SystemDestinationTON: Integer dispid 141;
    property SystemDestinationNPI: Integer dispid 142;
    property AdvancedSettings: WideString dispid 143;
    procedure Connect; dispid 201;
    procedure Disconnect; dispid 202;
    function Send(var pMessage: OleVariant): WideString; dispid 203;
    procedure SetTLVValue(lType: Integer; lTLV: Integer; newVal: OleVariant); dispid 204;
    function GetTLVValue(lTLV: Integer): OleVariant; dispid 205;
    function QueryStatus(const bstrRef: WideString; bWaitUntilCompleted: Integer): OleVariant; dispid 206;
    function CountReceivedMessages: Integer; dispid 210;
    function GetFirstMessage: OleVariant; dispid 211;
    function GetNextMessage: OleVariant; dispid 212;
    function GetMessage(lIndex: Integer): OleVariant; dispid 213;
    procedure ProviderLoadConfig(const bstrConfigFile: WideString); dispid 220;
    procedure ProviderSaveConfig(const bstrConfigFile: WideString); dispid 221;
    procedure Sleep(lDelay: Integer); dispid 222;
    procedure LoadReports(const bstrFileName: WideString); dispid 224;
    procedure SaveReports(const bstrFileName: WideString); dispid 225;
    property Module: WideString readonly dispid 226;
  end;

// *********************************************************************//
// Interface: ISmsConstants
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B20DC41C-F2CB-4B5A-B174-73CEA23BF84B}
// *********************************************************************//
  ISmsConstants = interface(IDispatch)
    ['{B20DC41C-F2CB-4B5A-B174-73CEA23BF84B}']
    function Get_asMESSAGEFORMAT_TEXT: Integer; safecall;
    function Get_asMESSAGEFORMAT_TEXT_FLASH: Integer; safecall;
    function Get_asMESSAGEFORMAT_TEXT_MULTIPART: Integer; safecall;
    function Get_asMESSAGEFORMAT_TEXT_MULTIPART_FLASH: Integer; safecall;
    function Get_asMESSAGEFORMAT_DATA: Integer; safecall;
    function Get_asMESSAGEFORMAT_DATA_UDH: Integer; safecall;
    function Get_asMESSAGEFORMAT_UNICODE: Integer; safecall;
    function Get_asMESSAGEFORMAT_UNICODE_FLASH: Integer; safecall;
    function Get_asMESSAGEFORMAT_UNICODE_MULTIPART: Integer; safecall;
    function Get_asMESSAGEFORMAT_UNICODE_MULTIPART_FLASH: Integer; safecall;
    function Get_asMESSAGEFORMAT_REPORT: Integer; safecall;
    function Get_asMESSAGEFORMAT_NOTIFICATION_MMS: Integer; safecall;
    function Get_asSMPPMODE_TRANSCEIVER: Integer; safecall;
    function Get_asSMPPMODE_TRANSMITTER: Integer; safecall;
    function Get_asSMPPMODE_RECEIVER: Integer; safecall;
    function Get_asPROVIDERTYPE_UCP: Integer; safecall;
    function Get_asPROVIDERTYPE_TAP_DEFAULT: Integer; safecall;
    function Get_asPROVIDERTYPE_TAP_NOLF: Integer; safecall;
    function Get_asPROVIDERTYPE_TAP_NOEOT: Integer; safecall;
    function Get_asDIALMODE_TONE: Integer; safecall;
    function Get_asDIALMODE_PULSE: Integer; safecall;
    function Get_asSMPPVERSION_33: Integer; safecall;
    function Get_asSMPPVERSION_34: Integer; safecall;
    function Get_asSMPPVERSION_50: Integer; safecall;
    function Get_asSMPP_TLV_1BYTE: Integer; safecall;
    function Get_asSMPP_TLV_2BYTE: Integer; safecall;
    function Get_asSMPP_TLV_4BYTE: Integer; safecall;
    function Get_asSMPP_TLV_COCTET: Integer; safecall;
    function Get_asSMPP_TLV_OCTET: Integer; safecall;
    function Get_asSMPP_TLV_VARIABLE: Integer; safecall;
    function Get_asDELIVERYSTATUS_SCHEDULED: Integer; safecall;
    function Get_asDELIVERYSTATUS_ENROUTE: Integer; safecall;
    function Get_asDELIVERYSTATUS_DELIVERED: Integer; safecall;
    function Get_asDELIVERYSTATUS_EXPIRED: Integer; safecall;
    function Get_asDELIVERYSTATUS_DELETED: Integer; safecall;
    function Get_asDELIVERYSTATUS_UNDELIVERABLE: Integer; safecall;
    function Get_asDELIVERYSTATUS_ACCEPTED: Integer; safecall;
    function Get_asDELIVERYSTATUS_UNKNOWN: Integer; safecall;
    function Get_asDELIVERYSTATUS_REJECTED: Integer; safecall;
    function Get_asDELIVERYSTATUS_SKIPPED: Integer; safecall;
    function Get_asDELIVERYSTATUS_SUBMITTED: Integer; safecall;
    function Get_asDELIVERYSTATUS_SUBMITREQUESTED: Integer; safecall;
    function Get_asDELIVERYSTATUS_FAILED: Integer; safecall;
    function Get_asDELIVERYSTATUS_NOCREDITS: Integer; safecall;
    function Get_asWAPPUSH_SERVICE_INDICATION: Integer; safecall;
    function Get_asWAPPUSH_SERVICE_LOAD: Integer; safecall;
    function Get_asWAPPUSHSIGNAL_NONE: Integer; safecall;
    function Get_asWAPPUSHSIGNAL_LOW: Integer; safecall;
    function Get_asWAPPUSHSIGNAL_MEDIUM: Integer; safecall;
    function Get_asWAPPUSHSIGNAL_HIGH: Integer; safecall;
    function Get_asWAPPUSHSIGNAL_DELETE: Integer; safecall;
    function Get_asWAPPUSH_ACTION_EXECUTE_LOW: Integer; safecall;
    function Get_asWAPPUSH_ACTION_EXECUTE_HIGH: Integer; safecall;
    function Get_asWAPPUSH_ACTION_CACHE: Integer; safecall;
    function Get_asDEVICESETTINGS_DEFAULT: Integer; safecall;
    function Get_asDEVICESETTINGS_8N1: Integer; safecall;
    function Get_asDEVICESETTINGS_7E1: Integer; safecall;
    function Get_asSMPPCHARSET_DEFAULT: Integer; safecall;
    function Get_asSMPPCHARSET_GSM: Integer; safecall;
    function Get_asSMPPCHARSET_ASCII: Integer; safecall;
    function Get_asSMPPCHARSET_LATIN: Integer; safecall;
    function Get_asSMPPCHARSET_JIS: Integer; safecall;
    function Get_asSMPPCHARSET_CYRILLIC: Integer; safecall;
    function Get_asSMPPCHARSET_HEBREW: Integer; safecall;
    function Get_asSMPPCHARSET_JAPANESE: Integer; safecall;
    function Get_asSMPPCHARSET_GREEK: Integer; safecall;
    function Get_asSTORAGE_ALL: Integer; safecall;
    function Get_asSTORAGE_SIM: Integer; safecall;
    function Get_asSTORAGE_DEVICE: Integer; safecall;
    function Get_asSTORAGE_COMBINED: Integer; safecall;
    function Get_asSTORAGE_REPORTS: Integer; safecall;
    function Get_asDEVICEFLOWCONTROL_DEFAULT: Integer; safecall;
    function Get_asDEVICEFLOWCONTROL_ENABLE: Integer; safecall;
    function Get_asDEVICEFLOWCONTROL_DISABLE: Integer; safecall;
    function Get_asMMS_CLASS_ADVERTISEMENT: Integer; safecall;
    function Get_asMMS_CLASS_INFORMATIONAL: Integer; safecall;
    function Get_asMMS_CLASS_AUTO: Integer; safecall;
    function Get_asMMS_CLASS_PERSONAL: Integer; safecall;
    function Get_asSMPPDELIVERYREPORTFORMAT_HEX: Integer; safecall;
    function Get_asSMPPDELIVERYREPORTFORMAT_DEC: Integer; safecall;
    property asMESSAGEFORMAT_TEXT: Integer read Get_asMESSAGEFORMAT_TEXT;
    property asMESSAGEFORMAT_TEXT_FLASH: Integer read Get_asMESSAGEFORMAT_TEXT_FLASH;
    property asMESSAGEFORMAT_TEXT_MULTIPART: Integer read Get_asMESSAGEFORMAT_TEXT_MULTIPART;
    property asMESSAGEFORMAT_TEXT_MULTIPART_FLASH: Integer read Get_asMESSAGEFORMAT_TEXT_MULTIPART_FLASH;
    property asMESSAGEFORMAT_DATA: Integer read Get_asMESSAGEFORMAT_DATA;
    property asMESSAGEFORMAT_DATA_UDH: Integer read Get_asMESSAGEFORMAT_DATA_UDH;
    property asMESSAGEFORMAT_UNICODE: Integer read Get_asMESSAGEFORMAT_UNICODE;
    property asMESSAGEFORMAT_UNICODE_FLASH: Integer read Get_asMESSAGEFORMAT_UNICODE_FLASH;
    property asMESSAGEFORMAT_UNICODE_MULTIPART: Integer read Get_asMESSAGEFORMAT_UNICODE_MULTIPART;
    property asMESSAGEFORMAT_UNICODE_MULTIPART_FLASH: Integer read Get_asMESSAGEFORMAT_UNICODE_MULTIPART_FLASH;
    property asMESSAGEFORMAT_REPORT: Integer read Get_asMESSAGEFORMAT_REPORT;
    property asMESSAGEFORMAT_NOTIFICATION_MMS: Integer read Get_asMESSAGEFORMAT_NOTIFICATION_MMS;
    property asSMPPMODE_TRANSCEIVER: Integer read Get_asSMPPMODE_TRANSCEIVER;
    property asSMPPMODE_TRANSMITTER: Integer read Get_asSMPPMODE_TRANSMITTER;
    property asSMPPMODE_RECEIVER: Integer read Get_asSMPPMODE_RECEIVER;
    property asPROVIDERTYPE_UCP: Integer read Get_asPROVIDERTYPE_UCP;
    property asPROVIDERTYPE_TAP_DEFAULT: Integer read Get_asPROVIDERTYPE_TAP_DEFAULT;
    property asPROVIDERTYPE_TAP_NOLF: Integer read Get_asPROVIDERTYPE_TAP_NOLF;
    property asPROVIDERTYPE_TAP_NOEOT: Integer read Get_asPROVIDERTYPE_TAP_NOEOT;
    property asDIALMODE_TONE: Integer read Get_asDIALMODE_TONE;
    property asDIALMODE_PULSE: Integer read Get_asDIALMODE_PULSE;
    property asSMPPVERSION_33: Integer read Get_asSMPPVERSION_33;
    property asSMPPVERSION_34: Integer read Get_asSMPPVERSION_34;
    property asSMPPVERSION_50: Integer read Get_asSMPPVERSION_50;
    property asSMPP_TLV_1BYTE: Integer read Get_asSMPP_TLV_1BYTE;
    property asSMPP_TLV_2BYTE: Integer read Get_asSMPP_TLV_2BYTE;
    property asSMPP_TLV_4BYTE: Integer read Get_asSMPP_TLV_4BYTE;
    property asSMPP_TLV_COCTET: Integer read Get_asSMPP_TLV_COCTET;
    property asSMPP_TLV_OCTET: Integer read Get_asSMPP_TLV_OCTET;
    property asSMPP_TLV_VARIABLE: Integer read Get_asSMPP_TLV_VARIABLE;
    property asDELIVERYSTATUS_SCHEDULED: Integer read Get_asDELIVERYSTATUS_SCHEDULED;
    property asDELIVERYSTATUS_ENROUTE: Integer read Get_asDELIVERYSTATUS_ENROUTE;
    property asDELIVERYSTATUS_DELIVERED: Integer read Get_asDELIVERYSTATUS_DELIVERED;
    property asDELIVERYSTATUS_EXPIRED: Integer read Get_asDELIVERYSTATUS_EXPIRED;
    property asDELIVERYSTATUS_DELETED: Integer read Get_asDELIVERYSTATUS_DELETED;
    property asDELIVERYSTATUS_UNDELIVERABLE: Integer read Get_asDELIVERYSTATUS_UNDELIVERABLE;
    property asDELIVERYSTATUS_ACCEPTED: Integer read Get_asDELIVERYSTATUS_ACCEPTED;
    property asDELIVERYSTATUS_UNKNOWN: Integer read Get_asDELIVERYSTATUS_UNKNOWN;
    property asDELIVERYSTATUS_REJECTED: Integer read Get_asDELIVERYSTATUS_REJECTED;
    property asDELIVERYSTATUS_SKIPPED: Integer read Get_asDELIVERYSTATUS_SKIPPED;
    property asDELIVERYSTATUS_SUBMITTED: Integer read Get_asDELIVERYSTATUS_SUBMITTED;
    property asDELIVERYSTATUS_SUBMITREQUESTED: Integer read Get_asDELIVERYSTATUS_SUBMITREQUESTED;
    property asDELIVERYSTATUS_FAILED: Integer read Get_asDELIVERYSTATUS_FAILED;
    property asDELIVERYSTATUS_NOCREDITS: Integer read Get_asDELIVERYSTATUS_NOCREDITS;
    property asWAPPUSH_SERVICE_INDICATION: Integer read Get_asWAPPUSH_SERVICE_INDICATION;
    property asWAPPUSH_SERVICE_LOAD: Integer read Get_asWAPPUSH_SERVICE_LOAD;
    property asWAPPUSHSIGNAL_NONE: Integer read Get_asWAPPUSHSIGNAL_NONE;
    property asWAPPUSHSIGNAL_LOW: Integer read Get_asWAPPUSHSIGNAL_LOW;
    property asWAPPUSHSIGNAL_MEDIUM: Integer read Get_asWAPPUSHSIGNAL_MEDIUM;
    property asWAPPUSHSIGNAL_HIGH: Integer read Get_asWAPPUSHSIGNAL_HIGH;
    property asWAPPUSHSIGNAL_DELETE: Integer read Get_asWAPPUSHSIGNAL_DELETE;
    property asWAPPUSH_ACTION_EXECUTE_LOW: Integer read Get_asWAPPUSH_ACTION_EXECUTE_LOW;
    property asWAPPUSH_ACTION_EXECUTE_HIGH: Integer read Get_asWAPPUSH_ACTION_EXECUTE_HIGH;
    property asWAPPUSH_ACTION_CACHE: Integer read Get_asWAPPUSH_ACTION_CACHE;
    property asDEVICESETTINGS_DEFAULT: Integer read Get_asDEVICESETTINGS_DEFAULT;
    property asDEVICESETTINGS_8N1: Integer read Get_asDEVICESETTINGS_8N1;
    property asDEVICESETTINGS_7E1: Integer read Get_asDEVICESETTINGS_7E1;
    property asSMPPCHARSET_DEFAULT: Integer read Get_asSMPPCHARSET_DEFAULT;
    property asSMPPCHARSET_GSM: Integer read Get_asSMPPCHARSET_GSM;
    property asSMPPCHARSET_ASCII: Integer read Get_asSMPPCHARSET_ASCII;
    property asSMPPCHARSET_LATIN: Integer read Get_asSMPPCHARSET_LATIN;
    property asSMPPCHARSET_JIS: Integer read Get_asSMPPCHARSET_JIS;
    property asSMPPCHARSET_CYRILLIC: Integer read Get_asSMPPCHARSET_CYRILLIC;
    property asSMPPCHARSET_HEBREW: Integer read Get_asSMPPCHARSET_HEBREW;
    property asSMPPCHARSET_JAPANESE: Integer read Get_asSMPPCHARSET_JAPANESE;
    property asSMPPCHARSET_GREEK: Integer read Get_asSMPPCHARSET_GREEK;
    property asSTORAGE_ALL: Integer read Get_asSTORAGE_ALL;
    property asSTORAGE_SIM: Integer read Get_asSTORAGE_SIM;
    property asSTORAGE_DEVICE: Integer read Get_asSTORAGE_DEVICE;
    property asSTORAGE_COMBINED: Integer read Get_asSTORAGE_COMBINED;
    property asSTORAGE_REPORTS: Integer read Get_asSTORAGE_REPORTS;
    property asDEVICEFLOWCONTROL_DEFAULT: Integer read Get_asDEVICEFLOWCONTROL_DEFAULT;
    property asDEVICEFLOWCONTROL_ENABLE: Integer read Get_asDEVICEFLOWCONTROL_ENABLE;
    property asDEVICEFLOWCONTROL_DISABLE: Integer read Get_asDEVICEFLOWCONTROL_DISABLE;
    property asMMS_CLASS_ADVERTISEMENT: Integer read Get_asMMS_CLASS_ADVERTISEMENT;
    property asMMS_CLASS_INFORMATIONAL: Integer read Get_asMMS_CLASS_INFORMATIONAL;
    property asMMS_CLASS_AUTO: Integer read Get_asMMS_CLASS_AUTO;
    property asMMS_CLASS_PERSONAL: Integer read Get_asMMS_CLASS_PERSONAL;
    property asSMPPDELIVERYREPORTFORMAT_HEX: Integer read Get_asSMPPDELIVERYREPORTFORMAT_HEX;
    property asSMPPDELIVERYREPORTFORMAT_DEC: Integer read Get_asSMPPDELIVERYREPORTFORMAT_DEC;
  end;

// *********************************************************************//
// DispIntf:  ISmsConstantsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B20DC41C-F2CB-4B5A-B174-73CEA23BF84B}
// *********************************************************************//
  ISmsConstantsDisp = dispinterface
    ['{B20DC41C-F2CB-4B5A-B174-73CEA23BF84B}']
    property asMESSAGEFORMAT_TEXT: Integer readonly dispid 301;
    property asMESSAGEFORMAT_TEXT_FLASH: Integer readonly dispid 302;
    property asMESSAGEFORMAT_TEXT_MULTIPART: Integer readonly dispid 303;
    property asMESSAGEFORMAT_TEXT_MULTIPART_FLASH: Integer readonly dispid 304;
    property asMESSAGEFORMAT_DATA: Integer readonly dispid 310;
    property asMESSAGEFORMAT_DATA_UDH: Integer readonly dispid 311;
    property asMESSAGEFORMAT_UNICODE: Integer readonly dispid 320;
    property asMESSAGEFORMAT_UNICODE_FLASH: Integer readonly dispid 321;
    property asMESSAGEFORMAT_UNICODE_MULTIPART: Integer readonly dispid 322;
    property asMESSAGEFORMAT_UNICODE_MULTIPART_FLASH: Integer readonly dispid 323;
    property asMESSAGEFORMAT_REPORT: Integer readonly dispid 330;
    property asMESSAGEFORMAT_NOTIFICATION_MMS: Integer readonly dispid 334;
    property asSMPPMODE_TRANSCEIVER: Integer readonly dispid 341;
    property asSMPPMODE_TRANSMITTER: Integer readonly dispid 342;
    property asSMPPMODE_RECEIVER: Integer readonly dispid 343;
    property asPROVIDERTYPE_UCP: Integer readonly dispid 351;
    property asPROVIDERTYPE_TAP_DEFAULT: Integer readonly dispid 352;
    property asPROVIDERTYPE_TAP_NOLF: Integer readonly dispid 353;
    property asPROVIDERTYPE_TAP_NOEOT: Integer readonly dispid 354;
    property asDIALMODE_TONE: Integer readonly dispid 361;
    property asDIALMODE_PULSE: Integer readonly dispid 362;
    property asSMPPVERSION_33: Integer readonly dispid 371;
    property asSMPPVERSION_34: Integer readonly dispid 372;
    property asSMPPVERSION_50: Integer readonly dispid 373;
    property asSMPP_TLV_1BYTE: Integer readonly dispid 381;
    property asSMPP_TLV_2BYTE: Integer readonly dispid 382;
    property asSMPP_TLV_4BYTE: Integer readonly dispid 383;
    property asSMPP_TLV_COCTET: Integer readonly dispid 384;
    property asSMPP_TLV_OCTET: Integer readonly dispid 385;
    property asSMPP_TLV_VARIABLE: Integer readonly dispid 386;
    property asDELIVERYSTATUS_SCHEDULED: Integer readonly dispid 391;
    property asDELIVERYSTATUS_ENROUTE: Integer readonly dispid 392;
    property asDELIVERYSTATUS_DELIVERED: Integer readonly dispid 393;
    property asDELIVERYSTATUS_EXPIRED: Integer readonly dispid 394;
    property asDELIVERYSTATUS_DELETED: Integer readonly dispid 395;
    property asDELIVERYSTATUS_UNDELIVERABLE: Integer readonly dispid 396;
    property asDELIVERYSTATUS_ACCEPTED: Integer readonly dispid 397;
    property asDELIVERYSTATUS_UNKNOWN: Integer readonly dispid 398;
    property asDELIVERYSTATUS_REJECTED: Integer readonly dispid 399;
    property asDELIVERYSTATUS_SKIPPED: Integer readonly dispid 400;
    property asDELIVERYSTATUS_SUBMITTED: Integer readonly dispid 401;
    property asDELIVERYSTATUS_SUBMITREQUESTED: Integer readonly dispid 402;
    property asDELIVERYSTATUS_FAILED: Integer readonly dispid 403;
    property asDELIVERYSTATUS_NOCREDITS: Integer readonly dispid 404;
    property asWAPPUSH_SERVICE_INDICATION: Integer readonly dispid 411;
    property asWAPPUSH_SERVICE_LOAD: Integer readonly dispid 412;
    property asWAPPUSHSIGNAL_NONE: Integer readonly dispid 421;
    property asWAPPUSHSIGNAL_LOW: Integer readonly dispid 422;
    property asWAPPUSHSIGNAL_MEDIUM: Integer readonly dispid 423;
    property asWAPPUSHSIGNAL_HIGH: Integer readonly dispid 424;
    property asWAPPUSHSIGNAL_DELETE: Integer readonly dispid 425;
    property asWAPPUSH_ACTION_EXECUTE_LOW: Integer readonly dispid 431;
    property asWAPPUSH_ACTION_EXECUTE_HIGH: Integer readonly dispid 432;
    property asWAPPUSH_ACTION_CACHE: Integer readonly dispid 433;
    property asDEVICESETTINGS_DEFAULT: Integer readonly dispid 451;
    property asDEVICESETTINGS_8N1: Integer readonly dispid 452;
    property asDEVICESETTINGS_7E1: Integer readonly dispid 453;
    property asSMPPCHARSET_DEFAULT: Integer readonly dispid 461;
    property asSMPPCHARSET_GSM: Integer readonly dispid 462;
    property asSMPPCHARSET_ASCII: Integer readonly dispid 463;
    property asSMPPCHARSET_LATIN: Integer readonly dispid 464;
    property asSMPPCHARSET_JIS: Integer readonly dispid 465;
    property asSMPPCHARSET_CYRILLIC: Integer readonly dispid 466;
    property asSMPPCHARSET_HEBREW: Integer readonly dispid 467;
    property asSMPPCHARSET_JAPANESE: Integer readonly dispid 468;
    property asSMPPCHARSET_GREEK: Integer readonly dispid 469;
    property asSTORAGE_ALL: Integer readonly dispid 481;
    property asSTORAGE_SIM: Integer readonly dispid 482;
    property asSTORAGE_DEVICE: Integer readonly dispid 483;
    property asSTORAGE_COMBINED: Integer readonly dispid 484;
    property asSTORAGE_REPORTS: Integer readonly dispid 485;
    property asDEVICEFLOWCONTROL_DEFAULT: Integer readonly dispid 491;
    property asDEVICEFLOWCONTROL_ENABLE: Integer readonly dispid 492;
    property asDEVICEFLOWCONTROL_DISABLE: Integer readonly dispid 493;
    property asMMS_CLASS_ADVERTISEMENT: Integer readonly dispid 501;
    property asMMS_CLASS_INFORMATIONAL: Integer readonly dispid 502;
    property asMMS_CLASS_AUTO: Integer readonly dispid 503;
    property asMMS_CLASS_PERSONAL: Integer readonly dispid 504;
    property asSMPPDELIVERYREPORTFORMAT_HEX: Integer readonly dispid 511;
    property asSMPPDELIVERYREPORTFORMAT_DEC: Integer readonly dispid 512;
  end;

// *********************************************************************//
// Interface: ISmsProtocolHttp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FE747A06-B435-4E13-89B9-A4EFFB6AED75}
// *********************************************************************//
  ISmsProtocolHttp = interface(IDispatch)
    ['{FE747A06-B435-4E13-89B9-A4EFFB6AED75}']
    function Get_LastError: Integer; safecall;
    function Get_Version: WideString; safecall;
    function Get_Build: WideString; safecall;
    function Get_ExpirationDate: WideString; safecall;
    procedure Set_Reserved(Param1: Integer); safecall;
    function Get_LogFile: WideString; safecall;
    procedure Set_LogFile(const pVal: WideString); safecall;
    function Get_ActivityFile: WideString; safecall;
    procedure Set_ActivityFile(const pVal: WideString); safecall;
    procedure Set_DistributionID(const Param1: WideString); safecall;
    procedure Set_DistributionKey(const Param1: WideString); safecall;
    function Get_Module: WideString; safecall;
    procedure Clear; safecall;
    function GetErrorDescription(newVal: Integer): WideString; safecall;
    procedure Activate(const newVal: WideString; bPersistent: Integer); safecall;
    function Get_ProviderHost: WideString; safecall;
    procedure Set_ProviderHost(const pVal: WideString); safecall;
    function Get_ProviderPort: Integer; safecall;
    procedure Set_ProviderPort(pVal: Integer); safecall;
    function Get_ProviderWebAccount: WideString; safecall;
    procedure Set_ProviderWebAccount(const pVal: WideString); safecall;
    function Get_ProviderWebPassword: WideString; safecall;
    procedure Set_ProviderWebPassword(const pVal: WideString); safecall;
    function Get_ProviderUseSSL: Integer; safecall;
    procedure Set_ProviderUseSSL(pVal: Integer); safecall;
    function Get_ProviderCharset: Integer; safecall;
    procedure Set_ProviderCharset(pVal: Integer); safecall;
    function Get_ProviderResponse: WideString; safecall;
    function Get_ProviderSuccessResponse: WideString; safecall;
    procedure Set_ProviderSuccessResponse(const pVal: WideString); safecall;
    function Get_ProviderErrorResponse: WideString; safecall;
    procedure Set_ProviderErrorResponse(const pVal: WideString); safecall;
    function Get_ProxyServer: WideString; safecall;
    procedure Set_ProxyServer(const pVal: WideString); safecall;
    function Get_ProxyPort: Integer; safecall;
    procedure Set_ProxyPort(pVal: Integer); safecall;
    function Get_ProxyAccount: WideString; safecall;
    procedure Set_ProxyAccount(const pVal: WideString); safecall;
    function Get_ProxyPassword: WideString; safecall;
    procedure Set_ProxyPassword(const pVal: WideString); safecall;
    function Get_URLText: WideString; safecall;
    procedure Set_URLText(const pVal: WideString); safecall;
    function Get_URLBinary: WideString; safecall;
    procedure Set_URLBinary(const pVal: WideString); safecall;
    function Get_URLUnicode: WideString; safecall;
    procedure Set_URLUnicode(const pVal: WideString); safecall;
    function Get_AdvancedSettings: WideString; safecall;
    procedure Set_AdvancedSettings(const pVal: WideString); safecall;
    procedure Send(var pVariant: OleVariant); safecall;
    procedure ProviderLoadConfig(const bstrFileName: WideString); safecall;
    procedure ProviderSaveConfig(const bstrFileName: WideString); safecall;
    property LastError: Integer read Get_LastError;
    property Version: WideString read Get_Version;
    property Build: WideString read Get_Build;
    property ExpirationDate: WideString read Get_ExpirationDate;
    property Reserved: Integer write Set_Reserved;
    property LogFile: WideString read Get_LogFile write Set_LogFile;
    property ActivityFile: WideString read Get_ActivityFile write Set_ActivityFile;
    property DistributionID: WideString write Set_DistributionID;
    property DistributionKey: WideString write Set_DistributionKey;
    property Module: WideString read Get_Module;
    property ProviderHost: WideString read Get_ProviderHost write Set_ProviderHost;
    property ProviderPort: Integer read Get_ProviderPort write Set_ProviderPort;
    property ProviderWebAccount: WideString read Get_ProviderWebAccount write Set_ProviderWebAccount;
    property ProviderWebPassword: WideString read Get_ProviderWebPassword write Set_ProviderWebPassword;
    property ProviderUseSSL: Integer read Get_ProviderUseSSL write Set_ProviderUseSSL;
    property ProviderCharset: Integer read Get_ProviderCharset write Set_ProviderCharset;
    property ProviderResponse: WideString read Get_ProviderResponse;
    property ProviderSuccessResponse: WideString read Get_ProviderSuccessResponse write Set_ProviderSuccessResponse;
    property ProviderErrorResponse: WideString read Get_ProviderErrorResponse write Set_ProviderErrorResponse;
    property ProxyServer: WideString read Get_ProxyServer write Set_ProxyServer;
    property ProxyPort: Integer read Get_ProxyPort write Set_ProxyPort;
    property ProxyAccount: WideString read Get_ProxyAccount write Set_ProxyAccount;
    property ProxyPassword: WideString read Get_ProxyPassword write Set_ProxyPassword;
    property URLText: WideString read Get_URLText write Set_URLText;
    property URLBinary: WideString read Get_URLBinary write Set_URLBinary;
    property URLUnicode: WideString read Get_URLUnicode write Set_URLUnicode;
    property AdvancedSettings: WideString read Get_AdvancedSettings write Set_AdvancedSettings;
  end;

// *********************************************************************//
// DispIntf:  ISmsProtocolHttpDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FE747A06-B435-4E13-89B9-A4EFFB6AED75}
// *********************************************************************//
  ISmsProtocolHttpDisp = dispinterface
    ['{FE747A06-B435-4E13-89B9-A4EFFB6AED75}']
    property LastError: Integer readonly dispid 1;
    property Version: WideString readonly dispid 2;
    property Build: WideString readonly dispid 3;
    property ExpirationDate: WideString readonly dispid 4;
    property Reserved: Integer writeonly dispid 5;
    property LogFile: WideString dispid 6;
    property ActivityFile: WideString dispid 7;
    property DistributionID: WideString writeonly dispid 8;
    property DistributionKey: WideString writeonly dispid 9;
    property Module: WideString readonly dispid 10;
    procedure Clear; dispid 20;
    function GetErrorDescription(newVal: Integer): WideString; dispid 21;
    procedure Activate(const newVal: WideString; bPersistent: Integer); dispid 22;
    property ProviderHost: WideString dispid 101;
    property ProviderPort: Integer dispid 102;
    property ProviderWebAccount: WideString dispid 103;
    property ProviderWebPassword: WideString dispid 104;
    property ProviderUseSSL: Integer dispid 105;
    property ProviderCharset: Integer dispid 106;
    property ProviderResponse: WideString readonly dispid 107;
    property ProviderSuccessResponse: WideString dispid 108;
    property ProviderErrorResponse: WideString dispid 109;
    property ProxyServer: WideString dispid 110;
    property ProxyPort: Integer dispid 111;
    property ProxyAccount: WideString dispid 112;
    property ProxyPassword: WideString dispid 113;
    property URLText: WideString dispid 114;
    property URLBinary: WideString dispid 115;
    property URLUnicode: WideString dispid 116;
    property AdvancedSettings: WideString dispid 120;
    procedure Send(var pVariant: OleVariant); dispid 203;
    procedure ProviderLoadConfig(const bstrFileName: WideString); dispid 206;
    procedure ProviderSaveConfig(const bstrFileName: WideString); dispid 207;
  end;

// *********************************************************************//
// Interface: ISmsProtocolDialup
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6981A9D3-9F5E-4AE0-B915-E582DE5769DC}
// *********************************************************************//
  ISmsProtocolDialup = interface(IDispatch)
    ['{6981A9D3-9F5E-4AE0-B915-E582DE5769DC}']
    function Get_LastError: Integer; safecall;
    function Get_Version: WideString; safecall;
    function Get_Build: WideString; safecall;
    function Get_ExpirationDate: WideString; safecall;
    procedure Set_Reserved(Param1: Integer); safecall;
    function Get_LogFile: WideString; safecall;
    procedure Set_LogFile(const pVal: WideString); safecall;
    function Get_ActivityFile: WideString; safecall;
    procedure Set_ActivityFile(const pVal: WideString); safecall;
    procedure Set_DistributionID(const Param1: WideString); safecall;
    procedure Set_DistributionKey(const Param1: WideString); safecall;
    function Get_Module: WideString; safecall;
    procedure Clear; safecall;
    function GetErrorDescription(newVal: Integer): WideString; safecall;
    procedure Activate(const newVal: WideString; bPersistent: Integer); safecall;
    function Get_Device: WideString; safecall;
    procedure Set_Device(const pVal: WideString); safecall;
    function Get_DeviceSpeed: Integer; safecall;
    procedure Set_DeviceSpeed(pVal: Integer); safecall;
    function Get_DeviceSettings: Integer; safecall;
    procedure Set_DeviceSettings(pVal: Integer); safecall;
    function Get_DeviceInitString: WideString; safecall;
    procedure Set_DeviceInitString(const pVal: WideString); safecall;
    function Get_DeviceFlowControl: Integer; safecall;
    procedure Set_DeviceFlowControl(pVal: Integer); safecall;
    function Get_DialMode: Integer; safecall;
    procedure Set_DialMode(pVal: Integer); safecall;
    function Get_ProviderDialString: WideString; safecall;
    procedure Set_ProviderDialString(const pVal: WideString); safecall;
    function Get_ProviderPassword: WideString; safecall;
    procedure Set_ProviderPassword(const pVal: WideString); safecall;
    function Get_ProviderType: Integer; safecall;
    procedure Set_ProviderType(pVal: Integer); safecall;
    function Get_ProviderResponse: WideString; safecall;
    function Get_AdvancedSettings: WideString; safecall;
    procedure Set_AdvancedSettings(const pVal: WideString); safecall;
    function GetDeviceCount: Integer; safecall;
    function GetDevice(lIndex: Integer): WideString; safecall;
    procedure Send(var pMessage: OleVariant); safecall;
    procedure ProviderLoadConfig(const bstrFileName: WideString); safecall;
    procedure ProviderSaveConfig(const bstrFileName: WideString); safecall;
    property LastError: Integer read Get_LastError;
    property Version: WideString read Get_Version;
    property Build: WideString read Get_Build;
    property ExpirationDate: WideString read Get_ExpirationDate;
    property Reserved: Integer write Set_Reserved;
    property LogFile: WideString read Get_LogFile write Set_LogFile;
    property ActivityFile: WideString read Get_ActivityFile write Set_ActivityFile;
    property DistributionID: WideString write Set_DistributionID;
    property DistributionKey: WideString write Set_DistributionKey;
    property Module: WideString read Get_Module;
    property Device: WideString read Get_Device write Set_Device;
    property DeviceSpeed: Integer read Get_DeviceSpeed write Set_DeviceSpeed;
    property DeviceSettings: Integer read Get_DeviceSettings write Set_DeviceSettings;
    property DeviceInitString: WideString read Get_DeviceInitString write Set_DeviceInitString;
    property DeviceFlowControl: Integer read Get_DeviceFlowControl write Set_DeviceFlowControl;
    property DialMode: Integer read Get_DialMode write Set_DialMode;
    property ProviderDialString: WideString read Get_ProviderDialString write Set_ProviderDialString;
    property ProviderPassword: WideString read Get_ProviderPassword write Set_ProviderPassword;
    property ProviderType: Integer read Get_ProviderType write Set_ProviderType;
    property ProviderResponse: WideString read Get_ProviderResponse;
    property AdvancedSettings: WideString read Get_AdvancedSettings write Set_AdvancedSettings;
  end;

// *********************************************************************//
// DispIntf:  ISmsProtocolDialupDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6981A9D3-9F5E-4AE0-B915-E582DE5769DC}
// *********************************************************************//
  ISmsProtocolDialupDisp = dispinterface
    ['{6981A9D3-9F5E-4AE0-B915-E582DE5769DC}']
    property LastError: Integer readonly dispid 1;
    property Version: WideString readonly dispid 2;
    property Build: WideString readonly dispid 3;
    property ExpirationDate: WideString readonly dispid 4;
    property Reserved: Integer writeonly dispid 5;
    property LogFile: WideString dispid 6;
    property ActivityFile: WideString dispid 7;
    property DistributionID: WideString writeonly dispid 8;
    property DistributionKey: WideString writeonly dispid 9;
    property Module: WideString readonly dispid 10;
    procedure Clear; dispid 20;
    function GetErrorDescription(newVal: Integer): WideString; dispid 21;
    procedure Activate(const newVal: WideString; bPersistent: Integer); dispid 22;
    property Device: WideString dispid 101;
    property DeviceSpeed: Integer dispid 102;
    property DeviceSettings: Integer dispid 103;
    property DeviceInitString: WideString dispid 104;
    property DeviceFlowControl: Integer dispid 105;
    property DialMode: Integer dispid 114;
    property ProviderDialString: WideString dispid 115;
    property ProviderPassword: WideString dispid 116;
    property ProviderType: Integer dispid 117;
    property ProviderResponse: WideString readonly dispid 120;
    property AdvancedSettings: WideString dispid 127;
    function GetDeviceCount: Integer; dispid 201;
    function GetDevice(lIndex: Integer): WideString; dispid 202;
    procedure Send(var pMessage: OleVariant); dispid 203;
    procedure ProviderLoadConfig(const bstrFileName: WideString); dispid 206;
    procedure ProviderSaveConfig(const bstrFileName: WideString); dispid 207;
  end;

// *********************************************************************//
// Interface: IPagerProtocolSnpp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AAFC490C-6EFB-42E5-8267-7BE9FB2ACF8F}
// *********************************************************************//
  IPagerProtocolSnpp = interface(IDispatch)
    ['{AAFC490C-6EFB-42E5-8267-7BE9FB2ACF8F}']
    function Get_LastError: Integer; safecall;
    function Get_Version: WideString; safecall;
    function Get_Build: WideString; safecall;
    function Get_ExpirationDate: WideString; safecall;
    procedure Set_Reserved(Param1: Integer); safecall;
    function Get_LogFile: WideString; safecall;
    procedure Set_LogFile(const pVal: WideString); safecall;
    procedure Set_DistributionID(const Param1: WideString); safecall;
    procedure Set_DistributionKey(const Param1: WideString); safecall;
    function Get_Module: WideString; safecall;
    procedure Clear; safecall;
    function GetErrorDescription(newVal: Integer): WideString; safecall;
    procedure Activate(const newVal: WideString; bPersistent: Integer); safecall;
    function Get_Server: WideString; safecall;
    procedure Set_Server(const pVal: WideString); safecall;
    function Get_ServerPort: Integer; safecall;
    procedure Set_ServerPort(pVal: Integer); safecall;
    function Get_ServerTimeout: Integer; safecall;
    procedure Set_ServerTimeout(pVal: Integer); safecall;
    function Get_ProviderPassword: WideString; safecall;
    procedure Set_ProviderPassword(const pVal: WideString); safecall;
    function Get_ProviderResponse: WideString; safecall;
    function Get_AdvancedSettings: WideString; safecall;
    procedure Set_AdvancedSettings(const pVal: WideString); safecall;
    procedure Send(var pVariant: OleVariant); safecall;
    property LastError: Integer read Get_LastError;
    property Version: WideString read Get_Version;
    property Build: WideString read Get_Build;
    property ExpirationDate: WideString read Get_ExpirationDate;
    property Reserved: Integer write Set_Reserved;
    property LogFile: WideString read Get_LogFile write Set_LogFile;
    property DistributionID: WideString write Set_DistributionID;
    property DistributionKey: WideString write Set_DistributionKey;
    property Module: WideString read Get_Module;
    property Server: WideString read Get_Server write Set_Server;
    property ServerPort: Integer read Get_ServerPort write Set_ServerPort;
    property ServerTimeout: Integer read Get_ServerTimeout write Set_ServerTimeout;
    property ProviderPassword: WideString read Get_ProviderPassword write Set_ProviderPassword;
    property ProviderResponse: WideString read Get_ProviderResponse;
    property AdvancedSettings: WideString read Get_AdvancedSettings write Set_AdvancedSettings;
  end;

// *********************************************************************//
// DispIntf:  IPagerProtocolSnppDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AAFC490C-6EFB-42E5-8267-7BE9FB2ACF8F}
// *********************************************************************//
  IPagerProtocolSnppDisp = dispinterface
    ['{AAFC490C-6EFB-42E5-8267-7BE9FB2ACF8F}']
    property LastError: Integer readonly dispid 1;
    property Version: WideString readonly dispid 2;
    property Build: WideString readonly dispid 3;
    property ExpirationDate: WideString readonly dispid 4;
    property Reserved: Integer writeonly dispid 5;
    property LogFile: WideString dispid 6;
    property DistributionID: WideString writeonly dispid 8;
    property DistributionKey: WideString writeonly dispid 9;
    property Module: WideString readonly dispid 10;
    procedure Clear; dispid 20;
    function GetErrorDescription(newVal: Integer): WideString; dispid 21;
    procedure Activate(const newVal: WideString; bPersistent: Integer); dispid 22;
    property Server: WideString dispid 101;
    property ServerPort: Integer dispid 102;
    property ServerTimeout: Integer dispid 103;
    property ProviderPassword: WideString dispid 104;
    property ProviderResponse: WideString readonly dispid 110;
    property AdvancedSettings: WideString dispid 115;
    procedure Send(var pVariant: OleVariant); dispid 201;
  end;

// *********************************************************************//
// Interface: ISmsDataWapBookmark
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {97288A28-A8CE-4175-8E0B-75F0AEF9E489}
// *********************************************************************//
  ISmsDataWapBookmark = interface(IDispatch)
    ['{97288A28-A8CE-4175-8E0B-75F0AEF9E489}']
    function Get_LastError: Integer; safecall;
    function Get_Version: WideString; safecall;
    function Get_Build: WideString; safecall;
    function Get_ExpirationDate: WideString; safecall;
    procedure Set_Reserved(Param1: Integer); safecall;
    procedure Set_DistributionID(const Param1: WideString); safecall;
    procedure Set_DistributionKey(const Param1: WideString); safecall;
    function Get_Module: WideString; safecall;
    procedure Clear; safecall;
    function GetErrorDescription(newVal: Integer): WideString; safecall;
    procedure Activate(const newVal: WideString; bPersistent: Integer); safecall;
    function Get_Description: WideString; safecall;
    procedure Set_Description(const pVal: WideString); safecall;
    function Get_URL: WideString; safecall;
    procedure Set_URL(const pVal: WideString); safecall;
    function Get_EncodedMessage: WideString; safecall;
    procedure Encode; safecall;
    property LastError: Integer read Get_LastError;
    property Version: WideString read Get_Version;
    property Build: WideString read Get_Build;
    property ExpirationDate: WideString read Get_ExpirationDate;
    property Reserved: Integer write Set_Reserved;
    property DistributionID: WideString write Set_DistributionID;
    property DistributionKey: WideString write Set_DistributionKey;
    property Module: WideString read Get_Module;
    property Description: WideString read Get_Description write Set_Description;
    property URL: WideString read Get_URL write Set_URL;
    property EncodedMessage: WideString read Get_EncodedMessage;
  end;

// *********************************************************************//
// DispIntf:  ISmsDataWapBookmarkDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {97288A28-A8CE-4175-8E0B-75F0AEF9E489}
// *********************************************************************//
  ISmsDataWapBookmarkDisp = dispinterface
    ['{97288A28-A8CE-4175-8E0B-75F0AEF9E489}']
    property LastError: Integer readonly dispid 1;
    property Version: WideString readonly dispid 2;
    property Build: WideString readonly dispid 3;
    property ExpirationDate: WideString readonly dispid 4;
    property Reserved: Integer writeonly dispid 5;
    property DistributionID: WideString writeonly dispid 8;
    property DistributionKey: WideString writeonly dispid 9;
    property Module: WideString readonly dispid 10;
    procedure Clear; dispid 20;
    function GetErrorDescription(newVal: Integer): WideString; dispid 21;
    procedure Activate(const newVal: WideString; bPersistent: Integer); dispid 22;
    property Description: WideString dispid 101;
    property URL: WideString dispid 102;
    property EncodedMessage: WideString readonly dispid 103;
    procedure Encode; dispid 201;
  end;

// *********************************************************************//
// Interface: ISmsDataWapPush
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {51052D1C-80F1-4FCE-A458-A1CD8BA753CA}
// *********************************************************************//
  ISmsDataWapPush = interface(IDispatch)
    ['{51052D1C-80F1-4FCE-A458-A1CD8BA753CA}']
    function Get_LastError: Integer; safecall;
    function Get_Version: WideString; safecall;
    function Get_Build: WideString; safecall;
    function Get_ExpirationDate: WideString; safecall;
    procedure Set_Reserved(Param1: Integer); safecall;
    procedure Set_DistributionID(const Param1: WideString); safecall;
    procedure Set_DistributionKey(const Param1: WideString); safecall;
    function Get_Module: WideString; safecall;
    procedure Clear; safecall;
    function GetErrorDescription(newVal: Integer): WideString; safecall;
    procedure Activate(const newVal: WideString; bPersistent: Integer); safecall;
    function Get_SignalReference: WideString; safecall;
    procedure Set_SignalReference(const pVal: WideString); safecall;
    function Get_SignalAction: Integer; safecall;
    procedure Set_SignalAction(pVal: Integer); safecall;
    function Get_Description: WideString; safecall;
    procedure Set_Description(const pVal: WideString); safecall;
    function Get_URL: WideString; safecall;
    procedure Set_URL(const pVal: WideString); safecall;
    function Get_ConnectionType: Integer; safecall;
    procedure Set_ConnectionType(pVal: Integer); safecall;
    function Get_ExecuteAction: Integer; safecall;
    procedure Set_ExecuteAction(pVal: Integer); safecall;
    function Get_EncodedMessage: WideString; safecall;
    procedure Encode; safecall;
    property LastError: Integer read Get_LastError;
    property Version: WideString read Get_Version;
    property Build: WideString read Get_Build;
    property ExpirationDate: WideString read Get_ExpirationDate;
    property Reserved: Integer write Set_Reserved;
    property DistributionID: WideString write Set_DistributionID;
    property DistributionKey: WideString write Set_DistributionKey;
    property Module: WideString read Get_Module;
    property SignalReference: WideString read Get_SignalReference write Set_SignalReference;
    property SignalAction: Integer read Get_SignalAction write Set_SignalAction;
    property Description: WideString read Get_Description write Set_Description;
    property URL: WideString read Get_URL write Set_URL;
    property ConnectionType: Integer read Get_ConnectionType write Set_ConnectionType;
    property ExecuteAction: Integer read Get_ExecuteAction write Set_ExecuteAction;
    property EncodedMessage: WideString read Get_EncodedMessage;
  end;

// *********************************************************************//
// DispIntf:  ISmsDataWapPushDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {51052D1C-80F1-4FCE-A458-A1CD8BA753CA}
// *********************************************************************//
  ISmsDataWapPushDisp = dispinterface
    ['{51052D1C-80F1-4FCE-A458-A1CD8BA753CA}']
    property LastError: Integer readonly dispid 1;
    property Version: WideString readonly dispid 2;
    property Build: WideString readonly dispid 3;
    property ExpirationDate: WideString readonly dispid 4;
    property Reserved: Integer writeonly dispid 5;
    property DistributionID: WideString writeonly dispid 8;
    property DistributionKey: WideString writeonly dispid 9;
    property Module: WideString readonly dispid 10;
    procedure Clear; dispid 20;
    function GetErrorDescription(newVal: Integer): WideString; dispid 21;
    procedure Activate(const newVal: WideString; bPersistent: Integer); dispid 22;
    property SignalReference: WideString dispid 101;
    property SignalAction: Integer dispid 102;
    property Description: WideString dispid 103;
    property URL: WideString dispid 104;
    property ConnectionType: Integer dispid 105;
    property ExecuteAction: Integer dispid 106;
    property EncodedMessage: WideString readonly dispid 110;
    procedure Encode; dispid 201;
  end;

// *********************************************************************//
// Interface: ISmsDeliveryStatus
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DF9718BC-DDEC-44C7-B2E0-F9046E840AF7}
// *********************************************************************//
  ISmsDeliveryStatus = interface(IDispatch)
    ['{DF9718BC-DDEC-44C7-B2E0-F9046E840AF7}']
    function Get_Status: Integer; safecall;
    procedure Set_Status(pVal: Integer); safecall;
    function Get_StatusCode: Integer; safecall;
    procedure Set_StatusCode(pVal: Integer); safecall;
    function Get_StatusCompletedTime: WideString; safecall;
    procedure Set_StatusCompletedTime(const pVal: WideString); safecall;
    function Get_StatusCompletedTimeSecs: Integer; safecall;
    procedure Set_StatusCompletedTimeSecs(pVal: Integer); safecall;
    function Get_IsCompleted: Integer; safecall;
    procedure Set_IsCompleted(pVal: Integer); safecall;
    function Get_StatusDescription: WideString; safecall;
    function Get_ProviderReference: WideString; safecall;
    procedure Set_ProviderReference(const pVal: WideString); safecall;
    property Status: Integer read Get_Status write Set_Status;
    property StatusCode: Integer read Get_StatusCode write Set_StatusCode;
    property StatusCompletedTime: WideString read Get_StatusCompletedTime write Set_StatusCompletedTime;
    property StatusCompletedTimeSecs: Integer read Get_StatusCompletedTimeSecs write Set_StatusCompletedTimeSecs;
    property IsCompleted: Integer read Get_IsCompleted write Set_IsCompleted;
    property StatusDescription: WideString read Get_StatusDescription;
    property ProviderReference: WideString read Get_ProviderReference write Set_ProviderReference;
  end;

// *********************************************************************//
// DispIntf:  ISmsDeliveryStatusDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DF9718BC-DDEC-44C7-B2E0-F9046E840AF7}
// *********************************************************************//
  ISmsDeliveryStatusDisp = dispinterface
    ['{DF9718BC-DDEC-44C7-B2E0-F9046E840AF7}']
    property Status: Integer dispid 101;
    property StatusCode: Integer dispid 102;
    property StatusCompletedTime: WideString dispid 103;
    property StatusCompletedTimeSecs: Integer dispid 104;
    property IsCompleted: Integer dispid 105;
    property StatusDescription: WideString readonly dispid 106;
    property ProviderReference: WideString dispid 107;
  end;

// *********************************************************************//
// Interface: IPagerMessage
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {990F731B-B2A8-45B8-9E39-8DF6FA8B85C1}
// *********************************************************************//
  IPagerMessage = interface(IDispatch)
    ['{990F731B-B2A8-45B8-9E39-8DF6FA8B85C1}']
    procedure Clear; safecall;
    function Get_Recipient: WideString; safecall;
    procedure Set_Recipient(const pVal: WideString); safecall;
    function Get_Data: WideString; safecall;
    procedure Set_Data(const pVal: WideString); safecall;
    property Recipient: WideString read Get_Recipient write Set_Recipient;
    property Data: WideString read Get_Data write Set_Data;
  end;

// *********************************************************************//
// DispIntf:  IPagerMessageDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {990F731B-B2A8-45B8-9E39-8DF6FA8B85C1}
// *********************************************************************//
  IPagerMessageDisp = dispinterface
    ['{990F731B-B2A8-45B8-9E39-8DF6FA8B85C1}']
    procedure Clear; dispid 20;
    property Recipient: WideString dispid 101;
    property Data: WideString dispid 102;
  end;

// *********************************************************************//
// Interface: IMmsProtocolMm1
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1B87BF35-D56F-42A8-8D23-8631953DBA68}
// *********************************************************************//
  IMmsProtocolMm1 = interface(IDispatch)
    ['{1B87BF35-D56F-42A8-8D23-8631953DBA68}']
    function Get_LastError: Integer; safecall;
    function Get_Version: WideString; safecall;
    function Get_Build: WideString; safecall;
    function Get_ExpirationDate: WideString; safecall;
    procedure Set_Reserved(Param1: Integer); safecall;
    function Get_LogFile: WideString; safecall;
    procedure Set_LogFile(const pVal: WideString); safecall;
    function Get_ActivityFile: WideString; safecall;
    procedure Set_ActivityFile(const pVal: WideString); safecall;
    procedure Set_DistributionID(const Param1: WideString); safecall;
    procedure Set_DistributionKey(const Param1: WideString); safecall;
    function Get_Module: WideString; safecall;
    procedure Clear; safecall;
    function GetErrorDescription(newVal: Integer): WideString; safecall;
    procedure Activate(const newVal: WideString; bPersistent: Integer); safecall;
    procedure Set_Device(const pVal: WideString); safecall;
    function Get_Device: WideString; safecall;
    function Get_ProviderAPN: WideString; safecall;
    procedure Set_ProviderAPN(const pVal: WideString); safecall;
    function Get_ProviderAPNAccount: WideString; safecall;
    procedure Set_ProviderAPNAccount(const pVal: WideString); safecall;
    function Get_ProviderAPNPassword: WideString; safecall;
    procedure Set_ProviderAPNPassword(const pVal: WideString); safecall;
    function Get_ProviderWAPGateway: WideString; safecall;
    procedure Set_ProviderWAPGateway(const pVal: WideString); safecall;
    function Get_ProviderMMSC: WideString; safecall;
    procedure Set_ProviderMMSC(const pVal: WideString); safecall;
    function Get_ProviderMessageSizeLimit: Integer; safecall;
    procedure Set_ProviderMessageSizeLimit(pVal: Integer); safecall;
    function Get_AdvancedSettings: WideString; safecall;
    procedure Set_AdvancedSettings(const pVal: WideString); safecall;
    function Get_ProviderResponse: WideString; safecall;
    function Get_MessageId: WideString; safecall;
    function Get_ProvidersFolder: WideString; safecall;
    function Get_ProviderTimeout: Integer; safecall;
    procedure Set_ProviderTimeout(pVal: Integer); safecall;
    procedure Connect; safecall;
    procedure Disconnect; safecall;
    procedure Send(var pVal: OleVariant); safecall;
    function GetDeviceCount: Integer; safecall;
    function GetDevice(lDevice: Integer): WideString; safecall;
    procedure ProviderSaveConfig(const bstrFile: WideString); safecall;
    procedure ProviderLoadConfig(const bstrFile: WideString); safecall;
    procedure EnterPin(const bstrPinCode: WideString); safecall;
    function SendCommand(const bstrCommand: WideString; lTimeout: Integer): WideString; safecall;
    function Retrieve(const bstrContentLocation: WideString): OleVariant; safecall;
    function GetFirstMessage: OleVariant; safecall;
    function GetNextMessage: OleVariant; safecall;
    function CountReceivedMessages: Integer; safecall;
    function GetMessage(lIndex: Integer): OleVariant; safecall;
    property LastError: Integer read Get_LastError;
    property Version: WideString read Get_Version;
    property Build: WideString read Get_Build;
    property ExpirationDate: WideString read Get_ExpirationDate;
    property Reserved: Integer write Set_Reserved;
    property LogFile: WideString read Get_LogFile write Set_LogFile;
    property ActivityFile: WideString read Get_ActivityFile write Set_ActivityFile;
    property DistributionID: WideString write Set_DistributionID;
    property DistributionKey: WideString write Set_DistributionKey;
    property Module: WideString read Get_Module;
    property Device: WideString read Get_Device write Set_Device;
    property ProviderAPN: WideString read Get_ProviderAPN write Set_ProviderAPN;
    property ProviderAPNAccount: WideString read Get_ProviderAPNAccount write Set_ProviderAPNAccount;
    property ProviderAPNPassword: WideString read Get_ProviderAPNPassword write Set_ProviderAPNPassword;
    property ProviderWAPGateway: WideString read Get_ProviderWAPGateway write Set_ProviderWAPGateway;
    property ProviderMMSC: WideString read Get_ProviderMMSC write Set_ProviderMMSC;
    property ProviderMessageSizeLimit: Integer read Get_ProviderMessageSizeLimit write Set_ProviderMessageSizeLimit;
    property AdvancedSettings: WideString read Get_AdvancedSettings write Set_AdvancedSettings;
    property ProviderResponse: WideString read Get_ProviderResponse;
    property MessageId: WideString read Get_MessageId;
    property ProvidersFolder: WideString read Get_ProvidersFolder;
    property ProviderTimeout: Integer read Get_ProviderTimeout write Set_ProviderTimeout;
  end;

// *********************************************************************//
// DispIntf:  IMmsProtocolMm1Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1B87BF35-D56F-42A8-8D23-8631953DBA68}
// *********************************************************************//
  IMmsProtocolMm1Disp = dispinterface
    ['{1B87BF35-D56F-42A8-8D23-8631953DBA68}']
    property LastError: Integer readonly dispid 1;
    property Version: WideString readonly dispid 2;
    property Build: WideString readonly dispid 3;
    property ExpirationDate: WideString readonly dispid 4;
    property Reserved: Integer writeonly dispid 5;
    property LogFile: WideString dispid 6;
    property ActivityFile: WideString dispid 7;
    property DistributionID: WideString writeonly dispid 8;
    property DistributionKey: WideString writeonly dispid 9;
    property Module: WideString readonly dispid 10;
    procedure Clear; dispid 20;
    function GetErrorDescription(newVal: Integer): WideString; dispid 21;
    procedure Activate(const newVal: WideString; bPersistent: Integer); dispid 22;
    property Device: WideString dispid 101;
    property ProviderAPN: WideString dispid 105;
    property ProviderAPNAccount: WideString dispid 106;
    property ProviderAPNPassword: WideString dispid 107;
    property ProviderWAPGateway: WideString dispid 108;
    property ProviderMMSC: WideString dispid 109;
    property ProviderMessageSizeLimit: Integer dispid 110;
    property AdvancedSettings: WideString dispid 115;
    property ProviderResponse: WideString readonly dispid 120;
    property MessageId: WideString readonly dispid 121;
    property ProvidersFolder: WideString readonly dispid 125;
    property ProviderTimeout: Integer dispid 126;
    procedure Connect; dispid 200;
    procedure Disconnect; dispid 201;
    procedure Send(var pVal: OleVariant); dispid 202;
    function GetDeviceCount: Integer; dispid 205;
    function GetDevice(lDevice: Integer): WideString; dispid 206;
    procedure ProviderSaveConfig(const bstrFile: WideString); dispid 207;
    procedure ProviderLoadConfig(const bstrFile: WideString); dispid 208;
    procedure EnterPin(const bstrPinCode: WideString); dispid 209;
    function SendCommand(const bstrCommand: WideString; lTimeout: Integer): WideString; dispid 213;
    function Retrieve(const bstrContentLocation: WideString): OleVariant; dispid 214;
    function GetFirstMessage: OleVariant; dispid 220;
    function GetNextMessage: OleVariant; dispid 221;
    function CountReceivedMessages: Integer; dispid 223;
    function GetMessage(lIndex: Integer): OleVariant; dispid 224;
  end;

// *********************************************************************//
// Interface: IMmsSlide
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C97CA114-C43B-49D9-B077-41F7299C1A11}
// *********************************************************************//
  IMmsSlide = interface(IDispatch)
    ['{C97CA114-C43B-49D9-B077-41F7299C1A11}']
    function Get_LastError: Integer; safecall;
    function Get_Version: WideString; safecall;
    function Get_Build: WideString; safecall;
    function Get_ExpirationDate: WideString; safecall;
    procedure Set_Reserved(Param1: Integer); safecall;
    procedure Set_DistributionID(const Param1: WideString); safecall;
    procedure Set_DistributionKey(const Param1: WideString); safecall;
    function Get_Module: WideString; safecall;
    procedure Clear; safecall;
    function GetErrorDescription(newVal: Integer): WideString; safecall;
    procedure Activate(const newVal: WideString; bPersistent: Integer); safecall;
    function Get_ID: Integer; safecall;
    function Get_Duration: Integer; safecall;
    procedure Set_Duration(pVal: Integer); safecall;
    function Get_sysClone: Integer; safecall;
    procedure AddText(const bstrText: WideString); safecall;
    procedure AddAttachment(const newVal: WideString; var pVal: OleVariant); safecall;
    procedure AddAttachmentData(const FileName: WideString; var Data: OleVariant); safecall;
    function CountAttachments: Integer; safecall;
    function GetAttachmentName(lIndex: Integer): WideString; safecall;
    procedure SaveAttachment(lIndex: Integer; const bstrFileName: WideString); safecall;
    function GetTextCount: Integer; safecall;
    function GetText(lIndex: Integer): WideString; safecall;
    property LastError: Integer read Get_LastError;
    property Version: WideString read Get_Version;
    property Build: WideString read Get_Build;
    property ExpirationDate: WideString read Get_ExpirationDate;
    property Reserved: Integer write Set_Reserved;
    property DistributionID: WideString write Set_DistributionID;
    property DistributionKey: WideString write Set_DistributionKey;
    property Module: WideString read Get_Module;
    property ID: Integer read Get_ID;
    property Duration: Integer read Get_Duration write Set_Duration;
    property sysClone: Integer read Get_sysClone;
  end;

// *********************************************************************//
// DispIntf:  IMmsSlideDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C97CA114-C43B-49D9-B077-41F7299C1A11}
// *********************************************************************//
  IMmsSlideDisp = dispinterface
    ['{C97CA114-C43B-49D9-B077-41F7299C1A11}']
    property LastError: Integer readonly dispid 1;
    property Version: WideString readonly dispid 2;
    property Build: WideString readonly dispid 3;
    property ExpirationDate: WideString readonly dispid 4;
    property Reserved: Integer writeonly dispid 5;
    property DistributionID: WideString writeonly dispid 8;
    property DistributionKey: WideString writeonly dispid 9;
    property Module: WideString readonly dispid 10;
    procedure Clear; dispid 20;
    function GetErrorDescription(newVal: Integer): WideString; dispid 21;
    procedure Activate(const newVal: WideString; bPersistent: Integer); dispid 22;
    property ID: Integer readonly dispid 101;
    property Duration: Integer dispid 102;
    property sysClone: Integer readonly dispid 103;
    procedure AddText(const bstrText: WideString); dispid 201;
    procedure AddAttachment(const newVal: WideString; var pVal: OleVariant); dispid 202;
    procedure AddAttachmentData(const FileName: WideString; var Data: OleVariant); dispid 203;
    function CountAttachments: Integer; dispid 206;
    function GetAttachmentName(lIndex: Integer): WideString; dispid 207;
    procedure SaveAttachment(lIndex: Integer; const bstrFileName: WideString); dispid 208;
    function GetTextCount: Integer; dispid 209;
    function GetText(lIndex: Integer): WideString; dispid 210;
  end;

// *********************************************************************//
// Interface: IMmsConstants
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B85A2092-FE47-452A-AFC8-8F12C5BDCDE3}
// *********************************************************************//
  IMmsConstants = interface(IDispatch)
    ['{B85A2092-FE47-452A-AFC8-8F12C5BDCDE3}']
    function Get_asMMS_CLASS_PERSONAL: Integer; safecall;
    function Get_asMMS_CLASS_ADVERTISEMENT: Integer; safecall;
    function Get_asMMS_CLASS_INFORMATIONAL: Integer; safecall;
    function Get_asMMS_CLASS_AUTO: Integer; safecall;
    function Get_asMMS_PRIORITY_LOW: Integer; safecall;
    function Get_asMMS_PRIORITY_NORMAL: Integer; safecall;
    function Get_asMMS_PRIORITY_HIGH: Integer; safecall;
    function Get_asMMS_DRM_FORWARDLOCK: Integer; safecall;
    function Get_asMMS_DRM_PLAY: Integer; safecall;
    function Get_asMMS_DRM_DISPLAY: Integer; safecall;
    function Get_asMMS_DRM_EXECUTE: Integer; safecall;
    function Get_asMMS_DRM_PRINT: Integer; safecall;
    function Get_asMMS_MM7VARIATION_3GPP: Integer; safecall;
    function Get_asMMS_MM7VARIATION_ERICSSON: Integer; safecall;
    function Get_asMMS_MM7VARIATION_PAP: Integer; safecall;
    function Get_asMMS_PROTOCOL_MM1: Integer; safecall;
    function Get_asMMS_PROTOCOL_MM4: Integer; safecall;
    function Get_asMMS_PROTOCOL_MM7: Integer; safecall;
    function Get_asMMS_VERSION_5_2_0: Integer; safecall;
    function Get_asMMS_VERSION_5_3_0: Integer; safecall;
    function Get_asMMS_VERSION_5_4_0: Integer; safecall;
    function Get_asMMS_VERSION_5_5_0: Integer; safecall;
    function Get_asMMS_VERSION_5_6_0: Integer; safecall;
    function Get_asMMS_VERSION_5_7_0: Integer; safecall;
    function Get_asMMS_VERSION_5_8_0: Integer; safecall;
    function Get_asMMS_VERSION_5_9_0: Integer; safecall;
    function Get_asMMS_VERSION_5_10_0: Integer; safecall;
    function Get_asMMS_VERSION_5_11_0: Integer; safecall;
    function Get_asMMS_VERSION_6_0_0: Integer; safecall;
    function Get_asMMS_VERSION_6_1_0: Integer; safecall;
    function Get_asMMS_VERSION_6_2_0: Integer; safecall;
    function Get_asMMS_VERSION_6_3_0: Integer; safecall;
    function Get_asMMS_VERSION_6_4_0: Integer; safecall;
    function Get_asMMS_VERSION_6_5_0: Integer; safecall;
    function Get_asMMS_VERSION_6_6_0: Integer; safecall;
    function Get_asMMS_VERSION_6_7_0: Integer; safecall;
    function Get_asMMS_SCHEMA_REL5_MM7_1_0: Integer; safecall;
    function Get_asMMS_SCHEMA_REL5_MM7_1_1: Integer; safecall;
    function Get_asMMS_SCHEMA_REL5_MM7_1_2: Integer; safecall;
    function Get_asMMS_SCHEMA_REL5_MM7_1_3: Integer; safecall;
    function Get_asMMS_SCHEMA_REL5_MM7_1_4: Integer; safecall;
    function Get_asMMS_SCHEMA_REL5_MM7_1_5: Integer; safecall;
    function Get_asMMS_SCHEMA_REL6_MM7_1_0: Integer; safecall;
    function Get_asMMS_SCHEMA_REL6_MM7_1_1: Integer; safecall;
    function Get_asMMS_SCHEMA_REL6_MM7_1_2: Integer; safecall;
    function Get_asMMS_SCHEMA_REL6_MM7_1_3: Integer; safecall;
    function Get_asMMS_MM1FILE_MSENDREQ: Integer; safecall;
    function Get_asMMS_MM1FILE_MRETRIEVECONF: Integer; safecall;
    function Get_asMMS_RECIPIENT_TO: Integer; safecall;
    function Get_asMMS_RECIPIENT_CC: Integer; safecall;
    function Get_asMMS_RECIPIENT_BCC: Integer; safecall;
    function Get_asMMS_VERSION_6_8_0: Integer; safecall;
    function Get_asMMS_SCHEMA_REL6_MM7_1_4: Integer; safecall;
    property asMMS_CLASS_PERSONAL: Integer read Get_asMMS_CLASS_PERSONAL;
    property asMMS_CLASS_ADVERTISEMENT: Integer read Get_asMMS_CLASS_ADVERTISEMENT;
    property asMMS_CLASS_INFORMATIONAL: Integer read Get_asMMS_CLASS_INFORMATIONAL;
    property asMMS_CLASS_AUTO: Integer read Get_asMMS_CLASS_AUTO;
    property asMMS_PRIORITY_LOW: Integer read Get_asMMS_PRIORITY_LOW;
    property asMMS_PRIORITY_NORMAL: Integer read Get_asMMS_PRIORITY_NORMAL;
    property asMMS_PRIORITY_HIGH: Integer read Get_asMMS_PRIORITY_HIGH;
    property asMMS_DRM_FORWARDLOCK: Integer read Get_asMMS_DRM_FORWARDLOCK;
    property asMMS_DRM_PLAY: Integer read Get_asMMS_DRM_PLAY;
    property asMMS_DRM_DISPLAY: Integer read Get_asMMS_DRM_DISPLAY;
    property asMMS_DRM_EXECUTE: Integer read Get_asMMS_DRM_EXECUTE;
    property asMMS_DRM_PRINT: Integer read Get_asMMS_DRM_PRINT;
    property asMMS_MM7VARIATION_3GPP: Integer read Get_asMMS_MM7VARIATION_3GPP;
    property asMMS_MM7VARIATION_ERICSSON: Integer read Get_asMMS_MM7VARIATION_ERICSSON;
    property asMMS_MM7VARIATION_PAP: Integer read Get_asMMS_MM7VARIATION_PAP;
    property asMMS_PROTOCOL_MM1: Integer read Get_asMMS_PROTOCOL_MM1;
    property asMMS_PROTOCOL_MM4: Integer read Get_asMMS_PROTOCOL_MM4;
    property asMMS_PROTOCOL_MM7: Integer read Get_asMMS_PROTOCOL_MM7;
    property asMMS_VERSION_5_2_0: Integer read Get_asMMS_VERSION_5_2_0;
    property asMMS_VERSION_5_3_0: Integer read Get_asMMS_VERSION_5_3_0;
    property asMMS_VERSION_5_4_0: Integer read Get_asMMS_VERSION_5_4_0;
    property asMMS_VERSION_5_5_0: Integer read Get_asMMS_VERSION_5_5_0;
    property asMMS_VERSION_5_6_0: Integer read Get_asMMS_VERSION_5_6_0;
    property asMMS_VERSION_5_7_0: Integer read Get_asMMS_VERSION_5_7_0;
    property asMMS_VERSION_5_8_0: Integer read Get_asMMS_VERSION_5_8_0;
    property asMMS_VERSION_5_9_0: Integer read Get_asMMS_VERSION_5_9_0;
    property asMMS_VERSION_5_10_0: Integer read Get_asMMS_VERSION_5_10_0;
    property asMMS_VERSION_5_11_0: Integer read Get_asMMS_VERSION_5_11_0;
    property asMMS_VERSION_6_0_0: Integer read Get_asMMS_VERSION_6_0_0;
    property asMMS_VERSION_6_1_0: Integer read Get_asMMS_VERSION_6_1_0;
    property asMMS_VERSION_6_2_0: Integer read Get_asMMS_VERSION_6_2_0;
    property asMMS_VERSION_6_3_0: Integer read Get_asMMS_VERSION_6_3_0;
    property asMMS_VERSION_6_4_0: Integer read Get_asMMS_VERSION_6_4_0;
    property asMMS_VERSION_6_5_0: Integer read Get_asMMS_VERSION_6_5_0;
    property asMMS_VERSION_6_6_0: Integer read Get_asMMS_VERSION_6_6_0;
    property asMMS_VERSION_6_7_0: Integer read Get_asMMS_VERSION_6_7_0;
    property asMMS_SCHEMA_REL5_MM7_1_0: Integer read Get_asMMS_SCHEMA_REL5_MM7_1_0;
    property asMMS_SCHEMA_REL5_MM7_1_1: Integer read Get_asMMS_SCHEMA_REL5_MM7_1_1;
    property asMMS_SCHEMA_REL5_MM7_1_2: Integer read Get_asMMS_SCHEMA_REL5_MM7_1_2;
    property asMMS_SCHEMA_REL5_MM7_1_3: Integer read Get_asMMS_SCHEMA_REL5_MM7_1_3;
    property asMMS_SCHEMA_REL5_MM7_1_4: Integer read Get_asMMS_SCHEMA_REL5_MM7_1_4;
    property asMMS_SCHEMA_REL5_MM7_1_5: Integer read Get_asMMS_SCHEMA_REL5_MM7_1_5;
    property asMMS_SCHEMA_REL6_MM7_1_0: Integer read Get_asMMS_SCHEMA_REL6_MM7_1_0;
    property asMMS_SCHEMA_REL6_MM7_1_1: Integer read Get_asMMS_SCHEMA_REL6_MM7_1_1;
    property asMMS_SCHEMA_REL6_MM7_1_2: Integer read Get_asMMS_SCHEMA_REL6_MM7_1_2;
    property asMMS_SCHEMA_REL6_MM7_1_3: Integer read Get_asMMS_SCHEMA_REL6_MM7_1_3;
    property asMMS_MM1FILE_MSENDREQ: Integer read Get_asMMS_MM1FILE_MSENDREQ;
    property asMMS_MM1FILE_MRETRIEVECONF: Integer read Get_asMMS_MM1FILE_MRETRIEVECONF;
    property asMMS_RECIPIENT_TO: Integer read Get_asMMS_RECIPIENT_TO;
    property asMMS_RECIPIENT_CC: Integer read Get_asMMS_RECIPIENT_CC;
    property asMMS_RECIPIENT_BCC: Integer read Get_asMMS_RECIPIENT_BCC;
    property asMMS_VERSION_6_8_0: Integer read Get_asMMS_VERSION_6_8_0;
    property asMMS_SCHEMA_REL6_MM7_1_4: Integer read Get_asMMS_SCHEMA_REL6_MM7_1_4;
  end;

// *********************************************************************//
// DispIntf:  IMmsConstantsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B85A2092-FE47-452A-AFC8-8F12C5BDCDE3}
// *********************************************************************//
  IMmsConstantsDisp = dispinterface
    ['{B85A2092-FE47-452A-AFC8-8F12C5BDCDE3}']
    property asMMS_CLASS_PERSONAL: Integer readonly dispid 301;
    property asMMS_CLASS_ADVERTISEMENT: Integer readonly dispid 302;
    property asMMS_CLASS_INFORMATIONAL: Integer readonly dispid 303;
    property asMMS_CLASS_AUTO: Integer readonly dispid 304;
    property asMMS_PRIORITY_LOW: Integer readonly dispid 311;
    property asMMS_PRIORITY_NORMAL: Integer readonly dispid 312;
    property asMMS_PRIORITY_HIGH: Integer readonly dispid 313;
    property asMMS_DRM_FORWARDLOCK: Integer readonly dispid 321;
    property asMMS_DRM_PLAY: Integer readonly dispid 322;
    property asMMS_DRM_DISPLAY: Integer readonly dispid 323;
    property asMMS_DRM_EXECUTE: Integer readonly dispid 324;
    property asMMS_DRM_PRINT: Integer readonly dispid 325;
    property asMMS_MM7VARIATION_3GPP: Integer readonly dispid 331;
    property asMMS_MM7VARIATION_ERICSSON: Integer readonly dispid 332;
    property asMMS_MM7VARIATION_PAP: Integer readonly dispid 333;
    property asMMS_PROTOCOL_MM1: Integer readonly dispid 341;
    property asMMS_PROTOCOL_MM4: Integer readonly dispid 342;
    property asMMS_PROTOCOL_MM7: Integer readonly dispid 343;
    property asMMS_VERSION_5_2_0: Integer readonly dispid 351;
    property asMMS_VERSION_5_3_0: Integer readonly dispid 352;
    property asMMS_VERSION_5_4_0: Integer readonly dispid 353;
    property asMMS_VERSION_5_5_0: Integer readonly dispid 354;
    property asMMS_VERSION_5_6_0: Integer readonly dispid 355;
    property asMMS_VERSION_5_7_0: Integer readonly dispid 356;
    property asMMS_VERSION_5_8_0: Integer readonly dispid 357;
    property asMMS_VERSION_5_9_0: Integer readonly dispid 358;
    property asMMS_VERSION_5_10_0: Integer readonly dispid 359;
    property asMMS_VERSION_5_11_0: Integer readonly dispid 360;
    property asMMS_VERSION_6_0_0: Integer readonly dispid 361;
    property asMMS_VERSION_6_1_0: Integer readonly dispid 362;
    property asMMS_VERSION_6_2_0: Integer readonly dispid 363;
    property asMMS_VERSION_6_3_0: Integer readonly dispid 364;
    property asMMS_VERSION_6_4_0: Integer readonly dispid 365;
    property asMMS_VERSION_6_5_0: Integer readonly dispid 366;
    property asMMS_VERSION_6_6_0: Integer readonly dispid 367;
    property asMMS_VERSION_6_7_0: Integer readonly dispid 368;
    property asMMS_SCHEMA_REL5_MM7_1_0: Integer readonly dispid 371;
    property asMMS_SCHEMA_REL5_MM7_1_1: Integer readonly dispid 372;
    property asMMS_SCHEMA_REL5_MM7_1_2: Integer readonly dispid 373;
    property asMMS_SCHEMA_REL5_MM7_1_3: Integer readonly dispid 374;
    property asMMS_SCHEMA_REL5_MM7_1_4: Integer readonly dispid 375;
    property asMMS_SCHEMA_REL5_MM7_1_5: Integer readonly dispid 376;
    property asMMS_SCHEMA_REL6_MM7_1_0: Integer readonly dispid 377;
    property asMMS_SCHEMA_REL6_MM7_1_1: Integer readonly dispid 378;
    property asMMS_SCHEMA_REL6_MM7_1_2: Integer readonly dispid 379;
    property asMMS_SCHEMA_REL6_MM7_1_3: Integer readonly dispid 380;
    property asMMS_MM1FILE_MSENDREQ: Integer readonly dispid 391;
    property asMMS_MM1FILE_MRETRIEVECONF: Integer readonly dispid 392;
    property asMMS_RECIPIENT_TO: Integer readonly dispid 401;
    property asMMS_RECIPIENT_CC: Integer readonly dispid 402;
    property asMMS_RECIPIENT_BCC: Integer readonly dispid 403;
    property asMMS_VERSION_6_8_0: Integer readonly dispid 404;
    property asMMS_SCHEMA_REL6_MM7_1_4: Integer readonly dispid 405;
  end;

// *********************************************************************//
// Interface: IMmsPermission
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8FABC032-B5CD-4405-85E5-98A8DDEBFC3F}
// *********************************************************************//
  IMmsPermission = interface(IDispatch)
    ['{8FABC032-B5CD-4405-85E5-98A8DDEBFC3F}']
    procedure Clear; safecall;
    function Get_Operation: Integer; safecall;
    procedure Set_Operation(pVal: Integer); safecall;
    function Get_Times: Integer; safecall;
    procedure Set_Times(pVal: Integer); safecall;
    function Get_Days: Integer; safecall;
    procedure Set_Days(pVal: Integer); safecall;
    function Get_BeginDate: WideString; safecall;
    procedure Set_BeginDate(const pVal: WideString); safecall;
    function Get_EndDate: WideString; safecall;
    procedure Set_EndDate(const pVal: WideString); safecall;
    property Operation: Integer read Get_Operation write Set_Operation;
    property Times: Integer read Get_Times write Set_Times;
    property Days: Integer read Get_Days write Set_Days;
    property BeginDate: WideString read Get_BeginDate write Set_BeginDate;
    property EndDate: WideString read Get_EndDate write Set_EndDate;
  end;

// *********************************************************************//
// DispIntf:  IMmsPermissionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8FABC032-B5CD-4405-85E5-98A8DDEBFC3F}
// *********************************************************************//
  IMmsPermissionDisp = dispinterface
    ['{8FABC032-B5CD-4405-85E5-98A8DDEBFC3F}']
    procedure Clear; dispid 20;
    property Operation: Integer dispid 101;
    property Times: Integer dispid 102;
    property Days: Integer dispid 103;
    property BeginDate: WideString dispid 104;
    property EndDate: WideString dispid 105;
  end;

// *********************************************************************//
// Interface: IMmsProtocolMm4
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A233DA9D-E345-4909-9D95-DB9ACDEF7D21}
// *********************************************************************//
  IMmsProtocolMm4 = interface(IDispatch)
    ['{A233DA9D-E345-4909-9D95-DB9ACDEF7D21}']
    function Get_LastError: Integer; safecall;
    function Get_Version: WideString; safecall;
    function Get_Build: WideString; safecall;
    function Get_ExpirationDate: WideString; safecall;
    procedure Set_Reserved(Param1: Integer); safecall;
    function Get_LogFile: WideString; safecall;
    procedure Set_LogFile(const pVal: WideString); safecall;
    function Get_ActivityFile: WideString; safecall;
    procedure Set_ActivityFile(const pVal: WideString); safecall;
    procedure Set_DistributionID(const Param1: WideString); safecall;
    procedure Set_DistributionKey(const Param1: WideString); safecall;
    function Get_Module: WideString; safecall;
    procedure Clear; safecall;
    function GetErrorDescription(newVal: Integer): WideString; safecall;
    procedure Activate(const newVal: WideString; bPersistent: Integer); safecall;
    function Get_ProviderHost: WideString; safecall;
    procedure Set_ProviderHost(const pVal: WideString); safecall;
    function Get_ProviderPort: Integer; safecall;
    procedure Set_ProviderPort(pVal: Integer); safecall;
    function Get_ProviderAccount: WideString; safecall;
    procedure Set_ProviderAccount(const pVal: WideString); safecall;
    function Get_ProviderPassword: WideString; safecall;
    procedure Set_ProviderPassword(const pVal: WideString); safecall;
    function Get_ProviderDomain: WideString; safecall;
    procedure Set_ProviderDomain(const pVal: WideString); safecall;
    function Get_ProviderMM4Format: Integer; safecall;
    procedure Set_ProviderMM4Format(pVal: Integer); safecall;
    function Get_ProviderMM4Version: Integer; safecall;
    procedure Set_ProviderMM4Version(pVal: Integer); safecall;
    function Get_AdvancedSettings: WideString; safecall;
    procedure Set_AdvancedSettings(const pVal: WideString); safecall;
    function Get_ProviderMessageSizeLimit: Integer; safecall;
    procedure Set_ProviderMessageSizeLimit(pVal: Integer); safecall;
    function Get_ProviderResponse: WideString; safecall;
    procedure Send(var pVal: OleVariant); safecall;
    procedure ProviderLoadConfig(const bstrConfigFile: WideString); safecall;
    procedure ProviderSaveConfig(const bstrConfigFile: WideString); safecall;
    property LastError: Integer read Get_LastError;
    property Version: WideString read Get_Version;
    property Build: WideString read Get_Build;
    property ExpirationDate: WideString read Get_ExpirationDate;
    property Reserved: Integer write Set_Reserved;
    property LogFile: WideString read Get_LogFile write Set_LogFile;
    property ActivityFile: WideString read Get_ActivityFile write Set_ActivityFile;
    property DistributionID: WideString write Set_DistributionID;
    property DistributionKey: WideString write Set_DistributionKey;
    property Module: WideString read Get_Module;
    property ProviderHost: WideString read Get_ProviderHost write Set_ProviderHost;
    property ProviderPort: Integer read Get_ProviderPort write Set_ProviderPort;
    property ProviderAccount: WideString read Get_ProviderAccount write Set_ProviderAccount;
    property ProviderPassword: WideString read Get_ProviderPassword write Set_ProviderPassword;
    property ProviderDomain: WideString read Get_ProviderDomain write Set_ProviderDomain;
    property ProviderMM4Format: Integer read Get_ProviderMM4Format write Set_ProviderMM4Format;
    property ProviderMM4Version: Integer read Get_ProviderMM4Version write Set_ProviderMM4Version;
    property AdvancedSettings: WideString read Get_AdvancedSettings write Set_AdvancedSettings;
    property ProviderMessageSizeLimit: Integer read Get_ProviderMessageSizeLimit write Set_ProviderMessageSizeLimit;
    property ProviderResponse: WideString read Get_ProviderResponse;
  end;

// *********************************************************************//
// DispIntf:  IMmsProtocolMm4Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A233DA9D-E345-4909-9D95-DB9ACDEF7D21}
// *********************************************************************//
  IMmsProtocolMm4Disp = dispinterface
    ['{A233DA9D-E345-4909-9D95-DB9ACDEF7D21}']
    property LastError: Integer readonly dispid 1;
    property Version: WideString readonly dispid 2;
    property Build: WideString readonly dispid 3;
    property ExpirationDate: WideString readonly dispid 4;
    property Reserved: Integer writeonly dispid 5;
    property LogFile: WideString dispid 6;
    property ActivityFile: WideString dispid 7;
    property DistributionID: WideString writeonly dispid 8;
    property DistributionKey: WideString writeonly dispid 9;
    property Module: WideString readonly dispid 10;
    procedure Clear; dispid 20;
    function GetErrorDescription(newVal: Integer): WideString; dispid 21;
    procedure Activate(const newVal: WideString; bPersistent: Integer); dispid 22;
    property ProviderHost: WideString dispid 101;
    property ProviderPort: Integer dispid 102;
    property ProviderAccount: WideString dispid 103;
    property ProviderPassword: WideString dispid 104;
    property ProviderDomain: WideString dispid 105;
    property ProviderMM4Format: Integer dispid 110;
    property ProviderMM4Version: Integer dispid 111;
    property AdvancedSettings: WideString dispid 112;
    property ProviderMessageSizeLimit: Integer dispid 113;
    property ProviderResponse: WideString readonly dispid 115;
    procedure Send(var pVal: OleVariant); dispid 202;
    procedure ProviderLoadConfig(const bstrConfigFile: WideString); dispid 207;
    procedure ProviderSaveConfig(const bstrConfigFile: WideString); dispid 208;
  end;

// *********************************************************************//
// Interface: IMmsProtocolMm7
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EA67C0B2-CB9F-4D3F-B50F-A7CE1CEF346A}
// *********************************************************************//
  IMmsProtocolMm7 = interface(IDispatch)
    ['{EA67C0B2-CB9F-4D3F-B50F-A7CE1CEF346A}']
    function Get_LastError: Integer; safecall;
    function Get_Version: WideString; safecall;
    function Get_Build: WideString; safecall;
    function Get_ExpirationDate: WideString; safecall;
    procedure Set_Reserved(Param1: Integer); safecall;
    function Get_LogFile: WideString; safecall;
    procedure Set_LogFile(const pVal: WideString); safecall;
    function Get_ActivityFile: WideString; safecall;
    procedure Set_ActivityFile(const pVal: WideString); safecall;
    procedure Set_DistributionID(const Param1: WideString); safecall;
    procedure Set_DistributionKey(const Param1: WideString); safecall;
    function Get_Module: WideString; safecall;
    procedure Clear; safecall;
    function GetErrorDescription(newVal: Integer): WideString; safecall;
    procedure Activate(const newVal: WideString; bPersistent: Integer); safecall;
    function Get_ProviderURL: WideString; safecall;
    procedure Set_ProviderURL(const pVal: WideString); safecall;
    function Get_ProviderWebAccount: WideString; safecall;
    procedure Set_ProviderWebAccount(const pVal: WideString); safecall;
    function Get_ProviderWebPassword: WideString; safecall;
    procedure Set_ProviderWebPassword(const pVal: WideString); safecall;
    function Get_ProxyServer: WideString; safecall;
    procedure Set_ProxyServer(const pVal: WideString); safecall;
    function Get_ProxyAccount: WideString; safecall;
    procedure Set_ProxyAccount(const pVal: WideString); safecall;
    function Get_ProxyPassword: WideString; safecall;
    procedure Set_ProxyPassword(const pVal: WideString); safecall;
    function Get_ProviderResponse: WideString; safecall;
    function Get_MessageId: WideString; safecall;
    function Get_ProviderUseSSL: Integer; safecall;
    procedure Set_ProviderUseSSL(pVal: Integer); safecall;
    function Get_ProviderVASID: WideString; safecall;
    procedure Set_ProviderVASID(const pVal: WideString); safecall;
    function Get_ProviderVASPID: WideString; safecall;
    procedure Set_ProviderVASPID(const pVal: WideString); safecall;
    function Get_ProviderServiceCode: WideString; safecall;
    procedure Set_ProviderServiceCode(const pVal: WideString); safecall;
    function Get_ProviderMM7Version: Integer; safecall;
    procedure Set_ProviderMM7Version(pVal: Integer); safecall;
    function Get_ProviderMM7Schema: Integer; safecall;
    procedure Set_ProviderMM7Schema(pVal: Integer); safecall;
    function Get_ProvidersFolder: WideString; safecall;
    function Get_ProviderMM7Variation: Integer; safecall;
    procedure Set_ProviderMM7Variation(pVal: Integer); safecall;
    function Get_ProviderMessageSizeLimit: Integer; safecall;
    procedure Set_ProviderMessageSizeLimit(pVal: Integer); safecall;
    function Get_AdvancedSettings: WideString; safecall;
    procedure Set_AdvancedSettings(const pVal: WideString); safecall;
    procedure Send(var pVal: OleVariant); safecall;
    procedure ProviderLoadConfig(const bstrFile: WideString); safecall;
    procedure ProviderSaveConfig(const bstrFile: WideString); safecall;
    property LastError: Integer read Get_LastError;
    property Version: WideString read Get_Version;
    property Build: WideString read Get_Build;
    property ExpirationDate: WideString read Get_ExpirationDate;
    property Reserved: Integer write Set_Reserved;
    property LogFile: WideString read Get_LogFile write Set_LogFile;
    property ActivityFile: WideString read Get_ActivityFile write Set_ActivityFile;
    property DistributionID: WideString write Set_DistributionID;
    property DistributionKey: WideString write Set_DistributionKey;
    property Module: WideString read Get_Module;
    property ProviderURL: WideString read Get_ProviderURL write Set_ProviderURL;
    property ProviderWebAccount: WideString read Get_ProviderWebAccount write Set_ProviderWebAccount;
    property ProviderWebPassword: WideString read Get_ProviderWebPassword write Set_ProviderWebPassword;
    property ProxyServer: WideString read Get_ProxyServer write Set_ProxyServer;
    property ProxyAccount: WideString read Get_ProxyAccount write Set_ProxyAccount;
    property ProxyPassword: WideString read Get_ProxyPassword write Set_ProxyPassword;
    property ProviderResponse: WideString read Get_ProviderResponse;
    property MessageId: WideString read Get_MessageId;
    property ProviderUseSSL: Integer read Get_ProviderUseSSL write Set_ProviderUseSSL;
    property ProviderVASID: WideString read Get_ProviderVASID write Set_ProviderVASID;
    property ProviderVASPID: WideString read Get_ProviderVASPID write Set_ProviderVASPID;
    property ProviderServiceCode: WideString read Get_ProviderServiceCode write Set_ProviderServiceCode;
    property ProviderMM7Version: Integer read Get_ProviderMM7Version write Set_ProviderMM7Version;
    property ProviderMM7Schema: Integer read Get_ProviderMM7Schema write Set_ProviderMM7Schema;
    property ProvidersFolder: WideString read Get_ProvidersFolder;
    property ProviderMM7Variation: Integer read Get_ProviderMM7Variation write Set_ProviderMM7Variation;
    property ProviderMessageSizeLimit: Integer read Get_ProviderMessageSizeLimit write Set_ProviderMessageSizeLimit;
    property AdvancedSettings: WideString read Get_AdvancedSettings write Set_AdvancedSettings;
  end;

// *********************************************************************//
// DispIntf:  IMmsProtocolMm7Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EA67C0B2-CB9F-4D3F-B50F-A7CE1CEF346A}
// *********************************************************************//
  IMmsProtocolMm7Disp = dispinterface
    ['{EA67C0B2-CB9F-4D3F-B50F-A7CE1CEF346A}']
    property LastError: Integer readonly dispid 1;
    property Version: WideString readonly dispid 2;
    property Build: WideString readonly dispid 3;
    property ExpirationDate: WideString readonly dispid 4;
    property Reserved: Integer writeonly dispid 5;
    property LogFile: WideString dispid 6;
    property ActivityFile: WideString dispid 7;
    property DistributionID: WideString writeonly dispid 8;
    property DistributionKey: WideString writeonly dispid 9;
    property Module: WideString readonly dispid 10;
    procedure Clear; dispid 20;
    function GetErrorDescription(newVal: Integer): WideString; dispid 21;
    procedure Activate(const newVal: WideString; bPersistent: Integer); dispid 22;
    property ProviderURL: WideString dispid 101;
    property ProviderWebAccount: WideString dispid 103;
    property ProviderWebPassword: WideString dispid 104;
    property ProxyServer: WideString dispid 105;
    property ProxyAccount: WideString dispid 107;
    property ProxyPassword: WideString dispid 108;
    property ProviderResponse: WideString readonly dispid 118;
    property MessageId: WideString readonly dispid 119;
    property ProviderUseSSL: Integer dispid 120;
    property ProviderVASID: WideString dispid 121;
    property ProviderVASPID: WideString dispid 122;
    property ProviderServiceCode: WideString dispid 123;
    property ProviderMM7Version: Integer dispid 124;
    property ProviderMM7Schema: Integer dispid 125;
    property ProvidersFolder: WideString readonly dispid 128;
    property ProviderMM7Variation: Integer dispid 129;
    property ProviderMessageSizeLimit: Integer dispid 130;
    property AdvancedSettings: WideString dispid 134;
    procedure Send(var pVal: OleVariant); dispid 201;
    procedure ProviderLoadConfig(const bstrFile: WideString); dispid 206;
    procedure ProviderSaveConfig(const bstrFile: WideString); dispid 207;
  end;

// *********************************************************************//
// Interface: IMmsMessage
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BEBE8D74-8123-4D0C-A710-997AF5666166}
// *********************************************************************//
  IMmsMessage = interface(IDispatch)
    ['{BEBE8D74-8123-4D0C-A710-997AF5666166}']
    function Get_LastError: Integer; safecall;
    function Get_Version: WideString; safecall;
    function Get_Build: WideString; safecall;
    function Get_ExpirationDate: WideString; safecall;
    procedure Set_Reserved(Param1: Integer); safecall;
    procedure Set_DistributionID(const Param1: WideString); safecall;
    procedure Set_DistributionKey(const Param1: WideString); safecall;
    function Get_Module: WideString; safecall;
    procedure Clear; safecall;
    function GetErrorDescription(newVal: Integer): WideString; safecall;
    procedure Activate(const newVal: WideString; bPersistent: Integer); safecall;
    function Get_From: WideString; safecall;
    procedure Set_From(const pVal: WideString); safecall;
    function Get_Class_: Integer; safecall;
    procedure Set_Class_(pVal: Integer); safecall;
    function Get_Priority: Integer; safecall;
    procedure Set_Priority(pVal: Integer); safecall;
    function Get_Subject: WideString; safecall;
    procedure Set_Subject(const pVal: WideString); safecall;
    function Get_EncodedMessage: WideString; safecall;
    procedure Set_EncodedMessage(const pVal: WideString); safecall;
    function Get_RequestReadReceipt: Integer; safecall;
    procedure Set_RequestReadReceipt(pVal: Integer); safecall;
    function Get_RequestDeliveryReport: Integer; safecall;
    procedure Set_RequestDeliveryReport(pVal: Integer); safecall;
    function Get_Protocol: Integer; safecall;
    procedure Set_Protocol(pVal: Integer); safecall;
    function Get_TransactionId: WideString; safecall;
    procedure Set_TransactionId(const pVal: WideString); safecall;
    function Get_ValidityPeriod: Integer; safecall;
    procedure Set_ValidityPeriod(pVal: Integer); safecall;
    function Get_sysBoundary: WideString; safecall;
    procedure Set_sysSettings(Param1: Integer); safecall;
    procedure SaveToFile(const bstrFolder: WideString; lFormat: Integer); safecall;
    procedure EncodeMessage; safecall;
    procedure DecodeMessage; safecall;
    procedure AddRecipient(const bstrRecipient: WideString; lType: Integer); safecall;
    procedure AddSlide(var pVal: OleVariant); safecall;
    procedure LoadFromFile(const bstrFile: WideString); safecall;
    function GetFirstSlide: OleVariant; safecall;
    function GetNextSlide: OleVariant; safecall;
    function GetFirstRecipient(lType: Integer): WideString; safecall;
    function GetNextRecipient(lType: Integer): WideString; safecall;
    procedure ClearRecipients; safecall;
    procedure LoadCustomSMIL(const bstrFile: WideString); safecall;
    property LastError: Integer read Get_LastError;
    property Version: WideString read Get_Version;
    property Build: WideString read Get_Build;
    property ExpirationDate: WideString read Get_ExpirationDate;
    property Reserved: Integer write Set_Reserved;
    property DistributionID: WideString write Set_DistributionID;
    property DistributionKey: WideString write Set_DistributionKey;
    property Module: WideString read Get_Module;
    property From: WideString read Get_From write Set_From;
    property Class_: Integer read Get_Class_ write Set_Class_;
    property Priority: Integer read Get_Priority write Set_Priority;
    property Subject: WideString read Get_Subject write Set_Subject;
    property EncodedMessage: WideString read Get_EncodedMessage write Set_EncodedMessage;
    property RequestReadReceipt: Integer read Get_RequestReadReceipt write Set_RequestReadReceipt;
    property RequestDeliveryReport: Integer read Get_RequestDeliveryReport write Set_RequestDeliveryReport;
    property Protocol: Integer read Get_Protocol write Set_Protocol;
    property TransactionId: WideString read Get_TransactionId write Set_TransactionId;
    property ValidityPeriod: Integer read Get_ValidityPeriod write Set_ValidityPeriod;
    property sysBoundary: WideString read Get_sysBoundary;
    property sysSettings: Integer write Set_sysSettings;
  end;

// *********************************************************************//
// DispIntf:  IMmsMessageDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BEBE8D74-8123-4D0C-A710-997AF5666166}
// *********************************************************************//
  IMmsMessageDisp = dispinterface
    ['{BEBE8D74-8123-4D0C-A710-997AF5666166}']
    property LastError: Integer readonly dispid 1;
    property Version: WideString readonly dispid 2;
    property Build: WideString readonly dispid 3;
    property ExpirationDate: WideString readonly dispid 4;
    property Reserved: Integer writeonly dispid 5;
    property DistributionID: WideString writeonly dispid 8;
    property DistributionKey: WideString writeonly dispid 9;
    property Module: WideString readonly dispid 10;
    procedure Clear; dispid 20;
    function GetErrorDescription(newVal: Integer): WideString; dispid 21;
    procedure Activate(const newVal: WideString; bPersistent: Integer); dispid 22;
    property From: WideString dispid 101;
    property Class_: Integer dispid 102;
    property Priority: Integer dispid 103;
    property Subject: WideString dispid 104;
    property EncodedMessage: WideString dispid 105;
    property RequestReadReceipt: Integer dispid 106;
    property RequestDeliveryReport: Integer dispid 107;
    property Protocol: Integer dispid 108;
    property TransactionId: WideString dispid 109;
    property ValidityPeriod: Integer dispid 110;
    property sysBoundary: WideString readonly dispid 115;
    property sysSettings: Integer writeonly dispid 116;
    procedure SaveToFile(const bstrFolder: WideString; lFormat: Integer); dispid 200;
    procedure EncodeMessage; dispid 201;
    procedure DecodeMessage; dispid 202;
    procedure AddRecipient(const bstrRecipient: WideString; lType: Integer); dispid 205;
    procedure AddSlide(var pVal: OleVariant); dispid 210;
    procedure LoadFromFile(const bstrFile: WideString); dispid 212;
    function GetFirstSlide: OleVariant; dispid 225;
    function GetNextSlide: OleVariant; dispid 226;
    function GetFirstRecipient(lType: Integer): WideString; dispid 227;
    function GetNextRecipient(lType: Integer): WideString; dispid 228;
    procedure ClearRecipients; dispid 229;
    procedure LoadCustomSMIL(const bstrFile: WideString); dispid 230;
  end;

// *********************************************************************//
// Interface: ISmsDataMmsNotification
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4105A254-0E01-4939-A5F7-D49D623B0986}
// *********************************************************************//
  ISmsDataMmsNotification = interface(IDispatch)
    ['{4105A254-0E01-4939-A5F7-D49D623B0986}']
    function Get_LastError: Integer; safecall;
    function Get_Version: WideString; safecall;
    function Get_Build: WideString; safecall;
    function Get_ExpirationDate: WideString; safecall;
    procedure Set_Reserved(Param1: Integer); safecall;
    procedure Set_DistributionID(const Param1: WideString); safecall;
    procedure Set_DistributionKey(const Param1: WideString); safecall;
    function Get_Module: WideString; safecall;
    procedure Clear; safecall;
    function GetErrorDescription(newVal: Integer): WideString; safecall;
    procedure Activate(const newVal: WideString; bPersistent: Integer); safecall;
    function Get_From: WideString; safecall;
    procedure Set_From(const pVal: WideString); safecall;
    function Get_Subject: WideString; safecall;
    procedure Set_Subject(const pVal: WideString); safecall;
    function Get_Class_: Integer; safecall;
    procedure Set_Class_(pVal: Integer); safecall;
    function Get_Expiration: Integer; safecall;
    procedure Set_Expiration(pVal: Integer); safecall;
    function Get_ContentLocation: WideString; safecall;
    procedure Set_ContentLocation(const pVal: WideString); safecall;
    function Get_MessageSize: Integer; safecall;
    procedure Set_MessageSize(pVal: Integer); safecall;
    function Get_TransactionId: WideString; safecall;
    procedure Set_TransactionId(const pVal: WideString); safecall;
    function Get_EncodedMessage: WideString; safecall;
    procedure Set_EncodedMessage(const pVal: WideString); safecall;
    procedure Encode; safecall;
    property LastError: Integer read Get_LastError;
    property Version: WideString read Get_Version;
    property Build: WideString read Get_Build;
    property ExpirationDate: WideString read Get_ExpirationDate;
    property Reserved: Integer write Set_Reserved;
    property DistributionID: WideString write Set_DistributionID;
    property DistributionKey: WideString write Set_DistributionKey;
    property Module: WideString read Get_Module;
    property From: WideString read Get_From write Set_From;
    property Subject: WideString read Get_Subject write Set_Subject;
    property Class_: Integer read Get_Class_ write Set_Class_;
    property Expiration: Integer read Get_Expiration write Set_Expiration;
    property ContentLocation: WideString read Get_ContentLocation write Set_ContentLocation;
    property MessageSize: Integer read Get_MessageSize write Set_MessageSize;
    property TransactionId: WideString read Get_TransactionId write Set_TransactionId;
    property EncodedMessage: WideString read Get_EncodedMessage write Set_EncodedMessage;
  end;

// *********************************************************************//
// DispIntf:  ISmsDataMmsNotificationDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4105A254-0E01-4939-A5F7-D49D623B0986}
// *********************************************************************//
  ISmsDataMmsNotificationDisp = dispinterface
    ['{4105A254-0E01-4939-A5F7-D49D623B0986}']
    property LastError: Integer readonly dispid 1;
    property Version: WideString readonly dispid 2;
    property Build: WideString readonly dispid 3;
    property ExpirationDate: WideString readonly dispid 4;
    property Reserved: Integer writeonly dispid 5;
    property DistributionID: WideString writeonly dispid 8;
    property DistributionKey: WideString writeonly dispid 9;
    property Module: WideString readonly dispid 10;
    procedure Clear; dispid 20;
    function GetErrorDescription(newVal: Integer): WideString; dispid 21;
    procedure Activate(const newVal: WideString; bPersistent: Integer); dispid 22;
    property From: WideString dispid 101;
    property Subject: WideString dispid 102;
    property Class_: Integer dispid 103;
    property Expiration: Integer dispid 104;
    property ContentLocation: WideString dispid 105;
    property MessageSize: Integer dispid 106;
    property TransactionId: WideString dispid 107;
    property EncodedMessage: WideString dispid 108;
    procedure Encode; dispid 201;
  end;

// *********************************************************************//
// Interface: ISmsDatavCard
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1F392F11-0F25-4CC9-A3B5-4E05C07258F1}
// *********************************************************************//
  ISmsDatavCard = interface(IDispatch)
    ['{1F392F11-0F25-4CC9-A3B5-4E05C07258F1}']
    function Get_LastError: Integer; safecall;
    function Get_Version: WideString; safecall;
    function Get_Build: WideString; safecall;
    function Get_ExpirationDate: WideString; safecall;
    procedure Set_Reserved(Param1: Integer); safecall;
    procedure Set_DistributionID(const Param1: WideString); safecall;
    procedure Set_DistributionKey(const Param1: WideString); safecall;
    function Get_Module: WideString; safecall;
    procedure Clear; safecall;
    function GetErrorDescription(lError: Integer): WideString; safecall;
    procedure Activate(const bstrRegKey: WideString; bPersistent: Integer); safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Name(const pVal: WideString); safecall;
    function Get_Phone: WideString; safecall;
    procedure Set_Phone(const pVal: WideString); safecall;
    function Get_PhoneWork: WideString; safecall;
    procedure Set_PhoneWork(const pVal: WideString); safecall;
    function Get_PhoneHome: WideString; safecall;
    procedure Set_PhoneHome(const pVal: WideString); safecall;
    function Get_Mobile: WideString; safecall;
    procedure Set_Mobile(const pVal: WideString); safecall;
    function Get_Pager: WideString; safecall;
    procedure Set_Pager(const pVal: WideString); safecall;
    function Get_Fax: WideString; safecall;
    procedure Set_Fax(const pVal: WideString); safecall;
    function Get_Email: WideString; safecall;
    procedure Set_Email(const pVal: WideString); safecall;
    function Get_Title: WideString; safecall;
    procedure Set_Title(const pVal: WideString); safecall;
    function Get_URL: WideString; safecall;
    procedure Set_URL(const pVal: WideString); safecall;
    function Get_EncodedMessage: WideString; safecall;
    procedure Encode; safecall;
    property LastError: Integer read Get_LastError;
    property Version: WideString read Get_Version;
    property Build: WideString read Get_Build;
    property ExpirationDate: WideString read Get_ExpirationDate;
    property Reserved: Integer write Set_Reserved;
    property DistributionID: WideString write Set_DistributionID;
    property DistributionKey: WideString write Set_DistributionKey;
    property Module: WideString read Get_Module;
    property Name: WideString read Get_Name write Set_Name;
    property Phone: WideString read Get_Phone write Set_Phone;
    property PhoneWork: WideString read Get_PhoneWork write Set_PhoneWork;
    property PhoneHome: WideString read Get_PhoneHome write Set_PhoneHome;
    property Mobile: WideString read Get_Mobile write Set_Mobile;
    property Pager: WideString read Get_Pager write Set_Pager;
    property Fax: WideString read Get_Fax write Set_Fax;
    property Email: WideString read Get_Email write Set_Email;
    property Title: WideString read Get_Title write Set_Title;
    property URL: WideString read Get_URL write Set_URL;
    property EncodedMessage: WideString read Get_EncodedMessage;
  end;

// *********************************************************************//
// DispIntf:  ISmsDatavCardDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1F392F11-0F25-4CC9-A3B5-4E05C07258F1}
// *********************************************************************//
  ISmsDatavCardDisp = dispinterface
    ['{1F392F11-0F25-4CC9-A3B5-4E05C07258F1}']
    property LastError: Integer readonly dispid 1;
    property Version: WideString readonly dispid 2;
    property Build: WideString readonly dispid 3;
    property ExpirationDate: WideString readonly dispid 4;
    property Reserved: Integer writeonly dispid 5;
    property DistributionID: WideString writeonly dispid 8;
    property DistributionKey: WideString writeonly dispid 9;
    property Module: WideString readonly dispid 10;
    procedure Clear; dispid 20;
    function GetErrorDescription(lError: Integer): WideString; dispid 21;
    procedure Activate(const bstrRegKey: WideString; bPersistent: Integer); dispid 22;
    property Name: WideString dispid 101;
    property Phone: WideString dispid 102;
    property PhoneWork: WideString dispid 103;
    property PhoneHome: WideString dispid 104;
    property Mobile: WideString dispid 105;
    property Pager: WideString dispid 106;
    property Fax: WideString dispid 107;
    property Email: WideString dispid 108;
    property Title: WideString dispid 109;
    property URL: WideString dispid 110;
    property EncodedMessage: WideString readonly dispid 150;
    procedure Encode; dispid 200;
  end;

// *********************************************************************//
// The Class CoSmsProtocolGsm provides a Create and CreateRemote method to          
// create instances of the default interface ISmsProtocolGsm exposed by              
// the CoClass SmsProtocolGsm. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSmsProtocolGsm = class
    class function Create: ISmsProtocolGsm;
    class function CreateRemote(const MachineName: string): ISmsProtocolGsm;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TSmsProtocolGsm
// Help String      : SmsGsmProtocol Class
// Default Interface: ISmsProtocolGsm
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TSmsProtocolGsmProperties= class;
{$ENDIF}
  TSmsProtocolGsm = class(TOleServer)
  private
    FIntf:        ISmsProtocolGsm;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TSmsProtocolGsmProperties;
    function      GetServerProperties: TSmsProtocolGsmProperties;
{$ENDIF}
    function      GetDefaultInterface: ISmsProtocolGsm;
  protected
    procedure InitServerData; override;
    function Get_LastError: Integer;
    function Get_Version: WideString;
    function Get_Build: WideString;
    function Get_ExpirationDate: WideString;
    procedure Set_Reserved(Param1: Integer);
    function Get_LogFile: WideString;
    procedure Set_LogFile(const pVal: WideString);
    function Get_ActivityFile: WideString;
    procedure Set_ActivityFile(const pVal: WideString);
    procedure Set_DistributionID(const Param1: WideString);
    procedure Set_DistributionKey(const Param1: WideString);
    function Get_Module: WideString;
    function Get_Device: WideString;
    procedure Set_Device(const pVal: WideString);
    function Get_DeviceSpeed: Integer;
    procedure Set_DeviceSpeed(pVal: Integer);
    function Get_DeviceInitString: WideString;
    procedure Set_DeviceInitString(const pVal: WideString);
    function Get_DeviceFlowControl: Integer;
    procedure Set_DeviceFlowControl(pVal: Integer);
    function Get_MessageStorage: Integer;
    procedure Set_MessageStorage(pVal: Integer);
    function Get_ReportsStorage: Integer;
    procedure Set_ReportsStorage(pVal: Integer);
    function Get_SMSC: WideString;
    procedure Set_SMSC(const pVal: WideString);
    function Get_AdvancedSettings: WideString;
    procedure Set_AdvancedSettings(const pVal: WideString);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ISmsProtocolGsm);
    procedure Disconnect; override;
    procedure Clear;
    function GetErrorDescription(newVal: Integer): WideString;
    procedure Activate(const newVal: WideString; bPersistent: Integer);
    function GetDeviceCount: Integer;
    function GetDevice(lDevice: Integer): WideString;
    procedure EnterPin(const bstrPIN: WideString);
    function SendCommand(const bstrCommand: WideString; lTimeout: Integer): WideString;
    function Send(var pMessage: OleVariant): WideString;
    function Receive: Integer;
    function QueryStatus(const bstrReference: WideString): OleVariant;
    function GetFirstMessage: OleVariant;
    function GetNextMessage: OleVariant;
    function GetMessage(lIndex: Integer): OleVariant;
    procedure DeleteAllMessages(bAll: Integer);
    procedure DeleteMessage(lIndex: Integer);
    procedure SaveReports(const bstrFileName: WideString);
    procedure LoadReports(const bstrFileName: WideString);
    property DefaultInterface: ISmsProtocolGsm read GetDefaultInterface;
    property LastError: Integer read Get_LastError;
    property Version: WideString read Get_Version;
    property Build: WideString read Get_Build;
    property ExpirationDate: WideString read Get_ExpirationDate;
    property Reserved: Integer write Set_Reserved;
    property DistributionID: WideString write Set_DistributionID;
    property DistributionKey: WideString write Set_DistributionKey;
    property Module: WideString read Get_Module;
    property LogFile: WideString read Get_LogFile write Set_LogFile;
    property ActivityFile: WideString read Get_ActivityFile write Set_ActivityFile;
    property Device: WideString read Get_Device write Set_Device;
    property DeviceSpeed: Integer read Get_DeviceSpeed write Set_DeviceSpeed;
    property DeviceInitString: WideString read Get_DeviceInitString write Set_DeviceInitString;
    property DeviceFlowControl: Integer read Get_DeviceFlowControl write Set_DeviceFlowControl;
    property MessageStorage: Integer read Get_MessageStorage write Set_MessageStorage;
    property ReportsStorage: Integer read Get_ReportsStorage write Set_ReportsStorage;
    property SMSC: WideString read Get_SMSC write Set_SMSC;
    property AdvancedSettings: WideString read Get_AdvancedSettings write Set_AdvancedSettings;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TSmsProtocolGsmProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TSmsProtocolGsm
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TSmsProtocolGsmProperties = class(TPersistent)
  private
    FServer:    TSmsProtocolGsm;
    function    GetDefaultInterface: ISmsProtocolGsm;
    constructor Create(AServer: TSmsProtocolGsm);
  protected
    function Get_LastError: Integer;
    function Get_Version: WideString;
    function Get_Build: WideString;
    function Get_ExpirationDate: WideString;
    procedure Set_Reserved(Param1: Integer);
    function Get_LogFile: WideString;
    procedure Set_LogFile(const pVal: WideString);
    function Get_ActivityFile: WideString;
    procedure Set_ActivityFile(const pVal: WideString);
    procedure Set_DistributionID(const Param1: WideString);
    procedure Set_DistributionKey(const Param1: WideString);
    function Get_Module: WideString;
    function Get_Device: WideString;
    procedure Set_Device(const pVal: WideString);
    function Get_DeviceSpeed: Integer;
    procedure Set_DeviceSpeed(pVal: Integer);
    function Get_DeviceInitString: WideString;
    procedure Set_DeviceInitString(const pVal: WideString);
    function Get_DeviceFlowControl: Integer;
    procedure Set_DeviceFlowControl(pVal: Integer);
    function Get_MessageStorage: Integer;
    procedure Set_MessageStorage(pVal: Integer);
    function Get_ReportsStorage: Integer;
    procedure Set_ReportsStorage(pVal: Integer);
    function Get_SMSC: WideString;
    procedure Set_SMSC(const pVal: WideString);
    function Get_AdvancedSettings: WideString;
    procedure Set_AdvancedSettings(const pVal: WideString);
  public
    property DefaultInterface: ISmsProtocolGsm read GetDefaultInterface;
  published
    property LogFile: WideString read Get_LogFile write Set_LogFile;
    property ActivityFile: WideString read Get_ActivityFile write Set_ActivityFile;
    property Device: WideString read Get_Device write Set_Device;
    property DeviceSpeed: Integer read Get_DeviceSpeed write Set_DeviceSpeed;
    property DeviceInitString: WideString read Get_DeviceInitString write Set_DeviceInitString;
    property DeviceFlowControl: Integer read Get_DeviceFlowControl write Set_DeviceFlowControl;
    property MessageStorage: Integer read Get_MessageStorage write Set_MessageStorage;
    property ReportsStorage: Integer read Get_ReportsStorage write Set_ReportsStorage;
    property SMSC: WideString read Get_SMSC write Set_SMSC;
    property AdvancedSettings: WideString read Get_AdvancedSettings write Set_AdvancedSettings;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoSmsMessage provides a Create and CreateRemote method to          
// create instances of the default interface ISmsMessage exposed by              
// the CoClass SmsMessage. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSmsMessage = class
    class function Create: ISmsMessage;
    class function CreateRemote(const MachineName: string): ISmsMessage;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TSmsMessage
// Help String      : SmsMessage Class
// Default Interface: ISmsMessage
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TSmsMessageProperties= class;
{$ENDIF}
  TSmsMessage = class(TOleServer)
  private
    FIntf:        ISmsMessage;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TSmsMessageProperties;
    function      GetServerProperties: TSmsMessageProperties;
{$ENDIF}
    function      GetDefaultInterface: ISmsMessage;
  protected
    procedure InitServerData; override;
    function Get_Sender: WideString;
    procedure Set_Sender(const pVal: WideString);
    function Get_Recipient: WideString;
    procedure Set_Recipient(const pVal: WideString);
    function Get_Data: WideString;
    procedure Set_Data(const pVal: WideString);
    function Get_Format: Integer;
    procedure Set_Format(pVal: Integer);
    function Get_ValidityPeriod: Integer;
    procedure Set_ValidityPeriod(pVal: Integer);
    function Get_SMSC: WideString;
    procedure Set_SMSC(const pVal: WideString);
    function Get_Time: WideString;
    procedure Set_Time(const pVal: WideString);
    function Get_TimeSecs: Integer;
    procedure Set_TimeSecs(pVal: Integer);
    function Get_PID: Integer;
    procedure Set_PID(pVal: Integer);
    function Get_DCS: Integer;
    procedure Set_DCS(pVal: Integer);
    function Get_ESM: Integer;
    procedure Set_ESM(pVal: Integer);
    function Get_SourceTON: Integer;
    procedure Set_SourceTON(pVal: Integer);
    function Get_SourceNPI: Integer;
    procedure Set_SourceNPI(pVal: Integer);
    function Get_DestinationTON: Integer;
    procedure Set_DestinationTON(pVal: Integer);
    function Get_DestinationNPI: Integer;
    procedure Set_DestinationNPI(pVal: Integer);
    function Get_ServiceType: WideString;
    procedure Set_ServiceType(const pVal: WideString);
    function Get_RequestDeliveryStatus: Integer;
    procedure Set_RequestDeliveryStatus(pVal: Integer);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ISmsMessage);
    procedure Disconnect; override;
    procedure Clear;
    property DefaultInterface: ISmsMessage read GetDefaultInterface;
    property Sender: WideString read Get_Sender write Set_Sender;
    property Recipient: WideString read Get_Recipient write Set_Recipient;
    property Data: WideString read Get_Data write Set_Data;
    property Format: Integer read Get_Format write Set_Format;
    property ValidityPeriod: Integer read Get_ValidityPeriod write Set_ValidityPeriod;
    property SMSC: WideString read Get_SMSC write Set_SMSC;
    property Time: WideString read Get_Time write Set_Time;
    property TimeSecs: Integer read Get_TimeSecs write Set_TimeSecs;
    property PID: Integer read Get_PID write Set_PID;
    property DCS: Integer read Get_DCS write Set_DCS;
    property ESM: Integer read Get_ESM write Set_ESM;
    property SourceTON: Integer read Get_SourceTON write Set_SourceTON;
    property SourceNPI: Integer read Get_SourceNPI write Set_SourceNPI;
    property DestinationTON: Integer read Get_DestinationTON write Set_DestinationTON;
    property DestinationNPI: Integer read Get_DestinationNPI write Set_DestinationNPI;
    property ServiceType: WideString read Get_ServiceType write Set_ServiceType;
    property RequestDeliveryStatus: Integer read Get_RequestDeliveryStatus write Set_RequestDeliveryStatus;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TSmsMessageProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TSmsMessage
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TSmsMessageProperties = class(TPersistent)
  private
    FServer:    TSmsMessage;
    function    GetDefaultInterface: ISmsMessage;
    constructor Create(AServer: TSmsMessage);
  protected
    function Get_Sender: WideString;
    procedure Set_Sender(const pVal: WideString);
    function Get_Recipient: WideString;
    procedure Set_Recipient(const pVal: WideString);
    function Get_Data: WideString;
    procedure Set_Data(const pVal: WideString);
    function Get_Format: Integer;
    procedure Set_Format(pVal: Integer);
    function Get_ValidityPeriod: Integer;
    procedure Set_ValidityPeriod(pVal: Integer);
    function Get_SMSC: WideString;
    procedure Set_SMSC(const pVal: WideString);
    function Get_Time: WideString;
    procedure Set_Time(const pVal: WideString);
    function Get_TimeSecs: Integer;
    procedure Set_TimeSecs(pVal: Integer);
    function Get_PID: Integer;
    procedure Set_PID(pVal: Integer);
    function Get_DCS: Integer;
    procedure Set_DCS(pVal: Integer);
    function Get_ESM: Integer;
    procedure Set_ESM(pVal: Integer);
    function Get_SourceTON: Integer;
    procedure Set_SourceTON(pVal: Integer);
    function Get_SourceNPI: Integer;
    procedure Set_SourceNPI(pVal: Integer);
    function Get_DestinationTON: Integer;
    procedure Set_DestinationTON(pVal: Integer);
    function Get_DestinationNPI: Integer;
    procedure Set_DestinationNPI(pVal: Integer);
    function Get_ServiceType: WideString;
    procedure Set_ServiceType(const pVal: WideString);
    function Get_RequestDeliveryStatus: Integer;
    procedure Set_RequestDeliveryStatus(pVal: Integer);
  public
    property DefaultInterface: ISmsMessage read GetDefaultInterface;
  published
    property Sender: WideString read Get_Sender write Set_Sender;
    property Recipient: WideString read Get_Recipient write Set_Recipient;
    property Data: WideString read Get_Data write Set_Data;
    property Format: Integer read Get_Format write Set_Format;
    property ValidityPeriod: Integer read Get_ValidityPeriod write Set_ValidityPeriod;
    property SMSC: WideString read Get_SMSC write Set_SMSC;
    property Time: WideString read Get_Time write Set_Time;
    property TimeSecs: Integer read Get_TimeSecs write Set_TimeSecs;
    property PID: Integer read Get_PID write Set_PID;
    property DCS: Integer read Get_DCS write Set_DCS;
    property ESM: Integer read Get_ESM write Set_ESM;
    property SourceTON: Integer read Get_SourceTON write Set_SourceTON;
    property SourceNPI: Integer read Get_SourceNPI write Set_SourceNPI;
    property DestinationTON: Integer read Get_DestinationTON write Set_DestinationTON;
    property DestinationNPI: Integer read Get_DestinationNPI write Set_DestinationNPI;
    property ServiceType: WideString read Get_ServiceType write Set_ServiceType;
    property RequestDeliveryStatus: Integer read Get_RequestDeliveryStatus write Set_RequestDeliveryStatus;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoSmsProtocolSmpp provides a Create and CreateRemote method to          
// create instances of the default interface ISmsProtocolSmpp exposed by              
// the CoClass SmsProtocolSmpp. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSmsProtocolSmpp = class
    class function Create: ISmsProtocolSmpp;
    class function CreateRemote(const MachineName: string): ISmsProtocolSmpp;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TSmsProtocolSmpp
// Help String      : SmsSmppProtocol Class
// Default Interface: ISmsProtocolSmpp
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TSmsProtocolSmppProperties= class;
{$ENDIF}
  TSmsProtocolSmpp = class(TOleServer)
  private
    FIntf:        ISmsProtocolSmpp;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TSmsProtocolSmppProperties;
    function      GetServerProperties: TSmsProtocolSmppProperties;
{$ENDIF}
    function      GetDefaultInterface: ISmsProtocolSmpp;
  protected
    procedure InitServerData; override;
    function Get_LastError: Integer;
    function Get_Version: WideString;
    function Get_Build: WideString;
    function Get_ExpirationDate: WideString;
    procedure Set_Reserved(Param1: Integer);
    function Get_LogFile: WideString;
    procedure Set_LogFile(const pVal: WideString);
    function Get_ActivityFile: WideString;
    procedure Set_ActivityFile(const pVal: WideString);
    procedure Set_DistributionID(const Param1: WideString);
    procedure Set_DistributionKey(const Param1: WideString);
    function Get_Server: WideString;
    procedure Set_Server(const pVal: WideString);
    function Get_ServerPort: Integer;
    procedure Set_ServerPort(pVal: Integer);
    function Get_ServerTimeout: Integer;
    procedure Set_ServerTimeout(pVal: Integer);
    function Get_ServerKeepAlive: Integer;
    procedure Set_ServerKeepAlive(pVal: Integer);
    function Get_SystemID: WideString;
    procedure Set_SystemID(const pVal: WideString);
    function Get_SystemPassword: WideString;
    procedure Set_SystemPassword(const pVal: WideString);
    function Get_SystemType: WideString;
    procedure Set_SystemType(const pVal: WideString);
    function Get_SystemMode: Integer;
    procedure Set_SystemMode(pVal: Integer);
    function Get_SystemVersion: Integer;
    procedure Set_SystemVersion(pVal: Integer);
    function Get_SystemSourceAddress: WideString;
    procedure Set_SystemSourceAddress(const pVal: WideString);
    function Get_SystemSourceTON: Integer;
    procedure Set_SystemSourceTON(pVal: Integer);
    function Get_SystemSourceNPI: Integer;
    procedure Set_SystemSourceNPI(pVal: Integer);
    function Get_SystemThroughput: Integer;
    procedure Set_SystemThroughput(pVal: Integer);
    function Get_SystemCharSet: Integer;
    procedure Set_SystemCharSet(pVal: Integer);
    function Get_AddressRange: WideString;
    procedure Set_AddressRange(const pVal: WideString);
    function Get_DeliveryReportFormat: Integer;
    procedure Set_DeliveryReportFormat(pVal: Integer);
    function Get_IsConnected: Integer;
    function Get_SystemDestinationTON: Integer;
    procedure Set_SystemDestinationTON(pVal: Integer);
    function Get_SystemDestinationNPI: Integer;
    procedure Set_SystemDestinationNPI(pVal: Integer);
    function Get_AdvancedSettings: WideString;
    procedure Set_AdvancedSettings(const pVal: WideString);
    function Get_Module: WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ISmsProtocolSmpp);
    procedure Disconnect; override;
    procedure Clear;
    function GetErrorDescription(newVal: Integer): WideString;
    procedure Activate(const newVal: WideString; bPersistent: Integer);
    procedure Connect1;
    procedure Disconnect1;
    function Send(var pMessage: OleVariant): WideString;
    procedure SetTLVValue(lType: Integer; lTLV: Integer; newVal: OleVariant);
    function GetTLVValue(lTLV: Integer): OleVariant;
    function QueryStatus(const bstrRef: WideString; bWaitUntilCompleted: Integer): OleVariant;
    function CountReceivedMessages: Integer;
    function GetFirstMessage: OleVariant;
    function GetNextMessage: OleVariant;
    function GetMessage(lIndex: Integer): OleVariant;
    procedure ProviderLoadConfig(const bstrConfigFile: WideString);
    procedure ProviderSaveConfig(const bstrConfigFile: WideString);
    procedure Sleep(lDelay: Integer);
    procedure LoadReports(const bstrFileName: WideString);
    procedure SaveReports(const bstrFileName: WideString);
    property DefaultInterface: ISmsProtocolSmpp read GetDefaultInterface;
    property LastError: Integer read Get_LastError;
    property Version: WideString read Get_Version;
    property Build: WideString read Get_Build;
    property ExpirationDate: WideString read Get_ExpirationDate;
    property Reserved: Integer write Set_Reserved;
    property DistributionID: WideString write Set_DistributionID;
    property DistributionKey: WideString write Set_DistributionKey;
    property IsConnected: Integer read Get_IsConnected;
    property Module: WideString read Get_Module;
    property LogFile: WideString read Get_LogFile write Set_LogFile;
    property ActivityFile: WideString read Get_ActivityFile write Set_ActivityFile;
    property Server: WideString read Get_Server write Set_Server;
    property ServerPort: Integer read Get_ServerPort write Set_ServerPort;
    property ServerTimeout: Integer read Get_ServerTimeout write Set_ServerTimeout;
    property ServerKeepAlive: Integer read Get_ServerKeepAlive write Set_ServerKeepAlive;
    property SystemID: WideString read Get_SystemID write Set_SystemID;
    property SystemPassword: WideString read Get_SystemPassword write Set_SystemPassword;
    property SystemType: WideString read Get_SystemType write Set_SystemType;
    property SystemMode: Integer read Get_SystemMode write Set_SystemMode;
    property SystemVersion: Integer read Get_SystemVersion write Set_SystemVersion;
    property SystemSourceAddress: WideString read Get_SystemSourceAddress write Set_SystemSourceAddress;
    property SystemSourceTON: Integer read Get_SystemSourceTON write Set_SystemSourceTON;
    property SystemSourceNPI: Integer read Get_SystemSourceNPI write Set_SystemSourceNPI;
    property SystemThroughput: Integer read Get_SystemThroughput write Set_SystemThroughput;
    property SystemCharSet: Integer read Get_SystemCharSet write Set_SystemCharSet;
    property AddressRange: WideString read Get_AddressRange write Set_AddressRange;
    property DeliveryReportFormat: Integer read Get_DeliveryReportFormat write Set_DeliveryReportFormat;
    property SystemDestinationTON: Integer read Get_SystemDestinationTON write Set_SystemDestinationTON;
    property SystemDestinationNPI: Integer read Get_SystemDestinationNPI write Set_SystemDestinationNPI;
    property AdvancedSettings: WideString read Get_AdvancedSettings write Set_AdvancedSettings;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TSmsProtocolSmppProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TSmsProtocolSmpp
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TSmsProtocolSmppProperties = class(TPersistent)
  private
    FServer:    TSmsProtocolSmpp;
    function    GetDefaultInterface: ISmsProtocolSmpp;
    constructor Create(AServer: TSmsProtocolSmpp);
  protected
    function Get_LastError: Integer;
    function Get_Version: WideString;
    function Get_Build: WideString;
    function Get_ExpirationDate: WideString;
    procedure Set_Reserved(Param1: Integer);
    function Get_LogFile: WideString;
    procedure Set_LogFile(const pVal: WideString);
    function Get_ActivityFile: WideString;
    procedure Set_ActivityFile(const pVal: WideString);
    procedure Set_DistributionID(const Param1: WideString);
    procedure Set_DistributionKey(const Param1: WideString);
    function Get_Server: WideString;
    procedure Set_Server(const pVal: WideString);
    function Get_ServerPort: Integer;
    procedure Set_ServerPort(pVal: Integer);
    function Get_ServerTimeout: Integer;
    procedure Set_ServerTimeout(pVal: Integer);
    function Get_ServerKeepAlive: Integer;
    procedure Set_ServerKeepAlive(pVal: Integer);
    function Get_SystemID: WideString;
    procedure Set_SystemID(const pVal: WideString);
    function Get_SystemPassword: WideString;
    procedure Set_SystemPassword(const pVal: WideString);
    function Get_SystemType: WideString;
    procedure Set_SystemType(const pVal: WideString);
    function Get_SystemMode: Integer;
    procedure Set_SystemMode(pVal: Integer);
    function Get_SystemVersion: Integer;
    procedure Set_SystemVersion(pVal: Integer);
    function Get_SystemSourceAddress: WideString;
    procedure Set_SystemSourceAddress(const pVal: WideString);
    function Get_SystemSourceTON: Integer;
    procedure Set_SystemSourceTON(pVal: Integer);
    function Get_SystemSourceNPI: Integer;
    procedure Set_SystemSourceNPI(pVal: Integer);
    function Get_SystemThroughput: Integer;
    procedure Set_SystemThroughput(pVal: Integer);
    function Get_SystemCharSet: Integer;
    procedure Set_SystemCharSet(pVal: Integer);
    function Get_AddressRange: WideString;
    procedure Set_AddressRange(const pVal: WideString);
    function Get_DeliveryReportFormat: Integer;
    procedure Set_DeliveryReportFormat(pVal: Integer);
    function Get_IsConnected: Integer;
    function Get_SystemDestinationTON: Integer;
    procedure Set_SystemDestinationTON(pVal: Integer);
    function Get_SystemDestinationNPI: Integer;
    procedure Set_SystemDestinationNPI(pVal: Integer);
    function Get_AdvancedSettings: WideString;
    procedure Set_AdvancedSettings(const pVal: WideString);
    function Get_Module: WideString;
  public
    property DefaultInterface: ISmsProtocolSmpp read GetDefaultInterface;
  published
    property LogFile: WideString read Get_LogFile write Set_LogFile;
    property ActivityFile: WideString read Get_ActivityFile write Set_ActivityFile;
    property Server: WideString read Get_Server write Set_Server;
    property ServerPort: Integer read Get_ServerPort write Set_ServerPort;
    property ServerTimeout: Integer read Get_ServerTimeout write Set_ServerTimeout;
    property ServerKeepAlive: Integer read Get_ServerKeepAlive write Set_ServerKeepAlive;
    property SystemID: WideString read Get_SystemID write Set_SystemID;
    property SystemPassword: WideString read Get_SystemPassword write Set_SystemPassword;
    property SystemType: WideString read Get_SystemType write Set_SystemType;
    property SystemMode: Integer read Get_SystemMode write Set_SystemMode;
    property SystemVersion: Integer read Get_SystemVersion write Set_SystemVersion;
    property SystemSourceAddress: WideString read Get_SystemSourceAddress write Set_SystemSourceAddress;
    property SystemSourceTON: Integer read Get_SystemSourceTON write Set_SystemSourceTON;
    property SystemSourceNPI: Integer read Get_SystemSourceNPI write Set_SystemSourceNPI;
    property SystemThroughput: Integer read Get_SystemThroughput write Set_SystemThroughput;
    property SystemCharSet: Integer read Get_SystemCharSet write Set_SystemCharSet;
    property AddressRange: WideString read Get_AddressRange write Set_AddressRange;
    property DeliveryReportFormat: Integer read Get_DeliveryReportFormat write Set_DeliveryReportFormat;
    property SystemDestinationTON: Integer read Get_SystemDestinationTON write Set_SystemDestinationTON;
    property SystemDestinationNPI: Integer read Get_SystemDestinationNPI write Set_SystemDestinationNPI;
    property AdvancedSettings: WideString read Get_AdvancedSettings write Set_AdvancedSettings;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoSmsConstants provides a Create and CreateRemote method to          
// create instances of the default interface ISmsConstants exposed by              
// the CoClass SmsConstants. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSmsConstants = class
    class function Create: ISmsConstants;
    class function CreateRemote(const MachineName: string): ISmsConstants;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TSmsConstants
// Help String      : SmsConstants Class
// Default Interface: ISmsConstants
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TSmsConstantsProperties= class;
{$ENDIF}
  TSmsConstants = class(TOleServer)
  private
    FIntf:        ISmsConstants;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TSmsConstantsProperties;
    function      GetServerProperties: TSmsConstantsProperties;
{$ENDIF}
    function      GetDefaultInterface: ISmsConstants;
  protected
    procedure InitServerData; override;
    function Get_asMESSAGEFORMAT_TEXT: Integer;
    function Get_asMESSAGEFORMAT_TEXT_FLASH: Integer;
    function Get_asMESSAGEFORMAT_TEXT_MULTIPART: Integer;
    function Get_asMESSAGEFORMAT_TEXT_MULTIPART_FLASH: Integer;
    function Get_asMESSAGEFORMAT_DATA: Integer;
    function Get_asMESSAGEFORMAT_DATA_UDH: Integer;
    function Get_asMESSAGEFORMAT_UNICODE: Integer;
    function Get_asMESSAGEFORMAT_UNICODE_FLASH: Integer;
    function Get_asMESSAGEFORMAT_UNICODE_MULTIPART: Integer;
    function Get_asMESSAGEFORMAT_UNICODE_MULTIPART_FLASH: Integer;
    function Get_asMESSAGEFORMAT_REPORT: Integer;
    function Get_asMESSAGEFORMAT_NOTIFICATION_MMS: Integer;
    function Get_asSMPPMODE_TRANSCEIVER: Integer;
    function Get_asSMPPMODE_TRANSMITTER: Integer;
    function Get_asSMPPMODE_RECEIVER: Integer;
    function Get_asPROVIDERTYPE_UCP: Integer;
    function Get_asPROVIDERTYPE_TAP_DEFAULT: Integer;
    function Get_asPROVIDERTYPE_TAP_NOLF: Integer;
    function Get_asPROVIDERTYPE_TAP_NOEOT: Integer;
    function Get_asDIALMODE_TONE: Integer;
    function Get_asDIALMODE_PULSE: Integer;
    function Get_asSMPPVERSION_33: Integer;
    function Get_asSMPPVERSION_34: Integer;
    function Get_asSMPPVERSION_50: Integer;
    function Get_asSMPP_TLV_1BYTE: Integer;
    function Get_asSMPP_TLV_2BYTE: Integer;
    function Get_asSMPP_TLV_4BYTE: Integer;
    function Get_asSMPP_TLV_COCTET: Integer;
    function Get_asSMPP_TLV_OCTET: Integer;
    function Get_asSMPP_TLV_VARIABLE: Integer;
    function Get_asDELIVERYSTATUS_SCHEDULED: Integer;
    function Get_asDELIVERYSTATUS_ENROUTE: Integer;
    function Get_asDELIVERYSTATUS_DELIVERED: Integer;
    function Get_asDELIVERYSTATUS_EXPIRED: Integer;
    function Get_asDELIVERYSTATUS_DELETED: Integer;
    function Get_asDELIVERYSTATUS_UNDELIVERABLE: Integer;
    function Get_asDELIVERYSTATUS_ACCEPTED: Integer;
    function Get_asDELIVERYSTATUS_UNKNOWN: Integer;
    function Get_asDELIVERYSTATUS_REJECTED: Integer;
    function Get_asDELIVERYSTATUS_SKIPPED: Integer;
    function Get_asDELIVERYSTATUS_SUBMITTED: Integer;
    function Get_asDELIVERYSTATUS_SUBMITREQUESTED: Integer;
    function Get_asDELIVERYSTATUS_FAILED: Integer;
    function Get_asDELIVERYSTATUS_NOCREDITS: Integer;
    function Get_asWAPPUSH_SERVICE_INDICATION: Integer;
    function Get_asWAPPUSH_SERVICE_LOAD: Integer;
    function Get_asWAPPUSHSIGNAL_NONE: Integer;
    function Get_asWAPPUSHSIGNAL_LOW: Integer;
    function Get_asWAPPUSHSIGNAL_MEDIUM: Integer;
    function Get_asWAPPUSHSIGNAL_HIGH: Integer;
    function Get_asWAPPUSHSIGNAL_DELETE: Integer;
    function Get_asWAPPUSH_ACTION_EXECUTE_LOW: Integer;
    function Get_asWAPPUSH_ACTION_EXECUTE_HIGH: Integer;
    function Get_asWAPPUSH_ACTION_CACHE: Integer;
    function Get_asDEVICESETTINGS_DEFAULT: Integer;
    function Get_asDEVICESETTINGS_8N1: Integer;
    function Get_asDEVICESETTINGS_7E1: Integer;
    function Get_asSMPPCHARSET_DEFAULT: Integer;
    function Get_asSMPPCHARSET_GSM: Integer;
    function Get_asSMPPCHARSET_ASCII: Integer;
    function Get_asSMPPCHARSET_LATIN: Integer;
    function Get_asSMPPCHARSET_JIS: Integer;
    function Get_asSMPPCHARSET_CYRILLIC: Integer;
    function Get_asSMPPCHARSET_HEBREW: Integer;
    function Get_asSMPPCHARSET_JAPANESE: Integer;
    function Get_asSMPPCHARSET_GREEK: Integer;
    function Get_asSTORAGE_ALL: Integer;
    function Get_asSTORAGE_SIM: Integer;
    function Get_asSTORAGE_DEVICE: Integer;
    function Get_asSTORAGE_COMBINED: Integer;
    function Get_asSTORAGE_REPORTS: Integer;
    function Get_asDEVICEFLOWCONTROL_DEFAULT: Integer;
    function Get_asDEVICEFLOWCONTROL_ENABLE: Integer;
    function Get_asDEVICEFLOWCONTROL_DISABLE: Integer;
    function Get_asMMS_CLASS_ADVERTISEMENT: Integer;
    function Get_asMMS_CLASS_INFORMATIONAL: Integer;
    function Get_asMMS_CLASS_AUTO: Integer;
    function Get_asMMS_CLASS_PERSONAL: Integer;
    function Get_asSMPPDELIVERYREPORTFORMAT_HEX: Integer;
    function Get_asSMPPDELIVERYREPORTFORMAT_DEC: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ISmsConstants);
    procedure Disconnect; override;
    property DefaultInterface: ISmsConstants read GetDefaultInterface;
    property asMESSAGEFORMAT_TEXT: Integer read Get_asMESSAGEFORMAT_TEXT;
    property asMESSAGEFORMAT_TEXT_FLASH: Integer read Get_asMESSAGEFORMAT_TEXT_FLASH;
    property asMESSAGEFORMAT_TEXT_MULTIPART: Integer read Get_asMESSAGEFORMAT_TEXT_MULTIPART;
    property asMESSAGEFORMAT_TEXT_MULTIPART_FLASH: Integer read Get_asMESSAGEFORMAT_TEXT_MULTIPART_FLASH;
    property asMESSAGEFORMAT_DATA: Integer read Get_asMESSAGEFORMAT_DATA;
    property asMESSAGEFORMAT_DATA_UDH: Integer read Get_asMESSAGEFORMAT_DATA_UDH;
    property asMESSAGEFORMAT_UNICODE: Integer read Get_asMESSAGEFORMAT_UNICODE;
    property asMESSAGEFORMAT_UNICODE_FLASH: Integer read Get_asMESSAGEFORMAT_UNICODE_FLASH;
    property asMESSAGEFORMAT_UNICODE_MULTIPART: Integer read Get_asMESSAGEFORMAT_UNICODE_MULTIPART;
    property asMESSAGEFORMAT_UNICODE_MULTIPART_FLASH: Integer read Get_asMESSAGEFORMAT_UNICODE_MULTIPART_FLASH;
    property asMESSAGEFORMAT_REPORT: Integer read Get_asMESSAGEFORMAT_REPORT;
    property asMESSAGEFORMAT_NOTIFICATION_MMS: Integer read Get_asMESSAGEFORMAT_NOTIFICATION_MMS;
    property asSMPPMODE_TRANSCEIVER: Integer read Get_asSMPPMODE_TRANSCEIVER;
    property asSMPPMODE_TRANSMITTER: Integer read Get_asSMPPMODE_TRANSMITTER;
    property asSMPPMODE_RECEIVER: Integer read Get_asSMPPMODE_RECEIVER;
    property asPROVIDERTYPE_UCP: Integer read Get_asPROVIDERTYPE_UCP;
    property asPROVIDERTYPE_TAP_DEFAULT: Integer read Get_asPROVIDERTYPE_TAP_DEFAULT;
    property asPROVIDERTYPE_TAP_NOLF: Integer read Get_asPROVIDERTYPE_TAP_NOLF;
    property asPROVIDERTYPE_TAP_NOEOT: Integer read Get_asPROVIDERTYPE_TAP_NOEOT;
    property asDIALMODE_TONE: Integer read Get_asDIALMODE_TONE;
    property asDIALMODE_PULSE: Integer read Get_asDIALMODE_PULSE;
    property asSMPPVERSION_33: Integer read Get_asSMPPVERSION_33;
    property asSMPPVERSION_34: Integer read Get_asSMPPVERSION_34;
    property asSMPPVERSION_50: Integer read Get_asSMPPVERSION_50;
    property asSMPP_TLV_1BYTE: Integer read Get_asSMPP_TLV_1BYTE;
    property asSMPP_TLV_2BYTE: Integer read Get_asSMPP_TLV_2BYTE;
    property asSMPP_TLV_4BYTE: Integer read Get_asSMPP_TLV_4BYTE;
    property asSMPP_TLV_COCTET: Integer read Get_asSMPP_TLV_COCTET;
    property asSMPP_TLV_OCTET: Integer read Get_asSMPP_TLV_OCTET;
    property asSMPP_TLV_VARIABLE: Integer read Get_asSMPP_TLV_VARIABLE;
    property asDELIVERYSTATUS_SCHEDULED: Integer read Get_asDELIVERYSTATUS_SCHEDULED;
    property asDELIVERYSTATUS_ENROUTE: Integer read Get_asDELIVERYSTATUS_ENROUTE;
    property asDELIVERYSTATUS_DELIVERED: Integer read Get_asDELIVERYSTATUS_DELIVERED;
    property asDELIVERYSTATUS_EXPIRED: Integer read Get_asDELIVERYSTATUS_EXPIRED;
    property asDELIVERYSTATUS_DELETED: Integer read Get_asDELIVERYSTATUS_DELETED;
    property asDELIVERYSTATUS_UNDELIVERABLE: Integer read Get_asDELIVERYSTATUS_UNDELIVERABLE;
    property asDELIVERYSTATUS_ACCEPTED: Integer read Get_asDELIVERYSTATUS_ACCEPTED;
    property asDELIVERYSTATUS_UNKNOWN: Integer read Get_asDELIVERYSTATUS_UNKNOWN;
    property asDELIVERYSTATUS_REJECTED: Integer read Get_asDELIVERYSTATUS_REJECTED;
    property asDELIVERYSTATUS_SKIPPED: Integer read Get_asDELIVERYSTATUS_SKIPPED;
    property asDELIVERYSTATUS_SUBMITTED: Integer read Get_asDELIVERYSTATUS_SUBMITTED;
    property asDELIVERYSTATUS_SUBMITREQUESTED: Integer read Get_asDELIVERYSTATUS_SUBMITREQUESTED;
    property asDELIVERYSTATUS_FAILED: Integer read Get_asDELIVERYSTATUS_FAILED;
    property asDELIVERYSTATUS_NOCREDITS: Integer read Get_asDELIVERYSTATUS_NOCREDITS;
    property asWAPPUSH_SERVICE_INDICATION: Integer read Get_asWAPPUSH_SERVICE_INDICATION;
    property asWAPPUSH_SERVICE_LOAD: Integer read Get_asWAPPUSH_SERVICE_LOAD;
    property asWAPPUSHSIGNAL_NONE: Integer read Get_asWAPPUSHSIGNAL_NONE;
    property asWAPPUSHSIGNAL_LOW: Integer read Get_asWAPPUSHSIGNAL_LOW;
    property asWAPPUSHSIGNAL_MEDIUM: Integer read Get_asWAPPUSHSIGNAL_MEDIUM;
    property asWAPPUSHSIGNAL_HIGH: Integer read Get_asWAPPUSHSIGNAL_HIGH;
    property asWAPPUSHSIGNAL_DELETE: Integer read Get_asWAPPUSHSIGNAL_DELETE;
    property asWAPPUSH_ACTION_EXECUTE_LOW: Integer read Get_asWAPPUSH_ACTION_EXECUTE_LOW;
    property asWAPPUSH_ACTION_EXECUTE_HIGH: Integer read Get_asWAPPUSH_ACTION_EXECUTE_HIGH;
    property asWAPPUSH_ACTION_CACHE: Integer read Get_asWAPPUSH_ACTION_CACHE;
    property asDEVICESETTINGS_DEFAULT: Integer read Get_asDEVICESETTINGS_DEFAULT;
    property asDEVICESETTINGS_8N1: Integer read Get_asDEVICESETTINGS_8N1;
    property asDEVICESETTINGS_7E1: Integer read Get_asDEVICESETTINGS_7E1;
    property asSMPPCHARSET_DEFAULT: Integer read Get_asSMPPCHARSET_DEFAULT;
    property asSMPPCHARSET_GSM: Integer read Get_asSMPPCHARSET_GSM;
    property asSMPPCHARSET_ASCII: Integer read Get_asSMPPCHARSET_ASCII;
    property asSMPPCHARSET_LATIN: Integer read Get_asSMPPCHARSET_LATIN;
    property asSMPPCHARSET_JIS: Integer read Get_asSMPPCHARSET_JIS;
    property asSMPPCHARSET_CYRILLIC: Integer read Get_asSMPPCHARSET_CYRILLIC;
    property asSMPPCHARSET_HEBREW: Integer read Get_asSMPPCHARSET_HEBREW;
    property asSMPPCHARSET_JAPANESE: Integer read Get_asSMPPCHARSET_JAPANESE;
    property asSMPPCHARSET_GREEK: Integer read Get_asSMPPCHARSET_GREEK;
    property asSTORAGE_ALL: Integer read Get_asSTORAGE_ALL;
    property asSTORAGE_SIM: Integer read Get_asSTORAGE_SIM;
    property asSTORAGE_DEVICE: Integer read Get_asSTORAGE_DEVICE;
    property asSTORAGE_COMBINED: Integer read Get_asSTORAGE_COMBINED;
    property asSTORAGE_REPORTS: Integer read Get_asSTORAGE_REPORTS;
    property asDEVICEFLOWCONTROL_DEFAULT: Integer read Get_asDEVICEFLOWCONTROL_DEFAULT;
    property asDEVICEFLOWCONTROL_ENABLE: Integer read Get_asDEVICEFLOWCONTROL_ENABLE;
    property asDEVICEFLOWCONTROL_DISABLE: Integer read Get_asDEVICEFLOWCONTROL_DISABLE;
    property asMMS_CLASS_ADVERTISEMENT: Integer read Get_asMMS_CLASS_ADVERTISEMENT;
    property asMMS_CLASS_INFORMATIONAL: Integer read Get_asMMS_CLASS_INFORMATIONAL;
    property asMMS_CLASS_AUTO: Integer read Get_asMMS_CLASS_AUTO;
    property asMMS_CLASS_PERSONAL: Integer read Get_asMMS_CLASS_PERSONAL;
    property asSMPPDELIVERYREPORTFORMAT_HEX: Integer read Get_asSMPPDELIVERYREPORTFORMAT_HEX;
    property asSMPPDELIVERYREPORTFORMAT_DEC: Integer read Get_asSMPPDELIVERYREPORTFORMAT_DEC;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TSmsConstantsProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TSmsConstants
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TSmsConstantsProperties = class(TPersistent)
  private
    FServer:    TSmsConstants;
    function    GetDefaultInterface: ISmsConstants;
    constructor Create(AServer: TSmsConstants);
  protected
    function Get_asMESSAGEFORMAT_TEXT: Integer;
    function Get_asMESSAGEFORMAT_TEXT_FLASH: Integer;
    function Get_asMESSAGEFORMAT_TEXT_MULTIPART: Integer;
    function Get_asMESSAGEFORMAT_TEXT_MULTIPART_FLASH: Integer;
    function Get_asMESSAGEFORMAT_DATA: Integer;
    function Get_asMESSAGEFORMAT_DATA_UDH: Integer;
    function Get_asMESSAGEFORMAT_UNICODE: Integer;
    function Get_asMESSAGEFORMAT_UNICODE_FLASH: Integer;
    function Get_asMESSAGEFORMAT_UNICODE_MULTIPART: Integer;
    function Get_asMESSAGEFORMAT_UNICODE_MULTIPART_FLASH: Integer;
    function Get_asMESSAGEFORMAT_REPORT: Integer;
    function Get_asMESSAGEFORMAT_NOTIFICATION_MMS: Integer;
    function Get_asSMPPMODE_TRANSCEIVER: Integer;
    function Get_asSMPPMODE_TRANSMITTER: Integer;
    function Get_asSMPPMODE_RECEIVER: Integer;
    function Get_asPROVIDERTYPE_UCP: Integer;
    function Get_asPROVIDERTYPE_TAP_DEFAULT: Integer;
    function Get_asPROVIDERTYPE_TAP_NOLF: Integer;
    function Get_asPROVIDERTYPE_TAP_NOEOT: Integer;
    function Get_asDIALMODE_TONE: Integer;
    function Get_asDIALMODE_PULSE: Integer;
    function Get_asSMPPVERSION_33: Integer;
    function Get_asSMPPVERSION_34: Integer;
    function Get_asSMPPVERSION_50: Integer;
    function Get_asSMPP_TLV_1BYTE: Integer;
    function Get_asSMPP_TLV_2BYTE: Integer;
    function Get_asSMPP_TLV_4BYTE: Integer;
    function Get_asSMPP_TLV_COCTET: Integer;
    function Get_asSMPP_TLV_OCTET: Integer;
    function Get_asSMPP_TLV_VARIABLE: Integer;
    function Get_asDELIVERYSTATUS_SCHEDULED: Integer;
    function Get_asDELIVERYSTATUS_ENROUTE: Integer;
    function Get_asDELIVERYSTATUS_DELIVERED: Integer;
    function Get_asDELIVERYSTATUS_EXPIRED: Integer;
    function Get_asDELIVERYSTATUS_DELETED: Integer;
    function Get_asDELIVERYSTATUS_UNDELIVERABLE: Integer;
    function Get_asDELIVERYSTATUS_ACCEPTED: Integer;
    function Get_asDELIVERYSTATUS_UNKNOWN: Integer;
    function Get_asDELIVERYSTATUS_REJECTED: Integer;
    function Get_asDELIVERYSTATUS_SKIPPED: Integer;
    function Get_asDELIVERYSTATUS_SUBMITTED: Integer;
    function Get_asDELIVERYSTATUS_SUBMITREQUESTED: Integer;
    function Get_asDELIVERYSTATUS_FAILED: Integer;
    function Get_asDELIVERYSTATUS_NOCREDITS: Integer;
    function Get_asWAPPUSH_SERVICE_INDICATION: Integer;
    function Get_asWAPPUSH_SERVICE_LOAD: Integer;
    function Get_asWAPPUSHSIGNAL_NONE: Integer;
    function Get_asWAPPUSHSIGNAL_LOW: Integer;
    function Get_asWAPPUSHSIGNAL_MEDIUM: Integer;
    function Get_asWAPPUSHSIGNAL_HIGH: Integer;
    function Get_asWAPPUSHSIGNAL_DELETE: Integer;
    function Get_asWAPPUSH_ACTION_EXECUTE_LOW: Integer;
    function Get_asWAPPUSH_ACTION_EXECUTE_HIGH: Integer;
    function Get_asWAPPUSH_ACTION_CACHE: Integer;
    function Get_asDEVICESETTINGS_DEFAULT: Integer;
    function Get_asDEVICESETTINGS_8N1: Integer;
    function Get_asDEVICESETTINGS_7E1: Integer;
    function Get_asSMPPCHARSET_DEFAULT: Integer;
    function Get_asSMPPCHARSET_GSM: Integer;
    function Get_asSMPPCHARSET_ASCII: Integer;
    function Get_asSMPPCHARSET_LATIN: Integer;
    function Get_asSMPPCHARSET_JIS: Integer;
    function Get_asSMPPCHARSET_CYRILLIC: Integer;
    function Get_asSMPPCHARSET_HEBREW: Integer;
    function Get_asSMPPCHARSET_JAPANESE: Integer;
    function Get_asSMPPCHARSET_GREEK: Integer;
    function Get_asSTORAGE_ALL: Integer;
    function Get_asSTORAGE_SIM: Integer;
    function Get_asSTORAGE_DEVICE: Integer;
    function Get_asSTORAGE_COMBINED: Integer;
    function Get_asSTORAGE_REPORTS: Integer;
    function Get_asDEVICEFLOWCONTROL_DEFAULT: Integer;
    function Get_asDEVICEFLOWCONTROL_ENABLE: Integer;
    function Get_asDEVICEFLOWCONTROL_DISABLE: Integer;
    function Get_asMMS_CLASS_ADVERTISEMENT: Integer;
    function Get_asMMS_CLASS_INFORMATIONAL: Integer;
    function Get_asMMS_CLASS_AUTO: Integer;
    function Get_asMMS_CLASS_PERSONAL: Integer;
    function Get_asSMPPDELIVERYREPORTFORMAT_HEX: Integer;
    function Get_asSMPPDELIVERYREPORTFORMAT_DEC: Integer;
  public
    property DefaultInterface: ISmsConstants read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoSmsProtocolHttp provides a Create and CreateRemote method to          
// create instances of the default interface ISmsProtocolHttp exposed by              
// the CoClass SmsProtocolHttp. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSmsProtocolHttp = class
    class function Create: ISmsProtocolHttp;
    class function CreateRemote(const MachineName: string): ISmsProtocolHttp;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TSmsProtocolHttp
// Help String      : SmsProtocolHttp Class
// Default Interface: ISmsProtocolHttp
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TSmsProtocolHttpProperties= class;
{$ENDIF}
  TSmsProtocolHttp = class(TOleServer)
  private
    FIntf:        ISmsProtocolHttp;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TSmsProtocolHttpProperties;
    function      GetServerProperties: TSmsProtocolHttpProperties;
{$ENDIF}
    function      GetDefaultInterface: ISmsProtocolHttp;
  protected
    procedure InitServerData; override;
    function Get_LastError: Integer;
    function Get_Version: WideString;
    function Get_Build: WideString;
    function Get_ExpirationDate: WideString;
    procedure Set_Reserved(Param1: Integer);
    function Get_LogFile: WideString;
    procedure Set_LogFile(const pVal: WideString);
    function Get_ActivityFile: WideString;
    procedure Set_ActivityFile(const pVal: WideString);
    procedure Set_DistributionID(const Param1: WideString);
    procedure Set_DistributionKey(const Param1: WideString);
    function Get_Module: WideString;
    function Get_ProviderHost: WideString;
    procedure Set_ProviderHost(const pVal: WideString);
    function Get_ProviderPort: Integer;
    procedure Set_ProviderPort(pVal: Integer);
    function Get_ProviderWebAccount: WideString;
    procedure Set_ProviderWebAccount(const pVal: WideString);
    function Get_ProviderWebPassword: WideString;
    procedure Set_ProviderWebPassword(const pVal: WideString);
    function Get_ProviderUseSSL: Integer;
    procedure Set_ProviderUseSSL(pVal: Integer);
    function Get_ProviderCharset: Integer;
    procedure Set_ProviderCharset(pVal: Integer);
    function Get_ProviderResponse: WideString;
    function Get_ProviderSuccessResponse: WideString;
    procedure Set_ProviderSuccessResponse(const pVal: WideString);
    function Get_ProviderErrorResponse: WideString;
    procedure Set_ProviderErrorResponse(const pVal: WideString);
    function Get_ProxyServer: WideString;
    procedure Set_ProxyServer(const pVal: WideString);
    function Get_ProxyPort: Integer;
    procedure Set_ProxyPort(pVal: Integer);
    function Get_ProxyAccount: WideString;
    procedure Set_ProxyAccount(const pVal: WideString);
    function Get_ProxyPassword: WideString;
    procedure Set_ProxyPassword(const pVal: WideString);
    function Get_URLText: WideString;
    procedure Set_URLText(const pVal: WideString);
    function Get_URLBinary: WideString;
    procedure Set_URLBinary(const pVal: WideString);
    function Get_URLUnicode: WideString;
    procedure Set_URLUnicode(const pVal: WideString);
    function Get_AdvancedSettings: WideString;
    procedure Set_AdvancedSettings(const pVal: WideString);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ISmsProtocolHttp);
    procedure Disconnect; override;
    procedure Clear;
    function GetErrorDescription(newVal: Integer): WideString;
    procedure Activate(const newVal: WideString; bPersistent: Integer);
    procedure Send(var pVariant: OleVariant);
    procedure ProviderLoadConfig(const bstrFileName: WideString);
    procedure ProviderSaveConfig(const bstrFileName: WideString);
    property DefaultInterface: ISmsProtocolHttp read GetDefaultInterface;
    property LastError: Integer read Get_LastError;
    property Version: WideString read Get_Version;
    property Build: WideString read Get_Build;
    property ExpirationDate: WideString read Get_ExpirationDate;
    property Reserved: Integer write Set_Reserved;
    property DistributionID: WideString write Set_DistributionID;
    property DistributionKey: WideString write Set_DistributionKey;
    property Module: WideString read Get_Module;
    property ProviderResponse: WideString read Get_ProviderResponse;
    property LogFile: WideString read Get_LogFile write Set_LogFile;
    property ActivityFile: WideString read Get_ActivityFile write Set_ActivityFile;
    property ProviderHost: WideString read Get_ProviderHost write Set_ProviderHost;
    property ProviderPort: Integer read Get_ProviderPort write Set_ProviderPort;
    property ProviderWebAccount: WideString read Get_ProviderWebAccount write Set_ProviderWebAccount;
    property ProviderWebPassword: WideString read Get_ProviderWebPassword write Set_ProviderWebPassword;
    property ProviderUseSSL: Integer read Get_ProviderUseSSL write Set_ProviderUseSSL;
    property ProviderCharset: Integer read Get_ProviderCharset write Set_ProviderCharset;
    property ProviderSuccessResponse: WideString read Get_ProviderSuccessResponse write Set_ProviderSuccessResponse;
    property ProviderErrorResponse: WideString read Get_ProviderErrorResponse write Set_ProviderErrorResponse;
    property ProxyServer: WideString read Get_ProxyServer write Set_ProxyServer;
    property ProxyPort: Integer read Get_ProxyPort write Set_ProxyPort;
    property ProxyAccount: WideString read Get_ProxyAccount write Set_ProxyAccount;
    property ProxyPassword: WideString read Get_ProxyPassword write Set_ProxyPassword;
    property URLText: WideString read Get_URLText write Set_URLText;
    property URLBinary: WideString read Get_URLBinary write Set_URLBinary;
    property URLUnicode: WideString read Get_URLUnicode write Set_URLUnicode;
    property AdvancedSettings: WideString read Get_AdvancedSettings write Set_AdvancedSettings;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TSmsProtocolHttpProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TSmsProtocolHttp
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TSmsProtocolHttpProperties = class(TPersistent)
  private
    FServer:    TSmsProtocolHttp;
    function    GetDefaultInterface: ISmsProtocolHttp;
    constructor Create(AServer: TSmsProtocolHttp);
  protected
    function Get_LastError: Integer;
    function Get_Version: WideString;
    function Get_Build: WideString;
    function Get_ExpirationDate: WideString;
    procedure Set_Reserved(Param1: Integer);
    function Get_LogFile: WideString;
    procedure Set_LogFile(const pVal: WideString);
    function Get_ActivityFile: WideString;
    procedure Set_ActivityFile(const pVal: WideString);
    procedure Set_DistributionID(const Param1: WideString);
    procedure Set_DistributionKey(const Param1: WideString);
    function Get_Module: WideString;
    function Get_ProviderHost: WideString;
    procedure Set_ProviderHost(const pVal: WideString);
    function Get_ProviderPort: Integer;
    procedure Set_ProviderPort(pVal: Integer);
    function Get_ProviderWebAccount: WideString;
    procedure Set_ProviderWebAccount(const pVal: WideString);
    function Get_ProviderWebPassword: WideString;
    procedure Set_ProviderWebPassword(const pVal: WideString);
    function Get_ProviderUseSSL: Integer;
    procedure Set_ProviderUseSSL(pVal: Integer);
    function Get_ProviderCharset: Integer;
    procedure Set_ProviderCharset(pVal: Integer);
    function Get_ProviderResponse: WideString;
    function Get_ProviderSuccessResponse: WideString;
    procedure Set_ProviderSuccessResponse(const pVal: WideString);
    function Get_ProviderErrorResponse: WideString;
    procedure Set_ProviderErrorResponse(const pVal: WideString);
    function Get_ProxyServer: WideString;
    procedure Set_ProxyServer(const pVal: WideString);
    function Get_ProxyPort: Integer;
    procedure Set_ProxyPort(pVal: Integer);
    function Get_ProxyAccount: WideString;
    procedure Set_ProxyAccount(const pVal: WideString);
    function Get_ProxyPassword: WideString;
    procedure Set_ProxyPassword(const pVal: WideString);
    function Get_URLText: WideString;
    procedure Set_URLText(const pVal: WideString);
    function Get_URLBinary: WideString;
    procedure Set_URLBinary(const pVal: WideString);
    function Get_URLUnicode: WideString;
    procedure Set_URLUnicode(const pVal: WideString);
    function Get_AdvancedSettings: WideString;
    procedure Set_AdvancedSettings(const pVal: WideString);
  public
    property DefaultInterface: ISmsProtocolHttp read GetDefaultInterface;
  published
    property LogFile: WideString read Get_LogFile write Set_LogFile;
    property ActivityFile: WideString read Get_ActivityFile write Set_ActivityFile;
    property ProviderHost: WideString read Get_ProviderHost write Set_ProviderHost;
    property ProviderPort: Integer read Get_ProviderPort write Set_ProviderPort;
    property ProviderWebAccount: WideString read Get_ProviderWebAccount write Set_ProviderWebAccount;
    property ProviderWebPassword: WideString read Get_ProviderWebPassword write Set_ProviderWebPassword;
    property ProviderUseSSL: Integer read Get_ProviderUseSSL write Set_ProviderUseSSL;
    property ProviderCharset: Integer read Get_ProviderCharset write Set_ProviderCharset;
    property ProviderSuccessResponse: WideString read Get_ProviderSuccessResponse write Set_ProviderSuccessResponse;
    property ProviderErrorResponse: WideString read Get_ProviderErrorResponse write Set_ProviderErrorResponse;
    property ProxyServer: WideString read Get_ProxyServer write Set_ProxyServer;
    property ProxyPort: Integer read Get_ProxyPort write Set_ProxyPort;
    property ProxyAccount: WideString read Get_ProxyAccount write Set_ProxyAccount;
    property ProxyPassword: WideString read Get_ProxyPassword write Set_ProxyPassword;
    property URLText: WideString read Get_URLText write Set_URLText;
    property URLBinary: WideString read Get_URLBinary write Set_URLBinary;
    property URLUnicode: WideString read Get_URLUnicode write Set_URLUnicode;
    property AdvancedSettings: WideString read Get_AdvancedSettings write Set_AdvancedSettings;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoSmsProtocolDialup provides a Create and CreateRemote method to          
// create instances of the default interface ISmsProtocolDialup exposed by              
// the CoClass SmsProtocolDialup. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSmsProtocolDialup = class
    class function Create: ISmsProtocolDialup;
    class function CreateRemote(const MachineName: string): ISmsProtocolDialup;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TSmsProtocolDialup
// Help String      : SmsDialupProtocol Class
// Default Interface: ISmsProtocolDialup
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TSmsProtocolDialupProperties= class;
{$ENDIF}
  TSmsProtocolDialup = class(TOleServer)
  private
    FIntf:        ISmsProtocolDialup;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TSmsProtocolDialupProperties;
    function      GetServerProperties: TSmsProtocolDialupProperties;
{$ENDIF}
    function      GetDefaultInterface: ISmsProtocolDialup;
  protected
    procedure InitServerData; override;
    function Get_LastError: Integer;
    function Get_Version: WideString;
    function Get_Build: WideString;
    function Get_ExpirationDate: WideString;
    procedure Set_Reserved(Param1: Integer);
    function Get_LogFile: WideString;
    procedure Set_LogFile(const pVal: WideString);
    function Get_ActivityFile: WideString;
    procedure Set_ActivityFile(const pVal: WideString);
    procedure Set_DistributionID(const Param1: WideString);
    procedure Set_DistributionKey(const Param1: WideString);
    function Get_Module: WideString;
    function Get_Device: WideString;
    procedure Set_Device(const pVal: WideString);
    function Get_DeviceSpeed: Integer;
    procedure Set_DeviceSpeed(pVal: Integer);
    function Get_DeviceSettings: Integer;
    procedure Set_DeviceSettings(pVal: Integer);
    function Get_DeviceInitString: WideString;
    procedure Set_DeviceInitString(const pVal: WideString);
    function Get_DeviceFlowControl: Integer;
    procedure Set_DeviceFlowControl(pVal: Integer);
    function Get_DialMode: Integer;
    procedure Set_DialMode(pVal: Integer);
    function Get_ProviderDialString: WideString;
    procedure Set_ProviderDialString(const pVal: WideString);
    function Get_ProviderPassword: WideString;
    procedure Set_ProviderPassword(const pVal: WideString);
    function Get_ProviderType: Integer;
    procedure Set_ProviderType(pVal: Integer);
    function Get_ProviderResponse: WideString;
    function Get_AdvancedSettings: WideString;
    procedure Set_AdvancedSettings(const pVal: WideString);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ISmsProtocolDialup);
    procedure Disconnect; override;
    procedure Clear;
    function GetErrorDescription(newVal: Integer): WideString;
    procedure Activate(const newVal: WideString; bPersistent: Integer);
    function GetDeviceCount: Integer;
    function GetDevice(lIndex: Integer): WideString;
    procedure Send(var pMessage: OleVariant);
    procedure ProviderLoadConfig(const bstrFileName: WideString);
    procedure ProviderSaveConfig(const bstrFileName: WideString);
    property DefaultInterface: ISmsProtocolDialup read GetDefaultInterface;
    property LastError: Integer read Get_LastError;
    property Version: WideString read Get_Version;
    property Build: WideString read Get_Build;
    property ExpirationDate: WideString read Get_ExpirationDate;
    property Reserved: Integer write Set_Reserved;
    property DistributionID: WideString write Set_DistributionID;
    property DistributionKey: WideString write Set_DistributionKey;
    property Module: WideString read Get_Module;
    property ProviderResponse: WideString read Get_ProviderResponse;
    property LogFile: WideString read Get_LogFile write Set_LogFile;
    property ActivityFile: WideString read Get_ActivityFile write Set_ActivityFile;
    property Device: WideString read Get_Device write Set_Device;
    property DeviceSpeed: Integer read Get_DeviceSpeed write Set_DeviceSpeed;
    property DeviceSettings: Integer read Get_DeviceSettings write Set_DeviceSettings;
    property DeviceInitString: WideString read Get_DeviceInitString write Set_DeviceInitString;
    property DeviceFlowControl: Integer read Get_DeviceFlowControl write Set_DeviceFlowControl;
    property DialMode: Integer read Get_DialMode write Set_DialMode;
    property ProviderDialString: WideString read Get_ProviderDialString write Set_ProviderDialString;
    property ProviderPassword: WideString read Get_ProviderPassword write Set_ProviderPassword;
    property ProviderType: Integer read Get_ProviderType write Set_ProviderType;
    property AdvancedSettings: WideString read Get_AdvancedSettings write Set_AdvancedSettings;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TSmsProtocolDialupProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TSmsProtocolDialup
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TSmsProtocolDialupProperties = class(TPersistent)
  private
    FServer:    TSmsProtocolDialup;
    function    GetDefaultInterface: ISmsProtocolDialup;
    constructor Create(AServer: TSmsProtocolDialup);
  protected
    function Get_LastError: Integer;
    function Get_Version: WideString;
    function Get_Build: WideString;
    function Get_ExpirationDate: WideString;
    procedure Set_Reserved(Param1: Integer);
    function Get_LogFile: WideString;
    procedure Set_LogFile(const pVal: WideString);
    function Get_ActivityFile: WideString;
    procedure Set_ActivityFile(const pVal: WideString);
    procedure Set_DistributionID(const Param1: WideString);
    procedure Set_DistributionKey(const Param1: WideString);
    function Get_Module: WideString;
    function Get_Device: WideString;
    procedure Set_Device(const pVal: WideString);
    function Get_DeviceSpeed: Integer;
    procedure Set_DeviceSpeed(pVal: Integer);
    function Get_DeviceSettings: Integer;
    procedure Set_DeviceSettings(pVal: Integer);
    function Get_DeviceInitString: WideString;
    procedure Set_DeviceInitString(const pVal: WideString);
    function Get_DeviceFlowControl: Integer;
    procedure Set_DeviceFlowControl(pVal: Integer);
    function Get_DialMode: Integer;
    procedure Set_DialMode(pVal: Integer);
    function Get_ProviderDialString: WideString;
    procedure Set_ProviderDialString(const pVal: WideString);
    function Get_ProviderPassword: WideString;
    procedure Set_ProviderPassword(const pVal: WideString);
    function Get_ProviderType: Integer;
    procedure Set_ProviderType(pVal: Integer);
    function Get_ProviderResponse: WideString;
    function Get_AdvancedSettings: WideString;
    procedure Set_AdvancedSettings(const pVal: WideString);
  public
    property DefaultInterface: ISmsProtocolDialup read GetDefaultInterface;
  published
    property LogFile: WideString read Get_LogFile write Set_LogFile;
    property ActivityFile: WideString read Get_ActivityFile write Set_ActivityFile;
    property Device: WideString read Get_Device write Set_Device;
    property DeviceSpeed: Integer read Get_DeviceSpeed write Set_DeviceSpeed;
    property DeviceSettings: Integer read Get_DeviceSettings write Set_DeviceSettings;
    property DeviceInitString: WideString read Get_DeviceInitString write Set_DeviceInitString;
    property DeviceFlowControl: Integer read Get_DeviceFlowControl write Set_DeviceFlowControl;
    property DialMode: Integer read Get_DialMode write Set_DialMode;
    property ProviderDialString: WideString read Get_ProviderDialString write Set_ProviderDialString;
    property ProviderPassword: WideString read Get_ProviderPassword write Set_ProviderPassword;
    property ProviderType: Integer read Get_ProviderType write Set_ProviderType;
    property AdvancedSettings: WideString read Get_AdvancedSettings write Set_AdvancedSettings;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoPagerProtocolSnpp provides a Create and CreateRemote method to          
// create instances of the default interface IPagerProtocolSnpp exposed by              
// the CoClass PagerProtocolSnpp. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPagerProtocolSnpp = class
    class function Create: IPagerProtocolSnpp;
    class function CreateRemote(const MachineName: string): IPagerProtocolSnpp;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TPagerProtocolSnpp
// Help String      : PagerProtocolSnpp Class
// Default Interface: IPagerProtocolSnpp
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TPagerProtocolSnppProperties= class;
{$ENDIF}
  TPagerProtocolSnpp = class(TOleServer)
  private
    FIntf:        IPagerProtocolSnpp;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TPagerProtocolSnppProperties;
    function      GetServerProperties: TPagerProtocolSnppProperties;
{$ENDIF}
    function      GetDefaultInterface: IPagerProtocolSnpp;
  protected
    procedure InitServerData; override;
    function Get_LastError: Integer;
    function Get_Version: WideString;
    function Get_Build: WideString;
    function Get_ExpirationDate: WideString;
    procedure Set_Reserved(Param1: Integer);
    function Get_LogFile: WideString;
    procedure Set_LogFile(const pVal: WideString);
    procedure Set_DistributionID(const Param1: WideString);
    procedure Set_DistributionKey(const Param1: WideString);
    function Get_Module: WideString;
    function Get_Server: WideString;
    procedure Set_Server(const pVal: WideString);
    function Get_ServerPort: Integer;
    procedure Set_ServerPort(pVal: Integer);
    function Get_ServerTimeout: Integer;
    procedure Set_ServerTimeout(pVal: Integer);
    function Get_ProviderPassword: WideString;
    procedure Set_ProviderPassword(const pVal: WideString);
    function Get_ProviderResponse: WideString;
    function Get_AdvancedSettings: WideString;
    procedure Set_AdvancedSettings(const pVal: WideString);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IPagerProtocolSnpp);
    procedure Disconnect; override;
    procedure Clear;
    function GetErrorDescription(newVal: Integer): WideString;
    procedure Activate(const newVal: WideString; bPersistent: Integer);
    procedure Send(var pVariant: OleVariant);
    property DefaultInterface: IPagerProtocolSnpp read GetDefaultInterface;
    property LastError: Integer read Get_LastError;
    property Version: WideString read Get_Version;
    property Build: WideString read Get_Build;
    property ExpirationDate: WideString read Get_ExpirationDate;
    property Reserved: Integer write Set_Reserved;
    property DistributionID: WideString write Set_DistributionID;
    property DistributionKey: WideString write Set_DistributionKey;
    property Module: WideString read Get_Module;
    property ProviderResponse: WideString read Get_ProviderResponse;
    property LogFile: WideString read Get_LogFile write Set_LogFile;
    property Server: WideString read Get_Server write Set_Server;
    property ServerPort: Integer read Get_ServerPort write Set_ServerPort;
    property ServerTimeout: Integer read Get_ServerTimeout write Set_ServerTimeout;
    property ProviderPassword: WideString read Get_ProviderPassword write Set_ProviderPassword;
    property AdvancedSettings: WideString read Get_AdvancedSettings write Set_AdvancedSettings;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TPagerProtocolSnppProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TPagerProtocolSnpp
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TPagerProtocolSnppProperties = class(TPersistent)
  private
    FServer:    TPagerProtocolSnpp;
    function    GetDefaultInterface: IPagerProtocolSnpp;
    constructor Create(AServer: TPagerProtocolSnpp);
  protected
    function Get_LastError: Integer;
    function Get_Version: WideString;
    function Get_Build: WideString;
    function Get_ExpirationDate: WideString;
    procedure Set_Reserved(Param1: Integer);
    function Get_LogFile: WideString;
    procedure Set_LogFile(const pVal: WideString);
    procedure Set_DistributionID(const Param1: WideString);
    procedure Set_DistributionKey(const Param1: WideString);
    function Get_Module: WideString;
    function Get_Server: WideString;
    procedure Set_Server(const pVal: WideString);
    function Get_ServerPort: Integer;
    procedure Set_ServerPort(pVal: Integer);
    function Get_ServerTimeout: Integer;
    procedure Set_ServerTimeout(pVal: Integer);
    function Get_ProviderPassword: WideString;
    procedure Set_ProviderPassword(const pVal: WideString);
    function Get_ProviderResponse: WideString;
    function Get_AdvancedSettings: WideString;
    procedure Set_AdvancedSettings(const pVal: WideString);
  public
    property DefaultInterface: IPagerProtocolSnpp read GetDefaultInterface;
  published
    property LogFile: WideString read Get_LogFile write Set_LogFile;
    property Server: WideString read Get_Server write Set_Server;
    property ServerPort: Integer read Get_ServerPort write Set_ServerPort;
    property ServerTimeout: Integer read Get_ServerTimeout write Set_ServerTimeout;
    property ProviderPassword: WideString read Get_ProviderPassword write Set_ProviderPassword;
    property AdvancedSettings: WideString read Get_AdvancedSettings write Set_AdvancedSettings;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoSmsDataWapBookmark provides a Create and CreateRemote method to          
// create instances of the default interface ISmsDataWapBookmark exposed by              
// the CoClass SmsDataWapBookmark. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSmsDataWapBookmark = class
    class function Create: ISmsDataWapBookmark;
    class function CreateRemote(const MachineName: string): ISmsDataWapBookmark;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TSmsDataWapBookmark
// Help String      : SmsDataWapBookmark Class
// Default Interface: ISmsDataWapBookmark
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TSmsDataWapBookmarkProperties= class;
{$ENDIF}
  TSmsDataWapBookmark = class(TOleServer)
  private
    FIntf:        ISmsDataWapBookmark;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TSmsDataWapBookmarkProperties;
    function      GetServerProperties: TSmsDataWapBookmarkProperties;
{$ENDIF}
    function      GetDefaultInterface: ISmsDataWapBookmark;
  protected
    procedure InitServerData; override;
    function Get_LastError: Integer;
    function Get_Version: WideString;
    function Get_Build: WideString;
    function Get_ExpirationDate: WideString;
    procedure Set_Reserved(Param1: Integer);
    procedure Set_DistributionID(const Param1: WideString);
    procedure Set_DistributionKey(const Param1: WideString);
    function Get_Module: WideString;
    function Get_Description: WideString;
    procedure Set_Description(const pVal: WideString);
    function Get_URL: WideString;
    procedure Set_URL(const pVal: WideString);
    function Get_EncodedMessage: WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ISmsDataWapBookmark);
    procedure Disconnect; override;
    procedure Clear;
    function GetErrorDescription(newVal: Integer): WideString;
    procedure Activate(const newVal: WideString; bPersistent: Integer);
    procedure Encode;
    property DefaultInterface: ISmsDataWapBookmark read GetDefaultInterface;
    property LastError: Integer read Get_LastError;
    property Version: WideString read Get_Version;
    property Build: WideString read Get_Build;
    property ExpirationDate: WideString read Get_ExpirationDate;
    property Reserved: Integer write Set_Reserved;
    property DistributionID: WideString write Set_DistributionID;
    property DistributionKey: WideString write Set_DistributionKey;
    property Module: WideString read Get_Module;
    property EncodedMessage: WideString read Get_EncodedMessage;
    property Description: WideString read Get_Description write Set_Description;
    property URL: WideString read Get_URL write Set_URL;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TSmsDataWapBookmarkProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TSmsDataWapBookmark
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TSmsDataWapBookmarkProperties = class(TPersistent)
  private
    FServer:    TSmsDataWapBookmark;
    function    GetDefaultInterface: ISmsDataWapBookmark;
    constructor Create(AServer: TSmsDataWapBookmark);
  protected
    function Get_LastError: Integer;
    function Get_Version: WideString;
    function Get_Build: WideString;
    function Get_ExpirationDate: WideString;
    procedure Set_Reserved(Param1: Integer);
    procedure Set_DistributionID(const Param1: WideString);
    procedure Set_DistributionKey(const Param1: WideString);
    function Get_Module: WideString;
    function Get_Description: WideString;
    procedure Set_Description(const pVal: WideString);
    function Get_URL: WideString;
    procedure Set_URL(const pVal: WideString);
    function Get_EncodedMessage: WideString;
  public
    property DefaultInterface: ISmsDataWapBookmark read GetDefaultInterface;
  published
    property Description: WideString read Get_Description write Set_Description;
    property URL: WideString read Get_URL write Set_URL;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoSmsDataWapPush provides a Create and CreateRemote method to          
// create instances of the default interface ISmsDataWapPush exposed by              
// the CoClass SmsDataWapPush. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSmsDataWapPush = class
    class function Create: ISmsDataWapPush;
    class function CreateRemote(const MachineName: string): ISmsDataWapPush;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TSmsDataWapPush
// Help String      : SmsDataWapPush Class
// Default Interface: ISmsDataWapPush
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TSmsDataWapPushProperties= class;
{$ENDIF}
  TSmsDataWapPush = class(TOleServer)
  private
    FIntf:        ISmsDataWapPush;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TSmsDataWapPushProperties;
    function      GetServerProperties: TSmsDataWapPushProperties;
{$ENDIF}
    function      GetDefaultInterface: ISmsDataWapPush;
  protected
    procedure InitServerData; override;
    function Get_LastError: Integer;
    function Get_Version: WideString;
    function Get_Build: WideString;
    function Get_ExpirationDate: WideString;
    procedure Set_Reserved(Param1: Integer);
    procedure Set_DistributionID(const Param1: WideString);
    procedure Set_DistributionKey(const Param1: WideString);
    function Get_Module: WideString;
    function Get_SignalReference: WideString;
    procedure Set_SignalReference(const pVal: WideString);
    function Get_SignalAction: Integer;
    procedure Set_SignalAction(pVal: Integer);
    function Get_Description: WideString;
    procedure Set_Description(const pVal: WideString);
    function Get_URL: WideString;
    procedure Set_URL(const pVal: WideString);
    function Get_ConnectionType: Integer;
    procedure Set_ConnectionType(pVal: Integer);
    function Get_ExecuteAction: Integer;
    procedure Set_ExecuteAction(pVal: Integer);
    function Get_EncodedMessage: WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ISmsDataWapPush);
    procedure Disconnect; override;
    procedure Clear;
    function GetErrorDescription(newVal: Integer): WideString;
    procedure Activate(const newVal: WideString; bPersistent: Integer);
    procedure Encode;
    property DefaultInterface: ISmsDataWapPush read GetDefaultInterface;
    property LastError: Integer read Get_LastError;
    property Version: WideString read Get_Version;
    property Build: WideString read Get_Build;
    property ExpirationDate: WideString read Get_ExpirationDate;
    property Reserved: Integer write Set_Reserved;
    property DistributionID: WideString write Set_DistributionID;
    property DistributionKey: WideString write Set_DistributionKey;
    property Module: WideString read Get_Module;
    property EncodedMessage: WideString read Get_EncodedMessage;
    property SignalReference: WideString read Get_SignalReference write Set_SignalReference;
    property SignalAction: Integer read Get_SignalAction write Set_SignalAction;
    property Description: WideString read Get_Description write Set_Description;
    property URL: WideString read Get_URL write Set_URL;
    property ConnectionType: Integer read Get_ConnectionType write Set_ConnectionType;
    property ExecuteAction: Integer read Get_ExecuteAction write Set_ExecuteAction;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TSmsDataWapPushProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TSmsDataWapPush
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TSmsDataWapPushProperties = class(TPersistent)
  private
    FServer:    TSmsDataWapPush;
    function    GetDefaultInterface: ISmsDataWapPush;
    constructor Create(AServer: TSmsDataWapPush);
  protected
    function Get_LastError: Integer;
    function Get_Version: WideString;
    function Get_Build: WideString;
    function Get_ExpirationDate: WideString;
    procedure Set_Reserved(Param1: Integer);
    procedure Set_DistributionID(const Param1: WideString);
    procedure Set_DistributionKey(const Param1: WideString);
    function Get_Module: WideString;
    function Get_SignalReference: WideString;
    procedure Set_SignalReference(const pVal: WideString);
    function Get_SignalAction: Integer;
    procedure Set_SignalAction(pVal: Integer);
    function Get_Description: WideString;
    procedure Set_Description(const pVal: WideString);
    function Get_URL: WideString;
    procedure Set_URL(const pVal: WideString);
    function Get_ConnectionType: Integer;
    procedure Set_ConnectionType(pVal: Integer);
    function Get_ExecuteAction: Integer;
    procedure Set_ExecuteAction(pVal: Integer);
    function Get_EncodedMessage: WideString;
  public
    property DefaultInterface: ISmsDataWapPush read GetDefaultInterface;
  published
    property SignalReference: WideString read Get_SignalReference write Set_SignalReference;
    property SignalAction: Integer read Get_SignalAction write Set_SignalAction;
    property Description: WideString read Get_Description write Set_Description;
    property URL: WideString read Get_URL write Set_URL;
    property ConnectionType: Integer read Get_ConnectionType write Set_ConnectionType;
    property ExecuteAction: Integer read Get_ExecuteAction write Set_ExecuteAction;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoSmsDeliveryStatus provides a Create and CreateRemote method to          
// create instances of the default interface ISmsDeliveryStatus exposed by              
// the CoClass SmsDeliveryStatus. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSmsDeliveryStatus = class
    class function Create: ISmsDeliveryStatus;
    class function CreateRemote(const MachineName: string): ISmsDeliveryStatus;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TSmsDeliveryStatus
// Help String      : SmsDeliveryStatus Class
// Default Interface: ISmsDeliveryStatus
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TSmsDeliveryStatusProperties= class;
{$ENDIF}
  TSmsDeliveryStatus = class(TOleServer)
  private
    FIntf:        ISmsDeliveryStatus;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TSmsDeliveryStatusProperties;
    function      GetServerProperties: TSmsDeliveryStatusProperties;
{$ENDIF}
    function      GetDefaultInterface: ISmsDeliveryStatus;
  protected
    procedure InitServerData; override;
    function Get_Status: Integer;
    procedure Set_Status(pVal: Integer);
    function Get_StatusCode: Integer;
    procedure Set_StatusCode(pVal: Integer);
    function Get_StatusCompletedTime: WideString;
    procedure Set_StatusCompletedTime(const pVal: WideString);
    function Get_StatusCompletedTimeSecs: Integer;
    procedure Set_StatusCompletedTimeSecs(pVal: Integer);
    function Get_IsCompleted: Integer;
    procedure Set_IsCompleted(pVal: Integer);
    function Get_StatusDescription: WideString;
    function Get_ProviderReference: WideString;
    procedure Set_ProviderReference(const pVal: WideString);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ISmsDeliveryStatus);
    procedure Disconnect; override;
    property DefaultInterface: ISmsDeliveryStatus read GetDefaultInterface;
    property StatusDescription: WideString read Get_StatusDescription;
    property Status: Integer read Get_Status write Set_Status;
    property StatusCode: Integer read Get_StatusCode write Set_StatusCode;
    property StatusCompletedTime: WideString read Get_StatusCompletedTime write Set_StatusCompletedTime;
    property StatusCompletedTimeSecs: Integer read Get_StatusCompletedTimeSecs write Set_StatusCompletedTimeSecs;
    property IsCompleted: Integer read Get_IsCompleted write Set_IsCompleted;
    property ProviderReference: WideString read Get_ProviderReference write Set_ProviderReference;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TSmsDeliveryStatusProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TSmsDeliveryStatus
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TSmsDeliveryStatusProperties = class(TPersistent)
  private
    FServer:    TSmsDeliveryStatus;
    function    GetDefaultInterface: ISmsDeliveryStatus;
    constructor Create(AServer: TSmsDeliveryStatus);
  protected
    function Get_Status: Integer;
    procedure Set_Status(pVal: Integer);
    function Get_StatusCode: Integer;
    procedure Set_StatusCode(pVal: Integer);
    function Get_StatusCompletedTime: WideString;
    procedure Set_StatusCompletedTime(const pVal: WideString);
    function Get_StatusCompletedTimeSecs: Integer;
    procedure Set_StatusCompletedTimeSecs(pVal: Integer);
    function Get_IsCompleted: Integer;
    procedure Set_IsCompleted(pVal: Integer);
    function Get_StatusDescription: WideString;
    function Get_ProviderReference: WideString;
    procedure Set_ProviderReference(const pVal: WideString);
  public
    property DefaultInterface: ISmsDeliveryStatus read GetDefaultInterface;
  published
    property Status: Integer read Get_Status write Set_Status;
    property StatusCode: Integer read Get_StatusCode write Set_StatusCode;
    property StatusCompletedTime: WideString read Get_StatusCompletedTime write Set_StatusCompletedTime;
    property StatusCompletedTimeSecs: Integer read Get_StatusCompletedTimeSecs write Set_StatusCompletedTimeSecs;
    property IsCompleted: Integer read Get_IsCompleted write Set_IsCompleted;
    property ProviderReference: WideString read Get_ProviderReference write Set_ProviderReference;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoPagerMessage provides a Create and CreateRemote method to          
// create instances of the default interface IPagerMessage exposed by              
// the CoClass PagerMessage. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPagerMessage = class
    class function Create: IPagerMessage;
    class function CreateRemote(const MachineName: string): IPagerMessage;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TPagerMessage
// Help String      : PagerMessage Class
// Default Interface: IPagerMessage
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TPagerMessageProperties= class;
{$ENDIF}
  TPagerMessage = class(TOleServer)
  private
    FIntf:        IPagerMessage;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TPagerMessageProperties;
    function      GetServerProperties: TPagerMessageProperties;
{$ENDIF}
    function      GetDefaultInterface: IPagerMessage;
  protected
    procedure InitServerData; override;
    function Get_Recipient: WideString;
    procedure Set_Recipient(const pVal: WideString);
    function Get_Data: WideString;
    procedure Set_Data(const pVal: WideString);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IPagerMessage);
    procedure Disconnect; override;
    procedure Clear;
    property DefaultInterface: IPagerMessage read GetDefaultInterface;
    property Recipient: WideString read Get_Recipient write Set_Recipient;
    property Data: WideString read Get_Data write Set_Data;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TPagerMessageProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TPagerMessage
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TPagerMessageProperties = class(TPersistent)
  private
    FServer:    TPagerMessage;
    function    GetDefaultInterface: IPagerMessage;
    constructor Create(AServer: TPagerMessage);
  protected
    function Get_Recipient: WideString;
    procedure Set_Recipient(const pVal: WideString);
    function Get_Data: WideString;
    procedure Set_Data(const pVal: WideString);
  public
    property DefaultInterface: IPagerMessage read GetDefaultInterface;
  published
    property Recipient: WideString read Get_Recipient write Set_Recipient;
    property Data: WideString read Get_Data write Set_Data;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoMmsProtocolMm1 provides a Create and CreateRemote method to          
// create instances of the default interface IMmsProtocolMm1 exposed by              
// the CoClass MmsProtocolMm1. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMmsProtocolMm1 = class
    class function Create: IMmsProtocolMm1;
    class function CreateRemote(const MachineName: string): IMmsProtocolMm1;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TMmsProtocolMm1
// Help String      : MmsProtocolMm1 Class
// Default Interface: IMmsProtocolMm1
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TMmsProtocolMm1Properties= class;
{$ENDIF}
  TMmsProtocolMm1 = class(TOleServer)
  private
    FIntf:        IMmsProtocolMm1;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TMmsProtocolMm1Properties;
    function      GetServerProperties: TMmsProtocolMm1Properties;
{$ENDIF}
    function      GetDefaultInterface: IMmsProtocolMm1;
  protected
    procedure InitServerData; override;
    function Get_LastError: Integer;
    function Get_Version: WideString;
    function Get_Build: WideString;
    function Get_ExpirationDate: WideString;
    procedure Set_Reserved(Param1: Integer);
    function Get_LogFile: WideString;
    procedure Set_LogFile(const pVal: WideString);
    function Get_ActivityFile: WideString;
    procedure Set_ActivityFile(const pVal: WideString);
    procedure Set_DistributionID(const Param1: WideString);
    procedure Set_DistributionKey(const Param1: WideString);
    function Get_Module: WideString;
    procedure Set_Device(const pVal: WideString);
    function Get_Device: WideString;
    function Get_ProviderAPN: WideString;
    procedure Set_ProviderAPN(const pVal: WideString);
    function Get_ProviderAPNAccount: WideString;
    procedure Set_ProviderAPNAccount(const pVal: WideString);
    function Get_ProviderAPNPassword: WideString;
    procedure Set_ProviderAPNPassword(const pVal: WideString);
    function Get_ProviderWAPGateway: WideString;
    procedure Set_ProviderWAPGateway(const pVal: WideString);
    function Get_ProviderMMSC: WideString;
    procedure Set_ProviderMMSC(const pVal: WideString);
    function Get_ProviderMessageSizeLimit: Integer;
    procedure Set_ProviderMessageSizeLimit(pVal: Integer);
    function Get_AdvancedSettings: WideString;
    procedure Set_AdvancedSettings(const pVal: WideString);
    function Get_ProviderResponse: WideString;
    function Get_MessageId: WideString;
    function Get_ProvidersFolder: WideString;
    function Get_ProviderTimeout: Integer;
    procedure Set_ProviderTimeout(pVal: Integer);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IMmsProtocolMm1);
    procedure Disconnect; override;
    procedure Clear;
    function GetErrorDescription(newVal: Integer): WideString;
    procedure Activate(const newVal: WideString; bPersistent: Integer);
    procedure Connect1;
    procedure Disconnect1;
    procedure Send(var pVal: OleVariant);
    function GetDeviceCount: Integer;
    function GetDevice(lDevice: Integer): WideString;
    procedure ProviderSaveConfig(const bstrFile: WideString);
    procedure ProviderLoadConfig(const bstrFile: WideString);
    procedure EnterPin(const bstrPinCode: WideString);
    function SendCommand(const bstrCommand: WideString; lTimeout: Integer): WideString;
    function Retrieve(const bstrContentLocation: WideString): OleVariant;
    function GetFirstMessage: OleVariant;
    function GetNextMessage: OleVariant;
    function CountReceivedMessages: Integer;
    function GetMessage(lIndex: Integer): OleVariant;
    property DefaultInterface: IMmsProtocolMm1 read GetDefaultInterface;
    property LastError: Integer read Get_LastError;
    property Version: WideString read Get_Version;
    property Build: WideString read Get_Build;
    property ExpirationDate: WideString read Get_ExpirationDate;
    property Reserved: Integer write Set_Reserved;
    property DistributionID: WideString write Set_DistributionID;
    property DistributionKey: WideString write Set_DistributionKey;
    property Module: WideString read Get_Module;
    property ProviderResponse: WideString read Get_ProviderResponse;
    property MessageId: WideString read Get_MessageId;
    property ProvidersFolder: WideString read Get_ProvidersFolder;
    property LogFile: WideString read Get_LogFile write Set_LogFile;
    property ActivityFile: WideString read Get_ActivityFile write Set_ActivityFile;
    property Device: WideString read Get_Device write Set_Device;
    property ProviderAPN: WideString read Get_ProviderAPN write Set_ProviderAPN;
    property ProviderAPNAccount: WideString read Get_ProviderAPNAccount write Set_ProviderAPNAccount;
    property ProviderAPNPassword: WideString read Get_ProviderAPNPassword write Set_ProviderAPNPassword;
    property ProviderWAPGateway: WideString read Get_ProviderWAPGateway write Set_ProviderWAPGateway;
    property ProviderMMSC: WideString read Get_ProviderMMSC write Set_ProviderMMSC;
    property ProviderMessageSizeLimit: Integer read Get_ProviderMessageSizeLimit write Set_ProviderMessageSizeLimit;
    property AdvancedSettings: WideString read Get_AdvancedSettings write Set_AdvancedSettings;
    property ProviderTimeout: Integer read Get_ProviderTimeout write Set_ProviderTimeout;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TMmsProtocolMm1Properties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TMmsProtocolMm1
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TMmsProtocolMm1Properties = class(TPersistent)
  private
    FServer:    TMmsProtocolMm1;
    function    GetDefaultInterface: IMmsProtocolMm1;
    constructor Create(AServer: TMmsProtocolMm1);
  protected
    function Get_LastError: Integer;
    function Get_Version: WideString;
    function Get_Build: WideString;
    function Get_ExpirationDate: WideString;
    procedure Set_Reserved(Param1: Integer);
    function Get_LogFile: WideString;
    procedure Set_LogFile(const pVal: WideString);
    function Get_ActivityFile: WideString;
    procedure Set_ActivityFile(const pVal: WideString);
    procedure Set_DistributionID(const Param1: WideString);
    procedure Set_DistributionKey(const Param1: WideString);
    function Get_Module: WideString;
    procedure Set_Device(const pVal: WideString);
    function Get_Device: WideString;
    function Get_ProviderAPN: WideString;
    procedure Set_ProviderAPN(const pVal: WideString);
    function Get_ProviderAPNAccount: WideString;
    procedure Set_ProviderAPNAccount(const pVal: WideString);
    function Get_ProviderAPNPassword: WideString;
    procedure Set_ProviderAPNPassword(const pVal: WideString);
    function Get_ProviderWAPGateway: WideString;
    procedure Set_ProviderWAPGateway(const pVal: WideString);
    function Get_ProviderMMSC: WideString;
    procedure Set_ProviderMMSC(const pVal: WideString);
    function Get_ProviderMessageSizeLimit: Integer;
    procedure Set_ProviderMessageSizeLimit(pVal: Integer);
    function Get_AdvancedSettings: WideString;
    procedure Set_AdvancedSettings(const pVal: WideString);
    function Get_ProviderResponse: WideString;
    function Get_MessageId: WideString;
    function Get_ProvidersFolder: WideString;
    function Get_ProviderTimeout: Integer;
    procedure Set_ProviderTimeout(pVal: Integer);
  public
    property DefaultInterface: IMmsProtocolMm1 read GetDefaultInterface;
  published
    property LogFile: WideString read Get_LogFile write Set_LogFile;
    property ActivityFile: WideString read Get_ActivityFile write Set_ActivityFile;
    property Device: WideString read Get_Device write Set_Device;
    property ProviderAPN: WideString read Get_ProviderAPN write Set_ProviderAPN;
    property ProviderAPNAccount: WideString read Get_ProviderAPNAccount write Set_ProviderAPNAccount;
    property ProviderAPNPassword: WideString read Get_ProviderAPNPassword write Set_ProviderAPNPassword;
    property ProviderWAPGateway: WideString read Get_ProviderWAPGateway write Set_ProviderWAPGateway;
    property ProviderMMSC: WideString read Get_ProviderMMSC write Set_ProviderMMSC;
    property ProviderMessageSizeLimit: Integer read Get_ProviderMessageSizeLimit write Set_ProviderMessageSizeLimit;
    property AdvancedSettings: WideString read Get_AdvancedSettings write Set_AdvancedSettings;
    property ProviderTimeout: Integer read Get_ProviderTimeout write Set_ProviderTimeout;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoMmsSlide provides a Create and CreateRemote method to          
// create instances of the default interface IMmsSlide exposed by              
// the CoClass MmsSlide. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMmsSlide = class
    class function Create: IMmsSlide;
    class function CreateRemote(const MachineName: string): IMmsSlide;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TMmsSlide
// Help String      : MmsSlide Class
// Default Interface: IMmsSlide
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TMmsSlideProperties= class;
{$ENDIF}
  TMmsSlide = class(TOleServer)
  private
    FIntf:        IMmsSlide;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TMmsSlideProperties;
    function      GetServerProperties: TMmsSlideProperties;
{$ENDIF}
    function      GetDefaultInterface: IMmsSlide;
  protected
    procedure InitServerData; override;
    function Get_LastError: Integer;
    function Get_Version: WideString;
    function Get_Build: WideString;
    function Get_ExpirationDate: WideString;
    procedure Set_Reserved(Param1: Integer);
    procedure Set_DistributionID(const Param1: WideString);
    procedure Set_DistributionKey(const Param1: WideString);
    function Get_Module: WideString;
    function Get_ID: Integer;
    function Get_Duration: Integer;
    procedure Set_Duration(pVal: Integer);
    function Get_sysClone: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IMmsSlide);
    procedure Disconnect; override;
    procedure Clear;
    function GetErrorDescription(newVal: Integer): WideString;
    procedure Activate(const newVal: WideString; bPersistent: Integer);
    procedure AddText(const bstrText: WideString);
    procedure AddAttachment(const newVal: WideString); overload;
    procedure AddAttachment(const newVal: WideString; var pVal: OleVariant); overload;
    procedure AddAttachmentData(const FileName: WideString; var Data: OleVariant);
    function CountAttachments: Integer;
    function GetAttachmentName(lIndex: Integer): WideString;
    procedure SaveAttachment(lIndex: Integer; const bstrFileName: WideString);
    function GetTextCount: Integer;
    function GetText(lIndex: Integer): WideString;
    property DefaultInterface: IMmsSlide read GetDefaultInterface;
    property LastError: Integer read Get_LastError;
    property Version: WideString read Get_Version;
    property Build: WideString read Get_Build;
    property ExpirationDate: WideString read Get_ExpirationDate;
    property Reserved: Integer write Set_Reserved;
    property DistributionID: WideString write Set_DistributionID;
    property DistributionKey: WideString write Set_DistributionKey;
    property Module: WideString read Get_Module;
    property ID: Integer read Get_ID;
    property sysClone: Integer read Get_sysClone;
    property Duration: Integer read Get_Duration write Set_Duration;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TMmsSlideProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TMmsSlide
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TMmsSlideProperties = class(TPersistent)
  private
    FServer:    TMmsSlide;
    function    GetDefaultInterface: IMmsSlide;
    constructor Create(AServer: TMmsSlide);
  protected
    function Get_LastError: Integer;
    function Get_Version: WideString;
    function Get_Build: WideString;
    function Get_ExpirationDate: WideString;
    procedure Set_Reserved(Param1: Integer);
    procedure Set_DistributionID(const Param1: WideString);
    procedure Set_DistributionKey(const Param1: WideString);
    function Get_Module: WideString;
    function Get_ID: Integer;
    function Get_Duration: Integer;
    procedure Set_Duration(pVal: Integer);
    function Get_sysClone: Integer;
  public
    property DefaultInterface: IMmsSlide read GetDefaultInterface;
  published
    property Duration: Integer read Get_Duration write Set_Duration;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoMmsConstants provides a Create and CreateRemote method to          
// create instances of the default interface IMmsConstants exposed by              
// the CoClass MmsConstants. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMmsConstants = class
    class function Create: IMmsConstants;
    class function CreateRemote(const MachineName: string): IMmsConstants;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TMmsConstants
// Help String      : MmsConstants Class
// Default Interface: IMmsConstants
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TMmsConstantsProperties= class;
{$ENDIF}
  TMmsConstants = class(TOleServer)
  private
    FIntf:        IMmsConstants;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TMmsConstantsProperties;
    function      GetServerProperties: TMmsConstantsProperties;
{$ENDIF}
    function      GetDefaultInterface: IMmsConstants;
  protected
    procedure InitServerData; override;
    function Get_asMMS_CLASS_PERSONAL: Integer;
    function Get_asMMS_CLASS_ADVERTISEMENT: Integer;
    function Get_asMMS_CLASS_INFORMATIONAL: Integer;
    function Get_asMMS_CLASS_AUTO: Integer;
    function Get_asMMS_PRIORITY_LOW: Integer;
    function Get_asMMS_PRIORITY_NORMAL: Integer;
    function Get_asMMS_PRIORITY_HIGH: Integer;
    function Get_asMMS_DRM_FORWARDLOCK: Integer;
    function Get_asMMS_DRM_PLAY: Integer;
    function Get_asMMS_DRM_DISPLAY: Integer;
    function Get_asMMS_DRM_EXECUTE: Integer;
    function Get_asMMS_DRM_PRINT: Integer;
    function Get_asMMS_MM7VARIATION_3GPP: Integer;
    function Get_asMMS_MM7VARIATION_ERICSSON: Integer;
    function Get_asMMS_MM7VARIATION_PAP: Integer;
    function Get_asMMS_PROTOCOL_MM1: Integer;
    function Get_asMMS_PROTOCOL_MM4: Integer;
    function Get_asMMS_PROTOCOL_MM7: Integer;
    function Get_asMMS_VERSION_5_2_0: Integer;
    function Get_asMMS_VERSION_5_3_0: Integer;
    function Get_asMMS_VERSION_5_4_0: Integer;
    function Get_asMMS_VERSION_5_5_0: Integer;
    function Get_asMMS_VERSION_5_6_0: Integer;
    function Get_asMMS_VERSION_5_7_0: Integer;
    function Get_asMMS_VERSION_5_8_0: Integer;
    function Get_asMMS_VERSION_5_9_0: Integer;
    function Get_asMMS_VERSION_5_10_0: Integer;
    function Get_asMMS_VERSION_5_11_0: Integer;
    function Get_asMMS_VERSION_6_0_0: Integer;
    function Get_asMMS_VERSION_6_1_0: Integer;
    function Get_asMMS_VERSION_6_2_0: Integer;
    function Get_asMMS_VERSION_6_3_0: Integer;
    function Get_asMMS_VERSION_6_4_0: Integer;
    function Get_asMMS_VERSION_6_5_0: Integer;
    function Get_asMMS_VERSION_6_6_0: Integer;
    function Get_asMMS_VERSION_6_7_0: Integer;
    function Get_asMMS_SCHEMA_REL5_MM7_1_0: Integer;
    function Get_asMMS_SCHEMA_REL5_MM7_1_1: Integer;
    function Get_asMMS_SCHEMA_REL5_MM7_1_2: Integer;
    function Get_asMMS_SCHEMA_REL5_MM7_1_3: Integer;
    function Get_asMMS_SCHEMA_REL5_MM7_1_4: Integer;
    function Get_asMMS_SCHEMA_REL5_MM7_1_5: Integer;
    function Get_asMMS_SCHEMA_REL6_MM7_1_0: Integer;
    function Get_asMMS_SCHEMA_REL6_MM7_1_1: Integer;
    function Get_asMMS_SCHEMA_REL6_MM7_1_2: Integer;
    function Get_asMMS_SCHEMA_REL6_MM7_1_3: Integer;
    function Get_asMMS_MM1FILE_MSENDREQ: Integer;
    function Get_asMMS_MM1FILE_MRETRIEVECONF: Integer;
    function Get_asMMS_RECIPIENT_TO: Integer;
    function Get_asMMS_RECIPIENT_CC: Integer;
    function Get_asMMS_RECIPIENT_BCC: Integer;
    function Get_asMMS_VERSION_6_8_0: Integer;
    function Get_asMMS_SCHEMA_REL6_MM7_1_4: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IMmsConstants);
    procedure Disconnect; override;
    property DefaultInterface: IMmsConstants read GetDefaultInterface;
    property asMMS_CLASS_PERSONAL: Integer read Get_asMMS_CLASS_PERSONAL;
    property asMMS_CLASS_ADVERTISEMENT: Integer read Get_asMMS_CLASS_ADVERTISEMENT;
    property asMMS_CLASS_INFORMATIONAL: Integer read Get_asMMS_CLASS_INFORMATIONAL;
    property asMMS_CLASS_AUTO: Integer read Get_asMMS_CLASS_AUTO;
    property asMMS_PRIORITY_LOW: Integer read Get_asMMS_PRIORITY_LOW;
    property asMMS_PRIORITY_NORMAL: Integer read Get_asMMS_PRIORITY_NORMAL;
    property asMMS_PRIORITY_HIGH: Integer read Get_asMMS_PRIORITY_HIGH;
    property asMMS_DRM_FORWARDLOCK: Integer read Get_asMMS_DRM_FORWARDLOCK;
    property asMMS_DRM_PLAY: Integer read Get_asMMS_DRM_PLAY;
    property asMMS_DRM_DISPLAY: Integer read Get_asMMS_DRM_DISPLAY;
    property asMMS_DRM_EXECUTE: Integer read Get_asMMS_DRM_EXECUTE;
    property asMMS_DRM_PRINT: Integer read Get_asMMS_DRM_PRINT;
    property asMMS_MM7VARIATION_3GPP: Integer read Get_asMMS_MM7VARIATION_3GPP;
    property asMMS_MM7VARIATION_ERICSSON: Integer read Get_asMMS_MM7VARIATION_ERICSSON;
    property asMMS_MM7VARIATION_PAP: Integer read Get_asMMS_MM7VARIATION_PAP;
    property asMMS_PROTOCOL_MM1: Integer read Get_asMMS_PROTOCOL_MM1;
    property asMMS_PROTOCOL_MM4: Integer read Get_asMMS_PROTOCOL_MM4;
    property asMMS_PROTOCOL_MM7: Integer read Get_asMMS_PROTOCOL_MM7;
    property asMMS_VERSION_5_2_0: Integer read Get_asMMS_VERSION_5_2_0;
    property asMMS_VERSION_5_3_0: Integer read Get_asMMS_VERSION_5_3_0;
    property asMMS_VERSION_5_4_0: Integer read Get_asMMS_VERSION_5_4_0;
    property asMMS_VERSION_5_5_0: Integer read Get_asMMS_VERSION_5_5_0;
    property asMMS_VERSION_5_6_0: Integer read Get_asMMS_VERSION_5_6_0;
    property asMMS_VERSION_5_7_0: Integer read Get_asMMS_VERSION_5_7_0;
    property asMMS_VERSION_5_8_0: Integer read Get_asMMS_VERSION_5_8_0;
    property asMMS_VERSION_5_9_0: Integer read Get_asMMS_VERSION_5_9_0;
    property asMMS_VERSION_5_10_0: Integer read Get_asMMS_VERSION_5_10_0;
    property asMMS_VERSION_5_11_0: Integer read Get_asMMS_VERSION_5_11_0;
    property asMMS_VERSION_6_0_0: Integer read Get_asMMS_VERSION_6_0_0;
    property asMMS_VERSION_6_1_0: Integer read Get_asMMS_VERSION_6_1_0;
    property asMMS_VERSION_6_2_0: Integer read Get_asMMS_VERSION_6_2_0;
    property asMMS_VERSION_6_3_0: Integer read Get_asMMS_VERSION_6_3_0;
    property asMMS_VERSION_6_4_0: Integer read Get_asMMS_VERSION_6_4_0;
    property asMMS_VERSION_6_5_0: Integer read Get_asMMS_VERSION_6_5_0;
    property asMMS_VERSION_6_6_0: Integer read Get_asMMS_VERSION_6_6_0;
    property asMMS_VERSION_6_7_0: Integer read Get_asMMS_VERSION_6_7_0;
    property asMMS_SCHEMA_REL5_MM7_1_0: Integer read Get_asMMS_SCHEMA_REL5_MM7_1_0;
    property asMMS_SCHEMA_REL5_MM7_1_1: Integer read Get_asMMS_SCHEMA_REL5_MM7_1_1;
    property asMMS_SCHEMA_REL5_MM7_1_2: Integer read Get_asMMS_SCHEMA_REL5_MM7_1_2;
    property asMMS_SCHEMA_REL5_MM7_1_3: Integer read Get_asMMS_SCHEMA_REL5_MM7_1_3;
    property asMMS_SCHEMA_REL5_MM7_1_4: Integer read Get_asMMS_SCHEMA_REL5_MM7_1_4;
    property asMMS_SCHEMA_REL5_MM7_1_5: Integer read Get_asMMS_SCHEMA_REL5_MM7_1_5;
    property asMMS_SCHEMA_REL6_MM7_1_0: Integer read Get_asMMS_SCHEMA_REL6_MM7_1_0;
    property asMMS_SCHEMA_REL6_MM7_1_1: Integer read Get_asMMS_SCHEMA_REL6_MM7_1_1;
    property asMMS_SCHEMA_REL6_MM7_1_2: Integer read Get_asMMS_SCHEMA_REL6_MM7_1_2;
    property asMMS_SCHEMA_REL6_MM7_1_3: Integer read Get_asMMS_SCHEMA_REL6_MM7_1_3;
    property asMMS_MM1FILE_MSENDREQ: Integer read Get_asMMS_MM1FILE_MSENDREQ;
    property asMMS_MM1FILE_MRETRIEVECONF: Integer read Get_asMMS_MM1FILE_MRETRIEVECONF;
    property asMMS_RECIPIENT_TO: Integer read Get_asMMS_RECIPIENT_TO;
    property asMMS_RECIPIENT_CC: Integer read Get_asMMS_RECIPIENT_CC;
    property asMMS_RECIPIENT_BCC: Integer read Get_asMMS_RECIPIENT_BCC;
    property asMMS_VERSION_6_8_0: Integer read Get_asMMS_VERSION_6_8_0;
    property asMMS_SCHEMA_REL6_MM7_1_4: Integer read Get_asMMS_SCHEMA_REL6_MM7_1_4;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TMmsConstantsProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TMmsConstants
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TMmsConstantsProperties = class(TPersistent)
  private
    FServer:    TMmsConstants;
    function    GetDefaultInterface: IMmsConstants;
    constructor Create(AServer: TMmsConstants);
  protected
    function Get_asMMS_CLASS_PERSONAL: Integer;
    function Get_asMMS_CLASS_ADVERTISEMENT: Integer;
    function Get_asMMS_CLASS_INFORMATIONAL: Integer;
    function Get_asMMS_CLASS_AUTO: Integer;
    function Get_asMMS_PRIORITY_LOW: Integer;
    function Get_asMMS_PRIORITY_NORMAL: Integer;
    function Get_asMMS_PRIORITY_HIGH: Integer;
    function Get_asMMS_DRM_FORWARDLOCK: Integer;
    function Get_asMMS_DRM_PLAY: Integer;
    function Get_asMMS_DRM_DISPLAY: Integer;
    function Get_asMMS_DRM_EXECUTE: Integer;
    function Get_asMMS_DRM_PRINT: Integer;
    function Get_asMMS_MM7VARIATION_3GPP: Integer;
    function Get_asMMS_MM7VARIATION_ERICSSON: Integer;
    function Get_asMMS_MM7VARIATION_PAP: Integer;
    function Get_asMMS_PROTOCOL_MM1: Integer;
    function Get_asMMS_PROTOCOL_MM4: Integer;
    function Get_asMMS_PROTOCOL_MM7: Integer;
    function Get_asMMS_VERSION_5_2_0: Integer;
    function Get_asMMS_VERSION_5_3_0: Integer;
    function Get_asMMS_VERSION_5_4_0: Integer;
    function Get_asMMS_VERSION_5_5_0: Integer;
    function Get_asMMS_VERSION_5_6_0: Integer;
    function Get_asMMS_VERSION_5_7_0: Integer;
    function Get_asMMS_VERSION_5_8_0: Integer;
    function Get_asMMS_VERSION_5_9_0: Integer;
    function Get_asMMS_VERSION_5_10_0: Integer;
    function Get_asMMS_VERSION_5_11_0: Integer;
    function Get_asMMS_VERSION_6_0_0: Integer;
    function Get_asMMS_VERSION_6_1_0: Integer;
    function Get_asMMS_VERSION_6_2_0: Integer;
    function Get_asMMS_VERSION_6_3_0: Integer;
    function Get_asMMS_VERSION_6_4_0: Integer;
    function Get_asMMS_VERSION_6_5_0: Integer;
    function Get_asMMS_VERSION_6_6_0: Integer;
    function Get_asMMS_VERSION_6_7_0: Integer;
    function Get_asMMS_SCHEMA_REL5_MM7_1_0: Integer;
    function Get_asMMS_SCHEMA_REL5_MM7_1_1: Integer;
    function Get_asMMS_SCHEMA_REL5_MM7_1_2: Integer;
    function Get_asMMS_SCHEMA_REL5_MM7_1_3: Integer;
    function Get_asMMS_SCHEMA_REL5_MM7_1_4: Integer;
    function Get_asMMS_SCHEMA_REL5_MM7_1_5: Integer;
    function Get_asMMS_SCHEMA_REL6_MM7_1_0: Integer;
    function Get_asMMS_SCHEMA_REL6_MM7_1_1: Integer;
    function Get_asMMS_SCHEMA_REL6_MM7_1_2: Integer;
    function Get_asMMS_SCHEMA_REL6_MM7_1_3: Integer;
    function Get_asMMS_MM1FILE_MSENDREQ: Integer;
    function Get_asMMS_MM1FILE_MRETRIEVECONF: Integer;
    function Get_asMMS_RECIPIENT_TO: Integer;
    function Get_asMMS_RECIPIENT_CC: Integer;
    function Get_asMMS_RECIPIENT_BCC: Integer;
    function Get_asMMS_VERSION_6_8_0: Integer;
    function Get_asMMS_SCHEMA_REL6_MM7_1_4: Integer;
  public
    property DefaultInterface: IMmsConstants read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoMmsPermission provides a Create and CreateRemote method to          
// create instances of the default interface IMmsPermission exposed by              
// the CoClass MmsPermission. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMmsPermission = class
    class function Create: IMmsPermission;
    class function CreateRemote(const MachineName: string): IMmsPermission;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TMmsPermission
// Help String      : MmsPermission Class
// Default Interface: IMmsPermission
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TMmsPermissionProperties= class;
{$ENDIF}
  TMmsPermission = class(TOleServer)
  private
    FIntf:        IMmsPermission;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TMmsPermissionProperties;
    function      GetServerProperties: TMmsPermissionProperties;
{$ENDIF}
    function      GetDefaultInterface: IMmsPermission;
  protected
    procedure InitServerData; override;
    function Get_Operation: Integer;
    procedure Set_Operation(pVal: Integer);
    function Get_Times: Integer;
    procedure Set_Times(pVal: Integer);
    function Get_Days: Integer;
    procedure Set_Days(pVal: Integer);
    function Get_BeginDate: WideString;
    procedure Set_BeginDate(const pVal: WideString);
    function Get_EndDate: WideString;
    procedure Set_EndDate(const pVal: WideString);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IMmsPermission);
    procedure Disconnect; override;
    procedure Clear;
    property DefaultInterface: IMmsPermission read GetDefaultInterface;
    property Operation: Integer read Get_Operation write Set_Operation;
    property Times: Integer read Get_Times write Set_Times;
    property Days: Integer read Get_Days write Set_Days;
    property BeginDate: WideString read Get_BeginDate write Set_BeginDate;
    property EndDate: WideString read Get_EndDate write Set_EndDate;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TMmsPermissionProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TMmsPermission
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TMmsPermissionProperties = class(TPersistent)
  private
    FServer:    TMmsPermission;
    function    GetDefaultInterface: IMmsPermission;
    constructor Create(AServer: TMmsPermission);
  protected
    function Get_Operation: Integer;
    procedure Set_Operation(pVal: Integer);
    function Get_Times: Integer;
    procedure Set_Times(pVal: Integer);
    function Get_Days: Integer;
    procedure Set_Days(pVal: Integer);
    function Get_BeginDate: WideString;
    procedure Set_BeginDate(const pVal: WideString);
    function Get_EndDate: WideString;
    procedure Set_EndDate(const pVal: WideString);
  public
    property DefaultInterface: IMmsPermission read GetDefaultInterface;
  published
    property Operation: Integer read Get_Operation write Set_Operation;
    property Times: Integer read Get_Times write Set_Times;
    property Days: Integer read Get_Days write Set_Days;
    property BeginDate: WideString read Get_BeginDate write Set_BeginDate;
    property EndDate: WideString read Get_EndDate write Set_EndDate;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoMmsProtocolMm4 provides a Create and CreateRemote method to          
// create instances of the default interface IMmsProtocolMm4 exposed by              
// the CoClass MmsProtocolMm4. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMmsProtocolMm4 = class
    class function Create: IMmsProtocolMm4;
    class function CreateRemote(const MachineName: string): IMmsProtocolMm4;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TMmsProtocolMm4
// Help String      : MmsProtocolMm4 Class
// Default Interface: IMmsProtocolMm4
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TMmsProtocolMm4Properties= class;
{$ENDIF}
  TMmsProtocolMm4 = class(TOleServer)
  private
    FIntf:        IMmsProtocolMm4;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TMmsProtocolMm4Properties;
    function      GetServerProperties: TMmsProtocolMm4Properties;
{$ENDIF}
    function      GetDefaultInterface: IMmsProtocolMm4;
  protected
    procedure InitServerData; override;
    function Get_LastError: Integer;
    function Get_Version: WideString;
    function Get_Build: WideString;
    function Get_ExpirationDate: WideString;
    procedure Set_Reserved(Param1: Integer);
    function Get_LogFile: WideString;
    procedure Set_LogFile(const pVal: WideString);
    function Get_ActivityFile: WideString;
    procedure Set_ActivityFile(const pVal: WideString);
    procedure Set_DistributionID(const Param1: WideString);
    procedure Set_DistributionKey(const Param1: WideString);
    function Get_Module: WideString;
    function Get_ProviderHost: WideString;
    procedure Set_ProviderHost(const pVal: WideString);
    function Get_ProviderPort: Integer;
    procedure Set_ProviderPort(pVal: Integer);
    function Get_ProviderAccount: WideString;
    procedure Set_ProviderAccount(const pVal: WideString);
    function Get_ProviderPassword: WideString;
    procedure Set_ProviderPassword(const pVal: WideString);
    function Get_ProviderDomain: WideString;
    procedure Set_ProviderDomain(const pVal: WideString);
    function Get_ProviderMM4Format: Integer;
    procedure Set_ProviderMM4Format(pVal: Integer);
    function Get_ProviderMM4Version: Integer;
    procedure Set_ProviderMM4Version(pVal: Integer);
    function Get_AdvancedSettings: WideString;
    procedure Set_AdvancedSettings(const pVal: WideString);
    function Get_ProviderMessageSizeLimit: Integer;
    procedure Set_ProviderMessageSizeLimit(pVal: Integer);
    function Get_ProviderResponse: WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IMmsProtocolMm4);
    procedure Disconnect; override;
    procedure Clear;
    function GetErrorDescription(newVal: Integer): WideString;
    procedure Activate(const newVal: WideString; bPersistent: Integer);
    procedure Send(var pVal: OleVariant);
    procedure ProviderLoadConfig(const bstrConfigFile: WideString);
    procedure ProviderSaveConfig(const bstrConfigFile: WideString);
    property DefaultInterface: IMmsProtocolMm4 read GetDefaultInterface;
    property LastError: Integer read Get_LastError;
    property Version: WideString read Get_Version;
    property Build: WideString read Get_Build;
    property ExpirationDate: WideString read Get_ExpirationDate;
    property Reserved: Integer write Set_Reserved;
    property DistributionID: WideString write Set_DistributionID;
    property DistributionKey: WideString write Set_DistributionKey;
    property Module: WideString read Get_Module;
    property ProviderResponse: WideString read Get_ProviderResponse;
    property LogFile: WideString read Get_LogFile write Set_LogFile;
    property ActivityFile: WideString read Get_ActivityFile write Set_ActivityFile;
    property ProviderHost: WideString read Get_ProviderHost write Set_ProviderHost;
    property ProviderPort: Integer read Get_ProviderPort write Set_ProviderPort;
    property ProviderAccount: WideString read Get_ProviderAccount write Set_ProviderAccount;
    property ProviderPassword: WideString read Get_ProviderPassword write Set_ProviderPassword;
    property ProviderDomain: WideString read Get_ProviderDomain write Set_ProviderDomain;
    property ProviderMM4Format: Integer read Get_ProviderMM4Format write Set_ProviderMM4Format;
    property ProviderMM4Version: Integer read Get_ProviderMM4Version write Set_ProviderMM4Version;
    property AdvancedSettings: WideString read Get_AdvancedSettings write Set_AdvancedSettings;
    property ProviderMessageSizeLimit: Integer read Get_ProviderMessageSizeLimit write Set_ProviderMessageSizeLimit;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TMmsProtocolMm4Properties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TMmsProtocolMm4
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TMmsProtocolMm4Properties = class(TPersistent)
  private
    FServer:    TMmsProtocolMm4;
    function    GetDefaultInterface: IMmsProtocolMm4;
    constructor Create(AServer: TMmsProtocolMm4);
  protected
    function Get_LastError: Integer;
    function Get_Version: WideString;
    function Get_Build: WideString;
    function Get_ExpirationDate: WideString;
    procedure Set_Reserved(Param1: Integer);
    function Get_LogFile: WideString;
    procedure Set_LogFile(const pVal: WideString);
    function Get_ActivityFile: WideString;
    procedure Set_ActivityFile(const pVal: WideString);
    procedure Set_DistributionID(const Param1: WideString);
    procedure Set_DistributionKey(const Param1: WideString);
    function Get_Module: WideString;
    function Get_ProviderHost: WideString;
    procedure Set_ProviderHost(const pVal: WideString);
    function Get_ProviderPort: Integer;
    procedure Set_ProviderPort(pVal: Integer);
    function Get_ProviderAccount: WideString;
    procedure Set_ProviderAccount(const pVal: WideString);
    function Get_ProviderPassword: WideString;
    procedure Set_ProviderPassword(const pVal: WideString);
    function Get_ProviderDomain: WideString;
    procedure Set_ProviderDomain(const pVal: WideString);
    function Get_ProviderMM4Format: Integer;
    procedure Set_ProviderMM4Format(pVal: Integer);
    function Get_ProviderMM4Version: Integer;
    procedure Set_ProviderMM4Version(pVal: Integer);
    function Get_AdvancedSettings: WideString;
    procedure Set_AdvancedSettings(const pVal: WideString);
    function Get_ProviderMessageSizeLimit: Integer;
    procedure Set_ProviderMessageSizeLimit(pVal: Integer);
    function Get_ProviderResponse: WideString;
  public
    property DefaultInterface: IMmsProtocolMm4 read GetDefaultInterface;
  published
    property LogFile: WideString read Get_LogFile write Set_LogFile;
    property ActivityFile: WideString read Get_ActivityFile write Set_ActivityFile;
    property ProviderHost: WideString read Get_ProviderHost write Set_ProviderHost;
    property ProviderPort: Integer read Get_ProviderPort write Set_ProviderPort;
    property ProviderAccount: WideString read Get_ProviderAccount write Set_ProviderAccount;
    property ProviderPassword: WideString read Get_ProviderPassword write Set_ProviderPassword;
    property ProviderDomain: WideString read Get_ProviderDomain write Set_ProviderDomain;
    property ProviderMM4Format: Integer read Get_ProviderMM4Format write Set_ProviderMM4Format;
    property ProviderMM4Version: Integer read Get_ProviderMM4Version write Set_ProviderMM4Version;
    property AdvancedSettings: WideString read Get_AdvancedSettings write Set_AdvancedSettings;
    property ProviderMessageSizeLimit: Integer read Get_ProviderMessageSizeLimit write Set_ProviderMessageSizeLimit;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoMmsProtocolMm7 provides a Create and CreateRemote method to          
// create instances of the default interface IMmsProtocolMm7 exposed by              
// the CoClass MmsProtocolMm7. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMmsProtocolMm7 = class
    class function Create: IMmsProtocolMm7;
    class function CreateRemote(const MachineName: string): IMmsProtocolMm7;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TMmsProtocolMm7
// Help String      : MmsProtocolMm7 Class
// Default Interface: IMmsProtocolMm7
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TMmsProtocolMm7Properties= class;
{$ENDIF}
  TMmsProtocolMm7 = class(TOleServer)
  private
    FIntf:        IMmsProtocolMm7;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TMmsProtocolMm7Properties;
    function      GetServerProperties: TMmsProtocolMm7Properties;
{$ENDIF}
    function      GetDefaultInterface: IMmsProtocolMm7;
  protected
    procedure InitServerData; override;
    function Get_LastError: Integer;
    function Get_Version: WideString;
    function Get_Build: WideString;
    function Get_ExpirationDate: WideString;
    procedure Set_Reserved(Param1: Integer);
    function Get_LogFile: WideString;
    procedure Set_LogFile(const pVal: WideString);
    function Get_ActivityFile: WideString;
    procedure Set_ActivityFile(const pVal: WideString);
    procedure Set_DistributionID(const Param1: WideString);
    procedure Set_DistributionKey(const Param1: WideString);
    function Get_Module: WideString;
    function Get_ProviderURL: WideString;
    procedure Set_ProviderURL(const pVal: WideString);
    function Get_ProviderWebAccount: WideString;
    procedure Set_ProviderWebAccount(const pVal: WideString);
    function Get_ProviderWebPassword: WideString;
    procedure Set_ProviderWebPassword(const pVal: WideString);
    function Get_ProxyServer: WideString;
    procedure Set_ProxyServer(const pVal: WideString);
    function Get_ProxyAccount: WideString;
    procedure Set_ProxyAccount(const pVal: WideString);
    function Get_ProxyPassword: WideString;
    procedure Set_ProxyPassword(const pVal: WideString);
    function Get_ProviderResponse: WideString;
    function Get_MessageId: WideString;
    function Get_ProviderUseSSL: Integer;
    procedure Set_ProviderUseSSL(pVal: Integer);
    function Get_ProviderVASID: WideString;
    procedure Set_ProviderVASID(const pVal: WideString);
    function Get_ProviderVASPID: WideString;
    procedure Set_ProviderVASPID(const pVal: WideString);
    function Get_ProviderServiceCode: WideString;
    procedure Set_ProviderServiceCode(const pVal: WideString);
    function Get_ProviderMM7Version: Integer;
    procedure Set_ProviderMM7Version(pVal: Integer);
    function Get_ProviderMM7Schema: Integer;
    procedure Set_ProviderMM7Schema(pVal: Integer);
    function Get_ProvidersFolder: WideString;
    function Get_ProviderMM7Variation: Integer;
    procedure Set_ProviderMM7Variation(pVal: Integer);
    function Get_ProviderMessageSizeLimit: Integer;
    procedure Set_ProviderMessageSizeLimit(pVal: Integer);
    function Get_AdvancedSettings: WideString;
    procedure Set_AdvancedSettings(const pVal: WideString);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IMmsProtocolMm7);
    procedure Disconnect; override;
    procedure Clear;
    function GetErrorDescription(newVal: Integer): WideString;
    procedure Activate(const newVal: WideString; bPersistent: Integer);
    procedure Send(var pVal: OleVariant);
    procedure ProviderLoadConfig(const bstrFile: WideString);
    procedure ProviderSaveConfig(const bstrFile: WideString);
    property DefaultInterface: IMmsProtocolMm7 read GetDefaultInterface;
    property LastError: Integer read Get_LastError;
    property Version: WideString read Get_Version;
    property Build: WideString read Get_Build;
    property ExpirationDate: WideString read Get_ExpirationDate;
    property Reserved: Integer write Set_Reserved;
    property DistributionID: WideString write Set_DistributionID;
    property DistributionKey: WideString write Set_DistributionKey;
    property Module: WideString read Get_Module;
    property ProviderResponse: WideString read Get_ProviderResponse;
    property MessageId: WideString read Get_MessageId;
    property ProvidersFolder: WideString read Get_ProvidersFolder;
    property LogFile: WideString read Get_LogFile write Set_LogFile;
    property ActivityFile: WideString read Get_ActivityFile write Set_ActivityFile;
    property ProviderURL: WideString read Get_ProviderURL write Set_ProviderURL;
    property ProviderWebAccount: WideString read Get_ProviderWebAccount write Set_ProviderWebAccount;
    property ProviderWebPassword: WideString read Get_ProviderWebPassword write Set_ProviderWebPassword;
    property ProxyServer: WideString read Get_ProxyServer write Set_ProxyServer;
    property ProxyAccount: WideString read Get_ProxyAccount write Set_ProxyAccount;
    property ProxyPassword: WideString read Get_ProxyPassword write Set_ProxyPassword;
    property ProviderUseSSL: Integer read Get_ProviderUseSSL write Set_ProviderUseSSL;
    property ProviderVASID: WideString read Get_ProviderVASID write Set_ProviderVASID;
    property ProviderVASPID: WideString read Get_ProviderVASPID write Set_ProviderVASPID;
    property ProviderServiceCode: WideString read Get_ProviderServiceCode write Set_ProviderServiceCode;
    property ProviderMM7Version: Integer read Get_ProviderMM7Version write Set_ProviderMM7Version;
    property ProviderMM7Schema: Integer read Get_ProviderMM7Schema write Set_ProviderMM7Schema;
    property ProviderMM7Variation: Integer read Get_ProviderMM7Variation write Set_ProviderMM7Variation;
    property ProviderMessageSizeLimit: Integer read Get_ProviderMessageSizeLimit write Set_ProviderMessageSizeLimit;
    property AdvancedSettings: WideString read Get_AdvancedSettings write Set_AdvancedSettings;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TMmsProtocolMm7Properties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TMmsProtocolMm7
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TMmsProtocolMm7Properties = class(TPersistent)
  private
    FServer:    TMmsProtocolMm7;
    function    GetDefaultInterface: IMmsProtocolMm7;
    constructor Create(AServer: TMmsProtocolMm7);
  protected
    function Get_LastError: Integer;
    function Get_Version: WideString;
    function Get_Build: WideString;
    function Get_ExpirationDate: WideString;
    procedure Set_Reserved(Param1: Integer);
    function Get_LogFile: WideString;
    procedure Set_LogFile(const pVal: WideString);
    function Get_ActivityFile: WideString;
    procedure Set_ActivityFile(const pVal: WideString);
    procedure Set_DistributionID(const Param1: WideString);
    procedure Set_DistributionKey(const Param1: WideString);
    function Get_Module: WideString;
    function Get_ProviderURL: WideString;
    procedure Set_ProviderURL(const pVal: WideString);
    function Get_ProviderWebAccount: WideString;
    procedure Set_ProviderWebAccount(const pVal: WideString);
    function Get_ProviderWebPassword: WideString;
    procedure Set_ProviderWebPassword(const pVal: WideString);
    function Get_ProxyServer: WideString;
    procedure Set_ProxyServer(const pVal: WideString);
    function Get_ProxyAccount: WideString;
    procedure Set_ProxyAccount(const pVal: WideString);
    function Get_ProxyPassword: WideString;
    procedure Set_ProxyPassword(const pVal: WideString);
    function Get_ProviderResponse: WideString;
    function Get_MessageId: WideString;
    function Get_ProviderUseSSL: Integer;
    procedure Set_ProviderUseSSL(pVal: Integer);
    function Get_ProviderVASID: WideString;
    procedure Set_ProviderVASID(const pVal: WideString);
    function Get_ProviderVASPID: WideString;
    procedure Set_ProviderVASPID(const pVal: WideString);
    function Get_ProviderServiceCode: WideString;
    procedure Set_ProviderServiceCode(const pVal: WideString);
    function Get_ProviderMM7Version: Integer;
    procedure Set_ProviderMM7Version(pVal: Integer);
    function Get_ProviderMM7Schema: Integer;
    procedure Set_ProviderMM7Schema(pVal: Integer);
    function Get_ProvidersFolder: WideString;
    function Get_ProviderMM7Variation: Integer;
    procedure Set_ProviderMM7Variation(pVal: Integer);
    function Get_ProviderMessageSizeLimit: Integer;
    procedure Set_ProviderMessageSizeLimit(pVal: Integer);
    function Get_AdvancedSettings: WideString;
    procedure Set_AdvancedSettings(const pVal: WideString);
  public
    property DefaultInterface: IMmsProtocolMm7 read GetDefaultInterface;
  published
    property LogFile: WideString read Get_LogFile write Set_LogFile;
    property ActivityFile: WideString read Get_ActivityFile write Set_ActivityFile;
    property ProviderURL: WideString read Get_ProviderURL write Set_ProviderURL;
    property ProviderWebAccount: WideString read Get_ProviderWebAccount write Set_ProviderWebAccount;
    property ProviderWebPassword: WideString read Get_ProviderWebPassword write Set_ProviderWebPassword;
    property ProxyServer: WideString read Get_ProxyServer write Set_ProxyServer;
    property ProxyAccount: WideString read Get_ProxyAccount write Set_ProxyAccount;
    property ProxyPassword: WideString read Get_ProxyPassword write Set_ProxyPassword;
    property ProviderUseSSL: Integer read Get_ProviderUseSSL write Set_ProviderUseSSL;
    property ProviderVASID: WideString read Get_ProviderVASID write Set_ProviderVASID;
    property ProviderVASPID: WideString read Get_ProviderVASPID write Set_ProviderVASPID;
    property ProviderServiceCode: WideString read Get_ProviderServiceCode write Set_ProviderServiceCode;
    property ProviderMM7Version: Integer read Get_ProviderMM7Version write Set_ProviderMM7Version;
    property ProviderMM7Schema: Integer read Get_ProviderMM7Schema write Set_ProviderMM7Schema;
    property ProviderMM7Variation: Integer read Get_ProviderMM7Variation write Set_ProviderMM7Variation;
    property ProviderMessageSizeLimit: Integer read Get_ProviderMessageSizeLimit write Set_ProviderMessageSizeLimit;
    property AdvancedSettings: WideString read Get_AdvancedSettings write Set_AdvancedSettings;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoMmsMessage provides a Create and CreateRemote method to          
// create instances of the default interface IMmsMessage exposed by              
// the CoClass MmsMessage. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMmsMessage = class
    class function Create: IMmsMessage;
    class function CreateRemote(const MachineName: string): IMmsMessage;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TMmsMessage
// Help String      : MmsMessage Class
// Default Interface: IMmsMessage
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TMmsMessageProperties= class;
{$ENDIF}
  TMmsMessage = class(TOleServer)
  private
    FIntf:        IMmsMessage;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TMmsMessageProperties;
    function      GetServerProperties: TMmsMessageProperties;
{$ENDIF}
    function      GetDefaultInterface: IMmsMessage;
  protected
    procedure InitServerData; override;
    function Get_LastError: Integer;
    function Get_Version: WideString;
    function Get_Build: WideString;
    function Get_ExpirationDate: WideString;
    procedure Set_Reserved(Param1: Integer);
    procedure Set_DistributionID(const Param1: WideString);
    procedure Set_DistributionKey(const Param1: WideString);
    function Get_Module: WideString;
    function Get_From: WideString;
    procedure Set_From(const pVal: WideString);
    function Get_Class_: Integer;
    procedure Set_Class_(pVal: Integer);
    function Get_Priority: Integer;
    procedure Set_Priority(pVal: Integer);
    function Get_Subject: WideString;
    procedure Set_Subject(const pVal: WideString);
    function Get_EncodedMessage: WideString;
    procedure Set_EncodedMessage(const pVal: WideString);
    function Get_RequestReadReceipt: Integer;
    procedure Set_RequestReadReceipt(pVal: Integer);
    function Get_RequestDeliveryReport: Integer;
    procedure Set_RequestDeliveryReport(pVal: Integer);
    function Get_Protocol: Integer;
    procedure Set_Protocol(pVal: Integer);
    function Get_TransactionId: WideString;
    procedure Set_TransactionId(const pVal: WideString);
    function Get_ValidityPeriod: Integer;
    procedure Set_ValidityPeriod(pVal: Integer);
    function Get_sysBoundary: WideString;
    procedure Set_sysSettings(Param1: Integer);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IMmsMessage);
    procedure Disconnect; override;
    procedure Clear;
    function GetErrorDescription(newVal: Integer): WideString;
    procedure Activate(const newVal: WideString; bPersistent: Integer);
    procedure SaveToFile(const bstrFolder: WideString; lFormat: Integer);
    procedure EncodeMessage;
    procedure DecodeMessage;
    procedure AddRecipient(const bstrRecipient: WideString; lType: Integer);
    procedure AddSlide(var pVal: OleVariant);
    procedure LoadFromFile(const bstrFile: WideString);
    function GetFirstSlide: OleVariant;
    function GetNextSlide: OleVariant;
    function GetFirstRecipient(lType: Integer): WideString;
    function GetNextRecipient(lType: Integer): WideString;
    procedure ClearRecipients;
    procedure LoadCustomSMIL(const bstrFile: WideString);
    property DefaultInterface: IMmsMessage read GetDefaultInterface;
    property LastError: Integer read Get_LastError;
    property Version: WideString read Get_Version;
    property Build: WideString read Get_Build;
    property ExpirationDate: WideString read Get_ExpirationDate;
    property Reserved: Integer write Set_Reserved;
    property DistributionID: WideString write Set_DistributionID;
    property DistributionKey: WideString write Set_DistributionKey;
    property Module: WideString read Get_Module;
    property sysBoundary: WideString read Get_sysBoundary;
    property sysSettings: Integer write Set_sysSettings;
    property From: WideString read Get_From write Set_From;
    property Class_: Integer read Get_Class_ write Set_Class_;
    property Priority: Integer read Get_Priority write Set_Priority;
    property Subject: WideString read Get_Subject write Set_Subject;
    property EncodedMessage: WideString read Get_EncodedMessage write Set_EncodedMessage;
    property RequestReadReceipt: Integer read Get_RequestReadReceipt write Set_RequestReadReceipt;
    property RequestDeliveryReport: Integer read Get_RequestDeliveryReport write Set_RequestDeliveryReport;
    property Protocol: Integer read Get_Protocol write Set_Protocol;
    property TransactionId: WideString read Get_TransactionId write Set_TransactionId;
    property ValidityPeriod: Integer read Get_ValidityPeriod write Set_ValidityPeriod;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TMmsMessageProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TMmsMessage
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TMmsMessageProperties = class(TPersistent)
  private
    FServer:    TMmsMessage;
    function    GetDefaultInterface: IMmsMessage;
    constructor Create(AServer: TMmsMessage);
  protected
    function Get_LastError: Integer;
    function Get_Version: WideString;
    function Get_Build: WideString;
    function Get_ExpirationDate: WideString;
    procedure Set_Reserved(Param1: Integer);
    procedure Set_DistributionID(const Param1: WideString);
    procedure Set_DistributionKey(const Param1: WideString);
    function Get_Module: WideString;
    function Get_From: WideString;
    procedure Set_From(const pVal: WideString);
    function Get_Class_: Integer;
    procedure Set_Class_(pVal: Integer);
    function Get_Priority: Integer;
    procedure Set_Priority(pVal: Integer);
    function Get_Subject: WideString;
    procedure Set_Subject(const pVal: WideString);
    function Get_EncodedMessage: WideString;
    procedure Set_EncodedMessage(const pVal: WideString);
    function Get_RequestReadReceipt: Integer;
    procedure Set_RequestReadReceipt(pVal: Integer);
    function Get_RequestDeliveryReport: Integer;
    procedure Set_RequestDeliveryReport(pVal: Integer);
    function Get_Protocol: Integer;
    procedure Set_Protocol(pVal: Integer);
    function Get_TransactionId: WideString;
    procedure Set_TransactionId(const pVal: WideString);
    function Get_ValidityPeriod: Integer;
    procedure Set_ValidityPeriod(pVal: Integer);
    function Get_sysBoundary: WideString;
    procedure Set_sysSettings(Param1: Integer);
  public
    property DefaultInterface: IMmsMessage read GetDefaultInterface;
  published
    property From: WideString read Get_From write Set_From;
    property Class_: Integer read Get_Class_ write Set_Class_;
    property Priority: Integer read Get_Priority write Set_Priority;
    property Subject: WideString read Get_Subject write Set_Subject;
    property EncodedMessage: WideString read Get_EncodedMessage write Set_EncodedMessage;
    property RequestReadReceipt: Integer read Get_RequestReadReceipt write Set_RequestReadReceipt;
    property RequestDeliveryReport: Integer read Get_RequestDeliveryReport write Set_RequestDeliveryReport;
    property Protocol: Integer read Get_Protocol write Set_Protocol;
    property TransactionId: WideString read Get_TransactionId write Set_TransactionId;
    property ValidityPeriod: Integer read Get_ValidityPeriod write Set_ValidityPeriod;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoSmsDataMmsNotification provides a Create and CreateRemote method to          
// create instances of the default interface ISmsDataMmsNotification exposed by              
// the CoClass SmsDataMmsNotification. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSmsDataMmsNotification = class
    class function Create: ISmsDataMmsNotification;
    class function CreateRemote(const MachineName: string): ISmsDataMmsNotification;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TSmsDataMmsNotification
// Help String      : SmsDataMmsNotification Class
// Default Interface: ISmsDataMmsNotification
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TSmsDataMmsNotificationProperties= class;
{$ENDIF}
  TSmsDataMmsNotification = class(TOleServer)
  private
    FIntf:        ISmsDataMmsNotification;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TSmsDataMmsNotificationProperties;
    function      GetServerProperties: TSmsDataMmsNotificationProperties;
{$ENDIF}
    function      GetDefaultInterface: ISmsDataMmsNotification;
  protected
    procedure InitServerData; override;
    function Get_LastError: Integer;
    function Get_Version: WideString;
    function Get_Build: WideString;
    function Get_ExpirationDate: WideString;
    procedure Set_Reserved(Param1: Integer);
    procedure Set_DistributionID(const Param1: WideString);
    procedure Set_DistributionKey(const Param1: WideString);
    function Get_Module: WideString;
    function Get_From: WideString;
    procedure Set_From(const pVal: WideString);
    function Get_Subject: WideString;
    procedure Set_Subject(const pVal: WideString);
    function Get_Class_: Integer;
    procedure Set_Class_(pVal: Integer);
    function Get_Expiration: Integer;
    procedure Set_Expiration(pVal: Integer);
    function Get_ContentLocation: WideString;
    procedure Set_ContentLocation(const pVal: WideString);
    function Get_MessageSize: Integer;
    procedure Set_MessageSize(pVal: Integer);
    function Get_TransactionId: WideString;
    procedure Set_TransactionId(const pVal: WideString);
    function Get_EncodedMessage: WideString;
    procedure Set_EncodedMessage(const pVal: WideString);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ISmsDataMmsNotification);
    procedure Disconnect; override;
    procedure Clear;
    function GetErrorDescription(newVal: Integer): WideString;
    procedure Activate(const newVal: WideString; bPersistent: Integer);
    procedure Encode;
    property DefaultInterface: ISmsDataMmsNotification read GetDefaultInterface;
    property LastError: Integer read Get_LastError;
    property Version: WideString read Get_Version;
    property Build: WideString read Get_Build;
    property ExpirationDate: WideString read Get_ExpirationDate;
    property Reserved: Integer write Set_Reserved;
    property DistributionID: WideString write Set_DistributionID;
    property DistributionKey: WideString write Set_DistributionKey;
    property Module: WideString read Get_Module;
    property From: WideString read Get_From write Set_From;
    property Subject: WideString read Get_Subject write Set_Subject;
    property Class_: Integer read Get_Class_ write Set_Class_;
    property Expiration: Integer read Get_Expiration write Set_Expiration;
    property ContentLocation: WideString read Get_ContentLocation write Set_ContentLocation;
    property MessageSize: Integer read Get_MessageSize write Set_MessageSize;
    property TransactionId: WideString read Get_TransactionId write Set_TransactionId;
    property EncodedMessage: WideString read Get_EncodedMessage write Set_EncodedMessage;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TSmsDataMmsNotificationProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TSmsDataMmsNotification
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TSmsDataMmsNotificationProperties = class(TPersistent)
  private
    FServer:    TSmsDataMmsNotification;
    function    GetDefaultInterface: ISmsDataMmsNotification;
    constructor Create(AServer: TSmsDataMmsNotification);
  protected
    function Get_LastError: Integer;
    function Get_Version: WideString;
    function Get_Build: WideString;
    function Get_ExpirationDate: WideString;
    procedure Set_Reserved(Param1: Integer);
    procedure Set_DistributionID(const Param1: WideString);
    procedure Set_DistributionKey(const Param1: WideString);
    function Get_Module: WideString;
    function Get_From: WideString;
    procedure Set_From(const pVal: WideString);
    function Get_Subject: WideString;
    procedure Set_Subject(const pVal: WideString);
    function Get_Class_: Integer;
    procedure Set_Class_(pVal: Integer);
    function Get_Expiration: Integer;
    procedure Set_Expiration(pVal: Integer);
    function Get_ContentLocation: WideString;
    procedure Set_ContentLocation(const pVal: WideString);
    function Get_MessageSize: Integer;
    procedure Set_MessageSize(pVal: Integer);
    function Get_TransactionId: WideString;
    procedure Set_TransactionId(const pVal: WideString);
    function Get_EncodedMessage: WideString;
    procedure Set_EncodedMessage(const pVal: WideString);
  public
    property DefaultInterface: ISmsDataMmsNotification read GetDefaultInterface;
  published
    property From: WideString read Get_From write Set_From;
    property Subject: WideString read Get_Subject write Set_Subject;
    property Class_: Integer read Get_Class_ write Set_Class_;
    property Expiration: Integer read Get_Expiration write Set_Expiration;
    property ContentLocation: WideString read Get_ContentLocation write Set_ContentLocation;
    property MessageSize: Integer read Get_MessageSize write Set_MessageSize;
    property TransactionId: WideString read Get_TransactionId write Set_TransactionId;
    property EncodedMessage: WideString read Get_EncodedMessage write Set_EncodedMessage;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoSmsDatavCard provides a Create and CreateRemote method to          
// create instances of the default interface ISmsDatavCard exposed by              
// the CoClass SmsDatavCard. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSmsDatavCard = class
    class function Create: ISmsDatavCard;
    class function CreateRemote(const MachineName: string): ISmsDatavCard;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TSmsDatavCard
// Help String      : SmsDatavCard Class
// Default Interface: ISmsDatavCard
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TSmsDatavCardProperties= class;
{$ENDIF}
  TSmsDatavCard = class(TOleServer)
  private
    FIntf:        ISmsDatavCard;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TSmsDatavCardProperties;
    function      GetServerProperties: TSmsDatavCardProperties;
{$ENDIF}
    function      GetDefaultInterface: ISmsDatavCard;
  protected
    procedure InitServerData; override;
    function Get_LastError: Integer;
    function Get_Version: WideString;
    function Get_Build: WideString;
    function Get_ExpirationDate: WideString;
    procedure Set_Reserved(Param1: Integer);
    procedure Set_DistributionID(const Param1: WideString);
    procedure Set_DistributionKey(const Param1: WideString);
    function Get_Module: WideString;
    function Get_Name: WideString;
    procedure Set_Name(const pVal: WideString);
    function Get_Phone: WideString;
    procedure Set_Phone(const pVal: WideString);
    function Get_PhoneWork: WideString;
    procedure Set_PhoneWork(const pVal: WideString);
    function Get_PhoneHome: WideString;
    procedure Set_PhoneHome(const pVal: WideString);
    function Get_Mobile: WideString;
    procedure Set_Mobile(const pVal: WideString);
    function Get_Pager: WideString;
    procedure Set_Pager(const pVal: WideString);
    function Get_Fax: WideString;
    procedure Set_Fax(const pVal: WideString);
    function Get_Email: WideString;
    procedure Set_Email(const pVal: WideString);
    function Get_Title: WideString;
    procedure Set_Title(const pVal: WideString);
    function Get_URL: WideString;
    procedure Set_URL(const pVal: WideString);
    function Get_EncodedMessage: WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ISmsDatavCard);
    procedure Disconnect; override;
    procedure Clear;
    function GetErrorDescription(lError: Integer): WideString;
    procedure Activate(const bstrRegKey: WideString; bPersistent: Integer);
    procedure Encode;
    property DefaultInterface: ISmsDatavCard read GetDefaultInterface;
    property LastError: Integer read Get_LastError;
    property Version: WideString read Get_Version;
    property Build: WideString read Get_Build;
    property ExpirationDate: WideString read Get_ExpirationDate;
    property Reserved: Integer write Set_Reserved;
    property DistributionID: WideString write Set_DistributionID;
    property DistributionKey: WideString write Set_DistributionKey;
    property Module: WideString read Get_Module;
    property EncodedMessage: WideString read Get_EncodedMessage;
    property Name: WideString read Get_Name write Set_Name;
    property Phone: WideString read Get_Phone write Set_Phone;
    property PhoneWork: WideString read Get_PhoneWork write Set_PhoneWork;
    property PhoneHome: WideString read Get_PhoneHome write Set_PhoneHome;
    property Mobile: WideString read Get_Mobile write Set_Mobile;
    property Pager: WideString read Get_Pager write Set_Pager;
    property Fax: WideString read Get_Fax write Set_Fax;
    property Email: WideString read Get_Email write Set_Email;
    property Title: WideString read Get_Title write Set_Title;
    property URL: WideString read Get_URL write Set_URL;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TSmsDatavCardProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TSmsDatavCard
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TSmsDatavCardProperties = class(TPersistent)
  private
    FServer:    TSmsDatavCard;
    function    GetDefaultInterface: ISmsDatavCard;
    constructor Create(AServer: TSmsDatavCard);
  protected
    function Get_LastError: Integer;
    function Get_Version: WideString;
    function Get_Build: WideString;
    function Get_ExpirationDate: WideString;
    procedure Set_Reserved(Param1: Integer);
    procedure Set_DistributionID(const Param1: WideString);
    procedure Set_DistributionKey(const Param1: WideString);
    function Get_Module: WideString;
    function Get_Name: WideString;
    procedure Set_Name(const pVal: WideString);
    function Get_Phone: WideString;
    procedure Set_Phone(const pVal: WideString);
    function Get_PhoneWork: WideString;
    procedure Set_PhoneWork(const pVal: WideString);
    function Get_PhoneHome: WideString;
    procedure Set_PhoneHome(const pVal: WideString);
    function Get_Mobile: WideString;
    procedure Set_Mobile(const pVal: WideString);
    function Get_Pager: WideString;
    procedure Set_Pager(const pVal: WideString);
    function Get_Fax: WideString;
    procedure Set_Fax(const pVal: WideString);
    function Get_Email: WideString;
    procedure Set_Email(const pVal: WideString);
    function Get_Title: WideString;
    procedure Set_Title(const pVal: WideString);
    function Get_URL: WideString;
    procedure Set_URL(const pVal: WideString);
    function Get_EncodedMessage: WideString;
  public
    property DefaultInterface: ISmsDatavCard read GetDefaultInterface;
  published
    property Name: WideString read Get_Name write Set_Name;
    property Phone: WideString read Get_Phone write Set_Phone;
    property PhoneWork: WideString read Get_PhoneWork write Set_PhoneWork;
    property PhoneHome: WideString read Get_PhoneHome write Set_PhoneHome;
    property Mobile: WideString read Get_Mobile write Set_Mobile;
    property Pager: WideString read Get_Pager write Set_Pager;
    property Fax: WideString read Get_Fax write Set_Fax;
    property Email: WideString read Get_Email write Set_Email;
    property Title: WideString read Get_Title write Set_Title;
    property URL: WideString read Get_URL write Set_URL;
  end;
{$ENDIF}


procedure Register;

resourcestring
  dtlServerPage = 'ActiveX';

  dtlOcxPage = 'ActiveX';

implementation

uses ComObj;

class function CoSmsProtocolGsm.Create: ISmsProtocolGsm;
begin
  Result := CreateComObject(CLASS_SmsProtocolGsm) as ISmsProtocolGsm;
end;

class function CoSmsProtocolGsm.CreateRemote(const MachineName: string): ISmsProtocolGsm;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SmsProtocolGsm) as ISmsProtocolGsm;
end;

procedure TSmsProtocolGsm.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{30F256C0-EE6E-4C57-A475-E3E81236119F}';
    IntfIID:   '{3DEF0FEB-7F19-4BDD-A2D5-60A1E6E9A473}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TSmsProtocolGsm.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ISmsProtocolGsm;
  end;
end;

procedure TSmsProtocolGsm.ConnectTo(svrIntf: ISmsProtocolGsm);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TSmsProtocolGsm.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TSmsProtocolGsm.GetDefaultInterface: ISmsProtocolGsm;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TSmsProtocolGsm.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TSmsProtocolGsmProperties.Create(Self);
{$ENDIF}
end;

destructor TSmsProtocolGsm.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TSmsProtocolGsm.GetServerProperties: TSmsProtocolGsmProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TSmsProtocolGsm.Get_LastError: Integer;
begin
    Result := DefaultInterface.LastError;
end;

function TSmsProtocolGsm.Get_Version: WideString;
begin
    Result := DefaultInterface.Version;
end;

function TSmsProtocolGsm.Get_Build: WideString;
begin
    Result := DefaultInterface.Build;
end;

function TSmsProtocolGsm.Get_ExpirationDate: WideString;
begin
    Result := DefaultInterface.ExpirationDate;
end;

procedure TSmsProtocolGsm.Set_Reserved(Param1: Integer);
begin
  DefaultInterface.Set_Reserved(Param1);
end;

function TSmsProtocolGsm.Get_LogFile: WideString;
begin
    Result := DefaultInterface.LogFile;
end;

procedure TSmsProtocolGsm.Set_LogFile(const pVal: WideString);
  { Warning: The property LogFile has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.LogFile := pVal;
end;

function TSmsProtocolGsm.Get_ActivityFile: WideString;
begin
    Result := DefaultInterface.ActivityFile;
end;

procedure TSmsProtocolGsm.Set_ActivityFile(const pVal: WideString);
  { Warning: The property ActivityFile has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ActivityFile := pVal;
end;

procedure TSmsProtocolGsm.Set_DistributionID(const Param1: WideString);
  { Warning: The property DistributionID has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionID := Param1;
end;

procedure TSmsProtocolGsm.Set_DistributionKey(const Param1: WideString);
  { Warning: The property DistributionKey has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionKey := Param1;
end;

function TSmsProtocolGsm.Get_Module: WideString;
begin
    Result := DefaultInterface.Module;
end;

function TSmsProtocolGsm.Get_Device: WideString;
begin
    Result := DefaultInterface.Device;
end;

procedure TSmsProtocolGsm.Set_Device(const pVal: WideString);
  { Warning: The property Device has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Device := pVal;
end;

function TSmsProtocolGsm.Get_DeviceSpeed: Integer;
begin
    Result := DefaultInterface.DeviceSpeed;
end;

procedure TSmsProtocolGsm.Set_DeviceSpeed(pVal: Integer);
begin
  DefaultInterface.Set_DeviceSpeed(pVal);
end;

function TSmsProtocolGsm.Get_DeviceInitString: WideString;
begin
    Result := DefaultInterface.DeviceInitString;
end;

procedure TSmsProtocolGsm.Set_DeviceInitString(const pVal: WideString);
  { Warning: The property DeviceInitString has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DeviceInitString := pVal;
end;

function TSmsProtocolGsm.Get_DeviceFlowControl: Integer;
begin
    Result := DefaultInterface.DeviceFlowControl;
end;

procedure TSmsProtocolGsm.Set_DeviceFlowControl(pVal: Integer);
begin
  DefaultInterface.Set_DeviceFlowControl(pVal);
end;

function TSmsProtocolGsm.Get_MessageStorage: Integer;
begin
    Result := DefaultInterface.MessageStorage;
end;

procedure TSmsProtocolGsm.Set_MessageStorage(pVal: Integer);
begin
  DefaultInterface.Set_MessageStorage(pVal);
end;

function TSmsProtocolGsm.Get_ReportsStorage: Integer;
begin
    Result := DefaultInterface.ReportsStorage;
end;

procedure TSmsProtocolGsm.Set_ReportsStorage(pVal: Integer);
begin
  DefaultInterface.Set_ReportsStorage(pVal);
end;

function TSmsProtocolGsm.Get_SMSC: WideString;
begin
    Result := DefaultInterface.SMSC;
end;

procedure TSmsProtocolGsm.Set_SMSC(const pVal: WideString);
  { Warning: The property SMSC has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.SMSC := pVal;
end;

function TSmsProtocolGsm.Get_AdvancedSettings: WideString;
begin
    Result := DefaultInterface.AdvancedSettings;
end;

procedure TSmsProtocolGsm.Set_AdvancedSettings(const pVal: WideString);
  { Warning: The property AdvancedSettings has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AdvancedSettings := pVal;
end;

procedure TSmsProtocolGsm.Clear;
begin
  DefaultInterface.Clear;
end;

function TSmsProtocolGsm.GetErrorDescription(newVal: Integer): WideString;
begin
  Result := DefaultInterface.GetErrorDescription(newVal);
end;

procedure TSmsProtocolGsm.Activate(const newVal: WideString; bPersistent: Integer);
begin
  DefaultInterface.Activate(newVal, bPersistent);
end;

function TSmsProtocolGsm.GetDeviceCount: Integer;
begin
  Result := DefaultInterface.GetDeviceCount;
end;

function TSmsProtocolGsm.GetDevice(lDevice: Integer): WideString;
begin
  Result := DefaultInterface.GetDevice(lDevice);
end;

procedure TSmsProtocolGsm.EnterPin(const bstrPIN: WideString);
begin
  DefaultInterface.EnterPin(bstrPIN);
end;

function TSmsProtocolGsm.SendCommand(const bstrCommand: WideString; lTimeout: Integer): WideString;
begin
  Result := DefaultInterface.SendCommand(bstrCommand, lTimeout);
end;

function TSmsProtocolGsm.Send(var pMessage: OleVariant): WideString;
begin
  Result := DefaultInterface.Send(pMessage);
end;

function TSmsProtocolGsm.Receive: Integer;
begin
  Result := DefaultInterface.Receive;
end;

function TSmsProtocolGsm.QueryStatus(const bstrReference: WideString): OleVariant;
begin
  Result := DefaultInterface.QueryStatus(bstrReference);
end;

function TSmsProtocolGsm.GetFirstMessage: OleVariant;
begin
  Result := DefaultInterface.GetFirstMessage;
end;

function TSmsProtocolGsm.GetNextMessage: OleVariant;
begin
  Result := DefaultInterface.GetNextMessage;
end;

function TSmsProtocolGsm.GetMessage(lIndex: Integer): OleVariant;
begin
  Result := DefaultInterface.GetMessage(lIndex);
end;

procedure TSmsProtocolGsm.DeleteAllMessages(bAll: Integer);
begin
  DefaultInterface.DeleteAllMessages(bAll);
end;

procedure TSmsProtocolGsm.DeleteMessage(lIndex: Integer);
begin
  DefaultInterface.DeleteMessage(lIndex);
end;

procedure TSmsProtocolGsm.SaveReports(const bstrFileName: WideString);
begin
  DefaultInterface.SaveReports(bstrFileName);
end;

procedure TSmsProtocolGsm.LoadReports(const bstrFileName: WideString);
begin
  DefaultInterface.LoadReports(bstrFileName);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TSmsProtocolGsmProperties.Create(AServer: TSmsProtocolGsm);
begin
  inherited Create;
  FServer := AServer;
end;

function TSmsProtocolGsmProperties.GetDefaultInterface: ISmsProtocolGsm;
begin
  Result := FServer.DefaultInterface;
end;

function TSmsProtocolGsmProperties.Get_LastError: Integer;
begin
    Result := DefaultInterface.LastError;
end;

function TSmsProtocolGsmProperties.Get_Version: WideString;
begin
    Result := DefaultInterface.Version;
end;

function TSmsProtocolGsmProperties.Get_Build: WideString;
begin
    Result := DefaultInterface.Build;
end;

function TSmsProtocolGsmProperties.Get_ExpirationDate: WideString;
begin
    Result := DefaultInterface.ExpirationDate;
end;

procedure TSmsProtocolGsmProperties.Set_Reserved(Param1: Integer);
begin
  DefaultInterface.Set_Reserved(Param1);
end;

function TSmsProtocolGsmProperties.Get_LogFile: WideString;
begin
    Result := DefaultInterface.LogFile;
end;

procedure TSmsProtocolGsmProperties.Set_LogFile(const pVal: WideString);
  { Warning: The property LogFile has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.LogFile := pVal;
end;

function TSmsProtocolGsmProperties.Get_ActivityFile: WideString;
begin
    Result := DefaultInterface.ActivityFile;
end;

procedure TSmsProtocolGsmProperties.Set_ActivityFile(const pVal: WideString);
  { Warning: The property ActivityFile has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ActivityFile := pVal;
end;

procedure TSmsProtocolGsmProperties.Set_DistributionID(const Param1: WideString);
  { Warning: The property DistributionID has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionID := Param1;
end;

procedure TSmsProtocolGsmProperties.Set_DistributionKey(const Param1: WideString);
  { Warning: The property DistributionKey has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionKey := Param1;
end;

function TSmsProtocolGsmProperties.Get_Module: WideString;
begin
    Result := DefaultInterface.Module;
end;

function TSmsProtocolGsmProperties.Get_Device: WideString;
begin
    Result := DefaultInterface.Device;
end;

procedure TSmsProtocolGsmProperties.Set_Device(const pVal: WideString);
  { Warning: The property Device has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Device := pVal;
end;

function TSmsProtocolGsmProperties.Get_DeviceSpeed: Integer;
begin
    Result := DefaultInterface.DeviceSpeed;
end;

procedure TSmsProtocolGsmProperties.Set_DeviceSpeed(pVal: Integer);
begin
  DefaultInterface.Set_DeviceSpeed(pVal);
end;

function TSmsProtocolGsmProperties.Get_DeviceInitString: WideString;
begin
    Result := DefaultInterface.DeviceInitString;
end;

procedure TSmsProtocolGsmProperties.Set_DeviceInitString(const pVal: WideString);
  { Warning: The property DeviceInitString has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DeviceInitString := pVal;
end;

function TSmsProtocolGsmProperties.Get_DeviceFlowControl: Integer;
begin
    Result := DefaultInterface.DeviceFlowControl;
end;

procedure TSmsProtocolGsmProperties.Set_DeviceFlowControl(pVal: Integer);
begin
  DefaultInterface.Set_DeviceFlowControl(pVal);
end;

function TSmsProtocolGsmProperties.Get_MessageStorage: Integer;
begin
    Result := DefaultInterface.MessageStorage;
end;

procedure TSmsProtocolGsmProperties.Set_MessageStorage(pVal: Integer);
begin
  DefaultInterface.Set_MessageStorage(pVal);
end;

function TSmsProtocolGsmProperties.Get_ReportsStorage: Integer;
begin
    Result := DefaultInterface.ReportsStorage;
end;

procedure TSmsProtocolGsmProperties.Set_ReportsStorage(pVal: Integer);
begin
  DefaultInterface.Set_ReportsStorage(pVal);
end;

function TSmsProtocolGsmProperties.Get_SMSC: WideString;
begin
    Result := DefaultInterface.SMSC;
end;

procedure TSmsProtocolGsmProperties.Set_SMSC(const pVal: WideString);
  { Warning: The property SMSC has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.SMSC := pVal;
end;

function TSmsProtocolGsmProperties.Get_AdvancedSettings: WideString;
begin
    Result := DefaultInterface.AdvancedSettings;
end;

procedure TSmsProtocolGsmProperties.Set_AdvancedSettings(const pVal: WideString);
  { Warning: The property AdvancedSettings has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AdvancedSettings := pVal;
end;

{$ENDIF}

class function CoSmsMessage.Create: ISmsMessage;
begin
  Result := CreateComObject(CLASS_SmsMessage) as ISmsMessage;
end;

class function CoSmsMessage.CreateRemote(const MachineName: string): ISmsMessage;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SmsMessage) as ISmsMessage;
end;

procedure TSmsMessage.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{6900ABDD-A93C-430F-9939-A0477D4D6F4E}';
    IntfIID:   '{74A9B740-4199-41D8-AF10-5D9ECB68980C}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TSmsMessage.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ISmsMessage;
  end;
end;

procedure TSmsMessage.ConnectTo(svrIntf: ISmsMessage);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TSmsMessage.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TSmsMessage.GetDefaultInterface: ISmsMessage;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TSmsMessage.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TSmsMessageProperties.Create(Self);
{$ENDIF}
end;

destructor TSmsMessage.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TSmsMessage.GetServerProperties: TSmsMessageProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TSmsMessage.Get_Sender: WideString;
begin
    Result := DefaultInterface.Sender;
end;

procedure TSmsMessage.Set_Sender(const pVal: WideString);
  { Warning: The property Sender has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Sender := pVal;
end;

function TSmsMessage.Get_Recipient: WideString;
begin
    Result := DefaultInterface.Recipient;
end;

procedure TSmsMessage.Set_Recipient(const pVal: WideString);
  { Warning: The property Recipient has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Recipient := pVal;
end;

function TSmsMessage.Get_Data: WideString;
begin
    Result := DefaultInterface.Data;
end;

procedure TSmsMessage.Set_Data(const pVal: WideString);
  { Warning: The property Data has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Data := pVal;
end;

function TSmsMessage.Get_Format: Integer;
begin
    Result := DefaultInterface.Format;
end;

procedure TSmsMessage.Set_Format(pVal: Integer);
begin
  DefaultInterface.Set_Format(pVal);
end;

function TSmsMessage.Get_ValidityPeriod: Integer;
begin
    Result := DefaultInterface.ValidityPeriod;
end;

procedure TSmsMessage.Set_ValidityPeriod(pVal: Integer);
begin
  DefaultInterface.Set_ValidityPeriod(pVal);
end;

function TSmsMessage.Get_SMSC: WideString;
begin
    Result := DefaultInterface.SMSC;
end;

procedure TSmsMessage.Set_SMSC(const pVal: WideString);
  { Warning: The property SMSC has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.SMSC := pVal;
end;

function TSmsMessage.Get_Time: WideString;
begin
    Result := DefaultInterface.Time;
end;

procedure TSmsMessage.Set_Time(const pVal: WideString);
  { Warning: The property Time has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Time := pVal;
end;

function TSmsMessage.Get_TimeSecs: Integer;
begin
    Result := DefaultInterface.TimeSecs;
end;

procedure TSmsMessage.Set_TimeSecs(pVal: Integer);
begin
  DefaultInterface.Set_TimeSecs(pVal);
end;

function TSmsMessage.Get_PID: Integer;
begin
    Result := DefaultInterface.PID;
end;

procedure TSmsMessage.Set_PID(pVal: Integer);
begin
  DefaultInterface.Set_PID(pVal);
end;

function TSmsMessage.Get_DCS: Integer;
begin
    Result := DefaultInterface.DCS;
end;

procedure TSmsMessage.Set_DCS(pVal: Integer);
begin
  DefaultInterface.Set_DCS(pVal);
end;

function TSmsMessage.Get_ESM: Integer;
begin
    Result := DefaultInterface.ESM;
end;

procedure TSmsMessage.Set_ESM(pVal: Integer);
begin
  DefaultInterface.Set_ESM(pVal);
end;

function TSmsMessage.Get_SourceTON: Integer;
begin
    Result := DefaultInterface.SourceTON;
end;

procedure TSmsMessage.Set_SourceTON(pVal: Integer);
begin
  DefaultInterface.Set_SourceTON(pVal);
end;

function TSmsMessage.Get_SourceNPI: Integer;
begin
    Result := DefaultInterface.SourceNPI;
end;

procedure TSmsMessage.Set_SourceNPI(pVal: Integer);
begin
  DefaultInterface.Set_SourceNPI(pVal);
end;

function TSmsMessage.Get_DestinationTON: Integer;
begin
    Result := DefaultInterface.DestinationTON;
end;

procedure TSmsMessage.Set_DestinationTON(pVal: Integer);
begin
  DefaultInterface.Set_DestinationTON(pVal);
end;

function TSmsMessage.Get_DestinationNPI: Integer;
begin
    Result := DefaultInterface.DestinationNPI;
end;

procedure TSmsMessage.Set_DestinationNPI(pVal: Integer);
begin
  DefaultInterface.Set_DestinationNPI(pVal);
end;

function TSmsMessage.Get_ServiceType: WideString;
begin
    Result := DefaultInterface.ServiceType;
end;

procedure TSmsMessage.Set_ServiceType(const pVal: WideString);
  { Warning: The property ServiceType has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ServiceType := pVal;
end;

function TSmsMessage.Get_RequestDeliveryStatus: Integer;
begin
    Result := DefaultInterface.RequestDeliveryStatus;
end;

procedure TSmsMessage.Set_RequestDeliveryStatus(pVal: Integer);
begin
  DefaultInterface.Set_RequestDeliveryStatus(pVal);
end;

procedure TSmsMessage.Clear;
begin
  DefaultInterface.Clear;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TSmsMessageProperties.Create(AServer: TSmsMessage);
begin
  inherited Create;
  FServer := AServer;
end;

function TSmsMessageProperties.GetDefaultInterface: ISmsMessage;
begin
  Result := FServer.DefaultInterface;
end;

function TSmsMessageProperties.Get_Sender: WideString;
begin
    Result := DefaultInterface.Sender;
end;

procedure TSmsMessageProperties.Set_Sender(const pVal: WideString);
  { Warning: The property Sender has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Sender := pVal;
end;

function TSmsMessageProperties.Get_Recipient: WideString;
begin
    Result := DefaultInterface.Recipient;
end;

procedure TSmsMessageProperties.Set_Recipient(const pVal: WideString);
  { Warning: The property Recipient has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Recipient := pVal;
end;

function TSmsMessageProperties.Get_Data: WideString;
begin
    Result := DefaultInterface.Data;
end;

procedure TSmsMessageProperties.Set_Data(const pVal: WideString);
  { Warning: The property Data has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Data := pVal;
end;

function TSmsMessageProperties.Get_Format: Integer;
begin
    Result := DefaultInterface.Format;
end;

procedure TSmsMessageProperties.Set_Format(pVal: Integer);
begin
  DefaultInterface.Set_Format(pVal);
end;

function TSmsMessageProperties.Get_ValidityPeriod: Integer;
begin
    Result := DefaultInterface.ValidityPeriod;
end;

procedure TSmsMessageProperties.Set_ValidityPeriod(pVal: Integer);
begin
  DefaultInterface.Set_ValidityPeriod(pVal);
end;

function TSmsMessageProperties.Get_SMSC: WideString;
begin
    Result := DefaultInterface.SMSC;
end;

procedure TSmsMessageProperties.Set_SMSC(const pVal: WideString);
  { Warning: The property SMSC has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.SMSC := pVal;
end;

function TSmsMessageProperties.Get_Time: WideString;
begin
    Result := DefaultInterface.Time;
end;

procedure TSmsMessageProperties.Set_Time(const pVal: WideString);
  { Warning: The property Time has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Time := pVal;
end;

function TSmsMessageProperties.Get_TimeSecs: Integer;
begin
    Result := DefaultInterface.TimeSecs;
end;

procedure TSmsMessageProperties.Set_TimeSecs(pVal: Integer);
begin
  DefaultInterface.Set_TimeSecs(pVal);
end;

function TSmsMessageProperties.Get_PID: Integer;
begin
    Result := DefaultInterface.PID;
end;

procedure TSmsMessageProperties.Set_PID(pVal: Integer);
begin
  DefaultInterface.Set_PID(pVal);
end;

function TSmsMessageProperties.Get_DCS: Integer;
begin
    Result := DefaultInterface.DCS;
end;

procedure TSmsMessageProperties.Set_DCS(pVal: Integer);
begin
  DefaultInterface.Set_DCS(pVal);
end;

function TSmsMessageProperties.Get_ESM: Integer;
begin
    Result := DefaultInterface.ESM;
end;

procedure TSmsMessageProperties.Set_ESM(pVal: Integer);
begin
  DefaultInterface.Set_ESM(pVal);
end;

function TSmsMessageProperties.Get_SourceTON: Integer;
begin
    Result := DefaultInterface.SourceTON;
end;

procedure TSmsMessageProperties.Set_SourceTON(pVal: Integer);
begin
  DefaultInterface.Set_SourceTON(pVal);
end;

function TSmsMessageProperties.Get_SourceNPI: Integer;
begin
    Result := DefaultInterface.SourceNPI;
end;

procedure TSmsMessageProperties.Set_SourceNPI(pVal: Integer);
begin
  DefaultInterface.Set_SourceNPI(pVal);
end;

function TSmsMessageProperties.Get_DestinationTON: Integer;
begin
    Result := DefaultInterface.DestinationTON;
end;

procedure TSmsMessageProperties.Set_DestinationTON(pVal: Integer);
begin
  DefaultInterface.Set_DestinationTON(pVal);
end;

function TSmsMessageProperties.Get_DestinationNPI: Integer;
begin
    Result := DefaultInterface.DestinationNPI;
end;

procedure TSmsMessageProperties.Set_DestinationNPI(pVal: Integer);
begin
  DefaultInterface.Set_DestinationNPI(pVal);
end;

function TSmsMessageProperties.Get_ServiceType: WideString;
begin
    Result := DefaultInterface.ServiceType;
end;

procedure TSmsMessageProperties.Set_ServiceType(const pVal: WideString);
  { Warning: The property ServiceType has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ServiceType := pVal;
end;

function TSmsMessageProperties.Get_RequestDeliveryStatus: Integer;
begin
    Result := DefaultInterface.RequestDeliveryStatus;
end;

procedure TSmsMessageProperties.Set_RequestDeliveryStatus(pVal: Integer);
begin
  DefaultInterface.Set_RequestDeliveryStatus(pVal);
end;

{$ENDIF}

class function CoSmsProtocolSmpp.Create: ISmsProtocolSmpp;
begin
  Result := CreateComObject(CLASS_SmsProtocolSmpp) as ISmsProtocolSmpp;
end;

class function CoSmsProtocolSmpp.CreateRemote(const MachineName: string): ISmsProtocolSmpp;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SmsProtocolSmpp) as ISmsProtocolSmpp;
end;

procedure TSmsProtocolSmpp.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{0B3C73A0-D209-465A-B6C4-9B6AC9DCC424}';
    IntfIID:   '{FDFEC40E-1773-488E-86DC-D4C5CFD0BF10}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TSmsProtocolSmpp.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ISmsProtocolSmpp;
  end;
end;

procedure TSmsProtocolSmpp.ConnectTo(svrIntf: ISmsProtocolSmpp);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TSmsProtocolSmpp.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TSmsProtocolSmpp.GetDefaultInterface: ISmsProtocolSmpp;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TSmsProtocolSmpp.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TSmsProtocolSmppProperties.Create(Self);
{$ENDIF}
end;

destructor TSmsProtocolSmpp.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TSmsProtocolSmpp.GetServerProperties: TSmsProtocolSmppProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TSmsProtocolSmpp.Get_LastError: Integer;
begin
    Result := DefaultInterface.LastError;
end;

function TSmsProtocolSmpp.Get_Version: WideString;
begin
    Result := DefaultInterface.Version;
end;

function TSmsProtocolSmpp.Get_Build: WideString;
begin
    Result := DefaultInterface.Build;
end;

function TSmsProtocolSmpp.Get_ExpirationDate: WideString;
begin
    Result := DefaultInterface.ExpirationDate;
end;

procedure TSmsProtocolSmpp.Set_Reserved(Param1: Integer);
begin
  DefaultInterface.Set_Reserved(Param1);
end;

function TSmsProtocolSmpp.Get_LogFile: WideString;
begin
    Result := DefaultInterface.LogFile;
end;

procedure TSmsProtocolSmpp.Set_LogFile(const pVal: WideString);
  { Warning: The property LogFile has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.LogFile := pVal;
end;

function TSmsProtocolSmpp.Get_ActivityFile: WideString;
begin
    Result := DefaultInterface.ActivityFile;
end;

procedure TSmsProtocolSmpp.Set_ActivityFile(const pVal: WideString);
  { Warning: The property ActivityFile has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ActivityFile := pVal;
end;

procedure TSmsProtocolSmpp.Set_DistributionID(const Param1: WideString);
  { Warning: The property DistributionID has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionID := Param1;
end;

procedure TSmsProtocolSmpp.Set_DistributionKey(const Param1: WideString);
  { Warning: The property DistributionKey has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionKey := Param1;
end;

function TSmsProtocolSmpp.Get_Server: WideString;
begin
    Result := DefaultInterface.Server;
end;

procedure TSmsProtocolSmpp.Set_Server(const pVal: WideString);
  { Warning: The property Server has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Server := pVal;
end;

function TSmsProtocolSmpp.Get_ServerPort: Integer;
begin
    Result := DefaultInterface.ServerPort;
end;

procedure TSmsProtocolSmpp.Set_ServerPort(pVal: Integer);
begin
  DefaultInterface.Set_ServerPort(pVal);
end;

function TSmsProtocolSmpp.Get_ServerTimeout: Integer;
begin
    Result := DefaultInterface.ServerTimeout;
end;

procedure TSmsProtocolSmpp.Set_ServerTimeout(pVal: Integer);
begin
  DefaultInterface.Set_ServerTimeout(pVal);
end;

function TSmsProtocolSmpp.Get_ServerKeepAlive: Integer;
begin
    Result := DefaultInterface.ServerKeepAlive;
end;

procedure TSmsProtocolSmpp.Set_ServerKeepAlive(pVal: Integer);
begin
  DefaultInterface.Set_ServerKeepAlive(pVal);
end;

function TSmsProtocolSmpp.Get_SystemID: WideString;
begin
    Result := DefaultInterface.SystemID;
end;

procedure TSmsProtocolSmpp.Set_SystemID(const pVal: WideString);
  { Warning: The property SystemID has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.SystemID := pVal;
end;

function TSmsProtocolSmpp.Get_SystemPassword: WideString;
begin
    Result := DefaultInterface.SystemPassword;
end;

procedure TSmsProtocolSmpp.Set_SystemPassword(const pVal: WideString);
  { Warning: The property SystemPassword has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.SystemPassword := pVal;
end;

function TSmsProtocolSmpp.Get_SystemType: WideString;
begin
    Result := DefaultInterface.SystemType;
end;

procedure TSmsProtocolSmpp.Set_SystemType(const pVal: WideString);
  { Warning: The property SystemType has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.SystemType := pVal;
end;

function TSmsProtocolSmpp.Get_SystemMode: Integer;
begin
    Result := DefaultInterface.SystemMode;
end;

procedure TSmsProtocolSmpp.Set_SystemMode(pVal: Integer);
begin
  DefaultInterface.Set_SystemMode(pVal);
end;

function TSmsProtocolSmpp.Get_SystemVersion: Integer;
begin
    Result := DefaultInterface.SystemVersion;
end;

procedure TSmsProtocolSmpp.Set_SystemVersion(pVal: Integer);
begin
  DefaultInterface.Set_SystemVersion(pVal);
end;

function TSmsProtocolSmpp.Get_SystemSourceAddress: WideString;
begin
    Result := DefaultInterface.SystemSourceAddress;
end;

procedure TSmsProtocolSmpp.Set_SystemSourceAddress(const pVal: WideString);
  { Warning: The property SystemSourceAddress has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.SystemSourceAddress := pVal;
end;

function TSmsProtocolSmpp.Get_SystemSourceTON: Integer;
begin
    Result := DefaultInterface.SystemSourceTON;
end;

procedure TSmsProtocolSmpp.Set_SystemSourceTON(pVal: Integer);
begin
  DefaultInterface.Set_SystemSourceTON(pVal);
end;

function TSmsProtocolSmpp.Get_SystemSourceNPI: Integer;
begin
    Result := DefaultInterface.SystemSourceNPI;
end;

procedure TSmsProtocolSmpp.Set_SystemSourceNPI(pVal: Integer);
begin
  DefaultInterface.Set_SystemSourceNPI(pVal);
end;

function TSmsProtocolSmpp.Get_SystemThroughput: Integer;
begin
    Result := DefaultInterface.SystemThroughput;
end;

procedure TSmsProtocolSmpp.Set_SystemThroughput(pVal: Integer);
begin
  DefaultInterface.Set_SystemThroughput(pVal);
end;

function TSmsProtocolSmpp.Get_SystemCharSet: Integer;
begin
    Result := DefaultInterface.SystemCharSet;
end;

procedure TSmsProtocolSmpp.Set_SystemCharSet(pVal: Integer);
begin
  DefaultInterface.Set_SystemCharSet(pVal);
end;

function TSmsProtocolSmpp.Get_AddressRange: WideString;
begin
    Result := DefaultInterface.AddressRange;
end;

procedure TSmsProtocolSmpp.Set_AddressRange(const pVal: WideString);
  { Warning: The property AddressRange has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AddressRange := pVal;
end;

function TSmsProtocolSmpp.Get_DeliveryReportFormat: Integer;
begin
    Result := DefaultInterface.DeliveryReportFormat;
end;

procedure TSmsProtocolSmpp.Set_DeliveryReportFormat(pVal: Integer);
begin
  DefaultInterface.Set_DeliveryReportFormat(pVal);
end;

function TSmsProtocolSmpp.Get_IsConnected: Integer;
begin
    Result := DefaultInterface.IsConnected;
end;

function TSmsProtocolSmpp.Get_SystemDestinationTON: Integer;
begin
    Result := DefaultInterface.SystemDestinationTON;
end;

procedure TSmsProtocolSmpp.Set_SystemDestinationTON(pVal: Integer);
begin
  DefaultInterface.Set_SystemDestinationTON(pVal);
end;

function TSmsProtocolSmpp.Get_SystemDestinationNPI: Integer;
begin
    Result := DefaultInterface.SystemDestinationNPI;
end;

procedure TSmsProtocolSmpp.Set_SystemDestinationNPI(pVal: Integer);
begin
  DefaultInterface.Set_SystemDestinationNPI(pVal);
end;

function TSmsProtocolSmpp.Get_AdvancedSettings: WideString;
begin
    Result := DefaultInterface.AdvancedSettings;
end;

procedure TSmsProtocolSmpp.Set_AdvancedSettings(const pVal: WideString);
  { Warning: The property AdvancedSettings has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AdvancedSettings := pVal;
end;

function TSmsProtocolSmpp.Get_Module: WideString;
begin
    Result := DefaultInterface.Module;
end;

procedure TSmsProtocolSmpp.Clear;
begin
  DefaultInterface.Clear;
end;

function TSmsProtocolSmpp.GetErrorDescription(newVal: Integer): WideString;
begin
  Result := DefaultInterface.GetErrorDescription(newVal);
end;

procedure TSmsProtocolSmpp.Activate(const newVal: WideString; bPersistent: Integer);
begin
  DefaultInterface.Activate(newVal, bPersistent);
end;

procedure TSmsProtocolSmpp.Connect1;
begin
  DefaultInterface.Connect;
end;

procedure TSmsProtocolSmpp.Disconnect1;
begin
  DefaultInterface.Disconnect;
end;

function TSmsProtocolSmpp.Send(var pMessage: OleVariant): WideString;
begin
  Result := DefaultInterface.Send(pMessage);
end;

procedure TSmsProtocolSmpp.SetTLVValue(lType: Integer; lTLV: Integer; newVal: OleVariant);
begin
  DefaultInterface.SetTLVValue(lType, lTLV, newVal);
end;

function TSmsProtocolSmpp.GetTLVValue(lTLV: Integer): OleVariant;
begin
  Result := DefaultInterface.GetTLVValue(lTLV);
end;

function TSmsProtocolSmpp.QueryStatus(const bstrRef: WideString; bWaitUntilCompleted: Integer): OleVariant;
begin
  Result := DefaultInterface.QueryStatus(bstrRef, bWaitUntilCompleted);
end;

function TSmsProtocolSmpp.CountReceivedMessages: Integer;
begin
  Result := DefaultInterface.CountReceivedMessages;
end;

function TSmsProtocolSmpp.GetFirstMessage: OleVariant;
begin
  Result := DefaultInterface.GetFirstMessage;
end;

function TSmsProtocolSmpp.GetNextMessage: OleVariant;
begin
  Result := DefaultInterface.GetNextMessage;
end;

function TSmsProtocolSmpp.GetMessage(lIndex: Integer): OleVariant;
begin
  Result := DefaultInterface.GetMessage(lIndex);
end;

procedure TSmsProtocolSmpp.ProviderLoadConfig(const bstrConfigFile: WideString);
begin
  DefaultInterface.ProviderLoadConfig(bstrConfigFile);
end;

procedure TSmsProtocolSmpp.ProviderSaveConfig(const bstrConfigFile: WideString);
begin
  DefaultInterface.ProviderSaveConfig(bstrConfigFile);
end;

procedure TSmsProtocolSmpp.Sleep(lDelay: Integer);
begin
  DefaultInterface.Sleep(lDelay);
end;

procedure TSmsProtocolSmpp.LoadReports(const bstrFileName: WideString);
begin
  DefaultInterface.LoadReports(bstrFileName);
end;

procedure TSmsProtocolSmpp.SaveReports(const bstrFileName: WideString);
begin
  DefaultInterface.SaveReports(bstrFileName);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TSmsProtocolSmppProperties.Create(AServer: TSmsProtocolSmpp);
begin
  inherited Create;
  FServer := AServer;
end;

function TSmsProtocolSmppProperties.GetDefaultInterface: ISmsProtocolSmpp;
begin
  Result := FServer.DefaultInterface;
end;

function TSmsProtocolSmppProperties.Get_LastError: Integer;
begin
    Result := DefaultInterface.LastError;
end;

function TSmsProtocolSmppProperties.Get_Version: WideString;
begin
    Result := DefaultInterface.Version;
end;

function TSmsProtocolSmppProperties.Get_Build: WideString;
begin
    Result := DefaultInterface.Build;
end;

function TSmsProtocolSmppProperties.Get_ExpirationDate: WideString;
begin
    Result := DefaultInterface.ExpirationDate;
end;

procedure TSmsProtocolSmppProperties.Set_Reserved(Param1: Integer);
begin
  DefaultInterface.Set_Reserved(Param1);
end;

function TSmsProtocolSmppProperties.Get_LogFile: WideString;
begin
    Result := DefaultInterface.LogFile;
end;

procedure TSmsProtocolSmppProperties.Set_LogFile(const pVal: WideString);
  { Warning: The property LogFile has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.LogFile := pVal;
end;

function TSmsProtocolSmppProperties.Get_ActivityFile: WideString;
begin
    Result := DefaultInterface.ActivityFile;
end;

procedure TSmsProtocolSmppProperties.Set_ActivityFile(const pVal: WideString);
  { Warning: The property ActivityFile has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ActivityFile := pVal;
end;

procedure TSmsProtocolSmppProperties.Set_DistributionID(const Param1: WideString);
  { Warning: The property DistributionID has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionID := Param1;
end;

procedure TSmsProtocolSmppProperties.Set_DistributionKey(const Param1: WideString);
  { Warning: The property DistributionKey has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionKey := Param1;
end;

function TSmsProtocolSmppProperties.Get_Server: WideString;
begin
    Result := DefaultInterface.Server;
end;

procedure TSmsProtocolSmppProperties.Set_Server(const pVal: WideString);
  { Warning: The property Server has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Server := pVal;
end;

function TSmsProtocolSmppProperties.Get_ServerPort: Integer;
begin
    Result := DefaultInterface.ServerPort;
end;

procedure TSmsProtocolSmppProperties.Set_ServerPort(pVal: Integer);
begin
  DefaultInterface.Set_ServerPort(pVal);
end;

function TSmsProtocolSmppProperties.Get_ServerTimeout: Integer;
begin
    Result := DefaultInterface.ServerTimeout;
end;

procedure TSmsProtocolSmppProperties.Set_ServerTimeout(pVal: Integer);
begin
  DefaultInterface.Set_ServerTimeout(pVal);
end;

function TSmsProtocolSmppProperties.Get_ServerKeepAlive: Integer;
begin
    Result := DefaultInterface.ServerKeepAlive;
end;

procedure TSmsProtocolSmppProperties.Set_ServerKeepAlive(pVal: Integer);
begin
  DefaultInterface.Set_ServerKeepAlive(pVal);
end;

function TSmsProtocolSmppProperties.Get_SystemID: WideString;
begin
    Result := DefaultInterface.SystemID;
end;

procedure TSmsProtocolSmppProperties.Set_SystemID(const pVal: WideString);
  { Warning: The property SystemID has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.SystemID := pVal;
end;

function TSmsProtocolSmppProperties.Get_SystemPassword: WideString;
begin
    Result := DefaultInterface.SystemPassword;
end;

procedure TSmsProtocolSmppProperties.Set_SystemPassword(const pVal: WideString);
  { Warning: The property SystemPassword has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.SystemPassword := pVal;
end;

function TSmsProtocolSmppProperties.Get_SystemType: WideString;
begin
    Result := DefaultInterface.SystemType;
end;

procedure TSmsProtocolSmppProperties.Set_SystemType(const pVal: WideString);
  { Warning: The property SystemType has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.SystemType := pVal;
end;

function TSmsProtocolSmppProperties.Get_SystemMode: Integer;
begin
    Result := DefaultInterface.SystemMode;
end;

procedure TSmsProtocolSmppProperties.Set_SystemMode(pVal: Integer);
begin
  DefaultInterface.Set_SystemMode(pVal);
end;

function TSmsProtocolSmppProperties.Get_SystemVersion: Integer;
begin
    Result := DefaultInterface.SystemVersion;
end;

procedure TSmsProtocolSmppProperties.Set_SystemVersion(pVal: Integer);
begin
  DefaultInterface.Set_SystemVersion(pVal);
end;

function TSmsProtocolSmppProperties.Get_SystemSourceAddress: WideString;
begin
    Result := DefaultInterface.SystemSourceAddress;
end;

procedure TSmsProtocolSmppProperties.Set_SystemSourceAddress(const pVal: WideString);
  { Warning: The property SystemSourceAddress has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.SystemSourceAddress := pVal;
end;

function TSmsProtocolSmppProperties.Get_SystemSourceTON: Integer;
begin
    Result := DefaultInterface.SystemSourceTON;
end;

procedure TSmsProtocolSmppProperties.Set_SystemSourceTON(pVal: Integer);
begin
  DefaultInterface.Set_SystemSourceTON(pVal);
end;

function TSmsProtocolSmppProperties.Get_SystemSourceNPI: Integer;
begin
    Result := DefaultInterface.SystemSourceNPI;
end;

procedure TSmsProtocolSmppProperties.Set_SystemSourceNPI(pVal: Integer);
begin
  DefaultInterface.Set_SystemSourceNPI(pVal);
end;

function TSmsProtocolSmppProperties.Get_SystemThroughput: Integer;
begin
    Result := DefaultInterface.SystemThroughput;
end;

procedure TSmsProtocolSmppProperties.Set_SystemThroughput(pVal: Integer);
begin
  DefaultInterface.Set_SystemThroughput(pVal);
end;

function TSmsProtocolSmppProperties.Get_SystemCharSet: Integer;
begin
    Result := DefaultInterface.SystemCharSet;
end;

procedure TSmsProtocolSmppProperties.Set_SystemCharSet(pVal: Integer);
begin
  DefaultInterface.Set_SystemCharSet(pVal);
end;

function TSmsProtocolSmppProperties.Get_AddressRange: WideString;
begin
    Result := DefaultInterface.AddressRange;
end;

procedure TSmsProtocolSmppProperties.Set_AddressRange(const pVal: WideString);
  { Warning: The property AddressRange has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AddressRange := pVal;
end;

function TSmsProtocolSmppProperties.Get_DeliveryReportFormat: Integer;
begin
    Result := DefaultInterface.DeliveryReportFormat;
end;

procedure TSmsProtocolSmppProperties.Set_DeliveryReportFormat(pVal: Integer);
begin
  DefaultInterface.Set_DeliveryReportFormat(pVal);
end;

function TSmsProtocolSmppProperties.Get_IsConnected: Integer;
begin
    Result := DefaultInterface.IsConnected;
end;

function TSmsProtocolSmppProperties.Get_SystemDestinationTON: Integer;
begin
    Result := DefaultInterface.SystemDestinationTON;
end;

procedure TSmsProtocolSmppProperties.Set_SystemDestinationTON(pVal: Integer);
begin
  DefaultInterface.Set_SystemDestinationTON(pVal);
end;

function TSmsProtocolSmppProperties.Get_SystemDestinationNPI: Integer;
begin
    Result := DefaultInterface.SystemDestinationNPI;
end;

procedure TSmsProtocolSmppProperties.Set_SystemDestinationNPI(pVal: Integer);
begin
  DefaultInterface.Set_SystemDestinationNPI(pVal);
end;

function TSmsProtocolSmppProperties.Get_AdvancedSettings: WideString;
begin
    Result := DefaultInterface.AdvancedSettings;
end;

procedure TSmsProtocolSmppProperties.Set_AdvancedSettings(const pVal: WideString);
  { Warning: The property AdvancedSettings has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AdvancedSettings := pVal;
end;

function TSmsProtocolSmppProperties.Get_Module: WideString;
begin
    Result := DefaultInterface.Module;
end;

{$ENDIF}

class function CoSmsConstants.Create: ISmsConstants;
begin
  Result := CreateComObject(CLASS_SmsConstants) as ISmsConstants;
end;

class function CoSmsConstants.CreateRemote(const MachineName: string): ISmsConstants;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SmsConstants) as ISmsConstants;
end;

procedure TSmsConstants.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{D59B5767-F7FA-47B7-A1D3-816934964EC4}';
    IntfIID:   '{B20DC41C-F2CB-4B5A-B174-73CEA23BF84B}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TSmsConstants.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ISmsConstants;
  end;
end;

procedure TSmsConstants.ConnectTo(svrIntf: ISmsConstants);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TSmsConstants.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TSmsConstants.GetDefaultInterface: ISmsConstants;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TSmsConstants.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TSmsConstantsProperties.Create(Self);
{$ENDIF}
end;

destructor TSmsConstants.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TSmsConstants.GetServerProperties: TSmsConstantsProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TSmsConstants.Get_asMESSAGEFORMAT_TEXT: Integer;
begin
    Result := DefaultInterface.asMESSAGEFORMAT_TEXT;
end;

function TSmsConstants.Get_asMESSAGEFORMAT_TEXT_FLASH: Integer;
begin
    Result := DefaultInterface.asMESSAGEFORMAT_TEXT_FLASH;
end;

function TSmsConstants.Get_asMESSAGEFORMAT_TEXT_MULTIPART: Integer;
begin
    Result := DefaultInterface.asMESSAGEFORMAT_TEXT_MULTIPART;
end;

function TSmsConstants.Get_asMESSAGEFORMAT_TEXT_MULTIPART_FLASH: Integer;
begin
    Result := DefaultInterface.asMESSAGEFORMAT_TEXT_MULTIPART_FLASH;
end;

function TSmsConstants.Get_asMESSAGEFORMAT_DATA: Integer;
begin
    Result := DefaultInterface.asMESSAGEFORMAT_DATA;
end;

function TSmsConstants.Get_asMESSAGEFORMAT_DATA_UDH: Integer;
begin
    Result := DefaultInterface.asMESSAGEFORMAT_DATA_UDH;
end;

function TSmsConstants.Get_asMESSAGEFORMAT_UNICODE: Integer;
begin
    Result := DefaultInterface.asMESSAGEFORMAT_UNICODE;
end;

function TSmsConstants.Get_asMESSAGEFORMAT_UNICODE_FLASH: Integer;
begin
    Result := DefaultInterface.asMESSAGEFORMAT_UNICODE_FLASH;
end;

function TSmsConstants.Get_asMESSAGEFORMAT_UNICODE_MULTIPART: Integer;
begin
    Result := DefaultInterface.asMESSAGEFORMAT_UNICODE_MULTIPART;
end;

function TSmsConstants.Get_asMESSAGEFORMAT_UNICODE_MULTIPART_FLASH: Integer;
begin
    Result := DefaultInterface.asMESSAGEFORMAT_UNICODE_MULTIPART_FLASH;
end;

function TSmsConstants.Get_asMESSAGEFORMAT_REPORT: Integer;
begin
    Result := DefaultInterface.asMESSAGEFORMAT_REPORT;
end;

function TSmsConstants.Get_asMESSAGEFORMAT_NOTIFICATION_MMS: Integer;
begin
    Result := DefaultInterface.asMESSAGEFORMAT_NOTIFICATION_MMS;
end;

function TSmsConstants.Get_asSMPPMODE_TRANSCEIVER: Integer;
begin
    Result := DefaultInterface.asSMPPMODE_TRANSCEIVER;
end;

function TSmsConstants.Get_asSMPPMODE_TRANSMITTER: Integer;
begin
    Result := DefaultInterface.asSMPPMODE_TRANSMITTER;
end;

function TSmsConstants.Get_asSMPPMODE_RECEIVER: Integer;
begin
    Result := DefaultInterface.asSMPPMODE_RECEIVER;
end;

function TSmsConstants.Get_asPROVIDERTYPE_UCP: Integer;
begin
    Result := DefaultInterface.asPROVIDERTYPE_UCP;
end;

function TSmsConstants.Get_asPROVIDERTYPE_TAP_DEFAULT: Integer;
begin
    Result := DefaultInterface.asPROVIDERTYPE_TAP_DEFAULT;
end;

function TSmsConstants.Get_asPROVIDERTYPE_TAP_NOLF: Integer;
begin
    Result := DefaultInterface.asPROVIDERTYPE_TAP_NOLF;
end;

function TSmsConstants.Get_asPROVIDERTYPE_TAP_NOEOT: Integer;
begin
    Result := DefaultInterface.asPROVIDERTYPE_TAP_NOEOT;
end;

function TSmsConstants.Get_asDIALMODE_TONE: Integer;
begin
    Result := DefaultInterface.asDIALMODE_TONE;
end;

function TSmsConstants.Get_asDIALMODE_PULSE: Integer;
begin
    Result := DefaultInterface.asDIALMODE_PULSE;
end;

function TSmsConstants.Get_asSMPPVERSION_33: Integer;
begin
    Result := DefaultInterface.asSMPPVERSION_33;
end;

function TSmsConstants.Get_asSMPPVERSION_34: Integer;
begin
    Result := DefaultInterface.asSMPPVERSION_34;
end;

function TSmsConstants.Get_asSMPPVERSION_50: Integer;
begin
    Result := DefaultInterface.asSMPPVERSION_50;
end;

function TSmsConstants.Get_asSMPP_TLV_1BYTE: Integer;
begin
    Result := DefaultInterface.asSMPP_TLV_1BYTE;
end;

function TSmsConstants.Get_asSMPP_TLV_2BYTE: Integer;
begin
    Result := DefaultInterface.asSMPP_TLV_2BYTE;
end;

function TSmsConstants.Get_asSMPP_TLV_4BYTE: Integer;
begin
    Result := DefaultInterface.asSMPP_TLV_4BYTE;
end;

function TSmsConstants.Get_asSMPP_TLV_COCTET: Integer;
begin
    Result := DefaultInterface.asSMPP_TLV_COCTET;
end;

function TSmsConstants.Get_asSMPP_TLV_OCTET: Integer;
begin
    Result := DefaultInterface.asSMPP_TLV_OCTET;
end;

function TSmsConstants.Get_asSMPP_TLV_VARIABLE: Integer;
begin
    Result := DefaultInterface.asSMPP_TLV_VARIABLE;
end;

function TSmsConstants.Get_asDELIVERYSTATUS_SCHEDULED: Integer;
begin
    Result := DefaultInterface.asDELIVERYSTATUS_SCHEDULED;
end;

function TSmsConstants.Get_asDELIVERYSTATUS_ENROUTE: Integer;
begin
    Result := DefaultInterface.asDELIVERYSTATUS_ENROUTE;
end;

function TSmsConstants.Get_asDELIVERYSTATUS_DELIVERED: Integer;
begin
    Result := DefaultInterface.asDELIVERYSTATUS_DELIVERED;
end;

function TSmsConstants.Get_asDELIVERYSTATUS_EXPIRED: Integer;
begin
    Result := DefaultInterface.asDELIVERYSTATUS_EXPIRED;
end;

function TSmsConstants.Get_asDELIVERYSTATUS_DELETED: Integer;
begin
    Result := DefaultInterface.asDELIVERYSTATUS_DELETED;
end;

function TSmsConstants.Get_asDELIVERYSTATUS_UNDELIVERABLE: Integer;
begin
    Result := DefaultInterface.asDELIVERYSTATUS_UNDELIVERABLE;
end;

function TSmsConstants.Get_asDELIVERYSTATUS_ACCEPTED: Integer;
begin
    Result := DefaultInterface.asDELIVERYSTATUS_ACCEPTED;
end;

function TSmsConstants.Get_asDELIVERYSTATUS_UNKNOWN: Integer;
begin
    Result := DefaultInterface.asDELIVERYSTATUS_UNKNOWN;
end;

function TSmsConstants.Get_asDELIVERYSTATUS_REJECTED: Integer;
begin
    Result := DefaultInterface.asDELIVERYSTATUS_REJECTED;
end;

function TSmsConstants.Get_asDELIVERYSTATUS_SKIPPED: Integer;
begin
    Result := DefaultInterface.asDELIVERYSTATUS_SKIPPED;
end;

function TSmsConstants.Get_asDELIVERYSTATUS_SUBMITTED: Integer;
begin
    Result := DefaultInterface.asDELIVERYSTATUS_SUBMITTED;
end;

function TSmsConstants.Get_asDELIVERYSTATUS_SUBMITREQUESTED: Integer;
begin
    Result := DefaultInterface.asDELIVERYSTATUS_SUBMITREQUESTED;
end;

function TSmsConstants.Get_asDELIVERYSTATUS_FAILED: Integer;
begin
    Result := DefaultInterface.asDELIVERYSTATUS_FAILED;
end;

function TSmsConstants.Get_asDELIVERYSTATUS_NOCREDITS: Integer;
begin
    Result := DefaultInterface.asDELIVERYSTATUS_NOCREDITS;
end;

function TSmsConstants.Get_asWAPPUSH_SERVICE_INDICATION: Integer;
begin
    Result := DefaultInterface.asWAPPUSH_SERVICE_INDICATION;
end;

function TSmsConstants.Get_asWAPPUSH_SERVICE_LOAD: Integer;
begin
    Result := DefaultInterface.asWAPPUSH_SERVICE_LOAD;
end;

function TSmsConstants.Get_asWAPPUSHSIGNAL_NONE: Integer;
begin
    Result := DefaultInterface.asWAPPUSHSIGNAL_NONE;
end;

function TSmsConstants.Get_asWAPPUSHSIGNAL_LOW: Integer;
begin
    Result := DefaultInterface.asWAPPUSHSIGNAL_LOW;
end;

function TSmsConstants.Get_asWAPPUSHSIGNAL_MEDIUM: Integer;
begin
    Result := DefaultInterface.asWAPPUSHSIGNAL_MEDIUM;
end;

function TSmsConstants.Get_asWAPPUSHSIGNAL_HIGH: Integer;
begin
    Result := DefaultInterface.asWAPPUSHSIGNAL_HIGH;
end;

function TSmsConstants.Get_asWAPPUSHSIGNAL_DELETE: Integer;
begin
    Result := DefaultInterface.asWAPPUSHSIGNAL_DELETE;
end;

function TSmsConstants.Get_asWAPPUSH_ACTION_EXECUTE_LOW: Integer;
begin
    Result := DefaultInterface.asWAPPUSH_ACTION_EXECUTE_LOW;
end;

function TSmsConstants.Get_asWAPPUSH_ACTION_EXECUTE_HIGH: Integer;
begin
    Result := DefaultInterface.asWAPPUSH_ACTION_EXECUTE_HIGH;
end;

function TSmsConstants.Get_asWAPPUSH_ACTION_CACHE: Integer;
begin
    Result := DefaultInterface.asWAPPUSH_ACTION_CACHE;
end;

function TSmsConstants.Get_asDEVICESETTINGS_DEFAULT: Integer;
begin
    Result := DefaultInterface.asDEVICESETTINGS_DEFAULT;
end;

function TSmsConstants.Get_asDEVICESETTINGS_8N1: Integer;
begin
    Result := DefaultInterface.asDEVICESETTINGS_8N1;
end;

function TSmsConstants.Get_asDEVICESETTINGS_7E1: Integer;
begin
    Result := DefaultInterface.asDEVICESETTINGS_7E1;
end;

function TSmsConstants.Get_asSMPPCHARSET_DEFAULT: Integer;
begin
    Result := DefaultInterface.asSMPPCHARSET_DEFAULT;
end;

function TSmsConstants.Get_asSMPPCHARSET_GSM: Integer;
begin
    Result := DefaultInterface.asSMPPCHARSET_GSM;
end;

function TSmsConstants.Get_asSMPPCHARSET_ASCII: Integer;
begin
    Result := DefaultInterface.asSMPPCHARSET_ASCII;
end;

function TSmsConstants.Get_asSMPPCHARSET_LATIN: Integer;
begin
    Result := DefaultInterface.asSMPPCHARSET_LATIN;
end;

function TSmsConstants.Get_asSMPPCHARSET_JIS: Integer;
begin
    Result := DefaultInterface.asSMPPCHARSET_JIS;
end;

function TSmsConstants.Get_asSMPPCHARSET_CYRILLIC: Integer;
begin
    Result := DefaultInterface.asSMPPCHARSET_CYRILLIC;
end;

function TSmsConstants.Get_asSMPPCHARSET_HEBREW: Integer;
begin
    Result := DefaultInterface.asSMPPCHARSET_HEBREW;
end;

function TSmsConstants.Get_asSMPPCHARSET_JAPANESE: Integer;
begin
    Result := DefaultInterface.asSMPPCHARSET_JAPANESE;
end;

function TSmsConstants.Get_asSMPPCHARSET_GREEK: Integer;
begin
    Result := DefaultInterface.asSMPPCHARSET_GREEK;
end;

function TSmsConstants.Get_asSTORAGE_ALL: Integer;
begin
    Result := DefaultInterface.asSTORAGE_ALL;
end;

function TSmsConstants.Get_asSTORAGE_SIM: Integer;
begin
    Result := DefaultInterface.asSTORAGE_SIM;
end;

function TSmsConstants.Get_asSTORAGE_DEVICE: Integer;
begin
    Result := DefaultInterface.asSTORAGE_DEVICE;
end;

function TSmsConstants.Get_asSTORAGE_COMBINED: Integer;
begin
    Result := DefaultInterface.asSTORAGE_COMBINED;
end;

function TSmsConstants.Get_asSTORAGE_REPORTS: Integer;
begin
    Result := DefaultInterface.asSTORAGE_REPORTS;
end;

function TSmsConstants.Get_asDEVICEFLOWCONTROL_DEFAULT: Integer;
begin
    Result := DefaultInterface.asDEVICEFLOWCONTROL_DEFAULT;
end;

function TSmsConstants.Get_asDEVICEFLOWCONTROL_ENABLE: Integer;
begin
    Result := DefaultInterface.asDEVICEFLOWCONTROL_ENABLE;
end;

function TSmsConstants.Get_asDEVICEFLOWCONTROL_DISABLE: Integer;
begin
    Result := DefaultInterface.asDEVICEFLOWCONTROL_DISABLE;
end;

function TSmsConstants.Get_asMMS_CLASS_ADVERTISEMENT: Integer;
begin
    Result := DefaultInterface.asMMS_CLASS_ADVERTISEMENT;
end;

function TSmsConstants.Get_asMMS_CLASS_INFORMATIONAL: Integer;
begin
    Result := DefaultInterface.asMMS_CLASS_INFORMATIONAL;
end;

function TSmsConstants.Get_asMMS_CLASS_AUTO: Integer;
begin
    Result := DefaultInterface.asMMS_CLASS_AUTO;
end;

function TSmsConstants.Get_asMMS_CLASS_PERSONAL: Integer;
begin
    Result := DefaultInterface.asMMS_CLASS_PERSONAL;
end;

function TSmsConstants.Get_asSMPPDELIVERYREPORTFORMAT_HEX: Integer;
begin
    Result := DefaultInterface.asSMPPDELIVERYREPORTFORMAT_HEX;
end;

function TSmsConstants.Get_asSMPPDELIVERYREPORTFORMAT_DEC: Integer;
begin
    Result := DefaultInterface.asSMPPDELIVERYREPORTFORMAT_DEC;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TSmsConstantsProperties.Create(AServer: TSmsConstants);
begin
  inherited Create;
  FServer := AServer;
end;

function TSmsConstantsProperties.GetDefaultInterface: ISmsConstants;
begin
  Result := FServer.DefaultInterface;
end;

function TSmsConstantsProperties.Get_asMESSAGEFORMAT_TEXT: Integer;
begin
    Result := DefaultInterface.asMESSAGEFORMAT_TEXT;
end;

function TSmsConstantsProperties.Get_asMESSAGEFORMAT_TEXT_FLASH: Integer;
begin
    Result := DefaultInterface.asMESSAGEFORMAT_TEXT_FLASH;
end;

function TSmsConstantsProperties.Get_asMESSAGEFORMAT_TEXT_MULTIPART: Integer;
begin
    Result := DefaultInterface.asMESSAGEFORMAT_TEXT_MULTIPART;
end;

function TSmsConstantsProperties.Get_asMESSAGEFORMAT_TEXT_MULTIPART_FLASH: Integer;
begin
    Result := DefaultInterface.asMESSAGEFORMAT_TEXT_MULTIPART_FLASH;
end;

function TSmsConstantsProperties.Get_asMESSAGEFORMAT_DATA: Integer;
begin
    Result := DefaultInterface.asMESSAGEFORMAT_DATA;
end;

function TSmsConstantsProperties.Get_asMESSAGEFORMAT_DATA_UDH: Integer;
begin
    Result := DefaultInterface.asMESSAGEFORMAT_DATA_UDH;
end;

function TSmsConstantsProperties.Get_asMESSAGEFORMAT_UNICODE: Integer;
begin
    Result := DefaultInterface.asMESSAGEFORMAT_UNICODE;
end;

function TSmsConstantsProperties.Get_asMESSAGEFORMAT_UNICODE_FLASH: Integer;
begin
    Result := DefaultInterface.asMESSAGEFORMAT_UNICODE_FLASH;
end;

function TSmsConstantsProperties.Get_asMESSAGEFORMAT_UNICODE_MULTIPART: Integer;
begin
    Result := DefaultInterface.asMESSAGEFORMAT_UNICODE_MULTIPART;
end;

function TSmsConstantsProperties.Get_asMESSAGEFORMAT_UNICODE_MULTIPART_FLASH: Integer;
begin
    Result := DefaultInterface.asMESSAGEFORMAT_UNICODE_MULTIPART_FLASH;
end;

function TSmsConstantsProperties.Get_asMESSAGEFORMAT_REPORT: Integer;
begin
    Result := DefaultInterface.asMESSAGEFORMAT_REPORT;
end;

function TSmsConstantsProperties.Get_asMESSAGEFORMAT_NOTIFICATION_MMS: Integer;
begin
    Result := DefaultInterface.asMESSAGEFORMAT_NOTIFICATION_MMS;
end;

function TSmsConstantsProperties.Get_asSMPPMODE_TRANSCEIVER: Integer;
begin
    Result := DefaultInterface.asSMPPMODE_TRANSCEIVER;
end;

function TSmsConstantsProperties.Get_asSMPPMODE_TRANSMITTER: Integer;
begin
    Result := DefaultInterface.asSMPPMODE_TRANSMITTER;
end;

function TSmsConstantsProperties.Get_asSMPPMODE_RECEIVER: Integer;
begin
    Result := DefaultInterface.asSMPPMODE_RECEIVER;
end;

function TSmsConstantsProperties.Get_asPROVIDERTYPE_UCP: Integer;
begin
    Result := DefaultInterface.asPROVIDERTYPE_UCP;
end;

function TSmsConstantsProperties.Get_asPROVIDERTYPE_TAP_DEFAULT: Integer;
begin
    Result := DefaultInterface.asPROVIDERTYPE_TAP_DEFAULT;
end;

function TSmsConstantsProperties.Get_asPROVIDERTYPE_TAP_NOLF: Integer;
begin
    Result := DefaultInterface.asPROVIDERTYPE_TAP_NOLF;
end;

function TSmsConstantsProperties.Get_asPROVIDERTYPE_TAP_NOEOT: Integer;
begin
    Result := DefaultInterface.asPROVIDERTYPE_TAP_NOEOT;
end;

function TSmsConstantsProperties.Get_asDIALMODE_TONE: Integer;
begin
    Result := DefaultInterface.asDIALMODE_TONE;
end;

function TSmsConstantsProperties.Get_asDIALMODE_PULSE: Integer;
begin
    Result := DefaultInterface.asDIALMODE_PULSE;
end;

function TSmsConstantsProperties.Get_asSMPPVERSION_33: Integer;
begin
    Result := DefaultInterface.asSMPPVERSION_33;
end;

function TSmsConstantsProperties.Get_asSMPPVERSION_34: Integer;
begin
    Result := DefaultInterface.asSMPPVERSION_34;
end;

function TSmsConstantsProperties.Get_asSMPPVERSION_50: Integer;
begin
    Result := DefaultInterface.asSMPPVERSION_50;
end;

function TSmsConstantsProperties.Get_asSMPP_TLV_1BYTE: Integer;
begin
    Result := DefaultInterface.asSMPP_TLV_1BYTE;
end;

function TSmsConstantsProperties.Get_asSMPP_TLV_2BYTE: Integer;
begin
    Result := DefaultInterface.asSMPP_TLV_2BYTE;
end;

function TSmsConstantsProperties.Get_asSMPP_TLV_4BYTE: Integer;
begin
    Result := DefaultInterface.asSMPP_TLV_4BYTE;
end;

function TSmsConstantsProperties.Get_asSMPP_TLV_COCTET: Integer;
begin
    Result := DefaultInterface.asSMPP_TLV_COCTET;
end;

function TSmsConstantsProperties.Get_asSMPP_TLV_OCTET: Integer;
begin
    Result := DefaultInterface.asSMPP_TLV_OCTET;
end;

function TSmsConstantsProperties.Get_asSMPP_TLV_VARIABLE: Integer;
begin
    Result := DefaultInterface.asSMPP_TLV_VARIABLE;
end;

function TSmsConstantsProperties.Get_asDELIVERYSTATUS_SCHEDULED: Integer;
begin
    Result := DefaultInterface.asDELIVERYSTATUS_SCHEDULED;
end;

function TSmsConstantsProperties.Get_asDELIVERYSTATUS_ENROUTE: Integer;
begin
    Result := DefaultInterface.asDELIVERYSTATUS_ENROUTE;
end;

function TSmsConstantsProperties.Get_asDELIVERYSTATUS_DELIVERED: Integer;
begin
    Result := DefaultInterface.asDELIVERYSTATUS_DELIVERED;
end;

function TSmsConstantsProperties.Get_asDELIVERYSTATUS_EXPIRED: Integer;
begin
    Result := DefaultInterface.asDELIVERYSTATUS_EXPIRED;
end;

function TSmsConstantsProperties.Get_asDELIVERYSTATUS_DELETED: Integer;
begin
    Result := DefaultInterface.asDELIVERYSTATUS_DELETED;
end;

function TSmsConstantsProperties.Get_asDELIVERYSTATUS_UNDELIVERABLE: Integer;
begin
    Result := DefaultInterface.asDELIVERYSTATUS_UNDELIVERABLE;
end;

function TSmsConstantsProperties.Get_asDELIVERYSTATUS_ACCEPTED: Integer;
begin
    Result := DefaultInterface.asDELIVERYSTATUS_ACCEPTED;
end;

function TSmsConstantsProperties.Get_asDELIVERYSTATUS_UNKNOWN: Integer;
begin
    Result := DefaultInterface.asDELIVERYSTATUS_UNKNOWN;
end;

function TSmsConstantsProperties.Get_asDELIVERYSTATUS_REJECTED: Integer;
begin
    Result := DefaultInterface.asDELIVERYSTATUS_REJECTED;
end;

function TSmsConstantsProperties.Get_asDELIVERYSTATUS_SKIPPED: Integer;
begin
    Result := DefaultInterface.asDELIVERYSTATUS_SKIPPED;
end;

function TSmsConstantsProperties.Get_asDELIVERYSTATUS_SUBMITTED: Integer;
begin
    Result := DefaultInterface.asDELIVERYSTATUS_SUBMITTED;
end;

function TSmsConstantsProperties.Get_asDELIVERYSTATUS_SUBMITREQUESTED: Integer;
begin
    Result := DefaultInterface.asDELIVERYSTATUS_SUBMITREQUESTED;
end;

function TSmsConstantsProperties.Get_asDELIVERYSTATUS_FAILED: Integer;
begin
    Result := DefaultInterface.asDELIVERYSTATUS_FAILED;
end;

function TSmsConstantsProperties.Get_asDELIVERYSTATUS_NOCREDITS: Integer;
begin
    Result := DefaultInterface.asDELIVERYSTATUS_NOCREDITS;
end;

function TSmsConstantsProperties.Get_asWAPPUSH_SERVICE_INDICATION: Integer;
begin
    Result := DefaultInterface.asWAPPUSH_SERVICE_INDICATION;
end;

function TSmsConstantsProperties.Get_asWAPPUSH_SERVICE_LOAD: Integer;
begin
    Result := DefaultInterface.asWAPPUSH_SERVICE_LOAD;
end;

function TSmsConstantsProperties.Get_asWAPPUSHSIGNAL_NONE: Integer;
begin
    Result := DefaultInterface.asWAPPUSHSIGNAL_NONE;
end;

function TSmsConstantsProperties.Get_asWAPPUSHSIGNAL_LOW: Integer;
begin
    Result := DefaultInterface.asWAPPUSHSIGNAL_LOW;
end;

function TSmsConstantsProperties.Get_asWAPPUSHSIGNAL_MEDIUM: Integer;
begin
    Result := DefaultInterface.asWAPPUSHSIGNAL_MEDIUM;
end;

function TSmsConstantsProperties.Get_asWAPPUSHSIGNAL_HIGH: Integer;
begin
    Result := DefaultInterface.asWAPPUSHSIGNAL_HIGH;
end;

function TSmsConstantsProperties.Get_asWAPPUSHSIGNAL_DELETE: Integer;
begin
    Result := DefaultInterface.asWAPPUSHSIGNAL_DELETE;
end;

function TSmsConstantsProperties.Get_asWAPPUSH_ACTION_EXECUTE_LOW: Integer;
begin
    Result := DefaultInterface.asWAPPUSH_ACTION_EXECUTE_LOW;
end;

function TSmsConstantsProperties.Get_asWAPPUSH_ACTION_EXECUTE_HIGH: Integer;
begin
    Result := DefaultInterface.asWAPPUSH_ACTION_EXECUTE_HIGH;
end;

function TSmsConstantsProperties.Get_asWAPPUSH_ACTION_CACHE: Integer;
begin
    Result := DefaultInterface.asWAPPUSH_ACTION_CACHE;
end;

function TSmsConstantsProperties.Get_asDEVICESETTINGS_DEFAULT: Integer;
begin
    Result := DefaultInterface.asDEVICESETTINGS_DEFAULT;
end;

function TSmsConstantsProperties.Get_asDEVICESETTINGS_8N1: Integer;
begin
    Result := DefaultInterface.asDEVICESETTINGS_8N1;
end;

function TSmsConstantsProperties.Get_asDEVICESETTINGS_7E1: Integer;
begin
    Result := DefaultInterface.asDEVICESETTINGS_7E1;
end;

function TSmsConstantsProperties.Get_asSMPPCHARSET_DEFAULT: Integer;
begin
    Result := DefaultInterface.asSMPPCHARSET_DEFAULT;
end;

function TSmsConstantsProperties.Get_asSMPPCHARSET_GSM: Integer;
begin
    Result := DefaultInterface.asSMPPCHARSET_GSM;
end;

function TSmsConstantsProperties.Get_asSMPPCHARSET_ASCII: Integer;
begin
    Result := DefaultInterface.asSMPPCHARSET_ASCII;
end;

function TSmsConstantsProperties.Get_asSMPPCHARSET_LATIN: Integer;
begin
    Result := DefaultInterface.asSMPPCHARSET_LATIN;
end;

function TSmsConstantsProperties.Get_asSMPPCHARSET_JIS: Integer;
begin
    Result := DefaultInterface.asSMPPCHARSET_JIS;
end;

function TSmsConstantsProperties.Get_asSMPPCHARSET_CYRILLIC: Integer;
begin
    Result := DefaultInterface.asSMPPCHARSET_CYRILLIC;
end;

function TSmsConstantsProperties.Get_asSMPPCHARSET_HEBREW: Integer;
begin
    Result := DefaultInterface.asSMPPCHARSET_HEBREW;
end;

function TSmsConstantsProperties.Get_asSMPPCHARSET_JAPANESE: Integer;
begin
    Result := DefaultInterface.asSMPPCHARSET_JAPANESE;
end;

function TSmsConstantsProperties.Get_asSMPPCHARSET_GREEK: Integer;
begin
    Result := DefaultInterface.asSMPPCHARSET_GREEK;
end;

function TSmsConstantsProperties.Get_asSTORAGE_ALL: Integer;
begin
    Result := DefaultInterface.asSTORAGE_ALL;
end;

function TSmsConstantsProperties.Get_asSTORAGE_SIM: Integer;
begin
    Result := DefaultInterface.asSTORAGE_SIM;
end;

function TSmsConstantsProperties.Get_asSTORAGE_DEVICE: Integer;
begin
    Result := DefaultInterface.asSTORAGE_DEVICE;
end;

function TSmsConstantsProperties.Get_asSTORAGE_COMBINED: Integer;
begin
    Result := DefaultInterface.asSTORAGE_COMBINED;
end;

function TSmsConstantsProperties.Get_asSTORAGE_REPORTS: Integer;
begin
    Result := DefaultInterface.asSTORAGE_REPORTS;
end;

function TSmsConstantsProperties.Get_asDEVICEFLOWCONTROL_DEFAULT: Integer;
begin
    Result := DefaultInterface.asDEVICEFLOWCONTROL_DEFAULT;
end;

function TSmsConstantsProperties.Get_asDEVICEFLOWCONTROL_ENABLE: Integer;
begin
    Result := DefaultInterface.asDEVICEFLOWCONTROL_ENABLE;
end;

function TSmsConstantsProperties.Get_asDEVICEFLOWCONTROL_DISABLE: Integer;
begin
    Result := DefaultInterface.asDEVICEFLOWCONTROL_DISABLE;
end;

function TSmsConstantsProperties.Get_asMMS_CLASS_ADVERTISEMENT: Integer;
begin
    Result := DefaultInterface.asMMS_CLASS_ADVERTISEMENT;
end;

function TSmsConstantsProperties.Get_asMMS_CLASS_INFORMATIONAL: Integer;
begin
    Result := DefaultInterface.asMMS_CLASS_INFORMATIONAL;
end;

function TSmsConstantsProperties.Get_asMMS_CLASS_AUTO: Integer;
begin
    Result := DefaultInterface.asMMS_CLASS_AUTO;
end;

function TSmsConstantsProperties.Get_asMMS_CLASS_PERSONAL: Integer;
begin
    Result := DefaultInterface.asMMS_CLASS_PERSONAL;
end;

function TSmsConstantsProperties.Get_asSMPPDELIVERYREPORTFORMAT_HEX: Integer;
begin
    Result := DefaultInterface.asSMPPDELIVERYREPORTFORMAT_HEX;
end;

function TSmsConstantsProperties.Get_asSMPPDELIVERYREPORTFORMAT_DEC: Integer;
begin
    Result := DefaultInterface.asSMPPDELIVERYREPORTFORMAT_DEC;
end;

{$ENDIF}

class function CoSmsProtocolHttp.Create: ISmsProtocolHttp;
begin
  Result := CreateComObject(CLASS_SmsProtocolHttp) as ISmsProtocolHttp;
end;

class function CoSmsProtocolHttp.CreateRemote(const MachineName: string): ISmsProtocolHttp;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SmsProtocolHttp) as ISmsProtocolHttp;
end;

procedure TSmsProtocolHttp.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{0F81C972-915E-41C7-B881-667FD2629300}';
    IntfIID:   '{FE747A06-B435-4E13-89B9-A4EFFB6AED75}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TSmsProtocolHttp.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ISmsProtocolHttp;
  end;
end;

procedure TSmsProtocolHttp.ConnectTo(svrIntf: ISmsProtocolHttp);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TSmsProtocolHttp.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TSmsProtocolHttp.GetDefaultInterface: ISmsProtocolHttp;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TSmsProtocolHttp.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TSmsProtocolHttpProperties.Create(Self);
{$ENDIF}
end;

destructor TSmsProtocolHttp.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TSmsProtocolHttp.GetServerProperties: TSmsProtocolHttpProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TSmsProtocolHttp.Get_LastError: Integer;
begin
    Result := DefaultInterface.LastError;
end;

function TSmsProtocolHttp.Get_Version: WideString;
begin
    Result := DefaultInterface.Version;
end;

function TSmsProtocolHttp.Get_Build: WideString;
begin
    Result := DefaultInterface.Build;
end;

function TSmsProtocolHttp.Get_ExpirationDate: WideString;
begin
    Result := DefaultInterface.ExpirationDate;
end;

procedure TSmsProtocolHttp.Set_Reserved(Param1: Integer);
begin
  DefaultInterface.Set_Reserved(Param1);
end;

function TSmsProtocolHttp.Get_LogFile: WideString;
begin
    Result := DefaultInterface.LogFile;
end;

procedure TSmsProtocolHttp.Set_LogFile(const pVal: WideString);
  { Warning: The property LogFile has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.LogFile := pVal;
end;

function TSmsProtocolHttp.Get_ActivityFile: WideString;
begin
    Result := DefaultInterface.ActivityFile;
end;

procedure TSmsProtocolHttp.Set_ActivityFile(const pVal: WideString);
  { Warning: The property ActivityFile has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ActivityFile := pVal;
end;

procedure TSmsProtocolHttp.Set_DistributionID(const Param1: WideString);
  { Warning: The property DistributionID has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionID := Param1;
end;

procedure TSmsProtocolHttp.Set_DistributionKey(const Param1: WideString);
  { Warning: The property DistributionKey has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionKey := Param1;
end;

function TSmsProtocolHttp.Get_Module: WideString;
begin
    Result := DefaultInterface.Module;
end;

function TSmsProtocolHttp.Get_ProviderHost: WideString;
begin
    Result := DefaultInterface.ProviderHost;
end;

procedure TSmsProtocolHttp.Set_ProviderHost(const pVal: WideString);
  { Warning: The property ProviderHost has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProviderHost := pVal;
end;

function TSmsProtocolHttp.Get_ProviderPort: Integer;
begin
    Result := DefaultInterface.ProviderPort;
end;

procedure TSmsProtocolHttp.Set_ProviderPort(pVal: Integer);
begin
  DefaultInterface.Set_ProviderPort(pVal);
end;

function TSmsProtocolHttp.Get_ProviderWebAccount: WideString;
begin
    Result := DefaultInterface.ProviderWebAccount;
end;

procedure TSmsProtocolHttp.Set_ProviderWebAccount(const pVal: WideString);
  { Warning: The property ProviderWebAccount has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProviderWebAccount := pVal;
end;

function TSmsProtocolHttp.Get_ProviderWebPassword: WideString;
begin
    Result := DefaultInterface.ProviderWebPassword;
end;

procedure TSmsProtocolHttp.Set_ProviderWebPassword(const pVal: WideString);
  { Warning: The property ProviderWebPassword has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProviderWebPassword := pVal;
end;

function TSmsProtocolHttp.Get_ProviderUseSSL: Integer;
begin
    Result := DefaultInterface.ProviderUseSSL;
end;

procedure TSmsProtocolHttp.Set_ProviderUseSSL(pVal: Integer);
begin
  DefaultInterface.Set_ProviderUseSSL(pVal);
end;

function TSmsProtocolHttp.Get_ProviderCharset: Integer;
begin
    Result := DefaultInterface.ProviderCharset;
end;

procedure TSmsProtocolHttp.Set_ProviderCharset(pVal: Integer);
begin
  DefaultInterface.Set_ProviderCharset(pVal);
end;

function TSmsProtocolHttp.Get_ProviderResponse: WideString;
begin
    Result := DefaultInterface.ProviderResponse;
end;

function TSmsProtocolHttp.Get_ProviderSuccessResponse: WideString;
begin
    Result := DefaultInterface.ProviderSuccessResponse;
end;

procedure TSmsProtocolHttp.Set_ProviderSuccessResponse(const pVal: WideString);
  { Warning: The property ProviderSuccessResponse has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProviderSuccessResponse := pVal;
end;

function TSmsProtocolHttp.Get_ProviderErrorResponse: WideString;
begin
    Result := DefaultInterface.ProviderErrorResponse;
end;

procedure TSmsProtocolHttp.Set_ProviderErrorResponse(const pVal: WideString);
  { Warning: The property ProviderErrorResponse has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProviderErrorResponse := pVal;
end;

function TSmsProtocolHttp.Get_ProxyServer: WideString;
begin
    Result := DefaultInterface.ProxyServer;
end;

procedure TSmsProtocolHttp.Set_ProxyServer(const pVal: WideString);
  { Warning: The property ProxyServer has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProxyServer := pVal;
end;

function TSmsProtocolHttp.Get_ProxyPort: Integer;
begin
    Result := DefaultInterface.ProxyPort;
end;

procedure TSmsProtocolHttp.Set_ProxyPort(pVal: Integer);
begin
  DefaultInterface.Set_ProxyPort(pVal);
end;

function TSmsProtocolHttp.Get_ProxyAccount: WideString;
begin
    Result := DefaultInterface.ProxyAccount;
end;

procedure TSmsProtocolHttp.Set_ProxyAccount(const pVal: WideString);
  { Warning: The property ProxyAccount has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProxyAccount := pVal;
end;

function TSmsProtocolHttp.Get_ProxyPassword: WideString;
begin
    Result := DefaultInterface.ProxyPassword;
end;

procedure TSmsProtocolHttp.Set_ProxyPassword(const pVal: WideString);
  { Warning: The property ProxyPassword has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProxyPassword := pVal;
end;

function TSmsProtocolHttp.Get_URLText: WideString;
begin
    Result := DefaultInterface.URLText;
end;

procedure TSmsProtocolHttp.Set_URLText(const pVal: WideString);
  { Warning: The property URLText has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.URLText := pVal;
end;

function TSmsProtocolHttp.Get_URLBinary: WideString;
begin
    Result := DefaultInterface.URLBinary;
end;

procedure TSmsProtocolHttp.Set_URLBinary(const pVal: WideString);
  { Warning: The property URLBinary has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.URLBinary := pVal;
end;

function TSmsProtocolHttp.Get_URLUnicode: WideString;
begin
    Result := DefaultInterface.URLUnicode;
end;

procedure TSmsProtocolHttp.Set_URLUnicode(const pVal: WideString);
  { Warning: The property URLUnicode has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.URLUnicode := pVal;
end;

function TSmsProtocolHttp.Get_AdvancedSettings: WideString;
begin
    Result := DefaultInterface.AdvancedSettings;
end;

procedure TSmsProtocolHttp.Set_AdvancedSettings(const pVal: WideString);
  { Warning: The property AdvancedSettings has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AdvancedSettings := pVal;
end;

procedure TSmsProtocolHttp.Clear;
begin
  DefaultInterface.Clear;
end;

function TSmsProtocolHttp.GetErrorDescription(newVal: Integer): WideString;
begin
  Result := DefaultInterface.GetErrorDescription(newVal);
end;

procedure TSmsProtocolHttp.Activate(const newVal: WideString; bPersistent: Integer);
begin
  DefaultInterface.Activate(newVal, bPersistent);
end;

procedure TSmsProtocolHttp.Send(var pVariant: OleVariant);
begin
  DefaultInterface.Send(pVariant);
end;

procedure TSmsProtocolHttp.ProviderLoadConfig(const bstrFileName: WideString);
begin
  DefaultInterface.ProviderLoadConfig(bstrFileName);
end;

procedure TSmsProtocolHttp.ProviderSaveConfig(const bstrFileName: WideString);
begin
  DefaultInterface.ProviderSaveConfig(bstrFileName);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TSmsProtocolHttpProperties.Create(AServer: TSmsProtocolHttp);
begin
  inherited Create;
  FServer := AServer;
end;

function TSmsProtocolHttpProperties.GetDefaultInterface: ISmsProtocolHttp;
begin
  Result := FServer.DefaultInterface;
end;

function TSmsProtocolHttpProperties.Get_LastError: Integer;
begin
    Result := DefaultInterface.LastError;
end;

function TSmsProtocolHttpProperties.Get_Version: WideString;
begin
    Result := DefaultInterface.Version;
end;

function TSmsProtocolHttpProperties.Get_Build: WideString;
begin
    Result := DefaultInterface.Build;
end;

function TSmsProtocolHttpProperties.Get_ExpirationDate: WideString;
begin
    Result := DefaultInterface.ExpirationDate;
end;

procedure TSmsProtocolHttpProperties.Set_Reserved(Param1: Integer);
begin
  DefaultInterface.Set_Reserved(Param1);
end;

function TSmsProtocolHttpProperties.Get_LogFile: WideString;
begin
    Result := DefaultInterface.LogFile;
end;

procedure TSmsProtocolHttpProperties.Set_LogFile(const pVal: WideString);
  { Warning: The property LogFile has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.LogFile := pVal;
end;

function TSmsProtocolHttpProperties.Get_ActivityFile: WideString;
begin
    Result := DefaultInterface.ActivityFile;
end;

procedure TSmsProtocolHttpProperties.Set_ActivityFile(const pVal: WideString);
  { Warning: The property ActivityFile has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ActivityFile := pVal;
end;

procedure TSmsProtocolHttpProperties.Set_DistributionID(const Param1: WideString);
  { Warning: The property DistributionID has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionID := Param1;
end;

procedure TSmsProtocolHttpProperties.Set_DistributionKey(const Param1: WideString);
  { Warning: The property DistributionKey has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionKey := Param1;
end;

function TSmsProtocolHttpProperties.Get_Module: WideString;
begin
    Result := DefaultInterface.Module;
end;

function TSmsProtocolHttpProperties.Get_ProviderHost: WideString;
begin
    Result := DefaultInterface.ProviderHost;
end;

procedure TSmsProtocolHttpProperties.Set_ProviderHost(const pVal: WideString);
  { Warning: The property ProviderHost has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProviderHost := pVal;
end;

function TSmsProtocolHttpProperties.Get_ProviderPort: Integer;
begin
    Result := DefaultInterface.ProviderPort;
end;

procedure TSmsProtocolHttpProperties.Set_ProviderPort(pVal: Integer);
begin
  DefaultInterface.Set_ProviderPort(pVal);
end;

function TSmsProtocolHttpProperties.Get_ProviderWebAccount: WideString;
begin
    Result := DefaultInterface.ProviderWebAccount;
end;

procedure TSmsProtocolHttpProperties.Set_ProviderWebAccount(const pVal: WideString);
  { Warning: The property ProviderWebAccount has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProviderWebAccount := pVal;
end;

function TSmsProtocolHttpProperties.Get_ProviderWebPassword: WideString;
begin
    Result := DefaultInterface.ProviderWebPassword;
end;

procedure TSmsProtocolHttpProperties.Set_ProviderWebPassword(const pVal: WideString);
  { Warning: The property ProviderWebPassword has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProviderWebPassword := pVal;
end;

function TSmsProtocolHttpProperties.Get_ProviderUseSSL: Integer;
begin
    Result := DefaultInterface.ProviderUseSSL;
end;

procedure TSmsProtocolHttpProperties.Set_ProviderUseSSL(pVal: Integer);
begin
  DefaultInterface.Set_ProviderUseSSL(pVal);
end;

function TSmsProtocolHttpProperties.Get_ProviderCharset: Integer;
begin
    Result := DefaultInterface.ProviderCharset;
end;

procedure TSmsProtocolHttpProperties.Set_ProviderCharset(pVal: Integer);
begin
  DefaultInterface.Set_ProviderCharset(pVal);
end;

function TSmsProtocolHttpProperties.Get_ProviderResponse: WideString;
begin
    Result := DefaultInterface.ProviderResponse;
end;

function TSmsProtocolHttpProperties.Get_ProviderSuccessResponse: WideString;
begin
    Result := DefaultInterface.ProviderSuccessResponse;
end;

procedure TSmsProtocolHttpProperties.Set_ProviderSuccessResponse(const pVal: WideString);
  { Warning: The property ProviderSuccessResponse has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProviderSuccessResponse := pVal;
end;

function TSmsProtocolHttpProperties.Get_ProviderErrorResponse: WideString;
begin
    Result := DefaultInterface.ProviderErrorResponse;
end;

procedure TSmsProtocolHttpProperties.Set_ProviderErrorResponse(const pVal: WideString);
  { Warning: The property ProviderErrorResponse has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProviderErrorResponse := pVal;
end;

function TSmsProtocolHttpProperties.Get_ProxyServer: WideString;
begin
    Result := DefaultInterface.ProxyServer;
end;

procedure TSmsProtocolHttpProperties.Set_ProxyServer(const pVal: WideString);
  { Warning: The property ProxyServer has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProxyServer := pVal;
end;

function TSmsProtocolHttpProperties.Get_ProxyPort: Integer;
begin
    Result := DefaultInterface.ProxyPort;
end;

procedure TSmsProtocolHttpProperties.Set_ProxyPort(pVal: Integer);
begin
  DefaultInterface.Set_ProxyPort(pVal);
end;

function TSmsProtocolHttpProperties.Get_ProxyAccount: WideString;
begin
    Result := DefaultInterface.ProxyAccount;
end;

procedure TSmsProtocolHttpProperties.Set_ProxyAccount(const pVal: WideString);
  { Warning: The property ProxyAccount has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProxyAccount := pVal;
end;

function TSmsProtocolHttpProperties.Get_ProxyPassword: WideString;
begin
    Result := DefaultInterface.ProxyPassword;
end;

procedure TSmsProtocolHttpProperties.Set_ProxyPassword(const pVal: WideString);
  { Warning: The property ProxyPassword has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProxyPassword := pVal;
end;

function TSmsProtocolHttpProperties.Get_URLText: WideString;
begin
    Result := DefaultInterface.URLText;
end;

procedure TSmsProtocolHttpProperties.Set_URLText(const pVal: WideString);
  { Warning: The property URLText has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.URLText := pVal;
end;

function TSmsProtocolHttpProperties.Get_URLBinary: WideString;
begin
    Result := DefaultInterface.URLBinary;
end;

procedure TSmsProtocolHttpProperties.Set_URLBinary(const pVal: WideString);
  { Warning: The property URLBinary has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.URLBinary := pVal;
end;

function TSmsProtocolHttpProperties.Get_URLUnicode: WideString;
begin
    Result := DefaultInterface.URLUnicode;
end;

procedure TSmsProtocolHttpProperties.Set_URLUnicode(const pVal: WideString);
  { Warning: The property URLUnicode has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.URLUnicode := pVal;
end;

function TSmsProtocolHttpProperties.Get_AdvancedSettings: WideString;
begin
    Result := DefaultInterface.AdvancedSettings;
end;

procedure TSmsProtocolHttpProperties.Set_AdvancedSettings(const pVal: WideString);
  { Warning: The property AdvancedSettings has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AdvancedSettings := pVal;
end;

{$ENDIF}

class function CoSmsProtocolDialup.Create: ISmsProtocolDialup;
begin
  Result := CreateComObject(CLASS_SmsProtocolDialup) as ISmsProtocolDialup;
end;

class function CoSmsProtocolDialup.CreateRemote(const MachineName: string): ISmsProtocolDialup;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SmsProtocolDialup) as ISmsProtocolDialup;
end;

procedure TSmsProtocolDialup.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{7FE9716E-6120-433C-B7C5-F42F4805B6C2}';
    IntfIID:   '{6981A9D3-9F5E-4AE0-B915-E582DE5769DC}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TSmsProtocolDialup.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ISmsProtocolDialup;
  end;
end;

procedure TSmsProtocolDialup.ConnectTo(svrIntf: ISmsProtocolDialup);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TSmsProtocolDialup.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TSmsProtocolDialup.GetDefaultInterface: ISmsProtocolDialup;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TSmsProtocolDialup.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TSmsProtocolDialupProperties.Create(Self);
{$ENDIF}
end;

destructor TSmsProtocolDialup.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TSmsProtocolDialup.GetServerProperties: TSmsProtocolDialupProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TSmsProtocolDialup.Get_LastError: Integer;
begin
    Result := DefaultInterface.LastError;
end;

function TSmsProtocolDialup.Get_Version: WideString;
begin
    Result := DefaultInterface.Version;
end;

function TSmsProtocolDialup.Get_Build: WideString;
begin
    Result := DefaultInterface.Build;
end;

function TSmsProtocolDialup.Get_ExpirationDate: WideString;
begin
    Result := DefaultInterface.ExpirationDate;
end;

procedure TSmsProtocolDialup.Set_Reserved(Param1: Integer);
begin
  DefaultInterface.Set_Reserved(Param1);
end;

function TSmsProtocolDialup.Get_LogFile: WideString;
begin
    Result := DefaultInterface.LogFile;
end;

procedure TSmsProtocolDialup.Set_LogFile(const pVal: WideString);
  { Warning: The property LogFile has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.LogFile := pVal;
end;

function TSmsProtocolDialup.Get_ActivityFile: WideString;
begin
    Result := DefaultInterface.ActivityFile;
end;

procedure TSmsProtocolDialup.Set_ActivityFile(const pVal: WideString);
  { Warning: The property ActivityFile has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ActivityFile := pVal;
end;

procedure TSmsProtocolDialup.Set_DistributionID(const Param1: WideString);
  { Warning: The property DistributionID has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionID := Param1;
end;

procedure TSmsProtocolDialup.Set_DistributionKey(const Param1: WideString);
  { Warning: The property DistributionKey has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionKey := Param1;
end;

function TSmsProtocolDialup.Get_Module: WideString;
begin
    Result := DefaultInterface.Module;
end;

function TSmsProtocolDialup.Get_Device: WideString;
begin
    Result := DefaultInterface.Device;
end;

procedure TSmsProtocolDialup.Set_Device(const pVal: WideString);
  { Warning: The property Device has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Device := pVal;
end;

function TSmsProtocolDialup.Get_DeviceSpeed: Integer;
begin
    Result := DefaultInterface.DeviceSpeed;
end;

procedure TSmsProtocolDialup.Set_DeviceSpeed(pVal: Integer);
begin
  DefaultInterface.Set_DeviceSpeed(pVal);
end;

function TSmsProtocolDialup.Get_DeviceSettings: Integer;
begin
    Result := DefaultInterface.DeviceSettings;
end;

procedure TSmsProtocolDialup.Set_DeviceSettings(pVal: Integer);
begin
  DefaultInterface.Set_DeviceSettings(pVal);
end;

function TSmsProtocolDialup.Get_DeviceInitString: WideString;
begin
    Result := DefaultInterface.DeviceInitString;
end;

procedure TSmsProtocolDialup.Set_DeviceInitString(const pVal: WideString);
  { Warning: The property DeviceInitString has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DeviceInitString := pVal;
end;

function TSmsProtocolDialup.Get_DeviceFlowControl: Integer;
begin
    Result := DefaultInterface.DeviceFlowControl;
end;

procedure TSmsProtocolDialup.Set_DeviceFlowControl(pVal: Integer);
begin
  DefaultInterface.Set_DeviceFlowControl(pVal);
end;

function TSmsProtocolDialup.Get_DialMode: Integer;
begin
    Result := DefaultInterface.DialMode;
end;

procedure TSmsProtocolDialup.Set_DialMode(pVal: Integer);
begin
  DefaultInterface.Set_DialMode(pVal);
end;

function TSmsProtocolDialup.Get_ProviderDialString: WideString;
begin
    Result := DefaultInterface.ProviderDialString;
end;

procedure TSmsProtocolDialup.Set_ProviderDialString(const pVal: WideString);
  { Warning: The property ProviderDialString has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProviderDialString := pVal;
end;

function TSmsProtocolDialup.Get_ProviderPassword: WideString;
begin
    Result := DefaultInterface.ProviderPassword;
end;

procedure TSmsProtocolDialup.Set_ProviderPassword(const pVal: WideString);
  { Warning: The property ProviderPassword has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProviderPassword := pVal;
end;

function TSmsProtocolDialup.Get_ProviderType: Integer;
begin
    Result := DefaultInterface.ProviderType;
end;

procedure TSmsProtocolDialup.Set_ProviderType(pVal: Integer);
begin
  DefaultInterface.Set_ProviderType(pVal);
end;

function TSmsProtocolDialup.Get_ProviderResponse: WideString;
begin
    Result := DefaultInterface.ProviderResponse;
end;

function TSmsProtocolDialup.Get_AdvancedSettings: WideString;
begin
    Result := DefaultInterface.AdvancedSettings;
end;

procedure TSmsProtocolDialup.Set_AdvancedSettings(const pVal: WideString);
  { Warning: The property AdvancedSettings has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AdvancedSettings := pVal;
end;

procedure TSmsProtocolDialup.Clear;
begin
  DefaultInterface.Clear;
end;

function TSmsProtocolDialup.GetErrorDescription(newVal: Integer): WideString;
begin
  Result := DefaultInterface.GetErrorDescription(newVal);
end;

procedure TSmsProtocolDialup.Activate(const newVal: WideString; bPersistent: Integer);
begin
  DefaultInterface.Activate(newVal, bPersistent);
end;

function TSmsProtocolDialup.GetDeviceCount: Integer;
begin
  Result := DefaultInterface.GetDeviceCount;
end;

function TSmsProtocolDialup.GetDevice(lIndex: Integer): WideString;
begin
  Result := DefaultInterface.GetDevice(lIndex);
end;

procedure TSmsProtocolDialup.Send(var pMessage: OleVariant);
begin
  DefaultInterface.Send(pMessage);
end;

procedure TSmsProtocolDialup.ProviderLoadConfig(const bstrFileName: WideString);
begin
  DefaultInterface.ProviderLoadConfig(bstrFileName);
end;

procedure TSmsProtocolDialup.ProviderSaveConfig(const bstrFileName: WideString);
begin
  DefaultInterface.ProviderSaveConfig(bstrFileName);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TSmsProtocolDialupProperties.Create(AServer: TSmsProtocolDialup);
begin
  inherited Create;
  FServer := AServer;
end;

function TSmsProtocolDialupProperties.GetDefaultInterface: ISmsProtocolDialup;
begin
  Result := FServer.DefaultInterface;
end;

function TSmsProtocolDialupProperties.Get_LastError: Integer;
begin
    Result := DefaultInterface.LastError;
end;

function TSmsProtocolDialupProperties.Get_Version: WideString;
begin
    Result := DefaultInterface.Version;
end;

function TSmsProtocolDialupProperties.Get_Build: WideString;
begin
    Result := DefaultInterface.Build;
end;

function TSmsProtocolDialupProperties.Get_ExpirationDate: WideString;
begin
    Result := DefaultInterface.ExpirationDate;
end;

procedure TSmsProtocolDialupProperties.Set_Reserved(Param1: Integer);
begin
  DefaultInterface.Set_Reserved(Param1);
end;

function TSmsProtocolDialupProperties.Get_LogFile: WideString;
begin
    Result := DefaultInterface.LogFile;
end;

procedure TSmsProtocolDialupProperties.Set_LogFile(const pVal: WideString);
  { Warning: The property LogFile has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.LogFile := pVal;
end;

function TSmsProtocolDialupProperties.Get_ActivityFile: WideString;
begin
    Result := DefaultInterface.ActivityFile;
end;

procedure TSmsProtocolDialupProperties.Set_ActivityFile(const pVal: WideString);
  { Warning: The property ActivityFile has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ActivityFile := pVal;
end;

procedure TSmsProtocolDialupProperties.Set_DistributionID(const Param1: WideString);
  { Warning: The property DistributionID has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionID := Param1;
end;

procedure TSmsProtocolDialupProperties.Set_DistributionKey(const Param1: WideString);
  { Warning: The property DistributionKey has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionKey := Param1;
end;

function TSmsProtocolDialupProperties.Get_Module: WideString;
begin
    Result := DefaultInterface.Module;
end;

function TSmsProtocolDialupProperties.Get_Device: WideString;
begin
    Result := DefaultInterface.Device;
end;

procedure TSmsProtocolDialupProperties.Set_Device(const pVal: WideString);
  { Warning: The property Device has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Device := pVal;
end;

function TSmsProtocolDialupProperties.Get_DeviceSpeed: Integer;
begin
    Result := DefaultInterface.DeviceSpeed;
end;

procedure TSmsProtocolDialupProperties.Set_DeviceSpeed(pVal: Integer);
begin
  DefaultInterface.Set_DeviceSpeed(pVal);
end;

function TSmsProtocolDialupProperties.Get_DeviceSettings: Integer;
begin
    Result := DefaultInterface.DeviceSettings;
end;

procedure TSmsProtocolDialupProperties.Set_DeviceSettings(pVal: Integer);
begin
  DefaultInterface.Set_DeviceSettings(pVal);
end;

function TSmsProtocolDialupProperties.Get_DeviceInitString: WideString;
begin
    Result := DefaultInterface.DeviceInitString;
end;

procedure TSmsProtocolDialupProperties.Set_DeviceInitString(const pVal: WideString);
  { Warning: The property DeviceInitString has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DeviceInitString := pVal;
end;

function TSmsProtocolDialupProperties.Get_DeviceFlowControl: Integer;
begin
    Result := DefaultInterface.DeviceFlowControl;
end;

procedure TSmsProtocolDialupProperties.Set_DeviceFlowControl(pVal: Integer);
begin
  DefaultInterface.Set_DeviceFlowControl(pVal);
end;

function TSmsProtocolDialupProperties.Get_DialMode: Integer;
begin
    Result := DefaultInterface.DialMode;
end;

procedure TSmsProtocolDialupProperties.Set_DialMode(pVal: Integer);
begin
  DefaultInterface.Set_DialMode(pVal);
end;

function TSmsProtocolDialupProperties.Get_ProviderDialString: WideString;
begin
    Result := DefaultInterface.ProviderDialString;
end;

procedure TSmsProtocolDialupProperties.Set_ProviderDialString(const pVal: WideString);
  { Warning: The property ProviderDialString has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProviderDialString := pVal;
end;

function TSmsProtocolDialupProperties.Get_ProviderPassword: WideString;
begin
    Result := DefaultInterface.ProviderPassword;
end;

procedure TSmsProtocolDialupProperties.Set_ProviderPassword(const pVal: WideString);
  { Warning: The property ProviderPassword has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProviderPassword := pVal;
end;

function TSmsProtocolDialupProperties.Get_ProviderType: Integer;
begin
    Result := DefaultInterface.ProviderType;
end;

procedure TSmsProtocolDialupProperties.Set_ProviderType(pVal: Integer);
begin
  DefaultInterface.Set_ProviderType(pVal);
end;

function TSmsProtocolDialupProperties.Get_ProviderResponse: WideString;
begin
    Result := DefaultInterface.ProviderResponse;
end;

function TSmsProtocolDialupProperties.Get_AdvancedSettings: WideString;
begin
    Result := DefaultInterface.AdvancedSettings;
end;

procedure TSmsProtocolDialupProperties.Set_AdvancedSettings(const pVal: WideString);
  { Warning: The property AdvancedSettings has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AdvancedSettings := pVal;
end;

{$ENDIF}

class function CoPagerProtocolSnpp.Create: IPagerProtocolSnpp;
begin
  Result := CreateComObject(CLASS_PagerProtocolSnpp) as IPagerProtocolSnpp;
end;

class function CoPagerProtocolSnpp.CreateRemote(const MachineName: string): IPagerProtocolSnpp;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PagerProtocolSnpp) as IPagerProtocolSnpp;
end;

procedure TPagerProtocolSnpp.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{69AD3E44-38BB-49E2-A03F-2BA71444BDF5}';
    IntfIID:   '{AAFC490C-6EFB-42E5-8267-7BE9FB2ACF8F}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TPagerProtocolSnpp.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IPagerProtocolSnpp;
  end;
end;

procedure TPagerProtocolSnpp.ConnectTo(svrIntf: IPagerProtocolSnpp);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TPagerProtocolSnpp.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TPagerProtocolSnpp.GetDefaultInterface: IPagerProtocolSnpp;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TPagerProtocolSnpp.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TPagerProtocolSnppProperties.Create(Self);
{$ENDIF}
end;

destructor TPagerProtocolSnpp.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TPagerProtocolSnpp.GetServerProperties: TPagerProtocolSnppProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TPagerProtocolSnpp.Get_LastError: Integer;
begin
    Result := DefaultInterface.LastError;
end;

function TPagerProtocolSnpp.Get_Version: WideString;
begin
    Result := DefaultInterface.Version;
end;

function TPagerProtocolSnpp.Get_Build: WideString;
begin
    Result := DefaultInterface.Build;
end;

function TPagerProtocolSnpp.Get_ExpirationDate: WideString;
begin
    Result := DefaultInterface.ExpirationDate;
end;

procedure TPagerProtocolSnpp.Set_Reserved(Param1: Integer);
begin
  DefaultInterface.Set_Reserved(Param1);
end;

function TPagerProtocolSnpp.Get_LogFile: WideString;
begin
    Result := DefaultInterface.LogFile;
end;

procedure TPagerProtocolSnpp.Set_LogFile(const pVal: WideString);
  { Warning: The property LogFile has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.LogFile := pVal;
end;

procedure TPagerProtocolSnpp.Set_DistributionID(const Param1: WideString);
  { Warning: The property DistributionID has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionID := Param1;
end;

procedure TPagerProtocolSnpp.Set_DistributionKey(const Param1: WideString);
  { Warning: The property DistributionKey has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionKey := Param1;
end;

function TPagerProtocolSnpp.Get_Module: WideString;
begin
    Result := DefaultInterface.Module;
end;

function TPagerProtocolSnpp.Get_Server: WideString;
begin
    Result := DefaultInterface.Server;
end;

procedure TPagerProtocolSnpp.Set_Server(const pVal: WideString);
  { Warning: The property Server has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Server := pVal;
end;

function TPagerProtocolSnpp.Get_ServerPort: Integer;
begin
    Result := DefaultInterface.ServerPort;
end;

procedure TPagerProtocolSnpp.Set_ServerPort(pVal: Integer);
begin
  DefaultInterface.Set_ServerPort(pVal);
end;

function TPagerProtocolSnpp.Get_ServerTimeout: Integer;
begin
    Result := DefaultInterface.ServerTimeout;
end;

procedure TPagerProtocolSnpp.Set_ServerTimeout(pVal: Integer);
begin
  DefaultInterface.Set_ServerTimeout(pVal);
end;

function TPagerProtocolSnpp.Get_ProviderPassword: WideString;
begin
    Result := DefaultInterface.ProviderPassword;
end;

procedure TPagerProtocolSnpp.Set_ProviderPassword(const pVal: WideString);
  { Warning: The property ProviderPassword has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProviderPassword := pVal;
end;

function TPagerProtocolSnpp.Get_ProviderResponse: WideString;
begin
    Result := DefaultInterface.ProviderResponse;
end;

function TPagerProtocolSnpp.Get_AdvancedSettings: WideString;
begin
    Result := DefaultInterface.AdvancedSettings;
end;

procedure TPagerProtocolSnpp.Set_AdvancedSettings(const pVal: WideString);
  { Warning: The property AdvancedSettings has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AdvancedSettings := pVal;
end;

procedure TPagerProtocolSnpp.Clear;
begin
  DefaultInterface.Clear;
end;

function TPagerProtocolSnpp.GetErrorDescription(newVal: Integer): WideString;
begin
  Result := DefaultInterface.GetErrorDescription(newVal);
end;

procedure TPagerProtocolSnpp.Activate(const newVal: WideString; bPersistent: Integer);
begin
  DefaultInterface.Activate(newVal, bPersistent);
end;

procedure TPagerProtocolSnpp.Send(var pVariant: OleVariant);
begin
  DefaultInterface.Send(pVariant);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TPagerProtocolSnppProperties.Create(AServer: TPagerProtocolSnpp);
begin
  inherited Create;
  FServer := AServer;
end;

function TPagerProtocolSnppProperties.GetDefaultInterface: IPagerProtocolSnpp;
begin
  Result := FServer.DefaultInterface;
end;

function TPagerProtocolSnppProperties.Get_LastError: Integer;
begin
    Result := DefaultInterface.LastError;
end;

function TPagerProtocolSnppProperties.Get_Version: WideString;
begin
    Result := DefaultInterface.Version;
end;

function TPagerProtocolSnppProperties.Get_Build: WideString;
begin
    Result := DefaultInterface.Build;
end;

function TPagerProtocolSnppProperties.Get_ExpirationDate: WideString;
begin
    Result := DefaultInterface.ExpirationDate;
end;

procedure TPagerProtocolSnppProperties.Set_Reserved(Param1: Integer);
begin
  DefaultInterface.Set_Reserved(Param1);
end;

function TPagerProtocolSnppProperties.Get_LogFile: WideString;
begin
    Result := DefaultInterface.LogFile;
end;

procedure TPagerProtocolSnppProperties.Set_LogFile(const pVal: WideString);
  { Warning: The property LogFile has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.LogFile := pVal;
end;

procedure TPagerProtocolSnppProperties.Set_DistributionID(const Param1: WideString);
  { Warning: The property DistributionID has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionID := Param1;
end;

procedure TPagerProtocolSnppProperties.Set_DistributionKey(const Param1: WideString);
  { Warning: The property DistributionKey has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionKey := Param1;
end;

function TPagerProtocolSnppProperties.Get_Module: WideString;
begin
    Result := DefaultInterface.Module;
end;

function TPagerProtocolSnppProperties.Get_Server: WideString;
begin
    Result := DefaultInterface.Server;
end;

procedure TPagerProtocolSnppProperties.Set_Server(const pVal: WideString);
  { Warning: The property Server has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Server := pVal;
end;

function TPagerProtocolSnppProperties.Get_ServerPort: Integer;
begin
    Result := DefaultInterface.ServerPort;
end;

procedure TPagerProtocolSnppProperties.Set_ServerPort(pVal: Integer);
begin
  DefaultInterface.Set_ServerPort(pVal);
end;

function TPagerProtocolSnppProperties.Get_ServerTimeout: Integer;
begin
    Result := DefaultInterface.ServerTimeout;
end;

procedure TPagerProtocolSnppProperties.Set_ServerTimeout(pVal: Integer);
begin
  DefaultInterface.Set_ServerTimeout(pVal);
end;

function TPagerProtocolSnppProperties.Get_ProviderPassword: WideString;
begin
    Result := DefaultInterface.ProviderPassword;
end;

procedure TPagerProtocolSnppProperties.Set_ProviderPassword(const pVal: WideString);
  { Warning: The property ProviderPassword has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProviderPassword := pVal;
end;

function TPagerProtocolSnppProperties.Get_ProviderResponse: WideString;
begin
    Result := DefaultInterface.ProviderResponse;
end;

function TPagerProtocolSnppProperties.Get_AdvancedSettings: WideString;
begin
    Result := DefaultInterface.AdvancedSettings;
end;

procedure TPagerProtocolSnppProperties.Set_AdvancedSettings(const pVal: WideString);
  { Warning: The property AdvancedSettings has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AdvancedSettings := pVal;
end;

{$ENDIF}

class function CoSmsDataWapBookmark.Create: ISmsDataWapBookmark;
begin
  Result := CreateComObject(CLASS_SmsDataWapBookmark) as ISmsDataWapBookmark;
end;

class function CoSmsDataWapBookmark.CreateRemote(const MachineName: string): ISmsDataWapBookmark;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SmsDataWapBookmark) as ISmsDataWapBookmark;
end;

procedure TSmsDataWapBookmark.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{ED494BC8-222A-4716-A46D-14F72F02CB89}';
    IntfIID:   '{97288A28-A8CE-4175-8E0B-75F0AEF9E489}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TSmsDataWapBookmark.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ISmsDataWapBookmark;
  end;
end;

procedure TSmsDataWapBookmark.ConnectTo(svrIntf: ISmsDataWapBookmark);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TSmsDataWapBookmark.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TSmsDataWapBookmark.GetDefaultInterface: ISmsDataWapBookmark;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TSmsDataWapBookmark.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TSmsDataWapBookmarkProperties.Create(Self);
{$ENDIF}
end;

destructor TSmsDataWapBookmark.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TSmsDataWapBookmark.GetServerProperties: TSmsDataWapBookmarkProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TSmsDataWapBookmark.Get_LastError: Integer;
begin
    Result := DefaultInterface.LastError;
end;

function TSmsDataWapBookmark.Get_Version: WideString;
begin
    Result := DefaultInterface.Version;
end;

function TSmsDataWapBookmark.Get_Build: WideString;
begin
    Result := DefaultInterface.Build;
end;

function TSmsDataWapBookmark.Get_ExpirationDate: WideString;
begin
    Result := DefaultInterface.ExpirationDate;
end;

procedure TSmsDataWapBookmark.Set_Reserved(Param1: Integer);
begin
  DefaultInterface.Set_Reserved(Param1);
end;

procedure TSmsDataWapBookmark.Set_DistributionID(const Param1: WideString);
  { Warning: The property DistributionID has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionID := Param1;
end;

procedure TSmsDataWapBookmark.Set_DistributionKey(const Param1: WideString);
  { Warning: The property DistributionKey has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionKey := Param1;
end;

function TSmsDataWapBookmark.Get_Module: WideString;
begin
    Result := DefaultInterface.Module;
end;

function TSmsDataWapBookmark.Get_Description: WideString;
begin
    Result := DefaultInterface.Description;
end;

procedure TSmsDataWapBookmark.Set_Description(const pVal: WideString);
  { Warning: The property Description has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Description := pVal;
end;

function TSmsDataWapBookmark.Get_URL: WideString;
begin
    Result := DefaultInterface.URL;
end;

procedure TSmsDataWapBookmark.Set_URL(const pVal: WideString);
  { Warning: The property URL has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.URL := pVal;
end;

function TSmsDataWapBookmark.Get_EncodedMessage: WideString;
begin
    Result := DefaultInterface.EncodedMessage;
end;

procedure TSmsDataWapBookmark.Clear;
begin
  DefaultInterface.Clear;
end;

function TSmsDataWapBookmark.GetErrorDescription(newVal: Integer): WideString;
begin
  Result := DefaultInterface.GetErrorDescription(newVal);
end;

procedure TSmsDataWapBookmark.Activate(const newVal: WideString; bPersistent: Integer);
begin
  DefaultInterface.Activate(newVal, bPersistent);
end;

procedure TSmsDataWapBookmark.Encode;
begin
  DefaultInterface.Encode;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TSmsDataWapBookmarkProperties.Create(AServer: TSmsDataWapBookmark);
begin
  inherited Create;
  FServer := AServer;
end;

function TSmsDataWapBookmarkProperties.GetDefaultInterface: ISmsDataWapBookmark;
begin
  Result := FServer.DefaultInterface;
end;

function TSmsDataWapBookmarkProperties.Get_LastError: Integer;
begin
    Result := DefaultInterface.LastError;
end;

function TSmsDataWapBookmarkProperties.Get_Version: WideString;
begin
    Result := DefaultInterface.Version;
end;

function TSmsDataWapBookmarkProperties.Get_Build: WideString;
begin
    Result := DefaultInterface.Build;
end;

function TSmsDataWapBookmarkProperties.Get_ExpirationDate: WideString;
begin
    Result := DefaultInterface.ExpirationDate;
end;

procedure TSmsDataWapBookmarkProperties.Set_Reserved(Param1: Integer);
begin
  DefaultInterface.Set_Reserved(Param1);
end;

procedure TSmsDataWapBookmarkProperties.Set_DistributionID(const Param1: WideString);
  { Warning: The property DistributionID has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionID := Param1;
end;

procedure TSmsDataWapBookmarkProperties.Set_DistributionKey(const Param1: WideString);
  { Warning: The property DistributionKey has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionKey := Param1;
end;

function TSmsDataWapBookmarkProperties.Get_Module: WideString;
begin
    Result := DefaultInterface.Module;
end;

function TSmsDataWapBookmarkProperties.Get_Description: WideString;
begin
    Result := DefaultInterface.Description;
end;

procedure TSmsDataWapBookmarkProperties.Set_Description(const pVal: WideString);
  { Warning: The property Description has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Description := pVal;
end;

function TSmsDataWapBookmarkProperties.Get_URL: WideString;
begin
    Result := DefaultInterface.URL;
end;

procedure TSmsDataWapBookmarkProperties.Set_URL(const pVal: WideString);
  { Warning: The property URL has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.URL := pVal;
end;

function TSmsDataWapBookmarkProperties.Get_EncodedMessage: WideString;
begin
    Result := DefaultInterface.EncodedMessage;
end;

{$ENDIF}

class function CoSmsDataWapPush.Create: ISmsDataWapPush;
begin
  Result := CreateComObject(CLASS_SmsDataWapPush) as ISmsDataWapPush;
end;

class function CoSmsDataWapPush.CreateRemote(const MachineName: string): ISmsDataWapPush;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SmsDataWapPush) as ISmsDataWapPush;
end;

procedure TSmsDataWapPush.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{EF74EFF2-4F98-464A-9F73-CF6D77D9C954}';
    IntfIID:   '{51052D1C-80F1-4FCE-A458-A1CD8BA753CA}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TSmsDataWapPush.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ISmsDataWapPush;
  end;
end;

procedure TSmsDataWapPush.ConnectTo(svrIntf: ISmsDataWapPush);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TSmsDataWapPush.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TSmsDataWapPush.GetDefaultInterface: ISmsDataWapPush;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TSmsDataWapPush.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TSmsDataWapPushProperties.Create(Self);
{$ENDIF}
end;

destructor TSmsDataWapPush.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TSmsDataWapPush.GetServerProperties: TSmsDataWapPushProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TSmsDataWapPush.Get_LastError: Integer;
begin
    Result := DefaultInterface.LastError;
end;

function TSmsDataWapPush.Get_Version: WideString;
begin
    Result := DefaultInterface.Version;
end;

function TSmsDataWapPush.Get_Build: WideString;
begin
    Result := DefaultInterface.Build;
end;

function TSmsDataWapPush.Get_ExpirationDate: WideString;
begin
    Result := DefaultInterface.ExpirationDate;
end;

procedure TSmsDataWapPush.Set_Reserved(Param1: Integer);
begin
  DefaultInterface.Set_Reserved(Param1);
end;

procedure TSmsDataWapPush.Set_DistributionID(const Param1: WideString);
  { Warning: The property DistributionID has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionID := Param1;
end;

procedure TSmsDataWapPush.Set_DistributionKey(const Param1: WideString);
  { Warning: The property DistributionKey has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionKey := Param1;
end;

function TSmsDataWapPush.Get_Module: WideString;
begin
    Result := DefaultInterface.Module;
end;

function TSmsDataWapPush.Get_SignalReference: WideString;
begin
    Result := DefaultInterface.SignalReference;
end;

procedure TSmsDataWapPush.Set_SignalReference(const pVal: WideString);
  { Warning: The property SignalReference has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.SignalReference := pVal;
end;

function TSmsDataWapPush.Get_SignalAction: Integer;
begin
    Result := DefaultInterface.SignalAction;
end;

procedure TSmsDataWapPush.Set_SignalAction(pVal: Integer);
begin
  DefaultInterface.Set_SignalAction(pVal);
end;

function TSmsDataWapPush.Get_Description: WideString;
begin
    Result := DefaultInterface.Description;
end;

procedure TSmsDataWapPush.Set_Description(const pVal: WideString);
  { Warning: The property Description has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Description := pVal;
end;

function TSmsDataWapPush.Get_URL: WideString;
begin
    Result := DefaultInterface.URL;
end;

procedure TSmsDataWapPush.Set_URL(const pVal: WideString);
  { Warning: The property URL has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.URL := pVal;
end;

function TSmsDataWapPush.Get_ConnectionType: Integer;
begin
    Result := DefaultInterface.ConnectionType;
end;

procedure TSmsDataWapPush.Set_ConnectionType(pVal: Integer);
begin
  DefaultInterface.Set_ConnectionType(pVal);
end;

function TSmsDataWapPush.Get_ExecuteAction: Integer;
begin
    Result := DefaultInterface.ExecuteAction;
end;

procedure TSmsDataWapPush.Set_ExecuteAction(pVal: Integer);
begin
  DefaultInterface.Set_ExecuteAction(pVal);
end;

function TSmsDataWapPush.Get_EncodedMessage: WideString;
begin
    Result := DefaultInterface.EncodedMessage;
end;

procedure TSmsDataWapPush.Clear;
begin
  DefaultInterface.Clear;
end;

function TSmsDataWapPush.GetErrorDescription(newVal: Integer): WideString;
begin
  Result := DefaultInterface.GetErrorDescription(newVal);
end;

procedure TSmsDataWapPush.Activate(const newVal: WideString; bPersistent: Integer);
begin
  DefaultInterface.Activate(newVal, bPersistent);
end;

procedure TSmsDataWapPush.Encode;
begin
  DefaultInterface.Encode;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TSmsDataWapPushProperties.Create(AServer: TSmsDataWapPush);
begin
  inherited Create;
  FServer := AServer;
end;

function TSmsDataWapPushProperties.GetDefaultInterface: ISmsDataWapPush;
begin
  Result := FServer.DefaultInterface;
end;

function TSmsDataWapPushProperties.Get_LastError: Integer;
begin
    Result := DefaultInterface.LastError;
end;

function TSmsDataWapPushProperties.Get_Version: WideString;
begin
    Result := DefaultInterface.Version;
end;

function TSmsDataWapPushProperties.Get_Build: WideString;
begin
    Result := DefaultInterface.Build;
end;

function TSmsDataWapPushProperties.Get_ExpirationDate: WideString;
begin
    Result := DefaultInterface.ExpirationDate;
end;

procedure TSmsDataWapPushProperties.Set_Reserved(Param1: Integer);
begin
  DefaultInterface.Set_Reserved(Param1);
end;

procedure TSmsDataWapPushProperties.Set_DistributionID(const Param1: WideString);
  { Warning: The property DistributionID has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionID := Param1;
end;

procedure TSmsDataWapPushProperties.Set_DistributionKey(const Param1: WideString);
  { Warning: The property DistributionKey has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionKey := Param1;
end;

function TSmsDataWapPushProperties.Get_Module: WideString;
begin
    Result := DefaultInterface.Module;
end;

function TSmsDataWapPushProperties.Get_SignalReference: WideString;
begin
    Result := DefaultInterface.SignalReference;
end;

procedure TSmsDataWapPushProperties.Set_SignalReference(const pVal: WideString);
  { Warning: The property SignalReference has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.SignalReference := pVal;
end;

function TSmsDataWapPushProperties.Get_SignalAction: Integer;
begin
    Result := DefaultInterface.SignalAction;
end;

procedure TSmsDataWapPushProperties.Set_SignalAction(pVal: Integer);
begin
  DefaultInterface.Set_SignalAction(pVal);
end;

function TSmsDataWapPushProperties.Get_Description: WideString;
begin
    Result := DefaultInterface.Description;
end;

procedure TSmsDataWapPushProperties.Set_Description(const pVal: WideString);
  { Warning: The property Description has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Description := pVal;
end;

function TSmsDataWapPushProperties.Get_URL: WideString;
begin
    Result := DefaultInterface.URL;
end;

procedure TSmsDataWapPushProperties.Set_URL(const pVal: WideString);
  { Warning: The property URL has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.URL := pVal;
end;

function TSmsDataWapPushProperties.Get_ConnectionType: Integer;
begin
    Result := DefaultInterface.ConnectionType;
end;

procedure TSmsDataWapPushProperties.Set_ConnectionType(pVal: Integer);
begin
  DefaultInterface.Set_ConnectionType(pVal);
end;

function TSmsDataWapPushProperties.Get_ExecuteAction: Integer;
begin
    Result := DefaultInterface.ExecuteAction;
end;

procedure TSmsDataWapPushProperties.Set_ExecuteAction(pVal: Integer);
begin
  DefaultInterface.Set_ExecuteAction(pVal);
end;

function TSmsDataWapPushProperties.Get_EncodedMessage: WideString;
begin
    Result := DefaultInterface.EncodedMessage;
end;

{$ENDIF}

class function CoSmsDeliveryStatus.Create: ISmsDeliveryStatus;
begin
  Result := CreateComObject(CLASS_SmsDeliveryStatus) as ISmsDeliveryStatus;
end;

class function CoSmsDeliveryStatus.CreateRemote(const MachineName: string): ISmsDeliveryStatus;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SmsDeliveryStatus) as ISmsDeliveryStatus;
end;

procedure TSmsDeliveryStatus.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{E3C1E60A-87B3-4178-BB93-CCB8D6AC59F8}';
    IntfIID:   '{DF9718BC-DDEC-44C7-B2E0-F9046E840AF7}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TSmsDeliveryStatus.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ISmsDeliveryStatus;
  end;
end;

procedure TSmsDeliveryStatus.ConnectTo(svrIntf: ISmsDeliveryStatus);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TSmsDeliveryStatus.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TSmsDeliveryStatus.GetDefaultInterface: ISmsDeliveryStatus;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TSmsDeliveryStatus.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TSmsDeliveryStatusProperties.Create(Self);
{$ENDIF}
end;

destructor TSmsDeliveryStatus.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TSmsDeliveryStatus.GetServerProperties: TSmsDeliveryStatusProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TSmsDeliveryStatus.Get_Status: Integer;
begin
    Result := DefaultInterface.Status;
end;

procedure TSmsDeliveryStatus.Set_Status(pVal: Integer);
begin
  DefaultInterface.Set_Status(pVal);
end;

function TSmsDeliveryStatus.Get_StatusCode: Integer;
begin
    Result := DefaultInterface.StatusCode;
end;

procedure TSmsDeliveryStatus.Set_StatusCode(pVal: Integer);
begin
  DefaultInterface.Set_StatusCode(pVal);
end;

function TSmsDeliveryStatus.Get_StatusCompletedTime: WideString;
begin
    Result := DefaultInterface.StatusCompletedTime;
end;

procedure TSmsDeliveryStatus.Set_StatusCompletedTime(const pVal: WideString);
  { Warning: The property StatusCompletedTime has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.StatusCompletedTime := pVal;
end;

function TSmsDeliveryStatus.Get_StatusCompletedTimeSecs: Integer;
begin
    Result := DefaultInterface.StatusCompletedTimeSecs;
end;

procedure TSmsDeliveryStatus.Set_StatusCompletedTimeSecs(pVal: Integer);
begin
  DefaultInterface.Set_StatusCompletedTimeSecs(pVal);
end;

function TSmsDeliveryStatus.Get_IsCompleted: Integer;
begin
    Result := DefaultInterface.IsCompleted;
end;

procedure TSmsDeliveryStatus.Set_IsCompleted(pVal: Integer);
begin
  DefaultInterface.Set_IsCompleted(pVal);
end;

function TSmsDeliveryStatus.Get_StatusDescription: WideString;
begin
    Result := DefaultInterface.StatusDescription;
end;

function TSmsDeliveryStatus.Get_ProviderReference: WideString;
begin
    Result := DefaultInterface.ProviderReference;
end;

procedure TSmsDeliveryStatus.Set_ProviderReference(const pVal: WideString);
  { Warning: The property ProviderReference has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProviderReference := pVal;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TSmsDeliveryStatusProperties.Create(AServer: TSmsDeliveryStatus);
begin
  inherited Create;
  FServer := AServer;
end;

function TSmsDeliveryStatusProperties.GetDefaultInterface: ISmsDeliveryStatus;
begin
  Result := FServer.DefaultInterface;
end;

function TSmsDeliveryStatusProperties.Get_Status: Integer;
begin
    Result := DefaultInterface.Status;
end;

procedure TSmsDeliveryStatusProperties.Set_Status(pVal: Integer);
begin
  DefaultInterface.Set_Status(pVal);
end;

function TSmsDeliveryStatusProperties.Get_StatusCode: Integer;
begin
    Result := DefaultInterface.StatusCode;
end;

procedure TSmsDeliveryStatusProperties.Set_StatusCode(pVal: Integer);
begin
  DefaultInterface.Set_StatusCode(pVal);
end;

function TSmsDeliveryStatusProperties.Get_StatusCompletedTime: WideString;
begin
    Result := DefaultInterface.StatusCompletedTime;
end;

procedure TSmsDeliveryStatusProperties.Set_StatusCompletedTime(const pVal: WideString);
  { Warning: The property StatusCompletedTime has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.StatusCompletedTime := pVal;
end;

function TSmsDeliveryStatusProperties.Get_StatusCompletedTimeSecs: Integer;
begin
    Result := DefaultInterface.StatusCompletedTimeSecs;
end;

procedure TSmsDeliveryStatusProperties.Set_StatusCompletedTimeSecs(pVal: Integer);
begin
  DefaultInterface.Set_StatusCompletedTimeSecs(pVal);
end;

function TSmsDeliveryStatusProperties.Get_IsCompleted: Integer;
begin
    Result := DefaultInterface.IsCompleted;
end;

procedure TSmsDeliveryStatusProperties.Set_IsCompleted(pVal: Integer);
begin
  DefaultInterface.Set_IsCompleted(pVal);
end;

function TSmsDeliveryStatusProperties.Get_StatusDescription: WideString;
begin
    Result := DefaultInterface.StatusDescription;
end;

function TSmsDeliveryStatusProperties.Get_ProviderReference: WideString;
begin
    Result := DefaultInterface.ProviderReference;
end;

procedure TSmsDeliveryStatusProperties.Set_ProviderReference(const pVal: WideString);
  { Warning: The property ProviderReference has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProviderReference := pVal;
end;

{$ENDIF}

class function CoPagerMessage.Create: IPagerMessage;
begin
  Result := CreateComObject(CLASS_PagerMessage) as IPagerMessage;
end;

class function CoPagerMessage.CreateRemote(const MachineName: string): IPagerMessage;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PagerMessage) as IPagerMessage;
end;

procedure TPagerMessage.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{A4ECB249-089A-458B-B1DC-AFA3F6DFD691}';
    IntfIID:   '{990F731B-B2A8-45B8-9E39-8DF6FA8B85C1}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TPagerMessage.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IPagerMessage;
  end;
end;

procedure TPagerMessage.ConnectTo(svrIntf: IPagerMessage);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TPagerMessage.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TPagerMessage.GetDefaultInterface: IPagerMessage;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TPagerMessage.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TPagerMessageProperties.Create(Self);
{$ENDIF}
end;

destructor TPagerMessage.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TPagerMessage.GetServerProperties: TPagerMessageProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TPagerMessage.Get_Recipient: WideString;
begin
    Result := DefaultInterface.Recipient;
end;

procedure TPagerMessage.Set_Recipient(const pVal: WideString);
  { Warning: The property Recipient has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Recipient := pVal;
end;

function TPagerMessage.Get_Data: WideString;
begin
    Result := DefaultInterface.Data;
end;

procedure TPagerMessage.Set_Data(const pVal: WideString);
  { Warning: The property Data has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Data := pVal;
end;

procedure TPagerMessage.Clear;
begin
  DefaultInterface.Clear;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TPagerMessageProperties.Create(AServer: TPagerMessage);
begin
  inherited Create;
  FServer := AServer;
end;

function TPagerMessageProperties.GetDefaultInterface: IPagerMessage;
begin
  Result := FServer.DefaultInterface;
end;

function TPagerMessageProperties.Get_Recipient: WideString;
begin
    Result := DefaultInterface.Recipient;
end;

procedure TPagerMessageProperties.Set_Recipient(const pVal: WideString);
  { Warning: The property Recipient has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Recipient := pVal;
end;

function TPagerMessageProperties.Get_Data: WideString;
begin
    Result := DefaultInterface.Data;
end;

procedure TPagerMessageProperties.Set_Data(const pVal: WideString);
  { Warning: The property Data has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Data := pVal;
end;

{$ENDIF}

class function CoMmsProtocolMm1.Create: IMmsProtocolMm1;
begin
  Result := CreateComObject(CLASS_MmsProtocolMm1) as IMmsProtocolMm1;
end;

class function CoMmsProtocolMm1.CreateRemote(const MachineName: string): IMmsProtocolMm1;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MmsProtocolMm1) as IMmsProtocolMm1;
end;

procedure TMmsProtocolMm1.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{F0589DF4-1745-4437-B41A-F72B780410AF}';
    IntfIID:   '{1B87BF35-D56F-42A8-8D23-8631953DBA68}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TMmsProtocolMm1.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IMmsProtocolMm1;
  end;
end;

procedure TMmsProtocolMm1.ConnectTo(svrIntf: IMmsProtocolMm1);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TMmsProtocolMm1.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TMmsProtocolMm1.GetDefaultInterface: IMmsProtocolMm1;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TMmsProtocolMm1.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TMmsProtocolMm1Properties.Create(Self);
{$ENDIF}
end;

destructor TMmsProtocolMm1.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TMmsProtocolMm1.GetServerProperties: TMmsProtocolMm1Properties;
begin
  Result := FProps;
end;
{$ENDIF}

function TMmsProtocolMm1.Get_LastError: Integer;
begin
    Result := DefaultInterface.LastError;
end;

function TMmsProtocolMm1.Get_Version: WideString;
begin
    Result := DefaultInterface.Version;
end;

function TMmsProtocolMm1.Get_Build: WideString;
begin
    Result := DefaultInterface.Build;
end;

function TMmsProtocolMm1.Get_ExpirationDate: WideString;
begin
    Result := DefaultInterface.ExpirationDate;
end;

procedure TMmsProtocolMm1.Set_Reserved(Param1: Integer);
begin
  DefaultInterface.Set_Reserved(Param1);
end;

function TMmsProtocolMm1.Get_LogFile: WideString;
begin
    Result := DefaultInterface.LogFile;
end;

procedure TMmsProtocolMm1.Set_LogFile(const pVal: WideString);
  { Warning: The property LogFile has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.LogFile := pVal;
end;

function TMmsProtocolMm1.Get_ActivityFile: WideString;
begin
    Result := DefaultInterface.ActivityFile;
end;

procedure TMmsProtocolMm1.Set_ActivityFile(const pVal: WideString);
  { Warning: The property ActivityFile has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ActivityFile := pVal;
end;

procedure TMmsProtocolMm1.Set_DistributionID(const Param1: WideString);
  { Warning: The property DistributionID has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionID := Param1;
end;

procedure TMmsProtocolMm1.Set_DistributionKey(const Param1: WideString);
  { Warning: The property DistributionKey has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionKey := Param1;
end;

function TMmsProtocolMm1.Get_Module: WideString;
begin
    Result := DefaultInterface.Module;
end;

procedure TMmsProtocolMm1.Set_Device(const pVal: WideString);
  { Warning: The property Device has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Device := pVal;
end;

function TMmsProtocolMm1.Get_Device: WideString;
begin
    Result := DefaultInterface.Device;
end;

function TMmsProtocolMm1.Get_ProviderAPN: WideString;
begin
    Result := DefaultInterface.ProviderAPN;
end;

procedure TMmsProtocolMm1.Set_ProviderAPN(const pVal: WideString);
  { Warning: The property ProviderAPN has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProviderAPN := pVal;
end;

function TMmsProtocolMm1.Get_ProviderAPNAccount: WideString;
begin
    Result := DefaultInterface.ProviderAPNAccount;
end;

procedure TMmsProtocolMm1.Set_ProviderAPNAccount(const pVal: WideString);
  { Warning: The property ProviderAPNAccount has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProviderAPNAccount := pVal;
end;

function TMmsProtocolMm1.Get_ProviderAPNPassword: WideString;
begin
    Result := DefaultInterface.ProviderAPNPassword;
end;

procedure TMmsProtocolMm1.Set_ProviderAPNPassword(const pVal: WideString);
  { Warning: The property ProviderAPNPassword has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProviderAPNPassword := pVal;
end;

function TMmsProtocolMm1.Get_ProviderWAPGateway: WideString;
begin
    Result := DefaultInterface.ProviderWAPGateway;
end;

procedure TMmsProtocolMm1.Set_ProviderWAPGateway(const pVal: WideString);
  { Warning: The property ProviderWAPGateway has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProviderWAPGateway := pVal;
end;

function TMmsProtocolMm1.Get_ProviderMMSC: WideString;
begin
    Result := DefaultInterface.ProviderMMSC;
end;

procedure TMmsProtocolMm1.Set_ProviderMMSC(const pVal: WideString);
  { Warning: The property ProviderMMSC has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProviderMMSC := pVal;
end;

function TMmsProtocolMm1.Get_ProviderMessageSizeLimit: Integer;
begin
    Result := DefaultInterface.ProviderMessageSizeLimit;
end;

procedure TMmsProtocolMm1.Set_ProviderMessageSizeLimit(pVal: Integer);
begin
  DefaultInterface.Set_ProviderMessageSizeLimit(pVal);
end;

function TMmsProtocolMm1.Get_AdvancedSettings: WideString;
begin
    Result := DefaultInterface.AdvancedSettings;
end;

procedure TMmsProtocolMm1.Set_AdvancedSettings(const pVal: WideString);
  { Warning: The property AdvancedSettings has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AdvancedSettings := pVal;
end;

function TMmsProtocolMm1.Get_ProviderResponse: WideString;
begin
    Result := DefaultInterface.ProviderResponse;
end;

function TMmsProtocolMm1.Get_MessageId: WideString;
begin
    Result := DefaultInterface.MessageId;
end;

function TMmsProtocolMm1.Get_ProvidersFolder: WideString;
begin
    Result := DefaultInterface.ProvidersFolder;
end;

function TMmsProtocolMm1.Get_ProviderTimeout: Integer;
begin
    Result := DefaultInterface.ProviderTimeout;
end;

procedure TMmsProtocolMm1.Set_ProviderTimeout(pVal: Integer);
begin
  DefaultInterface.Set_ProviderTimeout(pVal);
end;

procedure TMmsProtocolMm1.Clear;
begin
  DefaultInterface.Clear;
end;

function TMmsProtocolMm1.GetErrorDescription(newVal: Integer): WideString;
begin
  Result := DefaultInterface.GetErrorDescription(newVal);
end;

procedure TMmsProtocolMm1.Activate(const newVal: WideString; bPersistent: Integer);
begin
  DefaultInterface.Activate(newVal, bPersistent);
end;

procedure TMmsProtocolMm1.Connect1;
begin
  DefaultInterface.Connect;
end;

procedure TMmsProtocolMm1.Disconnect1;
begin
  DefaultInterface.Disconnect;
end;

procedure TMmsProtocolMm1.Send(var pVal: OleVariant);
begin
  DefaultInterface.Send(pVal);
end;

function TMmsProtocolMm1.GetDeviceCount: Integer;
begin
  Result := DefaultInterface.GetDeviceCount;
end;

function TMmsProtocolMm1.GetDevice(lDevice: Integer): WideString;
begin
  Result := DefaultInterface.GetDevice(lDevice);
end;

procedure TMmsProtocolMm1.ProviderSaveConfig(const bstrFile: WideString);
begin
  DefaultInterface.ProviderSaveConfig(bstrFile);
end;

procedure TMmsProtocolMm1.ProviderLoadConfig(const bstrFile: WideString);
begin
  DefaultInterface.ProviderLoadConfig(bstrFile);
end;

procedure TMmsProtocolMm1.EnterPin(const bstrPinCode: WideString);
begin
  DefaultInterface.EnterPin(bstrPinCode);
end;

function TMmsProtocolMm1.SendCommand(const bstrCommand: WideString; lTimeout: Integer): WideString;
begin
  Result := DefaultInterface.SendCommand(bstrCommand, lTimeout);
end;

function TMmsProtocolMm1.Retrieve(const bstrContentLocation: WideString): OleVariant;
begin
  Result := DefaultInterface.Retrieve(bstrContentLocation);
end;

function TMmsProtocolMm1.GetFirstMessage: OleVariant;
begin
  Result := DefaultInterface.GetFirstMessage;
end;

function TMmsProtocolMm1.GetNextMessage: OleVariant;
begin
  Result := DefaultInterface.GetNextMessage;
end;

function TMmsProtocolMm1.CountReceivedMessages: Integer;
begin
  Result := DefaultInterface.CountReceivedMessages;
end;

function TMmsProtocolMm1.GetMessage(lIndex: Integer): OleVariant;
begin
  Result := DefaultInterface.GetMessage(lIndex);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TMmsProtocolMm1Properties.Create(AServer: TMmsProtocolMm1);
begin
  inherited Create;
  FServer := AServer;
end;

function TMmsProtocolMm1Properties.GetDefaultInterface: IMmsProtocolMm1;
begin
  Result := FServer.DefaultInterface;
end;

function TMmsProtocolMm1Properties.Get_LastError: Integer;
begin
    Result := DefaultInterface.LastError;
end;

function TMmsProtocolMm1Properties.Get_Version: WideString;
begin
    Result := DefaultInterface.Version;
end;

function TMmsProtocolMm1Properties.Get_Build: WideString;
begin
    Result := DefaultInterface.Build;
end;

function TMmsProtocolMm1Properties.Get_ExpirationDate: WideString;
begin
    Result := DefaultInterface.ExpirationDate;
end;

procedure TMmsProtocolMm1Properties.Set_Reserved(Param1: Integer);
begin
  DefaultInterface.Set_Reserved(Param1);
end;

function TMmsProtocolMm1Properties.Get_LogFile: WideString;
begin
    Result := DefaultInterface.LogFile;
end;

procedure TMmsProtocolMm1Properties.Set_LogFile(const pVal: WideString);
  { Warning: The property LogFile has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.LogFile := pVal;
end;

function TMmsProtocolMm1Properties.Get_ActivityFile: WideString;
begin
    Result := DefaultInterface.ActivityFile;
end;

procedure TMmsProtocolMm1Properties.Set_ActivityFile(const pVal: WideString);
  { Warning: The property ActivityFile has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ActivityFile := pVal;
end;

procedure TMmsProtocolMm1Properties.Set_DistributionID(const Param1: WideString);
  { Warning: The property DistributionID has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionID := Param1;
end;

procedure TMmsProtocolMm1Properties.Set_DistributionKey(const Param1: WideString);
  { Warning: The property DistributionKey has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionKey := Param1;
end;

function TMmsProtocolMm1Properties.Get_Module: WideString;
begin
    Result := DefaultInterface.Module;
end;

procedure TMmsProtocolMm1Properties.Set_Device(const pVal: WideString);
  { Warning: The property Device has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Device := pVal;
end;

function TMmsProtocolMm1Properties.Get_Device: WideString;
begin
    Result := DefaultInterface.Device;
end;

function TMmsProtocolMm1Properties.Get_ProviderAPN: WideString;
begin
    Result := DefaultInterface.ProviderAPN;
end;

procedure TMmsProtocolMm1Properties.Set_ProviderAPN(const pVal: WideString);
  { Warning: The property ProviderAPN has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProviderAPN := pVal;
end;

function TMmsProtocolMm1Properties.Get_ProviderAPNAccount: WideString;
begin
    Result := DefaultInterface.ProviderAPNAccount;
end;

procedure TMmsProtocolMm1Properties.Set_ProviderAPNAccount(const pVal: WideString);
  { Warning: The property ProviderAPNAccount has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProviderAPNAccount := pVal;
end;

function TMmsProtocolMm1Properties.Get_ProviderAPNPassword: WideString;
begin
    Result := DefaultInterface.ProviderAPNPassword;
end;

procedure TMmsProtocolMm1Properties.Set_ProviderAPNPassword(const pVal: WideString);
  { Warning: The property ProviderAPNPassword has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProviderAPNPassword := pVal;
end;

function TMmsProtocolMm1Properties.Get_ProviderWAPGateway: WideString;
begin
    Result := DefaultInterface.ProviderWAPGateway;
end;

procedure TMmsProtocolMm1Properties.Set_ProviderWAPGateway(const pVal: WideString);
  { Warning: The property ProviderWAPGateway has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProviderWAPGateway := pVal;
end;

function TMmsProtocolMm1Properties.Get_ProviderMMSC: WideString;
begin
    Result := DefaultInterface.ProviderMMSC;
end;

procedure TMmsProtocolMm1Properties.Set_ProviderMMSC(const pVal: WideString);
  { Warning: The property ProviderMMSC has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProviderMMSC := pVal;
end;

function TMmsProtocolMm1Properties.Get_ProviderMessageSizeLimit: Integer;
begin
    Result := DefaultInterface.ProviderMessageSizeLimit;
end;

procedure TMmsProtocolMm1Properties.Set_ProviderMessageSizeLimit(pVal: Integer);
begin
  DefaultInterface.Set_ProviderMessageSizeLimit(pVal);
end;

function TMmsProtocolMm1Properties.Get_AdvancedSettings: WideString;
begin
    Result := DefaultInterface.AdvancedSettings;
end;

procedure TMmsProtocolMm1Properties.Set_AdvancedSettings(const pVal: WideString);
  { Warning: The property AdvancedSettings has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AdvancedSettings := pVal;
end;

function TMmsProtocolMm1Properties.Get_ProviderResponse: WideString;
begin
    Result := DefaultInterface.ProviderResponse;
end;

function TMmsProtocolMm1Properties.Get_MessageId: WideString;
begin
    Result := DefaultInterface.MessageId;
end;

function TMmsProtocolMm1Properties.Get_ProvidersFolder: WideString;
begin
    Result := DefaultInterface.ProvidersFolder;
end;

function TMmsProtocolMm1Properties.Get_ProviderTimeout: Integer;
begin
    Result := DefaultInterface.ProviderTimeout;
end;

procedure TMmsProtocolMm1Properties.Set_ProviderTimeout(pVal: Integer);
begin
  DefaultInterface.Set_ProviderTimeout(pVal);
end;

{$ENDIF}

class function CoMmsSlide.Create: IMmsSlide;
begin
  Result := CreateComObject(CLASS_MmsSlide) as IMmsSlide;
end;

class function CoMmsSlide.CreateRemote(const MachineName: string): IMmsSlide;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MmsSlide) as IMmsSlide;
end;

procedure TMmsSlide.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{43BFDCA2-0801-4A5F-897F-DA987DD62EF3}';
    IntfIID:   '{C97CA114-C43B-49D9-B077-41F7299C1A11}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TMmsSlide.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IMmsSlide;
  end;
end;

procedure TMmsSlide.ConnectTo(svrIntf: IMmsSlide);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TMmsSlide.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TMmsSlide.GetDefaultInterface: IMmsSlide;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TMmsSlide.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TMmsSlideProperties.Create(Self);
{$ENDIF}
end;

destructor TMmsSlide.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TMmsSlide.GetServerProperties: TMmsSlideProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TMmsSlide.Get_LastError: Integer;
begin
    Result := DefaultInterface.LastError;
end;

function TMmsSlide.Get_Version: WideString;
begin
    Result := DefaultInterface.Version;
end;

function TMmsSlide.Get_Build: WideString;
begin
    Result := DefaultInterface.Build;
end;

function TMmsSlide.Get_ExpirationDate: WideString;
begin
    Result := DefaultInterface.ExpirationDate;
end;

procedure TMmsSlide.Set_Reserved(Param1: Integer);
begin
  DefaultInterface.Set_Reserved(Param1);
end;

procedure TMmsSlide.Set_DistributionID(const Param1: WideString);
  { Warning: The property DistributionID has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionID := Param1;
end;

procedure TMmsSlide.Set_DistributionKey(const Param1: WideString);
  { Warning: The property DistributionKey has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionKey := Param1;
end;

function TMmsSlide.Get_Module: WideString;
begin
    Result := DefaultInterface.Module;
end;

function TMmsSlide.Get_ID: Integer;
begin
    Result := DefaultInterface.ID;
end;

function TMmsSlide.Get_Duration: Integer;
begin
    Result := DefaultInterface.Duration;
end;

procedure TMmsSlide.Set_Duration(pVal: Integer);
begin
  DefaultInterface.Set_Duration(pVal);
end;

function TMmsSlide.Get_sysClone: Integer;
begin
    Result := DefaultInterface.sysClone;
end;

procedure TMmsSlide.Clear;
begin
  DefaultInterface.Clear;
end;

function TMmsSlide.GetErrorDescription(newVal: Integer): WideString;
begin
  Result := DefaultInterface.GetErrorDescription(newVal);
end;

procedure TMmsSlide.Activate(const newVal: WideString; bPersistent: Integer);
begin
  DefaultInterface.Activate(newVal, bPersistent);
end;

procedure TMmsSlide.AddText(const bstrText: WideString);
begin
  DefaultInterface.AddText(bstrText);
end;

procedure TMmsSlide.AddAttachment(const newVal: WideString);
begin
  DefaultInterface.AddAttachment(newVal, EmptyParam);
end;

procedure TMmsSlide.AddAttachment(const newVal: WideString; var pVal: OleVariant);
begin
  DefaultInterface.AddAttachment(newVal, pVal);
end;

procedure TMmsSlide.AddAttachmentData(const FileName: WideString; var Data: OleVariant);
begin
  DefaultInterface.AddAttachmentData(FileName, Data);
end;

function TMmsSlide.CountAttachments: Integer;
begin
  Result := DefaultInterface.CountAttachments;
end;

function TMmsSlide.GetAttachmentName(lIndex: Integer): WideString;
begin
  Result := DefaultInterface.GetAttachmentName(lIndex);
end;

procedure TMmsSlide.SaveAttachment(lIndex: Integer; const bstrFileName: WideString);
begin
  DefaultInterface.SaveAttachment(lIndex, bstrFileName);
end;

function TMmsSlide.GetTextCount: Integer;
begin
  Result := DefaultInterface.GetTextCount;
end;

function TMmsSlide.GetText(lIndex: Integer): WideString;
begin
  Result := DefaultInterface.GetText(lIndex);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TMmsSlideProperties.Create(AServer: TMmsSlide);
begin
  inherited Create;
  FServer := AServer;
end;

function TMmsSlideProperties.GetDefaultInterface: IMmsSlide;
begin
  Result := FServer.DefaultInterface;
end;

function TMmsSlideProperties.Get_LastError: Integer;
begin
    Result := DefaultInterface.LastError;
end;

function TMmsSlideProperties.Get_Version: WideString;
begin
    Result := DefaultInterface.Version;
end;

function TMmsSlideProperties.Get_Build: WideString;
begin
    Result := DefaultInterface.Build;
end;

function TMmsSlideProperties.Get_ExpirationDate: WideString;
begin
    Result := DefaultInterface.ExpirationDate;
end;

procedure TMmsSlideProperties.Set_Reserved(Param1: Integer);
begin
  DefaultInterface.Set_Reserved(Param1);
end;

procedure TMmsSlideProperties.Set_DistributionID(const Param1: WideString);
  { Warning: The property DistributionID has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionID := Param1;
end;

procedure TMmsSlideProperties.Set_DistributionKey(const Param1: WideString);
  { Warning: The property DistributionKey has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionKey := Param1;
end;

function TMmsSlideProperties.Get_Module: WideString;
begin
    Result := DefaultInterface.Module;
end;

function TMmsSlideProperties.Get_ID: Integer;
begin
    Result := DefaultInterface.ID;
end;

function TMmsSlideProperties.Get_Duration: Integer;
begin
    Result := DefaultInterface.Duration;
end;

procedure TMmsSlideProperties.Set_Duration(pVal: Integer);
begin
  DefaultInterface.Set_Duration(pVal);
end;

function TMmsSlideProperties.Get_sysClone: Integer;
begin
    Result := DefaultInterface.sysClone;
end;

{$ENDIF}

class function CoMmsConstants.Create: IMmsConstants;
begin
  Result := CreateComObject(CLASS_MmsConstants) as IMmsConstants;
end;

class function CoMmsConstants.CreateRemote(const MachineName: string): IMmsConstants;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MmsConstants) as IMmsConstants;
end;

procedure TMmsConstants.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{51B8A8E6-CC2F-4160-8645-E0B264659493}';
    IntfIID:   '{B85A2092-FE47-452A-AFC8-8F12C5BDCDE3}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TMmsConstants.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IMmsConstants;
  end;
end;

procedure TMmsConstants.ConnectTo(svrIntf: IMmsConstants);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TMmsConstants.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TMmsConstants.GetDefaultInterface: IMmsConstants;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TMmsConstants.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TMmsConstantsProperties.Create(Self);
{$ENDIF}
end;

destructor TMmsConstants.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TMmsConstants.GetServerProperties: TMmsConstantsProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TMmsConstants.Get_asMMS_CLASS_PERSONAL: Integer;
begin
    Result := DefaultInterface.asMMS_CLASS_PERSONAL;
end;

function TMmsConstants.Get_asMMS_CLASS_ADVERTISEMENT: Integer;
begin
    Result := DefaultInterface.asMMS_CLASS_ADVERTISEMENT;
end;

function TMmsConstants.Get_asMMS_CLASS_INFORMATIONAL: Integer;
begin
    Result := DefaultInterface.asMMS_CLASS_INFORMATIONAL;
end;

function TMmsConstants.Get_asMMS_CLASS_AUTO: Integer;
begin
    Result := DefaultInterface.asMMS_CLASS_AUTO;
end;

function TMmsConstants.Get_asMMS_PRIORITY_LOW: Integer;
begin
    Result := DefaultInterface.asMMS_PRIORITY_LOW;
end;

function TMmsConstants.Get_asMMS_PRIORITY_NORMAL: Integer;
begin
    Result := DefaultInterface.asMMS_PRIORITY_NORMAL;
end;

function TMmsConstants.Get_asMMS_PRIORITY_HIGH: Integer;
begin
    Result := DefaultInterface.asMMS_PRIORITY_HIGH;
end;

function TMmsConstants.Get_asMMS_DRM_FORWARDLOCK: Integer;
begin
    Result := DefaultInterface.asMMS_DRM_FORWARDLOCK;
end;

function TMmsConstants.Get_asMMS_DRM_PLAY: Integer;
begin
    Result := DefaultInterface.asMMS_DRM_PLAY;
end;

function TMmsConstants.Get_asMMS_DRM_DISPLAY: Integer;
begin
    Result := DefaultInterface.asMMS_DRM_DISPLAY;
end;

function TMmsConstants.Get_asMMS_DRM_EXECUTE: Integer;
begin
    Result := DefaultInterface.asMMS_DRM_EXECUTE;
end;

function TMmsConstants.Get_asMMS_DRM_PRINT: Integer;
begin
    Result := DefaultInterface.asMMS_DRM_PRINT;
end;

function TMmsConstants.Get_asMMS_MM7VARIATION_3GPP: Integer;
begin
    Result := DefaultInterface.asMMS_MM7VARIATION_3GPP;
end;

function TMmsConstants.Get_asMMS_MM7VARIATION_ERICSSON: Integer;
begin
    Result := DefaultInterface.asMMS_MM7VARIATION_ERICSSON;
end;

function TMmsConstants.Get_asMMS_MM7VARIATION_PAP: Integer;
begin
    Result := DefaultInterface.asMMS_MM7VARIATION_PAP;
end;

function TMmsConstants.Get_asMMS_PROTOCOL_MM1: Integer;
begin
    Result := DefaultInterface.asMMS_PROTOCOL_MM1;
end;

function TMmsConstants.Get_asMMS_PROTOCOL_MM4: Integer;
begin
    Result := DefaultInterface.asMMS_PROTOCOL_MM4;
end;

function TMmsConstants.Get_asMMS_PROTOCOL_MM7: Integer;
begin
    Result := DefaultInterface.asMMS_PROTOCOL_MM7;
end;

function TMmsConstants.Get_asMMS_VERSION_5_2_0: Integer;
begin
    Result := DefaultInterface.asMMS_VERSION_5_2_0;
end;

function TMmsConstants.Get_asMMS_VERSION_5_3_0: Integer;
begin
    Result := DefaultInterface.asMMS_VERSION_5_3_0;
end;

function TMmsConstants.Get_asMMS_VERSION_5_4_0: Integer;
begin
    Result := DefaultInterface.asMMS_VERSION_5_4_0;
end;

function TMmsConstants.Get_asMMS_VERSION_5_5_0: Integer;
begin
    Result := DefaultInterface.asMMS_VERSION_5_5_0;
end;

function TMmsConstants.Get_asMMS_VERSION_5_6_0: Integer;
begin
    Result := DefaultInterface.asMMS_VERSION_5_6_0;
end;

function TMmsConstants.Get_asMMS_VERSION_5_7_0: Integer;
begin
    Result := DefaultInterface.asMMS_VERSION_5_7_0;
end;

function TMmsConstants.Get_asMMS_VERSION_5_8_0: Integer;
begin
    Result := DefaultInterface.asMMS_VERSION_5_8_0;
end;

function TMmsConstants.Get_asMMS_VERSION_5_9_0: Integer;
begin
    Result := DefaultInterface.asMMS_VERSION_5_9_0;
end;

function TMmsConstants.Get_asMMS_VERSION_5_10_0: Integer;
begin
    Result := DefaultInterface.asMMS_VERSION_5_10_0;
end;

function TMmsConstants.Get_asMMS_VERSION_5_11_0: Integer;
begin
    Result := DefaultInterface.asMMS_VERSION_5_11_0;
end;

function TMmsConstants.Get_asMMS_VERSION_6_0_0: Integer;
begin
    Result := DefaultInterface.asMMS_VERSION_6_0_0;
end;

function TMmsConstants.Get_asMMS_VERSION_6_1_0: Integer;
begin
    Result := DefaultInterface.asMMS_VERSION_6_1_0;
end;

function TMmsConstants.Get_asMMS_VERSION_6_2_0: Integer;
begin
    Result := DefaultInterface.asMMS_VERSION_6_2_0;
end;

function TMmsConstants.Get_asMMS_VERSION_6_3_0: Integer;
begin
    Result := DefaultInterface.asMMS_VERSION_6_3_0;
end;

function TMmsConstants.Get_asMMS_VERSION_6_4_0: Integer;
begin
    Result := DefaultInterface.asMMS_VERSION_6_4_0;
end;

function TMmsConstants.Get_asMMS_VERSION_6_5_0: Integer;
begin
    Result := DefaultInterface.asMMS_VERSION_6_5_0;
end;

function TMmsConstants.Get_asMMS_VERSION_6_6_0: Integer;
begin
    Result := DefaultInterface.asMMS_VERSION_6_6_0;
end;

function TMmsConstants.Get_asMMS_VERSION_6_7_0: Integer;
begin
    Result := DefaultInterface.asMMS_VERSION_6_7_0;
end;

function TMmsConstants.Get_asMMS_SCHEMA_REL5_MM7_1_0: Integer;
begin
    Result := DefaultInterface.asMMS_SCHEMA_REL5_MM7_1_0;
end;

function TMmsConstants.Get_asMMS_SCHEMA_REL5_MM7_1_1: Integer;
begin
    Result := DefaultInterface.asMMS_SCHEMA_REL5_MM7_1_1;
end;

function TMmsConstants.Get_asMMS_SCHEMA_REL5_MM7_1_2: Integer;
begin
    Result := DefaultInterface.asMMS_SCHEMA_REL5_MM7_1_2;
end;

function TMmsConstants.Get_asMMS_SCHEMA_REL5_MM7_1_3: Integer;
begin
    Result := DefaultInterface.asMMS_SCHEMA_REL5_MM7_1_3;
end;

function TMmsConstants.Get_asMMS_SCHEMA_REL5_MM7_1_4: Integer;
begin
    Result := DefaultInterface.asMMS_SCHEMA_REL5_MM7_1_4;
end;

function TMmsConstants.Get_asMMS_SCHEMA_REL5_MM7_1_5: Integer;
begin
    Result := DefaultInterface.asMMS_SCHEMA_REL5_MM7_1_5;
end;

function TMmsConstants.Get_asMMS_SCHEMA_REL6_MM7_1_0: Integer;
begin
    Result := DefaultInterface.asMMS_SCHEMA_REL6_MM7_1_0;
end;

function TMmsConstants.Get_asMMS_SCHEMA_REL6_MM7_1_1: Integer;
begin
    Result := DefaultInterface.asMMS_SCHEMA_REL6_MM7_1_1;
end;

function TMmsConstants.Get_asMMS_SCHEMA_REL6_MM7_1_2: Integer;
begin
    Result := DefaultInterface.asMMS_SCHEMA_REL6_MM7_1_2;
end;

function TMmsConstants.Get_asMMS_SCHEMA_REL6_MM7_1_3: Integer;
begin
    Result := DefaultInterface.asMMS_SCHEMA_REL6_MM7_1_3;
end;

function TMmsConstants.Get_asMMS_MM1FILE_MSENDREQ: Integer;
begin
    Result := DefaultInterface.asMMS_MM1FILE_MSENDREQ;
end;

function TMmsConstants.Get_asMMS_MM1FILE_MRETRIEVECONF: Integer;
begin
    Result := DefaultInterface.asMMS_MM1FILE_MRETRIEVECONF;
end;

function TMmsConstants.Get_asMMS_RECIPIENT_TO: Integer;
begin
    Result := DefaultInterface.asMMS_RECIPIENT_TO;
end;

function TMmsConstants.Get_asMMS_RECIPIENT_CC: Integer;
begin
    Result := DefaultInterface.asMMS_RECIPIENT_CC;
end;

function TMmsConstants.Get_asMMS_RECIPIENT_BCC: Integer;
begin
    Result := DefaultInterface.asMMS_RECIPIENT_BCC;
end;

function TMmsConstants.Get_asMMS_VERSION_6_8_0: Integer;
begin
    Result := DefaultInterface.asMMS_VERSION_6_8_0;
end;

function TMmsConstants.Get_asMMS_SCHEMA_REL6_MM7_1_4: Integer;
begin
    Result := DefaultInterface.asMMS_SCHEMA_REL6_MM7_1_4;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TMmsConstantsProperties.Create(AServer: TMmsConstants);
begin
  inherited Create;
  FServer := AServer;
end;

function TMmsConstantsProperties.GetDefaultInterface: IMmsConstants;
begin
  Result := FServer.DefaultInterface;
end;

function TMmsConstantsProperties.Get_asMMS_CLASS_PERSONAL: Integer;
begin
    Result := DefaultInterface.asMMS_CLASS_PERSONAL;
end;

function TMmsConstantsProperties.Get_asMMS_CLASS_ADVERTISEMENT: Integer;
begin
    Result := DefaultInterface.asMMS_CLASS_ADVERTISEMENT;
end;

function TMmsConstantsProperties.Get_asMMS_CLASS_INFORMATIONAL: Integer;
begin
    Result := DefaultInterface.asMMS_CLASS_INFORMATIONAL;
end;

function TMmsConstantsProperties.Get_asMMS_CLASS_AUTO: Integer;
begin
    Result := DefaultInterface.asMMS_CLASS_AUTO;
end;

function TMmsConstantsProperties.Get_asMMS_PRIORITY_LOW: Integer;
begin
    Result := DefaultInterface.asMMS_PRIORITY_LOW;
end;

function TMmsConstantsProperties.Get_asMMS_PRIORITY_NORMAL: Integer;
begin
    Result := DefaultInterface.asMMS_PRIORITY_NORMAL;
end;

function TMmsConstantsProperties.Get_asMMS_PRIORITY_HIGH: Integer;
begin
    Result := DefaultInterface.asMMS_PRIORITY_HIGH;
end;

function TMmsConstantsProperties.Get_asMMS_DRM_FORWARDLOCK: Integer;
begin
    Result := DefaultInterface.asMMS_DRM_FORWARDLOCK;
end;

function TMmsConstantsProperties.Get_asMMS_DRM_PLAY: Integer;
begin
    Result := DefaultInterface.asMMS_DRM_PLAY;
end;

function TMmsConstantsProperties.Get_asMMS_DRM_DISPLAY: Integer;
begin
    Result := DefaultInterface.asMMS_DRM_DISPLAY;
end;

function TMmsConstantsProperties.Get_asMMS_DRM_EXECUTE: Integer;
begin
    Result := DefaultInterface.asMMS_DRM_EXECUTE;
end;

function TMmsConstantsProperties.Get_asMMS_DRM_PRINT: Integer;
begin
    Result := DefaultInterface.asMMS_DRM_PRINT;
end;

function TMmsConstantsProperties.Get_asMMS_MM7VARIATION_3GPP: Integer;
begin
    Result := DefaultInterface.asMMS_MM7VARIATION_3GPP;
end;

function TMmsConstantsProperties.Get_asMMS_MM7VARIATION_ERICSSON: Integer;
begin
    Result := DefaultInterface.asMMS_MM7VARIATION_ERICSSON;
end;

function TMmsConstantsProperties.Get_asMMS_MM7VARIATION_PAP: Integer;
begin
    Result := DefaultInterface.asMMS_MM7VARIATION_PAP;
end;

function TMmsConstantsProperties.Get_asMMS_PROTOCOL_MM1: Integer;
begin
    Result := DefaultInterface.asMMS_PROTOCOL_MM1;
end;

function TMmsConstantsProperties.Get_asMMS_PROTOCOL_MM4: Integer;
begin
    Result := DefaultInterface.asMMS_PROTOCOL_MM4;
end;

function TMmsConstantsProperties.Get_asMMS_PROTOCOL_MM7: Integer;
begin
    Result := DefaultInterface.asMMS_PROTOCOL_MM7;
end;

function TMmsConstantsProperties.Get_asMMS_VERSION_5_2_0: Integer;
begin
    Result := DefaultInterface.asMMS_VERSION_5_2_0;
end;

function TMmsConstantsProperties.Get_asMMS_VERSION_5_3_0: Integer;
begin
    Result := DefaultInterface.asMMS_VERSION_5_3_0;
end;

function TMmsConstantsProperties.Get_asMMS_VERSION_5_4_0: Integer;
begin
    Result := DefaultInterface.asMMS_VERSION_5_4_0;
end;

function TMmsConstantsProperties.Get_asMMS_VERSION_5_5_0: Integer;
begin
    Result := DefaultInterface.asMMS_VERSION_5_5_0;
end;

function TMmsConstantsProperties.Get_asMMS_VERSION_5_6_0: Integer;
begin
    Result := DefaultInterface.asMMS_VERSION_5_6_0;
end;

function TMmsConstantsProperties.Get_asMMS_VERSION_5_7_0: Integer;
begin
    Result := DefaultInterface.asMMS_VERSION_5_7_0;
end;

function TMmsConstantsProperties.Get_asMMS_VERSION_5_8_0: Integer;
begin
    Result := DefaultInterface.asMMS_VERSION_5_8_0;
end;

function TMmsConstantsProperties.Get_asMMS_VERSION_5_9_0: Integer;
begin
    Result := DefaultInterface.asMMS_VERSION_5_9_0;
end;

function TMmsConstantsProperties.Get_asMMS_VERSION_5_10_0: Integer;
begin
    Result := DefaultInterface.asMMS_VERSION_5_10_0;
end;

function TMmsConstantsProperties.Get_asMMS_VERSION_5_11_0: Integer;
begin
    Result := DefaultInterface.asMMS_VERSION_5_11_0;
end;

function TMmsConstantsProperties.Get_asMMS_VERSION_6_0_0: Integer;
begin
    Result := DefaultInterface.asMMS_VERSION_6_0_0;
end;

function TMmsConstantsProperties.Get_asMMS_VERSION_6_1_0: Integer;
begin
    Result := DefaultInterface.asMMS_VERSION_6_1_0;
end;

function TMmsConstantsProperties.Get_asMMS_VERSION_6_2_0: Integer;
begin
    Result := DefaultInterface.asMMS_VERSION_6_2_0;
end;

function TMmsConstantsProperties.Get_asMMS_VERSION_6_3_0: Integer;
begin
    Result := DefaultInterface.asMMS_VERSION_6_3_0;
end;

function TMmsConstantsProperties.Get_asMMS_VERSION_6_4_0: Integer;
begin
    Result := DefaultInterface.asMMS_VERSION_6_4_0;
end;

function TMmsConstantsProperties.Get_asMMS_VERSION_6_5_0: Integer;
begin
    Result := DefaultInterface.asMMS_VERSION_6_5_0;
end;

function TMmsConstantsProperties.Get_asMMS_VERSION_6_6_0: Integer;
begin
    Result := DefaultInterface.asMMS_VERSION_6_6_0;
end;

function TMmsConstantsProperties.Get_asMMS_VERSION_6_7_0: Integer;
begin
    Result := DefaultInterface.asMMS_VERSION_6_7_0;
end;

function TMmsConstantsProperties.Get_asMMS_SCHEMA_REL5_MM7_1_0: Integer;
begin
    Result := DefaultInterface.asMMS_SCHEMA_REL5_MM7_1_0;
end;

function TMmsConstantsProperties.Get_asMMS_SCHEMA_REL5_MM7_1_1: Integer;
begin
    Result := DefaultInterface.asMMS_SCHEMA_REL5_MM7_1_1;
end;

function TMmsConstantsProperties.Get_asMMS_SCHEMA_REL5_MM7_1_2: Integer;
begin
    Result := DefaultInterface.asMMS_SCHEMA_REL5_MM7_1_2;
end;

function TMmsConstantsProperties.Get_asMMS_SCHEMA_REL5_MM7_1_3: Integer;
begin
    Result := DefaultInterface.asMMS_SCHEMA_REL5_MM7_1_3;
end;

function TMmsConstantsProperties.Get_asMMS_SCHEMA_REL5_MM7_1_4: Integer;
begin
    Result := DefaultInterface.asMMS_SCHEMA_REL5_MM7_1_4;
end;

function TMmsConstantsProperties.Get_asMMS_SCHEMA_REL5_MM7_1_5: Integer;
begin
    Result := DefaultInterface.asMMS_SCHEMA_REL5_MM7_1_5;
end;

function TMmsConstantsProperties.Get_asMMS_SCHEMA_REL6_MM7_1_0: Integer;
begin
    Result := DefaultInterface.asMMS_SCHEMA_REL6_MM7_1_0;
end;

function TMmsConstantsProperties.Get_asMMS_SCHEMA_REL6_MM7_1_1: Integer;
begin
    Result := DefaultInterface.asMMS_SCHEMA_REL6_MM7_1_1;
end;

function TMmsConstantsProperties.Get_asMMS_SCHEMA_REL6_MM7_1_2: Integer;
begin
    Result := DefaultInterface.asMMS_SCHEMA_REL6_MM7_1_2;
end;

function TMmsConstantsProperties.Get_asMMS_SCHEMA_REL6_MM7_1_3: Integer;
begin
    Result := DefaultInterface.asMMS_SCHEMA_REL6_MM7_1_3;
end;

function TMmsConstantsProperties.Get_asMMS_MM1FILE_MSENDREQ: Integer;
begin
    Result := DefaultInterface.asMMS_MM1FILE_MSENDREQ;
end;

function TMmsConstantsProperties.Get_asMMS_MM1FILE_MRETRIEVECONF: Integer;
begin
    Result := DefaultInterface.asMMS_MM1FILE_MRETRIEVECONF;
end;

function TMmsConstantsProperties.Get_asMMS_RECIPIENT_TO: Integer;
begin
    Result := DefaultInterface.asMMS_RECIPIENT_TO;
end;

function TMmsConstantsProperties.Get_asMMS_RECIPIENT_CC: Integer;
begin
    Result := DefaultInterface.asMMS_RECIPIENT_CC;
end;

function TMmsConstantsProperties.Get_asMMS_RECIPIENT_BCC: Integer;
begin
    Result := DefaultInterface.asMMS_RECIPIENT_BCC;
end;

function TMmsConstantsProperties.Get_asMMS_VERSION_6_8_0: Integer;
begin
    Result := DefaultInterface.asMMS_VERSION_6_8_0;
end;

function TMmsConstantsProperties.Get_asMMS_SCHEMA_REL6_MM7_1_4: Integer;
begin
    Result := DefaultInterface.asMMS_SCHEMA_REL6_MM7_1_4;
end;

{$ENDIF}

class function CoMmsPermission.Create: IMmsPermission;
begin
  Result := CreateComObject(CLASS_MmsPermission) as IMmsPermission;
end;

class function CoMmsPermission.CreateRemote(const MachineName: string): IMmsPermission;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MmsPermission) as IMmsPermission;
end;

procedure TMmsPermission.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{D3458AB2-3485-4E68-95CB-49EEA9566B35}';
    IntfIID:   '{8FABC032-B5CD-4405-85E5-98A8DDEBFC3F}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TMmsPermission.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IMmsPermission;
  end;
end;

procedure TMmsPermission.ConnectTo(svrIntf: IMmsPermission);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TMmsPermission.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TMmsPermission.GetDefaultInterface: IMmsPermission;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TMmsPermission.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TMmsPermissionProperties.Create(Self);
{$ENDIF}
end;

destructor TMmsPermission.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TMmsPermission.GetServerProperties: TMmsPermissionProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TMmsPermission.Get_Operation: Integer;
begin
    Result := DefaultInterface.Operation;
end;

procedure TMmsPermission.Set_Operation(pVal: Integer);
begin
  DefaultInterface.Set_Operation(pVal);
end;

function TMmsPermission.Get_Times: Integer;
begin
    Result := DefaultInterface.Times;
end;

procedure TMmsPermission.Set_Times(pVal: Integer);
begin
  DefaultInterface.Set_Times(pVal);
end;

function TMmsPermission.Get_Days: Integer;
begin
    Result := DefaultInterface.Days;
end;

procedure TMmsPermission.Set_Days(pVal: Integer);
begin
  DefaultInterface.Set_Days(pVal);
end;

function TMmsPermission.Get_BeginDate: WideString;
begin
    Result := DefaultInterface.BeginDate;
end;

procedure TMmsPermission.Set_BeginDate(const pVal: WideString);
  { Warning: The property BeginDate has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.BeginDate := pVal;
end;

function TMmsPermission.Get_EndDate: WideString;
begin
    Result := DefaultInterface.EndDate;
end;

procedure TMmsPermission.Set_EndDate(const pVal: WideString);
  { Warning: The property EndDate has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EndDate := pVal;
end;

procedure TMmsPermission.Clear;
begin
  DefaultInterface.Clear;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TMmsPermissionProperties.Create(AServer: TMmsPermission);
begin
  inherited Create;
  FServer := AServer;
end;

function TMmsPermissionProperties.GetDefaultInterface: IMmsPermission;
begin
  Result := FServer.DefaultInterface;
end;

function TMmsPermissionProperties.Get_Operation: Integer;
begin
    Result := DefaultInterface.Operation;
end;

procedure TMmsPermissionProperties.Set_Operation(pVal: Integer);
begin
  DefaultInterface.Set_Operation(pVal);
end;

function TMmsPermissionProperties.Get_Times: Integer;
begin
    Result := DefaultInterface.Times;
end;

procedure TMmsPermissionProperties.Set_Times(pVal: Integer);
begin
  DefaultInterface.Set_Times(pVal);
end;

function TMmsPermissionProperties.Get_Days: Integer;
begin
    Result := DefaultInterface.Days;
end;

procedure TMmsPermissionProperties.Set_Days(pVal: Integer);
begin
  DefaultInterface.Set_Days(pVal);
end;

function TMmsPermissionProperties.Get_BeginDate: WideString;
begin
    Result := DefaultInterface.BeginDate;
end;

procedure TMmsPermissionProperties.Set_BeginDate(const pVal: WideString);
  { Warning: The property BeginDate has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.BeginDate := pVal;
end;

function TMmsPermissionProperties.Get_EndDate: WideString;
begin
    Result := DefaultInterface.EndDate;
end;

procedure TMmsPermissionProperties.Set_EndDate(const pVal: WideString);
  { Warning: The property EndDate has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EndDate := pVal;
end;

{$ENDIF}

class function CoMmsProtocolMm4.Create: IMmsProtocolMm4;
begin
  Result := CreateComObject(CLASS_MmsProtocolMm4) as IMmsProtocolMm4;
end;

class function CoMmsProtocolMm4.CreateRemote(const MachineName: string): IMmsProtocolMm4;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MmsProtocolMm4) as IMmsProtocolMm4;
end;

procedure TMmsProtocolMm4.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{BC79F6EF-F0D4-45A6-AB37-44A9ED6B084A}';
    IntfIID:   '{A233DA9D-E345-4909-9D95-DB9ACDEF7D21}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TMmsProtocolMm4.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IMmsProtocolMm4;
  end;
end;

procedure TMmsProtocolMm4.ConnectTo(svrIntf: IMmsProtocolMm4);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TMmsProtocolMm4.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TMmsProtocolMm4.GetDefaultInterface: IMmsProtocolMm4;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TMmsProtocolMm4.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TMmsProtocolMm4Properties.Create(Self);
{$ENDIF}
end;

destructor TMmsProtocolMm4.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TMmsProtocolMm4.GetServerProperties: TMmsProtocolMm4Properties;
begin
  Result := FProps;
end;
{$ENDIF}

function TMmsProtocolMm4.Get_LastError: Integer;
begin
    Result := DefaultInterface.LastError;
end;

function TMmsProtocolMm4.Get_Version: WideString;
begin
    Result := DefaultInterface.Version;
end;

function TMmsProtocolMm4.Get_Build: WideString;
begin
    Result := DefaultInterface.Build;
end;

function TMmsProtocolMm4.Get_ExpirationDate: WideString;
begin
    Result := DefaultInterface.ExpirationDate;
end;

procedure TMmsProtocolMm4.Set_Reserved(Param1: Integer);
begin
  DefaultInterface.Set_Reserved(Param1);
end;

function TMmsProtocolMm4.Get_LogFile: WideString;
begin
    Result := DefaultInterface.LogFile;
end;

procedure TMmsProtocolMm4.Set_LogFile(const pVal: WideString);
  { Warning: The property LogFile has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.LogFile := pVal;
end;

function TMmsProtocolMm4.Get_ActivityFile: WideString;
begin
    Result := DefaultInterface.ActivityFile;
end;

procedure TMmsProtocolMm4.Set_ActivityFile(const pVal: WideString);
  { Warning: The property ActivityFile has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ActivityFile := pVal;
end;

procedure TMmsProtocolMm4.Set_DistributionID(const Param1: WideString);
  { Warning: The property DistributionID has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionID := Param1;
end;

procedure TMmsProtocolMm4.Set_DistributionKey(const Param1: WideString);
  { Warning: The property DistributionKey has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionKey := Param1;
end;

function TMmsProtocolMm4.Get_Module: WideString;
begin
    Result := DefaultInterface.Module;
end;

function TMmsProtocolMm4.Get_ProviderHost: WideString;
begin
    Result := DefaultInterface.ProviderHost;
end;

procedure TMmsProtocolMm4.Set_ProviderHost(const pVal: WideString);
  { Warning: The property ProviderHost has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProviderHost := pVal;
end;

function TMmsProtocolMm4.Get_ProviderPort: Integer;
begin
    Result := DefaultInterface.ProviderPort;
end;

procedure TMmsProtocolMm4.Set_ProviderPort(pVal: Integer);
begin
  DefaultInterface.Set_ProviderPort(pVal);
end;

function TMmsProtocolMm4.Get_ProviderAccount: WideString;
begin
    Result := DefaultInterface.ProviderAccount;
end;

procedure TMmsProtocolMm4.Set_ProviderAccount(const pVal: WideString);
  { Warning: The property ProviderAccount has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProviderAccount := pVal;
end;

function TMmsProtocolMm4.Get_ProviderPassword: WideString;
begin
    Result := DefaultInterface.ProviderPassword;
end;

procedure TMmsProtocolMm4.Set_ProviderPassword(const pVal: WideString);
  { Warning: The property ProviderPassword has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProviderPassword := pVal;
end;

function TMmsProtocolMm4.Get_ProviderDomain: WideString;
begin
    Result := DefaultInterface.ProviderDomain;
end;

procedure TMmsProtocolMm4.Set_ProviderDomain(const pVal: WideString);
  { Warning: The property ProviderDomain has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProviderDomain := pVal;
end;

function TMmsProtocolMm4.Get_ProviderMM4Format: Integer;
begin
    Result := DefaultInterface.ProviderMM4Format;
end;

procedure TMmsProtocolMm4.Set_ProviderMM4Format(pVal: Integer);
begin
  DefaultInterface.Set_ProviderMM4Format(pVal);
end;

function TMmsProtocolMm4.Get_ProviderMM4Version: Integer;
begin
    Result := DefaultInterface.ProviderMM4Version;
end;

procedure TMmsProtocolMm4.Set_ProviderMM4Version(pVal: Integer);
begin
  DefaultInterface.Set_ProviderMM4Version(pVal);
end;

function TMmsProtocolMm4.Get_AdvancedSettings: WideString;
begin
    Result := DefaultInterface.AdvancedSettings;
end;

procedure TMmsProtocolMm4.Set_AdvancedSettings(const pVal: WideString);
  { Warning: The property AdvancedSettings has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AdvancedSettings := pVal;
end;

function TMmsProtocolMm4.Get_ProviderMessageSizeLimit: Integer;
begin
    Result := DefaultInterface.ProviderMessageSizeLimit;
end;

procedure TMmsProtocolMm4.Set_ProviderMessageSizeLimit(pVal: Integer);
begin
  DefaultInterface.Set_ProviderMessageSizeLimit(pVal);
end;

function TMmsProtocolMm4.Get_ProviderResponse: WideString;
begin
    Result := DefaultInterface.ProviderResponse;
end;

procedure TMmsProtocolMm4.Clear;
begin
  DefaultInterface.Clear;
end;

function TMmsProtocolMm4.GetErrorDescription(newVal: Integer): WideString;
begin
  Result := DefaultInterface.GetErrorDescription(newVal);
end;

procedure TMmsProtocolMm4.Activate(const newVal: WideString; bPersistent: Integer);
begin
  DefaultInterface.Activate(newVal, bPersistent);
end;

procedure TMmsProtocolMm4.Send(var pVal: OleVariant);
begin
  DefaultInterface.Send(pVal);
end;

procedure TMmsProtocolMm4.ProviderLoadConfig(const bstrConfigFile: WideString);
begin
  DefaultInterface.ProviderLoadConfig(bstrConfigFile);
end;

procedure TMmsProtocolMm4.ProviderSaveConfig(const bstrConfigFile: WideString);
begin
  DefaultInterface.ProviderSaveConfig(bstrConfigFile);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TMmsProtocolMm4Properties.Create(AServer: TMmsProtocolMm4);
begin
  inherited Create;
  FServer := AServer;
end;

function TMmsProtocolMm4Properties.GetDefaultInterface: IMmsProtocolMm4;
begin
  Result := FServer.DefaultInterface;
end;

function TMmsProtocolMm4Properties.Get_LastError: Integer;
begin
    Result := DefaultInterface.LastError;
end;

function TMmsProtocolMm4Properties.Get_Version: WideString;
begin
    Result := DefaultInterface.Version;
end;

function TMmsProtocolMm4Properties.Get_Build: WideString;
begin
    Result := DefaultInterface.Build;
end;

function TMmsProtocolMm4Properties.Get_ExpirationDate: WideString;
begin
    Result := DefaultInterface.ExpirationDate;
end;

procedure TMmsProtocolMm4Properties.Set_Reserved(Param1: Integer);
begin
  DefaultInterface.Set_Reserved(Param1);
end;

function TMmsProtocolMm4Properties.Get_LogFile: WideString;
begin
    Result := DefaultInterface.LogFile;
end;

procedure TMmsProtocolMm4Properties.Set_LogFile(const pVal: WideString);
  { Warning: The property LogFile has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.LogFile := pVal;
end;

function TMmsProtocolMm4Properties.Get_ActivityFile: WideString;
begin
    Result := DefaultInterface.ActivityFile;
end;

procedure TMmsProtocolMm4Properties.Set_ActivityFile(const pVal: WideString);
  { Warning: The property ActivityFile has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ActivityFile := pVal;
end;

procedure TMmsProtocolMm4Properties.Set_DistributionID(const Param1: WideString);
  { Warning: The property DistributionID has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionID := Param1;
end;

procedure TMmsProtocolMm4Properties.Set_DistributionKey(const Param1: WideString);
  { Warning: The property DistributionKey has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionKey := Param1;
end;

function TMmsProtocolMm4Properties.Get_Module: WideString;
begin
    Result := DefaultInterface.Module;
end;

function TMmsProtocolMm4Properties.Get_ProviderHost: WideString;
begin
    Result := DefaultInterface.ProviderHost;
end;

procedure TMmsProtocolMm4Properties.Set_ProviderHost(const pVal: WideString);
  { Warning: The property ProviderHost has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProviderHost := pVal;
end;

function TMmsProtocolMm4Properties.Get_ProviderPort: Integer;
begin
    Result := DefaultInterface.ProviderPort;
end;

procedure TMmsProtocolMm4Properties.Set_ProviderPort(pVal: Integer);
begin
  DefaultInterface.Set_ProviderPort(pVal);
end;

function TMmsProtocolMm4Properties.Get_ProviderAccount: WideString;
begin
    Result := DefaultInterface.ProviderAccount;
end;

procedure TMmsProtocolMm4Properties.Set_ProviderAccount(const pVal: WideString);
  { Warning: The property ProviderAccount has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProviderAccount := pVal;
end;

function TMmsProtocolMm4Properties.Get_ProviderPassword: WideString;
begin
    Result := DefaultInterface.ProviderPassword;
end;

procedure TMmsProtocolMm4Properties.Set_ProviderPassword(const pVal: WideString);
  { Warning: The property ProviderPassword has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProviderPassword := pVal;
end;

function TMmsProtocolMm4Properties.Get_ProviderDomain: WideString;
begin
    Result := DefaultInterface.ProviderDomain;
end;

procedure TMmsProtocolMm4Properties.Set_ProviderDomain(const pVal: WideString);
  { Warning: The property ProviderDomain has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProviderDomain := pVal;
end;

function TMmsProtocolMm4Properties.Get_ProviderMM4Format: Integer;
begin
    Result := DefaultInterface.ProviderMM4Format;
end;

procedure TMmsProtocolMm4Properties.Set_ProviderMM4Format(pVal: Integer);
begin
  DefaultInterface.Set_ProviderMM4Format(pVal);
end;

function TMmsProtocolMm4Properties.Get_ProviderMM4Version: Integer;
begin
    Result := DefaultInterface.ProviderMM4Version;
end;

procedure TMmsProtocolMm4Properties.Set_ProviderMM4Version(pVal: Integer);
begin
  DefaultInterface.Set_ProviderMM4Version(pVal);
end;

function TMmsProtocolMm4Properties.Get_AdvancedSettings: WideString;
begin
    Result := DefaultInterface.AdvancedSettings;
end;

procedure TMmsProtocolMm4Properties.Set_AdvancedSettings(const pVal: WideString);
  { Warning: The property AdvancedSettings has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AdvancedSettings := pVal;
end;

function TMmsProtocolMm4Properties.Get_ProviderMessageSizeLimit: Integer;
begin
    Result := DefaultInterface.ProviderMessageSizeLimit;
end;

procedure TMmsProtocolMm4Properties.Set_ProviderMessageSizeLimit(pVal: Integer);
begin
  DefaultInterface.Set_ProviderMessageSizeLimit(pVal);
end;

function TMmsProtocolMm4Properties.Get_ProviderResponse: WideString;
begin
    Result := DefaultInterface.ProviderResponse;
end;

{$ENDIF}

class function CoMmsProtocolMm7.Create: IMmsProtocolMm7;
begin
  Result := CreateComObject(CLASS_MmsProtocolMm7) as IMmsProtocolMm7;
end;

class function CoMmsProtocolMm7.CreateRemote(const MachineName: string): IMmsProtocolMm7;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MmsProtocolMm7) as IMmsProtocolMm7;
end;

procedure TMmsProtocolMm7.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{368A6DD4-34BD-44F7-BE1D-FD282B3112F1}';
    IntfIID:   '{EA67C0B2-CB9F-4D3F-B50F-A7CE1CEF346A}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TMmsProtocolMm7.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IMmsProtocolMm7;
  end;
end;

procedure TMmsProtocolMm7.ConnectTo(svrIntf: IMmsProtocolMm7);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TMmsProtocolMm7.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TMmsProtocolMm7.GetDefaultInterface: IMmsProtocolMm7;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TMmsProtocolMm7.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TMmsProtocolMm7Properties.Create(Self);
{$ENDIF}
end;

destructor TMmsProtocolMm7.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TMmsProtocolMm7.GetServerProperties: TMmsProtocolMm7Properties;
begin
  Result := FProps;
end;
{$ENDIF}

function TMmsProtocolMm7.Get_LastError: Integer;
begin
    Result := DefaultInterface.LastError;
end;

function TMmsProtocolMm7.Get_Version: WideString;
begin
    Result := DefaultInterface.Version;
end;

function TMmsProtocolMm7.Get_Build: WideString;
begin
    Result := DefaultInterface.Build;
end;

function TMmsProtocolMm7.Get_ExpirationDate: WideString;
begin
    Result := DefaultInterface.ExpirationDate;
end;

procedure TMmsProtocolMm7.Set_Reserved(Param1: Integer);
begin
  DefaultInterface.Set_Reserved(Param1);
end;

function TMmsProtocolMm7.Get_LogFile: WideString;
begin
    Result := DefaultInterface.LogFile;
end;

procedure TMmsProtocolMm7.Set_LogFile(const pVal: WideString);
  { Warning: The property LogFile has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.LogFile := pVal;
end;

function TMmsProtocolMm7.Get_ActivityFile: WideString;
begin
    Result := DefaultInterface.ActivityFile;
end;

procedure TMmsProtocolMm7.Set_ActivityFile(const pVal: WideString);
  { Warning: The property ActivityFile has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ActivityFile := pVal;
end;

procedure TMmsProtocolMm7.Set_DistributionID(const Param1: WideString);
  { Warning: The property DistributionID has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionID := Param1;
end;

procedure TMmsProtocolMm7.Set_DistributionKey(const Param1: WideString);
  { Warning: The property DistributionKey has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionKey := Param1;
end;

function TMmsProtocolMm7.Get_Module: WideString;
begin
    Result := DefaultInterface.Module;
end;

function TMmsProtocolMm7.Get_ProviderURL: WideString;
begin
    Result := DefaultInterface.ProviderURL;
end;

procedure TMmsProtocolMm7.Set_ProviderURL(const pVal: WideString);
  { Warning: The property ProviderURL has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProviderURL := pVal;
end;

function TMmsProtocolMm7.Get_ProviderWebAccount: WideString;
begin
    Result := DefaultInterface.ProviderWebAccount;
end;

procedure TMmsProtocolMm7.Set_ProviderWebAccount(const pVal: WideString);
  { Warning: The property ProviderWebAccount has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProviderWebAccount := pVal;
end;

function TMmsProtocolMm7.Get_ProviderWebPassword: WideString;
begin
    Result := DefaultInterface.ProviderWebPassword;
end;

procedure TMmsProtocolMm7.Set_ProviderWebPassword(const pVal: WideString);
  { Warning: The property ProviderWebPassword has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProviderWebPassword := pVal;
end;

function TMmsProtocolMm7.Get_ProxyServer: WideString;
begin
    Result := DefaultInterface.ProxyServer;
end;

procedure TMmsProtocolMm7.Set_ProxyServer(const pVal: WideString);
  { Warning: The property ProxyServer has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProxyServer := pVal;
end;

function TMmsProtocolMm7.Get_ProxyAccount: WideString;
begin
    Result := DefaultInterface.ProxyAccount;
end;

procedure TMmsProtocolMm7.Set_ProxyAccount(const pVal: WideString);
  { Warning: The property ProxyAccount has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProxyAccount := pVal;
end;

function TMmsProtocolMm7.Get_ProxyPassword: WideString;
begin
    Result := DefaultInterface.ProxyPassword;
end;

procedure TMmsProtocolMm7.Set_ProxyPassword(const pVal: WideString);
  { Warning: The property ProxyPassword has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProxyPassword := pVal;
end;

function TMmsProtocolMm7.Get_ProviderResponse: WideString;
begin
    Result := DefaultInterface.ProviderResponse;
end;

function TMmsProtocolMm7.Get_MessageId: WideString;
begin
    Result := DefaultInterface.MessageId;
end;

function TMmsProtocolMm7.Get_ProviderUseSSL: Integer;
begin
    Result := DefaultInterface.ProviderUseSSL;
end;

procedure TMmsProtocolMm7.Set_ProviderUseSSL(pVal: Integer);
begin
  DefaultInterface.Set_ProviderUseSSL(pVal);
end;

function TMmsProtocolMm7.Get_ProviderVASID: WideString;
begin
    Result := DefaultInterface.ProviderVASID;
end;

procedure TMmsProtocolMm7.Set_ProviderVASID(const pVal: WideString);
  { Warning: The property ProviderVASID has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProviderVASID := pVal;
end;

function TMmsProtocolMm7.Get_ProviderVASPID: WideString;
begin
    Result := DefaultInterface.ProviderVASPID;
end;

procedure TMmsProtocolMm7.Set_ProviderVASPID(const pVal: WideString);
  { Warning: The property ProviderVASPID has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProviderVASPID := pVal;
end;

function TMmsProtocolMm7.Get_ProviderServiceCode: WideString;
begin
    Result := DefaultInterface.ProviderServiceCode;
end;

procedure TMmsProtocolMm7.Set_ProviderServiceCode(const pVal: WideString);
  { Warning: The property ProviderServiceCode has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProviderServiceCode := pVal;
end;

function TMmsProtocolMm7.Get_ProviderMM7Version: Integer;
begin
    Result := DefaultInterface.ProviderMM7Version;
end;

procedure TMmsProtocolMm7.Set_ProviderMM7Version(pVal: Integer);
begin
  DefaultInterface.Set_ProviderMM7Version(pVal);
end;

function TMmsProtocolMm7.Get_ProviderMM7Schema: Integer;
begin
    Result := DefaultInterface.ProviderMM7Schema;
end;

procedure TMmsProtocolMm7.Set_ProviderMM7Schema(pVal: Integer);
begin
  DefaultInterface.Set_ProviderMM7Schema(pVal);
end;

function TMmsProtocolMm7.Get_ProvidersFolder: WideString;
begin
    Result := DefaultInterface.ProvidersFolder;
end;

function TMmsProtocolMm7.Get_ProviderMM7Variation: Integer;
begin
    Result := DefaultInterface.ProviderMM7Variation;
end;

procedure TMmsProtocolMm7.Set_ProviderMM7Variation(pVal: Integer);
begin
  DefaultInterface.Set_ProviderMM7Variation(pVal);
end;

function TMmsProtocolMm7.Get_ProviderMessageSizeLimit: Integer;
begin
    Result := DefaultInterface.ProviderMessageSizeLimit;
end;

procedure TMmsProtocolMm7.Set_ProviderMessageSizeLimit(pVal: Integer);
begin
  DefaultInterface.Set_ProviderMessageSizeLimit(pVal);
end;

function TMmsProtocolMm7.Get_AdvancedSettings: WideString;
begin
    Result := DefaultInterface.AdvancedSettings;
end;

procedure TMmsProtocolMm7.Set_AdvancedSettings(const pVal: WideString);
  { Warning: The property AdvancedSettings has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AdvancedSettings := pVal;
end;

procedure TMmsProtocolMm7.Clear;
begin
  DefaultInterface.Clear;
end;

function TMmsProtocolMm7.GetErrorDescription(newVal: Integer): WideString;
begin
  Result := DefaultInterface.GetErrorDescription(newVal);
end;

procedure TMmsProtocolMm7.Activate(const newVal: WideString; bPersistent: Integer);
begin
  DefaultInterface.Activate(newVal, bPersistent);
end;

procedure TMmsProtocolMm7.Send(var pVal: OleVariant);
begin
  DefaultInterface.Send(pVal);
end;

procedure TMmsProtocolMm7.ProviderLoadConfig(const bstrFile: WideString);
begin
  DefaultInterface.ProviderLoadConfig(bstrFile);
end;

procedure TMmsProtocolMm7.ProviderSaveConfig(const bstrFile: WideString);
begin
  DefaultInterface.ProviderSaveConfig(bstrFile);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TMmsProtocolMm7Properties.Create(AServer: TMmsProtocolMm7);
begin
  inherited Create;
  FServer := AServer;
end;

function TMmsProtocolMm7Properties.GetDefaultInterface: IMmsProtocolMm7;
begin
  Result := FServer.DefaultInterface;
end;

function TMmsProtocolMm7Properties.Get_LastError: Integer;
begin
    Result := DefaultInterface.LastError;
end;

function TMmsProtocolMm7Properties.Get_Version: WideString;
begin
    Result := DefaultInterface.Version;
end;

function TMmsProtocolMm7Properties.Get_Build: WideString;
begin
    Result := DefaultInterface.Build;
end;

function TMmsProtocolMm7Properties.Get_ExpirationDate: WideString;
begin
    Result := DefaultInterface.ExpirationDate;
end;

procedure TMmsProtocolMm7Properties.Set_Reserved(Param1: Integer);
begin
  DefaultInterface.Set_Reserved(Param1);
end;

function TMmsProtocolMm7Properties.Get_LogFile: WideString;
begin
    Result := DefaultInterface.LogFile;
end;

procedure TMmsProtocolMm7Properties.Set_LogFile(const pVal: WideString);
  { Warning: The property LogFile has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.LogFile := pVal;
end;

function TMmsProtocolMm7Properties.Get_ActivityFile: WideString;
begin
    Result := DefaultInterface.ActivityFile;
end;

procedure TMmsProtocolMm7Properties.Set_ActivityFile(const pVal: WideString);
  { Warning: The property ActivityFile has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ActivityFile := pVal;
end;

procedure TMmsProtocolMm7Properties.Set_DistributionID(const Param1: WideString);
  { Warning: The property DistributionID has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionID := Param1;
end;

procedure TMmsProtocolMm7Properties.Set_DistributionKey(const Param1: WideString);
  { Warning: The property DistributionKey has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionKey := Param1;
end;

function TMmsProtocolMm7Properties.Get_Module: WideString;
begin
    Result := DefaultInterface.Module;
end;

function TMmsProtocolMm7Properties.Get_ProviderURL: WideString;
begin
    Result := DefaultInterface.ProviderURL;
end;

procedure TMmsProtocolMm7Properties.Set_ProviderURL(const pVal: WideString);
  { Warning: The property ProviderURL has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProviderURL := pVal;
end;

function TMmsProtocolMm7Properties.Get_ProviderWebAccount: WideString;
begin
    Result := DefaultInterface.ProviderWebAccount;
end;

procedure TMmsProtocolMm7Properties.Set_ProviderWebAccount(const pVal: WideString);
  { Warning: The property ProviderWebAccount has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProviderWebAccount := pVal;
end;

function TMmsProtocolMm7Properties.Get_ProviderWebPassword: WideString;
begin
    Result := DefaultInterface.ProviderWebPassword;
end;

procedure TMmsProtocolMm7Properties.Set_ProviderWebPassword(const pVal: WideString);
  { Warning: The property ProviderWebPassword has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProviderWebPassword := pVal;
end;

function TMmsProtocolMm7Properties.Get_ProxyServer: WideString;
begin
    Result := DefaultInterface.ProxyServer;
end;

procedure TMmsProtocolMm7Properties.Set_ProxyServer(const pVal: WideString);
  { Warning: The property ProxyServer has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProxyServer := pVal;
end;

function TMmsProtocolMm7Properties.Get_ProxyAccount: WideString;
begin
    Result := DefaultInterface.ProxyAccount;
end;

procedure TMmsProtocolMm7Properties.Set_ProxyAccount(const pVal: WideString);
  { Warning: The property ProxyAccount has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProxyAccount := pVal;
end;

function TMmsProtocolMm7Properties.Get_ProxyPassword: WideString;
begin
    Result := DefaultInterface.ProxyPassword;
end;

procedure TMmsProtocolMm7Properties.Set_ProxyPassword(const pVal: WideString);
  { Warning: The property ProxyPassword has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProxyPassword := pVal;
end;

function TMmsProtocolMm7Properties.Get_ProviderResponse: WideString;
begin
    Result := DefaultInterface.ProviderResponse;
end;

function TMmsProtocolMm7Properties.Get_MessageId: WideString;
begin
    Result := DefaultInterface.MessageId;
end;

function TMmsProtocolMm7Properties.Get_ProviderUseSSL: Integer;
begin
    Result := DefaultInterface.ProviderUseSSL;
end;

procedure TMmsProtocolMm7Properties.Set_ProviderUseSSL(pVal: Integer);
begin
  DefaultInterface.Set_ProviderUseSSL(pVal);
end;

function TMmsProtocolMm7Properties.Get_ProviderVASID: WideString;
begin
    Result := DefaultInterface.ProviderVASID;
end;

procedure TMmsProtocolMm7Properties.Set_ProviderVASID(const pVal: WideString);
  { Warning: The property ProviderVASID has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProviderVASID := pVal;
end;

function TMmsProtocolMm7Properties.Get_ProviderVASPID: WideString;
begin
    Result := DefaultInterface.ProviderVASPID;
end;

procedure TMmsProtocolMm7Properties.Set_ProviderVASPID(const pVal: WideString);
  { Warning: The property ProviderVASPID has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProviderVASPID := pVal;
end;

function TMmsProtocolMm7Properties.Get_ProviderServiceCode: WideString;
begin
    Result := DefaultInterface.ProviderServiceCode;
end;

procedure TMmsProtocolMm7Properties.Set_ProviderServiceCode(const pVal: WideString);
  { Warning: The property ProviderServiceCode has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProviderServiceCode := pVal;
end;

function TMmsProtocolMm7Properties.Get_ProviderMM7Version: Integer;
begin
    Result := DefaultInterface.ProviderMM7Version;
end;

procedure TMmsProtocolMm7Properties.Set_ProviderMM7Version(pVal: Integer);
begin
  DefaultInterface.Set_ProviderMM7Version(pVal);
end;

function TMmsProtocolMm7Properties.Get_ProviderMM7Schema: Integer;
begin
    Result := DefaultInterface.ProviderMM7Schema;
end;

procedure TMmsProtocolMm7Properties.Set_ProviderMM7Schema(pVal: Integer);
begin
  DefaultInterface.Set_ProviderMM7Schema(pVal);
end;

function TMmsProtocolMm7Properties.Get_ProvidersFolder: WideString;
begin
    Result := DefaultInterface.ProvidersFolder;
end;

function TMmsProtocolMm7Properties.Get_ProviderMM7Variation: Integer;
begin
    Result := DefaultInterface.ProviderMM7Variation;
end;

procedure TMmsProtocolMm7Properties.Set_ProviderMM7Variation(pVal: Integer);
begin
  DefaultInterface.Set_ProviderMM7Variation(pVal);
end;

function TMmsProtocolMm7Properties.Get_ProviderMessageSizeLimit: Integer;
begin
    Result := DefaultInterface.ProviderMessageSizeLimit;
end;

procedure TMmsProtocolMm7Properties.Set_ProviderMessageSizeLimit(pVal: Integer);
begin
  DefaultInterface.Set_ProviderMessageSizeLimit(pVal);
end;

function TMmsProtocolMm7Properties.Get_AdvancedSettings: WideString;
begin
    Result := DefaultInterface.AdvancedSettings;
end;

procedure TMmsProtocolMm7Properties.Set_AdvancedSettings(const pVal: WideString);
  { Warning: The property AdvancedSettings has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AdvancedSettings := pVal;
end;

{$ENDIF}

class function CoMmsMessage.Create: IMmsMessage;
begin
  Result := CreateComObject(CLASS_MmsMessage) as IMmsMessage;
end;

class function CoMmsMessage.CreateRemote(const MachineName: string): IMmsMessage;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MmsMessage) as IMmsMessage;
end;

procedure TMmsMessage.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{968295DF-EE56-433A-99A8-64B47C5FF613}';
    IntfIID:   '{BEBE8D74-8123-4D0C-A710-997AF5666166}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TMmsMessage.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IMmsMessage;
  end;
end;

procedure TMmsMessage.ConnectTo(svrIntf: IMmsMessage);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TMmsMessage.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TMmsMessage.GetDefaultInterface: IMmsMessage;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TMmsMessage.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TMmsMessageProperties.Create(Self);
{$ENDIF}
end;

destructor TMmsMessage.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TMmsMessage.GetServerProperties: TMmsMessageProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TMmsMessage.Get_LastError: Integer;
begin
    Result := DefaultInterface.LastError;
end;

function TMmsMessage.Get_Version: WideString;
begin
    Result := DefaultInterface.Version;
end;

function TMmsMessage.Get_Build: WideString;
begin
    Result := DefaultInterface.Build;
end;

function TMmsMessage.Get_ExpirationDate: WideString;
begin
    Result := DefaultInterface.ExpirationDate;
end;

procedure TMmsMessage.Set_Reserved(Param1: Integer);
begin
  DefaultInterface.Set_Reserved(Param1);
end;

procedure TMmsMessage.Set_DistributionID(const Param1: WideString);
  { Warning: The property DistributionID has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionID := Param1;
end;

procedure TMmsMessage.Set_DistributionKey(const Param1: WideString);
  { Warning: The property DistributionKey has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionKey := Param1;
end;

function TMmsMessage.Get_Module: WideString;
begin
    Result := DefaultInterface.Module;
end;

function TMmsMessage.Get_From: WideString;
begin
    Result := DefaultInterface.From;
end;

procedure TMmsMessage.Set_From(const pVal: WideString);
  { Warning: The property From has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.From := pVal;
end;

function TMmsMessage.Get_Class_: Integer;
begin
    Result := DefaultInterface.Class_;
end;

procedure TMmsMessage.Set_Class_(pVal: Integer);
begin
  DefaultInterface.Set_Class_(pVal);
end;

function TMmsMessage.Get_Priority: Integer;
begin
    Result := DefaultInterface.Priority;
end;

procedure TMmsMessage.Set_Priority(pVal: Integer);
begin
  DefaultInterface.Set_Priority(pVal);
end;

function TMmsMessage.Get_Subject: WideString;
begin
    Result := DefaultInterface.Subject;
end;

procedure TMmsMessage.Set_Subject(const pVal: WideString);
  { Warning: The property Subject has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Subject := pVal;
end;

function TMmsMessage.Get_EncodedMessage: WideString;
begin
    Result := DefaultInterface.EncodedMessage;
end;

procedure TMmsMessage.Set_EncodedMessage(const pVal: WideString);
  { Warning: The property EncodedMessage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EncodedMessage := pVal;
end;

function TMmsMessage.Get_RequestReadReceipt: Integer;
begin
    Result := DefaultInterface.RequestReadReceipt;
end;

procedure TMmsMessage.Set_RequestReadReceipt(pVal: Integer);
begin
  DefaultInterface.Set_RequestReadReceipt(pVal);
end;

function TMmsMessage.Get_RequestDeliveryReport: Integer;
begin
    Result := DefaultInterface.RequestDeliveryReport;
end;

procedure TMmsMessage.Set_RequestDeliveryReport(pVal: Integer);
begin
  DefaultInterface.Set_RequestDeliveryReport(pVal);
end;

function TMmsMessage.Get_Protocol: Integer;
begin
    Result := DefaultInterface.Protocol;
end;

procedure TMmsMessage.Set_Protocol(pVal: Integer);
begin
  DefaultInterface.Set_Protocol(pVal);
end;

function TMmsMessage.Get_TransactionId: WideString;
begin
    Result := DefaultInterface.TransactionId;
end;

procedure TMmsMessage.Set_TransactionId(const pVal: WideString);
  { Warning: The property TransactionId has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.TransactionId := pVal;
end;

function TMmsMessage.Get_ValidityPeriod: Integer;
begin
    Result := DefaultInterface.ValidityPeriod;
end;

procedure TMmsMessage.Set_ValidityPeriod(pVal: Integer);
begin
  DefaultInterface.Set_ValidityPeriod(pVal);
end;

function TMmsMessage.Get_sysBoundary: WideString;
begin
    Result := DefaultInterface.sysBoundary;
end;

procedure TMmsMessage.Set_sysSettings(Param1: Integer);
begin
  DefaultInterface.Set_sysSettings(Param1);
end;

procedure TMmsMessage.Clear;
begin
  DefaultInterface.Clear;
end;

function TMmsMessage.GetErrorDescription(newVal: Integer): WideString;
begin
  Result := DefaultInterface.GetErrorDescription(newVal);
end;

procedure TMmsMessage.Activate(const newVal: WideString; bPersistent: Integer);
begin
  DefaultInterface.Activate(newVal, bPersistent);
end;

procedure TMmsMessage.SaveToFile(const bstrFolder: WideString; lFormat: Integer);
begin
  DefaultInterface.SaveToFile(bstrFolder, lFormat);
end;

procedure TMmsMessage.EncodeMessage;
begin
  DefaultInterface.EncodeMessage;
end;

procedure TMmsMessage.DecodeMessage;
begin
  DefaultInterface.DecodeMessage;
end;

procedure TMmsMessage.AddRecipient(const bstrRecipient: WideString; lType: Integer);
begin
  DefaultInterface.AddRecipient(bstrRecipient, lType);
end;

procedure TMmsMessage.AddSlide(var pVal: OleVariant);
begin
  DefaultInterface.AddSlide(pVal);
end;

procedure TMmsMessage.LoadFromFile(const bstrFile: WideString);
begin
  DefaultInterface.LoadFromFile(bstrFile);
end;

function TMmsMessage.GetFirstSlide: OleVariant;
begin
  Result := DefaultInterface.GetFirstSlide;
end;

function TMmsMessage.GetNextSlide: OleVariant;
begin
  Result := DefaultInterface.GetNextSlide;
end;

function TMmsMessage.GetFirstRecipient(lType: Integer): WideString;
begin
  Result := DefaultInterface.GetFirstRecipient(lType);
end;

function TMmsMessage.GetNextRecipient(lType: Integer): WideString;
begin
  Result := DefaultInterface.GetNextRecipient(lType);
end;

procedure TMmsMessage.ClearRecipients;
begin
  DefaultInterface.ClearRecipients;
end;

procedure TMmsMessage.LoadCustomSMIL(const bstrFile: WideString);
begin
  DefaultInterface.LoadCustomSMIL(bstrFile);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TMmsMessageProperties.Create(AServer: TMmsMessage);
begin
  inherited Create;
  FServer := AServer;
end;

function TMmsMessageProperties.GetDefaultInterface: IMmsMessage;
begin
  Result := FServer.DefaultInterface;
end;

function TMmsMessageProperties.Get_LastError: Integer;
begin
    Result := DefaultInterface.LastError;
end;

function TMmsMessageProperties.Get_Version: WideString;
begin
    Result := DefaultInterface.Version;
end;

function TMmsMessageProperties.Get_Build: WideString;
begin
    Result := DefaultInterface.Build;
end;

function TMmsMessageProperties.Get_ExpirationDate: WideString;
begin
    Result := DefaultInterface.ExpirationDate;
end;

procedure TMmsMessageProperties.Set_Reserved(Param1: Integer);
begin
  DefaultInterface.Set_Reserved(Param1);
end;

procedure TMmsMessageProperties.Set_DistributionID(const Param1: WideString);
  { Warning: The property DistributionID has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionID := Param1;
end;

procedure TMmsMessageProperties.Set_DistributionKey(const Param1: WideString);
  { Warning: The property DistributionKey has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionKey := Param1;
end;

function TMmsMessageProperties.Get_Module: WideString;
begin
    Result := DefaultInterface.Module;
end;

function TMmsMessageProperties.Get_From: WideString;
begin
    Result := DefaultInterface.From;
end;

procedure TMmsMessageProperties.Set_From(const pVal: WideString);
  { Warning: The property From has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.From := pVal;
end;

function TMmsMessageProperties.Get_Class_: Integer;
begin
    Result := DefaultInterface.Class_;
end;

procedure TMmsMessageProperties.Set_Class_(pVal: Integer);
begin
  DefaultInterface.Set_Class_(pVal);
end;

function TMmsMessageProperties.Get_Priority: Integer;
begin
    Result := DefaultInterface.Priority;
end;

procedure TMmsMessageProperties.Set_Priority(pVal: Integer);
begin
  DefaultInterface.Set_Priority(pVal);
end;

function TMmsMessageProperties.Get_Subject: WideString;
begin
    Result := DefaultInterface.Subject;
end;

procedure TMmsMessageProperties.Set_Subject(const pVal: WideString);
  { Warning: The property Subject has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Subject := pVal;
end;

function TMmsMessageProperties.Get_EncodedMessage: WideString;
begin
    Result := DefaultInterface.EncodedMessage;
end;

procedure TMmsMessageProperties.Set_EncodedMessage(const pVal: WideString);
  { Warning: The property EncodedMessage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EncodedMessage := pVal;
end;

function TMmsMessageProperties.Get_RequestReadReceipt: Integer;
begin
    Result := DefaultInterface.RequestReadReceipt;
end;

procedure TMmsMessageProperties.Set_RequestReadReceipt(pVal: Integer);
begin
  DefaultInterface.Set_RequestReadReceipt(pVal);
end;

function TMmsMessageProperties.Get_RequestDeliveryReport: Integer;
begin
    Result := DefaultInterface.RequestDeliveryReport;
end;

procedure TMmsMessageProperties.Set_RequestDeliveryReport(pVal: Integer);
begin
  DefaultInterface.Set_RequestDeliveryReport(pVal);
end;

function TMmsMessageProperties.Get_Protocol: Integer;
begin
    Result := DefaultInterface.Protocol;
end;

procedure TMmsMessageProperties.Set_Protocol(pVal: Integer);
begin
  DefaultInterface.Set_Protocol(pVal);
end;

function TMmsMessageProperties.Get_TransactionId: WideString;
begin
    Result := DefaultInterface.TransactionId;
end;

procedure TMmsMessageProperties.Set_TransactionId(const pVal: WideString);
  { Warning: The property TransactionId has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.TransactionId := pVal;
end;

function TMmsMessageProperties.Get_ValidityPeriod: Integer;
begin
    Result := DefaultInterface.ValidityPeriod;
end;

procedure TMmsMessageProperties.Set_ValidityPeriod(pVal: Integer);
begin
  DefaultInterface.Set_ValidityPeriod(pVal);
end;

function TMmsMessageProperties.Get_sysBoundary: WideString;
begin
    Result := DefaultInterface.sysBoundary;
end;

procedure TMmsMessageProperties.Set_sysSettings(Param1: Integer);
begin
  DefaultInterface.Set_sysSettings(Param1);
end;

{$ENDIF}

class function CoSmsDataMmsNotification.Create: ISmsDataMmsNotification;
begin
  Result := CreateComObject(CLASS_SmsDataMmsNotification) as ISmsDataMmsNotification;
end;

class function CoSmsDataMmsNotification.CreateRemote(const MachineName: string): ISmsDataMmsNotification;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SmsDataMmsNotification) as ISmsDataMmsNotification;
end;

procedure TSmsDataMmsNotification.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{4868BE0E-AA1B-4289-8FFB-CC75275D9822}';
    IntfIID:   '{4105A254-0E01-4939-A5F7-D49D623B0986}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TSmsDataMmsNotification.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ISmsDataMmsNotification;
  end;
end;

procedure TSmsDataMmsNotification.ConnectTo(svrIntf: ISmsDataMmsNotification);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TSmsDataMmsNotification.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TSmsDataMmsNotification.GetDefaultInterface: ISmsDataMmsNotification;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TSmsDataMmsNotification.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TSmsDataMmsNotificationProperties.Create(Self);
{$ENDIF}
end;

destructor TSmsDataMmsNotification.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TSmsDataMmsNotification.GetServerProperties: TSmsDataMmsNotificationProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TSmsDataMmsNotification.Get_LastError: Integer;
begin
    Result := DefaultInterface.LastError;
end;

function TSmsDataMmsNotification.Get_Version: WideString;
begin
    Result := DefaultInterface.Version;
end;

function TSmsDataMmsNotification.Get_Build: WideString;
begin
    Result := DefaultInterface.Build;
end;

function TSmsDataMmsNotification.Get_ExpirationDate: WideString;
begin
    Result := DefaultInterface.ExpirationDate;
end;

procedure TSmsDataMmsNotification.Set_Reserved(Param1: Integer);
begin
  DefaultInterface.Set_Reserved(Param1);
end;

procedure TSmsDataMmsNotification.Set_DistributionID(const Param1: WideString);
  { Warning: The property DistributionID has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionID := Param1;
end;

procedure TSmsDataMmsNotification.Set_DistributionKey(const Param1: WideString);
  { Warning: The property DistributionKey has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionKey := Param1;
end;

function TSmsDataMmsNotification.Get_Module: WideString;
begin
    Result := DefaultInterface.Module;
end;

function TSmsDataMmsNotification.Get_From: WideString;
begin
    Result := DefaultInterface.From;
end;

procedure TSmsDataMmsNotification.Set_From(const pVal: WideString);
  { Warning: The property From has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.From := pVal;
end;

function TSmsDataMmsNotification.Get_Subject: WideString;
begin
    Result := DefaultInterface.Subject;
end;

procedure TSmsDataMmsNotification.Set_Subject(const pVal: WideString);
  { Warning: The property Subject has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Subject := pVal;
end;

function TSmsDataMmsNotification.Get_Class_: Integer;
begin
    Result := DefaultInterface.Class_;
end;

procedure TSmsDataMmsNotification.Set_Class_(pVal: Integer);
begin
  DefaultInterface.Set_Class_(pVal);
end;

function TSmsDataMmsNotification.Get_Expiration: Integer;
begin
    Result := DefaultInterface.Expiration;
end;

procedure TSmsDataMmsNotification.Set_Expiration(pVal: Integer);
begin
  DefaultInterface.Set_Expiration(pVal);
end;

function TSmsDataMmsNotification.Get_ContentLocation: WideString;
begin
    Result := DefaultInterface.ContentLocation;
end;

procedure TSmsDataMmsNotification.Set_ContentLocation(const pVal: WideString);
  { Warning: The property ContentLocation has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ContentLocation := pVal;
end;

function TSmsDataMmsNotification.Get_MessageSize: Integer;
begin
    Result := DefaultInterface.MessageSize;
end;

procedure TSmsDataMmsNotification.Set_MessageSize(pVal: Integer);
begin
  DefaultInterface.Set_MessageSize(pVal);
end;

function TSmsDataMmsNotification.Get_TransactionId: WideString;
begin
    Result := DefaultInterface.TransactionId;
end;

procedure TSmsDataMmsNotification.Set_TransactionId(const pVal: WideString);
  { Warning: The property TransactionId has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.TransactionId := pVal;
end;

function TSmsDataMmsNotification.Get_EncodedMessage: WideString;
begin
    Result := DefaultInterface.EncodedMessage;
end;

procedure TSmsDataMmsNotification.Set_EncodedMessage(const pVal: WideString);
  { Warning: The property EncodedMessage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EncodedMessage := pVal;
end;

procedure TSmsDataMmsNotification.Clear;
begin
  DefaultInterface.Clear;
end;

function TSmsDataMmsNotification.GetErrorDescription(newVal: Integer): WideString;
begin
  Result := DefaultInterface.GetErrorDescription(newVal);
end;

procedure TSmsDataMmsNotification.Activate(const newVal: WideString; bPersistent: Integer);
begin
  DefaultInterface.Activate(newVal, bPersistent);
end;

procedure TSmsDataMmsNotification.Encode;
begin
  DefaultInterface.Encode;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TSmsDataMmsNotificationProperties.Create(AServer: TSmsDataMmsNotification);
begin
  inherited Create;
  FServer := AServer;
end;

function TSmsDataMmsNotificationProperties.GetDefaultInterface: ISmsDataMmsNotification;
begin
  Result := FServer.DefaultInterface;
end;

function TSmsDataMmsNotificationProperties.Get_LastError: Integer;
begin
    Result := DefaultInterface.LastError;
end;

function TSmsDataMmsNotificationProperties.Get_Version: WideString;
begin
    Result := DefaultInterface.Version;
end;

function TSmsDataMmsNotificationProperties.Get_Build: WideString;
begin
    Result := DefaultInterface.Build;
end;

function TSmsDataMmsNotificationProperties.Get_ExpirationDate: WideString;
begin
    Result := DefaultInterface.ExpirationDate;
end;

procedure TSmsDataMmsNotificationProperties.Set_Reserved(Param1: Integer);
begin
  DefaultInterface.Set_Reserved(Param1);
end;

procedure TSmsDataMmsNotificationProperties.Set_DistributionID(const Param1: WideString);
  { Warning: The property DistributionID has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionID := Param1;
end;

procedure TSmsDataMmsNotificationProperties.Set_DistributionKey(const Param1: WideString);
  { Warning: The property DistributionKey has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionKey := Param1;
end;

function TSmsDataMmsNotificationProperties.Get_Module: WideString;
begin
    Result := DefaultInterface.Module;
end;

function TSmsDataMmsNotificationProperties.Get_From: WideString;
begin
    Result := DefaultInterface.From;
end;

procedure TSmsDataMmsNotificationProperties.Set_From(const pVal: WideString);
  { Warning: The property From has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.From := pVal;
end;

function TSmsDataMmsNotificationProperties.Get_Subject: WideString;
begin
    Result := DefaultInterface.Subject;
end;

procedure TSmsDataMmsNotificationProperties.Set_Subject(const pVal: WideString);
  { Warning: The property Subject has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Subject := pVal;
end;

function TSmsDataMmsNotificationProperties.Get_Class_: Integer;
begin
    Result := DefaultInterface.Class_;
end;

procedure TSmsDataMmsNotificationProperties.Set_Class_(pVal: Integer);
begin
  DefaultInterface.Set_Class_(pVal);
end;

function TSmsDataMmsNotificationProperties.Get_Expiration: Integer;
begin
    Result := DefaultInterface.Expiration;
end;

procedure TSmsDataMmsNotificationProperties.Set_Expiration(pVal: Integer);
begin
  DefaultInterface.Set_Expiration(pVal);
end;

function TSmsDataMmsNotificationProperties.Get_ContentLocation: WideString;
begin
    Result := DefaultInterface.ContentLocation;
end;

procedure TSmsDataMmsNotificationProperties.Set_ContentLocation(const pVal: WideString);
  { Warning: The property ContentLocation has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ContentLocation := pVal;
end;

function TSmsDataMmsNotificationProperties.Get_MessageSize: Integer;
begin
    Result := DefaultInterface.MessageSize;
end;

procedure TSmsDataMmsNotificationProperties.Set_MessageSize(pVal: Integer);
begin
  DefaultInterface.Set_MessageSize(pVal);
end;

function TSmsDataMmsNotificationProperties.Get_TransactionId: WideString;
begin
    Result := DefaultInterface.TransactionId;
end;

procedure TSmsDataMmsNotificationProperties.Set_TransactionId(const pVal: WideString);
  { Warning: The property TransactionId has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.TransactionId := pVal;
end;

function TSmsDataMmsNotificationProperties.Get_EncodedMessage: WideString;
begin
    Result := DefaultInterface.EncodedMessage;
end;

procedure TSmsDataMmsNotificationProperties.Set_EncodedMessage(const pVal: WideString);
  { Warning: The property EncodedMessage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EncodedMessage := pVal;
end;

{$ENDIF}

class function CoSmsDatavCard.Create: ISmsDatavCard;
begin
  Result := CreateComObject(CLASS_SmsDatavCard) as ISmsDatavCard;
end;

class function CoSmsDatavCard.CreateRemote(const MachineName: string): ISmsDatavCard;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SmsDatavCard) as ISmsDatavCard;
end;

procedure TSmsDatavCard.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{4368F874-0EBD-4816-8915-F340F7150B95}';
    IntfIID:   '{1F392F11-0F25-4CC9-A3B5-4E05C07258F1}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TSmsDatavCard.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ISmsDatavCard;
  end;
end;

procedure TSmsDatavCard.ConnectTo(svrIntf: ISmsDatavCard);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TSmsDatavCard.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TSmsDatavCard.GetDefaultInterface: ISmsDatavCard;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TSmsDatavCard.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TSmsDatavCardProperties.Create(Self);
{$ENDIF}
end;

destructor TSmsDatavCard.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TSmsDatavCard.GetServerProperties: TSmsDatavCardProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TSmsDatavCard.Get_LastError: Integer;
begin
    Result := DefaultInterface.LastError;
end;

function TSmsDatavCard.Get_Version: WideString;
begin
    Result := DefaultInterface.Version;
end;

function TSmsDatavCard.Get_Build: WideString;
begin
    Result := DefaultInterface.Build;
end;

function TSmsDatavCard.Get_ExpirationDate: WideString;
begin
    Result := DefaultInterface.ExpirationDate;
end;

procedure TSmsDatavCard.Set_Reserved(Param1: Integer);
begin
  DefaultInterface.Set_Reserved(Param1);
end;

procedure TSmsDatavCard.Set_DistributionID(const Param1: WideString);
  { Warning: The property DistributionID has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionID := Param1;
end;

procedure TSmsDatavCard.Set_DistributionKey(const Param1: WideString);
  { Warning: The property DistributionKey has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionKey := Param1;
end;

function TSmsDatavCard.Get_Module: WideString;
begin
    Result := DefaultInterface.Module;
end;

function TSmsDatavCard.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

procedure TSmsDatavCard.Set_Name(const pVal: WideString);
  { Warning: The property Name has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Name := pVal;
end;

function TSmsDatavCard.Get_Phone: WideString;
begin
    Result := DefaultInterface.Phone;
end;

procedure TSmsDatavCard.Set_Phone(const pVal: WideString);
  { Warning: The property Phone has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Phone := pVal;
end;

function TSmsDatavCard.Get_PhoneWork: WideString;
begin
    Result := DefaultInterface.PhoneWork;
end;

procedure TSmsDatavCard.Set_PhoneWork(const pVal: WideString);
  { Warning: The property PhoneWork has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PhoneWork := pVal;
end;

function TSmsDatavCard.Get_PhoneHome: WideString;
begin
    Result := DefaultInterface.PhoneHome;
end;

procedure TSmsDatavCard.Set_PhoneHome(const pVal: WideString);
  { Warning: The property PhoneHome has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PhoneHome := pVal;
end;

function TSmsDatavCard.Get_Mobile: WideString;
begin
    Result := DefaultInterface.Mobile;
end;

procedure TSmsDatavCard.Set_Mobile(const pVal: WideString);
  { Warning: The property Mobile has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Mobile := pVal;
end;

function TSmsDatavCard.Get_Pager: WideString;
begin
    Result := DefaultInterface.Pager;
end;

procedure TSmsDatavCard.Set_Pager(const pVal: WideString);
  { Warning: The property Pager has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Pager := pVal;
end;

function TSmsDatavCard.Get_Fax: WideString;
begin
    Result := DefaultInterface.Fax;
end;

procedure TSmsDatavCard.Set_Fax(const pVal: WideString);
  { Warning: The property Fax has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Fax := pVal;
end;

function TSmsDatavCard.Get_Email: WideString;
begin
    Result := DefaultInterface.Email;
end;

procedure TSmsDatavCard.Set_Email(const pVal: WideString);
  { Warning: The property Email has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Email := pVal;
end;

function TSmsDatavCard.Get_Title: WideString;
begin
    Result := DefaultInterface.Title;
end;

procedure TSmsDatavCard.Set_Title(const pVal: WideString);
  { Warning: The property Title has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Title := pVal;
end;

function TSmsDatavCard.Get_URL: WideString;
begin
    Result := DefaultInterface.URL;
end;

procedure TSmsDatavCard.Set_URL(const pVal: WideString);
  { Warning: The property URL has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.URL := pVal;
end;

function TSmsDatavCard.Get_EncodedMessage: WideString;
begin
    Result := DefaultInterface.EncodedMessage;
end;

procedure TSmsDatavCard.Clear;
begin
  DefaultInterface.Clear;
end;

function TSmsDatavCard.GetErrorDescription(lError: Integer): WideString;
begin
  Result := DefaultInterface.GetErrorDescription(lError);
end;

procedure TSmsDatavCard.Activate(const bstrRegKey: WideString; bPersistent: Integer);
begin
  DefaultInterface.Activate(bstrRegKey, bPersistent);
end;

procedure TSmsDatavCard.Encode;
begin
  DefaultInterface.Encode;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TSmsDatavCardProperties.Create(AServer: TSmsDatavCard);
begin
  inherited Create;
  FServer := AServer;
end;

function TSmsDatavCardProperties.GetDefaultInterface: ISmsDatavCard;
begin
  Result := FServer.DefaultInterface;
end;

function TSmsDatavCardProperties.Get_LastError: Integer;
begin
    Result := DefaultInterface.LastError;
end;

function TSmsDatavCardProperties.Get_Version: WideString;
begin
    Result := DefaultInterface.Version;
end;

function TSmsDatavCardProperties.Get_Build: WideString;
begin
    Result := DefaultInterface.Build;
end;

function TSmsDatavCardProperties.Get_ExpirationDate: WideString;
begin
    Result := DefaultInterface.ExpirationDate;
end;

procedure TSmsDatavCardProperties.Set_Reserved(Param1: Integer);
begin
  DefaultInterface.Set_Reserved(Param1);
end;

procedure TSmsDatavCardProperties.Set_DistributionID(const Param1: WideString);
  { Warning: The property DistributionID has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionID := Param1;
end;

procedure TSmsDatavCardProperties.Set_DistributionKey(const Param1: WideString);
  { Warning: The property DistributionKey has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DistributionKey := Param1;
end;

function TSmsDatavCardProperties.Get_Module: WideString;
begin
    Result := DefaultInterface.Module;
end;

function TSmsDatavCardProperties.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

procedure TSmsDatavCardProperties.Set_Name(const pVal: WideString);
  { Warning: The property Name has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Name := pVal;
end;

function TSmsDatavCardProperties.Get_Phone: WideString;
begin
    Result := DefaultInterface.Phone;
end;

procedure TSmsDatavCardProperties.Set_Phone(const pVal: WideString);
  { Warning: The property Phone has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Phone := pVal;
end;

function TSmsDatavCardProperties.Get_PhoneWork: WideString;
begin
    Result := DefaultInterface.PhoneWork;
end;

procedure TSmsDatavCardProperties.Set_PhoneWork(const pVal: WideString);
  { Warning: The property PhoneWork has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PhoneWork := pVal;
end;

function TSmsDatavCardProperties.Get_PhoneHome: WideString;
begin
    Result := DefaultInterface.PhoneHome;
end;

procedure TSmsDatavCardProperties.Set_PhoneHome(const pVal: WideString);
  { Warning: The property PhoneHome has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PhoneHome := pVal;
end;

function TSmsDatavCardProperties.Get_Mobile: WideString;
begin
    Result := DefaultInterface.Mobile;
end;

procedure TSmsDatavCardProperties.Set_Mobile(const pVal: WideString);
  { Warning: The property Mobile has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Mobile := pVal;
end;

function TSmsDatavCardProperties.Get_Pager: WideString;
begin
    Result := DefaultInterface.Pager;
end;

procedure TSmsDatavCardProperties.Set_Pager(const pVal: WideString);
  { Warning: The property Pager has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Pager := pVal;
end;

function TSmsDatavCardProperties.Get_Fax: WideString;
begin
    Result := DefaultInterface.Fax;
end;

procedure TSmsDatavCardProperties.Set_Fax(const pVal: WideString);
  { Warning: The property Fax has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Fax := pVal;
end;

function TSmsDatavCardProperties.Get_Email: WideString;
begin
    Result := DefaultInterface.Email;
end;

procedure TSmsDatavCardProperties.Set_Email(const pVal: WideString);
  { Warning: The property Email has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Email := pVal;
end;

function TSmsDatavCardProperties.Get_Title: WideString;
begin
    Result := DefaultInterface.Title;
end;

procedure TSmsDatavCardProperties.Set_Title(const pVal: WideString);
  { Warning: The property Title has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Title := pVal;
end;

function TSmsDatavCardProperties.Get_URL: WideString;
begin
    Result := DefaultInterface.URL;
end;

procedure TSmsDatavCardProperties.Set_URL(const pVal: WideString);
  { Warning: The property URL has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.URL := pVal;
end;

function TSmsDatavCardProperties.Get_EncodedMessage: WideString;
begin
    Result := DefaultInterface.EncodedMessage;
end;

{$ENDIF}

procedure Register;
begin
  RegisterComponents(dtlServerPage, [TSmsProtocolGsm, TSmsMessage, TSmsProtocolSmpp, TSmsConstants, 
    TSmsProtocolHttp, TSmsProtocolDialup, TPagerProtocolSnpp, TSmsDataWapBookmark, TSmsDataWapPush, 
    TSmsDeliveryStatus, TPagerMessage, TMmsProtocolMm1, TMmsSlide, TMmsConstants, 
    TMmsPermission, TMmsProtocolMm4, TMmsProtocolMm7, TMmsMessage, TSmsDataMmsNotification, 
    TSmsDatavCard]);
end;

end.
