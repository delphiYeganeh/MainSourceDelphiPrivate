unit ShowMessageFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, BaseUnit,  ExtActns, ActnList, DB,
  Buttons, Menus;

type
  TFmShowMessage = class(TMBaseForm)
    Panel1: TPanel;
    LblDraft: TLabel;
    LblMessage: TLabel;
    LblNews2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    MsgAlarm: TCheckBox;
    SBDraft: TSpeedButton;
    SBMessage: TSpeedButton;
    SBNews: TSpeedButton;
    procedure MsgAlarmClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SBMessageClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SBDraftClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

    procedure AnimateForm;
  public
    FShowAlarm : Boolean;
    Property ShowAlarm : Boolean read FShowAlarm write FShowAlarm;
  end;

var
  FmShowMessage: TFmShowMessage;

implementation

uses YShamsidate , Dmu, UMain, businessLayer;

{$R *.dfm}

procedure TFmShowMessage.MsgAlarmClick(Sender: TObject);
begin
  if MsgAlarm.Checked then
  begin
    ShowAlarm := False;
    Dm.ISMessageShow := False;
    SetUserSetting('cbAlarmMessage',false);
  end
  else
  Begin
    ShowAlarm := True;
    Dm.ISMessageShow := True;
  End;
end;

procedure TFmShowMessage.AnimateForm;
Var
   AniTime:integer;
begin
   AniTime := 800;
   AnimateWindow(Handle , AniTime , AW_VER_NEGATIVE or AW_SLIDE);
   AnimateWindow(Handle , AniTime-50, AW_VER_POSITIVE or AW_Hide);
end;

procedure TFmShowMessage.FormShow(Sender: TObject);
begin
   AnimateForm;
end;



procedure TFmShowMessage.SBMessageClick(Sender: TObject);
begin
   inherited;
   MainForm.Message_News;
end;

procedure TFmShowMessage.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=cafree;
end;

procedure TFmShowMessage.SBDraftClick(Sender: TObject);
begin
   inherited;
   if StrToIntDef(LblDraft.Caption,0) = 0 then
      Exit;
   MainForm.Draft;
end;

procedure TFmShowMessage.FormCreate(Sender: TObject);
begin
   inherited;
 ShowAlarm:=True;
   if Not _Kartable then
   begin
      label4.Visible   := True;
      LblDraft.Visible := True;
      SBDraft.Visible  := True;
   end
   else
   begin
         label4.Visible   := False;
         LblDraft.Visible := False;
         SBDraft.Visible  := False;
   end;
   {$IFDEF LIGHT}
      {$IFDEF SINGLE}
         label5.Visible   := False;
         label6.Visible   := False;
         LblMessage.Visible   := False;
         LblNews2.Visible   := False;
         SBMessage.Visible := false;
         SBNews.Visible := false;
         Caption := 'ÅÌ€«„';
      {$ENDIF}
   {$ENDIF}
end;

end.
