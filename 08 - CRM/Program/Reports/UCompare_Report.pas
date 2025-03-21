unit UCompare_Report;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtCtrls, ExtActns, ActnList, DB, Buttons, StdCtrls,
  UemsVCL, DBCtrls, xpPanel, Grids, DBGrids, YDbgrid, TeEngine, Series,
  TeeProcs, Chart, ImgList, dxGDIPlusClasses, ADODB;

type
  TFCompare_Report = class(TMBaseForm)
    pnlMain: TPanel;
    FollowGrid: TYDBGrid;
    pnlSearchFollow: TxpPanel;
    Label1: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    ActionType: TDBLookupComboBox;
    dblGroups: TDBLookupComboBox;
    edtCustomerNo: TEdit;
    pnlTime: TPanel;
    Label6: TLabel;
    SpeedButton4: TSpeedButton;
    Label7: TLabel;
    SpeedButton5: TSpeedButton;
    FromDate: TShamsiDateEdit;
    Todate: TShamsiDateEdit;
    followUpItem: TRadioGroup;
    dblMarketer: TDBLookupComboBox;
    dblProductId: TDBLookupComboBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    dblDoneStatusID: TDBLookupComboBox;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    RCount: TLabel;
    BtnCancel: TBitBtn;
    BitBtn1: TBitBtn;
    cb3D: TCheckBox;
    pnlSearchFollow2: TxpPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    ActionType2: TDBLookupComboBox;
    dblGroups2: TDBLookupComboBox;
    edtCustomerNo2: TEdit;
    pnlTime2: TPanel;
    Label15: TLabel;
    SpeedButton6: TSpeedButton;
    Label16: TLabel;
    SpeedButton7: TSpeedButton;
    FromDate2: TShamsiDateEdit;
    Todate2: TShamsiDateEdit;
    followUpItem2: TRadioGroup;
    dblMarketer2: TDBLookupComboBox;
    dblProductId2: TDBLookupComboBox;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    dblDoneStatusID2: TDBLookupComboBox;
    Panel3: TPanel;
    ImageList1: TImageList;
    pic01: TImage;
    pic02: TImage;
    pic12: TImage;
    pic11: TImage;
    pnlSearchFollow3: TxpPanel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    ActionType3: TDBLookupComboBox;
    dblGroups3: TDBLookupComboBox;
    edtCustomerNo3: TEdit;
    pnlTime3: TPanel;
    Label23: TLabel;
    SpeedButton8: TSpeedButton;
    Label24: TLabel;
    SpeedButton9: TSpeedButton;
    FromDate3: TShamsiDateEdit;
    Todate3: TShamsiDateEdit;
    followUpItem3: TRadioGroup;
    dblMarketer3: TDBLookupComboBox;
    dblProductId3: TDBLookupComboBox;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    dblDoneStatusID3: TDBLookupComboBox;
    Label25: TLabel;
    Label26: TLabel;
    SpCompareFollowUpReport: TADOStoredProc;
    SpCompareFollowUpReportActionTypeTitle: TStringField;
    SpCompareFollowUpReportDoneStatustitle: TStringField;
    SpCompareFollowUpReportMarketerTitle: TStringField;
    SpCompareFollowUpReportgroupTitle: TStringField;
    SpCompareFollowUpReportRepType: TStringField;
    SpCompareFollowUpReportRepId: TIntegerField;
    SpeedButton11: TSpeedButton;
    SpCompareFollowUpReportRcount: TIntegerField;
    Chart1: TChart;
    Series1: TBarSeries;
    procedure FormShow(Sender: TObject);
    procedure pic01Click(Sender: TObject);
    procedure pic02Click(Sender: TObject);
    procedure pic11Click(Sender: TObject);
    procedure pic12Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FollowGridNeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure cb3DClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
  private
    function GetInsertedBarSeries(aName, aTitle: String; aColor: TColor): TBarSeries;
    procedure RefreshFilter;
  public
    firstMode : Boolean ;
    { Public declarations }
  end;

var
  FCompare_Report: TFCompare_Report;

implementation

uses dmu,YShamsiDate;

{$R *.dfm}

procedure TFCompare_Report.FormShow(Sender: TObject);
begin
  inherited;
   Chart1.Visible     := False ;
   FollowGrid.Align   := alClient;
   Chart1.Align       := alClient;
   Chart1.View3D      := True ;

   FromDate.Text := copy(_today,1,8)+'01';
   Todate.Text   := copy(_today,1,8)+'29' ;

   FromDate2.Text := copy(_today,1,8)+'01';
   Todate2.Text   := copy(_today,1,8)+'29' ;

   FromDate3.Text := copy(_today,1,8)+'01';
   Todate3.Text   := copy(_today,1,8)+'29' ;

  ShapeBase.Brush.Color := _Color1 ;
  pnlMain.Color := _Color1 ;

  pnlSearchFollow.StartColor := _Color1 ;
  pnlSearchFollow.EndColor   := _Color2 ;

  pnlSearchFollow.TitleStartColor :=  _Color3;
  pnlSearchFollow.TitleEndColor   :=  _Color4;

  pnlSearchFollow2.StartColor := _Color1 ;
  pnlSearchFollow2.EndColor   := _Color2 ;

  pnlSearchFollow2.TitleStartColor :=  _Color3;
  pnlSearchFollow2.TitleEndColor   :=  _Color4;

  pnlSearchFollow3.StartColor := _Color1 ;
  pnlSearchFollow3.EndColor   := _Color2 ;

  pnlSearchFollow3.TitleStartColor :=  _Color3;
  pnlSearchFollow3.TitleEndColor   :=  _Color4;

  firstMode := True;
  BitBtn1Click(self);
  firstMode := False;

  if not followUpItem.Visible then
  begin
     followUpItem3.Visible  := False;
     followUpItem2.Visible  := False;
  end;
end;

procedure TFCompare_Report.pic01Click(Sender: TObject);
begin
  inherited;
  pic01.Visible := not pic01.Visible;
  pic11.Visible := not pic01.Visible;
  pnlSearchFollow2.Visible := pic11.Visible;
end;

procedure TFCompare_Report.pic02Click(Sender: TObject);
begin
  inherited;
  if  pic11.Visible then
  begin
    pic02.Visible := not pic02.Visible;
    pic12.Visible := not pic02.Visible;
    pnlSearchFollow3.Visible := pic12.Visible;
  end;
end;

procedure TFCompare_Report.pic11Click(Sender: TObject);
begin
  inherited;
  if pic02.Visible then
  begin
    pic01.Visible := not pic01.Visible;
    pic11.Visible := not pic01.Visible;
    pnlSearchFollow2.Visible := pic11.Visible;
  end;
  RefreshFilter;
end;

procedure TFCompare_Report.pic12Click(Sender: TObject);
begin
  inherited;
  if  pic11.Visible then
  begin
    pic02.Visible := not pic02.Visible;
    pic12.Visible := not pic02.Visible;
    pnlSearchFollow3.Visible := pic12.Visible;
  end;
  RefreshFilter;
end;

procedure TFCompare_Report.BitBtn1Click(Sender: TObject);
begin
  inherited;
  DSForm.Dataset.Filtered := False;
  DSForm.Dataset.Filter := '';
  DSForm.Dataset.Filtered := True;
  
  SpCompareFollowUpReport.Close;
  FollowGrid.DataSource.DataSet.DisableControls;

  SpCompareFollowUpReport.parameters.ParamByName('@Customerid1').value    := 0 ;
  SpCompareFollowUpReport.parameters.ParamByName('@ProductId1').value     := 0 ;
  SpCompareFollowUpReport.parameters.ParamByName('@DonStatusID1').value   := 0 ;
  SpCompareFollowUpReport.Parameters.ParamByName('@ActionTypeID1').Value  := 0 ;
  SpCompareFollowUpReport.Parameters.ParamByName('@MarketerID1').Value    := 0 ;
  SpCompareFollowUpReport.Parameters.ParamByName('@orgID1').Value         := 0 ;
  SpCompareFollowUpReport.Parameters.ParamByName('@GroupId1').Value       := 0 ;
  SpCompareFollowUpReport.parameters.ParamByName('@FromDate1').value      := '0' ;
  SpCompareFollowUpReport.parameters.ParamByName('@ToDate1').value        := '0' ;

  SpCompareFollowUpReport.parameters.ParamByName('@Customerid2').value    := 0 ;
  SpCompareFollowUpReport.parameters.ParamByName('@ProductId2').value     := 0 ;
  SpCompareFollowUpReport.parameters.ParamByName('@DonStatusID2').value   := 0 ;
  SpCompareFollowUpReport.Parameters.ParamByName('@ActionTypeID2').Value  := 0 ;
  SpCompareFollowUpReport.Parameters.ParamByName('@MarketerID2').Value    := 0 ;
  SpCompareFollowUpReport.Parameters.ParamByName('@orgID2').Value         := 0 ;
  SpCompareFollowUpReport.Parameters.ParamByName('@GroupId2').Value       := 0 ;
  SpCompareFollowUpReport.parameters.ParamByName('@FromDate2').value      := '0' ;
  SpCompareFollowUpReport.parameters.ParamByName('@ToDate2').value        := '0' ;

  SpCompareFollowUpReport.parameters.ParamByName('@Customerid3').value    := 0 ;
  SpCompareFollowUpReport.parameters.ParamByName('@ProductId3').value     := 0 ;
  SpCompareFollowUpReport.parameters.ParamByName('@DonStatusID3').value   := 0 ;
  SpCompareFollowUpReport.Parameters.ParamByName('@ActionTypeID3').Value  := 0 ;
  SpCompareFollowUpReport.Parameters.ParamByName('@MarketerID3').Value    := 0 ;
  SpCompareFollowUpReport.Parameters.ParamByName('@orgID3').Value         := 0 ;
  SpCompareFollowUpReport.Parameters.ParamByName('@GroupId3').Value       := 0 ;
  SpCompareFollowUpReport.parameters.ParamByName('@FromDate3').value      := '0' ;
  SpCompareFollowUpReport.parameters.ParamByName('@ToDate3').value        := '0' ;

  if not firstMode then
  begin
    if pnlSearchFollow.Visible then
    begin

      if  followUpItem.ItemIndex = -1 then
        SpCompareFollowUpReport.Parameters.ParamByName('@orgID1').Value:=_orgID
      else
        SpCompareFollowUpReport.Parameters.ParamByName('@orgID1').Value:= followUpItem.ItemIndex ;

      if dblGroups.KeyValue <> null then
         SpCompareFollowUpReport.Parameters.ParamByName('@GroupId1').Value:= dblGroups.KeyValue
      else
         SpCompareFollowUpReport.Parameters.ParamByName('@GroupId1').Value := 0;

      if dblDoneStatusID.KeyValue <> null then
         SpCompareFollowUpReport.Parameters.ParamByName('@DonStatusID1').Value:= dblDoneStatusID.KeyValue
      else
         SpCompareFollowUpReport.Parameters.ParamByName('@DonStatusID1').Value := 0;

      if dblMarketer.KeyValue <> null then
         SpCompareFollowUpReport.Parameters.ParamByName('@MarketerID1').Value:= dblMarketer.KeyValue
      else
         SpCompareFollowUpReport.Parameters.ParamByName('@MarketerID1').Value := 0;

      if ActionType.KeyValue <> null then
         SpCompareFollowUpReport.Parameters.ParamByName('@ActionTypeID1').Value:= ActionType.KeyValue
      else
         SpCompareFollowUpReport.Parameters.ParamByName('@ActionTypeID1').Value := 0;

      if edtCustomerNo.Text <> '' then
        SpCompareFollowUpReport.parameters.ParamByName('@Customerid1').value   := StrToInt(edtCustomerNo.Text) ;

      if not(dblProductId.KeyValue = null) and (dblProductId.KeyValue > 0 )   then
        SpCompareFollowUpReport.parameters.ParamByName('@ProductId1').value    := dblProductId.KeyValue ;

      if FromDate.Text <> ''  then
        SpCompareFollowUpReport.parameters.ParamByName('@FromDate1').value     := FromDate.Text ;

      if Todate.Text <> ''  then
        SpCompareFollowUpReport.parameters.ParamByName('@ToDate1').value       := Todate.Text ;

    end;

    if pnlSearchFollow2.Visible then
    begin
      (*
      SpCompareFollowUpReport.parameters.ParamByName('@Customerid2').value    := 0 ;
      SpCompareFollowUpReport.parameters.ParamByName('@ProductId2').value     := 0 ;
      SpCompareFollowUpReport.parameters.ParamByName('@DonStatusID2').value   := 0 ;
      SpCompareFollowUpReport.Parameters.ParamByName('@ActionTypeID2').Value  := 0 ;
      SpCompareFollowUpReport.Parameters.ParamByName('@MarketerID2').Value    := 0 ;
      SpCompareFollowUpReport.Parameters.ParamByName('@orgID2').Value         := 0 ;
      SpCompareFollowUpReport.Parameters.ParamByName('@GroupId2').Value       := 0 ;
      SpCompareFollowUpReport.parameters.ParamByName('@FromDate2').value      := '0' ;
      SpCompareFollowUpReport.parameters.ParamByName('@ToDate2').value        := '0' ;

      SpCompareFollowUpReport.parameters.ParamByName('@Customerid3').value    := 0 ;
      SpCompareFollowUpReport.parameters.ParamByName('@ProductId3').value     := 0 ;
      SpCompareFollowUpReport.parameters.ParamByName('@DonStatusID3').value   := 0 ;
      SpCompareFollowUpReport.Parameters.ParamByName('@ActionTypeID3').Value  := 0 ;
      SpCompareFollowUpReport.Parameters.ParamByName('@MarketerID3').Value    := 0 ;
      SpCompareFollowUpReport.Parameters.ParamByName('@orgID3').Value         := 0 ;
      SpCompareFollowUpReport.Parameters.ParamByName('@GroupId3').Value       := 0 ;
      SpCompareFollowUpReport.parameters.ParamByName('@FromDate3').value      := '0' ;
      SpCompareFollowUpReport.parameters.ParamByName('@ToDate3').value        := '0' ;
      *)

      if  followUpItem2.ItemIndex = -1 then
        SpCompareFollowUpReport.Parameters.ParamByName('@orgID2').Value:=_orgID
      else
        SpCompareFollowUpReport.Parameters.ParamByName('@orgID2').Value:= followUpItem2.ItemIndex ;

      if dblGroups2.KeyValue <> null then
         SpCompareFollowUpReport.Parameters.ParamByName('@GroupId2').Value:= dblGroups2.KeyValue
      else
         SpCompareFollowUpReport.Parameters.ParamByName('@GroupId2').Value := 0;

      if dblDoneStatusID2.KeyValue <> null then
         SpCompareFollowUpReport.Parameters.ParamByName('@DonStatusID2').Value:= dblDoneStatusID2.KeyValue
      else
         SpCompareFollowUpReport.Parameters.ParamByName('@DonStatusID2').Value := 0;

      if dblMarketer2.KeyValue <> null then
         SpCompareFollowUpReport.Parameters.ParamByName('@MarketerID2').Value:= dblMarketer2.KeyValue
      else
         SpCompareFollowUpReport.Parameters.ParamByName('@MarketerID2').Value := 0;

      if ActionType2.KeyValue <> null then
         SpCompareFollowUpReport.Parameters.ParamByName('@ActionTypeID2').Value:= ActionType2.KeyValue
      else
         SpCompareFollowUpReport.Parameters.ParamByName('@ActionTypeID2').Value := 0;

      if edtCustomerNo2.Text <> '' then
        SpCompareFollowUpReport.parameters.ParamByName('@Customerid2').value   := StrToInt(edtCustomerNo2.Text) ;

      if not(dblProductId2.KeyValue = null) and (dblProductId2.KeyValue > 0 )   then
        SpCompareFollowUpReport.parameters.ParamByName('@ProductId2').value    := dblProductId2.KeyValue ;

      if FromDate2.Text <> ''  then
        SpCompareFollowUpReport.parameters.ParamByName('@FromDate2').value     := FromDate2.Text ;

      if Todate2.Text <> ''  then
        SpCompareFollowUpReport.parameters.ParamByName('@ToDate2').value       := Todate2.Text ;


    end;

    if pnlSearchFollow3.Visible then
    begin
      (*
      SpCompareFollowUpReport.parameters.ParamByName('@Customerid3').value    := 0 ;
      SpCompareFollowUpReport.Parameters.ParamByName('@MarketerID3').Value    := 0 ;
      SpCompareFollowUpReport.parameters.ParamByName('@ProductId3').value     := 0 ;
      SpCompareFollowUpReport.Parameters.ParamByName('@ActionTypeID3').Value  := 0 ;
      SpCompareFollowUpReport.Parameters.ParamByName('@orgID3').Value         := 0 ;
      SpCompareFollowUpReport.Parameters.ParamByName('@GroupId3').Value       := 0 ;    
      SpCompareFollowUpReport.parameters.ParamByName('@DonStatusID3').value   := 0 ;
      SpCompareFollowUpReport.parameters.ParamByName('@FromDate3').value      := '0' ;
      SpCompareFollowUpReport.parameters.ParamByName('@ToDate3').value        := '0' ;
      *)

      if  followUpItem3.ItemIndex = -1 then
        SpCompareFollowUpReport.Parameters.ParamByName('@orgID3').Value:=_orgID
      else
        SpCompareFollowUpReport.Parameters.ParamByName('@orgID3').Value:= followUpItem3.ItemIndex ;

      if dblGroups3.KeyValue <> null then
         SpCompareFollowUpReport.Parameters.ParamByName('@GroupId3').Value:= dblGroups3.KeyValue
      else
         SpCompareFollowUpReport.Parameters.ParamByName('@GroupId3').Value := 0;

      if dblDoneStatusID3.KeyValue <> null then
         SpCompareFollowUpReport.Parameters.ParamByName('@DonStatusID3').Value:= dblDoneStatusID3.KeyValue
      else
         SpCompareFollowUpReport.Parameters.ParamByName('@DonStatusID3').Value := 0;

      if dblMarketer3.KeyValue <> null then
         SpCompareFollowUpReport.Parameters.ParamByName('@MarketerID3').Value:= dblMarketer3.KeyValue
      else
         SpCompareFollowUpReport.Parameters.ParamByName('@MarketerID3').Value := 0;

      if ActionType3.KeyValue <> null then
         SpCompareFollowUpReport.Parameters.ParamByName('@ActionTypeID3').Value:= ActionType3.KeyValue
      else
         SpCompareFollowUpReport.Parameters.ParamByName('@ActionTypeID3').Value := 0;

      if edtCustomerNo3.Text <> '' then
        SpCompareFollowUpReport.parameters.ParamByName('@Customerid3').value   := StrToInt(edtCustomerNo3.Text) ;

      if not(dblProductId3.KeyValue = null) and (dblProductId3.KeyValue > 0 )   then
        SpCompareFollowUpReport.parameters.ParamByName('@ProductId3').value    := dblProductId3.KeyValue ;

      if FromDate3.Text <> ''  then
        SpCompareFollowUpReport.parameters.ParamByName('@FromDate3').value     := FromDate3.Text ;

      if Todate.Text <> ''  then
        SpCompareFollowUpReport.parameters.ParamByName('@ToDate3').value       := Todate3.Text ;


    end;
  end;

  SpCompareFollowUpReport.Open;
  
  FollowGrid.DataSource.DataSet.EnableControls;

  if SpCompareFollowUpReport.RecordCount >0 then
    RCount.Caption := ' ����� : ' +  IntToStr(SpCompareFollowUpReport.RecordCount)
  else RCount.Caption := ' ����� : 0'  ;

  if Chart1.Visible then
   SpeedButton11Click(self);

end;

procedure TFCompare_Report.SpeedButton11Click(Sender: TObject);
var
    Loop ,YearIndex: integer;
    DeptKey: String;
    StartBar, TotalBar, EndBar ,LevelEndBar : TBarSeries;
    Level1Bar, Level2Bar, Level3Bar ,Level4Bar,Level5Bar ,Level6Bar, Level7Bar : TBarSeries;
    pStartBar, pTotalBar, pEndBar : TPieSeries;
    smsSeriesTitle : TSeriesMarksStyle ;
    LinefooterTitle : string;
    TempColor : TColor ;
    RCount : Integer ;
    aArrowLength : Integer;
    aXvalue : Integer;
    str : Tstrings ;
    i : Integer;
    CountTemp : Integer;
begin
  if not FollowGrid.DataSource.DataSet.Active then
    Exit;
    
  str := TStringList.Create();
  str.Add( ' ����� ������ ������� ') ;
  Chart1.Foot.Text := str ;

  str.Text:= '';
  Chart1.Title.Text := str ;
  FollowGrid.DataSource.DataSet.First;
  FollowGrid.Visible := not FollowGrid.Visible ;
  Chart1.Visible     := not FollowGrid.Visible ;

  Chart1.View3D := cb3D.Checked ;
  Chart1.BottomAxis.GridCentered := True;

  chart1.FreeAllSeries;
  Chart1.AxisVisible := True;

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



  FollowGrid.DataSource.DataSet.DisableControls;
  RCount := 0 ;
  with DSForm.Dataset do
  begin
     // if Locate('o_deptaddressno',DeptKey,[]) then
     // begin

         // While  not eof do
          //begin
    for i :=  1 to 3 do
    begin
       RCount :=  RCount + i ;
       CountTemp := 0 ;
       
       aXvalue := (aArrowLength*RCount) ;

       DSForm.Dataset.Filtered := False;
       DSForm.Dataset.Filter := ' RepId =' +IntToStr(i) ;
       DSForm.Dataset.Filtered := True;

       if  SpCompareFollowUpReportRepId.AsInteger = 1 then
       begin
         TempColor := $0082AAFF ;
       end
       else if  SpCompareFollowUpReportRepId.AsInteger = 2 then
       begin
           TempColor := $00FFD9D9 ;
       end
       else if  SpCompareFollowUpReportRepId.AsInteger = 3 then
       begin
           TempColor := $00D9FFD9 ;
       end;

       DSForm.Dataset.First;
       while not DSForm.Dataset.Eof do
       begin
         CountTemp := CountTemp + SpCompareFollowUpReportRcount.AsInteger ;
         DSForm.Dataset.Next;
       end;

       if DSForm.Dataset.recordcount> 0  then
       begin

         Level1Bar  :=  GetInsertedBarSeries(IntToStr(RCount)+'RepId', 'RepId', TempColor);
         Level2Bar  :=  GetInsertedBarSeries(IntToStr(RCount+i)+'RepId', 'RepId', TempColor);

         if  SpCompareFollowUpReportRepId.AsInteger = 1 then
         begin
           LinefooterTitle := 'ј��� ����� ��� ';

         end
         else if  SpCompareFollowUpReportRepId.AsInteger = 2 then
         begin
             LinefooterTitle := 'ј��� ����� ��� ';
         end
         else if  SpCompareFollowUpReportRepId.AsInteger = 3 then
         begin
             LinefooterTitle := 'ј��� ����� ��� ' ;
         end;

            Level1Bar.AddXY(aXvalue,
                            DSForm.Dataset.recordcount,
                            'ј���', TempColor );

          Level1Bar.Marks.Style := smsLabelValue ;
          Level1Bar.Marks.ArrowLength := aArrowLength;
          Level1Bar.SideMargins := False ;

          Level2Bar.AddXY(aXvalue,
                          CountTemp,
                          '�����', TempColor );

          Level2Bar.Marks.Style := smsLabelValue ;
          Level2Bar.Marks.ArrowLength := aArrowLength;
          Level2Bar.SideMargins := False ;


         if  SpCompareFollowUpReportRepId.AsInteger = 1 then
         begin
           Level1Bar.Title := 'ј��� ����� ��� '+ ' = '+ inttostr(DSForm.Dataset.recordcount) ;
           Level2Bar.Title := ' ����� '+ ' = '+ inttostr(CountTemp) ;
         end
         else if  SpCompareFollowUpReportRepId.AsInteger = 2 then
         begin
             Level1Bar.Title := 'ј��� ����� ��� '+ ' = '+ inttostr(DSForm.Dataset.recordcount);
             Level2Bar.Title := ' ����� '+ ' = '+ inttostr(CountTemp) ;
         end
         else if  SpCompareFollowUpReportRepId.AsInteger = 3 then
         begin
             Level1Bar.Title := 'ј��� ����� ��� '+ ' = '+ inttostr(DSForm.Dataset.recordcount);
             Level2Bar.Title := ' ����� '+ ' = '+ inttostr(CountTemp) ;
         end;
       end;
       /// Next;
        RCount := RCount + 1 ;
    end;
     // end;
  end;

  DSForm.Dataset.Filtered := False;
  DSForm.Dataset.Filter := '' ;
  DSForm.Dataset.Filtered := True;
  FollowGrid.DataSource.DataSet.EnableControls;
   // end;

   //SetSeriesLegendProperties;
end;

procedure TFCompare_Report.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if SpCompareFollowUpReport.Active then
  if  (SpCompareFollowUpReport.RecordCount >0) then
  begin
     if (chart1.Visible) then
     begin
       with TPrintDialog.Create(nil) do
        try
          if Execute then
            Chart1.print;
        finally
          Free;
        end;

     end
     else  FollowGrid.Print;
  end;

end;

procedure TFCompare_Report.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  if SpCompareFollowUpReport.Active then
  if (SpCompareFollowUpReport.RecordCount >0) then
  begin
    if not Dm.IsWordRunning then   // for error RPC   The RPC server is unavailable   Remote Procedure Call
    begin
      Dm.ActiveWord ;
    end;

    FollowGrid.ExportToWord;
  end;
end;

procedure TFCompare_Report.FollowGridNeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Color: TColor);
begin
  inherited;
   Color:= clWindow;
   try

     if (SpCompareFollowUpReportRepId.AsInteger = 2)  THEN
         Color:= $00FFD9D9
     else if (SpCompareFollowUpReportRepId.AsInteger = 3)  THEN
         Color:= $00D9FFD9 ;

   except
   end;
end;

procedure TFCompare_Report.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  FromDate.Text := dm.MssCalendarPro1.Execute('/');
end;

procedure TFCompare_Report.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  FromDate2.Text := dm.MssCalendarPro1.Execute('/');
end;

procedure TFCompare_Report.SpeedButton8Click(Sender: TObject);
begin
  inherited;
    FromDate3.Text := dm.MssCalendarPro1.Execute('/');
end;

procedure TFCompare_Report.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  ToDate.Text := dm.MssCalendarPro1.Execute('/');
end;

procedure TFCompare_Report.SpeedButton7Click(Sender: TObject);
begin
  inherited;
  ToDate2.Text := dm.MssCalendarPro1.Execute('/');
end;

procedure TFCompare_Report.SpeedButton9Click(Sender: TObject);
begin
  inherited;
  ToDate3.Text := dm.MssCalendarPro1.Execute('/');
end;

procedure TFCompare_Report.Button5Click(Sender: TObject);
begin
  inherited;
  dblGroups.KeyValue := Null;
end;

procedure TFCompare_Report.Button10Click(Sender: TObject);
begin
  inherited;
  dblGroups2.KeyValue := Null;
end;

procedure TFCompare_Report.Button15Click(Sender: TObject);
begin
  inherited;
  dblGroups3.KeyValue := Null;
end;

procedure TFCompare_Report.Button1Click(Sender: TObject);
begin
  inherited;
  ActionType.KeyValue := Null;
end;

procedure TFCompare_Report.Button6Click(Sender: TObject);
begin
  inherited;
  ActionType2.KeyValue := Null;
end;

procedure TFCompare_Report.Button11Click(Sender: TObject);
begin
  inherited;
  ActionType3.KeyValue := Null;
end;

procedure TFCompare_Report.Button2Click(Sender: TObject);
begin
  inherited;
  dblProductId.KeyValue := Null;
end;

procedure TFCompare_Report.Button7Click(Sender: TObject);
begin
  inherited;
  dblProductId2.KeyValue := Null;
end;

procedure TFCompare_Report.Button12Click(Sender: TObject);
begin
  inherited;
  dblProductId3.KeyValue := Null;
end;

procedure TFCompare_Report.Button3Click(Sender: TObject);
begin
  inherited;
  dblMarketer.KeyValue := Null;
end;

procedure TFCompare_Report.Button8Click(Sender: TObject);
begin
  inherited;
  dblMarketer2.KeyValue := Null;
end;

procedure TFCompare_Report.Button13Click(Sender: TObject);
begin
  inherited;
  dblMarketer3.KeyValue := Null;
end;

procedure TFCompare_Report.Button4Click(Sender: TObject);
begin
  inherited;
  dblDoneStatusID.KeyValue := Null;
end;

procedure TFCompare_Report.Button9Click(Sender: TObject);
begin
  inherited;
  dblDoneStatusID2.KeyValue := Null;
end;

procedure TFCompare_Report.Button14Click(Sender: TObject);
begin
  inherited;
  dblDoneStatusID3.KeyValue := Null;
end;

function TFCompare_Report.GetInsertedBarSeries(aName, aTitle: String;
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
        Marks.ArrowLength := 100 ;
    end;

    Chart1.AddSeries(Result);
end;

procedure TFCompare_Report.cb3DClick(Sender: TObject);
begin
  inherited;
  Chart1.View3D := cb3D.Checked ;
end;

procedure TFCompare_Report.SpeedButton1Click(Sender: TObject);
begin
  inherited;

  if SpCompareFollowUpReport.Active then
  if  (SpCompareFollowUpReport.RecordCount >0) then
    FollowGrid.ExportToExcel;

end;

procedure TFCompare_Report.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  inherited;
  if (NewWidth < 1289)  or (NewHeight < 697) then
    Resize := False
  else Resize := True;

end;

procedure TFCompare_Report.RefreshFilter;
begin
  if FollowGrid.DataSource.DataSet.RecordCount >0 then
  begin
    DSForm.Dataset.Filtered := False;
    DSForm.Dataset.Filter := ' RepType = 1 ' ;

    if  pic11.Visible then
    begin
        DSForm.Dataset.Filter := DSForm.Dataset.Filter + ' or  RepType = 2 ' ;
    end;

    if  pic12.Visible then
    begin
          DSForm.Dataset.Filter := DSForm.Dataset.Filter + ' or  RepType = 3 ' ;
    end;
    DSForm.Dataset.Filtered := True;
  end;
  BitBtn1Click(self);

end;

end.
