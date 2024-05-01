unit UReportDongle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtActns, ActnList, DB, Grids, DBGrids, YDbgrid,
  ExtCtrls, StdCtrls, Buttons, DBCtrls, ADODB, UemsVCL, YWhereEdit, Menus,
  MssCalendarPro;

type
  TfrReportDongle = class(TMBaseForm)
    SpDongleReport: TADOStoredProc;
    SpDongleReportCustomerID: TIntegerField;
    SpDongleReportPersonTitle: TWideStringField;
    SpDongleReportcompanyName: TWideStringField;
    SpDongleReportSerial_ID: TIntegerField;
    SpDongleReportSoftSerial: TWideStringField;
    SpDongleReportBaseSerial: TIntegerField;
    SpDongleReportSerial2: TWideStringField;
    SpDongleReportKit: TWideStringField;
    SpDongleReportNetwork: TSmallintField;
    SpDongleReportHaveCust: TSmallintField;
    SpDongleReportSerialUsed: TSmallintField;
    SpDongleReportSerDate: TWideStringField;
    SpDongleReportSerTime: TWideStringField;
    SpDongleReportProductID: TWordField;
    SpDongleReportCustomerID_1: TIntegerField;
    SpDongleReportSerDateShamsi: TStringField;
    MssCalendarPro1: TMssCalendarPro;
    QdelSerial: TADOQuery;
    pnlMain: TPanel;
    Panel2: TPanel;
    lblCountOFRecord: TLabel;
    BtnCancel: TBitBtn;
    btnDel: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    btnSrchCustomerAdvance: TBitBtn;
    dblProduct: TDBLookupComboBox;
    rdgNetwork: TRadioGroup;
    edtStartDate: TShamsiDateEdit;
    edtEndDate: TShamsiDateEdit;
    edtcustomerId: TYWhereEdit;
    dbgSerial: TYDBGrid;

    procedure FormCreate(Sender: TObject);
    procedure btnSrchCustomerAdvanceClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DSFormDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure FormShow(Sender: TObject);
  private
    Procedure RunSpDongleReport(Network :integer;StartDate :String;EndDate :String;ProductId :Integer;customerId :Integer);
    Function MakeReportTitle(DefaultReportTitle:String):String;
    procedure SetCountOFRecord;

  public
    { Public declarations }
  end;

var
  frReportDongle: TfrReportDongle;

implementation

uses dmu;

{$R *.dfm}

procedure TfrReportDongle.FormCreate(Sender: TObject);
var ProductID,CustomerID :integer;
begin
  inherited;
  if dblProduct.KeyValue = null then ProductID := 0 else ProductID := dblProduct.KeyValue;
  if edtcustomerId.text =  '' then CustomerID := 0 else CustomerID :=  StrToint(edtcustomerId.text);

  RunSpDongleReport(rdgNetwork.ItemIndex,Trim(edtStartDate.Text),Trim(edtEndDate.Text),ProductID,CustomerID);
end;
Procedure TfrReportDongle.RunSpDongleReport(Network :integer;StartDate :String;EndDate :String;ProductId :Integer;customerId :Integer);
begin
  with  SpDongleReport do
  begin
   Close;
   Parameters.ParamByName('@Network')   .Value :=Network;
   Parameters.ParamByName('@StartDate') .Value :=StartDate;
   Parameters.ParamByName('@EndDate')   .Value :=EndDate;
   Parameters.ParamByName('@ProductId') .Value :=ProductId;
   Parameters.ParamByName('@customerId').Value :=customerId;

   Open;
  end;

end;

procedure TfrReportDongle.btnSrchCustomerAdvanceClick(Sender: TObject);
var ProductID,CustomerID :integer;
begin
  inherited;
  if dblProduct.KeyValue = null then ProductID := 0 else ProductID := dblProduct.KeyValue;
  if Trim(edtcustomerId.text) =  '' then CustomerID := 0 else CustomerID :=  StrToIntDef(edtcustomerId.text,0);

  RunSpDongleReport(rdgNetwork.ItemIndex,edtStartDate.Text,edtEndDate.Text,ProductID,CustomerID);
end;

procedure TfrReportDongle.btnDelClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('¬Ì« »—«Ì Õ–› „ÿ„∆‰ Â” Ìœø',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
     QdelSerial.Close;
     QdelSerial.SQL.Clear;
     QdelSerial.SQL.Add('DELETE FROM Serial WHERE Serial_ID='+IntToStr(SpDongleReportSerial_ID.AsInteger));
     QdelSerial.ExecSQL;
     btnSrchCustomerAdvanceClick(Application);
     ShowMessage('Õ–› «‰Ã«„ ‘œ');
  end;
end;

procedure TfrReportDongle.BitBtn1Click(Sender: TObject);
begin
  dbgSerial.PrintTitle := MakeReportTitle('ê“«—‘ ﬁ›· Â«Ì ”Œ  «›“«—Ì'+'^');
  dbgSerial.ExportToWord;

end;

procedure TfrReportDongle.BitBtn2Click(Sender: TObject);
begin
  inherited;
  dbgSerial.ExportToExcel;
end;

procedure TfrReportDongle.BitBtn3Click(Sender: TObject);
begin
  inherited;
dbgSerial.CustomizePrint;
end;

Function TfrReportDongle.MakeReportTitle(DefaultReportTitle:String):String;
Var grdPrintTitle : String;
begin
  inherited;
  grdPrintTitle := DefaultReportTitle;
  if dblProduct.KeyValue <> null then grdPrintTitle:= grdPrintTitle+ ' „Õ’Ê· : '+dblProduct.Text;
  if edtcustomerId.Text  <> '' then  grdPrintTitle := grdPrintTitle + '  òœ „‘ —Ì :'+ edtcustomerId.Text ;
  if (edtStartDate.Text <> '')or(edtEndDate.Text <> '')  then grdPrintTitle := grdPrintTitle + ' «“  «—ÌŒ :'+Trim(edtStartDate.Text)+'  « «—ÌŒ '+Trim(edtEndDate.Text);
  if rdgNetwork.ItemIndex = 2 then
    grdPrintTitle := grdPrintTitle +'  Õ  ‘»òÂ/€Ì—‘»òÂ'
  else
  grdPrintTitle := grdPrintTitle + rdgNetwork.Items.Strings[  rdgNetwork.ItemIndex];

  Result := grdPrintTitle

end;

procedure TfrReportDongle.DSFormDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  SetCountOFRecord;
end;

procedure TfrReportDongle.SetCountOFRecord;
begin
  if not SpDongleReport.IsEmpty then
  begin
    lblCountOFRecord.Caption:='  ⁄œ«œ —òÊ—œÂ« : '+IntToStr(SpDongleReport.RecordCount);
  end
  else
    lblCountOFRecord.Caption:='  ⁄œ«œ —òÊ—œÂ« : '+'0';
end;

procedure TfrReportDongle.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  edtStartDate.Text:=MssCalendarPro1.Execute('/');
end;

procedure TfrReportDongle.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  edtEndDate.Text:=MssCalendarPro1.Execute('/');
end;

procedure TfrReportDongle.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  { TODO -oparsa : 14030203 }
  if (NewWidth < 800)  or (NewHeight < 505) then
    Resize := False
  else Resize := True;
   { TODO -oparsa : 14030203 }

  inherited;

end;

procedure TfrReportDongle.FormShow(Sender: TObject);
begin
  inherited;
  ShapeBase.Brush.Color := _Color1 ;
  pnlMain.Color := _Color1 ;
end;

end.
