 unit AmerceU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, Spin, ActnList, Mask, Buttons,
  Menus, YAmountEdit, ExtCtrls, DB, ADODB, AdvGlowButton;

type
  TFrAmerce = class(TYBaseForm)
    Panel1: TPanel;
    BitBtn1: TAdvGlowButton;
    BitBtn2: TAdvGlowButton;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    PartLabel: TLabel;
    PartTolerance: TSpinEdit;
    PartAmerce: TYAmountEdit;
    PartFromFirst: TCheckBox;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    PriodLabel: TLabel;
    MonthlyTolerance: TSpinEdit;
    MonthlyAmerce: TYAmountEdit;
    MonthlyFromFirst: TCheckBox;
    RBPartAmerce: TRadioButton;
    RBPartAmercePercent: TRadioButton;
    PartAmercePercent: TYAmountEdit;
    PartPercenttLabel: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    RBMonthlyAmerce: TRadioButton;
    RBMonthlyAmercePercent: TRadioButton;
    MonthlyAmercePercent: TYAmountEdit;
    Label6: TLabel;
    pnlMain: TPanel;
    procedure PartAmerceChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure MonthlyAmerceChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrAmerce: TFrAmerce;

implementation

uses DMU, YShamsiDate, BusinessLayer;

{$R *.dfm}

procedure TFrAmerce.PartAmerceChange(Sender: TObject);
begin
   inherited;
   try
//      PartLabel.Caption:=Bill(strtoint(trim(PartAmerce.Text)))+' —Ì«·'
      PartLabel.Caption:=Bill(strtoint(trim(PartAmerce.Text)))+' ' +Get_SystemSetting('EdtMoneyUnit')+' ';

   except
   end;
end;

procedure TFrAmerce.BitBtn2Click(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFrAmerce.FormCreate(Sender: TObject);
begin
   inherited;
   //--------------«ﬁ”«ÿ „«ÂÌ«‰Â
   {Ranjbar 88.06.25}
   Try
   if Get_SystemSetting('IsMonthlyAmercePercent')= 0 then
      RBMonthlyAmerce.Checked := True  //„Õ«”»Â Ã—Ì„Â »—«”«” „»·€
   else
      RBMonthlyAmercePercent.Checked := True; //„Õ«”»Â Ã—Ì„Â »—«”«” œ—’œ
   Except
   End;
   //„ﬁœ«— œ—’œ Ã—Ì„Â „«ÂÌ«‰Â
   Try MonthlyAmercePercent.Text := Get_SystemSetting('MonthlyAmercePercent'); Except End;
   //---
   try MonthlyFromFirst.Checked:=Get_SystemSetting('MonthlyFromFirst') except end;
   try MonthlyTolerance.Value:=Get_SystemSetting('MonthlyTolerance') except end;
   try MonthlyAmerce.Text:=Get_SystemSetting('MonthlyAmerce') except end;
                                                  

   //--------------«ﬁ”«ÿ Ê«„
   {Ranjbar 88.06.25}
   Try
   if Get_SystemSetting('IsPartAmercePercent')= 0 then
      RBPartAmerce.Checked := True  //„Õ«”»Â Ã—Ì„Â »—«”«” „»·€
   else
      RBPartAmercePercent.Checked := True; //„Õ«”»Â Ã—Ì„Â »—«”«” œ—’œ
   Except
   End;
   //„ﬁœ«— œ—’œ Ã—Ì„Â «ﬁ”«ÿ
   Try PartAmercePercent.Text := Get_SystemSetting('PartAmercePercent'); Except End;
   //---
   try PartFromFirst.Checked:=Get_SystemSetting('PartFromFirst') except end;
   try PartTolerance.Value:=Get_SystemSetting('PartTolerance') except end;
   try PartAmerce.Text:=Get_SystemSetting('PartAmerce') except end;
end;

procedure TFrAmerce.BitBtn1Click(Sender: TObject);
begin
   inherited;
   //Õﬁ ⁄÷ÊÌ 
   {Ranjbar 88.06.25}
   if RBMonthlyAmerce.Checked then
      Set_SystemSetting('IsMonthlyAmercePercent',0) //„Õ«”»Â Ã—Ì„Â »—«”«” „»·€
   else
      if RBMonthlyAmercePercent.Checked then
         Set_SystemSetting('IsMonthlyAmercePercent',1);//„Õ«”»Â Ã—Ì„Â »—«”«” œ—’œ
   Set_SystemSetting('MonthlyAmercePercent',MonthlyAmercePercent.YText);
   //---
   Set_SystemSetting('MonthlyAmerce',MonthlyAmerce.YText);
   Set_SystemSetting('MonthlyTolerance',MonthlyTolerance.Value);
   Set_SystemSetting('MonthlyFromFirst',MonthlyFromFirst.Checked);

   //«ﬁ”«ÿ Ê«„
   {Ranjbar 88.06.25}
   if RBPartAmerce.Checked then
      Set_SystemSetting('IsPartAmercePercent',0) //„Õ«”»Â Ã—Ì„Â »—«”«” „»·€
   else
      if RBPartAmercePercent.Checked then
         Set_SystemSetting('IsPartAmercePercent',1);//„Õ«”»Â Ã—Ì„Â »—«”«” œ—’œ
   Set_SystemSetting('PartAmercePercent',PartAmercePercent.YText);
   //---
   Set_SystemSetting('PartFromFirst',PartFromFirst.Checked);
   Set_SystemSetting('PartTolerance',PartTolerance.Value);
   Set_SystemSetting('PartAmerce',PartAmerce.YText);

   Close;
end;


procedure TFrAmerce.MonthlyAmerceChange(Sender: TObject);
begin
  inherited;
//  try PriodLabel.Caption:=Bill(strtoint(trim(MonthlyAmerce.Text)))+' —Ì«·'
    try PriodLabel.Caption:=Bill(strtoint(trim(MonthlyAmerce.Text)))+' ' +Get_SystemSetting('EdtMoneyUnit')+' ';
  except end;

end;

end.
