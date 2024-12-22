unit Settingsu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, ComCtrls, DB,  Buttons, DBCtrls, ADODB,
  ActnList, ExtCtrls, ExtActns, xpWindow, xpBitBtn, AdvGlowButton;

type
  TSettings = class(TMBaseForm)
    ColorDialog1: TColorDialog;
    FontDialog: TFontDialog;
    Panel1: TPanel;
    BitBtn2: TAdvGlowButton;
    BitBtn1: TAdvGlowButton;
    PageControl1: TPageControl;
    TShReports: TTabSheet;
    TShGraphic: TTabSheet;
    TShSystem: TTabSheet;
    TshDefault: TTabSheet;
    GroupBox1: TGroupBox;
    Label20: TLabel;
    Label6: TLabel;
    Label28: TLabel;
    DefaultRClassificationID: TEdit;
    InitialDisplyMode: TComboBox;
    DefaultNumberOfPage: TEdit;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    LblGraphic: TLabel;
    ListBox1: TListBox;
    GroupBox8: TGroupBox;
    ShowOriginalErrorMessage: TCheckBox;
    GroupBox3: TGroupBox;
    ChBoKaf: TCheckBox;
    Label8: TLabel;
    HasJpg: TRadioGroup;
    EdtColor: TEdit;
    ChBoFax: TCheckBox;
    rgQuality: TRadioGroup;
    rgColor: TRadioGroup;
    ScannerInput: TRadioGroup;
    DuplexScan: TRadioGroup;
    chkShowScannerDialog: TCheckBox;
    rgSizeImage: TRadioGroup;
    Edit_serReesolation: TEdit;
    Label2: TLabel;
    pnlMain: TPanel;
    rgModeColor: TRadioGroup;
    pnlColor: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    ColorBox1: TColorBox;
    ColorBox2: TColorBox;
    ColorBox3: TColorBox;
    ColorBox4: TColorBox;
   procedure GetFromDm;
   procedure SetFromDm;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure EdtColorClick(Sender: TObject);
    procedure HasJpgClick(Sender: TObject);
    procedure rgColorClick(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
    procedure SaveKeyvalue;
    function LoadKeyvalue:String;
  public
    { Public declarations }
  end;

var
  Settings: TSettings;

implementation

uses Dmu, YShamsiDate, UMain;

{$R *.dfm}

procedure TSettings.GetFromDm;
Var
   GraphicName :String;
begin
   inherited;
   {Ranjbar Ver5}
   EdtColor.Color := Dm.GetValue(1013);
   //Ÿ«Â— ”Ì” „
   GraphicName := Dm.GetValue(2008);
   LblGraphic.Caption := '  ‰«„ ê—«›Ìﬂ –ŒÌ—Â ‘œÂ :  '+ GraphicName;
   listbox1.Items.IndexOf( GraphicName );
   //---

   ShowOriginalErrorMessage.Checked:=Dm.GetValue(715);
   InitialDisplyMode.ItemIndex:=Dm.GetValue(744);
   {Ranjbar 89.06.23 ID=64}
   //IninitialSearchDate.text:=Dm.GetValue(745);
   //---

   DefaultNumberOfPage.Text := Dm.GetValue(105);
   DefaultRClassificationID.text := Dm.GetValue(102);

   //Ranjbar ê“«—‘« 
   ChBoKaf.Checked := Dm.GetValue(200);

   //«”ﬂ‰  ’ÊÌ—
   //if dm.GetValue(55) then
   if dm.GetSystemValue(27) then
      HasJpg.ItemIndex:=0
   else
      HasJpg.ItemIndex:=1;
   ChBoFax.Checked := dm.GetValue(77);// ’«ÊÌ— ›«ﬂ”
   rgColor.ItemIndex := dm.GetValue(801);
   rgQuality.ItemIndex := dm.GetValue(802);
   HasJpg.ItemIndex := dm.GetValue(803);
   ScannerInput.ItemIndex := dm.GetValue(805);
   DuplexScan.ItemIndex := dm.GetValue(806);
   chkShowScannerDialog.Checked := dm.GetValue(807);
//--------------------‘—Ê⁄ ‰„«Ì‘ «‰œ«“Â  ’«ÊÌ—----------------
     rgSizeImage.ItemIndex := Dm.GetValue(2104);
//--------------------Å«Ì«‰ ‰„«Ì‘ «‰œ«“Â  ’«ÊÌ—---------------

   rgModeColor.ItemIndex := Dm.GetValue(3000);
   if  rgModeColor.ItemIndex = 2 then
   begin
      ColorBox1.Selected := Dm.GetValue(3001);
      ColorBox2.Selected := Dm.GetValue(3002);
      ColorBox3.Selected := Dm.GetValue(3003);
      ColorBox4.Selected := Dm.GetValue(3004);
   end;
   pnlColor.Enabled := (rgModeColor.ItemIndex = 2) ;
end;

procedure TSettings.SetFromDm;
begin
   inherited;
   //Ranjbar
   Dm.SetValue(1013,EdtColor.Color);
   //Ÿ«Â— ”Ì” „
   if listbox1.Itemindex >= 0 then
      Dm.SetValue(2008 , listbox1.Items[listbox1.Itemindex]);
   //---

   Dm.SetValue(715,ShowOriginalErrorMessage.Checked);
   Dm.SetValue(744,InitialDisplyMode.ItemIndex);
   {Ranjbar 89.06.23 ID=64}
   //Dm.SetValue(745,IninitialSearchDate.text);
   //---
   Dm.SetValue(102,DefaultRClassificationID.text);
   Dm.SetValue(105,DefaultNumberOfPage.text);

   //Ranjbar ê“«—‘« 
   Dm.SetValue(200,ChBoKaf.Checked);

   //Dm.SetValue(55,HasJpg.ItemIndex=0); //«”ﬂ‰  ’ÊÌ—
   Dm.SetSystemValue(27,HasJpg.ItemIndex=0); //«”ﬂ‰  ’ÊÌ—
   //---
   Dm.SetValue(77,ChBoFax.Checked); // ’«ÊÌ— ›«ﬂ”
   dm.SetValue(801,rgColor.ItemIndex);  //—‰êÌ
   dm.SetValue(802,rgQuality.ItemIndex);      //òÌ›Ì 
   dm.SetValue(803,HasJpg.ItemIndex);
   dm.SetValue(805,ScannerInput.ItemIndex);  //feeder or flat
   dm.SetValue(806,DuplexScan.ItemIndex);
   dm.SetValue(807,chkShowScannerDialog.Checked);
//--------------------‘—Ê⁄ ‰„«Ì‘ «‰œ«“Â  ’«ÊÌ—----------------
   if rgSizeImage.ItemIndex <> -1 then
     dm.SetValue(2104,rgSizeImage.ItemIndex);
//--------------------Å«Ì«‰ ‰„«Ì‘ «‰œ«“Â  ’«ÊÌ—---------------

  dm.SetValue(3000,rgModeColor.ItemIndex);
   _Color5 := clWindow  ;
   if rgModeColor.ItemIndex = 0 then
   begin
      dm.SetValue(3001,$00FFF4F4);
      dm.SetValue(3002,$00FFD9D9);
      dm.SetValue(3003,clWhite);
      dm.SetValue(3004,$00FFCACA);
   end
   else
   if rgModeColor.ItemIndex = 1 then
   begin
      dm.SetValue(3001,$00B1D0D1);
      dm.SetValue(3002,$005FB6BA);
      dm.SetValue(3003,$002F7B72);
      dm.SetValue(3004,$00002F2F);
   end
   else
   if rgModeColor.ItemIndex = 2 then
   begin
      dm.SetValue(3001,ColorBox1.Selected);
      dm.SetValue(3002,ColorBox2.Selected);
      dm.SetValue(3003,ColorBox3.Selected);
      dm.SetValue(3004,ColorBox4.Selected);
   end;

end;


procedure TSettings.FormCreate(Sender: TObject);
begin
  inherited;
  dm.Signers.Open;
  GetFromDm;
  //Ranjbar
  PageControl_SetTabSheet(PageControl1,'TshDefault');// ÅÌ‘ ›—÷ Â«
end;

procedure TSettings.BitBtn1Click(Sender: TObject);
begin
  inherited;
   SaveKeyvalue;
   SetFromDm;
   dm.GetValues;
   MBaseForm.messageShowString('·ÿ›« ÃÂ  «⁄„«·  €ÌÌ—«  ° «“ ‰—„ «›“«— Œ«—Ã Ê œÊ»«—Â Ê«—œ ‘ÊÌœ', False);
   Close;
end;

procedure TSettings.BitBtn2Click(Sender: TObject);
begin
  inherited;
close;
end;

procedure TSettings.ListBox1Click(Sender: TObject);
Var
   ItemNamePath : String;
begin
   inherited;

   if listbox1.Itemindex >= 0 then
   begin
      if Not DirectoryExists(ExtractFilePath(Application.ExeName)+ 'Skins') then
      begin
         MBaseForm.MessageShowString(' ›Ê·œ— '+ ' Skins ' +' œ— ﬂ‰«— ›«Ì· «Ã—«ÌÌ Ì«›  ‰‘œ ', False);
         Exit;
      end;
      ItemNamePath := ExtractFilePath(Application.ExeName)+ 'Skins\' +Trim(listbox1.Items[listbox1.Itemindex]);
//      MainForm.SkinData1.LoadFromFile(ItemNamePath+'.Skn');

      //if FileExists(ItemNamePath+'.Jpg') then
         //Image1.Picture.LoadFromFile(ItemNamePath+'.Jpg');
   end;  
end;

procedure TSettings.EdtColorClick(Sender: TObject);
begin
   inherited;
   if ColorDialog1.Execute then
      EdtColor.Color := ColorDialog1.Color;
end;

procedure TSettings.HasJpgClick(Sender: TObject);
begin
  inherited;
   if HasJpg.ItemIndex = 0 then
      if rgColor.ItemIndex = 0 then
         rgColor.ItemIndex := 1;
end;

procedure TSettings.rgColorClick(Sender: TObject);
begin
  inherited;
   if HasJpg.ItemIndex = 0 then
      if rgColor.ItemIndex = 0 then
         rgColor.ItemIndex := 1;
end;

procedure TSettings.FormShow(Sender: TObject);
begin
  inherited;

  LoadKeyvalue
end;

procedure TSettings.SaveKeyvalue;
begin
with TADOQuery.Create(nil) do
  begin
   sql.clear;
   SQL.Add('update  keyvalue set value = '+QuotedStr(Edit_serReesolation.Text)+' where [key]= '+QuotedStr('IMGDPI'));
   try
     Connection:=Dm.YeganehConnection;
     ExecSQL;

   except

   end;
   Free;
  end;
end;

function TSettings.LoadKeyvalue: String;
begin
with TADOQuery.Create(nil) do
  begin
   sql.clear;
   SQL.Add('Select * from keyvalue where [key]= '+QuotedStr('IMGDPI'));
   try
     Connection:=Dm.YeganehConnection;
     open;
     Result:=FieldByName('value').AsString;

     Edit_serReesolation.Text:=Result;
   except

   end;
   Free;
  end;

end;

end.
