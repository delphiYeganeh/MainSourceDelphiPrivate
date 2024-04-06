unit Panel2u;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, fcpanel, fcLabel, StdCtrls, fcCombo, fctreecombo, ImgList, fcFrame,
  fcColorCombo, fcImager, fcStatusBar;

type
  TPanel2DemoForm = class(TForm)
    fcPanel1: TfcPanel;
    fcPanel2: TfcPanel;
    fcPanel3: TfcPanel;
    ImageList1: TImageList;
    fcGroupBox1: TfcGroupBox;
    FocusFrameCombo: TfcTreeCombo;
    focuslabel: TfcLabel;
    fcPanel4: TfcPanel;
    fcPanel5: TfcPanel;
    fcPanel6: TfcPanel;
    fcPanel7: TfcPanel;
    fcLabel1: TfcLabel;
    fcLabel2: TfcLabel;
    fcLabel3: TfcLabel;
    fcLabel4: TfcLabel;
    fcLabel5: TfcLabel;
    fcLabel6: TfcLabel;
    fcLabel7: TfcLabel;
    Edit1: TEdit;
    Edit3: TEdit;
    Edit5: TEdit;
    Edit2: TEdit;
    Edit4: TEdit;
    fcColorList1: TfcColorList;
    fcLabel8: TfcLabel;
    fcColorList2: TfcColorList;
    fcLabel9: TfcLabel;
    ListBox1: TListBox;
    ListBox2: TListBox;
    fcImager1: TfcImager;
    CheckBox1: TCheckBox;
    fcStatusBar1: TfcStatusBar;
    procedure FocusFrameComboChange(Sender: TObject);
    procedure fcPanel2Enter(Sender: TObject);
    procedure fcPanel2Exit(Sender: TObject);
    procedure fcColorList1Click(Sender: TObject);
    procedure fcColorList2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Panel2DemoForm: TPanel2DemoForm;
  lastpanel:TfcPanel;

implementation

{$R *.DFM}

procedure TPanel2DemoForm.FocusFrameComboChange(Sender: TObject);
var i:integer;
begin
  for i:= 0 to Controlcount-1 do begin
     if (Controls[i] is TfcPanel) then begin
       TfcPanel(Controls[i]).Frame.Enabled := True;

       if ((Sender as TfcTreeCombo).Text = 'Flat') then
          TfcPanel(Controls[i]).Frame.FocusStyle := efsFrameSingle
       else if ((Sender as TfcTreeCombo).Text = 'FrameBox') then
          TfcPanel(Controls[i]).Frame.FocusStyle := efsFrameBox
       else if ((Sender as TfcTreeCombo).Text = 'No Frame (Normal)') then begin
          TfcPanel(Controls[i]).Frame.Enabled := False;
          TfcPanel(Controls[i]).BorderStyle := bsSingle;
       end
       else if ((Sender as TfcTreeCombo).Text = 'Sunken') then
          TfcPanel(Controls[i]).Frame.FocusStyle := efsFrameSunken
       else if ((Sender as TfcTreeCombo).Text = 'Raised') then
          TfcPanel(Controls[i]).Frame.FocusStyle := efsFrameRaised
       else if ((Sender as TfcTreeCombo).Text = 'Etched') then
          TfcPanel(Controls[i]).Frame.FocusStyle := efsFrameEtched
       else if ((Sender as TfcTreeCombo).Text = 'Bump') then
          TfcPanel(Controls[i]).Frame.FocusStyle := efsFrameBump
     end;
  end;
  lastpanel.setfocus;
end;

procedure TPanel2DemoForm.fcPanel2Enter(Sender: TObject);
var l:TfcLabel;
begin
  l :=  FindComponent('fcLabel'+IntToStr((Sender as TfcPanel).Tag)) as TfcLabel;
  if l<>nil then l.Font.Color := clRed;
end;

procedure TPanel2DemoForm.fcPanel2Exit(Sender: TObject);
var l:TfcLabel;
begin
  l :=  FindComponent('fcLabel'+IntToStr((Sender as TfcPanel).Tag)) as TfcLabel;
  if l<>nil then l.Font.Color := clWindowText;
  lastPanel := Sender as TfcPanel;
end;

procedure TPanel2DemoForm.fcColorList1Click(Sender: TObject);
var i:integer;
begin
  for i:= 0 to Controlcount-1 do
     if (Controls[i] is TfcPanel) then
        TfcPanel(Controls[i]).Color := fcColorList1.SelectedColor;
  lastpanel.setfocus;
end;

procedure TPanel2DemoForm.fcColorList2Click(Sender: TObject);
var i:integer;
begin
  for i:= 0 to Controlcount-1 do
     if (Controls[i] is TfcPanel) then begin
        TfcPanel(Controls[i]).Frame.NonFocusColor := fcColorList2.SelectedColor;
        TfcPanel(Controls[i]).invalidate;
     end;
  lastpanel.setfocus;
end;

procedure TPanel2DemoForm.FormShow(Sender: TObject);
begin
  fcGroupBox1.FullBorder := True;
  Edit1.SetFocus;
end;

procedure TPanel2DemoForm.CheckBox1Click(Sender: TObject);
var i:integer;
begin
  for i:= 0 to Controlcount-1 do
     if (Controls[i] is TfcPanel) then begin
        TfcPanel(Controls[i]).Transparent := Checkbox1.checked;
        TfcPanel(Controls[i]).invalidate;
     end;
  lastpanel.setfocus;
  if Checkbox1.Checked then fcStatusBar1.Panels[0].Text := 'Focus/NonFocus Colors ignored when Transparent'
  else fcStatusBar1.Panels[0].Text := '';
end;

end.
