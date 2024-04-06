unit U_SHOW_ATF_PEYRO_FRM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB;

type
  TSHOW_ATF_PEYRO_FRM = class(TForm)
    SQL: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);

    Function MessageShowString(AppMessage: string;ShowCancel:boolean):boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  KIND     : Integer;
  LetterID : String;
  end;

var
  SHOW_ATF_PEYRO_FRM: TSHOW_ATF_PEYRO_FRM;

implementation

uses Dmu, UMain, ShowmessageU;

{$R *.dfm}

Function TSHOW_ATF_PEYRO_FRM.MessageShowString(AppMessage: string;ShowCancel:boolean):boolean;
begin
  ShowMessageF := TShowMessageF.Create(self);
  ShowMessageF.Label1.Caption:=AppMessage;
  ShowMessageF.ShowCancel:=ShowCancel;
  ShowMessageF.ShowModal;
  Result:=ShowMessageF.Done;
end;

procedure TSHOW_ATF_PEYRO_FRM.FormShow(Sender: TObject);
begin
if KIND = 0 then
BEGIN
SQL.Close;
SQL.SQL.Clear;
SQL.SQL.Add('select IndicatorID,IncommingNO,Incommingdate,dbo.Letter.LetterID,dbo.Letter.MEMO,dbo.Subject.SubjectTitle   ');
SQL.SQL.Add('from Follow_Retroaction_Letter                                                                              ');
SQL.SQL.Add('INNER JOIN dbo.Letter  ON dbo.Letter.LetterID = dbo.Follow_Retroaction_Letter.FR_LetterID                   ');
SQL.SQL.Add('LEFT  JOIN dbo.Subject ON LETTER.SubjectID   = dbo.Subject.SubjectID                                        ');
SQL.SQL.Add('where Follow_Retroaction_Letter.LetterID = ' + Dm.Get_All_LetterLetterID.AsString + '  and Follow_Retroaction_Letter.FR_Kind = 0 ');
SQL.Open;
END
ELSE
if KIND = 1 then
BEGIN
SQL.Close;
SQL.SQL.Clear;
SQL.SQL.Add('select IndicatorID,IncommingNO,Incommingdate,dbo.Letter.LetterID,dbo.Letter.MEMO,dbo.Subject.SubjectTitle   ');
SQL.SQL.Add('from Follow_Retroaction_Letter                                                                              ');
SQL.SQL.Add('INNER JOIN dbo.Letter  ON dbo.Letter.LetterID = dbo.Follow_Retroaction_Letter.FR_LetterID                   ');
SQL.SQL.Add('LEFT  JOIN dbo.Subject ON LETTER.SubjectID   = dbo.Subject.SubjectID                                        ');
SQL.SQL.Add('where Follow_Retroaction_Letter.LetterID = ' + Dm.Get_All_LetterLetterID.AsString + '  and Follow_Retroaction_Letter.FR_Kind = 1 ');
SQL.Open;
END
end;

procedure TSHOW_ATF_PEYRO_FRM.DBGrid1DblClick(Sender: TObject);
Function GetHasSecureLetterAccess :Boolean;
  var qry: TADOQuery;
begin
  Result:=False;
  qry := TADOQuery.Create(Self);
  qry.Connection := dm.YeganehConnection;
  qry.SQL.Text := 'SELECT HasSecureLetterAccess FROM dbo.Users where ID = '+IntToStr(_UserID);
  qry.Open;
  if qry.RecordCount>0 then
    Result := qry.Fields.FieldByName('HasSecureLetterAccess').AsBoolean;
  qry.Free;
end;

function CheckClassificationFollowRetroactionLetter(LID : Integer):Integer;
  var qry: TADOQuery;
begin
  qry := TADOQuery.Create(Self);
  qry.Connection := dm.YeganehConnection;
  qry.SQL.Text := ' SELECT ClassificationID FROM Letter ' +
                  ' WHERE LetterID = ' + IntToStr(LID) ;
  qry.Open;
  Result := qry.Fields[0].AsInteger;
  qry.Free;
end;
var tmpRslt : Integer;
begin
  inherited;

   tmpRslt := CheckClassificationFollowRetroactionLetter(Self.SQL.FIELDBYNAME('LetterID').AsInteger);
   if (not GetHasSecureLetterAccess) and (tmpRslt > 1) then
   begin
     MessageShowString('œ” —”Ì €Ì— „Ã«“ ' + #13#10 + ' ‰«„Â œ«—«Ì ”ÿÕ ÿ»›Â »‰œÌ „Ì»«‘œ Ê ‘„« „Ã«“ »Â „‘«ÂœÂ ”‰œ ‰„Ì»«‘Ìœ', False);
     Exit;
   end;

    with TADOQuery.Create(Nil) do
    begin
      try
        Connection := Dm.YeganehConnection;
        Close;
        SQL.Text := 'select Letter_Type from Letter where LetterID = ' + Self.SQL.FIELDBYNAME('LetterID').ASSTRING;
        Open;
        if RecordCount > 0  then
        begin
           Case Fields[0].AsInteger of
             1: MainForm.ViewReceivedLetter(Self.SQL.FIELDBYNAME('LetterID').AsInteger);//»—«Ì ‰«„Â Â«Ì Ê«—œÂ
             2: MainForm.ViewSentLetter(Self.SQL.FIELDBYNAME('LetterID').AsInteger);//»—«Ì ‰«„Â Â«Ì ’«œ—Â
             3: MainForm.ViewInnerLetter(Self.SQL.FIELDBYNAME('LetterID').AsInteger);
             4: MainForm.ViewDocument(Self.SQL.FIELDBYNAME('LetterID').AsInteger);
           end;
        end;
      finally
        Free;
      end;
    end;

end;

end.
