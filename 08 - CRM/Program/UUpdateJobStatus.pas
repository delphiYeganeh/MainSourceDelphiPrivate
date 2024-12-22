unit UUpdateJobStatus;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtActns, ActnList, DB, ExtCtrls, DBCtrls, Mask,
  UemsVCL, Buttons, StdCtrls, ADODB, MssCalendarPro;

type
  TFUpdateJobStatus = class(TMBaseForm)
    pnlMain: TPanel;
    Panel2: TPanel;
    GroupBoxEdit: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    DBShamsiDateEdit1: TDBShamsiDateEdit;
    dblCaseStatus: TDBLookupComboBox;
    btnReferEdit: TBitBtn;
    btnReferInsert: TBitBtn;
    grbReferenceComment: TGroupBox;
    mmoDescription: TMemo;
    dsMyTasks: TDataSource;
    qryMyTasks: TADOQuery;
    qryMyTasksTaskID: TAutoIncField;
    qryMyTasksCaseId: TIntegerField;
    qryMyTasksComment: TWideStringField;
    qryMyTasksTodoDate: TWideStringField;
    qryMyTasksStatusId: TIntegerField;
    qryMyTasksAssignedUserId: TIntegerField;
    qryMyTasksAssignedDate: TWideStringField;
    qryMyTasksEstimatedDate: TWideStringField;
    qryMyTasksCaseTitle: TWideStringField;
    qryMyTasksCaseTypeTitle: TWideStringField;
    qryMyTasksCasePriorityTitle: TWideStringField;
    qryMyTasksTaskStatusTitle: TWideStringField;
    qryMyTasksProductTitle: TWideStringField;
    qryMyTasksCaseTypeId: TWordField;
    qryMyTasksProductId: TWordField;
    qryMyTasksregisterUserId: TIntegerField;
    qryMyTasksCompleted: TBooleanField;
    qryMyTasksCasesComment: TWideStringField;
    qryMyTasksCasePriorityID: TWordField;
    qryMyTasksCustomerID: TIntegerField;
    qryMyTasksFollowUpID: TIntegerField;
    qryMyTasksIsBug: TBooleanField;
    qryMyTasksCompanyName: TStringField;
    MssCalendarPro1: TMssCalendarPro;
    qryMyTasksAssignedComment: TStringField;
    procedure btnReferInsertClick(Sender: TObject);
    procedure btnReferEditClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
  private
    { Private declarations }
  public
    CaseStatusItem : Integer ;
    TaskId : Integer ;
    ShamsiDate : string ;
  end;

var
  FUpdateJobStatus: TFUpdateJobStatus;

implementation

uses dmu,Uattachments,YShamsiDate;

{$R *.dfm}

procedure TFUpdateJobStatus.btnReferInsertClick(Sender: TObject);
begin
  inherited;

  if Length(mmoDescription.Text)> 1000 then
  begin
    ShowMyMessage('ÅÌ€«„','«„ò«‰ œ—Ã »Ì‘ — «“ 1000 ò«—«ò — »—«Ì ‘—Õ ÊÃÊœ ‰œ«—œ œ— ’Ê— ÌòÂ „ ‰ ÿÊ·«‰Ì ·ÿ›« ÅÌÊ”  ‰„«ÌÌœ',[mbOK],mtInformation);
    Exit;
  end;
  
  if dblCaseStatus.KeyValue = 11 then
  begin
    ShowMyMessage('ÅÌ€«„','«„ò«‰ «‰ Œ«» Ê÷⁄Ì  « „«„ ‘œÂ »Â ’Ê—  œ” Ì ÊÃÊœ ‰œ«—œ',[mbOK],mtInformation);
    Exit;
  end;

  try
    if qryMyTasks.state in [dsedit,dsinsert] then
    begin
      qryMyTasksAssignedComment.AsString := mmoDescription.Text ;
      //qryMyTasksAssignedDate.AsString := DBShamsiDateEdit1.Text;
      //qryMyTasksStatusId.AsInteger := dblCaseStatus.Action ;
      qryMyTasks.Post;
      with TADOQuery.Create(nil) do
      begin
         Connection := Dm.YeganehConnection;
         CommandTimeout := 1200;
         SQL.Text := ' UPDATE [dbo].[FollowUp] SET DoneDate = '''+qryMyTasksEstimatedDate.AsString+''' , DoneComment = '' '+mmoDescription.Text+' '',DoneStatusID = 3 WHERE TaskID = '+IntToStr(qryMyTasksTaskID.AsInteger);

        ExecSQL;
      end;

      qryMyTasks.Requery;
    end;
    GroupBoxEdit.Enabled := False ;
    btnReferInsert .Enabled := False ;
    btnReferEdit.Enabled := True;
  except
    with TADOQuery.Create(nil) do
    begin
     Connection := Dm.YeganehConnection;
     CommandTimeout := 1200;
     SQL.Text :=  '  Insert into [dbo].[Log_Processes] ([Message] ,[Type])  values ('''+IntToStr(qryMyTasksTaskID.AsInteger)+''',3)' ;
     ExecSQL;
    end;
    ShowMyMessage('ÅÌ€«„','⁄„·Ì«  »« Œÿ« „Ê«ÃÂ ‘œ ·ÿ›« œÊ»«—Â «„ Õ«‰ ‰„«ÌÌœ',[mbOK],mtInformation);
  end;
  Close;
end;

procedure TFUpdateJobStatus.btnReferEditClick(Sender: TObject);
begin
  inherited;
  
  if qryMyTasks.RecordCount = 0 then Exit ;
  if not(qryMyTasks.state in [dsedit,dsinsert]) then qryMyTasks.Edit;
  GroupBoxEdit.Enabled := True;
  btnReferInsert .Enabled := True;
  btnReferEdit.Enabled := False;

  mmoDescription.Text := mmoDescription.Text  + #13#10 +'----------------'+#13#10 + _Today + #13#10  ;

end;

procedure TFUpdateJobStatus.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  DBShamsiDateEdit1.Text := MssCalendarPro1.Execute('/');
   mmoDescription.SetFocus;
end;

procedure TFUpdateJobStatus.FormShow(Sender: TObject);
begin
  inherited;
  GroupBoxEdit.Enabled := False ;
  btnReferInsert .Enabled := False ;
  btnReferEdit.Enabled := True;

   With qryMyTasks do
   Begin
      Close;
      SQL.Text:=' Select t.*,CaseTitle,ct.CaseTypeTitle,cp.CasePriorityTitle,ts.TaskStatusTitle,p.ProductTitle,ct.CaseTypeId ,p.ProductId,cases.registerUserId,'
              + ' cases.Completed,Cases.Comment AS CasesComment,cp.CasePriorityID ,Cases.CustomerID,Cases.FollowUpID,Cases.IsBug,c.CompanyName,t.AssignedComment '
              + ' From Tasks t Left Join Cases on Cases.Caseid = T.CaseId '
              + ' LEFT JOIN TaskStatus ts ON ts.TaskStatusID = T.StatusId  '
              + ' LEFT JOIN CasePriority cp ON cp.CasePriorityID = Cases.CasePriorityId '
              + ' LEFT JOIN CaseType ct ON ct.CaseTypeID = Cases.CaseTypeID '
              + ' LEFT JOIN Product p ON p.ProductID = Cases.ProductId '
              + ' LEFT OUTER JOIN  Customer AS c ON c.CustomerID = Cases.CustomerID ' 
              + ' Where AssignedUserId = '+IntToStr(_UserID)+' and (IsNull(LTrim(RTrim(ToDoDate)),'''') = '''') and Completed = 0 '
              + '  and  TaskID ='+ IntToStr(TaskId);
      Open;
      First;
      With dm.UserByCaseFilter do
      Begin
        Close;
          SQL.Text := ' Select * from Users where isactive = 1 AND (ID = '+inttostr(_UserID)+' or  id IN (SELECT Childid FROM [dbo].[ReferralUser] where parentId = '+inttostr(_UserID)+ ' )) '  ;
          //Parameters.ParamByName('CaseTypeId1').Value := qryMyTasksCaseTypeId.Value;
         // Parameters.ParamByName('CaseTypeId2').Value := qryMyTasksCaseTypeId.Value;
          //Parameters.ParamByName('UserId').Value := _UserID;
        Open;
      End;
   End;

   mmoDescription.Text := qryMyTasksAssignedComment.AsString ;

  Dm.RefreshHoliday(copy(_today,1,4));
  MssCalendarPro1.HolidayStr := dm.HolidayStr;
  
end;

procedure TFUpdateJobStatus.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  inherited;
  Resize :=  False;
end;

end.
