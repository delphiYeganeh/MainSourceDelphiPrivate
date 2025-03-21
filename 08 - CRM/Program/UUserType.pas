unit UUserType;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtCtrls, Grids, DBGrids, YDbgrid, StdCtrls, ExtActns,
  ActnList, DB, Buttons, ADODB,YShamsiDate;

type
  TfrUserType = class(TMBaseForm)
    DsUserType: TDataSource;
    SPSelect_UserTypeContractType_By_UserTypeID: TADOStoredProc;
    SPSelect_UserTypeContractType_By_UserTypeIDUserTypeContractTypeID: TAutoIncField;
    SPSelect_UserTypeContractType_By_UserTypeIDUserTypeId: TIntegerField;
    SPSelect_UserTypeContractType_By_UserTypeIDContractTypeId: TWordField;
    SPSelect_UserTypeContractType_By_UserTypeIDContractTypeCode: TWideStringField;
    SPSelect_UserTypeContractType_By_UserTypeIDContractTypeTitle: TWideStringField;
    SPSelect_UserTypeContractType_By_UserTypeIDUIContractTypeTitle: TWideStringField;
    SPSelect_UserTypeContractType_By_UserTypeIDuu: TWideStringField;
    pnlMain: TPanel;
    grdAccessContractType: TGroupBox;
    dbgContractType: TYDBGrid;
    Panel3: TPanel;
    BtnAddContractTypeAccess: TBitBtn;
    GroupBox1: TGroupBox;
    dbgUserType: TYDBGrid;
    Panel2: TPanel;
    btnAddUserType: TBitBtn;
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure qryUserTypeAfterScroll(DataSet: TDataSet);
    procedure SPSelect_UserTypeContractType_By_UserTypeIDBeforePost(
      DataSet: TDataSet);
    procedure btnAddUserTypeClick(Sender: TObject);
    procedure BtnAddContractTypeAccessClick(Sender: TObject);
    procedure dbgContractTypeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SPSelect_UserTypeContractType_By_UserTypeIDPostError(
      DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
    procedure AexitExecute(Sender: TObject);
    procedure ADQActionTypePostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure FormShow(Sender: TObject);
  private
    qryUserType : TADOQuery;
    procedure  SetdbgUserType     ;
    Procedure SetdbgContractType (UserTypeID : Integer);

    { Private declarations }
  public
    { Public declarations }
  end;

var
  frUserType: TfrUserType;

implementation

uses dmu, BusinessLayer;

{$R *.dfm}

procedure TfrUserType.FormCreate(Sender: TObject);
begin
  inherited;
    with dm.ContractType do
    begin
      Close;
      Open;
    end;
  SetdbgUserType;
  SetdbgContractType(qryUserType.FieldByName('UserTypeId').Value);
end;



procedure TfrUserType.SetdbgContractType(UserTypeID: Integer);
var ds :TDataSource;
begin

  with SPSelect_UserTypeContractType_By_UserTypeID do
  begin
    Close;
    Parameters.ParamByName('@UserTypeID').Value :=  UserTypeID;
    Open;
  end;

  ds := TDataSource.Create(nil);
  ds.DataSet := SPSelect_UserTypeContractType_By_UserTypeID;

  dbgContractType.DataSource := ds;
  dbgContractType.Columns[0].FieldName := 'UIContractTypeTitle';

end;

procedure TfrUserType.SetdbgUserType;
begin
  qryUserType := TADOQuery.Create(nil);
    with qryUserType do
    begin
      Connection := Dm.YeganehConnection;
      CommandTimeout := 1200;
      Close;
      SQL.Text := 'Select * from UserType';
      Open;
      AfterScroll := qryUserTypeAfterScroll;
      OnPostError := SPSelect_UserTypeContractType_By_UserTypeIDPostError;
    end;

  DsUserType.DataSet :=   qryUserType;
  dbgUserType.Columns[0].FieldName := 'UserTypeCode';
  dbgUserType.Columns[1].FieldName := 'UserTypetitle';
  dbgUserType.Columns[2].FieldName := 'Admin';
end;

procedure TfrUserType.qryUserTypeAfterScroll(DataSet: TDataSet);
begin
  inherited;
if qryUserType.FieldByName('UserTypeId').IsNull then
    SetdbgContractType(0)
  else
    SetdbgContractType(qryUserType.FieldByName('UserTypeId').Value);

end;

procedure TfrUserType.SPSelect_UserTypeContractType_By_UserTypeIDBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  SPSelect_UserTypeContractType_By_UserTypeID.FieldByName('UserTypeId').Value :=  qryUserType.FieldByName('UserTypeId').Value;

end;

procedure TfrUserType.btnAddUserTypeClick(Sender: TObject);
begin
  inherited;
qryUserType.Append;
end;

procedure TfrUserType.BtnAddContractTypeAccessClick(Sender: TObject);
begin
  inherited;
  SPSelect_UserTypeContractType_By_UserTypeID.Append;
end;

procedure TfrUserType.dbgContractTypeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if ((key = vk_delete) and (ssctrl in shift))and(MessageDlg('��� ���� ��� ������� �����Ͽ ',mtConfirmation, [mbYes, mbNo], 0) = mrYes)then
  begin

     Qry_SetResult('delete from UserTypeContractType where UserTypeContractTypeId = '+IntTostr(SPSelect_UserTypeContractType_By_UserTypeIDUserTypeContractTypeID.Value),dm.YeganehConnection);
     key :=0;
       SetdbgContractType(qryUserType.FieldByName('UserTypeId').Value);
  end
  else GotoNextGrid(Sender,Key,shift);
end;

procedure TfrUserType.SPSelect_UserTypeContractType_By_UserTypeIDPostError(
  DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
begin
  inherited;
  ShowMessage('��� �� ��� ј��� ����');
  Abort;
end;
procedure TfrUserType.AexitExecute(Sender: TObject);
begin
  if ((SPSelect_UserTypeContractType_By_UserTypeID.State) in [dsedit,dsinsert]) or (qryUserType.State in [dsedit,dsinsert])  then
  begin
    SPSelect_UserTypeContractType_By_UserTypeID.Cancel ;
    qryUserType.Cancel
    end
    else close;
end;

procedure TfrUserType.ADQActionTypePostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  inherited;
{  ShowMessage('��� �� ��� ј��� ����');
  Abort;
 }
end;

procedure TfrUserType.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  { TODO -oparsa : 14030203 }
  if (NewWidth < 479)  or (NewHeight < 441) then
    Resize := False
  else Resize := True;
   { TODO -oparsa : 14030203 }
  inherited;

end;

procedure TfrUserType.FormShow(Sender: TObject);
begin
  inherited;
  ShapeBase.Brush.Color := _Color1 ;
  pnlMain.Color := _Color1 ;

end;

end.




