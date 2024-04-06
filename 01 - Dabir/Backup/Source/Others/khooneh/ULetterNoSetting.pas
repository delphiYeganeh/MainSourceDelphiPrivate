unit ULetterNoSetting;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, xpWindow, ExtActns, ActnList, DB, xpBitBtn,
  Mask;

type
  TFrLetterNoSetting = class(TMBaseForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    BitBtn1: TxpBitBtn;
    BitBtn2: TxpBitBtn;
    MaskEdit1: TEdit;
    Label7: TLabel;
    ComboBox1: TComboBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrLetterNoSetting: TFrLetterNoSetting;

implementation

uses Dmu;

{$R *.dfm}

procedure TFrLetterNoSetting.BitBtn2Click(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFrLetterNoSetting.BitBtn1Click(Sender: TObject);
var i: byte;
begin
  inherited;
 for i:=1 to 6 do
  dm.SetSystemValue(34+i,TComboBox(FindComponent('indicator'+IntToStr(i))).ItemIndex);
 dm.SetSystemValue(44,MaskEdit1.Text);
 close;
end;

procedure TFrLetterNoSetting.FormCreate(Sender: TObject);
var i: byte;
begin
  inherited;
 for i:=1 to 6 do
  begin
   TComboBox(FindComponent('indicator'+IntToStr(i))).items.Clear;
   TComboBox(FindComponent('indicator'+IntToStr(i))).items.add('Œ«·Ì');
   TComboBox(FindComponent('indicator'+IntToStr(i))).items.add('òœ œ»Ì—Œ«‰Â');
   TComboBox(FindComponent('indicator'+IntToStr(i))).items.add('”«·');
   TComboBox(FindComponent('indicator'+IntToStr(i))).items.add('‘„«—Â «‰œÌò« Ê—');
   TComboBox(FindComponent('indicator'+IntToStr(i))).items.add('òœ ÿ—› „ò« »Â');
   TComboBox(FindComponent('indicator'+IntToStr(i))).items.add('òœ ÿ—› „ò« »Â œ«Œ·Ì');
   TComboBox(FindComponent('indicator'+IntToStr(i))).items.add('òœ ‰Ê⁄ ‰«„Â');
   TComboBox(FindComponent('indicator'+IntToStr(i))).items.add(dm.UserMem);
   TComboBox(FindComponent('indicator'+IntToStr(i))).items.add('ÅÌ‘ òœ ç«—  ”«“„«‰Ì');
   TComboBox(FindComponent('indicator'+IntToStr(i))).ItemIndex:=dm.GetSystemValue(34+i);
  end;
   MaskEdit1.Text:=dm.GetSystemValue(44);
end;

end.
