unit USalesFunnel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtActns, ActnList, DB, ExtCtrls, TeeProcs, TeEngine,
  Chart, StdCtrls,Series, DBCtrls, Mask, xpPanel, Buttons, ADODB, Grids, ClipBrd,
  DBGrids, YDbgrid, CheckLst, YchecklistBox;

type
  TFSalesFunnel = class(TMBaseForm)
    pnlMain: TPanel;
    Chart2: TChart;
    Panel1: TPanel;
    SpeedButton3: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    BtnCancel: TBitBtn;
    BitBtn1: TBitBtn;
    xpPanel1: TxpPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    dblProduct: TDBLookupComboBox;
    dblMarketer: TDBLookupComboBox;
    edtDateFrom: TDBEdit;
    Button4: TButton;
    edtDateTo: TDBEdit;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    RGTypeReport: TRadioGroup;
    Button1: TButton;
    Button2: TButton;
    print: TButton;
    Button3: TButton;
    SpReportSalesFunnel: TADOStoredProc;
    dbgFunnel: TYDBGrid;
    cbChartView: TCheckBox;
    SpReportSalesFunnelMarketerID: TIntegerField;
    SpReportSalesFunnelProductId: TIntegerField;
    SpReportSalesFunnelMarketerTitle: TStringField;
    SpReportSalesFunnelProductStr: TStringField;
    btnChartShow: TButton;
    Series2: TBarSeries;
    Chart1: TChart;
    Button9: TButton;
    Label1: TLabel;
    DBLkCBGroupTitle: TDBLookupComboBox;
    Label4: TLabel;
    DBLCCompaing: TDBLookupComboBox;
    Label6: TLabel;
    DBLCCustomerStatus: TDBLookupComboBox;
    SpReportSalesFunnelLevel1: TIntegerField;
    SpReportSalesFunnelLevel2: TIntegerField;
    SpReportSalesFunnelLevel13: TIntegerField;
    SpReportSalesFunnelLevel4: TIntegerField;
    SpReportSalesFunnelLevel5: TIntegerField;
    SpReportSalesFunnelLevel6: TIntegerField;
    SpReportSalesFunnelLevel7: TIntegerField;
    Series1: TBarSeries;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    cb3D: TCheckBox;
    Image1: TImage;
    pnlCLBProductIDs: TPanel;
    Label8: TLabel;
    CLBProductIDs: TYchecklistBox;
    Button8: TButton;
    SpReportSalesFunnelLevel8: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure printClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RGTypeReportClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnChartShowClick(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
    { Private declarations }
    function GetInsertedBarSeries(aName, aTitle: String; aColor: TColor): TBarSeries;
    function GetInsertedPieSeries(aName, aTitle: String; aColor: TColor): TPieSeries;
    function GetInsertedLineSeries(aName, aTitle: String; aColor: TColor): TLineSeries;
    function GenerateRandomColor(const Mix: TColor = clWhite): TColor;
  public
    { Public declarations }
  end;

var
  FSalesFunnel: TFSalesFunnel;

implementation

//uses dmu;
Uses  TeExport,dmu;

{$R *.dfm}

procedure TFSalesFunnel.FormShow(Sender: TObject);
begin
  inherited;
  xpPanel1.StartColor := _Color1 ;
  xpPanel1.EndColor   := _Color2 ;

  xpPanel1.TitleStartColor :=  _Color3;
  xpPanel1.TitleEndColor   :=  _Color4;

  edtDateFrom.Text := _Today ;
  edtDateTo  .Text := _Today ;

  Dm.RefreshHoliday(copy(_today,1,4));
  dm.MssCalendarPro1.HolidayStr := dm.HolidayStr;

  dbgFunnel.Visible := True ;
  Chart1.Visible    := False ;
  dbgFunnel.Align   := alClient;
  Chart1.Align      := alClient;

  //Chart1.cl;
  Chart1.View3D := true;
  //chart1.FreeAllSeries;
  //Chart1.Aspect.Orthogonal:= true;
 // chart1.AddSeries(<u><b>'test'</b></u>.Create(Self));

  (*
  «Ì‰ »—«Ì  €ÌÌ— ‘ò· ‰„Êœ«—


  chart1.FreeAllSeries;
  chart1.AddSeries(<u><b>TLineSeries</b></u>.Create(Self));

  «”„ ‰„Êœ«— „Ê—œ ‰Ÿ— —Ê Ã«Ìê“Ì‰TLineSeries „Ì ò‰Ì„

  Ê »—«Ì œ«œ‰ «ÿ·«⁄«  «“ òœ “Ì— «” ›«œÂ „Ì ò‰Ì„


  Chart1.Series[0].Clear;
  Chart1.Series[0].AddXY(fasele az nemodar ghabli, meghdar, 'Lable', clTeeColor);

qry.sql.clear;
qry.sql.add('SELECT Count(tennis) AS [NoTennis] FROM [Sports] WHERE Tennis = True');
qry.Open;
iTennis := qry['NoTennis'];   {integer variable}

Chart1.Series[0].AddXY(iTennis, 1, 'Tennis', clTeeColor);

Chart1.Series[0].Add(123, 'Tennis');

Chart1.Series[0].Clear();  
  *)

  ShapeBase.Brush.Color := _Color1 ;
  pnlMain.Color := _Color1 ;

  Dm.Compagin.Close;
  Dm.Compagin.Open;

  CLBProductIDs .Fill;
end;

procedure TFSalesFunnel.Button1Click(Sender: TObject);
{
var
   I: Integer;
begin
  inherited;
  (*
   Chart1.Series[0].XValues.DateTime := True;
   Chart1.Series[0].Add( 100, FormatDateTime('nn:ss',Now), clRed );
   Chart1.Series[0].Add( 80, FormatDateTime('nn:ss',Now), clRed );
     *)
  Chart1.Series1.AddXY(<Pass the data value>, <Pass Your value>, '', clRed);
  Chart1.Series1.AddXY(now,                     1, '', clRed);
  Chart1.Series1.AddXY(now + ( 1 /(24*60*60)),  2, '', clRed); //After 1 seconds
  Chart1.Series1.AddXY(now + ( 2 /(24*60*60)),  3, '', clRed);  //After 2 seconds
   (*
  for I := 0 to 3000 - 1 do
    Chart1.Series[0].AddXY(Random(1000), Random(100));
    *)
    }
const
  serc: array[0..4] of TColor = (clRed, clGreen, clBlue, clYellow, clFuchsia);
var
  i, r: Integer;
  //ser: TFastLineSeries;
begin
  (*
  for i := 0 to 4 do begin
    ser := TFastLineSeries.Create(Chart1);
    ser.Color := serc[serIndex];
    ser.Pen.Width := 5;
    Chart1.AddSeries(ser);
    r := Random(20);
    ser.AddXY(i*10+r, serIndex);
    ser.AddXY((i+1)*10-1+r, serIndex);
  end;       *)


  for i:=0 to Chart1.SeriesCount-1 do
  begin
    Chart1[i].Marks.Visible:=False;

    if Chart1[i] is TLineSeries then
      Chart1[i].ZOrder:=Chart1.SeriesCount - 1 - i
    else
      Chart1[i].ZOrder:=i;
  end;
           (*
        With Chart1.Series[0] Do
        Begin
            AddXY(10, 20, '', clTeeColor);
            AddXY(15, 50, '', clTeeColor);
            AddXY(20, 30, '', clTeeColor);
            AddXY(25, 70, '', clTeeColor);
            AddXY(30, 10, '', clTeeColor);
            AddXY(35, 50, '', clTeeColor);
            AddXY(40, 45, '', clTeeColor);
            AddXY(45, 10, '', clTeeColor);
        End; *)
end;

procedure TFSalesFunnel.FormCreate(Sender: TObject);
var i: Integer;
begin
   inherited;

  (*
  for i := 0 to 3 do
  begin
  //  Chart1.AddSeries(TBarSeries.Create(Self)) //.FillSampleValues();
    Chart1[i].Marks.Style:=smsValue;
    Chart1[i].Title:='Series'+IntToStr(i);
   // Chart1[i].OnGetMarkText := Series1GetMarkText;
  end;
  *)
  (*
  Chart1.AddSeries(TLineSeries.Create(Self)).FillSampleValues(10);
  Chart1.AddSeries(TLineSeries.Create(Self)).FillSampleValues(10);
  Chart1.AddSeries(TBarSeries.Create(Self)).FillSampleValues(10);
  Chart1.AddSeries(TBarSeries.Create(Self)).FillSampleValues(10);
  Chart1.AddSeries(TBarSeries.Create(Self)).FillSampleValues(10);
    *)
end;

procedure TFSalesFunnel.Button2Click(Sender: TObject);
var
    Loop ,YearIndex: integer;
    DeptKey: String;
    StartBar, TotalBar, EndBar : TBarSeries;
    pStartBar, pTotalBar, pEndBar : TPieSeries;
    smsSeriesTitle : TSeriesMarksStyle ;
begin

    for Loop := 0  to  2 do //FDeptList.Count -1 do
    begin
        DeptKey := IntToStr( Loop* 10) ;//FDeptList.ValueFromIndex[Loop];

        StartBar :=  GetInsertedBarSeries(DeptKey+'Start', 'Start', clGreen);
        TotalBar :=  GetInsertedBarSeries(DeptKey+'Total', 'Total', clBlue);
        EndBar   :=  GetInsertedBarSeries(DeptKey+'End', 'End', clRed);

                {
        pStartBar :=  GetInsertedPieSeries(DeptKey+'Start', 'Start', clGreen);
        pTotalBar :=  GetInsertedPieSeries(DeptKey+'Total', 'Total', clBlue);
        pEndBar   :=  GetInsertedPieSeries(DeptKey+'End', 'End', clRed);
              }
           (*
        with DSForm.Dataset do
        begin
            if Locate('o_deptaddressno',DeptKey,[]) then
            begin

                While (FieldByName('o_deptaddressno').AsString = DeptKey) and not eof do
                begin

                    StartBar.AddXY(FieldByName('o_year').AsInteger,
                                                FieldByName('o_totalstart').AsInteger,
                                                FieldByName('o_year').AsString,
                                                clRed);


                   {when adding series per year for each department - the bars are not one after the other}
                    //TotalBar := GetInsertedBarSeries(DeptKey+'Total'+FieldByName('o_year').AsString, siLang.GetTextOrDefault('IDS_TOTAL'), clBlue);

                    TotalBar.AddXY(FieldByName('o_year').AsInteger,
                                                    FieldByName('o_total').AsInteger,
                                                    FieldByName('o_year').AsString,
                                                    clGreen);

                    TotalBar.Title := FieldByName('o_total').AsString + ': '+ IntToStr( Loop* 10) ;//FDeptList.Names[Loop];
                    TotalBar.Marks.Style := smsSeriesTitle;
                    TotalBar.Marks.ArrowLength := 50;
                   // TotalBar.Marks.Callout.ArrowHead := ahSolid;


                    EndBar.AddXY(FieldByName('o_year').AsInteger,
                                                FieldByName('o_totalEnd').AsInteger,
                                                FieldByName('o_year').AsString,
                                                clBlue);// EndBar.Color);

                    Next;
                end;
            end;
        end;  *)
        StartBar.AddXY(-1,
                                    20,
                                    'test1111',
                                    clRed);


       {when adding series per year for each department - the bars are not one after the other}
        //TotalBar := GetInsertedBarSeries(DeptKey+'Total'+FieldByName('o_year').AsString, siLang.GetTextOrDefault('IDS_TOTAL'), clBlue);

        TotalBar.AddXY(-10,
                                        40,
                                        'test2',
                                        clGreen);

        TotalBar.Title := '200' + ': '+ IntToStr( Loop* 10) ;//FDeptList.Names[Loop];
        TotalBar.Marks.Style := smsSeriesTitle;
        TotalBar.Marks.ArrowLength := 50;
       // TotalBar.Marks.Callout.ArrowHead := ahSolid;


        EndBar.AddXY(0,
                                    60,
                                    'test3',
                                    clBlue);// EndBar.Color);
    end;

 //   SetSeriesLegendProperties;
end;

function TFSalesFunnel.GetInsertedBarSeries(aName, aTitle: String;
  aColor: TColor): TBarSeries;
begin
    Result := TBarSeries.Create(Self);

    with Result do
    begin
        Name := 'Series' + aName;
        Title := aTitle + aName ;
        ColorEachPoint := true;//False;
        Color := aColor;
       // Format.Color := aColor;
       // Marks.Style := smsValue;
        Marks.Style := smsLabelPercent;//smsPercent;
        Marks.BackColor := $00C4FFFF ;//clRed;
        if  aTitle = 'level6' then
          Marks.ArrowLength := 100
        else
        Marks.ArrowLength := 20 ;
    end;

    Chart1.AddSeries(Result);
end;

procedure TFSalesFunnel.printClick(Sender: TObject);
begin
  inherited;
  with TPrintDialog.Create(nil) do
    try
      if Execute then
        Chart1.Print;
    finally
      Free;
    end;
   //TeeSaveToPDFFile(Chart1, "C://tmp//testCBuilder.pdf");
  //   TeeSavePanel(TPDFExportFormat, Chart1);
end;

procedure TFSalesFunnel.Button3Click(Sender: TObject);
var
  strm : TMemoryStream;
  img : TImage;
  imgID : Integer;
 MyChart : TChart;
 P : TPieSeries;
begin
  inherited;
       (*
  strm:=TMemoryStream.Create;
  img:=TImage.Create(nil);
  Chart1.Width:=trunc(width*600);
  Chart1.Height:=trunc(height*600);
  img.Width:=Chart1.Width;
  img.Height:=Chart1.Height;
  Chart1.PrintPartialCanvas(img.Canvas,rect(0,0,Chart1.Width,Chart1.Height));
  img.Picture.Graphic.SaveToStream(strm);
  strm.Seek(0,0);
  imgID:=doc.AddImageFromStream(strm,0);
  doc.SelectImage(imgID);
  doc.DrawImage(left,top,width,height);
  freeAndNil(img);
  freeAndNil(strm);
  used:=used+height;
       *)


  MyChart := TChart.Create( Self );
  MyChart.Parent := Self;
  MyChart.Left := 100;
  MyChart.Top := 50;



  // MyChart.AddSeries( TBarSeries.Create( Self ) );

  // MyChart.AddSeries( TLineSeries );




  P := TPieSeries.Create( Self );
  P.ParentChart := MyChart;
   MyChart.Show;

end;

function TFSalesFunnel.GetInsertedPieSeries(aName, aTitle: String;
  aColor: TColor): TPieSeries;
begin
     Result := TpieSeries.Create(Self);

    with Result do
    begin
        Name := 'Series' + aName;
        Title := aTitle;
        Color := aColor;
        Marks.Style :=  smsLegend;//smsValue;

    end;

    Chart1.AddSeries(Result);
end;

function TFSalesFunnel.GetInsertedLineSeries(aName, aTitle: String;
  aColor: TColor): TLineSeries;
begin
     Result := TlineSeries.Create(Self);

    with Result do
    begin
        Name := 'Series' + aName;
        Title := aTitle;
        Color := aColor;
        Marks.Style :=  smsLegend;//smsValue;
    end;

    Chart1.AddSeries(Result);
end;

procedure TFSalesFunnel.BitBtn1Click(Sender: TObject);
var
  str : Tstrings ;
begin
  inherited;
//
  dbgFunnel.Columns[0].Visible :=  (RGTypeReport.ItemIndex = 1) ;
  dbgFunnel.Columns[1].Visible :=  (RGTypeReport.ItemIndex = 2) ;

  SpReportSalesFunnel.Close;
  SpReportSalesFunnel.parameters.ParamByName('@Customerid').value   := 0 ;
  SpReportSalesFunnel.parameters.ParamByName('@ProductId').value    := 0 ;
  SpReportSalesFunnel.parameters.ParamByName('@MarketerId').value   := 0 ;
  SpReportSalesFunnel.parameters.ParamByName('@TypeId').value       := 0 ;
  SpReportSalesFunnel.parameters.ParamByName('@GroupId').value      := 0 ;
  SpReportSalesFunnel.parameters.ParamByName('@CompaingID').value   := 0 ;
  SpReportSalesFunnel.parameters.ParamByName('@CustomerStatusId').value := 0 ;
  SpReportSalesFunnel.parameters.ParamByName('@fromDate').value     := '0' ;
  SpReportSalesFunnel.parameters.ParamByName('@ToDate').value       := '0' ;
  SpReportSalesFunnel.parameters.ParamByName('@ProductIDs').value   := '0' ;

  //if edtCustomerId.Text <> '' then
  //  SpReportSalesFunnel.parameters.ParamByName('@Customerid').value   := StrToInt(edtCustomerId.Text) ;

  if not(dblProduct.KeyValue = null) and (dblProduct.KeyValue > 0 )   then
    SpReportSalesFunnel.parameters.ParamByName('@ProductId').value    := dblProduct.KeyValue ;

  if ( CLBProductIDs.SelectedCodes <> '' )   then
    SpReportSalesFunnel.parameters.ParamByName('@ProductIDs').value    := CLBProductIDs.SelectedCodes ;

  if not(dblMarketer.KeyValue = null) and (dblMarketer.KeyValue > 0 )  then
    SpReportSalesFunnel.parameters.ParamByName('@MarketerId').value   := dblMarketer.KeyValue ;

  if not(DBLkCBGroupTitle.KeyValue = null) and (DBLkCBGroupTitle.KeyValue > 0 )  then
    SpReportSalesFunnel.parameters.ParamByName('@GroupId').value   := DBLkCBGroupTitle.KeyValue ;

  if not(DBLCCompaing.KeyValue = null) and (DBLCCompaing.KeyValue > 0 )  then
    SpReportSalesFunnel.parameters.ParamByName('@CompaingID').value   := DBLCCompaing.KeyValue ;

  if not(DBLCCustomerStatus.KeyValue = null) and (DBLCCustomerStatus.KeyValue > 0 )  then
    SpReportSalesFunnel.parameters.ParamByName('@CustomerStatusId').value   := DBLCCustomerStatus.KeyValue ;

  if edtDateFrom.Text <> ''  then
    SpReportSalesFunnel.parameters.ParamByName('@fromDate').value     := edtDateFrom.Text ;

  if edtDateTo.Text <> ''  then
    SpReportSalesFunnel.parameters.ParamByName('@ToDate').value       := edtDateTo.Text ;

  SpReportSalesFunnel.parameters.ParamByName('@TypeId').value         := RGTypeReport.ItemIndex ;

  SpReportSalesFunnel.Open;

  str := TStringList.Create();
  str.Add( ' »«“Â «“  «—ÌŒ ' +edtDateFrom.Text+ '  « '+edtDateTo.Text) ;
  Chart1.Foot.Text := str ;
  dbgFunnel.PrintTitle := ' ê“«—‘ ﬁÌ› ›—Ê‘ ' + str.Text  ;
  str.Text:= '';
  Chart1.Title.Text := str ;
  dbgFunnel.Visible := not cbChartView.Checked ;
  Chart1.Visible    := cbChartView.Checked ;
  ///Chart1.Legend.Visible := False ;

  Chart1.View3D := cb3D.Checked ;
  Chart1.BottomAxis.GridCentered := True;

  SpeedButton1.Enabled := True;
  SpeedButton2.Enabled := True;
  SpeedButton3.Enabled := True;

  if cbChartView.Checked then
    btnChartShowClick(self);

end;

procedure TFSalesFunnel.RGTypeReportClick(Sender: TObject);
begin
  inherited;
///

end;

procedure TFSalesFunnel.Button6Click(Sender: TObject);
begin
  inherited;
  dblProduct.KeyValue := Null;
end;

procedure TFSalesFunnel.Button7Click(Sender: TObject);
begin
  inherited;
  dblMarketer.KeyValue := Null;
end;

procedure TFSalesFunnel.Button4Click(Sender: TObject);
begin
  inherited;
  edtDateFrom.Text := Dm.MssCalendarPro1.Execute('/');
end;

procedure TFSalesFunnel.Button5Click(Sender: TObject);
begin
  inherited;
  edtDateTo.Text := Dm.MssCalendarPro1.Execute('/');
end;

procedure TFSalesFunnel.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin

  if (NewWidth < 1394)  or (NewHeight < 484) then
    Resize := False
  else Resize := True;
  inherited;
end;

procedure TFSalesFunnel.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  if SpReportSalesFunnel.RecordCount >0 then
    dbgFunnel.ExportToExcel;
end;

procedure TFSalesFunnel.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if SpReportSalesFunnel.RecordCount >0 then
  begin
   // if Dm.processExists('WINWORD.EXE') then
   //   Dm.KillTask('WINWORD.EXE');
      
    dbgFunnel.ExportToWord;
  end;
end;

procedure TFSalesFunnel.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if SpReportSalesFunnel.RecordCount >0 then
  begin
   if (cbChartView.Checked) and (chart1.Visible) then
   begin
     with TPrintDialog.Create(nil) do
      try
        if Execute then
          Chart1.print;
      finally
        Free;
      end;

   end
   else
    dbgFunnel.Print;
  end;
end;

procedure TFSalesFunnel.btnChartShowClick(Sender: TObject);
var
    Loop ,YearIndex: integer;
    DeptKey: String;
    StartBar, TotalBar, EndBar ,LevelEndBar : TBarSeries;
    Level1Bar, Level2Bar, Level3Bar ,Level4Bar,Level5Bar ,Level6Bar, Level7Bar,Level8Bar : TBarSeries;
    pStartBar, pTotalBar, pEndBar : TPieSeries;
    smsSeriesTitle : TSeriesMarksStyle ;
    LinefooterTitle : string;
    TempColor : TColor ;
    RCount : Integer ;
    aArrowLength : Integer;
    aXvalue : Integer;
begin

  chart1.FreeAllSeries;
  Chart1.AxisVisible := True;
  Chart1.View3D := cb3D.Checked ;
  aArrowLength := 5 ;
  //Chart1.Series[1].gen

 //   for Loop := 0  to  2 do //FDeptList.Count -1 do
  //  begin
    //    DeptKey := IntToStr( Loop* 10) ;//FDeptList.ValueFromIndex[Loop];
       // TempColor := GenerateRandomColor;
                    (*
        StartBar :=  GetInsertedBarSeries(DeptKey+'level1', 'level1', clGreen);
        TotalBar :=  GetInsertedBarSeries(DeptKey+'level2', 'level2', clBlue);
        EndBar   :=  GetInsertedBarSeries(DeptKey+'level3', 'level3', clRed);
        LevelEndBar :=  GetInsertedBarSeries(DeptKey+'level4', 'level4', clYellow);
                  *)
        RCount := 0 ;
        with DSForm.Dataset do
        begin
           // if Locate('o_deptaddressno',DeptKey,[]) then
           // begin

               While  not eof do
                begin
                    aXvalue := (aArrowLength*RCount) ;
                    TempColor := GenerateRandomColor  ;

                    Level1Bar    :=  GetInsertedBarSeries(IntToStr(RCount)+'level1', 'level1', TempColor);
                    Level2Bar    :=  GetInsertedBarSeries(IntToStr(RCount)+'level2', 'level2', TempColor);
                    Level3Bar    :=  GetInsertedBarSeries(IntToStr(RCount)+'level3', 'level3', TempColor);
                    Level4Bar    :=  GetInsertedBarSeries(IntToStr(RCount)+'level4', 'level4', TempColor);
                    Level5Bar    :=  GetInsertedBarSeries(IntToStr(RCount)+'level5', 'level5', TempColor);
                    Level6Bar    :=  GetInsertedBarSeries(IntToStr(RCount)+'level6', 'level6', TempColor);
                    Level7Bar    :=  GetInsertedBarSeries(IntToStr(RCount)+'level7', 'level7', TempColor);
                    Level8Bar    :=  GetInsertedBarSeries(IntToStr(RCount)+'level8', 'level8', TempColor);

                   if  RGTypeReport.ItemIndex = 0 then
                   begin
                     LinefooterTitle := ' ›—Ê‘ „Ã„Ê⁄ ';//FieldByName('MarketerTitle').AsString;
                   end
                   else if  RGTypeReport.ItemIndex = 1 then
                   begin
                       LinefooterTitle := ' ›—Ê‘ '+ FieldByName('MarketerTitle').AsString;
                   end
                   else if  RGTypeReport.ItemIndex = 2 then
                   begin
                       LinefooterTitle := ' ›—Ê‘ ' + FieldByName('ProductStr').AsString;
                   end;

                    if DSForm.Dataset.recordcount = 1 then
                      Level1Bar.AddXY(aXvalue,//FieldByName('level1').AsInteger,
                                                FieldByName('level1').AsInteger,
                                             LinefooterTitle, //'',// LinefooterTitle,
                                                TempColor )
                    else
                      Level1Bar.AddXY(aXvalue,//FieldByName('level1').AsInteger,
                                                FieldByName('level1').AsInteger,
                                             '', //'',// LinefooterTitle,
                                                TempColor );//clRed);

                    Level1Bar.Marks.Style := smsValue ;//smsXValue; //smsSeriesTitle;
                    Level1Bar.Marks.ArrowLength := aArrowLength;//10;
                    Level1Bar.SideMargins := False ;
                    //if RCount=0 then

                   if  RGTypeReport.ItemIndex = 0 then
                   begin
                     Level1Bar.Title := FieldByName('level1').AsString  +' :'+' („Ã„Ê⁄) '+ ' À»  ”—‰Œ ' ;
                   end
                   else if  RGTypeReport.ItemIndex = 1 then
                   begin
                       Level1Bar.Title := FieldByName('level1').AsString  +' : '+' ('+ FieldByName('MarketerTitle').AsString +') '+  IntToStr(RCount+1)+' - '+' À»  ”—‰Œ ' ;
                   end
                   else if  RGTypeReport.ItemIndex = 2 then
                   begin
                       Level1Bar.Title := FieldByName('level1').AsString  +' : '+' ('+FieldByName('ProductStr').AsString +') '+ IntToStr(RCount+1)+' - '+ ' À»  ”—‰Œ ';
                   end;



                   {when adding series per year for each department - the bars are not one after the other}
                    //TotalBar := GetInsertedBarSeries(DeptKey+'Total'+FieldByName('o_year').AsString, siLang.GetTextOrDefault('IDS_TOTAL'), clBlue);

                    Level2Bar.AddXY(aXvalue,//FieldByName('level2').AsInteger,
                                                    FieldByName('level2').AsInteger,
                                                    LinefooterTitle,
                                                    TempColor );//clGreen);

                    //TotalBar.Title := FieldByName('level2').AsString + ': '+ IntToStr( Loop* 10) ;//FDeptList.Names[Loop];
                   // if RCount=0 then
                    Level2Bar.Title :=  FieldByName('level2').AsString  +' :'+' «— »«ÿ «Ê·ÌÂ-ò« «·Êê ';
                    Level2Bar.Marks.Style := smsValue ;//smsXValue; // smsSeriesTitle;
                    Level2Bar.Marks.ArrowLength := aArrowLength;//10;//50;
                   // TotalBar.Marks.Callout.ArrowHead := ahSolid;
                   Level2Bar.SideMargins := False ;


                    Level3Bar.AddXY(aXvalue,//FieldByName('level3').AsInteger,
                                                FieldByName('level3').AsInteger,
                                                LinefooterTitle,
                                                TempColor );//clBlue);// EndBar.Color);
                    Level3Bar.Marks.Style := smsValue ;//smsXValue; //smsSeriesTitle;
                    Level3Bar.Marks.ArrowLength := aArrowLength;//10;//70;
                    Level3Bar.SideMargins := False ;
                    //if RCount=0 then
                    Level3Bar.Title := FieldByName('level3').AsString  +' :'+ ' œ—Õ«· Â„«Â‰êÌ Ã·”Â œ„Ê ' ;

                    Level4Bar.AddXY(aXvalue,//FieldByName('level4').AsInteger,
                                                FieldByName('level4').AsInteger,
                                                LinefooterTitle,
                                                TempColor );//clYellow);// EndBar.Color);
                    //if RCount=0 then
                    Level4Bar.Title := FieldByName('level4').AsString  +' :'+' »—ê“«—Ì œ„Ê ' ;//FieldByName('level4').AsString +' % ' +': '+ LinefooterTitle;
                    Level4Bar.Marks.Style := smsValue ;//smsXValue; //smsLabelValue ; //smsLabelPercent;//smsSeriesTitle;
                    Level4Bar.Marks.ArrowLength := aArrowLength;//10;//100;
                    Level4Bar.SideMargins := False ;

                    Level5Bar.AddXY(aXvalue,//FieldByName('level4').AsInteger,
                                                FieldByName('level5').AsInteger,
                                                LinefooterTitle,
                                                TempColor );//clYellow);// EndBar.Color);
                    //if RCount=0 then
                    Level5Bar.Title :=  FieldByName('level5').AsString  +' :'+' ÅÌ‘ ›«ò Ê— ';//FieldByName('level5').AsString +' % ' +': '+ LinefooterTitle;
                    Level5Bar.Marks.Style := smsValue ;// smsXValue; //smsLabelValue ; //smsLabelPercent;//smsSeriesTitle;
                    Level5Bar.Marks.ArrowLength := aArrowLength;//10;//100;
                    Level5Bar.SideMargins := False ;



                    Level7Bar.AddXY(aXvalue,//FieldByName('level4').AsInteger,
                                                FieldByName('level7').AsInteger,
                                                LinefooterTitle,
                                                TempColor );//clYellow);// EndBar.Color);
                    //if RCount=0 then
                    Level7Bar.Title :=  FieldByName('level7').AsString  +' :'+ ' ò‰”·Ì ';//FieldByName('level7').AsString +' % ' +': '+ LinefooterTitle;
                    Level7Bar.Marks.Style := smsValue ;//smsLabelPercent;//smsValue; // smsXValue; //smsLabelValue ; //smsLabelPercent;//smsSeriesTitle;
                    Level7Bar.Marks.ArrowLength := aArrowLength;//10;//100;
                    Level7Bar.SideMargins := False ;

                    Level8Bar.AddXY(aXvalue,//FieldByName('level4').AsInteger,
                                                FieldByName('level8').AsInteger,
                                                LinefooterTitle,
                                                TempColor );//clYellow);// EndBar.Color);
                    //if RCount=0 then
                    Level8Bar.Title :=  FieldByName('level8').AsString  +' :'+ ' ﬁÿ⁄Ì ';//FieldByName('level7').AsString +' % ' +': '+ LinefooterTitle;
                    Level8Bar.Marks.Style := smsValue ;//smsLabelPercent;//smsValue; // smsXValue; //smsLabelValue ; //smsLabelPercent;//smsSeriesTitle;
                    Level8Bar.Marks.ArrowLength := aArrowLength;//10;//100;
                    Level8Bar.SideMargins := False ;

                    //-----------------********›—Ê‘ ‰Â«ÌÌ******------------------//
                    Level6Bar.AddXY(aXvalue,//FieldByName('level4').AsInteger,
                                                FieldByName('level6').AsInteger,
                                                LinefooterTitle,
                                                TempColor );//clYellow);// EndBar.Color);
                    //if RCount=0 then
                    Level6Bar.Title := '*** '+ FieldByName('level6').AsString  +' :'+ ' „—Õ·Â ‰Â«ÌÌ ›—Ê‘'+' ***';//FieldByName('level6').AsString +' % ' +': '+ LinefooterTitle;
                    Level6Bar.Marks.Style := smsLabelValue;//smsLabelPercentTotal;//smsLabelPercent ;//smsXValue; //smsLabelValue ; //smsLabelPercent;//smsSeriesTitle;
                    Level6Bar.Marks.ArrowLength := aArrowLength;//10;//100;
                    Level6Bar.SideMargins := False ;
                    //--------------------------------------------------//

                    Next;
                    RCount := RCount + 1 ;
                end;
           // end;
        end;
   // end;

 //   SetSeriesLegendProperties;
end;

function TFSalesFunnel.GenerateRandomColor(const Mix: TColor): TColor;
var
  Red, Green, Blue: Integer;
begin
  Red   := Random(255);
  Green := Random(255) + Random(50);
  Blue  := Random(255);

  if (Red = Green) and (Green = Blue)  then
  begin
    Red   := Random(255);
    Green := Random(255);
    Blue  := Random(255);
  end ;


  Red    := (Red   + GetRValue(ColorToRGB(Mix))) div 2;
  Green  := (Green + GetGValue(ColorToRGB(Mix))) div 2;
  Blue   := (Blue  + GetBValue(ColorToRGB(Mix))) div 2;
  
  Result := RGB(Red, Green, Blue) ;

end;

procedure TFSalesFunnel.Button9Click(Sender: TObject);
begin
  inherited;
  TeeExportSave(Chart1, _ApplicationPath +'Tmp\testCBuilder.pdf');
end;

procedure TFSalesFunnel.Button12Click(Sender: TObject);
begin
  inherited;
  DBLCCompaing.KeyValue := null;
end;

procedure TFSalesFunnel.Button10Click(Sender: TObject);
begin
  inherited;
  DBLkCBGroupTitle.KeyValue := null;
end;

procedure TFSalesFunnel.Button11Click(Sender: TObject);
begin
  inherited;
  DBLCCustomerStatus.KeyValue := null;
end;

procedure TFSalesFunnel.Button8Click(Sender: TObject);
begin
  inherited;
  CLBProductIDs .Fill;  
end;

end.
