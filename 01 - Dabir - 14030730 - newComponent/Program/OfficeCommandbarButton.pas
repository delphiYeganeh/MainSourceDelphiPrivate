unit OfficeCommandbarButton;

interface

uses ActiveX, Classes, Graphics, OleServer, StdVcl, Variants, Windows, Office2000;

type
  TCommandbarbuttonEvent = procedure (const Ctrl: CommandBarButton; var CancelDefault: WordBool) of object;

  TCommandbarButtonEventsProperties= class;

  { Inherit TOleServer, because of some fine stuff for handling ConnectionPointContainers }
  TCommandbarbutton = class(TOleServer)
  private
    FOnClick: TCommandbarbuttonEvent;
    FIntf:        Commandbarbutton;
    FProps:       TCommandbarbuttonEventsProperties;
    function      GetServerProperties: TCommandBarButtonEventsProperties;
    function      GetDefaultInterface: Commandbarbutton;
  protected
    procedure InitServerData; override;
    procedure InvokeEvent(DispID: TDispID; var Params: TVariantArray); override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: Commandbarbutton);
    procedure Disconnect; override;
    property  DefaultInterface: Commandbarbutton read GetDefaultInterface;
  published
    property Server: TCommandbarButtonEventsProperties read GetServerProperties;
    property OnClick: TCommandbarButtonEvent read FOnClick write FOnClick;
  end;

TCommandBarButtonEventsProperties = class(TPersistent)
  private
    FServer:    TCommandBarButton;
    function    GetDefaultInterface: Commandbarbutton;
    constructor Create(AServer: TCommandBarButton);
  protected
  public
    property DefaultInterface: Commandbarbutton read GetDefaultInterface;
  published
  end;

procedure Register;

resourcestring
  dtlServerPage = 'More Servers';

implementation

uses ComObj;

procedure TCommandBarButton.InitServerData;
const
  CServerData: TServerData = (
    // CLASS_CommandBarButton
    ClassID:   '{55F88891-7708-11D1-ACEB-006008961DA5}';
    // IID__CommandBarButton
    IntfIID:   '{000C030E-0000-0000-C000-000000000046}';
    // DIID__CommandBarButtonEvents
    EventIID:  '{000C0351-0000-0000-C000-000000000046}';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCommandBarButton.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(FIntf);
    Fintf:= punk as Commandbarbutton;
  end;
end;

procedure TCommandBarButton.ConnectTo(svrIntf: Commandbarbutton);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TCommandBarButton.DisConnect;
begin
  if Fintf = nil then
  begin
    DisconnectEvents(FIntf);
    FIntf := nil;
  end;
end;

function TCommandBarButton.GetDefaultInterface: Commandbarbutton;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf = nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TCommandBarButton.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FProps := TCommandBarButtonEventsProperties.Create(Self);
end;

destructor TCommandBarButton.Destroy;
begin
  FProps.Free;
  inherited Destroy;
end;

function TCommandBarButton.GetServerProperties: TCommandBarButtonEventsProperties;
begin
  Result := FProps;
end;

procedure TCommandBarButton.InvokeEvent(DispID: TDispID; var Params: TVariantArray);
var
  CancelDefault : WordBool;
begin
  case DispID of
    -1: Exit;  // DISPID_UNKNOWN
   1: if Assigned(FOnClick) then
      FOnClick(self.DefaultInterface, CancelDefault);
  end; {case DispID}
end;


constructor TCommandBarButtonEventsProperties.Create(AServer: TCommandBarButton);
begin
  inherited Create;
  FServer := AServer;
end;

function TCommandBarButtonEventsProperties.GetDefaultInterface: Commandbarbutton;
begin
  Result := FServer.DefaultInterface;
end;

procedure Register;
begin
  RegisterComponents(dtlServerPage, [TCommandBarButton]);
end;

end.

Regards HadiMohamed
