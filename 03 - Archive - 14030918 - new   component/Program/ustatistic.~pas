unit ustatistic;

interface

uses
  Windows, Menus, DB, Classes, ActnList, ActnMan, ADODB,
  Controls, StdCtrls, DBTreeView,Graphics, ComCtrls, Buttons, DBCtrls, Grids,
  DBGrids, YDbgrid, ExtCtrls,Forms,SysUtils,variants, Series, TeEngine,
  TeeProcs, Chart, DbChart, Dialogs, ExtDlgs, XPStyleActnCtrls, WordXP,
  OleServer, xpBitBtn, AdvGlowButton, BaseUnit;
  type
  TStatisticForm = class(TMBaseForm)
    pnlList: TPanel;
    PSearch: TPanel;
    LetterPopup: TPopupMenu;
    N1: TMenuItem;
    N3: TMenuItem;
    N12: TMenuItem;
    lettersDbGrid: TYDbgrid;
    N4: TMenuItem;
    PtoolBar: TPanel;
    N9: TMenuItem;
    N10: TMenuItem;
    N5: TMenuItem;
    N7: TMenuItem;
    N13: TMenuItem;
    sp_Statistic: TADOStoredProc;
    Dsp_Statistic: TDataSource;
    BarChart: TDBChart;
    Series1: TBarSeries;
    sp_Statisticid: TIntegerField;
    sp_Statistictitle: TWideStringField;
    sp_Statisticnumber: TIntegerField;
    Piechart: TDBChart;
    BarSeries1: TPieSeries;
    fastlineChart: TDBChart;
    PieSeries1: TLineSeries;
    pnlTopBtn: TPanel;
    BitBtn1: TAdvGlowButton;
    BitBtn2: TAdvGlowButton;
    BitBtn3: TAdvGlowButton;
    BitBtn4: TAdvGlowButton;
    SavePictureDialog: TSavePictureDialog;
    BitBtn5: TAdvGlowButton;
    WordApplication: TWordApplication;
    WordDocument: TWordDocument;
    BitBtn6: TAdvGlowButton;
    DGetList5: TDataSource;
    DgetList6: TDataSource;
    GetList6: TADOStoredProc;
    GetList5: TADOStoredProc;
    List6: TDBLookupComboBox;
    List5: TDBLookupComboBox;
    pnlMains: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    procedure SetColors;
    procedure AChangeColorExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure RefreshQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure WordApplicationDocumentBeforeClose(ASender: TObject;
      const Doc: _Document; var Cancel: WordBool);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure List5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure List6Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StatisticForm: TStatisticForm;

implementation

uses   UMain, QuickSearch, Dmu;
{$R *.DFM}




procedure  TStatisticForm.SetColors;
begin
  with dm do
   begin
    lettersDbGrid.Color:=GetValue(1009);
    PToolBar.Color:=GetValue(1011);
   end;
end;

procedure TStatisticForm.AChangeColorExecute(Sender: TObject);
begin
   inherited;
   {ColorSettingF:=TColorSettingF.Create(Application);
   ColorSettingF.ShowModal;
   setcolors;}
end;

procedure TStatisticForm.FormShow(Sender: TObject);
begin
   inherited;
   SetColors;
   lettersDbGrid.Columns[0].Title.Caption:='—œÌ›';
   lettersDbGrid.PrintTitle:=List5.Text;
   BarChart.Title.Text.Text:=List5.Text;
   Piechart.Title.Text.Text:=List5.Text;
   fastlineChart.Title.Text.Text:=List5.Text;
   //Ranjbar
   List5Click(Sender);
   //---
end;

procedure TStatisticForm.N9Click(Sender: TObject);
begin
  inherited;
  lettersDbGrid.Print;
end;

procedure TStatisticForm.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  MainForm.AFromOrganize.Execute;
end;

procedure TStatisticForm.N13Click(Sender: TObject);
begin
  inherited;
  lettersDbGrid.CustomizePrint;
end;

procedure TStatisticForm.RefreshQuery;
begin
  inherited;

  with sp_Statistic,Parameters do
  begin
    close;
     ParamByName('@where').Value:=MainForm.Where;
     ParamByName('@GroupBy').Value:=List5.KeyValue+1;
     ParamByName('@archiveFolderID').value:=MainForm.archiveFolderID;
     ParamByName('@Letter_Type').value:=MainForm.Letter_Type;
     ParamByName('@LetterFormat').value:=MainForm.LetterFormat;
     if List5.KeyValue<>4 then
       ParamByName('@myear').value:=0
      else
       ParamByName('@myear').value:=0;

     ParamByName('@Secretariatid').value:=dm.SecID;
    open;
  end;
  lettersDbGrid.Columns[1].Title.Caption:=copy(List5.Text,14,length(List5.Text)-13);

end;

procedure TStatisticForm.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if List6.KeyValue=0 then
  lettersDbGrid.ExportToWord
 else
  begin
   if SavePictureDialog.Execute then
   case List6.KeyValue of
    1: BarChart.SaveToBitmapFile(SavePictureDialog.FileName+'.bmp');
    2: Piechart.SaveToBitmapFile(SavePictureDialog.FileName);
    3: fastlineChart.SaveToBitmapFile(SavePictureDialog.FileName);
   end;
 end;
end;

procedure TStatisticForm.BitBtn2Click(Sender: TObject);
 var Template,NewTemplate,ItemIndex:OleVariant;
procedure NewFile;
begin
    Template := EmptyParam;
    NewTemplate := false;
    ItemIndex := 1;
    Wordapplication.Visible := True;
    WordApplication.Caption := 'Yeganeh';
    Template := EmptyParam;
    NewTemplate := False;
    WordApplication.Documents.Add(Template, NewTemplate,Template,Template);
    WordDocument.ConnectTo(WordApplication.Documents.Item(ItemIndex));

end;
begin
  inherited;
  if List6.KeyValue=0 then
  begin
   lettersDbGrid.Print;
   exit;
  end
  else
  begin
   if messageShow(44,True) then
   case List6.KeyValue of
    1: BarChart.CopyToClipboardBitmap;
    2: Piechart.CopyToClipboardBitmap;
    3: fastlineChart.CopyToClipboardBitmap;
   end;
  end;
   NewFile;
   with WordApplication do
    begin
      Documents.Item(ItemIndex).PageSetup.Orientation := wdOrientLandscape;
      Selection.Paste;
      ActiveDocument.PrintPreview;
      

    end;
 

end;

procedure TStatisticForm.BitBtn3Click(Sender: TObject);
begin
  inherited;
  lettersDbGrid.ExportToWord;
end;

procedure TStatisticForm.BitBtn4Click(Sender: TObject);
  var
     S: string;
begin
   inherited;
   if List6.KeyValue=0 then
      lettersDbGrid.CustomizePrint
   else
      begin
         if dm.Y_InputQuery('⁄‰Ê«‰ ‰„Êœ«—','⁄‰Ê«‰',s) then
            Case List6.KeyValue of
               1: BarChart.Title.Text.Text := S;
               2: Piechart.Title.Text.Text := S;
               3: fastlineChart.Title.Text.Text := S;
            end;
      end;
end;

procedure TStatisticForm.BitBtn5Click(Sender: TObject);
begin
  inherited;
  MainForm.StatisticMode := False;
  close;
end;

procedure TStatisticForm.WordApplicationDocumentBeforeClose(
  ASender: TObject; const Doc: _Document; var Cancel: WordBool);
begin
  inherited;
  WordApplication.Disconnect;
end;

procedure TStatisticForm.BitBtn6Click(Sender: TObject);
begin
  inherited;
  lettersDbGrid.ExportToExcel;
end;


procedure TStatisticForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
 // MainForm.List.Show;
  MainForm.pnlSearch .Show;
end;

procedure TStatisticForm.List5Click(Sender: TObject);
begin
   inherited;
   RefreshQuery;
   lettersDbGrid.PrintTitle:=List5.Text;
   BarChart.Title.Text.Text:=List5.Text;
   Piechart.Title.Text.Text:=List5.Text;
   fastlineChart.Title.Text.Text:=List5.Text;
end;

procedure TStatisticForm.FormCreate(Sender: TObject);
begin
   inherited;
   GetList6.Open;
   GetList5.Open;
   List5.KeyValue:=0;
   List6.KeyValue:=0;
   Caption := _Eyeganeh;
end;

procedure TStatisticForm.List6Click(Sender: TObject);
begin
   inherited;
   lettersDbGrid.hide;
   BarChart.Hide;
   Piechart.Hide;
   fastlineChart.Hide;
   Case List6.KeyValue of
      0: lettersDbGrid.Show;
      1: BarChart.Show;
      2: Piechart.Show;
      3: fastlineChart.Show;
   end;
   //Ranjbar
   if List6.KeyValue = 0 then
      BitBtn4.Caption := '«‰ Œ«» ” Ê‰Â«'
   else
      BitBtn4.Caption := ' €ÌÌ— ⁄‰Ê«‰ ';
   //---
end;

end.
