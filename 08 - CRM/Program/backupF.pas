unit backupF;

interface

uses
  Classes, BaseUnit, Dialogs, ActnMan, StdCtrls, ComCtrls, Buttons,
  Controls, ActnList, DB,forms,sysutils,dateutils,FileCtrl, ExtActns,
  XPStyleActnCtrls;
type
  modeType=(backup,restor,shrink);
  TBackupRestore = class(TMBaseForm)
    EPath: TEdit;
    Lpath: TLabel;
    SpeedButton1: TSpeedButton;
    BitBtn1: TBitBtn;
    ProgressBar1: TProgressBar;
    ActionManager: TActionManager;
    Aclose: TAction;
    StaticText1: TStaticText;
    OpenDialog: TOpenDialog;
    procedure EPathChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure AcloseExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    Procedure SetPath(value:String);
    Procedure SetMode(value:modeType);
    procedure SpeedButton1Click(Sender: TObject);
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

uses  Dmu;

{$R *.dfm}
var
sqlCommand,
ErrorMessage,
SuccessMessage: string;
procedure TBackupRestore.SetPath(value:String);
begin
FPath:=value;
 case Mode of
   backup:begin
            sqlCommand:='backup database y_crm to disk='''+path+'''';
            SuccessMessage:='("'+path+'")���� ������� �� ������ ���� ��';
          end;
   restor:begin
            sqlCommand:='restore database Y_crm from disk='''+path+'''';;
            SuccessMessage:='���� ������� �� ������ ������ ��';
          end;
   shrink:begin
            sqlCommand:=' backup log Y_crm to disk='''+path+
                        ''' dbcc shrinkfile(1,1)'+
                        ' dbcc shrinkfile(2,1)';
            SuccessMessage:='���� ��� ��� �������� �� ������  ����� ���� ��';
          end;
  end;
end;
function fn:string;
begin
  case BackupRestore.mode of
   backup : result:='CRM'+copy(_Today,3 ,2)+'-'+copy(_Today,6 ,2)+'-'+copy(_Today,9 ,2)+'-h'+inttostr(HourOf(now))+'.ybk';
   shrink : result:='ygd83.log';
   else fn:='';
  end;
end;

procedure TBackupRestore.SetMode(value:modeType);
begin
FMode:=value;
 case value of
   backup:begin
            Lpath.Caption:='���� ���� ������� ����';
            ErrorMessage:='����� ���� ���� ������� ����';
            path:='d:\'+fn;
          end;
   restor:begin
            path:='d:\'+fn;
            Lpath.Caption:='���� ���� ������� ����';
            ErrorMessage:='��� ��� ������ ��� ��� �� ����� ���� ���� �� ������� ������ ����� ������';
          end;
   shrink:begin
            path:='d:\'+fn;
            Lpath.Caption:='���� ���� ��� ���� ����';
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


  dm.ExecCommand(sqlCommand);
  if mode=shrink then
   for i:=1 to 4 do
    begin
     progressbar1.Position:=40+10*i;
     dm.ExecCommand(sqlCommand);
    end;
    progressbar1.Position:=100;
  ShowMessage(SuccessMessage);

 if mode=shrink then
  DeleteFile(path);

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
  if SelectDirectory('       ����� ���� ����: ��� ����� ��������� ����� ����','',s) then
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

end.
