unit U_SEARCH_IN_PDF_FRM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, StdCtrls, Buttons;

type
  TSEARCH_IN_PDF_FRM = class(TForm)
    DataSource1: TDataSource;
    SRCH_QRY: TADOQuery;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    TXT: TEdit;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SEARCH_IN_PDF_FRM: TSEARCH_IN_PDF_FRM;

implementation

uses Dmu;

{$R *.dfm}

procedure TSEARCH_IN_PDF_FRM.FormShow(Sender: TObject);
begin
TXT.Text := '';
Self.ActiveControl := TXT;
end;

procedure TSEARCH_IN_PDF_FRM.SpeedButton1Click(Sender: TObject);
begin
SRCH_QRY.Close;
SRCH_QRY.SQL.Clear;

SRCH_QRY.SQL.Add('SELECT * FROM LETTER_PEYVAST_PDF                                                    ');
SRCH_QRY.SQL.Add('INNER JOIN dbo.LetterData LD ON LD.LetterDataID = LETTER_PEYVAST_PDF.LETTER_DATA_ID ');
SRCH_QRY.SQL.Add('INNER JOIN dbo.Letter     L  ON L.LetterID      = LETTER_PEYVAST_PDF.LETTERID       ');
SRCH_QRY.SQL.Add('WHERE STR_ LIKE ''%'+TXT.Text+'%''                                                  ');
SRCH_QRY.SQL.Add('ORDER BY PAGE                                                                       ');

//InputBox('','',SRCH_QRY.SQL.Text);

SRCH_QRY.Open;
end;

end.
