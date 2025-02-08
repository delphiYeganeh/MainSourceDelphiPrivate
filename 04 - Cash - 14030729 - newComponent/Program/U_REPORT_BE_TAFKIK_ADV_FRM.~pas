unit U_REPORT_BE_TAFKIK_ADV_FRM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, YWhereEdit, Buttons,BusinessLayer, DB, ADODB, Grids,
  DBGrids, QRCtrls, QuickRpt, ExtCtrls, AdvGlowButton;

type
  TREPORT_BE_TAFKIK_ADV_FRM = class(TForm)
    MakeRep: TAdvGlowButton;
    SearchEdit: TYWhereEdit;
    Label1: TLabel;
    BitBtn1: TAdvGlowButton;
    ADV_REP: TADOStoredProc;
    ADOConnection1: TADOConnection;
    ADV_REPAccountID: TIntegerField;
    ADV_REPLoanID: TAutoIncField;
    ADV_REPAccountTitle: TWideStringField;
    ADV_REPAccountNo: TStringField;
    ADV_REPAccountDate: TStringField;
    ADV_REPLoanTypeTitle: TWideStringField;
    ADV_REPTOTALEXIST: TLargeintField;
    ADV_REPTedadAghsat: TIntegerField;
    ADV_REPMablaghYekGhest: TIntegerField;
    ADV_REPtedadAghsatPardakhtShode: TIntegerField;
    ADV_REPAghsatPardakhti: TIntegerField;
    ADV_REPTotalMandehVam: TIntegerField;
    ADV_REPPaidIntrestAmount: TIntegerField;
    ADV_REPTotalIntrestAmount: TIntegerField;
    ADV_REPJamePardakhti: TIntegerField;
    ADV_REPLOANDATE: TStringField;
    ADV_REPLastName: TWideStringField;
    ADV_REPZAMEN_name: TWideStringField;
    ADV_REPZAMEN_tel: TWideStringField;
    ADV_REPVAL_VAM: TIntegerField;
    ADV_REPmandeh_vam: TIntegerField;
    ADV_REPAccountDate_1: TStringField;
    ADV_REPPhones: TWideStringField;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel1: TQRLabel;
    QRBand2: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRBand3: TQRBand;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText10: TQRDBText;
    QRShape2: TQRShape;
    QRLabel12: TQRLabel;
    QRDBText11: TQRDBText;
    pnlMain: TPanel;
    procedure BitBtn1Click(Sender: TObject);
    procedure MakeRepClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  REPORT_BE_TAFKIK_ADV_FRM: TREPORT_BE_TAFKIK_ADV_FRM;

implementation

uses dmu, U_QUICKREP_ADV_SEARCH_VAM_AZA_FRM;

{$R *.dfm}

procedure TREPORT_BE_TAFKIK_ADV_FRM.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TREPORT_BE_TAFKIK_ADV_FRM.MakeRepClick(Sender: TObject);
begin

//ShowMessage('«Ì‰ ê“«—‘ Â‰Ê“  ò„Ì· ‰‘œÂ «” ');
//ShowMessage('«“ ê“«—‘ ⁄«œÌ «” ›«œÂ ‘Êœ');


  if Get_AccountID_ByAccountNo(SearchEdit.Text)<1 then
  begin
    ShowMessage('‘„«—Â Õ”«» «‘ »«Â «” ');
    Exit;
  end;
  ADV_REP.close;
  ADV_REP.Parameters.ParamByName('@AccountID').Value := Get_AccountID_ByAccountNo(SearchEdit.Text);
  ADV_REP.Parameters.ParamByName('@SelAll').Value    := 0;
  ADV_REP.Open;

  if ADV_REP.IsEmpty then
    ShowMessage('«ÿ·«⁄« Ì ÃÂ  ‰„«Ì‘ ÊÃÊœ ‰œ«—œ.')
  else
    QuickRep1.Preview;

end;

end.
