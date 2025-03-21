unit UAssessment;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtActns, ActnList, DB, ExtCtrls, StdCtrls, Buttons,
  Grids, DBGrids, YDbgrid, ADODB, DBClient, Provider, DBCtrls;

type
  TFAssessment = class(TMBaseForm)
    pnlMain: TPanel;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BtnCancel: TBitBtn;
    Select_Assessment: TADOStoredProc;
    BitBtn4: TBitBtn;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    DBRadioGroup3: TDBRadioGroup;
    DBRadioGroup4: TDBRadioGroup;
    DBRadioGroup5: TDBRadioGroup;
    DBRadioGroup6: TDBRadioGroup;
    DBRadioGroup7: TDBRadioGroup;
    DBRadioGroup8: TDBRadioGroup;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    Label9: TLabel;
    GroupBox3: TGroupBox;
    Label10: TLabel;
    GroupBox4: TGroupBox;
    Label11: TLabel;
    GroupBox5: TGroupBox;
    Label12: TLabel;
    GroupBox6: TGroupBox;
    Label13: TLabel;
    GroupBox7: TGroupBox;
    Label14: TLabel;
    GroupBox8: TGroupBox;
    Label15: TLabel;
    Select_Assessmentid: TIntegerField;
    Select_Assessmentlogdate: TDateField;
    Select_AssessmentCustomerId: TIntegerField;
    Select_AssessmentFollowUpId: TIntegerField;
    Select_AssessmentValuatorUserID: TIntegerField;
    Select_AssessmentExpertUserID: TIntegerField;
    Select_AssessmentAssessmenScore1: TIntegerField;
    Select_AssessmentAssessmenScore2: TIntegerField;
    Select_AssessmentAssessmenScore3: TIntegerField;
    Select_AssessmentAssessmenScore4: TIntegerField;
    Select_AssessmentAssessmenScore5: TIntegerField;
    Select_AssessmentAssessmenScore6: TIntegerField;
    Select_AssessmentAssessmenScore7: TIntegerField;
    Select_AssessmentAssessmenScore8: TIntegerField;
    Select_AssessmentAverageScore: TIntegerField;
    Label2: TLabel;
    SumAssesment: TLabel;
    Select_AssessmentFollowUpInPerson: TIntegerField;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    btnDelEghdamat: TBitBtn;
    Select_AssessmentUserId: TIntegerField;
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure FormShow(Sender: TObject);
    procedure btnShowContractWordClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure btnDelEghdamatClick(Sender: TObject);
  private
    { Private declarations }
  public
    FollowUpId : Integer ;
    CaseId : Integer ;
    TaskId : Integer ;
    FollowUpInPerson : Integer;
    CustomerId : Integer ;
    ValuatorUserID : Integer ;
    ExpertUserID : Integer ;
  end;

var
  FAssessment: TFAssessment;

implementation


uses  dmu, YShamsiDate;

{$R *.dfm}

procedure TFAssessment.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  inherited;
  Resize := False;
end;

procedure TFAssessment.FormShow(Sender: TObject);
var
  index : Integer;
begin
  inherited;
  Shape1.Brush.Color := _Color2 ;
  Shape2.Brush.Color := _Color2 ;
  Shape3.Brush.Color := _Color2 ;
  Shape4.Brush.Color := _Color2 ;
       (*
  GroupBox2.Color := _Color2 ;
  DBRadioGroup2.Color :=  _Color2;
  GroupBox4.Color := _Color2 ;
  DBRadioGroup4.Color :=  _Color2;
  GroupBox6.Color := _Color2 ;
  DBRadioGroup6.Color :=  _Color2;
  GroupBox8.Color := _Color2 ;
  DBRadioGroup8.Color :=  _Color2;


  Qry_SetResult('If not Exists(SELECT 1 FROM [dbo].[FollowUpAssessment]  WHERE AssessmentID = '+IntToStr(AssessmentID)+' ) '+
                ' Insert into [dbo].[FollowUpAssessment]  '+
                ' SELECT '+IntToStr(AssessmentID)  +' [AssessmentID] ,'+
                           datetoStr(Dm.GetServerDate) +' [logDate] ,'+
                           IntToStr(CustomerId)    +' [CustomerId],'+
                           IntToStr(FollowUpId)    +' [FollowUpId],'+
                           IntToStr(ValuatorUserID)+' [ValuatorUserID],'+
                           IntToStr(ExpertUserID)  +' [ExpertUserID],0 AssessmenScore, 0 AssessmentGod,0 AssessmentMidle ,0 AssessmentBad ,[AssessmentDescription] FROM [dbo].[Assessment] ass '
                 // ' where  ISNULL((SELECT 1 FROM [dbo].[FollowUpAssessment]  WHERE AssessmentID = '+IntToStr(AssessmentID)+' ),0) = 0 ' ,Dm.YeganehConnection) ;
                   ,Dm.YeganehConnection) ;
                *)
  Select_Assessment.Close;
  Select_Assessment.parameters.ParamByName('@FollowUpInPerson').value := FollowUpInPerson ;
  Select_Assessment.Open;
  
  SumAssesment.Caption := IntToStr( Select_AssessmentAverageScore.Asinteger ) ;

//
end;

procedure TFAssessment.btnShowContractWordClick(Sender: TObject);
begin
  inherited;
//
end;

procedure TFAssessment.BitBtn4Click(Sender: TObject);
begin
  inherited;
   With Select_Assessment do
   begin

    try
      if not (State in [dsEdit,dsInsert]) then
         EDIT;

      Select_Assessmentlogdate.value    := Dm.GetServerDate  ;
      Select_AssessmentFollowUpId.value := FollowUpId ;
      Select_AssessmentFollowUpInPerson.value := FollowUpInPerson ;
      Select_AssessmentCustomerId.value := CustomerId ;
      Select_AssessmentValuatorUserID.value := ValuatorUserID ;
      Select_AssessmentExpertUserID.value   := ExpertUserID ;
      Select_AssessmentUserId.Value         := _UserID ;
      Select_AssessmentAverageScore.Value   :=   Select_AssessmentAssessmenScore1.Asinteger +  Select_AssessmentAssessmenScore2.Asinteger + Select_AssessmentAssessmenScore3.Asinteger  +
                                                 Select_AssessmentAssessmenScore4.Asinteger + Select_AssessmentAssessmenScore5.Asinteger  + Select_AssessmentAssessmenScore6.Asinteger  +
                                                 Select_AssessmentAssessmenScore7.Asinteger + Select_AssessmentAssessmenScore8.Asinteger  ;
      Post;

      with TADOQuery.Create(nil) do
      begin
       Connection := Dm.YeganehConnection;
       CommandTimeout := 1200;

       SQL.Text := ' Update dbo.Tasks set TodoDate = '''+_Today+''' where TaskId = '+ IntToStr(TaskId);
       ExecSQL;

       SQL.Text := ' Update dbo.Cases set Completed = 1,CompleteDate = '''+_Today+''',CompleteComment= '''+'������� ����� ��'+''' where caseId = '+ IntToStr(CaseId);
       ExecSQL;

       SQL.Text := ' Update dbo.Tasks set StatusId = 4  where caseId = '+ IntToStr(CaseId) ;
       ExecSQL;

       SQL.Text := ' Update dbo.Tasks set StatusId = 11  where caseId = '+ IntToStr(CaseId) + ' and TaskID in (select max(taskid) from dbo.tasks where caseId = '+IntToStr(CaseId) + ' ) ';
       ExecSQL;

      end;
    except
      with TADOQuery.Create(nil) do
      begin
       Connection := Dm.YeganehConnection;
       CommandTimeout := 1200;
       SQL.Text :=  '  Insert into [dbo].[Log_Processes] ([Message] ,[Type])  values ('''+IntToStr(CaseId)+''',5)' ;
       ExecSQL;
      end;
      ShowMyMessage('�����','������ ��� ������� �� ��� ����� �� ���� ������ ���� ������',[mbOK],mtInformation);
    end;

      Close;

      Select_Assessment.parameters.ParamByName('@FollowUpInPerson').value := FollowUpInPerson ;
      Open;
   end;
  SumAssesment.Caption := IntToStr( Select_AssessmentAverageScore.Asinteger  ) ;
end;

procedure TFAssessment.BtnCancelClick(Sender: TObject);
begin
  inherited;
  Select_Assessment.Cancel;
  close;


end;

procedure TFAssessment.btnDelEghdamatClick(Sender: TObject);
begin
  inherited;
  IF MessageDlg('��� �� ��� ������� ����� ����Ͽ',mtConfirmation,[mbyes,mbno],0)=mryes then
  Begin
     if  Select_Assessmentid.AsString <> '' then
       Qry_SetResult(' Delete From dbo.FollowUpAssessment Where ID = '+Select_Assessmentid.AsString ,Dm.YeganehConnection)
     else if Select_Assessment.State in [dsinsert,dsedit]  then
     begin
       Select_Assessment.Cancel;
     end;
  End;

  Select_Assessment.Close;
  Select_Assessment.parameters.ParamByName('@FollowUpInPerson').value := FollowUpInPerson ;
  Select_Assessment.Open;

  SumAssesment.Caption := IntToStr( Select_AssessmentAverageScore.Asinteger ) ;


end;

end.
