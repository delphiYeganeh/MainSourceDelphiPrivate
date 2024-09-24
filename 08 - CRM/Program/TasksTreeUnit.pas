unit TasksTreeUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, DBCtrls, ExtCtrls, Grids, DBGrids, Buttons,
  frxClass, YDbgrid;

type
  TTasksTreeForm = class(TForm)
    DS_MainTask: TDataSource;
    Q_MainTask: TADOQuery;
    Q_SubTasks: TADOQuery;
    DS_SubTasks: TDataSource;
    Q_MainTaskFollowUPID: TAutoIncField;
    Q_MainTaskActionTypeID: TIntegerField;
    Q_MainTaskActionTypeTitle: TWideStringField;
    Q_MainTaskMarketerID: TIntegerField;
    Q_MainTaskMarketerTitle: TWideStringField;
    Q_MainTaskPersonTitle: TWideStringField;
    Q_MainTaskCompanyName: TWideStringField;
    Q_MainTaskCustomerID: TIntegerField;
    Q_MainTaskComment: TWideStringField;
    Q_MainTaskToDoDate: TStringField;
    Q_MainTaskDoneDate: TStringField;
    Q_MainTaskToDoTime: TStringField;
    Q_MainTaskDoneComment: TWideStringField;
    Q_MainTaskParentFollowUpID: TIntegerField;
    Q_MainTaskFollowUpInsertDate: TWideStringField;
    Q_MainTaskDoneStatustitle: TWideStringField;
    Q_SubTasksFollowUPID: TAutoIncField;
    Q_SubTasksActionTypeID: TIntegerField;
    Q_SubTasksActionTypeTitle: TWideStringField;
    Q_SubTasksMarketerID: TIntegerField;
    Q_SubTasksMarketerTitle: TWideStringField;
    Q_SubTasksPersonTitle: TWideStringField;
    Q_SubTasksCompanyName: TWideStringField;
    Q_SubTasksCustomerID: TIntegerField;
    Q_SubTasksComment: TWideStringField;
    Q_SubTasksToDoDate: TStringField;
    Q_SubTasksDoneDate: TStringField;
    Q_SubTasksToDoTime: TStringField;
    Q_SubTasksDoneComment: TWideStringField;
    Q_SubTasksParentFollowUpID: TIntegerField;
    Q_SubTasksFollowUpInsertDate: TWideStringField;
    Q_SubTasksDoneStatustitle: TWideStringField;
    pnlMain: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    Label7: TLabel;
    Label8: TLabel;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    GroupBox2: TGroupBox;
    dbgFollow: TYDBGrid;
    Panel1: TPanel;
    BtnCancel: TBitBtn;
    btnShowContractWord: TBitBtn;
    Shape1: TShape;
    procedure BtnCancelClick(Sender: TObject);
    procedure btnShowContractWordClick(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FFollowupID : integer;
    ParentFollowupID : integer;
    procedure SetFollowupID(value: integer);
  public
    { Public declarations }
    property FollowupID : integer read FFollowupID write SetFollowupID;
  end;

var
  TasksTreeForm: TTasksTreeForm;

implementation

uses dmu, ReportsUnit;

{$R *.dfm}

procedure TTasksTreeForm.SetFollowupID(value: integer);
var
   q : TADOQuery;
begin
   FFollowupID := value;

   q:= TADOQuery.Create(nil);
   q.Connection:= Dm.YeganehConnection;
   q.CommandTimeout := 1200;
   q.SQL.Text := 'Select * from FollowUp where FollowupID = ' + IntToStr(FFollowupID);
   q.Open;

   { TODO -oparsa : 14030201 }
   //if q.FieldValues['ParentFollowUpID'] = 0 then
   if (q.FieldValues['ParentFollowUpID'] = 0) or (q.FieldValues['ParentFollowUpID'] = null ) then
   { TODO -oparsa : 14030201 }
      ParentFollowupID := FFollowupID
   else
      ParentFollowupID:= q.FieldValues['ParentFollowUpID'];

   if(Q_MainTask.Active) then
      Q_MainTask.Close;     

   if(Q_SubTasks.Active) then
      Q_SubTasks.Close;

   Q_MainTask.Parameters[0].Value := ParentFollowupID;
   Q_SubTasks.Parameters[0].Value := ParentFollowupID;

   Q_MainTask.Open;
   Q_SubTasks.Open;

   if ParentFollowupID <> FFollowupID then
      Q_SubTasks.Locate('FollowUpID', FFollowupID, [loPartialKey]);
end;

procedure TTasksTreeForm.BtnCancelClick(Sender: TObject);
begin
   Close;
end;

procedure TTasksTreeForm.btnShowContractWordClick(Sender: TObject);
var
   s : string;
begin
  if _ExportFollow then
  begin
    s:= ' ·Ì”  «ﬁœ«„«  '+Dm.Select_FollowUP_By_DateCompanyName.AsString +' »Â „œÌ—Ì  '+Dm.Select_FollowUP_By_DatePersonTitle.AsString + '    ' +#13;
    s:= s + '‰Ê⁄ «ﬁœ«„ : "'+Q_MainTaskActionTypeTitle.AsString+'"    ' + #13;
    s:= s + '»«“«—Ì«» : "'+Q_MainTaskMarketerTitle.AsString+'"    ' + #13;
    s:= s + ' «—ÌŒ «‰Ã«„ : "'+Q_MainTaskToDoDate.AsString+'"      ';
    s:= s + 'Ê÷⁄Ì  «‰Ã«„ : "'+Q_MainTaskDoneStatustitle.AsString+'"     ' + #13;
    s:= s + '‘—Õ «ﬁœ«„ : "' +Q_MainTaskComment.AsString + '"';
    dbgFollow.PrintTitle := s;

    dbgFollow.ExportToWord
  end
  else ShowMessage('‘„« „ÃÊ“ «ÌÃ«œ Œ—ÊÃÌ «“  «ﬁœ«„«  —« ‰œ«—Ìœ');
end;

procedure TTasksTreeForm.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  { TODO -oparsa : 14030203 }
  if (NewWidth < 623)  or (NewHeight < 489) then
    Resize := False
  else Resize := True;
   { TODO -oparsa : 14030203 }
end;

procedure TTasksTreeForm.FormShow(Sender: TObject);
begin
  Shape1.Brush.Color := _Color1 ;
  pnlMain.Color := _Color1 ;
end;

end.
