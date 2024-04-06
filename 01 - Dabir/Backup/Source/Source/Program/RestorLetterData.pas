unit RestorLetterData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, FileCtrl, ExtActns, ActnList, DB, ADODB,
  DBCtrls, Buttons, ComCtrls,  xpBitBtn, Menus;

type
  TFRestorLetterData = class(TMBaseForm)
    Button1: TBitBtn;
    path: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    DriveComboBox1: TDriveComboBox;
    SpeedButton1: TSpeedButton;
    BitBtn1: TBitBtn;
    ProgressBar: TProgressBar;
    OpenDialog: TOpenDialog;
    dbinfo: TADOQuery;
    ADOCommand: TADOCommand;
    Edit1: TEdit;
    SpeedButton2: TSpeedButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRestorLetterData: TFRestorLetterData;

implementation

uses businessLayer, Dmu;

{$R *.dfm}

procedure TFRestorLetterData.BitBtn1Click(Sender: TObject);
 var ADOSP:TADOStoredProc;file1,file2:string;
begin
  inherited;

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
   ' WITH MOVE '+file1 +' TO '+QuotedStr({DriveComboBox1.Drive}Edit1.Text+'\yeganeh_tmp_db_data.mdf')+
     ', MOVE  '+file2 + ' TO '+QuotedStr({DriveComboBox1.Drive}Edit1.Text+'\yeganeh_tmp_db_Log.ldf')+',replace ';
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
   messageShowString('»« „Ê›ﬁÌ   ’«ÊÌ— »«“Ì«»Ì ‘œ‰œ',false);
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

procedure TFRestorLetterData.FormShow(Sender: TObject);
begin
   inherited;
//   DriveComboBox1.BiDiMode := bdLeftToRight;
   Edit1.BiDiMode:= bdLeftToRight;
end;

procedure TFRestorLetterData.SpeedButton2Click(Sender: TObject);
var
  s : String;
begin
  inherited;
  if SelectDirectory('       „”Ì—  ‘òÌ· ›«Ì·Â«Ì „Êﬁ ','',s) then
    Edit1.Text:=s;

end;

end.
