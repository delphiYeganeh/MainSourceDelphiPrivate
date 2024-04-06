unit FacDiagramFM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, Grids, DBGrids, Buttons,
  ComCtrls, Menus, DB, DBTables, TeEngine, Series, TeeProcs, Chart, DbChart;

type
  TFMFacDiagram = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel5: TPanel;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    LabHelp: TLabel;
    LabelDate: TLabel;
    RepPopMnu: TPopupMenu;
    NShow: TMenuItem;
    NPrint: TMenuItem;
    NDesign: TMenuItem;
    MenuItem1: TMenuItem;
    d1: TMenuItem;
    SBReport: TSpeedButton;
    PageControl1: TPageControl;
    TShDBChart_Bar: TTabSheet;
    TShDBChart_Pie: TTabSheet;
    DBChart_Bar: TDBChart;
    Series1: TBarSeries;
    DBChart_Pie: TDBChart;
    BarSeries1: TPieSeries;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SBReportClick(Sender: TObject);
  private
    procedure QrFacDiagram_SqlText;
  public
    { Public declarations }
  end;

var
  FMFacDiagram: TFMFacDiagram;

implementation

Uses FacDiagramDM , Myutil , VertionDM;

{$R *.dfm}

procedure TFMFacDiagram.FormCreate(Sender: TObject);
begin
   DMFacDiagram := TDMFacDiagram.Create(Self);
end;

procedure TFMFacDiagram.QrFacDiagram_SqlText;
Var
   SqlText : String;
begin
   SqlText := '';
   With DMFacDiagram do
   begin
      if UpperCase(Self.Hint) = 'Y_F' then //‰„Êœ«— ›—Ê‘ ”«·Ì«‰Â
      begin
         SqlText :=
         ' Select Sum(FactorePrice) as SumFacPrice , SubString(FacDate,1,4) as FacYear ' +
         ' from Factor '+
         ' Where Type = ''F'' ' +
         ' Group By SubString(FacDate,1,4) ' +
         ' Order By SubString(FacDate,1,4) ' ;
         //
         DBChart_Bar.LeftAxis.Title.Caption := 'Ã„⁄ „»·€ ›—Ê‘ ”«·Ì«‰Â';
         DBChart_Bar.BottomAxis.Title.Caption := '”«·';
         DBChart_Bar.Title.Text.Text := '‰„Êœ«— ›—Ê‘ ”«·Ì«‰Â';
         DBChart_Bar.Gradient.EndColor := $00FFCED8;
         //DBChart1.Series[0].DataSource := DMFacDiagram.QrFacDiagram;
         DBChart_Pie.LeftAxis.Title.Caption := 'Ã„⁄ „»·€ ›—Ê‘ ”«·Ì«‰Â';
         DBChart_Bar.BottomAxis.Title.Caption := '”«·';
         DBChart_Pie.Title.Text.Text := '‰„Êœ«— ›—Ê‘ ”«·Ì«‰Â';
         DBChart_Pie.Gradient.EndColor := $00FFCED8;

      end;

      if UpperCase(Self.Hint) = 'Y_KH' then //‰„Êœ«— Œ—Ìœ ”«·Ì«‰Â
      begin
         SqlText :=
         ' Select Sum(FactorePrice) as SumFacPrice , SubString(FacDate,1,4) as FacYear ' +
         ' from Factor ' +
         ' Where Type = ''KH'' ' +
         ' Group By SubString(FacDate,1,4) ' +
         ' Order By SubString(FacDate,1,4) ' ;
         //
         DBChart_Bar.LeftAxis.Title.Caption := 'Ã„⁄ „»·€ Œ—Ìœ ”«·Ì«‰Â';
         DBChart_Bar.BottomAxis.Title.Caption := '”«·';
         DBChart_Bar.Title.Text.Text := '‰„Êœ«— Œ—Ìœ ”«·Ì«‰Â';
         DBChart_Bar.Gradient.EndColor := $00CFCEFF;

         DBChart_Pie.LeftAxis.Title.Caption := 'Ã„⁄ „»·€ Œ—Ìœ ”«·Ì«‰Â';
         DBChart_Bar.BottomAxis.Title.Caption := '”«·';
         DBChart_Pie.Title.Text.Text := '‰„Êœ«— Œ—Ìœ ”«·Ì«‰Â';
         DBChart_Pie.Gradient.EndColor := $00CFCEFF;

      end;

      if UpperCase(Self.Hint) = 'M_F' then //‰„Êœ«— ›—Ê‘ „«Â«‰Â
      begin
         SqlText :=
         ' Select Sum(FactorePrice) as SumFacPrice ' +
         ' ,SubString(FacDate,1,7) as FacYear ' +
         ' from Factor ' +
         ' Where Type = ''F'' ' +
         ' Group By SubString(FacDate,1,7) ' +
         ' Order By SubString(FacDate,1,7) ' ;
         //
         DBChart_Bar.LeftAxis.Title.Caption := 'Ã„⁄ „»·€ ›—Ê‘ „«ÂÌ«‰Â';
         DBChart_Bar.BottomAxis.Title.Caption := '„«Â / ”«·';
         DBChart_Bar.Title.Text.Text := '‰„Êœ«— ›—Ê‘ „«ÂÌ«‰Â';
         DBChart_Bar.Gradient.EndColor := $00FFE7CE;

         DBChart_Pie.LeftAxis.Title.Caption := 'Ã„⁄ „»·€ ›—Ê‘ „«ÂÌ«‰Â';
         DBChart_Bar.BottomAxis.Title.Caption := '„«Â / ”«·';
         DBChart_Pie.Title.Text.Text := '‰„Êœ«— ›—Ê‘ „«ÂÌ«‰Â';
         DBChart_Pie.Gradient.EndColor := $00FFE7CE;
      end;

      if UpperCase(Self.Hint) = 'M_KH' then //‰„Êœ«— Œ—Ìœ „«Â«‰Â
      begin
         SqlText :=
         ' Select Sum(FactorePrice) as SumFacPrice ' +
         ' ,SubString(FacDate,1,7) as FacYear ' +
         ' from Factor ' +
         ' Where Type = ''KH'' ' +
         ' Group By SubString(FacDate,1,7) ' +
         ' Order By SubString(FacDate,1,7) ' ;
         //
         DBChart_Bar.LeftAxis.Title.Caption := 'Ã„⁄ „»·€ Œ—Ìœ „«ÂÌ«‰Â';
         DBChart_Bar.BottomAxis.Title.Caption := '„«Â / ”«·';
         DBChart_Bar.Title.Text.Text := '‰„Êœ«— Œ—Ìœ „«ÂÌ«‰Â';
         DBChart_Bar.Gradient.EndColor := $00F8CEFF;

         DBChart_Pie.LeftAxis.Title.Caption := 'Ã„⁄ „»·€ Œ—Ìœ „«ÂÌ«‰Â';
         DBChart_Bar.BottomAxis.Title.Caption := '„«Â / ”«·';
         DBChart_Pie.Title.Text.Text := '‰„Êœ«— Œ—Ìœ „«ÂÌ«‰Â';
         DBChart_Pie.Gradient.EndColor := $00F8CEFF;
      end;
      //
      QrFacDiagram.SQL.Text := SqlText;
      QrFacDiagram.Open;
   end;
end;


procedure TFMFacDiagram.FormShow(Sender: TObject);
begin
   PageControl1.TabIndex := 0;
   QrFacDiagram_SqlText;
   Self.Caption := Trim(DBChart_Bar.Title.Text.Text);
   LabelDate.Caption := Date_GetFarDate;
   Form_Animate(Self);
end;

procedure TFMFacDiagram.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   With DMFacDiagram do
   begin
      Qry_CloseAllQry(DMFacDiagram);
   end;
   FreeAndNil(DMFacDiagram);
end;

procedure TFMFacDiagram.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   Form_SetShortCut(Self,Nil,Nil,SBReport,Sender,Key,Shift);

   if (Key = VK_Return)And(Shift=[]) then
      SelectNext(TWinControl(ActiveControl),True,True);
   if (Key = VK_Return)And(ssShift in Shift) then
      SelectNext(TWinControl(ActiveControl),False,True);
end;


procedure TFMFacDiagram.SpeedButton1Click(Sender: TObject);
begin
   Close;
end;

procedure TFMFacDiagram.SBReportClick(Sender: TObject);
begin
   if PageControl1.TabIndex = 0 then
      DBChart_Bar.Print
   else
      DBChart_Pie.Print;
end;


 Initialization
   RegisterClass(TFMFacDiagram);

end.
