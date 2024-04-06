unit PrintFm;

interface

uses
  BaseUnit , Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Spin, Buttons,Printers,WinSpool, xpWindow, ExtActns,
  ActnList, DB, ieview, imageenview, ievect, dbimageenvect, imageenio,
  imageenproc,hyiedefs, dbimageen , StrUtils;

type
  TFmPrint = class(TMBaseForm)
    Panel1: TPanel;
    Panel2: TPanel;
    SBPrint: TSpeedButton;
    SBCancel: TSpeedButton;
    SBExit: TSpeedButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    CoBoPrinters: TComboBox;
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
    GroupBox3: TGroupBox;
    Label2: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    CoBoPageSize: TComboBox;
    SEWidth: TSpinEdit;
    SEHight: TSpinEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    procedure FormShow(Sender: TObject);
    procedure SBPrintClick(Sender: TObject);
    procedure SBCancelClick(Sender: TObject);
    procedure SEStartPgChange(Sender: TObject);
    procedure SBExitClick(Sender: TObject);
    procedure CoBoPageSizeChange(Sender: TObject);
    procedure EdtRandomPageEnter(Sender: TObject);
    procedure EdtRandomPageExit(Sender: TObject);
    procedure EdtRandomPageKeyPress(Sender: TObject; var Key: Char);
  private
    DoCancel:Boolean;
  public
    { Public declarations }
  end;

var
  FmPrint: TFmPrint;

implementation

Uses ScanImageDM,YShamsiDate, ScanImageFm, Dmu;

{$R *.dfm}

procedure TFmPrint.FormShow(Sender: TObject);
begin
   CoBoPrinters.Items := Printer.Printers;
   SEEndtPg.Value := DMScanImage.QrLetterData.RecordCount;

   //ç«Åê—
   if CoBoPrinters.Items.Count > 0 then
      CoBoPrinters.ItemIndex := Dm.GetValue(2100);

   CoBoPageSize.ItemIndex := 0;
   CoBoPageSizeChange(Sender);
   LblPgCount.Caption := ' ⁄œ«œ : ' + IntToStr(DMScanImage.QrLetterData.RecordCount);
end;

procedure TFmPrint.SBPrintClick(Sender: TObject);
Var
   StartPage , EndPage : Integer;
   PageWidth , PageHight : integer;
   I : Integer;
   RandomText:String;
   ScaleX , ScaleY : Integer;
begin
   inherited;
   DoCancel := False;

   if CoBoPrinters.Items.Count = 0 then
   begin
      MBaseForm.MessageShowString('ÂÌç ç«Åê—Ì Ì«›  ‰‘œ', False);
      Exit;
   end;
   
   //Pixel Div 118 = Cantimetr , Pixel Div 12 = Milimetr
   Case CoBoPageSize.ItemIndex of
      0: begin //A4
            PageWidth := (SEWidth.Value * 12) ;
            PageHight := (SEHight.Value * 12) ;
         end;
      1: begin //A3
            PageWidth := (SEWidth.Value * 12)- (GetDeviceCaps(Printer.Handle, LOGPIXELSX)* 16);
            PageHight := (SEHight.Value * 12)- (GetDeviceCaps(Printer.Handle, LOGPIXELSY)* 16);
         end;
      2: begin //A5
            PageWidth := (SEWidth.Value * 12);
            PageHight := (SEHight.Value * 12);
         end;
      3: begin //B5
            PageWidth := (SEWidth.Value * 12);
            PageHight := (SEHight.Value * 12);
         end;
      4: begin //B4
            PageWidth := (SEWidth.Value * 12);
            PageHight := (SEHight.Value * 12);
         end;
      5: begin //B3
            PageWidth := (SEWidth.Value * 12);
            PageHight := (SEHight.Value * 12);
         end;
      6: begin //«»⁄«œ œ·ŒÊ«Â
            PageWidth := (SEWidth.Value);
            PageHight := (SEHight.Value);
         end;
   end;

   if RB1.Checked then //ç«Å ’›ÕÂ Ã«—Ì
   begin
      StartPage := DMScanImage.QrLetterData.RecNo;
      EndPage:= DMScanImage.QrLetterData.RecNo;
   end;

   if RB2.Checked then //ç«Å  „«„ ’›Õ« 
   begin
      StartPage := 1;
      EndPage:= DMScanImage.QrLetterData.RecordCount;
   end;

   if RB3.Checked then //ç«Å «“ ’›ÕÂ
   begin
      StartPage := SEStartPg.Value;
      EndPage := SEEndtPg.Value;
   end;

   if RB4.Checked then //ç«Å ’›Õ«   ⁄ÌÌ‰ ‘œÂ
   begin
      StartPage := 1;
      EndPage:= DMScanImage.QrLetterData.RecordCount;
   end;

   Try
      SBPrint.Enabled := False;
      Screen.Cursor := crHourGlass;
      RandomText := Trim(EdtRandomPage.Text);
      Printer.PrinterIndex := CoBoPrinters.ItemIndex;
      //Printer.Orientation := poLandscape;

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
         DMScanImage.QrLetterData.RecNo := I;
         DMScanImage.QrLetterDataAfterScroll(DMScanImage.QrLetterData);
         Application.ProcessMessages;


         if CoBoPageSize.ItemIndex <> 6 then //«»⁄«œ Ê«ﬁ⁄Ì
         begin
            //FmScanImage.ImageEnDBVect1.Proc.Resample(PageWidth , PageHight,rfNone)  //???
         end
         else
            begin
               //ÃÂ  »«“Ì«»Ì œÊ»«—Â  ’ÊÌ—
               FmScanImage.ImageEnDBVect1.DataSource := Nil;
               FmScanImage.ImageEnDBVect1.DataSource := DMScanImage.DSSelImage;
            end;

         Printer.BeginDoc;
         if CoBoPageSize.ItemIndex <> 6 then //«»⁄«œ Ê«ﬁ⁄Ì
            FmScanImage.ImageEnDBVect1.IO.PrintImage(Printer.Canvas ,0,0,0,0,ievpTOP,iehpLEFT,iesFITTOPAGESTRETCH,0,0,0)
         else
            FmScanImage.ImageEnDBVect1.IO.PrintImage(Printer.Canvas ,0,0,0,0,ievpCENTER,iehpCENTER,iesNORMAL,0,0,0);
         Printer.EndDoc;

      end;

      //ç«Åê—
      Dm.SetValue(2100,CoBoPrinters.ItemIndex);
      //–ŒÌ—Â «’·«Õ «»⁄«œ  ’ÊÌ—
      Case CoBoPageSize.ItemIndex of  
      0: begin
            Dm.SetValue(2110,SEWidth.Value);
            Dm.SetValue(2111,SEHight.Value);
         end; //A4
      1: begin
            Dm.SetValue(2112,SEWidth.Value);
            Dm.SetValue(2113,SEHight.Value);
         end; //A3
      2: begin
            Dm.SetValue(2114,SEWidth.Value);
            Dm.SetValue(2115,SEHight.Value);
         end; //A5
      3: begin
            Dm.SetValue(2116,SEWidth.Value);
            Dm.SetValue(2117,SEHight.Value);
         end; //B5
      4: begin
            Dm.SetValue(2118,SEWidth.Value);
            Dm.SetValue(2119,SEHight.Value);
         end; //B4
      5: begin
            Dm.SetValue(2120,SEWidth.Value);
            Dm.SetValue(2121,SEHight.Value);
         end; //B3
      6: begin
            Dm.SetValue(2122,SEWidth.Value);
            Dm.SetValue(2123,SEHight.Value);
         end; //œ·ŒÊ«Â
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

procedure TFmPrint.CoBoPageSizeChange(Sender: TObject);
Var
   W,H : Integer;
begin
   inherited;
   //œ— «Ì‰ ﬁ”„  «»⁄«œ Ê«ﬁ⁄Ì „‰Â«Ì ‰Ì„ ”«‰ Ì „ — ‘œÂ «” 
   Case CoBoPageSize.ItemIndex of        //Pixel Div 118 = Cantimetr , Pixel Div 12 = Milimetr
      0: begin  //A4
            W := Dm.GetValue(2110);
            H := Dm.GetValue(2111);
            if (W > 0)And(H > 0) then
            begin
               SEWidth.Value := W;
               SEHight.Value := H;
            end
               else
               begin
                  SEWidth.Value := (2480 Div 12);
                  SEHight.Value := (3508 Div 12);
               end;
            Label8.Caption := IntToStr(3508 Div 12) +'  *  '+ IntToStr(2480 Div 12);
         end; 
      1: begin  //A3
            W := Dm.GetValue(2112);
            H := Dm.GetValue(2113);
            if (W > 0)And(H > 0) then
            begin
               SEWidth.Value := W;
               SEHight.Value := H;
            end
               else
               begin
                  SEWidth.Value := (3508 Div 12);
                  SEHight.Value := (4961 Div 12);
               end;
            Label8.Caption := IntToStr(4961 Div 12) +'  *  '+ IntToStr(3508 Div 12);
         end; 
      2: begin //A5
            W := Dm.GetValue(2114);
            H := Dm.GetValue(2115);
            if (W > 0)And(H > 0) then
            begin
               SEWidth.Value := W;
               SEHight.Value := H;
            end
               else
               begin
                  SEWidth.Value := (1748 Div 12);
                  SEHight.Value := (2480 Div 12);
               end;
            Label8.Caption := IntToStr(2480 Div 12) +'  *  '+ IntToStr(1748 Div 12);
         end;
      3: begin //B5
            W := Dm.GetValue(2116);
            H := Dm.GetValue(2117);
            if (W > 0)And(H > 0) then
            begin
               SEWidth.Value := W;
               SEHight.Value := H;
            end
               else
               begin
                  SEWidth.Value := (2079 Div 12);
                  SEHight.Value := (2953 Div 12);
               end;
            Label8.Caption := IntToStr(2953 Div 12) +'  *  '+ IntToStr(2079 Div 12);
         end; 
      4: begin //B4
            W := Dm.GetValue(2118);
            H := Dm.GetValue(2119);
            if (W > 0)And(H > 0) then
            begin
               SEWidth.Value := W;
               SEHight.Value := H;
            end
               else
               begin
                  SEWidth.Value := (2953 Div 12);
                  SEHight.Value := (4169 Div 12);
               end;
            Label8.Caption := IntToStr(4169 Div 12) +'  *  '+ IntToStr(2953 Div 12);
         end; 
      5: begin //B3
            W := Dm.GetValue(2120);
            H := Dm.GetValue(2121);
            if (W > 0)And(H > 0) then
            begin
               SEWidth.Value := W;
               SEHight.Value := H;
            end
               else
               begin
                  SEWidth.Value := (4169 Div 12);
                  SEHight.Value := (5906 Div 12);
               end;
            Label8.Caption := IntToStr(5906 Div 12) +'  *  '+ IntToStr(4169 Div 12);
         end;
      6: begin  //œ·ŒÊ«Â
            SEWidth.Value := Dm.GetValue(2122);
            SEHight.Value := Dm.GetValue(2123);
            Label8.Caption := '';
         end; 
   end;
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

end.
