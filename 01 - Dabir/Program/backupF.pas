unit backupF;

interface

uses
  windows,Classes, BaseUnit, Dialogs, ActnMan, StdCtrls, ComCtrls, Buttons,
  Controls, ActnList, DB,forms,sysutils,dateutils,FileCtrl, ExtActns,
  XPStyleActnCtrls,  xpBitBtn, Menus, TntDialogs, ExtCtrls;
type
  ModeType = (Backup,Restor,Shrink);
  TBackupRestore = class(TMBaseForm)
    EPath: TEdit;
    Lpath: TLabel;
    Getdir: TSpeedButton;
    BitBtn1: TBitBtn;
    ProgressBar1: TProgressBar;
    ActionManager: TActionManager;
    Aclose: TAction;
    StaticText1: TLabel;
    OpenDialog: TTntOpenDialog;
    procedure EPathChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure AcloseExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    Procedure SetPath(value:String);
    Procedure SetMode(value:modeType);
    procedure GetdirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EPathExit(Sender: TObject);
    procedure EPathEnter(Sender: TObject);
  private
   FMode: modetype;
   FPath: String;

    { Private declarations }
  public
   property Path:String read FPath write SetPath;
   property Mode:ModeType read FMode write SetMode;
    { Public declarations }
  end;

var
  BackupRestore: TBackupRestore;

implementation

uses  Dmu, businessLayer;

{$R *.dfm}
var
ErrorMessage,
SuccessMessage: string;

procedure TBackupRestore.SetPath(value:String);
begin
  FPath:=value;
  case Mode of
    backup:SuccessMessage:='("'+path+'")‰”ŒÂ Å‘ Ì»«‰ »« „Ê›ﬁÌ   ÂÌÂ ‘œ';
    restor:SuccessMessage:='‰”ŒÂ Å‘ Ì»«‰ »« „Ê›ﬁÌ  Ã«Ìê“Ì‰ ‘œ';
    shrink:SuccessMessage:='›«Ì· Â«Ì »«‰ò «ÿ·«⁄« Ì »« „Ê›ﬁÌ   ›‘—œÂ ”«“Ì ‘œ';
  end;
end;

function fn:string;
begin
  case BackupRestore.Mode of
    backup : result:=_EYeganeh+'_'+copy(_Today,1 ,4)+'-'+copy(_Today,6 ,2)+'-'+copy(_Today,9 ,2)+'-h'+inttostr(HourOf(now))+'.ybk';
    shrink : result:='ygd.log';
    else
      fn:='';
  end;
end;

procedure TBackupRestore.SetMode(value:modeType);
begin
  FMode:=value;
  case value of
    backup:
      begin
        Lpath.Caption:='„”Ì— ›«Ì· Å‘ Ì»«‰ ';
        ErrorMessage:='Œÿ«œ—  ÂÌÂ ‰”ŒÂ Å‘ Ì»«‰ ';
        path:=GetSystemSetting('BackupPath')+fn;
      end;
    restor:
      begin
        path:='d:\'+fn;
        Lpath.Caption:='„”Ì— ›«Ì· Å‘ Ì»«‰ ';
        ErrorMessage:='‘„« ‰„Ì  Ê«‰Ìœ «Ì‰ ⁄„· —« «‰Ã«„ œÂÌœ ·ÿ›« »« ò«—‘‰«” „—»ÊÿÂ „‘Ê—  ‰„«ÌÌœ';
      end;
    shrink:
      begin
        EPath.Hide;
        Lpath.hide;
        Getdir.Hide;
        ErrorMessage:='Œÿ«œ— ›‘—œÂ ”«“Ì ›«Ì· Â«Ì »«‰ò «ÿ·«⁄« Ì';
      end;
  end;
end;

procedure TBackupRestore.EPathChange(Sender: TObject);
begin
  inherited;
  path := EPath.text;
end;

procedure TBackupRestore.BitBtn1Click(Sender: TObject);
begin
  inherited;
  ProgressBar1.Position:=40;

  if Mode = Shrink then
  begin
    progressbar1.Position:=40;
    Exec_ysp_shrink(_DatabaseName,path);
    progressbar1.Position:=80;
    Exec_ysp_shrink(_DatabaseName,path);
  end
  else
    Exec_ysp_Backup(_DatabaseName,path);

  progressbar1.Position:=100;
  ShowMsgString(SuccessMessage);

  if Mode = Backup then
    SetSystemSetting('BackupMade',True); //„Ê—œ «” ›«œÂ ‰œ«—œ
  Close;
end;

procedure TBackupRestore.AcloseExecute(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TBackupRestore.FormShow(Sender: TObject);
begin
  inherited;
  EPath.Text:=path;
end;

procedure TBackupRestore.GetdirClick(Sender: TObject);
var
  s:string;
begin
  inherited;
  OpenDialog.InitialDir:=path;
  if mode<>restor then
  begin
    if SelectDirectory('        ⁄ÌÌ‰ „”Ì— ›«Ì·: ‰—„ «›“«— « Ê„«”ÌÊ‰ «œ«—Ì ','',s) then
    begin
      path:=s+'\'+Fn;
      EPath.Text:=path;
    end
  end
  else
    if OpenDialog.Execute then
    begin
      path:=OpenDialog.FileName;
      EPath.Text:=path;
    end;
end;

procedure TBackupRestore.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if mode = backup then
    SetSystemSetting('BackupPath',ExtractFilePath(path));
end;

procedure TBackupRestore.EPathExit(Sender: TObject);
begin
  inherited;
  ActivateKeyboardLayout(HKL_NEXT, KLF_REORDER);
end;

procedure TBackupRestore.EPathEnter(Sender: TObject);
begin
  inherited;
  ActivateKeyboardLayout(HKL_NEXT, KLF_REORDER);
end;

end.
