unit ReportAccountPaymentsPBKU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ADODB, Buttons, Grids, DBGrids, YDbgrid, DBCtrls,
  Mask, StdCtrls, ExtCtrls, QRCtrls, QuickRpt, DBActns, XPStyleActnCtrls,
  ActnMan, Menus, ActnList, SolarCalendarPackage;

type
  TFrReportAccountPaymentsPBK = class(TYBaseForm)
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    PopupMenu1: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    Label2: TLabel;
    Panel2: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    SearchEdit: TEdit;
    MakeRep: TBitBtn;
    MEDateTo: TSolarDatePicker;
    MEDateFrom: TSolarDatePicker;
    PAccountDeatil: TPanel;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Button5: TBitBtn;
    Panel3: TPanel;
    YDBGrid: TYDBGrid;
    SpeedButton4: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure MakeRepClick(Sender: TObject);
    procedure RefreshReportPaymentPBK;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MEDateFromKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure MEDateToKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrReportAccountPaymentsPBK: TFrReportAccountPaymentsPBK;

implementation

uses AccountDetailsU, dmu, YShamsiDate, BusinessLayer;

{$R *.dfm}
var
   AccountID :integer;
   SumDebit,SumCredit: string;

procedure TFrReportAccountPaymentsPBK.FormCreate(Sender: TObject);
begin
  inherited;
   FrAccountDetails:=TFrAccountDetails.Create(Application);
   FrAccountDetails.ShowInPanel( PAccountDeatil);
   {Ranjbar}
   //DateFrom.Text:=Copy(_Today,1,5)+'01/01';
   //DateTo.Text:=_Today;
   MEDateFrom.Text := Copy(_Today,1,5)+'01/01';
   MEDateTo.Text := _Today;

end;

procedure TFrReportAccountPaymentsPBK.Button5Click(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFrReportAccountPaymentsPBK.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   if Key = Vk_Return then
      SelectNext(TWinControl(ActiveControl),True,True);

end;

procedure TFrReportAccountPaymentsPBK.MakeRepClick(Sender: TObject);
begin
  inherited;
   if not Date_CheckTwoDate(MEDateFrom.Text,MEDateTo.Text) then
      Exit;
   RefreshReportPaymentPBK;

end;
procedure TFrReportAccountPaymentsPBK.RefreshReportPaymentPBK;
begin
   AccountID := Get_AccountID_ByAccountNo(SearchEdit.Text);

   if AccountID=0 then
   begin
      ShowMessage('«Ì‰ ‘„«—Â Õ”«» ÊÃÊœ ‰œ«—œ');
      SearchEdit.SetFocus;
   end
     else
     with dm,Select_Payment do
     begin
        FrAccountDetails.AccountID := AccountID;
        YDBGrid.PrintTitle:=' ê“«—‘ œ—Ì«›  Ê Å—œ«Œ  Õ”«» ”Êœ°“Ì«‰ Ê ò«—„“œ'+ dm.Select_Account_DetailsAccountTitle.AsString+'  «“  «—ÌŒ '+ Trim(MEDateFrom.Text)+'  « '+Trim(MEDateTo.Text);
        Open_Report_PaymentPBK_ByAccountID(AccountID,Txt_Del254(MEDateFrom.Text),Txt_Del254(MEDateTo.Text));
        //---
     end;
end;

procedure TFrReportAccountPaymentsPBK.SpeedButton1Click(Sender: TObject);
begin
  inherited;
YDBGrid.ExportToWord;

end;

procedure TFrReportAccountPaymentsPBK.SpeedButton2Click(Sender: TObject);
begin
  inherited;
YDBGrid.Print

end;

procedure TFrReportAccountPaymentsPBK.SpeedButton3Click(Sender: TObject);
begin
  inherited;
YDBGrid.ExportToExcel;

end;

procedure TFrReportAccountPaymentsPBK.SpeedButton4Click(Sender: TObject);
begin
  inherited;
    YDBGrid.CustomizePrint;

end;

procedure TFrReportAccountPaymentsPBK.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   DBGrid_SaveColumns(Self.Name,YDBGrid);
end;

procedure TFrReportAccountPaymentsPBK.MEDateFromKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
 if key=13 then
  GotoNext(Sender,key,Shift);

end;

procedure TFrReportAccountPaymentsPBK.MEDateToKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key=13 then
   GotoNext(Sender,key,Shift);

end;

end.
