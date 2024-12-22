unit UToRefer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtActns, ActnList, DB, ExtCtrls, StdCtrls, Mask,
  UemsVCL, Buttons, DBCtrls, ADODB, MssCalendarPro;

type
  TFToRefer = class(TMBaseForm)
    pnlMain: TPanel;
    grbReference: TGroupBox;
    dblUserRefrence: TDBLookupComboBox;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DBShamsiDateEdit1: TDBShamsiDateEdit;
    dblCaseStatus: TDBLookupComboBox;
    grbCaseFinish: TGroupBox;
    mmoCompleteComment: TMemo;
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
    SpInsert_Task: TADOStoredProc;
    Panel3: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    RGTypeJob: TRadioGroup;
    grbReferenceComment: TGroupBox;
    mmoDescription: TMemo;
    btnImageBR: TBitBtn;
    SpeedButton1: TSpeedButton;
    MssCalendarPro1: TMssCalendarPro;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    AutoIncField1: TAutoIncField;
    IntegerField1: TIntegerField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    WideStringField8: TWideStringField;
    WideStringField9: TWideStringField;
    WordField1: TWordField;
    WordField2: TWordField;
    IntegerField4: TIntegerField;
    BooleanField1: TBooleanField;
    WideStringField10: TWideStringField;
    WordField3: TWordField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    BooleanField2: TBooleanField;
    StringField1: TStringField;
    procedure btnImageBRClick(Sender: TObject);
    procedure btnSaveReferenceClick(Sender: TObject);
    procedure btnRefrenceCancelClick(Sender: TObject);
    procedure btnSaveCaseFinishClick(Sender: TObject);
    procedure btnCaseFinishCancelClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure RGTypeJobClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    CaseStatusItem : Integer ;
    TaskId : Integer ;
    ShamsiDate : string ;
    IsTask : Boolean ;
  end;

var
  FToRefer: TFToRefer;

implementation

uses dmu,Uattachments,YShamsiDate;

{$R *.dfm}

procedure TFToRefer.btnImageBRClick(Sender: TObject);
begin
  inherited;
  if qryMyTasks.RecordCount > 0 then
       with TfrAttachments.create(Application,1,qryMyTasksTaskID.Value,false) do
               ShowModal;
end;

procedure TFToRefer.btnSaveReferenceClick(Sender: TObject);
Var NewTaskId:integer;
    ActionTypeId, titleType :String;
begin
  inherited;
  if not(qryMyTasks.state in [dsedit,dsinsert]) then qryMyTasks.Edit;
  qryMyTasksTodoDate.AsString := _Today;
  qryMyTasksStatusId.Value := 4;
  qryMyTasks.Post;
  with SpInsert_Task,Parameters do
  begin
     close;
     ParamByName('@CaseId')       .Value := qryMyTasksCaseId.AsString;
     ParamByName('@Desc')         .Value := mmoDescription.Text;
     ParamByName('@UserRefrence') .Value := dblUserRefrence.KeyValue;
     ExecProc;
     NewTaskId := ParamValues['@RETURN_VALUE'];

     if not IsTask then
     begin
        ActionTypeId := '48' ;
        titleType := ' »«ê '
     end
     else
     begin
       ActionTypeId := '58' ;
       titleType := '  ”ò ';
     end;

     with TADOQuery.Create(nil) do
     begin
        Connection := Dm.YeganehConnection;
        CommandTimeout := 1200;
      // if DBchIsBug.Checked then
         SQL.Text := ' insert into dbo.FollowUp (IsAuto,TaskID,CustomerID,ActionTypeID,DoneStatusID,MarketerID,Comment,ToDoDate,insertdate,Lastupdate,FollowUpInsertDate)'+
                     ' values(1,'+IntToStr(NewTaskId)+',(SELECT top 1 CustomerID FROM [dbo].[Cases] WHERE CaseID = '+qryMyTasksCaseId.AsString+'),'+ActionTypeId+',3,'+IntToStr(_MarketerID)+','''+titleType + qryMyTasksCaseId.AsString +'‹ «—”«· »Â ò«— «»·  '+dblUserRefrence.Text+' ‹ '+ mmoDescription.text+''','''+_Today+''',getdate(),GetDate()'+','''+_Today+'''' +') ';

       ExecSQL;
     end;

  end;

  if messageShowString('ﬂ«— À»  ê—œÌœ °¬Ì« ÅÌÊ” Ì »—«Ì «Ì‰ﬂ«— „ÌŒÊ«ÂÌœ «÷«›Â ﬂ‰Ìœø',True) then
     with TfrAttachments.create(Application,1,NewTaskId,false) do
         ShowModal;

  grbReferenceComment.Visible :=false;
  qryMyTasks.Requery;
end;

procedure TFToRefer.btnRefrenceCancelClick(Sender: TObject);
begin
  inherited;
  grbReferenceComment.Visible:=False;
end;

procedure TFToRefer.btnSaveCaseFinishClick(Sender: TObject);
var
    ActionTypeId, titleType :String;
begin
  inherited;
   qryMyTasks.Edit;
   qryMyTasksTodoDate.AsString := _Today;
   qryMyTasks.Post;

     if not IsTask then
     begin
        ActionTypeId := '49' ;
        titleType := ' »«ê '
     end
     else
     begin
       ActionTypeId := '59' ;
       titleType := '  ”ò ';
     end;

  with TADOQuery.Create(nil) do
  begin
     Connection := Dm.YeganehConnection;
     CommandTimeout := 1200;
     SQL.Text :='Update Cases set Completed = 1,CompleteDate = '''+_Today+''',CompleteComment= '''+mmoCompleteComment.Text+''' where caseId = '+qryMyTasksCaseId.AsString;

     SQL.Text := SQL.Text + ' insert into dbo.FollowUp (IsAuto,TaskID,CustomerID,ActionTypeID,DoneStatusID,MarketerID,Comment,ToDoDate,insertdate,Lastupdate,FollowUpInsertDate)'+
              ' values(1,0,(SELECT top 1 CustomerID FROM [dbo].[Cases] WHERE CaseID = '+qryMyTasksCaseId.AsString+'),'+ActionTypeId+',2,'+IntToStr(_MarketerID)+','''+titleType + qryMyTasksCaseId.AsString +' ‹ « „«„ ‹ '+ mmoCompleteComment.text+''','''+_Today+''',getdate(),GetDate()'+','''+_Today+'''' +') ';


    ExecSQL;
  end;

  qryMyTasks.Requery;
  grbCaseFinish.Visible :=false;
end;

procedure TFToRefer.btnCaseFinishCancelClick(Sender: TObject);
begin
  inherited;
  grbCaseFinish.Visible :=false;
end;

procedure TFToRefer.BitBtn2Click(Sender: TObject);
Var NewTaskId :integer;
  mmoDescriptiontmp :string;
    ActionTypeId, titleType :String;
begin
  inherited;
  if qryMyTasks.RecordCount = 0 then
  begin
    ShowMyMessage('ÅÌ€«„','«Ì‰ ò«— œ—ò«— «»· ‘„« ‰„Ì »«‘œ',[mbOK],mtInformation);
    Exit ;
  end;

  if RGTypeJob.ItemIndex = 0 then
  begin

    if Length(mmoDescription.Text)> 1000 then
    begin
      ShowMyMessage('ÅÌ€«„','«„ò«‰ œ—Ã »Ì‘ — «“ 1000 ò«—«ò — »—«Ì ‘—Õ ÊÃÊœ ‰œ«—œ œ— ’Ê— ÌòÂ „ ‰ ÿÊ·«‰Ì ·ÿ›« ÅÌÊ”  ‰„«ÌÌœ',[mbOK],mtInformation);
      Exit;
    end;

    if dblCaseStatus.KeyValue = 11 then
    begin
      ShowMyMessage('ÅÌ€«„','«„ò«‰ «‰ Œ«» Ê÷⁄Ì  « „«„ ‘œÂ œ— «—Ã«⁄ ò«— ÊÃÊœ ‰œ«—œ',[mbOK],mtInformation);
      Exit;
    end;

    if dblUserRefrence.KeyValue = null then
    begin
      ShowMyMessage('ÅÌ€«„','·ÿ›« «—Ã«⁄ ‘Ê‰œÂ «‰ Œ«» ‘Êœ',[mbOK],mtInformation);
      Exit;
    end;

    mmoDescriptiontmp := mmoDescription.Text ;
    if //_UserID =99
    99 = 99 then
    begin
       mmoDescriptiontmp := Replace(Trim(mmoDescriptiontmp),' ','');
      // mmoDescriptiontmp := ReplaceSpace(mmoDescriptiontmp);
       mmoDescriptiontmp := Replace(Trim(mmoDescriptiontmp),'.','');
       mmoDescriptiontmp := Replace(Trim(mmoDescriptiontmp),'-','');
       mmoDescriptiontmp := Replace(Trim(mmoDescriptiontmp),'/','');
       mmoDescriptiontmp := Replace(Trim(mmoDescriptiontmp),'\','');
       mmoDescriptiontmp := Replace(Trim(mmoDescriptiontmp),':','');
       mmoDescriptiontmp := Replace(Trim(mmoDescriptiontmp),';','');
       mmoDescriptiontmp := Replace(Trim(mmoDescriptiontmp),'[','');
       mmoDescriptiontmp := Replace(Trim(mmoDescriptiontmp),']','');
       mmoDescriptiontmp := Replace(Trim(mmoDescriptiontmp),'{','');
       mmoDescriptiontmp := Replace(Trim(mmoDescriptiontmp),'}','');
       mmoDescriptiontmp := Replace(Trim(mmoDescriptiontmp),'(','');
       mmoDescriptiontmp := Replace(Trim(mmoDescriptiontmp),')','');
       mmoDescriptiontmp := Replace(Trim(mmoDescriptiontmp),'=','');
       mmoDescriptiontmp := Replace(Trim(mmoDescriptiontmp),'+','');
       mmoDescriptiontmp := Replace(Trim(mmoDescriptiontmp),'-','');
       mmoDescriptiontmp := Replace(Trim(mmoDescriptiontmp),'&','');
       mmoDescriptiontmp := Replace(Trim(mmoDescriptiontmp),'^','');
       mmoDescriptiontmp := Replace(Trim(mmoDescriptiontmp),'%','');
       mmoDescriptiontmp := Replace(Trim(mmoDescriptiontmp),'$','');
       mmoDescriptiontmp := Replace(Trim(mmoDescriptiontmp),'#','');
       mmoDescriptiontmp := Replace(Trim(mmoDescriptiontmp),'@','');
       mmoDescriptiontmp := Replace(Trim(mmoDescriptiontmp),'!','');
       mmoDescriptiontmp := Replace(Trim(mmoDescriptiontmp),'~','');
       mmoDescriptiontmp := Replace(Trim(mmoDescriptiontmp),'_','');
       mmoDescriptiontmp := Replace(Trim(mmoDescriptiontmp),'"','');
       mmoDescriptiontmp := Replace(Trim(mmoDescriptiontmp),'.','');
       mmoDescriptiontmp := Replace(Trim(mmoDescriptiontmp),'''','');
       mmoDescriptiontmp := Replace(Trim(mmoDescriptiontmp),'|','');

       mmoDescriptiontmp := Replace(Trim(mmoDescriptiontmp),'0','');
       mmoDescriptiontmp := Replace(Trim(mmoDescriptiontmp),'1','');
       mmoDescriptiontmp := Replace(Trim(mmoDescriptiontmp),'2','');
       mmoDescriptiontmp := Replace(Trim(mmoDescriptiontmp),'3','');
       mmoDescriptiontmp := Replace(Trim(mmoDescriptiontmp),'4','');
       mmoDescriptiontmp := Replace(Trim(mmoDescriptiontmp),'5','');
       mmoDescriptiontmp := Replace(Trim(mmoDescriptiontmp),'6','');
       mmoDescriptiontmp := Replace(Trim(mmoDescriptiontmp),'7','');
       mmoDescriptiontmp := Replace(Trim(mmoDescriptiontmp),'8','');
       mmoDescriptiontmp := Replace(Trim(mmoDescriptiontmp),'9','');

       if Length(mmoDescriptiontmp)< 5 then
       begin
        ShowMyMessage('ÅÌ€«„','·ÿ›« ‘—Õ „‰«”» ÃÂ  «—Ã«⁄ Ê«—œ ‰„«ÌÌœ',[mbOK],mtInformation);
        Exit;
       end;
    end;


    if Trim(mmoDescription.Text)= '' then
    begin
      ShowMyMessage('ÅÌ€«„','·ÿ›« ‘—Õ «—Ã«⁄ Ê«—œ ‰„«ÌÌœ',[mbOK],mtInformation);
      Exit;
    end;

       (*
    if dblCaseStatus.KeyValue = null then
    begin
      ShowMyMessage('ÅÌ€«„','·ÿ›« Ê÷⁄Ì  «‰ Œ«» ‰„«ÌÌœ',[mbOK],mtInformation);
      Exit;
    end;

    if DBShamsiDateEdit1.Text = '' then
    begin
      ShowMyMessage('ÅÌ€«„','·ÿ›«  «—ÌŒ  ⁄Âœ «‰ Œ«» ‰„«ÌÌœ',[mbOK],mtInformation);
      Exit;
    end;
              *)

    try

      if not(qryMyTasks.state in [dsedit,dsinsert]) then
        qryMyTasks.Edit;

      qryMyTasksTodoDate.AsString := _Today;
      qryMyTasksStatusId.Value := 4;  //ò«— ﬁ»·Ì «‰Ã«„ ‘œÂ
      qryMyTasks.Post;


       if IsTask then
       begin
         ActionTypeId := '58' ;
         titleType := '  ”ò ';
       end
       else
       begin
          ActionTypeId := '48' ;
          titleType := ' »«ê ';
       end;

      with SpInsert_Task,Parameters do
      begin
         close;
         ParamByName('@CaseId')       .Value := qryMyTasksCaseId.AsString;
         ParamByName('@Desc')         .Value := mmoDescription.Text;
         ParamByName('@UserRefrence') .Value := dblUserRefrence.KeyValue;      // ò«— ÃœÌœ „‰ Ÿ—  «ÌÌœ Â” 
         ExecProc;
         NewTaskId := ParamValues['@RETURN_VALUE'];

         with TADOQuery.Create(nil) do
         begin
            Connection := Dm.YeganehConnection;
            CommandTimeout := 1200;
          // if DBchIsBug.Checked then
             SQL.Text := ' insert into dbo.FollowUp (IsAuto,TaskID,CustomerID,ActionTypeID,DoneStatusID,MarketerID,Comment,ToDoDate,insertdate,Lastupdate,FollowUpInsertDate)'+
                         ' values(1,'+IntToStr(NewTaskId)+',(SELECT top 1 CustomerID FROM [dbo].[Cases] WHERE CaseID = '+qryMyTasksCaseId.AsString+'),'+ActionTypeId+',3,'+IntToStr(_MarketerID)+','''+titleType + qryMyTasksCaseId.AsString +'‹ «—”«· »Â ò«— «»·  '+dblUserRefrence.Text+' ‹ '+ mmoDescription.text+''','''+_Today+''',getdate(),GetDate()'+','''+_Today+'''' +') ';

           ExecSQL;
         end;

      end;

      if messageShowString('ﬂ«— À»  ê—œÌœ °¬Ì« ÅÌÊ” Ì »—«Ì «Ì‰ﬂ«— „ÌŒÊ«ÂÌœ «÷«›Â ﬂ‰Ìœø',True) then
         with TfrAttachments.create(Application,1,NewTaskId,false) do
             ShowModal;

      grbReferenceComment.Visible :=false;
      qryMyTasks.Requery;
    except
      with TADOQuery.Create(nil) do
      begin
       Connection := Dm.YeganehConnection;
       CommandTimeout := 1200;
       SQL.Text :=  '  Insert into [dbo].[Log_Processes] ([Message] ,[Type])  values ('''+qryMyTasksCaseId.AsString+'_'+dblUserRefrence.Text+''',1)' ;
       ExecSQL;
      end;
      
      if not(qryMyTasks.state in [dsedit,dsinsert]) then
        qryMyTasks.Edit;

      qryMyTasksTodoDate.AsString := '';
      qryMyTasksStatusId.Value := 8;  //ò«— ﬁ»·Ì «‰Ã«„ ‘œÂ
      qryMyTasks.Post;

      ShowMyMessage('ÅÌ€«„','⁄„·Ì«  «—Ã«⁄ »« Œÿ« „Ê«ÃÂ ‘œ ·ÿ›« œÊ»«—Â «„ Õ«‰ ‰„«ÌÌœ',[mbOK],mtInformation);
    end;
  end
  else
  begin

    if Trim(mmoCompleteComment.Text)= '' then
    begin
      ShowMyMessage('ÅÌ€«„','·ÿ›« ‘—Õ « „«„ Ê«—œ ‰„«ÌÌœ',[mbOK],mtInformation);
      Exit;
    end;

    if Length(mmoCompleteComment.text)> 1000 then
    begin
      ShowMyMessage('ÅÌ€«„','«„ò«‰ œ—Ã »Ì‘ — «“ 1000 ò«—«ò — »—«Ì ‘—Õ ÊÃÊœ ‰œ«—œ œ— ’Ê— ÌòÂ „ ‰ ÿÊ·«‰Ì ·ÿ›« ÅÌÊ”  ‰„«ÌÌœ',[mbOK],mtInformation);
      Exit;
    end;

    //'»« « „«„ ﬂ«— „Ê—œ „—»ÊÿÂ ‰Ì“ ﬂ«„· ŒÊ«Âœ ‘œ° »—«Ì «Ì‰ﬂ«— «ÿ„Ì‰«‰ œ«—Ìœø'
    if MessageDlg('»« « „«„ «Ì‰ ò«— „Ê—œ/»«ê „— »ÿ ‰Ì“ ò«„· ŒÊ«Âœ ‘œ »—«Ì  «ÌÌœ „ÿ„⁄‰ Â” Ìœø',mtConfirmation,[mbyes,mbno],0)<> mryes then
    begin
      Exit;
    end;

     if IsTask then
     begin
       ActionTypeId := '59' ;
       titleType := '  ”ò ';
     end
     else
     begin
        ActionTypeId := '49' ;
        titleType := ' »«ê ';
     end;

    try
      qryMyTasks.Edit;
      qryMyTasksTodoDate.AsString := _Today;
      qryMyTasks.Post;

      with TADOQuery.Create(nil) do
      begin
       Connection := Dm.YeganehConnection;
       CommandTimeout := 1200;
       SQL.Text := ' Update dbo.Cases set Completed = 1,CompleteDate = '''+_Today+''',CompleteComment= '''+mmoCompleteComment.Text+''' where caseId = '+qryMyTasksCaseId.AsString;
       ExecSQL;

       SQL.Text := ' Update dbo.Tasks set StatusId = 4  where caseId = '+qryMyTasksCaseId.AsString;
       ExecSQL;

       SQL.Text := ' Update dbo.Tasks set StatusId = 11  where caseId = '+qryMyTasksCaseId.AsString + ' and TaskID in (select max(taskid) from dbo.tasks where caseId = '+qryMyTasksCaseId.AsString + ' ) ';
       ExecSQL;

       SQL.Text :=  ' insert into dbo.FollowUp (IsAuto,TaskID,CustomerID,ActionTypeID,DoneStatusID,DoneComment,MarketerID,Comment,ToDoDate,insertdate,Lastupdate,FollowUpInsertDate,DoneDate)'+
                    ' values(1,0,(SELECT top 1 CustomerID FROM [dbo].[Cases] WHERE CaseID = '+qryMyTasksCaseId.AsString+'),'+ActionTypeId+',2,'''+ mmoCompleteComment.text+''','+IntToStr(_MarketerID)+','''+titleType + qryMyTasksCaseId.AsString +'_ « „«„ '+''','''+_Today+''',getdate(),GetDate()'+','''+_Today+'''' +','''+_Today+''''+') ';
        ExecSQL;
        
        SQL.Text :=  '   UPDATE [dbo].[FollowUp] SET DoneStatusID = 2 WHERE taskid IN (SELECT taskid FROM tasks WHERE CaseId = '+qryMyTasksCaseId.AsString +')   '  ;
        ExecSQL;
      end;

      qryMyTasks.Requery;
      grbCaseFinish.Visible :=false;
    except
      with TADOQuery.Create(nil) do
      begin
       Connection := Dm.YeganehConnection;
       CommandTimeout := 1200;
       SQL.Text :=  '  Insert into [dbo].[Log_Processes] ([Message] ,[Type])  values ('''+qryMyTasksCaseId.AsString+''',2)' ;
       ExecSQL;
      end;
      ShowMyMessage('ÅÌ€«„','⁄„·Ì«  « „«„ ò«— »« Œÿ« „Ê«ÃÂ ‘œ ·ÿ›« œÊ»«—Â «„ Õ«‰ ‰„«ÌÌœ',[mbOK],mtInformation);
    end;
  end;
  close;
end;

procedure TFToRefer.BitBtn3Click(Sender: TObject);
begin
  inherited;
  if RGTypeJob.ItemIndex = 0 then
  begin
    grbReferenceComment.Visible := False;
  end
  else
  begin
    grbCaseFinish.Visible := false;
  end;
end;

procedure TFToRefer.RGTypeJobClick(Sender: TObject);
begin
  inherited;
  if dblUserRefrence.KeyValue <> null then
  begin
    grbReferenceComment.Visible := True;
    grbReferenceComment.BringToFront;
  end;

  if  RGTypeJob.ItemIndex = 0 then
  begin
    grbReference.Enabled := True;
    //grbReferenceComment.BringToFront;
    grbCaseFinish.Enabled := False;
  end
  else
  begin
    grbCaseFinish.Enabled := True;
    grbReference.Enabled  := False;
  end;
end;

procedure TFToRefer.FormShow(Sender: TObject);
begin
  inherited;

   With qryMyTasks do
   Begin
      Close;
      SQL.Text:=' Select t.*,CaseTitle,ct.CaseTypeTitle,cp.CasePriorityTitle,ts.TaskStatusTitle,p.ProductTitle,ct.CaseTypeId ,p.ProductId,cases.registerUserId,'
              + ' cases.Completed,Cases.Comment AS CasesComment,cp.CasePriorityID ,Cases.CustomerID,Cases.FollowUpID,Cases.IsBug,c.CompanyName '
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
         // Parameters.ParamByName('CaseTypeId1').Value := qryMyTasksCaseTypeId.Value;
         // Parameters.ParamByName('CaseTypeId2').Value := qryMyTasksCaseTypeId.Value;
         // Parameters.ParamByName('UserId').Value := _UserID;
        Open;
      End;
   End;

  grbReference.Enabled := True;
  grbCaseFinish.Enabled := False;
  RGTypeJob.Enabled := _accessID = 9 ;

  Dm.RefreshHoliday(copy(_today,1,4));
  MssCalendarPro1.HolidayStr := dm.HolidayStr;  
end;


procedure TFToRefer.SpeedButton1Click(Sender: TObject);
begin
  inherited;
   DBShamsiDateEdit1.Text := MssCalendarPro1.Execute('/');
end;

procedure TFToRefer.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  inherited;
  Resize :=  False;
end;

end.
