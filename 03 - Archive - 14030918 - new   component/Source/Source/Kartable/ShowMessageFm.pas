unit ShowMessageFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, BaseUnit, xpWindow, ExtActns, ActnList, DB,
  Buttons, Menus, ADODB, Grids, DBGrids, DBCtrls, Mask;

type
  TFmShowMessage = class(TMBaseForm)
    dsUnreadLetter: TDataSource;
    adoUnreadLetter: TADOQuery;
    adoUnreadLetterCNT: TIntegerField;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    Panel1: TPanel;
    LblMessage: TLabel;
    LblNews2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    SBMessage: TSpeedButton;
    SBNews: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Lblletter: TLabel;
    Label2: TLabel;
    MsgAlarm: TCheckBox;
    Bevel1: TBevel;
    ADOQuery1cnt: TMemoField;
    DBMemo1: TDBMemo;
    procedure MsgAlarmClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SBMessageClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
  private

    procedure AnimateForm;
  public
    FShowAlarm : Boolean;
    Property ShowAlarm : Boolean read FShowAlarm write FShowAlarm;
  end;

var
  FmShowMessage: TFmShowMessage;

implementation

uses YShamsidate , Dmu, UMain, Inbox;

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
   adoUnreadLetter.Close;
   adoUnreadLetter.Parameters.ParamByName('SecretariatID').Value := 0;
   adoUnreadLetter.Parameters.ParamByName('OrgID').Value := IntToStr(_UserFromOrgID);
   adoUnreadLetter.Open;

   ADOQuery1.Close;
   ADOQuery1.Parameters.ParamByName('UserID').Value := _UserID;
   ADOQuery1.Open;
  // ShowMessage(ADOQuery1cnt.AsString);
   Lblletter.Caption :=  adoUnreadLetterCNT.AsString;

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

procedure TFmShowMessage.SpeedButton1Click(Sender: TObject);
var
   items : TStrings;
   i : byte;
        Condition :String;

begin
  inherited;
  MainForm.Show; //œ— ’Ê— ÌﬂÂ ‰—„ «›“«— œ— Õ«·  «‰ Ÿ«— »«‘œ
//  dm.sp_inbox.Filtered := False;
//  dm.sp_inbox.Filter := 'IsAnswer = ''1''';
//  dm.sp_inbox.Filter := 'ISNULL(rc.viewdate,''0'') = ''0''';
//  dm.sp_inbox.Filter := ' viewdate iS nuLL ';
//  dm.sp_inbox.Filtered := True;
 MainForm.SHOW_NOT_READ := True;
// FInbox.SHOW_ALL_BTNClick(Self);
MainForm.RefreshQuery;
end;

end.
