unit WorkSheetBaseResultsUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Menus, ExtActns, ActnList, DB, ExtCtrls, MssPanelPro,
  Buttons, StdCtrls, DBCtrls, ADODB, Grids, DBGrids, MssDBGrid,
  MssSearchPro, MssCalendarPro, MssMessage, AppEvnts, AdvGlowButton;

type
  TFWorkSheetBaseResults = class(TMBaseForm)
    MssPanelPro1: TMssPanelPro;
    MssPanelPro2: TMssPanelPro;
    MssPanelPro3: TMssPanelPro;
    SpeedButton10: TAdvGlowButton;
    SpeedButton1: TAdvGlowButton;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    DBText1: TDBText;
    Label3: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Label4: TLabel;
    Label5: TLabel;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    DBText10: TDBText;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBText11: TDBText;
    DBText12: TDBText;
    DBText13: TDBText;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBMemo1: TDBMemo;
    DBCheckBox1: TDBCheckBox;
    QSession: TADOQuery;
    QSessionID: TAutoIncField;
    QSessionType: TIntegerField;
    QSessionlkType: TStringField;
    QSessionRegUserID: TIntegerField;
    QSessionlkRegUserID: TStringField;
    QSessionRegDate_Shamsi: TStringField;
    QSessionRegDate_Miladi: TStringField;
    QSessionYear_Shamsi: TStringField;
    QSessionYear_Miladi: TStringField;
    QSessionMonth_Shamsi: TStringField;
    QSessionMonth_Miladi: TStringField;
    QSessionDay_Shamsi: TStringField;
    QSessionDay_Miladi: TStringField;
    QSessionPlace: TStringField;
    QSessionSubject: TStringField;
    QSessionImportantLevel: TIntegerField;
    QSessionlkImportantLevel: TStringField;
    QSessionDescription: TStringField;
    QSessionManagerUserID: TIntegerField;
    QSessionlkManagerUserID: TStringField;
    QSessionStatus: TIntegerField;
    QSessionlkStatus: TStringField;
    QSessionBeginTimeToMinute: TIntegerField;
    QSessionEndTimeToMinute: TIntegerField;
    QSessionSendNews: TBooleanField;
    QSessionMonshi: TIntegerField;
    QSessionlkMonshi: TStringField;
    QSessionBeginTimeHour: TStringField;
    QSessionBeginTimeMinute: TStringField;
    QSessionEndTimeHour: TStringField;
    QSessionEndTimeMinute: TStringField;
    QSessionDate_Shamsi: TStringField;
    QSessionDate_Miladi: TStringField;
    QGetMonshi: TADOQuery;
    QGetMonshiMonshi: TIntegerField;
    DSWorkSheet_Results: TDataSource;
    DSWorkSheet_ResultUsers: TDataSource;
    WorkSheet_Results: TADOQuery;
    WorkSheet_ResultUsers: TADOQuery;
    WorkSheet_ResultsID: TAutoIncField;
    WorkSheet_ResultsWorkSheetBaseID: TIntegerField;
    WorkSheet_ResultsImage: TBlobField;
    WorkSheet_ResultsExtension: TIntegerField;
    WorkSheet_ResultsDescription: TStringField;
    WorkSheet_ResultsRegDate_Shamsi: TStringField;
    WorkSheet_ResultsRegDate_Miladi: TStringField;
    WorkSheet_ResultsRegUserID: TIntegerField;
    WorkSheet_ResultUsersID: TAutoIncField;
    WorkSheet_ResultUsersWorkSheet_ResultsID: TIntegerField;
    WorkSheet_ResultUsersUserID: TIntegerField;
    WorkSheet_ResultUsersDoAtDate: TStringField;
    WorkSheet_ResultUserslkUser: TStringField;
    MssCalendarPro1: TMssCalendarPro;
    MssSearchPro1: TMssSearchPro;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    MssDBGrid1: TMssDBGrid;
    SpeedButton5: TAdvGlowButton;
    SpeedButton4: TAdvGlowButton;
    SpeedButton3: TAdvGlowButton;
    SpeedButton2: TAdvGlowButton;
    SpeedButton6: TAdvGlowButton;
    MssDBGrid2: TMssDBGrid;
    SpeedButton12: TAdvGlowButton;
    SpeedButton13: TAdvGlowButton;
    SpeedButton14: TAdvGlowButton;
    SpeedButton15: TAdvGlowButton;
    SpeedButton16: TAdvGlowButton;
    MssMessage1: TMssMessage;
    acAddMosavabeh: TAction;
    acEditMosavabeh: TAction;
    acDelMosavabeh: TAction;
    acCancelMosavabeh: TAction;
    acPostMosavabeh: TAction;
    acAddUser: TAction;
    acEditUser: TAction;
    acDeleteUser: TAction;
    acCancelUser: TAction;
    acPostUser: TAction;
    Bevel1: TBevel;
    SpeedButton7: TAdvGlowButton;
    acSendInnerLetter: TAction;
    QSessionSendLetter: TBooleanField;
    spCreateInnerLetter: TADOStoredProc;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    acSendInnerLetterToOtherUsers: TAction;
    spCreateInnerLetterForOtherUsers: TADOStoredProc;
    QSessionSendLetterToOtherPerson: TBooleanField;
    pnlMain: TPanel;
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DSWorkSheet_ResultsDataChange(Sender: TObject;
      Field: TField);
    procedure WorkSheet_ResultsNewRecord(DataSet: TDataSet);
    procedure WorkSheet_ResultUsersNewRecord(DataSet: TDataSet);
    procedure MssDBGrid2EditButtonClick(Sender: TObject);
    procedure MssDBGrid1EditButtonClick(Sender: TObject);
    procedure acAddMosavabehExecute(Sender: TObject);
    procedure acAddMosavabehUpdate(Sender: TObject);
    procedure acEditMosavabehExecute(Sender: TObject);
    procedure acEditMosavabehUpdate(Sender: TObject);
    procedure acDelMosavabehExecute(Sender: TObject);
    procedure acDelMosavabehUpdate(Sender: TObject);
    procedure acCancelMosavabehExecute(Sender: TObject);
    procedure acCancelMosavabehUpdate(Sender: TObject);
    procedure acPostMosavabehExecute(Sender: TObject);
    procedure acPostMosavabehUpdate(Sender: TObject);
    procedure acAddUserExecute(Sender: TObject);
    procedure acAddUserUpdate(Sender: TObject);
    procedure acEditUserExecute(Sender: TObject);
    procedure acEditUserUpdate(Sender: TObject);
    procedure acDeleteUserExecute(Sender: TObject);
    procedure acDeleteUserUpdate(Sender: TObject);
    procedure acCancelUserExecute(Sender: TObject);
    procedure acCancelUserUpdate(Sender: TObject);
    procedure acPostUserExecute(Sender: TObject);
    procedure acPostUserUpdate(Sender: TObject);
    procedure DSFormDataChange(Sender: TObject; Field: TField);
    procedure MssDBGrid1DblClick(Sender: TObject);
    procedure acSendInnerLetterExecute(Sender: TObject);
    procedure acSendInnerLetterUpdate(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure acSendInnerLetterToOtherUsersExecute(Sender: TObject);
    procedure acSendInnerLetterToOtherUsersUpdate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    FWorkSheetID: Integer;
    FAccessToSaveWorkSheetResult: Boolean;
    FValueFrom_FWorkSheetEnterDate: WideString;
    FInnerLetterSecID: Integer;
    procedure SetWorkSheetID(const Value: Integer);
    function IsAccessToSaveWorkSheetResult:Boolean;
    procedure SetAccessToSaveWorkSheetResult(const Value: Boolean);
    procedure SetValueFrom_FWorkSheetEnterDate(const Value: WideString);
    procedure SetInnerLetterSecID(const Value: Integer);
  public
    { Public declarations }
    property WorkSheetID:Integer read FWorkSheetID write SetWorkSheetID;
    property AccessToSaveWorkSheetResult:Boolean read FAccessToSaveWorkSheetResult write SetAccessToSaveWorkSheetResult;
    property ValueFrom_FWorkSheetEnterDate:WideString read FValueFrom_FWorkSheetEnterDate write SetValueFrom_FWorkSheetEnterDate;
    property InnerLetterSecID:Integer read FInnerLetterSecID write SetInnerLetterSecID;
  end;

var
  FWorkSheetBaseResults: TFWorkSheetBaseResults;

implementation

uses WorkSheetSelectionUnit, Dmu, WorkSheetEnterDateUnit,
  WorkSheetAddInnerLetterUnit;

{$R *.dfm}

function TFWorkSheetBaseResults.IsAccessToSaveWorkSheetResult: Boolean;
begin
  Result:=False;
  if WorkSheetID > 0 then
  begin
    QGetMonshi.Close;
    QGetMonshi.Parameters.ParamByName('WorkSheetID').Value:=WorkSheetID;
    QGetMonshi.Open;
    if not QGetMonshi.IsEmpty then
      Result := (_UserID=QGetMonshiMonshi.AsInteger);
{
      if _UserID=QGetMonshiMonshi.AsInteger then
        Result:=True
      else
        Result:=False;
}
  end;
end;

procedure TFWorkSheetBaseResults.SetAccessToSaveWorkSheetResult(
  const Value: Boolean);
begin
  FAccessToSaveWorkSheetResult := Value;
end;

procedure TFWorkSheetBaseResults.SetWorkSheetID(const Value: Integer);
begin
  FWorkSheetID := Value;
end;

procedure TFWorkSheetBaseResults.SpeedButton10Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFWorkSheetBaseResults.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  FWorkSheetSelection:=TFWorkSheetSelection.Create(Application);
  FWorkSheetSelection.ShowModal;
  WorkSheetID:=FWorkSheetSelection.WorkSheetBaseID;
  if WorkSheetID > 0 then
  begin
    AccessToSaveWorkSheetResult:= IsAccessToSaveWorkSheetResult;
{
    if IsAccessToSaveWorkSheetResult then
      AccessToSaveWorkSheetResult:=True
    else
      AccessToSaveWorkSheetResult:=False;
}
    QSession.Close;
    QSession.SQL.Clear;
    QSession.SQL.Add('SELECT * FROM WorkSheet_Base WHERE ID='+IntToStr(WorkSheetID));
    QSession.Open;
  end
  else
  begin
    AccessToSaveWorkSheetResult:=False;
    QSession.Close;
    WorkSheet_Results.Close;
    WorkSheet_ResultUsers.Close;
  end;
end;

procedure TFWorkSheetBaseResults.FormShow(Sender: TObject);
begin
  inherited;
  AccessToSaveWorkSheetResult:=False;
  InnerLetterSecID:=0;
end;

procedure TFWorkSheetBaseResults.DSWorkSheet_ResultsDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  WorkSheet_ResultUsers.Close;
  WorkSheet_ResultUsers.Parameters.ParamByName('WorkSheetResultsID').Value:=WorkSheet_ResultsID.AsInteger;
  WorkSheet_ResultUsers.Open;
end;

procedure TFWorkSheetBaseResults.WorkSheet_ResultsNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  WorkSheet_ResultsWorkSheetBaseID.AsInteger:=WorkSheetID;
end;

procedure TFWorkSheetBaseResults.WorkSheet_ResultUsersNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  WorkSheet_ResultUsersWorkSheet_ResultsID.AsInteger:=WorkSheet_ResultsID.AsInteger;
end;

procedure TFWorkSheetBaseResults.MssDBGrid2EditButtonClick(
  Sender: TObject);
var
  OutPutID : Integer;
begin
  inherited;
  if UpperCase(MssDBGrid2.SelectedField.FieldName)=UpperCase('lkUser') then
  begin
    if (WorkSheet_ResultUsers.State=dsEdit) or (WorkSheet_ResultUsers.State=dsInsert) then
    begin
      OutPutID:=MssSearchPro1.Execute;
      if OutPutID > 0 then
        WorkSheet_ResultUsersUserID.AsInteger:=OutPutID;
    end
    else
    begin
      MssMessage1.DialogSize:=460;
      MssMessage1.MessageType:=MssError;
      MssMessage1.execute('»«Ìœ œ— Õ«·  œ—Ã Ì« ÊÌ—«Ì‘ «ÿ·«⁄«  »«‘Ìœ');
    end;
  end
  else
  if UpperCase(MssDBGrid2.SelectedField.FieldName)=UpperCase('DoAtDate') then
  begin
    if (WorkSheet_ResultUsers.State=dsEdit) or (WorkSheet_ResultUsers.State=dsInsert) then
      WorkSheet_ResultUsersDoAtDate.AsString:=MssCalendarPro1.Execute('/')
    else
    begin
      MssMessage1.DialogSize:=460;
      MssMessage1.MessageType:=MssError;
      MssMessage1.execute('»«Ìœ œ— Õ«·  œ—Ã Ì« ÊÌ—«Ì‘ «ÿ·«⁄«  »«‘Ìœ');
    end;
  end;
end;

procedure TFWorkSheetBaseResults.MssDBGrid1EditButtonClick(
  Sender: TObject);
begin
  inherited;
  if UpperCase(MssDBGrid1.SelectedField.FieldName)=UpperCase('Description') then
  begin
    FWorkSheetEnterDate:=TFWorkSheetEnterDate.Create(Application);
    FWorkSheetEnterDate.InitialValue:=WorkSheet_ResultsDescription.AsString;
    if (WorkSheet_Results.State=dsEdit) or (WorkSheet_Results.State=dsInsert) then
      FWorkSheetEnterDate.IsReadOnly:=False
    else
      FWorkSheetEnterDate.IsReadOnly:=True;
    FWorkSheetEnterDate.ShowModal;
    if (WorkSheet_Results.State=dsEdit) or (WorkSheet_Results.State=dsInsert) then
      WorkSheet_ResultsDescription.AsString:=ValueFrom_FWorkSheetEnterDate;
  end;
end;

procedure TFWorkSheetBaseResults.SetValueFrom_FWorkSheetEnterDate(
  const Value: WideString);
begin
  FValueFrom_FWorkSheetEnterDate := Value;
end;

procedure TFWorkSheetBaseResults.acAddMosavabehExecute(Sender: TObject);
begin
  inherited;
  if DSWorkSheet_Results.DataSet.State=dsBrowse then
  begin
    MssDBGrid1.ReadOnly:=False;
    DSWorkSheet_Results.DataSet.Append;
  end;
end;

procedure TFWorkSheetBaseResults.acAddMosavabehUpdate(Sender: TObject);
begin
  inherited;
  acAddMosavabeh.Enabled:= AccessToSaveWorkSheetResult;
{
  if AccessToSaveWorkSheetResult=True then
    acAddMosavabeh.Enabled:=True
  else
    acAddMosavabeh.Enabled:=False;
}
end;

procedure TFWorkSheetBaseResults.acEditMosavabehExecute(Sender: TObject);
begin
  inherited;
  if DSWorkSheet_Results.DataSet.State=dsBrowse then
  begin
      MssDBGrid1.ReadOnly:=False;
      DSWorkSheet_Results.DataSet.Edit;
  end;
end;

procedure TFWorkSheetBaseResults.acEditMosavabehUpdate(Sender: TObject);
begin
  inherited;
  acEditMosavabeh.Enabled:= AccessToSaveWorkSheetResult;
{
  if AccessToSaveWorkSheetResult=True then
     acEditMosavabeh.Enabled:=True
  else
     acEditMosavabeh.Enabled:=False;
}
end;

procedure TFWorkSheetBaseResults.acDelMosavabehExecute(Sender: TObject);
begin
  inherited;
  MssMessage1.DialogSize:=460;
  MssMessage1.MessageType:=MssConfirme;
  if UpperCase(MssMessage1.execute('¬Ì« «“ Õ–› «ÿ„Ì‰«‰ œ«—Ìœø'))=UpperCase('Ok') then
       DSWorkSheet_Results.DataSet.Delete;
end;

procedure TFWorkSheetBaseResults.acDelMosavabehUpdate(Sender: TObject);
begin
  inherited;
  acDelMosavabeh.Enabled:= AccessToSaveWorkSheetResult;
{

  if AccessToSaveWorkSheetResult=True then
     acDelMosavabeh.Enabled:=True
  else
     acDelMosavabeh.Enabled:=False;
}
end;

procedure TFWorkSheetBaseResults.acCancelMosavabehExecute(Sender: TObject);
begin
  inherited;
  if (DSWorkSheet_Results.DataSet.State=dsEdit) or (DSWorkSheet_Results.DataSet.State=dsInsert) then
        DSWorkSheet_Results.DataSet.Cancel;
end;

procedure TFWorkSheetBaseResults.acCancelMosavabehUpdate(Sender: TObject);
begin
  inherited;
  acCancelMosavabeh.Enabled:= AccessToSaveWorkSheetResult;
{
  if AccessToSaveWorkSheetResult=True then
     acCancelMosavabeh.Enabled:=True
  else
     acCancelMosavabeh.Enabled:=False;
}
end;

procedure TFWorkSheetBaseResults.acPostMosavabehExecute(Sender: TObject);
begin
  inherited;
  if (DSWorkSheet_Results.DataSet.State=dsEdit) or (DSWorkSheet_Results.DataSet.State=dsInsert) then
        DSWorkSheet_Results.DataSet.Post;
end;

procedure TFWorkSheetBaseResults.acPostMosavabehUpdate(Sender: TObject);
begin
  inherited;
  acPostMosavabeh.Enabled:= AccessToSaveWorkSheetResult;
{
  if AccessToSaveWorkSheetResult=True then
     acPostMosavabeh.Enabled:=True
  else
     acPostMosavabeh.Enabled:=False;
}
end;

procedure TFWorkSheetBaseResults.acAddUserExecute(Sender: TObject);
begin
  inherited;
  if DSWorkSheet_ResultUsers.DataSet.State=dsBrowse then
  begin
      MssDBGrid2.ReadOnly:=False;
      DSWorkSheet_ResultUsers.DataSet.Append;
  end;
end;

procedure TFWorkSheetBaseResults.acAddUserUpdate(Sender: TObject);
begin
  inherited;
  acAddUser.Enabled:= not WorkSheet_Results.IsEmpty;
{
  if not WorkSheet_Results.IsEmpty then
     acAddUser.Enabled:=True
  else
     acAddUser.Enabled:=False;
}
end;

procedure TFWorkSheetBaseResults.acEditUserExecute(Sender: TObject);
begin
  inherited;
  if DSWorkSheet_ResultUsers.DataSet.State=dsBrowse then
  begin
      MssDBGrid2.ReadOnly:=False;
      DSWorkSheet_ResultUsers.DataSet.Edit;
  end;
end;

procedure TFWorkSheetBaseResults.acEditUserUpdate(Sender: TObject);
begin
  inherited;
  acEditUser.Enabled:= not WorkSheet_Results.IsEmpty;
{
  if not WorkSheet_Results.IsEmpty then
     acEditUser.Enabled:=True
  else
     acEditUser.Enabled:=False;
}
end;

procedure TFWorkSheetBaseResults.acDeleteUserExecute(Sender: TObject);
begin
  inherited;
  MssMessage1.DialogSize:=460;
  MssMessage1.MessageType:=MssConfirme;
  if UpperCase(MssMessage1.execute('¬Ì« «“ Õ–› «ÿ„Ì‰«‰ œ«—Ìœø'))=UpperCase('Ok') then
       DSWorkSheet_ResultUsers.DataSet.Delete;
end;

procedure TFWorkSheetBaseResults.acDeleteUserUpdate(Sender: TObject);
begin
  inherited;
  acDeleteUser.Enabled:= not WorkSheet_Results.IsEmpty;
{
  if not WorkSheet_Results.IsEmpty then
     acDeleteUser.Enabled:=True
  else
     acDeleteUser.Enabled:=False;
}
end;

procedure TFWorkSheetBaseResults.acCancelUserExecute(Sender: TObject);
begin
  inherited;
  if (DSWorkSheet_ResultUsers.DataSet.State=dsEdit) or (DSWorkSheet_ResultUsers.DataSet.State=dsInsert) then
        DSWorkSheet_ResultUsers.DataSet.Cancel;
end;

procedure TFWorkSheetBaseResults.acCancelUserUpdate(Sender: TObject);
begin
  inherited;
  acCancelUser.Enabled:= not WorkSheet_Results.IsEmpty;
{
  if not WorkSheet_Results.IsEmpty then
     acCancelUser.Enabled:=True
  else
     acCancelUser.Enabled:=False;
}
end;

procedure TFWorkSheetBaseResults.acPostUserExecute(Sender: TObject);
begin
  inherited;
  if (DSWorkSheet_ResultUsers.DataSet.State=dsEdit) or (DSWorkSheet_ResultUsers.DataSet.State=dsInsert) then
        DSWorkSheet_ResultUsers.DataSet.Post;
end;

procedure TFWorkSheetBaseResults.acPostUserUpdate(Sender: TObject);
begin
  inherited;
  acPostUser.Enabled:= not WorkSheet_Results.IsEmpty;
{
  if not WorkSheet_Results.IsEmpty then
     acPostUser.Enabled:=True
  else
     acPostUser.Enabled:=False;
}
end;

procedure TFWorkSheetBaseResults.DSFormDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  WorkSheet_Results.Close;
  WorkSheet_Results.Parameters.ParamByName('WorkSheetBaseID').Value:=QSessionID.AsInteger;
  WorkSheet_Results.Open;
end;

procedure TFWorkSheetBaseResults.MssDBGrid1DblClick(Sender: TObject);
begin
  inherited;
  MssDBGrid1EditButtonClick(Application);
end;

procedure TFWorkSheetBaseResults.acSendInnerLetterExecute(Sender: TObject);
begin
  inherited;
  try
      FWorkSheetAddInnerLetter:=TFWorkSheetAddInnerLetter.Create(Application);
      FWorkSheetAddInnerLetter.ShowModal;
      if InnerLetterSecID>0 then
      begin
          spCreateInnerLetter.Close;
          spCreateInnerLetter.Parameters.ParamByName('@WorkSheetBaseID').Value:=QSessionID.AsInteger;
          spCreateInnerLetter.Parameters.ParamByName('@MYear').Value:=_Year;
          spCreateInnerLetter.Parameters.ParamByName('@SecretariatID').Value:=InnerLetterSecID;
          spCreateInnerLetter.Parameters.ParamByName('@RegistrationDate').Value:=_Today;
          spCreateInnerLetter.Parameters.ParamByName('@RegistrationTime').Value:=Copy(TimeToStr(Time),1,5);
          spCreateInnerLetter.ExecProc;
          MssMessage1.DialogSize:=460;
          MssMessage1.MessageType:=MssInformation;
          MssMessage1.execute('«—”«· ‰«„Â œ«Œ·Ì »Â ‘—ò  ò‰‰œê«‰ «‰Ã«„ ‘œ');
          Close;
      end
      else
      begin
          MssMessage1.DialogSize:=460;
          MssMessage1.MessageType:=MssError;
          MssMessage1.execute('À»  ‰«„Â œ«Œ·Ì «‰Ã«„ ‰‘œ');
      end;
  except on e:Exception do
     begin
        MssMessage1.DialogSize:=460;
        MssMessage1.MessageType:=MssError;
        MssMessage1.execute(e.Message);
     end;
  end;
end;

procedure TFWorkSheetBaseResults.acSendInnerLetterUpdate(Sender: TObject);
begin
  inherited;
  if not QSession.IsEmpty then
  begin
      if QSessionSendLetter.IsNull then acSendInnerLetter.Enabled:=True
      else if QSessionSendLetter.AsBoolean=True then  acSendInnerLetter.Enabled:=False
      else if QSessionSendLetter.AsBoolean=False then acSendInnerLetter.Enabled:=True
      else if QSessionStatus.AsInteger<>1 then acSendInnerLetter.Enabled:=False;
  end
  else acSendInnerLetter.Enabled:=False;
end;

procedure TFWorkSheetBaseResults.SetInnerLetterSecID(const Value: Integer);
begin
  FInnerLetterSecID := Value;
end;

procedure TFWorkSheetBaseResults.SpeedButton7Click(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TFWorkSheetBaseResults.acSendInnerLetterToOtherUsersExecute(
  Sender: TObject);
begin
  inherited;
  try
      FWorkSheetAddInnerLetter:=TFWorkSheetAddInnerLetter.Create(Application);
      FWorkSheetAddInnerLetter.ShowModal;
      if InnerLetterSecID>0 then
      begin
          spCreateInnerLetterForOtherUsers.Close;
          spCreateInnerLetterForOtherUsers.Parameters.ParamByName('@WorkSheetBaseID').Value:=QSessionID.AsInteger;
          spCreateInnerLetterForOtherUsers.Parameters.ParamByName('@MYear').Value:=_Year;
          spCreateInnerLetterForOtherUsers.Parameters.ParamByName('@SecretariatID').Value:=InnerLetterSecID;
          spCreateInnerLetterForOtherUsers.Parameters.ParamByName('@RegistrationDate').Value:=_Today;
          spCreateInnerLetterForOtherUsers.Parameters.ParamByName('@RegistrationTime').Value:=Copy(TimeToStr(Time),1,5);
          spCreateInnerLetterForOtherUsers.ExecProc;
          MssMessage1.DialogSize:=480;
          MssMessage1.MessageType:=MssInformation;
          MssMessage1.execute('«—”«· ‰«„Â œ«Œ·Ì »Â ò«—»—«‰ «‰Ã«„ œÂ‰œÂ „’Ê»«  «‰Ã«„ ‘œ');
          Close;
      end
      else
      begin
          MssMessage1.DialogSize:=460;
          MssMessage1.MessageType:=MssError;
          MssMessage1.execute('À»  ‰«„Â œ«Œ·Ì «‰Ã«„ ‰‘œ');
      end;
  except on e:Exception do
     begin
        MssMessage1.DialogSize:=460;
        MssMessage1.MessageType:=MssError;
        MssMessage1.execute(e.Message);
     end;
  end;
end;

procedure TFWorkSheetBaseResults.acSendInnerLetterToOtherUsersUpdate(
  Sender: TObject);
begin
  inherited;
  if not QSession.IsEmpty then
  begin
      if QSessionSendLetterToOtherPerson.IsNull then acSendInnerLetterToOtherUsers.Enabled:=True
      else if QSessionSendLetterToOtherPerson.AsBoolean=True then  acSendInnerLetterToOtherUsers.Enabled:=False
      else if QSessionSendLetterToOtherPerson.AsBoolean=False then acSendInnerLetterToOtherUsers.Enabled:=True
      else if QSessionStatus.AsInteger<>1 then acSendInnerLetterToOtherUsers.Enabled:=False;
  end
  else acSendInnerLetterToOtherUsers.Enabled:=False;
end;

procedure TFWorkSheetBaseResults.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#27 then
  begin
      Key:=#0;
      SpeedButton10Click(Application);
  end;
end;

end.
