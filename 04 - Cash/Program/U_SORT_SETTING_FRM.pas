unit U_SORT_SETTING_FRM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB , Dmu, DBCtrls, Grids, DBGrids,businessLayer,YShamsiDate;

type
  TSORT_SETTING_FRM = class(TForm)
    OK_BTN: TBitBtn;
    CHK: TCheckBox;
    ADOQuery1: TADOQuery;
    procedure OK_BTNClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CHKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  FLAG : Boolean;
  end;

var
  SORT_SETTING_FRM: TSORT_SETTING_FRM;

implementation

{$R *.dfm}

procedure TSORT_SETTING_FRM.OK_BTNClick(Sender: TObject);
begin
if FLAG then
   ShowMyMessage('�����','���� ���� ��� ������� �� ����� �� ������ ���� � ������ ���� ����',[mbOK],mtWarning);
CLOSE;
end;

procedure TSORT_SETTING_FRM.FormShow(Sender: TObject);
begin

FLAG := False;

OK_BTN.Enabled     := True;

if GetSystemSetting('SORT_IncommingNO') = '1' then
   CHK.Checked := True
   ELSE
   CHK.Checked := False;

end;

procedure TSORT_SETTING_FRM.CHKClick(Sender: TObject);
VAR
RES : String;
begin

ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('CREATE TABLE ERR(ERR VARCHAR(10))                                           '+CHR(13));
ADOQuery1.SQL.Add('DECLARE @ERR VARCHAR(10)                                                     '+CHR(13));
ADOQuery1.SQL.Add('BEGIN TRY                                                                    '+CHR(13));
ADOQuery1.SQL.Add('   SELECT CONVERT(BIGINT, Letter.IncommingNO) AS IncommingNO_INT FROM Letter '+CHR(13));
ADOQuery1.SQL.Add('   SET @ERR = ''OK''                                                         '+CHR(13));
ADOQuery1.SQL.Add('END TRY                                                                      '+CHR(13));
ADOQuery1.SQL.Add('BEGIN CATCH                                                                  '+CHR(13));
ADOQuery1.SQL.Add('   SET @ERR = ''ERROR''                                                      '+CHR(13));
ADOQuery1.SQL.Add('END CATCH                                                                    '+CHR(13));
ADOQuery1.SQL.Add('INSERT INTO ERR(ERR) VALUES(@ERR)                                           '+CHR(13));
ADOQuery1.ExecSQL;

ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT ERR FROM ERR');
ADOQuery1.Open;

RES := ADOQuery1.FIELDBYNAME('ERR').AsString;

ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('DROP TABLE ERR');
ADOQuery1.ExecSQL;

if CHK.Checked then
   BEGIN
   if RES = 'OK' then
      BEGIN
      SetSystemSetting('SORT_IncommingNO', '1');
      FLAG := True;
      END
   ELSE
      BEGIN
      ShowMyMessage('�����','�� ��� ���� ���ǘ����� ��� ���� �� ����� ��� ��� ���� ����� ��� ������ ���� �����',[mbOK],mtError);
      SetSystemSetting('SORT_IncommingNO', '0');
      CHK.Checked := False;
      FLAG := False;
      END;
   END
   ELSE
   BEGIN
   SetSystemSetting('SORT_IncommingNO', '0');
   FLAG := True;
   END;
end;

end.
