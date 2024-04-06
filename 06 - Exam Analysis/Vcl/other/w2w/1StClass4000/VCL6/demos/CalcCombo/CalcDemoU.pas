unit CalcDemoU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcLabel, StdCtrls, fcCombo, fcCalcEdit, fcButton, fcImgBtn, fcShapeBtn,
  ExtCtrls, fcClearPanel, fcButtonGroup, fcOutlookBar, fcCalculator,
  fcpanel, fcColorCombo, ComCtrls, fcDemoRichEdit;

type
  TCalculatorDemoForm = class(TForm)
    CalcDemoOutlookBar: TfcOutlookBar;
    CalculatorBitmap: TfcShapeBtn;
    Configurations: TfcShapeBtn;
    Behavior: TfcShapeBtn;
    DisplayformatPage: TfcShapeBtn;
    fcCalcEdit1: TfcCalcEdit;
    fcCalcEdit2: TfcCalcEdit;
    fcCalcEdit3: TfcCalcEdit;
    fcCalcEdit4: TfcCalcEdit;
    Bevel1: TBevel;
    fcGroupBox1: TfcGroupBox;
    ButtonAppearanceRadio: TRadioGroup;
    HotTrackButtonsCheckbox: TCheckBox;
    HideBorderCheckbox: TCheckBox;
    DrawStyleRadio: TRadioGroup;
    Bevel2: TBevel;
    ButtonArrangementRadio: TRadioGroup;
    Bevel3: TBevel;
    CloseOnEqualsCheckbox: TCheckBox;
    ShowDecimalCheckbox: TCheckBox;
    DigitGroupingCheckbox: TCheckBox;
    fcColorList1: TfcColorList;
    fcLabel1: TfcLabel;
    ButtonAppearanceRadio2: TRadioGroup;
    Bevel4: TBevel;
    fcCalcEdit5: TfcCalcEdit;
    fcCalcEdit6: TfcCalcEdit;
    ShowDropDownCheckbox: TCheckBox;
    fcLabel2: TfcLabel;
    fcDemoRichEdit1: TfcDemoRichEdit;
    procedure fcCalcEdit1BeforeDropDown(Sender: TObject);
    procedure fcCalcEdit2BeforeDropDown(Sender: TObject);
    procedure fcCalcEdit3BeforeDropDown(Sender: TObject);
    procedure ShowDecimalCheckboxClick(Sender: TObject);
    procedure ShowDropDownCheckboxClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CalculatorDemoForm: TCalculatorDemoForm;

implementation

{$R *.DFM}

procedure TCalculatorDemoForm.fcCalcEdit1BeforeDropDown(Sender: TObject);
begin
  with Sender as TfcCalcEdit do begin
     CalcOptions.Options := [cboHideEditor];

     case DrawStyleRadio.ItemIndex of
     0:CalcOptions.BackGroundStyle := cbdTile;
     1:CalcOptions.BackGroundStyle := cbdStretch;
     2:CalcOptions.BackGroundStyle := cbdCenter;
     3:CalcOptions.BackGroundStyle := cbdTile;
     end;

     case ButtonAppearanceRadio.ItemIndex of
       0:CalcOptions.Options := CalcOptions.Options + [cboFlatButtons];
       1:CalcOptions.Options := CalcOptions.Options + [cboRoundedButtons];
       3:CalcOptions.Options := CalcOptions.Options + [cboFlatDrawStyle];
     end;

     if HotTrackButtonsCheckbox.Checked then
        CalcOptions.Options := CalcOptions.Options + [cboHotTrackButtons];

     if HideBorderCheckbox.Checked then
        CalcOptions.Options := CalcOptions.Options + [cboHideBorder];
  end;
end;

procedure TCalculatorDemoForm.fcCalcEdit2BeforeDropDown(Sender: TObject);
begin
  with Sender as TfcCalcEdit do begin
     CalcOptions.Options := [cboHideEditor];

     case ButtonArrangementRadio.ItemIndex of
        0:CalcOptions.Options := CalcOptions.Options + [cboSimpleCalc];
        2:CalcOptions.Options := CalcOptions.Options + [cboHideMemory];
     end;
  end;
end;

procedure TCalculatorDemoForm.fcCalcEdit3BeforeDropDown(Sender: TObject);
begin
  with Sender as TfcCalcEdit do begin
     CalcOptions.Options := [cboHideEditor];

     if CloseOnEqualsCheckbox.Checked then
        CalcOptions.Options := CalcOptions.Options + [cboCloseOnEquals];

     if DigitGroupingCheckbox.Checked then
        CalcOptions.Options := CalcOptions.Options + [cboDigitGrouping];

     if ShowDecimalCheckbox.Checked then
        CalcOptions.Options := CalcOptions.Options + [cboShowDecimal];


     CalcOptions.PanelColor := fcColorList1.SelectedColor;

     case ButtonAppearanceRadio2.ItemIndex of
       0:CalcOptions.Options := CalcOptions.Options + [cboFlatButtons];
       1:CalcOptions.Options := CalcOptions.Options + [cboRoundedButtons];
       3:CalcOptions.Options := CalcOptions.Options + [cboFlatDrawStyle];
     end;

  end;
end;

procedure TCalculatorDemoForm.ShowDecimalCheckboxClick(Sender: TObject);
begin
   fcCalcEdit3BeforeDropDown(fcCalcEdit3);
end;

procedure TCalculatorDemoForm.ShowDropDownCheckboxClick(Sender: TObject);
begin
  with Sender as TfcCalcEdit do
   ShowButton := ShowDropDownCheckbox.Checked;
end;

end.
