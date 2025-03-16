unit U_PRINT_REP_01_FRM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB, ADODB , DMU, jpeg, QRBarcode;

type
  TPRINT_REP_01_FRM = class(TForm)
    ADOQuery1: TADOQuery;
    QuickRep2: TQuickRep;
    QRBand2: TQRBand;
    ITEM_01_TITLE: TQRLabel;
    ITEM_02_TITLE: TQRLabel;
    ITEM_06_TITLE: TQRLabel;
    ITEM_03_TITLE: TQRLabel;
    ITEM_07_TITLE: TQRLabel;
    ITEM_04_TITLE: TQRLabel;
    ITEM_08_TITLE: TQRLabel;
    ITEM_05_TITLE: TQRLabel;
    ITEM_09_TITLE: TQRLabel;
    QRImage1: TQRImage;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRImage3: TQRImage;
    QRLabel10: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText16: TQRDBText;
    QRImage4: TQRImage;
    QRBarcode1: TQRBarcode;
    ITEM_07: TQRLabel;
    ITEM_08: TQRLabel;
    ITEM_09: TQRLabel;
    ITEM_06: TQRLabel;
    ITEM_05: TQRLabel;
    ITEM_04: TQRLabel;
    ITEM_03: TQRLabel;
    ITEM_02: TQRLabel;
    ITEM_01: TQRLabel;
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PRINT_REP_01_FRM: TPRINT_REP_01_FRM;

implementation

{$R *.dfm}

FUNCTION GET_FIELD(S : String):String;
BEGIN

if S = '‘„«—Â ’‰œ·Ì' then
   BEGIN
   Result := 'SeatNumber';
   END
ELSE
if S = '‘„«—Â œ«‰‘ÃÊÌÌ' then
   BEGIN
   Result := 'ApplicantCode';
   END
ELSE
if S = '‰«„ Ê ‰«„ Œ«‰Ê«œêÌ' then
   BEGIN
   Result := 'FullName';
   END
ELSE
if S = '‰«„ œ—”' then
   BEGIN
   Result := 'CourseTitle';
   END
ELSE
if S = '—‘ Â' then
   BEGIN
   Result := 'MajorTitle';
   END
ELSE
if S = ' «—ÌŒ' then
   BEGIN
   Result := 'ExamDate';
   END
ELSE
if S = '‰Ì„”«·  Õ’Ì·Ì' then
   BEGIN
   Result := 'ExamTerm';
   END
ELSE
if S = 'òœ œ—”' then
   BEGIN
   Result := 'CourseCode';
   END
ELSE
if S = 'ê—ÊÂ »—ê“«—Ì ¬“„Ê‰' then
   BEGIN
   Result := 'GroupExamTitle';
   END;
END;

procedure TPRINT_REP_01_FRM.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
Stream : TStream;
JPG    : TJPEGImage;
BMP    : TBitmap;

QRY    : TADOQuery;
begin
QRY := TADOQuery.Create(NIL);
QRY.Connection := DM.YeganehConnection;
QRY.Close;
QRY.SQL.Clear;
QRY.SQL.Add('SELECT * FROM DESIGN_REP_01');
QRY.Open;

     ITEM_01_TITLE.Caption  := QRY.FieldByName('ITEM_01').AsString;
     ITEM_02_TITLE.Caption  := QRY.FieldByName('ITEM_02').AsString;
     ITEM_03_TITLE.Caption  := QRY.FieldByName('ITEM_03').AsString;
     ITEM_04_TITLE.Caption  := QRY.FieldByName('ITEM_04').AsString;
     ITEM_05_TITLE.Caption  := QRY.FieldByName('ITEM_05').AsString;
     ITEM_06_TITLE.Caption  := QRY.FieldByName('ITEM_06').AsString;
     ITEM_07_TITLE.Caption  := QRY.FieldByName('ITEM_07').AsString;
     ITEM_08_TITLE.Caption  := QRY.FieldByName('ITEM_08').AsString;
     ITEM_09_TITLE.Caption  := QRY.FieldByName('ITEM_09').AsString;

  if TRIM(QRY.FieldByName('ITEM_01').AsString) <> '' then
     ITEM_01.Caption  := ADOQuery1.FIELDBYNAME(GET_FIELD(QRY.FieldByName('ITEM_01').AsString)).AsString
  ELSE
     ITEM_01.Caption  := '';

  if TRIM(QRY.FieldByName('ITEM_02').AsString) <> '' then
     ITEM_02.Caption  := ADOQuery1.FIELDBYNAME(GET_FIELD(QRY.FieldByName('ITEM_02').AsString)).AsString
  ELSE
     ITEM_02.Caption  := '';

  if TRIM(QRY.FieldByName('ITEM_03').AsString) <> '' then
     ITEM_03.Caption  := ADOQuery1.FIELDBYNAME(GET_FIELD(QRY.FieldByName('ITEM_03').AsString)).AsString
  ELSE
     ITEM_03.Caption  := '';

  if TRIM(QRY.FieldByName('ITEM_04').AsString) <> '' then
     ITEM_04.Caption  := ADOQuery1.FIELDBYNAME(GET_FIELD(QRY.FieldByName('ITEM_04').AsString)).AsString
  ELSE
     ITEM_04.Caption  := '';

  if TRIM(QRY.FieldByName('ITEM_05').AsString) <> '' then
     ITEM_05.Caption  := ADOQuery1.FIELDBYNAME(GET_FIELD(QRY.FieldByName('ITEM_05').AsString)).AsString
  ELSE
     ITEM_05.Caption  := '';

  if TRIM(QRY.FieldByName('ITEM_06').AsString) <> '' then
     ITEM_06.Caption  := ADOQuery1.FIELDBYNAME(GET_FIELD(QRY.FieldByName('ITEM_06').AsString)).AsString
  ELSE
     ITEM_06.Caption  := '';

  if TRIM(QRY.FieldByName('ITEM_07').AsString) <> '' then
     ITEM_07.Caption  := ADOQuery1.FIELDBYNAME(GET_FIELD(QRY.FieldByName('ITEM_07').AsString)).AsString
  ELSE
     ITEM_07.Caption  := '';

  if TRIM(QRY.FieldByName('ITEM_08').AsString) <> '' then
     ITEM_08.Caption  := ADOQuery1.FIELDBYNAME(GET_FIELD(QRY.FieldByName('ITEM_08').AsString)).AsString
  ELSE
     ITEM_08.Caption  := '';

  if TRIM(QRY.FieldByName('ITEM_09').AsString) <> '' then
     ITEM_09.Caption  := ADOQuery1.FIELDBYNAME(GET_FIELD(QRY.FieldByName('ITEM_09').AsString)).AsString
  ELSE
     ITEM_09.Caption  := '';

  QRBarcode1.BarText := ADOQuery1.FieldByName('Barcode').AsString;

  try
    Stream := ADOQuery1.CreateBlobStream(ADOQuery1.FieldByName('pic'), bmRead);
    try
      JPG := TJPEGImage.Create;
      JPG.LoadFromStream(Stream);
      BMP := TBitmap.Create;
      bmp.Width  := JPG.Width;
      bmp.Height := JPG.Height;
      Bmp.Assign(Jpg);
      QRImage1.Picture.Bitmap := bmp;
    finally
    BMP.Free;
    JPG.Free;
    end;
  finally
    Stream.Free;
  end;

end;

end.
