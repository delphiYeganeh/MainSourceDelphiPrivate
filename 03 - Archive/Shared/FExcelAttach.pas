unit FExcelAttach;

interface

uses
  Word2000,  YDbgrid, BaseUnit, ADODB, DB, OleServer, StdCtrls, Controls,
  DBCtrls, Classes, ActnList,Forms,sysUtils,dialogs, ExtActns, Grids,
  DBGrids, ExtCtrls, WordXP, Buttons, Mask, xpWindow, xpBitBtn, ExcelXP;

type
  TFExportToExecl = class(TMBaseForm)
    WordDocument: TWordDocument;
    Timer1: TTimer;
    OpenDialog: TOpenDialog;
    ExpToWord: TxpBitBtn;
    OpenFile: TxpBitBtn;
    Button1: TxpBitBtn;
    Label3: TLabel;
    ExcelApplication: TExcelApplication;
    procedure ExpToWordClick(Sender: TObject);
procedure WordApplicationDocumentBeforeClose(ASender: TObject;
  const Doc: _Document; var Cancel: WordBool);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure OpenFileClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    LetterID:integer;
    LetterFormat: byte;
    ReadOnly: boolean;
 procedure SaveAs;
    procedure MakePage;
  end;

var
  FExportToExecl: TFExportToExecl;

implementation

uses Dmu, UMain, businessLayer, YShamsiDate;

{$R *.dfm}
var ItemIndex: OleVariant;
 En :integer;
procedure TFExportToExecl.SaveAs;
var fileName:OleVariant;
var fals,tru:OleVariant;
begin
  inherited;
  fileName:=_TempPath+_ExcelFileName;
  ExcelApplication.ActiveWorkbook.SaveAs(filename,fals,fals,fals,fals,fals,fals,fals,fals,fals,fals,fals,0);
end;

procedure TFExportToExecl.ExpToWordClick(Sender: TObject);
 var i: byte;
begin
if dm.LetterTemplate.RecordCount= 0 then
  begin
    ShowMessage('«» œ« ﬁ«·» ‰«„Â —« «‰ Œ«» ò‰Ìœ');
    exit;
  end;
 dm.RefreshTemplate;

    MakePage;

    ExcelApplication.Visible[0] :=true;

 SaveAs;
 Enabled:=false;
 end;


procedure TFExportToExecl.MakePage;
var itemindex,olv,emp,f,fals,tru:OleVariant;
i: byte;
begin
    emp:='';
    fals:=false;
    tru:=true;
    olv:=wdOpenFormatAuto;

    ExcelApplication.Caption := '‰—„ «›“«— œ»Ì—Œ«‰Â Ìê«‰Â';

   with ExcelApplication do
    begin
     DM.SaveTemplateToFile;
     ChDir(_TempPath);
     f:=_ExcelFileName;
     _Word_Is_Opened:=true;
     Workbooks.Open(_ExcelFileName,fals,fals,fals,emp,emp,fals,emp,emp,olv,emp,tru,tru,tru,tru,0);

  end;{with wordapplication}


end;
procedure TFExportToExecl.WordApplicationDocumentBeforeClose(ASender: TObject;
  const Doc: _Document; var Cancel: WordBool);

begin
  inherited;
  if  UpperCase(ExcelApplication.ActiveWorkbook.Name)<>_ExcelFileName then
   exit;

    SaveAs;
    Timer1.Enabled:=true;
    ExcelApplication.Disconnect;
end;

procedure TFExportToExecl.Button1Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFExportToExecl.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DeleteFile(_TempPath+_ExcelFileName);
  ExcelApplication.Disconnect;
end;

procedure TFExportToExecl.Timer1Timer(Sender: TObject);
begin
  inherited;
try
  with dm,Get_LetterWordFile do
   begin
     if not Active then Open;
     Insert;
     Get_LetterWordFileLetterID.AsInteger:=LetterID;
     Get_LetterWordFilePageNumber.AsInteger:=1;
     Get_LetterWordFileextention.AsInteger:=3;
     Get_LetterWordFileImage.LoadFromFile(_TempPath+_ExcelFileName); 
     post;
     _Word_Is_Opened :=false;
     Timer1.Enabled:=false
   end;
close;
except dm.Get_LetterWordFile.Cancel end;
end;
procedure TFExportToExecl.OpenFileClick(Sender: TObject);
var s: WideString;
begin
  inherited;
if OpenDialog.Execute then
 begin
  with dm,Get_LetterWordFile do
   begin
     if not Active then Open;
     if  not (state  in [dsinsert,dsedit]) then Insert;
     Get_LetterWordFileLetterID.AsInteger:=LetterID;
     Get_LetterWordFilePageNumber.AsInteger:=1;
     Get_LetterWordFileextention.AsInteger:=4;
     s:=OpenDialog.FileName;
     Get_LetterWordFileImage.LoadFromFile(s);
     post;
   end;
dm.ExecGet_LetterWordFile(Letterid,    ReadOnly);
end;
close;

end;

end.
