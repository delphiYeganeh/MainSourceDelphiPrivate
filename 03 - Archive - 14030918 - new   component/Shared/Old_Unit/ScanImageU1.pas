unit ScanImageU1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DBCtrls, DB, ToolWin, ActnMan, ActnCtrls, ADODB,
  ActnList, StdCtrls, Buttons, ExtDlgs, DBActns, AcquireImage, ExtCtrls,
  Grids, DBGrids,Jpeg,   Mask,Printers, QuickRpt, QRCtrls,
  ComCtrls, ActnMenus, OleCtnrs, Spin, WordXP, OleServer,Clipbrd,
  ExtActns, XPStyleActnCtrls,  OleCtrls, {MODI_TLB,} ScanLibCtl_TLB, xpWindow,
  MODI_TLB;

type
  TTifImageF = class(TForm)
    OpenPictureDialog: TOpenPictureDialog;
    ActionManager1: TActionManager;
    Scan: TAction;
    OpenFile: TAction;
    SaveAs: TAction;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    Aclose: TAction;
    NextPage: TAction;
    PreviosPage: TAction;
    NewPage: TAction;
    AEDit: TDataSetEdit;
    Adelete: TDataSetDelete;
    Aprintt: TAction;
    AClear: TAction;
    Action1: TAction;
    ColorDialog: TColorDialog;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    Get_LetterTifFile: TADODataSet;
    SaveDialog: TSaveDialog;
    Get_LetterTifFileLetterDataID: TAutoIncField;
    Get_LetterTifFileLetterID: TIntegerField;
    Get_LetterTifFilePageNumber: TWordField;
    Get_LetterTifFileImage: TBlobField;
    Get_LetterTifFileextention: TWordField;
    ImgScan: TImgScan;
    ScrollBox4: TScrollBox;
    RadioGroup1: TGroupBox;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    RadioGroup2: TGroupBox;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    Panel2: TPanel;
    SpeedButton5: TSpeedButton;
    SpeedButton15: TSpeedButton;
    LPageNumber: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    SpinEdit: TSpinEdit;
    Panel1: TPanel;
    ProgressBar: TProgressBar;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn10: TBitBtn;
    Panel4: TPanel;
    BitBtn18: TBitBtn;
    EditPanel: TPanel;
    BitBtn12: TBitBtn;
    BitBtn17: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    RecommitePanel: TPanel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn14: TBitBtn;
    MiDocView: TMiDocView;
    procedure FormShow(Sender: TObject);
    procedure RefreshPicture;
    procedure AcloseExecute(Sender: TObject);
    Procedure saveTif;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn14Click(Sender: TObject);
    procedure ImgScanScanUIDone(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SpinEdit2Change(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpinEditChange(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
  private
    { Private declarations }
  public
   LetterID:integer;
    { Public declarations }
    ReadOnly: Boolean;
  end;

var
  TifImageF: TTifImageF;

implementation

Uses InsertText  , Dmu , UMain;

var tifZoom:integer;

{$R *.dfm}

var Drown:boolean;
    currenttext:string;
procedure TTifImageF.RefreshPicture;
begin
  with Get_LetterTifFile,Parameters,Get_LetterTifFile do
   begin
    Close;
    ParamByName('@Letterid').Value:=LetterID;
    Open;
   end;

end;

procedure TTifImageF.FormShow(Sender: TObject);
begin
  inherited;
   MiDocView.FileName:='' ;
drown:=false;
 ReadOnly:=false;
  ImgScan.Image:=_TempPath+'temp.tif';
EditPanel.Visible:=not ReadOnly;



   RefreshPicture;
  if Get_LetterTifFile.RecordCount>0 then
     begin
       Get_LetterTifFileImage.SaveToFile(_TempPath+'temp.tif');
       MiDocView.FileName:=_TempPath+'temp.tif' ;
       MiDocView.SetScale(1,1);
       LPageNumber.Caption:=IntToStr(MiDocView.NumPages);

     end;
end;

procedure TTifImageF.AcloseExecute(Sender: TObject);
begin
  inherited;
close;
end;

procedure TTifImageF.saveTif;
begin
   inherited;
   ProgressBar.Show;
   ProgressBar.Position:=3;
   MiDocView.FileName:='';
   Get_LetterTifFile.Edit;
   Get_LetterTifFileLetterID.AsInteger:=LetterID;

   Get_LetterTifFileExtention.AsInteger:=2;
   Get_LetterTifFileImage.LoadFromFile(_TempPath+'temp.tif');
   MiDocView.FileName:=_TempPath+'temp.tif';
    LPageNumber.Caption:=IntToStr(MiDocView.NumPages);

   ProgressBar.Position:=7;
   dm.YeganehConnection.Execute('update letter set  NumberOfPage='+IntToStr(MiDocView.NumPages)+' where letterid='+IntToStr(LetterID));
   Get_LetterTifFile.Post;
   ProgressBar.Hide;
end;

procedure TTifImageF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
   MiDocView.FileName:='';
   DeleteFile(_TempPath+'temp.tif');

end;

procedure TTifImageF.BitBtn14Click(Sender: TObject);
begin
  inherited;
  MiDocView.FileName:='';
 DeleteFile(_TempPath+'temp.tif');
 ImgScan.StartScan;
  MiDocView.FileName:=_TempPath+'temp.tif';
  MiDocView.DocViewMode:=1;
  LPageNumber.Caption:=IntToStr(MiDocView.NumPages);
  MiDocView.Repaint;
end;

procedure TTifImageF.ImgScanScanUIDone(Sender: TObject);
begin
  inherited;
  MiDocView.FileName:=_TempPath+'temp.tif'
end;

procedure TTifImageF.BitBtn12Click(Sender: TObject);
begin
  inherited;
 saveTif;
 Close;
end;


procedure TTifImageF.BitBtn17Click(Sender: TObject);
begin
  inherited;
 MiDocView.FileName:='';
  if OpenPictureDialog.Execute then
    begin
      CopyFile(pchar(OpenPictureDialog.FileName),pchar(_TempPath+'temp.tif'),false);
      saveTif;
    end;
  MiDocView.FileName:=_TempPath+'temp.tif';
  LPageNumber.Caption:=IntToStr(MiDocView.NumPages);

end;

procedure TTifImageF.BitBtn18Click(Sender: TObject);
begin
  inherited;
  MiDocView.FileName:='';
  if SaveDialog.Execute then
    begin
      CopyFile(pchar(_TempPath+'temp.tif'),pchar(SaveDialog.FileName+'.tif'),false);
    end;
  MiDocView.FileName:=_TempPath+'temp.tif';
  LPageNumber.Caption:=IntToStr(MiDocView.NumPages);

end;

procedure TTifImageF.SpeedButton8Click(Sender: TObject);
begin
  inherited;
  MiDocView.DocViewMode:=3;

end;

procedure TTifImageF.SpeedButton9Click(Sender: TObject);
begin
  inherited;
   MiDocView.DocViewMode:=4;

end;

procedure TTifImageF.SpeedButton7Click(Sender: TObject);
begin
  inherited;
   MiDocView.DocViewMode:=1;

end;

procedure TTifImageF.SpeedButton6Click(Sender: TObject);
begin
  inherited;
   MiDocView.DocViewMode:=0;
end;

procedure TTifImageF.SpeedButton12Click(Sender: TObject);
begin
  inherited;
   MiDocView.FitMode:=0;

end;

procedure TTifImageF.SpeedButton13Click(Sender: TObject);
begin
  inherited;
   MiDocView.FitMode:=1;

end;

procedure TTifImageF.SpeedButton14Click(Sender: TObject);
begin
  inherited;
   MiDocView.FitMode:=2;

end;

procedure TTifImageF.Button2Click(Sender: TObject);
begin
  inherited;
   MiDocView.SetScale(0.5,0.5);
end;

procedure TTifImageF.SpinEdit2Change(Sender: TObject);
begin
  inherited;
    MiDocView.SetScale(SpinEdit.Value/100,SpinEdit.Value/100);
end;

procedure TTifImageF.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  SpinEdit.Value:=SpinEdit.Value+10;
end;

procedure TTifImageF.SpeedButton15Click(Sender: TObject);
begin
  inherited;
  if SpinEdit.Value> 10 then
    SpinEdit.Value:=SpinEdit.Value-10;

end;

procedure TTifImageF.BitBtn2Click(Sender: TObject);
begin
  inherited;
 ImgScan.ShowSelectScanner;
end;

procedure TTifImageF.BitBtn3Click(Sender: TObject);
begin
  inherited;
 saveTif;

end;

procedure TTifImageF.BitBtn1Click(Sender: TObject);
begin
  inherited;
if MessageDlg('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœø',mtConfirmation,[mbYes,mbno],0)<>mryes then exit;

 MiDocView.FileName:='';
Get_LetterTifFile.Delete;
end;

procedure TTifImageF.SpinEditChange(Sender: TObject);
begin
  inherited;
    MiDocView.SetScale(SpinEdit.Value/100,SpinEdit.Value/100);

end;

procedure TTifImageF.BitBtn10Click(Sender: TObject);
begin
  inherited;
   Get_LetterTifFile.Next;
    MiDocView.FileName:='';
   Get_LetterTifFileImage.SaveToFile(_TempPath+'temp.tif');
    MiDocView.FileName:=_TempPath+'temp.tif' ;
    LPageNumber.Caption:=IntToStr(MiDocView.NumPages);
end;

procedure TTifImageF.BitBtn8Click(Sender: TObject);
begin
   inherited;
   Get_LetterTifFile.Prior;
   MiDocView.FileName:='';
   Get_LetterTifFileImage.SaveToFile(_TempPath+'temp.tif');
   MiDocView.FileName:=_TempPath+'temp.tif' ;
   LPageNumber.Caption:=IntToStr(MiDocView.NumPages);
end;

procedure TTifImageF.BitBtn7Click(Sender: TObject);
begin
  inherited;
Get_LetterTifFile.Insert;
   MiDocView.FileName:='' ;

end;

end.


