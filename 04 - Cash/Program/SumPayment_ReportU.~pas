 unit SumPayment_ReportU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ActnMan, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList,
  Buttons, DBActns, UemsVCL, Grids, DBGrids, YDbgrid, XPStyleActnCtrls,
  Menus, YAmountEdit,  frxClass, frxDBSet, YWhereEdit, DB, ADODB,
  SolarCalendarPackage;

type
  TFrSumPayment_Report = class(TYBaseForm)
    Panel2: TPanel;
    Panel3: TPanel;
    SBReport: TSpeedButton;
    RepPopMnu: TPopupMenu;
    NShow: TMenuItem;
    NPrint: TMenuItem;
    NDesign: TMenuItem;
    N8: TMenuItem;
    N11: TMenuItem;
    RgReport: TRadioGroup;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Panel4: TPanel;
    Button5: TBitBtn;
    Label1: TLabel;
    EdtDocumentNo: TEdit;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    MEDate: TSolarDatePicker;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure NShowClick(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure SBReportClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    DocumnetNo:String;
  public
    FinancialNoteid:integer;
    Amount,JustSelectedAmount: integer;
  end;

var
  FrSumPayment_Report: TFrSumPayment_Report;
implementation

uses dmu, FinancialNoteDetailU, YShamsiDate, MainU,BusinessLayer,
  SumPaymentDM, FinancialNoteDetail_NewU, DateUtils, RepTotalPayment,
  RepTotalPaymentU;

{$R *.dfm}


procedure TFrSumPayment_Report.BitBtn1Click(Sender: TObject);
begin
   inherited;
   ModalResult:=mrCancel;
end;

procedure TFrSumPayment_Report.FormCreate(Sender: TObject);
begin
   inherited;
   {Ranjbar 88.07.15}
   DMSumPayment := TDMSumPayment.Create(nil);
   DocumnetNo := '';
   //---
end;

procedure TFrSumPayment_Report.NShowClick(Sender: TObject);
VAR STRWhere:STRING;
begin
   inherited;
   DocumnetNo:=EdtDocumentNo.Text;
   IF (MEDate.Text='13  /  /  ')  THEN
     MEDate.Text:=_Today;
   if Sender <> NDesign  then //ÿ—«ÕÌ
      if (Trim(DocumnetNo)='')   then
      begin
         ShowMyMessage('ÅÌ€«„','ÂÌç ‘„«—Â ”‰œÌ Ì«›  ‰‘œ',[mbOK],mtInformation);
         Exit;
      end;
   With DMSumPayment do
   Begin
      Case RgReport.ItemIndex of
         0:Begin
              frxRepSumPayment.Pages[1].Visible := True;
              frxRepSumPayment.Pages[2].Visible := False;
              QrSumPayment.Close;
              QrSumPayment.Parameters.ParamByName('DocumentNo').Value := EdtDocumentNo.Text;
              QrSumPayment.Parameters.ParamByName('Today').Value:=MEDate.Text;
              QrSumPayment.Open;
              Rep_LoadFile_New(frxRepSumPayment,'SumPayment1.fr3','btn_E_GozareshPardakhtAghsatVaMahiyaneh');
              TfrxMemoView(DMSumPayment.frxRepSumPayment.FindComponent('MemoCompany')).Text := _SoftTitle;
           end;
         1:Begin
              frxRepSumPayment.Pages[1].Visible := False;
              frxRepSumPayment.Pages[2].Visible := True;
              ADOSpSumPayment.Close;
              ADOSpSumPayment.Parameters[1].Value:=EdtDocumentNo.Text;
              ADOSpSumPayment.Parameters[2].Value:=MEDate.Text;
              ADOSpSumPayment.open;
              if ADOSpSumPayment.IsEmpty then
              begin
                ShowMessage('‘„«—Â ”‰œ «‰ Œ«» ‘œÂ Å—œ«Œ  Ê«„ Ì« „«ÂÌ«‰Â ‰„Ì »«‘œ');
                Abort;
              end;
              Rep_LoadFile_New(frxRepSumPayment,'TotalPayment.fr3','btn_E_GozareshPardakhtAghsatVaMahiyaneh');
              TfrxMemoView(DMSumPayment.frxRepSumPayment.FindComponent('MemoCompany1')).Text := _SoftTitle;
           end;
      End;//case
      Try

         if Sender = NShow  then
            Rep_Show(frxRepSumPayment,rtShow);//ÅÌ‘ ‰„«Ì‘
         if Sender = NPrint  then
            Rep_Show(frxRepSumPayment,rtPrint);//ç«Å ”—Ì⁄
         if Sender = NDesign  then
            Rep_Show(frxRepSumPayment,rtDesign);//ÿ—«ÕÌ
      Finally
         QrSumPayment.Close;
      End;
   end;
end;

procedure TFrSumPayment_Report.N11Click(Sender: TObject);
begin
   inherited;
   Rep_CorrectDesign('SumPayment1.fr3');
end;

procedure TFrSumPayment_Report.SBReportClick(Sender: TObject);
begin
   inherited;
   Cursor_SetPos(Self,SBReport,RepPopMnu);
end;

procedure TFrSumPayment_Report.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   inherited;
   {Ranjbar 88.07.15}
   FreeAndNil(DMSumPayment);
   _FrSumPaymentIsShowing:=False;
   //---
end;

procedure TFrSumPayment_Report.FormShow(Sender: TObject);
begin
  inherited;
  EdtDocumentNo.SetFocus;
  MEDate.Text:=_Today;
end;

procedure TFrSumPayment_Report.SpeedButton1Click(Sender: TObject);
begin
  inherited;
     FrRepTotalPayment := TFrRepTotalPayment.Create(Application);
     FrRepTotalPayment.ShowModal;
     IF FrRepTotalPayment.ModalResult=mrOk Then
     begin
       EdtDocumentNo.Text:=dm.RepTotalPaymentdocumentno.AsString;
       MEDate.Text:=dm.RepTotalPaymentDate.AsString;
     end;
end;

procedure TFrSumPayment_Report.Button5Click(Sender: TObject);
begin
  inherited;
   Close;
end;

end.
