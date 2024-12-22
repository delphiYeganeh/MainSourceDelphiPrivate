unit USubject;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ADODB, xpBitBtn, Grids, DBGrids, YDbgrid,
  StdCtrls, xpEdit, ExtCtrls, ComCtrls, xpPages, xpWindow, ExtActns,
  ActnList;

type
  TFrSubject = class(TMBaseForm)
    get_Subject: TADOStoredProc;
    Panel1: TPanel;
    Label1: TLabel;
    SearchEdit: TxpEdit;
    YDBGrid1: TYDBGrid;
    xpBitBtn2: TxpBitBtn;
    xpBitBtn3: TxpBitBtn;
    xpBitBtn4: TxpBitBtn;
    xpBitBtn5: TxpBitBtn;
    get_SubjectSubjectID: TAutoIncField;
    get_SubjectSubjectTitle: TWideStringField;
    get_SubjectIsActive: TBooleanField;
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

uses Dmu, uUserTablefields;

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
 if dm.Y_InputQuery('⁄‰Ê«‰ „Ê÷Ê⁄',get_SubjectSubjectTitle.AsString,s) then
   with get_Subject do
    begin
      edit;
      get_SubjectSubjectTitle.AsString:=s;
      post;
    end;
end;

procedure TFrSubject.xpBitBtn2Click(Sender: TObject);
 var s: string;
begin
  inherited;

 if not dm.Y_InputQuery('⁄‰Ê«‰ „Ê÷Ê⁄','„Ê÷Ê⁄ ÃœÌœ',s) then
 exit;

   with get_Subject do
    begin
      insert;
      get_SubjectSubjectTitle.AsString:=s;
      post;
    end;


end;

procedure TFrSubject.xpBitBtn5Click(Sender: TObject);
begin
  inherited;
  if messageShowString('¬Ì« «“ Õ–› „Ê÷Ê⁄ „ÿ„∆‰ Â” Ìœ',true) then
    get_Subject.Delete;
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
