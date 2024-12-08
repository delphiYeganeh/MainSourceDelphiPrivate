unit UloadPDF;

interface

uses
  math,Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DBCtrls, DB, ToolWin, ActnMan, ActnCtrls, ADODB,
  ActnList, StdCtrls, Buttons, ExtDlgs, DBActns,  ExtCtrls,
  ComCtrls, ActnMenus, OleCtnrs, Spin, OleServer,Clipbrd,
  ExtActns, WordXP, XPStyleActnCtrls, YDbgrid,  xpBitBtn,
  OleCtrls, AcroPDFLib_TLB, Menus;

type
  TFLoadPDF = class(TMBaseForm)
    Get_Letter_PDF: TADODataSet;
    ActionManager1: TActionManager;
    OpenFile: TAction;
    Aclose: TAction;
    Adelete: TDataSetDelete;
    Get_Letter_PDFLetterDataID: TAutoIncField;
    Get_Letter_PDFLetterID: TIntegerField;
    Get_Letter_PDFPageNumber: TWordField;
    Get_Letter_PDFImage: TBlobField;
    Get_Letter_PDFextention: TWordField;
    OpenDialog: TOpenDialog;
    ButtonScroll: TPanel;
    BitBtn9: TBitBtn;
    Bdelete: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BopenFile: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure OpenFileExecute(Sender: TObject);
    procedure AcloseExecute(Sender: TObject);
    Procedure RefreshPicture;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SetRReadOnly(value:boolean);
    procedure AdeleteExecute(Sender: TObject);
    procedure BopenFileClick(Sender: TObject);
    procedure BdeleteClick(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
    FRReadOnly:boolean;
  public
   LetterID:integer;
   property RReadOnly : boolean read fRReadOnly write SetRReadOnly;

    { Public declarations }
  end;

var
  FLoadPDF: TFLoadPDF;

implementation

uses Dmu,  UMain,   businessLayer,   YShamsiDate;
{$R *.dfm}

procedure TFLoadPDF.SetRReadOnly(value:boolean);
begin
  fRReadOnly:=value;
  if value then
   begin
    OpenFile.visible:=false;
    Adelete.visible:=false;

  BopenFile.Enabled:=false;
  Bdelete.Enabled:=false;

    OpenFile.Enabled:=false;
    Adelete.Enabled:=false;
   end;
end;

procedure TFLoadPDF.FormShow(Sender: TObject);
begin
  inherited;
RefreshPicture;
end;



procedure TFLoadPDF.RefreshPicture;
begin
  with Get_Letter_PDF,Parameters do
   begin
    Close;
     ParamByName('@LetterID').value:=LetterID;
    Open;
  {  if recordcount>0 then
     begin
       Get_Letter_PDFImage.SaveToFile(_TempPath +'temp.pdf');
     //  AcroPDF.LoadFile(_TempPath +'temp.pdf');
     //  AcroPDF.Show;
     end
     else
     AcroPDF.hide;  }
   end;

end;



procedure TFLoadPDF.OpenFileExecute(Sender: TObject);
begin
  inherited;
if OpenDialog.Execute then
with Get_Letter_PDF do
 begin
   if recordcount>0 then Edit else Insert;

   FieldByName('LetterID').Value:=LetterID;
   FieldByName('PageNumber').Value:=0;
   FieldByName('extention').Value:=5;
   Get_Letter_PDFImage.LoadFromFile(OpenDialog.FileName);
   Post;

{   AcroPDF.LoadFile(OpenDialog.FileName);
   AcroPDF.Show;  }
 end;
end;


procedure TFLoadPDF.AcloseExecute(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFLoadPDF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
   DeleteFile(_TempPath +'temp.pdf');
end;

procedure TFLoadPDF.AdeleteExecute(Sender: TObject);
begin
  inherited;
 if messageShow(39,true) then
   begin
    Exec_delete_LetterData(Get_Letter_PDFLetterDataID.AsInteger);
   { AcroPDF.hide;  }
   end;

end;





procedure TFLoadPDF.BopenFileClick(Sender: TObject);
begin
  inherited;
  OpenFile.Execute;
end;

procedure TFLoadPDF.BdeleteClick(Sender: TObject);
begin
  inherited;
 Adelete.Execute;
end;

procedure TFLoadPDF.BitBtn9Click(Sender: TObject);
begin
  inherited;
 Aclose.Execute;
end;

procedure TFLoadPDF.BitBtn4Click(Sender: TObject);
begin
  inherited;
  Close;
  MainForm.AAnswer.Execute;
end;


procedure TFLoadPDF.BitBtn5Click(Sender: TObject);
begin
  inherited;
close;
 MainForm.AnewRecommite.Execute;

end;


procedure TFLoadPDF.BitBtn6Click(Sender: TObject);
begin
  inherited;
close;
 MainForm.ADoCommite.Execute;
end;

end.


