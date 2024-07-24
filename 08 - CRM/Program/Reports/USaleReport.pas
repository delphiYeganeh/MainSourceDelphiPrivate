unit USaleReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtActns, ActnList, DB, ExtCtrls, StdCtrls, DBCtrls,
  Buttons, Grids, DBGrids, YDbgrid, UemsVCL, ADODB, MssCalendarPro;

type
  TFSaleReport = class(TMBaseForm)
    pnlMain: TPanel;
    Panel1: TPanel;
    LblYear: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    CBYear: TComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Button1: TButton;
    Button2: TButton;
    DBLkCBGroupTitle: TDBLookupComboBox;
    Button3: TButton;
    RGTypeRep: TRadioGroup;
    CustGrid: TYDBGrid;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    BitBtn1: TBitBtn;
    cbSeason: TComboBox;
    cbMonth: TComboBox;
    pnlPeriod: TPanel;
    Label1: TLabel;
    Label5: TLabel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    ActDateEditTo: TShamsiDateEdit;
    ActDateEditFrom: TShamsiDateEdit;
    dblState: TDBLookupComboBox;
    Label7: TLabel;
    Label8: TLabel;
    dblCity: TDBLookupComboBox;
    Button4: TButton;
    Button5: TButton;
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
  private
   function SpSearch_Contract_Advance(StartDate, EndDate: String;
      MarketerID : integer = 0 ; ContractTypeID : integer = 0 ; ProductId : integer = 0 ; Customerid: integer = 0; UserTypeID : integer = 0 ;
      StateID : integer = 0; CityID: integer = 0): TADOStoredProc;
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

begin
  inherited;

  if (RGTypeRep.ItemIndex = 0) then
  begin
    CustGrid.PrintTitle := 'ÒÇÑÔ ÝÑæÔ ÓÇá '+  CBYear.Text ;
    FromDate := CBYear.Text+'/01/01' ;
    ToDate   := CBYear.Text+'/12/29'  ;
  end
  else
  if (RGTypeRep.ItemIndex = 1) then
  begin
    CustGrid.PrintTitle := ' ÒÇÑÔ ÝÑæÔ ãÇå '+ cbMonth.Text +' ÓÇá '+ CBYear.Text ;
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
    CustGrid.PrintTitle := 'ÒÇÑÔ ÝÑæÔ ÝÕá '+ cbSeason.Text +' ÓÇá '+ CBYear.Text;
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
    CustGrid.PrintTitle := ' ÒÇÑÔ ÝÑæÔ ÇÒ ÊÇÑÎ '+ FromDate +' ÊÇ ÊÇÑíÎ '+ ToDate  ;
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

   ADOSP.Connection := dm.YeganehConnection;
   ADOSP.Open;
   Result := ADOSP;
end;

procedure TFSaleReport.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  if (_ExportCustomerList) then CustGrid.ExportToExcel
  else ShowMessage('ÔãÇ ãÌæÒ ÑÝÊä ÎÑæÌí ÇÒ áíÓÊ ÑÇ äÏÇÑíÏ');
end;

procedure TFSaleReport.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if (_ExportCustomerList) then CustGrid.Print
  else ShowMessage('ÔãÇ ãÌæÒ ÑÝÊä ÎÑæÌí ÇÒ áíÓÊ ÑÇ äÏÇÑíÏ');
end;

procedure TFSaleReport.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if (_ExportCustomerList) then
      CustGrid.ExportToWord
  else ShowMessage('ÔãÇ ãÌæÒ ÑÝÊä ÎÑæÌí ÇÒ áíÓÊ ÑÇ äÏÇÑíÏ');
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
  adoStateRep.Close;
  adoStateRep.Open;
  
  Dm.RefreshHoliday(copy(_today,1,4));
  MssCalendarPro1.HolidayStr := dm.HolidayStr;
end;

end.
