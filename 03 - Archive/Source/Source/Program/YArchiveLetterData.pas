unit YArchiveLetterData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, FileCtrl, ExtActns, ActnList, DB, ADODB,
  DBCtrls, Buttons, ComCtrls,  xpBitBtn, Menus, ShellCtrls;

type
  TFArchiveLetterData = class(TMBaseForm)
    Button1: TBitBtn;
    path: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    DriveComboBox1: TDriveComboBox;
    Secretariats: TADOTable;
    myear: TEdit;
    Label3: TLabel;
    secID: TDBLookupComboBox;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    BitBtn1: TBitBtn;
    ProgressBar: TProgressBar;
    Label6: TLabel;
    SpeedButton2: TSpeedButton;
    Edit1: TEdit;
    SpeedButton3: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FArchiveLetterData: TFArchiveLetterData;

implementation

uses businessLayer, Dmu, backupF;

{$R *.dfm}

procedure TFArchiveLetterData.FormCreate(Sender: TObject);
begin
  inherited;
  Secretariats.Open;
secID.KeyValue:=dm.SecID;
end;

procedure TFArchiveLetterData.SpeedButton1Click(Sender: TObject);
var s:string;
begin
  inherited;

   if SelectDirectory('        ⁄ÌÌ‰ „”Ì— ›«Ì·: ‰—„ «›“«— « Ê„«”ÌÊ‰ «œ«—Ì '+_yeganeh,'',s) then
       path.Text:=s+'\Dabir_archiveImage'+myear.text+'-'+IntToStr(secID.KeyValue);
end;

procedure TFArchiveLetterData.BitBtn1Click(Sender: TObject);
 var ADOSP:TADOStoredProc;
begin
  inherited;
  if Exec_ysp_exists_Temp_Database then
   Exec_ysp_DELETE_Temp_Database;
  ProgressBar.Position:=1;

//   Exec_Ysp_create_Temp_Database(DriveComboBox1.Drive+':\');
   Exec_Ysp_create_Temp_Database(Trim(Edit1.Text));
  ProgressBar.Position:=2;

   ADOSP:=Exec_Get_LetterDataIDs(secID.KeyValue,strtoint(myear.text));

   ADOSP.CommandTimeout:=20000000;

   ProgressBar.max:=10+ADOSP.RecordCount;
   ProgressBar.Position:=3;

   with ADOSP do
   while not eof do
    begin
      Exec_Export_LetterData(Fields[0].AsInteger);
      ProgressBar.Position:=ProgressBar.Position+1;
      Next;
      Application.ProcessMessages;
    end;

   ProgressBar.Position:=ProgressBar.Position+1;
   Exec_ysp_Backup('yeganeh_tmp_db',path.Text);
   ProgressBar.Position:=ProgressBar.Position+1;
   Exec_ysp_DELETE_Temp_Database;
   ProgressBar.Position:=ProgressBar.Position+1;
   Exec_Delete_Exported_LetterData(secID.KeyValue,strtoint(myear.text));
   ProgressBar.Position:=ProgressBar.Position+5;
   messageShowString(' ’«ÊÌ— »« „Ê›ﬁÌ  »«Ìê«‰Ì ‘œ‰œ',false);
   ProgressBar.Position:=0;
end;

procedure TFArchiveLetterData.Button1Click(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFArchiveLetterData.SpeedButton2Click(Sender: TObject);
begin
  inherited;
 BackupRestore:=TBackupRestore.Create(Application);
 BackupRestore.Mode:=backup;
 BackupRestore.ShowModal;

end;

procedure TFArchiveLetterData.FormShow(Sender: TObject);
begin
   inherited;
   DriveComboBox1.BiDiMode := bdLeftToRight;
end;

procedure TFArchiveLetterData.SpeedButton3Click(Sender: TObject);
var s:string;
begin
  inherited;
  if SelectDirectory('       „”Ì—  ‘òÌ· ›«Ì·Â«Ì „Êﬁ ','',s) then
    Edit1.Text:=s;

end;

end.
