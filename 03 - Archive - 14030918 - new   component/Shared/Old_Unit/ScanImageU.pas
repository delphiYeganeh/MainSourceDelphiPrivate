unit ScanImageU;

interface

uses
  math,Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DBCtrls, DB, ToolWin, ActnMan, ActnCtrls, ADODB,
  ActnList, StdCtrls, Buttons, ExtDlgs, DBActns, AcquireImage, ExtCtrls,
  Grids, DBGrids,Jpeg,   Mask,Printers, QuickRpt, QRCtrls,
  ComCtrls, ActnMenus, OleCtnrs, Spin, Word2000, OleServer,Clipbrd,
  ExtActns, WordXP, XPStyleActnCtrls, YDbgrid, xpWindow, xpBitBtn,shellapi;

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
    Bpost: TxpBitBtn;
    EditBitBtn: TxpBitBtn;
    ScanBitBtn: TxpBitBtn;
    BPrint: TxpBitBtn;
    CancelBitBtn: TxpBitBtn;
    BopenFile: TxpBitBtn;
    BSave: TxpBitBtn;
    BNextPage: TxpBitBtn;
    BPrevious: TxpBitBtn;
    Bnext: TxpBitBtn;
    BitBtn9: TxpBitBtn;
    Action1: TAction;
    LetterImage: TImage;
    ColorDialog: TColorDialog;
    WritePan: TPanel;
    Label1: TLabel;
    Penwidth: TSpinEdit;
    ColorPan: TPanel;
    Button1: TxpBitBtn;
    Panel1: TPanel;
    SpeedButton1: TxpBitBtn;
    FitToPage: TxpBitBtn;
    SpeedButton3: TxpBitBtn;
    SpeedButton4: TxpBitBtn;
    ProgressBar: TProgressBar;
    ComboBox1: TComboBox;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Timer: TTimer;
    SpeedButton6: TSpeedButton;
    SpeedButton8: TSpeedButton;
    Get_LetterJpgFileLetterDataID: TAutoIncField;
    Get_LetterJpgFileLetterID: TIntegerField;
    Get_LetterJpgFilePageNumber: TWordField;
    Get_LetterJpgFileImage: TBlobField;
    Get_LetterJpgFileextention: TWordField;
    Bdelete: TxpBitBtn;
    AcquireImage: TAcquireImage;
    SpeedButton5: TxpBitBtn;
    SpeedButton7: TxpBitBtn;
    Get_LetterJpgFileLastUpdate: TDateTimeField;
    Label2: TLabel;
    Panel5: TPanel;
    xpBitBtn1: TxpBitBtn;
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
    procedure Get_LetterJpgFileBeforePost(DataSet: TDataSet);
    procedure Panel5Click(Sender: TObject);
    procedure Windows_Preview;
    procedure Save_all_pages;
    function Next_page(CurrentPage:integer):integer;
    procedure xpBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    FRReadOnly:boolean;
    FZoom: word;
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

Uses Dmu,  UMain,  InsertText, businessLayer, UPrinterSetting, YShamsiDate,
     UPagePreview;
     
{$R *.dfm}

Var Drown:boolean;
    Currenttext:string;

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

    for i:=1 to Height   do
      for j:=1 to Width   do
       if alpha then
        Canvas.Pixels[j,i]:=oldBitmap.Canvas.Pixels[Height-i,j]
       else
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
Bdelete.visible:=dm.GetActionAccess(58,1);

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
  if value<10   then Value:=10;
  if Value>1000 then Value:=1000;

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
     ParamByName('@LetterID').value:=LetterID;
     ParamByName('@pagenumber').value:=PageNo;
    Open;
    EnableScan(false);
    if recordcount>0 then  loadImage else   LetterImage.Picture.Bitmap:=nil;
   end;
   
pg:=NumberOfPages;
 Edit1.Text:=IntToStr(pg);

 NextPage.Enabled:=PageNo<>Pg ;
 PreviosPage.Enabled:=PageNo<>1;
 Bnext.Enabled:=PageNo<>Pg ;
 BPrevious.Enabled:=PageNo<>1;
end;

function TScanImageF.HasPicture:boolean;
var haspage:boolean;
 p:integer;
begin
Result:=false;
Exec_min_page(LetterID,haspage,p);
Result:=haspage;
if haspage then PageNo:=p;
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
  else showMessage('Error to load TWAIN_32.DLL');
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
if ( LetterImage.Picture.Height>0) and (DataSetPost1.Enabled) then
 if messageShowString(' ’ÊÌ— œ— Õ«· ÊÌ—«Ì‘ «”  ¬Ì« –ŒÌ—Â ‘Êœ',true) then
   DataSetPost1.Execute;
   DeleteFile(_TempPath +'temp.jpg');
end;

procedure TScanImageF.DataSetCancel1Execute(Sender: TObject);
begin
  inherited;
Get_LetterJpgFile.Cancel;
loadImage;
EnableScan(false);
end;

procedure TScanImageF.NextPageExecute(Sender: TObject);
var pg:byte;
begin
  inherited;
pg:=NumberOfPages;
Inc(PageNo);
if pageNo>Pg then Dec(PageNo);
RefreshPicture;
end;


function TScanImageF.Next_page(CurrentPage:integer):integer;
begin
 result:=CurrentPage+1;
 //
end;


procedure TScanImageF.NewPageExecute(Sender: TObject);
var pg:byte;
begin
  inherited;
if DataSetPost1.Enabled then

 DataSetPost1.Execute;
pg:=NumberOfPages;
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
dec(PageNo);

if pageNo<1 then Inc(PageNo);
RefreshPicture;
loadImage;

end;

procedure TScanImageF.AprinttExecute(Sender: TObject);
var
  ww,hh: integer;
  RR: TRect;
  w,h,r,FinalHeght,FinalWidth,ScaleX, ScaleY: real;
  PaperID,i,startpg,endpg:byte;
begin
  with Printer do
  begin
    frPrinterSetting:=TfrPrinterSetting.Create(Application);
    with frPrinterSetting do
     begin
       CBPrinters.Items:=printer.Printers;
       CBPrinters.ItemIndex:=0;
        StartPage.Text:='1';
        EndPage.Text:=IntToStr(NumberOfPages);
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
      if PaperID=0 then  FinalHeght:=GetDeviceCaps(Handle, logPixelsy)*16.54;
      if PaperID=1 then  FinalHeght:=GetDeviceCaps(Handle, logPixelsy)*11.69;
      if PaperID=2 then  FinalHeght:=GetDeviceCaps(Handle, logPixelsy)*8.27;

      FinalWidth:=FinalHeght/sqrt(2);

      if (FinalHeght/h)*w<=FinalWidth then  r:=FinalHeght/h else  r:=FinalWidth/w;

      ww:=round(w*r);
      hh:=round(h*r);
      if PaperID<>2 then
        RR := Rect(0, 0, ww, hh)
      else
        RR := Rect(50, 10, ww+50, hh+10);
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
   if currenttext<>'' then
    begin
     LetterImage.Picture.Bitmap.Canvas.TextOut(x,y,currenttext);
     currenttext:='';
     LetterImage.Cursor:=crDefault;
     exit;
    end;
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
if key=13 then
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
var pg:byte;
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

       
if PageNo=oldpage then exit;

RefreshPicture;
end;


procedure TScanImageF.BpostClick(Sender: TObject);
begin
  inherited;
 DataSetPost1.Execute;
end;

procedure TScanImageF.ScanBitBtnClick(Sender: TObject);
begin
  inherited;
 Scan.Execute;
end;

procedure TScanImageF.EditBitBtnClick(Sender: TObject);
begin
  inherited;
 AEDit.Execute;
end;

procedure TScanImageF.CancelBitBtnClick(Sender: TObject);
begin
  inherited;
 DataSetCancel1.Execute;
end;

procedure TScanImageF.BopenFileClick(Sender: TObject);
begin
  inherited;
 OpenFile.Execute;
end;

procedure TScanImageF.BNextPageClick(Sender: TObject);
begin
  inherited;
 NewPage.Execute;
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
end;

procedure TScanImageF.BPrintClick(Sender: TObject);
begin
  inherited;
 Aprintt.Execute;
end;

procedure TScanImageF.BSaveClick(Sender: TObject);
begin
  inherited;
 SaveAs.Execute;
end;

procedure TScanImageF.BitBtn9Click(Sender: TObject);
begin
  inherited;
 Aclose.Execute;
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
    nextpg:=Next_page(pageno);
     if (nextpg=Firstpg) or (nextpg>endpg) then
       Break
      else
       PageNo:=nextpg;
    end;
end;

procedure TScanImageF.Windows_Preview;
var
  i,Firstpg,startpg,endpg,nextpg:integer;
  haspage:boolean;
begin
  inherited;
Exec_min_page(LetterID,haspage,Firstpg);

if Not haspage then exit;

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
     nextpg:=Next_page(pageno);
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
  Windows_Preview;
end;

end.


