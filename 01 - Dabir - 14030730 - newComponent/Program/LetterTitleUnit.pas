unit LetterTitleUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, DB, ADODB, ExtCtrls,
  AdvGlowButton;

type
  TLetterTitleForm = class(TForm)
    BitBtn1: TAdvGlowButton;
    BitBtn2: TAdvGlowButton;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    pnlMain: TPanel;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LetterTitleForm: TLetterTitleForm;

implementation

uses USubject, Math, Dmu ;

{$R *.dfm}

procedure TLetterTitleForm.FormShow(Sender: TObject);
begin
  Self.Color := _Color1 ;
  Self.Font.Name :=  _MainFont ;
   if not(FrSubject.get_Subject.State in [dsEdit, dsInsert]) then
   begin
      ShowMessage('.«ÿ·«⁄«  œ— Õ«·  À»  Ê Ì« ÊÌ—«Ì‘ ‰„Ì »«‘‰œ');
      close;
   end;
end;

procedure TLetterTitleForm.BitBtn1Click(Sender: TObject);
var
   q: TADOStoredProc;
begin
   BitBtn1.SetFocus ; 
   if not(FrSubject.get_Subject.State in [dsEdit, dsInsert]) then
   begin
      ShowMessage('.«ÿ·«⁄«  œ— Õ«·  À»  Ê Ì« ÊÌ—«Ì‘ ‰„Ì »«‘‰œ');
      exit;
   end;

   if (FrSubject.get_SubjectSubjectCode.Value = NULL) or
      (Trim(FrSubject.get_SubjectSubjectCode.AsString)='' ) then
   begin
      ShowMessage('.òœ „Ê÷Ê⁄ —« Ê«—œ ò‰Ìœ');
      DBEdit1.SetFocus;
      exit;
   end;

   if (FrSubject.get_SubjectSubjectTitle.Value = NULL) or
      (Trim(FrSubject.get_SubjectSubjectTitle.Value) = '') then
   begin
      ShowMessage('.⁄‰Ê«‰ „Ê÷Ê⁄ —« Ê«—œ ò‰Ìœ');
      DBEdit2.SetFocus;
      exit;
   end;

   q:= TADOStoredProc.Create(nil);
   q.Connection := FrSubject.get_Subject.Connection;
   q.ProcedureName := 'SP_IsDuplicateSubjectCode';
   with q.Parameters.AddParameter do
   begin
      DataType := ftString;
      Size := 1000;
      Name := '@Code';
      Direction := pdInput;
      Value := FrSubject.get_SubjectSubjectCode.AsString;
   end;
   with q.Parameters.AddParameter do
   begin
      DataType := ftInteger;
      Name := '@SubjectID';
      Direction := pdInput;
      Value := IFTHEN(FrSubject.get_Subject.State = dsEdit, FrSubject.get_SubjectSubjectID.AsInteger, 0);
   end;
   with q.Parameters.AddParameter do
   begin
      DataType := ftBoolean;
      Name := '@Result';
      Direction := pdOutput;
   end;

   q.ExecProc;
   if q.Parameters.ParamByName('@Result').Value = true  then
   begin
      ShowMessage('.òœ Ê«—œ ‘œÂ  ò—«—Ì «” . òœ œÌê—Ì «‰ Œ«» ò‰Ìœ');
      q.Free;
      exit;
   end;

   q.Free;
   FrSubject.get_Subject.Post;
   FrSubject.get_Subject.Close;
   FrSubject.get_Subject.Open;
   FrSubject.YDBGrid1.DataSource := Nil;
   FrSubject.YDBGrid1.DataSource := FrSubject.DSForm;
   Close;
end;

procedure TLetterTitleForm.BitBtn2Click(Sender: TObject);
begin
   FrSubject.get_Subject.Cancel;
   close;
end;

end.
