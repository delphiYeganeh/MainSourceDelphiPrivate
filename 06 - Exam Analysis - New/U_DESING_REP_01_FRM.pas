unit U_DESING_REP_01_FRM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Buttons, DB, ADODB;

type
  TDESING_REP_01_FRM = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    ITEM_01: TComboBox;
    ITEM_02: TComboBox;
    ITEM_03: TComboBox;
    ITEM_04: TComboBox;
    ITEM_05: TComboBox;
    ITEM_06: TComboBox;
    ITEM_07: TComboBox;
    ITEM_08: TComboBox;
    ITEM_09: TComboBox;
    OK_BTN: TBitBtn;
    ADOQuery1: TADOQuery;
    Image2: TImage;
    ITEM_01_TITLE: TLabel;
    ITEM_02_TITLE: TLabel;
    ITEM_03_TITLE: TLabel;
    ITEM_04_TITLE: TLabel;
    ITEM_05_TITLE: TLabel;
    ITEM_06_TITLE: TLabel;
    ITEM_07_TITLE: TLabel;
    ITEM_08_TITLE: TLabel;
    ITEM_09_TITLE: TLabel;
    procedure FormShow(Sender: TObject);
    procedure OK_BTNClick(Sender: TObject);
    procedure ITEM_01Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DESING_REP_01_FRM: TDESING_REP_01_FRM;

implementation

uses dmu;

{$R *.dfm}

procedure TDESING_REP_01_FRM.FormShow(Sender: TObject);
begin

ADOQuery1.Open;

ITEM_01.Text          := ADOQuery1.FIELDBYNAME('ITEM_01').AsString;
ITEM_01_TITLE.Caption := ITEM_01.Text;
ITEM_02.Text          := ADOQuery1.FIELDBYNAME('ITEM_02').AsString;
ITEM_02_TITLE.Caption := ITEM_02.Text;
ITEM_03.Text          := ADOQuery1.FIELDBYNAME('ITEM_03').AsString;
ITEM_03_TITLE.Caption := ITEM_03.Text;
ITEM_04.Text          := ADOQuery1.FIELDBYNAME('ITEM_04').AsString;
ITEM_04_TITLE.Caption := ITEM_04.Text;
ITEM_05.Text          := ADOQuery1.FIELDBYNAME('ITEM_05').AsString;
ITEM_05_TITLE.Caption := ITEM_05.Text;
ITEM_06.Text          := ADOQuery1.FIELDBYNAME('ITEM_06').AsString;
ITEM_06_TITLE.Caption := ITEM_06.Text;
ITEM_07.Text          := ADOQuery1.FIELDBYNAME('ITEM_07').AsString;
ITEM_07_TITLE.Caption := ITEM_07.Text;
ITEM_08.Text          := ADOQuery1.FIELDBYNAME('ITEM_08').AsString;
ITEM_08_TITLE.Caption := ITEM_08.Text;
ITEM_09.Text          := ADOQuery1.FIELDBYNAME('ITEM_09').AsString;
ITEM_09_TITLE.Caption := ITEM_09.Text;

end;

procedure TDESING_REP_01_FRM.OK_BTNClick(Sender: TObject);
begin

ADOQuery1.Edit;
ADOQuery1.FIELDBYNAME('ITEM_01').AsString := ITEM_01.Text;
ADOQuery1.FIELDBYNAME('ITEM_02').AsString := ITEM_02.Text;
ADOQuery1.FIELDBYNAME('ITEM_03').AsString := ITEM_03.Text;
ADOQuery1.FIELDBYNAME('ITEM_04').AsString := ITEM_04.Text;
ADOQuery1.FIELDBYNAME('ITEM_05').AsString := ITEM_05.Text;
ADOQuery1.FIELDBYNAME('ITEM_06').AsString := ITEM_06.Text;
ADOQuery1.FIELDBYNAME('ITEM_07').AsString := ITEM_07.Text;
ADOQuery1.FIELDBYNAME('ITEM_08').AsString := ITEM_08.Text;
ADOQuery1.FIELDBYNAME('ITEM_09').AsString := ITEM_09.Text;
ADOQuery1.Post;

end;

procedure TDESING_REP_01_FRM.ITEM_01Change(Sender: TObject);
begin
ITEM_01_TITLE.Caption := ITEM_01.Text;
ITEM_02_TITLE.Caption := ITEM_02.Text;
ITEM_03_TITLE.Caption := ITEM_03.Text;
ITEM_04_TITLE.Caption := ITEM_04.Text;
ITEM_05_TITLE.Caption := ITEM_05.Text;
ITEM_06_TITLE.Caption := ITEM_06.Text;
ITEM_07_TITLE.Caption := ITEM_07.Text;
ITEM_08_TITLE.Caption := ITEM_08.Text;
ITEM_09_TITLE.Caption := ITEM_09.Text;
end;

end.
