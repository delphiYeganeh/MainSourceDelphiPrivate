unit Report_PaymentInDetailU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ADODB, Grids, DBGrids, Menus, ActnList,
  YDbgrid, StdCtrls, Buttons, ExtCtrls, UemsVCL, Mask, SolarCalendarPackage;

type
  TFrReport_PaymentInDetail = class(TYBaseForm)
    YDBGrid_M: TYDBGrid;
    YDBGrid_D: TYDBGrid;
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    MakeRep: TBitBtn;
    DateTo: TSolarDatePicker;
    DateFrom: TSolarDatePicker;
    Label3: TLabel;
    Label1: TLabel;
    Button5: TBitBtn;
    YDBGrid_DD: TYDBGrid;
    Label2: TLabel;
    Label4: TLabel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure MakeRepClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrReport_PaymentInDetail: TFrReport_PaymentInDetail;

implementation

uses dmu, YShamsiDate;

{$R *.dfm}

procedure TFrReport_PaymentInDetail.BitBtn1Click(Sender: TObject);

begin
  inherited;
//  P_Id:=DM.Report_PaymentInDetail_MPayTypeID.AsInteger;
  YDBGrid_M.ExportToExcel;
//  DM.Report_PaymentInDetail_M.Locate('PayTypeID',P_Id,[loCaseInsensitive]);
//  YDBGrid_D.ExportToExcel;
//  DM.Report_PaymentInDetail_DD.Locate('PayTypeID',P_Id,[loCaseInsensitive]);
//  YDBGrid_DD.ExportToExcel;
end;

procedure TFrReport_PaymentInDetail.MakeRepClick(Sender: TObject);
begin
  inherited;
   With DM.Report_PaymentInDetail_M DO
   BEGIN
    Close;
    Parameters.ParamByName('@DateFrom').Value:=Txt_Del254(DateFrom.Text);
    Parameters.ParamByName('@DateTo').Value  :=Txt_Del254(DateTo.Text);
    Parameters.ParamByName('@PayType').Value :=0;
    Parameters.ParamByName('@Grouped').Value :=0;
    Open;
   END;

end;

procedure TFrReport_PaymentInDetail.Button5Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFrReport_PaymentInDetail.FormShow(Sender: TObject);
begin
  inherited;
   //Hamed_Ansari_990613_S
   //DateFrom.Text:= #256 + Copy(_Today,1,5)+'01/01';
   //DateTo.Text  := #256 + _Today;
   DateFrom.Text:= Copy(_Today,1,5)+'01/01';
   DateTo.Text  := _Today;
   //Hamed_Ansari_990613_E
end;

procedure TFrReport_PaymentInDetail.BitBtn2Click(Sender: TObject);
var P_Id:Integer;
begin
  inherited;
  P_Id:=DM.Report_PaymentInDetail_MPayTypeID.AsInteger;
  DM.Report_PaymentInDetail_M.Locate('PayTypeID',P_Id,[loCaseInsensitive]);
  YDBGrid_D.ExportToExcel;
end;

procedure TFrReport_PaymentInDetail.BitBtn3Click(Sender: TObject);
var P_Id:Integer;
begin
  inherited;
  P_Id:=DM.Report_PaymentInDetail_MPayTypeID.AsInteger;
  DM.Report_PaymentInDetail_DD.Locate('PayTypeID',P_Id,[loCaseInsensitive]);
  YDBGrid_DD.ExportToExcel;
end;

end.
