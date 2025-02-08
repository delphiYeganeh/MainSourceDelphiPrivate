unit AddattachmentU;

interface

uses
  math,Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  DBCtrls, DB, ToolWin, ActnMan, ActnCtrls, ADODB,
  ActnList, StdCtrls, Buttons, ExtDlgs, DBActns, AcquireImage, ExtCtrls,
  Grids, DBGrids,Jpeg,   Mask,Printers, QuickRpt, QRCtrls,
  ComCtrls, ActnMenus, OleCtnrs, Spin, Word2000, OleServer,Clipbrd,
  ExtActns, WordXP, XPStyleActnCtrls, YDbgrid, BaseUnit, AdvGlowButton;

type
  TFrAddAttachment = class(TForm)
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
    Bpost: TAdvGlowButton;
    EditBitBtn: TAdvGlowButton;
    ScanBitBtn: TAdvGlowButton;
    BPrint: TAdvGlowButton;
    CancelBitBtn: TAdvGlowButton;
    BopenFile: TAdvGlowButton;
    BSave: TAdvGlowButton;
    BNextPage: TAdvGlowButton;
    BPrevious: TAdvGlowButton;
    Bnext: TAdvGlowButton;
    BitBtn9: TAdvGlowButton;
    Action1: TAction;
    LetterImage: TImage;
    ColorDialog: TColorDialog;
    WritePan: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    SpinEdit1: TSpinEdit;
    ColorPan: TPanel;
    Button1: TAdvGlowButton;
    Panel1: TPanel;
    SpeedButton1: TBitBtn;
    FitToPage: TBitBtn;
    SpeedButton3: TAdvGlowButton;
    SpeedButton4: TAdvGlowButton;
    ProgressBar: TProgressBar;
    ComboBox1: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Timer: TTimer;
    SpeedButton6: TSpeedButton;
    SpeedButton8: TSpeedButton;
    Bdelete: TAdvGlowButton;
    AcquireImage: TAcquireImage;
    SpeedButton5: TBitBtn;
    SpeedButton7: TAdvGlowButton;
    Select_Attachment_by_Page: TADOStoredProc;
    DSelect_Attachment_by_Page: TDataSource;
    DBEdit1: TDBEdit;
    Panel2: TPanel;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    Select_Attachment_by_PageDataDescription: TWideStringField;
    Select_Attachment_by_PageData: TBlobField;
    Select_Attachment_by_PageAttachmentID: TAutoIncField;
    Select_Attachment_by_PageDocumentID: TIntegerField;
    Select_Attachment_by_PagePageNumber: TWordField;
    Select_Attachment_by_PageDocumentTypeID: TWordField;
    pnlMain: TPanel;
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
    procedure DataSetPost1Execute(Sender: TObject);
    procedure AEDitExecute(Sender: TObject);
    procedure EnableScan(t:boolean);
    procedure SaveAsExecute(Sender: TObject);
    procedure SetRReadOnly(value:boolean);
    procedure LetterImageMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel1Click(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
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
  private
    { Private declarations }
    FRReadOnly:boolean;
    FZoom: word;
  public
   DocumnetID:integer;
   PageNo:byte;
   DocumentTypeID:byte;
   property RReadOnly : boolean read fRReadOnly write SetRReadOnly;
   property Zoom : word read FZoom write SetZoom;

    { Public declarations }
  end;

var
  FrAddAttachment: TFrAddAttachment;

implementation

uses DMU,   YShamsiDate, PrinterSettingU, ImageInsertTextU, BusinessLayer;

{$R *.dfm}

var Drown:boolean;
 currenttext:string;

procedure Rotate(var image:TImage;alpha:boolean);
var
  i,j:integer;
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

procedure TFrAddAttachment.SetRReadOnly(value:boolean);
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

procedure TFrAddAttachment.FormShow(Sender: TObject);
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

procedure TFrAddAttachment.SetZoom(value:Word);
begin
  inherited;
  if value<10   then Value:=10;
  if Value>1000 then Value:=1000;

  FZoom:=value;
  LetterImage.Height:=round(LetterImage.Picture.Height*Value/100);
  LetterImage.Width:=round(LetterImage.Picture.Width*Value/100);
  ComboBox1.Text:=IntToStr(FZoom);
end;

function TFrAddAttachment.NumberOfPages:byte;
begin
  NumberOfPages:=Get_MaxAttachmentPage(documentTypeID,DocumnetID);;
end;

procedure TFrAddAttachment.RefreshPicture;
begin
  with Select_Attachment_by_Page,Parameters do
  begin
    Close;
    ParamByName('@DocumentID').value:=DocumnetID;
    ParamByName('@pagenumber').value:=PageNo;
    ParamByName('@documentTypeID').value:=DocumentTypeID;
    Open;
    EnableScan(false);
    if recordcount>0 then
      loadImage
    else
      LetterImage.Picture.Bitmap:=nil;
  end;
  Edit1.Text:=IntToStr(NumberOfPages);

end;

function TFrAddAttachment.HasPicture:boolean;
var
  p:integer;
begin
  p:=Get_MinAttachmentPage(documentTypeID,DocumnetID);
  Result:=p>0;
  if Result then
    PageNo:=p;
end;

procedure TFrAddAttachment.OpenFileExecute(Sender: TObject);
var
  jpg:TJPEGImage;
begin
  inherited;
  jpg:=TJPEGImage.Create;
  if OpenPictureDialog.Execute then
  begin
    jpg.LoadFromFile(OpenPictureDialog.FileName);
    LetterImage.Picture.Bitmap.Assign(jpg);
    Zoom:=100;
  end;
  JPG.Free;
end;

procedure TFrAddAttachment.ScanExecute(Sender: TObject);
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
    except
      DataSetCancel1.Execute;
    end;
    Zoom:=100;
  end;
  jpg.Free;
end;

procedure TFrAddAttachment.SetNullExecute(Sender: TObject);
begin
  inherited;
  LetterImage.Picture.Bitmap:=nil;
end;

procedure TFrAddAttachment.FormCreate(Sender: TObject);
begin
  inherited;
  drown:=false;
  LetterImage.Picture.Bitmap.Canvas.Pen.Width:=2;
end;

procedure TFrAddAttachment.AcloseExecute(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFrAddAttachment.loadImage;
var
  jpg: TJPEGImage;
begin
  inherited;
  jpg:=TJPEGImage.Create;

  Select_Attachment_by_PageData.SaveToFile(_TempPath +'temp.jpg');
  jpg.LoadFromFile(_TempPath +'temp.jpg');

  try
    LetterImage.Picture.Bitmap.Assign(jpg)
  except
    ShowMessage('Œÿ« œ— ›—«ŒÊ«‰Ì   ’ÊÌ—');
  end;
  JPG.Free;
end;

procedure TFrAddAttachment.saveImage;
var
  jpg: TJPEGImage;
begin
  inherited;
  jpg:=TJPEGImage.Create;
  ProgressBar.Show;
  ProgressBar.Position:=3;
  jpg.Assign(LetterImage.Picture.Bitmap);
  jpg.savetofile(_TempPath +'temp.jpg');
  Select_Attachment_by_PageData.LoadFromFile(_TempPath +'temp.jpg');
  ProgressBar.Position:=7;
  Select_Attachment_by_Page.Post;
  ProgressBar.Hide;
  JPG.Free;
end;

procedure TFrAddAttachment.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  DeleteFile(_TempPath +'temp.jpg');
end;

procedure TFrAddAttachment.DataSetCancel1Execute(Sender: TObject);
begin
  inherited;
  Select_Attachment_by_Page.Cancel;
  loadImage;
  EnableScan(false);
end;

procedure TFrAddAttachment.NextPageExecute(Sender: TObject);
var
  pg:byte;
begin
  inherited;
  pg:=NumberOfPages;
  Inc(PageNo);
  if PageNo>=Pg then
  begin
    NextPage.Enabled:=false;
    Bnext.Enabled:=false;
    if pageNo>Pg then
      Dec(PageNo);
  end;
  BPrevious.Enabled:=True;
  PreviosPage.Enabled:=True;
  RefreshPicture;
end;

procedure TFrAddAttachment.NewPageExecute(Sender: TObject);
var
  pg:byte;
begin
  inherited;

  if DataSetPost1.Enabled then
    DataSetPost1.Execute;

  pg:=NumberOfPages;
  with Select_Attachment_by_Page do
  begin
    Insert;
    FieldByName('DocumentID').Value:=DocumnetID;
    FieldByName('DocumentTypeID').Value:=DocumentTypeID;
    FieldByName('PageNumber').Value:=pg+1;
  end;
  PageNo:=pg+1;
  Edit1.Text:=IntToStr(PageNo);
  LetterImage.Picture.Bitmap:=nil;
  EnableScan(true);
end;

procedure TFrAddAttachment.PreviosPageExecute(Sender: TObject);
begin
  inherited;
  dec(PageNo);

  if PageNo<=1 then
  begin
    PreviosPage.Enabled:=false;
    BPrevious.Enabled:=false;
    if pageNo<1 then
      Inc(PageNo);
  end;

  NextPage.Enabled:=True;
  Bnext.Enabled:=True;
  RefreshPicture;

  loadImage;
end;


procedure TFrAddAttachment.DataSetPost1Execute(Sender: TObject);
begin
  inherited;
  SaveImage;
  EnableScan(false);
end;

procedure TFrAddAttachment.AEDitExecute(Sender: TObject);
begin
  inherited;
  Select_Attachment_by_Page.edit;
  EnableScan(True);
  Zoom:=100;
end;

procedure TFrAddAttachment.EnableScan(t:boolean);
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

  BopenFile.Enabled:=t;
  OpenFile.Enabled:=t;
end;

procedure TFrAddAttachment.SaveAsExecute(Sender: TObject);
begin
  inherited;
  if SavePictureDialog.Execute then
    Select_Attachment_by_PageData.SaveToFile(SavePictureDialog.FileName+'.jpg');
end;

procedure TFrAddAttachment.LetterImageMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  inherited;
  if AEDit.Enabled then
    exit;

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
  end
  else
    Drown:=false;

end;

procedure TFrAddAttachment.Panel1Click(Sender: TObject);
begin
  inherited;
  if ColorDialog.Execute then
  begin
    LetterImage.Picture.Bitmap.Canvas.Pen.Color:=ColorDialog.Color;
    ColorPan.Color:=ColorDialog.Color;
  end;
end;

procedure TFrAddAttachment.SpinEdit1Change(Sender: TObject);
begin
  inherited;
  LetterImage.Picture.Bitmap.Canvas.Pen.Width:=TSpinEdit(sender).Value;
end;

procedure TFrAddAttachment.Button1Click(Sender: TObject);
begin
  inherited;
  FrimageInsertText:=TFrImageInsertText.Create(self);
  FrImageInsertText.ShowModal;
  LetterImage.Picture.Bitmap.Canvas.Font:=FrImageInsertText.PFont.Font;

  currenttext:=FrImageInsertText.TextString;
  If currenttext<>'' then
    LetterImage.Cursor:=crDrag;
end;

procedure TFrAddAttachment.LetterImageMouseDown(Sender: TObject;
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

procedure TFrAddAttachment.FitImage(FWidth,Fheight :integer);
var
  RWidth:integer;
begin
  inherited;
  RWidth:=round((Fheight*LetterImage.Width)/LetterImage.Height);
  if RWidth>FWidth then
    RWidth:=FWidth;

  try
    Zoom:=round(100*RWidth/LetterImage.Picture.Width)
  except
  end;
end;

procedure TFrAddAttachment.FitWidth(FWidth :integer);
begin
  inherited;
  try
    Zoom:=round(100*(FWidth)/(LetterImage.Picture.Width))
  except
  end;
end;

procedure TFrAddAttachment.FitToPageClick(Sender: TObject);
begin
  inherited;
  FitImage(ImageScroll.Width-10,ImageScroll.Height-10);
end;

procedure TFrAddAttachment.percentChange(Sender: TObject);
begin
  inherited;
  zoom:=SpinEdit1.Value;
end;

procedure TFrAddAttachment.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  zoom:=zoom-(zoom div 100)*20-10;
end;

procedure TFrAddAttachment.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  Zoom:=Zoom+(zoom div 100)*20+10;
end;

procedure TFrAddAttachment.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  zoom:=100;
end;

procedure TFrAddAttachment.ComboBox1Click(Sender: TObject);
begin
  inherited;
  Zoom:=StrToInt(ComboBox1.Text);
end;

procedure TFrAddAttachment.ComboBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=13 then
    Zoom:=StrToInt(ComboBox1.Text);
end;

procedure TFrAddAttachment.TimerTimer(Sender: TObject);
begin
  inherited;
  try
    FitImage(ImageScroll.Width-10,ImageScroll.Height-10);
  except
  end;
  Timer.Enabled:=false;
end;

procedure TFrAddAttachment.SpeedButton8Click(Sender: TObject);
begin
  inherited;
  Rotate(LetterImage,true);
end;

procedure TFrAddAttachment.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  Rotate(LetterImage,false);
end;

procedure TFrAddAttachment.AdeleteExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœ',mtConfirmation,[mbyes,mbno],0)=mryes then
  begin
    delete_Attachment(Select_Attachment_by_PageAttachmentID.AsInteger);
    if PageNo>NumberOfPages then dec(PageNo);
    if PageNo=0 then  NewPage.Execute else RefreshPicture;
  end;
end;

procedure TFrAddAttachment.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  FitWidth(ImageScroll.Width-20);
end;

procedure TFrAddAttachment.SpeedButton7Click(Sender: TObject);
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

  NextPage.Enabled:=PageNo<>Pg ;
  PreviosPage.Enabled:=PageNo<>1;
  Bnext.Enabled:=PageNo<>Pg ;
  BPrevious.Enabled:=PageNo<>1;

  RefreshPicture;
end;

procedure TFrAddAttachment.BpostClick(Sender: TObject);
begin
  inherited;
  DataSetPost1.Execute;
end;

procedure TFrAddAttachment.ScanBitBtnClick(Sender: TObject);
begin
  inherited;
  Scan.Execute;
end;

procedure TFrAddAttachment.EditBitBtnClick(Sender: TObject);
begin
  inherited;
  AEDit.Execute;
end;

procedure TFrAddAttachment.CancelBitBtnClick(Sender: TObject);
begin
  inherited;
  DataSetCancel1.Execute;
end;

procedure TFrAddAttachment.BopenFileClick(Sender: TObject);
begin
  inherited;
  OpenFile.Execute;
end;

procedure TFrAddAttachment.BNextPageClick(Sender: TObject);
begin
  inherited;
  NewPage.Execute;
end;

procedure TFrAddAttachment.BPreviousClick(Sender: TObject);
begin
  inherited;
  PreviosPage.Execute;
end;

procedure TFrAddAttachment.BnextClick(Sender: TObject);
begin
  inherited;
  NextPage.Execute;
end;

procedure TFrAddAttachment.BdeleteClick(Sender: TObject);
begin
  inherited;
  Adelete.Execute;
end;

procedure TFrAddAttachment.BPrintClick(Sender: TObject);
var
  ww,hh: integer;
  RR: TRect;
  w,h,r,FinalHeght,FinalWidth,ScaleX, ScaleY: real;
  PaperID:byte;
begin
  with Printer do
  begin
    frPrinterSetting:=TfrPrinterSetting.Create(Application);
    with frPrinterSetting do
    begin
      CBPrinters.Items:=printer.Printers;
      CBPrinters.ItemIndex:=0;

      ShowModal;
      PrinterIndex:=CBPrinters.ItemIndex;
      if not done then
        exit;
      PaperID:=PaperSize.ItemIndex;
    end;

    BeginDoc;
    try
      ScaleX := GetDeviceCaps(Handle, logPixelsX) / PixelsPerInch;
      ScaleY := GetDeviceCaps(Handle, logPixelsY) / PixelsPerInch;
      w:=LetterImage.picture.Width * scaleX;
      h:=LetterImage.Picture.Height * ScaleY;

      FinalHeght:=1;
      if PaperID=0 then  FinalHeght:=GetDeviceCaps(Handle, logPixelsy)*16.54;
      if PaperID=1 then  FinalHeght:=GetDeviceCaps(Handle, logPixelsy)*11.69;
      if PaperID=2 then  FinalHeght:=GetDeviceCaps(Handle, logPixelsy)*8.27;

      FinalWidth:=FinalHeght/sqrt(2);

      if (FinalHeght/h)*w<=FinalWidth then  r:=FinalHeght/h else  r:=FinalWidth/w;

      ww:=round(w*r);
      hh:=round(h*r);
      RR := Rect(0, 0, ww, hh);
      Canvas.StretchDraw(RR, LetterImage.Picture.Graphic);

    finally
      EndDoc;
    end;
  end;

end;

procedure TFrAddAttachment.BSaveClick(Sender: TObject);
begin
  inherited;
  SaveAs.Execute;
end;

procedure TFrAddAttachment.BitBtn9Click(Sender: TObject);
begin
  inherited;
  Aclose.Execute;
end;

end.


