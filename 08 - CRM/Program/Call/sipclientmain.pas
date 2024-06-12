unit sipclientmain;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ToolWin, ExtCtrls, Menus, ImgList, Buttons, ActnList,
  mainframe, accountsframe, audioframe//,
 // mainframe, accountsframe, audioframe,IniFiles, wavfiles,ShellApi//, ringtone,jpeg //,conference  //,recorder
 // jpeg, regform, ringtone, mmSystem, conference, recorder, speaker
 //,sipclient, microphone,  call
  ;

type
 ICall= record
    Id        : Integer;
    Phone  : string;
  end;
    

type
  TMainForm = class(TForm)
    StatusBar1: TStatusBar;
    StatusPopupMenu: TPopupMenu;
    OnlineMenu: TMenuItem;
    OfflineMenu: TMenuItem;
    StatusImages: TImageList;
    ImageList1: TImageList;
    ActionList1: TActionList;
    CallAction: TAction;
    HangUpAction: TAction;
    HoldAction: TAction;
    TransferAction: TAction;
    RegisterAction: TAction;
    RemoveAction: TAction;
    EditAction: TAction;
    AddAction: TAction;
    Timer1: TTimer;
    ConferenceAction: TAction;
    Panel2: TPanel;
    Panel3: TPanel;    
    TAudioFrm1: TAudioFrm;
    TAccountsFrm1: TAccountsFrm;
    ActivateDialpadFrameBtn: TSpeedButton;
    ActivateAccountsFrameBtn: TSpeedButton;
    ActivateAudioFrameBtn: TSpeedButton;
    AboutBtn: TSpeedButton;
    RecordAction: TAction;
    TDialFrm1: TDialFrm;
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure InfoBtnClick(Sender: TObject);
    procedure StatusBar1DrawPanel(StatusBar: TStatusBar;
      Panel: TStatusPanel; const Rect: TRect);
    procedure StatusBar1Click(Sender: TObject);
    procedure OnlineMenuClick(Sender: TObject);
    procedure OfflineMenuClick(Sender: TObject);
    procedure HangUpActionExecute(Sender: TObject);
    procedure CallActionExecute(Sender: TObject);
    procedure CallActionUpdate(Sender: TObject);
    procedure HangUpActionUpdate(Sender: TObject);
    procedure HoldActionExecute(Sender: TObject);
    procedure HoldActionUpdate(Sender: TObject);
    procedure TransferActionUpdate(Sender: TObject);
    procedure RegisterActionExecute(Sender: TObject);
    procedure RegisterActionUpdate(Sender: TObject);
    procedure RemoveActionExecute(Sender: TObject);
    procedure RemoveActionUpdate(Sender: TObject);
    procedure AddActionExecute(Sender: TObject);
    procedure EditActionUpdate(Sender: TObject);
    procedure EditActionExecute(Sender: TObject);
    procedure SBtn1Click(Sender: TObject);
    procedure RefreshLines;
    procedure ShowMemo;
    procedure Timer1Timer(Sender: TObject);
    procedure ActivateDialpadFrameBtnClick(Sender: TObject);
    procedure ActivateAccountsFrameBtnClick(Sender: TObject);
    procedure ActivateAudioFrameBtnClick(Sender: TObject);
    procedure AboutBtnClick(Sender: TObject);
    procedure ConferenceActionUpdate(Sender: TObject);
    procedure ConferenceActionExecute(Sender: TObject);
    procedure RecordActionExecute(Sender: TObject);
    procedure RecordActionUpdate(Sender: TObject);
  protected
    function SelectedMicrophone: Cardinal;
    function SelectedSpeaker: Cardinal;
  private
    procedure SipClientRegistration(Sender: TObject; const Registered: Boolean);
    procedure SipClientDtmf(Sender: TObject; const ACall: ICall; const Dtmf: String);
    procedure SipClientSilence(Sender: TObject; const ACall: ICall);
    procedure SipClientBye(Sender: TObject; const ACall: ICall);
    procedure SipClientCall(Sender: TObject; const ACall: ICall);
    procedure SipClientAnswer(Sender: TObject; const Call: ICall);
  private
   // FSipClient: TSipCLient;
    //FRingThread: TRingThread;
    FLineIndex: Integer;
    FButtons: array[1..6] of TSpeedButton;
    FLines: array[1..6] of ICall;
    FDtmf: array[1..6] of String;
    FLineImages: array[1..6] of Boolean;
  //  FConference: IConference;
  //  FRecorder: IRecorder;
    FDialVisible: Boolean;
  public
    ServerEditText, UserEditText, PasswordEditText, ExtensionEditText, ProxyEditText: String;
    procedure SaveAccountInfo;
    procedure LoadAccountInfo;
  end;


var
  MainForm: TMainForm;

const
  IniFileName = 'sipphone.ini';

implementation

{$R *.dfm}

{ TMainForm }

procedure TMainForm.FormShow(Sender: TObject);
var
  i: Integer;
//  Ini: TIniFile;
 // WaveInDeviceList: IWaveInDeviceList;
 // WaveOutDeviceList: IWaveOutDeviceList;
begin
  {FSipClient := TSipClient.Create(nil);
  FSipClient.OnAnswer := SipClientAnswer;
  FSipClient.OnBye := SipClientBye;
  FSipClient.OnCall := SipClientCall;
  FSipClient.OnDtmf := SipClientDtmf;
  FSipClient.OnSilence := SipClientSilence;
  FSipClient.OnRegistration := SipClientRegistration;

  WaveInDeviceList := FSipClient.GetWaveInDeviceList;
  WaveOutDeviceList := FSipClient.GetWaveOutDeviceList;
                          }
  FLineIndex := 1;

  FButtons[1] := TDialFrm1.SBtn1;
  FButtons[2] := TDialFrm1.SBtn2;
  FButtons[3] := TDialFrm1.SBtn3;
  FButtons[4] := TDialFrm1.SBtn4;
  FButtons[5] := TDialFrm1.SBtn5;
  FButtons[6] := TDialFrm1.SBtn6;

  RefreshLines;

 // FRingThread := nil;
 {
  Ini := TIniFile.Create(ExtractFilePath(ParamStr(0))+IniFileName);
  try
    TDialFrm1.PhoneEdit.Text := Ini.ReadString('CALL', 'Phone', TDialFrm1.PhoneEdit.Text);
  finally
    Ini.Free;
  end;
   
  TAudioFrm1.waveOutDevice.Items.Clear;
  TAudioFrm1.waveOutDevice.Items.AddObject('Default', TObject(WAVE_MAPPER));
  for i := 0 to WaveOutDeviceList.Count - 1 do
    TAudioFrm1.waveOutDevice.Items.Add(WaveOutDeviceList[i].Name);

  TAudioFrm1.waveInDevice.Items.Clear;
  TAudioFrm1.waveInDevice.Items.AddObject('Default', TObject(WAVE_MAPPER));
  for i := 0 to WaveInDeviceList.Count - 1 do
    TAudioFrm1.waveInDevice.Items.Add(WaveInDeviceList[i].Name);

  TAudioFrm1.waveRingDevice.Items.Clear;
  TAudioFrm1.waveRingDevice.Items.AddObject('Default', TObject(WAVE_MAPPER));
  for i := 0 to WaveOutDeviceList.Count - 1 do
    TAudioFrm1.waveRingDevice.Items.Add(WaveOutDeviceList[i].Name);
               }
  TAudioFrm1.waveOutDevice.ItemIndex := 0;
  TAudioFrm1.waveInDevice.ItemIndex := 0;
  TAudioFrm1.waveRingDevice.ItemIndex := 0;

  LoadAccountInfo;

  //FSipClient.Active := True;

  if (ServerEditText <> '') and (UserEditText <> '') then
  begin
    OnlineMenuClick(Self);
  end;
end;

procedure TMainForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
//var
 // Ini: TIniFile;
begin
 // FreeAndNil(FRingThread);
{  Ini := TIniFile.Create(ExtractFilePath(ParamStr(0))+IniFileName);
  try
    Ini.WriteString('CALL', 'Phone', TDialFrm1.PhoneEdit.Text);
  finally
    Ini.Free;
  end;
  SaveAccountInfo;
  }
end;

procedure TMainForm.InfoBtnClick(Sender: TObject);
var
  Line: ICall;
begin
  {Line := FLines[FLineIndex];
  if Assigned(Line) and (Line.State = csActive) then
  begin
    case TSpeedButton(Sender).Tag of
     0: FSipClient.SendDtmf(Line, '0');
     1: FSipClient.SendDtmf(Line, '1');
     2: FSipClient.SendDtmf(Line, '2');
     3: FSipClient.SendDtmf(Line, '3');
     4: FSipClient.SendDtmf(Line, '4');
     5: FSipClient.SendDtmf(Line, '5');
     6: FSipClient.SendDtmf(Line, '6');
     7: FSipClient.SendDtmf(Line, '7');
     8: FSipClient.SendDtmf(Line, '8');
     9: FSipClient.SendDtmf(Line, '9');
    10: FSipClient.SendDtmf(Line, '*');
    11: FSipClient.SendDtmf(Line, '#');
    end;
  end
  else
    if TSpeedButton(Sender).Tag in [0,1,2,3,4,5,6,7,8,9] then
      TDialFrm1.PhoneEdit.Text := TDialFrm1.PhoneEdit.Text + IntToStr(TSpeedButton(Sender).Tag)
    else
    if TSpeedButton(Sender).Tag = 10 then
      TDialFrm1.PhoneEdit.Text := TDialFrm1.PhoneEdit.Text + '*'
    else
    if TSpeedButton(Sender).Tag = 11 then
      TDialFrm1.PhoneEdit.Text := TDialFrm1.PhoneEdit.Text + '#';
      }
end;

procedure TMainForm.StatusBar1DrawPanel(StatusBar: TStatusBar;
  Panel: TStatusPanel; const Rect: TRect);
begin
  {case Panel.Index of
  0:
  begin
    StatusBar1.Canvas.FillRect(Rect);
    StatusImages.Draw(StatusBar1.Canvas,Rect.Left,Rect.Top, 0, FSipClient.Registered);
    StatusBar1.Canvas.Font.Color := clBlack;
    StatusBar1.Canvas.Brush.Style := bsClear;
    if not FSipClient.Registered then
      StatusBar1.Canvas.TextOut(20, 3, 'Offline')
    else
    if FSipClient.Registered then
      StatusBar1.Canvas.TextOut(20, 3, 'sip:'+FSipClient.User+'@' + FSipClient.Server);
  end
  end;     }
end;

procedure TMainForm.StatusBar1Click(Sender: TObject);
begin
  StatusPopupMenu.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TMainForm.OnlineMenuClick(Sender: TObject);
begin
{  FSipClient.Server := ServerEditText;
  FSipClient.User := UserEditText;
  FSipClient.Password := PasswordEditText;
  FSipClient.Proxy := ProxyEditText;
  FSipClient.Extension := ExtensionEditText;
  FSipClient.Register;    }
end;

procedure TMainForm.OfflineMenuClick(Sender: TObject);
begin
  {if FSipClient.Registered then
  begin
    FSipClient.UnRegister;
    StatusBar1.Repaint;
    OfflineMenu.Checked := True;
  end; }
end;

procedure TMainForm.SipClientRegistration(Sender: TObject; const Registered: Boolean);
begin
  if Registered then
  begin
    StatusBar1.Repaint;
    OnlineMenu.Checked := True;
  end
  else
  begin
    StatusBar1.Repaint;
    OfflineMenu.Checked := True;
  end;
end;  

procedure TMainForm.SaveAccountInfo;
{var
  Ini: TIniFile;
  }
begin
 { Ini := TIniFile.Create(ExtractFilePath(ParamStr(0))+IniFileName);
  try
    Ini.WriteString('ACCOUNT', 'Extension', ExtensionEditText);
    Ini.WriteString('ACCOUNT', 'Server', ServerEditText);
    Ini.WriteString('ACCOUNT', 'Proxy', ProxyEditText);
    Ini.WriteString('ACCOUNT', 'User', UserEditText);
    Ini.WriteString('ACCOUNT', 'Password', PasswordEditText);
    Ini.WriteString('AUDIO', 'In', TAudioFrm1.waveInDevice.Text);
    Ini.WriteString('AUDIO', 'Out', TAudioFrm1.waveOutDevice.Text);
    Ini.WriteString('AUDIO', 'Ring', TAudioFrm1.waveRingDevice.Text);
  finally
    Ini.Free;
  end; }
end;

procedure TMainForm.LoadAccountInfo;
{var
  Ini: TIniFile;
  i, cnt: Integer;
  s, u: String;
  current_account: String;
  }
begin
 { Ini := TIniFile.Create(ExtractFilePath(ParamStr(0))+IniFileName);
  try
    current_account := 'ACCOUNT';
    if Ini.ReadString(current_account, 'Server','') = '' then
      current_account := 'ACCOUNT1';
    ExtensionEditText := Ini.ReadString(current_account, 'Extension','');
    ProxyEditText := Ini.ReadString(current_account, 'PROXY', '');
    ServerEditText := Ini.ReadString(current_account, 'Server','');
    UserEditText := Ini.ReadString(current_account, 'User','');
    PasswordEditText := Ini.ReadString(current_account, 'Password','');

    if Length(ServerEditText) > 0 then
    begin
      TAccountsFrm1.AccountList.Items.Add.Caption := ServerEditText;
      TAccountsFrm1.AccountList.Items[0].SubItems.Add(UserEditText);
    end;

    cnt := Ini.ReadInteger('ACCOUNT', 'Count',0);

    for i := 1 to cnt do
    begin
      s := Ini.ReadString('ACCOUNT'+IntToStr(i), 'Server','');
      u := Ini.ReadString('ACCOUNT'+IntToStr(i), 'User','');
      if (s <> ServerEditText) or (u <> UserEditText) then
      begin
        TAccountsFrm1.AccountList.Items.Add.Caption := s;
        TAccountsFrm1.AccountList.Items[TAccountsFrm1.AccountList.Items.Count-1].SubItems.Add(u);
      end;
    end;

    for i := 0 to TAudioFrm1.waveInDevice.Items.Count - 1 do
      if Trim(TAudioFrm1.waveInDevice.Items[i]) = Trim(Ini.ReadString('AUDIO', 'In','')) then
      begin
        TAudioFrm1.waveInDevice.ItemIndex := i;
        break;
      end;
    for i := 0 to TAudioFrm1.waveOutDevice.Items.Count - 1 do
      if Trim(TAudioFrm1.waveOutDevice.Items[i]) = Trim(Ini.ReadString('AUDIO', 'Out','')) then
      begin
        TAudioFrm1.waveOutDevice.ItemIndex := i;
        break;
      end;
    for i := 0 to TAudioFrm1.waveRingDevice.Items.Count - 1 do
      if Trim(TAudioFrm1.waveRingDevice.Items[i]) = Trim(Ini.ReadString('AUDIO', 'Ring','')) then
      begin
        TAudioFrm1.waveRingDevice.ItemIndex := i;
        break;
      end;
  finally
    Ini.Free;
  end;     }
end;

procedure TMainForm.HangUpActionExecute(Sender: TObject);
var
  Call: ICall;
begin
  Call := FLines[FLineIndex];
 { if Assigned(Call) then
  begin
    if ((Call.State <> csRinging) or (Call.CallType = ctOutgoing)) then
    begin
      TDialFrm1.HangUpBtn.Enabled := False;
      Call.EndCall;
      //TDialFrm1.CallBtn.Enabled := True;
      FLines[FLineIndex] := nil;
    end
    else
    if (Call.State = csRinging) and (Call.CallType = ctIncoming) then
    begin
      FreeAndNil(FRingThread);
      TDialFrm1.HangUpBtn.Enabled := False;
      Call.Decline;
      FLines[FLineIndex] := nil;
    end;
    RefreshLines;
  end; }
end;

procedure TMainForm.CallActionExecute(Sender: TObject);
begin
 // FreeAndNil(FRingThread);
 { if FSipClient.Registered then
  if not Assigned(FLines[FLineIndex]) then
  begin
    FLines[FLineIndex] := FSipClient.Call(TDialFrm1.PhoneEdit.Text, TDialFrm1.CallerIdEdit.Text, SelectedMicrophone, SelectedSpeaker);
  end
  else
  if FLines[FLineIndex].State = csRinging then
  begin
    FLines[FLineIndex].AudioInDeviceID := SelectedMicrophone;
    FLines[FLineIndex].AudioOutDeviceID := SelectedSpeaker;
    FLines[FLineIndex].Answer;
  end;   }
end;

procedure TMainForm.CallActionUpdate(Sender: TObject);
begin
  {CallAction.Enabled :=  FSipClient.Registered and
    ( not Assigned(FLines[FLineIndex]) or
      (Assigned(FLines[FLineIndex]) and (FLines[FLineIndex].State = csRinging) and (FLines[FLineIndex].CallType = ctIncoming))
    );

  TDialFrm1.CallBtn.Enabled := CallAction.Enabled;
  }
end;

procedure TMainForm.HangUpActionUpdate(Sender: TObject);
begin
  {
  HangUpAction.Enabled := Assigned(FLines[FLineIndex]) and
    (FLines[FLineIndex].State in [csActive, csRinging, csHold, csConnecting, csAutConnecting]);
  TDialFrm1.HangUpBtn.Enabled := HangUpAction.Enabled;
  }
end;

procedure TMainForm.SipClientBye(Sender: TObject; const ACall: ICall);
var
  i: Integer;
begin
 // FreeAndNil(FRingThread);
  {for i := 1 to 6 do
  if FLines[i] = ACall then
  begin
    FLines[i] := nil;
    FDtmf[i] := '';
  end;
  RefreshLines;  }
end;

procedure TMainForm.SipClientCall(Sender: TObject;
  const ACall: ICall);
var
  i, FreeLine: Integer;
begin
 { FreeLine := 0;
  for i := 1 to 6 do
    if not Assigned(FLines[i]) then
    begin
      FreeLine := i;
      break;
    end;
  if FreeLine = 0 then
  begin
    ACall.Decline;
  end
  else
  begin
    FLines[FreeLine] := ACall;
    FreeAndNil(FRingThread);
    FRingThread := TRingThread.Create(13, AudioOutDeviceNameToDeviceID(TAudioFrm1.waveOutDevice.Items[TAudioFrm1.waveRingDevice.ItemIndex]));
  end;      }
end;

procedure TMainForm.SipClientAnswer(Sender: TObject;
  const Call: ICall);
begin
 // FreeAndNil(FRingThread);
end;

procedure TMainForm.HoldActionExecute(Sender: TObject);
var
  Call: ICall;
begin
 { Call := FLines[FLineIndex];
  if Assigned(Call) then
  begin
    if Call.State = csActive then
    begin
      FSipClient.Hold(Call);
      Call.EnableAudioOut := False;
    end
    else if Call.State = csHold then
    begin
      FSipClient.UnHold(Call);
      Call.EnableAudioOut := True;
    end;
  end;  }
end;

procedure TMainForm.HoldActionUpdate(Sender: TObject);
begin
  {HoldAction.Enabled := Assigned(FLines[FLineIndex]) and (FLines[FLineIndex].State in [csActive, csHold]);
  if Assigned(FLines[FLineIndex]) then
  begin
    if FLines[FLineIndex].State = csActive then
      HoldAction.Caption := 'Hold'
    else
    if FLines[FLineIndex].State = csHold then
      HoldAction.Caption := 'Unhold';
  end;    }
end;

procedure TMainForm.TransferActionUpdate(Sender: TObject);
begin
 { TransferAction.Enabled := Assigned(FLines[FLineIndex])
    and (FLines[FLineIndex].State in [csActive]);    }
end;

procedure TMainForm.RegisterActionExecute(Sender: TObject);
{var
  s, u: String;
  idx: Integer;
  Ini: TIniFile;
  cur: Boolean;
  cnt, i: Integer;  }
begin
 (* Ini := TIniFile.Create(ExtractFilePath(ParamStr(0))+IniFileName);
  try
    s := TAccountsFrm1.AccountList.Selected.Caption;
    u := TAccountsFrm1.AccountList.Selected.SubItems[0];
    cur := (s = Ini.ReadString('ACCOUNT', 'Server','')) and
      (u = Ini.ReadString('ACCOUNT', 'User',''));

    cnt := Ini.ReadInteger('ACCOUNT', 'Count',0);
    idx := 0;

    if not cur then
    begin
      for i := 1 to cnt do
      begin
        if (s = Ini.ReadString('ACCOUNT'+IntToStr(i), 'Server','')) and
        (u = Ini.ReadString('ACCOUNT'+IntToStr(i), 'User','')) then
        begin
          PasswordEditText := Ini.ReadString('ACCOUNT'+IntToStr(i), 'Password','');
          ExtensionEditText := Ini.ReadString('ACCOUNT'+IntToStr(i), 'Extension','');
          ProxyEditText := Ini.ReadString('ACCOUNT'+IntToStr(i), 'Proxy','');
          idx := i;
          break;
        end;
      end;
    end;  

    if not cur then
    begin
      OfflineMenuClick(nil);
      ServerEditText := s;
      UserEditText := u;
      PasswordEditText := Ini.ReadString('ACCOUNT'+IntToStr(idx), 'Password','');
      ExtensionEditText := Ini.ReadString('ACCOUNT'+IntToStr(idx), 'Extension','');
      ProxyEditText := Ini.ReadString('ACCOUNT'+IntToStr(idx), 'Proxy','');
      Ini.WriteString('ACCOUNT', 'Server',ServerEditText);
      Ini.WriteString('ACCOUNT', 'User',UserEditText);
      Ini.WriteString('ACCOUNT', 'Password',PasswordEditText);
      Ini.WriteString('ACCOUNT', 'Extension',ExtensionEditText);
      Ini.WriteString('ACCOUNT', 'Proxy', ProxyEditText);
    end;
    
  finally
    Ini.Free;
  end;
                {
  if FSipClient.Registered then
    FSipClient.UnRegister;
                    }
  OnlineMenuClick(Self);
  *)
end;

procedure TMainForm.RegisterActionUpdate(Sender: TObject);
begin
 { RegisterAction.Enabled :=
    (TAccountsFrm1.AccountList.Selected <> nil)
    and ((FSipClient.Registered
    and ((FSipClient.Server <> TAccountsFrm1.AccountList.Selected.Caption) or (FSipClient.User <> TAccountsFrm1.AccountList.Selected.SubItems[0]))) or
    (not FSipClient.Registered));    }
end;

procedure TMainForm.RemoveActionExecute(Sender: TObject);
{var
  cnt, i: Integer;
  s, u: String;
  sl, ul, pl, tl: TStringList;
  cur: Boolean;
  Ini: TIniFile;
  }
begin
{  if TAccountsFrm1.AccountList.Selected <> nil then
    if MessageBox(Handle, PChar(Format('Do you want to remove account %s@%s ?',
      [TAccountsFrm1.AccountList.Selected.SubItems[0], TAccountsFrm1.AccountList.Selected.Caption])), 'Confirm', MB_YESNO + MB_ICONWARNING) <> mrYes then
        Exit;
  Ini := TIniFile.Create(ExtractFilePath(ParamStr(0))+IniFileName);
  try
    if TAccountsFrm1.AccountList.Selected <> nil then
    if TAccountsFrm1.AccountList.Items.Count > 0 then
    begin
      s := TAccountsFrm1.AccountList.Selected.Caption;
      u := TAccountsFrm1.AccountList.Selected.SubItems[0];
      cur := (ServerEditText = s) and (UserEditText = u);
      if cur then
      begin
        OfflineMenuClick(nil);
      end;

      cnt := Ini.ReadInteger('ACCOUNT', 'Count',0);
      if cnt > 0 then
      begin
        sl := TStringList.Create;
        ul := TStringList.Create;
        pl := TStringList.Create;
        tl := TStringList.Create;
        try
          for i := 1 to cnt do
          begin
            if (s <> Ini.ReadString('ACCOUNT'+IntToStr(i), 'Server','')) or
            (u <> Ini.ReadString('ACCOUNT'+IntToStr(i), 'User','')) then
            begin
              sl.Add(Ini.ReadString('ACCOUNT'+IntToStr(i), 'Server',''));
              ul.Add(Ini.ReadString('ACCOUNT'+IntToStr(i), 'User',''));
              pl.Add(Ini.ReadString('ACCOUNT'+IntToStr(i), 'Password',''));
              tl.Add(Ini.ReadString('ACCOUNT'+IntToStr(i), 'Extension',''));
            end;
            Ini.EraseSection('ACCOUNT'+IntToStr(i));
          end;

          for i := 0 to sl.Count - 1 do
          begin
            Ini.WriteString('ACCOUNT'+IntToStr(i+1), 'Server',sl[i]);
            Ini.WriteString('ACCOUNT'+IntToStr(i+1), 'User',ul[i]);
            Ini.WriteString('ACCOUNT'+IntToStr(i+1), 'Password',pl[i]);
            Ini.WriteString('ACCOUNT'+IntToStr(i+1), 'Extension',tl[i]);
          end;
          Ini.WriteInteger('ACCOUNT', 'Count', sl.Count);
        finally
          sl.Free;
          ul.Free;
          pl.Free;
          tl.Free;
        end;
      end;
      TAccountsFrm1.AccountList.Items.Delete(TAccountsFrm1.AccountList.Selected.Index);
      if cur then
      begin
        ServerEditText := '';
        UserEditText := '';
        PasswordEditText := '';
        ExtensionEditText := '';
        ProxyEditText := '';
      end;
      if TAccountsFrm1.AccountList.Items.Count > 0 then
      begin
        TAccountsFrm1.AccountList.Items[0].Focused := True;
        TAccountsFrm1.AccountList.Items[0].Selected := True;
        s := TAccountsFrm1.AccountList.Selected.Caption;
        u := TAccountsFrm1.AccountList.Selected.SubItems[0];
        cnt := Ini.ReadInteger('ACCOUNT', 'Count',0);
        for i := 1 to cnt do
        if (s = Ini.ReadString('ACCOUNT'+IntToStr(i), 'Server',''))
        and (u = Ini.ReadString('ACCOUNT'+IntToStr(i), 'User','')) then
        begin
          ServerEditText := Ini.ReadString('ACCOUNT'+IntToStr(i), 'Server','');
          UserEditText := Ini.ReadString('ACCOUNT'+IntToStr(i), 'User','');
          PasswordEditText := Ini.ReadString('ACCOUNT'+IntToStr(i), 'Password','');
          ExtensionEditText := Ini.ReadString('ACCOUNT'+IntToStr(i), 'Extension','');
          ProxyEditText := Ini.ReadString('ACCOUNT'+IntToStr(i), 'Proxy', '');
          break;
        end;
        Ini.WriteString('ACCOUNT', 'Server', ServerEditText);
        Ini.WriteString('ACCOUNT', 'User', UserEditText);
        Ini.ReadString('ACCOUNT', 'Password', PasswordEditText);
        Ini.WriteString('ACCOUNT', 'Extension', ExtensionEditText);
        Ini.WriteString('ACCOUNT', 'Proxy', ProxyEditText);
        if Length(ServerEditText) > 0 then
          OnlineMenuClick(Self);
      end;
    end;
  finally
    Ini.Free;
  end;
  }
end;

procedure TMainForm.RemoveActionUpdate(Sender: TObject);
begin
  RemoveAction.Enabled := (TAccountsFrm1.AccountList.Items.Count > 0) and (TAccountsFrm1.AccountList.Selected <> nil);
end;

procedure TMainForm.AddActionExecute(Sender: TObject);
{var
 // RF: TRegistrationForm;
  cnt, i: Integer;
  s, u: String;
  sl, ul, pl, tl, xl: TStringList;
  Ini: TIniFile;
  exists: Boolean;
  }
begin
  {
  RF := TRegistrationForm.Create(nil);
  try
    if RF.ShowModal = mrOk then
    begin
      s := RF.ServerEdit.Text;
      u := RF.UserEdit.Text;
      exists := False;
      for i := 0 to TAccountsFrm1.AccountList.Items.Count - 1 do
      if (TAccountsFrm1.AccountList.Items[i].Caption = s) and (TAccountsFrm1.AccountList.Items[i].SubItems[0] = u) then
      begin
        exists := True;
        break;
      end;
      if not exists then
      begin
        Ini := TIniFile.Create(ExtractFilePath(ParamStr(0))+IniFileName);
        try
          cnt := Ini.ReadInteger('ACCOUNT', 'Count',0);
          sl := TStringList.Create;
          ul := TStringList.Create;
          pl := TStringList.Create;
          tl := TStringList.Create;
          xl := TStringList.Create;
          try
            for i := 1 to cnt do
            begin
              if (s <> Ini.ReadString('ACCOUNT'+IntToStr(i), 'Server','')) or
              (u <> Ini.ReadString('ACCOUNT'+IntToStr(i), 'User','')) then
              begin
                sl.Add(Ini.ReadString('ACCOUNT'+IntToStr(i), 'Server',''));
                ul.Add(Ini.ReadString('ACCOUNT'+IntToStr(i), 'User',''));
                pl.Add(Ini.ReadString('ACCOUNT'+IntToStr(i), 'Password',''));
                tl.Add(Ini.ReadString('ACCOUNT'+IntToStr(i), 'Extension',''));
                xl.Add(Ini.ReadString('ACCOUNT'+IntToStr(i), 'Proxy', ''));
              end;
              Ini.EraseSection('ACCOUNT'+IntToStr(i));
            end;
            sl.Add(s);
            ul.Add(u);
            pl.Add(RF.PasswordEdit.Text);
            tl.Add(RF.ExtensionEdit.Text);
            xl.Add(RF.ProxyEdit.Text);
            for i := 0 to sl.Count - 1 do
            begin
              Ini.WriteString('ACCOUNT'+IntToStr(i+1), 'Server',sl[i]);
              Ini.WriteString('ACCOUNT'+IntToStr(i+1), 'User',ul[i]);
              Ini.WriteString('ACCOUNT'+IntToStr(i+1), 'Password',pl[i]);
              Ini.WriteString('ACCOUNT'+IntToStr(i+1), 'Extension',tl[i]);
              Ini.WriteString('ACCOUNT'+IntToStr(i+1), 'Proxy', xl[i]);
            end;
            Ini.WriteInteger('ACCOUNT', 'Count', sl.Count);
          finally
            sl.Free;
            ul.Free;
            pl.Free;
            tl.Free;
            xl.Free;
          end;
          TAccountsFrm1.AccountList.Items.Add.Caption := s;
          TAccountsFrm1.AccountList.Items[TAccountsFrm1.AccountList.Items.Count-1].SubItems.Add(u);
        finally
          Ini.Free;
        end;
      end;
    end;
  finally
    RF.Free;
  end;
  }
end;

procedure TMainForm.EditActionUpdate(Sender: TObject);
begin
  EditAction.Enabled := (TAccountsFrm1.AccountList.Items.Count > 0) and
    (TAccountsFrm1.AccountList.Selected <> nil);
end;

procedure TMainForm.EditActionExecute(Sender: TObject);
{var
 // RF: TRegistrationForm;
  s, u: String;
  idx: Integer;
  Ini: TIniFile;
  cur: Boolean;
  cnt, i: Integer;
  }
begin
  {
  RF := TRegistrationForm.Create(nil);
  try
    Ini := TIniFile.Create(ExtractFilePath(ParamStr(0))+IniFileName);
    try
      s := TAccountsFrm1.AccountList.Selected.Caption;
      u := TAccountsFrm1.AccountList.Selected.SubItems[0];
      RF.ServerEdit.Text := s;
      RF.UserEdit.Text := u;

      cur := (s = Ini.ReadString('ACCOUNT', 'Server','')) and
        (u = Ini.ReadString('ACCOUNT', 'User',''));

      if cur then
      begin
        RF.PasswordEdit.Text := Ini.ReadString('ACCOUNT', 'Password','');
        RF.ExtensionEdit.Text := Ini.ReadString('ACCOUNT', 'Extension','');
        RF.ProxyEdit.Text := Ini.ReadString('ACCOUNT', 'Proxy','');
      end;

      cnt := Ini.ReadInteger('ACCOUNT', 'Count',0);
      idx := 0;

      for i := 1 to cnt do
      begin
        if (s = Ini.ReadString('ACCOUNT'+IntToStr(i), 'Server','')) and
        (u = Ini.ReadString('ACCOUNT'+IntToStr(i), 'User','')) then
        begin
          RF.PasswordEdit.Text := Ini.ReadString('ACCOUNT'+IntToStr(i), 'Password','');
          RF.ExtensionEdit.Text := Ini.ReadString('ACCOUNT'+IntToStr(i), 'Extension','');
          RF.ProxyEdit.Text := Ini.ReadString('ACCOUNT'+IntToStr(i), 'Proxy', '');
          idx := i;
          break;
        end;
      end;

      if RF.ShowModal = mrOk then
      begin
        if cur then
        begin
          OfflineMenuClick(nil);
          ServerEditText := RF.ServerEdit.Text;
          UserEditText := RF.UserEdit.Text;
          PasswordEditText := RF.PasswordEdit.Text;
          ExtensionEditText := RF.ExtensionEdit.Text;
          ProxyEditText := RF.ProxyEdit.Text;
          Ini.WriteString('ACCOUNT', 'Server',ServerEditText);
          Ini.WriteString('ACCOUNT', 'User',UserEditText);
          Ini.WriteString('ACCOUNT', 'Password',PasswordEditText);
          Ini.WriteString('ACCOUNT', 'Extension',ExtensionEditText);
          Ini.WriteString('ACCOUNT', 'Proxy',ProxyEditText);
        end;
        if idx > 0 then
        begin
          Ini.WriteString('ACCOUNT'+IntToStr(idx), 'Server', RF.ServerEdit.Text);
          Ini.WriteString('ACCOUNT'+IntToStr(idx), 'User', RF.UserEdit.Text);
          Ini.WriteString('ACCOUNT'+IntToStr(idx), 'Password', RF.PasswordEdit.Text);
          Ini.WriteString('ACCOUNT'+IntToStr(idx), 'Extension', RF.ExtensionEdit.Text);
          Ini.WriteString('ACCOUNT'+IntToStr(idx), 'Proxy', RF.ProxyEdit.Text);
        end;
        TAccountsFrm1.AccountList.Selected.Caption := RF.ServerEdit.Text;
        TAccountsFrm1.AccountList.Selected.SubItems[0] := RF.UserEdit.Text;
      end;
    finally
      Ini.Free;
    end;
  finally
    RF.Free;
  end;
  }
end;

procedure TMainForm.SipClientDtmf(Sender: TObject; const ACall: ICall; const Dtmf: String);
var
  i: Integer;
begin
 { for i := 1 to 6 do
  begin
    if (FLines[i] = ACall) and (ACall.State = csActive) then
    begin
      FDtmf[i] := FDtmf[i] + Dtmf;
      ShowMemo;
    end;
  end; }
end;

procedure TMainForm.ShowMemo;
var
  text: String;
begin
  text := 'Line '+IntToStr(FLineIndex);
 { if Assigned(FLines[FLineIndex]) then
  begin
    if FLines[FLineIndex].CallType = ctIncoming then
      text := text + ' Incoming'+#13#10
    else
      text := text + ' Outgoing'+#13#10;
    text := text + FLines[FLineIndex].RemoteUser;
    if FDtmf[FLineIndex] <> '' then
      text := text + #13#10 + 'DTMF detected: '+FDtmf[FLineIndex];
    if FLines[FLineIndex].State = csRinging then
      text := text + #13#10 + 'Ringing...';
  end;
  TDialFrm1.LineMemo.Text := text;   }
end;

procedure TMainForm.SBtn1Click(Sender: TObject);
begin
  FLineIndex := (Sender as TSpeedButton).Tag;
  RefreshLines;
end;

procedure TMainForm.RecordActionExecute(Sender: TObject);
var
  Dlg: TSaveDialog;
begin
 { if not Assigned(FRecorder) then
  begin
    FRecorder := FSipClient.CreateStereoRecorder;
    if Assigned(FLines[FLineIndex]) then
      FLines[FLineIndex].SetRecorder(FRecorder);
  end
  else
  begin
    Dlg := TSaveDialog.Create(nil);
    try
      if Dlg.Execute then
        FRecorder.SaveToFile(Dlg.FileName);
    finally
      Dlg.Free;
    end;
    FRecorder := nil;
  end; }
end;

procedure TMainForm.RecordActionUpdate(Sender: TObject);
begin
  {RecordAction.Enabled := (Assigned(FLines[FLineIndex]) and
    (FLines[FLineIndex].State in [csActive, csRinging, csHold, csConnecting]))
    or Assigned(FRecorder);

  TDialFrm1.RecordBtn.Enabled := RecordAction.Enabled;
  if not Assigned(FRecorder) then
  begin
    if TDialFrm1.RecordBtn.Caption <> 'Record' then
      TDialFrm1.RecordBtn.Caption := 'Record'
  end
  else
  begin
    if TDialFrm1.RecordBtn.Caption <> 'Save Audio File' then
      TDialFrm1.RecordBtn.Caption := 'Save Audio File';
  end; }
end;

procedure TMainForm.RefreshLines;
var
  i: Integer;

  procedure SetGlyph(Index: Integer);
  var
    B: TBitmap;
  begin
    B := TBitmap.Create;
    try
      StatusImages.GetBitmap(2+Integer(FLineImages[Index]), B);
      B.PixelFormat := pf24bit;
      FButtons[Index].Glyph.Assign(B);
      FButtons[Index].Glyph.TransparentColor := clWhite;
      FButtons[Index].Glyph.Transparent := True;
    finally
      B.Free;
    end;
  end;

begin
  {for i := 1 to 6 do
  begin

    if (FLineIndex = i) and Assigned(FLines[i]) and (FLines[i].State = csActive) then
    begin
      if not FLineImages[i] then
      begin
        FLineImages[i] := True;
        SetGlyph(i);
      end;
    end
    else
    begin
      if Assigned(FLines[i]) and (FLines[i].State <> csInactive) then
      begin
        FLineImages[i] := not FLineImages[i];
        SetGlyph(i);
      end
      else
      begin
        if FLineImages[i] then
        begin
          FLineImages[i] := False;
          SetGlyph(i);
        end;
      end;
    end;
  end;
  ShowMemo;   }
end;

procedure TMainForm.Timer1Timer(Sender: TObject);
begin
  if not FDialVisible then
  begin
    FDialVisible := True;
    Timer1.Interval := 1000;
    TDialFrm1.Refresh;
  end;
  RefreshLines;
end;

procedure TMainForm.ActivateDialpadFrameBtnClick(Sender: TObject);
begin
  TDialFrm1.Visible := True;
  TAccountsFrm1.Visible := False;
  TAudioFrm1.Visible := False;
end;

procedure TMainForm.ActivateAccountsFrameBtnClick(Sender: TObject);
begin
  TDialFrm1.Visible := False;
  TAccountsFrm1.Visible := True;
  TAudioFrm1.Visible := False;
end;

procedure TMainForm.ActivateAudioFrameBtnClick(Sender: TObject);
begin
  TDialFrm1.Visible := False;
  TAccountsFrm1.Visible := False;
  TAudioFrm1.Visible := True;
end;

procedure TMainForm.AboutBtnClick(Sender: TObject);
begin
 // ShellExecute(0, 'open', 'http://sipcomponents.com', nil, nil,  sw_ShowMaximized);
end;

procedure TMainForm.ConferenceActionUpdate(Sender: TObject);
var
  cnt, i: Integer;
begin
 { if not Assigned(FConference) then
  begin
    cnt := 0;
    for i := 1 to 6 do
    begin
      if Assigned(FLines[i]) and (FLines[i].State = csActive) then
      begin
        Inc(cnt);
        if cnt > 1 then break;
      end;
    end;
    ConferenceAction.Enabled := cnt > 1;
    ConferenceAction.Caption := 'Conference';
  end
  else
  begin
    ConferenceAction.Caption := 'Stop Conf.';
    ConferenceAction.Enabled := True;
  end;         }
end;

procedure TMainForm.ConferenceActionExecute(Sender: TObject);
var
  i: Integer;
begin
  {if Assigned(FConference) then
    FConference := nil
  else
    FConference := FSipClient.CreateConference;

  for i := 1 to 6 do
  begin
    if Assigned(FLines[i]) and (FLines[i].State = csActive) then
      FLines[i].SetConference(FConference);
  end;    }
end;

function TMainForm.SelectedMicrophone: Cardinal;
begin
 // Result := AudioInDeviceNameToDeviceID(TAudioFrm1.waveInDevice.Items[TAudioFrm1.waveInDevice.ItemIndex])
end;

function TMainForm.SelectedSpeaker: Cardinal;
begin
 // Result := AudioOutDeviceNameToDeviceID(TAudioFrm1.waveOutDevice.Items[TAudioFrm1.waveOutDevice.ItemIndex]);
end;

procedure TMainForm.SipClientSilence(Sender: TObject; const ACall: ICall);
var
  i: Integer;
begin
 { for i := 1 to 6 do
  begin
    if (FLines[i] = ACall) and (ACall.State = csActive) then
    begin
      if FDtmf[i] = 'SILENCE' then
        FDtmf[i] := 'SILENCE*'
      else
        FDtmf[i] := 'SILENCE';
      ShowMemo;
    end;
  end; }
end;

end.
