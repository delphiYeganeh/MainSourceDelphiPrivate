unit uSecoundSign;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, ADODB, ExtDlgs, TntDialogs,
  TntExtDlgs;

type
  TfrmSecoundSign = class(TForm)
    DBImage1: TImage;
    BitBtn1: TBitBtn;
    xpBitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    dsSecoundSign: TDataSource;
    OpenPictureDialogT: TOpenPictureDialog;
    qryUpdate: TADOQuery;
    qrySecoundSign: TADOQuery;
    qrySecoundSignSecoundSign: TBlobField;
    OpenPictureDialog: TTntOpenPictureDialog;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure xpBitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    UserID: integer;
    { Public declarations }

  end;

var
  frmSecoundSign: TfrmSecoundSign;

implementation

uses Dmu;

{$R *.dfm}

procedure TfrmSecoundSign.BitBtn2Click(Sender: TObject);
begin
   close();
end;

procedure TfrmSecoundSign.BitBtn1Click(Sender: TObject);
begin
   qryUpdate.Close;
   DBImage1.Picture.SaveToFile(_TempPath+'\yeganehsign2.jpg');
   if FileExists(_TempPath+'\yeganehsign2.jpg')then
   begin
      qryUpdate.Parameters[0].LoadFromFile(_TempPath+'\yeganehsign2.jpg',ftVarBytes);
      qryUpdate.Parameters[1].Value := UserID;
      qryUpdate.ExecSQL;
      close();
   end
   else
      ShowMessage('«„÷« „Êﬁ  «›“ÊœÂ ‰‘œ');
end;

procedure TfrmSecoundSign.FormShow(Sender: TObject);
begin
   qrySecoundSign.Close;
   qrySecoundSign.Parameters[0].Value := UserID;
   qrySecoundSign.Open;
   if qrySecoundSignSecoundSign.IsNull then
      exit;
   qrySecoundSignSecoundSign.SaveToFile(_TempPath+'\yeganehsign2.jpg');
   DBImage1.Picture.LoadFromFile(_TempPath+'\yeganehsign2.jpg');
end;

procedure TfrmSecoundSign.xpBitBtn3Click(Sender: TObject);
var
   i : integer;
   s : string;
begin
   ShowMessage('·ÿ›«  ’ÊÌ— «„÷« „Êﬁ  —« Â„ «‰œ«“Â «„÷«Ì «’·Ì «‰ Œ«» ò‰Ìœ.');
   if OpenPictureDialog.Execute then
   begin
      if FileExists(_ApplicationPath+'tmpFile')then
      begin
        SysUtils.FileSetReadOnly(pchar(_ApplicationPath+'tmpFile'), false);
        DeleteFile(pchar(_ApplicationPath+'tmpFile'));
      end;
      if CopyFileW( dm.replacePWC(dm.StringToPWide(OpenPictureDialog.filename,i)), dm.StringToPWide(_ApplicationPath+'tmpFile',i), False) then
            s := _ApplicationPath+'tmpFile'
         else if CopyFileW( dm.StringToPWide(OpenPictureDialog.filename,i), dm.StringToPWide(_ApplicationPath+'tmpFile',i), False) then
            s := _ApplicationPath+'tmpFile'
         else
            ShowMessage('Œÿ« œ— ŒÊ«‰œ‰ ›«Ì· „»œ«');
      DBImage1.Picture.LoadFromFile(s);
   end;
end;

end.
