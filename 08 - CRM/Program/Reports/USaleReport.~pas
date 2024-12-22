unit USaleReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtActns, ActnList, DB, ExtCtrls, StdCtrls, DBCtrls,
  Buttons, Grids, DBGrids, YDbgrid, UemsVCL, ADODB, MssCalendarPro,
  CheckLst, YchecklistBox, xpPanel, TeEngine, Series, TeeProcs, Chart;

type
  TFSaleReport = class(TMBaseForm)
    pnlMain: TPanel;
    CustGrid: TYDBGrid;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    BitBtn1: TBitBtn;
    ADOQuery: TADOQuery;
    ADOQueryId: TAutoIncField;
    ADOQueryCustomerStatusID: TIntegerField;
    ADOQueryCustomerStatusTitle: TStringField;
    ADOQueryOne1: TStringField;
    ADOQueryTwo1: TStringField;
    ADOQueryThree1: TStringField;
    ADOQueryFour1: TStringField;
    ADOQueryFive1: TStringField;
    ADOQuerySix1: TStringField;
    ADOQuerySeven1: TStringField;
    ADOQueryEight1: TStringField;
    ADOQueryNine1: TStringField;
    ADOQueryTen1: TStringField;
    ADOQueryEleven1: TStringField;
    ADOQueryTwelve1: TStringField;
    DataSource1: TDataSource;
    MssCalendarPro1: TMssCalendarPro;
    adoCityRep: TADOQuery;
    IntegerField1: TIntegerField;
    adoCityRepCItyId: TIntegerField;
    adoCityRepCityTitle: TStringField;
    adoCityRepStateNum: TStringField;
    DSCityRep: TDataSource;
    adoStateRep: TADOQuery;
    adoStateRepStateID: TIntegerField;
    adoStateRepStateTitle: TStringField;
    DStateRep: TDataSource;
    xpPanel1: TxpPanel;
    pnlCLBCompaginIDs: TPanel;
    Label17: TLabel;
    CLBCompaginIDs: TYchecklistBox;
    Button10: TButton;
    pnlCLBProductIDs: TPanel;
    Label18: TLabel;
    CLBProductIDs: TYchecklistBox;
    Button11: TButton;
    RGTypeRep: TRadioGroup;
    LblYear: TLabel;
    CBYear: TComboBox;
    Label6: TLabel;
    dblState: TDBLookupComboBox;
    Button4: TButton;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Button2: TButton;
    cbSeason: TComboBox;
    cbMonth: TComboBox;
    pnlPeriod: TPanel;
    Label1: TLabel;
    Label5: TLabel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    ActDateEditTo: TShamsiDateEdit;
    ActDateEditFrom: TShamsiDateEdit;
    Label7: TLabel;
    dblCity: TDBLookupComboBox;
    Button5: TButton;
    Label4: TLabel;
    DBLkCBGroupTitle: TDBLookupComboBox;
    Button3: TButton;
    Label3: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Button1: TButton;
    Chart1: TChart;
    Series1: TBarSeries;
    cb3D: TCheckBox;
    cbChartView: TCheckBox;
    btnChartShow: TButton;
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure RGTypeRepClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure dblCityEnter(Sender: TObject);
    procedure dblStateExit(Sender: TObject);
    procedure dblStateKeyPress(Sender: TObject; var Key: Char);
    procedure dblStateKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure btnChartShowClick(Sender: TObject);
  private
   function SpSearch_Contract_Advance(StartDate, EndDate: String;
      MarketerID : integer = 0 ; ContractTypeID : integer = 0 ; ProductId : integer = 0 ; Customerid: integer = 0; UserTypeID : integer = 0 ;
      StateID : integer = 0; CityID: integer = 0): TADOStoredProc;
    function GetInsertedBarSeries(aName, aTitle: String; aColor: TColor): TBarSeries;
    function GetInsertedPieSeries(aName, aTitle: String; aColor: TColor): TPieSeries;
    function GetInsertedLineSeries(aName, aTitle: String; aColor: TColor): TLineSeries;
    function GenerateRandomColor(const Mix: TColor = clWhite): TColor;
  public
    { Public declarations }
  end;

var
  FSaleReport: TFSaleReport;

implementation

uses dmu,BusinessLayer,YShamsiDate;

{$R *.dfm}


//Report_Contract_forSale
procedure TFSaleReport.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  inherited;
  { TODO -oparsa : 14030203 }
  if (NewWidth < 903)  or (NewHeight < 339) then
    Resize := False
  else Resize := True;
   { TODO -oparsa : 14030203 }
end;

procedure TFSaleReport.RGTypeRepClick(Sender: TObject);
begin
  inherited;
  cbSeason.Top := cbMonth.Top ;
  pnlPeriod.Top := cbMonth.Top ;
  cbMonth.Visible   := (RGTypeRep.ItemIndex = 1);
  cbSeason.Visible  := (RGTypeRep.ItemIndex = 2);
  pnlPeriod.Visible := (RGTypeRep.ItemIndex = 3);

end;

procedure TFSaleReport.BitBtn1Click(Sender: TObject);
var
    DSCustGrid :TDataSource;
    MarketerID	:integer;
    ContractTypeID	:integer;
    ProductId		:integer;
    Customerid	:integer;
    UserTypeID	:integer ;
    StateID	:integer ;
    CityID	:integer ;
    FromDate : String;
    ToDate : String ;
    str : Tstrings ;
begin
  inherited;

  if (RGTypeRep.ItemIndex = 0) then
  begin
    CustGrid.PrintTitle := 'ê“«—‘ ›—Ê‘ ”«· '+  CBYear.Text ;
    FromDate := CBYear.Text+'/01/01' ;
    ToDate   := CBYear.Text+'/12/29'  ;
  end
  else
  if (RGTypeRep.ItemIndex = 1) then
  begin
    CustGrid.PrintTitle := ' ê“«—‘ ›—Ê‘ „«Â '+ cbMonth.Text +' ”«· '+ CBYear.Text ;
    if (cbMonth.ItemIndex + 1) = 12  then
    begin
      FromDate := CBYear.Text +'/0'+ IntToStr(cbMonth.ItemIndex + 1 )+'/01' ;
      ToDate   := CBYear.Text +'/0'+ IntToStr(cbMonth.ItemIndex + 1 )+'/29'  ;
    end
    else
    if (cbMonth.ItemIndex + 1) <=6  then
    begin
      FromDate := CBYear.Text +'/0'+ IntToStr(cbMonth.ItemIndex + 1 )+'/01' ;
      ToDate   := CBYear.Text +'/0'+ IntToStr(cbMonth.ItemIndex + 1 )+'/31'  ;
    end
    else
    if (cbMonth.ItemIndex + 1) < 10  then
    begin
      FromDate := CBYear.Text +'/0'+ IntToStr(cbMonth.ItemIndex + 1 )+'/01' ;
      ToDate   := CBYear.Text +'/0'+ IntToStr(cbMonth.ItemIndex + 1 )+'/30'  ;
    end
    else
    begin
      FromDate := CBYear.Text +'/'+ IntToStr(cbMonth.ItemIndex + 1 )+'/01' ;
      ToDate   := CBYear.Text +'/'+ IntToStr(cbMonth.ItemIndex + 1 )+'/30'  ;
    end
  end
  else
  if (RGTypeRep.ItemIndex = 2) then
  begin
    CustGrid.PrintTitle := 'ê“«—‘ ›—Ê‘ ›’· '+ cbSeason.Text +' ”«· '+ CBYear.Text;
    if cbSeason.ItemIndex = 0  then
    begin
      FromDate := CBYear.Text+'/01/01' ;
      ToDate   := CBYear.Text+'/03/31'  ;
    end
    else
     if cbSeason.ItemIndex = 1  then
    begin
      FromDate := CBYear.Text+'/04/01' ;
      ToDate   := CBYear.Text+'/06/31'  ;
    end
    else
     if cbSeason.ItemIndex = 2  then
    begin
      FromDate := CBYear.Text+'/07/01' ;
      ToDate   := CBYear.Text+'/09/30'  ;
    end
    else
     if cbSeason.ItemIndex = 3  then
    begin
      FromDate := CBYear.Text+'/10/01' ;
      ToDate   := CBYear.Text+'/12/30'  ;
    end ;
  end
  else
  if (RGTypeRep.ItemIndex = 3) then
  begin

    FromDate := Trim(ActDateEditFrom.Text) ;
    ToDate   := Trim(ActDateEditTo.Text)  ;
    CustGrid.PrintTitle := ' ê“«—‘ ›—Ê‘ «“  «—Œ '+ FromDate +'  «  «—ÌŒ '+ ToDate  ;
  end ;

  if DBLookupComboBox1.KeyValue = null then
    MarketerID  := 0 else     MarketerID  := DBLookupComboBox1.KeyValue;

  if DBLkCBGroupTitle.KeyValue = null then
    ContractTypeID  := 0 else     ContractTypeID  := DBLkCBGroupTitle.KeyValue;

  if DBLookupComboBox2.KeyValue = null then
    ProductId  := 0 else     ProductId  := DBLookupComboBox2.KeyValue;

  if dblState.KeyValue = null then
    StateID  := 0 else     StateID  := dblState.KeyValue;

  if dblCity.KeyValue = null then
    CityID  := 0 else     CityID  := dblCity.KeyValue;

  Customerid	:= 0 ;
  UserTypeID	:= 0 ;



  DSCustGrid := TDataSource.Create(nil);
  DSCustGrid.DataSet := SpSearch_Contract_Advance(FromDate,
                                                  ToDate,
                                                  MarketerID	,
                                                  ContractTypeID	,
                                                  ProductId	,
                                                  Customerid	,
                                                  UserTypeID	,
                                                  StateID	,
                                                  CityID	) ;
                                                     (*
                                                  DBLookupComboBox1.KeyValue,
                                                  DBLkCBGroupTitle.KeyValue,
                                                  DBLookupComboBox2.KeyValue,
                                                  0,
                                                  0,
                                                  dblState.KeyValue,
                                                  dblCity.KeyValue);   *)

                                                  //'#,###.00'
  TNumericField(DSCustGrid.DataSet.fields[1]).DisplayFormat := '#,###' ;
  TNumericField(DSCustGrid.DataSet.fields[2]).DisplayFormat := '#,###' ;
  CustGrid.DataSource := DSCustGrid;


  //DSCustGrid.Edit;
 // DSCustGrid.DataSet.FieldByName(Amount).AsString :=  CommaSeperated(DSCustGrid.DataSet.FieldByName(Amount).AsString);


   CustGrid.UpdateFooter;
   

  str := TStringList.Create();
  str.Add( CustGrid.PrintTitle ) ;
  Chart1.Foot.Text := str ;
  str.Text:= '';

  Chart1.Title.Text := str ;
  CustGrid.Visible  := not cbChartView.Checked ;
  Chart1.Visible    := cbChartView.Checked ;

  Chart1.View3D := cb3D.Checked ;
  Chart1.BottomAxis.GridCentered := True;

  SpeedButton1.Enabled := True;
  SpeedButton2.Enabled := True;
  SpeedButton3.Enabled := True;

  if cbChartView.Checked then
    btnChartShowClick(self);

end;


function TFSaleReport.SpSearch_Contract_Advance(StartDate		:string;EndDate		:String;MarketerID	:integer;ContractTypeID	:integer;
                                    ProductId		:integer;Customerid	:integer;UserTypeID	:integer ;StateID	:integer ;CityID	:integer) :TADOStoredProc;
var
   ADOSP:TADOStoredProc;
begin
   ADOSP:=TADOStoredProc.create(nil);
   ADOSP.ProcedureName:='Report_Contract_forSale';

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftString;
      Direction := pdInput;
      Name:='@StartDate';
      Value :=StartDate;
   end;

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftString;
      Direction := pdInput;
      Name:='@EndDate';
      Value :=EndDate;
   end;

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftInteger;
      Direction := pdInput;
      Name:='@MarketerID';
      Value :=MarketerID;
   end;


   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftInteger;
      Direction := pdInput;
      Name:='@ContractTypeID';
      Value :=ContractTypeID;
   end;

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftInteger;
      Direction := pdInput;
      Name:='@ProductId';
      Value :=ProductId;
   end;
     (*
   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftInteger;
      Direction := pdInput;
      Name:='@customerid';
      Value :=customerid;
   end;
   *)
   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftInteger;
      Direction := pdInput;
      Name:='@UserTypeID';
      Value :=UserTypeID;
   end;


   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftInteger;
      Direction := pdInput;
      Name := '@UserID';
      Value := _UserID;
   end;

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftInteger;
      Direction := pdInput;
      Name := '@StateID';
      Value := StateID;
   end;

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftInteger;
      Direction := pdInput;
      Name := '@CityID';
      Value := CityID;
   end;

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftString;
      Direction := pdInput;
      Name:='@CompaginIDs';
      Value := CLBCompaginIDs.SelectedCodes;
   end;

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftString;
      Direction := pdInput;
      Name:='@ProductIDs';
      Value := CLBProductIDs.SelectedCodes;
   end;

   ADOSP.Connection := dm.YeganehConnection;
   ADOSP.Open;
   Result := ADOSP;
end;

procedure TFSaleReport.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  if (_ExportCustomerList) then CustGrid.ExportToExcel
  else ShowMessage('‘„« „ÃÊ“ ê—› ‰ Œ—ÊÃÌ «“ ·Ì”  —« ‰œ«—Ìœ');
end;

procedure TFSaleReport.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if (_ExportCustomerList) then
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
   else CustGrid.Print
  end
  else ShowMessage('‘„« „ÃÊ“ ê—› ‰ Œ—ÊÃÌ «“ ·Ì”  —« ‰œ«—Ìœ');
end;

procedure TFSaleReport.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if (_ExportCustomerList) then
      CustGrid.ExportToWord
  else ShowMessage('‘„« „ÃÊ“ ê—› ‰ Œ—ÊÃÌ «“ ·Ì”  —« ‰œ«—Ìœ');
end;

procedure TFSaleReport.SpeedButton4Click(Sender: TObject);
begin
  inherited;
   ActDateEditFrom.Text := MssCalendarPro1.Execute('/');
end;

procedure TFSaleReport.SpeedButton5Click(Sender: TObject);
begin
  inherited;
   ActDateEditTo.Text := MssCalendarPro1.Execute('/');
end;

procedure TFSaleReport.Button2Click(Sender: TObject);
begin
  inherited;
   DBLookupComboBox1.KeyValue := Null;
end;

procedure TFSaleReport.Button1Click(Sender: TObject);
begin
  inherited;
   DBLookupComboBox2.KeyValue := Null;
end;

procedure TFSaleReport.Button3Click(Sender: TObject);
begin
  inherited;
   DBLkCBGroupTitle.KeyValue := Null;
end;

procedure TFSaleReport.Button4Click(Sender: TObject);
begin
  inherited;
  dblState.KeyValue := Null;
  dblCity.KeyValue  := Null;  
end;

procedure TFSaleReport.Button5Click(Sender: TObject);
begin
  inherited;
  dblCity.KeyValue := Null;
end;

procedure TFSaleReport.dblCityEnter(Sender: TObject);
begin
  inherited;
  adoCityRep.SQL.Text := ' SELECT  CItyId , CityTitle ,StateId ,StateNum  FROM [dbo].[City]  where StateId = '+ IntToStr( adoStateRepStateID.Value )+' ORDER BY CityTitle ';
  adoCityRep.Open;
end;

procedure TFSaleReport.dblStateExit(Sender: TObject);
begin
  inherited;
  adoCityRep.SQL.Text := ' SELECT  CItyId , CityTitle ,StateId ,StateNum  FROM [dbo].[City]  where StateId = '+ IntToStr( adoStateRepStateID.Value )+' ORDER BY CityTitle ';
  adoCityRep.Open;
end;

procedure TFSaleReport.dblStateKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  replace1(Key,char(223),char(152));
end;

procedure TFSaleReport.dblStateKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  dblState.SetFocus;
  LoadKeyBoardLayout('00000429', KLF_ACTIVATE);
end;

procedure TFSaleReport.FormShow(Sender: TObject);
begin
  inherited;
  xpPanel1.StartColor := _Color1 ;
  xpPanel1.EndColor   := _Color2 ;

  xpPanel1.TitleStartColor :=  _Color3;
  xpPanel1.TitleEndColor   :=  _Color4;

  Chart1.Visible    := False ;
  Chart1.Align      := alClient;
  Chart1.View3D     := True;

  adoStateRep.Close;
  adoStateRep.Open;
  
  Dm.RefreshHoliday(copy(_today,1,4));
  MssCalendarPro1.HolidayStr := dm.HolidayStr;
  CLBCompaginIDs.Fill;
  CLBProductIDs .Fill;  
end;

procedure TFSaleReport.Button10Click(Sender: TObject);
begin
  inherited;
  CLBCompaginIDs.Fill;
end;

procedure TFSaleReport.Button11Click(Sender: TObject);
begin
  inherited;
  CLBProductIDs .Fill;
end;

function TFSaleReport.GenerateRandomColor(const Mix: TColor): TColor;
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

function TFSaleReport.GetInsertedBarSeries(aName, aTitle: String;
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

function TFSaleReport.GetInsertedLineSeries(aName, aTitle: String;
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

function TFSaleReport.GetInsertedPieSeries(aName, aTitle: String;
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

procedure TFSaleReport.btnChartShowClick(Sender: TObject);
var
    Loop ,YearIndex: integer;
    DeptKey: String;
    StartBar, TotalBar, EndBar ,LevelEndBar : TBarSeries;
    Level1Bar, Level2Bar, Level3Bar ,Level4Bar,Level5Bar ,Level6Bar, Level7Bar : TBarSeries;
    pStartBar, pTotalBar, pEndBar : TPieSeries;
    smsSeriesTitle : TSeriesMarksStyle ;
    LinefooterTitle : string;
    TempColor1,TempColor2,TempColor3 : TColor ;
    RCount : Integer ;
    aArrowLength : Integer;
    aXvalue : Integer;
    tempint : Integer;
begin

  chart1.FreeAllSeries;
  Chart1.AxisVisible := True;
  Chart1.View3D := cb3D.Checked ;
  aArrowLength := 5 ;

  RCount := 0 ;
  with  CustGrid.DataSource.DataSet do
  begin

    aXvalue := (aArrowLength*RCount) ;
    
    TempColor1   := GenerateRandomColor  ;
    Level1Bar    := GetInsertedBarSeries(IntToStr(RCount)+'level1', 'level1', TempColor1);
    TempColor2   := GenerateRandomColor  ;
    Level2Bar    := GetInsertedBarSeries(IntToStr(RCount)+'level2', 'level2', TempColor2);
    TempColor3   := GenerateRandomColor  ;
    Level3Bar    := GetInsertedBarSeries(IntToStr(RCount)+'level3', 'level3', TempColor3);

    //---------------------------
    tempint := FieldByName('CountC').AsInteger ;
    Level1Bar.AddXY(aXvalue, FieldByName('CountC').AsCurrency,  LinefooterTitle, TempColor1 );

    if Length(trim(FieldByName('CountC').AsString))>3 then
      Level1Bar.Title :=  AddSeprator(FieldByName('CountC').AsString,length(FieldByName('CountC').AsString) div 3)   +' :'+'  ⁄œ«œ '
    else  Level1Bar.Title :=  FieldByName('CountC').AsString  +' :'+'  ⁄œ«œ ';


    Level1Bar.Marks.Style       := smsValue ;
    Level1Bar.Marks.ArrowLength := aArrowLength;
    Level1Bar.SideMargins       := False ;

    //---------------------------

    Level2Bar.AddXY(aXvalue, FieldByName('Amount').AsCurrency, LinefooterTitle, TempColor2 );

    if Length(trim(FieldByName('Amount').AsString))>3 then
      Level2Bar.Title :=  AddSeprator(FieldByName('Amount').AsString,length(FieldByName('Amount').AsString) div 3)   +' :'+' „»·€ '
    else  Level2Bar.Title :=  FieldByName('Amount').AsString  +' :'+' „»·€ ';

    Level2Bar.Marks.Style       := smsValue ;
    Level2Bar.Marks.ArrowLength := aArrowLength;
    Level2Bar.SideMargins       := False ;

    //----------------------------

    Level3Bar.AddXY(aXvalue, FieldByName('TotalAmount').AsCurrency, LinefooterTitle, TempColor3 );

    Level3Bar.Marks.Style       := smsValue ;
    Level3Bar.Marks.ArrowLength := aArrowLength;
    Level3Bar.SideMargins       := False ;

    if Length(trim(FieldByName('TotalAmount').AsString))>3 then
      Level3Bar.Title :=  AddSeprator(FieldByName('TotalAmount').AsString,length(FieldByName('TotalAmount').AsString) div 3)   +' :'+' „»·€ ò· '
    else  Level3Bar.Title :=  FieldByName('TotalAmount').AsString  +' :'+' „»·€ ò· ';


  end;

end;

end.
