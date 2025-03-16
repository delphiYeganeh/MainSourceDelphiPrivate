unit UTeacherExamInfo_byDate;

interface

uses    Forms,dialogs, Classes, DB,StdCtrls,Graphics,DBCtrls,UemsVCL,
  ActnList, Controls, Grids, DBGrids, YDbgrid, DBLookupEdit,sysutils,Windows,YWhereEdit,
  ExtActns, xpWindow, Mask, ExtCtrls, ADODB, xpBitBtn, BaseUnit;


type
  TFrTeacherExamInfo_byDate = class(TMBaseForm)
    Get_TeacherExamInfo_ByDate: TADOStoredProc;
    DGet_ApplicantExamInfo_ByDate: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    EndExamDate: TEdit;
    Label3: TLabel;
    BeginExamDate: TEdit;
    Label6: TLabel;
    Button3: TxpBitBtn;
    Button4: TxpBitBtn;
    Button5: TxpBitBtn;
    Button6: TxpBitBtn;
    xpBitBtn1: TxpBitBtn;
    number: TLabel;
    Get_TeacherExamInfo_ByDateDifficulty: TFloatField;
    Get_TeacherExamInfo_ByDateDiscrimination: TFloatField;
    Get_TeacherExamInfo_ByDateStandardError: TFloatField;
    Get_TeacherExamInfo_ByDateAlpha: TFloatField;
    Get_TeacherExamInfo_ByDateExamVariance: TFloatField;
    Get_TeacherExamInfo_ByDateNumberOf_1item_Question: TSmallintField;
    Get_TeacherExamInfo_ByDateNumberOf_2item_Question: TSmallintField;
    Get_TeacherExamInfo_ByDateNumberOf_3item_Question: TSmallintField;
    Get_TeacherExamInfo_ByDateNumberOf_4item_Question: TSmallintField;
    Get_TeacherExamInfo_ByDateNumberOf_5item_Question: TSmallintField;
    Get_TeacherExamInfo_ByDateRPBIS: TFloatField;
    Get_TeacherExamInfo_ByDateTermCode: TStringField;
    Get_TeacherExamInfo_ByDateExamTitle: TWideStringField;
    Get_TeacherExamInfo_ByDateExamDate: TStringField;
    Get_TeacherExamInfo_ByDateCorrectItemPoint: TFloatField;
    Get_TeacherExamInfo_ByDateWrongItemPoint: TFloatField;
    Get_TeacherExamInfo_ByDateBlankItemPoint: TFloatField;
    Get_TeacherExamInfo_ByDateMinPassedMark: TFloatField;
    Get_TeacherExamInfo_ByDateExamTypeTitle: TWideStringField;
    Get_TeacherExamInfo_ByDateNumber_of_Question: TIntegerField;
    Get_TeacherExamInfo_ByDateNumber_of_Items: TWordField;
    Get_TeacherExamInfo_ByDatenumber_of_applicant: TIntegerField;
    Select_Question_By_ExamID_TeacherID: TADOStoredProc;
    DSelect_Question_By_ExamID_TeacherID: TDataSource;
    Get_TeacherExamInfo_ByDateExamID: TAutoIncField;
    Get_TeacherExamInfo_ByDateMainCourseID: TSmallintField;
    Get_TeacherExamInfo_ByDateMainDesignerTeacherID: TSmallintField;
    Get_TeacherExamInfo_ByDateExamTypeID: TWordField;
    Get_TeacherExamInfo_ByDateTexFormatID: TIntegerField;
    Get_TeacherExamInfo_ByDateAnswerKey: TStringField;
    Panel3: TPanel;
    YDBGrid1: TYDBGrid;
    QuestionGrid: TYDBGrid;
    Get_TeacherExamInfo_ByDateTeacher_NumberOf_1item_Question: TIntegerField;
    Get_TeacherExamInfo_ByDateTeacher_NumberOf_2item_Question: TIntegerField;
    Get_TeacherExamInfo_ByDateTeacher_NumberOf_3item_Question: TIntegerField;
    Get_TeacherExamInfo_ByDateTeacher_NumberOf_4item_Question: TIntegerField;
    Get_TeacherExamInfo_ByDateTeacher_NumberOf_5item_Question: TIntegerField;
    Get_TeacherExamInfo_ByDateTeacher_Difficulty: TFloatField;
    Get_TeacherExamInfo_ByDateTeacher_Discrimination: TFloatField;
    Get_TeacherExamInfo_ByDateTeacher_RPBIS: TFloatField;
    Get_TeacherExamInfo_ByDateKR20: TFloatField;
    Get_TeacherExamInfo_ByDateTeacher_Count: TIntegerField;
    procedure Button6Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure RefreshQuery;
    procedure FormShow(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure Get_TeacherExamInfo_ByDateAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
   private
     gTeacherID:integer;
     gExamID:integer;

    { Private declarations }
   public
      constructor create(AOwner: TComponent;TeacherID:integer = 0;Examid:integer = 0);reintroduce;virtual;
    { Private declarations }
  end;

var
  FrTeacherExamInfo_byDate: TFrTeacherExamInfo_byDate;

implementation

uses dmu, Math, YShamsiDate;


{$R *.dfm}
procedure TFrTeacherExamInfo_byDate.Button6Click(Sender: TObject);
begin
YDBGrid1.CustomizePrint;
end;

procedure TFrTeacherExamInfo_byDate.Button3Click(Sender: TObject);
begin
YDBGrid1.ExportToWord;

end;

procedure TFrTeacherExamInfo_byDate.Button4Click(Sender: TObject);
begin
YDBGrid1.ExportToExcel;

end;

procedure TFrTeacherExamInfo_byDate.Button5Click(Sender: TObject);
begin
close;
end;

procedure TFrTeacherExamInfo_byDate.RefreshQuery;
begin
  inherited;
 with Get_TeacherExamInfo_ByDate do
  begin
    Close;
    Parameters.ParamByName('@TeacherID')    .Value:=gTeacherID ;
    Parameters.ParamByName('@ExamID')       .Value:=gExamID;
    Parameters.ParamByName('@BeginExamDate').Value:=BeginExamDate.Text;
    Parameters.ParamByName('@EndExamDate')  .Value:=EndExamDate.Text;
    Open;
     Number.Caption:=' ⁄œ«œ:'+IntToStr(RecordCount);
     YDBGrid1.PrintTitle:=' ·Ì”  ¬“„Ê‰ Â«ÌÌ òÂ «” «œ '+Dm.select_teacher_by_whereFullName.AsString+'»« òœ '+dm.select_teacher_by_whereTeacherCode.AsString+' œ— ¬‰ ‘—ò  ò—œÂ «” ';

  end;
end;

procedure TFrTeacherExamInfo_byDate.FormShow(Sender: TObject);
begin
  inherited;
   BeginExamDate.Text := copy(ShamsiString(now()),1,4)+'/01/01';
   if ShamsiLeapYear(StrToInt(copy(ShamsiString(now()),1,4))) = 0 then
      EndExamDate.Text := copy(ShamsiString(now()),1,4)+'/12/29'
   else
      EndExamDate.Text := copy(ShamsiString(now()),1,4)+'/12/30';
   RefreshQuery;
end;

procedure TFrTeacherExamInfo_byDate.xpBitBtn1Click(Sender: TObject);
begin
  inherited;
RefreshQuery;
end;

procedure TFrTeacherExamInfo_byDate.Get_TeacherExamInfo_ByDateAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
 with Select_Question_By_ExamID_TeacherID do
  begin
    Close;
    Parameters.ParamByName('@TeacherID')  .Value:=gTeacherID ;
    Parameters.ParamByName('@ExamID')     .Value:=Get_TeacherExamInfo_ByDateExamID.asinteger;
    Open;
     Number.Caption:=' ⁄œ«œ:'+IntToStr(RecordCount);
  end;


end;

procedure TFrTeacherExamInfo_byDate.FormCreate(Sender: TObject);
begin
  inherited;
gexamid:=0;
end;

constructor TFrTeacherExamInfo_byDate.create(AOwner: TComponent; TeacherID,
  Examid: integer);
begin
      inherited create(AOwner);
      gTeacherID := TeacherID;
      gExamID := ExamID;

end;

end.
