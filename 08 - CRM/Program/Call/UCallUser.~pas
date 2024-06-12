unit UCallUser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtCtrls, ImgList, Menus, ExtActns, ActnList, DB,
  mainframe, accountsframe, audioframe, ComCtrls, Buttons;

type
  TFCallUser = class(TMBaseForm)
    pnlMain: TPanel;
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
    ConferenceAction: TAction;
    RecordAction: TAction;
    Timer1: TTimer;
    Panel1: TPanel;
    ActivateDialpadFrameBtn: TSpeedButton;
    ActivateAccountsFrameBtn: TSpeedButton;
    ActivateAudioFrameBtn: TSpeedButton;
    AboutBtn: TSpeedButton;
    StatusBar1: TStatusBar;
    Panel2: TPanel;
    TAudioFrm1: TAudioFrm;
    TAccountsFrm1: TAccountsFrm;
    TDialFrm1: TDialFrm;
    procedure ActivateDialpadFrameBtnClick(Sender: TObject);
    procedure ActivateAccountsFrameBtnClick(Sender: TObject);
    procedure ActivateAudioFrameBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCallUser: TFCallUser;

implementation

uses dmu;

{$R *.dfm}

procedure TFCallUser.ActivateDialpadFrameBtnClick(Sender: TObject);
begin
  inherited;
  TDialFrm1.Visible := True;
  TAccountsFrm1.Visible := False;
  TAudioFrm1.Visible := False;
end;

procedure TFCallUser.ActivateAccountsFrameBtnClick(Sender: TObject);
begin
  inherited;
  TDialFrm1.Visible := False;
  TAccountsFrm1.Visible := True;
  TAudioFrm1.Visible := False;
end;

procedure TFCallUser.ActivateAudioFrameBtnClick(Sender: TObject);
begin
  inherited;
  TDialFrm1.Visible := False;
  TAccountsFrm1.Visible := False;
  TAudioFrm1.Visible := True;
end;

procedure TFCallUser.FormShow(Sender: TObject);
begin
  inherited;
  ShapeBase.Brush.Color := _Color1 ;
  pnlMain.Color := _Color1 ;  
           {
  FButtons[1] := TDialFrm1.SBtn1;
  FButtons[2] := TDialFrm1.SBtn2;
  FButtons[3] := TDialFrm1.SBtn3;
  FButtons[4] := TDialFrm1.SBtn4;
  FButtons[5] := TDialFrm1.SBtn5;
  FButtons[6] := TDialFrm1.SBtn6;
                          }
  TAudioFrm1.waveOutDevice.ItemIndex := 0;
  TAudioFrm1.waveInDevice.ItemIndex := 0;
  TAudioFrm1.waveRingDevice.ItemIndex := 0;
end;

end.
