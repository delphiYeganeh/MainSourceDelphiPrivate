unit UImportStudents;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ExtActns, ActnList, DBCtrls, UemsVCL, ExtCtrls,
  StdCtrls, Mask, ComCtrls, Buttons, ADODB, xpWindow, xpBitBtn;

type
  TFrImportStudents = class(TMBaseForm)
    Button2: TxpBitBtn;
    EdPath: TEdit;
    Label2: TLabel;
    SpeedButton1: TxpBitBtn;
    OpenDialog: TOpenDialog;
    BitBtn1: TxpBitBtn;
    ProgressBar: TProgressBar;
    Ch_FirstLine: TCheckBox;
    Label3: TLabel;
    DelimeterComo: TComboBox;
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrImportStudents: TFrImportStudents;

implementation

uses dmu, BusinessLayer, YShamsiDate;

{$R *.dfm}
var f: TextFile;



procedure TFrImportStudents.SpeedButton1Click(Sender: TObject);
begin
  inherited;
 if OpenDialog.Execute then
   EdPath.Text:=OpenDialog.FileName;
end;

function RowNumber:integer;
var i: integer;
s:string;
begin
  i:=0;
  while not eof (f) do
   begin
    readln(f,s);
    inc(i);
   end;
   Result:=i;
   reset(f);
end;

procedure TFrImportStudents.BitBtn1Click(Sender: TObject);
var
line,
ApplicantCode,
   fullname ,
   CourseCode ,
   CourseName ,
   CourseGroup,
   MajorCode,
   EntranceTerm,
   majorName ,
   TermCode ,
   TeacherCode,
   TeacherFullname:string;
  Items:TStrings;
  delimeter:char;
 begin
  inherited;
  delimeter:=DelimeterComo.Text[1];
AssignFile(f,EdPath.Text);
Reset(f);
Items:=TStringList.Create;
 ProgressBar.Max:=RowNumber;
ProgressBar.Position:=ProgressBar.Position+1;
 if Ch_FirstLine.Checked then
  Readln(f,line);

while not eof (f) do
 begin
  Readln(f,line);
  items.Clear;
  Setwords(line,delimeter,Items);

   ApplicantCode:= Items[0];
   fullname := Items[1];
   CourseCode := Items[2];
   CourseName := Items[3];
   CourseGroup:= Items[4];
   MajorCode:= Items[5];
   majorName := Items[6];
   TeacherCode:= Items[7];
   TeacherFullname:= Items[8];
   TermCode := Items[9];
   EntranceTerm := Items[10];

  Exec_imp_TotalEducation(ApplicantCode,   fullname ,     CourseCode ,   CourseName ,   CourseGroup,   MajorCode,     majorName ,    TermCode ,     TeacherCode,   TeacherFullname,EntranceTerm);

  ProgressBar.Position:=ProgressBar.Position+1;
  Application.ProcessMessages;
 end;

 closeFile(f);
 ProgressBar.Position:=100000;
 ShowMessage('»« „Ê›ﬁÌ   «ÿ·«⁄«  œ«‰‘ÃÊÌ«‰ Â« «‰ ﬁ«· Ì«› ');
 ProgressBar.Position:=0
end;

procedure TFrImportStudents.Button2Click(Sender: TObject);
begin
  inherited;
close;
end;
end.
