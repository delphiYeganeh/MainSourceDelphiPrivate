unit DBGridCustomizeU;

interface

uses
  Windows, Messages, SysUtils,  Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, CheckLst, Grids, DBGrids, YDbgrid, DB, ADODB,
  ExtCtrls,Printers;

type
  TDBGCustomizeForm = class(TForm)
    GroupBox2: TGroupBox;
    ColumnList: TCheckListBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel1: TPanel;
    Oreintion: TRadioGroup;
    GroupBox1: TGroupBox;
    PageNumber: TCheckBox;
    RecordNumber: TCheckBox;
    ReportTime: TCheckBox;
    ReportDate: TCheckBox;
    Panel2: TPanel;
    Label1: TLabel;
    ETitle: TEdit;
    FontDialog1: TFontDialog;
    GroupBox3: TGroupBox;
    ColumnF: TBitBtn;
    HeaderF: TBitBtn;
    TitleF: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    HasIndex: TCheckBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure TitleFClick(Sender: TObject);
    procedure HeaderFClick(Sender: TObject);
    procedure ColumnFClick(Sender: TObject);
  private
    { Private declarations }
  public
   YDBGrid:TYDBGrid;
    { Public declarations }
  end;

var
  DBGCustomizeForm: TDBGCustomizeForm;

implementation

{$R *.dfm}

procedure TDBGCustomizeForm.BitBtn2Click(Sender: TObject);
begin
 close;
end;

procedure TDBGCustomizeForm.FormShow(Sender: TObject);
 var i: byte;
begin
 ColumnList.Items.Clear;
 with YDBGrid do
  begin
   for i:=0 to Columns.Count-1 do
     ColumnList.Items.Add(Columns[i].Title.Caption);
   for i:=0 to Columns.Count-1 do
     ColumnList.Checked[i]:=Columns[i].Visible;
       ColumnF.Font:=Columns[0].Font;
       HeaderF.Font:=Columns[0].Title.Font;
       TitleF.Font:=TitleFont;
    end;

   PageNumber.Checked:=YDBGrid.PageNumber;
   RecordNumber.Checked:=YDBGrid.RecordNumber;
   ReportTime.Checked:=YDBGrid.HasTime;
   ReportDate.Checked:=YDBGrid.HasDate;
   HasIndex.Checked:=YDBGrid.HasIndex;
   Oreintion.ItemIndex:=byte(YDBGrid.Oriention);
   ETitle.text:=YDBGrid.PrintTitle;


end;

procedure TDBGCustomizeForm.BitBtn1Click(Sender: TObject);
  var i: byte;
begin
   for i:=0 to YDBGrid.Columns.Count-1 do
    with YDBGrid.Columns[i] do
      begin
       Visible:=ColumnList.Checked[i];
       Font:=ColumnF.Font;
       Title.Font:=HeaderF.Font;
      end;

   YDBGrid.PageNumber:=PageNumber.Checked;
   YDBGrid.RecordNumber:=RecordNumber.Checked;
   YDBGrid.HasTime:=ReportTime.Checked;
   YDBGrid.HasDate:=ReportDate.Checked;
   YDBGrid.HasIndex:=HasIndex.Checked;
   YDBGrid.Oriention:=TPrinterOrientation(Oreintion.ItemIndex);
   YDBGrid.PrintTitle:=ETitle.text;
   YDBGrid.TitleFont:=TitleF.Font;

 end;
procedure TDBGCustomizeForm.TitleFClick(Sender: TObject);
begin
 if DBGCustomizeForm.FontDialog1.Execute then
   TitleF.Font:=DBGCustomizeForm.FontDialog1.Font
end;

procedure TDBGCustomizeForm.HeaderFClick(Sender: TObject);
begin
 if DBGCustomizeForm.FontDialog1.Execute then
   HeaderF.Font:=DBGCustomizeForm.FontDialog1.Font
end;

procedure TDBGCustomizeForm.ColumnFClick(Sender: TObject);
begin

 if DBGCustomizeForm.FontDialog1.Execute then
   ColumnF.Font:=DBGCustomizeForm.FontDialog1.Font


end;

end.













