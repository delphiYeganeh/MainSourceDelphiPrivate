 unit USubject;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ADODB, xpBitBtn, Grids, DBGrids, YDbgrid,
  StdCtrls, xpEdit, ExtCtrls, ComCtrls, xpPages,  ExtActns,
  ActnList, Buttons, Menus, AppEvnts, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  wwSpeedButton, wwDBNavigator, wwclearpanel, AdvGlowButton;

type
  TFrSubject = class(TMBaseForm)
    get_Subject: TADOStoredProc;
    Panel1: TPanel;
    Label1: TLabel;
    SearchEdit: TEdit;
    YDBGrid1: TYDBGrid;
    get_SubjectSubjectID: TAutoIncField;
    get_SubjectSubjectTitle: TWideStringField;
    get_SubjectIsActive: TBooleanField;
    get_SubjectSubjectCode: TStringField;
    DBGridEh1: TDBGridEh;
    pnlBottom: TPanel;
    xpBitBtn3: TAdvGlowButton;
    xpBitBtn5: TAdvGlowButton;
    xpBitBtn4: TAdvGlowButton;
    xpBitBtn2: TAdvGlowButton;
    pnlMain: TPanel;
    procedure SearchEditChange(Sender: TObject);
    procedure xpBitBtn4Click(Sender: TObject);
    procedure xpBitBtn2Click(Sender: TObject);
    procedure xpBitBtn5Click(Sender: TObject);
    procedure xpBitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrSubject: TFrSubject;

implementation

uses Dmu, uUserTablefields , YShamsiDate, LetterTitleUnit;

{$R *.dfm}

procedure TFrSubject.SearchEditChange(Sender: TObject);
begin
  inherited;
  with get_Subject do
   begin
     close;
      Parameters.ParamByName('@like').Value:=SearchEdit.Text;
     Open;
   end;
end;

procedure TFrSubject.xpBitBtn4Click(Sender: TObject);
 var s: string;
begin
  inherited;
 // Amin 1391/12/13 if dm.Y_InputQuery('ÚäæÇä ãæÖæÚ',get_SubjectSubjectTitle.AsString,s) then
   with get_Subject do
    begin
      edit;
      // Amin 1391/12/13 get_SubjectSubjectTitle.AsString:=s;
      // Amin 1391/12/13 post;            
      LetterTitleForm:= TLetterTitleForm.Create(application);
      LetterTitleForm.ShowModal;
    end;
end;

procedure TFrSubject.xpBitBtn2Click(Sender: TObject);
 var s: string;
begin
  inherited;

 // Amin 1391/12/13 if not dm.Y_InputQuery('ÚäæÇä ãæÖæÚ','ãæÖæÚ ÌÏíÏ',s) then
 // Amin 1391/12/13 exit;
   with get_Subject do
    begin
      Append;
      LetterTitleForm := TLetterTitleForm.Create(application);
      LetterTitleForm.ShowModal;
            // Amin 1391/12/13 get_SubjectSubjectTitle.AsString:=s;
      // Amin 1391/12/13 post;

      // Amin 1391/12/13 Start
      // Amin 1391/12/13 End
    end;
end;

procedure TFrSubject.xpBitBtn5Click(Sender: TObject);
Var
   Count:Integer;
begin
  inherited;
  if MessageShowString('ÂíÇ ÇÒ ÍĞİ ãæÖæÚ ãØãÆä åÓÊíÏ',true) then
  begin
     {Ranjbar}
     Count := StrToInt(Qry_GetResult('Select Count(LetterID) from Letter Where SubjectID = ' + get_SubjectSubjectID.AsString , Dm.YeganehConnection));
     if Count > 0 then
     begin
        MBaseForm.MessageShowString(' ßÇÑÈÑ ÑÇãí Çíä ÚäæÇä ÈÑÇí ' + IntToStr(Count) +' äÇãå ÇÓÊİÇÏå ÔÏå ÇÓÊ . ÈäÇÈÑÇíä ÇãßÇä ÍĞİ Âä æÌæÏ äÏÇÑÏ  ', False);
        Exit;
     end;
     //---
     get_Subject.Delete;
  end;
end;

procedure TFrSubject.xpBitBtn3Click(Sender: TObject);
begin
  inherited;
  dm.Subject.Close;
  dm.Subject.Open;
  close;
end;

procedure TFrSubject.FormCreate(Sender: TObject);
begin
  inherited;
SearchEdit.OnChange(SearchEdit);
end;

end.
