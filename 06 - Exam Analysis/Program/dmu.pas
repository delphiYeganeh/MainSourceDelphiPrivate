unit dmu;

interface

uses
  SysUtils, Classes, DB, ADODB,graphics,DateUtils,Forms,Windows, ImgList,
  Controls, Menus,OleServer, xpBitBtn,Yeganeh_Word,YwhereEdit, AppEvnts,dialogs,
  WordXP, XPMan;
type
  TDm = class(TDataModule)
    YeganehConnection: TADOConnection;
    Major: TADOTable;
    Group27: TADOTable;
    ExamType: TADOTable;
    Course: TADOTable;
    Faculty: TADOTable;
    DMajor: TDataSource;
    DGroup27: TDataSource;
    DExamType: TDataSource;
    DCourse: TDataSource;
    DFaculty: TDataSource;
    LetterImages: TImageList;
    LetterTemplateDoc: TADODataSet;
    LetterTemplateDocID: TAutoIncField;
    LetterTemplateDocDocument: TBlobField;
    LetterTemplateDocTitle: TWideStringField;
    DLetterTemplateDoc: TDataSource;
    LetterTemplate: TADODataSet;
    LetterTemplateID: TAutoIncField;
    LetterTemplateTitle: TWideStringField;
    DLetterTemplate: TDataSource;
    Select_ExamDetail: TADOStoredProc;
    Select_Question_By_ExamID_and_Where: TADOStoredProc;
    DSelect_Question_By_ExamID_and_Where: TDataSource;
    TextFormat: TADOTable;
    DTextFormat: TDataSource;
    Browse_Exam: TADOStoredProc;
    DBrowse_Exams: TDataSource;
    Tables: TADOTable;
    DTables: TDataSource;
    Browse_ExamExamID: TAutoIncField;
    Browse_ExamExamTitle: TWideStringField;
    Browse_ExamMainCourseID: TSmallintField;
    Browse_ExamMainDesignerTeacherID: TSmallintField;
    Browse_ExamExamDate: TStringField;
    Browse_ExamCorrectItemPoint: TFloatField;
    Browse_ExamWrongItemPoint: TFloatField;
    Browse_ExamBlankItemPoint: TFloatField;
    Browse_ExamMinPassedMark: TFloatField;
    Browse_ExamExamTypeID: TWordField;
    Browse_ExamNumber_of_Items: TWordField;
    Browse_ExamNumber_of_Question: TIntegerField;
    Browse_Examnumber_of_applicant: TIntegerField;
    Browse_ExamTexFormatID: TIntegerField;
    Browse_ExamTermCode: TStringField;
    Browse_ExamExamTypeTitle: TWideStringField;
    Browse_ExamTeacherCode: TStringField;
    Browse_ExamFullName: TWideStringField;
    Browse_ExamTextFormatTitle: TWideStringField;
    Browse_ExamCourseCode: TStringField;
    Browse_ExamCourseTitle: TWideStringField;
    vw_Teacher: TADOTable;
    vw_TeacherTeacherID: TSmallintField;
    vw_TeacherFullName: TWideStringField;
    Select_ExamDetailExamID: TAutoIncField;
    Select_ExamDetailExamTitle: TWideStringField;
    Select_ExamDetailMainCourseID: TSmallintField;
    Select_ExamDetailMainDesignerTeacherID: TSmallintField;
    Select_ExamDetailExamDate: TStringField;
    Select_ExamDetailCorrectItemPoint: TFloatField;
    Select_ExamDetailWrongItemPoint: TFloatField;
    Select_ExamDetailBlankItemPoint: TFloatField;
    Select_ExamDetailMinPassedMark: TFloatField;
    Select_ExamDetailExamTypeID: TWordField;
    Select_ExamDetailNumber_of_Items: TWordField;
    Select_ExamDetailNumber_of_Question: TIntegerField;
    Select_ExamDetailnumber_of_applicant: TIntegerField;
    Select_ExamDetailTexFormatID: TIntegerField;
    Select_ExamDetailAnswerKey: TStringField;
    Select_ExamDetailDifficulty: TFloatField;
    Select_ExamDetailDiscrimination: TFloatField;
    Select_ExamDetailStandardError: TFloatField;
    Select_ExamDetailAlpha: TFloatField;
    Select_ExamDetailReliability: TFloatField;
    Select_ExamDetailExamVariance: TFloatField;
    Select_ExamDetailNumberOf_1item_Question: TSmallintField;
    Select_ExamDetailNumberOf_2item_Question: TSmallintField;
    Select_ExamDetailNumberOf_3item_Question: TSmallintField;
    Select_ExamDetailNumberOf_4item_Question: TSmallintField;
    Select_ExamDetailNumberOf_5item_Question: TSmallintField;
    Select_ExamDetailRPBIS: TFloatField;
    Select_ExamDetailTermCode: TStringField;
    Select_Question_By_ExamID_and_WhereQuestionID: TAutoIncField;
    Select_Question_By_ExamID_and_WhereExamID: TIntegerField;
    Select_Question_By_ExamID_and_WhereNumber: TSmallintField;
    Select_Question_By_ExamID_and_WhereDesignerTeacherID: TSmallintField;
    Select_Question_By_ExamID_and_WhereCourseID: TSmallintField;
    Select_Question_By_ExamID_and_WhereCorrect: TSmallintField;
    Select_Question_By_ExamID_and_WhereAnswerd: TSmallintField;
    Select_Question_By_ExamID_and_WhereAll_Count: TSmallintField;
    Select_Question_By_ExamID_and_WhereWrong: TSmallintField;
    Select_Question_By_ExamID_and_WhereG1_0: TSmallintField;
    Select_Question_By_ExamID_and_WhereG3_0: TSmallintField;
    Select_Question_By_ExamID_and_Whereall0: TSmallintField;
    Select_Question_By_ExamID_and_WhereG1_1: TSmallintField;
    Select_Question_By_ExamID_and_WhereG3_1: TSmallintField;
    Select_Question_By_ExamID_and_Whereall1: TSmallintField;
    Select_Question_By_ExamID_and_WhereG1_2: TSmallintField;
    Select_Question_By_ExamID_and_WhereG3_2: TSmallintField;
    Select_Question_By_ExamID_and_Whereall2: TSmallintField;
    Select_Question_By_ExamID_and_WhereG1_3: TSmallintField;
    Select_Question_By_ExamID_and_WhereG3_3: TSmallintField;
    Select_Question_By_ExamID_and_Whereall3: TSmallintField;
    Select_Question_By_ExamID_and_WhereG1_4: TSmallintField;
    Select_Question_By_ExamID_and_WhereG3_4: TSmallintField;
    Select_Question_By_ExamID_and_Whereall4: TSmallintField;
    Select_Question_By_ExamID_and_WhereG1_5: TSmallintField;
    Select_Question_By_ExamID_and_WhereG3_5: TSmallintField;
    Select_Question_By_ExamID_and_Whereall5: TSmallintField;
    Select_Question_By_ExamID_and_Wherenumber_Of_Item: TWordField;
    Select_Question_By_ExamID_and_WhereQuestionActivityID: TWordField;
    Select_Question_By_ExamID_and_WhereTemporaryActive: TBooleanField;
    Select_Question_By_ExamID_and_WhereCoefficient: TFloatField;
    Select_Question_By_ExamID_and_WhereDifficultyTitle: TWideStringField;
    Select_Question_By_ExamID_and_WhereDiscriminationTitle: TWideStringField;
    Select_Question: TADOStoredProc;
    Select_QuestionQuestionID: TAutoIncField;
    Select_QuestionExamID: TIntegerField;
    Select_QuestionNumber: TSmallintField;
    Select_QuestionDesignerTeacherID: TSmallintField;
    Select_QuestionCourseID: TSmallintField;
    Select_QuestionCoefficient: TFloatField;
    Select_QuestionQuestionActivityID: TWordField;
    QuestionActivity: TADOTable;
    QuestionActivityQuestionActivityID: TWordField;
    QuestionActivityQuestionActivityTitle: TWideStringField;
    DSelect_Question: TDataSource;
    Select_QuestionQuestionActivityTitle: TStringField;
    Select_QuestionDesignerTitle: TStringField;
    Select_QuestionCourseTitle: TStringField;
    Select_ExamDetail_by_where: TADOStoredProc;
    DSelect_ExamDetail_by_where: TDataSource;
    Select_Question_By_ExamID_and_WherequestionActivityTitle: TWideStringField;
    Select_Applicant_by_Where: TADOStoredProc;
    DSelect_Applicant_by_Where: TDataSource;
    Select_Applicant_by_WhereFacultyTitle: TWideStringField;
    Select_Applicant_by_WhereEducationGroupTitle: TWideStringField;
    Select_Applicant_by_WhereEducationGroupCode: TStringField;
    Select_Applicant_by_WhereLevelTitle: TWideStringField;
    Select_Applicant_by_WhereMajorTitle: TWideStringField;
    Select_Applicant_by_WhereMajorCode: TStringField;
    Select_Applicant_by_WhereApplicantID: TAutoIncField;
    Select_Applicant_by_WhereApplicantCode: TStringField;
    Select_Applicant_by_WhereFirstName: TWideStringField;
    Select_Applicant_by_WhereLastName: TWideStringField;
    Select_Applicant_by_WhereFullName: TWideStringField;
    Select_Applicant_by_WhereMajorID: TSmallintField;
    Select_Applicant_by_WhereTermcode: TStringField;
    select_teacher_by_where: TADOStoredProc;
    Dselect_teacher_by_where: TDataSource;
    select_teacher_by_whereTeacherID: TSmallintField;
    select_teacher_by_whereTeacherCode: TStringField;
    select_teacher_by_whereFirstName: TWideStringField;
    select_teacher_by_whereLastName: TWideStringField;
    select_teacher_by_whereFullName: TWideStringField;
    select_teacher_by_whereTitle: TWideStringField;
    select_teacher_by_wheredifficulty: TFloatField;
    select_teacher_by_whereDiscrimination: TFloatField;
    select_teacher_by_whereNormalQuestion: TIntegerField;
    select_teacher_by_whereDeleetedQuestion: TIntegerField;
    select_teacher_by_whereAddedQuestion: TIntegerField;
    select_teacher_by_whereRPBIS: TFloatField;
    select_teacher_by_whereQuestion_1tem_number: TIntegerField;
    select_teacher_by_whereQuestion_2tem_number: TIntegerField;
    select_teacher_by_whereQuestion_3tem_number: TIntegerField;
    select_teacher_by_whereQuestion_4tem_number: TIntegerField;
    select_teacher_by_whereQuestion_51tem_number: TIntegerField;
    Select_TrainingCourse_By_Where: TADOStoredProc;
    DSelect_TrainingCourse_By_Where: TDataSource;
    FacultyFacultyID: TSmallintField;
    FacultyFacultyTitle: TWideStringField;
    Select_Major_by_EducationGroupID: TADOStoredProc;
    DSelect_EducationGroup_by_FacultyID: TDataSource;
    DSelect_Major_by_EducationGroupID: TDataSource;
    Select_EducationGroup_by_FacultyID: TADOStoredProc;
    Select_EducationGroup_by_FacultyIDEducationGroupID: TSmallintField;
    Select_EducationGroup_by_FacultyIDEducationGroupCode: TStringField;
    Select_EducationGroup_by_FacultyIDEducationGroupTitle: TWideStringField;
    Select_EducationGroup_by_FacultyIDFacultyID: TSmallintField;
    Select_Major_by_EducationGroupIDMajorID: TSmallintField;
    Select_Major_by_EducationGroupIDMajorCode: TStringField;
    Select_Major_by_EducationGroupIDMajorTitle: TWideStringField;
    Select_Major_by_EducationGroupIDEducationGroupID: TSmallintField;
    Select_Major_by_EducationGroupIDLevelID: TSmallintField;
    Discrimination: TADOTable;
    DDiscrimination: TDataSource;
    Difficulty: TADOTable;
    DDifficulty: TDataSource;
    Select_Question_byExamID2: TADOStoredProc;
    DSelect_Question_byExamID2: TDataSource;
    Select_Question_byExamID2QuestionID: TAutoIncField;
    Select_Question_byExamID2DesignerTeacherID: TSmallintField;
    Select_Question_byExamID2CourseID: TSmallintField;
    Select_Question_byExamID2Coefficient: TFloatField;
    Select_Question_byExamID2DesignerTitle: TStringField;
    Select_Question_byExamID2CourseTitle: TStringField;
    Select_Question_byExamID2Number: TSmallintField;
    Select_QuestionBody_By_Where: TADOStoredProc;
    DSelect_QuestionBody_By_Where: TDataSource;
    Select_QuestionBody_By_WhereQuestionBodyID: TAutoIncField;
    Select_QuestionBody_By_WhereTitle: TWideStringField;
    Select_QuestionBody_By_WhereSubCourseID: TIntegerField;
    Select_QuestionBody_By_WhereCorrectItem: TWordField;
    Select_QuestionBody_By_WhereCourseCode: TStringField;
    Select_QuestionBody_By_WhereCourseTitle: TWideStringField;
    Select_QuestionBody_By_WhereSubCourseTitle: TWideStringField;
    sys_Access: TADOTable;
    sys_AccessAccessID: TSmallintField;
    sys_AccessAccessTitle: TWideStringField;
    Dsys_Access: TDataSource;
    sys_User: TADOTable;
    Dsys_User: TDataSource;
    sys_UserUserId: TAutoIncField;
    sys_UserTitle: TWideStringField;
    sys_UserUserName: TWideStringField;
    sys_UserPassWord: TWideStringField;
    sys_UserAccessID: TWordField;
    Select_ActionAccess_By_AccessID: TADOStoredProc;
    Select_ActionAccess_By_AccessIDActionName: TStringField;
    Select_ActionAccess_By_AccessIDHasAccess: TBooleanField;
    Select_TrainingCourse_By_WhereTrainingCourseID: TAutoIncField;
    Select_TrainingCourse_By_WhereCourseID: TSmallintField;
    Select_TrainingCourse_By_WhereTermCode: TStringField;
    Select_TrainingCourse_By_WhereGrourpCode: TStringField;
    Select_TrainingCourse_By_WhereStartDate: TStringField;
    Select_TrainingCourse_By_WhereTeacherID: TSmallintField;
    Select_TrainingCourse_By_WhereExamID: TIntegerField;
    Select_TrainingCourse_By_WhereCourseCode: TStringField;
    Select_TrainingCourse_By_WhereCourseTitle: TWideStringField;
    Select_TrainingCourse_By_WhereTeacherCode: TStringField;
    Select_TrainingCourse_By_WhereFirstName: TWideStringField;
    Select_TrainingCourse_By_WhereLastName: TWideStringField;
    Select_TrainingCourse_By_WhereFullName: TWideStringField;
    Select_TrainingCourse_By_WhereTitle: TWideStringField;
    Select_TrainingCourse_By_WhereExamTitle: TWideStringField;
    CourseCourseID: TSmallintField;
    CourseCourseCode: TStringField;
    CourseCourseTitle: TWideStringField;
    CourseNumberOfUnits: TFloatField;
    EducationGroup: TADOTable;
    Level: TADOTable;
    Select_Major_by_EducationGroupIDEducationGroupTitle: TStringField;
    Select_Major_by_EducationGroupIDLevelTitle: TStringField;
    TextFormatTextFormatID: TAutoIncField;
    TextFormatTextFormatTitle: TWideStringField;
    TextFormatStnoStart: TSmallintField;
    TextFormatStnoLength: TSmallintField;
    TextFormatMajorStart: TSmallintField;
    TextFormatMajorLength: TSmallintField;
    TextFormatTermcodeStart: TSmallintField;
    TextFormatTermCodeLength: TSmallintField;
    TextFormatCourseStart: TSmallintField;
    TextFormatCourseLength: TSmallintField;
    TextFormatCourseGroupStart: TSmallintField;
    TextFormatCourseGroupLength: TSmallintField;
    TextFormatAnswerStart: TSmallintField;
    TextFormatindiscernibleChar: TStringField;
    TextFormatWithoutAnswerChar: TStringField;
    TextFormatKeyLineNumber: TSmallintField;
    TextFormatAnswerStartLineNumber: TSmallintField;
    Select_QuestionBodyTemplate: TADODataSet;
    Select_QuestionBodyTemplateWordBody: TBlobField;
    Select_Applicant_by_WhereFatherName: TWideStringField;
    Select_Applicant_by_WhereCustomField1: TWideStringField;
    Select_Applicant_by_WhereCustomField2: TWideStringField;
    Dvw_Teacher: TDataSource;
    Select_Question_By_ExamID_and_WhereDifficulty: TFloatField;
    Select_Question_By_ExamID_and_WhereDiscrimination: TFloatField;
    Select_Question_By_ExamID_and_WhereRPBIS: TFloatField;
    DiscriminationDiscriminationID: TWordField;
    DiscriminationDiscriminationTitle: TWideStringField;
    DiscriminationMinvalue: TFloatField;
    DiscriminationMaxValue: TFloatField;
    DifficultyDifficultyID: TWordField;
    DifficultyDifficultyTitle: TWideStringField;
    DifficultyMinValue: TFloatField;
    DifficultyMaxValue: TFloatField;
    Select_ExamData: TADOStoredProc;
    DSelect_ExamData: TDataSource;
    Select_ExamDataExamDataID: TAutoIncField;
    Select_ExamDataExamID: TIntegerField;
    Select_ExamDataImage: TBlobField;
    Select_QuestionTaxonomy: TWordField;
    Select_Question_By_ExamID_and_WhereTaxonomy: TWordField;
    Select_Question_By_ExamID_and_Whereall0_percent: TIntegerField;
    Select_Question_By_ExamID_and_Whereall1_percent: TIntegerField;
    Select_Question_By_ExamID_and_Whereall2_percent: TIntegerField;
    Select_Question_By_ExamID_and_Whereall3_percent: TIntegerField;
    Select_Question_By_ExamID_and_Whereall4_percent: TIntegerField;
    Select_Question_By_ExamID_and_Whereall5_percent: TIntegerField;
    Select_Question_byExamID2Taxonomy: TWordField;
    Select_Question_byExamID2ObjectionNumber: TWordField;
    Select_ExamDetail_by_whereDSDesigner: TWideStringField;
    Select_ExamDetail_by_whereDSDesigner2: TStringField;
    Select_ExamDetail_by_whereDSDesigner3: TFloatField;
    Select_ExamDetail_by_whereDSDesigner4: TFloatField;
    Select_ExamDetail_by_whereDSDesigner5: TFloatField;
    Select_ExamDetail_by_whereDSDesigner6: TFloatField;
    Select_ExamDetail_by_whereDSDesigner7: TWordField;
    Select_ExamDetail_by_whereDSDesigner8: TIntegerField;
    Select_ExamDetail_by_whereDSDesigner9: TIntegerField;
    Select_ExamDetail_by_whereDSDesigner10: TFloatField;
    Select_ExamDetail_by_whereDSDesigner11: TFloatField;
    Select_ExamDetail_by_whereDSDesigner1: TSmallintField;
    Select_ExamDetail_by_whereDSDesigner22: TSmallintField;
    Select_ExamDetail_by_whereDSDesigner32: TSmallintField;
    Select_ExamDetail_by_whereDSDesigner42: TSmallintField;
    Select_ExamDetail_by_whereDSDesigner52: TSmallintField;
    Select_ExamDetail_by_whereDSDesigner12: TFloatField;
    Select_ExamDetail_by_whereDSDesigner13: TFloatField;
    Select_ExamDetail_by_whereDSDesigner14: TFloatField;
    Select_ExamDetail_by_whereRPBIS: TFloatField;
    Select_ExamDetail_by_whereKR20: TFloatField;
    Select_ExamDetail_by_wheretaxonomy1: TIntegerField;
    Select_ExamDetail_by_wheretaxonomy2: TIntegerField;
    Select_ExamDetail_by_wheretaxonomy3: TIntegerField;
    Select_ExamDetail_by_wheretaxonomy23: TIntegerField;
    Select_ExamDetail_by_whereobjectionnumber0: TIntegerField;
    Select_ExamDetail_by_whereobjectionnumber1: TIntegerField;
    Select_ExamDetail_by_whereobjectionnumber2: TIntegerField;
    Select_ExamDetail_by_whereobjectionnumber3: TIntegerField;
    Select_ExamDetail_by_whereExamID: TIntegerField;
    Select_ExamDetail_by_whereDSDesigner15: TFloatField;
    Select_ExamDetail_by_whereDSDesigner16: TFloatField;
    Select_ExamDetail_by_whereDSDesigner17: TFloatField;
    Select_ExamDetail_by_whereDSDesigner18: TFloatField;
    Select_ExamDetail_by_whereDSDesigner19: TIntegerField;
    Select_ExamDetail_by_whereDSDesigner20: TIntegerField;
    Select_ExamDetail_by_whereDSDesigner21: TIntegerField;
    Select_ExamDetail_by_whereDSDesigner23: TIntegerField;
    Select_ExamDetail_by_whereDSDesigner24: TIntegerField;
    Select_ExamDetail_by_whereDSDesigner25: TIntegerField;
    Select_ExamDetail_by_whereDSDesigner26: TIntegerField;
    Select_ExamDetail_by_whereDSDesigner27: TIntegerField;
    Select_ExamDetail_by_whereDSDesigner28: TIntegerField;
    Select_Question_By_ExamID_and_WhereObjectionNumber: TWordField;
    Select_Question_By_ExamID_and_Whereall6: TSmallintField;
    Select_Question_By_ExamID_and_Whereall6_percent: TIntegerField;
    Select_ExamDetail_by_whereDSDesigner62: TSmallintField;
    Select_Question_By_ExamID_and_WhereCourseTitle: TStringField;
    Select_Applicant_by_WhereCustomField3: TStringField;
    Select_Applicant_by_WhereCustomField4: TStringField;
    Select_Applicant_by_WhereCustomField5: TStringField;
    Dsp_Table_CustomFieldsCaption: TDataSource;
    sp_Table_CustomFieldsCaption: TADOStoredProc;
    sp_Table_CustomFieldsCaptionCFC1: TStringField;
    sp_Table_CustomFieldsCaptionCFC2: TStringField;
    sp_Table_CustomFieldsCaptionCFC3: TStringField;
    sp_Table_CustomFieldsCaptionCFC4: TStringField;
    sp_Table_CustomFieldsCaptionCFC5: TStringField;
    sp_Update_Table_CustomFieldsCaption: TADOStoredProc;
    Browse_ExamCustomField1: TStringField;
    Browse_ExamCustomField2: TStringField;
    Browse_ExamCustomField3: TStringField;
    Browse_ExamCustomField4: TStringField;
    Browse_ExamCustomField5: TStringField;
    qGroupExam: TADOQuery;
    dGroupExam: TDataSource;
    qGroupExamGroupExamId: TAutoIncField;
    qGroupExamtitle: TStringField;
    qGroupExamCode: TIntegerField;
    Browse_ExamGroupExam: TIntegerField;
    TextFormatGroupExamStart: TSmallintField;
    Select_QuestionCorrectItemNumber3: TWordField;
    Select_QuestionCorrectItemNumber4: TWordField;
    Select_QuestionCorrectItemNumber5: TWordField;
    Select_QuestionCorrectItemNumber6: TWordField;
    Select_Question_byExamID2CourseMark: TFloatField;
    usp_UpdateNumberOfApplicant: TADOStoredProc;
    Select_ExamDetail_by_whereField: TStringField;
    Select_ExamDetail_by_whereField2: TStringField;
    Select_ExamDetail_by_whereField3: TIntegerField;
    Select_ExamDetail_by_whereField4: TStringField;
    Select_ExamDetail_by_whereField5: TStringField;
    TextFormatAnserEnd: TIntegerField;
    TextFormatExPositive_Start: TIntegerField;
    TextFormatExPositive_End: TIntegerField;
    ImportStudentPic: TADOStoredProc;
    XPManifest1: TXPManifest;
    function  Y_InputQuery (const ACaption, Adefault: string; var Value: string): Boolean;
    procedure DataModuleCreate(Sender: TObject);
    procedure RefreshTemplate;
    procedure SaveQuestionBodyTemplateToFile;
    procedure SaveTemplateToFile;
    function  Search(Y:TYwhereEdit):string;
    procedure EnterToProgramExecute;
    procedure EnabledButtonExecute;
    procedure FacultyAfterScroll(DataSet: TDataSet);
    procedure Select_EducationGroup_by_FacultyIDAfterScroll(
      DataSet: TDataSet);
    procedure Select_TrainingCourse_By_WhereAfterScroll(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
    focusedColor:Tcolor;
    SearchResult:String;

  end;

var
  Dm: TDm;
  _ResultID:integer;
  _UserCode:integer;
  _Username:string;
  _Today:string;
  _AccessID:integer;
  _TempPath,
  _ApplicentEntityCaption : string;
  _ApplicentEntityPlural : string;
  _ApplicentCodeEntityCaption : string;          
  DataBaseName:string;

  _EXEDIR : string;
const
   _App_Version = '10.0.0.4';
   _Last_Update = '1403/08/9';

implementation

uses YeganehDemo, Uconnect, BusinessLayer, YInputQuery, USearchTitle,
  UFrLogin, UMainForm, YShamsiDate;

{$R *.dfm}
procedure Tdm.EnterToProgramExecute;
begin
  if sys_User.locate('UserName',trim(Frlogin.UserEdit.Text),[]) then
  begin
    if sys_User.fieldValues['PassWord']=upperCase(trim(FrLogin.PassEdit.text)) then
    begin
      _UserCode:=sys_UserUserId.AsInteger;
      _Username:=sys_UserTitle.AsString;
      _AccessID:=sys_UserAccessID.AsInteger;
      FrLogin.Hide;
      MainForm.StatusBar.Panels[0].Text:=FrLogin.StatusBar1.Panels[0].Text;
      MainForm.StatusBar.Panels[1].Text:=FrLogin.StatusBar1.Panels[1].Text;
      MainForm.StatusBar.Panels[2].Text:=FrLogin.StatusBar1.Panels[2].Text;
      MainForm.StatusBar.Panels[4].Text:='����� : '+FrLogin.UserEdit.Text;
      MainForm.ShowModal;

    end// if 3
    else
    begin
      ShowMessage('���� ���� �� ������ ���� ���� ���');
    end;//else 3
  end //if 1
  else
  begin
    ShowMessage('��� ����� �� ������ ���� ���� ���');
    FrLogin.UserEdit.SetFocus;
  end;
end;

procedure Tdm.EnabledButtonExecute;
var i :integer;
begin
  with Select_ActionAccess_By_AccessID do
   begin
    close;
    Parameters.ParamByName('@AccessID').Value:=_AccessID;
    Open;
   end;
    for i:=0 to MainForm.ComponentCount-1 do
     if MainForm.Components[i].ClassNameIs('TxpBitBtn') then
         begin
         if Select_ActionAccess_By_AccessID.Locate('ActionName', MainForm.Components[i].Name ,[]) then
           if not Select_ActionAccess_By_AccessIDHasAccess.AsBoolean then
             begin
              TxpBitBtn(MainForm.Components[i]).Enabled:=false;
              TxpBitBtn(MainForm.Components[i]).startColor:=clBlack;
             end;
         end;
end;


function tdm.Y_InputQuery (const ACaption, Adefault: string; var Value: string): Boolean;
begin
  YInputQueryF:=TYInputQueryF.Create(Application);
  YInputQueryF.Label1.Caption:=ACaption;
  YInputQueryF.output.Text:=Adefault;
  YInputQueryF.ShowModal;
  Result:=YInputQueryF.done;
  Value:=YInputQueryF.output.Text;

end;


procedure TDm.DataModuleCreate(Sender: TObject);
var d : TDateTime;
begin
  _Today:=ShamsiString(Now);
  _TempPath:=GetTempDirectory;
  yeganeh:=TYeganeh.Create(Self);
  _EXEDIR := ExtractFileDir(Application.ExeName)+'\';
  Yeganeh.Show;
  d:=now;
  Fconnect:=TFconnect.Create(Self);

  while milliSecondsBetween(d,now)<1000 do
   begin
     d:=d;
     Application.ProcessMessages;
   end;

  Yeganeh.Close;
  sys_User.Open;
  ActivateKeyboardLayout(HKL_NEXT, KLF_REORDER);
  Faculty.Open;
  TextFormat.Open;
  vw_Teacher.Open;
  _ApplicentEntityCaption:=Get_SystemSetting('AplicantCaption');
  _ApplicentEntityPlural:=Get_SystemSetting('AplicantPluralCaption');
  _ApplicentCodeEntityCaption:=Get_SystemSetting('AplicantCodeCaption');
  if trim(_ApplicentEntityCaption) = '' then
   _ApplicentEntityCaption := '������';
  if trim(_ApplicentEntityPlural) = '' then
   _ApplicentEntityPlural := '���������';
  if trim(_ApplicentCodeEntityCaption) = '' then
   _ApplicentCodeEntityCaption := '����� ��������';


// _ApplicentEntityCaption:=Get_SystemSetting('AplicantCaption'); 
end;

procedure Tdm.RefreshTemplate;
begin
  with LetterTemplateDoc do
   begin
    close;
    Parameters[0].Value:=LetterTemplate.Fields[0].Value;
    open;
   end;
end;

procedure tdm.SaveTemplateToFile;
begin
  inherited;
  with LetterTemplateDoc,Parameters do
  begin
     Close;
     ParamByName('id').Value:=LetterTemplateID.AsInteger;
     Open;
     LetterTemplateDocDocument.SaveToFile(_EXEDIR+'Yeganeh_Template_File.doc');
  end;
end;

procedure tdm.SaveQuestionBodyTemplateToFile;
begin
  inherited;
   with Select_QuestionBodyTemplate do
     begin
       if not active then  Open;
       Select_QuestionBodyTemplateWordBody.SaveToFile(_EXEDIR+'Yeganeh_Template_File.doc');
    end;
end;

function Tdm.Search(Y:TYwhereEdit):string;
begin
  SearchAdoDataSet:=TSearchAdoDataSet.Create(self);
  with SearchAdoDataSet do
   begin
      SearchDataSet:=false;
      TableName:=Y.ListTable;
      CodeField:=y.CodeField;
      TitleField:=y.TitleField;
      SearchF.Connection:=y.Connection;
      ShowModal;
      Result:=SearchResult;
   end;
end;



procedure TDm.FacultyAfterScroll(DataSet: TDataSet);
begin
 with Select_EducationGroup_by_FacultyID do
  begin
   close;
    Parameters.ParamByName('@FacultyID').Value:=FacultyFacultyID.AsInteger;
   Open;
  end;
end;

procedure TDm.Select_EducationGroup_by_FacultyIDAfterScroll(
  DataSet: TDataSet);
begin
 with Select_Major_by_EducationGroupID do
  begin
   close;
    Parameters.ParamByName('@EducationGroupID').Value:=Select_EducationGroup_by_FacultyIDEducationGroupID.AsInteger;
   Open;
  end;

end;

procedure TDm.Select_TrainingCourse_By_WhereAfterScroll(DataSet: TDataSet);
begin
//   ShowMessage(IntToStr(Select_TrainingCourse_By_Where.RecordCount));
end;

end.
