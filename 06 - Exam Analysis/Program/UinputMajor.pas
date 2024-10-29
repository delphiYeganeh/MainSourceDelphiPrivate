unit UinputMajor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ADODB, xpWindow, ActnList, DBCtrls, StdCtrls, Mask,
  xpBitBtn, ToolWin, ActnMan, ActnCtrls, ActnMenus, DBActns,
  XPStyleActnCtrls, Grids, DBGrids, YDbgrid, ExtCtrls;

type
  TfrinputMajor = class(TMBaseForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    xpBitBtn1: TxpBitBtn;
    Panel4: TPanel;
    Panel5: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    YDBGrid1: TYDBGrid;
    YDBGrid2: TYDBGrid;
    YDBGrid3: TYDBGrid;
    xpBitBtn4: TxpBitBtn;
    xpBitBtn5: TxpBitBtn;
    xpBitBtn6: TxpBitBtn;
    xpBitBtn2: TxpBitBtn;
    xpBitBtn3: TxpBitBtn;
    xpBitBtn7: TxpBitBtn;
    xpBitBtn8: TxpBitBtn;
    xpBitBtn9: TxpBitBtn;
    xpBitBtn10: TxpBitBtn;
    procedure xpBitBtn1Click(Sender: TObject);
    procedure xpBitBtn10Click(Sender: TObject);
    procedure xpBitBtn6Click(Sender: TObject);
    procedure xpBitBtn7Click(Sender: TObject);
    procedure xpBitBtn9Click(Sender: TObject);
    procedure xpBitBtn5Click(Sender: TObject);
    procedure xpBitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frinputMajor: TfrinputMajor;

implementation

uses dmu, YInputQuery, UMajorEdit;

{$R *.dfm}

procedure TfrinputMajor.xpBitBtn1Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TfrinputMajor.xpBitBtn10Click(Sender: TObject);
 var s: string;
begin
  inherited;
  with dm,Faculty do
  if dm.Y_InputQuery('œ«‰‘òœÂ ÃœÌœ','œ«‰‘òœÂ ÃœÌœ',s) then
  begin
   Insert;
   FacultyFacultyTitle.AsString:=s;
   post;
  end;
end;

procedure TfrinputMajor.xpBitBtn6Click(Sender: TObject);
 var s: string;
begin
  inherited;
  with dm,Select_EducationGroup_by_FacultyID do
  if dm.Y_InputQuery('ê—ÊÂ ¬„Ê“‘Ì ÃœÌœ','ê—ÊÂ ¬„Ê“‘Ì ÃœÌœ',s) then
  begin
   Insert;
   Select_EducationGroup_by_FacultyIDEducationGroupTitle.AsString:=s;
   Select_EducationGroup_by_FacultyIDFacultyID.AsInteger:=FacultyFacultyID.AsInteger;
   post;
  end;
end;

procedure TfrinputMajor.xpBitBtn7Click(Sender: TObject);
begin
  inherited;
  with dm,Select_Major_by_EducationGroupID do
  begin
   Insert;
   FrMajorEdit:= TFrMajorEdit.Create(Application);
   FrMajorEdit.ShowModal;
  end;
end;

procedure TfrinputMajor.xpBitBtn9Click(Sender: TObject);
 var s: string;
begin
  inherited;
  with dm,Faculty do
  if dm.Y_InputQuery('œ«‰‘òœÂ ÃœÌœ','œ«‰‘òœÂ ÃœÌœ',s) then
  begin
   edit;
   FacultyFacultyTitle.AsString:=s;
   post;
  end;
end;

procedure TfrinputMajor.xpBitBtn5Click(Sender: TObject);
 var s: string;
begin
  inherited;
  with dm,Select_EducationGroup_by_FacultyID do
  if dm.Y_InputQuery('ê—ÊÂ ¬„Ê“‘Ì ÃœÌœ','ê—ÊÂ ¬„Ê“‘Ì ÃœÌœ',s) then
  begin
   edit;
   Select_EducationGroup_by_FacultyIDEducationGroupTitle.AsString:=s;
   post;
  end;
end;

procedure TfrinputMajor.xpBitBtn3Click(Sender: TObject);
 var s: string;
begin
  inherited;
  with dm,Select_Major_by_EducationGroupID do
  begin
   edit;
   FrMajorEdit:=TFrMajorEdit.Create(Application);
   FrMajorEdit.ShowModal;
  end;
end;

procedure TfrinputMajor.FormShow(Sender: TObject);
begin
  inherited;
   //
end;

end.


