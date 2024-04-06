unit UInputCourse;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtCtrls, DBCtrls, StdCtrls, Grids, DBGrids, YDbgrid,
  DB, Mask, ADODB, ComCtrls, xpPages, xpWindow, ActnList, xpBitBtn;

type
  TFrInputCourse = class(TMBaseForm)
    xpPageControl1: TxpPageControl;
    xpTabSheet1: TxpTabSheet;
    xpTabSheet2: TxpTabSheet;
    select_Course: TADOStoredProc;
    select_CourseCourseID: TSmallintField;
    select_CourseCourseCode: TStringField;
    select_CourseCourseTitle: TWideStringField;
    select_CourseNumberOfUnits: TFloatField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Dselect_Course: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    YDBGrid1: TYDBGrid;
    DBNavigator1: TDBNavigator;
    Panel1: TPanel;
    xpBitBtn1: TxpBitBtn;
    Panel2: TPanel;
    Search: TEdit;
    Label4: TLabel;
    procedure xpBitBtn1Click(Sender: TObject);

procedure RefreshCourse;
    procedure FormCreate(Sender: TObject);
    procedure SearchChange(Sender: TObject);
    procedure select_CourseBeforePost(DataSet: TDataSet);
      private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrInputCourse: TFrInputCourse;

implementation

uses dmu, BusinessLayer;

{$R *.dfm}

procedure TFrInputCourse.xpBitBtn1Click(Sender: TObject);
begin
  inherited;
  dm.Course.Close;
  dm.Course.Open;
  close;
end;


procedure TFrInputCourse.RefreshCourse;
begin
  inherited;
with select_Course do
 begin
  Close;
   Parameters.ParamByName('@like').Value:=Search.Text;
  Open;
 end;
end;

procedure TFrInputCourse.FormCreate(Sender: TObject);
begin
  inherited;
RefreshCourse;
end;

procedure TFrInputCourse.SearchChange(Sender: TObject);
begin
  inherited;
RefreshCourse;
end;

procedure TFrInputCourse.select_CourseBeforePost(DataSet: TDataSet);
begin
  inherited;
  if Duplicate_CourseTitle(DBEdit2.Text) or Duplicate_CourseTitle(DBEdit1.Text) then
    begin
      ShowMessage('òœ Ì« ⁄‰Ê«‰ œ—”  ò—«—Ì «” ');
      abort;
    end;

end;

end.
