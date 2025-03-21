unit URefrenceInPerson;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtActns, ActnList, DB, ExtCtrls, Buttons, StdCtrls, shellApi,
  DBCtrls, Mask, ADODB, MssCalendarPro;

type
  TFRefrenceInPerson = class(TMBaseForm)
    pnlMain: TPanel;
    GroupBox1: TGroupBox;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Panel3: TPanel;
    Label10: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBExpert: TDBLookupComboBox;
    Button1: TButton;
    edtDateInPerson: TDBEdit;
    DBEPeriodTimeInperson: TDBEdit;
    DBETimeInperson: TDBEdit;
    DBEdit5: TDBEdit;
    Panel4: TPanel;
    BitBtn2: TBitBtn;
    btnDelEghdamat: TBitBtn;
    BitBtn3: TBitBtn;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    BtnCancel: TBitBtn;
    Select_FollowUpInPerson: TADOStoredProc;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    Select_FollowUpInPersonCustomerId: TIntegerField;
    Select_FollowUpInPersonFollowUpId: TIntegerField;
    Select_FollowUpInPersonLocationInperson: TStringField;
    Select_FollowUpInPersonExpertId: TIntegerField;
    Select_FollowUpInPersonDescriptionService: TStringField;
    Select_FollowUpInPersonDescriptionPersionInMetting: TStringField;
    Select_FollowUpInPersonValuatorUserID: TIntegerField;
    Select_FollowUpInPersonPdfAttachment: TBlobField;
    Select_FollowUpInPersonMarketerTilte: TStringField;
    Select_FollowUpInPersonMarketerTilte2: TStringField;
    Select_FollowUpInPersonTimeInperson: TStringField;
    Select_FollowUpInPersonPeriodTimeInperson: TStringField;
    btnAssessment: TBitBtn;
    MssCalendarPro1: TMssCalendarPro;
    Select_FollowUpInPersonDateInPerson: TStringField;
    Select_FollowUpInPersonid: TIntegerField;
    Select_FollowUpInPersonLogDate: TDateField;
    MaskEPeriodTimeInperson: TMaskEdit;
    MaskETimeInperson: TMaskEdit;
    DBECompanyName: TEdit;
    DBEProducts: TEdit;
    DBECustomerNo: TEdit;
    Label11: TLabel;
    DBCheckBox1: TDBCheckBox;
    Label12: TLabel;
    DBEdit1: TDBEdit;
    Select_FollowUpInPersonFollowUpNeed: TBooleanField;
    Select_FollowUpInPersonFollowUpDescription: TStringField;
    Select_FollowUpInPersonUserId: TIntegerField;
    SpSelect_Cases: TADOStoredProc;
    SpSelect_CasesCaseID: TLargeintField;
    SpSelect_CasesCaseTitle: TWideStringField;
    SpSelect_CasesComment: TWideStringField;
    SpSelect_CasesProductId: TIntegerField;
    SpSelect_CasesProductVersion: TIntegerField;
    SpSelect_CasesCaseTypeID: TWordField;
    SpSelect_CasesCasePriorityId: TWordField;
    SpSelect_CasesCustomerID: TIntegerField;
    SpSelect_CasesCaseOrigiranlId: TWordField;
    SpSelect_CasesRegisterDate: TWideStringField;
    SpSelect_CasesRegisterUserID: TIntegerField;
    SpSelect_CasesProductTitle: TWideStringField;
    SpSelect_CasesCaseTypeTitle: TWideStringField;
    SpSelect_CasesCasePriorityTitle: TWideStringField;
    SpSelect_CasesCompanyName: TWideStringField;
    SpSelect_CasesUserName: TWideStringField;
    SpSelect_CasesCompleted: TBooleanField;
    SpSelect_CasesCompleteDate: TWideStringField;
    SpSelect_CasesStatus: TStringField;
    SpSelect_CasesCompleteComment: TWideStringField;
    SpSelect_CasesCheckUserID: TIntegerField;
    SpSelect_CasesIsBug: TBooleanField;
    SpSelect_CasesFollowUpID: TIntegerField;
    ALLMarketerTitleShow: TDBEdit;
    ALLMarketerTitleShow2: TDBEdit;
    Select_FollowUpInPersonMarketerTitleAll: TStringField;
    Select_FollowUpInPersonMarketerTtle2All: TStringField;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer; var Resize: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure btnDelEghdamatClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
   Function  LoadImageField(Field:TField;Path:String):Boolean;
  public
    { Public declarations }
    FollowUpId : Integer ;
    CustomerId : Integer ;
    ProductsIdSTR : string ;
  end;

var
  FRefrenceInPerson: TFRefrenceInPerson;

implementation

uses UAssessment, dmu, YShamsiDate;

{$R *.dfm}

procedure TFRefrenceInPerson.SpeedButton2Click(Sender: TObject);
var
 Path : String;
begin
  inherited;

  Path := Directory+'RefrenceInPerson'+Select_FollowUpInPersonID.AsString + Replace(Select_FollowUpInPersonDateInPerson.AsString,'/','-')+'.pdf';
  if LoadImageField(Select_FollowUpInPersonPdfAttachment,path) then
  begin
    ShellExecute(Handle, nil, PChar(Path), nil,  nil, SW_SHOWNORMAL);
  end;

end;

procedure TFRefrenceInPerson.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  if not (Select_FollowUpInPersonPdfAttachment.IsNull) then
  begin
  if messagedlg('���� ��� ���� ����� ����� �',mtWarning,[mbYes,mbCancel], 0) = 6 then
  begin
    Select_FollowUpInPerson.Edit;
    Select_FollowUpInPersonPdfAttachment.Clear;
    Select_FollowUpInPerson.Post;
  end;
  end
  else
  ShowMessage('����� �� ��� ���� �� �� �� ����');

end;

procedure TFRefrenceInPerson.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if not (Select_FollowUpInPersonPdfAttachment.IsNull) then
  begin
    if messagedlg('���� ����� ���� ���� ��� �� ����� ���� ���� ������ ��Ͽ',mtWarning,[mbYes,mbCancel], 0) = 6 then
    begin
      Select_FollowUpInPerson.Edit;
      AddImageField(Select_FollowUpInPersonPdfAttachment,'Pdf Files|*.pdf');
      Select_FollowUpInPersonFollowUpId.Value := FollowUpId;
      Select_FollowUpInPersonCustomerId.Value := CustomerId;
      Select_FollowUpInPersonLogDate.Value    := Dm.GetServerDate ;
      //Select_FollowUpInPerson.Post;
      BitBtn3Click(SELF);
    end;
  end
  else
  begin
    Select_FollowUpInPerson.Edit;
    AddImageField(Select_FollowUpInPersonPdfAttachment,'Pdf Files|*.pdf');
    Select_FollowUpInPersonFollowUpId.Value := FollowUpId;
    Select_FollowUpInPersonCustomerId.Value := CustomerId;
    Select_FollowUpInPersonLogDate.Value    := Dm.GetServerDate ;
    //Select_FollowUpInPerson.Post;
    BitBtn3Click(SELF);
  end;

end;

procedure TFRefrenceInPerson.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  inherited;
  Resize := False;
end;

procedure TFRefrenceInPerson.BitBtn1Click(Sender: TObject);
var
  Caseid : string;
  TaskId : string;
begin
  inherited;
  Application.CreateForm(TFAssessment, FAssessment);
  FAssessment.FollowUpId     := FollowUpId ;
  Caseid                     := Qry_GetResult(' select top 1 CaseID  FROM dbo.Cases where FollowUpID = '+inttostr(FollowUpId)+' order by CaseID desc' ,dm.YeganehConnection) ;
  FAssessment.CaseId         := StrToInt(Caseid)  ;
  TaskId                     := Qry_GetResult(' select top 1 TaskID  FROM dbo.Tasks where CaseID = '+Caseid+' order by TaskID desc' ,dm.YeganehConnection)  ;
  FAssessment.TaskId         := StrToInt(TaskId) ;
  FAssessment.CustomerId     := CustomerId ;
  FAssessment.FollowUpInPerson := Select_FollowUpInPerson.FieldByName('Id').AsInteger ;
  FAssessment.ValuatorUserID := Select_FollowUpInPerson.FieldByName('ValuatorUserID').AsInteger  ;
  FAssessment.ExpertUserID   := Select_FollowUpInPerson.FieldByName('ExpertId').AsInteger  ;
  FAssessment.ShowModal;
  if Assigned(FAssessment) then
    FreeAndNil(FAssessment);

end;

procedure TFRefrenceInPerson.Button1Click(Sender: TObject);
begin
  inherited;
  if (Select_FollowUpInPerson.State = dsInsert) or (Select_FollowUpInPerson.State = dsEdit) then
    Select_FollowUpInPersonDateInPerson.AsString:= MssCalendarPro1.Execute('/')
  else
      ShowMessage('���� �� ���� ������ �� ��� ������� �����');

end;

procedure TFRefrenceInPerson.FormShow(Sender: TObject);
begin
  inherited;
  Select_FollowUpInPerson.Close;
  Select_FollowUpInPerson.parameters.ParamByName('@followupid').value := FollowUpId ;
  Select_FollowUpInPerson.Open;

  if Select_FollowUpInPerson.FieldByName('ID').AsInteger = 0 then
  begin
    Select_FollowUpInPerson.Append;
    Select_FollowUpInPersonFollowUpId.Value := FollowUpId;
    Select_FollowUpInPersonCustomerId.Value := CustomerId;
    Select_FollowUpInPersonLogDate.Value    := Dm.GetServerDate ;
   end ;

  DBECustomerNo.Text    := IntToStr(CustomerId);
  btnAssessment.Enabled := Select_FollowUpInPerson.FieldByName('ValuatorUserID').AsInteger >0   ;

  MaskEPeriodTimeInperson.Text := DBEPeriodTimeInperson.Text ;
  MaskETimeInperson.Text := DBETimeInperson.Text        ;

  btnAssessment.Visible := _UserAssesstAcess ;

  Dm.Marketer.Filtered := False;
  Dm.Marketer.Filter := '';//' IsActive_=1 ' ;
  Dm.Marketer.Filtered := True;  

  Dm.RefreshHoliday(copy(_today,1,4));
  MssCalendarPro1.HolidayStr := dm.HolidayStr;  
end;

procedure TFRefrenceInPerson.BitBtn2Click(Sender: TObject);
begin
  inherited;
  Select_FollowUpInPerson.Edit ;
end;

procedure TFRefrenceInPerson.BtnCancelClick(Sender: TObject);
begin
  inherited;
  Select_FollowUpInPerson.Cancel;
  close;

end;

procedure TFRefrenceInPerson.btnDelEghdamatClick(Sender: TObject);
begin
  inherited;
  IF MessageDlg('��� �� ��� ������� ����� ����Ͽ',mtConfirmation,[mbyes,mbno],0)=mryes then
  Begin
    if  Select_FollowUpInPersonid.AsString <> '' then
      Qry_SetResult(' Delete From dbo.FollowUpInPerson Where ID = '+Select_FollowUpInPersonid.AsString ,Dm.YeganehConnection)
    else if Select_FollowUpInPerson.State in [dsinsert,dsedit]  then
    begin
      Select_FollowUpInPerson.Cancel;
    end;
  End;                   
  Select_FollowUpInPerson.Close;
  Select_FollowUpInPerson.parameters.ParamByName('@followupid').value := FollowUpId ;
  Select_FollowUpInPerson.Open;
  btnAssessment.Enabled :=  Select_FollowUpInPerson.FieldByName('ValuatorUserID').AsInteger >0   ;
  MaskEPeriodTimeInperson.Text := DBEPeriodTimeInperson.Text ;
  MaskETimeInperson.Text := DBETimeInperson.Text        ;
end;

procedure TFRefrenceInPerson.BitBtn3Click(Sender: TObject);
var
  CaseAccept : string;
begin
  inherited;
  if Trim(MaskEPeriodTimeInperson.Text) = ':' then
   MaskEPeriodTimeInperson.Text := '00:00'  ;

  if Trim(MaskETimeInperson.Text) = ':' then
   MaskETimeInperson.Text := '00:00' ;

  DBEPeriodTimeInperson.Text := MaskEPeriodTimeInperson.Text;
  DBETimeInperson.Text       := MaskETimeInperson.Text ;
  if (DBExpert.KeyValue = 0) or (DBExpert.KeyValue = Null) then
  begin
    ShowMyMessage('�����','���� ������� ���� ������',[mbOK],mtInformation);
    DBExpert.SetFocus;
    DBExpert.DropDown;
    Abort;
  end;

  if (MaskETimeInperson.Text>'23:59' ) then
  begin
    ShowMyMessage('�����','���� ���� ������ �� ����� ������',[mbOK],mtInformation);
    MaskETimeInperson.SetFocus;

    Abort;
  end;

  With Select_FollowUpInPerson do
  begin
    if not (State in [dsEdit,dsInsert]) then
      EDIT;

    if edtDateInPerson.Text = '' then
      edtDateInPerson.Text := _Today;
    Select_FollowUpInPersonFollowUpId.Value := FollowUpId;
    Select_FollowUpInPersonCustomerId.Value := CustomerId;
    Select_FollowUpInPersonLogDate.Value    := Dm.GetServerDate ;
    Select_FollowUpInPersonUserId.Value     := _UserID ;

    ////////
    if (State in [dsInsert]) then
    begin
      SpSelect_Cases.Close;
      SpSelect_Cases.Open;
      SpSelect_Cases.Append;
      // ���� ��������
      CaseAccept :=  Qry_GetResult(' select top 1 id  FROM dbo.users where AccessID = 9 order by id desc' ,dm.YeganehConnection) ;
      SpSelect_CasesCheckUserID.Value    := StrToInt( CaseAccept );

      CaseAccept :=  Qry_GetResult(' select top 1 id  FROM dbo.users where IsSystemUser = 1 ' ,dm.YeganehConnection) ;
      SpSelect_CasesRegisterUserID.Value := StrToInt( CaseAccept ); // 75;//_UserID;
      SpSelect_CasesFollowUpID.Value:=  dm.Select_FollowUP_By_CustomerIDFollowUPID.Value ;

      SpSelect_CasesRegisterDate.Value   := _Today;
      SpSelect_CasesCaseOrigiranlId.Value:= 8; // �����
      SpSelect_CasesCasePriorityId.Value := 6; // ������
      SpSelect_CasesCaseTypeID .Value := 9; // �������
      SpSelect_CasesIsBug .Value := False ;
      SpSelect_CasesCustomerID .Value := CustomerId ; // ����� �����
      if ((Pos('|',ProductsIdSTR)=0) AND (ProductsIdSTR <>'')) then
        SpSelect_CasesProductId.Value := StrToInt(ProductsIdSTR) ;
      SpSelect_CasesCaseTitle.Value := '�������_' +  ' ����� �� �����';
      SpSelect_CasesComment.Value := '������ �����' ;

      SpSelect_Cases.Post;

      // ���� ��������
      CaseAccept :=  Qry_GetResult(' select top 1 id  FROM dbo.users where AccessID = 9 order by id desc' ,dm.YeganehConnection) ;
      with TADOQuery.Create(nil) do
      begin
         Connection := Dm.YeganehConnection;
         CommandTimeout := 1200;
         SQL.Text := 'insert into Tasks (CaseId,Comment,StatusId,AssignedUserId,AssignedDate)values('+IntToStr(SpSelect_CasesCaseID.AsInteger)+','''+'�������'+''',10,'
                                                            +CaseAccept+','''+_Today+'''' +')';

        ExecSQL;
      end;
    end;

    Post;
    //////

    Close;
    Select_FollowUpInPerson.parameters.ParamByName('@followupid').value := FollowUpId ;
    Open;

  end;
  btnAssessment.Enabled :=  Select_FollowUpInPerson.FieldByName('ValuatorUserID').AsInteger >0   ;

end;

function TFRefrenceInPerson.LoadImageField(Field: TField;
  Path: String): Boolean;
begin
  if not Field.IsNull then
  begin
    TBlobField(Field).SaveToFile(path);
    Result := True;
  end
  else
  begin
    ShowMessage('����� ����� ����');
    Result := False
  end;
end;

procedure TFRefrenceInPerson.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Dm.Marketer.Filtered := False;
  Dm.Marketer.Filter := '' ;
  Dm.Marketer.Filtered := True;
end;

end.
