unit PanelDemo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, fcCombo, fctreecombo, fcLabel, fcpanel, fcColorCombo, fcImager,
  ComCtrls;

type
  TPanelDemoForm = class(TForm)
    fcGroupBox1: TfcGroupBox;
    fcLabel3: TfcLabel;
    fcLabel2: TfcLabel;
    fcLabel1: TfcLabel;
    fcTreeCombo3: TfcTreeCombo;
    fcTreeCombo2: TfcTreeCombo;
    fcTreeCombo1: TfcTreeCombo;
    fcGroupBox2: TfcGroupBox;
    fcLabel8: TfcLabel;
    fcLabel9: TfcLabel;
    fcTreeCombo4: TfcTreeCombo;
    fcTreeCombo5: TfcTreeCombo;
    fcGroupBox3: TfcGroupBox;
    fcImager1: TfcImager;
    fcColorCombo1: TfcColorCombo;
    fcColorCombo2: TfcColorCombo;
    fcLabel4: TfcLabel;
    fcLabel5: TfcLabel;
    CheckBox1: TCheckBox;
    FullBorderCheckbox: TCheckBox;
    Edit1: TEdit;
    fcLabel6: TfcLabel;
    UpDown1: TUpDown;
    procedure fcColorCombo1Change(Sender: TObject);
    procedure fcColorCombo2Change(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure FullBorderCheckboxClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PanelDemoForm: TPanelDemoForm;

implementation

{$R *.DFM}

procedure TPanelDemoForm.fcColorCombo1Change(Sender: TObject);
begin
  fcgroupbox1.Frame.nonfocuscolor:=fccolorcombo1.selectedcolor;
  fcgroupbox2.Frame.nonfocuscolor:=fccolorcombo1.selectedcolor;
  fcgroupbox1.invalidate;
  fcgroupbox2.invalidate;
end;

procedure TPanelDemoForm.fcColorCombo2Change(Sender: TObject);
begin
  fcgroupbox1.color:=fccolorcombo2.selectedcolor;
  fcgroupbox2.color:=fccolorcombo2.selectedcolor;
  fcgroupbox1.invalidate;
  fcgroupbox2.invalidate;
end;

procedure TPanelDemoForm.CheckBox1Click(Sender: TObject);
begin
  with (Sender as TCheckbox) do
  begin
     fcGroupbox1.transparent:= checked;
     fcGroupbox2.transparent:= checked;
     fcColorCombo1.enabled:= not checked;
     fcColorCombo2.enabled:= not checked;
  end;


end;

procedure TPanelDemoForm.FullBorderCheckboxClick(Sender: TObject);
begin
  with (Sender as TCheckbox) do
  begin
     fcGroupbox1.FullBorder := checked;
     fcGroupbox2.FullBorder := checked;
  end;
  invalidate;
end;

procedure TPanelDemoForm.Edit1Change(Sender: TObject);
begin
   fcGroupBox1.CaptionIndent := UpDown1.Position;
   fcGroupBox2.CaptionIndent := UpDown1.Position;
   invalidate;
end;

end.
