 unit DividBenefitU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ADODB, ExtCtrls, Grids, DBGrids, YDbgrid,
  StdCtrls, ActnList, ComCtrls, xpPages, UemsVCL,
  QuickRpt, QRCtrls, Buttons, DBCtrls, Menus,Math, Mask, AdvGlowButton;

type
  TFrDividBenefit = class(TYBaseForm)
    Panel2: TPanel;
    MakeRep: TAdvGlowButton;
    Label3: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    LBenefit: TLabel;
    PercentBenefit: TEdit;
    Label1: TLabel;
    Label5: TLabel;
    allBenefit: TLabel;
    xpBitBtn1: TAdvGlowButton;
    Label6: TLabel;
    maxPercentBenefit: TLabel;
    Label7: TLabel;
    maxYearBenefit: TLabel;
    Panel1: TPanel;
    Button5: TAdvGlowButton;
    Panel3: TPanel;
    YDBGrid: TYDBGrid;
    Label8: TLabel;
    SBShowData: TAdvGlowButton;
    MEDateFrom: TMaskEdit;
    MEDateTo: TMaskEdit;
    pnlMain: TPanel;
    procedure Button6Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure MakeRepClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Report_SumBalanceCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PercentBenefitChange(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure SBShowDataClick(Sender: TObject);
    procedure YDBGridDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrDividBenefit: TFrDividBenefit;

implementation

uses
  DMU, AccountFilterU, BusinessLayer, YShamsiDate, DateUtils, Upreview,
  AddContactU;

{$R *.dfm}
var
  SumAvgBalance:Largeint;
  Benefit:Largeint;

procedure TFrDividBenefit.Button6Click(Sender: TObject);
begin
  inherited;
  YDBGrid.CustomizePrint;
end;

procedure TFrDividBenefit.Button3Click(Sender: TObject);
begin
  inherited;
  YDBGrid.ExportToWord;
end;

procedure TFrDividBenefit.Button4Click(Sender: TObject);
begin
  inherited;
  YDBGrid.ExportToExcel;
end;

procedure TFrDividBenefit.Button5Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFrDividBenefit.MakeRepClick(Sender: TObject);
begin
  inherited;
  Benefit:=Get_benefit;
  {Ranjbar}
  //Open_Report_SumBalance(DateFrom.Text,DateTo.Text,SumAvgBalance);
  Open_Report_SumBalance(Txt_Del254(MEDateFrom.Text),Txt_Del254(MEDateTo.Text),SumAvgBalance);
  //---
  if (SumAvgBalance=0) then
  begin
    ShowMessage('�� ��� ����� �� ���� Ӂ��� ����� ������ ���');
    exit;
  end;

  if Benefit<10*SumAvgBalance then  //
    ShowMessage('��� ���� ������ �Ǎ�� ���');

  LBenefit.Caption:=CommaSeperate(IntToStr(Benefit));
  maxPercentBenefit.Caption:=FloatToStr(RoundTo(100*Benefit/(10000*SumAvgBalance),-2));
  maxYearBenefit.Caption:=FloatToStr(RoundTo(12*Benefit/(100*SumAvgBalance),-1));
  PercentBenefit.Text:=FloatToStr(RoundTo(100*Benefit/(10000*SumAvgBalance),-2));
  DM.Report_SumBalance.OnCalcFields:=Report_SumBalanceCalcFields;
  YDBGrid.UpdateFooter;
end;

procedure TFrDividBenefit.FormCreate(Sender: TObject);
begin
  inherited;
  {Ranjbar
  DateFrom.Text:=copy(_Today,1,5)+'01/01';
  DateTo.Text:=_Today;}
  MEDateFrom.Text := #254 + copy(_Today,1,5)+'01/01';
  MEDateTo.Text := #254 + _Today;
  //---
  SumAvgBalance:=-1;
  Benefit:=-1;
end;

procedure TFrDividBenefit.FormShow(Sender: TObject);
begin
  inherited;
  MEDateFrom.SetFocus;
  {Ranjbar Ver3}
  DBGrid_LoadColumns(Self.Name,YDBGrid);
end;

procedure TFrDividBenefit.Report_SumBalanceCalcFields(DataSet: TDataSet);
begin
  IF Benefit>0 then
    dm.Report_SumBalanceBenefit.AsLargeInt:= floor(  StrToFloat(PercentBenefit.Text)*dm.Report_SumBalanceSumBalance.AsInteger*100)  ;
end;

procedure TFrDividBenefit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DM.Report_SumBalance.OnCalcFields:=nil;
  {Ranjbar Ver3}
  DBGrid_SaveColumns(Self.Name,YDBGrid);
end;

procedure TFrDividBenefit.PercentBenefitChange(Sender: TObject);
begin
  inherited;
  if TEdit(Sender).Text='' then
    exit;

  allBenefit.Caption:=CommaSeperate(IntToStr(floor(
  StrToFloat(PercentBenefit.Text)*SumAvgBalance*100)))  ;

  maxYearBenefit.Caption:=FloatToStr(  RoundTo(  StrToFloat(PercentBenefit.Text)*12,-1));
  YDBGrid.UpdateFooter;
end;

procedure TFrDividBenefit.xpBitBtn1Click(Sender: TObject);
begin
   inherited;
   if StrToInt64(DeleteComma( allBenefit.Caption))> Benefit then
     ShowMessage('����� ���� ������� �� �� ���� ��� ����� ����� ���')
   else
   if messageShowString('��� �� ������ ��� Ӂ��� �� ���� ���� �� ����� ����Ͽ',true,'����� �����') then
   begin
      {Ranjbar}
      //Pay_Benefit(DateFrom.Text,DateTo.Text, StrToFloat(PercentBenefit.Text),Get_NewDocumnetNo,_Userid);
      Pay_Benefit(Txt_Del254(MEDateFrom.Text),Txt_Del254(MEDateTo.Text), StrToFloat(PercentBenefit.Text),Get_NewDocumnetNo(_Today),_Userid);
      //---
      Benefit:=Get_benefit;
      LBenefit.Caption:=CommaSeperate(IntToStr(Benefit));
      ShowMsgString('��� ������ ����');
   end;
end;

procedure TFrDividBenefit.SBShowDataClick(Sender: TObject);
begin
   inherited;

   if not(Dm.Report_SumBalance.Active)or (Dm.Report_SumBalance.RecordCount = 0)  then
      Exit;
   {Ranjbar 88.05.21 Code=23}
   FrAddContact := TFrAddContact.Create(Application);
   with FrAddContact do
   begin
      ContactTypeID := Dm.Report_SumBalanceContactTypeID.AsInteger; //_ContactTypeID;
      ContactID:= Dm.Report_SumBalanceContactID.AsInteger;
      DBChBoHaveInterest.Font.Color := $000500E1;
      ShowModal;
   end;
   //---
end;

procedure TFrDividBenefit.YDBGridDblClick(Sender: TObject);
begin
   inherited;
   SBShowData.Click;
end;

end.
