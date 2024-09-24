unit UTask;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtActns, ActnList, DB, StdCtrls, Buttons, ExtCtrls,
  YWhereEdit, DBCtrls, Mask, UemsVCL,YShamsiDate,adodb;

type
  TfrTask = class(TMBaseForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    btnCancel: TBitBtn;
    GroupBox2: TGroupBox;
    Label38: TLabel;
    Label39: TLabel;
    dblStatusId: TDBLookupComboBox;
    dblUserRefrence: TDBLookupComboBox;
    Label3: TLabel;
    SpInsert_Task_TaskAssigned: TADOStoredProc;
    SpInsert_Task_TaskAssignedTaskID: TAutoIncField;
    SpInsert_Task_TaskAssignedCaseId: TIntegerField;
    SpInsert_Task_TaskAssignedTitle: TWideStringField;
    SpInsert_Task_TaskAssignedDescription: TWideStringField;
    SpInsert_Task_TaskAssignedTodoDate: TWideStringField;
    SpInsert_Task_TaskAssignedRegisterDate: TWideStringField;
    SpInsert_Task_TaskAssignedRegisterUserId: TIntegerField;
    mmoDescription: TMemo;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    gCaseId :Integer;
    gCustomerId : Integer ;
  public
    { Public declarations }
    constructor Create (Aowner:TComponent;CaseId :Integer;CaseType :Integer;CustomerId : Integer  = 0 );reintroduce;virtual;
  end;

var
  frTask: TfrTask;

implementation

uses dmu;

{$R *.dfm}

procedure TfrTask.BitBtn1Click(Sender: TObject);
begin
  inherited;
  with TADOQuery.Create(nil) do
  begin
     Connection := Dm.YeganehConnection;
     CommandTimeout := 1200;
     SQL.Text := 'insert into Tasks (CaseId,Comment,StatusId,AssignedUserId,AssignedDate)values('+IntToStr(gCaseId)+','''+mmoDescription.Text+''','+IntToStr(dblStatusId.KeyValue)+','
                                                        +IntToStr(dblUserRefrence.KeyValue)+','''+_Today+''''
                                        +')';

     SQL.Text := SQL.Text + ' insert into dbo.FollowUp (IsAuto,TaskID,CustomerID,ActionTypeID,DoneStatusID,MarketerID,Comment,ToDoDate,insertdate,Lastupdate,FollowUpInsertDate)'+
                    ' values(1,@@IDENTITY,'+IntToStr(gCustomerId)+',47,3,'+IntToStr(_MarketerID)+','''+' »«ê ' + IntToStr(gCaseId) +'_'+' Ê÷⁄Ì  '+dblStatusId.Text+'_'+ mmoDescription.text+''','''+_Today+''',getdate(),GetDate()'+','''+_Today+'''' +') ';


    ExecSQL;
  end;
  ShowMessage('ﬂ«— À»  ‘œÂ');
  ModalResult := mrok;
end;

constructor TfrTask.Create(Aowner: TComponent; CaseId: Integer;CaseType :Integer;CustomerId : Integer  = 0);
begin
 inherited create(AOwner);
 gCaseId := CaseId;
 gCustomerId := CustomerId ;
  with dm.UserByCaseFilter do
  begin
    Close;
    SQL.Text := ' Select * from Users where isactive = 1 AND (ID = '+inttostr(_UserID)+' or  id IN (SELECT Childid FROM [dbo].[ReferralUser] where parentId = '+inttostr(_UserID)+ ' )) '  ;
  //  Parameters.ParamByName('CaseTypeId1').Value :=  CaseType;
   // Parameters.ParamByName('CaseTypeId2').Value := CaseType;
   // Parameters.ParamByName('UserId').Value := _UserID;
    Open;
  end;


end;

procedure TfrTask.FormCreate(Sender: TObject);
begin
  inherited;
  Dm.tblTaskStatus.Close;
  Dm.tblTaskStatus.Open;  
end;

end.


