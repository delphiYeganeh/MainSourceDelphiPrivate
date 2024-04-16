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
  public
    { Public declarations }
    constructor Create (Aowner:TComponent;CaseId :Integer;CaseType :Integer);reintroduce;virtual;
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
     SQL.Text := 'insert into Tasks (CaseId,Comment,StatusId,AssignedUserId,AssignedDate)values('+IntToStr(gCaseId)+','''+mmoDescription.Text+''','+IntToStr(dblStatusId.KeyValue)+','
                                                        +IntToStr(dblUserRefrence.KeyValue)+','''+_Today+''''
                                        +')';

    ExecSQL;                                        
  end;
  ShowMessage('ﬂ«— À»  ‘œÂ');
  ModalResult := mrok;
end;

constructor TfrTask.Create(Aowner: TComponent; CaseId: Integer;CaseType :Integer);
begin
 inherited create(AOwner);
 gCaseId := CaseId;
  with dm.UserByCaseFilter do
  begin
    Close;
    Parameters.ParamByName('CaseTypeId1').Value :=  CaseType;
    Parameters.ParamByName('CaseTypeId2').Value := CaseType;
    Parameters.ParamByName('UserId').Value := _UserID;
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


