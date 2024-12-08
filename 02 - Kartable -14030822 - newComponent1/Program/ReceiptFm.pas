unit ReceiptFm;

interface

uses
  BaseUnit , Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, ToolWin, ActnMan, ActnCtrls,
  DBActns, ActnList, XPStyleActnCtrls, ComCtrls, Buttons, Menus, DB, ADODB,
  Grids, DBGrids;

type
  TFmReceipt = class(TMBaseForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBRichEdit1: TDBRichEdit;
    ActionManager: TActionManager;
    DataSetInsert: TDataSetInsert;
    DataSetEdit: TDataSetEdit;
    DataSetPost: TDataSetPost;
    DataSetCancel: TDataSetCancel;
    Panel2: TPanel;
    ActionToolBar1: TActionToolBar;
    Label2: TLabel;
    Label3: TLabel;
    SpeedButton2: TSpeedButton;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    EdtUserName: TEdit;
    DataSetNext1: TDataSetNext;
    DataSetPrior1: TDataSetPrior;
    EdtOrgName: TEdit;
    SBReport: TSpeedButton;
    RepPopMnu: TPopupMenu;
    NShow: TMenuItem;
    NPrint: TMenuItem;
    NDesign: TMenuItem;
    N8: TMenuItem;
    N11: TMenuItem;
    Label7: TLabel;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SBReportClick(Sender: TObject);
    procedure NShowClick(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmReceipt: TFmReceipt;

implementation

Uses ReceiptDM, Dmu , YWhereEdit, SearchFM, UMain,YShamsiDate;

{$R *.dfm}

procedure TFmReceipt.FormShow(Sender: TObject);
begin
  inherited;
   With DMReceipt do
   begin
      //»—«»— ’›— »Êœ  „«„Ì —òÊ—œÂ« ¬Ê—œÂ „Ì‘Êœ Sp_Select_Receipt;1 «ê— Å«—«„ —
      SPReceipt.Open;
      SPReceipt.Last;
   end;
   EdtUserName.Text := _userName;
end;

procedure TFmReceipt.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  With DMReceipt do
  begin
     Try
        QrSrchOrgan.Open;
        if FmSearch.GetSearchValue(QrSrchOrgan ,'ID', 'Title' , ' ' , 400 , 400 ) <> '0' then
           EdtOrgName.Text := Trim(QrSrchOrganTitle.AsString);
           //QrAkasi.Locate('Akasi_ID',QrSrchAkasiAkasi_ID.AsInteger,[]);
     Finally
        QrSrchOrgan.Close;
     End;
  end;
end;

procedure TFmReceipt.SBReportClick(Sender: TObject);
begin
  inherited;
  DMReceipt.aUserName := EdtUserName.Text;
  DMReceipt.aOrgName  := EdtOrgName.Text;
  Cursor_SetPos(Self,SBReport,RepPopMnu);
end;

procedure TFmReceipt.NShowClick(Sender: TObject);
begin
  inherited;
   if DMReceipt.SPReceipt.State in [dsEdit,dsInsert] then
   begin
      ShowMessage('·ÿ›« ﬁ»· «“ ê“«—‘ êÌ—Ì «ÿ·«⁄«  ŒÊœ —« –ŒÌ—Â ‰„«ÌÌœ');
      Exit;
   end;
   if DMReceipt.SPReceipt.RecordCount = 0 then
   begin
      ShowMessage('ÂÌç —òÊ—œÌ Ì«›  ‰‘œ');
      Exit;
   end;

   With DMReceipt do
   begin
      Try
         SpRep_Receipt.Close;
         SpRep_Receipt.Parameters.ParamByName('@ReceiptID').Value := SPReceiptReceiptID.AsInteger;
         SpRep_Receipt.Open;

         Rep_LoadFile(frxRepSpRep_Receipt,'Receipt1.fr3');
         //TfrxReportSummary(DMReports.frxRepAkasi.FindComponent('ReportSummary1')).Visible := False;
         if Sender = NShow  then
            Rep_Show(frxRepSpRep_Receipt,rtShow);
         if Sender = NPrint  then
            Rep_Show(frxRepSpRep_Receipt,rtPrint);
         if Sender = NDesign  then
            Rep_Show(frxRepSpRep_Receipt,rtDesign);
      Finally
         SpRep_Receipt.Close;
      End;
   end;
end;

procedure TFmReceipt.N11Click(Sender: TObject);
begin
  inherited;
  Rep_CorrectDesign('Receipt1.fr3');
end;

procedure TFmReceipt.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = Vk_F9)And(Shift=[]) then
     SBReport.PopupMenu.Items[0].Click;
  if (Key = Vk_F9)And(Shift=[ssCtrl]) then
     SBReport.PopupMenu.Items[1].Click;
  if (Key = Vk_F9)And(Shift=[ssAlt]) then
     SBReport.PopupMenu.Items[2].Click;
end;


end.
