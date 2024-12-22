unit YArchiveLetterData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, FileCtrl, ExtActns, ActnList, DB, ADODB,
  DBCtrls, Buttons, ComCtrls, xpWindow, xpBitBtn, ExtCtrls, AdvGlowButton;

type
  TFArchiveLetterData = class(TMBaseForm)
    Secretariats: TADOTable;
    Panel1: TPanel;
    Button1: TAdvGlowButton;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    SpeedButton1: TAdvGlowButton;
    Label6: TLabel;
    SpeedButton2: TAdvGlowButton;
    Path: TEdit;
    DriveComboBox1: TDriveComboBox;
    myear: TEdit;
    secID: TDBLookupComboBox;
    BitBtn1: TAdvGlowButton;
    ProgressBar: TProgressBar;
    pnlMain: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FArchiveLetterData: TFArchiveLetterData;

implementation

uses BusinessLayer , Dmu , backupF;

{$R *.dfm}

procedure TFArchiveLetterData.FormCreate(Sender: TObject);
begin
   inherited;
   DriveComboBox1.BiDiMode := bdLeftToRight;
   Secretariats.Open;
   secID.KeyValue:=dm.SecID;
end;

procedure TFArchiveLetterData.SpeedButton1Click(Sender: TObject);
var s:string;
begin
   inherited;
   if SelectDirectory('        ⁄ÌÌ‰ „”Ì— ›«Ì·','',s) then
      if Length(S) = 3 then //Ranjbar
         Path.Text := S+'Dabir_archiveImage'+myear.text+'-'+IntToStr(secID.KeyValue)
      else
         Path.Text := S+'\Dabir_archiveImage'+myear.text+'-'+IntToStr(secID.KeyValue);
end;

procedure TFArchiveLetterData.BitBtn1Click(Sender: TObject);
 var ADOSP:TADOStoredProc;
begin
   inherited;
   //Ranjbar
   if Trim(Path.Text) = '' then
   begin
      MBaseForm.MessageShowString('·ÿ›« ›Ì·œ "›«Ì· Å‘ Ì»«‰" —« „ﬁœ«— œÂÌ ‰„«ÌÌœ', False);
      Exit;
   end;
   //---

   if Exec_ysp_exists_Temp_Database then
      Exec_ysp_DELETE_Temp_Database;
   ProgressBar.Position := 1;

   Exec_Ysp_create_Temp_Database(DriveComboBox1.Drive+':\');
   ProgressBar.Position := 2;

   ADOSP:=Exec_Get_LetterDataIDs(secID.KeyValue,strtoint(myear.text));
   ProgressBar.max := 10+ADOSP.RecordCount;
   ProgressBar.Position:=3;

   with ADOSP do
      while not eof do
      begin
         Exec_Export_LetterData(Fields[0].AsInteger);
         ProgressBar.Position := ProgressBar.Position+1;
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
   ShowMsgString('»« „Ê›ﬁÌ   ’«ÊÌ— »«Ìê«‰Ì ‘œ‰œ');
   ProgressBar.Position:=0;
end;

procedure TFArchiveLetterData.Button1Click(Sender: TObject);
begin
   inherited;
   Close;
end;

procedure TFArchiveLetterData.SpeedButton2Click(Sender: TObject);
begin
   inherited;
   BackupRestore := TBackupRestore.Create(Application);
   BackupRestore.Mode := Backup;
   BackupRestore.ShowModal;
end;

end.
