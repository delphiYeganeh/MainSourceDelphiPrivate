unit DefineUserGroupUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Menus, ExtActns, ActnList, DB, ExtCtrls, Grids,
  DBGrids, YDbgrid, ComCtrls, DBTreeView, Buttons, ImgList, YShamsiDate,
  ADODB, StdCtrls, StdActns;

type
  TDefineUserGroup = class(TMBaseForm)
    QChartWorkGroup: TADOQuery;
    QChartWorkGroupGroupID: TAutoIncField;
    QChartWorkGroupGroupName: TStringField;
    Panel1: TPanel;
    Panel4: TPanel;
    BBCancel: TBitBtn;
    BitBtnPost: TBitBtn;
    BitBtnEdit: TBitBtn;
    BBInsert: TBitBtn;
    DeleteBtn: TBitBtn;
    YDBGrid1: TYDBGrid;
    SpeedButton3: TSpeedButton;
    BitBtn2: TBitBtn;
    acCheckMemberEnable: TAction;
    Qtemp: TADOQuery;
    ADOQuery1: TADOQuery;
    procedure SpeedButton3Click(Sender: TObject);
    procedure BBInsertClick(Sender: TObject);
    procedure DeleteBtnClick(Sender: TObject);
    procedure BitBtnEditClick(Sender: TObject);
    procedure BitBtnPostClick(Sender: TObject);
    procedure BBCancelClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure YDBGrid1NeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
    procedure acCheckMemberEnableExecute(Sender: TObject);
    procedure acCheckMemberEnableUpdate(Sender: TObject);
    procedure YDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    function Is_User_in_Group:Boolean;

  public
    { Public declarations }
  end;

var
  DefineUserGroup: TDefineUserGroup;

implementation

uses Dmu, UserDefineDM, DateUtils, StrUtils, ChartWorkGroupUnit, FromOrgU, UMain;

{$R *.dfm}

procedure TDefineUserGroup.SpeedButton3Click(Sender: TObject);
begin
   Close;
end;

procedure TDefineUserGroup.BBInsertClick(Sender: TObject);
begin
  QChartWorkGroup.Append;
end;

procedure TDefineUserGroup.DeleteBtnClick(Sender: TObject);
begin
   if ShowMyMessage('ÅÌ€«„','¬Ì« ê—ÊÂ „Ê—œ ‰Ÿ— Õ–› ‘Êœø',mbOKCancel,mtWarning) = mrok then
   begin
      if Is_User_in_Group then
        ShowMsgString('«Ì‰ ê—ÊÂ »Â ò«—»—«‰Ì «‰ ’«» œ«œÂ ‘œÂ «”  »‰«»—«Ì‰ „Ã«“ »Â Õ–› ¬‰ ‰Ì” Ìœ »—«Ì Õ–› ê—ÊÂ »Â ›—„  ⁄—Ì› ò«—»— „—«Ã⁄Â ò—œÂ Ê «‰ ’«» ê—ÊÂ —« Õ–› ‰„«ÌÌœ')
      else
        QChartWorkGroup.Delete;
   end;
end;

procedure TDefineUserGroup.BitBtnEditClick(Sender: TObject);
begin
   QChartWorkGroup.Edit;
end;

procedure TDefineUserGroup.BitBtnPostClick(Sender: TObject);
begin
   if QChartWorkGroup.State in [dsInsert,dsEdit] then
       QChartWorkGroup.Post;
end;

procedure TDefineUserGroup.BBCancelClick(Sender: TObject);
begin
   QChartWorkGroup.Cancel;
end;

procedure TDefineUserGroup.BitBtn2Click(Sender: TObject);
begin
//  ChartWorkGroupForm:=TChartWorkGroupForm.Create(Self);
//  ChartWorkGroupForm.GroupID:=QChartWorkGroupGroupID.AsInteger;
//  ChartWorkGroupForm.Caption:=' „‘«ÂœÂ/ ⁄—Ì› «⁄÷«Ì ê—ÊÂ '+QChartWorkGroupGroupName.AsString + ' »—«”«” ç«—  ”«“„«‰Ì ';
//  ChartWorkGroupForm.ShowModal;
end;

procedure TDefineUserGroup.YDBGrid1NeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Color: TColor);
begin
  if Column.Grid.DataSource.DataSet.RecNo mod 2=0 then
     Color := clWindow
  else
     Color := clBtnFace;

end;

procedure TDefineUserGroup.acCheckMemberEnableExecute(Sender: TObject);
begin
  ChartWorkGroupForm:=TChartWorkGroupForm.Create(Self);
  ChartWorkGroupForm.GroupID:=QChartWorkGroupGroupID.AsInteger;
  ChartWorkGroupForm.Caption:=' „‘«ÂœÂ/ ⁄—Ì› «⁄÷«Ì ê—ÊÂ '+QChartWorkGroupGroupName.AsString + ' »—«”«” ç«—  ”«“„«‰Ì ';
  ChartWorkGroupForm.ShowModal;
end;

procedure TDefineUserGroup.acCheckMemberEnableUpdate(Sender: TObject);
begin
  inherited;
  if QChartWorkGroup.IsEmpty then acCheckMemberEnable.Enabled:=False else acCheckMemberEnable.Enabled:=True; 

end;

function TDefineUserGroup.Is_User_in_Group: Boolean;
begin
  Result:=False;
  Qtemp.Close;
  Qtemp.SQL.Clear;
  Qtemp.SQL.Add('SELECT id FROM Users WHERE ISNULL(GroupID,0)='+IntToStr(QChartWorkGroupGroupID.AsInteger));
  Qtemp.Open;

  if not Qtemp.IsEmpty then Result:=True;

end;

procedure TDefineUserGroup.YDBGrid1DblClick(Sender: TObject);
begin
  inherited;

  if MainForm.flag <> 1 then
    Abort
  else
  begin
    ADOQuery1.Close;
    ADOQuery1.Parameters.ParamByName('GroupId').Value := IntToStr(QChartWorkGroupGroupID.AsInteger);
    ADOQuery1.Parameters.ParamByName('ID').Value := FromOrgForm.SelectedId_new;
    ADOQuery1.ExecSQL;
    ShowMessage('«‰ ’«» »« „Ê›ﬁÌ  «‰Ã«„ ‘œ');
    Close;
  end
end;

End.
