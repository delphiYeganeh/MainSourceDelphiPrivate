unit UAddSubCourse;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ADODB, xpWindow, ActnList, DBCtrls, StdCtrls, Mask,
  xpBitBtn, ToolWin, ActnMan, ActnCtrls, ActnMenus, DBActns,
  XPStyleActnCtrls, Grids, DBGrids, YDbgrid, ExtCtrls;

type
  TFrAddSubCourse = class(TMBaseForm)
    Panel2: TPanel;
    xpBitBtn4: TxpBitBtn;
    xpBitBtn5: TxpBitBtn;
    xpBitBtn6: TxpBitBtn;
    Panel4: TPanel;
    Label3: TLabel;
    YDBGrid2: TYDBGrid;
    DBlookupCourse: TDBLookupComboBox;
    Label1: TLabel;
    select_SubCourse_By_CourseID: TADOStoredProc;
    select_SubCourse_By_CourseIDSubCourseID: TIntegerField;
    select_SubCourse_By_CourseIDParentID: TIntegerField;
    select_SubCourse_By_CourseIDCourseID: TIntegerField;
    select_SubCourse_By_CourseIDSubCourseTitle: TWideStringField;
    select_SubCourse_By_CourseIDComment: TWideStringField;
    Dselect_SubCourse_By_CourseID: TDataSource;
    xpBitBtn1: TxpBitBtn;
    Edit1: TEdit;
    Label2: TLabel;
    procedure xpBitBtn1Click(Sender: TObject);
    procedure xpBitBtn10Click(Sender: TObject);
    procedure xpBitBtn6Click(Sender: TObject);
    procedure xpBitBtn5Click(Sender: TObject);
    procedure xpBitBtn3Click(Sender: TObject);
    procedure DBlookupCourseClick(Sender: TObject);
    procedure select_SubCourse_By_CourseIDAfterInsert(DataSet: TDataSet);
    procedure xpBitBtn4Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    SelectedSubCourseID:integer;
  end;

var
  FrAddSubCourse: TFrAddSubCourse;

implementation

uses dmu, YInputQuery;

{$R *.dfm}

procedure TFrAddSubCourse.xpBitBtn1Click(Sender: TObject);
begin
  inherited;
  SelectedSubCourseID:=select_SubCourse_By_CourseIDSubCourseID.AsInteger;
close;
end;

procedure TFrAddSubCourse.xpBitBtn10Click(Sender: TObject);
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

procedure TFrAddSubCourse.xpBitBtn6Click(Sender: TObject);
 var s: string;
begin
  inherited;
  with dm,select_SubCourse_By_CourseID do
if dm.Y_InputQuery('”—›’· ÃœÌœ','”—›’· ÃœÌœ',s) then
  begin
   Insert;
   select_SubCourse_By_CourseIDSubCourseTitle.AsString:=s;
   post;
  end;
end;

procedure TFrAddSubCourse.xpBitBtn5Click(Sender: TObject);
 var s: string;
begin
  inherited;
  with dm,select_SubCourse_By_CourseID do
if dm.Y_InputQuery('”—›’· ',select_SubCourse_By_CourseIDSubCourseTitle.AsString,s) then
  begin
   edit;
   select_SubCourse_By_CourseIDSubCourseTitle.AsString:=s;
   post;
  end;
end;

procedure TFrAddSubCourse.xpBitBtn3Click(Sender: TObject);
 var s: string;
begin
  inherited;

end;

procedure TFrAddSubCourse.DBlookupCourseClick(Sender: TObject);
begin
  inherited;
 with select_SubCourse_By_CourseID do
  begin
   Close;
   Parameters.ParamByName('@CourseID').Value:= DBlookupCourse.KeyValue;
   Open;
  end;
end;

procedure TFrAddSubCourse.select_SubCourse_By_CourseIDAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
select_SubCourse_By_CourseIDCourseID.AsInteger:=DBlookupCourse.KeyValue;
end;

procedure TFrAddSubCourse.xpBitBtn4Click(Sender: TObject);
begin
  inherited;
if messageShowString('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœ',true) then
  select_SubCourse_By_CourseID.Delete;
end;

procedure TFrAddSubCourse.Edit1Change(Sender: TObject);
begin
  inherited;
select_SubCourse_By_CourseID.Locate('SubCourseTitle',Edit1.Text,[loPartialKey]);
end;

procedure TFrAddSubCourse.FormCreate(Sender: TObject);
begin
  inherited;
dm.Course.Open;
end;

end.


