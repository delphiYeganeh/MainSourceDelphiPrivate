unit RepLetterDataFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, Menus,BaseUnit,
  xpWindow, ExtActns, ActnList, DB;

type
  TFmRepLetterData = class(TMBaseForm)
    Panel1: TPanel;
    Panel2: TPanel;
    EdtFromIndi: TEdit;
    SBFromIndi: TSpeedButton;
    Label1: TLabel;
    Label6: TLabel;
    EdtToIndi: TEdit;
    SBToIndi: TSpeedButton;
    Label7: TLabel;
    SBReport: TSpeedButton;
    BitBtn1: TBitBtn;
    RepPopMnu: TPopupMenu;
    NShow: TMenuItem;
    NPrint: TMenuItem;
    NDesign: TMenuItem;
    N8: TMenuItem;
    N11: TMenuItem;
    procedure NShowClick(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SBToIndiClick(Sender: TObject);
    procedure SBFromIndiClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SBReportClick(Sender: TObject);
    procedure EdtFromIndiKeyPress(Sender: TObject; var Key: Char);
    procedure EdtFromIndiExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmRepLetterData: TFmRepLetterData;

implementation

uses ReportsDM, SearchFM , YshamsiDate, Dmu;

{$R *.dfm}

procedure TFmRepLetterData.NShowClick(Sender: TObject);
begin
  if (Trim(EdtFromIndi.Text)='') or (Trim(EdtToIndi.Text) = '') then
  begin
    MBaseForm.MessageShowString('‘„«—Â ”‰œ Œ«·Ì „Ì»«‘œ', False);
    Exit;
  end;

  if (StrToIntDef(EdtToIndi.Text,0) < StrToIntDef(EdtFromIndi.Text,0) ) then
  begin
    MBaseForm.MessageShowString('‘„«—Â ”‰œ œÊ„ ﬂÊçﬂ — «“ ‘„«—Â ”‰œ «Ê· „Ì»«‘œ ° ·ÿ›« «’·«Õ ‰„«ÌÌœ', False);
    EdtToIndi.SetFocus;
    EdtToIndi.SelectAll;
    Exit;
  end;

  With DMReports do
  begin
    try
      QrLetter.Close;
      QrLetter.Parameters.ParamByName('SecretariatID').Value := dm.SecID;
      QrLetter.Parameters.ParamByName('FromIndID').Value := StrToIntDef(EdtFromIndi.Text ,0);
      QrLetter.Parameters.ParamByName('ToIndID').Value := StrToIntDef( EdtToIndi.Text,0);
      QrLetter.Open;
      if QrLetter.RecordCount = 0 then
      begin
        ShowMessage('ÂÌç —òÊ—œÌ Ì«›  ‰‘œ');
        Exit;
      end;

      Rep_LoadFile(frxRepLetter,'LetterData1.fr3');
      //TfrxReportSummary(DMReports.frxRepAkasi.FindComponent('ReportSummary1')).Visible := False;
      if Sender = NShow  then
        Rep_Show(frxRepLetter,rtShow);//ÅÌ‘ ‰„«Ì‘
      if Sender = NPrint  then
        Rep_Show(frxRepLetter,rtPrint);//ç«Å ”—Ì⁄
      if Sender = NDesign  then
        Rep_Show(frxRepLetter,rtDesign);//ÿ—«ÕÌ
    finally
      QrLetter.Close;
    end;
  end;
end;

procedure TFmRepLetterData.N11Click(Sender: TObject);
begin
  Rep_CorrectDesign('LetterData1.fr3');
end;

procedure TFmRepLetterData.FormShow(Sender: TObject);
begin
  DMReports := TDMReports.Create(nil);
end;

procedure TFmRepLetterData.SBToIndiClick(Sender: TObject);
begin
  inherited;
  With DMReports do
    if FmSearch.GetSearchValue(QrSrchLetter,'LetterID','IndicatorID',' ',500,600)<>'0' then
    begin
      EdtToIndi.Text := QrSrchLetterIndicatorID.AsString;
      QrSrchLetter.Close;
    end;
end;

procedure TFmRepLetterData.SBFromIndiClick(Sender: TObject);
begin
   inherited;
   With DMReports do
      if FmSearch.GetSearchValue(QrSrchLetter,'LetterID','IndicatorID',' ',500,600)<>'0' then
      begin
         EdtFromIndi.Text := QrSrchLetterIndicatorID.AsString;
         if (Trim(EdtToIndi.Text) = '') or (StrToIntDef(EdtToIndi.Text,0) < StrToIntDef(EdtFromIndi.Text,0) ) then
            EdtToIndi.Text := EdtFromIndi.Text;
         QrSrchLetter.Close;
      end;
end;

procedure TFmRepLetterData.BitBtn1Click(Sender: TObject);
begin
   inherited;
   Close;
end;

procedure TFmRepLetterData.SBReportClick(Sender: TObject);
begin
   inherited;
   Cursor_SetPos(Self,SBReport,RepPopMnu);
end;

procedure TFmRepLetterData.EdtFromIndiKeyPress(Sender: TObject;
  var Key: Char);
begin
   inherited;
   TypeNumber(Key);
end;

procedure TFmRepLetterData.EdtFromIndiExit(Sender: TObject);
begin
   inherited;
   if (Trim(EdtToIndi.Text) = '') or (StrToIntDef(EdtToIndi.Text,0) < StrToIntDef(EdtFromIndi.Text,0) ) then
      EdtToIndi.Text := EdtFromIndi.Text;

end;




procedure TFmRepLetterData.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   inherited;
   With DMReports do
   begin
      QrLetter.Close;
      QrListItems.Close;
      QrSrchLetter.Close;
   end;
   FreeAndNil(DMReports);
end;

end.
