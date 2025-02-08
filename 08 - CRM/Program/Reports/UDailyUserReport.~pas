unit UDailyUserReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtActns, ActnList, DB, ExtCtrls, Buttons, StdCtrls,
  DBCtrls, Mask, xpPanel, Grids, DBGrids, YDbgrid, ADODB;

type
  TFDailyUserReport = class(TMBaseForm)
    pnlMain: TPanel;
    dbgDailyUser: TYDBGrid;
    xpPanel1: TxpPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    dblProduct: TDBLookupComboBox;
    edtCustomerId: TEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    edtDateInPersonFrom: TDBEdit;
    Button1: TButton;
    edtDateInPersonTo: TDBEdit;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Panel1: TPanel;
    SpeedButton3: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    BtnCancel: TBitBtn;
    BitBtn1: TBitBtn;
    SpDailyWorkUserReport: TADOStoredProc;
    SpDailyWorkUserReportMarketerTitle: TStringField;
    ComboBox1: TComboBox;
    Button5: TButton;
    Label4: TLabel;
    SpDailyWorkUserReportCountCustomer: TIntegerField;
    SpDailyWorkUserReportCountTask: TIntegerField;
    SpDailyWorkUserReportCountAllTaskINDay: TIntegerField;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDailyUserReport: TFDailyUserReport;

implementation
Uses dmu;

{$R *.dfm}

procedure TFDailyUserReport.Button1Click(Sender: TObject);
begin
  inherited;
  edtDateInPersonFrom.Text := dm.MssCalendarPro1.Execute('/');
end;

procedure TFDailyUserReport.Button2Click(Sender: TObject);
begin
  inherited;
  edtDateInPersonTo.Text:= Dm.MssCalendarPro1.Execute('/');
end;

procedure TFDailyUserReport.FormShow(Sender: TObject);
begin
  inherited;
  xpPanel1.StartColor := _Color1 ;
  xpPanel1.EndColor   := _Color2 ;

  xpPanel1.TitleStartColor :=  _Color3;
  xpPanel1.TitleEndColor   :=  _Color4;
    
  edtDateInPersonFrom.Text := _Today ;
  edtDateInPersonTo  .Text := _Today ;

  ComboBox1.ItemIndex := -1 ; 

  Dm.RefreshHoliday(copy(_today,1,4));
  Dm.MssCalendarPro1.HolidayStr := dm.HolidayStr;

end;

procedure TFDailyUserReport.BtnCancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFDailyUserReport.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if SpDailyWorkUserReport.Active then
  if SpDailyWorkUserReport.RecordCount >0 then
    dbgDailyUser.ExportToWord;
end;

procedure TFDailyUserReport.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if SpDailyWorkUserReport.Active then
  if SpDailyWorkUserReport.RecordCount >0 then
    dbgDailyUser.Print;
end;

procedure TFDailyUserReport.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  if SpDailyWorkUserReport.Active then
  if SpDailyWorkUserReport.RecordCount >0 then
    dbgDailyUser.ExportToExcel;
end;

procedure TFDailyUserReport.BitBtn1Click(Sender: TObject);
begin
  inherited;
  SpDailyWorkUserReport.Close;
  SpDailyWorkUserReport.parameters.ParamByName('@Customerid').value   := 0 ;
  SpDailyWorkUserReport.parameters.ParamByName('@ProductId').value    := 0 ;
  SpDailyWorkUserReport.parameters.ParamByName('@MarketerId').value   := 0 ;
  SpDailyWorkUserReport.parameters.ParamByName('@ManagerId').value    := 0 ;
  SpDailyWorkUserReport.parameters.ParamByName('@fromDate').value     := '0';
  SpDailyWorkUserReport.parameters.ParamByName('@ToDate').value       := '0' ;


  if edtCustomerId.Text <> '' then
    SpDailyWorkUserReport.parameters.ParamByName('@Customerid').value   := StrToInt(edtCustomerId.Text) ;

  if not(dblProduct.KeyValue = null) and (dblProduct.KeyValue > 0 )   then
    SpDailyWorkUserReport.parameters.ParamByName('@ProductId').value    := dblProduct.KeyValue ;

  if not(DBLookupComboBox1.KeyValue = null) and (DBLookupComboBox1.KeyValue > 0 )  then
    SpDailyWorkUserReport.parameters.ParamByName('@MarketerId').value   := DBLookupComboBox1.KeyValue ;

  SpDailyWorkUserReport.parameters.ParamByName('@ManagerId').value    := ComboBox1.ItemIndex + 1 ;

  if edtDateInPersonFrom.Text <> ''  then
    SpDailyWorkUserReport.parameters.ParamByName('@fromDate').value     := edtDateInPersonFrom.Text ;

  if edtDateInPersonTo.Text <> ''  then
    SpDailyWorkUserReport.parameters.ParamByName('@ToDate').value       := edtDateInPersonTo.Text ;


  SpDailyWorkUserReport.Open;
end;

procedure TFDailyUserReport.Button4Click(Sender: TObject);
begin
  inherited;
  DBLookupComboBox1.KeyValue := Null;
end;

procedure TFDailyUserReport.Button3Click(Sender: TObject);
begin
  inherited;
  dblProduct.KeyValue := Null;
end;

procedure TFDailyUserReport.Button5Click(Sender: TObject);
begin
  inherited;
  ComboBox1.ItemIndex := -1 ;
end;

end.
