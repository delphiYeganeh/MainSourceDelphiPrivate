unit UMainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, XPStyleActnCtrls, ActnMan, Menus,adodb,db, ExtDlgs,
  ExtCtrls, ComCtrls, StdCtrls, Buttons, Grids, DBGrids, YDbgrid, xpBitBtn,
  YWhereEdit, Mask, shellApi,DBCtrls, ActnColorMaps, ToolWin, ActnCtrls, xpPages,
  BaseUnit, xpWindow, FolderDialog;

type
  TMainForm = class(TMBaseForm)
    ActionManager: TActionManager;
    Aclose: TAction;
    AStudentInput: TAction;
    AEditTemplates: TAction;
    OpenPictureDialog: TOpenPictureDialog;
    AInputExam: TAction;
    AApplicantExamInput: TAction;
    Action1: TAction;
    AquestionReport: TAction;
    AExamDetail: TAction;
    AFormatText: TAction;
    Astudent: TAction;
    ATeacherInput: TAction;
    AGet_StnoExam: TAction;
    ACourseInput: TAction;
    AmajorInput: TAction;
    AStudentImport: TAction;
    AExamRefresh: TAction;
    AEditExam: TAction;
    XPColorMap: TXPColorMap;
    AExamReport: TAction;
    Adelete_Exam: TAction;
    AGrading: TAction;
    mainPageControl: TxpPageControl;
    xpTabSheet1: TxpTabSheet;
    xpTabSheet3 : TxpTabSheet;
    xpTabSheet4: TxpTabSheet;
    xpTabSheet5: TxpTabSheet;
    xpTabSheet6: TxpTabSheet;
    xpTabSheet7: TxpTabSheet;
    Panel1: TPanel;
    xpBitBtn7: TxpBitBtn;
    xpBitBtn8: TxpBitBtn;
    xpBitBtn11: TxpBitBtn;
    xpBitBtn12: TxpBitBtn;
    xpBitBtn13: TxpBitBtn;
    Panel2: TPanel;
    ExamGrid: TYDBGrid;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel5: TPanel;
    YWhereEdit1: TYWhereEdit;
    YWhereEdit2: TYWhereEdit;
    YWhereEdit3: TYWhereEdit;
    YWhereEdit4: TYWhereEdit;
    xpBitBtn1: TxpBitBtn;
    xpBitBtn2: TxpBitBtn;
    xpBitBtn6: TxpBitBtn;
    xpBitBtn10: TxpBitBtn;
    xpBitBtn14: TxpBitBtn;
    xpBitBtn16: TxpBitBtn;
    xpBitBtn17: TxpBitBtn;
    xpBitBtn18: TxpBitBtn;
    StatusBar: TStatusBar;
    Panel4: TPanel;
    Panel6: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Panel7: TPanel;
    YWhereEdit9: TYWhereEdit;
    YWhereEdit6: TYWhereEdit;
    YWhereEdit8: TYWhereEdit;
    btnSearchQuestion: TxpBitBtn;
    xpBitBtn32: TxpBitBtn;
    QuestionGrid: TYDBGrid;
    Button6: TxpBitBtn;
    Button7: TxpBitBtn;
    Panel9: TPanel;
    xpBitBtn19: TxpBitBtn;
    Panel10: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Panel11: TPanel;
    YWhereEdit13: TYWhereEdit;
    YWhereEdit10: TYWhereEdit;
    YWhereEdit11: TYWhereEdit;
    YWhereEdit12: TYWhereEdit;
    xpBitBtn20: TxpBitBtn;
    xpBitBtn21: TxpBitBtn;
    btnGetStno: TxpBitBtn;
    Panel8: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Panel12: TPanel;
    xpBitBtn3: TxpBitBtn;
    xpBitBtn4: TxpBitBtn;
    xpBitBtn9: TxpBitBtn;
    Label9: TLabel;
    AviewExamKey: TAction;
    dfds: TxpBitBtn;
    Label14: TLabel;
    YWhereEdit5: TYWhereEdit;
    ArefreshQuestion: TAction;
    xpBitBtn23: TxpBitBtn;
    ArefreshApplicant: TAction;
    AExamMarkList: TAction;
    Panel13: TPanel;
    YDBGrid1: TYDBGrid;
    Panel14: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    Panel15: TPanel;
    YWhereEdit14: TYWhereEdit;
    YWhereEdit15: TYWhereEdit;
    btnTeacherSearch: TxpBitBtn;
    xpBitBtn27: TxpBitBtn;
    ADisignerTeacher: TAction;
    ArefreshTeacher: TAction;
    DBText1: TDBText;
    AImport_Amoozesh: TAction;
    aimport: TxpBitBtn;
    cb_ApplicantCurrentExam: TCheckBox;
    xpBitBtn24: TxpBitBtn;
    xpBitBtn25: TxpBitBtn;
    Panel16: TPanel;
    Panel17: TPanel;
    xpBitBtn28: TxpBitBtn;
    xpBitBtn29: TxpBitBtn;
    YDBGrid2: TYDBGrid;
    Panel18: TPanel;
    xpBitBtn34: TxpBitBtn;
    Number: TLabel;
    Acourse: TAction;
    cb_CourceCurrentExam: TCheckBox;
    ARefreshCourse: TAction;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    YWhereEdit18: TYWhereEdit;
    YWhereEdit19: TYWhereEdit;
    YWhereEdit20: TYWhereEdit;
    YWhereEdit21: TYWhereEdit;
    YWhereEdit22: TYWhereEdit;
    xpBitBtn30: TxpBitBtn;
    AAplicantCourse: TAction;
    xpBitBtn33: TxpBitBtn;
    ACourseApplicant: TAction;
    xpBitBtn35: TxpBitBtn;
    xpBitBtn36: TxpBitBtn;
    xpBitBtn46: TxpBitBtn;
    xpBitBtn48: TxpBitBtn;
    xpBitBtn5: TxpBitBtn;
    AInputMajor: TAction;
    AApplicantExamInfo_byDate: TAction;
    AFixForm: TAction;
    xpBitBtn37: TxpBitBtn;
    AInputCourse: TAction;
    ATeacherExamInfo: TAction;
    xpBitBtn38: TxpBitBtn;
    xpBitBtn39: TxpBitBtn;
    AInstrctorExamInfo: TAction;
    xpBitBtn40: TxpBitBtn;
    xpBitBtn42: TxpBitBtn;
    ATeacherCurrentExamInfo: TAction;
    AInstrctorCurrentExamInfo: TAction;
    xpTabSheet2: TxpTabSheet;
    Panel19: TPanel;
    xpBitBtn43: TxpBitBtn;
    xpBitBtn44: TxpBitBtn;
    Panel20: TPanel;
    Label19: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Panel21: TPanel;
    YWhereEdit25: TYWhereEdit;
    YWhereEdit24: TYWhereEdit;
    YWhereEdit23: TYWhereEdit;
    xpBitBtn45: TxpBitBtn;
    xpBitBtn47: TxpBitBtn;
    YDBGrid3: TYDBGrid;
    xpBitBtn49: TxpBitBtn;
    AExamQuestionEdit: TAction;
    AAddQuestionBody: TAction;
    RefreshAction: TAction;
    AAccess: TAction;
    AAddUser: TAction;
    xpBitBtn52: TxpBitBtn;
    xpBitBtn51: TxpBitBtn;
    Label27: TLabel;
    YWhereEdit16: TYWhereEdit;
    ARefreshQuestionBody: TAction;
    xpBitBtn15: TxpBitBtn;
    xpBitBtn41: TxpBitBtn;
    AEditQuestionBody: TAction;
    AViewQuestionBody: TAction;
    AdeleteQuestionBody: TAction;
    Action3: TAction;
    APrintQuestion: TAction;
    xpBitBtn50: TxpBitBtn;
    SpeedButton5: TSpeedButton;
    xpBitBtn53: TxpBitBtn;
    AAddSubCourse: TAction;
    xpBitBtn54: TxpBitBtn;
    ATrainingCourseRep: TAction;
    xpBitBtn59: TxpBitBtn;
    xpBitBtn61: TxpBitBtn;
    xpBitBtn56: TxpBitBtn;
    xpBitBtn57: TxpBitBtn;
    xpBitBtn55: TxpBitBtn;
    ApplicantGrid: TYDBGrid;
    xpBitBtn58: TxpBitBtn;
    OpenDialog: TOpenDialog;
    xpBitBtn60: TxpBitBtn;
    xpBitBtn62: TxpBitBtn;
    xpBitBtn22: TxpBitBtn;
    xpBitBtn26: TxpBitBtn;
    ATrainingCources: TAction;
    xpBitBtn31: TxpBitBtn;
    xpBitBtn63: TxpBitBtn;
    aUApplicantImport: TAction;
    xpBitBtn64: TxpBitBtn;
    xpBitBtn65: TxpBitBtn;
    xpBitBtn66: TxpBitBtn;
    Label7: TLabel;
    YWhereEdit7: TYWhereEdit;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    ActionList1: TActionList;
    Action2: TAction;
    xpBitBtn67: TxpBitBtn;
    FolderDialog1: TFolderDialog;
    ImportPicture: TAction;
    xpBitBtn68: TxpBitBtn;
    aUApplicantImportNew: TAction;
    procedure AcloseExecute(Sender: TObject);
    procedure ABuyFormatExecute(Sender: TObject);
    procedure ASupplementalOperationExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AInputExamExecute(Sender: TObject);
    procedure AApplicantExamInputExecute(Sender: TObject);
    procedure AquestionReportExecute(Sender: TObject);
    procedure AExamDetailExecute(Sender: TObject);
    procedure AFormatTextExecute(Sender: TObject);
    procedure AstudentExecute(Sender: TObject);
    procedure AGet_StnoExamExecute(Sender: TObject);
    procedure AStudentImportExecute(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure xpBitBtn2Click(Sender: TObject);
    procedure AExamRefreshExecute(Sender: TObject);
    procedure AEditExamExecute(Sender: TObject);
    procedure AExamReportExecute(Sender: TObject);
    procedure Adelete_ExamExecute(Sender: TObject);
    procedure AGradingExecute(Sender: TObject);
    procedure xpBitBtn6Click(Sender: TObject);
    procedure xpBitBtnClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    function ActiveGrid:TYDBGrid;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure AviewExamKeyExecute(Sender: TObject);
    procedure ArefreshQuestionExecute(Sender: TObject);
    procedure ArefreshApplicantExecute(Sender: TObject);
    procedure AExamMarkListExecute(Sender: TObject);
    procedure ADisignerTeacherExecute(Sender: TObject);
    procedure ArefreshTeacherExecute(Sender: TObject);
    procedure AEditTemplatesExecute(Sender: TObject);
    procedure AImport_AmoozeshExecute(Sender: TObject);
    procedure xpBitBtn21Click(Sender: TObject);
    procedure xpBitBtn20Click(Sender: TObject);
    procedure xpBitBtn24Click(Sender: TObject);
    procedure xpBitBtn25Click(Sender: TObject);
    procedure btnSearchQuestionClick(Sender: TObject);
    procedure xpBitBtn32Click(Sender: TObject);
    procedure xpBitBtn34Click(Sender: TObject);
    procedure AcourseExecute(Sender: TObject);
    procedure ARefreshCourseExecute(Sender: TObject);
    procedure xpBitBtn28Click(Sender: TObject);
    procedure AAplicantCourseExecute(Sender: TObject);
    procedure ACourseApplicantExecute(Sender: TObject);
    procedure AInputMajorExecute(Sender: TObject);
    procedure ABackupExecute(Sender: TObject);
    procedure AShrinckExecute(Sender: TObject);
    procedure AApplicantExamInfo_byDateExecute(Sender: TObject);
    procedure AFixFormExecute(Sender: TObject);
    procedure AInputCourseExecute(Sender: TObject);
    procedure btnTeacherSearchClick(Sender: TObject);
    procedure xpBitBtn27Click(Sender: TObject);
    procedure ATeacherExamInfoExecute(Sender: TObject);
    procedure AInstrctorExamInfoExecute(Sender: TObject);
    procedure ATeacherCurrentExamInfoExecute(Sender: TObject);
    procedure AInstrctorCurrentExamInfoExecute(Sender: TObject);
    procedure AExamQuestionEditExecute(Sender: TObject);
    procedure AAddQuestionBodyExecute(Sender: TObject);
    procedure RefreshActionExecute(Sender: TObject);
    procedure AAccessExecute(Sender: TObject);
    procedure AAddUserExecute(Sender: TObject);
    procedure xpBitBtn45Click(Sender: TObject);
    procedure xpBitBtn47Click(Sender: TObject);
    procedure ARefreshQuestionBodyExecute(Sender: TObject);
    procedure AEditQuestionBodyExecute(Sender: TObject);
    procedure AViewQuestionBodyExecute(Sender: TObject);
    procedure AdeleteQuestionBodyExecute(Sender: TObject);
    procedure APrintQuestionExecute(Sender: TObject);
    procedure xpBitBtn50Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure AAddSubCourseExecute(Sender: TObject);
    procedure ATrainingCourseRepExecute(Sender: TObject);
    procedure xpBitBtn59Click(Sender: TObject);
    procedure xpBitBtn61Click(Sender: TObject);
    procedure xpBitBtn57Click(Sender: TObject);
    procedure xpBitBtn56Click(Sender: TObject);
    procedure xpBitBtn55Click(Sender: TObject);
    procedure xpBitBtn58Click(Sender: TObject);
    procedure xpBitBtn16Click(Sender: TObject);
    procedure xpBitBtn17Click(Sender: TObject);
    procedure xpBitBtn60Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure xpBitBtn62Click(Sender: TObject);
    procedure xpBitBtn29Click(Sender: TObject);
    procedure xpBitBtn22Click(Sender: TObject);
    procedure YWhereEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ATrainingCourcesExecute(Sender: TObject);
    procedure xpBitBtn31Click(Sender: TObject);
    procedure CustomFieldsRefresh;
    procedure LoadGrids;
    procedure xpBitBtn63Click(Sender: TObject);
    procedure aUApplicantImportExecute(Sender: TObject);
    procedure xpBitBtn65Click(Sender: TObject);
    procedure xpBitBtn66Click(Sender: TObject);
    procedure mainPageControlChange(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure ImportPictureExecute(Sender: TObject);
    procedure aUApplicantImportNewExecute(Sender: TObject);
    procedure xpBitBtn67Click(Sender: TObject);
  private

  public
  
  end;

Var
   MainForm: TMainForm;

implementation

uses Dmu,FrInputFix, backupF,
     UInputTemplate,UFrLogin,UInputExam,UApplicantExamInput,
     UQuestionReport,UExamReport, UTextFormat,  UGetStudentExam,
     UImportStudents,UExamDetails, BusinessLayer, UCalcExam, ULetterTemplate,
     UEditQuestion,UviewExamKey, UApplicantExamInfo, UInputApplicant,
     UInputTeacher,UApplicantUpdate, UApplicantCourse, UinputMajor,
     UApplicantExamInfo_byDate, UFixForm, UInputCourse,
     UTeacherExamInfo_byDate, UInstructorExamInfo_byDate, UExamQuestionEdit,
     UAddQuestionBody, UAccessInput, UADDUser, UApplicantQuestionRep,
     UAddSubCourse, UTraningCourseRep, UEditQuestionBodyTemplate,
     UExamDetailLog, FmGroupImport, SystemSettingU, AddTeacherUnit,
  uCustomFields, uGroupExam, UApplicantImport, uExamEqualQuestion,
  uExamDetailLogList, U_ROND_INF_FRM, U_VERSION_INFO_FRM, UImportPicture,
  UApplicantImportNew, UntSearchDataSet;

{$R *.dfm}

var ExamWhere,QuestionWhere,QuestionBodyWhere,ApplicantWhere ,
    TeacherWhere,TrainingCourseWhere : string;
    SubCourseID:integer;

procedure TMainForm.AcloseExecute(Sender: TObject);
begin
  close;
end;

procedure TMainForm.ABuyFormatExecute(Sender: TObject);
begin
  FfixInput:=TFfixInput.Create(Application);
  FfixInput.Table:=dm.Faculty;
  FfixInput.Caption:='���Ԙ�� ��';
  FfixInput.ShowModal;
end;

procedure TMainForm.ASupplementalOperationExecute(Sender: TObject);
begin
  FfixInput:=TFfixInput.Create(Application);
  FfixInput.Table:=dm.ExamType;
  FfixInput.Caption:='��� �����';
  FfixInput.ShowModal;
end;


procedure TMainForm.FormShow(Sender: TObject);
begin
   { TODO -oparsa : 14030611task355 }
   StatusBar.Hint := 'Last up date '+_Last_Update;
   StatusBar.Panels.Items[0].Text := _App_Version;
   StatusBar.Panels.Items[3].Text := '�����  ����� ������ : '+_Last_Update ;
   { TODO -oparsa : 14030611task355 }
   LoadGrids;
   CustomFieldsRefresh;
   mainPageControl.ActivePageIndex:=6;
   dm.EnabledButtonExecute;
   AExamRefresh.Execute;
   //Comment  Sanaye 950321
   //��� ��� ���� ����� ј��� �� ���� ����
   //xpBitBtn28Click(self);
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  Hide;
  FrLogin:=TFrLogin.Create(Self);
  FrLogin.ShowModal ;
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if MessageDlg('��� �� ������ ���� ����',mtWarning,[mbyes,mbno],0)=mryes then
  begin
    ExamGrid.Columns.SaveToFile(ExtractFilePath(Application.ExeName)+'ExamGrid.YGN');
    QuestionGrid.Columns.SaveToFile(ExtractFilePath(Application.ExeName)+'QuestionGrid.YGN');
    YDBGrid2.Columns.SaveToFile(ExtractFilePath(Application.ExeName)+'YDBGrid2.YGN');
    YDBGrid1.Columns.SaveToFile(ExtractFilePath(Application.ExeName)+'YDBGrid1.YGN');
    ApplicantGrid.Columns.SaveToFile(ExtractFilePath(Application.ExeName)+'ApplicantGrid.YGN');
    Application.Terminate;
  end
  else Abort;

end;

procedure TMainForm.AInputExamExecute(Sender: TObject);
begin
  FInputExam:=TFInputExam.Create(Application,0);
  FInputExam.ShowModal;
  AExamRefresh.Execute;
end;

procedure TMainForm.AApplicantExamInputExecute(Sender: TObject);
begin
  FApplicantExamInput:=TFApplicantExamInput.Create(Application);
  FApplicantExamInput.ShowModal;
end;

procedure TMainForm.AquestionReportExecute(Sender: TObject);
begin
  ArefreshQuestion.Execute;

  mainPageControl.ActivePageIndex:=5;
  QuestionGrid.PrintTitle:='������� ������ ������� ����� '+dm.Browse_ExamExamTitle.AsString;
end;

procedure TMainForm.AExamDetailExecute(Sender: TObject);
begin
  FrExamDetails:=TFrExamDetails.Create(Application);
  FrExamDetails.ShowModal;
end;

procedure TMainForm.AFormatTextExecute(Sender: TObject);
begin
  FrTextFormat:=TFrTextFormat.Create(Application);
  FrTextFormat.ShowModal;

end;

procedure TMainForm.AstudentExecute(Sender: TObject);
begin
  ApplicantWhere:=' (Applicant.ApplicantID in (SELECT  ApplicantID FROM  ApplicantExam WHERE  ExamID='+Dm.Browse_ExamExamID.AsString+'))';
  cb_ApplicantCurrentExam.Checked:=true;
  ArefreshApplicant.Execute;
  mainPageControl.ActivePageIndex:=2;
end;

procedure TMainForm.AGet_StnoExamExecute(Sender: TObject);
begin
  if dm.Select_Applicant_by_Where.Active <> true then exit;

  FrGet_StnoExam:=TFrGet_StnoExam.Create(Application,dm.Select_Applicant_by_WhereApplicantCode.AsString);
  FrGet_StnoExam.ShowModal;

end;

procedure TMainForm.AStudentImportExecute(Sender: TObject);
begin
  FrImportStudents:=TFrImportStudents.Create(Application);
  FrImportStudents.ShowModal;
end;

procedure TMainForm.xpBitBtn1Click(Sender: TObject);
 var  i: byte;
begin
  ExamWhere:='';
  for i:=1 to 7 do
   if TYWhereEdit(FindComponent('YWhereEdit'+IntToStr(i))).Resultwhere<>'' then
    if ExamWhere='' then
      ExamWhere:=TYWhereEdit(FindComponent('YWhereEdit'+IntToStr(i))).Resultwhere
    else
      ExamWhere:=ExamWhere +' and '+TYWhereEdit(FindComponent('YWhereEdit'+IntToStr(i))).Resultwhere;
   AExamRefresh.Execute;
end;

procedure TMainForm.xpBitBtn2Click(Sender: TObject);
 var  i: byte;
begin
  for i:=1 to 5 do
   TYWhereEdit(FindComponent('YWhereEdit'+IntToStr(i))).Text:=''

end;

procedure TMainForm.AExamRefreshExecute(Sender: TObject);
var i: integer;
begin
  with dm,Browse_Exam do
  begin
    if Active then i:=Browse_ExamExamID.AsInteger;
    
    close;
    Parameters.ParamByName('@Where').Value:=examWhere;
    Open;
    Number.Caption:=' ����� : ' + IntToStr(RecordCount);
    Locate('Examid',i,[]);
  end;
    //1
end;

procedure TMainForm.AEditExamExecute(Sender: TObject);
begin
  FInputExam:=TFInputExam.Create(Application,dm.Browse_ExamExamID.AsInteger);
  FInputExam.ShowModal;
  AExamRefresh.Execute;

end;

procedure TMainForm.AExamReportExecute(Sender: TObject);
begin
   FrExamReport:=TFrExamReport.Create(Application);
   FrExamReport.ShowModal;
end;

procedure TMainForm.Adelete_ExamExecute(Sender: TObject);
begin
  if MessageDlg('��� �� ��� ��� ����� ����� �����',mtConfirmation,[mbyes,mbno],0)=mryes then
  begin
    Exec_delete_Exam(dm.Browse_ExamExamID.AsInteger);
    AExamRefresh.Execute;
  end;
end;

procedure TMainForm.AGradingExecute(Sender: TObject);
begin
  FrCalcExam:=TFrCalcExam.Create(Application,Dm.Browse_ExamExamID.AsInteger);
  FrCalcExam.ShowModal;

end;

procedure TMainForm.xpBitBtn6Click(Sender: TObject);
begin
  AInputExam.Execute;
end;

procedure TMainForm.xpBitBtnClick(Sender: TObject);
BEGIN
  TxpBitBtn(sender).action.Execute ;
end;

procedure TMainForm.Button6Click(Sender: TObject);
 var qid: integer;
begin
  inherited;
  if not dm.Select_Question_By_ExamID_and_Where.Active then
        btnSearchQuestion.OnClick(Sender);
  qid:=dm.Select_Question_By_ExamID_and_WhereQuestionID.AsInteger;
  with dm,Select_Question do
   begin
     close;
     Parameters.ParamByName('@questionID').Value:=qid;
     Open;
     edit;
   end;

  FrEditQuestion:= TFrEditQuestion.Create(Application);
  FrEditQuestion.ShowModal;
  ArefreshQuestion.Execute;

  dm.Select_Question_By_ExamID_and_Where.Locate('Questionid',qid,[])

 end;


procedure TMainForm.Button7Click(Sender: TObject);
begin
  FLetterTemplate:=TFletterTemplate.Create(Application,DM.Select_Question_By_ExamID_and_Where,false);
  FletterTemplate.ShowModal;
end;

function TMainForm.ActiveGrid:TYDBGrid;
begin
  case mainPageControl.ActivePageIndex of
   6 :Result:=ExamGrid;
   5 :Result:=QuestionGrid;
   2 :Result:=ApplicantGrid;
  end
end;

procedure TMainForm.SpeedButton1Click(Sender: TObject);
begin
 // Application.BiDiKeyboard:= '00020409';//00000429 �����
  ActiveGrid.ExportToWord;
end;

procedure TMainForm.SpeedButton2Click(Sender: TObject);
begin
  ActiveGrid.Print;
end;

procedure TMainForm.SpeedButton3Click(Sender: TObject);
begin
  ActiveGrid.ExportToExcel;
end;

procedure TMainForm.SpeedButton4Click(Sender: TObject);
begin
  ActiveGrid.CustomizePrint;
end;

procedure TMainForm.AviewExamKeyExecute(Sender: TObject);
begin
  FrViewExamKey:=TFrViewExamKey.Create(Application);
//FrViewExamKey.Destroy;
end;

procedure TMainForm.ArefreshQuestionExecute(Sender: TObject);
 var i: integer;
begin
  with dm,Select_Question_By_ExamID_and_Where do
  begin
    if Active then i:=Select_Question_By_ExamID_and_WhereQuestionID.AsInteger;
    close;
    Parameters.ParamByName('@ExamID').Value:=dm.Browse_ExamExamID.AsInteger;
    Parameters.ParamByName('@Where').Value:=QuestionWhere;
    Open;
    Locate('QuestionID',i,[]);
    Number.Caption:=' ����� : ' + IntToStr(RecordCount);
    //2
  end;
end;


procedure TMainForm.ArefreshApplicantExecute(Sender: TObject);
 var i: integer;
begin
  with dm,Select_Applicant_by_Where do
  begin
    if Active then i:=Select_Applicant_by_WhereApplicantID.AsInteger;
    Close;
    Parameters.ParamByName('@where').Value:=ApplicantWhere;
    Open;
    Number.Caption:=' ����� : ' + IntToStr(RecordCount);

    ApplicantGrid.SelectedRows.CurrentRowSelected := False;
    Locate('ApplicantID',i ,  [loPartialKey]);
    ApplicantGrid.SelectedRows.CurrentRowSelected := true;

    //Locate('ApplicantID',i,[]);

    //3
  end;
end;

procedure TMainForm.AExamMarkListExecute(Sender: TObject);
begin
  FrApplicantExam:=TFrApplicantExam.create(Application);
  FrApplicantExam.ShowModal;
end;

procedure TMainForm.ADisignerTeacherExecute(Sender: TObject);
begin
   TeacherWhere:='TeacherID in (select distinct DesignerTeacherID from Question where ExamID='+dm.Browse_ExamExamID.AsString+')';
   ArefreshTeacher.Execute;
   mainPageControl.ActivePageIndex:=3;
end;

procedure TMainForm.ArefreshTeacherExecute(Sender: TObject);
 var i: integer;
begin
  with dm,select_teacher_by_where do
  begin
    if Active then i:=select_teacher_by_whereTeacherID.AsInteger;
    close;
    Parameters.ParamByName('@where').Value:=TeacherWhere;
    Open;
    Number.Caption:=' ����� : ' + IntToStr(RecordCount);
    Locate('TeacherID',i,[]);
    //4
  end;
end;

procedure TMainForm.AEditTemplatesExecute(Sender: TObject);
begin
  EditTemplates:=TEditTemplates.Create(Application);
  EditTemplates.ShowModal;
end;

procedure TMainForm.AImport_AmoozeshExecute(Sender: TObject);
begin
  FrImportStudents:=TFrImportStudents.Create(Application);
  FrImportStudents.ShowModal;

end;

procedure TMainForm.xpBitBtn21Click(Sender: TObject);
 var  i: byte;
begin
  for i:=10 to 13 do
   TYWhereEdit(FindComponent('YWhereEdit'+IntToStr(i))).Text:=''

end;

procedure TMainForm.xpBitBtn20Click(Sender: TObject);
 var  i: byte;
begin

  if cb_ApplicantCurrentExam.Checked then
  begin
    if (Dm.Browse_ExamExamID.AsString <> '') then
       ApplicantWhere:= ' (Applicant.ApplicantID in (SELECT  ApplicantID FROM  ApplicantExam WHERE  ExamID='+Dm.Browse_ExamExamID.AsString+'))';
  end
  else  ApplicantWhere:= '';

  for i:=10 to 13 do
  if TYWhereEdit(FindComponent('YWhereEdit'+IntToStr(i))).Resultwhere<>'' then
    if ApplicantWhere='' then
      ApplicantWhere:=TYWhereEdit(FindComponent('YWhereEdit'+IntToStr(i))).Resultwhere
    else
      ApplicantWhere:=ApplicantWhere +' and '+TYWhereEdit(FindComponent('YWhereEdit'+IntToStr(i))).Resultwhere;
  ArefreshApplicant.Execute;
end;


procedure TMainForm.xpBitBtn24Click(Sender: TObject);
begin
  FrInputApplicant:=TFrInputApplicant.Create(Application,dm.Select_Applicant_by_WhereApplicantID.AsInteger);
  FrInputApplicant.ShowModal;
  ArefreshApplicant.Execute;

end;

procedure TMainForm.xpBitBtn25Click(Sender: TObject);
begin
  if not Dm.select_teacher_by_where.Active then
    btnTeacherSearchClick(Sender);

  with TFrInputTeacher.Create(Application,dm.select_teacher_by_whereTeacherID.AsInteger) do
  begin
     ShowModal;
  end;
  ArefreshApplicant.Execute;
end;

procedure TMainForm.btnSearchQuestionClick(Sender: TObject);
 var  i: byte;
begin
//if cb_QuestionCureentExam.Checked then
  if Dm.Browse_ExamExamID.AsString <> '' then
    QuestionWhere:= ' (Question.ExamID='+Dm.Browse_ExamExamID.AsString+')'
  else QuestionWhere:='';

  for i:=6 to 9 do
   if TYWhereEdit(FindComponent('YWhereEdit'+IntToStr(i))).Resultwhere<>'' then
    if QuestionWhere='' then
      QuestionWhere:=TYWhereEdit(FindComponent('YWhereEdit'+IntToStr(i))).Resultwhere
    else
      QuestionWhere:=QuestionWhere +' and '+TYWhereEdit(FindComponent('YWhereEdit'+IntToStr(i))).Resultwhere;
   ArefreshQuestion.Execute;
end;

procedure TMainForm.xpBitBtn32Click(Sender: TObject);
 var  i: byte;
begin
  for i:=6 to 9 do
    TYWhereEdit(FindComponent('YWhereEdit'+IntToStr(i))).Text:=''

end;

procedure TMainForm.xpBitBtn34Click(Sender: TObject);
begin
  with TFUpdateApplicant.Create(ApplicantGrid) do
  begin
    ShowModal;
  end;
end;

procedure TMainForm.AcourseExecute(Sender: TObject);
begin
{ TrainingCourseWhere:='  TrainingCourse.ExamID='+Dm.Browse_ExamExamID.AsString;
 cb_CourceCurrentExam.Checked:=true;
 ARefreshCourse.Execute;
 mainPageControl.ActivePageIndex:=4; }
 

end;

procedure TMainForm.ARefreshCourseExecute(Sender: TObject);
 var i: integer;
begin
  with dm,Select_TrainingCourse_By_Where do
  begin
    if Active then i:=Select_TrainingCourse_By_WhereTrainingCourseID.AsInteger;
    Close;
    Parameters.ParamByName('@where').Value:=TrainingCourseWhere;
    Open;
    Number.Caption:=' ����� : ' + IntToStr(RecordCount);
    Locate('TrainingCourseID',i,[]);
    //5
  end;

end;

procedure TMainForm.xpBitBtn28Click(Sender: TObject);
 var  i: byte;
begin
  if cb_CourceCurrentExam.Checked then
  begin
  if (Dm.Browse_ExamExamID.AsString <> '') then
   TrainingCourseWhere:= ' TrainingCourse.ExamID='+Dm.Browse_ExamExamID.AsString;
  end
  else TrainingCourseWhere:='';

  for i:=18 to 22 do
   if TYWhereEdit(FindComponent('YWhereEdit'+IntToStr(i))).Resultwhere<>'' then
    if TrainingCourseWhere='' then
      TrainingCourseWhere:=TYWhereEdit(FindComponent('YWhereEdit'+IntToStr(i))).Resultwhere
    else
      TrainingCourseWhere:=TrainingCourseWhere +' and '+TYWhereEdit(FindComponent('YWhereEdit'+IntToStr(i))).Resultwhere;
  ARefreshCourse.Execute;
end;

procedure TMainForm.AAplicantCourseExecute(Sender: TObject);
begin

  with TfrApplicantCourse.create(Application) do
  Begin
    frApplicantCourse.ShowModal;
  End;

end;

procedure TMainForm.ACourseApplicantExecute(Sender: TObject);
begin
  ApplicantWhere:=' (ApplicantID in (SELECT  ApplicantID  FROM  ApplicantCourse WHERE   TrainingCourseID = '+
  Dm.Select_TrainingCourse_By_WhereTrainingCourseID.AsString+'))';
  cb_ApplicantCurrentExam.Checked:=true;
  ArefreshApplicant.Execute;
  mainPageControl.ActivePageIndex:=2;

end;

procedure TMainForm.AInputMajorExecute(Sender: TObject);
begin
  with  TFrinputMajor.Create(Application) do
  begin
    ShowModal
  end;
end;

procedure TMainForm.ABackupExecute(Sender: TObject);
begin
  BackupRestore:=TBackupRestore.Create(Application);
  BackupRestore.Mode:=backup;
  BackupRestore.ShowModal;
end;


procedure TMainForm.AShrinckExecute(Sender: TObject);
begin
  BackupRestore:=TBackupRestore.Create(Application);
  BackupRestore.Mode:=shrink;
  BackupRestore.ShowModal;
end;

procedure TMainForm.AApplicantExamInfo_byDateExecute(Sender: TObject);
begin
  if not dm.Select_Applicant_by_Where.IsEmpty then
  begin
    FrApplicantExamInfo_byDate:=TFrApplicantExamInfo_byDate.create(Application);
    FrApplicantExamInfo_byDate.gApplicantID:=dm.Select_Applicant_by_WhereApplicantID.AsInteger;
    FrApplicantExamInfo_byDate.ShowModal;
  end
  else
      ShowMessage('����� ���� � ���� �� ������ ������');
end;

procedure TMainForm.AFixFormExecute(Sender: TObject);
begin
  TFrFixForm.Create(Application).ShowModal;
end;

procedure TMainForm.AInputCourseExecute(Sender: TObject);
begin
  FrInputCourse:=TFrInputCourse.Create(Application);
  FrInputCourse.ShowModal;
end;

procedure TMainForm.btnTeacherSearchClick(Sender: TObject);
 var  i: byte;
begin
  TeacherWhere:= '';

  for i:=14 to 15 do
   if TYWhereEdit(FindComponent('YWhereEdit'+IntToStr(i))).Resultwhere<>'' then
    if TeacherWhere='' then
      TeacherWhere:=TYWhereEdit(FindComponent('YWhereEdit'+IntToStr(i))).Resultwhere
    else
      TeacherWhere:=TeacherWhere +' and '+TYWhereEdit(FindComponent('YWhereEdit'+IntToStr(i))).Resultwhere;
   ArefreshTeacher.Execute;
end;

procedure TMainForm.xpBitBtn27Click(Sender: TObject);
 var  i: byte;
begin
  for i:=14 to 15 do
    TYWhereEdit(FindComponent('YWhereEdit'+IntToStr(i))).Text:='';
end;

procedure TMainForm.ATeacherExamInfoExecute(Sender: TObject);
begin
  if not Dm.select_teacher_by_where.Active then
    btnTeacherSearchClick(Sender);
    with  TFrTeacherExamInfo_byDate.Create(Application,Dm.select_teacher_by_whereTeacherID.AsInteger) do
    begin
      ShowModal;
    end;
end;

procedure TMainForm.AInstrctorExamInfoExecute(Sender: TObject);
begin
  if not Dm.select_teacher_by_where.Active then
    btnTeacherSearchClick(Sender);
  with TFrInstructorExamInfo_byDate.Create(Application,Dm.select_teacher_by_whereTeacherID.AsInteger,0) do
  begin
     ShowModal;
  end;
end;

procedure TMainForm.ATeacherCurrentExamInfoExecute(Sender: TObject);
begin
  if (not dm.Browse_Exam.Active)or(dm.Browse_Exam.Eof) then exit;
  FrTeacherExamInfo_byDate:=TFrTeacherExamInfo_byDate.Create(Application,dm.Browse_ExamExamID.AsInteger);
  FrTeacherExamInfo_byDate.ShowModal;
end;

procedure TMainForm.AInstrctorCurrentExamInfoExecute(Sender: TObject);
begin
  FrInstructorExamInfo_byDate:=TFrInstructorExamInfo_byDate.Create(Application,Dm.select_teacher_by_whereTeacherID.AsInteger,dm.Browse_ExamExamID.AsInteger);
  FrInstructorExamInfo_byDate.ShowModal;
end;

procedure TMainForm.AExamQuestionEditExecute(Sender: TObject);
begin
  FrExamQuestionEdit:=TFrExamQuestionEdit.Create(Application,Dm.Browse_ExamExamID.AsInteger);
  FrExamQuestionEdit.ShowModal;
end;

procedure TMainForm.AAddQuestionBodyExecute(Sender: TObject);
begin
  FrAddQuestionBody:=TFrAddQuestionBody.Create(Application,0);
  FrAddQuestionBody.ShowModal;
end;

procedure TMainForm.RefreshActionExecute(Sender: TObject);
var i,j: word;
begin
  Exec_delete_action;

  for j:=0 to ComponentCount-1 do
    if Components[j].ClassNameIs('TxpBitBtn') then
     if TxpBitBtn(Components[j]).Parent.Parent.ClassNameIs('TxpTabSheet')  then
       Exec_insert_sys_Action(Components[j].Name,TxpBitBtn(Components[j]).Caption,TxpTabSheet(TxpBitBtn(Components[j]).Parent.Parent).pageIndex+1);


end;

procedure TMainForm.AAccessExecute(Sender: TObject);
begin
  FrAccess:=TFrAccess.Create(Application);
  FrAccess.ShowModal;
end;

procedure TMainForm.AAddUserExecute(Sender: TObject);
begin
  FrAddUser:=TFrAddUser.Create(Application);
  FrAddUser.ShowModal
end;

procedure TMainForm.xpBitBtn45Click(Sender: TObject);
 var  i: byte;
begin
  if SubCourseID>0 then
    QuestionBodyWhere:='QuestionBody.SubCourseID='+IntToStr(SubCourseID)
   else
    QuestionBodyWhere:='';

  for i:=23 to 25 do
   if TYWhereEdit(FindComponent('YWhereEdit'+IntToStr(i))).Resultwhere<>'' then
    if QuestionBodyWhere='' then
      QuestionBodyWhere:=TYWhereEdit(FindComponent('YWhereEdit'+IntToStr(i))).Resultwhere
    else
      QuestionBodyWhere:=QuestionBodyWhere +' and '+TYWhereEdit(FindComponent('YWhereEdit'+IntToStr(i))).Resultwhere;

   ARefreshQuestionBody.Execute;
end;

procedure TMainForm.xpBitBtn47Click(Sender: TObject);
 var  i: byte;
begin
  for i:=23 to 25 do
   TYWhereEdit(FindComponent('YWhereEdit'+IntToStr(i))).Text:='';
 SubCourseID:=0;
 YWhereEdit16.Text:='';
end;

procedure TMainForm.ARefreshQuestionBodyExecute(Sender: TObject);
begin
  with dm,Select_QuestionBody_By_Where do
  begin
   close;
   Parameters.ParamByName('@Where').Value:=QuestionBodyWhere;
   Open;
   Number.Caption:=' ����� : ' + IntToStr(RecordCount);
   //6
  end;

end;

procedure TMainForm.AEditQuestionBodyExecute(Sender: TObject);
begin
  FrAddQuestionBody:=TFrAddQuestionBody.Create(Application,dm.Select_QuestionBody_By_WhereQuestionBodyID.AsInteger);
  FrAddQuestionBody.ShowModal;
end;

procedure TMainForm.AViewQuestionBodyExecute(Sender: TObject);
begin
  FrAddQuestionBody:=TFrAddQuestionBody.Create(Application,dm.Select_QuestionBody_By_WhereQuestionBodyID.AsInteger);

  FrAddQuestionBody.Show;
  FrAddQuestionBody.WordBtn.Click;
  FrAddQuestionBody.Close;
end;

procedure TMainForm.AdeleteQuestionBodyExecute(Sender: TObject);
begin
  FrAddQuestionBody:=TFrAddQuestionBody.Create(Application,dm.Select_QuestionBody_By_WhereQuestionBodyID.AsInteger);
  FrAddQuestionBody.ShowModal;
end;

procedure TMainForm.APrintQuestionExecute(Sender: TObject);
begin
  FrExamQRep:=TFrExamQRep.Create(Self);
  FrExamQRep.ShowModal;
end;

procedure TMainForm.ATrainingCourseRepExecute(Sender: TObject);
begin
  inherited;
  // Amin 1391/10/11 FrTraningCourseRep:=TFrTraningCourseRep.Create(Application);
  // Amin 1391/10/11 FrTraningCourseRep.QuickRep2.Preview;
  FrExamQRep:=TFrExamQRep.Create(Application); // Amin 1391/10/11
  FrExamQRep.FormSender := 2; // Amin 1391/10/11
  with FrExamQRep.Select_Applicant_by_TrainingCourseID do
  begin
    close;
    Parameters.ParamByName('@TrainingCourseID').Value:= dm.Select_TrainingCourse_By_WhereTrainingCourseID.AsInteger;
    Open;
  end;
  FrExamQRep.ShowModal; // Amin 1391/10/11
end;

procedure TMainForm.xpBitBtn50Click(Sender: TObject);
begin
  FrInputApplicant:=TFrInputApplicant.Create(Application,0);
  FrInputApplicant.ShowModal;
  ArefreshApplicant.Execute;

end;

procedure TMainForm.SpeedButton5Click(Sender: TObject);
begin
  FrAddSubCourse:=TFrAddSubCourse.Create(Application);
  FrAddSubCourse.ShowModal;
  YWhereEdit16.Text:= Dm.CourseCourseTitle.AsString+' : '+ FrAddSubCourse.select_SubCourse_By_CourseIDSubCourseTitle.AsString;
  SubCourseID:=FrAddSubCourse.SelectedSubCourseID;

end;

procedure TMainForm.AAddSubCourseExecute(Sender: TObject);
begin
  FrAddSubCourse:=TFrAddSubCourse.Create(Application);
  FrAddSubCourse.ShowModal;
end;

procedure TMainForm.xpBitBtn59Click(Sender: TObject);
var i : Integer;
begin
  inherited;
  if  messageShowString('��� ��� '+_ApplicentEntityCaption+' �� �� ����� ���� ��� �� ����',true) then
  begin
    with dm.Select_Applicant_by_Where do
    begin
       Next;

       if ApplicantGrid.SelectedRows.Count > 0 then
          for i := 0 to ApplicantGrid.SelectedRows.Count-1 do
          begin
             GotoBookmark(Pointer(ApplicantGrid.SelectedRows.Items[i]));
            Exec_UnAssign_Applicant_To_Exam(dm.Select_Applicant_by_WhereApplicantID.AsInteger,dm.Browse_ExamExamID.AsInteger);
          end;
    end;

   //���� ����� ����� ��������� �� ��� ����
    with Dm.usp_UpdateNumberOfApplicant do
    begin
      try
        Close;
        Parameters.ParamByName('@ExamID').Value :=  dm.Browse_ExamExamID.AsInteger;
        ExecProc;
      except
      end;
    end;
   //End Sanaye

   ArefreshApplicant.Execute;
  end

end;

procedure TMainForm.xpBitBtn61Click(Sender: TObject);
var i:integer;
begin
  inherited;
  if  messageShowString('��� ��� '+_ApplicentEntityCaption+'  �� �� ����� ���� ������ �� ����',true) then
  begin
     with dm.Select_Applicant_by_Where do
     begin
        Next;

        if ApplicantGrid.SelectedRows.Count > 0 then
          for i := 0 to ApplicantGrid.SelectedRows.Count-1 do
          begin
             GotoBookmark(Pointer(ApplicantGrid.SelectedRows.Items[i]));
             Exec_Assign_Applicant_To_Exam(dm.Select_Applicant_by_WhereApplicantID.AsInteger,dm.Browse_ExamExamID.AsInteger);
          end;
        //ApplicantGrid.SelectedRows.Clear;
      end;

     //Add Sanaye 950929
     //���� ����� ����� ��������� �� ��� ����
     with Dm.usp_UpdateNumberOfApplicant do
     begin
        try
          Close;
          Parameters.ParamByName('@ExamID').Value :=  dm.Browse_ExamExamID.AsInteger;
          ExecProc;
        except
        end;
     end;
     //End Sanaye
     ArefreshApplicant.Execute;
  end;
end;

procedure TMainForm.xpBitBtn57Click(Sender: TObject);
begin
  inherited;
  if not dm.Select_TrainingCourse_By_Where.Active then
    exit;
    
  if dm.Select_TrainingCourse_By_WhereExamID.AsInteger>0 then
  begin
    ShowMessage(' �� ǘ��� ��� ��� �� �  ����� ����� ���');
    exit;
  end;
  
  if  messageShowString('��� ��� ��� �� �� ����� ���� ������ �� ����',true) then
  begin
    Exec_Assign_TrainingCourse_To_Exam(dm.Select_TrainingCourse_By_WhereTrainingCourseID.AsInteger,dm.Browse_ExamExamID.AsInteger);
    ARefreshCourse.Execute;
  end;

end;

procedure TMainForm.xpBitBtn56Click(Sender: TObject);
begin
  inherited;
  if  messageShowString('��� ��� ��� �� �� ����� ���� ��� �� ����',true) then
  begin
    Exec_UnAssign_TrainingCourse_From_Exam(dm.Select_TrainingCourse_By_WhereTrainingCourseID.AsInteger,dm.Select_TrainingCourse_By_WhereExamID.AsInteger);
    ARefreshCourse.Execute;
    ArefreshApplicant.Execute;
  end; 
end;

procedure TMainForm.xpBitBtn55Click(Sender: TObject);
begin
  inherited;
  FrEditQuestionBodyTemplate:=TFrEditQuestionBodyTemplate.Create(Application);
  FrEditQuestionBodyTemplate.ShowModal;
end;

procedure TMainForm.xpBitBtn58Click(Sender: TObject);
begin
  inherited;
  FrExamCourseLog:=TFrExamCourseLog.create(Application);
  FrExamCourseLog.ShowModal;
end;

procedure TMainForm.xpBitBtn16Click(Sender: TObject);
var Template,NewTemplate,ItemIndex:OleVariant;
begin
  if Dm.Browse_Exam.RecordCount=0 then
    exit;
    
  TrainingCourseWhere := ' TrainingCourse.ExamID='+Dm.Browse_ExamExamID.AsString;
  ARefreshCourse.Execute;
  mainPageControl.ActivePageIndex := 4;
  cb_CourceCurrentExam.Checked :=true;
  TrainingCourseWhere :='';
end;

procedure TMainForm.xpBitBtn17Click(Sender: TObject);
begin
  inherited;
  if Open_ExamData(Dm.Browse_ExamExamID.AsInteger) then
    ShellExecute(Handle, 'open',pchar(_TempPath+'yeganeh.doc'),nil,nil,SW_SHOWNORMAL)
  else
  if OpenDialog.Execute then
    with Dm,Select_ExamData do
    begin
      Insert;
      Select_ExamDataExamID.Value:=Dm.Browse_ExamExamID.AsInteger;
      Select_ExamDataImage.LoadFromFile(OpenDialog.FileName);
      Post;
    end;

end;

procedure TMainForm.xpBitBtn60Click(Sender: TObject);
begin
  inherited;
  FrSystemSetting:=TFrSystemSetting.Create(self);
  FrSystemSetting.ShowModal
  end;

procedure TMainForm.Panel4Click(Sender: TObject);
begin
  inherited;
//  with dm.Browse_Exam do
   while not dm.Browse_Exam.eof do
   begin
     ArefreshQuestion.Execute;

      mainPageControl.ActivePageIndex:=5;
      QuestionGrid.PrintTitle:='������� ������ ������� ����� '+dm.Browse_ExamExamTitle.AsString;
      if Dm.Select_Question_By_ExamID_and_Where.RecordCount>0 then  QuestionGrid.ExportToWord;
      next;
    end;

end;

procedure TMainForm.xpBitBtn62Click(Sender: TObject);
begin
  inherited;
  frGroupImport:=TfrGroupImport.Create(Application);
  frGroupImport.ShowModal;
end;

procedure TMainForm.xpBitBtn29Click(Sender: TObject);
var i :Integer;
begin
  inherited;
  for i:=18 to 22 do
    TYWhereEdit(FindComponent('YWhereEdit'+IntToStr(i))).Text:=''

end;

procedure TMainForm.xpBitBtn22Click(Sender: TObject);
begin
  inherited;
  FAddTeacher:=TFAddTeacher.Create(ApplicantGrid);
  FAddTeacher.ShowModal;
end;

procedure TMainForm.YWhereEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key=VK_RETURN then
  begin
      Key:=0;
      xpBitBtn1Click(Application);
  end;
end;

procedure TMainForm.ATrainingCourcesExecute(Sender: TObject);
begin
  inherited;
   // by Hadi Mohamed
   //Created but not implemented on 2014/01/08
end;

procedure TMainForm.xpBitBtn31Click(Sender: TObject);
begin
  inherited;
   frmCustomFields := TfrmCustomFields.Create(Application);
   frmCustomFields.ShowModal;
end;

procedure TMainForm.CustomFieldsRefresh;
var
   i : integer;
begin
   dm.sp_Table_CustomFieldsCaption.Close;
   dm.sp_Table_CustomFieldsCaption.Parameters.ParamByName('@TableName').Value := 'Applicant';
   dm.sp_Table_CustomFieldsCaption.Open;
   for i := 0 to ApplicantGrid.Columns.Count -1 do
   begin
      if ApplicantGrid.Columns.Items[i].FieldName = 'CustomField1' then
         ApplicantGrid.Columns.Items[i].Title.Caption := dm.sp_Table_CustomFieldsCaptionCFC1.AsString
      else if ApplicantGrid.Columns.Items[i].FieldName = 'CustomField2' then
         ApplicantGrid.Columns.Items[i].Title.Caption := dm.sp_Table_CustomFieldsCaptionCFC2.AsString
      else if ApplicantGrid.Columns.Items[i].FieldName = 'CustomField3' then
         ApplicantGrid.Columns.Items[i].Title.Caption := dm.sp_Table_CustomFieldsCaptionCFC3.AsString
      else if ApplicantGrid.Columns.Items[i].FieldName = 'CustomField4' then
         ApplicantGrid.Columns.Items[i].Title.Caption := dm.sp_Table_CustomFieldsCaptionCFC4.AsString
      else if ApplicantGrid.Columns.Items[i].FieldName = 'CustomField5' then
         ApplicantGrid.Columns.Items[i].Title.Caption := dm.sp_Table_CustomFieldsCaptionCFC5.AsString;
   end;

   dm.sp_Table_CustomFieldsCaption.Close;
   dm.sp_Table_CustomFieldsCaption.Parameters.ParamByName('@TableName').Value := 'Exam';
   dm.sp_Table_CustomFieldsCaption.Open;
   for i := 0 to ExamGrid.Columns.Count -1 do
   begin
      if ExamGrid.Columns.Items[i].FieldName = 'CustomField1' then
         ExamGrid.Columns.Items[i].Title.Caption := dm.sp_Table_CustomFieldsCaptionCFC1.AsString
      else if ExamGrid.Columns.Items[i].FieldName = 'CustomField2' then
         ExamGrid.Columns.Items[i].Title.Caption := dm.sp_Table_CustomFieldsCaptionCFC2.AsString
      else if ExamGrid.Columns.Items[i].FieldName = 'CustomField3' then
         ExamGrid.Columns.Items[i].Title.Caption := dm.sp_Table_CustomFieldsCaptionCFC3.AsString
      else if ExamGrid.Columns.Items[i].FieldName = 'CustomField4' then
         ExamGrid.Columns.Items[i].Title.Caption := dm.sp_Table_CustomFieldsCaptionCFC4.AsString
      else if ExamGrid.Columns.Items[i].FieldName = 'CustomField5' then
         ExamGrid.Columns.Items[i].Title.Caption := dm.sp_Table_CustomFieldsCaptionCFC5.AsString;
   end;
end;

procedure TMainForm.LoadGrids;
begin
  if FileExists(ExtractFilePath(Application.ExeName)+'ExamGrid.YGN') then
    ExamGrid.Columns.LoadFromFile(ExtractFilePath(Application.ExeName)+'ExamGrid.YGN');
  if FileExists(ExtractFilePath(Application.ExeName)+'QuestionGrid.YGN') then
    QuestionGrid.Columns.LoadFromFile(ExtractFilePath(Application.ExeName)+'QuestionGrid.YGN');
  if FileExists(ExtractFilePath(Application.ExeName)+'YDBGrid2.YGN') then
    YDBGrid2.Columns.LoadFromFile(ExtractFilePath(Application.ExeName)+'YDBGrid2.YGN');
  if FileExists(ExtractFilePath(Application.ExeName)+'YDBGrid1.YGN') then
    YDBGrid1.Columns.LoadFromFile(ExtractFilePath(Application.ExeName)+'YDBGrid1.YGN');
  if FileExists(ExtractFilePath(Application.ExeName)+'ApplicantGrid.YGN') then
    ApplicantGrid.Columns.LoadFromFile(ExtractFilePath(Application.ExeName)+'ApplicantGrid.YGN');
  xpTabSheet3.Caption := _ApplicentEntityPlural;
  xpBitBtn6.Caption   := _ApplicentEntityPlural + ' ' + '�����';
  xpBitBtn33.Caption  := _ApplicentEntityPlural + ' ��� ' + '�����';
  xpBitBtn50.Caption  := '�����' + ' ' + _ApplicentEntityCaption;
  btnGetStno.Caption  := '���� ���' + ' ' + _ApplicentEntityCaption;
  Label10.Caption := _ApplicentCodeEntityCaption;
  cb_ApplicantCurrentExam.Caption := '��� '+_ApplicentEntityPlural+'  �����/��� ����';
  ApplicantGrid.Columns.Items[0].Title.Caption := _ApplicentCodeEntityCaption;
end;

procedure TMainForm.xpBitBtn63Click(Sender: TObject);
begin
  inherited;
   frmGroupExam := tfrmGroupExam.create(self);
   frmGroupExam.showmodal;
end;

procedure TMainForm.aUApplicantImportExecute(Sender: TObject);
begin
  inherited;
  FmApplicantImport := TFmApplicantImport.Create(Application);
  FmApplicantImport.ShowModal();
end;

procedure TMainForm.xpBitBtn65Click(Sender: TObject);
begin
  inherited;
   FrmExamEqualQuestion:=TfrmExamEqualQuestion.Create(self);
   FrmExamEqualQuestion.ShowModal;
end;

procedure TMainForm.xpBitBtn66Click(Sender: TObject);
begin
  inherited;
   frmExamDetailLogList:=TfrmExamDetailLogList.create(self);
   frmExamDetailLogList.showmodal;
end;

procedure TMainForm.mainPageControlChange(Sender: TObject);
begin
  inherited;
  case mainPageControl.ActivePageIndex of
    2:xpBitBtn20Click(Sender);
    3:btnTeacherSearchClick(Sender);
    4:xpBitBtn28Click(Sender);
    5:btnSearchQuestionClick(Sender);
    6:xpBitBtn1Click(Sender);
  end;
end;

procedure TMainForm.N1Click(Sender: TObject);
VAR
FRM : TROND_INF_FRM;
begin
  FRM := TROND_INF_FRM.Create(NIL);
  FRM.EXAMID := Dm.Browse_ExamExamID.AsString;
  FRM.ShowModal;
  FRM.Close;
end;

procedure TMainForm.Action2Execute(Sender: TObject);
VAR
FRM : TVERSION_INFO_FRM;
begin
  FRM := TVERSION_INFO_FRM.Create(nil);
  FRM.VERSION_LIST.Text := '6.0.0.2';
  FRM.ShowModal;
  FRM.Free;
end;

procedure TMainForm.ImportPictureExecute(Sender: TObject);
begin
  inherited;
  frmImportPicture:=TfrmImportPicture.Create(Application);
  frmImportPicture.ShowModal;
end;

procedure TMainForm.aUApplicantImportNewExecute(Sender: TObject);
begin
  inherited;
  FmApplicantImportNew := TFmApplicantImportNew.Create(Application);
  FmApplicantImportNew.ShowModal();
end;
procedure TMainForm.xpBitBtn67Click(Sender: TObject);
begin
  inherited;
  TxpBitBtn(sender).action.Execute ;
end;

end.
