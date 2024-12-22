unit UImportFax;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, DB, ADODB, DBCtrls, ExtActns, ActnList,
  Buttons,FileCtrl, YFillPictureFields, xpWindow, xpBitBtn, ExtCtrls;

type
  TFImportFax = class(TMBaseForm)
    FdataSet: TADODataSet;
    FdataSetLetterDataID: TAutoIncField;
    FdataSetLetterID: TIntegerField;
    FdataSetPageNumber: TWordField;
    FdataSetImage: TBlobField;
    FdataSetextention: TWordField;
    Panel1: TPanel;
    Panel2: TPanel;
    Button2: TBitBtn;
    Label4: TLabel;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    Label7: TLabel;
    Edit1: TEdit;
    Button1: TBitBtn;
    Memo1: TMemo;
    ComboBox1: TComboBox;
    procedure Button2Click(Sender: TObject);
    procedure FindLetterData(FileName:string);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    Procedure Fill;
  private
    { Private declarations }
  public
    { Public declarations }
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
if SelectDirectory(_yeganeh,'c:',s) then
  Edit1.Text:=s+'\';
end;

procedure TFImportFax.FindLetterData(FileName:string);
var
   IndicatorID,LetterID:integer;
begin
   IndicatorID:=dm.LastIndicatorID(1,2);
   LetterID:=Exec_insert_Letter(IndicatorID,86{//-dm.CurrentMyear},Dm.SecId,1,2,FileName,_UserID,_Today,dm.GetServerTime);
   Exec_insert_LetterData(LetterID,1,ComboBox1.ItemIndex+1);
   With FdataSet do
   begin
      close;
      Parameters.ParamByName('LetterID').Value:=LetterID;
      Open;
      Edit;
      FdataSetImage.LoadFromFile(Folder+FileName+'.'+ComboBox1.Text);
      Post;
   end;
   OpenedFiles:=OpenedFiles+','+FileName;
end;


Procedure TFImportFax.Fill;
var Find,FileName: string;
  sr: TSearchRec;
  FileAttrs: Integer;
begin
  inherited;
   if Folder[length(Folder)]<>'\' then
      Folder:=Folder+'\';
FileName:=Folder + '*.'+ComboBox1.Text;
  FileAttrs := 0;
  OpenedFiles:='';
  if FindFirst(fileName, FileAttrs, sr) = 0 then
    begin
      repeat
       Find:=ExtractFileName(sr.Name);
       Find:=COPY(Find,1,LENGth(Find)-4);
       FindLetterData(find); // À»  ‰«„Â
      until FindNext(sr) <> 0;
    end;
 FindClose(sr);
end;

procedure TFImportFax.Button1Click(Sender: TObject);
begin
  inherited;
   if not messageShow(46,True) then
    exit;
      Folder:=edit1.Text;
      Fill;  //Ê«—œ ﬂ—œ‰ «ÿ·«⁄« 
      Memo1.Text:=OpenedFiles;
end;

end.
