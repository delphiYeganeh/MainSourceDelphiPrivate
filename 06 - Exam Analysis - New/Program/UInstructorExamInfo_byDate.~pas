unit UInstructorExamInfo_byDate;

interface

uses    Forms,dialogs, Classes, DB,StdCtrls,Graphics,DBCtrls,UemsVCL,
  ActnList, Controls, Grids, DBGrids, YDbgrid, DBLookupEdit,sysutils,Windows,YWhereEdit,
  ExtActns, xpWindow, Mask, ExtCtrls, ADODB, xpBitBtn, BaseUnit;


type
  TFrInstructorExamInfo_byDate = class(TMBaseForm)
    Get_InstructorExamInfo_ByDate: TADOStoredProc;
    DGet_InstructorExamInfo_ByDate: TDataSource;
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
    Select_Applicant_by_Examid_TrainingCourseID: TADOStoredProc;
    DSelect_Applicant_by_Examid_TrainingCourseID: TDataSource;
    Panel3: TPanel;
    YDBGrid1: TYDBGrid;
    YDBGrid2: TYDBGrid;
    Get_InstructorExamInfo_ByDateExamID: TAutoIncField;
    Get_InstructorExamInfo_ByDateExamTitle: TWideStringField;
    Get_InstructorExamInfo_ByDateMainCourseID: TSmallintField;
    Get_InstructorExamInfo_ByDateMainDesignerTeacherID: TSmallintField;
    Get_InstructorExamInfo_ByDateExamDate: TStringField;
    Get_InstructorExamInfo_ByDateCorrectItemPoint: TFloatField;
    Get_InstructorExamInfo_ByDateWrongItemPoint: TFloatField;
    Get_InstructorExamInfo_ByDateBlankItemPoint: TFloatField;
    Get_InstructorExamInfo_ByDateMinPassedMark: TFloatField;
    Get_InstructorExamInfo_ByDateExamTypeID: TWordField;
    Get_InstructorExamInfo_ByDateNumber_of_Items: TWordField;
    Get_InstructorExamInfo_ByDateNumber_of_Question: TIntegerField;
    Get_InstructorExamInfo_ByDatenumber_of_applicant: TIntegerField;
    Get_InstructorExamInfo_ByDateTexFormatID: TIntegerField;
    Get_InstructorExamInfo_ByDateAnswerKey: TStringField;
    Get_InstructorExamInfo_ByDateDifficulty: TFloatField;
    Get_InstructorExamInfo_ByDateDiscrimination: TFloatField;
    Get_InstructorExamInfo_ByDateStandardError: TFloatField;
    Get_InstructorExamInfo_ByDateAlpha: TFloatField;
    Get_InstructorExamInfo_ByDateExamVariance: TFloatField;
    Get_InstructorExamInfo_ByDateNumberOf_1item_Question: TSmallintField;
    Get_InstructorExamInfo_ByDateNumberOf_2item_Question: TSmallintField;
    Get_InstructorExamInfo_ByDateNumberOf_3item_Question: TSmallintField;
    Get_InstructorExamInfo_ByDateNumberOf_4item_Question: TSmallintField;
    Get_InstructorExamInfo_ByDateNumberOf_5item_Question: TSmallintField;
    Get_InstructorExamInfo_ByDateRPBIS: TFloatField;
    Get_InstructorExamInfo_ByDateTermCode: TStringField;
    Get_InstructorExamInfo_ByDateCourseCode: TStringField;
    Get_InstructorExamInfo_ByDateCourseTitle: TWideStringField;
    Get_InstructorExamInfo_ByDateCourseTermCode: TStringField;
    Get_InstructorExamInfo_ByDateGrourpCode: TStringField;
    Get_InstructorExamInfo_ByDateStartDate: TStringField;
    Get_InstructorExamInfo_ByDateTrainingCourseID: TAutoIncField;
    Get_InstructorExamInfo_ByDateTotal_avgmark: TFloatField;
    Get_InstructorExamInfo_ByDateTotal_minmark: TFloatField;
    Get_InstructorExamInfo_ByDateTotal_maxmark: TFloatField;
    Get_InstructorExamInfo_ByDateTotal_varmark: TFloatField;
    Get_InstructorExamInfo_ByDateTotal_AcceptedCount: TIntegerField;
    Get_InstructorExamInfo_ByDateTotal_AllCount: TIntegerField;
    Get_InstructorExamInfo_ByDateavgmark: TFloatField;
    Get_InstructorExamInfo_ByDateminmark: TFloatField;
    Get_InstructorExamInfo_ByDatemaxmark: TFloatField;
    Get_InstructorExamInfo_ByDatevarmark: TFloatField;
    Get_InstructorExamInfo_ByDateAcceptedCount: TIntegerField;
    Get_InstructorExamInfo_ByDateAllCount: TIntegerField;
    Get_InstructorExamInfo_ByDateKR20: TFloatField;
    procedure Button6Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure RefreshQuery(TeacherID:integer;Examid:integer);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure Get_InstructorExamInfo_ByDateAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
   private
    gTeacherID:integer;gExamid:integer;
    { Private declarations }
   public
      constructor create(AOwner: TComponent;TeacherID:integer = 0;Examid:integer = 0);reintroduce;virtual;


    { Private declarations }
  end;

var
  FrInstructorExamInfo_byDate: TFrInstructorExamInfo_byDate;

implementation

uses dmu, Math;


{$R *.dfm}
procedure TFrInstructorExamInfo_byDate.Button6Click(Sender: TObject);
begin
YDBGrid1.CustomizePrint;
end;

procedure TFrInstructorExamInfo_byDate.Button3Click(Sender: TObject);
begin
YDBGrid1.ExportToWord;

end;

procedure TFrInstructorExamInfo_byDate.Button4Click(Sender: TObject);
begin
YDBGrid1.ExportToExcel;

end;

procedure TFrInstructorExamInfo_byDate.Button5Click(Sender: TObject);
begin
close;
end;

procedure TFrInstructorExamInfo_byDate.RefreshQuery(TeacherID:integer;Examid:integer);
begin
  inherited;
 with Get_InstructorExamInfo_ByDate do
  begin
    Close;
    Parameters.ParamByName('@TeacherID').Value:=TeacherID ;
    Parameters.ParamByName('@ExamID').Value:=ExamID ;
    Parameters.ParamByName('@BeginExamDate').Value:=BeginExamDate.Text;
    Parameters.ParamByName('@EndExamDate').Value:=EndExamDate.Text;
    Open;
     Number.Caption:='йзого:'+IntToStr(RecordCount);
  end;
end;

procedure TFrInstructorExamInfo_byDate.xpBitBtn1Click(Sender: TObject);
begin
  inherited;
RefreshQuery(gTeacherID,gExamid);
end;

procedure TFrInstructorExamInfo_byDate.Get_InstructorExamInfo_ByDateAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
 with Select_Applicant_by_Examid_TrainingCourseID do
  begin
    Close;
    Parameters.ParamByName('@TrainingCourseID').Value:=Get_InstructorExamInfo_ByDateTrainingCourseID.AsInteger ;
    Parameters.ParamByName('@ExamID').Value:=Get_InstructorExamInfo_ByDateExamID.asinteger;
    Open;
     Number.Caption:='йзого:'+IntToStr(RecordCount);
  end;


end;

procedure TFrInstructorExamInfo_byDate.FormCreate(Sender: TObject);
begin
  inherited;
gExamid:=0;
end;

constructor TFrInstructorExamInfo_byDate.create(AOwner: TComponent;
  TeacherID, Examid: integer);
begin
  inherited create(AOwner);
  gTeacherID  := TeacherID;
  gExamid     := Examid;

end;

procedure TFrInstructorExamInfo_byDate.FormShow(Sender: TObject);
begin
  inherited;
  RefreshQuery(gTeacherID, gExamid);
end;

end.
