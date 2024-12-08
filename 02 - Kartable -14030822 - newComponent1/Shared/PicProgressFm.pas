unit PicProgressFm;

interface

uses
  BaseUnit,Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, xpWindow, ExtActns,
  ActnList, DB,hyiedefs, ieview, imageenview, DBCtrls, Menus;

type
  TFmPicProgress = class(TMBaseForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BBOK: TBitBtn;
    BBCancel: TBitBtn;
    PageControl1: TPageControl;
    TShPicResize: TTabSheet;
    RGPicResize: TRadioGroup;
    Label5: TLabel;
    ChBoAllPic: TCheckBox;   //*???
    procedure RGPicResizeClick(Sender: TObject);
    procedure BBOKClick(Sender: TObject);
    procedure BBCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ChBoAllPicClick(Sender: TObject);
  private
    { Private declarations }
  public
    PicWidth , PicHight : integer;
  end;

var
  FmPicProgress: TFmPicProgress;

implementation

uses ScanImageFm, ScanImageDM;

{$R *.dfm}

procedure TFmPicProgress.RGPicResizeClick(Sender: TObject);
begin
   inherited;
   if not(FmScanImage.QrSelImage.State in [dsEdit,dsInsert]) then
      Exit;

   With FmScanImage,ImageEnVect1 do
   begin
      //ÃÂ  »«“Ì«»Ì œÊ»«—Â  ’ÊÌ—
   //   ImageEnVect1.DataSource := Nil;
  //    ImageEnVect1.DataSource := DMScanImage.DSSelImage;

      Application.ProcessMessages;
      Case RGPicResize.ItemIndex of
         0: Proc.Resample(2480,3508,rfNone); //A4
         1: Proc.Resample(3508,4961,rfNone); //A3
         2: Proc.Resample(1748,2480,rfNone);//A5
         3: Proc.Resample(PicWidth,PicWidth,rfNone);//1 * 1
         4: Proc.Resample(PicWidth,PicWidth+(PicWidth Div 2),rfNone); //2 * 3
         5: Proc.Resample(PicWidth+(PicWidth Div 2),PicWidth,rfNone);//3 * 2
         6: Proc.Resample(PicWidth*2,PicHight*2,rfNone);//œÊ »—«»—
         7: Proc.Resample(PicWidth Div 2,PicHight Div 2,rfNone); //‰’›
         //8: «»⁄«œ «Ê·ÌÂ
      end;
      Update;
   end;
end;

procedure TFmPicProgress.BBOKClick(Sender: TObject);
begin
   inherited;
   if ChBoAllPic.Checked then   //*???
   begin
      With FmScanImage do
      begin
         BBOK.Enabled := False;
         BBCancel.Enabled := False;
         if QrLetterData.State in [dsInsert,dsEdit] then
            FmScanImage.DBN1.BtnClick(nbCancel);
         QrLetterData.Last;
         While not QrLetterData.Bof do
         begin
            QrSelImage.Edit;
            Application.ProcessMessages;
            FmScanImage.ImageEnDBVect1.Proc.Resample(2480,3508,rfNone); //A4
//            FmScanImage.ImageEnVect1.FitToWidth;
            FmScanImage.ImageEnDBVect1.Update;
            QrSelImage.Post;
            QrLetterData.Prior;
         end;
      end;
   end;//*???
   Close;
end;

procedure TFmPicProgress.BBCancelClick(Sender: TObject);
begin
   inherited;
   //ÃÂ  »«“Ì«»Ì œÊ»«—Â  ’ÊÌ—
//   FmScanImage.ImageEnVect1.DataSource := Nil;
//   FmScanImage.ImageEnVect1.DataSource := DMScanImage.DSSelImage;
   Close;
end;

procedure TFmPicProgress.FormShow(Sender: TObject);
begin
   inherited;
   PageControl1.TabHeight := 1;
   PageControl1.TabWidth  := 1;
end;

procedure TFmPicProgress.ChBoAllPicClick(Sender: TObject);
begin
   inherited;
   if ChBoAllPic.Checked then
      RGPicResize.Enabled := False
   else
      RGPicResize.Enabled := True;
end;

end.
