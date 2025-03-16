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
    sys_UserUTID: TIntegerField;
    DSUniversity: TDataSource;
    Tuniversity: TADOTable;
    TuniversityUTID: TIntegerField;
    TuniversityUTName: TStringField;
    TuniversityUTCode: TStringField;
    TuniversityDescription: TStringField;
    ImageList1: TImageList;
    TextFormatUTID: TIntegerField;
    LetterTemplateUTID: TIntegerField;
    LetterTemplateDocUTID: TIntegerField;
    qGroupExamUTID: TIntegerField;
    FacultyUTID: TIntegerField;
    Select_Applicant_by_WhereUTID: TIntegerField;
    CourseUTID: TIntegerField;
    DifficultyUTID: TIntegerField;
    DiscriminationUTID: TIntegerField;
    vw_TeacherUTID: TIntegerField;
    Select_EducationGroup_by_FacultyIDUTID: TIntegerField;
    qryAutoRunScript: TADOQuery;
    adoMajor: TADOQuery;
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
    procedure TextFormatBeforePost(DataSet: TDataSet);

  private
    { Private declarations }
    procedure SetUTIDFILTER();
  public
    { Public declarations }
    focusedColor:Tcolor;
    SearchResult:String;
    procedure closeopenCaptionTable_Custom(strType : string);
    procedure AutoUpdateDatabase;    

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
  _UTId : Integer ;
  DataBaseName:string;
  _StringFilterUTID : string ;
  _CountError : Integer;

  _EXEDIR : string;
const
   _App_Version = '11.0.0.0';
   _Last_Update = '1403/12/20';

implementation

uses YeganehDemo, Uconnect, BusinessLayer, YInputQuery, USearchTitle,
  UFrLogin, UMainForm, YShamsiDate;

{$R *.dfm}
procedure Tdm.EnterToProgramExecute;
begin
  _UTId := 0 ;
  if sys_User.locate('UserName',trim(Frlogin.UserEdit.Text),[]) then
  begin
    if sys_User.fieldValues['PassWord']=upperCase(trim(FrLogin.PassEdit.text)) then
    begin
      _UserCode := sys_UserUserId.AsInteger;
      _Username := sys_UserTitle.AsString;
      _AccessID := sys_UserAccessID.AsInteger;
      _UTId     := sys_UserUTID.AsInteger;

      { TODO -oparsa : 14031207 }
      _StringFilterUTID := '' ;
      if _UTId > 0 then
      begin
        SetUTIDFILTER ;
      end;

      _ApplicentEntityCaption     := Get_SystemSetting('AplicantCaption');
      _ApplicentEntityPlural      := Get_SystemSetting('AplicantPluralCaption');
      _ApplicentCodeEntityCaption := Get_SystemSetting('AplicantCodeCaption');
      if trim(_ApplicentEntityCaption) = '' then
       _ApplicentEntityCaption := 'œ«‰‘ÃÊ';
      if trim(_ApplicentEntityPlural) = '' then
       _ApplicentEntityPlural := 'œ«‰‘ÃÊÌ«‰';
      if trim(_ApplicentCodeEntityCaption) = '' then
       _ApplicentCodeEntityCaption := '‘„«—Â œ«‰‘ÃÊÌÌ';

      { TODO -oparsa : 14031207 }

      FrLogin.Hide;
      MainForm.StatusBar.Panels[0].Text:=FrLogin.StatusBar1.Panels[0].Text;
      MainForm.StatusBar.Panels[1].Text:=FrLogin.StatusBar1.Panels[1].Text;
      MainForm.StatusBar.Panels[2].Text:=FrLogin.StatusBar1.Panels[2].Text;
      MainForm.StatusBar.Panels[4].Text:='ò«—»— : '+FrLogin.UserEdit.Text;
      MainForm.ShowModal;

    end// if 3
    else
    begin
      ShowMessage('ò·„Â ⁄»Ê— —« «‘ »«Â Ê«—œ ò—œÂ «Ìœ');
    end;//else 3
  end //if 1
  else
  begin
    ShowMessage('‰«„ ò«—»— —« «‘ »«Â Ê«—œ ò—œÂ «Ìœ');
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

  { TODO -oparsa : 14031207 }
  AutoUpdateDatabase;
  { TODO -oparsa : 14031207 }

  Yeganeh.Close;
  sys_User.Open;
  ActivateKeyboardLayout(HKL_NEXT, KLF_REORDER);
  Faculty.Open;
  TextFormat.Open;
  vw_Teacher.Open;
  { TODO -oparsa : 14031207 }
  {
  _ApplicentEntityCaption     := Get_SystemSetting('AplicantCaption');
  _ApplicentEntityPlural      := Get_SystemSetting('AplicantPluralCaption');
  _ApplicentCodeEntityCaption := Get_SystemSetting('AplicantCodeCaption');
  if trim(_ApplicentEntityCaption) = '' then
   _ApplicentEntityCaption := 'œ«‰‘ÃÊ';
  if trim(_ApplicentEntityPlural) = '' then
   _ApplicentEntityPlural := 'œ«‰‘ÃÊÌ«‰';
  if trim(_ApplicentCodeEntityCaption) = '' then
   _ApplicentCodeEntityCaption := '‘„«—Â œ«‰‘ÃÊÌÌ';
   }
 { TODO -oparsa : 14031207 }


// _ApplicentEntityCaption:=Get_SystemSetting('AplicantCaption'); 
end;

procedure Tdm.RefreshTemplate;
begin
  with LetterTemplateDoc do
   begin
     Close;
     Parameters[0].Value:=LetterTemplate.Fields[0].Value;
     Open;
   end;
end;

procedure tdm.SaveTemplateToFile;
begin
  inherited;
  with LetterTemplateDoc,Parameters do
  begin
     Close;
     ParamByName('id').Value := LetterTemplateID.AsInteger;
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
    SearchDataSet := false;
    TableName := Y.ListTable;
    CodeField := y.CodeField;
    TitleField := y.TitleField;
    SearchF.Connection := y.Connection;
    ShowModal;
    Result := SearchResult;
  end;
end;



procedure TDm.FacultyAfterScroll(DataSet: TDataSet);
begin
 with Select_EducationGroup_by_FacultyID do
  begin
    Close;
    Parameters.ParamByName('@FacultyID').Value:=FacultyFacultyID.AsInteger;
    Open;
  end;
end;

procedure TDm.Select_EducationGroup_by_FacultyIDAfterScroll(
  DataSet: TDataSet);
begin
 with Select_Major_by_EducationGroupID do
  begin
    Close;
    Parameters.ParamByName('@EducationGroupID').Value := Select_EducationGroup_by_FacultyIDEducationGroupID.AsInteger;
    Open;
  end;

end;

procedure TDm.Select_TrainingCourse_By_WhereAfterScroll(DataSet: TDataSet);
begin
//   ShowMessage(IntToStr(Select_TrainingCourse_By_Where.RecordCount));
end;

procedure TDm.SetUTIDFILTER;
begin
  if _UTId > 0 then
  begin
    _StringFilterUTID  := ' UTID = ' + IntToStr(_UTId) ;

    TextFormat.Filter := _StringFilterUTID ;
    TextFormat.Filtered := True ;

    LetterTemplate.Filter := _StringFilterUTID ;
    LetterTemplate.Filtered := True;

    qGroupExam.Filter := _StringFilterUTID ;
    qGroupExam.Filtered := True;

    Faculty.Filter := _StringFilterUTID ;
    Faculty.Filtered := True;

    ExamType.Filter := _StringFilterUTID ;
    ExamType.Filtered := True;

    Difficulty.Filter := _StringFilterUTID ;
    Difficulty.Filtered := True;

    Discrimination.Filter := _StringFilterUTID ;
    Discrimination.Filtered := True;

    vw_Teacher.Filter := _StringFilterUTID ;
    vw_Teacher.Filtered := True;

    Course.Filter := _StringFilterUTID ;
    Course.Filtered := True;

    EducationGroup.Filter := _StringFilterUTID ;
    EducationGroup.Filtered := True;

    adoMajor.Filter := _StringFilterUTID ;
    adoMajor.Filtered := True;

    adoMajor.Close;
    adoMajor.Open ;

  end;
end;


procedure TDm.closeopenCaptionTable_Custom(strType: string);
begin
   if strType = '' then
     strType := 'Applicant' ;

   sp_Table_CustomFieldsCaption.Close;
   sp_Table_CustomFieldsCaption.Parameters.ParamByName('@TableName').Value := strType;
   sp_Table_CustomFieldsCaption.Parameters.ParamByName('@UTID').Value := _UTId;
   sp_Table_CustomFieldsCaption.Open;
end;

procedure TDm.AutoUpdateDatabase;
var
  FileName : string ;
  FilePath : string ;
  MainStrFilePath : string ;
  updateOK : Boolean;
  strCommand : WideString ;
  SectionCommand : string ;
  SectionSTR : string ;
  index : Integer ;
  index2 : Integer ;
  lastViewNo : Integer;
  LastTaleNo : Integer;
  MaxSectionNo : Integer;
  MaxSectionTableNo : Integer;
  MaxSectionViewNo : Integer;
  CurrentSectionNo : Integer;
  CntSectionNo  : Integer;
  LengthMax :Integer;
  PosF , PosS , PosE , PosFirstSec , PosFirstLen  , PosLastSec , PosLastLen : Integer ;
  FistScript : Integer;
  SR  : TSearchRec;
  FileAttrs: Integer;
  //qryAutoRunScript :TADOQuery;
  qry :TADOQuery;

  function GetTxtFileAsString(const fn:String):WideString;
  var
    doc: TextFile;
    character: Char;
    strResult : WideString;
    w : ansistring;
    bomidx : integer;

  const
    utf8bom : array [0..2] of char = (#$EF, #$BB, #$BF);

  begin
    strResult := '';
    AssignFile(doc, fn);
    reset(doc);
    w := '';
    bomidx := 0;
    while not EOF(doc) do
    begin
      read(doc, character);

      if (bomidx < length(utf8bom)) and (utf8bom[bomidx] = character) then
      begin
        inc(bomidx);
        continue;
      end;
      inc(bomidx);

      if character = ' ' then
      begin
        strResult := strResult + Utf8ToAnsi(w) + ' ';
        w := '';
      end
      else
        w := w + character;

    end;
    CloseFile(doc);

    if w <> '' then
      strResult := strResult + Utf8ToAnsi(w);

    Result := strResult;
  end;
begin
  // jHAT PAK KARDAN PACH GHADIMI
  {
  qry := TADOQuery.Create(self);
  qry.Connection := YeganehConnection;
  qry.SQL.Text   := ' IF EXISTS(SELECT 1 FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N''[DBO].[TBLAPPSETTING]'') AND TYPE IN (N''U'')) '+
                    ' UPDATE [dbo].[TBLAPPSETTING] SET Max_TableScriptNumber = 1 ,Last_TableScriptNumber = 1,Max_ViewScriptNumber = 1 ,Last_ViewScriptNumber = 1  '+
                                  ' WHERE (SELECT TOP 1  SUM(1) FROM dbo.TBLAPPSETTING WHERE DATE<'+'''2024-06-02'''+' ) >0 AND ISNULL((SELECT TOP 1  SUM(1) FROM dbo.TBLAPPSETTING WHERE   DATE>'+'''2024-06-14'''+' ),0) =0   '  ;

  qry.ExecSQL;
  qry.Free;
     }

  qryAutoRunScript.Close;
  qryAutoRunScript.Open;

  LastTaleNo:= qryAutoRunScript.Fields.Fields[0].AsInteger;
  lastViewNo:= qryAutoRunScript.Fields.Fields[1].AsInteger;

  FilePath := ExpandFileName(GetCurrentDir + '\Exam_AutoScripts\');
  FistScript := 1;

  try

  for index := 1 to 2 do
  begin

    updateOK := True ;

    if  index = 1 then
      FileName := 'TableViewScripts.txt'
    else
      FileName := 'FuncProceScripts.txt';

    MainStrFilePath := FilePath + FileName;

    if not FileExists(MainStrFilePath) then
      updateOK := false ;

     if updateOK then
     begin

       qryAutoRunScript.SQL.Text := '';
       strCommand := GetTxtFileAsString(MainStrFilePath);

       LengthMax  := Length('[SECTION_MAX_NO]=') ;
       PosF := Pos('[SECTION_MAX_NO]=',strCommand) ;
       PosS := Pos('[BEGIN_S_NO]',strCommand) ;
       PosE := Pos('[END_S_NO]',strCommand) ;

     end ;

     if updateOK and (PosF >0) and (PosS >0) and  (PosE >0)  then
     begin
       MaxSectionNo := StrToInt(Trim(StringReplace(StringReplace(Copy(strCommand, PosF + LengthMax, PosS - (LengthMax + 1) ),#13,' ',[rfReplaceAll]),#10,' ',[rfReplaceAll])  )) ;

       if  index = 1 then
       begin
         CurrentSectionNo  := LastTaleNo + 1 ;
         MaxSectionTableNo := MaxSectionNo;

       end
       else
       begin
         CurrentSectionNo := lastViewNo + 1 ;
         MaxSectionViewNo := MaxSectionNo;

       end;

       CntSectionNo := CurrentSectionNo ;
       for  index2 := CurrentSectionNo to MaxSectionNo  do
       begin

         SectionCommand := '' ;
         PosFirstSec := Pos('[BEGIN_S_NO]='+IntTostr(CntSectionNo),strCommand);
         strCommand  := Copy(strCommand ,PosFirstSec-1,Length(strCommand));
         PosFirstSec := Pos('[BEGIN_S_NO]='+IntTostr(CntSectionNo),strCommand);

         PosFirstLen := Length('[BEGIN_S_NO]='+IntTostr(CntSectionNo)) ;

         PosLastSec := Pos('[END_S_NO]',strCommand);
         PosLastLen := Length('[END_S_NO]') ;

         SectionCommand := Trim(Copy(strCommand, (PosFirstSec + PosFirstLen) , (PosLastSec - (PosFirstSec + PosFirstLen  )) )) ;

         if SectionCommand <> '' then
         begin
           try

             if  MaxSectionTableNo>0 then
             begin
               qryAutoRunScript.SQL.Text   :=  ' IF EXISTS(SELECT 1 FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N''[DBO].[TBLAPPSETTING]'') AND TYPE IN (N''U'')) ' +
                                               '   UPDATE [dbo].[TBLAPPSETTING] set Max_TableScriptNumber = '+  IntToStr(MaxSectionTableNo) ;
               qryAutoRunScript.ExecSQL;
             end ;

             if  MaxSectionViewNo>0 then
             begin
               qryAutoRunScript.SQL.Text   :=  ' IF EXISTS(SELECT 1 FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N''[DBO].[TBLAPPSETTING]'') AND TYPE IN (N''U'')) ' +
                                               '   UPDATE [dbo].[TBLAPPSETTING] set Max_ViewScriptNumber = '+  IntToStr(MaxSectionViewNo) ;
               qryAutoRunScript.ExecSQL;
             end;

             //qryAutoRunScript.SQL.Text :=  ' BEGIN TRANSACTION  '+ #13#10 + SectionCommand + #13#10 +' COMMIT TRANSACTION  GO ';
             //qryAutoRunScript.SQL.Text :=  ' BEGIN TRANSACTION  '+ #13#10 + SectionCommand + #13#10 +' COMMIT TRANSACTION ';
             qryAutoRunScript.SQL.Text :=   SectionCommand ;
             qryAutoRunScript.ExecuteOptions := [eoAsyncFetch];
             qryAutoRunScript.ExecSQL;

             if (FistScript = 1 )  then
             begin
               qryAutoRunScript.SQL.Text   :=  ' IF EXISTS(SELECT 1 FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N''[DBO].[TBLAPPSETTING]'') AND TYPE IN (N''U'')) ' +
                                               '   INSERT INTO [dbo].[TBLAPPSETTING] (Last_TableScriptNumber,Last_ViewScriptNumber,AppVersion,Date) VALUES ( '+ IntToStr(LastTaleNo)+','+ IntToStr(lastViewNo)+','''+_App_Version+''',GETDATE() ) ' ;
               qryAutoRunScript.ExecSQL;

               if  MaxSectionTableNo>0 then
               begin
                 qryAutoRunScript.SQL.Text   :=  ' IF EXISTS(SELECT 1 FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N''[DBO].[TBLAPPSETTING]'') AND TYPE IN (N''U'')) ' +
                                                 '   UPDATE [dbo].[TBLAPPSETTING] set Max_TableScriptNumber = '+  IntToStr(MaxSectionTableNo) ;
                 qryAutoRunScript.ExecSQL;
               end ;

               if  MaxSectionViewNo>0 then
               begin
                 qryAutoRunScript.SQL.Text   :=  ' IF EXISTS(SELECT 1 FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N''[DBO].[TBLAPPSETTING]'') AND TYPE IN (N''U'')) ' +
                                                 '   UPDATE [dbo].[TBLAPPSETTING] set Max_ViewScriptNumber = '+  IntToStr(MaxSectionViewNo) ;
                 qryAutoRunScript.ExecSQL;
               end;

             end;

             Inc(FistScript);             

             if  index = 1 then
               qryAutoRunScript.SQL.Text :=  ' IF EXISTS(SELECT 1 FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N''[DBO].[TBLAPPSETTING]'') AND TYPE IN (N''U'')) ' +
                                             ' BEGIN   UPDATE dbo.TBLAPPSETTING SET Last_TableScriptNumber ='+ IntToStr(CntSectionNo)  + ' END '
             else
               qryAutoRunScript.SQL.Text :=  ' IF EXISTS(SELECT 1 FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N''[DBO].[TBLAPPSETTING]'') AND TYPE IN (N''U'')) ' +
                                             ' BEGIN  UPDATE dbo.TBLAPPSETTING SET Last_ViewScriptNumber ='+ IntToStr(CntSectionNo) + ' END ' ;

             qryAutoRunScript.ExecSQL;

           except // on E:Exception do
            // begin
               if  index = 1 then
                 qryAutoRunScript.SQL.Text :=  ' IF EXISTS(SELECT 1 FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N''[DBO].[TBLAPPSETTING]'') AND TYPE IN (N''U'')) ' +
                                             ' BEGIN   UPDATE dbo.TBLAPPSETTING SET Error_RunTableScriptNumber ='+ IntToStr(CntSectionNo)  +{ ', Descript ='+E.Message+}' END '
               else
                 qryAutoRunScript.SQL.Text :=  ' IF EXISTS(SELECT 1 FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N''[DBO].[TBLAPPSETTING]'') AND TYPE IN (N''U'')) ' +
                                             ' BEGIN  UPDATE dbo.TBLAPPSETTING SET Error_RunViewScriptNumber ='+ IntToStr(CntSectionNo) +{ ', Descript ='+E.Message+}' END ' ;
               qryAutoRunScript.ExecSQL;
            // end ;

              Exit;

           end;
         end ;
         inc(CntSectionNo);

       end;

     end;
  end;
  finally
    qryAutoRunScript.SQL.Text := 'IF EXISTS(SELECT 1 FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N''[DBO].[TBLAPPSETTING]'') AND TYPE IN (N''U''))'+
                                    ' Begin   UPDATE [dbo].[TBLAPPSETTING] SET [Max_TableScriptNumber] = [Last_TableScriptNumber] WHERE ISNULL(Max_TableScriptNumber,0) < isnull([Last_TableScriptNumber],0)  '+
                                    ' UPDATE [dbo].[TBLAPPSETTING] SET [Max_ViewScriptNumber] = [Last_ViewScriptNumber] WHERE ISNULL([Max_ViewScriptNumber],0) < isnull([Last_ViewScriptNumber],0) '  +
                                    ' SELECT TOP 1 (ISNULL(Max_TableScriptNumber,Last_TableScriptNumber)-ISNULL(Last_TableScriptNumber,0)) + ( ISNULL(Max_ViewScriptNumber,Last_ViewScriptNumber) - ISNULL(Last_ViewScriptNumber ,0)) CountError   '+
                                    ' FROM [dbo].[TBLAPPSETTING] ORDER BY id DESC  end '+
                                    ' ELSE SELECT 0 CountError' ;

    qryAutoRunScript.Close;
    qryAutoRunScript.Open;

    _CountError:= qryAutoRunScript.Fields.Fields[0].AsInteger;
  end;
//

end;

procedure TDm.TextFormatBeforePost(DataSet: TDataSet);
begin
  dm.TextFormat.FieldByName('UTID').asinteger := _UTID;
end;

end.
