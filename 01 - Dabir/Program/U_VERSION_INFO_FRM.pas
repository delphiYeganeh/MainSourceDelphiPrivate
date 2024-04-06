unit U_VERSION_INFO_FRM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, Grids, DBGrids, DB, ADODB,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxClasses,
  cxCustomData, cxStyles, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp,
  dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  cxCustomPivotGrid, cxDBPivotGrid , U_VERSION_INFO_EDIT_FRM, ActnList;

type
  TVERSION_INFO_FRM = class(TForm)
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    ADOQuery1IDX: TAutoIncField;
    ADOQuery1INFO_: TStringField;
    ADOQuery1DATE_: TWideStringField;
    ADOQuery1VERSION_: TStringField;
    ADOQuery1CUSTOMER: TStringField;
    ADOQuery1SQL_SP: TStringField;
    ADOQuery1DELPHI_FORM: TStringField;
    ADOQuery1SOFTWARE_NAME: TStringField;
    ADD_BTN: TBitBtn;
    ActionList1: TActionList;
    Action1: TAction;
    VERSION_LIST: TComboBox;
    Label1: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure ADD_BTNClick(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure VERSION_LISTChange(Sender: TObject);
    procedure refresh;
  private
    { Private declarations }
  public
    { Public declarations }
  VERSION_INFO_EDIT_FRM : TVERSION_INFO_EDIT_FRM;
  FLAG : Boolean;
  end;

var
  VERSION_INFO_FRM: TVERSION_INFO_FRM;

implementation

uses Dmu;

{$R *.dfm}

procedure TVERSION_INFO_FRM.BitBtn1Click(Sender: TObject);
begin
ADOQuery1.CLOSE;
CLOSE;
end;

procedure TVERSION_INFO_FRM.FormShow(Sender: TObject);
begin
//ADOQuery1.Open;
FLAG := False;
end;

procedure TVERSION_INFO_FRM.DBGrid1DblClick(Sender: TObject);
begin
if FLAG then
BEGIN
VERSION_INFO_EDIT_FRM := TVERSION_INFO_EDIT_FRM.Create(Self);
VERSION_INFO_EDIT_FRM.SHOWMODAL;
VERSION_INFO_EDIT_FRM.FREE;
END;
end;

procedure TVERSION_INFO_FRM.ADD_BTNClick(Sender: TObject);
begin
ADOQuery1.Insert;
VERSION_INFO_EDIT_FRM := TVERSION_INFO_EDIT_FRM.Create(Self);
VERSION_INFO_EDIT_FRM.SHOWMODAL;
VERSION_INFO_EDIT_FRM.FREE;
end;

procedure TVERSION_INFO_FRM.Action1Execute(Sender: TObject);
begin
//FLAG := True;
//DBNavigator1.Visible := True;
//ADD_BTN.Visible      := True;
end;

procedure TVERSION_INFO_FRM.VERSION_LISTChange(Sender: TObject);
begin
refresh;
end;

procedure TVERSION_INFO_FRM.refresh;
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM VERSION_INFO');
ADOQuery1.SQL.Add('WHERE                     ');
ADOQuery1.SQL.Add('VERSION_ = '''+VERSION_LIST.Text+'''       ');
ADOQuery1.Open;
end;

end.
