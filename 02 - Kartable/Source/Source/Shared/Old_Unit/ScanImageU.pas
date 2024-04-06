unit ScanImageU;

interface

uses
  math,Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DBCtrls, DB, ToolWin, ActnMan, ActnCtrls, ADODB,
  ActnList, StdCtrls, Buttons, ExtDlgs, DBActns, AcquireImage, ExtCtrls,
  Grids, DBGrids,Jpeg,   Mask,Printers, QuickRpt, QRCtrls,
  ComCtrls, ActnMenus, OleCtnrs, Spin, Word2000, OleServer,Clipbrd,
  ExtActns, WordXP, shellApi,XPStyleActnCtrls, YDbgrid, xpWindow, xpBitBtn,
  MODI_TLB, OleCtrls, ScanLibCtl_TLB;

type
  TScanImageF = class(TMBaseForm)
    Get_LetterJpgFile: TADODataSet;
    OpenPictureDialog: TOpenPictureDialog;
    SavePictureDialog: TSavePictureDialog;
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
    ImageScroll: TScrollBox;
    ButtonScroll: TScrollBox;
    Bpost: TBitBtn;
    EditBitBtn: TBitBtn;
    ScanBitBtn: TBitBtn;
    BPrint: TBitBtn;
    CancelBitBtn: TBitBtn;
    BopenFile: TBitBtn;
    BSave: TBitBtn;
    BNextPage: TBitBtn;
    BPrevious: TBitBtn;
    Bnext: TBitBtn;
    Action1: TAction;
    LetterImage: TImage;
    ColorDialog: TColorDialog;
    Panel1: TPanel;
    SpeedButton1: TBitBtn;
    FitToPage: TBitBtn;
    SpeedButton3: TBitBtn;
    SpeedButton4: TBitBtn;
    ProgressBar: TProgressBar;
    ComboBox1: TComboBox;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Timer: TTimer;
    Get_LetterJpgFileLetterDataID: TAutoIncField;
    Get_LetterJpgFileLetterID: TIntegerField;
    Get_LetterJpgFilePageNumber: TWordField;
    Get_LetterJpgFileImage: TBlobField;
    Get_LetterJpgFileextention: TWordField;
    Bdelete: TBitBtn;
    AcquireImage: TAcquireImage;
    SpeedButton5: TBitBtn;
    SpeedButton7: TBitBtn;
    RecommitePanel: TPanel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Get_LetterJpgFileLastUpdate: TDateTimeField;
    xpBitBtn1: TBitBtn;
    xpBitBtn2: TBitBtn;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    Action5: TAction;
    Action6: TAction;
    Action8: TAction;
    Action9: TAction;
    Action10: TAction;
    Action11: TAction;
    WritePan: TPanel;
    Label1: TLabel;
    SpeedButton6: TSpeedButton;
    SpeedButton8: TSpeedButton;
    Label2: TLabel;
    Penwidth: TSpinEdit;
    ColorPan: TPanel;
    Button1: TBitBtn;
    Panel5: TPanel;
    xpBitBtn3: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure OpenFileExecute(Sender: TObject);
    procedure ScanExecute(Sender: TObject);
    procedure SetNullExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AcloseExecute(Sender: TObject);
    Procedure RefreshPicture;
    function HasPicture:boolean;
    function NumberOfPages:byte;
    procedure loadImage;
    procedure SaveImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DataSetCancel1Execute(Sender: TObject);
    procedure NextPageExecute(Sender: TObject);
    procedure NewPageExecute(Sender: TObject);
    procedure PreviosPageExecute(Sender: TObject);
    procedure AprinttExecute(Sender: TObject);
    procedure DataSetPost1Execute(Sender: TObject);
    procedure AEDitExecute(Sender: TObject);
    procedure EnableScan(t:boolean);
    procedure SaveAsExecute(Sender: TObject);
    procedure SetRReadOnly(value:boolean);
    procedure LetterImageMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel1Click(Sender: TObject);
    procedure PenwidthChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure LetterImageMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FitImage(FWidth,Fheight :integer);
    procedure FitWidth(FWidth :integer);
    procedure FitToPageClick(Sender: TObject);
    procedure SetZoom(Value:word);
    procedure percentChange(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure ComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TimerTimer(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure AdeleteExecute(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure BpostClick(Sender: TObject);
    procedure ScanBitBtnClick(Sender: TObject);
    procedure EditBitBtnClick(Sender: TObject);
    procedure CancelBitBtnClick(Sender: TObject);
    procedure BopenFileClick(Sender: TObject);
    procedure BNextPageClick(Sender: TObject);
    procedure BPreviousClick(Sender: TObject);
    procedure BnextClick(Sender: TObject);
    procedure BdeleteClick(Sender: TObject);
    procedure BPrintClick(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure Get_LetterJpgFileBeforePost(DataSet: TDataSet);
    procedure Panel5Click(Sender: TObject);
    procedure Windows_Preview;
    procedure xpBitBtn1Click(Sender: TObject);
    procedure xpBitBtn2Click(Sender: TObject);
    procedure Save_all_pages;
    procedure xpBitBtn3Click(Sender: TObject);
    procedure Action6Execute(Sender: TObject);
    private
    FRReadOnly:boolean;
    FZoom: word;
    Procedure Exec_UserLog(SenderTag:integer);
  public
   LetterID:integer;
   PageNo:byte;
   property RReadOnly : boolean read fRReadOnly write SetRReadOnly;
   property Zoom : word read FZoom write SetZoom;

    { Public declarations }
  end;

var
  ScanImageF: TScanImageF;

implementation

uses Dmu, UPrinterSetting, InsertText, UMain, businessLayer, YShamsiDate,UPagePreview;
{$R *.dfm}

var Drown:boolean;
 currenttext:string;

procedure Rotate(var image:TImage;alpha:boolean);
 var i,j:integer;
    oldBitmap,Bitmap:TBitmap;
begin
Bitmap:=TBitmap.Create;
oldBitmap:=TBitmap.Create;
oldBitmap.Assign(Image.Picture.Graphic);
 with Bitmap do
  begin
   Height:= oldBitmap.Width;
   Width:= oldBitmap.Height;

    if alpha then
 for i:=1 to Height   do
   for j:=1 to Width   do
     Canvas.Pixels[j,i]:=oldBitmap.Canvas.Pixels[Height-i,j]
else
 for i:=1 to Height   do
   for j:=1 to Width   do
     Canvas.Pixels[j,i]:=oldBitmap.Canvas.Pixels[i,width-j];

   image.Picture.Bitmap:=Bitmap;
   image.Height:=Height;
   image.Width:=Width;
  end;
end;

procedure TScanImageF.SetRReadOnly(value:boolean);
begin
  fRReadOnly:=value;
  if value then
   begin
    Scan.visible:=false;
    OpenFile.visible:=false;
    DataSetPost1.visible:=false;
    DataSetCancel1.visible:=false;
    NewPage.visible:=false;
    AEDit.visible:=false;
    Adelete.visible:=false;

  ScanBitBtn.Enabled:=false;
  BopenFile.Enabled:=false;
  Bpost.Enabled:=false;
  CancelBitBtn.Enabled:=false;
  BNextPage.Enabled:=false;
  EditBitBtn.Enabled:=false;
  Bdelete.Enabled:=false;

    Scan.Enabled:=false;
    OpenFile.Enabled:=false;
    DataSetPost1.Enabled:=false;
    DataSetCancel1.Enabled:=false;
    NewPage.Enabled:=false;
    AEDit.Enabled:=false;
    Adelete.Enabled:=false;
   end;
end;

procedure TScanImageF.FormShow(Sender: TObject);
begin
  inherited;
  if not HasPicture then
  begin
    PageNo:=1;
    RefreshPicture;
    NewPage.Execute;
  end
     else
     begin
        RefreshPicture;
        FitToPageClick(FitToPage);
     end;
end;

procedure TScanImageF.SetZoom(value:Word);
begin
  inherited;
  if value < 10 then
     Value:=10;
  if Value>1000 then
     Value:=1000;

  FZoom:=value;
  LetterImage.Height:=round(LetterImage.Picture.Height*Value/100);
  LetterImage.Width:=round(LetterImage.Picture.Width*Value/100);
  LetterImage.Height:=LetterImage.Height+50;
  LetterImage.Height:=LetterImage.Height-50;
  ComboBox1.Text:=IntToStr(FZoom);
end;
function TScanImageF.NumberOfPages:byte;
begin
   NumberOfPages:=Exec_get_MaxPage_ByLetterID(1,LetterID);
end;



procedure TScanImageF.RefreshPicture;
var pg:byte;

begin
  with Get_LetterJpgFile,Parameters do
  begin
     Close;
     ParamByName('@LetterID').value := LetterID;
     ParamByName('@pagenumber').value := PageNo;
     Open;
     EnableScan(false);
     if recordcount>0 then
        loadImage
     else
        LetterImage.Picture.Bitmap := Nil;
  end;
   
pg:=NumberOfPages;
 Edit1.Text:=IntToStr(pg);

end;

Function TScanImageF.HasPicture:boolean;
var
   haspage:boolean;
   p:integer;
begin
   Result:=false;
   Exec_min_page(LetterID,haspage,p);
   Result:=haspage;
   if haspage then
      PageNo:= P;
end;

procedure TScanImageF.OpenFileExecute(Sender: TObject);
var  jpg:TJPEGImage;
begin
  inherited;
  jpg:=TJPEGImage.Create;
  if OpenPictureDialog.Execute then
  begin
     jpg.LoadFromFile(OpenPictureDialog.FileName);
     LetterImage.Picture.Bitmap.Assign(jpg);
     Zoom:=100;
     FitImage(ImageScroll.Width-10,ImageScroll.Height-10);
  end;
  JPG.Free;
end;


procedure TScanImageF.ScanExecute(Sender: TObject);
var
  flag: boolean;
  s: string;
  jpg:TJPEGImage;
begin
  jpg:=TJPEGImage.Create;
  flag:=false;
  if AcquireImage.loadTwainModule then
  begin
     try
       AcquireImage.openSourceManager;
       s:=AcquireImage.GetSource(false);
       AcquireImage.selectSource(s);
       AcquireImage.openSource;
       AcquireImage.acquirejpg(Jpg,50);
       flag:=true;
     finally
       AcquireImage.closeTwainSession;
       AcquireImage.unloadTwainModule;
     end;
  end
     else
        showMessage('Error to load TWAIN_32.DLL');

  if flag then
  begin
     try
       LetterImage.Picture.Bitmap.Assign(jpg);
       LetterImage.Height:=ImageScroll.Height-10 ;
       LetterImage.Width:=ImageScroll.Width-10;
     except
       DataSetCancel1.Execute;
     end;
      FitImage(ImageScroll.Width-10,ImageScroll.Height-10);
  end;
  jpg.Free;
end;

procedure TScanImageF.SetNullExecute(Sender: TObject);
begin
  inherited;
  LetterImage.Picture.Bitmap:=nil;
end;

procedure TScanImageF.FormCreate(Sender: TObject);
begin
  inherited;
  drown:=false;
  LetterImage.Picture.Bitmap.Canvas.Pen.Width:=2;
end;

procedure TScanImageF.AcloseExecute(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TScanImageF.loadImage;
var jpg: TJPEGImage;
begin
  inherited;
   jpg:=TJPEGImage.Create;

   Get_LetterJpgFileImage.SaveToFile(_TempPath +'temp.jpg');
   jpg.LoadFromFile(_TempPath +'temp.jpg');

  try
   LetterImage.Picture.Bitmap.Assign(jpg)
   except  ShowMsg(76);
    end;
  JPG.Free;
end;

procedure TScanImageF.saveImage;
var jpg: TJPEGImage;
begin
  inherited;
  jpg:=TJPEGImage.Create;
  ProgressBar.Show;
  ProgressBar.Position:=3;
  jpg.Assign(LetterImage.Picture.Bitmap);
  jpg.savetofile(_TempPath +'temp.jpg');
  Get_LetterJpgFileImage.LoadFromFile(_TempPath +'temp.jpg');
  ProgressBar.Position:=7;
  Get_LetterJpgFile.Post;
  ProgressBar.Hide;
  JPG.Free;
end;

procedure TScanImageF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
   DeleteFile(_TempPath +'temp.jpg');
end;

procedure TScanImageF.DataSetCancel1Execute(Sender: TObject);
begin
  inherited;
  Get_LetterJpgFile.Cancel;
  loadImage;
  EnableScan(False);
end;

procedure TScanImageF.NextPageExecute(Sender: TObject);
begin
  inherited;
  PageNo := Next_page(LetterID,PageNo,true);
  RefreshPicture;
end;

procedure TScanImageF.NewPageExecute(Sender: TObject);
var pg:byte;
begin
  inherited;
  if DataSetPost1.Enabled then
     DataSetPost1.Execute;

  Pg := NumberOfPages; //NumberOfPages:=Exec_get_MaxPage_ByLetterID(1,LetterID);
  with Get_LetterJpgFile do
  begin
     Insert;
     FieldByName('LetterID').Value:=LetterID;
     FieldByName('PageNumber').Value:=pg+1;
     FieldByName('extention').Value:=1;
  end;
  PageNo:=pg+1;
  Edit1.Text:=IntToStr(PageNo);
  LetterImage.Picture.Bitmap:=nil;
  EnableScan(true);
end;

procedure TScanImageF.PreviosPageExecute(Sender: TObject);
begin
  inherited;
  PageNo:=Next_page(LetterID,PageNo,False);
  RefreshPicture;
  loadImage;

end;

procedure TScanImageF.AprinttExecute(Sender: TObject);
var
  RR: TRect;
TopMargine,LeftMargin,  w,h,r,FinalHeght,FinalWidth,ScaleX, ScaleY: real;
  PaperID,i,startpg,endpg:byte;
begin
  with Printer do
  begin
    frPrinterSetting:=TfrPrinterSetting.Create(Application);
    with frPrinterSetting do
     begin
       CBPrinters.Items:=printer.Printers;
       CBPrinters.ItemIndex:=0;
        StartPage.Text:=IntToStr(PageNo);
        EndPage.Text:=IntToStr(PageNo);
       ShowModal;
       PrinterIndex:=CBPrinters.ItemIndex;
       if not done then exit;
       PaperID:=PaperSize.ItemIndex;
       startpg:=StrToInt(startpage.Text);
       Endpg:=StrToInt(Endpage.Text);
     end;




   for i:=startpg to endpg do
    begin
     BeginDoc;
     try
      PageNo:=i;
      RefreshPicture;
      ScaleX := GetDeviceCaps(Handle, logPixelsX) / PixelsPerInch;
      ScaleY := GetDeviceCaps(Handle, logPixelsY) / PixelsPerInch;
      w:=LetterImage.picture.Width * scaleX;
      h:=LetterImage.Picture.Height * ScaleY;
      if (h=0) or (w=0) then
        begin
          ShowMessage('No Image for Print');
          exit;
        end;
      case  PaperID of
       0: begin
            FinalHeght:=GetDeviceCaps(Handle, logPixelsy)*16.50;//16.54
            TopMargine:=10;
          end;
       1 :begin
            FinalHeght:=GetDeviceCaps(Handle, logPixelsy)*11.65;//11.69
            TopMargine:=10;
          end;
       2:begin
            FinalHeght:=GetDeviceCaps(Handle, logPixelsy)*8.25;//11.27
            TopMargine:=10;
          end;
       3:begin
            FinalHeght:=GetDeviceCaps(Handle, logPixelsy)*8.25;//11.27
            TopMargine:=10+1.7*GetDeviceCaps(Handle, logPixelsy);//(11.65-8.25)/2
          end;
       end      ;


      FinalWidth:=FinalHeght/sqrt(2);
      LeftMargin:=TopMargine/sqrt(2);

      if (FinalHeght/h)*w<=FinalWidth then  r:=FinalHeght/h else  r:=FinalWidth/w;


        RR := Rect(round(LeftMargin), round(TopMargine), round(w*r), round(h*r));
      Canvas.StretchDraw(RR, LetterImage.Picture.Graphic);
     finally
      EndDoc;
    end;
   end;{for}
  end;


end;

procedure TScanImageF.DataSetPost1Execute(Sender: TObject);
begin
  inherited;
  SaveImage;
  EnableScan(false);
end;

procedure TScanImageF.AEDitExecute(Sender: TObject);
begin
  inherited;
  Get_LetterJpgFile.edit;
  EnableScan(True);
  Zoom:=100;
end;

procedure TScanImageF.EnableScan(t:boolean);
begin
  inherited;

  DataSetPost1.Enabled:=T;
  Bpost.Enabled:=t;

  EditBitBtn.Enabled:= not T;
  AEDit.Enabled:=not T;

  DataSetCancel1.Enabled:=T;
  CancelBitBtn.Enabled:=t;

  ScanBitBtn.Enabled:=T;
  Scan.Enabled:=T;

  WritePan.Visible:=T;
  if _kartable then
     RecommitePanel.Visible:=not T;
  SetRReadOnly(FRReadOnly);
end;

procedure TScanImageF.SaveAsExecute(Sender: TObject);
begin
  inherited;
  if NumberOfPages>1 then
     Save_all_pages
  else
     if SavePictureDialog.Execute then
        Get_LetterJpgFileImage.SaveToFile(SavePictureDialog.FileName+'.jpg');
end;

procedure TScanImageF.LetterImageMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  inherited;
  if AEDit.Enabled then exit;
x:=Ceil(x*100/zoom);
y:=Ceil(y*100/zoom);

  if ssleft in shift then
 begin
   if Drown then
       LetterImage.Picture.Bitmap.Canvas.LineTo(x,y)
     else
    begin
     LetterImage.Picture.Bitmap.Canvas.MoveTo(x,y);
     Drown:=true;
    end;
end  else Drown:=false;

end;

procedure TScanImageF.Panel1Click(Sender: TObject);
begin
  inherited;
if ColorDialog.Execute then
  begin
   LetterImage.Picture.Bitmap.Canvas.Pen.Color:=ColorDialog.Color;
   ColorPan.Color:=ColorDialog.Color;
  end;

end;

procedure TScanImageF.PenwidthChange(Sender: TObject);
begin
  inherited;
  LetterImage.Picture.Bitmap.Canvas.Pen.Width:=TSpinEdit(sender).Value;
end;

procedure TScanImageF.Button1Click(Sender: TObject);
begin
  inherited;
  InsertTextForm:=TInsertTextForm.Create(self);
  InsertTextForm.ShowModal;
  LetterImage.Picture.Bitmap.Canvas.Font:=InsertTextForm.PFont.Font;

  currenttext:=InsertTextForm.TextString;
  If currenttext<>'' then
    LetterImage.Cursor:=crDrag;
end;

procedure TScanImageF.LetterImageMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
if   LetterImage.Cursor=crMultiDrag then
  PasteSign(LetterImage.Picture.Bitmap.Canvas,x,y)
else
 if currenttext<>'' then
  begin
     LetterImage.Picture.Bitmap.Canvas.TextOut(x,y,currenttext);
     currenttext:='';
  end;
 LetterImage.Cursor:=crDefault;
end;


procedure TScanImageF.FitImage(FWidth,Fheight :integer);
var  RWidth:integer;
begin
  inherited;
  if (LetterImage.Height=0) or (LetterImage.Picture.Width=0) then   exit;
   RWidth:=round((Fheight*LetterImage.Width)/LetterImage.Height);
   if RWidth>FWidth then
     RWidth:=FWidth;

  Zoom:=round(100*RWidth/LetterImage.Picture.Width)
end;



procedure TScanImageF.FitWidth(FWidth :integer);
begin
  inherited;
  if (LetterImage.Picture.Width=0) then   exit;
  Zoom:=round(100*(FWidth)/(LetterImage.Picture.Width))
end;

procedure TScanImageF.FitToPageClick(Sender: TObject);
begin
  inherited;
 FitImage(ImageScroll.Width-10,ImageScroll.Height-10);
end;

procedure TScanImageF.percentChange(Sender: TObject);
begin
  inherited;
 zoom:=strtoint(ComboBox1.text);
end;

procedure TScanImageF.SpeedButton4Click(Sender: TObject);
begin
  inherited;
 zoom:=zoom-(zoom div 100)*20-10;
end;

procedure TScanImageF.SpeedButton3Click(Sender: TObject);
begin
  inherited;
 Zoom:=Zoom+(zoom div 100)*20+10;
end;

procedure TScanImageF.SpeedButton1Click(Sender: TObject);
begin
  inherited;
zoom:=100;
end;

procedure TScanImageF.ComboBox1Click(Sender: TObject);
begin
  inherited;
 Zoom:=StrToInt(ComboBox1.Text);
end;

procedure TScanImageF.ComboBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 13 then
     Zoom:=StrToInt(ComboBox1.Text);

end;

procedure TScanImageF.TimerTimer(Sender: TObject);
begin
  inherited;
   FitImage(ImageScroll.Width-10,ImageScroll.Height-10);
  Timer.Enabled:=false;
end;


procedure TScanImageF.SpeedButton8Click(Sender: TObject);
begin
  inherited;
 Rotate(LetterImage,true);

end;

procedure TScanImageF.SpeedButton6Click(Sender: TObject);
begin
  inherited;
 Rotate(LetterImage,false);
end;

procedure TScanImageF.AdeleteExecute(Sender: TObject);
begin
  inherited;
   if messageShow(39,true) then
   begin
    Exec_delete_letterImage(Get_LetterJpgFileLetterDataID.AsInteger);
    if PageNo>NumberOfPages then dec(PageNo);
    if PageNo=0 then  NewPage.Execute else RefreshPicture;
   end;

end;

procedure TScanImageF.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  FitWidth(ImageScroll.Width-20);
end;

procedure TScanImageF.SpeedButton7Click(Sender: TObject);
var
   pg:byte;
   s:string;
   oldpage:integer;
begin
  inherited;
  pg:=NumberOfPages;
  oldpage:=PageNo;
  if dm.Y_InputQuery('‘„«—Â ’›ÕÂ',IntToStr(pg),s) then
     if is_integer(s) then
        if StrToInt(s)<=pg then
           PageNo:=strtoint(s);
  if PageNo=oldpage then
     exit;

  RefreshPicture;
end;

procedure TScanImageF.BpostClick(Sender: TObject);
begin
  inherited;
  DataSetPost1.Execute;
  {Ranjbar 30}
  Exec_UserLog(TBitBtn(Sender).Tag);
  //---
end;

procedure TScanImageF.ScanBitBtnClick(Sender: TObject);
begin
  inherited;
  Scan.Execute;
  {Ranjbar 30}
  Exec_UserLog(TBitBtn(Sender).Tag);
  //---
end;

procedure TScanImageF.EditBitBtnClick(Sender: TObject);
begin
  inherited;
  AEDit.Execute;
  {Ranjbar 30}
  Exec_UserLog(TBitBtn(Sender).Tag);
  //---
end;

procedure TScanImageF.CancelBitBtnClick(Sender: TObject);
begin
  inherited;
  DataSetCancel1.Execute;
  {Ranjbar 30}
  Exec_UserLog(TBitBtn(Sender).Tag);
  //---
end;

procedure TScanImageF.BopenFileClick(Sender: TObject);
begin
  inherited;
  OpenFile.Execute;
  {Ranjbar 30}
  Exec_UserLog(TBitBtn(Sender).Tag);
  //---
end;

procedure TScanImageF.BNextPageClick(Sender: TObject);
begin
  inherited;
  NewPage.Execute;
  {Ranjbar 30}
  Exec_UserLog(TBitBtn(Sender).Tag);
  //---
end;

procedure TScanImageF.BPreviousClick(Sender: TObject);
begin
  inherited;
  PreviosPage.Execute;
end;

procedure TScanImageF.BnextClick(Sender: TObject);
begin
  inherited;
  NextPage.Execute;
end;

procedure TScanImageF.BdeleteClick(Sender: TObject);
begin
  inherited;
  Adelete.Execute;
  {Ranjbar 30}
  Exec_UserLog(TBitBtn(Sender).Tag);
  //---
end;

procedure TScanImageF.BPrintClick(Sender: TObject);
begin
  inherited;
  Windows_Preview;
end;

procedure TScanImageF.BSaveClick(Sender: TObject);
begin
  inherited;
  SaveAs.Execute;
  {Ranjbar 30}
  Exec_UserLog(TBitBtn(Sender).Tag);
  //---
end;


procedure TScanImageF.BitBtn9Click(Sender: TObject);
begin
  inherited;
  Aclose.Execute;
end;

procedure TScanImageF.BitBtn4Click(Sender: TObject);
begin
  inherited;
  {Ranjbar 30}
  Exec_UserLog(TBitBtn(Sender).Tag);
  //---
  Close;
  MainForm.AAnswer.Execute;
end;


procedure TScanImageF.BitBtn5Click(Sender: TObject);
begin
  inherited;
  {Ranjbar 30}
  Exec_UserLog(TBitBtn(Sender).Tag);
  //---
  close;
  MainForm.AnewRecommite.Execute;
end;


procedure TScanImageF.BitBtn6Click(Sender: TObject);
begin
  inherited;
  {Ranjbar 30}
  Exec_UserLog(TBitBtn(Sender).Tag);
  //---
  Close;
  MainForm.ADoCommite.Execute;
end;

procedure TScanImageF.Get_LetterJpgFileBeforePost(DataSet: TDataSet);
begin
  inherited;
  Get_LetterJpgFileLastUpdate.Value:=now;

end;

procedure TScanImageF.Panel5Click(Sender: TObject);
begin
  inherited;
  ColorPan.Color:=clWhite;
  Penwidth.Value:=8;
  LetterImage.Picture.Bitmap.Canvas.Pen.Color:=ColorPan.Color;
  LetterImage.Picture.Bitmap.Canvas.Pen.Width:=Penwidth.Value;
end;

procedure TScanImageF.Windows_Preview;
var
   i,Firstpg,startpg,endpg,nextpg:integer;
   haspage:boolean;
begin
  inherited;

  Exec_min_page(LetterID,haspage,Firstpg);

  if Not haspage then
     exit;

  FrPagePreview:=TFrPagePreview.Create(Application);

   with FrPagePreview do
    begin
      StartPage.Text:=IntToStr(PageNo);
      EndPage.Text:=IntToStr(PageNo);
      ShowModal;
     if not done then exit;
     startpg:=StrToInt(startpage.Text);
     Endpg:=StrToInt(Endpage.Text);
    end;

  if not DirectoryExists(_TempPath+'yeganehjpg') then
     CreateDir(_TempPath+'yeganehjpg')
  else
     EmptyDir(_TempPath+'yeganehjpg');

  pageno:=startpg;

  while true do
  begin
     RefreshPicture;
     Get_LetterJpgFileImage.SaveToFile(_TempPath+'yeganehjpg\temp'+IntToStr(pageno)+'.jpg');
     nextpg:=Next_page(LetterID,pageno,true);
     if (nextpg=Firstpg) or (nextpg>endpg) then
        Break
     else
        PageNo:=nextpg;
  end;
  ShellExecute(Handle, 'open',pchar(_TempPath+'yeganehjpg\temp'+IntToStr(startpg)+'.jpg'),nil,nil,SW_SHOWNORMAL);
end;

procedure TScanImageF.xpBitBtn1Click(Sender: TObject);
begin
  inherited;
  Aclose.Execute;
end;

procedure TScanImageF.xpBitBtn2Click(Sender: TObject);
begin
  inherited;
  Aprintt.Execute;
  {Ranjbar 30}
  Exec_UserLog(TBitBtn(Sender).Tag);
  //---
end;

procedure TScanImageF.Save_all_pages;
var
  i,Firstpg,startpg,endpg,nextpg:integer;
  haspage:boolean;
  pth:string;
begin
  inherited;
  Exec_min_page(LetterID,haspage,Firstpg);

  if Not haspage then exit;

  FrPagePreview:=TFrPagePreview.Create(Application);

   with FrPagePreview do
    begin
      StartPage.Text:=IntToStr(PageNo);
      EndPage.Text:=IntToStr(PageNo);
      PathPanel.show;
      ShowModal;
     if not done then exit;
     startpg:=StrToInt(startpage.Text);
     Endpg:=StrToInt(Endpage.Text);
     pth:=Path.text;
    end;

  if not DirectoryExists(pth) then
    CreateDir(pth);

  pageno:=startpg;

  while true do
  begin
     RefreshPicture;
     Get_LetterJpgFileImage.SaveToFile(pth+'Yeganeh'+IntToStr(LetterID)+' - '+ IntToStr(pageno)+'.jpg');
     nextpg:=Next_page(LetterID,pageno,true);
     if (nextpg=Firstpg) or (nextpg>endpg) then
        Break
     else
        PageNo:=nextpg;
  end;
end;


procedure TScanImageF.xpBitBtn3Click(Sender: TObject);
begin
  inherited;
  LetterImage.Cursor:=crMultiDrag;
  {Ranjbar 30}
  Exec_UserLog(TBitBtn(Sender).Tag);
  //---
end;

{Ranjbar 30}
Procedure TScanImageF.Exec_UserLog(SenderTag:integer);
begin
  Try
    Exec_insert_UserLog(7000+SenderTag,LetterID);
  except
  end;
end;
//---

procedure TScanImageF.Action6Execute(Sender: TObject);
var
  RR: TRect;
TopMargine,LeftMargin,  w,h,r,FinalHeght,FinalWidth,ScaleX, ScaleY: real;
  PaperID,i,startpg,endpg:byte;
begin
  with Printer do
  begin
    frPrinterSetting:=TfrPrinterSetting.Create(Application);
    with frPrinterSetting do
     begin
       CBPrinters.Items:=printer.Printers;
       CBPrinters.ItemIndex:=0;
        StartPage.Text:=IntToStr(PageNo);
        EndPage.Text:=IntToStr(PageNo);
       ShowModal;
       PrinterIndex:=CBPrinters.ItemIndex;
       if not done then exit;
       PaperID:=PaperSize.ItemIndex;
       startpg:=StrToInt(startpage.Text);
       Endpg:=StrToInt(Endpage.Text);
     end;




   for i:=startpg to endpg do
    begin
     BeginDoc;
     try
      PageNo:=i;
      RefreshPicture;
      ScaleX := GetDeviceCaps(Handle, logPixelsX) / PixelsPerInch;
      ScaleY := GetDeviceCaps(Handle, logPixelsY) / PixelsPerInch;
      w:=LetterImage.picture.Width * scaleX;
      h:=LetterImage.Picture.Height * ScaleY;
      if (h=0) or (w=0) then
        begin
          ShowMessage('No Image for Print');
          exit;
        end;
      case  PaperID of
       0: begin
            FinalHeght:=GetDeviceCaps(Handle, logPixelsy)*16.50;//16.54
            TopMargine:=10;
          end;
       1 :begin
            FinalHeght:=GetDeviceCaps(Handle, logPixelsy)*11.65;//11.69
            TopMargine:=10;
          end;
       2:begin
            FinalHeght:=GetDeviceCaps(Handle, logPixelsy)*8.25;//11.27
            TopMargine:=10;
          end;
       3:begin
            FinalHeght:=GetDeviceCaps(Handle, logPixelsy)*8.25;//11.27
            TopMargine:=10+1.7*GetDeviceCaps(Handle, logPixelsy);//(11.65-8.25)/2
          end;
       end      ;


      FinalWidth:=FinalHeght/sqrt(2);
      LeftMargin:=TopMargine/sqrt(2);

      if (FinalHeght/h)*w<=FinalWidth then  r:=FinalHeght/h else  r:=FinalWidth/w;


        RR := Rect(round(LeftMargin), round(TopMargine), round(w*r), round(h*r));
      Canvas.StretchDraw(RR, LetterImage.Picture.Graphic);
     finally
      EndDoc;
    end;
   end;{for}
  end;
end;

end.


