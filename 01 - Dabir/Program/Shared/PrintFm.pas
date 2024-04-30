unit PrintFm;

interface

uses
  BaseUnit , Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Spin, Buttons,Printers,WinSpool,  ExtActns,
  ActnList, DB, ieview, imageenview, ievect, dbimageenvect, imageenio,
  imageenproc,hyiedefs, dbimageen , StrUtils, Menus, AppEvnts;

type
  TFmPrint = class(TMBaseForm)
    Panel1: TPanel;
    Panel2: TPanel;
    SBPrint: TSpeedButton;
    SBCancel: TSpeedButton;
    SBExit: TSpeedButton;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    LblPgCount: TLabel;
    Label4: TLabel;
    RB2: TRadioButton;
    RB3: TRadioButton;
    SEStartPg: TSpinEdit;
    SEEndtPg: TSpinEdit;
    RB4: TRadioButton;
    EdtRandomPage: TEdit;
    RB1: TRadioButton;
    PrinterSetupDialog: TPrinterSetupDialog;
    SpeedButton1: TSpeedButton;
    RGSize: TRadioGroup;
    ChBoProperty: TCheckBox;
    LabelSizeProperty: TLabel;
    SEPropertyFont: TSpinEdit;
    LabelColorProperty: TLabel;
    EdtPropertyColor: TEdit;
    ColorDialog1: TColorDialog;
    Label1: TLabel;
    SBLeftTop: TSpeedButton;
    SBCenterTop: TSpeedButton;
    SBRightTop: TSpeedButton;
    SBLeftCenter: TSpeedButton;
    SBCenterCenter: TSpeedButton;
    SBRightCenter: TSpeedButton;
    SBCenterButtom: TSpeedButton;
    SBRightButtom: TSpeedButton;
    SBLeftButtom: TSpeedButton;
    ImageEnVect1: TImageEnVect;
    procedure FormShow(Sender: TObject);
    procedure SBPrintClick(Sender: TObject);
    procedure SBCancelClick(Sender: TObject);
    procedure SEStartPgChange(Sender: TObject);
    procedure SBExitClick(Sender: TObject);
    procedure EdtRandomPageEnter(Sender: TObject);
    procedure EdtRandomPageExit(Sender: TObject);
    procedure EdtRandomPageKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ChBoPropertyClick(Sender: TObject);
    procedure EdtPropertyColorClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SBLeftTopClick(Sender: TObject);
    procedure SBCenterTopClick(Sender: TObject);
    procedure SBRightTopClick(Sender: TObject);
    procedure SBLeftCenterClick(Sender: TObject);
    procedure SBCenterCenterClick(Sender: TObject);
    procedure SBRightCenterClick(Sender: TObject);
    procedure SBLeftButtomClick(Sender: TObject);
    procedure SBCenterButtomClick(Sender: TObject);
    procedure SBRightButtomClick(Sender: TObject);

  private
    DoCancel:Boolean;
    IEVerticalPos : TIEVerticalPos;
    IEHorizontalPos : TIEHorizontalPos;
  public

  end;

var
  FmPrint: TFmPrint;

implementation

Uses ScanImageDM,YShamsiDate, ScanImageFm, Dmu, businessLayer;

{$R *.dfm}

procedure TFmPrint.FormShow(Sender: TObject);
Var
   PrintButtonPosName : String;
begin
   SEEndtPg.Value := FmScanImage.QrLetterData.RecordCount;
   LblPgCount.Caption := ' ⁄œ«œ : ' + IntToStr(FmScanImage.QrLetterData.RecordCount);

   {Ranjbar 89.11.24 ID=94}
   ChBoProperty.Checked := GetUserSetting('PrintProperty');
   SEPropertyFont.Value := GetUserSetting('PrintPropertyFont');
   EdtPropertyColor.Color := GetUserSetting('PrintPropertyColor');
   ChBoPropertyClick(Sender);
   //---

   {Ranjbar 90.01.20 ID=305} // ⁄ÌÌ‰ „Êﬁ⁄Ì   ’ÊÌ— œ— ç«Å
   PrintButtonPosName := GetUserSetting('PrintButtonPosName');
   if (Trim(PrintButtonPosName) = '') or (Trim(PrintButtonPosName) = '0') then
      PrintButtonPosName := SBRightTop.Name;
   TSpeedButton(FindComponent(PrintButtonPosName)).Click;
   TSpeedButton(FindComponent(PrintButtonPosName)).Down := True;
   //--
end;

procedure TFmPrint.SBPrintClick(Sender: TObject);
Var
   StartPage , EndPage : Integer;
   PageWidth , PageHight : integer;
   I : Integer;
   RandomText:String;
   ScaleX , ScaleY : Integer;
   IESize : TIESize;
   SecTitle : String;
begin
   inherited;
   DoCancel := False;

   if RB1.Checked then //ç«Å ’›ÕÂ Ã«—Ì
   begin
      StartPage := FmScanImage.QrLetterData.RecNo;
      EndPage:= FmScanImage.QrLetterData.RecNo;
   end;

   if RB2.Checked then //ç«Å  „«„ ’›Õ« 
   begin
      StartPage := 1;
      EndPage:= FmScanImage.QrLetterData.RecordCount;
   end;

   if RB3.Checked then //ç«Å «“ ’›ÕÂ
   begin
      StartPage := SEStartPg.Value;
      EndPage := SEEndtPg.Value;
   end;

   if RB4.Checked then //ç«Å ’›Õ«   ⁄ÌÌ‰ ‘œÂ
   begin
      StartPage := 1;
      EndPage:= FmScanImage.QrLetterData.RecordCount;
   end;

   Try
      SBPrint.Enabled := False;
      Screen.Cursor := crHourGlass;
      RandomText := Trim(EdtRandomPage.Text);

      try Printer.PrinterIndex :=  GetUserSetting('PrinterIndex'); except if PrinterSetupDialog.Execute then  SetUserSetting('PrinterIndex',Printer.PrinterIndex); end;//ç«Åê—

      For I:= StartPage To EndPage do
      begin
         if DoCancel then // œﬂ„Â «‰’—«›
            Break;
            Application.ProcessMessages;
         if RB4.Checked then //ç«Å ’›Õ«   ⁄ÌÌ‰ ‘œÂ
         begin
            If LeftStr(RandomText,1)<>',' then
               RandomText := ','+RandomText;
            If RightStr(RandomText,1)<>',' then
               RandomText := RandomText+',';
            if (Pos(','+IntToStr(I)+',',RandomText) = 0) then //,1,3,5,
               Continue;
         end;
         FmScanImage.QrLetterData.RecNo := I;
         FmScanImage.QrLetterDataAfterScroll(FmScanImage.QrLetterData);
         Application.ProcessMessages;

         Printer.BeginDoc;
         Case RGSize.ItemIndex of
            0 : IESize := iesFITTOPAGESTRETCH;
            1 : IESize := iesFITTOPAGE;
            2 : IESize := iesNORMAL;
         end;
         FmScanImage.ImageEnDBView1.LayersMergeAll;

         {Ranjbar 89.10.19 ID=91}
         //ﬁ—«—œ«œ‰ „‘Œ’«  ‰«„Â Ê  ’ÊÌ— œ— Å—Ì‰ 
         if ChBoProperty.Checked then
         begin
            SecTitle := ' œ»Ì—Œ«‰Â : ' + Qry_GetResult('Select SecTitle from Secretariats Where SecID = '
                                           + '(Select Top 1 SecretariatID from Letter Where LetterID = '
                                           + FmScanImage.QrLetterDataLetterID.AsString + ' )',Dm.YeganehConnection);

            FmScanImage.ImageEnDBView1.Bitmap.Canvas.Font.Name := 'Tahoma';
            FmScanImage.ImageEnDBView1.Bitmap.Canvas.Font.size := SEPropertyFont.Value; //ÅÌ‘ ›—÷ 8 „Ì»«‘œ
            FmScanImage.ImageEnDBView1.Bitmap.Canvas.Font.Color := EdtPropertyColor.Color;
            FmScanImage.ImageEnDBView1.Bitmap.Canvas.TextOut(40,FmScanImage.ImageEnDBView1.Bitmap.Height-50,
                     #254 + SecTitle + ' _ «‰œÌﬂ« Ê— : ' + Qry_GetResult('Select IndicatorID from letter Where LetterID = '
                     + FmScanImage.QrLetterDataLetterID.AsString,Dm.YeganehConnection)
                     + ' _ ’›ÕÂ  ' + FmScanImage.QrLetterDataPageNumber.AsString + '  «“  '
                     + FmScanImage.QrLetterDataRecCount_Calc.AsString );
         end;
         //---

         { ⁄ÌÌ‰ „Êﬁ⁄Ì  ç«Å
         TIEHorizontalPos = (iehpLEFT, iehpCENTER, iehpRIGHT);
         TIEVerticalPos = (ievpTOP, ievpCENTER, ievpBOTTOM);}
         //FmScanImage.ImageEnDBVect1.IO.PrintImage(Printer.Canvas ,0,0,0,0,ievpTOP,iehpLEFT, IESize ,0,0,0);
         if FileExists(_TempPath+'print.jpg') then
         begin
           SysUtils.FileSetReadOnly(_TempPath+'print.jpg', false);
           DeleteFile(_TempPath+'print.jpg');
         end;
         FmScanImage.ImageEnDBView1.IO.SaveToFileJpeg(_TempPath+'print.jpg');
         ImageEnVect1.IO.LoadFromFileJpeg(_TempPath+'print.jpg');
         ImageEnVect1.IO.PrintImage(Printer.Canvas ,0,0,0,0,IEVerticalPos,IEHorizontalPos, IESize ,0,0,0);
         Printer.EndDoc;
      end;

   Finally
      Screen.Cursor := crDefault;
      SBPrint.Enabled := True;
   End;
end;

procedure TFmPrint.SBCancelClick(Sender: TObject);
begin
   inherited;
   DoCancel := True;
end;

procedure TFmPrint.SEStartPgChange(Sender: TObject);
begin
   inherited;
   SEEndtPg.MinValue := SEStartPg.Value;
end;

procedure TFmPrint.SBExitClick(Sender: TObject);
begin
   inherited;
   Close;
end;

procedure TFmPrint.EdtRandomPageEnter(Sender: TObject);
begin
   inherited;
   Keyboard_English;
end;

procedure TFmPrint.EdtRandomPageExit(Sender: TObject);
begin
   inherited;
   Keyboard_Farsi;
end;

procedure TFmPrint.EdtRandomPageKeyPress(Sender: TObject; var Key: Char);
begin
   inherited;

   if not(Key in [',','0','1','2','3','4','5','6','7','8','9',Char(VK_BACK),Char(VK_Delete)]) then
      Key := #0;
end;

procedure TFmPrint.SpeedButton1Click(Sender: TObject);
begin
   inherited;
   try Printer.PrinterIndex :=  GetUserSetting('PrinterIndex'); except end;//ç«Åê—
   if PrinterSetupDialog.Execute then
     SetUserSetting('PrinterIndex',Printer.PrinterIndex);//ç«Åê—
end;


procedure TFmPrint.ChBoPropertyClick(Sender: TObject);
begin
   inherited;
   SEPropertyFont.Enabled := ChBoProperty.Checked;
   EdtPropertyColor.Enabled := ChBoProperty.Checked;
   LabelSizeProperty.Enabled := ChBoProperty.Checked;
   LabelColorProperty.Enabled := ChBoProperty.Checked;
end;

procedure TFmPrint.EdtPropertyColorClick(Sender: TObject);
begin
  inherited;
   if ColorDialog1.Execute then
   begin
      EdtPropertyColor.Color := ColorDialog1.Color;
      ChBoProperty.SetFocus;
   end; 
end;

procedure TFmPrint.FormClose(Sender: TObject; var Action: TCloseAction);
Var
   PrintButtonPosName : String;
begin
   inherited;
   {Ranjbar 89.11.24 ID=94}
   SetUserSetting('PrintProperty',ChBoProperty.Checked);
   SetUserSetting('PrintPropertyFont',SEPropertyFont.Value);
   SetUserSetting('PrintPropertyColor',EdtPropertyColor.Color);
   //---

   {Ranjbar 90.01.20 ID=305} // ⁄ÌÌ‰ „Êﬁ⁄Ì   ’ÊÌ— œ— ç«Å
   if SBRightTop.Down then
      PrintButtonPosName := SBRightTop.Name
   else
      if SBCenterTop.Down then
         PrintButtonPosName := SBCenterTop.Name
      else
         if SBLeftTop.Down then
            PrintButtonPosName := SBLeftTop.Name
         else
            if SBRightCenter.Down then
               PrintButtonPosName := SBRightCenter.Name
            else
               if SBCenterCenter.Down then
                  PrintButtonPosName := SBCenterCenter.Name
               else
                  if SBLeftCenter.Down then
                     PrintButtonPosName := SBLeftCenter.Name
                  else
                     if SBRightButtom.Down then
                        PrintButtonPosName := SBRightButtom.Name
                     else
                        if SBCenterButtom.Down then
                           PrintButtonPosName := SBCenterButtom.Name
                        else
                           if SBLeftButtom.Down then
                              PrintButtonPosName := SBLeftButtom.Name;
   SetUserSetting('PrintButtonPosName',PrintButtonPosName);
   //--

end;

procedure TFmPrint.SBLeftTopClick(Sender: TObject);
begin
   inherited;
   IEHorizontalPos := iehpLEFT;
   IEVerticalPos := ievpTOP;
end;

procedure TFmPrint.SBCenterTopClick(Sender: TObject);
begin
   inherited;
   {Ranjbar 90.01.20 ID=305}
   IEHorizontalPos := iehpCENTER;
   IEVerticalPos := ievpTOP;
end;

procedure TFmPrint.SBRightTopClick(Sender: TObject);
begin
   inherited;
   {Ranjbar 90.01.20 ID=305}
   IEHorizontalPos := iehpRIGHT;
   IEVerticalPos := ievpTOP;
end;

procedure TFmPrint.SBLeftCenterClick(Sender: TObject);
begin
   inherited;
   {Ranjbar 90.01.20 ID=305}
   IEHorizontalPos := iehpLEFT;
   IEVerticalPos := ievpCENTER;
end;

procedure TFmPrint.SBCenterCenterClick(Sender: TObject);
begin
   inherited;
   {Ranjbar 90.01.20 ID=305}
   IEHorizontalPos := iehpCENTER;
   IEVerticalPos := ievpCENTER;
end;

procedure TFmPrint.SBRightCenterClick(Sender: TObject);
begin
   inherited;
   {Ranjbar 90.01.20 ID=305}
   IEHorizontalPos := iehpRIGHT;
   IEVerticalPos := ievpCENTER;
end;

procedure TFmPrint.SBLeftButtomClick(Sender: TObject);
begin
   inherited;
   {Ranjbar 90.01.20 ID=305}
   IEHorizontalPos := iehpLEFT;
   IEVerticalPos := ievpBOTTOM;
end;

procedure TFmPrint.SBCenterButtomClick(Sender: TObject);
begin
   inherited;
   {Ranjbar 90.01.20 ID=305}
   IEHorizontalPos := iehpCENTER;
   IEVerticalPos := ievpBOTTOM;
end;

procedure TFmPrint.SBRightButtomClick(Sender: TObject);
begin
   inherited;
   {Ranjbar 90.01.20 ID=305}
   IEHorizontalPos := iehpRIGHT;
   IEVerticalPos := ievpBOTTOM;
end;

end.


