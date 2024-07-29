unit Settingsu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, ComCtrls, DB,  Buttons, DBCtrls, ADODB,
  ActnList, ExtCtrls, ExtActns, xpWindow, xpBitBtn;

type
  TSettings = class(TMBaseForm)
    ColorDialog1: TColorDialog;
    FontDialog: TFontDialog;
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
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
   //���� �����
   GraphicName := Dm.GetValue(2008);
   LblGraphic.Caption := '  ��� ������ ����� ��� :  '+ GraphicName;
   listbox1.Items.IndexOf( GraphicName );
   //---

   ShowOriginalErrorMessage.Checked:=Dm.GetValue(715);
   InitialDisplyMode.ItemIndex:=Dm.GetValue(744);
   {Ranjbar 89.06.23 ID=64}
   //IninitialSearchDate.text:=Dm.GetValue(745);
   //---

   DefaultNumberOfPage.Text := Dm.GetValue(105);
   DefaultRClassificationID.text := Dm.GetValue(102);

   //Ranjbar �������
   ChBoKaf.Checked := Dm.GetValue(200);

   //���� �����
   //if dm.GetValue(55) then
   if dm.GetSystemValue(27) then
      HasJpg.ItemIndex:=0
   else
      HasJpg.ItemIndex:=1;
   ChBoFax.Checked := dm.GetValue(77);//������ ����
   rgColor.ItemIndex := dm.GetValue(801);
   rgQuality.ItemIndex := dm.GetValue(802);
   HasJpg.ItemIndex := dm.GetValue(803);
   ScannerInput.ItemIndex := dm.GetValue(805);
   DuplexScan.ItemIndex := dm.GetValue(806);
   chkShowScannerDialog.Checked := dm.GetValue(807);
//--------------------���� ����� ������ ������----------------
     rgSizeImage.ItemIndex := Dm.GetValue(2104);
//--------------------����� ����� ������ ������---------------
end;

procedure TSettings.SetFromDm;
begin
   inherited;
   //Ranjbar
   Dm.SetValue(1013,EdtColor.Color);
   //���� �����
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

   //Ranjbar �������
   Dm.SetValue(200,ChBoKaf.Checked);

   //Dm.SetValue(55,HasJpg.ItemIndex=0); //���� �����
   Dm.SetSystemValue(27,HasJpg.ItemIndex=0); //���� �����
   //---
   Dm.SetValue(77,ChBoFax.Checked); //������ ����
   dm.SetValue(801,rgColor.ItemIndex);  //���
   dm.SetValue(802,rgQuality.ItemIndex);      //�����
   dm.SetValue(803,HasJpg.ItemIndex);
   dm.SetValue(805,ScannerInput.ItemIndex);  //feeder or flat
   dm.SetValue(806,DuplexScan.ItemIndex);
   dm.SetValue(807,chkShowScannerDialog.Checked);
//--------------------���� ����� ������ ������----------------
   if rgSizeImage.ItemIndex <> -1 then
     dm.SetValue(2104,rgSizeImage.ItemIndex);
//--------------------����� ����� ������ ������---------------

end;


procedure TSettings.FormCreate(Sender: TObject);
begin
  inherited;
  dm.Signers.Open;
  GetFromDm;
  //Ranjbar
  PageControl_SetTabSheet(PageControl1,'TshDefault');// ��� ��� ��
end;

procedure TSettings.BitBtn1Click(Sender: TObject);
begin
  inherited;
   SaveKeyvalue;
   SetFromDm;
   dm.GetValues;
   MBaseForm.messageShowString('���� ��� ����� ������� � �� ��� ����� ���� � ������ ���� ����', False);
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
         MBaseForm.MessageShowString(' ����� '+ ' Skins ' +' �� ���� ���� ������ ���� ��� ', False);
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
