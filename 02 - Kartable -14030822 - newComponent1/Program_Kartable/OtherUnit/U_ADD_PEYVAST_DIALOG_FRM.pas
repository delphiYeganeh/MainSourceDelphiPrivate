unit U_ADD_PEYVAST_DIALOG_FRM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, DB, ADODB, Mask , YShamsiDate,
  ExtCtrls, AdvGlowButton;

type
  TADD_PEYVAST_DIALOG_FRM = class(TForm)
    BitBtn1: TAdvGlowButton;
    BitBtn2: TAdvGlowButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ExtentionTitle: TDBLookupComboBox;
    Path: TEdit;
    SpeedButton1: TAdvGlowButton;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DESCRIPTION: TDBEdit;
    VersionNo: TDBEdit;
    OpenDialog1: TOpenDialog;
    pnlMain: TPanel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  DO_ : String;
  end;

var
  ADD_PEYVAST_DIALOG_FRM: TADD_PEYVAST_DIALOG_FRM;

implementation

uses Dmu, U_SEE_PAYVAST_ERJA_FRM;

{$R *.dfm}

procedure TADD_PEYVAST_DIALOG_FRM.FormShow(Sender: TObject);
begin
ADOQuery1.Open;
end;

procedure TADD_PEYVAST_DIALOG_FRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ADOQuery1.Close;
end;

procedure TADD_PEYVAST_DIALOG_FRM.BitBtn1Click(Sender: TObject);
begin
DO_ := 'POST';
Close;
end;

procedure TADD_PEYVAST_DIALOG_FRM.BitBtn2Click(Sender: TObject);
begin
DO_ := 'CANCEL';
Close;
end;

procedure TADD_PEYVAST_DIALOG_FRM.SpeedButton1Click(Sender: TObject);
var
   i : integer;
   q : TADOQuery;
begin
   inherited;

   if ExtentionTitle.KeyValue<=0 then
   begin
      ShowMessage('���� ��� ����� �� ������ ����');
      exit;
   end;
   q := TADOQuery.Create(Self);
   q.Connection := Dm.YeganehConnection;
   q.Close;
   q.SQL.Clear;
   q.SQL.Add('SELECT * FROM dbo.Extention where ExtentionID = ' + IntToStr(ExtentionTitle.KeyValue) );
   q.Open;

   OpenDialog1.Filter:=UpperCase(q.FieldBYNAME('ExtentionTitle').AsString)+' Files|*.'+q.FieldBYNAME('Extention').AsString;
   if OpenDialog1.Execute then
   begin
         if FileExists(_ApplicationPath+'tmpFile'+ExtractFileExt(OpenDialog1.filename))then
           DeleteFile(pchar(_ApplicationPath+'tmpFile'+ExtractFileExt(OpenDialog1.filename)));
         if CopyFileW(dm.replacePWC(StringToPWide(OpenDialog1.filename,i)), StringToPWide(_ApplicationPath+'tmpFile'+ExtractFileExt(OpenDialog1.filename),i), False) then
            Path.Text :=_ApplicationPath+'tmpFile'+ExtractFileExt(OpenDialog1.filename)
         else if CopyFileW(StringToPWide(OpenDialog1.filename,i), StringToPWide(_ApplicationPath+'tmpFile'+ExtractFileExt(OpenDialog1.filename),i), False) then
            Path.Text := _ApplicationPath+'tmpFile'+ExtractFileExt(OpenDialog1.filename)
         else
            ShowMessage('��� �� ������ ���� ����');
   end;

end;

procedure TADD_PEYVAST_DIALOG_FRM.FormCreate(Sender: TObject);
begin
  Self.Color := _Color1 ;
  Self.Font.Name :=  _MainFont ;
end;

end.
