unit LogOn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DB, ADODB, Grids, DBGrids, ActnList,Registry,
  jpeg, {WinSkinData,} ComCtrls, xpBitBtn, dxGDIPlusClasses, Winsock;



type
  TLoginForm = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    ActionList1: TActionList;
    Aclose: TAction;
    Alogin: TAction;
    PrivateLogin: TAction;
    Image1: TImage;
    StatusBar1: TStatusBar;
    Label5: TLabel;
    Label8: TLabel;
    QGetSMSSettings: TADOQuery;
    QGetSMSSettingsID: TAutoIncField;
    QGetSMSSettingsTerminalID: TStringField;
    QGetSMSSettingsPassword: TStringField;
    QGetSMSSettingsRegUserID: TIntegerField;
    QGetSMSSettingsRegDate: TStringField;
    QGetSMSSettingsSendSMS: TBooleanField;
    lblCompanyName: TLabel;
    Label9: TLabel;
    Panel3: TPanel;
    UserName: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Password: TEdit;
    BBOK: TxpBitBtn;
    BitBtn2: TxpBitBtn;
    Label1: TLabel;
    Label3: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    QGetSMSSettingsSendSMSType2: TBooleanField;
    QGetSMSSettingsSmsUser: TStringField;
    QGetSMSSettingsSmsPassWord: TStringField;
    QGetSMSSettingsSmsTimer: TStringField;
    QGetSMSSettingsSMSCenterNumber: TStringField;
    Button1: TButton;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure BBOKClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AloginExecute(Sender: TObject);
    procedure PrivateLoginExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PasswordKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button1Click(Sender: TObject);
    procedure SaveUserInRegistry;
  private
    { Private declarations }
    function CenterInParent(Place,NumberOfPlaces,ObjectWidth,ParentWidth,CropPercent: Integer): Integer;
    procedure ScaleAllForms(const ScaleFactor: integer);
    function GetIpAddress (): string ;
    
  public
    { Public declarations }
  end;

var
  LoginForm: TLoginForm;

implementation

uses   yShamsiDate, Dmu, BusinessLayer;
var correct:boolean;
{$R *.dfm}

procedure TLoginForm.FormCreate(Sender: TObject);
var  scalefactor : Double;
begin
 // SetWindowRgn(Handle, CreateRoundRectRgn(0,0,Width,Height,20,20),True);
  scalefactor := Screen.Width /1680;
  Self.ScaleBy(Round( scalefactor* 100),100);

  correct:=false;
  //.Caption:=Dm.GetSystemValue(2);
  dm.Accesses.Open;
  dm.User.Open;
  //StatusBar1.Panels[3].Text := '�����  ����� ������ : '+_LastUpdate;
  StatusBar1.Panels[2].Text := '�����  ����� ������ : '+_LastUpdate;
  //StatusBar1.Panels[2].Text := '����� ���� ����� : '+ShamsiString(Now);
end;

procedure TLoginForm.BBOKClick(Sender: TObject);
var
  StrVerLast : string ;
  textPassWord : string;
  messageText : String ;
begin
  textPassWord  := '' ;
  textPassWord  := Password.text ;
  messageText   := '' ;
  _ComputerName := Win_GetComputerName;
  _IpAddress    := GetIPAddress;
  
  with dm.User do
  begin
    //StrVer     := dm.UserLastVertionLogin.AsString ;// Qry_GetResult(' Select Isnull((SELECT LastVertionLogin FROM dbo.Users WHERE ID = '+Dm.UserId.AsString+' ),'''') ',dm.YeganehConnection);
    StrVerLast := Qry_GetResult(' Select Isnull((SELECT Value FROM dbo.SystemSettings WHERE VariableId = 3 ),'''') ',dm.YeganehConnection);

   // UserName.Text := replace1(Trim(UserName.Text),char(223),char(152));

    if ( Locate('userName',UserName.Text,[])) and
       (((dm.UserLastVertionLogin.AsString = '') and (Trim(dm.UserNewPassWord.AsString) = Trim(Password.text))))  then
    begin
      //textPassWord := '5005';
      StrVerLast   := _SoftVersion ;
    end;

    if (not Locate('userName',UserName.Text,[])) or
     //(textPassWord <> Trim(dm.UserPassWord.AsString)) then
     (textPassWord <> Trim(dm.UserNewPassWord.AsString)) then
    begin
      ShowMessage('��� ����� �� ���� ���� ������ �� ����');
      Password.SetFocus;
    end
    else
    begin

      if _SoftVersion <> StrVerLast then
      begin
        messageText := Qry_GetResult(' Select Isnull((SELECT DESCRIPTION FROM dbo.VWVersionDescription  ),''���� �� ���� И� ��� ���� ���� -->'') ',dm.YeganehConnection);
        ShowMessage( messageText +' ' + StrVerLast );
      end
      else
      if not dm.UserIsActive.AsBoolean then
      begin
         ShowMessage('����� ��� ���� �� ����.');
      end
      else
      begin

        //Qry_SetResult('UPDATE dbo.Users SET PassWord = ltrim(rtrim(NewPassWord)) WHERE isnull(LastVertionLogin,'''')= '''' and ID = '+Dm.UserId.AsString ,dm.YeganehConnection);
        Qry_SetResult('UPDATE dbo.Users SET LastVertionLogin = '''+_SoftVersion+''' , LastLoginDateTime = getdate()  WHERE ID = '+Dm.UserId.AsString ,dm.YeganehConnection);
        Qry_SetResult('Insert into dbo.User_LogIn_Log(UserId,LogIn,ComputerName,IPAddress) select '+ Dm.UserId.AsString + ',getdate(),'''+UpperCase(_ComputerName) +''','''+_IpAddress +'''' ,dm.YeganehConnection);
        alogin.Execute
      end;
    end;

  end;
end;

procedure TLoginForm.BitBtn2Click(Sender: TObject);
begin
  Halt;
end;

procedure TLoginForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if not correct then abort;

end;

procedure TLoginForm.AloginExecute(Sender: TObject);
begin
    correct:=true;
    QGetSMSSettings.Close;
    QGetSMSSettings.Open;

    if not QGetSMSSettings.IsEmpty then
    begin
      _TerminalID       := QGetSMSSettingsTerminalID.AsString;
      _SmsPassWord      := QGetSMSSettingsPassword.AsString;
      _SendSMS          := QGetSMSSettingsSendSMS.AsBoolean;

      _SmsPassWordType2 := QGetSMSSettingsSmsPassWord.AsString;
      _SmsUser          := QGetSMSSettingsSmsUser.AsString;
      _SendSMSType2     := QGetSMSSettingsSendSMSType2.AsBoolean;
      _SmsTimer         := QGetSMSSettingsSmsTimer.AsString;
      _SMSCenterNumber  := QGetSMSSettingsSMSCenterNumber.AsString;
    end;

    with dm do
    begin
      _Userid             :=   UserId.AsInteger;
      _MarketerID         :=   UserMarketerID        .AsInteger;
      _UserTypeID         :=   UserUserTypeId       .AsInteger;
      _ShowContract       :=   UserShowContract     .Value;
      _IsWinServer        :=   UserISWinServer.Value;
      _ShowMyAction       :=   UserShowMyAction.Value;
      _BtnAllContract     :=   UserBtnAllContract.Value;
      _BtnAllAct          :=   UserBtnAllAct.Value;
      _ExportCustomerList :=   UserExportCustomerList.Value;
      _EditContract       :=   UserEditContract      .Value;
      _ShowAllCustomer    :=   UserShowAllCustomer   .Value;
      _ExportFollow       :=   UserExportFollow   .Value;
      _isAdmin            :=   UserIsAdmin.Value;

      _WorkSationName      := Dm.GetComputerNetName;
      _WinOrDomainUserName := Dm.GetUserWindowsUser;


      Marketer.Open;
     // Marketer.Filter := 'MarketerTitle <> ''''';
      //Marketer.Filtered:=true;
      Marketer.Locate('MarketerID',_MarketerID,[]) ;
      _orgID           := Dm.MarketerOrgID.AsInteger ;
      _UserName        := UserTitle.AsString;
      _ProductID       := UserDefaultProductID.AsInteger;
      _accessID        := UserAccessID.AsInteger;
      _UserPinFollowUp := UserPinFollowUp.AsBoolean ;
      _ThemTypeColor   := UserThemTypeColor.AsInteger ;
      _UserAccAcess    := UserAccAcess.AsBoolean ;
      _UserFactorAccess:= UserFactorAccess.AsBoolean or UserAccAcess.AsBoolean ;
      _UserCallAccess  := UserCallAccess.AsBoolean ;
      _UserAssesstAcess:= UserAssesstAcess.AsBoolean ;
      _UserEditVersion := UserEditVersion.AsBoolean ;
      _ManagerSale       := UserManagerSale.AsBoolean ;
      _ManagerProduction := UserManagerProduction.AsBoolean ;
      _ManagerSupport    := UserManagerSupport.AsBoolean ;
      _ManagerOfficial   := UserManagerOfficial.AsBoolean ;


      if  _ThemTypeColor >0 then
      begin
        _Color1 := StringToColor( UserColor1.AsString );
        _Color2 := StringToColor( UserColor2.AsString );
        _Color3 := StringToColor( UserColor3.AsString );
        _Color4 := StringToColor( UserColor4.AsString );
      end
      else  if _ThemTypeColor = 0 then
      begin
        _Color1:=  $00DAF3EC ;
        _Color2:=  $00FDD0E7 ;
        _Color3:=  $00E4AFCA ;
        _Color4:=  $00F9ECF2 ;
      end;
    end;

   SaveUserInRegistry;
   close;

end;

procedure TLoginForm.PrivateLoginExecute(Sender: TObject);
begin
   if  dm.User.Locate('id',19,[]) then
   begin
      _Userid:=dm.UserId.AsInteger;
      _UserTypeID := dm.UserUserTypeId.AsInteger;
      Alogin.Execute;
   end else exit;

end;

procedure TLoginForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Key = VK_Return)And(Shift=[]) then
      SelectNext(TWinControl(ActiveControl),True,True);
end;

procedure TLoginForm.PasswordKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = Vk_Return then
      BBOKClick(Self);
end;

procedure TLoginForm.FormShow(Sender: TObject);
var
  R: TRegistry;
  un:string;
begin

  r := TRegistry.Create;
  R.RootKey := HKEY_CURRENT_USER;
  R.OpenKey(CrmRegistryKey, True);
  un := R.ReadString('UserName');
  if un <> '' then
  begin
    UserName.Text := un;
    Password.SetFocus;
  end;

// StatusBar1.Panels[0].Text := _SoftVersion ;
 //Self.ScaleBy(75,100);
 //Self.ScaleBy(100,100);
 //Self.ScaleBy(125,100);
// Self.ScaleBy(175,100);
// Self.ScaleBy(200,100);
////  Self.ScaleBy(_PercentScale,100);

 ///// Self.ScaleBy(Screen.PixelsPerInch,96);

  StatusBar1.Panels[0].Text := _SoftVersion;//+COPY(_SoftVersionDB,1,1)+'.'+ COPY(_SoftVersionDB,2,1);
  try
    lblCompanyName.Caption := GetSystemSetting('CompanyName');
    Label3    .Caption     := GetSystemSetting('CompanyName');
  except
    lblCompanyName.Caption :='';
  end;
 

  _IsSystemUserID := StrToInt(Qry_GetResult(' select top 1 id  FROM dbo.users where IsSystemUser = 1 ' ,dm.YeganehConnection)) ;
end;

procedure TLoginForm.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
//   if shift= [ssShift,ssCtrl..ssLeft] then
//      begin
//         UserName.Text := 'psk';
//         Password.Text := 'mojiri_1357';
//         BBOKClick(self);
//      end;
end;


function TLoginForm.CenterInParent(Place, NumberOfPlaces, ObjectWidth,
  ParentWidth, CropPercent: Integer): Integer;
  {returns formated centered position of an object relative to parent.
  Place          - P order number of an object beeing centered
  NumberOfPlaces - NOP total number of places available for object beeing centered
  ObjectWidth    - OW width of an object beeing centered
  ParentWidth    - PW width of an parent
  CropPercent    - CP percentage of safe margin on both sides which we want to omit from calculation
  +-----------------------------------------------------+
  |                                                     |
  |        +--------+       +---+      +--------+       |
  |        |        |       |   |      |        |       |
  |        +--------+       +---+      +--------+       |
  |     |              |             |            |     |
  +-----------------------------------------------------+
  |     |<---------------------A----------------->|     |
  |<-C->|<------B----->|<-----B----->|<-----B---->|<-C->|
  |                    |<-D>|
  |<----------E------------>|

  A = PW-C   B = A/NOP  C=(CP*PW)/100  D = (B-OW)/2
  E = C+(P-1)*B+D }

var
  A, B, C, D: Integer;
begin
  C := Trunc((CropPercent*ParentWidth)/100);
  A := ParentWidth - C;
  B := Trunc(A/NumberOfPlaces);
  D := Trunc((B-ObjectWidth)/2);
  Result := C+(Place-1)*B+D;
end;


procedure TLoginForm.ScaleAllForms(const ScaleFactor: integer);
var
  Divisor: integer;
  DivisorStep: integer;
  ix: integer;
const
  Multiplier = 100;
begin
  if ScaleFactor <> 0 then
  begin
    if ScaleFactor > 0 then
      DivisorStep := 20
    else
      DivisorStep := 10;

    Divisor := Multiplier + (ScaleFactor * DivisorStep);

    with Screen do
      for ix := 0 to FormCount - 1 do
        Forms[ix].ScaleBy(Divisor, Multiplier);
  end;

end;

procedure TLoginForm.Button1Click(Sender: TObject);
var
  MonId: integer;
  Mon: TMonitor;
  AllMonitorsWidth, AllMonitorsHeight: integer;
begin
  Memo1.Clear;

  Memo1.Lines.Append(Format('Number of monitors: %d', [Screen.MonitorCount]));

  for MonId := 0 to Screen.MonitorCount - 1 do
  begin
    Mon := Screen.Monitors[MonId];

    With Memo1.Lines do
    begin
      Append('');
      Append(Format('--------  Monitor #%d  --------', [mon.MonitorNum]));
      Append(Format('Resolution: %dpx x %dpx', [Mon.Width, Mon.Height]));
      Append(Format('X-offset: %dpx', [Mon.Left]));
      Append(Format('Y-offset: %dpx', [Mon.Top]));

    end;
  end;


  AllMonitorsWidth  := GetSystemMetrics(SM_CXVIRTUALSCREEN);
  AllMonitorsHeight := GetSystemMetrics(SM_CYVIRTUALSCREEN);
  With Memo1.Lines do
  begin
    Append('');
    Append('--------  All monitors  --------');
    Append(Format('Resolution: %dpx x %dpx', [AllMonitorsWidth, AllMonitorsHeight]));
    Append(Format('PPI: %d', [Screen.PixelsPerInch]));
    Append(Format('Widh: %d', [Screen.Width]));
    Append(Format('Hight: %d', [Screen.Height]));
   // Append(Format('WorkAreaRect: %d', [Screen.WorkAreaRect]));

    Append(Format('WorkAreaLeft: %d', [Screen.WorkAreaLeft]));
    Append(Format('WorkAreaTop: %d', [Screen.WorkAreaTop]));
    Append(Format('WorkAreaWidth: %d', [Screen.WorkAreaWidth]));
    Append(Format('WorkAreaHeight: %d', [Screen.WorkAreaHeight]));    


    //Append(Format('Scale: %d', [Screen.Monitors]));
  end;

end;

procedure TLoginForm.SaveUserInRegistry;
var
  R: TRegistry;
  un:string;
begin
  r:=TRegistry.Create;
  with r do
  begin
    RootKey:= HKEY_CURRENT_USER;
    OpenKey(CrmRegistryKey, True);
    un := ReadString('UserName');
    if UserName.Text <> UN then
      if MessageDlg('��� ��� ������ ��� �� ��� ������� ����� ��Ͽ',mtInformation,[mbyes,mbno],0)=mryes  then
        WriteString('UserName', UserName.Text);

  end;

end;


Function TLoginForm.GetIPAddress:String;
type
  pu_long = ^u_long;
var
  varTWSAData : TWSAData;
  varPHostEnt : PHostEnt;
  varTInAddr : TInAddr;
  namebuf : Array[0..255] of char;
begin
  If WSAStartup($101,varTWSAData) <> 0 Then
  Result := 'No. IP Address'
  Else Begin
    gethostname(namebuf,sizeof(namebuf));
    varPHostEnt := gethostbyname(namebuf);
    varTInAddr.S_addr := u_long(pu_long(varPHostEnt^.h_addr_list^)^);
    Result := inet_ntoa(varTInAddr);
  End;
  WSACleanup;
end;

end.
