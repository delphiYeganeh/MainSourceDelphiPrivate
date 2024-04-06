unit LetterSigners;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, YDbgrid, StdCtrls, ExtCtrls;

type
  TfmLetterSigners = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    YDBGrid1: TYDBGrid;
    dLetterSign: TDataSource;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    LetterID : integer;
    { Public declarations }
  end;

var
  fmLetterSigners: TfmLetterSigners;

implementation

uses Dmu, BaseUnit,  businessLayer;

{$R *.dfm}

procedure TfmLetterSigners.Button1Click(Sender: TObject);
begin
   close;
end;

procedure TfmLetterSigners.Button2Click(Sender: TObject);
begin
{   Try
      dm.QrUserSign.Close;
      dm.QrUserSign.Parameters.ParamByName('Pa_UserID').Value := _Userid;
      dm.QrUserSign.Open;

      if dm.QrUserSign.RecordCount = 0 then
      begin
            MBaseForm.MessageShowString('ﬂ«—»— ê—«„Ì : ‘„« œ«—«Ì «„÷« ‰„Ì »«‘Ìœ'+ #13#13+
            ' ÊÃÂ : ÃÂ  œ«‘ ‰ Ì«  €ÌÌ— «„÷«Ì ŒÊœ »Â ›—„  ⁄—Ì› ò«—»— œ— œ»Ì—Œ«‰Â „—«Ã⁄Â ‰„«ÌÌœ', False);
            Exit;
      end;

         FInputPass := TFInputPass.Create(Application);
         FInputPass.UserPassword := Trim(dm.QrUserSignPassword.AsString);
         FInputPass.ShowModal;
         if FInputPass.ModalResult = mrOK then
         begin
            With TADOQuery.Create(nil) do
            begin
               Connection := dm.YeganehConnection;
               SQL.Text := 'UPDATE LetterSign SET IsOld=1 WHERE LetterID='+dm.Sp_InboxLetterID.AsString+' AND UserID='+IntToStr(_Userid);
               ExecSQL;
               Active := false;
               SQL.Text := 'INSERT INTO LetterSign([LetterID],[UserID],[Date],[Time]) VALUES('+dm.Sp_InboxLetterID.AsString+','+IntToStr(_Userid)+','''+_Today+''','''+Exec_Get_NowTime+''')';
               ExecSQL;
            end;
         end;
   Finally
      dm.QrUserSign.Close;
      dm.qLetterSign.close;
      dm.qLetterSign.Open;
   end;  }
end;

end.
