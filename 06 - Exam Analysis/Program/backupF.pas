unit backupF;

interface

uses
  Classes, BaseUnit, Dialogs, ActnMan, StdCtrls, ComCtrls, Buttons,
  Controls, ActnList, DB,forms,sysutils,dateutils,FileCtrl, ExtActns,
  XPStyleActnCtrls, xpWindow, xpBitBtn;
type
  modeType=(backup,restor,shrink);
  TBackupRestore = class(TMBaseForm)
    EPath: TEdit;
    Lpath: TLabel;
    SpeedButton1: TSpeedButton;
    BitBtn1: TxpBitBtn;
    ProgressBar1: TProgressBar;
    ActionManager: TActionManager;
    Aclose: TAction;
    StaticText1: TLabel;
    OpenDialog: TOpenDialog;
    DataSource1: TDataSource;
    procedure EPathChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure AcloseExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    Procedure SetPath(value:String);
    Procedure SetMode(value:modeType);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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

uses  Dmu, businessLayer, YShamsiDate;

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
  case BackupRestore.mode of
   backup : result:='yeganeh_ExamAnalysis'+Replace(ShamsiString(now),'/','-')+'.ybk';
   shrink : result:='ygd85.log';
   else fn:='';
  end;
end;

procedure TBackupRestore.SetMode(value:modeType);
begin
FMode:=value;
 case value of
   backup:begin
            Lpath.Caption:='„”Ì— ›«Ì· Å‘ Ì»«‰ Ìê«‰Â';
            ErrorMessage:='Œÿ«œ—  ÂÌÂ ‰”ŒÂ Å‘ Ì»«‰ Ìê«‰Â';
            path:='d:\'+fn;
          end;
   restor:begin
            path:='d:\'+fn;
            Lpath.Caption:='„”Ì— ›«Ì· Å‘ Ì»«‰ Ìê«‰Â';
            ErrorMessage:='‘„« ‰„Ì  Ê«‰Ìœ «Ì‰ ⁄„· —« «‰Ã«„ œÂÌœ ·ÿ›« »« ò«—‘‰«” „—»ÊÿÂ „‘Ê—  ‰„«ÌÌœ';
          end;
   shrink:begin
            path:='d:\'+fn;
            Lpath.Caption:='„”Ì— ›«Ì· Â«Ì „Êﬁ  Ìê«‰Â';
            ErrorMessage:='Œÿ«œ— ›‘—œÂ ”«“Ì ›«Ì· Â«Ì »«‰ò «ÿ·«⁄« Ì';
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
   for i:=1 to 5 do
    begin
     progressbar1.Position:=40+10*i;
     Exec_ysp_shrink('ExamAnalysis');
    end
   else
     Exec_ysp_Backup('ExamAnalysis',path);
    progressbar1.Position:=100;
  ShowMsgString(SuccessMessage);

 if mode=shrink then
  DeleteFile(path);
ShowMessage('»« „Ê›ﬁÌ  «‰Ã«„ ‘œ');
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
  if SelectDirectory('        ⁄ÌÌ‰ „”Ì— ›«Ì·: ‰—„ «›“«— « Ê„«”ÌÊ‰ «œ«—Ì Ìê«‰Â','',s) then
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

procedure TBackupRestore.FormCreate(Sender: TObject);
begin
  inherited;
path:='';
end;

end.
