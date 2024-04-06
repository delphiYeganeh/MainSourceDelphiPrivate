unit RestorLetterData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, FileCtrl, ExtActns, ActnList, DB, ADODB,
  DBCtrls, Buttons, ComCtrls, xpWindow, xpBitBtn, ExtCtrls;

type
  TFRestorLetterData = class(TMBaseForm)
    OpenDialog: TOpenDialog;
    dbinfo: TADOQuery;
    ADOCommand: TADOCommand;
    Panel1: TPanel;
    Button1: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    path: TEdit;
    DriveComboBox1: TDriveComboBox;
    BitBtn1: TBitBtn;
    ProgressBar: TProgressBar;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRestorLetterData: TFRestorLetterData;

implementation

uses Dmu , businessLayer , YShamsiDate ;

{$R *.dfm}

procedure TFRestorLetterData.BitBtn1Click(Sender: TObject);
 var ADOSP:TADOStoredProc;file1,file2:string;
begin
  inherited;
//Ranjbar
  if Trim(Path.Text)='' then
  begin
     MBaseForm.MessageShowString('·ÿ›« ›Ì·œ "›«Ì· Å‘ Ì»«‰" —« „ﬁœ«— œÂÌ ‰„«ÌÌœ', False);
     Exit;
  end;
  //---  
 with dbinfo do
  begin
    Close;
    sql.Clear;
    sql.Add('RESTORE FILELISTONLY FROM DISK = '+ QuotedStr(path.Text)) ;
    Open;
   file1:=QuotedStr(Fields[0].AsString);
   next;
   file2:=QuotedStr(Fields[0].AsString);
 end;
   ProgressBar.Position:=1;
with  ADOCommand do
 begin
  CommandText:=' RESTORE DATABASE yeganeh_tmp_db FROM DISK = '+QuotedStr(path.Text)+
   ' WITH MOVE '+file1 +' TO '+QuotedStr(DriveComboBox1.Drive+':\yeganeh_tmp_db_data.mdf')+
     ', MOVE  '+file2 + ' TO '+QuotedStr(DriveComboBox1.Drive+':\yeganeh_tmp_db_Log.ldf')+',replace ';
  Execute
 end;
   ProgressBar.Position:=9;
   ADOSP:=Exec_Get_tmp_LetterDataIDs;
   ProgressBar.max:=10+ADOSP.RecordCount;
   ProgressBar.Position:=10;

   with ADOSP do
   while not eof do
    begin
      Exec_Import_LetterData(Fields[0].AsInteger);
      ProgressBar.Position:=ProgressBar.Position+1;
      Next;
      Application.ProcessMessages;
    end;

   Exec_ysp_DELETE_Temp_Database;
   ShowMsgString('⁄„·Ì«  »« „Ê›ﬁÌ  Å«Ì«‰ Ì«› !');
end;

procedure TFRestorLetterData.Button1Click(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFRestorLetterData.SpeedButton1Click(Sender: TObject);
begin
  inherited;
 if OpenDialog.Execute then
  path.Text:=OpenDialog.FileName;

end;

procedure TFRestorLetterData.FormCreate(Sender: TObject);
begin
  inherited;
  DriveComboBox1.BiDiMode := bdLeftToRight;
end;

end.
