unit SystemSettingU;

interface

uses
  Windows, db,Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, xpBitBtn, xpWindow, ActnList, StdCtrls, Spin, ExtCtrls,
  ExtDlgs, Grids, DBGrids, YDbgrid, DBCtrls, Menus, Buttons;

type
  TFrSystemSetting = class(TMBaseForm)
    xpBitBtn1: TxpBitBtn;
    xpBitBtn2: TxpBitBtn;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label9: TLabel;
    UniversityTitle: TEdit;
    Edit6: TEdit;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    AplicantCaption: TEdit;
    Label2: TLabel;
    AplicantPluralCaption: TEdit;
    Label3: TLabel;
    AplicantCodeCaption: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure xpBitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrSystemSetting: TFrSystemSetting;

implementation

uses BusinessLayer, dmu, YShamsiDate, UMainForm;

{$R *.dfm}

procedure TFrSystemSetting.FormCreate(Sender: TObject);
var i: integer;
begin
  inherited;

for i:=0 to ComponentCount-1 do
 begin
   if Components[i].ClassNameIs('Tedit') then
     try TEdit(Components[i]).Text:=Get_SystemSetting(Components[i].Name) except end
     else
   if Components[i].ClassNameIs('TCheckBox') then
     try TCheckBox(Components[i]).Checked:=Get_SystemSetting(Components[i].Name) except end
   else
   if Components[i].ClassNameIs('TSpinEdit') then
     try TSpinEdit(Components[i]).Value:=Get_SystemSetting(Components[i].Name)  except end
   else
   if Components[i].ClassNameIs('TDBLookupComboBox') then
     try TDBLookupComboBox(Components[i]).KeyValue:=Get_SystemSetting(Components[i].Name)  except end
   else
   if Components[i].ClassNameIs('TComboBox') then
     try TComboBox(Components[i]).ItemIndex:=Get_SystemSetting(Components[i].Name)  except end;

 end;



end;


procedure TFrSystemSetting.xpBitBtn1Click(Sender: TObject);
begin
close;

end;

procedure TFrSystemSetting.xpBitBtn2Click(Sender: TObject);
var i: integer;
begin
  inherited;
for i:=0 to ComponentCount-1 do
 begin
   if Components[i].ClassNameIs('Tedit') then
      Set_SystemSetting(Components[i].name,trim(TEdit(Components[i]).text))
     else
   if Components[i].ClassNameIs('TCheckBox') then
      Set_SystemSetting(Components[i].name,TCheckBox(Components[i]).Checked)
   else
   if Components[i].ClassNameIs('TSpinEdit') then
      Set_SystemSetting(Components[i].Name,TSpinEdit(Components[i]).Value)
   else
   if Components[i].ClassNameIs('TDBLookupComboBox') then
      Set_SystemSetting(Components[i].Name,TDBLookupComboBox(Components[i]).KeyValue)
   else
   if Components[i].ClassNameIs('TComboBox') then
      Set_SystemSetting(Components[i].Name,TComboBox(Components[i]).ItemIndex);

 end;
 _ApplicentEntityCaption := trim(AplicantCaption.Text);
 _ApplicentEntityPlural := trim(AplicantPluralCaption.Text);
 _ApplicentCodeEntityCaption := trim(AplicantCodeCaption.Text);
 MainForm.LoadGrids;
 close;

end;

end.
