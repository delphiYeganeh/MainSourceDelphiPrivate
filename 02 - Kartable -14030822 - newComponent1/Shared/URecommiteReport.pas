unit URecommiteReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, YWhereEdit,  ExtActns, ActnList, DB,
  ExtCtrls, xpBitBtn, Grids, DBGrids, YDbgrid, ADODB, Buttons, Menus,
  AppEvnts, AdvGlowButton;

type
  TFrRecommiteReport = class(TMBaseForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    FromRecommiteDate: TYWhereEdit;
    ToDeadLineDate: TYWhereEdit;
    FromProceedDate: TYWhereEdit;
    Label5: TLabel;
    Label8: TLabel;
    Label1: TLabel;
    ProceedStatus: TComboBox;
    Label9: TLabel;
    GroupBox2: TGroupBox;
    Label27: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label3: TLabel;
    Lusermem: TLabel;
    fromRegistrationdate: TYWhereEdit;
    YWhereEdit13: TYWhereEdit;
    YWhereEdit11: TYWhereEdit;
    YWhereEdit3: TYWhereEdit;
    YWhereEdit12: TYWhereEdit;
    SpeedButton2: TAdvGlowButton;
    Label4: TLabel;
    DelayDays: TYWhereEdit;
    Label6: TLabel;
    ProgressDay: TYWhereEdit;
    Panel2: TPanel;
    Number: TLabel;
    MakeRep: TAdvGlowButton;
    Button6: TAdvGlowButton;
    Button3: TAdvGlowButton;
    Button4: TAdvGlowButton;
    Button5: TAdvGlowButton;
    Panel3: TPanel;
    YDBGrid1: TYDBGrid;
    SpeedButton1: TAdvGlowButton;
    OrgID: TYWhereEdit;
    SBReport: TAdvGlowButton;
    Label7: TLabel;
    RepPopMnu: TPopupMenu;
    NShow: TMenuItem;
    NPrint: TMenuItem;
    NDesign: TMenuItem;
    N8: TMenuItem;
    N11: TMenuItem;
    RadioGroup1: TRadioGroup;
    Label10: TLabel;
    YWhereEdit1: TYWhereEdit;
    cmbSecretariat: TComboBox;
    Label12: TLabel;
    chkOtherUser: TCheckBox;
    RadioGroup2: TRadioGroup;
    ToRegistrationdate: TYWhereEdit;
    Label14: TLabel;
    ToProceedDate: TYWhereEdit;
    Label15: TLabel;
    Label16: TLabel;
    FromDeadLineDate: TYWhereEdit;
    ToRecommiteDate: TYWhereEdit;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery1ID: TIntegerField;
    ADOQuery1Title: TStringField;
    ADOQuery1ResponsibleStaffer: TStringField;
    Label17: TLabel;
    CheckBox1: TCheckBox;
    cboxNoArchive: TCheckBox;
    pnlMain: TPanel;
    edtRecommiteDate: TYWhereEdit;
    edtProceedDate: TYWhereEdit;
    edtDeadLineDate: TYWhereEdit;
    edtRegistrationdate: TYWhereEdit;
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    function  Where:string;
    procedure FormCreate(Sender: TObject);
    procedure MakeRepClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SBReportClick(Sender: TObject);
    procedure NShowClick(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure chkOtherUserClick(Sender: TObject);
    procedure cboxNoArchiveClick(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
  private
    procedure FillSecretariat;
    function GetSecID(aTitle:string):Integer;
  public
    { Public declarations }
      fromdate,todate :string ;

  end;

var
  FrRecommiteReport: TFrRecommiteReport;

implementation

uses
  Dmu, FromOrgU,
  UMain,YShamsiDate,
  businessLayer, DateUtils,
  SearchFM, RecommiteReportDM;

{$R *.dfm}


function TFrRecommiteReport.Where:string;
var
  i: byte;
begin
  if  (Trim(FromRecommiteDate.Text)<>'') and  (Trim(ToRecommiteDate.Text)<> '') then
    edtRecommiteDate.Text    :=  Trim(FromRecommiteDate.Text)+'-'+ Trim(ToRecommiteDate.Text)
  else if  (Trim(FromRecommiteDate.Text)<>'')  then
     edtRecommiteDate.Text    :=  Trim(FromRecommiteDate.Text)
  else if (Trim(ToRecommiteDate.Text)<> '') then
     edtRecommiteDate.Text    :=  Trim(ToRecommiteDate.Text);

  if  (Trim(FromProceedDate.Text)<>'') and  (Trim(ToProceedDate.Text)<> '') then
    edtProceedDate.Text      :=  Trim(FromProceedDate.Text)+'-'+ Trim(ToProceedDate.Text)
  else if (Trim(FromProceedDate.Text)<>'') then
    edtProceedDate.Text      :=  Trim(FromProceedDate.Text )
  else if (Trim(ToProceedDate.Text)<> '') then
     edtProceedDate.Text      :=  Trim(ToProceedDate.Text);

  if  (Trim(FromDeadLineDate.Text)<>'') and  (Trim(ToDeadLineDate.Text)<> '') then
    edtDeadLineDate.Text     :=  Trim(FromDeadLineDate.Text)+'-'+ Trim(ToDeadLineDate.Text)
  else if (Trim(FromDeadLineDate.Text)<>'')  then
    edtDeadLineDate.Text     :=  Trim(FromDeadLineDate.Text)
  else if  (Trim(ToDeadLineDate.Text)<> '') then
    edtDeadLineDate.Text     :=  Trim(ToDeadLineDate.Text);


  if  (Trim(FromRegistrationdate.Text)<>'') and  (Trim(ToRegistrationdate.Text)<> '') then
    edtRegistrationdate.Text :=  Trim(FromRegistrationdate.Text)+'-'+ Trim(ToRegistrationdate.Text)
  else if (Trim(FromRegistrationdate.Text)<>'') then
    edtRegistrationdate.Text :=  Trim(FromRegistrationdate.Text)
  else if (Trim(ToRegistrationdate.Text)<>'') then
    edtRegistrationdate.Text :=  Trim(ToRegistrationdate.Text);

  for i:=0 to ComponentCount-1 do
    if Components[i].ClassNameIs('TYWhereEdit') then
      if (TYWhereEdit(Components[i]).Resultwhere <>'') and (TYWhereEdit(Components[i]).Tag = 0) then
      begin
        case RadioGroup1.ItemIndex of
          0   : Result:= Result+' and '+TYWhereEdit(Components[i]).Resultwhere+'';
          1,2 : Result:= Result+' and '+TYWhereEdit(Components[i]).Resultwhere+'';
        end;
      end;

  if ProceedStatus.ItemIndex > 0 then
    Result := Result + ' and (Rc.Proceeded='+IntToStr(2-ProceedStatus.ItemIndex)+')';

  if Result <> '' then
    Result := Copy(Result,6,length(Result)-5);

end;


procedure TFrRecommiteReport.Button4Click(Sender: TObject);
begin
  inherited;
  YDBGrid1.ExportToExcel;
end;

procedure TFrRecommiteReport.Button3Click(Sender: TObject);
begin
  inherited;
  YDBGrid1.ExportToWord;
end;

procedure TFrRecommiteReport.Button6Click(Sender: TObject);
begin
  inherited;
  YDBGrid1.CustomizePrint;
end;

procedure TFrRecommiteReport.FormCreate(Sender: TObject);
begin
  inherited;
  Lusermem.Caption := dm.UserMemoDisplay;
  DelayDays.FieldName   := '-dbo.Recommite_DeadLine(rc.Recommiteid,isnull(rc.Proceeddate,'''+_Today+'''))';
  ProgressDay.FieldName := 'dbo.shamsidatediff(rc.Recommitedate ,isnull(rc.Proceeddate,'''+_Today+'''))';
  if _kartable then
  begin
    orgid.Text:=IntToStr(_UserFromOrgID);
    orgid.Enabled:=false;
  end;
  fromdate := copy(_Today,1,8)+'01';
  todate := copy(_Today,1,8)+'29';
  FromRecommiteDate.Text:=fromdate; //+ '-'+todate;
  ToRecommiteDate.Text := todate;
  FillSecretariat;
end;

procedure TFrRecommiteReport.MakeRepClick(Sender: TObject);
var
  OtherUserID:Integer;
  SecretariatID:Integer;
  myear : Integer;
  RecommitFlag:Integer;
  UserID:integer;
  IndicatorID:Integer;
  UserMemo: String;
  FromRegistrationDate: String;
  toRegistrationDate: String;
  SenderTitle: String;
  Memo: String;
  Paraph: String;
  OrgId_value: String;
  FromRecommiteDate: String;
  ToRecommiteDate: String;
  FromProceedDate: String;
  ToProceedDate: String;
  FromDeadLineDate: String;
  ToDeadLineDate: String;
  Proceeded : Integer;
  Letter_Type : Integer;
  UserId_New : Integer;
  intOrganizationsID : Integer;
  Archived1 : Integer;
begin
  inherited;
  {
  if (chkOtherUser.Checked) and (Trim(YWhereEdit11.Text) = '') then
  begin
    ShowMessage('‰«„ ›—” ‰œÂ —« „‘Œ’ ‰„«ÌÌœ');
    Abort;
    Exit;
  end;

  if chkOtherUser.Checked then
  begin
    //if dm.FromOrganizations.Locate('Title', YWhereEdit11.Text, []) then
    intOrganizationsID := dm.getIdFromOrganizations(YWhereEdit11.Text);
    if intOrganizationsID > 0 then
    begin
      //Dm.Users.Locate('FromOrgID',dm.FromOrganizationsID.AsInteger,[]);
      Dm.Users.Locate('FromOrgID', intOrganizationsID, []);
      OtherUserID:=Dm.UsersId.AsInteger;
      UserId_New := Dm.UsersId.AsInteger;
    end
    else
      OtherUserID:=-1;
  end
  else
    UserId_New := -1;

  if _UserID=OtherUserID then
  begin
    ShowMessage('œ— «Ì‰ Õ«· ° ›—” ‰œÂ Ê ò«—»— Ã«—Ì ‰„Ì  Ê«‰‰œ Ìò”«‰ »«‘‰œ');
    Exit;
  end;
       }
  SecretariatID := GetSecID(cmbSecretariat.Text);
  myear         := dm.CurrentMyear;
  RecommitFlag  := RadioGroup1.ItemIndex;
             {
  if chkOtherUser.Checked then
    UserID := OtherUserID
  else
  }
  if RadioGroup1.ItemIndex = 2 then
    if OrgID.Text <> '' then
      UserID := strtoint(OrgID.Text)
    else
    begin
      ShowMessage('›Ì·œ «—Ã«⁄ ‘Ê‰œÂ ‰„Ì  Ê«‰œ Œ«·Ì »«‘œ ...');
      Exit;
    end
  else
    UserID := _UserID;
    {

  if Trim(YWhereEdit3.Text) = '' then
    IndicatorID := 0
  else
    IndicatorID := StrToInt(YWhereEdit3.Text);

  if trim(YWhereEdit12.Text) = '' then
    UserMemo := 'NULL'
  else
    UserMemo := YWhereEdit12.Text;

  if trim(YWhereEdit27.Text) = '' then
    FromRegistrationDate := 'NULL'
  else
    FromRegistrationDate := QuotedStr(YWhereEdit27.Text);

  if Trim(YWhereEdit2.Text) = '' then
    toRegistrationDate  := 'NULL'
  else
    toRegistrationDate := QuotedStr(YWhereEdit2.Text);

  if YWhereEdit11.Text = '' then
    SenderTitle := 'NULL'
  else
    SenderTitle := QuotedStr(YWhereEdit11.Text);

  if YWhereEdit13.Text = '' then
    Memo := 'NULL'
  else
    Memo := QuotedStr(YWhereEdit13.Text);

  if YWhereEdit1.Text = '' then
    Paraph := 'NULL'
  else
    Paraph := QuotedStr(YWhereEdit1.Text);

  if trim(OrgID.Text) = '' then
    OrgId_value := '0'
  else
    OrgId_value := OrgID.Text;

  if RecommiteDate.Text = '' then
    FromRecommiteDate := 'NULL'
  else
    FromRecommiteDate := QuotedStr(RecommiteDate.Text);

  if YWhereEdit6.Text = '' then
    ToRecommiteDate := 'NULL'
  else
    ToRecommiteDate := QuotedStr(YWhereEdit6.Text);

  if ProceedDate.Text = '' then
    FromProceedDate := 'NULL'
  else
    FromProceedDate := QuotedStr(ProceedDate.Text);

  if YWhereEdit4.Text = '' then
    ToProceedDate := 'NULL'
  else
    ToProceedDate := QuotedStr(YWhereEdit4.Text);

  if DeadLineDate.Text = '' then
    FromDeadLineDate := 'NULL'
  else
    FromDeadLineDate := QuotedStr(DeadLineDate.Text);

  if YWhereEdit5.Text = '' then
   ToDeadLineDate := 'NULL'
  else
    ToDeadLineDate := QuotedStr(YWhereEdit5.Text);

  if trim(ProceedStatus.Text) = '' then
   Proceeded := -1
  else
    Proceeded := ProceedStatus.ItemIndex;
//   IntToStr(2-ProceedStatus.ItemIndex
 //DMRecommiteReport.sp_recommite_report.SQL..SaveToFile('c:\111.txt');
// ShowMessage(DMRecommiteReport.sp_recommite_report.SQL.Text);
  Letter_Type := RadioGroup2.ItemIndex;
  if cboxNoArchive.Checked then
    Archived1 := 0
  else
    Archived1 := -22;
    }
    {
  DMRecommiteReport.sp_recommite_report.close;
  DMRecommiteReport.sp_recommite_report.SQL.Clear;
  if CheckBox1.Checked then
    DMRecommiteReport.sp_recommite_report.SQL.Add('exec Repo_Deadlne ' + IntToStr(SecretariatID)+ ',' + IntToStr(myear))
  else
    DMRecommiteReport.sp_recommite_report.SQL.Add('exec sp_recommite_report ' + IntToStr(SecretariatID)+ ', 0');// + IntToStr(myear));

  DMRecommiteReport.sp_recommite_report.SQL.Add(',' + IntToStr(RecommitFlag));
  DMRecommiteReport.sp_recommite_report.SQL.Add(',' + IntToStr(UserID));
  DMRecommiteReport.sp_recommite_report.SQL.Add(',' + IntToStr(IndicatorID));
  DMRecommiteReport.sp_recommite_report.SQL.Add(',' + UserMemo);
  DMRecommiteReport.sp_recommite_report.SQL.Add(',' + FromRegistrationDate);
  DMRecommiteReport.sp_recommite_report.SQL.Add(',' + toRegistrationDate);
  DMRecommiteReport.sp_recommite_report.SQL.Add(',' + SenderTitle);
  DMRecommiteReport.sp_recommite_report.SQL.Add(',' + Memo);
  DMRecommiteReport.sp_recommite_report.SQL.Add(',' + Paraph);
  DMRecommiteReport.sp_recommite_report.SQL.Add(',' + QuotedStr(OrgId_value));
  DMRecommiteReport.sp_recommite_report.SQL.Add(',' + FromRecommiteDate);
  DMRecommiteReport.sp_recommite_report.SQL.Add(',' + ToRecommiteDate);
  DMRecommiteReport.sp_recommite_report.SQL.Add(',' + FromProceedDate);
  DMRecommiteReport.sp_recommite_report.SQL.Add(',' + ToProceedDate);
  DMRecommiteReport.sp_recommite_report.SQL.Add(',' + FromDeadLineDate);
  DMRecommiteReport.sp_recommite_report.SQL.Add(',' + ToDeadLineDate);
  DMRecommiteReport.sp_recommite_report.SQL.Add(',' + IntToStr(Proceeded));
  DMRecommiteReport.sp_recommite_report.SQL.Add(',' + IntToStr(Letter_Type));
  DMRecommiteReport.sp_recommite_report.SQL.Add(',' + IntToStr(UserId_New));
  DMRecommiteReport.sp_recommite_report.SQL.Add(',' + IntToStr(Archived1));
  DMRecommiteReport.sp_recommite_report.Active := True;

  Number.Caption := ' ⁄œ«œ ‰«„Â Â«  : ' + IntToStr(DMRecommiteReport.sp_recommite_report.RecordCount)

     }
  with DMRecommiteReport,sp_recommite_report,Parameters do
   begin
     close;
     ParamByName('@SecretariatID').Value := dm.SecID;
     ParamByName('@myear').Value := dm.CurrentMyear;

     ParamByName('@where').Value := where;

     ParamByName('@RecommitFlag').Value:= RadioGroup1.ItemIndex;
     ParamByName('@UserID').Value:= _UserID;
     if RadioGroup2.ItemIndex = -1 then
       ParamByName('@LettrTypeID').Value:=0
     else
       ParamByName('@LettrTypeID').Value:= RadioGroup2.ItemIndex;
     if CheckBox1.Checked = True then
       ParamByName('@falg').Value:= 1
     else
																				   
     ParamByName('@falg').Value:= 0;

     Open;
			 
     Number.Caption:=' ⁄œ«œ ‰«„Â Â«  : '+ IntToStr(RecordCount)
   end;

end;

procedure TFrRecommiteReport.SpeedButton2Click(Sender: TObject);
begin
  inherited;

  FromOrgForm := TFromOrgForm.Create(Application);
  FromOrgForm.OrganizeMode := false;
  if _kartable then
    FromOrgForm.Rootid := _UserFromOrgID;
  FromOrgForm.ShowModal;
  if FromOrgForm.done then
    if OrgID.text = '' then
      OrgID.Text := IntToStr(_ResultOrgID)
    else
      OrgID.Text := OrgID.Text + ',' + IntToStr(_ResultOrgID);

    {
  With DMRecommiteReport do
     if FmSearch.GetSearchValue(QrOrg,'ID','Title',' ',550,500)<>'0' then
     begin
        if OrgID.text='' then
           OrgID.Text:=IntToStr( QrOrgID.AsInteger)
        else
           OrgID.Text:=OrgID.Text+','+IntToStr( QrOrgID.AsInteger);
     end;  }
  //---
end;

procedure TFrRecommiteReport.Button5Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFrRecommiteReport.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  With DMRecommiteReport do
    if FmSearch.GetSearchValue(QrOrg, 'ID', 'Title', ' ', 550, 500) <> '0' then
      YWhereEdit11.Text := Trim(QrOrgTitle.AsString);
end;

procedure TFrRecommiteReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  With DMRecommiteReport do
    QrOrg.Close;
  DMRecommiteReport.sp_recommite_report.Close;
end;

procedure TFrRecommiteReport.SBReportClick(Sender: TObject);
begin
  inherited;
  Cursor_SetPos(Self,SBReport,RepPopMnu);
end;

procedure TFrRecommiteReport.NShowClick(Sender: TObject);
begin
  inherited;
  //Please Check FormKeyDown Event
  With DMRecommiteReport do
  begin
    {if sp_recommite_report.State in [dsEdit,dsInsert] then
    begin
      ShowMessage('·ÿ›« ﬁ»· «“ ê“«—‘ êÌ—Ì «ÿ·«⁄«  ŒÊœ —« –ŒÌ—Â ‰„«ÌÌœ');
      Exit;
    end;}
    if sp_recommite_report.RecordCount = 0 then
    begin
      ShowMessage('ÂÌç —òÊ—œÌ Ì«›  ‰‘œ');
      Exit;
    end;

    Rep_LoadFile(frxRepRecommite_report,'RecommiteReport1.fr3');
    //TfrxReportSummary(DMReports.frxRepAkasi.FindComponent('ReportSummary1')).Visible := False;

    if Sender = NShow then
      Rep_Show(frxRepRecommite_report,rtShow);

    if Sender = NPrint then
      Rep_Show(frxRepRecommite_report,rtPrint);

    if Sender = NDesign then
      Rep_Show(frxRepRecommite_report,rtDesign);
  end;
end;

procedure TFrRecommiteReport.N11Click(Sender: TObject);
begin
  inherited;
   Rep_CorrectDesign('RecommiteReport1.fr3');
end;

procedure TFrRecommiteReport.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

  if (Key = Vk_F9) And (Shift=[]) then
    SBReport.PopupMenu.Items[0].Click;

  if (Key = Vk_F9) And (Shift=[ssCtrl]) then
    SBReport.PopupMenu.Items[1].Click;

  if (Key = Vk_F9) And (Shift=[ssAlt]) then
    SBReport.PopupMenu.Items[2].Click;
end;

procedure TFrRecommiteReport.FillSecretariat;
begin
  if not Dm.UserSecs.Active then
    Dm.UserSecs.Open;

  cmbSecretariat.Items.Clear;
  cmbSecretariat.Items.Add('Â„Â œ»Ì—Œ«‰Â Â«Ì œ«—«Ì œ” —”Ì');
  Dm.UserSecs.First;
  while not Dm.UserSecs.Eof do
  begin
    cmbSecretariat.Items.Add(Dm.UserSecsSecTitle.AsString);
    Dm.UserSecs.Next;
  end;

  cmbSecretariat.ItemIndex:=0;
end;

function TFrRecommiteReport.GetSecID(aTitle: string): Integer;
begin
//  if not Dm.UserSecs.Active then Dm.UserSecs.Open;

  if aTitle='Â„Â œ»Ì—Œ«‰Â Â«Ì œ«—«Ì œ” —”Ì' then
    Result:=0
  else
  begin
    if DM.Secretariats.Locate('SecTitle',aTitle,[]) then
      Result:=DM.SecretariatsSecID.AsInteger
    else
      Result:=0;
  end;
end;

procedure TFrRecommiteReport.FormShow(Sender: TObject);
begin
  inherited;
  RadioGroup2.ItemIndex := 0;
   if DMRecommiteReport.sp_recommite_report.Active then
   begin
      DMRecommiteReport.sp_recommite_report.Active := False;
   end;  
  RadioGroup1Click(Self);
end;

procedure TFrRecommiteReport.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  if (RadioGroup1.ItemIndex = 0) or (RadioGroup1.ItemIndex = 2) then
  begin
   // chkOtherUser.Checked := False;
   // chkOtherUser.Enabled := False;
    YWhereEdit11.Text := '';
    SpeedButton1.Enabled :=False;
    YWhereEdit11.Enabled :=False;

    SpeedButton2.Enabled :=True;
    OrgID.Enabled :=True;
     OrgID.SetFocus;
  end;

  if (RadioGroup1.ItemIndex = 1) then
  begin
   // chkOtherUser.Enabled := True;
    OrgID.Text := '';
    SpeedButton1.Enabled := True;
    YWhereEdit11.Enabled :=True;

    SpeedButton2.Enabled :=False;
    OrgID.Enabled :=False;
   // chkOtherUserClick(Self);
     YWhereEdit11.SetFocus;
  end;
{  if RadioGroup1.ItemIndex = 0 then
    YWhereEdit11.TableName := 'Deliver';
  if RadioGroup1.ItemIndex = 1 then
    YWhereEdit11.TableName := 'sender';
  if RadioGroup1.ItemIndex = 2 then
    YWhereEdit11.TableName := 'Deliver';
  ShowMessage(YWhereEdit11.TableName);
 }
end;

procedure TFrRecommiteReport.chkOtherUserClick(Sender: TObject);
begin
  inherited;
  if chkOtherUser.Checked = False then
  begin
    ADOQuery1.Close;
    ADOQuery1.Parameters.ParamByName('USERID').Value := _UserID;
    ADOQuery1.Open;
    YWhereEdit11.Text := ADOQuery1Title.Value;
  end;

  if chkOtherUser.Checked  then
    YWhereEdit11.Text := '';
end;

procedure TFrRecommiteReport.cboxNoArchiveClick(Sender: TObject);
begin
  inherited;
 if cboxNoArchive.Checked then
  cboxNoArchive.Caption := 'Â„Â ‰«„Â Â«'
 else
   cboxNoArchive.Caption := 'Ã«—Ì';
end;

procedure TFrRecommiteReport.RadioGroup2Click(Sender: TObject);
begin
 // inherited;
// case RadioGroup2.ItemIndex of
//  1 : begin   //Ê«—œÂ
//        YDBGrid1.Columns[3].Title.Caption := '«—Ã«⁄ œÂ‰œÂ';
//        YDBGrid1.Columns[4].Title.Caption := '«—Ã«⁄ ‘Ê‰œÂ';
//        YDBGrid1.Columns[12].Title.Caption := 'êÌ—‰œÂ';
//        YDBGrid1.Columns[14].Title.Caption := '›—” ‰œÂ';
//      end;
//  2 : begin //’«œ—Â
//        YDBGrid1.Columns[3].Title.Caption := '«—Ã«⁄ ‘Ê‰œÂ';
//        YDBGrid1.Columns[4].Title.Caption := '«—Ã«⁄ œÂ‰œÂ';
//        YDBGrid1.Columns[12].Title.Caption := '›—” ‰œÂ';
//        YDBGrid1.Columns[14].Title.Caption := 'êÌ—‰œÂ';
//      end;
//  end;
end;



end.
