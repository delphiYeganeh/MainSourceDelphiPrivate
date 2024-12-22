unit UfollowUpReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtActns, ActnList, DB, ExtCtrls, Grids, DBGrids,
  YDbgrid, UemsVCL, Buttons, StdCtrls, DBCtrls, xpPanel, ADODB,
  MssCalendarPro;

type
  TFfollowUpReport = class(TMBaseForm)
    pnlMain: TPanel;
    pnlSearchFollow: TxpPanel;
    Label1: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    ActionType: TDBLookupComboBox;
    dblGroups: TDBLookupComboBox;
    edtCustomerNo: TEdit;
    pnlTime: TPanel;
    Label6: TLabel;
    SpeedButton1: TSpeedButton;
    Label7: TLabel;
    SpeedButton2: TSpeedButton;
    FromDate: TShamsiDateEdit;
    Todate: TShamsiDateEdit;
    FollowGrid: TYDBGrid;
    Panel1: TPanel;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    BtnCancel: TBitBtn;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    followUpItem: TRadioGroup;
    Label4: TLabel;
    dblMarketer: TDBLookupComboBox;
    SpFollowUpReport: TADOStoredProc;
    SpFollowUpReportCustomerID: TIntegerField;
    Label2: TLabel;
    dblProductId: TDBLookupComboBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    dblDoneStatusID: TDBLookupComboBox;
    SpFollowUpReportCompanyName: TStringField;
    SpFollowUpReportActionTypeTitle: TStringField;
    SpFollowUpReportToDoDate: TStringField;
    SpFollowUpReportToDoTime: TStringField;
    SpFollowUpReportDoneStatustitle: TStringField;
    SpFollowUpReportMarketerTitle: TStringField;
    SpFollowUpReportComment: TStringField;
    SpFollowUpReportDoneComment: TStringField;
    SpFollowUpReportgroupTitle: TStringField;
    RCount: TLabel;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure Button5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    firstMode : Boolean;
    { Public declarations }
  end;

var
  FfollowUpReport: TFfollowUpReport;

implementation
uses dmu, YShamsiDate ;

{$R *.dfm}

procedure TFfollowUpReport.FormShow(Sender: TObject);
begin
  inherited;
   FromDate.Text :=copy(_today,1,8)+'01';
   Todate.Text :=copy(_today,1,8)+'29' ;

  ShapeBase.Brush.Color := _Color1 ;
  pnlMain.Color := _Color1 ;

  pnlSearchFollow.StartColor := _Color1 ;
  pnlSearchFollow.EndColor   := _Color2 ;

  pnlSearchFollow.TitleStartColor :=  _Color3;
  pnlSearchFollow.TitleEndColor   :=  _Color4;

  firstMode := True;
  BitBtn1Click(self) ;
  firstMode := False;
end;

procedure TFfollowUpReport.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  if SpFollowUpReport.RecordCount >0 then
    FollowGrid.ExportToExcel;
end;

procedure TFfollowUpReport.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  if SpFollowUpReport.RecordCount >0 then
    FollowGrid.Print;
end;

procedure TFfollowUpReport.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  if SpFollowUpReport.RecordCount >0 then
    FollowGrid.ExportToWord;
end;

procedure TFfollowUpReport.BitBtn1Click(Sender: TObject);
begin
  inherited;

  SpFollowUpReport.Close;
  SpFollowUpReport.parameters.ParamByName('@Customerid').value    := 0 ;
  SpFollowUpReport.parameters.ParamByName('@ProductId').value     := 0 ;
  SpFollowUpReport.parameters.ParamByName('@DonStatusID').value   := 0 ;
  SpFollowUpReport.Parameters.ParamByName('@ActionTypeID').Value  := 0 ;
  SpFollowUpReport.Parameters.ParamByName('@MarketerID').Value    := 0 ;
  SpFollowUpReport.Parameters.ParamByName('@orgID').Value         := 0 ;
  SpFollowUpReport.Parameters.ParamByName('@GroupId').Value       := 0 ;
  SpFollowUpReport.parameters.ParamByName('@FromDate').value      := '0' ;
  SpFollowUpReport.parameters.ParamByName('@ToDate').value        := '0' ;

  if not firstMode then
  begin
    if  followUpItem.ItemIndex = -1 then
      SpFollowUpReport.Parameters.ParamByName('@orgID').Value:=_orgID
    else
      SpFollowUpReport.Parameters.ParamByName('@orgID').Value:= followUpItem.ItemIndex ;

    if dblGroups.KeyValue <> null then
       SpFollowUpReport.Parameters.ParamByName('@GroupId').Value:= dblGroups.KeyValue
    else
       SpFollowUpReport.Parameters.ParamByName('@GroupId').Value := 0;

    if dblDoneStatusID.KeyValue <> null then
       SpFollowUpReport.Parameters.ParamByName('@DonStatusID').Value:= dblDoneStatusID.KeyValue
    else
       SpFollowUpReport.Parameters.ParamByName('@DonStatusID').Value := 0;

    if dblMarketer.KeyValue <> null then
       SpFollowUpReport.Parameters.ParamByName('@MarketerID').Value:= dblMarketer.KeyValue
    else
       SpFollowUpReport.Parameters.ParamByName('@MarketerID').Value := 0;

    if ActionType.KeyValue <> null then
       SpFollowUpReport.Parameters.ParamByName('@ActionTypeID').Value:= ActionType.KeyValue
    else
       SpFollowUpReport.Parameters.ParamByName('@ActionTypeID').Value := 0;

    if edtCustomerNo.Text <> '' then
      SpFollowUpReport.parameters.ParamByName('@Customerid').value   := StrToInt(edtCustomerNo.Text) ;

    if not(dblProductId.KeyValue = null) and (dblProductId.KeyValue > 0 )   then
      SpFollowUpReport.parameters.ParamByName('@ProductId').value    := dblProductId.KeyValue ;

    if FromDate.Text <> ''  then
      SpFollowUpReport.parameters.ParamByName('@FromDate').value     := FromDate.Text ;

    if Todate.Text <> ''  then
      SpFollowUpReport.parameters.ParamByName('@ToDate').value       := Todate.Text ;
  end;

  SpFollowUpReport.Open;

  if SpFollowUpReport.RecordCount >0 then
    RCount.Caption := ' йзого : ' +  IntToStr(SpFollowUpReport.RecordCount)
  else RCount.Caption := ' йзого : 0'  ;

end;

procedure TFfollowUpReport.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  FromDate.Text := dm.MssCalendarPro1.Execute('/');
end;

procedure TFfollowUpReport.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  ToDate.Text := dm.MssCalendarPro1.Execute('/');
end;

procedure TFfollowUpReport.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin

  if (NewWidth < 1305)  or (NewHeight < 540) then
    Resize := False
  else Resize := True;

  inherited;

end;

procedure TFfollowUpReport.Button5Click(Sender: TObject);
begin
  inherited;
  dblGroups.KeyValue := Null;
end;

procedure TFfollowUpReport.Button1Click(Sender: TObject);
begin
  inherited;
  ActionType.KeyValue := Null;
end;

procedure TFfollowUpReport.Button2Click(Sender: TObject);
begin
  inherited;
  dblProductId.KeyValue := Null;
end;

procedure TFfollowUpReport.Button3Click(Sender: TObject);
begin
  inherited;
  dblMarketer.KeyValue := Null;
end;

procedure TFfollowUpReport.Button4Click(Sender: TObject);
begin
  inherited;
  dblDoneStatusID.KeyValue := Null;
end;

end.
