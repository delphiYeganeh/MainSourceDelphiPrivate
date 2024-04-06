unit WorkSheetBaseUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Menus, ExtActns, ActnList, DB, ExtCtrls, MssPanelPro,
  Grids, DBGrids, MssDBGrid, ADODB, Buttons, MssSearchPro, MssMessage,
  StdCtrls, DBCtrls, Mask, ComCtrls, YDbgrid, AppEvnts;

type
  TFWorkSheetBase = class(TMBaseForm)
    MssPanelPro1: TMssPanelPro;
    MssPanelPro2: TMssPanelPro;
    QWorkSheetBase: TADOQuery;
    QWorkSheetBaseID: TAutoIncField;
    QWorkSheetBaseRegUserID: TIntegerField;
    QWorkSheetBaseRegDate_Shamsi: TStringField;
    QWorkSheetBaseRegDate_Miladi: TStringField;
    QWorkSheetBaseYear_Shamsi: TStringField;
    QWorkSheetBaseYear_Miladi: TStringField;
    QWorkSheetBaseMonth_Shamsi: TStringField;
    QWorkSheetBaseMonth_Miladi: TStringField;
    QWorkSheetBaseDay_Shamsi: TStringField;
    QWorkSheetBaseDay_Miladi: TStringField;
    QWorkSheetBasePlace: TStringField;
    QWorkSheetBaseSubject: TStringField;
    QWorkSheetBaseImportantLevel: TIntegerField;
    QWorkSheetBaseDescription: TStringField;
    QWorkSheetBaseManagerUserID: TIntegerField;
    QWorkSheetBaseStatus: TIntegerField;
    QWorkSheetBaselkType: TStringField;
    QWorkSheetBaseType: TIntegerField;
    QWorkSheetBaselkRegUserID: TStringField;
    QWorkSheetBaselkImportantLevel: TStringField;
    QWorkSheetBaselkManagerUserID: TStringField;
    QWorkSheetBaselkStatus: TStringField;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    MssSearchPro1: TMssSearchPro;
    Bevel1: TBevel;
    MssMessage1: TMssMessage;
    SpeedButton10: TSpeedButton;
    Bevel2: TBevel;
    SpeedButton11: TSpeedButton;
    QWorkSheetBaseBeginTimeToMinute: TIntegerField;
    QWorkSheetBaseEndTimeToMinute: TIntegerField;
    QWorkSheetBaseDate_Shamsi: TStringField;
    QWorkSheetBaseDate_Miladi: TStringField;
    QWorkSheetBaseSendNews: TBooleanField;
    Label1: TLabel;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    DBCheckBox1: TDBCheckBox;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    DBComboBox3: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DBComboBox1: TDBComboBox;
    SpeedButton12: TSpeedButton;
    MssSearchPro2: TMssSearchPro;
    DBMemo1: TDBMemo;
    Bevel3: TBevel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    QWorkSheetBaseMonshi: TIntegerField;
    QWorkSheetBaseBeginTimeHour: TStringField;
    QWorkSheetBaseBeginTimeMinute: TStringField;
    QWorkSheetBaseEndTimeHour: TStringField;
    QWorkSheetBaseEndTimeMinute: TStringField;
    QWorkSheetBaselkMonshi: TStringField;
    Label17: TLabel;
    SpeedButton13: TSpeedButton;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    acDisabledMonshi: TAction;
    cmbBeginTimeHour: TDBComboBox;
    cmbBeginTimeMinute: TDBComboBox;
    cmbEndTimeHour: TDBComboBox;
    cmbEndTimeMinute: TDBComboBox;
    acCaninvited: TAction;
    QHavePermission: TADOQuery;
    YDBGrid1: TYDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure QWorkSheetBaseBeforePost(DataSet: TDataSet);
    procedure MssDBGrid1EditButtonClick(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure QWorkSheetBaseNewRecord(DataSet: TDataSet);
    procedure SpeedButton12Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure acDisabledMonshiExecute(Sender: TObject);
    procedure acDisabledMonshiUpdate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure acCaninvitedExecute(Sender: TObject);
    procedure acCaninvitedUpdate(Sender: TObject);
    procedure QWorkSheetBaseAfterScroll(DataSet: TDataSet);
    procedure YDBGrid1EditButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure DBLookupComboBox1CloseUp(Sender: TObject);
  private
    { Private declarations }
    procedure CorrectMonthInComboBox;
    function IsTimeValid(Hour_Or_Min:String;Val:String):Boolean;
    function TimeToMinute(Begin_Or_End:String):Integer;
    function PermissionToView:Boolean;
    procedure NotShowComponents;
    procedure ShowComponents;
  public
    { Public declarations }
  end;

var
  FWorkSheetBase: TFWorkSheetBase;

implementation

uses Dmu, UMain, StrUtils, WorkSheetBaseSessionsUnit,
  WorkSheetBaseVisitsUnit, WorkSheetBaseTasksUnit;

{$R *.dfm}

procedure TFWorkSheetBase.FormCreate(Sender: TObject);
begin
  inherited;
  QWorkSheetBase.Close;
  QWorkSheetBase.Open;
  YDBGrid1.ReadOnly:=True;
  if PermissionToView then
      ShowComponents
  else
      NotShowComponents;
end;

procedure TFWorkSheetBase.SpeedButton9Click(Sender: TObject);
begin
  inherited;
  if DSForm.DataSet.State=dsBrowse then
      DSForm.DataSet.First;
end;

procedure TFWorkSheetBase.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  if DSForm.DataSet.State=dsBrowse then
      DSForm.DataSet.Prior;
end;

procedure TFWorkSheetBase.SpeedButton7Click(Sender: TObject);
begin
  inherited;
  if DSForm.DataSet.State=dsBrowse then
      DSForm.DataSet.Next;
end;

procedure TFWorkSheetBase.SpeedButton8Click(Sender: TObject);
begin
  inherited;
  if DSForm.DataSet.State=dsBrowse then
      DSForm.DataSet.Last;
end;

procedure TFWorkSheetBase.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if (DSForm.DataSet.State=dsEdit) or (DSForm.DataSet.State=dsInsert) then
        DSForm.DataSet.Post;
end;

procedure TFWorkSheetBase.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if (DSForm.DataSet.State=dsEdit) or (DSForm.DataSet.State=dsInsert) then
        DSForm.DataSet.Cancel;
end;

procedure TFWorkSheetBase.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  if (QWorkSheetBaseManagerUserID.AsInteger=_UserID) or (QWorkSheetBaseMonshi.AsInteger=_UserID) or (QWorkSheetBaseRegUserID.AsInteger=_UserID) then
  begin
      MssMessage1.DialogSize:=460;
      MssMessage1.MessageType:=MssConfirme;
      if UpperCase(MssMessage1.execute('¬Ì« «“ Õ–› «ÿ„Ì‰«‰ œ«—Ìœø'))=UpperCase('Ok') then
           DSForm.DataSet.Delete;
  end
  else
  begin
    MssMessage1.DialogSize:=460;
    MssMessage1.MessageType:=MssError;
    MssMessage1.execute('›ﬁÿ „œÌ— Ì« „‰‘Ì „Ì Ê«‰‰œ ⁄„·Ì«  Õ–› —« «‰Ã«„ œÂ‰œ');
  end;
end;

procedure TFWorkSheetBase.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  if (QWorkSheetBaseManagerUserID.AsInteger=_UserID) or (QWorkSheetBaseMonshi.AsInteger=_UserID) or (QWorkSheetBaseRegUserID.AsInteger=_UserID) then
  begin
    if DSForm.DataSet.State=dsBrowse then
    begin
        YDBGrid1.ReadOnly:=False;
        DSForm.DataSet.Edit;
        if DBLookupComboBox1.Visible then
          DBLookupComboBox1.SetFocus;
    end;
  end
  else
  begin
    MssMessage1.DialogSize:=460;
    MssMessage1.MessageType:=MssError;
    MssMessage1.execute('›ﬁÿ „œÌ— Ì« „‰‘Ì „Ì Ê«‰‰œ ⁄„·Ì«  ÊÌ—«Ì‘ —« «‰Ã«„ œÂ‰œ');
  end;
end;

procedure TFWorkSheetBase.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  if DSForm.DataSet.State=dsBrowse then
  begin
      ShowComponents;
      YDBGrid1.ReadOnly:=False;
      DSForm.DataSet.Append;
      if DBLookupComboBox1.Visible then
      DBLookupComboBox1.SetFocus;
  end;
end;

procedure TFWorkSheetBase.QWorkSheetBaseBeforePost(DataSet: TDataSet);
var
  M,Y,D :String;
begin
  inherited;
  if (QWorkSheetBase.State=dsInsert) then
  begin
     if QWorkSheetBaseStatus.AsInteger<>1 then
     begin
       MssMessage1.DialogSize:=460;   
       MssMessage1.MessageType:=MssError;
       MssMessage1.execute('„ﬁœ«— ›Ì·œ Ê÷⁄Ì  »«Ìœ   —“—Ê   »«‘œ');
       Abort;
     end;
  end;
  if (QWorkSheetBase.State=dsInsert) or (QWorkSheetBase.State=dsEdit) then
  begin
     if Trim(cmbBeginTimeHour.Text)='' then cmbBeginTimeHour.Text:='00';
     if Trim(cmbBeginTimeMinute.Text)='' then cmbBeginTimeMinute.Text:='00';
     if Trim(cmbEndTimeHour.Text)='' then cmbEndTimeHour.Text:='00';
     if Trim(cmbEndTimeMinute.Text)='' then cmbEndTimeMinute.Text:='00';
     if QWorkSheetBaseSubject.AsString='' then
     begin
          ShowMessage('»«Ìœ „Ê÷Ê⁄ —« „‘Œ’ ‰„«ÌÌœ');
          Abort;
     end;
     if QWorkSheetBasePlace.AsString='' then
     begin
          ShowMessage('»«Ìœ „ò«‰ —« „‘Œ’ ‰„«ÌÌœ');
          Abort;
     end;
     if not IsTimeValid('Hour',QWorkSheetBaseBeginTimeHour.AsString) then
     begin
          ShowMessage('“„«‰ ‘—Ê⁄ ’ÕÌÕ ‰Ì” ');
          Abort;
     end;
     if not IsTimeValid('Minute',QWorkSheetBaseBeginTimeMinute.AsString) then
     begin
          ShowMessage('“„«‰ ‘—Ê⁄ ’ÕÌÕ ‰Ì” ');
          Abort;
     end;
     if not IsTimeValid('Hour',QWorkSheetBaseEndTimeHour.AsString) then
     begin
          ShowMessage('“„«‰ Å«Ì«‰ ’ÕÌÕ ‰Ì” ');
          Abort;
     end;
     if not IsTimeValid('Minute',QWorkSheetBaseEndTimeMinute.AsString) then
     begin
          ShowMessage('“„«‰ Å«Ì«‰ ’ÕÌÕ ‰Ì” ');
          Abort;
     end;
     if Trim(QWorkSheetBaseYear_Shamsi.AsString)='' then
     begin
          ShowMessage('›Ì·œ ”«· ‰«„⁄ »— «” ');
          Abort;
     end;
     if Trim(QWorkSheetBaseMonth_Shamsi.AsString)='' then
     begin
          ShowMessage('›Ì·œ „«Â ‰«„⁄ »— «” ');
          Abort;
     end;
     if Trim(QWorkSheetBaseDay_Shamsi.AsString)='' then
     begin
          ShowMessage('›Ì·œ —Ê“ ‰«„⁄ »— «” ');
          Abort;
     end;
     if (QWorkSheetBaseType.AsInteger=1) or (QWorkSheetBaseType.AsInteger=2) then
     if QWorkSheetBaseManagerUserID.AsInteger=0 then
     begin
          // «Ì‰ »«Ìœ »«‘œ çÊ‰ «” ÅÌ  Ê·Ìœ ò‰‰œÂ ‰«„Â œ«Œ·Ì »« «Ì‰ ›Ì·œ ò«— „Ì ò‰œ
          ShowMessage('›Ì·œ ê—œ«‰‰œÂ Ì« „œÌ— ‰«„⁄ »— «” ');
          Abort;
     end;
     if QWorkSheetBaseType.AsInteger=1 then
     if QWorkSheetBaseMonshi.AsInteger=0 then
     begin
          // «Ì‰ »«Ìœ »«‘œ çÊ‰ «” ÅÌ  Ê·Ìœ ò‰‰œÂ ‰«„Â œ«Œ·Ì »« «Ì‰ ›Ì·œ ò«— „Ì ò‰œ
          ShowMessage('›Ì·œ „‰‘Ì Ã·”Â ‰«„⁄ »— «” ');
          Abort;
     end;
     QWorkSheetBaseBeginTimeToMinute.AsInteger:=TimeToMinute('BeginTime');
     QWorkSheetBaseEndTimeToMinute.AsInteger  :=TimeToMinute('EndTime');
     if StrToInt(QWorkSheetBaseYear_Shamsi.AsString)<100 then
        Y:='13'+IntToStr(QWorkSheetBaseYear_Shamsi.AsInteger)
     else
        Y:=QWorkSheetBaseYear_Shamsi.AsString;

     CorrectMonthInComboBox;
     M:=Dm.GetMonthShamsiIndex(QWorkSheetBaseMonth_Shamsi.AsString);
     if Trim(M)='' then Abort;
     if StrToInt(QWorkSheetBaseDay_Shamsi.AsString)<10 then
         D:='0'+IntToStr(QWorkSheetBaseDay_Shamsi.AsInteger)
     else
         D:=IntToStr(QWorkSheetBaseDay_Shamsi.AsInteger);
     QWorkSheetBaseDay_Shamsi.AsString:=D;
     QWorkSheetBaseYear_Shamsi.AsString:=Y;
     QWorkSheetBaseDate_Shamsi.AsString:=Y+'/'+M+'/'+D;
     QWorkSheetBaseRegUserID.AsInteger:=_UserID;
     QWorkSheetBaseRegDate_Shamsi.AsString:=_Today;

     if _Today>QWorkSheetBaseDate_Shamsi.AsString then
     begin
         MssMessage1.DialogSize:=460;
         MssMessage1.MessageType:=MssError;
         MssMessage1.execute(' «—ÌŒ —“—Ê ‰»«Ìœ òÊçò — «“ «„—Ê“ »«‘œ');
         Abort;
     end;

     if QWorkSheetBaseBeginTimeToMinute.AsInteger>=QWorkSheetBaseEndTimeToMinute.AsInteger then
     begin
         MssMessage1.DialogSize:=500;
         MssMessage1.MessageType:=MssError;
         MssMessage1.execute('“„«‰ ‘—Ê⁄ ‰„Ì  Ê«‰œ „”«ÊÌ Ì« »“—ê — «“ “„«‰ Å«Ì«‰ »«‘œ');
         Abort;
     end;

     if QWorkSheetBaseType.AsInteger=2 then QWorkSheetBaseMonshi.AsInteger:=QWorkSheetBaseManagerUserID.AsInteger;

     if QWorkSheetBaseStatus.AsInteger=1 then
     begin
         if Dm.CheckTadakhol(QWorkSheetBaseYear_Shamsi.AsInteger,QWorkSheetBaseMonth_Shamsi.AsString,QWorkSheetBaseDay_Shamsi.AsInteger,QWorkSheetBaseBeginTimeToMinute.AsInteger,QWorkSheetBaseEndTimeToMinute.AsInteger,QWorkSheetBaseManagerUserID.AsInteger,QWorkSheetBaseID.AsInteger) then
         begin
              MssMessage1.DialogSize:=480;
              MssMessage1.MessageType:=MssError;
              MssMessage1.execute(' «—ÌŒ Ê “„«‰ «‰ Œ«»Ì ‘„« »—«Ì „œÌ—  œ«Œ· œ«—œ');
              Abort;
         end;
         if Dm.CheckTadakhol(QWorkSheetBaseYear_Shamsi.AsInteger,QWorkSheetBaseMonth_Shamsi.AsString,QWorkSheetBaseDay_Shamsi.AsInteger,QWorkSheetBaseBeginTimeToMinute.AsInteger,QWorkSheetBaseEndTimeToMinute.AsInteger,QWorkSheetBaseMonshi.AsInteger,QWorkSheetBaseID.AsInteger) then
         begin
              MssMessage1.DialogSize:=480;
              MssMessage1.MessageType:=MssError;
              MssMessage1.execute(' «—ÌŒ Ê “„«‰ «‰ Œ«»Ì ‘„« »—«Ì „‰‘Ì  œ«Œ· œ«—œ');
              Abort;
         end;
     end;
  end;

  YDBGrid1.ReadOnly:=True;
end;

procedure TFWorkSheetBase.MssDBGrid1EditButtonClick(Sender: TObject);
var
   OutPutID : Integer;
begin
  inherited;
  if UpperCase(YDBGrid1.SelectedField.FieldName)=UpperCase('lkManagerUserID') then
  begin
     if (QWorkSheetBase.State=dsEdit) or (QWorkSheetBase.State=dsInsert) then
     begin
        OutPutID:=MssSearchPro1.Execute;
        if OutPutID>0 then
            QWorkSheetBaseManagerUserID.AsInteger:=OutPutID;
     end;
  end;
end;

procedure TFWorkSheetBase.SpeedButton10Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFWorkSheetBase.QWorkSheetBaseNewRecord(DataSet: TDataSet);
begin
  inherited;
  QWorkSheetBaseType.AsInteger:=1;
  QWorkSheetBaseStatus.AsInteger:=1;
  QWorkSheetBaseImportantLevel.AsInteger:=1;
  QWorkSheetBaseSendNews.AsBoolean:=False;
  QWorkSheetBaseBeginTimeHour.AsString:='00';
  QWorkSheetBaseBeginTimeMinute.AsString:='00';
  QWorkSheetBaseEndTimeHour.AsString:='00';
  QWorkSheetBaseEndTimeMinute.AsString:='00';
  QWorkSheetBaseManagerUserID.AsInteger:=0;
  QWorkSheetBaseMonshi.AsInteger:=0;
  SpeedButton11.Enabled:=True;
end;

procedure TFWorkSheetBase.CorrectMonthInComboBox;
begin
  if (QWorkSheetBaseMonth_Shamsi.AsString='1') or (QWorkSheetBaseMonth_Shamsi.AsString='01') then QWorkSheetBaseMonth_Shamsi.AsString:='›—Ê—œÌ‰'
  else if (QWorkSheetBaseMonth_Shamsi.AsString='2') or (QWorkSheetBaseMonth_Shamsi.AsString='02') then QWorkSheetBaseMonth_Shamsi.AsString:='«—œÌ»Â‘ '
  else if (QWorkSheetBaseMonth_Shamsi.AsString='3') or (QWorkSheetBaseMonth_Shamsi.AsString='03') then QWorkSheetBaseMonth_Shamsi.AsString:='Œ—œ«œ'
  else if (QWorkSheetBaseMonth_Shamsi.AsString='4') or (QWorkSheetBaseMonth_Shamsi.AsString='04') then QWorkSheetBaseMonth_Shamsi.AsString:=' Ì—'
  else if (QWorkSheetBaseMonth_Shamsi.AsString='5') or (QWorkSheetBaseMonth_Shamsi.AsString='05') then QWorkSheetBaseMonth_Shamsi.AsString:='„—œ«œ'
  else if (QWorkSheetBaseMonth_Shamsi.AsString='6') or (QWorkSheetBaseMonth_Shamsi.AsString='06') then QWorkSheetBaseMonth_Shamsi.AsString:='‘Â—ÌÊ—'
  else if (QWorkSheetBaseMonth_Shamsi.AsString='7') or (QWorkSheetBaseMonth_Shamsi.AsString='07') then QWorkSheetBaseMonth_Shamsi.AsString:='„Â—'
  else if (QWorkSheetBaseMonth_Shamsi.AsString='8') or (QWorkSheetBaseMonth_Shamsi.AsString='08') then QWorkSheetBaseMonth_Shamsi.AsString:='¬»«‰'
  else if (QWorkSheetBaseMonth_Shamsi.AsString='9') or (QWorkSheetBaseMonth_Shamsi.AsString='09') then QWorkSheetBaseMonth_Shamsi.AsString:='¬–—'
  else if (QWorkSheetBaseMonth_Shamsi.AsString='10')  then QWorkSheetBaseMonth_Shamsi.AsString:='œÌ'
  else if (QWorkSheetBaseMonth_Shamsi.AsString='11')  then QWorkSheetBaseMonth_Shamsi.AsString:='»Â„‰'
  else if (QWorkSheetBaseMonth_Shamsi.AsString='12')  then QWorkSheetBaseMonth_Shamsi.AsString:='«”›‰œ';
end;
  
procedure TFWorkSheetBase.SpeedButton12Click(Sender: TObject);
var
  OutPutID : Integer;
begin
  inherited;
  if (QWorkSheetBase.State=dsEdit) or (QWorkSheetBase.State=dsInsert) then
  begin
     OutPutID:=MssSearchPro2.Execute;
     if OutPutID>0 then
         QWorkSheetBaseManagerUserID.AsInteger:=OutPutID;
  end
  else
  begin
    MssMessage1.DialogSize:=460;
    MssMessage1.MessageType:=MssError;
    MssMessage1.execute('»«Ìœ œ— Õ«·  œ—Ã Ì« ÊÌ—«Ì‘ «ÿ·«⁄«  »«‘Ìœ');
  end;
end;

procedure TFWorkSheetBase.FormActivate(Sender: TObject);
begin
  inherited;
  if DBLookupComboBox1.Visible then
      DBLookupComboBox1.SetFocus;

end;

procedure TFWorkSheetBase.acDisabledMonshiExecute(Sender: TObject);
var
  OutPutID : Integer;
begin
  inherited;
  if (QWorkSheetBase.State=dsEdit) or (QWorkSheetBase.State=dsInsert) then
  begin
     OutPutID:=MssSearchPro2.Execute;
     if OutPutID>0 then
         QWorkSheetBaseMonshi.AsInteger:=OutPutID;
  end
  else
  begin
    MssMessage1.DialogSize:=460;
    MssMessage1.MessageType:=MssError;
    MssMessage1.execute('»«Ìœ œ— Õ«·  œ—Ã Ì« ÊÌ—«Ì‘ «ÿ·«⁄«  »«‘Ìœ');
  end;
end;

procedure TFWorkSheetBase.acDisabledMonshiUpdate(Sender: TObject);
begin
  inherited;
  if QWorkSheetBaseType.AsInteger<>1 then
  begin
     acDisabledMonshi.Enabled:=False;
     DBEdit4.Enabled:=False;
     Label17.Enabled:=False;
  end
  else
  begin
     acDisabledMonshi.Enabled:=True;
     DBEdit4.Enabled:=True;
     Label17.Enabled:=True;
  end;
end;

function TFWorkSheetBase.IsTimeValid(Hour_Or_Min,
  Val: String): Boolean;
begin
  Result:=False;
  if Trim(Val)='' then Val:='0';
  if UpperCase(Hour_Or_Min)=UpperCase('Hour') then
     if (StrToInt(Val)>=0) and (StrToInt(Val)<=23) then Result:=True;
  if UpperCase(Hour_Or_Min)=UpperCase('Minute') then
     if (StrToInt(Val)>=0) and (StrToInt(Val)<=59) then Result:=True;
end;

function TFWorkSheetBase.TimeToMinute(Begin_Or_End:String): Integer;
var
  Hour,Minute:Integer;
begin
  Result:=-1;
  if UpperCase(Begin_Or_End)=UpperCase('BeginTime') then
  begin
    if (Trim(QWorkSheetBaseBeginTimeHour.AsString)='') then Hour:=0
    else if (QWorkSheetBaseBeginTimeHour.IsNull) then Hour:=0
    else if (Trim(QWorkSheetBaseBeginTimeHour.AsString)='0') or (Trim(QWorkSheetBaseBeginTimeHour.AsString)='00') then Hour:=0
    else Hour:=StrToInt(Trim(QWorkSheetBaseBeginTimeHour.AsString));
    //////
    if (Trim(QWorkSheetBaseBeginTimeMinute.AsString)='') then Minute:=0
    else if (QWorkSheetBaseBeginTimeMinute.IsNull) then Minute:=0
    else if (Trim(QWorkSheetBaseBeginTimeMinute.AsString)='0') or (Trim(QWorkSheetBaseBeginTimeMinute.AsString)='00') then Minute:=0
    else Minute:=StrToInt(Trim(QWorkSheetBaseBeginTimeMinute.AsString));
    Result:= ( Hour * 60 ) + ( Minute );
  end;
  if UpperCase(Begin_Or_End)=UpperCase('EndTime') then
  begin
    if (Trim(QWorkSheetBaseEndTimeHour.AsString)='') then Hour:=0
    else if (QWorkSheetBaseEndTimeHour.IsNull) then Hour:=0
    else if (Trim(QWorkSheetBaseEndTimeHour.AsString)='0') or (Trim(QWorkSheetBaseEndTimeHour.AsString)='00') then Hour:=0
    else Hour:=StrToInt(Trim(QWorkSheetBaseEndTimeHour.AsString));
    //////
    if (Trim(QWorkSheetBaseEndTimeMinute.AsString)='') then Minute:=0
    else if (QWorkSheetBaseEndTimeMinute.IsNull) then Minute:=0
    else if (Trim(QWorkSheetBaseEndTimeMinute.AsString)='0') or (Trim(QWorkSheetBaseEndTimeMinute.AsString)='00') then Minute:=0
    else Minute:=StrToInt(Trim(QWorkSheetBaseEndTimeMinute.AsString));
    Result:= ( Hour * 60 ) + ( Minute );
  end;
end;

procedure TFWorkSheetBase.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key=#27 then
  begin
      Key:=#0;
      SpeedButton10Click(Application);
  end;
end;

procedure TFWorkSheetBase.acCaninvitedExecute(Sender: TObject);
begin
  inherited;
  if not QWorkSheetBase.IsEmpty then
  begin
      case QWorkSheetBaseType.AsInteger of
        1://Ã·”Â
          begin
              FWorkSheetBaseSessions := TFWorkSheetBaseSessions.Create(Application);
              FWorkSheetBaseSessions.WorkSheetID:=QWorkSheetBaseID.AsInteger;
              FWorkSheetBaseSessions.ShowModal;
          end;
        2:// ﬁ—«— „·«ﬁ« 
          begin
              FWorkSheetBaseVisits := TFWorkSheetBaseVisits.Create(Application);
              FWorkSheetBaseVisits.WorkSheetID:=QWorkSheetBaseID.AsInteger;
              FWorkSheetBaseVisits.ShowModal;
          end;
        3:// Task
          begin
              FWorkSheetBaseTasks := TFWorkSheetBaseTasks.Create(Application);
              FWorkSheetBaseTasks.WorkSheetID:=QWorkSheetBaseID.AsInteger;
              FWorkSheetBaseTasks.ShowModal;
          end;
      end;
  end;
end;

procedure TFWorkSheetBase.acCaninvitedUpdate(Sender: TObject);
begin
  inherited;
  if QWorkSheetBaseStatus.AsInteger <> 1 then
    acCaninvited.Enabled := False
  else
  if (QWorkSheetBaseManagerUserID.AsInteger = _UserID) or (QWorkSheetBaseMonshi.AsInteger = _UserID) then
    acCaninvited.Enabled := True
  else
    acCaninvited.Enabled := False;
end;

function TFWorkSheetBase.PermissionToView: Boolean;
var
  flag:Integer;
begin
   if not QWorkSheetBase.IsEmpty then
      if QWorkSheetBaseRegUserID.AsInteger=_UserID then
      begin
        Result:=True;
        Exit;
      end;
   if QWorkSheetBase.State<>dsInsert then
   begin
       if QWorkSheetBase.IsEmpty then
       begin
         Result:=True;
         Exit;
       end;
       flag:=0;
       QHavePermission.Close;
       QHavePermission.SQL.Clear;
       QHavePermission.SQL.Add('SELECT UserID FROM WorkSheet_Sessions WHERE WorkSheetBaseID='+QWorkSheetBaseID.AsString);
       QHavePermission.SQL.Add('UNION ALL');
       QHavePermission.SQL.Add('SELECT UserID FROM WorkSheet_Visits WHERE WorkSheetBaseID='+QWorkSheetBaseID.AsString);
       QHavePermission.SQL.Add('UNION ALL');
       QHavePermission.SQL.Add('SELECT UserID FROM WorkSheet_Tasks WHERE WorkSheetBaseID='+QWorkSheetBaseID.AsString);
       QHavePermission.Open;
       while not QHavePermission.Eof do
       begin
          if QHavePermission.FieldByName('UserID').AsInteger=_UserID then
          begin
            flag:=1;
            Break;
          end;
          QHavePermission.Next;
       end;
       if flag=1 then Result:=True else Result:=False;
   end
   else
      Result:=True;
end;

procedure TFWorkSheetBase.NotShowComponents;
begin
  DBMemo1.Visible:=False;
  DBEdit8.Visible:=False;
  DBEdit7.Visible:=False;
  SpeedButton11.Enabled := False;
end;

procedure TFWorkSheetBase.ShowComponents;
begin
   DBMemo1.Visible:=True;
  DBEdit8.Visible:=True;
  DBEdit7.Visible:=True;
  SpeedButton11.Enabled := True;
  if not QWorkSheetBase.IsEmpty then
  begin
      case QWorkSheetBaseType.AsInteger of
        1:SpeedButton11.Caption := '‘—ò  ò‰‰œê«‰ œ— Ã·”Â';
        2:SpeedButton11.Caption := '‘—ò  ò‰‰œê«‰ œ— ﬁ—«— „·«ﬁ« ';
        3:SpeedButton11.Caption := ' ⁄—Ì› «‰Ã«„ œÂ‰œê«‰  ”ò';
      end;
  end;
end;

procedure TFWorkSheetBase.QWorkSheetBaseAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if PermissionToView then
      ShowComponents
  else
      NotShowComponents;
end;

procedure TFWorkSheetBase.YDBGrid1EditButtonClick(Sender: TObject);
var
  OutPutID : Integer;
begin
  inherited;
 if UpperCase(YDBGrid1.SelectedField.FieldName)=UpperCase('lkManagerUserID') then
  begin
     if (QWorkSheetBase.State=dsEdit) or (QWorkSheetBase.State=dsInsert) then
     begin
        OutPutID:=MssSearchPro1.Execute;
        if OutPutID>0 then
            QWorkSheetBaseManagerUserID.AsInteger:=OutPutID;
     end;
  end;
end;

procedure TFWorkSheetBase.FormShow(Sender: TObject);
begin
  inherited;
//SpeedButton11.Enabled:=TRUE;
SpeedButton11.Caption := '';
end;

procedure TFWorkSheetBase.Button1Click(Sender: TObject);
begin
  inherited;
 if not QWorkSheetBase.IsEmpty then
  begin
      case QWorkSheetBaseType.AsInteger of
        1://Ã·”Â
          begin
              FWorkSheetBaseSessions := TFWorkSheetBaseSessions.Create(Application);
              FWorkSheetBaseSessions.WorkSheetID:=QWorkSheetBaseID.AsInteger;
              FWorkSheetBaseSessions.ShowModal;
          end;
        2:// ﬁ—«— „·«ﬁ« 
          begin
              FWorkSheetBaseVisits := TFWorkSheetBaseVisits.Create(Application);
              FWorkSheetBaseVisits.WorkSheetID:=QWorkSheetBaseID.AsInteger;
              FWorkSheetBaseVisits.ShowModal;
          end;
        3:// Task
          begin
              FWorkSheetBaseTasks := TFWorkSheetBaseTasks.Create(Application);
              FWorkSheetBaseTasks.WorkSheetID:=QWorkSheetBaseID.AsInteger;
              FWorkSheetBaseTasks.ShowModal;
          end;
      end;
  end;
end;

procedure TFWorkSheetBase.SpeedButton11Click(Sender: TObject);
begin
  inherited;
 if not QWorkSheetBase.IsEmpty then
  begin
      case QWorkSheetBaseType.AsInteger of
        1://Ã·”Â
          begin
              FWorkSheetBaseSessions := TFWorkSheetBaseSessions.Create(Application);
              FWorkSheetBaseSessions.WorkSheetID:=QWorkSheetBaseID.AsInteger;
              FWorkSheetBaseSessions.ShowModal;
          end;
        2:// ﬁ—«— „·«ﬁ« 
          begin
              FWorkSheetBaseVisits := TFWorkSheetBaseVisits.Create(Application);
              FWorkSheetBaseVisits.WorkSheetID:=QWorkSheetBaseID.AsInteger;
              FWorkSheetBaseVisits.ShowModal;
          end;
        3:// Task
          begin
              FWorkSheetBaseTasks := TFWorkSheetBaseTasks.Create(Application);
              FWorkSheetBaseTasks.WorkSheetID:=QWorkSheetBaseID.AsInteger;
              FWorkSheetBaseTasks.ShowModal;
          end;
      end;
  end;
end;

procedure TFWorkSheetBase.DBLookupComboBox1CloseUp(Sender: TObject);
begin
  inherited;
  if not QWorkSheetBase.IsEmpty then
  begin
      case QWorkSheetBaseType.AsInteger of
        1:SpeedButton11.Caption := '‘—ò  ò‰‰œê«‰ œ— Ã·”Â';
        2:SpeedButton11.Caption := '‘—ò  ò‰‰œê«‰ œ— ﬁ—«— „·«ﬁ« ';
        3:SpeedButton11.Caption := ' ⁄—Ì› «‰Ã«„ œÂ‰œê«‰  ”ò';
      end;
  end;
end;

end.
