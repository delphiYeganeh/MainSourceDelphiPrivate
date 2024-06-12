unit UReportInPerson;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtActns, ActnList, DB, ExtCtrls, StdCtrls, Buttons,
  DBCtrls, xpPanel, Grids, DBGrids, YDbgrid, Mask, MssCalendarPro, ADODB;

type
  TFReportInPerson = class(TMBaseForm)
    pnlMain: TPanel;
    dbgExpertUser: TYDBGrid;
    xpPanel1: TxpPanel;
    Label1: TLabel;
    Label2: TLabel;
    dblProduct: TDBLookupComboBox;
    edtCustomerId: TEdit;
    Panel1: TPanel;
    BtnCancel: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    CheckBox1: TCheckBox;
    Label4: TLabel;
    MaskEPeriodTimeInperson: TMaskEdit;
    MaskEdit1: TMaskEdit;
    Label5: TLabel;
    edtDateInPersonFrom: TDBEdit;
    Button1: TButton;
    edtDateInPersonTo: TDBEdit;
    Button2: TButton;
    Label6: TLabel;
    Label7: TLabel;
    MssCalendarPro1: TMssCalendarPro;
    SpExpertUserReport: TADOStoredProc;
    SpExpertUserReportCustomerId: TIntegerField;
    SpExpertUserReportCompanyName: TStringField;
    SpExpertUserReportProductsSTR: TStringField;
    SpExpertUserReportDateInPerson: TStringField;
    SpExpertUserReportPeriodTimeInperson: TStringField;
    SpExpertUserReportAverageScore: TIntegerField;
    BitBtn3: TBitBtn;
    SpeedButton3: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpExpertUserReportMarketerTitle: TStringField;
    Button3: TButton;
    Button4: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FReportInPerson: TFReportInPerson;

implementation

Uses dmu;

{$R *.dfm}

procedure TFReportInPerson.FormShow(Sender: TObject);
begin
  inherited;
  xpPanel1.StartColor := _Color1 ;
  xpPanel1.EndColor   := _Color2 ;

  xpPanel1.TitleStartColor :=  _Color3;
  xpPanel1.TitleEndColor   :=  _Color4;

  edtDateInPersonFrom.Text := _Today ;
  edtDateInPersonTo  .Text := _Today ;

end;

procedure TFReportInPerson.Button1Click(Sender: TObject);
begin
  inherited;
  edtDateInPersonFrom.Text := MssCalendarPro1.Execute('/');
end;

procedure TFReportInPerson.Button2Click(Sender: TObject);
begin
  inherited;
  edtDateInPersonTo.Text:= MssCalendarPro1.Execute('/');
end;

procedure TFReportInPerson.BtnCancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFReportInPerson.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if SpExpertUserReport.RecordCount >0 then
    dbgExpertUser.ExportToWord;
end;

procedure TFReportInPerson.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if SpExpertUserReport.RecordCount >0 then
    dbgExpertUser.Print;
end;

procedure TFReportInPerson.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  if SpExpertUserReport.RecordCount >0 then
    dbgExpertUser.ExportToExcel;
end;

procedure TFReportInPerson.BitBtn3Click(Sender: TObject);
begin
  inherited;
  SpExpertUserReport.Close;
  SpExpertUserReport.parameters.ParamByName('@Customerid').value   := 0 ;
  SpExpertUserReport.parameters.ParamByName('@ProductId').value    := 0 ;
  SpExpertUserReport.parameters.ParamByName('@MarketerId').value   := 0 ;
  SpExpertUserReport.parameters.ParamByName('@FollowUpNeed').value := false ;
  SpExpertUserReport.parameters.ParamByName('@fromDate').value     := '0';
  SpExpertUserReport.parameters.ParamByName('@ToDate').value       := '0' ;
  SpExpertUserReport.parameters.ParamByName('@FromTime').value     := '0' ;
  SpExpertUserReport.parameters.ParamByName('@ToTime').value       := '0' ;

  if edtCustomerId.Text <> '' then
    SpExpertUserReport.parameters.ParamByName('@Customerid').value   := StrToInt(edtCustomerId.Text) ;

  if not(dblProduct.KeyValue = null) and (dblProduct.KeyValue > 0 )   then
    SpExpertUserReport.parameters.ParamByName('@ProductId').value    := dblProduct.KeyValue ;

  if not(DBLookupComboBox1.KeyValue = null) and (DBLookupComboBox1.KeyValue > 0 )  then
    SpExpertUserReport.parameters.ParamByName('@MarketerId').value   := DBLookupComboBox1.KeyValue ;

  SpExpertUserReport.parameters.ParamByName('@FollowUpNeed').value := CheckBox1.Checked ;

  if edtDateInPersonFrom.Text <> ''  then
    SpExpertUserReport.parameters.ParamByName('@fromDate').value     := edtDateInPersonFrom.Text ;

  if edtDateInPersonTo.Text <> ''  then
    SpExpertUserReport.parameters.ParamByName('@ToDate').value       := edtDateInPersonTo.Text ;

  if (trim(MaskEPeriodTimeInperson.Text) <> '')  and (trim(MaskEPeriodTimeInperson.Text) <> ':') then
    SpExpertUserReport.parameters.ParamByName('@FromTime').value     := MaskEPeriodTimeInperson.Text ;

  if (trim(MaskEdit1.Text) <> '') and (trim(MaskEdit1.Text) <> ':')  then
    SpExpertUserReport.parameters.ParamByName('@ToTime').value       := MaskEdit1.Text ;

  SpExpertUserReport.Open;
end;

procedure TFReportInPerson.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin

  if (NewWidth < 1023)  or (NewHeight < 561) then
    Resize := False
  else Resize := True;

  inherited;

end;

procedure TFReportInPerson.Button4Click(Sender: TObject);
begin
  inherited;
  DBLookupComboBox1.KeyValue := Null;
end;

procedure TFReportInPerson.Button3Click(Sender: TObject);
begin
  inherited;
  dblProduct.KeyValue := Null;
end;

end.
