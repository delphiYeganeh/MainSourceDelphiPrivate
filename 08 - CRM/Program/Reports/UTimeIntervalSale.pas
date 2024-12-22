unit UTimeIntervalSale;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtCtrls, ExtActns, ActnList, DB, StdCtrls, UemsVCL,
  DBCtrls, xpPanel, Buttons, Grids, DBGrids, YDbgrid, ADODB, CheckLst,
  YchecklistBox;

type
  TFTimeIntervalSale = class(TMBaseForm)
    pnlMain: TPanel;
    TimeIntervalGrid: TYDBGrid;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    RCount: TLabel;
    BtnCancel: TBitBtn;
    BitBtn1: TBitBtn;
    pnlSearchFollow: TxpPanel;
    pnlTime: TPanel;
    Label6: TLabel;
    SpeedButton4: TSpeedButton;
    Label7: TLabel;
    SpeedButton5: TSpeedButton;
    FromDate: TShamsiDateEdit;
    Todate: TShamsiDateEdit;
    Label1: TLabel;
    dblGroups: TDBLookupComboBox;
    Button1: TButton;
    edtCustomerNo: TEdit;
    Label3: TLabel;
    Label2: TLabel;
    dblProductId: TDBLookupComboBox;
    Button2: TButton;
    Label4: TLabel;
    dblMarketer: TDBLookupComboBox;
    Button3: TButton;
    SpTimeIntervalSale: TADOStoredProc;
    SpTimeIntervalSaleCustomerID: TIntegerField;
    SpTimeIntervalSaleCompanyName: TStringField;
    SpTimeIntervalSaleMarketerTitle: TStringField;
    SpTimeIntervalSalegroupTitle: TStringField;
    SpTimeIntervalSaleFirstTime: TIntegerField;
    SpTimeIntervalSaleSecondTime: TIntegerField;
    SpTimeIntervalSaleThirdTime: TIntegerField;
    SpTimeIntervalSaleInsertdate: TStringField;
    SpTimeIntervalSaleDemoDate: TStringField;
    SpTimeIntervalSaleSaleDate: TStringField;
    Label5: TLabel;
    dblCustomerStatus: TDBLookupComboBox;
    Button4: TButton;
    Panel2: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    edtAmount1: TEdit;
    edtAmount2: TEdit;
    pnlCLBCompaginIDs: TPanel;
    Label10: TLabel;
    CLBCompaginIDs: TYchecklistBox;
    Button5: TButton;
    pnlCLBProductIDs: TPanel;
    Label11: TLabel;
    CLBProductIDs: TYchecklistBox;
    Button6: TButton;
    SpTimeIntervalSaleproductStr: TStringField;
    SpTimeIntervalSalectDone: TIntegerField;
    Panel3: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    edtToLeadQuality: TEdit;
    SpTimeIntervalSalePriceestimate: TFloatField;
    Panel4: TPanel;
    Label14: TLabel;
    CLBGroupsIDs: TYchecklistBox;
    Button7: TButton;
    Panel5: TPanel;
    Label15: TLabel;
    CLBCustomerStatusIDs: TYchecklistBox;
    Button8: TButton;
    Panel6: TPanel;
    Label16: TLabel;
    CLBMarketerIDs: TYchecklistBox;
    Button9: TButton;
    SpTimeIntervalSaleLeadQuality: TIntegerField;
    SpTimeIntervalSaleAmount: TFloatField;
    edtFromLeadQuality: TEdit;
    Panel7: TPanel;
    Label17: TLabel;
    SpeedButton6: TSpeedButton;
    Label18: TLabel;
    SpeedButton7: TSpeedButton;
    CFromDate: TShamsiDateEdit;
    CTodate: TShamsiDateEdit;
    Panel8: TPanel;
    Label19: TLabel;
    CLBContractTypeIDs: TYchecklistBox;
    Button10: TButton;
    RGDateType: TRadioGroup;
    pnlAverage: TPanel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    Count2: TLabel;
    Count3: TLabel;
    Count4: TLabel;
    Count5: TLabel;
    Count6: TLabel;
    Count7: TLabel;
    Count1: TLabel;
    Bevel8: TBevel;
    Label24: TLabel;
    Count8: TLabel;
    SpTimeIntervalSaleCustomerStatusID: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure edtAmount1KeyPress(Sender: TObject; var Key: Char);
    procedure edtAmount2KeyPress(Sender: TObject; var Key: Char);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure TimeIntervalGridDblClick(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTimeIntervalSale: TFTimeIntervalSale;

implementation
uses dmu, YShamsiDate , Telinputunit,MainU ,BusinessLayer;

{$R *.dfm}

procedure TFTimeIntervalSale.FormShow(Sender: TObject);
begin
  inherited;
   FromDate.Text :=copy(_today,1,8)+'01';
   Todate.Text :=copy(_today,1,8)+'29' ;

   CFromDate.Text :=copy(_today,1,8)+'01';
   CTodate.Text :=copy(_today,1,8)+'29' ;

   Dm.ContractType.Close;
   Dm.ContractType.Open;

  ShapeBase.Brush.Color := _Color1 ;
  pnlMain.Color := _Color1 ;

  pnlSearchFollow.StartColor := _Color1 ;
  pnlSearchFollow.EndColor   := _Color2 ;

  pnlSearchFollow.TitleStartColor :=  _Color3;
  pnlSearchFollow.TitleEndColor   :=  _Color4;

  CLBCompaginIDs.Fill;
  CLBProductIDs .Fill;
  CLBCustomerStatusIDs.Fill;
  CLBMarketerIDs .Fill;
  CLBGroupsIDs.Fill;
  CLBContractTypeIDs.Fill;
  Count1.Caption := '0'  ;
  Count2.Caption := '0'  ;
  Count3.Caption := '0'  ;
  Count4.Caption := '0'  ;
  Count5.Caption := '0'  ;
  Count6.Caption := '0'  ;
  Count7.Caption := '0'  ;
  Count8.Caption := '0'  ;
end;


procedure TFTimeIntervalSale.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if SpTimeIntervalSale.RecordCount >0 then
    TimeIntervalGrid.ExportToExcel;
end;

procedure TFTimeIntervalSale.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if SpTimeIntervalSale.RecordCount >0 then
    TimeIntervalGrid.Print;
end;

procedure TFTimeIntervalSale.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  if SpTimeIntervalSale.RecordCount >0 then
    TimeIntervalGrid.ExportToWord;
end;

procedure TFTimeIntervalSale.BitBtn1Click(Sender: TObject);
var i : Integer;
 c1,c2,c3,c4,c5,c6,c7 ,c8 : Extended;//Currency; //Currency;// Largeint;
 sC7 : String ;
begin
  inherited;
  
  SpTimeIntervalSale.Close;
  SpTimeIntervalSale.parameters.ParamByName('@Customerid').value        := 0 ;
  SpTimeIntervalSale.parameters.ParamByName('@ProductId').value         := 0 ;
  SpTimeIntervalSale.Parameters.ParamByName('@MarketerID').Value        := 0 ;
  SpTimeIntervalSale.Parameters.ParamByName('@GroupId').Value           := 0 ;
  SpTimeIntervalSale.Parameters.ParamByName('@CustomerStatusID').Value  := 0 ;
  SpTimeIntervalSale.parameters.ParamByName('@FromDate').value          := '0' ;
  SpTimeIntervalSale.parameters.ParamByName('@ToDate').value            := '0' ;
  SpTimeIntervalSale.parameters.ParamByName('@FromAmount').value        := 0 ;
  SpTimeIntervalSale.parameters.ParamByName('@ToAmount').value          := 0 ;
  SpTimeIntervalSale.parameters.ParamByName('@CompaginIDs').value       := '0' ;
  SpTimeIntervalSale.parameters.ParamByName('@ProductIDs').value        := '0' ;
  SpTimeIntervalSale.parameters.ParamByName('@GroupIDs').value          := '0' ;
  SpTimeIntervalSale.parameters.ParamByName('@MarketerIDs').value       := '0' ;
  SpTimeIntervalSale.parameters.ParamByName('@CustomerStatusIDs').value := '0' ;
  SpTimeIntervalSale.parameters.ParamByName('@FromLeadQuality').value   := 0 ;
  SpTimeIntervalSale.parameters.ParamByName('@ToLeadQuality').value     := 0 ;
  SpTimeIntervalSale.parameters.ParamByName('@cFromDate').value         := '0' ;
  SpTimeIntervalSale.parameters.ParamByName('@cToDate').value           := '0' ;
  SpTimeIntervalSale.parameters.ParamByName('@ContractTypeIds').value   := '0' ;
  SpTimeIntervalSale.parameters.ParamByName('@RepDateType').value       :=  0  ;

  SpTimeIntervalSale.parameters.ParamByName('@RepDateType').value       :=  RGDateType.ItemIndex ;


  if dblGroups.KeyValue <> null then
     SpTimeIntervalSale.Parameters.ParamByName('@GroupId').Value:= dblGroups.KeyValue;


  if dblMarketer.KeyValue <> null then
     SpTimeIntervalSale.Parameters.ParamByName('@MarketerID').Value:= dblMarketer.KeyValue;

  if dblCustomerStatus.KeyValue <> null then
     SpTimeIntervalSale.Parameters.ParamByName('@CustomerStatusID').Value:= dblCustomerStatus.KeyValue;


  if edtCustomerNo.Text <> '' then
    SpTimeIntervalSale.parameters.ParamByName('@Customerid').value   := StrToInt(edtCustomerNo.Text) ;

  if not(dblProductId.KeyValue = null) and (dblProductId.KeyValue > 0 )   then
    SpTimeIntervalSale.parameters.ParamByName('@ProductId').value    := dblProductId.KeyValue ;

  if RGDateType.ItemIndex in [0,1] then
  begin
    if FromDate.Text <> ''  then
      SpTimeIntervalSale.parameters.ParamByName('@FromDate').value     := FromDate.Text ;

    if Todate.Text <> ''  then
      SpTimeIntervalSale.parameters.ParamByName('@ToDate').value       := Todate.Text ;
  end;

  if edtAmount1.Text <> ''  then
    SpTimeIntervalSale.parameters.ParamByName('@FromAmount').value     := edtAmount1.Text ;

  if edtAmount2.Text <> ''  then
    SpTimeIntervalSale.parameters.ParamByName('@ToAmount').value       := edtAmount2.Text ;

  if CLBCompaginIDs.SelectedCodes <> ''  then
    SpTimeIntervalSale.parameters.ParamByName('@CompaginIDs').value    := CLBCompaginIDs.SelectedCodes ;

  if CLBProductIDs.SelectedCodes <> ''  then
    SpTimeIntervalSale.parameters.ParamByName('@ProductIDs').value    := CLBProductIDs.SelectedCodes ;

  if CLBGroupsIDs.SelectedCodes <> ''  then
    SpTimeIntervalSale.parameters.ParamByName('@GroupIDs').value    := CLBGroupsIDs.SelectedCodes ;

  if CLBMarketerIDs.SelectedCodes <> ''  then
    SpTimeIntervalSale.parameters.ParamByName('@MarketerIDs').value    := CLBMarketerIDs.SelectedCodes ;

  if CLBCustomerStatusIDs.SelectedCodes <> ''  then
    SpTimeIntervalSale.parameters.ParamByName('@CustomerStatusIDs').value    := CLBCustomerStatusIDs.SelectedCodes ;

  if edtFromLeadQuality.Text <> ''  then
    SpTimeIntervalSale.parameters.ParamByName('@FromLeadQuality').value     := edtFromLeadQuality.Text ;

  if edtToLeadQuality.Text <> ''  then
    SpTimeIntervalSale.parameters.ParamByName('@ToLeadQuality').value       := edtToLeadQuality.Text ;

  if RGDateType.ItemIndex in [0,2] then
  begin
    if CFromDate.Text <> ''  then
      SpTimeIntervalSale.parameters.ParamByName('@CFromDate').value     := CFromDate.Text ;

    if CTodate.Text <> ''  then
      SpTimeIntervalSale.parameters.ParamByName('@CToDate').value       := CTodate.Text ;
  end;

  if CLBContractTypeIDs.SelectedCodes <> ''  then
    SpTimeIntervalSale.parameters.ParamByName('@ContractTypeIds').value    := CLBContractTypeIDs.SelectedCodes ;

  SpTimeIntervalSale.Open;
  c1 := 0;
  c2 := 0;
  c3 := 0;
  c4 := 0;
  c5 := 0;
  c6 := 0;
  c7 := 0;
  c8 := 0;
  sC7:= '0'; 

  if SpTimeIntervalSale.RecordCount >0 then
  begin
    TimeIntervalGrid.DataSource.DataSet.DisableControls;
    with SpTimeIntervalSale do
     begin
       First;
       while not eof do
        begin

          c1 := c1 + SpTimeIntervalSalectDone.AsInteger ;
          c2 := c2 + SpTimeIntervalSaleFirstTime.AsInteger ;
          c3 := c3 + SpTimeIntervalSaleSecondTime.AsInteger ;
          c4 := c4 + SpTimeIntervalSaleThirdTime .AsInteger ;
          c5 := c5 + SpTimeIntervalSalePriceestimate.AsFloat ;
          c6 := c6 + SpTimeIntervalSaleLeadQuality .AsInteger ;
          c7 := c7 + SpTimeIntervalSaleAmount .AsFloat ;
          if SpTimeIntervalSaleCustomerStatusID.AsInteger = 2 then
            c8 := c8 + 1 ;
          sC7 := FloatToStr(StrTofloat(sC7) + SpTimeIntervalSaleAmount .AsFloat) ;
          next;
        end;
       First;
     end;
     TimeIntervalGrid.DataSource.DataSet.EnableControls ;
                                  
    RCount.Caption := ' йзого : ' + Dm.CommaSeperated( IntToStr(SpTimeIntervalSale.RecordCount))     ;
    if c1 >0 then
    begin
      Count1.Caption := FloatToStr(round(c1 / SpTimeIntervalSale.RecordCount)) ;

      Count1.Caption := Dm.CommaSeperated(Count1.Caption) ;
    end
    else  Count1.Caption := '0' ;

    if c2 >0 then
    begin
       Count2.Caption := FloatToStr(round(c2 / SpTimeIntervalSale.RecordCount)) ;

       Count2.Caption := Dm.CommaSeperated(Count2.Caption) ;
     end
     else  Count2.Caption := '0' ;

    if c3 >0 then
    begin
      Count3.Caption := FloatToStr(round(c3 / SpTimeIntervalSale.RecordCount)) ;

      Count3.Caption := Dm.CommaSeperated(Count3.Caption) ;
     end
     else  Count3.Caption := '0' ;

    if c4 >0 then
    begin
      Count4.Caption := FloatToStr(round(c4 / SpTimeIntervalSale.RecordCount)) ;

      Count4.Caption := Dm.CommaSeperated(Count4.Caption) ;
    end
     else  Count4.Caption := '0' ;

    if c5 >0 then
    begin
      Count5.Caption := FloatToStr(round(c5 / SpTimeIntervalSale.RecordCount));

      Count5.Caption := Dm.CommaSeperated(Count5.Caption) ;
    end
     else  Count5.Caption := '0' ;

    if c6 >0 then
    begin
      Count6.Caption := FloatToStr(round(c6 / SpTimeIntervalSale.RecordCount));

      Count6.Caption := Dm.CommaSeperated(Count6.Caption) ;
    end
     else  Count6.Caption := '0' ;
     
    if C7 >0 then
    begin
      Count7.Caption :=  FloatToStr (round(c7 / SpTimeIntervalSale.RecordCount)) ;

     Count7.Caption := Dm.CommaSeperated(Count7.Caption) ;
    end
     else  Count7.Caption := '0' ;

    if C8 >0 then
    begin
      Count8.Caption :=  FloatToStr (round(c8 )) ;

     Count8.Caption := Dm.CommaSeperated(Count8.Caption) ;
    end
     else  Count8.Caption := '0' ;

  end
  else
  begin
    RCount.Caption := ' йзого : 0'  ;
    Count1.Caption := '0'  ;
    Count2.Caption := '0'  ;
    Count3.Caption := '0'  ;
    Count4.Caption := '0'  ;
    Count5.Caption := '0'  ;
    Count6.Caption := '0'  ;
    Count7.Caption := '0'  ;
    Count8.Caption := '0'  ;    
  end;

  TimeIntervalGrid.UpdateFooter;

end;

procedure TFTimeIntervalSale.Button1Click(Sender: TObject);
begin
  inherited;
  dblGroups.KeyValue := Null;
end;

procedure TFTimeIntervalSale.Button3Click(Sender: TObject);
begin
  inherited;
  dblMarketer.KeyValue := Null;
end;

procedure TFTimeIntervalSale.Button2Click(Sender: TObject);
begin
  inherited;
  dblProductId.KeyValue := Null;
end;

procedure TFTimeIntervalSale.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  FromDate.Text := dm.MssCalendarPro1.Execute('/');
end;

procedure TFTimeIntervalSale.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  ToDate.Text := dm.MssCalendarPro1.Execute('/');
end;

procedure TFTimeIntervalSale.Button4Click(Sender: TObject);
begin
  inherited;
  dblCustomerStatus.KeyValue := Null;
end;

procedure TFTimeIntervalSale.edtAmount1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (Key in ['0'..'9',#8,#13]) then
    Key := #0;
end;

procedure TFTimeIntervalSale.edtAmount2KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (Key in ['0'..'9',#8,#13]) then
    Key := #0;
end;

procedure TFTimeIntervalSale.Button5Click(Sender: TObject);
begin
  inherited;

  CLBCompaginIDs.Fill;
end;

procedure TFTimeIntervalSale.Button6Click(Sender: TObject);
begin
  inherited;
  CLBProductIDs.Fill;
end;

procedure TFTimeIntervalSale.TimeIntervalGridDblClick(Sender: TObject);
var Id :integer;
begin
  if SpTimeIntervalSale.RecordCount >0 then
  //if DSForm.DataSet.RecordCount >0 then
  begin
   Id := SpTimeIntervalSaleCustomerID.AsInteger;
   propertiesForm := TPropertiesForm.Create(Application,SpTimeIntervalSaleCustomerID.AsInteger) ;
   PropertiesForm.Showmodal;
   if (PropertiesForm<> nil) and (PropertiesForm.Edited = true) then
   begin
     MainForm.RefreshCustomer;
     dm.Customer.Locate('CustomerId',Id,[])
    end;
   if Assigned(PropertiesForm) then
     FreeAndNil(PropertiesForm);
  end;
end;

procedure TFTimeIntervalSale.Button9Click(Sender: TObject);
begin
  inherited;
  CLBMarketerIDs.Fill;
end;

procedure TFTimeIntervalSale.Button8Click(Sender: TObject);
begin
  inherited;
  CLBCustomerStatusIDs.Fill;
end;

procedure TFTimeIntervalSale.Button7Click(Sender: TObject);
begin
  inherited;
  CLBGroupsIDs.Fill;
end;

procedure TFTimeIntervalSale.Button10Click(Sender: TObject);
begin
  inherited;
  CLBContractTypeIDs.Fill;
end;

procedure TFTimeIntervalSale.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  CFromDate.Text := dm.MssCalendarPro1.Execute('/');
end;

procedure TFTimeIntervalSale.SpeedButton7Click(Sender: TObject);
begin
  inherited;
  CToDate.Text := dm.MssCalendarPro1.Execute('/');
end;

end.
