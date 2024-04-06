unit RepLoanGrtFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ExtCtrls, Buttons, BaseUnit, Menus,
  ActnList, Grids, DBGrids, frxClass, DB, ADODB;

type
  TFmRepLoanGrt = class(TYBaseForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBLkCBContactNaFa: TDBLookupComboBox;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    SBReport: TSpeedButton;
    Label7: TLabel;
    RepPopMnu: TPopupMenu;
    NShow: TMenuItem;
    NPrint: TMenuItem;
    NDesign: TMenuItem;
    N8: TMenuItem;
    N11: TMenuItem;
    GroupBox1: TGroupBox;
    RBLoanGaurantor1: TRadioButton;
    RBLoanGaurantor2: TRadioButton;
    xpBitBtn1: TBitBtn;
    RBLoanGaurantorAll: TRadioButton;
    procedure FormCreate(Sender: TObject);
    procedure SBReportClick(Sender: TObject);
    procedure NShowClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmRepLoanGrt: TFmRepLoanGrt;

implementation

uses RepLoanGrtDM,DMu,YShamsiDate, SearchFM, BusinessLayer;

{$R *.dfm}

procedure TFmRepLoanGrt.FormCreate(Sender: TObject);
begin
   DMRepLoanGrt := TDMRepLoanGrt.Create(nil);
end;

procedure TFmRepLoanGrt.SBReportClick(Sender: TObject);
begin
   inherited;
   Cursor_SetPos(Self,SBReport,RepPopMnu);
end;

procedure TFmRepLoanGrt.NShowClick(Sender: TObject);
begin
   inherited;

   With DMRepLoanGrt do
   begin
      Try
         if RBLoanGaurantor1.Checked then
         begin
            QrLoanGrtCount.Close;
            QrLoanGrtCount.Parameters.ParamByName('ContactID1').Value := DBLkCBContactNaFa.KeyValue;
            QrLoanGrtCount.Parameters.ParamByName('ContactID2').Value := DBLkCBContactNaFa.KeyValue;
            QrLoanGrtCount.Open;
            if QrLoanGrtCount.RecordCount = 0 then
            begin
               ShowMessage('ÂÌç —òÊ—œÌ Ì«›  ‰‘œ');
               Exit;
            end;

         end
         Else IF RBLoanGaurantor2.Checked then
         begin
            QrLoanGrtPrice.Close;
            QrLoanGrtPrice.Parameters.ParamByName('ContactID1').Value := DBLkCBContactNaFa.KeyValue;
            QrLoanGrtPrice.Parameters.ParamByName('ContactID2').Value := DBLkCBContactNaFa.KeyValue;
            QrLoanGrtPrice.Open;
            IF QrLoanGrtPrice.RecordCount = 0 then
            Begin
               ShowMessage('ÂÌç —òÊ—œÌ Ì«›  ‰‘œ');
               Exit;
            End;

         end
         Else IF RBLoanGaurantorAll.Checked then
         Begin
            QrLoanGrAll.Close;
            QrLoanGrAll.Parameters.ParamByName('ContactID1').Value := DBLkCBContactNaFa.KeyValue;
            QrLoanGrAll.Parameters.ParamByName('ContactID2').Value := DBLkCBContactNaFa.KeyValue;
            QrLoanGrAll.Open;
            IF QrLoanGrAll.RecordCount = 0 then
            Begin
               ShowMessage('ÂÌç —òÊ—œÌ Ì«›  ‰‘œ');
               Exit;
            End;
         End;

         Rep_LoadFile_New(frxRepLoanGrtCount,'LoanGrt1.fr3','btn_E_GozareshGiriAzZamenha');
         TfrxMemoView(DMRepLoanGrt.frxRepLoanGrtCount.FindComponent('MemoCompany')).Text := _SoftTitle;
         TfrxMemoView(DMRepLoanGrt.frxRepLoanGrtCount.FindComponent('Memo13')).Text := _SoftTitle;
         TfrxMemoView(DMRepLoanGrt.frxRepLoanGrtCount.FindComponent('Memo30')).Text := _SoftTitle;
         IF RBLoanGaurantor1.Checked Then
         Begin
            DMRepLoanGrt.frxRepLoanGrtCount.Pages[1].Visible := True;
            DMRepLoanGrt.frxRepLoanGrtCount.Pages[2].Visible := False;
            DMRepLoanGrt.frxRepLoanGrtCount.Pages[3].Visible := False;
         End Else IF RBLoanGaurantor2.Checked Then
         Begin
            DMRepLoanGrt.frxRepLoanGrtCount.Pages[1].Visible := False;
            DMRepLoanGrt.frxRepLoanGrtCount.Pages[2].Visible := True;
            DMRepLoanGrt.frxRepLoanGrtCount.Pages[3].Visible := False;
         End Else IF RBLoanGaurantorAll.Checked Then
         Begin
            DMRepLoanGrt.frxRepLoanGrtCount.Pages[1].Visible := False;
            DMRepLoanGrt.frxRepLoanGrtCount.Pages[2].Visible := False;
            DMRepLoanGrt.frxRepLoanGrtCount.Pages[3].Visible := True;
         End;
         //TfrxReportSummary(DMReports.frxRepAkasi.FindComponent('ReportSummary1')).Visible := False;
         IF Sender = NShow  then
            Rep_Show(frxRepLoanGrtCount,rtShow);//ÅÌ‘ ‰„«Ì‘
         IF Sender = NPrint  then
            Rep_Show(frxRepLoanGrtCount,rtPrint);//ç«Å ”—Ì⁄
         IF Sender = NDesign  then
            Rep_Show(frxRepLoanGrtCount,rtDesign);//ÿ—«ÕÌ
      Finally
         QrLoanGrtCount.Close;
         QrLoanGrtPrice.Close;
      End;
   End;
End;

procedure TFmRepLoanGrt.N11Click(Sender: TObject);
Begin
   inherited;
   Rep_CorrectDesign('LoanGrt1.fr3');
End;

procedure TFmRepLoanGrt.FormClose(Sender: TObject;
  Var Action: TCloseAction);
Begin
   Inherited;
   FreeAndNil(DMRepLoanGrt);
End;

Procedure TFmRepLoanGrt.xpBitBtn1Click(Sender: TObject);
Begin
   Inherited;
   Close;
end;

procedure TFmRepLoanGrt.FormShow(Sender: TObject);
begin
   inherited;
   With DMRepLoanGrt do
   begin
      QrContact.Open;
      DBLkCBContactNaFa.KeyValue := QrContactContactID.AsInteger;
   end;
end;

procedure TFmRepLoanGrt.SpeedButton1Click(Sender: TObject);
begin
   Inherited;
   With DMRepLoanGrt do
      if FmSearch.GetSearchValue(QrSrchContact,'ContactID','LastName',' ',400,400)<>'0' then
         DBLkCBContactNaFa.KeyValue := QrSrchContactContactID.AsInteger;
end;



end.
