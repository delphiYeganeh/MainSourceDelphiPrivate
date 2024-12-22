unit UCaseAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Grids, DBGrids, YDbgrid, StdCtrls, Buttons,
  YWhereEdit, DBCtrls, Mask, ExtCtrls, ExtActns, ActnList, DB,ADODB,
  xpPanel,YShamsiDate, SolarCalendarPackage;

type
  TfrCaseAdd = class(TMBaseForm)
    Spselect_Tasks: TADOStoredProc;
    Spselect_TasksComment: TWideStringField;
    Spselect_TasksStatusId: TIntegerField;
    Spselect_TasksAssignedUserId: TIntegerField;
    Spselect_TasksAssignedDate: TWideStringField;
    Spselect_TasksEstimatedDate: TWideStringField;
    Spselect_TasksStatus: TStringField;
    Spselect_TasksAssignedUser: TStringField;
    Spselect_TasksTaskID: TAutoIncField;
    Spselect_TasksCaseId: TIntegerField;
    Spselect_TasksTodoDate: TWideStringField;
    pnlMain: TPanel;
    xpPanel1: TxpPanel;
    pnlbtn: TPanel;
    btnCancel: TBitBtn;
    btnAddAttachment: TBitBtn;
    btnDelBR2: TBitBtn;
    grbEdit: TGroupBox;
    Label6: TLabel;
    Label5: TLabel;
    dblCaseStatus: TDBLookupComboBox;
    DBMemo1: TDBMemo;
    btnAddTask: TBitBtn;
    grbTasks: TGroupBox;
    YDBGrid1: TYDBGrid;
    grbCase: TGroupBox;
    Label7: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dblProduct: TDBLookupComboBox;
    edtCaseTitle: TEdit;
    dblCaseType: TDBLookupComboBox;
    dblPriority: TDBLookupComboBox;
    edtCaseID: TEdit;
    CaseCommentM: TMemo;
    btnAttachment: TBitBtn;
    Label9: TLabel;
    Label10: TLabel;
    LabelDate11: TLabel;
    LabelDate12: TLabel;
    btnMapBug: TBitBtn;
    procedure btnDelBR2Click(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnAddTaskClick(Sender: TObject);
    procedure Spselect_TasksAfterScroll(DataSet: TDataSet);
    procedure Spselect_TasksBeforeRefresh(DataSet: TDataSet);
    procedure btnAddAttachmentClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAttachmentClick(Sender: TObject);
    procedure btnMapBugClick(Sender: TObject);
  private
    gCaseId :Integer;
    gCustomerId : Integer ;
    gRegisterUserCase,priorUserId :Integer;
    gCaseStatus :Boolean;
    procedure SetColorForm;
    { Private declarations }
  public
    { Public declarations }
//    constructor Create (AOwner : TComponent;CaseId :Integer;CaseTitle : String;ProductID :Integer;CaseTypeId:Integer;CaseRegisterUserId :Integer;CaseStatus :Boolean);reintroduce;virtual;
    constructor Create(AOwner: TComponent; CaseId: Integer;CaseTitle : String;ProductID :Integer;CaseTypeId:Integer;CaseRegisterUserId :Integer;CaseStatus :Boolean;CaseComment:WideString;CasePriorityId:Integer ;AddJobMod : Boolean = False ; Date1 : string = ''; Date2 : string = ''; CustomerId : Integer  = 0 );
  end;

var
  frCaseAdd: TfrCaseAdd;

implementation

uses dmu, BusinessLayer, UTask, Uattachments, UMapBug;

{$R *.dfm}

{ TfrCaseAdd }

constructor TfrCaseAdd.Create(AOwner: TComponent; CaseId: Integer;CaseTitle : String;ProductID :Integer;CaseTypeId:Integer;CaseRegisterUserId :Integer;CaseStatus :Boolean;CaseComment:WideString;CasePriorityId:Integer;AddJobMod : Boolean = false  ; Date1 : string = ''; Date2 : string = ''; CustomerId : Integer  = 0);
begin
  inherited create(AOwner);

  Dm.dsCasePriority.DataSet.Close;
  Dm.dsCasePriority.DataSet.Open;

  Dm.DsCaseType.DataSet.Close;
  Dm.DsCaseType.DataSet.Open;  

  edtCaseTitle .Text     := CaseTitle;
  dblProduct   .KeyValue := ProductID;
  dblCaseType  .KeyValue := CaseTypeId;
  dblPriority  .KeyValue   :=CasePriorityId;
  LabelDate11 .Caption := Date1;
  LabelDate12 .Caption := Date2;
  edtCaseID.Text:=IntToStr(CaseId);
  CaseCommentM.Lines.Add(CaseComment);

  gCaseId := CaseId;
  gCustomerId := CustomerId;
  gCaseStatus :=     CaseStatus;
  gRegisterUserCase   := CaseRegisterUserId;
  grbCase.Caption := '«ÿ·«⁄«  „Ê—œ ';
  if gCaseStatus = true then
      grbCase.Caption := grbCase.Caption + '-Ê÷⁄Ì  :   ﬂ„Ì· ‘œÂ';
  with Spselect_Tasks do
  begin
   close;
   Parameters.ParamByName('@CaseId').Value := CaseId;
   open;
   btnAddTask.Visible := (RecordCount = 0)and(gCaseStatus = false);
   btnDelBR2.Enabled := gCaseStatus = false;
  end;

  btnAddTask.enabled := not  AddJobMod ;
  btnDelBR2 .enabled := (not  AddJobMod ) and  (gCaseStatus = false);
  btnAddAttachment .enabled := not  AddJobMod ;
  btnCancel .enabled := not  AddJobMod  ;

end;


procedure TfrCaseAdd.btnDelBR2Click(Sender: TObject);
var Id :Integer;
begin
  inherited;
  if Spselect_Tasks.RecordCount > 0 then
    if MessageDlg('¬Ì« »—«Ì Õ–› «ÿ„Ì‰«‰ œ«—Ìœ ø',mtConfirmation,[mbyes,mbno],0)=mryes then
    begin
      with Spselect_Tasks do
        if recordcount = 1 then
        begin
           if _userId = gRegisterUserCase then
           begin
           Id:=Spselect_TasksTaskID.Value;
                Qry_SetResult('Delete from Tasks where TaskId = '+IntToStr(id) + '  delete from  dbo.FollowUp  where TaskId = '+IntToStr(id) ,Dm.YeganehConnection);
                ShowMessage('ﬂ«— Õ–› ê—œÌœ');
                btnAddTask.Visible := True;
                Spselect_Tasks.Requery;
           end
           else ShowMessage('«Ì‰ «—Ã«⁄  Ê”ÿ ‘„« «‰Ã«„ ‰‘œÂ Ê ﬁ«»· Õ–› ‰Ì” ');
        end
        else
        begin
          Spselect_Tasks.Prior;
          Spselect_Tasks.Edit;
          Spselect_TasksTodoDate.Value := '';
          Spselect_Tasks.Post;
          if Spselect_TasksAssignedUserId.Value = _UserID then
             begin
              Id:=Spselect_TasksTaskID.Value;
              Spselect_Tasks.Next;
                Qry_SetResult('Delete from Tasks where TaskId = '+Spselect_TasksTaskID.AsString +'  delete from  dbo.FollowUp  where TaskId = ' +Spselect_TasksTaskID.AsString ,Dm.YeganehConnection);
              Spselect_Tasks.Requery;
              Spselect_Tasks.Locate('TaskID',id,[]);
             end
             else
             begin
              Spselect_Tasks.Next;
              ShowMessage('«Ì‰ «—Ã«⁄  Ê”ÿ ‘„« «‰Ã«„ ‰‘œÂ Ê ﬁ«»· Õ–› ‰Ì” ');
             end;

        end;
    end;
end;

procedure TfrCaseAdd.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Spselect_TasksAssignedUserId.Value <> _UserId) then
    key:=0;
end;

procedure TfrCaseAdd.btnAddTaskClick(Sender: TObject);
begin
  with  TfrTask.Create(Self,gCaseID,dblCaseType.KeyValue,gCustomerId) do
    ShowModal;
   Spselect_Tasks.Requery;
   btnAddTask.Visible := Spselect_Tasks.RecordCount = 0;
end;

procedure TfrCaseAdd.Spselect_TasksAfterScroll(DataSet: TDataSet);
begin
  inherited;
{   DBMemo2.ReadOnly := not( (((Spselect_Tasks.RecordCount = 1)and(gRegisterUserCase = _UserID) )
                         or  ( (Spselect_Tasks.RecordCount > 0) and (priorUserId = _UserId) )
//                         or  (Spselect_TasksAssignedUserId.Value = _UserID)
                         ) and (gCaseStatus = false) and (Spselect_Tasks.Eof));
}
  dblCaseStatus.ReadOnly :=not(  (((Spselect_Tasks.RecordCount = 1)and(gRegisterUserCase = _UserID) )
                               or  ( (Spselect_Tasks.RecordCount > 0) and (priorUserId = _UserId) )
                               or  (Spselect_TasksAssignedUserId.Value = _UserID)) and (gCaseStatus = false) and (Spselect_Tasks.Eof) //(Spselect_Tasks.RecordCount = abs(Spselect_Tasks.RecNo));
                               );
  btnDelBR2.Visible := (((Spselect_Tasks.RecordCount = 1)and(gRegisterUserCase = _UserID) )
                         or  ( (Spselect_Tasks.RecordCount > 0) and (priorUserId = _UserId) )
                          ) and (gCaseStatus = false) and (Spselect_Tasks.RecordCount = Spselect_Tasks.RecNo)
                          ;
end;

procedure TfrCaseAdd.Spselect_TasksBeforeRefresh(DataSet: TDataSet);
begin
  inherited;
  priorUserId := Spselect_TasksAssignedUserId.Value;
end;

procedure TfrCaseAdd.btnAddAttachmentClick(Sender: TObject);
var Editable  :Boolean;
    prUserId :Integer;
begin
  inherited;
if Spselect_Tasks.RecordCount = 0 then exit;

if (abs(Spselect_Tasks.recno) = 1)and(not Spselect_Tasks.eof) then
  prUserId := Spselect_TasksAssignedUserId.Value
else begin
  Spselect_Tasks.Prior;
  prUserId := Spselect_TasksAssignedUserId.Value;
  Spselect_Tasks.Next;
end;
  Editable := ((Spselect_Tasks.RecordCount = abs(Spselect_Tasks.recno)) or (Spselect_Tasks.Eof))
               and( (prUserId = _UserID) or (Spselect_TasksAssignedUserId.Value = _UserID));

     with TfrAttachments.create(Application,1,Spselect_TasksTaskID.Value,not Editable) do
             ShowModal;
end;

procedure TfrCaseAdd.SetColorForm;
begin
  ShapeBase.Brush.Color := _Color1 ;
  pnlMain.Color := _Color1 ;

  xpPanel1.StartColor := _Color1 ;
  xpPanel1.EndColor   := _Color2 ;

  xpPanel1.TitleStartColor :=  _Color3;
  xpPanel1.TitleEndColor   :=  _Color4;
end;

procedure TfrCaseAdd.FormShow(Sender: TObject);
begin
  inherited;
  SetColorForm ;
end;

procedure TfrCaseAdd.btnAttachmentClick(Sender: TObject);
begin
  inherited;
  with TfrAttachments.create(Application,2,Spselect_TasksCaseId.Value,True) do
    ShowModal;
end;

procedure TfrCaseAdd.btnMapBugClick(Sender: TObject);
begin
  inherited;
  FMapBug := TFMapBug.Create(Application,gCaseId) ;
  FMapBug.Showmodal;
  if Assigned(FMapBug) then
    FreeAndNil(FMapBug);
end;

end.
