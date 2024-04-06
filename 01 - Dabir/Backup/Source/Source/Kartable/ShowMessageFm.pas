unit ShowMessageFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, BaseUnit, xpWindow, ExtActns, ActnList, DB,
  Buttons, Menus;

type
  TFmShowMessage = class(TMBaseForm)
    Panel1: TPanel;
    LblMessage: TLabel;
    LblNews2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    MsgAlarm: TCheckBox;
    SBMessage: TSpeedButton;
    SBNews: TSpeedButton;
    procedure MsgAlarmClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SBMessageClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private

    procedure AnimateForm;
  public
    FShowAlarm : Boolean;
    Property ShowAlarm : Boolean read FShowAlarm write FShowAlarm;
  end;

var
  FmShowMessage: TFmShowMessage;

implementation

uses YShamsidate , Dmu, UMain;

{$R *.dfm}

procedure TFmShowMessage.MsgAlarmClick(Sender: TObject);
begin
   if MsgAlarm.Checked then
   Begin
      ISMessageShow := False;
      ShowAlarm := False
   end
   else
   Begin
      ISMessageShow := True;
      ShowAlarm := True;
   end;
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
   {Ranjbar 90.02.14 ID=367}
   MainForm.Show; //œ— ’Ê— ÌﬂÂ ‰—„ «›“«— œ— Õ«·  «‰ Ÿ«— »«‘œ
   //---
   MainForm.Message_News;
end;

procedure TFmShowMessage.FormClose(Sender: TObject;var Action: TCloseAction);
begin
  //inherited;    //Ranjbar Õ–› ‰‘Êœ

end;

end.
