unit backupF;

interface

uses
  windows,Classes, BaseUnit, Dialogs, ActnMan, StdCtrls, ComCtrls, Buttons,
  Controls, ActnList, DB,forms,sysutils,dateutils,FileCtrl, ExtActns,
  XPStyleActnCtrls, xpWindow, xpBitBtn, ExtCtrls;
type
  modeType=(backup,restor,shrink);
  TBackupRestore = class(TMBaseForm)
    ActionManager: TActionManager;
    Aclose: TAction;
    OpenDialog: TOpenDialog;
    Panel1: TPanel;
    Panel2: TPanel;
    Lpath: TLabel;
    SpeedButton1: TSpeedButton;
    StaticText1: TLabel;
    EPath: TEdit;
    BitBtn1: TBitBtn;
    ProgressBar1: TProgressBar;
    procedure EPathChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure AcloseExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    Procedure SetPath(value:String);
    Procedure SetMode(value:modeType);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EPathExit(Sender: TObject);
    procedure EPathEnter(Sender: TObject);
  private
   FMode: modetype;
   FPath: String;

    { Private declarations }
  public
   property Path:String read FPath write SetPath;
   property Mode:ModeType read Fmode write SetMode;
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
   backup:SuccessMessage:='("'+path+'")���� ������� �� ������ ���� ��';
   restor:SuccessMessage:='���� ������� �� ������ ������ ��';
   shrink:SuccessMessage:='���� ��� ��� �������� �� ������  ����� ���� ��';
  end;
end;
function fn:string;
begin
  case BackupRestore.mode of
   backup : result:=_Eyeganeh+'_'+copy(_Today,3 ,2)+'-'+copy(_Today,6 ,2)+'-'+copy(_Today,9 ,2)+'-h'+inttostr(HourOf(now))+'.ybk';
   shrink : result:='ygd83.log';
   else fn:='';
  end;
end;

procedure TBackupRestore.SetMode(value:modeType);
begin
FMode:=value;
 case value of
   backup:begin
            Lpath.Caption:='���� ���� ������� ';
            ErrorMessage:='����� ���� ���� ������� ';
            path:=dm.GetSystemValue(19)+fn;
          end;
   restor:begin
            path:='d:\'+fn;
            Lpath.Caption:='���� ���� ������� ';
            ErrorMessage:='��� ��� ������ ��� ��� �� ����� ���� ���� �� ������� ������ ����� ������';
          end;
   shrink:begin
            path:=dm.GetSystemValue(20)+fn;
            Lpath.Caption:='���� ���� ��� ���� ';
            ErrorMessage:='����� ����� ���� ���� ��� ��� ��������';
          end;
  end;
end;
procedure TBackupRestore.EPathChange(Sender: TObject);
begin
  inherited;
path:=  EPath.text;
end;

procedure TBackupRestore.BitBtn1Click(Sender: TObject);
 var i: byte;
begin
  inherited;
 ProgressBar1.Position:=40;


  if mode=shrink then
    begin
     progressbar1.Position:=40;
     Exec_ysp_shrink('YArchive',path);
     progressbar1.Position:=80;
     Exec_ysp_shrink('YArchive',path);
    end
   else
     Exec_ysp_Backup('YArchive',path);
    progressbar1.Position:=100;
  ShowMsgString(SuccessMessage);

 if mode=Backup then
   dm.SetSystemValue(13,true);
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

procedure TBackupRestore.SpeedButton1Click(Sender: TObject);
var s:string;
begin
  inherited;
OpenDialog.InitialDir:=path;
if mode<>restor then
  begin
  if SelectDirectory('       ����� ���� ����: ��� ����� ��������� ����� ','',s) then
   begin
    path:=s+'\'+Fn;
    EPath.Text:=path;
   end
  end
  else
   if  OpenDialog.Execute then
    begin
     path:=OpenDialog.FileName;
     EPath.Text:=path;
    end;
end;

procedure TBackupRestore.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  case mode of
   backup: dm.SetSystemValue(19,ExtractFilePath(path));
   shrink: dm.SetSystemValue(20,ExtractFilePath(path));
  end;
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
