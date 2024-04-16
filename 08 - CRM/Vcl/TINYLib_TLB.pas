unit TINYLib_TLB;

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
// File generated on 2011/07/23 12:13:28 È.Ù from Type Library described below.

// ************************************************************************  //
// Type Lib: F:\Vcl2\libs\Tiny.ocx (1)
// LIBID: {DF1D4B1E-D56E-4A40-BA98-2CC06080E796}
// LCID: 0
// Helpfile: F:\Vcl2\libs\Tiny.hlp
// HelpString: Tiny ActiveX Control module
// DepndLst: 
//   (1) v2.0 stdole, (C:\WINDOWS\system32\stdole2.tlb)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, OleCtrls, OleServer, StdVCL, Variants;
  


// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  TINYLibMajorVersion = 1;
  TINYLibMinorVersion = 0;

  LIBID_TINYLib: TGUID = '{DF1D4B1E-D56E-4A40-BA98-2CC06080E796}';

  DIID__DTiny: TGUID = '{1262A1CC-7B5C-4A3F-BFFB-4128027A0979}';
  DIID__DTinyEvents: TGUID = '{A07EE01D-2F0E-4D0B-AC35-2D19766829DE}';
  CLASS_Tiny: TGUID = '{0CA5A93D-F6BD-4398-809A-9F767276EF77}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  _DTiny = dispinterface;
  _DTinyEvents = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  Tiny = _DTiny;


// *********************************************************************//
// DispIntf:  _DTiny
// Flags:     (4112) Hidden Dispatchable
// GUID:      {1262A1CC-7B5C-4A3F-BFFB-4128027A0979}
// *********************************************************************//
  _DTiny = dispinterface
    ['{1262A1CC-7B5C-4A3F-BFFB-4128027A0979}']
    procedure AboutBox; dispid -552;
    function GetTrackingNtUser: WordBool; dispid 33;
    procedure SetTrackingNtUser(bNewValue: WordBool); dispid 32;
    function GetAutoCheckingTinyHID: WordBool; dispid 31;
    procedure DisconnectFromTinyHID; dispid 28;
    function GetSerialNumberHID: WideString; dispid 29;
    procedure NextTinyHID; dispid 17;
    procedure SetTimerHID(TimerHID: Integer); dispid 27;
    procedure SetAutoCheckingTinyHID(bNewData: WordBool); dispid 30;
    procedure SetDataPartitionHID(const DataPartition: WideString); dispid 25;
    function GetTimerHID: Integer; dispid 24;
    function GetCounterHID: Integer; dispid 23;
    function GetUserNTHID: Integer; dispid 22;
    function GetDataPartitionHID(BeginAddress: Smallint; EndAddress: Smallint): WideString; dispid 19;
    function GetSpecialIDHID: WideString; dispid 20;
    procedure SetCounterHID(Counter: Integer); dispid 26;
    procedure FirstTinyHID(const UserPassWord: WideString); dispid 18;
    function GetMAXNTHID: Integer; dispid 21;
    property AutoCheckingTiny: WordBool dispid 16;
    property Version: WideString dispid 15;
    property NTUser: Integer dispid 14;
    property ServerIP: WideString dispid 10;
    property NTUserMax: Integer dispid 13;
    property OnLineUsers: Smallint dispid 12;
    property NetWorkINIT: WordBool dispid 11;
    property Timer: Integer dispid 9;
    property Counter: Integer dispid 8;
    property DataPartition: WideString dispid 7;
    property SpecialID: WideString dispid 6;
    property SerialNumber: WideString dispid 5;
    property ShowTinyInfo: WordBool dispid 4;
    property UserPassWord: WideString dispid 3;
    property Initialize: WordBool dispid 2;
    property TinyErrCode: Smallint dispid 1;
  end;

// *********************************************************************//
// DispIntf:  _DTinyEvents
// Flags:     (4096) Dispatchable
// GUID:      {A07EE01D-2F0E-4D0B-AC35-2D19766829DE}
// *********************************************************************//
  _DTinyEvents = dispinterface
    ['{A07EE01D-2F0E-4D0B-AC35-2D19766829DE}']
    procedure TinyDisconnect; dispid 1;
    procedure TinyHIDDidconnect; dispid 2;
  end;


// *********************************************************************//
// OLE Control Proxy class declaration
// Control Name     : TTiny
// Help String      : Tiny Control
// Default Interface: _DTiny
// Def. Intf. DISP? : Yes
// Event   Interface: _DTinyEvents
// TypeFlags        : (34) CanCreate Control
// *********************************************************************//
  TTiny = class(TOleControl)
  private
    FOnTinyDisconnect: TNotifyEvent;
    FOnTinyHIDDidconnect: TNotifyEvent;
    FIntf: _DTiny;
    function  GetControlInterface: _DTiny;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
  public
    procedure AboutBox;
    function GetTrackingNtUser: WordBool;
    procedure SetTrackingNtUser(bNewValue: WordBool);
    function GetAutoCheckingTinyHID: WordBool;
    procedure DisconnectFromTinyHID;
    function GetSerialNumberHID: WideString;
    procedure NextTinyHID;
    procedure SetTimerHID(TimerHID: Integer);
    procedure SetAutoCheckingTinyHID(bNewData: WordBool);
    procedure SetDataPartitionHID(const DataPartition: WideString);
    function GetTimerHID: Integer;
    function GetCounterHID: Integer;
    function GetUserNTHID: Integer;
    function GetDataPartitionHID(BeginAddress: Smallint; EndAddress: Smallint): WideString;
    function GetSpecialIDHID: WideString;
    procedure SetCounterHID(Counter: Integer);
    procedure FirstTinyHID(const UserPassWord: WideString);
    function GetMAXNTHID: Integer;
    property  ControlInterface: _DTiny read GetControlInterface;
    property  DefaultInterface: _DTiny read GetControlInterface;
  published
    property Anchors;
    property  TabStop;
    property  Align;
    property  DragCursor;
    property  DragMode;
    property  ParentShowHint;
    property  PopupMenu;
    property  ShowHint;
    property  TabOrder;
    property  Visible;
    property  OnDragDrop;
    property  OnDragOver;
    property  OnEndDrag;
    property  OnEnter;
    property  OnExit;
    property  OnStartDrag;
    property AutoCheckingTiny: WordBool index 16 read GetWordBoolProp write SetWordBoolProp stored False;
    property Version: WideString index 15 read GetWideStringProp write SetWideStringProp stored False;
    property NTUser: Integer index 14 read GetIntegerProp write SetIntegerProp stored False;
    property ServerIP: WideString index 10 read GetWideStringProp write SetWideStringProp stored False;
    property NTUserMax: Integer index 13 read GetIntegerProp write SetIntegerProp stored False;
    property OnLineUsers: Smallint index 12 read GetSmallintProp write SetSmallintProp stored False;
    property NetWorkINIT: WordBool index 11 read GetWordBoolProp write SetWordBoolProp stored False;
    property Timer: Integer index 9 read GetIntegerProp write SetIntegerProp stored False;
    property Counter: Integer index 8 read GetIntegerProp write SetIntegerProp stored False;
    property DataPartition: WideString index 7 read GetWideStringProp write SetWideStringProp stored False;
    property SpecialID: WideString index 6 read GetWideStringProp write SetWideStringProp stored False;
    property SerialNumber: WideString index 5 read GetWideStringProp write SetWideStringProp stored False;
    property ShowTinyInfo: WordBool index 4 read GetWordBoolProp write SetWordBoolProp stored False;
    property UserPassWord: WideString index 3 read GetWideStringProp write SetWideStringProp stored False;
    property Initialize: WordBool index 2 read GetWordBoolProp write SetWordBoolProp stored False;
    property TinyErrCode: Smallint index 1 read GetSmallintProp write SetSmallintProp stored False;
    property OnTinyDisconnect: TNotifyEvent read FOnTinyDisconnect write FOnTinyDisconnect;
    property OnTinyHIDDidconnect: TNotifyEvent read FOnTinyHIDDidconnect write FOnTinyHIDDidconnect;
  end;

procedure Register;

resourcestring
  dtlServerPage = 'ActiveX';

  dtlOcxPage = 'ActiveX';

implementation

uses ComObj;

procedure TTiny.InitControlData;
const
  CEventDispIDs: array [0..1] of DWORD = (
    $00000001, $00000002);
  CControlData: TControlData2 = (
    ClassID: '{0CA5A93D-F6BD-4398-809A-9F767276EF77}';
    EventIID: '{A07EE01D-2F0E-4D0B-AC35-2D19766829DE}';
    EventCount: 2;
    EventDispIDs: @CEventDispIDs;
    LicenseKey: nil (*HR:$80004005*);
    Flags: $00000000;
    Version: 401);
begin
  ControlData := @CControlData;
  TControlData2(CControlData).FirstEventOfs := Cardinal(@@FOnTinyDisconnect) - Cardinal(Self);
end;

procedure TTiny.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as _DTiny;
  end;

begin
  if FIntf = nil then DoCreate;
end;

function TTiny.GetControlInterface: _DTiny;
begin
  CreateControl;
  Result := FIntf;
end;

procedure TTiny.AboutBox;
begin
  DefaultInterface.AboutBox;
end;

function TTiny.GetTrackingNtUser: WordBool;
begin
  Result := DefaultInterface.GetTrackingNtUser;
end;

procedure TTiny.SetTrackingNtUser(bNewValue: WordBool);
begin
  DefaultInterface.SetTrackingNtUser(bNewValue);
end;

function TTiny.GetAutoCheckingTinyHID: WordBool;
begin
  Result := DefaultInterface.GetAutoCheckingTinyHID;
end;

procedure TTiny.DisconnectFromTinyHID;
begin
  DefaultInterface.DisconnectFromTinyHID;
end;

function TTiny.GetSerialNumberHID: WideString;
begin
  Result := DefaultInterface.GetSerialNumberHID;
end;

procedure TTiny.NextTinyHID;
begin
  DefaultInterface.NextTinyHID;
end;

procedure TTiny.SetTimerHID(TimerHID: Integer);
begin
  DefaultInterface.SetTimerHID(TimerHID);
end;

procedure TTiny.SetAutoCheckingTinyHID(bNewData: WordBool);
begin
  DefaultInterface.SetAutoCheckingTinyHID(bNewData);
end;

procedure TTiny.SetDataPartitionHID(const DataPartition: WideString);
begin
  DefaultInterface.SetDataPartitionHID(DataPartition);
end;

function TTiny.GetTimerHID: Integer;
begin
  Result := DefaultInterface.GetTimerHID;
end;

function TTiny.GetCounterHID: Integer;
begin
  Result := DefaultInterface.GetCounterHID;
end;

function TTiny.GetUserNTHID: Integer;
begin
  Result := DefaultInterface.GetUserNTHID;
end;

function TTiny.GetDataPartitionHID(BeginAddress: Smallint; EndAddress: Smallint): WideString;
begin
  Result := DefaultInterface.GetDataPartitionHID(BeginAddress, EndAddress);
end;

function TTiny.GetSpecialIDHID: WideString;
begin
  Result := DefaultInterface.GetSpecialIDHID;
end;

procedure TTiny.SetCounterHID(Counter: Integer);
begin
  DefaultInterface.SetCounterHID(Counter);
end;

procedure TTiny.FirstTinyHID(const UserPassWord: WideString);
begin
  DefaultInterface.FirstTinyHID(UserPassWord);
end;

function TTiny.GetMAXNTHID: Integer;
begin
  Result := DefaultInterface.GetMAXNTHID;
end;

procedure Register;
begin
  RegisterComponents(dtlOcxPage, [TTiny]);
end;

end.
