unit UImportFax;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, DB, ADODB, DBCtrls, ExtActns, ActnList,
  Buttons,FileCtrl, YFillPictureFields, xpWindow, xpBitBtn, ExtCtrls, Menus;

type
  TFImportFax = class(TMBaseForm)
    Label4: TLabel;
    EFolder: TEdit;
    Label5: TLabel;
    DoBtn: TxpBitBtn;
    Button2: TxpBitBtn;
    SpeedButton1: TSpeedButton;
    Memo: TMemo;
    Label7: TLabel;
    FdataSet: TADODataSet;
    FdataSetLetterDataID: TAutoIncField;
    FdataSetLetterID: TIntegerField;
    FdataSetPageNumber: TWordField;
    FdataSetImage: TBlobField;
    FdataSetextention: TWordField;
    Extention: TComboBox;
    procedure Button2Click(Sender: TObject);
    procedure MoveFile(FileName:string);
    procedure FindLetterData(FileName:string);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DoBtnClick(Sender: TObject);
    Procedure Fill;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    SrcPath,DestPath:string;
    MoveAfter: boolean;
  end;

var
  FImportFax: TFImportFax;

implementation

uses Dmu, UMain, businessLayer, DateUtils;

{$R *.dfm}
var
  OpenedFiles,Folder:string;


procedure TFImportFax.Button2Click(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFImportFax.SpeedButton1Click(Sender: TObject);
 var s: string;
begin
  inherited;
if SelectDirectory('Ìê«‰Â','c:',s) then
  EFolder.Text:=s+'\';
end;

procedure TFImportFax.FindLetterData(FileName:string);
var
  IndicatorID,LetterID:integer;
begin
  IndicatorID:=dm.LastIndicatorID(1,2);
  LetterID:=Exec_insert_ReciveLetter(IndicatorID,dm.CurrentMyear,Dm.SecId,1,2,'›ò” : ' + FileName,_UserID,
  dm.today,Exec_get_NowTime,dm.FaxOrgid);
  Exec_insert_LetterData(LetterID,1,Extention.ItemIndex+1);
  With FdataSet do
  begin
    close;
    Parameters.ParamByName('LetterID').Value:=LetterID;
    Open;
    Edit;
    FdataSetImage.LoadFromFile(Folder+FileName);
    Post;
  end;
  OpenedFiles:=OpenedFiles+','+FileName;
end;

procedure TFImportFax.MoveFile(FileName:string);
begin
 CopyFile(pchar(Folder+FileName),pchar(folder+'yeganeh_archive\'+FileName),False);
 DeleteFile(pchar(Folder+FileName));
end;


Procedure TFImportFax.Fill;
var Find,FileName: string;
  sr: TSearchRec;
  FileAttrs: Integer;
begin
  inherited;
   if Folder[length(Folder)]<>'\' then
      Folder:=Folder+'\';
FileName:=Folder + '*.'+Extention.Text;
  FileAttrs := 0;
  OpenedFiles:='';
  if FindFirst(fileName, FileAttrs, sr) = 0 then
    begin
      repeat
       Find:=ExtractFileName(sr.Name);
       FindLetterData(find);
        if MoveAfter then MoveFile(Find);
      until FindNext(sr) <> 0;
    end;
 FindClose(sr);

end;

procedure TFImportFax.DoBtnClick(Sender: TObject);
begin
  inherited;
  if  not MoveAfter then
   begin
    if not messageShow(46,True) then
     exit;
   end
  else
   CreateDir(EFolder.Text+'\yeganeh_Archive');
      Folder:=EFolder.Text;
      Fill;
      Memo.Text:=OpenedFiles;
end;

procedure TFImportFax.FormCreate(Sender: TObject);
begin
  inherited;
MoveAfter:=true;
end;

end.
