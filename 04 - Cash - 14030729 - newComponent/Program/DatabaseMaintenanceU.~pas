 unit DatabaseMaintenanceU;

interface

uses
  Classes, BaseUnit, Dialogs, ActnMan, StdCtrls, ComCtrls, Buttons,
  Controls, ActnList, DB,forms,sysutils,dateutils,filectrl, ExtActns,
  XPStyleActnCtrls, Menus, ExtCtrls, YWhereEdit, ADODB, AdvGlowButton;
type
    modeType=(backup,Reindex,shrink);
    TFrDatabaseMaintenance = class(TYBaseForm)
    ActionManager: TActionManager;
    Aclose: TAction;
    Panel1: TPanel;
    Lpath: TLabel;
    SpBtn: TAdvGlowButton;
    StaticText1: TLabel;
    EPath: TEdit;
    ProgressBar1: TProgressBar;
    Panel2: TPanel;
    BitBtn1: TAdvGlowButton;
    pnlMain: TPanel;
    procedure EPathChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure AcloseExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    Procedure SetMode(value:modeType);
    procedure SpBtnClick(Sender: TObject);
  private
   FMode: modetype;

    { Private declarations }
  public
   property Mode:ModeType read Fmode write SetMode;
    { Public declarations }
  end;

var
  FrDatabaseMaintenance: TFrDatabaseMaintenance;

implementation

uses  Dmu, BusinessLayer;

{$R *.dfm}
var
  ErrorMessage,
  SuccessMessage,Path:String;

function fn:string;
begin
  {Ranjbar}
  //result:='yeganeh_LoanCash_'+copy(_today,3 ,2)+'-'+copy(_today,6 ,2)+'-'+copy(_today,9 ,2)+'-h'+inttostr(HourOf(now))+'.ybk';
  Result := 'yeganeh_LoanCash_'+IntToStr(_Year)+'-'+_Month+'-'+_Day+'_'+IntToStr(HourOf(Now))+ '-' +IntToStr(MinuteOf(Now))+'-' +IntToStr(SecondOf(Now))+'.ybk';
  //---
end;

procedure TFrDatabaseMaintenance.SetMode(value:modeType);
begin
  FMode:=value;
  case value of

  backup:begin
            Lpath.Caption:='„”Ì— ›«Ì· Å‘ Ì»«‰ Ìê«‰Â';
            path:=Get_SystemSetting('BackupPath')+fn;
            ErrorMessage:='Œÿ«œ—  ÂÌÂ ‰”ŒÂ Å‘ Ì»«‰ Ìê«‰Â';
            SuccessMessage:='‰”ŒÂ Å‘ Ì»«‰ »« „Ê›ﬁÌ   ÂÌÂ ‘œ';
         end;
  Reindex:begin
            Caption:='œÊ»«—Â ”«“Ì «‰œÌ” Â«';
            SpBtn.Enabled:=false;
            EPath.Enabled:=False;
            path:='';
            SuccessMessage:='«‰œÌ” Â«Ì »«‰ò «ÿ·«⁄« Ì »« „Ê›ﬁÌ  œÊ»«—Â ”«“Ì ‘œ‰œ';
            ErrorMessage:='‘„« ‰„Ì  Ê«‰Ìœ «Ì‰ ⁄„· —« «‰Ã«„ œÂÌœ ·ÿ›« »« ò«—‘‰«” „—»ÊÿÂ „‘Ê—  ‰„«ÌÌœ';
          end;
  shrink:begin
            Caption:='›‘—œÂ ”«“Ì »«‰ò «ÿ·«⁄« Ì';
            SpBtn.Enabled:=false;
            EPath.Enabled:=False;
            path:='';
            SuccessMessage:='›«Ì· Â«Ì »«‰ò «ÿ·«⁄« Ì »« „Ê›ﬁÌ   ›‘—œÂ ”«“Ì ‘œ';
            ErrorMessage:='Œÿ«œ— ›‘—œÂ ”«“Ì ›«Ì· Â«Ì »«‰ò «ÿ·«⁄« Ì';
          end;
  end;
end;

procedure TFrDatabaseMaintenance.EPathChange(Sender: TObject);
begin
  inherited;
  path := EPath.text;
end;

procedure TFrDatabaseMaintenance.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if Mode=backup then
    if pos('\',EPath.Text)*pos(':',EPath.Text)=0 then
    begin
      ShowMessage('·ÿ›« „”Ì— ›«Ì· Å‘ Ì»«‰ —« œ—”  Ê«—œ ò‰Ìœ');
      exit;
    end;
  ProgressBar1.Position:=50;
  with TADOQuery.Create(nil) do
  begin
    Connection := dm.YeganehConnection;
    SQL.Text := 'UPDATE UserLoginLogout SET 	isSafeLogout = 1 ';
    ExecSQL;
  end;
  case mode of
    shrink:  Y_Shrink;
    backup:  Y_Backup(EPath.Text,trim(DataBaseName));
    Reindex: Y_ReindexTables(trim(DataBaseName));
  end;
  progressbar1.Position:=100;
  ShowMessage(SuccessMessage);
  Close;
end;

procedure TFrDatabaseMaintenance.AcloseExecute(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFrDatabaseMaintenance.FormShow(Sender: TObject);
begin
  inherited;
  EPath.Text:=path;
end;

procedure TFrDatabaseMaintenance.SpBtnClick(Sender: TObject);
var
  s:string;
begin
  inherited;
  if SelectDirectory('        ⁄ÌÌ‰ „”Ì— ›«Ì·: ‰—„ «›“«— ’‰œÊﬁ ','',s) then
  begin
    path:=s+'\'+Fn;
    EPath.Text:=path;
  end
end;

end.
